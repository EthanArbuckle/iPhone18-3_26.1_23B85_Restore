void ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke_3(void *a1, void *a2)
{
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    if (!*(*(a1[5] + 8) + 40) && nw_protocol_options_is_tls(a2))
    {
      if (a2)
      {
        v4 = os_retain(a2);
      }

      else
      {
        v4 = 0;
      }

      v5 = *(a1[5] + 8);
      v6 = *(v5 + 48);
      if (v6)
      {
        v7 = *(v5 + 40);
        if (v7)
        {
          os_release(v7);
          v6 = *(v5 + 48);
        }
      }

      *(v5 + 40) = v4;
      *(v5 + 48) = v6 | 1;
    }
  }

  else if (nw_protocol_options_get_protocol_handle(a2) == a1[6])
  {
    *(*(a1[4] + 8) + 24) = 1;
  }
}

uint64_t nw_protocol_http1_replace_input_handler(nw_protocol *a1, nw_protocol *a2, nw_protocol *a3)
{
  v83 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v68 = "nw_http1_get_http1_protocol";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (!__nwlog_fault(v28, &type, &v65))
    {
      goto LABEL_137;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_137;
      }

      *buf = 136446210;
      v68 = "nw_http1_get_http1_protocol";
      v31 = "%{public}s called with null protocol";
    }

    else
    {
      if (v65 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v30 = type;
        v37 = os_log_type_enabled(v29, type);
        if (!backtrace_string)
        {
          if (!v37)
          {
            goto LABEL_137;
          }

          *buf = 136446210;
          v68 = "nw_http1_get_http1_protocol";
          v31 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_136;
        }

        if (v37)
        {
          *buf = 136446466;
          v68 = "nw_http1_get_http1_protocol";
          v69 = 2082;
          v70 = backtrace_string;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_137;
      }

      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_137;
      }

      *buf = 136446210;
      v68 = "nw_http1_get_http1_protocol";
      v31 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_136;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v68 = "nw_http1_get_http1_protocol";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (!__nwlog_fault(v28, &type, &v65))
    {
      goto LABEL_137;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v65 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (!os_log_type_enabled(v29, type))
        {
          goto LABEL_137;
        }

        *buf = 136446210;
        v68 = "nw_http1_get_http1_protocol";
        v31 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_136;
      }

      v38 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v39 = os_log_type_enabled(v29, type);
      if (!v38)
      {
        if (!v39)
        {
          goto LABEL_137;
        }

        *buf = 136446210;
        v68 = "nw_http1_get_http1_protocol";
        v31 = "%{public}s called with null handle, no backtrace";
        goto LABEL_136;
      }

      if (!v39)
      {
        goto LABEL_69;
      }

      *buf = 136446466;
      v68 = "nw_http1_get_http1_protocol";
      v69 = 2082;
      v70 = v38;
      v40 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_68;
    }

    v29 = __nwlog_obj();
    v30 = type;
    if (!os_log_type_enabled(v29, type))
    {
      goto LABEL_137;
    }

    *buf = 136446210;
    v68 = "nw_http1_get_http1_protocol";
    v31 = "%{public}s called with null handle";
LABEL_136:
    _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
    goto LABEL_137;
  }

  v7 = *(handle + 6);
  v8 = a1->handle;
  if (v7 == 1)
  {
    goto LABEL_10;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      goto LABEL_139;
    }

    v9 = *(handle + 2);
    if (v9)
    {
      v8 = (v9 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    v68 = "nw_http1_get_http1_protocol";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (__nwlog_fault(v28, &type, &v65))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (!os_log_type_enabled(v29, type))
        {
          goto LABEL_137;
        }

        *buf = 136446210;
        v68 = "nw_http1_get_http1_protocol";
        v31 = "%{public}s called with null handle->http1_connection";
        goto LABEL_136;
      }

      if (v65 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (!os_log_type_enabled(v29, type))
        {
          goto LABEL_137;
        }

        *buf = 136446210;
        v68 = "nw_http1_get_http1_protocol";
        v31 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_136;
      }

      v38 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v54 = os_log_type_enabled(v29, type);
      if (!v38)
      {
        if (!v54)
        {
          goto LABEL_137;
        }

        *buf = 136446210;
        v68 = "nw_http1_get_http1_protocol";
        v31 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_136;
      }

      if (v54)
      {
        *buf = 136446466;
        v68 = "nw_http1_get_http1_protocol";
        v69 = 2082;
        v70 = v38;
        v40 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_68;
      }

LABEL_69:
      free(v38);
      if (!v28)
      {
LABEL_139:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v68 = "nw_protocol_http1_replace_input_handler";
        v32 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v65 = 0;
        if (!__nwlog_fault(v32, &type, &v65))
        {
          goto LABEL_170;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v33 = gLogObj;
          v34 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_170;
          }

          *buf = 136446210;
          v68 = "nw_protocol_http1_replace_input_handler";
          v35 = "%{public}s called with null http1";
        }

        else
        {
          if (v65 == 1)
          {
            v57 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v58 = gLogObj;
            v59 = type;
            v60 = os_log_type_enabled(gLogObj, type);
            if (v57)
            {
              if (v60)
              {
                *buf = 136446466;
                v68 = "nw_protocol_http1_replace_input_handler";
                v69 = 2082;
                v70 = v57;
                v61 = "%{public}s called with null http1, dumping backtrace:%{public}s";
LABEL_164:
                _os_log_impl(&dword_181A37000, v58, v59, v61, buf, 0x16u);
              }

LABEL_165:
              free(v57);
              goto LABEL_170;
            }

            if (!v60)
            {
              goto LABEL_170;
            }

            *buf = 136446210;
            v68 = "nw_protocol_http1_replace_input_handler";
            v35 = "%{public}s called with null http1, no backtrace";
LABEL_176:
            v63 = v58;
            v64 = v59;
            goto LABEL_169;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v33 = gLogObj;
          v34 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_170;
          }

          *buf = 136446210;
          v68 = "nw_protocol_http1_replace_input_handler";
          v35 = "%{public}s called with null http1, backtrace limit exceeded";
        }

        goto LABEL_168;
      }

LABEL_138:
      free(v28);
      goto LABEL_139;
    }

LABEL_137:
    if (!v28)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

  v10 = *(handle + 1);
  if (!v10)
  {
    __nwlog_obj();
    *buf = 136446210;
    v68 = "nw_http1_get_http1_protocol";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (!__nwlog_fault(v28, &type, &v65))
    {
      goto LABEL_137;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_137;
      }

      *buf = 136446210;
      v68 = "nw_http1_get_http1_protocol";
      v31 = "%{public}s called with null handle->http1_stream";
      goto LABEL_136;
    }

    if (v65 != 1)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_137;
      }

      *buf = 136446210;
      v68 = "nw_http1_get_http1_protocol";
      v31 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_136;
    }

    v38 = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v30 = type;
    v53 = os_log_type_enabled(v29, type);
    if (!v38)
    {
      if (!v53)
      {
        goto LABEL_137;
      }

      *buf = 136446210;
      v68 = "nw_http1_get_http1_protocol";
      v31 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_136;
    }

    if (!v53)
    {
      goto LABEL_69;
    }

    *buf = 136446466;
    v68 = "nw_http1_get_http1_protocol";
    v69 = 2082;
    v70 = v38;
    v40 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_68:
    _os_log_impl(&dword_181A37000, v29, v30, v40, buf, 0x16u);
    goto LABEL_69;
  }

  v8 = (v10 + 248);
LABEL_10:
  if (!*v8)
  {
    goto LABEL_139;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v68 = "nw_protocol_http1_replace_input_handler";
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (!__nwlog_fault(v32, &type, &v65))
    {
      goto LABEL_170;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v65 != 1)
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (!os_log_type_enabled(v33, type))
        {
          goto LABEL_170;
        }

        *buf = 136446210;
        v68 = "nw_protocol_http1_replace_input_handler";
        v35 = "%{public}s called with null old_input_protocol, backtrace limit exceeded";
        goto LABEL_168;
      }

      v45 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v34 = type;
      v46 = os_log_type_enabled(v33, type);
      if (!v45)
      {
        if (!v46)
        {
          goto LABEL_170;
        }

        *buf = 136446210;
        v68 = "nw_protocol_http1_replace_input_handler";
        v35 = "%{public}s called with null old_input_protocol, no backtrace";
        goto LABEL_168;
      }

      if (v46)
      {
        *buf = 136446466;
        v68 = "nw_protocol_http1_replace_input_handler";
        v69 = 2082;
        v70 = v45;
        v47 = "%{public}s called with null old_input_protocol, dumping backtrace:%{public}s";
LABEL_83:
        _os_log_impl(&dword_181A37000, v33, v34, v47, buf, 0x16u);
      }

LABEL_84:
      free(v45);
      goto LABEL_170;
    }

    v33 = __nwlog_obj();
    v34 = type;
    if (!os_log_type_enabled(v33, type))
    {
      goto LABEL_170;
    }

    *buf = 136446210;
    v68 = "nw_protocol_http1_replace_input_handler";
    v35 = "%{public}s called with null old_input_protocol";
LABEL_168:
    v63 = v33;
    v64 = v34;
LABEL_169:
    _os_log_impl(&dword_181A37000, v63, v64, v35, buf, 0xCu);
    goto LABEL_170;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v68 = "nw_protocol_http1_replace_input_handler";
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (!__nwlog_fault(v32, &type, &v65))
    {
      goto LABEL_170;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_170;
      }

      *buf = 136446210;
      v68 = "nw_protocol_http1_replace_input_handler";
      v35 = "%{public}s called with null new_input_protocol";
      goto LABEL_168;
    }

    if (v65 != 1)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_170;
      }

      *buf = 136446210;
      v68 = "nw_protocol_http1_replace_input_handler";
      v35 = "%{public}s called with null new_input_protocol, backtrace limit exceeded";
      goto LABEL_168;
    }

    v45 = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v34 = type;
    v48 = os_log_type_enabled(v33, type);
    if (!v45)
    {
      if (!v48)
      {
        goto LABEL_170;
      }

      *buf = 136446210;
      v68 = "nw_protocol_http1_replace_input_handler";
      v35 = "%{public}s called with null new_input_protocol, no backtrace";
      goto LABEL_168;
    }

    if (v48)
    {
      *buf = 136446466;
      v68 = "nw_protocol_http1_replace_input_handler";
      v69 = 2082;
      v70 = v45;
      v47 = "%{public}s called with null new_input_protocol, dumping backtrace:%{public}s";
      goto LABEL_83;
    }

    goto LABEL_84;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
LABEL_156:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v68 = "nw_protocol_http1_replace_input_handler";
      v32 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v65 = 0;
      if (!__nwlog_fault(v32, &type, &v65))
      {
        goto LABEL_170;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        v34 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_170;
        }

        *buf = 136446210;
        v68 = "nw_protocol_http1_replace_input_handler";
        v35 = "%{public}s called with null http1_stream";
        goto LABEL_168;
      }

      if (v65 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        v34 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_170;
        }

        *buf = 136446210;
        v68 = "nw_protocol_http1_replace_input_handler";
        v35 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_168;
      }

      v57 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v58 = gLogObj;
      v59 = type;
      v62 = os_log_type_enabled(gLogObj, type);
      if (v57)
      {
        if (v62)
        {
          *buf = 136446466;
          v68 = "nw_protocol_http1_replace_input_handler";
          v69 = 2082;
          v70 = v57;
          v61 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
          goto LABEL_164;
        }

        goto LABEL_165;
      }

      if (!v62)
      {
LABEL_170:
        if (v32)
        {
          v27 = v32;
          goto LABEL_172;
        }

        return 0;
      }

      *buf = 136446210;
      v68 = "nw_protocol_http1_replace_input_handler";
      v35 = "%{public}s called with null http1_stream, no backtrace";
      goto LABEL_176;
    }

    v11 = *(handle + 2);
    if (v11)
    {
      v12 = (v11 + 488);
      goto LABEL_18;
    }

    __nwlog_obj();
    *buf = 136446210;
    v68 = "nw_http1_get_stream_for_protocol";
    v49 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (__nwlog_fault(v49, &type, &v65))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v50 = __nwlog_obj();
        v51 = type;
        if (!os_log_type_enabled(v50, type))
        {
          goto LABEL_154;
        }

        *buf = 136446210;
        v68 = "nw_http1_get_stream_for_protocol";
        v52 = "%{public}s called with null handle->http1_connection";
        goto LABEL_153;
      }

      if (v65 != 1)
      {
        v50 = __nwlog_obj();
        v51 = type;
        if (!os_log_type_enabled(v50, type))
        {
          goto LABEL_154;
        }

        *buf = 136446210;
        v68 = "nw_http1_get_stream_for_protocol";
        v52 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_153;
      }

      v55 = __nw_create_backtrace_string();
      v50 = __nwlog_obj();
      v51 = type;
      v56 = os_log_type_enabled(v50, type);
      if (v55)
      {
        if (v56)
        {
          *buf = 136446466;
          v68 = "nw_http1_get_stream_for_protocol";
          v69 = 2082;
          v70 = v55;
          _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v55);
        goto LABEL_154;
      }

      if (v56)
      {
        *buf = 136446210;
        v68 = "nw_http1_get_stream_for_protocol";
        v52 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_153:
        _os_log_impl(&dword_181A37000, v50, v51, v52, buf, 0xCu);
      }
    }

LABEL_154:
    if (v49)
    {
      free(v49);
    }

    goto LABEL_156;
  }

  v12 = (handle + 8);
LABEL_18:
  v13 = *v12;
  if (!*v12)
  {
    goto LABEL_156;
  }

  if ((*(v13 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v41 = __nwlog_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = *(v13 + 256);
      v43 = *(*(v13 + 248) + 372);
      if (v42)
      {
        LODWORD(v42) = *(v42 + 860);
      }

      v44 = *(v13 + 424);
      *buf = 136448258;
      v68 = "nw_protocol_http1_replace_input_handler";
      v69 = 2082;
      v70 = (v13 + 74);
      v71 = 2080;
      v72 = " ";
      v73 = 1024;
      *v74 = v43;
      *&v74[4] = 1024;
      *&v74[6] = v42;
      v75 = 1024;
      v76 = v44;
      v77 = 2048;
      v78 = v13;
      v79 = 2048;
      v80 = a2;
      v81 = 2048;
      v82 = a3;
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for stream %p with old protocol: %p and new protocol: %p", buf, 0x50u);
    }
  }

  if (a1->default_input_handler != a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    default_input_handler = a1->default_input_handler;
    *buf = 136446722;
    v68 = "nw_protocol_http1_replace_input_handler";
    v69 = 2048;
    v70 = default_input_handler;
    v71 = 2048;
    v72 = a2;
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (!__nwlog_fault(v15, &type, &v65))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_41;
      }

      v18 = a1->default_input_handler;
      *buf = 136446722;
      v68 = "nw_protocol_http1_replace_input_handler";
      v69 = 2048;
      v70 = v18;
      v71 = 2048;
      v72 = a2;
      v19 = "%{public}s Old input handler does not match (%p != %p)";
    }

    else if (v65 == 1)
    {
      v22 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      v23 = os_log_type_enabled(gLogObj, type);
      if (v22)
      {
        if (v23)
        {
          v24 = a1->default_input_handler;
          *buf = 136446978;
          v68 = "nw_protocol_http1_replace_input_handler";
          v69 = 2048;
          v70 = v24;
          v71 = 2048;
          v72 = a2;
          v73 = 2082;
          *v74 = v22;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s Old input handler does not match (%p != %p), dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v22);
LABEL_41:
        if (v15)
        {
          v27 = v15;
LABEL_172:
          free(v27);
          return 0;
        }

        return 0;
      }

      if (!v23)
      {
        goto LABEL_41;
      }

      v26 = a1->default_input_handler;
      *buf = 136446722;
      v68 = "nw_protocol_http1_replace_input_handler";
      v69 = 2048;
      v70 = v26;
      v71 = 2048;
      v72 = a2;
      v19 = "%{public}s Old input handler does not match (%p != %p), no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_41;
      }

      v25 = a1->default_input_handler;
      *buf = 136446722;
      v68 = "nw_protocol_http1_replace_input_handler";
      v69 = 2048;
      v70 = v25;
      v71 = 2048;
      v72 = a2;
      v19 = "%{public}s Old input handler does not match (%p != %p), backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v16, v17, v19, buf, 0x20u);
    goto LABEL_41;
  }

  nw_protocol_set_input_handler(v13, a3);
  v20 = *(v13 + 256);
  if (v20)
  {
    nw_protocol_set_input_handler(v20, a3);
  }

  if (!a3->output_handler)
  {
    nw_protocol_set_output_handler(a3, v13);
  }

  return 1;
}

void ___ZL28nw_http1_add_idle_connectionP17nw_protocol_http1P19nw_http1_connection_block_invoke(void *a1, uint64_t a2)
{
  v234 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  if ((*(v3 + 158) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = v5 + 74;
      v7 = *(v5 + 488);
      v8 = *(*(v5 + 480) + 372);
      v9 = *(v5 + 860);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 424);
      }

      v10 = a1[5];
      *buf = 136447746;
      *&buf[4] = "nw_http1_add_idle_connection_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v6;
      *&buf[22] = 2080;
      v229 = " ";
      v230 = 1024;
      *v231 = v8;
      *&v231[4] = 1024;
      *&v231[6] = v9;
      *&v231[10] = 1024;
      *&v231[12] = v7;
      *&v231[16] = 2048;
      *&v231[18] = v10;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:c%u:s%u> idle connection timed out after %lldms, tearing down", buf, 0x3Cu);
    }

    v3 = a1[4];
  }

  v11 = a1[6];
  if (!v11)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_remove_idle_connection";
    v12 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v226[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v12, type, v226))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v142 = __nwlog_obj();
        v143 = type[0];
        if (os_log_type_enabled(v142, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_remove_idle_connection";
          v15 = "%{public}s called with null http1";
LABEL_362:
          v35 = v142;
          v36 = v143;
          v37 = 12;
          goto LABEL_40;
        }
      }

      else if (v226[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v142 = __nwlog_obj();
        v143 = type[0];
        v187 = os_log_type_enabled(v142, type[0]);
        if (backtrace_string)
        {
          if (v187)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_remove_idle_connection";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v142, v143, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
        }

        else if (v187)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_remove_idle_connection";
          v15 = "%{public}s called with null http1, no backtrace";
          goto LABEL_362;
        }
      }

      else
      {
        v142 = __nwlog_obj();
        v143 = type[0];
        if (os_log_type_enabled(v142, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http1_remove_idle_connection";
          v15 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_362;
        }
      }
    }

LABEL_41:
    if (!v12)
    {
      goto LABEL_57;
    }

    goto LABEL_42;
  }

  if (v3)
  {
    if ((*(v3 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v154 = __nwlog_obj();
      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
      {
        v155 = *(v3 + 488);
        v156 = *(*(v3 + 480) + 372);
        v157 = *(v3 + 860);
        if (v155)
        {
          LODWORD(v155) = *(v155 + 424);
        }

        *buf = 136447746;
        *&buf[4] = "nw_http1_remove_idle_connection";
        *&buf[12] = 2082;
        *&buf[14] = v3 + 74;
        *&buf[22] = 2080;
        v229 = " ";
        v230 = 1024;
        *v231 = v156;
        *&v231[4] = 1024;
        *&v231[6] = v157;
        *&v231[10] = 1024;
        *&v231[12] = v155;
        *&v231[16] = 2048;
        *&v231[18] = v3;
        _os_log_impl(&dword_181A37000, v154, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for connection %p", buf, 0x3Cu);
      }
    }

    if ((*(v3 + 874) & 8) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      *&buf[4] = "nw_http1_remove_idle_connection";
      *&buf[12] = 2048;
      *&buf[14] = v3;
      v12 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v226[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v12, type, v226))
      {
        goto LABEL_41;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_41;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_remove_idle_connection";
        *&buf[12] = 2048;
        *&buf[14] = v3;
        v15 = "%{public}s connection %p not in idle list, cannot remove";
LABEL_39:
        v35 = v13;
        v36 = v14;
        v37 = 22;
LABEL_40:
        _os_log_impl(&dword_181A37000, v35, v36, v15, buf, v37);
        goto LABEL_41;
      }

      if (v226[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_41;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_remove_idle_connection";
        *&buf[12] = 2048;
        *&buf[14] = v3;
        v15 = "%{public}s connection %p not in idle list, cannot remove, backtrace limit exceeded";
        goto LABEL_39;
      }

      v26 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type[0];
      v27 = os_log_type_enabled(gLogObj, type[0]);
      if (!v26)
      {
        if (!v27)
        {
          goto LABEL_41;
        }

        *buf = 136446466;
        *&buf[4] = "nw_http1_remove_idle_connection";
        *&buf[12] = 2048;
        *&buf[14] = v3;
        v15 = "%{public}s connection %p not in idle list, cannot remove, no backtrace";
        goto LABEL_39;
      }

      if (!v27)
      {
        goto LABEL_28;
      }

      *buf = 136446722;
      *&buf[4] = "nw_http1_remove_idle_connection";
      *&buf[12] = 2048;
      *&buf[14] = v3;
      *&buf[22] = 2082;
      v229 = v26;
      v28 = "%{public}s connection %p not in idle list, cannot remove, dumping backtrace:%{public}s";
      v29 = v13;
      v30 = v14;
      v31 = 32;
      goto LABEL_27;
    }

    v16 = *(v3 + 592);
    v17 = *(v3 + 600);
    v18 = (v11 + 216);
    if (v16)
    {
      v18 = (v16 + 600);
    }

    *v18 = v17;
    *v17 = v16;
    *(v3 + 592) = 0u;
    v19 = *(v11 + 340);
    *(v11 + 340) = v19 - 1;
    if (v19)
    {
LABEL_51:
      *(v3 + 874) &= ~8u;
      if ((*(v3 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v195 = __nwlog_obj();
        if (os_log_type_enabled(v195, OS_LOG_TYPE_DEBUG))
        {
          v196 = *(v3 + 488);
          v197 = *(*(v3 + 480) + 372);
          v198 = *(v3 + 860);
          if (v196)
          {
            LODWORD(v196) = *(v196 + 424);
          }

          v199 = *(v11 + 340);
          *buf = 136448002;
          *&buf[4] = "nw_http1_remove_idle_connection";
          *&buf[12] = 2082;
          *&buf[14] = v3 + 74;
          *&buf[22] = 2080;
          v229 = " ";
          v230 = 1024;
          *v231 = v197;
          *&v231[4] = 1024;
          *&v231[6] = v198;
          *&v231[10] = 1024;
          *&v231[12] = v196;
          *&v231[16] = 2048;
          *&v231[18] = v3;
          v232 = 1024;
          LODWORD(v233) = v199;
          _os_log_impl(&dword_181A37000, v195, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed idle connection %p, now have %u idle connections", buf, 0x42u);
        }
      }

      if (*(v3 + 784))
      {
        if ((*(v3 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v203 = __nwlog_obj();
          if (os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG))
          {
            v204 = *(v3 + 488);
            v205 = *(*(v3 + 480) + 372);
            v206 = *(v3 + 860);
            if (v204)
            {
              LODWORD(v204) = *(v204 + 424);
            }

            *buf = 136447746;
            *&buf[4] = "nw_http1_remove_idle_connection";
            *&buf[12] = 2082;
            *&buf[14] = v3 + 74;
            *&buf[22] = 2080;
            v229 = " ";
            v230 = 1024;
            *v231 = v205;
            *&v231[4] = 1024;
            *&v231[6] = v206;
            *&v231[10] = 1024;
            *&v231[12] = v204;
            *&v231[16] = 2048;
            *&v231[18] = v3;
            _os_log_impl(&dword_181A37000, v203, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> deactivating destroy timer for connection %p", buf, 0x3Cu);
          }
        }

        nw_queue_cancel_source(*(v3 + 784), a2);
        *(v3 + 784) = 0;
      }

      goto LABEL_57;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = *(v11 + 340);
    *buf = 136446978;
    *&buf[4] = "nw_http1_remove_idle_connection";
    *&buf[12] = 2082;
    *&buf[14] = "http1->idle_connections_count";
    *&buf[22] = 2048;
    v229 = 1;
    v230 = 2048;
    *v231 = v20;
    v21 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v226[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v21, type, v226))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v24 = *(v11 + 340);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_idle_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->idle_connections_count";
          *&buf[22] = 2048;
          v229 = 1;
          v230 = 2048;
          *v231 = v24;
          v25 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_47:
          _os_log_impl(&dword_181A37000, v22, v23, v25, buf, 0x2Au);
        }
      }

      else if (v226[0] == OS_LOG_TYPE_INFO)
      {
        v32 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type[0];
        v33 = os_log_type_enabled(gLogObj, type[0]);
        if (v32)
        {
          if (v33)
          {
            v34 = *(v11 + 340);
            *buf = 136447234;
            *&buf[4] = "nw_http1_remove_idle_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->idle_connections_count";
            *&buf[22] = 2048;
            v229 = 1;
            v230 = 2048;
            *v231 = v34;
            *&v231[8] = 2082;
            *&v231[10] = v32;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v32);
          goto LABEL_48;
        }

        if (v33)
        {
          v39 = *(v11 + 340);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_idle_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->idle_connections_count";
          *&buf[22] = 2048;
          v229 = 1;
          v230 = 2048;
          *v231 = v39;
          v25 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_47;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v38 = *(v11 + 340);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_idle_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->idle_connections_count";
          *&buf[22] = 2048;
          v229 = 1;
          v230 = 2048;
          *v231 = v38;
          v25 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_47;
        }
      }
    }

LABEL_48:
    if (v21)
    {
      free(v21);
    }

    *(v11 + 340) = 0;
    goto LABEL_51;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http1_remove_idle_connection";
  v12 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v226[0] = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v12, type, v226))
  {
    goto LABEL_41;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v142 = __nwlog_obj();
    v143 = type[0];
    if (os_log_type_enabled(v142, type[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_remove_idle_connection";
      v15 = "%{public}s called with null http1_connection";
      goto LABEL_362;
    }

    goto LABEL_41;
  }

  if (v226[0] != OS_LOG_TYPE_INFO)
  {
    v142 = __nwlog_obj();
    v143 = type[0];
    if (os_log_type_enabled(v142, type[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_remove_idle_connection";
      v15 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_362;
    }

    goto LABEL_41;
  }

  v26 = __nw_create_backtrace_string();
  v142 = __nwlog_obj();
  v143 = type[0];
  v192 = os_log_type_enabled(v142, type[0]);
  if (!v26)
  {
    if (v192)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http1_remove_idle_connection";
      v15 = "%{public}s called with null http1_connection, no backtrace";
      goto LABEL_362;
    }

    goto LABEL_41;
  }

  if (v192)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http1_remove_idle_connection";
    *&buf[12] = 2082;
    *&buf[14] = v26;
    v28 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
    v29 = v142;
    v30 = v143;
    v31 = 22;
LABEL_27:
    _os_log_impl(&dword_181A37000, v29, v30, v28, buf, v31);
  }

LABEL_28:
  free(v26);
  if (v12)
  {
LABEL_42:
    free(v12);
  }

LABEL_57:
  v40 = a1[4];
  if (v40)
  {
    v41 = *(v40 + 32);
    goto LABEL_59;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http1_get_output_handler";
  v144 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v226[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v144, type, v226))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v145 = __nwlog_obj();
      v146 = type[0];
      if (!os_log_type_enabled(v145, type[0]))
      {
        goto LABEL_338;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_output_handler";
      v147 = "%{public}s called with null connection";
LABEL_337:
      _os_log_impl(&dword_181A37000, v145, v146, v147, buf, 0xCu);
      goto LABEL_338;
    }

    if (v226[0] != OS_LOG_TYPE_INFO)
    {
      v145 = __nwlog_obj();
      v146 = type[0];
      if (!os_log_type_enabled(v145, type[0]))
      {
        goto LABEL_338;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_output_handler";
      v147 = "%{public}s called with null connection, backtrace limit exceeded";
      goto LABEL_337;
    }

    v188 = __nw_create_backtrace_string();
    v145 = __nwlog_obj();
    v146 = type[0];
    v189 = os_log_type_enabled(v145, type[0]);
    if (!v188)
    {
      if (!v189)
      {
        goto LABEL_338;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_output_handler";
      v147 = "%{public}s called with null connection, no backtrace";
      goto LABEL_337;
    }

    if (v189)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http1_get_output_handler";
      *&buf[12] = 2082;
      *&buf[14] = v188;
      _os_log_impl(&dword_181A37000, v145, v146, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v188);
  }

LABEL_338:
  if (v144)
  {
    free(v144);
  }

  v40 = a1[4];
  if (v40)
  {
    v41 = 0;
    goto LABEL_59;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http1_get_output_protocol";
  v213 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v226[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v213, type, v226))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v214 = __nwlog_obj();
      v215 = type[0];
      if (os_log_type_enabled(v214, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_get_output_protocol";
        v216 = "%{public}s called with null connection";
LABEL_356:
        _os_log_impl(&dword_181A37000, v214, v215, v216, buf, 0xCu);
      }
    }

    else if (v226[0] == OS_LOG_TYPE_INFO)
    {
      v217 = __nw_create_backtrace_string();
      v214 = __nwlog_obj();
      v215 = type[0];
      v218 = os_log_type_enabled(v214, type[0]);
      if (v217)
      {
        if (v218)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_output_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v217;
          _os_log_impl(&dword_181A37000, v214, v215, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v217);
        goto LABEL_357;
      }

      if (v218)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_get_output_protocol";
        v216 = "%{public}s called with null connection, no backtrace";
        goto LABEL_356;
      }
    }

    else
    {
      v214 = __nwlog_obj();
      v215 = type[0];
      if (os_log_type_enabled(v214, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_get_output_protocol";
        v216 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_356;
      }
    }
  }

LABEL_357:
  if (v213)
  {
    free(v213);
  }

  v41 = 0;
  v40 = 0;
LABEL_59:
  nw_protocol_output_finished(v41, v40);
  v42 = a1[6];
  if (!v42)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_tear_down_connection";
    v148 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v226[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v148, type, v226))
    {
      goto LABEL_366;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v149 = __nwlog_obj();
      v150 = type[0];
      if (!os_log_type_enabled(v149, type[0]))
      {
        goto LABEL_366;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_tear_down_connection";
      v151 = "%{public}s called with null http1";
    }

    else if (v226[0] == OS_LOG_TYPE_INFO)
    {
      v190 = __nw_create_backtrace_string();
      v149 = __nwlog_obj();
      v150 = type[0];
      v191 = os_log_type_enabled(v149, type[0]);
      if (v190)
      {
        if (v191)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_tear_down_connection";
          *&buf[12] = 2082;
          *&buf[14] = v190;
          _os_log_impl(&dword_181A37000, v149, v150, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v190);
LABEL_366:
        if (!v148)
        {
          return;
        }

LABEL_367:
        free(v148);
        return;
      }

      if (!v191)
      {
        goto LABEL_366;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_tear_down_connection";
      v151 = "%{public}s called with null http1, no backtrace";
    }

    else
    {
      v149 = __nwlog_obj();
      v150 = type[0];
      if (!os_log_type_enabled(v149, type[0]))
      {
        goto LABEL_366;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_tear_down_connection";
      v151 = "%{public}s called with null http1, backtrace limit exceeded";
    }

LABEL_365:
    _os_log_impl(&dword_181A37000, v149, v150, v151, buf, 0xCu);
    goto LABEL_366;
  }

  v43 = a1[4];
  if (v43)
  {
    nw_http_connection_metadata_closed(*(v43 + 768));
    if ((*(v43 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v158 = __nwlog_obj();
      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
      {
        v159 = *(v43 + 488);
        v160 = *(*(v43 + 480) + 372);
        v161 = *(v43 + 860);
        if (v159)
        {
          LODWORD(v159) = *(v159 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v43 + 74;
        *&buf[22] = 2080;
        v229 = " ";
        v230 = 1024;
        *v231 = v160;
        *&v231[4] = 1024;
        *&v231[6] = v161;
        *&v231[10] = 1024;
        *&v231[12] = v159;
        _os_log_impl(&dword_181A37000, v158, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing unprocessed_input_frames", buf, 0x32u);
      }
    }

    v44 = (v43 + 616);
    if (gLogDatapath == 1)
    {
      v152 = __nwlog_obj();
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v152, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v45 = *v44;
    if (*v44)
    {
      *(v45 + 40) = type;
      v46 = *(v43 + 624);
      *type = v45;
      v221 = v46;
      *(v43 + 616) = 0;
      *(v43 + 624) = v44;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v229 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v230) = 0;
      do
      {
        v47 = *type;
        if (!*type)
        {
          break;
        }

        v48 = *(*type + 32);
        v49 = *(*type + 40);
        v50 = (v48 + 40);
        if (!v48)
        {
          v50 = &v221;
        }

        *v50 = v49;
        *v49 = v48;
        *(v47 + 32) = 0;
        *(v47 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if ((*(v43 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v162 = __nwlog_obj();
      if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
      {
        v163 = *(v43 + 488);
        v164 = *(*(v43 + 480) + 372);
        v165 = *(v43 + 860);
        if (v163)
        {
          LODWORD(v163) = *(v163 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v43 + 74;
        *&buf[22] = 2080;
        v229 = " ";
        v230 = 1024;
        *v231 = v164;
        *&v231[4] = 1024;
        *&v231[6] = v165;
        *&v231[10] = 1024;
        *&v231[12] = v163;
        _os_log_impl(&dword_181A37000, v162, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing processed_input_frames", buf, 0x32u);
      }
    }

    v51 = (v43 + 632);
    if (gLogDatapath == 1)
    {
      v153 = __nwlog_obj();
      if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v153, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v52 = *v51;
    if (*v51)
    {
      *(v52 + 40) = type;
      v53 = *(v43 + 640);
      *type = v52;
      v221 = v53;
      *(v43 + 632) = 0;
      *(v43 + 640) = v51;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v229 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v230) = 0;
      do
      {
        v54 = *type;
        if (!*type)
        {
          break;
        }

        v55 = *(*type + 32);
        v56 = *(*type + 40);
        v57 = (v55 + 40);
        if (!v55)
        {
          v57 = &v221;
        }

        *v57 = v56;
        *v56 = v55;
        *(v54 + 32) = 0;
        *(v54 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if ((*(v43 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v166 = __nwlog_obj();
      if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
      {
        v167 = *(v43 + 488);
        v168 = *(*(v43 + 480) + 372);
        v169 = *(v43 + 860);
        if (v167)
        {
          LODWORD(v167) = *(v167 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v43 + 74;
        *&buf[22] = 2080;
        v229 = " ";
        v230 = 1024;
        *v231 = v168;
        *&v231[4] = 1024;
        *&v231[6] = v169;
        *&v231[10] = 1024;
        *&v231[12] = v167;
        _os_log_impl(&dword_181A37000, v166, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removing pending_output_frames", buf, 0x32u);
      }
    }

    *type = MEMORY[0x1E69E9820];
    v221 = 0x40000000;
    v222 = ___ZL29nw_http1_tear_down_connectionP17nw_protocol_http1P19nw_http1_connection_block_invoke;
    v223 = &__block_descriptor_tmp_57_42875;
    v224 = v43;
    v58 = *(v43 + 648);
    do
    {
      if (!v58)
      {
        break;
      }

      v59 = *(v58 + 32);
      v60 = v222(type);
      v58 = v59;
    }

    while ((v60 & 1) != 0);
    nw_frame_cache_remove_all((v43 + 696));
    if ((*(v43 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v170 = __nwlog_obj();
      if (os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG))
      {
        v171 = *(v43 + 488);
        v172 = *(*(v43 + 480) + 372);
        v173 = *(v43 + 860);
        if (v171)
        {
          LODWORD(v171) = *(v171 + 424);
        }

        v174 = *(v43 + 32);
        *buf = 136447746;
        *&buf[4] = "nw_http1_tear_down_connection";
        *&buf[12] = 2082;
        *&buf[14] = v43 + 74;
        *&buf[22] = 2080;
        v229 = " ";
        v230 = 1024;
        *v231 = v172;
        *&v231[4] = 1024;
        *&v231[6] = v173;
        *&v231[10] = 1024;
        *&v231[12] = v171;
        *&v231[16] = 2048;
        *&v231[18] = v174;
        _os_log_impl(&dword_181A37000, v170, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> calling remove input handler on output handler %p", buf, 0x3Cu);
      }
    }

    v61 = *(v42 + 336);
    *(v42 + 336) = v61 - 1;
    if (v61)
    {
LABEL_104:
      if ((*(v42 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v175 = __nwlog_obj();
        if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
        {
          v176 = *(v42 + 372);
          v177 = *(v42 + 336);
          *buf = 136447490;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = v42 + 74;
          *&buf[22] = 2080;
          v229 = " ";
          v230 = 1024;
          *v231 = v176;
          *&v231[4] = 2048;
          *&v231[6] = v43;
          *&v231[14] = 1024;
          *&v231[16] = v177;
          _os_log_impl(&dword_181A37000, v175, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> removed connection %p, now have %u connections", buf, 0x36u);
        }
      }

      if ((*(v43 + 872) & 0x800) == 0)
      {
LABEL_127:
        nw_protocol_remove_input_handler(*(v43 + 32), v43);
        nw_protocol_set_output_handler(v43, 0);
        if ((*(v43 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v178 = __nwlog_obj();
          if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
          {
            v179 = *(v43 + 488);
            v180 = *(*(v43 + 480) + 372);
            v181 = *(v43 + 860);
            if (v179)
            {
              LODWORD(v179) = *(v179 + 424);
            }

            *buf = 136447746;
            *&buf[4] = "nw_http1_connection_destroy";
            *&buf[12] = 2082;
            *&buf[14] = v43 + 74;
            *&buf[22] = 2080;
            v229 = " ";
            v230 = 1024;
            *v231 = v180;
            *&v231[4] = 1024;
            *&v231[6] = v181;
            *&v231[10] = 1024;
            *&v231[12] = v179;
            *&v231[16] = 2048;
            *&v231[18] = v43;
            _os_log_impl(&dword_181A37000, v178, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> destroying %p", buf, 0x3Cu);
          }
        }

        v85 = *(v43 + 760);
        if (v85)
        {
          v86 = *(v43 + 752);
          if (v86)
          {
            os_release(v86);
            v85 = *(v43 + 760);
          }
        }

        *(v43 + 752) = 0;
        *(v43 + 760) = v85 | 1;
        v87 = *(v43 + 744);
        if (v87)
        {
          v88 = *(v43 + 736);
          if (v88)
          {
            os_release(v88);
            v87 = *(v43 + 744);
          }
        }

        *(v43 + 736) = 0;
        *(v43 + 744) = v87 | 1;
        v89 = *(v43 + 488);
        if (!v89 || (v90 = *(v89 + 256), v90 != v43))
        {
LABEL_137:
          *(v43 + 488) = 0;
          if ((*(v43 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v182 = __nwlog_obj();
            if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
            {
              v183 = *(v43 + 488);
              v184 = *(*(v43 + 480) + 372);
              v185 = *(v43 + 860);
              if (v183)
              {
                LODWORD(v183) = *(v183 + 424);
              }

              *buf = 136447490;
              *&buf[4] = "nw_http1_connection_destroy";
              *&buf[12] = 2082;
              *&buf[14] = v43 + 74;
              *&buf[22] = 2080;
              v229 = " ";
              v230 = 1024;
              *v231 = v184;
              *&v231[4] = 1024;
              *&v231[6] = v185;
              *&v231[10] = 1024;
              *&v231[12] = v183;
              _os_log_impl(&dword_181A37000, v182, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing frame arrays", buf, 0x32u);
            }
          }

          if (!*(v43 + 680))
          {
LABEL_161:
            if (!*(v43 + 664))
            {
LABEL_177:
              nw_frame_cache_destroy((v43 + 696));
              v117 = *(v43 + 528);
              if (v117)
              {
                v118 = *(v43 + 544);
                if (v118)
                {
                  nw_association_unregister(v117, v118);
                }
              }

              v119 = *(v43 + 800);
              if (v119)
              {
                free(v119);
                *(v43 + 800) = 0;
              }

              *(v43 + 840) = 0;
              v120 = *(v43 + 808);
              if (v120)
              {
                free(v120);
                *(v43 + 808) = 0;
              }

              *(v43 + 844) = 0;
              v121 = *(v43 + 816);
              if (v121)
              {
                free(v121);
                *(v43 + 816) = 0;
              }

              *(v43 + 848) = 0;
              v122 = *(v43 + 824);
              if (v122)
              {
                free(v122);
                *(v43 + 824) = 0;
              }

              *(v43 + 852) = 0;
              v123 = *(v43 + 832);
              if (v123)
              {
                free(v123);
                *(v43 + 832) = 0;
              }

              *(v43 + 856) = 0;
              (*(*(v43 + 608) + 16))(*(v43 + 608), 0);
              v124 = *(v43 + 608);
              if (v124)
              {
                _Block_release(v124);
                *(v43 + 608) = 0;
              }

              nw_http1_connection::~nw_http1_connection(v43);
              free(v125);
              if (!*(v42 + 336) && !*(v42 + 344))
              {
                nw_protocol_http1_destroy(v42, v42);
              }

              return;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            *buf = 136446210;
            *&buf[4] = "nw_http1_connection_destroy";
            v107 = _os_log_send_and_compose_impl();
            v226[0] = OS_LOG_TYPE_ERROR;
            v225 = 0;
            if (__nwlog_fault(v107, v226, &v225))
            {
              if (v226[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v108 = gLogObj;
                v109 = v226[0];
                if (!os_log_type_enabled(gLogObj, v226[0]))
                {
                  goto LABEL_175;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_destroy";
                v110 = "%{public}s input frame array is not empty when http1 connection is destroyed";
LABEL_173:
                v115 = v108;
                v116 = v109;
LABEL_174:
                _os_log_impl(&dword_181A37000, v115, v116, v110, buf, 0xCu);
                goto LABEL_175;
              }

              if (v225 != 1)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v108 = gLogObj;
                v109 = v226[0];
                if (!os_log_type_enabled(gLogObj, v226[0]))
                {
                  goto LABEL_175;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_destroy";
                v110 = "%{public}s input frame array is not empty when http1 connection is destroyed, backtrace limit exceeded";
                goto LABEL_173;
              }

              v111 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v112 = gLogObj;
              v113 = v226[0];
              v114 = os_log_type_enabled(gLogObj, v226[0]);
              if (v111)
              {
                if (v114)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_connection_destroy";
                  *&buf[12] = 2082;
                  *&buf[14] = v111;
                  _os_log_impl(&dword_181A37000, v112, v113, "%{public}s input frame array is not empty when http1 connection is destroyed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v111);
                goto LABEL_175;
              }

              if (v114)
              {
                *buf = 136446210;
                *&buf[4] = "nw_http1_connection_destroy";
                v110 = "%{public}s input frame array is not empty when http1 connection is destroyed, no backtrace";
                v115 = v112;
                v116 = v113;
                goto LABEL_174;
              }
            }

LABEL_175:
            if (v107)
            {
              free(v107);
            }

            goto LABEL_177;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "nw_http1_connection_destroy";
          v91 = _os_log_send_and_compose_impl();
          v226[0] = OS_LOG_TYPE_ERROR;
          v225 = 0;
          if (__nwlog_fault(v91, v226, &v225))
          {
            if (v226[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v92 = gLogObj;
              v93 = v226[0];
              if (!os_log_type_enabled(gLogObj, v226[0]))
              {
                goto LABEL_159;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_destroy";
              v94 = "%{public}s output frame array is not empty when http1 connection is destroyed";
LABEL_157:
              v105 = v92;
              v106 = v93;
LABEL_158:
              _os_log_impl(&dword_181A37000, v105, v106, v94, buf, 0xCu);
              goto LABEL_159;
            }

            if (v225 != 1)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v92 = gLogObj;
              v93 = v226[0];
              if (!os_log_type_enabled(gLogObj, v226[0]))
              {
                goto LABEL_159;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_destroy";
              v94 = "%{public}s output frame array is not empty when http1 connection is destroyed, backtrace limit exceeded";
              goto LABEL_157;
            }

            v95 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v96 = gLogObj;
            v97 = v226[0];
            v98 = os_log_type_enabled(gLogObj, v226[0]);
            if (v95)
            {
              if (v98)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_connection_destroy";
                *&buf[12] = 2082;
                *&buf[14] = v95;
                _os_log_impl(&dword_181A37000, v96, v97, "%{public}s output frame array is not empty when http1 connection is destroyed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v95);
              goto LABEL_159;
            }

            if (v98)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_connection_destroy";
              v94 = "%{public}s output frame array is not empty when http1 connection is destroyed, no backtrace";
              v105 = v96;
              v106 = v97;
              goto LABEL_158;
            }
          }

LABEL_159:
          if (v91)
          {
            free(v91);
          }

          goto LABEL_161;
        }

        if (*(v89 + 248))
        {
          if (v90[61] == v89)
          {
            if ((*(v89 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v126 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                v127 = *(v89 + 256);
                v128 = *(*(v89 + 248) + 372);
                if (v127)
                {
                  LODWORD(v127) = *(v127 + 860);
                }

                v129 = *(v89 + 424);
                *buf = 136448002;
                *&buf[4] = "nw_http1_stream_disassociate_from_connection";
                *&buf[12] = 2082;
                *&buf[14] = v89 + 74;
                *&buf[22] = 2080;
                v229 = " ";
                v230 = 1024;
                *v231 = v128;
                *&v231[4] = 1024;
                *&v231[6] = v127;
                *&v231[10] = 1024;
                *&v231[12] = v129;
                *&v231[16] = 2048;
                *&v231[18] = v89;
                v232 = 2048;
                v233 = v43;
                _os_log_impl(&dword_181A37000, v126, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) finished with connection %p", buf, 0x46u);
              }
            }

            v130 = v90 + 79;
            if (gLogDatapath == 1)
            {
              v219 = __nwlog_obj();
              if (os_log_type_enabled(v219, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_finalize_temp_frame_array";
                _os_log_impl(&dword_181A37000, v219, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
              }
            }

            v131 = *v130;
            if (*v130)
            {
              *(v131 + 40) = v226;
              v132 = v90[80];
              *v226 = v131;
              v227 = v132;
              v90[79] = 0;
              v90[80] = v130;
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
              v229 = &__block_descriptor_tmp_21_49595;
              LOBYTE(v230) = 0;
              do
              {
                v133 = *v226;
                if (!*v226)
                {
                  break;
                }

                v134 = *(*v226 + 32);
                v135 = *(*v226 + 40);
                v136 = (v134 + 40);
                if (!v134)
                {
                  v136 = &v227;
                }

                *v136 = v135;
                *v135 = v134;
                *(v133 + 32) = 0;
                *(v133 + 40) = 0;
              }

              while (((*&buf[16])(buf) & 1) != 0);
            }

            *(v89 + 256) = 0;
            v90[61] = 0;
            nw_protocol_set_output_handler(v89, 0);
            nw_protocol_set_input_handler(v90, 0);
            goto LABEL_137;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v99 = v90[61];
          *buf = 136446978;
          *&buf[4] = "nw_http1_stream_disassociate_from_connection";
          *&buf[12] = 2048;
          *&buf[14] = v43;
          *&buf[22] = 2048;
          v229 = v89;
          v230 = 2048;
          *v231 = v99;
          v100 = _os_log_send_and_compose_impl();
          v226[0] = OS_LOG_TYPE_ERROR;
          v225 = 0;
          if (__nwlog_fault(v100, v226, &v225))
          {
            if (v226[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v101 = gLogObj;
              v102 = v226[0];
              if (!os_log_type_enabled(gLogObj, v226[0]))
              {
                goto LABEL_223;
              }

              v103 = v90[61];
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2048;
              *&buf[14] = v43;
              *&buf[22] = 2048;
              v229 = v89;
              v230 = 2048;
              *v231 = v103;
              v104 = "%{public}s Connection %p does not already have stream %p, has %p";
              goto LABEL_222;
            }

            if (v225 != 1)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v101 = gLogObj;
              v102 = v226[0];
              if (!os_log_type_enabled(gLogObj, v226[0]))
              {
                goto LABEL_223;
              }

              v140 = v90[61];
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2048;
              *&buf[14] = v43;
              *&buf[22] = 2048;
              v229 = v89;
              v230 = 2048;
              *v231 = v140;
              v104 = "%{public}s Connection %p does not already have stream %p, has %p, backtrace limit exceeded";
              goto LABEL_222;
            }

            v137 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v101 = gLogObj;
            v102 = v226[0];
            v138 = os_log_type_enabled(gLogObj, v226[0]);
            if (v137)
            {
              if (v138)
              {
                v139 = v90[61];
                *buf = 136447234;
                *&buf[4] = "nw_http1_stream_disassociate_from_connection";
                *&buf[12] = 2048;
                *&buf[14] = v43;
                *&buf[22] = 2048;
                v229 = v89;
                v230 = 2048;
                *v231 = v139;
                *&v231[8] = 2082;
                *&v231[10] = v137;
                _os_log_impl(&dword_181A37000, v101, v102, "%{public}s Connection %p does not already have stream %p, has %p, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v137);
              goto LABEL_223;
            }

            if (v138)
            {
              v141 = v90[61];
              *buf = 136446978;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2048;
              *&buf[14] = v43;
              *&buf[22] = 2048;
              v229 = v89;
              v230 = 2048;
              *v231 = v141;
              v104 = "%{public}s Connection %p does not already have stream %p, has %p, no backtrace";
LABEL_222:
              _os_log_impl(&dword_181A37000, v101, v102, v104, buf, 0x2Au);
            }
          }

LABEL_223:
          if (v100)
          {
            free(v100);
          }

          goto LABEL_137;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_disassociate_from_connection";
        v207 = _os_log_send_and_compose_impl();
        v226[0] = OS_LOG_TYPE_ERROR;
        v225 = 0;
        if (__nwlog_fault(v207, v226, &v225))
        {
          if (v226[0] == OS_LOG_TYPE_FAULT)
          {
            v208 = __nwlog_obj();
            v209 = v226[0];
            if (!os_log_type_enabled(v208, v226[0]))
            {
              goto LABEL_375;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            v210 = "%{public}s called with null http1_stream->protocol_http1";
            goto LABEL_374;
          }

          if (v225 != 1)
          {
            v208 = __nwlog_obj();
            v209 = v226[0];
            if (!os_log_type_enabled(v208, v226[0]))
            {
              goto LABEL_375;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            v210 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
            goto LABEL_374;
          }

          v211 = __nw_create_backtrace_string();
          v208 = __nwlog_obj();
          v209 = v226[0];
          v212 = os_log_type_enabled(v208, v226[0]);
          if (v211)
          {
            if (v212)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_stream_disassociate_from_connection";
              *&buf[12] = 2082;
              *&buf[14] = v211;
              _os_log_impl(&dword_181A37000, v208, v209, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v211);
            goto LABEL_375;
          }

          if (v212)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http1_stream_disassociate_from_connection";
            v210 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
LABEL_374:
            _os_log_impl(&dword_181A37000, v208, v209, v210, buf, 0xCu);
          }
        }

LABEL_375:
        if (v207)
        {
          free(v207);
        }

        goto LABEL_137;
      }

      v73 = *(v42 + 368);
      *(v42 + 368) = v73 - 1;
      if (v73)
      {
LABEL_125:
        if ((*(v42 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v200 = __nwlog_obj();
          if (os_log_type_enabled(v200, OS_LOG_TYPE_DEBUG))
          {
            v201 = *(v42 + 372);
            v202 = *(v42 + 368) + *(v42 + 364);
            *buf = 136447490;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = v42 + 74;
            *&buf[22] = 2080;
            v229 = " ";
            v230 = 1024;
            *v231 = v201;
            *&v231[4] = 1024;
            *&v231[6] = v202;
            *&v231[10] = 2048;
            *&v231[12] = v43;
            _os_log_impl(&dword_181A37000, v200, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> decreased connection pool width to %u after removing non-reusable connection %p", buf, 0x36u);
          }
        }

        goto LABEL_127;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v74 = *(v42 + 368);
      *buf = 136446978;
      *&buf[4] = "nw_http1_remove_connection";
      *&buf[12] = 2082;
      *&buf[14] = "http1->nonresuable_connections";
      *&buf[22] = 2048;
      v229 = 1;
      v230 = 2048;
      *v231 = v74;
      v75 = _os_log_send_and_compose_impl();
      v226[0] = OS_LOG_TYPE_ERROR;
      v225 = 0;
      if (__nwlog_fault(v75, v226, &v225))
      {
        if (v226[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v76 = gLogObj;
          v77 = v226[0];
          if (os_log_type_enabled(gLogObj, v226[0]))
          {
            v78 = *(v42 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v229 = 1;
            v230 = 2048;
            *v231 = v78;
            v79 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_121:
            _os_log_impl(&dword_181A37000, v76, v77, v79, buf, 0x2Au);
          }
        }

        else if (v225 == 1)
        {
          v80 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v76 = gLogObj;
          v77 = v226[0];
          v81 = os_log_type_enabled(gLogObj, v226[0]);
          if (v80)
          {
            if (v81)
            {
              v82 = *(v42 + 368);
              *buf = 136447234;
              *&buf[4] = "nw_http1_remove_connection";
              *&buf[12] = 2082;
              *&buf[14] = "http1->nonresuable_connections";
              *&buf[22] = 2048;
              v229 = 1;
              v230 = 2048;
              *v231 = v82;
              *&v231[8] = 2082;
              *&v231[10] = v80;
              _os_log_impl(&dword_181A37000, v76, v77, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v80);
            goto LABEL_122;
          }

          if (v81)
          {
            v84 = *(v42 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v229 = 1;
            v230 = 2048;
            *v231 = v84;
            v79 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_121;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v76 = gLogObj;
          v77 = v226[0];
          if (os_log_type_enabled(gLogObj, v226[0]))
          {
            v83 = *(v42 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            v229 = 1;
            v230 = 2048;
            *v231 = v83;
            v79 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_121;
          }
        }
      }

LABEL_122:
      if (v75)
      {
        free(v75);
      }

      *(v42 + 368) = 0;
      goto LABEL_125;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v62 = *(v42 + 336);
    *buf = 136446978;
    *&buf[4] = "nw_http1_remove_connection";
    *&buf[12] = 2082;
    *&buf[14] = "http1->connections_count";
    *&buf[22] = 2048;
    v229 = 1;
    v230 = 2048;
    *v231 = v62;
    v63 = _os_log_send_and_compose_impl();
    v226[0] = OS_LOG_TYPE_ERROR;
    v225 = 0;
    if (__nwlog_fault(v63, v226, &v225))
    {
      if (v226[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v64 = gLogObj;
        v65 = v226[0];
        if (os_log_type_enabled(gLogObj, v226[0]))
        {
          v66 = *(v42 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v229 = 1;
          v230 = 2048;
          *v231 = v66;
          v67 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_100:
          _os_log_impl(&dword_181A37000, v64, v65, v67, buf, 0x2Au);
        }
      }

      else if (v225 == 1)
      {
        v68 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v64 = gLogObj;
        v65 = v226[0];
        v69 = os_log_type_enabled(gLogObj, v226[0]);
        if (v68)
        {
          if (v69)
          {
            v70 = *(v42 + 336);
            *buf = 136447234;
            *&buf[4] = "nw_http1_remove_connection";
            *&buf[12] = 2082;
            *&buf[14] = "http1->connections_count";
            *&buf[22] = 2048;
            v229 = 1;
            v230 = 2048;
            *v231 = v70;
            *&v231[8] = 2082;
            *&v231[10] = v68;
            _os_log_impl(&dword_181A37000, v64, v65, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v68);
          goto LABEL_101;
        }

        if (v69)
        {
          v72 = *(v42 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v229 = 1;
          v230 = 2048;
          *v231 = v72;
          v67 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_100;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v64 = gLogObj;
        v65 = v226[0];
        if (os_log_type_enabled(gLogObj, v226[0]))
        {
          v71 = *(v42 + 336);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->connections_count";
          *&buf[22] = 2048;
          v229 = 1;
          v230 = 2048;
          *v231 = v71;
          v67 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_100;
        }
      }
    }

LABEL_101:
    if (v63)
    {
      free(v63);
    }

    *(v42 + 336) = 0;
    goto LABEL_104;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http1_tear_down_connection";
  v148 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v226[0] = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v148, type, v226))
  {
    goto LABEL_366;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v149 = __nwlog_obj();
    v150 = type[0];
    if (!os_log_type_enabled(v149, type[0]))
    {
      goto LABEL_366;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_tear_down_connection";
    v151 = "%{public}s called with null http1_connection";
    goto LABEL_365;
  }

  if (v226[0] != OS_LOG_TYPE_INFO)
  {
    v149 = __nwlog_obj();
    v150 = type[0];
    if (!os_log_type_enabled(v149, type[0]))
    {
      goto LABEL_366;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_tear_down_connection";
    v151 = "%{public}s called with null http1_connection, backtrace limit exceeded";
    goto LABEL_365;
  }

  v193 = __nw_create_backtrace_string();
  v149 = __nwlog_obj();
  v150 = type[0];
  v194 = os_log_type_enabled(v149, type[0]);
  if (!v193)
  {
    if (!v194)
    {
      goto LABEL_366;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_tear_down_connection";
    v151 = "%{public}s called with null http1_connection, no backtrace";
    goto LABEL_365;
  }

  if (v194)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http1_tear_down_connection";
    *&buf[12] = 2082;
    *&buf[14] = v193;
    _os_log_impl(&dword_181A37000, v149, v150, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v193);
  if (v148)
  {
    goto LABEL_367;
  }
}

uint64_t nw_protocol_http1_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v345 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v60 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    v314[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v60, aBlock, v314))
    {
      goto LABEL_570;
    }

    if (aBlock[0] == 17)
    {
      v61 = __nwlog_obj();
      v62 = aBlock[0];
      if (!os_log_type_enabled(v61, aBlock[0]))
      {
        goto LABEL_570;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v63 = "%{public}s called with null protocol";
    }

    else
    {
      if (v314[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v61 = __nwlog_obj();
        v62 = aBlock[0];
        v79 = os_log_type_enabled(v61, aBlock[0]);
        if (!backtrace_string)
        {
          if (!v79)
          {
            goto LABEL_570;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v63 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_569;
        }

        if (v79)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_570;
      }

      v61 = __nwlog_obj();
      v62 = aBlock[0];
      if (!os_log_type_enabled(v61, aBlock[0]))
      {
        goto LABEL_570;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v63 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_569:
    _os_log_impl(&dword_181A37000, v61, v62, v63, buf, 0xCu);
    goto LABEL_570;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v60 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    v314[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v60, aBlock, v314))
    {
      goto LABEL_570;
    }

    if (aBlock[0] == 17)
    {
      v61 = __nwlog_obj();
      v62 = aBlock[0];
      if (!os_log_type_enabled(v61, aBlock[0]))
      {
        goto LABEL_570;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v63 = "%{public}s called with null handle";
    }

    else
    {
      if (v314[0] == OS_LOG_TYPE_INFO)
      {
        v80 = __nw_create_backtrace_string();
        v61 = __nwlog_obj();
        v62 = aBlock[0];
        v81 = os_log_type_enabled(v61, aBlock[0]);
        if (!v80)
        {
          if (!v81)
          {
            goto LABEL_570;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v63 = "%{public}s called with null handle, no backtrace";
          goto LABEL_569;
        }

        if (v81)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v80;
          _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v80);
        if (!v60)
        {
LABEL_572:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_add_input_handler";
          v64 = _os_log_send_and_compose_impl();
          aBlock[0] = 16;
          v314[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v64, aBlock, v314))
          {
            if (aBlock[0] == 17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v65 = gLogObj;
              v66 = aBlock[0];
              if (os_log_type_enabled(gLogObj, aBlock[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_http1_add_input_handler";
                v67 = "%{public}s called with null http1";
                goto LABEL_583;
              }
            }

            else if (v314[0] == OS_LOG_TYPE_INFO)
            {
              v306 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v307 = gLogObj;
              v308 = aBlock[0];
              v309 = os_log_type_enabled(gLogObj, aBlock[0]);
              if (v306)
              {
                if (v309)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_protocol_http1_add_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v306;
                  _os_log_impl(&dword_181A37000, v307, v308, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v306);
                goto LABEL_585;
              }

              if (v309)
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_http1_add_input_handler";
                v67 = "%{public}s called with null http1, no backtrace";
                v310 = v307;
                v311 = v308;
                goto LABEL_584;
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v65 = gLogObj;
              v66 = aBlock[0];
              if (os_log_type_enabled(gLogObj, aBlock[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_http1_add_input_handler";
                v67 = "%{public}s called with null http1, backtrace limit exceeded";
                goto LABEL_583;
              }
            }
          }

          goto LABEL_585;
        }

LABEL_571:
        free(v60);
        goto LABEL_572;
      }

      v61 = __nwlog_obj();
      v62 = aBlock[0];
      if (!os_log_type_enabled(v61, aBlock[0]))
      {
        goto LABEL_570;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v63 = "%{public}s called with null handle, backtrace limit exceeded";
    }

    goto LABEL_569;
  }

  v4 = a2;
  v5 = handle[6];
  if (v5 == 1)
  {
    goto LABEL_10;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      goto LABEL_572;
    }

    v6 = *(handle + 2);
    if (v6)
    {
      handle = (v6 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v60 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    v314[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v60, aBlock, v314))
    {
      if (aBlock[0] == 17)
      {
        v61 = __nwlog_obj();
        v62 = aBlock[0];
        if (!os_log_type_enabled(v61, aBlock[0]))
        {
          goto LABEL_570;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v63 = "%{public}s called with null handle->http1_connection";
        goto LABEL_569;
      }

      if (v314[0] != OS_LOG_TYPE_INFO)
      {
        v61 = __nwlog_obj();
        v62 = aBlock[0];
        if (!os_log_type_enabled(v61, aBlock[0]))
        {
          goto LABEL_570;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v63 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_569;
      }

      v104 = __nw_create_backtrace_string();
      v61 = __nwlog_obj();
      v62 = aBlock[0];
      v107 = os_log_type_enabled(v61, aBlock[0]);
      if (!v104)
      {
        if (!v107)
        {
          goto LABEL_570;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v63 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_569;
      }

      if (v107)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v104;
        v106 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_188;
      }

      goto LABEL_189;
    }

LABEL_570:
    if (!v60)
    {
      goto LABEL_572;
    }

    goto LABEL_571;
  }

  v7 = *(handle + 1);
  if (!v7)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v60 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    v314[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v60, aBlock, v314))
    {
      goto LABEL_570;
    }

    if (aBlock[0] != 17)
    {
      if (v314[0] != OS_LOG_TYPE_INFO)
      {
        v61 = __nwlog_obj();
        v62 = aBlock[0];
        if (!os_log_type_enabled(v61, aBlock[0]))
        {
          goto LABEL_570;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v63 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_569;
      }

      v104 = __nw_create_backtrace_string();
      v61 = __nwlog_obj();
      v62 = aBlock[0];
      v105 = os_log_type_enabled(v61, aBlock[0]);
      if (!v104)
      {
        if (!v105)
        {
          goto LABEL_570;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v63 = "%{public}s called with null handle->http1_stream, no backtrace";
        goto LABEL_569;
      }

      if (v105)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v104;
        v106 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_188:
        _os_log_impl(&dword_181A37000, v61, v62, v106, buf, 0x16u);
      }

LABEL_189:
      free(v104);
      if (!v60)
      {
        goto LABEL_572;
      }

      goto LABEL_571;
    }

    v61 = __nwlog_obj();
    v62 = aBlock[0];
    if (!os_log_type_enabled(v61, aBlock[0]))
    {
      goto LABEL_570;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v63 = "%{public}s called with null handle->http1_stream";
    goto LABEL_569;
  }

  handle = (v7 + 248);
LABEL_10:
  v8 = *handle;
  if (!*handle)
  {
    goto LABEL_572;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_add_input_handler";
    v64 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    v314[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v64, aBlock, v314))
    {
      if (aBlock[0] == 17)
      {
        v65 = __nwlog_obj();
        v66 = aBlock[0];
        if (os_log_type_enabled(v65, aBlock[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_add_input_handler";
          v67 = "%{public}s called with null input_protocol";
LABEL_583:
          v310 = v65;
          v311 = v66;
LABEL_584:
          _os_log_impl(&dword_181A37000, v310, v311, v67, buf, 0xCu);
        }
      }

      else if (v314[0] == OS_LOG_TYPE_INFO)
      {
        v82 = __nw_create_backtrace_string();
        v65 = __nwlog_obj();
        v66 = aBlock[0];
        v83 = os_log_type_enabled(v65, aBlock[0]);
        if (v82)
        {
          if (v83)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http1_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = v82;
            _os_log_impl(&dword_181A37000, v65, v66, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v82);
          goto LABEL_585;
        }

        if (v83)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_add_input_handler";
          v67 = "%{public}s called with null input_protocol, no backtrace";
          goto LABEL_583;
        }
      }

      else
      {
        v65 = __nwlog_obj();
        v66 = aBlock[0];
        if (os_log_type_enabled(v65, aBlock[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_add_input_handler";
          v67 = "%{public}s called with null input_protocol, backtrace limit exceeded";
          goto LABEL_583;
        }
      }
    }

LABEL_585:
    if (v64)
    {
      free(v64);
    }

    return 0;
  }

  v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((*(v8 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v72 = __nwlog_obj();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      v73 = *(v8 + 372);
      *buf = 136447234;
      *&buf[4] = "nw_protocol_http1_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = v8 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v73;
      *&buf[38] = 2048;
      *&buf[40] = v4;
      _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called with input_protocol %p", buf, 0x30u);
    }
  }

  parameters = nw_protocol_get_parameters(v4);
  v11 = *(v8 + 264);
  v312 = v4;
  if (!v11)
  {
    nw_protocol_plugin_name_set_name(v8 + 64, a1, parameters);
    v12 = _nw_parameters_shallow_copy(parameters, 1);
    v13 = nw_parameters_copy_protocol_options_legacy(v12, v8);
    v14 = v13;
    if (v13)
    {
      is_websocket = nw_http_messaging_options_is_websocket(v13);
      if (is_websocket)
      {
        v16 = 8;
      }

      else
      {
        v16 = 0;
      }

      *(v8 + 376) = *(v8 + 376) & 0xF7 | v16;
      if (is_websocket)
      {
        connection_pool_width = 1;
      }

      else
      {
        connection_pool_width = nw_http1_get_connection_pool_width(v14);
      }

      *(v8 + 364) = connection_pool_width;
      *(v8 + 192) = 1000 * nw_http1_get_idle_timeout(v14);
      *(v8 + 372) = nw_protocol_get_next_instance_id();
      top_id = _nw_protocol_options_get_top_id(v14);
      if ((*(v8 + 158) & 1) == 0)
      {
        v21 = top_id;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v23 = *(v8 + 372);
          *buf = 136447490;
          *&buf[4] = "nw_protocol_http1_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v8 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v23;
          *&buf[38] = 1024;
          *&buf[40] = v23;
          *&buf[44] = 1024;
          *&buf[46] = v21;
          _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> created HTTP/1 and assigned instance ID: %u from C%u", buf, 0x32u);
        }
      }

      v24 = nw_parameters_copy_default_protocol_stack(v12);
      v25 = _nw_protocol_options_copy(v14);
      if (nw_protocol_copy_http1_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http1_definition_onceToken, &__block_literal_global_75986);
      }

      v26 = nw_protocol_copy_http1_definition_http1_definition;
      nw_parameters_set_protocol_instance(v25, v27, v8);
      if (v26)
      {
        os_release(v26);
      }

      nw_protocol_stack_replace_protocol_with_handle(v24, v8, v25);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      buf[24] = 0;
      iterate_block[0] = MEMORY[0x1E69E9820];
      iterate_block[1] = 0x40000000;
      iterate_block[2] = ___ZL35nw_protocol_http1_add_input_handlerP11nw_protocolS0__block_invoke;
      iterate_block[3] = &unk_1E6A32A20;
      iterate_block[4] = buf;
      iterate_block[5] = v8;
      nw_protocol_stack_iterate_application_protocols(v24, iterate_block);
      _Block_object_dispose(buf, 8);
      v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      if (v25)
      {
        os_release(v25);
      }

      v4 = v312;
      if (v24)
      {
        os_release(v24);
      }
    }

    else if ((*(v8 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v19 = *(v8 + 372);
        *buf = 136447490;
        *&buf[4] = "nw_protocol_http1_add_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = v8 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v19;
        *&buf[38] = 2048;
        *&buf[40] = v12;
        *&buf[48] = 2048;
        *&buf[50] = parameters;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> failed to find http1 options in new parameters %p, copy of %p", buf, 0x3Au);
      }
    }

    v28 = *(v8 + 272);
    if (v28)
    {
      v29 = *(v8 + 264);
      if (v29)
      {
        os_release(v29);
        v28 = *(v8 + 272);
      }
    }

    *(v8 + 264) = v12;
    *(v8 + 272) = v28 | 1;
    if (v14)
    {
      os_release(v14);
    }
  }

  proxy_applied = nw_parameters_get_proxy_applied(parameters);
  v31 = 296;
  if ((v11 == 0) | proxy_applied & 1)
  {
    v31 = 280;
  }

  v32 = *(v8 + v31);
  if (!v32)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_create";
    v68 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    v314[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v68, aBlock, v314))
    {
      goto LABEL_206;
    }

    if (aBlock[0] != 17)
    {
      if (v314[0] != OS_LOG_TYPE_INFO)
      {
        v69 = __nwlog_obj();
        v70 = aBlock[0];
        if (!os_log_type_enabled(v69, aBlock[0]))
        {
          goto LABEL_206;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_create";
        v71 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_205;
      }

      v84 = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v70 = aBlock[0];
      v85 = os_log_type_enabled(v69, aBlock[0]);
      if (!v84)
      {
        v4 = v312;
        if (!v85)
        {
          goto LABEL_206;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_create";
        v71 = "%{public}s called with null endpoint, no backtrace";
        goto LABEL_205;
      }

      if (v85)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_stream_create";
        *&buf[12] = 2082;
        *&buf[14] = v84;
        v86 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_142:
        _os_log_impl(&dword_181A37000, v69, v70, v86, buf, 0x16u);
      }

LABEL_143:
      free(v84);
      v4 = v312;
      goto LABEL_206;
    }

    v69 = __nwlog_obj();
    v70 = aBlock[0];
    if (!os_log_type_enabled(v69, aBlock[0]))
    {
      goto LABEL_206;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_create";
    v71 = "%{public}s called with null endpoint";
LABEL_205:
    _os_log_impl(&dword_181A37000, v69, v70, v71, buf, 0xCu);
LABEL_206:
    if (v68)
    {
      free(v68);
    }

    v34 = 0;
    v55 = a1->handle;
    if (v55)
    {
LABEL_77:
      if (v55[6] == 2)
      {
        if (v34)
        {
          if (parameters)
          {
            v56 = parameters;
            v57 = _nw_parameters_copy_protocol_options_with_level(v56, a1);

            if (v57)
            {
              if ((*(v34 + 158) & 1) == 0 && gLogDatapath == 1)
              {
                v96 = __nwlog_obj();
                if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
                {
                  v97 = *(v34 + 256);
                  v98 = *(*(v34 + 248) + 372);
                  if (v97)
                  {
                    LODWORD(v97) = *(v97 + 860);
                  }

                  v99 = *(v34 + 424);
                  *buf = 136448770;
                  *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                  *&buf[12] = 2082;
                  *&buf[14] = v34 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v98;
                  *&buf[38] = 1024;
                  *&buf[40] = v97;
                  *&buf[44] = 1024;
                  *&buf[46] = v99;
                  *&buf[50] = 2048;
                  *&buf[52] = v34;
                  *&buf[60] = 2048;
                  *&buf[62] = v8;
                  *&buf[70] = 2048;
                  *&buf[72] = a1;
                  *v339 = 2048;
                  *&v339[2] = v56;
                  v340 = 2048;
                  v341 = v57;
                  _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http1_stream protocol %p, set protocol instance to %p instead of %p in parameters %p options %p", buf, 0x64u);
                  v4 = v312;
                }
              }

              if (nw_protocol_copy_http1_definition_onceToken != -1)
              {
                dispatch_once(&nw_protocol_copy_http1_definition_onceToken, &__block_literal_global_75986);
              }

              v58 = nw_protocol_copy_http1_definition_http1_definition;
              v59 = v57;
              _nw_protocol_options_set_instance(v59, v8);

              if (v58)
              {
                os_release(v58);
              }

              os_release(v59);
            }

            goto LABEL_226;
          }

          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_replace_protocol_instance";
          v92 = _os_log_send_and_compose_impl();
          aBlock[0] = 16;
          v314[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v92, aBlock, v314))
          {
            if (aBlock[0] == 17)
            {
              v93 = __nwlog_obj();
              v94 = aBlock[0];
              if (!os_log_type_enabled(v93, aBlock[0]))
              {
                goto LABEL_563;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_replace_protocol_instance";
              v95 = "%{public}s called with null parameters";
              goto LABEL_562;
            }

            if (v314[0] != OS_LOG_TYPE_INFO)
            {
              v93 = __nwlog_obj();
              v94 = aBlock[0];
              if (!os_log_type_enabled(v93, aBlock[0]))
              {
                goto LABEL_563;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_replace_protocol_instance";
              v95 = "%{public}s called with null parameters, backtrace limit exceeded";
              goto LABEL_562;
            }

            v102 = __nw_create_backtrace_string();
            v93 = __nwlog_obj();
            v94 = aBlock[0];
            v103 = os_log_type_enabled(v93, aBlock[0]);
            if (v102)
            {
              if (v103)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                *&buf[12] = 2082;
                *&buf[14] = v102;
                _os_log_impl(&dword_181A37000, v93, v94, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v102);
              v4 = v312;
              goto LABEL_563;
            }

            v4 = v312;
            if (v103)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_replace_protocol_instance";
              v95 = "%{public}s called with null parameters, no backtrace";
LABEL_562:
              _os_log_impl(&dword_181A37000, v93, v94, v95, buf, 0xCu);
            }
          }

LABEL_563:
          if (v92)
          {
            free(v92);
          }

LABEL_226:
          nw_protocol_set_input_handler(v34, v4);
          *v34 = *v4->flow_id;
          if (v4->output_handler)
          {
            if ((*(v8 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v114 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                v115 = *(v8 + 372);
                *buf = 136446978;
                *&buf[4] = "nw_http1_stream_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v8 + 74;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *&buf[34] = v115;
                _os_log_impl(&dword_181A37000, v114, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Output handler already exists for protocol being added as input handler", buf, 0x26u);
              }
            }
          }

          else
          {
            nw_protocol_set_output_handler(v4, v34);
          }

          v116 = *(v34 + 320);
          if (v116)
          {
            v117 = v116;
            v118 = _nw_parameters_copy_protocol_options_with_level(v117, v8);

            if (v118)
            {
              if ((*(v34 + 158) & 1) == 0 && gLogDatapath == 1)
              {
                v282 = __nwlog_obj();
                if (os_log_type_enabled(v282, OS_LOG_TYPE_DEBUG))
                {
                  v283 = *(v34 + 256);
                  v284 = *(*(v34 + 248) + 372);
                  if (v283)
                  {
                    LODWORD(v283) = *(v283 + 860);
                  }

                  v285 = *(v34 + 424);
                  *buf = 136448770;
                  *&buf[4] = "nw_http1_stream_replace_protocol_instance";
                  *&buf[12] = 2082;
                  *&buf[14] = v34 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v284;
                  *&buf[38] = 1024;
                  *&buf[40] = v283;
                  *&buf[44] = 1024;
                  *&buf[46] = v285;
                  *&buf[50] = 2048;
                  *&buf[52] = v34;
                  *&buf[60] = 2048;
                  *&buf[62] = v34;
                  *&buf[70] = 2048;
                  *&buf[72] = v8;
                  *v339 = 2048;
                  *&v339[2] = v117;
                  v340 = 2048;
                  v341 = v118;
                  _os_log_impl(&dword_181A37000, v282, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http1_stream protocol %p, set protocol instance to %p instead of %p in parameters %p options %p", buf, 0x64u);
                  v4 = v312;
                }
              }

              if (nw_protocol_copy_http1_definition_onceToken != -1)
              {
                dispatch_once(&nw_protocol_copy_http1_definition_onceToken, &__block_literal_global_75986);
              }

              v119 = nw_protocol_copy_http1_definition_http1_definition;
              v120 = v118;
              _nw_protocol_options_set_instance(v120, v34);

              if (v119)
              {
                os_release(v119);
              }

              os_release(v120);
            }

            v121 = nw_parameters_copy_default_protocol_stack(*(v34 + 320));
            v329[0] = 0;
            v329[1] = v329;
            v329[2] = 0x2000000000;
            v330 = 0;
            *v333 = 0;
            *&v333[8] = v333;
            *&v333[16] = 0x3802000000;
            v334 = __Block_byref_object_copy__42960;
            v335 = __Block_byref_object_dispose__42961;
            object = 0;
            v337 |= 1u;
            *v322 = MEMORY[0x1E69E9820];
            v323 = 0x40000000;
            v324 = ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke;
            v325 = &unk_1E6A32A70;
            v326 = v329;
            v327 = v333;
            v328 = v34;
            nw_protocol_stack_iterate_application_protocols(v121, v322);
            v122 = *(v34 + 320);
            if (*(*&v333[8] + 40) || (has_transforms = nw_parameters_has_transforms(v122), v122 = *(v34 + 320), !has_transforms))
            {
              v124 = _nw_parameters_shallow_copy(v122, 1);
              v125 = *(v34 + 328);
              if ((v125 & 1) != 0 && *(v34 + 320))
              {
                v126 = v124;
                os_release(*(v34 + 320));
                v124 = v126;
                v125 = *(v34 + 328);
              }

              *(v34 + 320) = v124;
              *(v34 + 328) = v125 | 1;
            }

            else
            {
              *v314 = MEMORY[0x1E69E9820];
              v315 = 0x40000000;
              v316 = ___ZL33nw_http1_stream_add_input_handlerP15nw_http1_streamP17nw_protocol_http1P11nw_protocolb_block_invoke_2;
              v317 = &unk_1E6A32AC0;
              v318 = v333;
              v319 = v329;
              v320 = v34;
              v321 = v8;
              nw_parameters_enumerate_transformed_parameters(v122, v314);
              v124 = *(v34 + 320);
            }

            *v339 = 0;
            memset(buf, 0, sizeof(buf));
            v127 = nw_parameters_copy_protocol_options_legacy(v124, v34);
            v128 = v127;
            if (v127)
            {
              v129 = v127;
              _nw_protocol_options_get_log_id_str(v129, buf);
            }

            else if ((*(v34 + 158) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v130 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                v131 = *(v34 + 256);
                v132 = *(*(v34 + 248) + 372);
                if (v131)
                {
                  LODWORD(v131) = *(v131 + 860);
                }

                v133 = *(v34 + 424);
                *aBlock = 136448002;
                *&aBlock[4] = "nw_http1_stream_add_input_handler";
                *&aBlock[12] = 2082;
                *&aBlock[14] = v34 + 74;
                *&aBlock[22] = 2080;
                v343 = " ";
                *v344 = 1024;
                *&v344[2] = v132;
                *&v344[6] = 1024;
                *&v344[8] = v131;
                *&v344[12] = 1024;
                *&v344[14] = v133;
                *&v344[18] = 2048;
                *&v344[20] = v34;
                *&v344[28] = 2048;
                *&v344[30] = v117;
                _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Failed to access options for protocol %p, parameters %p", aBlock, 0x46u);
              }
            }

            if ((*(v8 + 158) & 1) == 0 && gLogDatapath == 1)
            {
              v265 = __nwlog_obj();
              if (os_log_type_enabled(v265, OS_LOG_TYPE_DEBUG))
              {
                v266 = *(v8 + 372);
                *aBlock = 136447234;
                *&aBlock[4] = "nw_http1_add_stream";
                *&aBlock[12] = 2082;
                *&aBlock[14] = v8 + 74;
                *&aBlock[22] = 2080;
                v343 = " ";
                *v344 = 1024;
                *&v344[2] = v266;
                *&v344[6] = 2048;
                *&v344[8] = v34;
                _os_log_impl(&dword_181A37000, v265, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream (%p)", aBlock, 0x30u);
              }
            }

            *(v34 + 280) = 0;
            v134 = *(v8 + 240);
            *(v34 + 288) = v134;
            *v134 = v34;
            *(v8 + 240) = v34 + 280;
            v135 = *(v8 + 344) + 1;
            *(v8 + 344) = v135;
            if (v135 == v135 << 31 >> 31)
            {
LABEL_274:
              v147 = *(v8 + 356) + 1;
              *(v8 + 356) = v147;
              if (v147 == v147 << 31 >> 31)
              {
                goto LABEL_292;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v148 = *(v8 + 356);
              *aBlock = 136446978;
              *&aBlock[4] = "nw_http1_add_stream";
              *&aBlock[12] = 2082;
              *&aBlock[14] = "http1->next_stream_log_num";
              *&aBlock[22] = 2048;
              v343 = 1;
              *v344 = 2048;
              *&v344[2] = v148;
              v149 = _os_log_send_and_compose_impl();
              type = OS_LOG_TYPE_ERROR;
              v331 = 0;
              if (__nwlog_fault(v149, &type, &v331))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v150 = gLogObj;
                  v151 = type;
                  if (os_log_type_enabled(gLogObj, type))
                  {
                    v152 = *(v8 + 356);
                    *aBlock = 136446978;
                    *&aBlock[4] = "nw_http1_add_stream";
                    *&aBlock[12] = 2082;
                    *&aBlock[14] = "http1->next_stream_log_num";
                    *&aBlock[22] = 2048;
                    v343 = 1;
                    *v344 = 2048;
                    *&v344[2] = v152;
                    v153 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_288:
                    _os_log_impl(&dword_181A37000, v150, v151, v153, aBlock, 0x2Au);
                  }
                }

                else if (v331 == 1)
                {
                  v154 = __nw_create_backtrace_string();
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v150 = gLogObj;
                  v151 = type;
                  v155 = os_log_type_enabled(gLogObj, type);
                  if (v154)
                  {
                    if (v155)
                    {
                      v156 = *(v8 + 356);
                      *aBlock = 136447234;
                      *&aBlock[4] = "nw_http1_add_stream";
                      *&aBlock[12] = 2082;
                      *&aBlock[14] = "http1->next_stream_log_num";
                      *&aBlock[22] = 2048;
                      v343 = 1;
                      *v344 = 2048;
                      *&v344[2] = v156;
                      *&v344[10] = 2082;
                      *&v344[12] = v154;
                      _os_log_impl(&dword_181A37000, v150, v151, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", aBlock, 0x34u);
                    }

                    free(v154);
                    goto LABEL_289;
                  }

                  if (v155)
                  {
                    v158 = *(v8 + 356);
                    *aBlock = 136446978;
                    *&aBlock[4] = "nw_http1_add_stream";
                    *&aBlock[12] = 2082;
                    *&aBlock[14] = "http1->next_stream_log_num";
                    *&aBlock[22] = 2048;
                    v343 = 1;
                    *v344 = 2048;
                    *&v344[2] = v158;
                    v153 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                    goto LABEL_288;
                  }
                }

                else
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v150 = gLogObj;
                  v151 = type;
                  if (os_log_type_enabled(gLogObj, type))
                  {
                    v157 = *(v8 + 356);
                    *aBlock = 136446978;
                    *&aBlock[4] = "nw_http1_add_stream";
                    *&aBlock[12] = 2082;
                    *&aBlock[14] = "http1->next_stream_log_num";
                    *&aBlock[22] = 2048;
                    v343 = 1;
                    *v344 = 2048;
                    *&v344[2] = v157;
                    v153 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                    goto LABEL_288;
                  }
                }
              }

LABEL_289:
              if (v149)
              {
                free(v149);
              }

              LODWORD(v147) = -1;
              *(v8 + 356) = -1;
              v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              v4 = v312;
LABEL_292:
              *(v34 + 424) = v147;
              if ((*(v34 + 158) & 1) == 0 && BYTE1(v9[82].isa) == 1)
              {
                v267 = __nwlog_obj();
                if (os_log_type_enabled(v267, OS_LOG_TYPE_DEBUG))
                {
                  v268 = *(v34 + 256);
                  v269 = *(*(v34 + 248) + 372);
                  if (v268)
                  {
                    LODWORD(v268) = *(v268 + 860);
                  }

                  v270 = *(v34 + 424);
                  v271 = *(v8 + 344);
                  *aBlock = 136448258;
                  *&aBlock[4] = "nw_http1_add_stream";
                  *&aBlock[12] = 2082;
                  *&aBlock[14] = v34 + 74;
                  *&aBlock[22] = 2080;
                  v343 = " ";
                  *v344 = 1024;
                  *&v344[2] = v269;
                  *&v344[6] = 1024;
                  *&v344[8] = v268;
                  *&v344[12] = 1024;
                  *&v344[14] = v270;
                  *&v344[18] = 1024;
                  *&v344[20] = v270;
                  *&v344[24] = 2048;
                  *&v344[26] = v34;
                  *&v344[34] = 1024;
                  *&v344[36] = v271;
                  _os_log_impl(&dword_181A37000, v267, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added stream %u (%p), now have %u streams", aBlock, 0x48u);
                }
              }

              nw_protocol_plugin_name_set_name(v34 + 64, v34, v117);
              if (buf[0])
              {
                if (*(v8 + 158))
                {
                  goto LABEL_302;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v159 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_302;
                }

                v160 = *(v8 + 372);
                v161 = *(v8 + 344);
                *aBlock = 136447746;
                *&aBlock[4] = "nw_http1_stream_add_input_handler";
                *&aBlock[12] = 2082;
                *&aBlock[14] = v8 + 74;
                *&aBlock[22] = 2080;
                v343 = " ";
                *v344 = 1024;
                *&v344[2] = v160;
                *&v344[6] = 2048;
                *&v344[8] = v4;
                *&v344[16] = 2082;
                *&v344[18] = buf;
                *&v344[26] = 1024;
                *&v344[28] = v161;
                v162 = "%{public}s %{public}s%s<i%u> added input handler %p from %{public}s, now have %u input handlers";
                v163 = v159;
                v164 = 64;
              }

              else
              {
                if (*(v8 + 158))
                {
                  goto LABEL_302;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v165 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_302;
                }

                v166 = *(v8 + 372);
                v167 = *(v8 + 344);
                *aBlock = 136447490;
                *&aBlock[4] = "nw_http1_stream_add_input_handler";
                *&aBlock[12] = 2082;
                *&aBlock[14] = v8 + 74;
                *&aBlock[22] = 2080;
                v343 = " ";
                *v344 = 1024;
                *&v344[2] = v166;
                *&v344[6] = 2048;
                *&v344[8] = v4;
                *&v344[16] = 1024;
                *&v344[18] = v167;
                v162 = "%{public}s %{public}s%s<i%u> added input handler %p, now have %u input handlers";
                v163 = v165;
                v164 = 54;
              }

              _os_log_impl(&dword_181A37000, v163, OS_LOG_TYPE_DEFAULT, v162, aBlock, v164);
LABEL_302:
              if (v128)
              {
                os_release(v128);
              }

              _Block_object_dispose(v333, 8);
              if ((v337 & 1) != 0 && object)
              {
                os_release(object);
              }

              _Block_object_dispose(v329, 8);
              if (v121)
              {
                os_release(v121);
              }

              goto LABEL_309;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v136 = *(v8 + 344);
            *aBlock = 136446978;
            *&aBlock[4] = "nw_http1_add_stream";
            *&aBlock[12] = 2082;
            *&aBlock[14] = "http1->streams_count";
            *&aBlock[22] = 2048;
            v343 = 1;
            *v344 = 2048;
            *&v344[2] = v136;
            v137 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v331 = 0;
            if (__nwlog_fault(v137, &type, &v331))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v138 = gLogObj;
                v139 = type;
                if (os_log_type_enabled(gLogObj, type))
                {
                  v140 = *(v8 + 344);
                  *aBlock = 136446978;
                  *&aBlock[4] = "nw_http1_add_stream";
                  *&aBlock[12] = 2082;
                  *&aBlock[14] = "http1->streams_count";
                  *&aBlock[22] = 2048;
                  v343 = 1;
                  *v344 = 2048;
                  *&v344[2] = v140;
                  v141 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_270:
                  _os_log_impl(&dword_181A37000, v138, v139, v141, aBlock, 0x2Au);
                }
              }

              else if (v331 == 1)
              {
                v142 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v138 = gLogObj;
                v139 = type;
                v143 = os_log_type_enabled(gLogObj, type);
                if (v142)
                {
                  if (v143)
                  {
                    v144 = *(v8 + 344);
                    *aBlock = 136447234;
                    *&aBlock[4] = "nw_http1_add_stream";
                    *&aBlock[12] = 2082;
                    *&aBlock[14] = "http1->streams_count";
                    *&aBlock[22] = 2048;
                    v343 = 1;
                    *v344 = 2048;
                    *&v344[2] = v144;
                    *&v344[10] = 2082;
                    *&v344[12] = v142;
                    _os_log_impl(&dword_181A37000, v138, v139, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", aBlock, 0x34u);
                  }

                  free(v142);
                  goto LABEL_271;
                }

                if (v143)
                {
                  v146 = *(v8 + 344);
                  *aBlock = 136446978;
                  *&aBlock[4] = "nw_http1_add_stream";
                  *&aBlock[12] = 2082;
                  *&aBlock[14] = "http1->streams_count";
                  *&aBlock[22] = 2048;
                  v343 = 1;
                  *v344 = 2048;
                  *&v344[2] = v146;
                  v141 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_270;
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v138 = gLogObj;
                v139 = type;
                if (os_log_type_enabled(gLogObj, type))
                {
                  v145 = *(v8 + 344);
                  *aBlock = 136446978;
                  *&aBlock[4] = "nw_http1_add_stream";
                  *&aBlock[12] = 2082;
                  *&aBlock[14] = "http1->streams_count";
                  *&aBlock[22] = 2048;
                  v343 = 1;
                  *v344 = 2048;
                  *&v344[2] = v145;
                  v141 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_270;
                }
              }
            }

LABEL_271:
            if (v137)
            {
              free(v137);
            }

            *(v8 + 344) = -1;
            v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
            v4 = v312;
            goto LABEL_274;
          }

          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_add_input_handler";
          v261 = _os_log_send_and_compose_impl();
          aBlock[0] = 16;
          v333[0] = 0;
          if (__nwlog_fault(v261, aBlock, v333))
          {
            if (aBlock[0] == 17)
            {
              v262 = __nwlog_obj();
              v263 = aBlock[0];
              if (!os_log_type_enabled(v262, aBlock[0]))
              {
                goto LABEL_526;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_add_input_handler";
              v264 = "%{public}s called with null http1_stream->parameters";
              goto LABEL_525;
            }

            if (v333[0] != 1)
            {
              v262 = __nwlog_obj();
              v263 = aBlock[0];
              if (!os_log_type_enabled(v262, aBlock[0]))
              {
                goto LABEL_526;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_add_input_handler";
              v264 = "%{public}s called with null http1_stream->parameters, backtrace limit exceeded";
              goto LABEL_525;
            }

            v286 = __nw_create_backtrace_string();
            v262 = __nwlog_obj();
            v263 = aBlock[0];
            v287 = os_log_type_enabled(v262, aBlock[0]);
            if (v286)
            {
              if (v287)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http1_stream_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v286;
                _os_log_impl(&dword_181A37000, v262, v263, "%{public}s called with null http1_stream->parameters, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v286);
              goto LABEL_526;
            }

            if (v287)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_add_input_handler";
              v264 = "%{public}s called with null http1_stream->parameters, no backtrace";
LABEL_525:
              _os_log_impl(&dword_181A37000, v262, v263, v264, buf, 0xCu);
            }
          }

LABEL_526:
          if (v261)
          {
            free(v261);
          }

LABEL_309:
          v169 = 0;
          v170 = *(v8 + 224);
          if (!v170)
          {
            return 1;
          }

LABEL_310:
          if ((*(v170 + 158) & 1) == 0 && BYTE1(v9[82].isa) == 1)
          {
            v274 = __nwlog_obj();
            if (os_log_type_enabled(v274, OS_LOG_TYPE_DEBUG))
            {
              v275 = *(v170 + 488);
              v276 = *(*(v170 + 480) + 372);
              v277 = *(v170 + 860);
              if (v275)
              {
                LODWORD(v275) = *(v275 + 424);
              }

              *buf = 136447746;
              *&buf[4] = "nw_http1_remove_idle_connection";
              *&buf[12] = 2082;
              *&buf[14] = v170 + 74;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v276;
              *&buf[38] = 1024;
              *&buf[40] = v277;
              *&buf[44] = 1024;
              *&buf[46] = v275;
              *&buf[50] = 2048;
              *&buf[52] = v170;
              _os_log_impl(&dword_181A37000, v274, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for connection %p", buf, 0x3Cu);
            }
          }

          if ((*(v170 + 874) & 8) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            *buf = 136446466;
            *&buf[4] = "nw_http1_remove_idle_connection";
            *&buf[12] = 2048;
            *&buf[14] = v170;
            v171 = _os_log_send_and_compose_impl();
            aBlock[0] = 16;
            v314[0] = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v171, aBlock, v314))
            {
              if (aBlock[0] == 17)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v172 = gLogObj;
                v173 = aBlock[0];
                if (os_log_type_enabled(gLogObj, aBlock[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v170;
                  v174 = "%{public}s connection %p not in idle list, cannot remove";
LABEL_338:
                  _os_log_impl(&dword_181A37000, v172, v173, v174, buf, 0x16u);
                }
              }

              else if (v314[0] == OS_LOG_TYPE_INFO)
              {
                v185 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v172 = gLogObj;
                v173 = aBlock[0];
                v186 = os_log_type_enabled(gLogObj, aBlock[0]);
                if (v185)
                {
                  if (v186)
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_http1_remove_idle_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v170;
                    *&buf[22] = 2082;
                    *&buf[24] = v185;
                    _os_log_impl(&dword_181A37000, v172, v173, "%{public}s connection %p not in idle list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
                  }

                  free(v185);
                  goto LABEL_339;
                }

                if (v186)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v170;
                  v174 = "%{public}s connection %p not in idle list, cannot remove, no backtrace";
                  goto LABEL_338;
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v172 = gLogObj;
                v173 = aBlock[0];
                if (os_log_type_enabled(gLogObj, aBlock[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v170;
                  v174 = "%{public}s connection %p not in idle list, cannot remove, backtrace limit exceeded";
                  goto LABEL_338;
                }
              }
            }

LABEL_339:
            if (v171)
            {
              free(v171);
            }

            v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
            goto LABEL_356;
          }

          v175 = *(v170 + 592);
          v176 = *(v170 + 600);
          v177 = (v8 + 216);
          if (v175)
          {
            v177 = (v175 + 600);
          }

          *v177 = v176;
          *v176 = v175;
          *(v170 + 592) = 0u;
          v178 = *(v8 + 340);
          *(v8 + 340) = v178 - 1;
          if (v178)
          {
LABEL_350:
            *(v170 + 874) &= ~8u;
            if ((*(v170 + 158) & 1) == 0 && BYTE1(v9[82].isa) == 1)
            {
              v288 = __nwlog_obj();
              if (os_log_type_enabled(v288, OS_LOG_TYPE_DEBUG))
              {
                v289 = *(v170 + 488);
                v290 = *(*(v170 + 480) + 372);
                v291 = *(v170 + 860);
                if (v289)
                {
                  LODWORD(v289) = *(v289 + 424);
                }

                v292 = *(v8 + 340);
                *buf = 136448002;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = v170 + 74;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *&buf[34] = v290;
                *&buf[38] = 1024;
                *&buf[40] = v291;
                *&buf[44] = 1024;
                *&buf[46] = v289;
                *&buf[50] = 2048;
                *&buf[52] = v170;
                *&buf[60] = 1024;
                *&buf[62] = v292;
                _os_log_impl(&dword_181A37000, v288, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed idle connection %p, now have %u idle connections", buf, 0x42u);
              }
            }

            if (*(v170 + 784))
            {
              if ((*(v170 + 158) & 1) == 0 && BYTE1(v9[82].isa) == 1)
              {
                v296 = __nwlog_obj();
                if (os_log_type_enabled(v296, OS_LOG_TYPE_DEBUG))
                {
                  v297 = *(v170 + 488);
                  v298 = *(*(v170 + 480) + 372);
                  v299 = *(v170 + 860);
                  if (v297)
                  {
                    LODWORD(v297) = *(v297 + 424);
                  }

                  *buf = 136447746;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2082;
                  *&buf[14] = v170 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v298;
                  *&buf[38] = 1024;
                  *&buf[40] = v299;
                  *&buf[44] = 1024;
                  *&buf[46] = v297;
                  *&buf[50] = 2048;
                  *&buf[52] = v170;
                  _os_log_impl(&dword_181A37000, v296, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> deactivating destroy timer for connection %p", buf, 0x3Cu);
                }
              }

              nw_queue_cancel_source(*(v170 + 784), v168);
              *(v170 + 784) = 0;
            }

LABEL_356:
            if (v169)
            {
              __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              v193 = _os_log_send_and_compose_impl();
              aBlock[0] = 16;
              v314[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v193, aBlock, v314))
              {
                if (aBlock[0] == 17)
                {
                  v272 = __nwlog_obj();
                  v273 = aBlock[0];
                  if (os_log_type_enabled(v272, aBlock[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v197 = "%{public}s called with null http1_stream";
LABEL_536:
                    v225 = v272;
                    v226 = v273;
                    v227 = 12;
                    goto LABEL_397;
                  }
                }

                else if (v314[0] == OS_LOG_TYPE_INFO)
                {
                  v293 = __nw_create_backtrace_string();
                  v272 = __nwlog_obj();
                  v273 = aBlock[0];
                  v294 = os_log_type_enabled(v272, aBlock[0]);
                  if (v293)
                  {
                    if (v294)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2082;
                      *&buf[14] = v293;
                      _os_log_impl(&dword_181A37000, v272, v273, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v293);
                  }

                  else if (v294)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v197 = "%{public}s called with null http1_stream, no backtrace";
                    goto LABEL_536;
                  }
                }

                else
                {
                  v272 = __nwlog_obj();
                  v273 = aBlock[0];
                  if (os_log_type_enabled(v272, aBlock[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v197 = "%{public}s called with null http1_stream, backtrace limit exceeded";
                    goto LABEL_536;
                  }
                }
              }
            }

            else
            {
              if (*(v34 + 248))
              {
                if (*(v170 + 488))
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v192 = *(v170 + 488);
                  *buf = 136446722;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v170;
                  *&buf[22] = 2048;
                  *&buf[24] = v192;
                  v193 = _os_log_send_and_compose_impl();
                  aBlock[0] = 16;
                  v314[0] = OS_LOG_TYPE_DEFAULT;
                  if (!__nwlog_fault(v193, aBlock, v314))
                  {
                    goto LABEL_398;
                  }

                  if (aBlock[0] == 17)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v194 = gLogObj;
                    v195 = aBlock[0];
                    if (!os_log_type_enabled(gLogObj, aBlock[0]))
                    {
                      goto LABEL_398;
                    }

                    v196 = *(v170 + 488);
                    *buf = 136446722;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v170;
                    *&buf[22] = 2048;
                    *&buf[24] = v196;
                    v197 = "%{public}s Connection %p already has a stream (%p)";
LABEL_396:
                    v225 = v194;
                    v226 = v195;
                    v227 = 32;
LABEL_397:
                    _os_log_impl(&dword_181A37000, v225, v226, v197, buf, v227);
                    goto LABEL_398;
                  }

                  if (v314[0] != OS_LOG_TYPE_INFO)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v194 = gLogObj;
                    v195 = aBlock[0];
                    if (!os_log_type_enabled(gLogObj, aBlock[0]))
                    {
                      goto LABEL_398;
                    }

                    v208 = *(v170 + 488);
                    *buf = 136446722;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v170;
                    *&buf[22] = 2048;
                    *&buf[24] = v208;
                    v197 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                    goto LABEL_396;
                  }

                  v201 = __nw_create_backtrace_string();
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v194 = gLogObj;
                  v195 = aBlock[0];
                  v202 = os_log_type_enabled(gLogObj, aBlock[0]);
                  if (!v201)
                  {
                    if (!v202)
                    {
                      goto LABEL_398;
                    }

                    v224 = *(v170 + 488);
                    *buf = 136446722;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v170;
                    *&buf[22] = 2048;
                    *&buf[24] = v224;
                    v197 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                    goto LABEL_396;
                  }

                  if (v202)
                  {
                    v203 = *(v170 + 488);
                    *buf = 136446978;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    *&buf[12] = 2048;
                    *&buf[14] = v170;
                    *&buf[22] = 2048;
                    *&buf[24] = v203;
                    *&buf[32] = 2082;
                    *&buf[34] = v201;
                    v204 = "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s";
                    v205 = v194;
                    v206 = v195;
                    v207 = 42;
LABEL_370:
                    _os_log_impl(&dword_181A37000, v205, v206, v204, buf, v207);
                    goto LABEL_371;
                  }

                  goto LABEL_371;
                }

                *(v34 + 256) = v170;
                *(v170 + 488) = v34;
                v198 = *(v34 + 320);
                if (v198)
                {
                  v199 = os_retain(v198);
                  v200 = *(v170 + 744);
                  if ((v200 & 1) == 0)
                  {
                    goto LABEL_378;
                  }
                }

                else
                {
                  v199 = 0;
                  v200 = *(v170 + 744);
                  if ((v200 & 1) == 0)
                  {
                    goto LABEL_378;
                  }
                }

                v209 = *(v170 + 736);
                if (v209)
                {
                  os_release(v209);
                  v200 = *(v170 + 744);
                }

LABEL_378:
                *(v170 + 736) = v199;
                *(v170 + 744) = v200 | 1;
                if ((*(*(v34 + 248) + 376) & 2) == 0)
                {
                  goto LABEL_434;
                }

                v210 = nw_parameters_copy_default_protocol_stack(*(v34 + 320));
                *v314 = 0;
                v315 = v314;
                v316 = 0x2000000000;
                LOBYTE(v317) = 0;
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3802000000;
                *&buf[24] = __Block_byref_object_copy__42960;
                *&buf[32] = __Block_byref_object_dispose__42961;
                *&buf[40] = 0;
                buf[48] |= 1u;
                *aBlock = MEMORY[0x1E69E9820];
                *&aBlock[8] = 0x40000000;
                *&aBlock[16] = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
                v343 = &unk_1E6A32930;
                *v344 = v314;
                *&v344[8] = buf;
                *&v344[16] = v34;
                nw_protocol_stack_iterate_application_protocols(v210, aBlock);
                if (*(*&buf[8] + 40))
                {
                  v211 = v170;
                  while (1)
                  {
                    v211 = *(v211 + 32);
                    if (!v211)
                    {
                      break;
                    }

                    if (nw_protocol_is_tls_over_stream(v211))
                    {
                      v212 = *(*&buf[8] + 40);
                      v213 = nw_protocol_boringssl_copy_definition();
                      nw_parameters_set_protocol_instance(v212, v214, v211);
                      if (v213)
                      {
                        os_release(v213);
                      }

                      v215 = 1;
                      goto LABEL_428;
                    }
                  }

                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  *v333 = 136446210;
                  *&v333[4] = "nw_http1_stream_associate_with_connection";
                  v220 = _os_log_send_and_compose_impl();
                  v322[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v329[0]) = 0;
                  if (!__nwlog_fault(v220, v322, v329))
                  {
                    goto LABEL_424;
                  }

                  if (v322[0] == OS_LOG_TYPE_FAULT)
                  {
                    v221 = __nwlog_obj();
                    v222 = v322[0];
                    if (os_log_type_enabled(v221, v322[0]))
                    {
                      *v333 = 136446210;
                      *&v333[4] = "nw_http1_stream_associate_with_connection";
                      v223 = "%{public}s tls should have been in the stack but could not find it";
LABEL_423:
                      _os_log_impl(&dword_181A37000, v221, v222, v223, v333, 0xCu);
                    }
                  }

                  else if (LOBYTE(v329[0]) == 1)
                  {
                    v230 = __nw_create_backtrace_string();
                    v221 = __nwlog_obj();
                    v222 = v322[0];
                    v231 = os_log_type_enabled(v221, v322[0]);
                    if (v230)
                    {
                      if (v231)
                      {
                        *v333 = 136446466;
                        *&v333[4] = "nw_http1_stream_associate_with_connection";
                        *&v333[12] = 2082;
                        *&v333[14] = v230;
                        _os_log_impl(&dword_181A37000, v221, v222, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v333, 0x16u);
                      }

                      free(v230);
                      goto LABEL_424;
                    }

                    if (v231)
                    {
                      *v333 = 136446210;
                      *&v333[4] = "nw_http1_stream_associate_with_connection";
                      v223 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                      goto LABEL_423;
                    }
                  }

                  else
                  {
                    v221 = __nwlog_obj();
                    v222 = v322[0];
                    if (os_log_type_enabled(v221, v322[0]))
                    {
                      *v333 = 136446210;
                      *&v333[4] = "nw_http1_stream_associate_with_connection";
                      v223 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                      goto LABEL_423;
                    }
                  }

LABEL_424:
                  if (v220)
                  {
                    free(v220);
                  }

                  v215 = 0;
LABEL_427:
                  v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
LABEL_428:
                  _Block_object_dispose(buf, 8);
                  if ((buf[48] & 1) != 0 && *&buf[40])
                  {
                    os_release(*&buf[40]);
                  }

                  _Block_object_dispose(v314, 8);
                  if (v210)
                  {
                    os_release(v210);
                  }

                  if (!v215)
                  {
                    goto LABEL_462;
                  }

LABEL_434:
                  v232 = *(v34 + 32);
                  if (!v232 || v232 == *(v170 + 32))
                  {
LABEL_452:
                    nw_protocol_set_output_handler(v34, *(v170 + 32));
                    nw_protocol_set_input_handler(v170, *(v34 + 48));
                    *v34 = *v170;
                    v249 = *(v34 + 96);
                    v250 = *(v34 + 112);
                    v251 = *(v34 + 128);
                    *(v170 + 144) = *(v34 + 144);
                    v252 = *(v34 + 80);
                    *(v170 + 64) = *(v34 + 64);
                    *(v170 + 80) = v252;
                    *(v170 + 112) = v250;
                    *(v170 + 128) = v251;
                    *(v170 + 96) = v249;
                    *(v170 + 872) &= 0xFFD7u;
                    *(v170 + 864) = 1;
                    if ((*(v170 + 158) & 1) == 0)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v253 = gLogObj;
                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                      {
                        v254 = *(v170 + 488);
                        v255 = *(*(v170 + 480) + 372);
                        v256 = *(v170 + 860);
                        if (v254)
                        {
                          LODWORD(v254) = *(v254 + 424);
                        }

                        *buf = 136447490;
                        *&buf[4] = "nw_http1_update_connection_input_state";
                        *&buf[12] = 2082;
                        *&buf[14] = v170 + 74;
                        *&buf[22] = 2080;
                        *&buf[24] = " ";
                        *&buf[32] = 1024;
                        *&buf[34] = v255;
                        *&buf[38] = 1024;
                        *&buf[40] = v256;
                        *&buf[44] = 1024;
                        *&buf[46] = v254;
                        _os_log_impl(&dword_181A37000, v253, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                      }
                    }

                    if ((*(v34 + 158) & 1) == 0)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v257 = gLogObj;
                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                      {
                        v258 = *(v34 + 256);
                        v259 = *(*(v34 + 248) + 372);
                        if (v258)
                        {
                          LODWORD(v258) = *(v258 + 860);
                        }

                        v260 = *(v34 + 424);
                        *buf = 136448002;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        *&buf[12] = 2082;
                        *&buf[14] = v34 + 74;
                        *&buf[22] = 2080;
                        *&buf[24] = " ";
                        *&buf[32] = 1024;
                        *&buf[34] = v259;
                        *&buf[38] = 1024;
                        *&buf[40] = v258;
                        *&buf[44] = 1024;
                        *&buf[46] = v260;
                        *&buf[50] = 2048;
                        *&buf[52] = v34;
                        *&buf[60] = 2048;
                        *&buf[62] = v170;
                        _os_log_impl(&dword_181A37000, v257, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                      }
                    }

                    goto LABEL_462;
                  }

                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v233 = *(v34 + 32);
                  v234 = *(v170 + 32);
                  *buf = 136446978;
                  *&buf[4] = "nw_http1_stream_associate_with_connection";
                  *&buf[12] = 2048;
                  *&buf[14] = v233;
                  *&buf[22] = 2048;
                  *&buf[24] = v34;
                  *&buf[32] = 2048;
                  *&buf[34] = v234;
                  v235 = _os_log_send_and_compose_impl();
                  v314[0] = OS_LOG_TYPE_ERROR;
                  v333[0] = 0;
                  if (__nwlog_fault(v235, v314, v333))
                  {
                    if (v314[0] == OS_LOG_TYPE_FAULT)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v236 = gLogObj;
                      v237 = v314[0];
                      if (!os_log_type_enabled(gLogObj, v314[0]))
                      {
                        goto LABEL_450;
                      }

                      v238 = *(v34 + 32);
                      v239 = *(v170 + 32);
                      *buf = 136446978;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v238;
                      *&buf[22] = 2048;
                      *&buf[24] = v34;
                      *&buf[32] = 2048;
                      *&buf[34] = v239;
                      v240 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
                      goto LABEL_449;
                    }

                    if (v333[0] != 1)
                    {
                      v236 = __nwlog_obj();
                      v237 = v314[0];
                      if (!os_log_type_enabled(v236, v314[0]))
                      {
                        goto LABEL_450;
                      }

                      v245 = *(v34 + 32);
                      v246 = *(v170 + 32);
                      *buf = 136446978;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v245;
                      *&buf[22] = 2048;
                      *&buf[24] = v34;
                      *&buf[32] = 2048;
                      *&buf[34] = v246;
                      v240 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                      goto LABEL_449;
                    }

                    v241 = __nw_create_backtrace_string();
                    v236 = __nwlog_obj();
                    v237 = v314[0];
                    v242 = os_log_type_enabled(v236, v314[0]);
                    if (v241)
                    {
                      if (v242)
                      {
                        v243 = *(v34 + 32);
                        v244 = *(v170 + 32);
                        *buf = 136447234;
                        *&buf[4] = "nw_http1_stream_associate_with_connection";
                        *&buf[12] = 2048;
                        *&buf[14] = v243;
                        *&buf[22] = 2048;
                        *&buf[24] = v34;
                        *&buf[32] = 2048;
                        *&buf[34] = v244;
                        *&buf[42] = 2082;
                        *&buf[44] = v241;
                        _os_log_impl(&dword_181A37000, v236, v237, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                      }

                      free(v241);
                      goto LABEL_450;
                    }

                    if (v242)
                    {
                      v247 = *(v34 + 32);
                      v248 = *(v170 + 32);
                      *buf = 136446978;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2048;
                      *&buf[14] = v247;
                      *&buf[22] = 2048;
                      *&buf[24] = v34;
                      *&buf[32] = 2048;
                      *&buf[34] = v248;
                      v240 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_449:
                      _os_log_impl(&dword_181A37000, v236, v237, v240, buf, 0x2Au);
                    }
                  }

LABEL_450:
                  if (v235)
                  {
                    free(v235);
                  }

                  goto LABEL_452;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                *v333 = 136446210;
                *&v333[4] = "nw_http1_stream_associate_with_connection";
                v216 = _os_log_send_and_compose_impl();
                v322[0] = OS_LOG_TYPE_ERROR;
                LOBYTE(v329[0]) = 0;
                if (__nwlog_fault(v216, v322, v329))
                {
                  if (v322[0] == OS_LOG_TYPE_FAULT)
                  {
                    v217 = __nwlog_obj();
                    v218 = v322[0];
                    if (os_log_type_enabled(v217, v322[0]))
                    {
                      *v333 = 136446210;
                      *&v333[4] = "nw_http1_stream_associate_with_connection";
                      v219 = "%{public}s unable to find tls options";
LABEL_417:
                      _os_log_impl(&dword_181A37000, v217, v218, v219, v333, 0xCu);
                    }
                  }

                  else if (LOBYTE(v329[0]) == 1)
                  {
                    v228 = __nw_create_backtrace_string();
                    v217 = __nwlog_obj();
                    v218 = v322[0];
                    v229 = os_log_type_enabled(v217, v322[0]);
                    if (v228)
                    {
                      if (v229)
                      {
                        *v333 = 136446466;
                        *&v333[4] = "nw_http1_stream_associate_with_connection";
                        *&v333[12] = 2082;
                        *&v333[14] = v228;
                        _os_log_impl(&dword_181A37000, v217, v218, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v333, 0x16u);
                      }

                      free(v228);
                      goto LABEL_418;
                    }

                    if (v229)
                    {
                      *v333 = 136446210;
                      *&v333[4] = "nw_http1_stream_associate_with_connection";
                      v219 = "%{public}s unable to find tls options, no backtrace";
                      goto LABEL_417;
                    }
                  }

                  else
                  {
                    v217 = __nwlog_obj();
                    v218 = v322[0];
                    if (os_log_type_enabled(v217, v322[0]))
                    {
                      *v333 = 136446210;
                      *&v333[4] = "nw_http1_stream_associate_with_connection";
                      v219 = "%{public}s unable to find tls options, backtrace limit exceeded";
                      goto LABEL_417;
                    }
                  }
                }

LABEL_418:
                if (v216)
                {
                  free(v216);
                }

                v215 = 1;
                goto LABEL_427;
              }

              __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http1_stream_associate_with_connection";
              v193 = _os_log_send_and_compose_impl();
              aBlock[0] = 16;
              v314[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v193, aBlock, v314))
              {
                if (aBlock[0] == 17)
                {
                  v272 = __nwlog_obj();
                  v273 = aBlock[0];
                  if (os_log_type_enabled(v272, aBlock[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v197 = "%{public}s called with null http1_stream->protocol_http1";
                    goto LABEL_536;
                  }
                }

                else if (v314[0] == OS_LOG_TYPE_INFO)
                {
                  v201 = __nw_create_backtrace_string();
                  v272 = __nwlog_obj();
                  v273 = aBlock[0];
                  v295 = os_log_type_enabled(v272, aBlock[0]);
                  if (v201)
                  {
                    if (v295)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_http1_stream_associate_with_connection";
                      *&buf[12] = 2082;
                      *&buf[14] = v201;
                      v204 = "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s";
                      v205 = v272;
                      v206 = v273;
                      v207 = 22;
                      goto LABEL_370;
                    }

LABEL_371:
                    free(v201);
                    if (!v193)
                    {
                      goto LABEL_462;
                    }

                    goto LABEL_399;
                  }

                  if (v295)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v197 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                    goto LABEL_536;
                  }
                }

                else
                {
                  v272 = __nwlog_obj();
                  v273 = aBlock[0];
                  if (os_log_type_enabled(v272, aBlock[0]))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_http1_stream_associate_with_connection";
                    v197 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                    goto LABEL_536;
                  }
                }
              }
            }

LABEL_398:
            if (!v193)
            {
LABEL_462:
              *(v8 + 224) = 0;
              *(v34 + 428) |= 8u;
              if ((*(v34 + 158) & 1) == 0 && BYTE1(v9[82].isa) == 1)
              {
                v278 = __nwlog_obj();
                if (os_log_type_enabled(v278, OS_LOG_TYPE_DEBUG))
                {
                  v279 = *(v34 + 256);
                  v280 = *(*(v34 + 248) + 372);
                  if (v279)
                  {
                    LODWORD(v279) = *(v279 + 860);
                  }

                  v281 = *(v34 + 424);
                  *buf = 136447746;
                  *&buf[4] = "nw_protocol_http1_add_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v34 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v280;
                  *&buf[38] = 1024;
                  *&buf[40] = v279;
                  *&buf[44] = 1024;
                  *&buf[46] = v281;
                  *&buf[50] = 2048;
                  *&buf[52] = v170;
                  _os_log_impl(&dword_181A37000, v278, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> attached to connection %p which triggered new flow, pending connected", buf, 0x3Cu);
                }
              }

              return 1;
            }

LABEL_399:
            free(v193);
            goto LABEL_462;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v179 = *(v8 + 340);
          *buf = 136446978;
          *&buf[4] = "nw_http1_remove_idle_connection";
          *&buf[12] = 2082;
          *&buf[14] = "http1->idle_connections_count";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v179;
          v180 = _os_log_send_and_compose_impl();
          aBlock[0] = 16;
          v314[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v180, aBlock, v314))
          {
            if (aBlock[0] == 17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v181 = gLogObj;
              v182 = aBlock[0];
              if (os_log_type_enabled(gLogObj, aBlock[0]))
              {
                v183 = *(v8 + 340);
                *buf = 136446978;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = "http1->idle_connections_count";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v183;
                v184 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_346:
                _os_log_impl(&dword_181A37000, v181, v182, v184, buf, 0x2Au);
              }
            }

            else if (v314[0] == OS_LOG_TYPE_INFO)
            {
              v187 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v181 = gLogObj;
              v182 = aBlock[0];
              v188 = os_log_type_enabled(gLogObj, aBlock[0]);
              if (v187)
              {
                if (v188)
                {
                  v189 = *(v8 + 340);
                  *buf = 136447234;
                  *&buf[4] = "nw_http1_remove_idle_connection";
                  *&buf[12] = 2082;
                  *&buf[14] = "http1->idle_connections_count";
                  *&buf[22] = 2048;
                  *&buf[24] = 1;
                  *&buf[32] = 2048;
                  *&buf[34] = v189;
                  *&buf[42] = 2082;
                  *&buf[44] = v187;
                  _os_log_impl(&dword_181A37000, v181, v182, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v187);
                goto LABEL_347;
              }

              if (v188)
              {
                v191 = *(v8 + 340);
                *buf = 136446978;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = "http1->idle_connections_count";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v191;
                v184 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                goto LABEL_346;
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v181 = gLogObj;
              v182 = aBlock[0];
              if (os_log_type_enabled(gLogObj, aBlock[0]))
              {
                v190 = *(v8 + 340);
                *buf = 136446978;
                *&buf[4] = "nw_http1_remove_idle_connection";
                *&buf[12] = 2082;
                *&buf[14] = "http1->idle_connections_count";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v190;
                v184 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                goto LABEL_346;
              }
            }
          }

LABEL_347:
          if (v180)
          {
            free(v180);
          }

          *(v8 + 340) = 0;
          v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          goto LABEL_350;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_replace_protocol_instance";
        v87 = _os_log_send_and_compose_impl();
        aBlock[0] = 16;
        v314[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v87, aBlock, v314))
        {
          goto LABEL_540;
        }

        if (aBlock[0] == 17)
        {
          v88 = __nwlog_obj();
          v89 = aBlock[0];
          if (!os_log_type_enabled(v88, aBlock[0]))
          {
            goto LABEL_540;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_replace_protocol_instance";
          v90 = "%{public}s called with null http1_stream";
        }

        else if (v314[0] == OS_LOG_TYPE_INFO)
        {
          v100 = __nw_create_backtrace_string();
          v88 = __nwlog_obj();
          v89 = aBlock[0];
          v101 = os_log_type_enabled(v88, aBlock[0]);
          if (v100)
          {
            if (v101)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http1_stream_replace_protocol_instance";
              *&buf[12] = 2082;
              *&buf[14] = v100;
              _os_log_impl(&dword_181A37000, v88, v89, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v100);
            goto LABEL_540;
          }

          if (!v101)
          {
LABEL_540:
            if (v87)
            {
              free(v87);
            }

            goto LABEL_542;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_replace_protocol_instance";
          v90 = "%{public}s called with null http1_stream, no backtrace";
        }

        else
        {
          v88 = __nwlog_obj();
          v89 = aBlock[0];
          if (!os_log_type_enabled(v88, aBlock[0]))
          {
            goto LABEL_540;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_stream_replace_protocol_instance";
          v90 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v88, v89, v90, buf, 0xCu);
        goto LABEL_540;
      }

LABEL_225:
      if (v34)
      {
        goto LABEL_226;
      }

LABEL_542:
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_add_input_handler";
      v300 = _os_log_send_and_compose_impl();
      aBlock[0] = 16;
      v333[0] = 0;
      if (!__nwlog_fault(v300, aBlock, v333))
      {
        goto LABEL_556;
      }

      if (aBlock[0] == 17)
      {
        v301 = __nwlog_obj();
        v302 = aBlock[0];
        if (!os_log_type_enabled(v301, aBlock[0]))
        {
          goto LABEL_556;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_add_input_handler";
        v303 = "%{public}s called with null http1_stream";
      }

      else if (v333[0] == 1)
      {
        v304 = __nw_create_backtrace_string();
        v301 = __nwlog_obj();
        v302 = aBlock[0];
        v305 = os_log_type_enabled(v301, aBlock[0]);
        if (v304)
        {
          if (v305)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_stream_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = v304;
            _os_log_impl(&dword_181A37000, v301, v302, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v304);
LABEL_556:
          if (v300)
          {
            free(v300);
          }

          v169 = 1;
          v170 = *(v8 + 224);
          if (!v170)
          {
            return 1;
          }

          goto LABEL_310;
        }

        if (!v305)
        {
          goto LABEL_556;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_add_input_handler";
        v303 = "%{public}s called with null http1_stream, no backtrace";
      }

      else
      {
        v301 = __nwlog_obj();
        v302 = aBlock[0];
        if (!os_log_type_enabled(v301, aBlock[0]))
        {
          goto LABEL_556;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_stream_add_input_handler";
        v303 = "%{public}s called with null http1_stream, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v301, v302, v303, buf, 0xCu);
      goto LABEL_556;
    }

LABEL_209:
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_handle_type_for_protocol";
    v108 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    v314[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v108, aBlock, v314))
    {
      goto LABEL_223;
    }

    if (aBlock[0] == 17)
    {
      v109 = __nwlog_obj();
      v110 = aBlock[0];
      if (!os_log_type_enabled(v109, aBlock[0]))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_handle_type_for_protocol";
      v111 = "%{public}s called with null handle";
    }

    else if (v314[0] == OS_LOG_TYPE_INFO)
    {
      v112 = __nw_create_backtrace_string();
      v109 = __nwlog_obj();
      v110 = aBlock[0];
      v113 = os_log_type_enabled(v109, aBlock[0]);
      if (v112)
      {
        if (v113)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_handle_type_for_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v112;
          _os_log_impl(&dword_181A37000, v109, v110, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v112);
        v4 = v312;
        goto LABEL_223;
      }

      if (!v113)
      {
LABEL_223:
        if (v108)
        {
          free(v108);
        }

        goto LABEL_225;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_handle_type_for_protocol";
      v111 = "%{public}s called with null handle, no backtrace";
    }

    else
    {
      v109 = __nwlog_obj();
      v110 = aBlock[0];
      if (!os_log_type_enabled(v109, aBlock[0]))
      {
        goto LABEL_223;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_handle_type_for_protocol";
      v111 = "%{public}s called with null handle, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v109, v110, v111, buf, 0xCu);
    goto LABEL_223;
  }

  if (!parameters)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_create";
    v68 = _os_log_send_and_compose_impl();
    aBlock[0] = 16;
    v314[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v68, aBlock, v314))
    {
      goto LABEL_206;
    }

    if (aBlock[0] == 17)
    {
      v69 = __nwlog_obj();
      v70 = aBlock[0];
      if (!os_log_type_enabled(v69, aBlock[0]))
      {
        goto LABEL_206;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_create";
      v71 = "%{public}s called with null parameters";
      goto LABEL_205;
    }

    if (v314[0] != OS_LOG_TYPE_INFO)
    {
      v69 = __nwlog_obj();
      v70 = aBlock[0];
      if (!os_log_type_enabled(v69, aBlock[0]))
      {
        goto LABEL_206;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_stream_create";
      v71 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_205;
    }

    v84 = __nw_create_backtrace_string();
    v69 = __nwlog_obj();
    v70 = aBlock[0];
    v91 = os_log_type_enabled(v69, aBlock[0]);
    if (v84)
    {
      if (v91)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_stream_create";
        *&buf[12] = 2082;
        *&buf[14] = v84;
        v86 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
        goto LABEL_142;
      }

      goto LABEL_143;
    }

    v4 = v312;
    if (!v91)
    {
      goto LABEL_206;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_create";
    v71 = "%{public}s called with null parameters, no backtrace";
    goto LABEL_205;
  }

  v33 = malloc_type_calloc(1uLL, 0x1B0uLL, 0x23DFB97CuLL);
  v34 = v33;
  if (v33)
  {
    v33[25] = 0u;
    v33[26] = 0u;
    v33[23] = 0u;
    v33[24] = 0u;
    v33[21] = 0u;
    v33[22] = 0u;
    v33[19] = 0u;
    v33[20] = 0u;
    v33[17] = 0u;
    v33[18] = 0u;
    v33[15] = 0u;
    v33[16] = 0u;
    v33[13] = 0u;
    v33[14] = 0u;
    v33[11] = 0u;
    v33[12] = 0u;
    v33[9] = 0u;
    v33[10] = 0u;
    v33[7] = 0u;
    v33[8] = 0u;
    v33[5] = 0u;
    v33[6] = 0u;
    v33[3] = 0u;
    v33[4] = 0u;
    v33[1] = 0u;
    v33[2] = 0u;
    *v33 = 0u;
    goto LABEL_50;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_http1_stream_create";
  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  *&buf[24] = 432;
  v35 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v35);
  if (!result)
  {
    free(v35);
    MEMORY[0x1A0] = 0u;
    MEMORY[0x190] = 0u;
    MEMORY[0x180] = 0u;
    MEMORY[0x170] = 0u;
    MEMORY[0x160] = 0u;
    MEMORY[0x150] = 0u;
    MEMORY[0x140] = 0u;
    MEMORY[0x130] = 0u;
    MEMORY[0x120] = 0u;
    MEMORY[0x110] = 0u;
    MEMORY[0x100] = 0u;
    MEMORY[0xF0] = 0u;
    MEMORY[0xE0] = 0u;
    MEMORY[0xD0] = 0u;
    MEMORY[0xC0] = 0u;
    MEMORY[0xB0] = 0u;
    MEMORY[0x90] = 0u;
    MEMORY[0x80] = 0u;
    MEMORY[0x70] = 0u;
    MEMORY[0x60] = 0u;
    MEMORY[0x50] = 0u;
    MEMORY[0x40] = 0u;
    MEMORY[0x30] = 0u;
    MEMORY[0x20] = 0u;
    MEMORY[0x10] = 0u;
    MEMORY[0xA0] = 0u;
    MEMORY[0] = 0u;
    MEMORY[0xA8] = 0;
    MEMORY[0xB0] = 0;
    MEMORY[0xB8] = 0;
    MEMORY[0xC8] = 0;
    MEMORY[0xD1] = 0;
    MEMORY[0x108] = 0;
    MEMORY[0x140] = 0;
    MEMORY[0x148] = 0;
    MEMORY[0x150] = 0;
    MEMORY[0x158] = 0;
    MEMORY[0x160] = 0;
    MEMORY[0x168] = 0;
    MEMORY[0x170] = 0;
    MEMORY[0x178] = 0;
    MEMORY[0x180] = 0;
    MEMORY[0x188] = 0;
    MEMORY[0x190] = 0;
    MEMORY[0x198] = 0;
    MEMORY[0x1A0] = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "nw_http1_stream_create";
    v37 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v37);
    if (!result)
    {
      free(v37);
      v9 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      v4 = v312;
LABEL_50:
      *(v34 + 16) = *(v8 + 16);
      if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
      {
        dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
      }

      *(v34 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
      *(v34 + 240) = 2;
      *(v34 + 224) = v34;
      *(v34 + 40) = v34 + 216;
      *(v34 + 248) = v8;
      nw_protocol_set_input_handler(v34, v4);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      *&buf[24] = v34;
      *aBlock = MEMORY[0x1E69E9820];
      *&aBlock[8] = 0x40000000;
      *&aBlock[16] = ___ZL22nw_http1_stream_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
      v343 = &unk_1E6A32A48;
      *v344 = buf;
      *(v34 + 312) = _Block_copy(aBlock);
      _Block_object_dispose(buf, 8);
      v38 = os_retain(v32);
      v39 = *(v34 + 344);
      if ((v39 & 1) != 0 && *(v34 + 336))
      {
        v40 = v38;
        os_release(*(v34 + 336));
        v38 = v40;
        v39 = *(v34 + 344);
      }

      *(v34 + 336) = v38;
      *(v34 + 344) = v39 | 1;
      v41 = os_retain(parameters);
      v42 = *(v34 + 328);
      if ((v42 & 1) != 0 && *(v34 + 320))
      {
        v43 = v41;
        os_release(*(v34 + 320));
        v41 = v43;
        v42 = *(v34 + 328);
      }

      *(v34 + 320) = v41;
      *(v34 + 328) = v42 | 1;
      if ((*(v34 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v74 = __nwlog_obj();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          v75 = *(v34 + 256);
          v76 = *(*(v34 + 248) + 372);
          if (v75)
          {
            LODWORD(v75) = *(v75 + 860);
          }

          v77 = *(v34 + 424);
          *buf = 136447746;
          *&buf[4] = "nw_http1_stream_create";
          *&buf[12] = 2082;
          *&buf[14] = v34 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v76;
          *&buf[38] = 1024;
          *&buf[40] = v75;
          *&buf[44] = 1024;
          *&buf[46] = v77;
          *&buf[50] = 2048;
          *&buf[52] = v34;
          _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
        }
      }

      v44 = _nw_parameters_copy_context(parameters);
      v45 = *(v34 + 272);
      if ((v45 & 1) != 0 && *(v34 + 264))
      {
        v46 = v44;
        os_release(*(v34 + 264));
        v44 = v46;
        v45 = *(v34 + 272);
      }

      *(v34 + 264) = v44;
      *(v34 + 272) = v45 | 1;
      v47 = _nw_http_parsed_fields_create();
      v48 = *(v34 + 408);
      if ((v48 & 1) != 0 && *(v34 + 400))
      {
        v49 = v47;
        os_release(*(v34 + 400));
        v47 = v49;
        v48 = *(v34 + 408);
      }

      *(v34 + 400) = v47;
      *(v34 + 408) = v48 | 1;
      *(v34 + 208) = *(v8 + 376) & 1;
      v50 = parameters;
      v51 = _nw_parameters_copy_protocol_options_with_level(v50, v8);

      if (!v51 || (singleton = nw_http_messaging_options_copy_transaction_metadata(v51)) == 0)
      {
        if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
        }

        singleton = _nw_protocol_metadata_create_singleton();
      }

      v53 = *(v34 + 360);
      if ((v53 & 1) != 0 && *(v34 + 352))
      {
        v54 = singleton;
        os_release(*(v34 + 352));
        singleton = v54;
        v53 = *(v34 + 360);
      }

      *(v34 + 352) = singleton;
      *(v34 + 360) = v53 | 1;
      if (v51)
      {
        os_release(v51);
      }

      v55 = a1->handle;
      if (v55)
      {
        goto LABEL_77;
      }

      goto LABEL_209;
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZL35nw_protocol_http1_add_input_handlerP11nw_protocolS0__block_invoke(uint64_t a1, void *a2)
{
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    result = nw_protocol_options_is_tls(a2);
    if (result)
    {
      *(*(a1 + 40) + 376) |= 2u;
    }
  }

  else
  {
    result = nw_protocol_options_get_protocol_handle(a2);
    if (result == *(a1 + 40))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

void nw_protocol_http1_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v266 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v156 = _os_log_send_and_compose_impl();
    v265[0] = 16;
    v257[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v156, v265, v257))
    {
      goto LABEL_430;
    }

    if (v265[0] == 17)
    {
      v157 = __nwlog_obj();
      v158 = v265[0];
      if (!os_log_type_enabled(v157, v265[0]))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v159 = "%{public}s called with null protocol";
    }

    else if (v257[0] == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v157 = __nwlog_obj();
      v158 = v265[0];
      v164 = os_log_type_enabled(v157, v265[0]);
      if (backtrace_string)
      {
        if (v164)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v157, v158, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_430:
        if (!v156)
        {
          goto LABEL_432;
        }

LABEL_431:
        free(v156);
        goto LABEL_432;
      }

      if (!v164)
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v159 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v157 = __nwlog_obj();
      v158 = v265[0];
      if (!os_log_type_enabled(v157, v265[0]))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v159 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_429;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v156 = _os_log_send_and_compose_impl();
    v265[0] = 16;
    v257[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v156, v265, v257))
    {
      goto LABEL_430;
    }

    if (v265[0] != 17)
    {
      if (v257[0] != OS_LOG_TYPE_INFO)
      {
        v157 = __nwlog_obj();
        v158 = v265[0];
        if (!os_log_type_enabled(v157, v265[0]))
        {
          goto LABEL_430;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v159 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_429;
      }

      v165 = __nw_create_backtrace_string();
      v157 = __nwlog_obj();
      v158 = v265[0];
      v166 = os_log_type_enabled(v157, v265[0]);
      if (!v165)
      {
        if (!v166)
        {
          goto LABEL_430;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v159 = "%{public}s called with null handle, no backtrace";
        goto LABEL_429;
      }

      if (!v166)
      {
        goto LABEL_306;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_get_http1_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v165;
      v167 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_305;
    }

    v157 = __nwlog_obj();
    v158 = v265[0];
    if (!os_log_type_enabled(v157, v265[0]))
    {
      goto LABEL_430;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v159 = "%{public}s called with null handle";
LABEL_429:
    _os_log_impl(&dword_181A37000, v157, v158, v159, buf, 0xCu);
    goto LABEL_430;
  }

  v3 = *(handle + 6);
  v4 = a1->handle;
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
LABEL_432:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      v50 = _os_log_send_and_compose_impl();
      v265[0] = 16;
      v257[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v50, v265, v257))
      {
        goto LABEL_445;
      }

      if (v265[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v51 = gLogObj;
        v52 = v265[0];
        if (!os_log_type_enabled(gLogObj, v265[0]))
        {
          goto LABEL_445;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_disconnected";
        v53 = "%{public}s called with null http1";
        goto LABEL_443;
      }

      if (v257[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v51 = gLogObj;
        v52 = v265[0];
        if (!os_log_type_enabled(gLogObj, v265[0]))
        {
          goto LABEL_445;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_disconnected";
        v53 = "%{public}s called with null http1, backtrace limit exceeded";
        goto LABEL_443;
      }

      v216 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v60 = gLogObj;
      v61 = v265[0];
      v217 = os_log_type_enabled(gLogObj, v265[0]);
      if (v216)
      {
        if (v217)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http1_disconnected";
          *&buf[12] = 2082;
          *&buf[14] = v216;
          _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v216);
        goto LABEL_445;
      }

      if (!v217)
      {
        goto LABEL_445;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      v53 = "%{public}s called with null http1, no backtrace";
      goto LABEL_450;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      v4 = (v5 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v156 = _os_log_send_and_compose_impl();
    v265[0] = 16;
    v257[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v156, v265, v257))
    {
      goto LABEL_430;
    }

    if (v265[0] == 17)
    {
      v157 = __nwlog_obj();
      v158 = v265[0];
      if (!os_log_type_enabled(v157, v265[0]))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v159 = "%{public}s called with null handle->http1_connection";
      goto LABEL_429;
    }

    if (v257[0] != OS_LOG_TYPE_INFO)
    {
      v157 = __nwlog_obj();
      v158 = v265[0];
      if (!os_log_type_enabled(v157, v265[0]))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v159 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_429;
    }

    v165 = __nw_create_backtrace_string();
    v157 = __nwlog_obj();
    v158 = v265[0];
    v173 = os_log_type_enabled(v157, v265[0]);
    if (!v165)
    {
      if (!v173)
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v159 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_429;
    }

    if (v173)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http1_get_http1_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v165;
      v167 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_305;
    }

LABEL_306:
    free(v165);
    if (!v156)
    {
      goto LABEL_432;
    }

    goto LABEL_431;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v156 = _os_log_send_and_compose_impl();
    v265[0] = 16;
    v257[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v156, v265, v257))
    {
      goto LABEL_430;
    }

    if (v265[0] == 17)
    {
      v157 = __nwlog_obj();
      v158 = v265[0];
      if (!os_log_type_enabled(v157, v265[0]))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v159 = "%{public}s called with null handle->http1_stream";
      goto LABEL_429;
    }

    if (v257[0] != OS_LOG_TYPE_INFO)
    {
      v157 = __nwlog_obj();
      v158 = v265[0];
      if (!os_log_type_enabled(v157, v265[0]))
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v159 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_429;
    }

    v165 = __nw_create_backtrace_string();
    v157 = __nwlog_obj();
    v158 = v265[0];
    v172 = os_log_type_enabled(v157, v265[0]);
    if (!v165)
    {
      if (!v172)
      {
        goto LABEL_430;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v159 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_429;
    }

    if (!v172)
    {
      goto LABEL_306;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_get_http1_protocol";
    *&buf[12] = 2082;
    *&buf[14] = v165;
    v167 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_305:
    _os_log_impl(&dword_181A37000, v157, v158, v167, buf, 0x16u);
    goto LABEL_306;
  }

  v4 = (v6 + 248);
LABEL_10:
  if (!*v4)
  {
    goto LABEL_432;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_disconnected";
    v50 = _os_log_send_and_compose_impl();
    v265[0] = 16;
    v257[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v50, v265, v257))
    {
      goto LABEL_445;
    }

    if (v265[0] == 17)
    {
      v51 = __nwlog_obj();
      v52 = v265[0];
      if (!os_log_type_enabled(v51, v265[0]))
      {
        goto LABEL_445;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      v53 = "%{public}s called with null other_protocol";
      goto LABEL_443;
    }

    if (v257[0] != OS_LOG_TYPE_INFO)
    {
      v51 = __nwlog_obj();
      v52 = v265[0];
      if (!os_log_type_enabled(v51, v265[0]))
      {
        goto LABEL_445;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      v53 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_443;
    }

    v168 = __nw_create_backtrace_string();
    v51 = __nwlog_obj();
    v52 = v265[0];
    v169 = os_log_type_enabled(v51, v265[0]);
    if (!v168)
    {
      if (!v169)
      {
        goto LABEL_445;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      v53 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_443;
    }

    if (!v169)
    {
      goto LABEL_313;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http1_disconnected";
    *&buf[12] = 2082;
    *&buf[14] = v168;
    v170 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_312:
    _os_log_impl(&dword_181A37000, v51, v52, v170, buf, 0x16u);
LABEL_313:
    free(v168);
    if (!v50)
    {
      return;
    }

    goto LABEL_446;
  }

  if (v3 != 3)
  {
    if (v3 == 2)
    {
      v7 = *(handle + 1);
      if (v7)
      {
        if ((*(v7 + 158) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v9 = *(v7 + 256);
            v10 = *(*(v7 + 248) + 372);
            if (v9)
            {
              LODWORD(v9) = *(v9 + 860);
            }

            v11 = *(v7 + 424);
            *buf = 136447490;
            *&buf[4] = "nw_protocol_http1_disconnected";
            *&buf[12] = 2082;
            *&buf[14] = v7 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v10;
            *&buf[38] = 1024;
            *&buf[40] = v9;
            LOWORD(v262) = 1024;
            *(&v262 + 2) = v11;
            _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> initial stream disconnected", buf, 0x32u);
          }
        }

        nw_protocol_disconnected(*(v7 + 48), v7);
        return;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      v50 = _os_log_send_and_compose_impl();
      v265[0] = 16;
      v257[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v50, v265, v257))
      {
        goto LABEL_445;
      }

      if (v265[0] == 17)
      {
        v51 = __nwlog_obj();
        v52 = v265[0];
        if (os_log_type_enabled(v51, v265[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_disconnected";
          v53 = "%{public}s called with null http1_stream";
LABEL_443:
          v218 = v51;
          v219 = v52;
LABEL_444:
          _os_log_impl(&dword_181A37000, v218, v219, v53, buf, 0xCu);
          goto LABEL_445;
        }

        goto LABEL_445;
      }

      if (v257[0] != OS_LOG_TYPE_INFO)
      {
        v51 = __nwlog_obj();
        v52 = v265[0];
        if (os_log_type_enabled(v51, v265[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_disconnected";
          v53 = "%{public}s called with null http1_stream, backtrace limit exceeded";
          goto LABEL_443;
        }

LABEL_445:
        if (!v50)
        {
          return;
        }

        goto LABEL_446;
      }

      v168 = __nw_create_backtrace_string();
      v51 = __nwlog_obj();
      v52 = v265[0];
      v253 = os_log_type_enabled(v51, v265[0]);
      if (!v168)
      {
        if (v253)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_disconnected";
          v53 = "%{public}s called with null http1_stream, no backtrace";
          goto LABEL_443;
        }

        goto LABEL_445;
      }

      if (!v253)
      {
        goto LABEL_313;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http1_disconnected";
      *&buf[12] = 2082;
      *&buf[14] = v168;
      v170 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
      goto LABEL_312;
    }

    goto LABEL_90;
  }

  v12 = *(handle + 2);
  if (!v12)
  {
LABEL_90:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_disconnected";
    v50 = _os_log_send_and_compose_impl();
    v265[0] = 16;
    v257[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v50, v265, v257))
    {
      goto LABEL_445;
    }

    if (v265[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v51 = gLogObj;
      v52 = v265[0];
      if (!os_log_type_enabled(gLogObj, v265[0]))
      {
        goto LABEL_445;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      v53 = "%{public}s called with null http1_connection";
      goto LABEL_443;
    }

    if (v257[0] != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v51 = gLogObj;
      v52 = v265[0];
      if (!os_log_type_enabled(gLogObj, v265[0]))
      {
        goto LABEL_445;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_disconnected";
      v53 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_443;
    }

    v59 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v60 = gLogObj;
    v61 = v265[0];
    v62 = os_log_type_enabled(gLogObj, v265[0]);
    if (v59)
    {
      if (v62)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_disconnected";
        *&buf[12] = 2082;
        *&buf[14] = v59;
        _os_log_impl(&dword_181A37000, v60, v61, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v59);
      if (!v50)
      {
        return;
      }

LABEL_446:
      free(v50);
      return;
    }

    if (!v62)
    {
      goto LABEL_445;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_disconnected";
    v53 = "%{public}s called with null http1_connection, no backtrace";
LABEL_450:
    v218 = v60;
    v219 = v61;
    goto LABEL_444;
  }

  if ((*(v12 + 872) & 0x2000) != 0)
  {
    if (*(v12 + 158))
    {
      goto LABEL_111;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v54 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_111;
    }

    v55 = *(v12 + 488);
    v56 = *(*(v12 + 480) + 372);
    v57 = *(v12 + 860);
    if (v55)
    {
      LODWORD(v55) = *(v55 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_connection_finish_input";
    *&buf[12] = 2082;
    *&buf[14] = v12 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v56;
    *&buf[38] = 1024;
    *&buf[40] = v57;
    LOWORD(v262) = 1024;
    *(&v262 + 2) = v55;
    v58 = "%{public}s %{public}s%s<i%u:c%u:s%u> input already finished, returning";
LABEL_110:
    _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_INFO, v58, buf, 0x32u);
    goto LABEL_111;
  }

  *(v12 + 872) |= 0x2000u;
  if ((*(v12 + 874) & 4) != 0)
  {
    if (*(v12 + 158))
    {
      goto LABEL_111;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v54 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_111;
    }

    v63 = *(v12 + 488);
    v64 = *(*(v12 + 480) + 372);
    v65 = *(v12 + 860);
    if (v63)
    {
      LODWORD(v63) = *(v63 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_connection_finish_input";
    *&buf[12] = 2082;
    *&buf[14] = v12 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v64;
    *&buf[38] = 1024;
    *&buf[40] = v65;
    LOWORD(v262) = 1024;
    *(&v262 + 2) = v63;
    v58 = "%{public}s %{public}s%s<i%u:c%u:s%u> already getting input frames, returning";
    goto LABEL_110;
  }

  v13 = 0;
  *v257 = 0;
  v258 = v257;
  do
  {
    input_frames = nw_protocol_get_input_frames(*(v12 + 32), v12, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v257);
    v15 = *v257;
    if (!*v257)
    {
      goto LABEL_27;
    }

    v256 = v13;
    if (gLogDatapath == 1)
    {
      v48 = __nwlog_obj();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136447746;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 2048;
        *&buf[14] = v15;
        *&buf[22] = 2048;
        *&buf[24] = v257;
        *&buf[32] = 2048;
        *&buf[34] = v12 + 616;
        *&buf[42] = 1024;
        LODWORD(v262) = 1;
        WORD2(v262) = 1024;
        *(&v262 + 6) = 1;
        WORD5(v262) = 1024;
        HIDWORD(v262) = 1;
        _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_DEBUG, "%{public}s called: initial frame %p, source %p, destination %p, temp %u, forwards %u, append %u", buf, 0x3Cu);
      }
    }

    v16 = 0;
    *v265 = 0;
    *&v265[8] = v265;
    do
    {
      v17 = v15;
      v18 = v15 + 32;
      v15 = *(v15 + 32);
      if (!v15 && !*(v17 + 40))
      {
        v15 = 0;
      }

      if (gLogDatapath == 1)
      {
        v23 = __nwlog_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(v17 + 52);
          if (v24)
          {
            v24 -= *(v17 + 56) + *(v17 + 60);
          }

          if (v15)
          {
            v25 = *(v15 + 52);
            if (v25)
            {
              v25 -= *(v15 + 56) + *(v15 + 60);
            }
          }

          else
          {
            v25 = 0;
          }

          *buf = 136447234;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 2048;
          *&buf[14] = v17;
          *&buf[22] = 1024;
          *&buf[24] = v24;
          *&buf[28] = 2048;
          *&buf[30] = v15;
          *&buf[38] = 1024;
          *&buf[40] = v25;
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
        }
      }

      v19 = *(v17 + 32);
      v20 = *(v17 + 40);
      v21 = (v19 + 40);
      if (!v19)
      {
        v21 = &v258;
      }

      *v21 = v20;
      *v20 = v19;
      v22 = *&v265[8];
      *(v17 + 32) = 0;
      *(v17 + 40) = v22;
      *v22 = v17;
      *&v265[8] = v18;
      ++v16;
    }

    while (v15);
    if (v16)
    {
      if (gLogDatapath == 1)
      {
        v49 = __nwlog_obj();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v16;
          _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s moving %u frames from temp array to destination array", buf, 0x12u);
        }
      }

      v26 = *v265;
      v27 = v16;
      if (!*v265)
      {
        goto LABEL_68;
      }

      v27 = v16;
      do
      {
        v28 = v26;
        v29 = (v26 + 32);
        v26 = *(v26 + 32);
        if (!v26 && !*(v28 + 40))
        {
          v26 = 0;
        }

        if (gLogDatapath == 1)
        {
          log = __nwlog_obj();
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v34 = *(v28 + 52);
            if (v34)
            {
              v34 -= *(v28 + 56) + *(v28 + 60);
            }

            if (v26)
            {
              v35 = *(v26 + 52);
              if (v35)
              {
                v35 -= *(v26 + 56) + *(v26 + 60);
              }
            }

            else
            {
              v35 = 0;
            }

            *buf = 136447234;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 2048;
            *&buf[14] = v28;
            *&buf[22] = 1024;
            *&buf[24] = v34;
            *&buf[28] = 2048;
            *&buf[30] = v26;
            *&buf[38] = 1024;
            *&buf[40] = v35;
            _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
          }
        }

        v30 = *(v28 + 32);
        v31 = *(v28 + 40);
        v32 = (v30 + 40);
        if (!v30)
        {
          v32 = &v265[8];
        }

        *v32 = v31;
        *v31 = v30;
        *v29 = 0;
        v29[1] = 0;
        v33 = *(v12 + 624);
        *(v28 + 40) = v33;
        *v33 = v28;
        *(v12 + 624) = v29;
        --v27;
      }

      while (v26);
      if (v27)
      {
LABEL_68:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446466;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 1024;
        *&buf[14] = v27;
        v36 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v259 = 0;
        if (!__nwlog_fault(v36, &type, &v259))
        {
          goto LABEL_82;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v37 = gLogObj;
          v38 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_82;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v27;
          v39 = v37;
          v40 = v38;
          v41 = "%{public}s failed to deliver all temp frames, remaining %u frames";
        }

        else if (v259 == 1)
        {
          v42 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v43 = type;
          loga = gLogObj;
          v44 = os_log_type_enabled(gLogObj, type);
          if (v42)
          {
            if (v44)
            {
              *buf = 136446722;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v27;
              *&buf[18] = 2082;
              *&buf[20] = v42;
              _os_log_impl(&dword_181A37000, loga, v43, "%{public}s failed to deliver all temp frames, remaining %u frames, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v42);
            goto LABEL_82;
          }

          if (!v44)
          {
LABEL_82:
            if (v36)
            {
              free(v36);
            }

            goto LABEL_25;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v27;
          v39 = loga;
          v40 = v43;
          v41 = "%{public}s failed to deliver all temp frames, remaining %u frames, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v45 = gLogObj;
          v46 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_82;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v27;
          v39 = v45;
          v40 = v46;
          v41 = "%{public}s failed to deliver all temp frames, remaining %u frames, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0x12u);
        goto LABEL_82;
      }
    }

LABEL_25:
    if (gLogDatapath == 1)
    {
      v47 = __nwlog_obj();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 1024;
        *&buf[14] = v16;
        *&buf[18] = 2048;
        *&buf[20] = v257;
        *&buf[28] = 2048;
        *&buf[30] = v12 + 616;
        _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s moved %u frames from %p to %p", buf, 0x26u);
      }
    }

    v13 = v256;
LABEL_27:
    v13 += input_frames;
  }

  while (input_frames);
  if (gLogDatapath == 1)
  {
    v198 = __nwlog_obj();
    if (os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v198, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v78 = *v257;
  if (*v257)
  {
    *(*v257 + 40) = v265;
    *v265 = v78;
    *&v265[8] = v258;
    *v257 = 0;
    v258 = v257;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    *&buf[24] = &__block_descriptor_tmp_21_49595;
    buf[32] = 0;
    do
    {
      a2 = *v265;
      if (!*v265)
      {
        break;
      }

      v79 = *(*v265 + 32);
      v80 = *(*v265 + 40);
      v81 = (v79 + 40);
      if (!v79)
      {
        v81 = &v265[8];
      }

      *v81 = v80;
      *v80 = v79;
      a2->output_handler = 0;
      a2->handle = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  v82 = *(v12 + 872);
  if ((v82 & 0x6000) == 0x2000 && !*(v12 + 616))
  {
    *(v12 + 872) = v82 | 0x4000;
    if (*(v12 + 488))
    {
      if (*(v12 + 868) && llhttp_message_needs_eof(v12 + 200))
      {
        if ((v82 & 4) == 0)
        {
          v111 = 5;
          if (*(v12 + 158))
          {
            goto LABEL_136;
          }

          goto LABEL_213;
        }

LABEL_406:
        if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v221 = __nwlog_obj();
          if (os_log_type_enabled(v221, OS_LOG_TYPE_DEBUG))
          {
            v222 = *(v12 + 488);
            v223 = *(*(v12 + 480) + 372);
            v224 = *(v12 + 860);
            if (v222)
            {
              LODWORD(v222) = *(v222 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_parser_signal_eof_if_needed";
            *&buf[12] = 2082;
            *&buf[14] = v12 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v223;
            *&buf[38] = 1024;
            *&buf[40] = v224;
            LOWORD(v262) = 1024;
            *(&v262 + 2) = v222;
            _os_log_impl(&dword_181A37000, v221, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> signaled eof and terminated message successfully", buf, 0x32u);
          }
        }

        *(v12 + 874) |= 1u;
        goto LABEL_136;
      }

      v116 = llhttp_finish(v12 + 200);
      v117 = *(v12 + 872);
      if ((v117 & 4) != 0)
      {
        goto LABEL_406;
      }

      v111 = v116;
      if (!v116)
      {
        goto LABEL_406;
      }

      if (v116 != 14)
      {
        goto LABEL_212;
      }

      v118 = *(v12 + 488);
      if (v118)
      {
        v111 = 14;
        if ((v117 & 1) != 0 && (*(v118 + 428) & 2) == 0 && !*(v12 + 848) && !*(v12 + 852) && !*(v12 + 856))
        {
          if ((v117 & 2) != 0 && *(v12 + 800))
          {
            if (!*(v12 + 808))
            {
              v206 = strdup("");
              if (!v206)
              {
                v251 = __nwlog_obj();
                os_log_type_enabled(v251, OS_LOG_TYPE_ERROR);
                *buf = 136446210;
                *&buf[4] = "strict_strdup";
                v252 = _os_log_send_and_compose_impl();
                if (__nwlog_should_abort(v252))
                {
                  __break(1u);
                  return;
                }

                free(v252);
              }

              *(v12 + 808) = v206;
            }

            nw_http1_on_header_value_complete(v12 + 200);
          }

          nw_http1_on_headers_complete(v12 + 200);
          nw_http1_on_message_complete(v12 + 200);
          goto LABEL_406;
        }

LABEL_212:
        if (*(v12 + 158))
        {
          goto LABEL_136;
        }

        goto LABEL_213;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_recover_incomplete_header";
      v233 = _os_log_send_and_compose_impl();
      v265[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v233, v265, &type))
      {
        if (v265[0] == 17)
        {
          v234 = __nwlog_obj();
          v235 = v265[0];
          if (!os_log_type_enabled(v234, v265[0]))
          {
            goto LABEL_535;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          v236 = "%{public}s called with null http1_stream";
LABEL_534:
          _os_log_impl(&dword_181A37000, v234, v235, v236, buf, 0xCu);
          goto LABEL_535;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v234 = __nwlog_obj();
          v235 = v265[0];
          if (!os_log_type_enabled(v234, v265[0]))
          {
            goto LABEL_535;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          v236 = "%{public}s called with null http1_stream, backtrace limit exceeded";
          goto LABEL_534;
        }

        v244 = __nw_create_backtrace_string();
        v234 = __nwlog_obj();
        v235 = v265[0];
        v245 = os_log_type_enabled(v234, v265[0]);
        if (!v244)
        {
          if (!v245)
          {
            goto LABEL_535;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          v236 = "%{public}s called with null http1_stream, no backtrace";
          goto LABEL_534;
        }

        if (v245)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          *&buf[12] = 2082;
          *&buf[14] = v244;
          _os_log_impl(&dword_181A37000, v234, v235, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v244);
      }

LABEL_535:
      if (v233)
      {
        free(v233);
      }

      v111 = 14;
      if (*(v12 + 158))
      {
        goto LABEL_136;
      }

LABEL_213:
      v119 = __nwlog_obj();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        v120 = *(v12 + 488);
        if (v120)
        {
          LODWORD(v120) = *(v120 + 424);
        }

        if (v111 >= 0x24)
        {
          abort();
        }

        v121 = *(*(v12 + 480) + 372);
        v122 = *(v12 + 860);
        v123 = off_1E6A35BE0[v111];
        *buf = 136447746;
        *&buf[4] = "nw_http1_parser_signal_eof_if_needed";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v121;
        *&buf[38] = 1024;
        *&buf[40] = v122;
        LOWORD(v262) = 1024;
        *(&v262 + 2) = v120;
        WORD3(v262) = 2080;
        *(&v262 + 1) = v123;
        _os_log_impl(&dword_181A37000, v119, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> parser eof did not terminate full message with errno: %s, deferring input error", buf, 0x3Cu);
      }

      goto LABEL_136;
    }

    if ((v82 & 0x100) != 0)
    {
      if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v148 = __nwlog_obj();
        if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
        {
          v149 = *(v12 + 488);
          v150 = *(*(v12 + 480) + 372);
          v151 = *(v12 + 860);
          if (v149)
          {
            LODWORD(v149) = *(v149 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_close";
          *&buf[12] = 2082;
          *&buf[14] = v12 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v150;
          *&buf[38] = 1024;
          *&buf[40] = v151;
          LOWORD(v262) = 1024;
          *(&v262 + 2) = v149;
          _os_log_impl(&dword_181A37000, v148, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already closed", buf, 0x32u);
        }
      }

      goto LABEL_136;
    }

    *(v12 + 872) = v82 | 0x4100;
    if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v229 = __nwlog_obj();
      if (os_log_type_enabled(v229, OS_LOG_TYPE_DEBUG))
      {
        v230 = *(v12 + 488);
        v231 = *(*(v12 + 480) + 372);
        v232 = *(v12 + 860);
        if (v230)
        {
          LODWORD(v230) = *(v230 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v231;
        *&buf[38] = 1024;
        *&buf[40] = v232;
        LOWORD(v262) = 1024;
        *(&v262 + 2) = v230;
        _os_log_impl(&dword_181A37000, v229, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
      }
    }

    v124 = *(v12 + 480);
    if (!v124)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      v225 = _os_log_send_and_compose_impl();
      v265[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v225, v265, &type))
      {
        goto LABEL_545;
      }

      if (v265[0] == 17)
      {
        v226 = __nwlog_obj();
        v227 = v265[0];
        if (!os_log_type_enabled(v226, v265[0]))
        {
          goto LABEL_545;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v228 = "%{public}s called with null http1";
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v237 = __nw_create_backtrace_string();
        v226 = __nwlog_obj();
        v227 = v265[0];
        v238 = os_log_type_enabled(v226, v265[0]);
        if (v237)
        {
          if (v238)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = v237;
            _os_log_impl(&dword_181A37000, v226, v227, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v237);
          goto LABEL_545;
        }

        if (!v238)
        {
          goto LABEL_545;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v228 = "%{public}s called with null http1, no backtrace";
      }

      else
      {
        v226 = __nwlog_obj();
        v227 = v265[0];
        if (!os_log_type_enabled(v226, v265[0]))
        {
          goto LABEL_545;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v228 = "%{public}s called with null http1, backtrace limit exceeded";
      }

      v250 = buf;
LABEL_544:
      _os_log_impl(&dword_181A37000, v226, v227, v228, v250, 0xCu);
      goto LABEL_545;
    }

    if ((*(v12 + 872) & 0x800) != 0)
    {
      if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v152 = __nwlog_obj();
        if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
        {
          v153 = *(v12 + 488);
          v154 = *(*(v12 + 480) + 372);
          v155 = *(v12 + 860);
          if (v153)
          {
            LODWORD(v153) = *(v153 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v12 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v154;
          *&buf[38] = 1024;
          *&buf[40] = v155;
          LOWORD(v262) = 1024;
          *(&v262 + 2) = v153;
          _os_log_impl(&dword_181A37000, v152, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
        }
      }

      goto LABEL_361;
    }

    *(v12 + 872) |= 0x800u;
    v125 = *(v124 + 368) + 1;
    *(v124 + 368) = v125;
    if (v125 == v125 << 31 >> 31)
    {
LABEL_356:
      if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v239 = __nwlog_obj();
        if (os_log_type_enabled(v239, OS_LOG_TYPE_DEBUG))
        {
          v240 = *(v12 + 488);
          v241 = *(*(v12 + 480) + 372);
          v242 = *(v12 + 860);
          if (v240)
          {
            LODWORD(v240) = *(v240 + 424);
          }

          v243 = *(v124 + 368) + *(v124 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v12 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v241;
          *&buf[38] = 1024;
          *&buf[40] = v242;
          LOWORD(v262) = 1024;
          *(&v262 + 2) = v240;
          WORD3(v262) = 1024;
          DWORD2(v262) = v243;
          _os_log_impl(&dword_181A37000, v239, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
        }
      }

      v188 = *(v12 + 496);
      if (!v188)
      {
        __nwlog_obj();
        *v265 = 136446210;
        *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        v225 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v259 = 0;
        if (!__nwlog_fault(v225, &type, &v259))
        {
          goto LABEL_545;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v226 = __nwlog_obj();
          v227 = type;
          if (!os_log_type_enabled(v226, type))
          {
            goto LABEL_545;
          }

          *v265 = 136446210;
          *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v228 = "%{public}s called with null http1_connection->context";
LABEL_543:
          v250 = v265;
          goto LABEL_544;
        }

        if (v259 != 1)
        {
          v226 = __nwlog_obj();
          v227 = type;
          if (!os_log_type_enabled(v226, type))
          {
            goto LABEL_545;
          }

          *v265 = 136446210;
          *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v228 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
          goto LABEL_543;
        }

        v246 = __nw_create_backtrace_string();
        v226 = __nwlog_obj();
        v227 = type;
        v247 = os_log_type_enabled(v226, type);
        if (!v246)
        {
          if (!v247)
          {
            goto LABEL_545;
          }

          *v265 = 136446210;
          *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v228 = "%{public}s called with null http1_connection->context, no backtrace";
          goto LABEL_543;
        }

        if (v247)
        {
          *v265 = 136446466;
          *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v265[12] = 2082;
          *&v265[14] = v246;
          v248 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_520:
          _os_log_impl(&dword_181A37000, v226, v227, v248, v265, 0x16u);
        }

LABEL_521:
        free(v246);
        if (!v225)
        {
LABEL_361:
          if (!*(v12 + 488))
          {
            v191 = *(v12 + 784);
            if (v191)
            {
              nw_queue_set_timer_values(v191, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
            }

            else
            {
              if ((*(v12 + 158) & 1) == 0)
              {
                v192 = __nwlog_obj();
                if (os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
                {
                  v193 = *(v12 + 488);
                  v194 = *(*(v12 + 480) + 372);
                  v195 = *(v12 + 860);
                  if (v193)
                  {
                    LODWORD(v193) = *(v193 + 424);
                  }

                  *buf = 136447490;
                  *&buf[4] = "nw_http1_connection_close";
                  *&buf[12] = 2082;
                  *&buf[14] = v12 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v194;
                  *&buf[38] = 1024;
                  *&buf[40] = v195;
                  LOWORD(v262) = 1024;
                  *(&v262 + 2) = v193;
                  _os_log_impl(&dword_181A37000, v192, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
                }
              }

              v196 = *(v12 + 608);
              v197 = *(v12 + 496);
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
              *&buf[24] = &unk_1E6A32780;
              *&buf[32] = v196;
              nw_queue_context_async(v197, buf);
            }
          }

          goto LABEL_136;
        }

LABEL_546:
        free(v225);
        goto LABEL_361;
      }

      v189 = *(v12 + 480);
      if (v189)
      {
        v190 = *(v189 + 200);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
        *&buf[24] = &unk_1E6A327A8;
        *&buf[32] = v190;
        nw_queue_context_async(v188, buf);
        goto LABEL_361;
      }

      __nwlog_obj();
      *v265 = 136446210;
      *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
      v225 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v259 = 0;
      if (__nwlog_fault(v225, &type, &v259))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v226 = __nwlog_obj();
          v227 = type;
          if (!os_log_type_enabled(v226, type))
          {
            goto LABEL_545;
          }

          *v265 = 136446210;
          *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v228 = "%{public}s called with null http1";
          goto LABEL_543;
        }

        if (v259 != 1)
        {
          v226 = __nwlog_obj();
          v227 = type;
          if (!os_log_type_enabled(v226, type))
          {
            goto LABEL_545;
          }

          *v265 = 136446210;
          *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v228 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_543;
        }

        v246 = __nw_create_backtrace_string();
        v226 = __nwlog_obj();
        v227 = type;
        v249 = os_log_type_enabled(v226, type);
        if (!v246)
        {
          if (!v249)
          {
            goto LABEL_545;
          }

          *v265 = 136446210;
          *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v228 = "%{public}s called with null http1, no backtrace";
          goto LABEL_543;
        }

        if (v249)
        {
          *v265 = 136446466;
          *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v265[12] = 2082;
          *&v265[14] = v246;
          v248 = "%{public}s called with null http1, dumping backtrace:%{public}s";
          goto LABEL_520;
        }

        goto LABEL_521;
      }

LABEL_545:
      if (!v225)
      {
        goto LABEL_361;
      }

      goto LABEL_546;
    }

    __nwlog_obj();
    v126 = *(v124 + 368);
    *buf = 136446978;
    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
    *&buf[12] = 2082;
    *&buf[14] = "http1->nonresuable_connections";
    *&buf[22] = 2048;
    *&buf[24] = 1;
    *&buf[32] = 2048;
    *&buf[34] = v126;
    v127 = _os_log_send_and_compose_impl();
    v265[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v127, v265, &type))
    {
      if (v265[0] == 17)
      {
        v128 = __nwlog_obj();
        v129 = v265[0];
        if (os_log_type_enabled(v128, v265[0]))
        {
          v130 = *(v124 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v130;
          v131 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_352:
          _os_log_impl(&dword_181A37000, v128, v129, v131, buf, 0x2Au);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v160 = __nw_create_backtrace_string();
        v128 = __nwlog_obj();
        v129 = v265[0];
        v161 = os_log_type_enabled(v128, v265[0]);
        if (v160)
        {
          if (v161)
          {
            v162 = *(v124 + 368);
            *buf = 136447234;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v162;
            *&buf[42] = 2082;
            *&v262 = v160;
            _os_log_impl(&dword_181A37000, v128, v129, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v160);
          goto LABEL_353;
        }

        if (v161)
        {
          v187 = *(v124 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v187;
          v131 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_352;
        }
      }

      else
      {
        v128 = __nwlog_obj();
        v129 = v265[0];
        if (os_log_type_enabled(v128, v265[0]))
        {
          v171 = *(v124 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v171;
          v131 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_352;
        }
      }
    }

LABEL_353:
    if (v127)
    {
      free(v127);
    }

    *(v124 + 368) = -1;
    goto LABEL_356;
  }

LABEL_136:
  v83 = *(v12 + 616);
  v84 = *(v12 + 632);
  v85 = *(v12 + 872);
  v86 = v85 & 0x204;
  if ((v85 & 0x2000) != 0)
  {
    v96 = v83 | v84;
    v97 = (v85 >> 9) & 1;
    if (v86 == 4)
    {
      v97 = 1;
    }

    if (v96)
    {
      v98 = 1;
    }

    else
    {
      v98 = v97 == 0;
    }

    if (v98)
    {
      if (v86 == 4)
      {
        goto LABEL_179;
      }

      if (v96)
      {
        goto LABEL_179;
      }

      *(v12 + 864) = 5;
      if (*(v12 + 158))
      {
        goto LABEL_179;
      }

      v87 = __nwlog_obj();
      if (!os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_179;
      }

      v99 = *(v12 + 488);
      v100 = *(*(v12 + 480) + 372);
      v101 = *(v12 + 860);
      if (v99)
      {
        LODWORD(v99) = *(v99 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v100;
      *&buf[38] = 1024;
      *&buf[40] = v101;
      LOWORD(v262) = 1024;
      *(&v262 + 2) = v99;
      v91 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: connection error";
    }

    else
    {
      *(v12 + 864) = 4;
      if (*(v12 + 158))
      {
        goto LABEL_179;
      }

      v87 = __nwlog_obj();
      if (!os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_179;
      }

      v105 = *(v12 + 488);
      v106 = *(*(v12 + 480) + 372);
      v107 = *(v12 + 860);
      if (v105)
      {
        LODWORD(v105) = *(v105 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v106;
      *&buf[38] = 1024;
      *&buf[40] = v107;
      LOWORD(v262) = 1024;
      *(&v262 + 2) = v105;
      v91 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: connection complete";
    }

LABEL_178:
    _os_log_impl(&dword_181A37000, v87, OS_LOG_TYPE_DEBUG, v91, buf, 0x32u);
    goto LABEL_179;
  }

  if (v86 != 4)
  {
    if (*(v12 + 158))
    {
      goto LABEL_179;
    }

    v87 = __nwlog_obj();
    if (!os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_179;
    }

    v102 = *(v12 + 488);
    v103 = *(*(v12 + 480) + 372);
    v104 = *(v12 + 860);
    if (v102)
    {
      LODWORD(v102) = *(v102 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_update_connection_input_state";
    *&buf[12] = 2082;
    *&buf[14] = v12 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v103;
    *&buf[38] = 1024;
    *&buf[40] = v104;
    LOWORD(v262) = 1024;
    *(&v262 + 2) = v102;
    v91 = "%{public}s %{public}s%s<i%u:c%u:s%u> no change to http1 connection state";
    goto LABEL_178;
  }

  if (v83 | v84)
  {
    if (!v83)
    {
      goto LABEL_179;
    }

    if (v84)
    {
      goto LABEL_179;
    }

    *(v12 + 864) = 3;
    if (*(v12 + 158))
    {
      goto LABEL_179;
    }

    v87 = __nwlog_obj();
    if (!os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_179;
    }

    v112 = *(v12 + 488);
    v113 = *(*(v12 + 480) + 372);
    v114 = *(v12 + 860);
    if (v112)
    {
      LODWORD(v112) = *(v112 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_update_connection_input_state";
    *&buf[12] = 2082;
    *&buf[14] = v12 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v113;
    *&buf[38] = 1024;
    *&buf[40] = v114;
    LOWORD(v262) = 1024;
    *(&v262 + 2) = v112;
    v91 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: stream pending";
    goto LABEL_178;
  }

  *(v12 + 864) = 2;
  if ((*(v12 + 158) & 1) == 0)
  {
    v87 = __nwlog_obj();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
    {
      v88 = *(v12 + 488);
      v89 = *(*(v12 + 480) + 372);
      v90 = *(v12 + 860);
      if (v88)
      {
        LODWORD(v88) = *(v88 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v89;
      *&buf[38] = 1024;
      *&buf[40] = v90;
      LOWORD(v262) = 1024;
      *(&v262 + 2) = v88;
      v91 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: stream complete";
      goto LABEL_178;
    }
  }

LABEL_179:
  if (*(v12 + 864) == 1)
  {
    if (v13)
    {
      a2 = *(v12 + 488);
      if (a2)
      {
        nw_protocol_input_available(a2->default_input_handler->flow_id, a2);
      }
    }
  }

LABEL_111:
  if ((*(v12 + 872) & 0x100) != 0)
  {
    if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v74 = __nwlog_obj();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        v75 = *(v12 + 488);
        v76 = *(*(v12 + 480) + 372);
        v77 = *(v12 + 860);
        if (v75)
        {
          LODWORD(v75) = *(v75 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v76;
        *&buf[38] = 1024;
        *&buf[40] = v77;
        LOWORD(v262) = 1024;
        *(&v262 + 2) = v75;
        _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already closed", buf, 0x32u);
      }
    }
  }

  else
  {
    *(v12 + 872) |= 0x100u;
    if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v178 = __nwlog_obj();
      if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
      {
        v179 = *(v12 + 488);
        v180 = *(*(v12 + 480) + 372);
        v181 = *(v12 + 860);
        if (v179)
        {
          LODWORD(v179) = *(v179 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v180;
        *&buf[38] = 1024;
        *&buf[40] = v181;
        LOWORD(v262) = 1024;
        *(&v262 + 2) = v179;
        _os_log_impl(&dword_181A37000, v178, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
      }
    }

    v66 = *(v12 + 480);
    if (!v66)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      v174 = _os_log_send_and_compose_impl();
      v265[0] = 16;
      v257[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v174, v265, v257))
      {
        goto LABEL_470;
      }

      if (v265[0] == 17)
      {
        v175 = __nwlog_obj();
        v176 = v265[0];
        if (!os_log_type_enabled(v175, v265[0]))
        {
          goto LABEL_470;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v177 = "%{public}s called with null http1";
      }

      else if (v257[0] == OS_LOG_TYPE_INFO)
      {
        v199 = __nw_create_backtrace_string();
        v175 = __nwlog_obj();
        v176 = v265[0];
        v200 = os_log_type_enabled(v175, v265[0]);
        if (v199)
        {
          if (v200)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = v199;
            _os_log_impl(&dword_181A37000, v175, v176, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v199);
          goto LABEL_470;
        }

        if (!v200)
        {
LABEL_470:
          if (!v174)
          {
            goto LABEL_239;
          }

          goto LABEL_471;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v177 = "%{public}s called with null http1, no backtrace";
      }

      else
      {
        v175 = __nwlog_obj();
        v176 = v265[0];
        if (!os_log_type_enabled(v175, v265[0]))
        {
          goto LABEL_470;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v177 = "%{public}s called with null http1, backtrace limit exceeded";
      }

      v220 = buf;
      goto LABEL_469;
    }

    if ((*(v12 + 872) & 0x800) == 0)
    {
      *(v12 + 872) |= 0x800u;
      v67 = *(v66 + 368) + 1;
      *(v66 + 368) = v67;
      if (v67 != v67 << 31 >> 31)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v68 = *(v66 + 368);
        *buf = 136446978;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        *&buf[12] = 2082;
        *&buf[14] = "http1->nonresuable_connections";
        *&buf[22] = 2048;
        *&buf[24] = 1;
        *&buf[32] = 2048;
        *&buf[34] = v68;
        v69 = _os_log_send_and_compose_impl();
        v265[0] = 16;
        v257[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v69, v265, v257))
        {
          goto LABEL_231;
        }

        if (v265[0] != 17)
        {
          if (v257[0] == OS_LOG_TYPE_INFO)
          {
            v108 = __nw_create_backtrace_string();
            v70 = __nwlog_obj();
            v71 = v265[0];
            v109 = os_log_type_enabled(v70, v265[0]);
            if (v108)
            {
              if (v109)
              {
                v110 = *(v66 + 368);
                *buf = 136447234;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = "http1->nonresuable_connections";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v110;
                *&buf[42] = 2082;
                *&v262 = v108;
                _os_log_impl(&dword_181A37000, v70, v71, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v108);
              goto LABEL_231;
            }

            if (!v109)
            {
              goto LABEL_231;
            }

            v132 = *(v66 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v132;
            v73 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          }

          else
          {
            v70 = __nwlog_obj();
            v71 = v265[0];
            if (!os_log_type_enabled(v70, v265[0]))
            {
              goto LABEL_231;
            }

            v115 = *(v66 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v115;
            v73 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          }

LABEL_230:
          _os_log_impl(&dword_181A37000, v70, v71, v73, buf, 0x2Au);
          goto LABEL_231;
        }

        v70 = __nwlog_obj();
        v71 = v265[0];
        if (os_log_type_enabled(v70, v265[0]))
        {
          v72 = *(v66 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v72;
          v73 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
          goto LABEL_230;
        }

LABEL_231:
        if (v69)
        {
          free(v69);
        }

        *(v66 + 368) = -1;
      }

      if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v201 = __nwlog_obj();
        if (os_log_type_enabled(v201, OS_LOG_TYPE_DEBUG))
        {
          v202 = *(v12 + 488);
          v203 = *(*(v12 + 480) + 372);
          v204 = *(v12 + 860);
          if (v202)
          {
            LODWORD(v202) = *(v202 + 424);
          }

          v205 = *(v66 + 368) + *(v66 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v12 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v203;
          *&buf[38] = 1024;
          *&buf[40] = v204;
          LOWORD(v262) = 1024;
          *(&v262 + 2) = v202;
          WORD3(v262) = 1024;
          DWORD2(v262) = v205;
          _os_log_impl(&dword_181A37000, v201, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
        }
      }

      v133 = *(v12 + 496);
      if (v133)
      {
        v134 = *(v12 + 480);
        if (v134)
        {
          v135 = *(v134 + 200);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
          *&buf[24] = &unk_1E6A327A8;
          *&buf[32] = v135;
          nw_queue_context_async(v133, buf);
          goto LABEL_239;
        }

        __nwlog_obj();
        *v265 = 136446210;
        *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        v174 = _os_log_send_and_compose_impl();
        v257[0] = OS_LOG_TYPE_ERROR;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v174, v257, &type))
        {
          goto LABEL_470;
        }

        if (v257[0] == OS_LOG_TYPE_FAULT)
        {
          v175 = __nwlog_obj();
          v176 = v257[0];
          if (os_log_type_enabled(v175, v257[0]))
          {
            *v265 = 136446210;
            *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
            v177 = "%{public}s called with null http1";
            goto LABEL_468;
          }

          goto LABEL_470;
        }

        if (type == OS_LOG_TYPE_INFO)
        {
          v212 = __nw_create_backtrace_string();
          v175 = __nwlog_obj();
          v176 = v257[0];
          v215 = os_log_type_enabled(v175, v257[0]);
          if (v212)
          {
            if (v215)
            {
              *v265 = 136446466;
              *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
              *&v265[12] = 2082;
              *&v265[14] = v212;
              v214 = "%{public}s called with null http1, dumping backtrace:%{public}s";
LABEL_422:
              _os_log_impl(&dword_181A37000, v175, v176, v214, v265, 0x16u);
            }

            goto LABEL_423;
          }

          if (!v215)
          {
            goto LABEL_470;
          }

          *v265 = 136446210;
          *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v177 = "%{public}s called with null http1, no backtrace";
        }

        else
        {
          v175 = __nwlog_obj();
          v176 = v257[0];
          if (!os_log_type_enabled(v175, v257[0]))
          {
            goto LABEL_470;
          }

          *v265 = 136446210;
          *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v177 = "%{public}s called with null http1, backtrace limit exceeded";
        }

LABEL_468:
        v220 = v265;
LABEL_469:
        _os_log_impl(&dword_181A37000, v175, v176, v177, v220, 0xCu);
        goto LABEL_470;
      }

      __nwlog_obj();
      *v265 = 136446210;
      *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
      v174 = _os_log_send_and_compose_impl();
      v257[0] = OS_LOG_TYPE_ERROR;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v174, v257, &type))
      {
        goto LABEL_470;
      }

      if (v257[0] == OS_LOG_TYPE_FAULT)
      {
        v175 = __nwlog_obj();
        v176 = v257[0];
        if (os_log_type_enabled(v175, v257[0]))
        {
          *v265 = 136446210;
          *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v177 = "%{public}s called with null http1_connection->context";
          goto LABEL_468;
        }

        goto LABEL_470;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v175 = __nwlog_obj();
        v176 = v257[0];
        if (!os_log_type_enabled(v175, v257[0]))
        {
          goto LABEL_470;
        }

        *v265 = 136446210;
        *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        v177 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
        goto LABEL_468;
      }

      v212 = __nw_create_backtrace_string();
      v175 = __nwlog_obj();
      v176 = v257[0];
      v213 = os_log_type_enabled(v175, v257[0]);
      if (!v212)
      {
        if (!v213)
        {
          goto LABEL_470;
        }

        *v265 = 136446210;
        *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        v177 = "%{public}s called with null http1_connection->context, no backtrace";
        goto LABEL_468;
      }

      if (v213)
      {
        *v265 = 136446466;
        *&v265[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        *&v265[12] = 2082;
        *&v265[14] = v212;
        v214 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
        goto LABEL_422;
      }

LABEL_423:
      free(v212);
      if (!v174)
      {
        goto LABEL_239;
      }

LABEL_471:
      free(v174);
      goto LABEL_239;
    }

    if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v92 = __nwlog_obj();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
      {
        v93 = *(v12 + 488);
        v94 = *(*(v12 + 480) + 372);
        v95 = *(v12 + 860);
        if (v93)
        {
          LODWORD(v93) = *(v93 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v94;
        *&buf[38] = 1024;
        *&buf[40] = v95;
        LOWORD(v262) = 1024;
        *(&v262 + 2) = v93;
        _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
      }
    }

LABEL_239:
    if (!*(v12 + 488))
    {
      v141 = *(v12 + 784);
      if (v141)
      {
        if (*v141)
        {
          dispatch_source_set_timer(*v141, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        }

        else
        {
          *(v141 + 32) = xmmword_182B08D40;
          if (*(v141 + 48) == 1 && *(v141 + 49) == 1)
          {
            nw_queue_source_run_timer(v141, a2);
          }
        }
      }

      else
      {
        if ((*(v12 + 158) & 1) == 0)
        {
          v142 = __nwlog_obj();
          if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
          {
            v143 = *(v12 + 488);
            v144 = *(*(v12 + 480) + 372);
            v145 = *(v12 + 860);
            if (v143)
            {
              LODWORD(v143) = *(v143 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_connection_close";
            *&buf[12] = 2082;
            *&buf[14] = v12 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v144;
            *&buf[38] = 1024;
            *&buf[40] = v145;
            LOWORD(v262) = 1024;
            *(&v262 + 2) = v143;
            _os_log_impl(&dword_181A37000, v142, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
          }
        }

        v146 = *(v12 + 608);
        v147 = *(v12 + 496);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
        *&buf[24] = &unk_1E6A32780;
        *&buf[32] = v146;
        nw_queue_context_async(v147, buf);
      }
    }
  }

  v136 = *(v12 + 488);
  if (v136)
  {
    if ((*(v12 + 864) & 0xFFFFFFFE) == 4 || (*(v136 + 428) & 0x20) != 0)
    {
      if ((*(v12 + 158) & 1) != 0 || gLogDatapath != 1)
      {
        goto LABEL_248;
      }

      v182 = __nwlog_obj();
      v183 = os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG);
      v136 = *(v12 + 488);
      if (v183)
      {
        v184 = *(*(v12 + 480) + 372);
        v185 = *(v12 + 860);
        if (v136)
        {
          v186 = *(v136 + 424);
        }

        else
        {
          v186 = 0;
        }

        *buf = 136448002;
        *&buf[4] = "nw_protocol_http1_disconnected";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v184;
        *&buf[38] = 1024;
        *&buf[40] = v185;
        LOWORD(v262) = 1024;
        *(&v262 + 2) = v186;
        WORD3(v262) = 2048;
        *(&v262 + 1) = v12;
        v263 = 2048;
        v264 = v136;
        _os_log_impl(&dword_181A37000, v182, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection %p sending disconnected to current stream (%p)", buf, 0x46u);
        v136 = *(v12 + 488);
      }

      if (v136)
      {
LABEL_248:
        nw_protocol_disconnected(*(v136 + 48), v136);
      }

      else
      {
        nw_protocol_disconnected(0, 0);
      }
    }

    else
    {
      if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v207 = __nwlog_obj();
        if (os_log_type_enabled(v207, OS_LOG_TYPE_DEBUG))
        {
          v208 = *(v12 + 488);
          v209 = *(*(v12 + 480) + 372);
          v210 = *(v12 + 860);
          if (v208)
          {
            v211 = *(v208 + 424);
          }

          else
          {
            v211 = 0;
          }

          *buf = 136448002;
          *&buf[4] = "nw_protocol_http1_disconnected";
          *&buf[12] = 2082;
          *&buf[14] = v12 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v209;
          *&buf[38] = 1024;
          *&buf[40] = v210;
          LOWORD(v262) = 1024;
          *(&v262 + 2) = v211;
          WORD3(v262) = 2048;
          *(&v262 + 1) = v12;
          v263 = 2048;
          v264 = v208;
          _os_log_impl(&dword_181A37000, v207, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection %p not sending disconnected up to current stream (%p), input still available", buf, 0x46u);
        }
      }

      *(v12 + 872) |= 0x80u;
    }
  }

  else if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v137 = __nwlog_obj();
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
    {
      v138 = *(v12 + 488);
      v139 = *(*(v12 + 480) + 372);
      v140 = *(v12 + 860);
      if (v138)
      {
        LODWORD(v138) = *(v138 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_protocol_http1_disconnected";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v139;
      *&buf[38] = 1024;
      *&buf[40] = v140;
      LOWORD(v262) = 1024;
      *(&v262 + 2) = v138;
      _os_log_impl(&dword_181A37000, v137, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> no stream on http connection, just closing", buf, 0x32u);
    }
  }
}

void nw_protocol_http1_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v1014 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_get_http1_protocol";
    v423 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v423, iterate_block, aBlock))
    {
      goto LABEL_1277;
    }

    if (LOBYTE(iterate_block[0]) == 17)
    {
      v424 = __nwlog_obj();
      v425 = iterate_block[0];
      if (!os_log_type_enabled(v424, iterate_block[0]))
      {
        goto LABEL_1277;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v426 = "%{public}s called with null protocol";
      goto LABEL_1276;
    }

    if (aBlock[0] != 1)
    {
      v424 = __nwlog_obj();
      v425 = iterate_block[0];
      if (!os_log_type_enabled(v424, iterate_block[0]))
      {
        goto LABEL_1277;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v426 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_1276;
    }

    backtrace_string = __nw_create_backtrace_string();
    v424 = __nwlog_obj();
    v425 = iterate_block[0];
    v430 = os_log_type_enabled(v424, iterate_block[0]);
    if (!backtrace_string)
    {
      if (!v430)
      {
        goto LABEL_1277;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v426 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_1276;
    }

    if (v430)
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = backtrace_string;
      _os_log_impl(&dword_181A37000, v424, v425, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    goto LABEL_1277;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_get_http1_protocol";
    v423 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v423, iterate_block, aBlock))
    {
      goto LABEL_1277;
    }

    if (LOBYTE(iterate_block[0]) == 17)
    {
      v424 = __nwlog_obj();
      v425 = iterate_block[0];
      if (!os_log_type_enabled(v424, iterate_block[0]))
      {
        goto LABEL_1277;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v426 = "%{public}s called with null handle";
      goto LABEL_1276;
    }

    if (aBlock[0] != 1)
    {
      v424 = __nwlog_obj();
      v425 = iterate_block[0];
      if (!os_log_type_enabled(v424, iterate_block[0]))
      {
        goto LABEL_1277;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v426 = "%{public}s called with null handle, backtrace limit exceeded";
      goto LABEL_1276;
    }

    v431 = __nw_create_backtrace_string();
    v424 = __nwlog_obj();
    v425 = iterate_block[0];
    v432 = os_log_type_enabled(v424, iterate_block[0]);
    if (v431)
    {
      if (v432)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_http1_get_http1_protocol";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v431;
        _os_log_impl(&dword_181A37000, v424, v425, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v431);
      if (!v423)
      {
        goto LABEL_1279;
      }

      goto LABEL_1278;
    }

    if (v432)
    {
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v426 = "%{public}s called with null handle, no backtrace";
      goto LABEL_1276;
    }

LABEL_1277:
    if (!v423)
    {
      goto LABEL_1279;
    }

LABEL_1278:
    free(v423);
    goto LABEL_1279;
  }

  v3 = *(handle + 6);
  v4 = a1->handle;
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
LABEL_1279:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v93 = _os_log_send_and_compose_impl();
      LOBYTE(iterate_block[0]) = 16;
      aBlock[0] = 0;
      if (!__nwlog_fault(v93, iterate_block, aBlock))
      {
        goto LABEL_1311;
      }

      if (LOBYTE(iterate_block[0]) == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v94 = gLogObj;
        v95 = iterate_block[0];
        if (!os_log_type_enabled(gLogObj, iterate_block[0]))
        {
          goto LABEL_1311;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_protocol_http1_disconnect";
        v96 = "%{public}s called with null http1";
        goto LABEL_1309;
      }

      if (aBlock[0] != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v94 = gLogObj;
        v95 = iterate_block[0];
        if (!os_log_type_enabled(gLogObj, iterate_block[0]))
        {
          goto LABEL_1311;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_protocol_http1_disconnect";
        v96 = "%{public}s called with null http1, backtrace limit exceeded";
        goto LABEL_1309;
      }

      v751 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v752 = gLogObj;
      v753 = iterate_block[0];
      v754 = os_log_type_enabled(gLogObj, iterate_block[0]);
      if (!v751)
      {
        if (!v754)
        {
          goto LABEL_1311;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_protocol_http1_disconnect";
        v96 = "%{public}s called with null http1, no backtrace";
        goto LABEL_1316;
      }

      if (v754)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_protocol_http1_disconnect";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v751;
        _os_log_impl(&dword_181A37000, v752, v753, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v751);
LABEL_1311:
      if (!v93)
      {
        return;
      }

      goto LABEL_1312;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      v4 = (v5 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_get_http1_protocol";
    v423 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v423, iterate_block, aBlock))
    {
      goto LABEL_1277;
    }

    if (LOBYTE(iterate_block[0]) == 17)
    {
      v424 = __nwlog_obj();
      v425 = iterate_block[0];
      if (!os_log_type_enabled(v424, iterate_block[0]))
      {
        goto LABEL_1277;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v426 = "%{public}s called with null handle->http1_connection";
      goto LABEL_1276;
    }

    if (aBlock[0] != 1)
    {
      v424 = __nwlog_obj();
      v425 = iterate_block[0];
      if (!os_log_type_enabled(v424, iterate_block[0]))
      {
        goto LABEL_1277;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v426 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_1276;
    }

    v654 = __nw_create_backtrace_string();
    v424 = __nwlog_obj();
    v425 = iterate_block[0];
    v657 = os_log_type_enabled(v424, iterate_block[0]);
    if (!v654)
    {
      if (!v657)
      {
        goto LABEL_1277;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      v426 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_1276;
    }

    if (v657)
    {
      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_get_http1_protocol";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v654;
      v656 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_1120;
    }

    goto LABEL_1121;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_get_http1_protocol";
    v423 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v423, iterate_block, aBlock))
    {
      goto LABEL_1277;
    }

    if (LOBYTE(iterate_block[0]) != 17)
    {
      if (aBlock[0] != 1)
      {
        v424 = __nwlog_obj();
        v425 = iterate_block[0];
        if (!os_log_type_enabled(v424, iterate_block[0]))
        {
          goto LABEL_1277;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_http1_protocol";
        v426 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_1276;
      }

      v654 = __nw_create_backtrace_string();
      v424 = __nwlog_obj();
      v425 = iterate_block[0];
      v655 = os_log_type_enabled(v424, iterate_block[0]);
      if (!v654)
      {
        if (!v655)
        {
          goto LABEL_1277;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_http1_protocol";
        v426 = "%{public}s called with null handle->http1_stream, no backtrace";
        goto LABEL_1276;
      }

      if (v655)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_http1_get_http1_protocol";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v654;
        v656 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_1120:
        _os_log_impl(&dword_181A37000, v424, v425, v656, buf, 0x16u);
      }

LABEL_1121:
      free(v654);
      if (!v423)
      {
        goto LABEL_1279;
      }

      goto LABEL_1278;
    }

    v424 = __nwlog_obj();
    v425 = iterate_block[0];
    if (!os_log_type_enabled(v424, iterate_block[0]))
    {
      goto LABEL_1277;
    }

    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_get_http1_protocol";
    v426 = "%{public}s called with null handle->http1_stream";
LABEL_1276:
    _os_log_impl(&dword_181A37000, v424, v425, v426, buf, 0xCu);
    goto LABEL_1277;
  }

  v4 = (v6 + 248);
LABEL_10:
  v7 = *v4;
  if (!*v4)
  {
    goto LABEL_1279;
  }

  if (!a2)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_http1_disconnect";
    v93 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v93, iterate_block, aBlock))
    {
      goto LABEL_1311;
    }

    if (LOBYTE(iterate_block[0]) == 17)
    {
      v94 = __nwlog_obj();
      v95 = iterate_block[0];
      if (!os_log_type_enabled(v94, iterate_block[0]))
      {
        goto LABEL_1311;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v96 = "%{public}s called with null other_protocol";
      goto LABEL_1309;
    }

    if (aBlock[0] != 1)
    {
      v94 = __nwlog_obj();
      v95 = iterate_block[0];
      if (!os_log_type_enabled(v94, iterate_block[0]))
      {
        goto LABEL_1311;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v96 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_1309;
    }

    v104 = __nw_create_backtrace_string();
    v94 = __nwlog_obj();
    v95 = iterate_block[0];
    v444 = os_log_type_enabled(v94, iterate_block[0]);
    if (!v104)
    {
      if (!v444)
      {
        goto LABEL_1311;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v96 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_1309;
    }

    if (!v444)
    {
      goto LABEL_168;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_http1_disconnect";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v104;
    v106 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
    goto LABEL_167;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      goto LABEL_1297;
    }

    v8 = *(handle + 2);
    if (v8)
    {
      v9 = (v8 + 488);
      goto LABEL_17;
    }

    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_get_stream_for_protocol";
    v580 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (__nwlog_fault(v580, iterate_block, aBlock))
    {
      if (LOBYTE(iterate_block[0]) == 17)
      {
        v581 = __nwlog_obj();
        v582 = iterate_block[0];
        if (!os_log_type_enabled(v581, iterate_block[0]))
        {
          goto LABEL_1295;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_stream_for_protocol";
        v583 = "%{public}s called with null handle->http1_connection";
        goto LABEL_1294;
      }

      if (aBlock[0] != 1)
      {
        v581 = __nwlog_obj();
        v582 = iterate_block[0];
        if (!os_log_type_enabled(v581, iterate_block[0]))
        {
          goto LABEL_1295;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_stream_for_protocol";
        v583 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_1294;
      }

      v658 = __nw_create_backtrace_string();
      v581 = __nwlog_obj();
      v582 = iterate_block[0];
      v659 = os_log_type_enabled(v581, iterate_block[0]);
      if (v658)
      {
        if (v659)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_get_stream_for_protocol";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v658;
          _os_log_impl(&dword_181A37000, v581, v582, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v658);
        goto LABEL_1295;
      }

      if (v659)
      {
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_get_stream_for_protocol";
        v583 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_1294:
        _os_log_impl(&dword_181A37000, v581, v582, v583, buf, 0xCu);
      }
    }

LABEL_1295:
    if (v580)
    {
      free(v580);
    }

LABEL_1297:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_http1_disconnect";
    v93 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v93, iterate_block, aBlock))
    {
      goto LABEL_1311;
    }

    if (LOBYTE(iterate_block[0]) == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v94 = gLogObj;
      v95 = iterate_block[0];
      if (!os_log_type_enabled(gLogObj, iterate_block[0]))
      {
        goto LABEL_1311;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v96 = "%{public}s called with null http1_stream";
      goto LABEL_1309;
    }

    if (aBlock[0] != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v94 = gLogObj;
      v95 = iterate_block[0];
      if (!os_log_type_enabled(gLogObj, iterate_block[0]))
      {
        goto LABEL_1311;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v96 = "%{public}s called with null http1_stream, backtrace limit exceeded";
      goto LABEL_1309;
    }

    v755 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v752 = gLogObj;
    v753 = iterate_block[0];
    v756 = os_log_type_enabled(gLogObj, iterate_block[0]);
    if (v755)
    {
      if (v756)
      {
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_protocol_http1_disconnect";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v755;
        _os_log_impl(&dword_181A37000, v752, v753, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v755);
      if (!v93)
      {
        return;
      }

LABEL_1312:
      free(v93);
      return;
    }

    if (v756)
    {
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v96 = "%{public}s called with null http1_stream, no backtrace";
LABEL_1316:
      v757 = v752;
      v758 = v753;
      goto LABEL_1310;
    }

    goto LABEL_1311;
  }

  v9 = (handle + 8);
LABEL_17:
  v10 = *v9;
  if (!*v9)
  {
    goto LABEL_1297;
  }

  if (!*(v10 + 248))
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_http1_disconnect";
    v93 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v93, iterate_block, aBlock))
    {
      goto LABEL_1311;
    }

    if (LOBYTE(iterate_block[0]) == 17)
    {
      v94 = __nwlog_obj();
      v95 = iterate_block[0];
      if (!os_log_type_enabled(v94, iterate_block[0]))
      {
        goto LABEL_1311;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v96 = "%{public}s called with null http1_stream->protocol_http1";
      goto LABEL_1309;
    }

    if (aBlock[0] != 1)
    {
      v94 = __nwlog_obj();
      v95 = iterate_block[0];
      if (!os_log_type_enabled(v94, iterate_block[0]))
      {
        goto LABEL_1311;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v96 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
      goto LABEL_1309;
    }

    v104 = __nw_create_backtrace_string();
    v94 = __nwlog_obj();
    v95 = iterate_block[0];
    v584 = os_log_type_enabled(v94, iterate_block[0]);
    if (!v104)
    {
      if (!v584)
      {
        goto LABEL_1311;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http1_disconnect";
      v96 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
      goto LABEL_1309;
    }

    if (!v584)
    {
      goto LABEL_168;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_protocol_http1_disconnect";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v104;
    v106 = "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s";
LABEL_167:
    _os_log_impl(&dword_181A37000, v94, v95, v106, buf, 0x16u);
LABEL_168:
    free(v104);
    if (!v93)
    {
      return;
    }

    goto LABEL_1312;
  }

  v11 = *(v10 + 428);
  *(v10 + 428) = v11 | 0x20;
  v12 = *(v10 + 256);
  v991 = v7;
  if (v12)
  {
    v13 = *(v12 + 480);
    if (v13)
    {
      v14 = *(v12 + 488);
      if (v14)
      {
        if ((*(v14 + 428) & 0x4000) != 0)
        {
          v29 = *(v12 + 872);
          if ((v29 & 4) == 0)
          {
            if (*(v12 + 158))
            {
              goto LABEL_99;
            }

            if (gLogDatapath != 1)
            {
              goto LABEL_99;
            }

            v17 = __nwlog_obj();
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_99;
            }

            v30 = *(v12 + 488);
            v31 = *(*(v12 + 480) + 372);
            v32 = *(v12 + 860);
            if (v30)
            {
              LODWORD(v30) = *(v30 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_connection_can_be_reused";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v12 + 74;
            HIWORD(buf[2]) = 2080;
            v1007 = " ";
            *v1008 = 1024;
            *&v1008[2] = v31;
            *&v1008[6] = 1024;
            *&v1008[8] = v32;
            *&v1008[12] = 1024;
            *&v1008[14] = v30;
            v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because the message is not complete";
            goto LABEL_1371;
          }

          if ((v29 & 0x20) == 0)
          {
            if (*(v12 + 158))
            {
              goto LABEL_99;
            }

            if (gLogDatapath != 1)
            {
              goto LABEL_99;
            }

            v17 = __nwlog_obj();
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_99;
            }

            v36 = *(v12 + 488);
            v37 = *(*(v12 + 480) + 372);
            v38 = *(v12 + 860);
            if (v36)
            {
              LODWORD(v36) = *(v36 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_connection_can_be_reused";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v12 + 74;
            HIWORD(buf[2]) = 2080;
            v1007 = " ";
            *v1008 = 1024;
            *&v1008[2] = v37;
            *&v1008[6] = 1024;
            *&v1008[8] = v38;
            *&v1008[12] = 1024;
            *&v1008[14] = v36;
            v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because the outbound message is not complete";
            goto LABEL_1371;
          }

          if ((v29 & 8) == 0)
          {
            if (*(v12 + 158))
            {
              goto LABEL_99;
            }

            if (gLogDatapath != 1)
            {
              goto LABEL_99;
            }

            v17 = __nwlog_obj();
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_99;
            }

            v46 = *(v12 + 488);
            v47 = *(*(v12 + 480) + 372);
            v48 = *(v12 + 860);
            if (v46)
            {
              LODWORD(v46) = *(v46 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_connection_can_be_reused";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v12 + 74;
            HIWORD(buf[2]) = 2080;
            v1007 = " ";
            *v1008 = 1024;
            *&v1008[2] = v47;
            *&v1008[6] = 1024;
            *&v1008[8] = v48;
            *&v1008[12] = 1024;
            *&v1008[14] = v46;
            v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because keep alive is false";
            goto LABEL_1371;
          }
        }

        else if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v619 = __nwlog_obj();
          v620 = os_log_type_enabled(v619, OS_LOG_TYPE_DEBUG);
          v13 = *(v12 + 480);
          if (v620)
          {
            v621 = *(v13 + 372);
            v622 = *(v12 + 860);
            v623 = *(v12 + 488);
            if (v623)
            {
              LODWORD(v623) = *(v623 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_connection_can_be_reused";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v12 + 74;
            HIWORD(buf[2]) = 2080;
            v1007 = " ";
            *v1008 = 1024;
            *&v1008[2] = v621;
            *&v1008[6] = 1024;
            *&v1008[8] = v622;
            *&v1008[12] = 1024;
            *&v1008[14] = v623;
            _os_log_impl(&dword_181A37000, v619, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection may be reusable because the current stream didn't use it", buf, 0x32u);
            v13 = *(v12 + 480);
          }
        }

        v15 = *(v13 + 376);
        if ((v15 & 0x10) != 0)
        {
          if (*(v12 + 158))
          {
            goto LABEL_99;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_99;
          }

          v17 = __nwlog_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_99;
          }

          v33 = *(v12 + 488);
          v34 = *(*(v12 + 480) + 372);
          v35 = *(v12 + 860);
          if (v33)
          {
            LODWORD(v33) = *(v33 + 424);
          }

          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_connection_can_be_reused";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v12 + 74;
          HIWORD(buf[2]) = 2080;
          v1007 = " ";
          *v1008 = 1024;
          *&v1008[2] = v34;
          *&v1008[6] = 1024;
          *&v1008[8] = v35;
          *&v1008[12] = 1024;
          *&v1008[14] = v33;
          v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because pool is closed for new connections";
          goto LABEL_1371;
        }

        v16 = *(v12 + 872);
        if ((v16 & 0x200) != 0)
        {
          if (*(v12 + 158))
          {
            goto LABEL_99;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_99;
          }

          v17 = __nwlog_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_99;
          }

          v43 = *(v12 + 488);
          v44 = *(*(v12 + 480) + 372);
          v45 = *(v12 + 860);
          if (v43)
          {
            LODWORD(v43) = *(v43 + 424);
          }

          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_connection_can_be_reused";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v12 + 74;
          HIWORD(buf[2]) = 2080;
          v1007 = " ";
          *v1008 = 1024;
          *&v1008[2] = v44;
          *&v1008[6] = 1024;
          *&v1008[8] = v45;
          *&v1008[12] = 1024;
          *&v1008[14] = v43;
          v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it was upgraded";
          goto LABEL_1371;
        }

        if ((v16 & 0x40) == 0)
        {
          if (*(v12 + 158))
          {
            goto LABEL_99;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_99;
          }

          v17 = __nwlog_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_99;
          }

          v18 = *(v12 + 488);
          v19 = *(*(v12 + 480) + 372);
          v20 = *(v12 + 860);
          if (v18)
          {
            LODWORD(v18) = *(v18 + 424);
          }

          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_connection_can_be_reused";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v12 + 74;
          HIWORD(buf[2]) = 2080;
          v1007 = " ";
          *v1008 = 1024;
          *&v1008[2] = v19;
          *&v1008[6] = 1024;
          *&v1008[8] = v20;
          *&v1008[12] = 1024;
          *&v1008[14] = v18;
          v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it was never connected";
LABEL_1371:
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, v21, buf, 0x32u);
LABEL_99:
          nw_protocol_disconnect(*(v12 + 32), v12);
          v28 = v991;
LABEL_100:
          if ((*(v28 + 376) & 1) == 0 || (*(v12 + 874) & 2) == 0)
          {
            goto LABEL_102;
          }

          if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v711 = __nwlog_obj();
            v712 = os_log_type_enabled(v711, OS_LOG_TYPE_DEBUG);
            v28 = v991;
            if (v712)
            {
              v713 = *(v12 + 488);
              v714 = *(*(v12 + 480) + 372);
              v715 = *(v12 + 860);
              if (v713)
              {
                LODWORD(v713) = *(v713 + 424);
              }

              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_protocol_http1_disconnect";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v12 + 74;
              HIWORD(buf[2]) = 2080;
              v1007 = " ";
              *v1008 = 1024;
              *&v1008[2] = v714;
              *&v1008[6] = 1024;
              *&v1008[8] = v715;
              *&v1008[12] = 1024;
              *&v1008[14] = v713;
              *&v1008[18] = 2048;
              *&v1008[20] = v12;
              _os_log_impl(&dword_181A37000, v711, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> triggering new flow on server connection %p, more input available", buf, 0x3Cu);
              v28 = v991;
            }
          }

          if ((*(v28 + 376) & 1) == 0)
          {
            if (*(v28 + 158))
            {
              return;
            }

            if (gLogDatapath != 1)
            {
              return;
            }

            v67 = __nwlog_obj();
            if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              return;
            }

            v70 = *(v991 + 372);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_new_flow_valid";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v991 + 74;
            HIWORD(buf[2]) = 2080;
            v1007 = " ";
            *v1008 = 1024;
            *&v1008[2] = v70;
            v69 = "%{public}s %{public}s%s<i%u> called when not in server mode, ignoring";
            goto LABEL_258;
          }

          v71 = *(v28 + 328);
          if (v71)
          {
            v72 = *v71;
            if (v72 && *v72)
            {
              v73 = *(v28 + 264);
              if (v73)
              {
                v74 = _nw_parameters_copy(v73);
                *(v991 + 224) = v12;
                if ((***(v991 + 328))(*(v991 + 328), *(v991 + 280), v74) && *(v12 + 488) && !*(v991 + 224))
                {
                  if ((*(v991 + 158) & 1) == 0 && gLogDatapath == 1)
                  {
                    v911 = __nwlog_obj();
                    if (os_log_type_enabled(v911, OS_LOG_TYPE_DEBUG))
                    {
                      v912 = *(v991 + 372);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v991 + 74;
                      HIWORD(buf[2]) = 2080;
                      v1007 = " ";
                      *v1008 = 1024;
                      *&v1008[2] = v912;
                      _os_log_impl(&dword_181A37000, v911, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> sucessfully associated new flow stream with connection, awaiting connected", buf, 0x26u);
                    }
                  }

                  *(v12 + 874) &= ~2u;
                  goto LABEL_751;
                }

                if ((*(v991 + 158) & 1) == 0)
                {
                  v75 = __nwlog_obj();
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                  {
                    v76 = *(v991 + 372);
                    LODWORD(buf[0]) = 136447234;
                    *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v991 + 74;
                    HIWORD(buf[2]) = 2080;
                    v1007 = " ";
                    *v1008 = 1024;
                    *&v1008[2] = v76;
                    *&v1008[6] = 2048;
                    *&v1008[8] = v12;
                    _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> listen handler didn't accept the new flow, closing connection %p", buf, 0x30u);
                  }
                }

                if ((*(v12 + 872) & 0x100) != 0)
                {
                  if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                  {
                    v100 = __nwlog_obj();
                    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
                    {
                      v101 = *(v12 + 488);
                      v102 = *(*(v12 + 480) + 372);
                      v103 = *(v12 + 860);
                      if (v101)
                      {
                        LODWORD(v101) = *(v101 + 424);
                      }

                      LODWORD(buf[0]) = 136447490;
                      *(buf + 4) = "nw_http1_connection_close";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v12 + 74;
                      HIWORD(buf[2]) = 2080;
                      v1007 = " ";
                      *v1008 = 1024;
                      *&v1008[2] = v102;
                      *&v1008[6] = 1024;
                      *&v1008[8] = v103;
                      *&v1008[12] = 1024;
                      *&v1008[14] = v101;
                      _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already closed", buf, 0x32u);
                    }
                  }

                  goto LABEL_751;
                }

                *(v12 + 872) |= 0x100u;
                if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v859 = __nwlog_obj();
                  if (os_log_type_enabled(v859, OS_LOG_TYPE_DEBUG))
                  {
                    v860 = *(v12 + 488);
                    v861 = *(*(v12 + 480) + 372);
                    v862 = *(v12 + 860);
                    if (v860)
                    {
                      LODWORD(v860) = *(v860 + 424);
                    }

                    LODWORD(buf[0]) = 136447490;
                    *(buf + 4) = "nw_http1_connection_close";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v12 + 74;
                    HIWORD(buf[2]) = 2080;
                    v1007 = " ";
                    *v1008 = 1024;
                    *&v1008[2] = v861;
                    *&v1008[6] = 1024;
                    *&v1008[8] = v862;
                    *&v1008[12] = 1024;
                    *&v1008[14] = v860;
                    _os_log_impl(&dword_181A37000, v859, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
                  }
                }

                v77 = *(v12 + 480);
                if (!v77)
                {
                  __nwlog_obj();
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                  v855 = _os_log_send_and_compose_impl();
                  LOBYTE(iterate_block[0]) = 16;
                  aBlock[0] = 0;
                  if (!__nwlog_fault(v855, iterate_block, aBlock))
                  {
                    goto LABEL_1783;
                  }

                  if (LOBYTE(iterate_block[0]) == 17)
                  {
                    v856 = __nwlog_obj();
                    v857 = iterate_block[0];
                    if (!os_log_type_enabled(v856, iterate_block[0]))
                    {
                      goto LABEL_1783;
                    }

                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    v858 = "%{public}s called with null http1";
                  }

                  else if (aBlock[0] == 1)
                  {
                    v881 = __nw_create_backtrace_string();
                    v856 = __nwlog_obj();
                    v857 = iterate_block[0];
                    v882 = os_log_type_enabled(v856, iterate_block[0]);
                    if (v881)
                    {
                      if (v882)
                      {
                        LODWORD(buf[0]) = 136446466;
                        *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v881;
                        v883 = "%{public}s called with null http1, dumping backtrace:%{public}s";
                        v884 = buf;
LABEL_1586:
                        _os_log_impl(&dword_181A37000, v856, v857, v883, v884, 0x16u);
                        goto LABEL_1587;
                      }

                      goto LABEL_1587;
                    }

                    if (!v882)
                    {
                      goto LABEL_1783;
                    }

                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    v858 = "%{public}s called with null http1, no backtrace";
                  }

                  else
                  {
                    v856 = __nwlog_obj();
                    v857 = iterate_block[0];
                    if (!os_log_type_enabled(v856, iterate_block[0]))
                    {
                      goto LABEL_1783;
                    }

                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    v858 = "%{public}s called with null http1, backtrace limit exceeded";
                  }

                  v946 = buf;
LABEL_1782:
                  _os_log_impl(&dword_181A37000, v856, v857, v858, v946, 0xCu);
                  goto LABEL_1783;
                }

                if ((*(v12 + 872) & 0x800) != 0)
                {
                  if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                  {
                    v116 = __nwlog_obj();
                    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
                    {
                      v117 = *(v12 + 488);
                      v118 = *(*(v12 + 480) + 372);
                      v119 = *(v12 + 860);
                      if (v117)
                      {
                        LODWORD(v117) = *(v117 + 424);
                      }

                      LODWORD(buf[0]) = 136447490;
                      *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v12 + 74;
                      HIWORD(buf[2]) = 2080;
                      v1007 = " ";
                      *v1008 = 1024;
                      *&v1008[2] = v118;
                      *&v1008[6] = 1024;
                      *&v1008[8] = v119;
                      *&v1008[12] = 1024;
                      *&v1008[14] = v117;
                      _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
                      if (*(v12 + 488))
                      {
                        goto LABEL_751;
                      }

                      goto LABEL_743;
                    }
                  }

LABEL_742:
                  if (*(v12 + 488))
                  {
LABEL_751:
                    if (v74)
                    {
                      os_release(v74);
                    }

                    return;
                  }

LABEL_743:
                  v437 = *(v12 + 784);
                  if (v437)
                  {
                    nw_queue_set_timer_values(v437, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
                  }

                  else
                  {
                    if ((*(v12 + 158) & 1) == 0)
                    {
                      v438 = __nwlog_obj();
                      if (os_log_type_enabled(v438, OS_LOG_TYPE_ERROR))
                      {
                        v439 = *(v12 + 488);
                        v440 = *(*(v12 + 480) + 372);
                        v441 = *(v12 + 860);
                        if (v439)
                        {
                          LODWORD(v439) = *(v439 + 424);
                        }

                        LODWORD(buf[0]) = 136447490;
                        *(buf + 4) = "nw_http1_connection_close";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v12 + 74;
                        HIWORD(buf[2]) = 2080;
                        v1007 = " ";
                        *v1008 = 1024;
                        *&v1008[2] = v440;
                        *&v1008[6] = 1024;
                        *&v1008[8] = v441;
                        *&v1008[12] = 1024;
                        *&v1008[14] = v439;
                        _os_log_impl(&dword_181A37000, v438, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
                      }
                    }

                    v442 = *(v12 + 608);
                    v443 = *(v12 + 496);
                    buf[0] = MEMORY[0x1E69E9820];
                    buf[1] = 0x40000000;
                    buf[2] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
                    v1007 = &unk_1E6A32780;
                    *v1008 = v442;
                    nw_queue_context_async(v443, buf);
                  }

                  goto LABEL_751;
                }

                *(v12 + 872) |= 0x800u;
                v78 = *(v77 + 368) + 1;
                *(v77 + 368) = v78;
                if (v78 == v78 << 31 >> 31)
                {
LABEL_737:
                  if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                  {
                    v885 = __nwlog_obj();
                    if (os_log_type_enabled(v885, OS_LOG_TYPE_DEBUG))
                    {
                      v886 = *(v12 + 488);
                      v887 = *(*(v12 + 480) + 372);
                      v888 = *(v12 + 860);
                      if (v886)
                      {
                        LODWORD(v886) = *(v886 + 424);
                      }

                      v889 = *(v77 + 368) + *(v77 + 364);
                      LODWORD(buf[0]) = 136447746;
                      *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v12 + 74;
                      HIWORD(buf[2]) = 2080;
                      v1007 = " ";
                      *v1008 = 1024;
                      *&v1008[2] = v887;
                      *&v1008[6] = 1024;
                      *&v1008[8] = v888;
                      *&v1008[12] = 1024;
                      *&v1008[14] = v886;
                      *&v1008[18] = 1024;
                      *&v1008[20] = v889;
                      _os_log_impl(&dword_181A37000, v885, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
                    }
                  }

                  v434 = *(v12 + 496);
                  if (v434)
                  {
                    v435 = *(v12 + 480);
                    if (v435)
                    {
                      v436 = *(v435 + 200);
                      buf[0] = MEMORY[0x1E69E9820];
                      buf[1] = 0x40000000;
                      buf[2] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
                      v1007 = &unk_1E6A327A8;
                      *v1008 = v436;
                      nw_queue_context_async(v434, buf);
                      goto LABEL_742;
                    }

                    __nwlog_obj();
                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v855 = _os_log_send_and_compose_impl();
                    aBlock[0] = 16;
                    v1003[0] = 0;
                    if (!__nwlog_fault(v855, aBlock, v1003))
                    {
LABEL_1783:
                      if (v855)
                      {
                        free(v855);
                      }

                      if (*(v12 + 488))
                      {
                        goto LABEL_751;
                      }

                      goto LABEL_743;
                    }

                    if (aBlock[0] == 17)
                    {
                      v856 = __nwlog_obj();
                      v857 = aBlock[0];
                      if (!os_log_type_enabled(v856, aBlock[0]))
                      {
                        goto LABEL_1783;
                      }

                      LODWORD(iterate_block[0]) = 136446210;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      v858 = "%{public}s called with null http1";
                      goto LABEL_1781;
                    }

                    if (v1003[0] != 1)
                    {
                      v856 = __nwlog_obj();
                      v857 = aBlock[0];
                      if (!os_log_type_enabled(v856, aBlock[0]))
                      {
                        goto LABEL_1783;
                      }

                      LODWORD(iterate_block[0]) = 136446210;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      v858 = "%{public}s called with null http1, backtrace limit exceeded";
                      goto LABEL_1781;
                    }

                    v881 = __nw_create_backtrace_string();
                    v856 = __nwlog_obj();
                    v857 = aBlock[0];
                    v914 = os_log_type_enabled(v856, aBlock[0]);
                    if (!v881)
                    {
                      if (!v914)
                      {
                        goto LABEL_1783;
                      }

                      LODWORD(iterate_block[0]) = 136446210;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      v858 = "%{public}s called with null http1, no backtrace";
                      goto LABEL_1781;
                    }

                    if (v914)
                    {
                      LODWORD(iterate_block[0]) = 136446466;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      WORD2(iterate_block[1]) = 2082;
                      *(&iterate_block[1] + 6) = v881;
                      v883 = "%{public}s called with null http1, dumping backtrace:%{public}s";
                      goto LABEL_1585;
                    }
                  }

                  else
                  {
                    __nwlog_obj();
                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v855 = _os_log_send_and_compose_impl();
                    aBlock[0] = 16;
                    v1003[0] = 0;
                    if (!__nwlog_fault(v855, aBlock, v1003))
                    {
                      goto LABEL_1783;
                    }

                    if (aBlock[0] == 17)
                    {
                      v856 = __nwlog_obj();
                      v857 = aBlock[0];
                      if (!os_log_type_enabled(v856, aBlock[0]))
                      {
                        goto LABEL_1783;
                      }

                      LODWORD(iterate_block[0]) = 136446210;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      v858 = "%{public}s called with null http1_connection->context";
LABEL_1781:
                      v946 = iterate_block;
                      goto LABEL_1782;
                    }

                    if (v1003[0] != 1)
                    {
                      v856 = __nwlog_obj();
                      v857 = aBlock[0];
                      if (!os_log_type_enabled(v856, aBlock[0]))
                      {
                        goto LABEL_1783;
                      }

                      LODWORD(iterate_block[0]) = 136446210;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      v858 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
                      goto LABEL_1781;
                    }

                    v881 = __nw_create_backtrace_string();
                    v856 = __nwlog_obj();
                    v857 = aBlock[0];
                    v913 = os_log_type_enabled(v856, aBlock[0]);
                    if (!v881)
                    {
                      if (!v913)
                      {
                        goto LABEL_1783;
                      }

                      LODWORD(iterate_block[0]) = 136446210;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      v858 = "%{public}s called with null http1_connection->context, no backtrace";
                      goto LABEL_1781;
                    }

                    if (v913)
                    {
                      LODWORD(iterate_block[0]) = 136446466;
                      *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                      WORD2(iterate_block[1]) = 2082;
                      *(&iterate_block[1] + 6) = v881;
                      v883 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_1585:
                      v884 = iterate_block;
                      goto LABEL_1586;
                    }
                  }

LABEL_1587:
                  free(v881);
                  goto LABEL_1783;
                }

                __nwlog_obj();
                v79 = *(v77 + 368);
                LODWORD(buf[0]) = 136446978;
                *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = "http1->nonresuable_connections";
                HIWORD(buf[2]) = 2048;
                v1007 = 1;
                *v1008 = 2048;
                *&v1008[2] = v79;
                v80 = _os_log_send_and_compose_impl();
                LOBYTE(iterate_block[0]) = 16;
                aBlock[0] = 0;
                if (__nwlog_fault(v80, iterate_block, aBlock))
                {
                  if (LOBYTE(iterate_block[0]) == 17)
                  {
                    v81 = __nwlog_obj();
                    v82 = iterate_block[0];
                    if (os_log_type_enabled(v81, iterate_block[0]))
                    {
                      v83 = *(v77 + 368);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->nonresuable_connections";
                      HIWORD(buf[2]) = 2048;
                      v1007 = 1;
                      *v1008 = 2048;
                      *&v1008[2] = v83;
                      v84 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_733:
                      _os_log_impl(&dword_181A37000, v81, v82, v84, buf, 0x2Au);
                    }
                  }

                  else if (aBlock[0] == 1)
                  {
                    v127 = __nw_create_backtrace_string();
                    v81 = __nwlog_obj();
                    v82 = iterate_block[0];
                    v128 = os_log_type_enabled(v81, iterate_block[0]);
                    if (v127)
                    {
                      if (v128)
                      {
                        v129 = *(v77 + 368);
                        LODWORD(buf[0]) = 136447234;
                        *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = "http1->nonresuable_connections";
                        HIWORD(buf[2]) = 2048;
                        v1007 = 1;
                        *v1008 = 2048;
                        *&v1008[2] = v129;
                        *&v1008[10] = 2082;
                        *&v1008[12] = v127;
                        _os_log_impl(&dword_181A37000, v81, v82, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                      }

                      free(v127);
                      goto LABEL_734;
                    }

                    if (v128)
                    {
                      v433 = *(v77 + 368);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->nonresuable_connections";
                      HIWORD(buf[2]) = 2048;
                      v1007 = 1;
                      *v1008 = 2048;
                      *&v1008[2] = v433;
                      v84 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                      goto LABEL_733;
                    }
                  }

                  else
                  {
                    v81 = __nwlog_obj();
                    v82 = iterate_block[0];
                    if (os_log_type_enabled(v81, iterate_block[0]))
                    {
                      v422 = *(v77 + 368);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->nonresuable_connections";
                      HIWORD(buf[2]) = 2048;
                      v1007 = 1;
                      *v1008 = 2048;
                      *&v1008[2] = v422;
                      v84 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                      goto LABEL_733;
                    }
                  }
                }

LABEL_734:
                if (v80)
                {
                  free(v80);
                }

                *(v77 + 368) = -1;
                goto LABEL_737;
              }

              if ((*(v28 + 158) & 1) == 0)
              {
                v91 = __nwlog_obj();
                if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                {
                  v92 = *(v991 + 372);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v991 + 74;
                  HIWORD(buf[2]) = 2080;
                  v1007 = " ";
                  *v1008 = 1024;
                  *&v1008[2] = v92;
                  _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> http1->parameters is NULL when opening responder stream", buf, 0x26u);
                }
              }

              __nwlog_obj();
              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
              v93 = _os_log_send_and_compose_impl();
              LOBYTE(iterate_block[0]) = 16;
              aBlock[0] = 0;
              if (!__nwlog_fault(v93, iterate_block, aBlock))
              {
                goto LABEL_1311;
              }

              if (LOBYTE(iterate_block[0]) == 17)
              {
                v94 = __nwlog_obj();
                v95 = iterate_block[0];
                if (!os_log_type_enabled(v94, iterate_block[0]))
                {
                  goto LABEL_1311;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
                v96 = "%{public}s http1->parameters is NULL when opening responder stream";
LABEL_1309:
                v757 = v94;
                v758 = v95;
LABEL_1310:
                _os_log_impl(&dword_181A37000, v757, v758, v96, buf, 0xCu);
                goto LABEL_1311;
              }

              if (aBlock[0] != 1)
              {
                v94 = __nwlog_obj();
                v95 = iterate_block[0];
                if (!os_log_type_enabled(v94, iterate_block[0]))
                {
                  goto LABEL_1311;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
                v96 = "%{public}s http1->parameters is NULL when opening responder stream, backtrace limit exceeded";
                goto LABEL_1309;
              }

              v104 = __nw_create_backtrace_string();
              v94 = __nwlog_obj();
              v95 = iterate_block[0];
              v105 = os_log_type_enabled(v94, iterate_block[0]);
              if (!v104)
              {
                if (!v105)
                {
                  goto LABEL_1311;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
                v96 = "%{public}s http1->parameters is NULL when opening responder stream, no backtrace";
                goto LABEL_1309;
              }

              if (!v105)
              {
                goto LABEL_168;
              }

              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_http1_attempt_trigger_new_flow";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v104;
              v106 = "%{public}s http1->parameters is NULL when opening responder stream, dumping backtrace:%{public}s";
              goto LABEL_167;
            }

            if ((*(v28 + 158) & 1) == 0)
            {
              v716 = __nwlog_obj();
              if (os_log_type_enabled(v716, OS_LOG_TYPE_ERROR))
              {
                v717 = *(v991 + 372);
                LODWORD(buf[0]) = 136446978;
                *(buf + 4) = "nw_http1_new_flow_valid";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v991 + 74;
                HIWORD(buf[2]) = 2080;
                v1007 = " ";
                *v1008 = 1024;
                *&v1008[2] = v717;
                _os_log_impl(&dword_181A37000, v716, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> listen handler has no new_flow callback, ignoring incoming flow", buf, 0x26u);
              }
            }

            if ((*(v12 + 872) & 0x100) == 0)
            {
              *(v12 + 872) |= 0x100u;
              if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
              {
                v971 = __nwlog_obj();
                if (os_log_type_enabled(v971, OS_LOG_TYPE_DEBUG))
                {
                  v972 = *(v12 + 488);
                  v973 = *(*(v12 + 480) + 372);
                  v974 = *(v12 + 860);
                  if (v972)
                  {
                    LODWORD(v972) = *(v972 + 424);
                  }

                  LODWORD(buf[0]) = 136447490;
                  *(buf + 4) = "nw_http1_connection_close";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v12 + 74;
                  HIWORD(buf[2]) = 2080;
                  v1007 = " ";
                  *v1008 = 1024;
                  *&v1008[2] = v973;
                  *&v1008[6] = 1024;
                  *&v1008[8] = v974;
                  *&v1008[12] = 1024;
                  *&v1008[14] = v972;
                  _os_log_impl(&dword_181A37000, v971, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
                }
              }

              v718 = *(v12 + 480);
              if (!v718)
              {
                goto LABEL_1815;
              }

              if ((*(v12 + 872) & 0x800) != 0)
              {
                if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v793 = __nwlog_obj();
                  if (os_log_type_enabled(v793, OS_LOG_TYPE_DEBUG))
                  {
                    v794 = *(v12 + 488);
                    v795 = *(*(v12 + 480) + 372);
                    v796 = *(v12 + 860);
                    if (v794)
                    {
                      LODWORD(v794) = *(v794 + 424);
                    }

                    LODWORD(buf[0]) = 136447490;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v12 + 74;
                    HIWORD(buf[2]) = 2080;
                    v1007 = " ";
                    *v1008 = 1024;
                    *&v1008[2] = v795;
                    *&v1008[6] = 1024;
                    *&v1008[8] = v796;
                    *&v1008[12] = 1024;
                    *&v1008[14] = v794;
                    _os_log_impl(&dword_181A37000, v793, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
                  }
                }

                goto LABEL_1757;
              }

              *(v12 + 872) |= 0x800u;
              v719 = *(v718 + 368) + 1;
              *(v718 + 368) = v719;
              if (v719 == v719 << 31 >> 31)
              {
LABEL_1752:
                if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v977 = __nwlog_obj();
                  if (os_log_type_enabled(v977, OS_LOG_TYPE_DEBUG))
                  {
                    v978 = *(v12 + 488);
                    v979 = *(*(v12 + 480) + 372);
                    v980 = *(v12 + 860);
                    if (v978)
                    {
                      LODWORD(v978) = *(v978 + 424);
                    }

                    v981 = *(v718 + 368) + *(v718 + 364);
                    LODWORD(buf[0]) = 136447746;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v12 + 74;
                    HIWORD(buf[2]) = 2080;
                    v1007 = " ";
                    *v1008 = 1024;
                    *&v1008[2] = v979;
                    *&v1008[6] = 1024;
                    *&v1008[8] = v980;
                    *&v1008[12] = 1024;
                    *&v1008[14] = v978;
                    *&v1008[18] = 1024;
                    *&v1008[20] = v981;
                    _os_log_impl(&dword_181A37000, v977, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
                  }
                }

                v948 = *(v12 + 496);
                if (v948)
                {
                  v949 = *(v12 + 480);
                  if (v949)
                  {
                    v950 = *(v949 + 200);
                    buf[0] = MEMORY[0x1E69E9820];
                    buf[1] = 0x40000000;
                    buf[2] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
                    v1007 = &unk_1E6A327A8;
                    *v1008 = v950;
                    nw_queue_context_async(v948, buf);
                    goto LABEL_1757;
                  }

                  __nwlog_obj();
                  LODWORD(iterate_block[0]) = 136446210;
                  *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                  v967 = _os_log_send_and_compose_impl();
                  aBlock[0] = 16;
                  v1003[0] = 0;
                  if (!__nwlog_fault(v967, aBlock, v1003))
                  {
                    goto LABEL_1866;
                  }

                  if (aBlock[0] == 17)
                  {
                    v968 = __nwlog_obj();
                    v969 = aBlock[0];
                    if (!os_log_type_enabled(v968, aBlock[0]))
                    {
                      goto LABEL_1866;
                    }

                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v970 = "%{public}s called with null http1";
                    goto LABEL_1864;
                  }

                  if (v1003[0] != 1)
                  {
                    v968 = __nwlog_obj();
                    v969 = aBlock[0];
                    if (!os_log_type_enabled(v968, aBlock[0]))
                    {
                      goto LABEL_1866;
                    }

                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v970 = "%{public}s called with null http1, backtrace limit exceeded";
                    goto LABEL_1864;
                  }

                  v982 = __nw_create_backtrace_string();
                  v968 = __nwlog_obj();
                  v969 = aBlock[0];
                  v985 = os_log_type_enabled(v968, aBlock[0]);
                  if (!v982)
                  {
                    if (!v985)
                    {
                      goto LABEL_1866;
                    }

                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v970 = "%{public}s called with null http1, no backtrace";
                    goto LABEL_1864;
                  }

                  if (v985)
                  {
                    LODWORD(iterate_block[0]) = 136446466;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    WORD2(iterate_block[1]) = 2082;
                    *(&iterate_block[1] + 6) = v982;
                    v984 = "%{public}s called with null http1, dumping backtrace:%{public}s";
                    goto LABEL_1850;
                  }
                }

                else
                {
                  __nwlog_obj();
                  LODWORD(iterate_block[0]) = 136446210;
                  *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                  v967 = _os_log_send_and_compose_impl();
                  aBlock[0] = 16;
                  v1003[0] = 0;
                  if (!__nwlog_fault(v967, aBlock, v1003))
                  {
                    goto LABEL_1866;
                  }

                  if (aBlock[0] == 17)
                  {
                    v968 = __nwlog_obj();
                    v969 = aBlock[0];
                    if (!os_log_type_enabled(v968, aBlock[0]))
                    {
                      goto LABEL_1866;
                    }

                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v970 = "%{public}s called with null http1_connection->context";
LABEL_1864:
                    v986 = iterate_block;
                    goto LABEL_1865;
                  }

                  if (v1003[0] != 1)
                  {
                    v968 = __nwlog_obj();
                    v969 = aBlock[0];
                    if (!os_log_type_enabled(v968, aBlock[0]))
                    {
                      goto LABEL_1866;
                    }

                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v970 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
                    goto LABEL_1864;
                  }

                  v982 = __nw_create_backtrace_string();
                  v968 = __nwlog_obj();
                  v969 = aBlock[0];
                  v983 = os_log_type_enabled(v968, aBlock[0]);
                  if (!v982)
                  {
                    if (!v983)
                    {
                      goto LABEL_1866;
                    }

                    LODWORD(iterate_block[0]) = 136446210;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    v970 = "%{public}s called with null http1_connection->context, no backtrace";
                    goto LABEL_1864;
                  }

                  if (v983)
                  {
                    LODWORD(iterate_block[0]) = 136446466;
                    *(iterate_block + 4) = "nw_http1_match_idle_connection_with_pending_stream_async";
                    WORD2(iterate_block[1]) = 2082;
                    *(&iterate_block[1] + 6) = v982;
                    v984 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_1850:
                    _os_log_impl(&dword_181A37000, v968, v969, v984, iterate_block, 0x16u);
                  }
                }

                free(v982);
                if (!v967)
                {
LABEL_1757:
                  if (!*(v12 + 488))
                  {
                    v951 = *(v12 + 784);
                    if (v951)
                    {
                      nw_queue_set_timer_values(v951, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
                    }

                    else
                    {
                      if ((*(v12 + 158) & 1) == 0)
                      {
                        v952 = __nwlog_obj();
                        if (os_log_type_enabled(v952, OS_LOG_TYPE_ERROR))
                        {
                          v953 = *(v12 + 488);
                          v954 = *(*(v12 + 480) + 372);
                          v955 = *(v12 + 860);
                          if (v953)
                          {
                            LODWORD(v953) = *(v953 + 424);
                          }

                          LODWORD(buf[0]) = 136447490;
                          *(buf + 4) = "nw_http1_connection_close";
                          WORD2(buf[1]) = 2082;
                          *(&buf[1] + 6) = v12 + 74;
                          HIWORD(buf[2]) = 2080;
                          v1007 = " ";
                          *v1008 = 1024;
                          *&v1008[2] = v954;
                          *&v1008[6] = 1024;
                          *&v1008[8] = v955;
                          *&v1008[12] = 1024;
                          *&v1008[14] = v953;
                          _os_log_impl(&dword_181A37000, v952, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
                        }
                      }

                      v956 = *(v12 + 608);
                      v957 = *(v12 + 496);
                      buf[0] = MEMORY[0x1E69E9820];
                      buf[1] = 0x40000000;
                      buf[2] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
                      v1007 = &unk_1E6A32780;
                      *v1008 = v956;
                      nw_queue_context_async(v957, buf);
                    }
                  }

                  return;
                }

LABEL_1867:
                free(v967);
                goto LABEL_1757;
              }

              __nwlog_obj();
              v720 = *(v718 + 368);
              LODWORD(buf[0]) = 136446978;
              *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = "http1->nonresuable_connections";
              HIWORD(buf[2]) = 2048;
              v1007 = 1;
              *v1008 = 2048;
              *&v1008[2] = v720;
              v721 = _os_log_send_and_compose_impl();
              LOBYTE(iterate_block[0]) = 16;
              aBlock[0] = 0;
              if (__nwlog_fault(v721, iterate_block, aBlock))
              {
                if (LOBYTE(iterate_block[0]) == 17)
                {
                  v722 = __nwlog_obj();
                  v723 = iterate_block[0];
                  if (os_log_type_enabled(v722, iterate_block[0]))
                  {
                    v724 = *(v718 + 368);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->nonresuable_connections";
                    HIWORD(buf[2]) = 2048;
                    v1007 = 1;
                    *v1008 = 2048;
                    *&v1008[2] = v724;
                    v725 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_1748:
                    _os_log_impl(&dword_181A37000, v722, v723, v725, buf, 0x2Au);
                  }
                }

                else if (aBlock[0] == 1)
                {
                  v890 = __nw_create_backtrace_string();
                  v722 = __nwlog_obj();
                  v723 = iterate_block[0];
                  v891 = os_log_type_enabled(v722, iterate_block[0]);
                  if (v890)
                  {
                    if (v891)
                    {
                      v892 = *(v718 + 368);
                      LODWORD(buf[0]) = 136447234;
                      *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->nonresuable_connections";
                      HIWORD(buf[2]) = 2048;
                      v1007 = 1;
                      *v1008 = 2048;
                      *&v1008[2] = v892;
                      *&v1008[10] = 2082;
                      *&v1008[12] = v890;
                      _os_log_impl(&dword_181A37000, v722, v723, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v890);
                    goto LABEL_1749;
                  }

                  if (v891)
                  {
                    v947 = *(v718 + 368);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->nonresuable_connections";
                    HIWORD(buf[2]) = 2048;
                    v1007 = 1;
                    *v1008 = 2048;
                    *&v1008[2] = v947;
                    v725 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                    goto LABEL_1748;
                  }
                }

                else
                {
                  v722 = __nwlog_obj();
                  v723 = iterate_block[0];
                  if (os_log_type_enabled(v722, iterate_block[0]))
                  {
                    v915 = *(v718 + 368);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->nonresuable_connections";
                    HIWORD(buf[2]) = 2048;
                    v1007 = 1;
                    *v1008 = 2048;
                    *&v1008[2] = v915;
                    v725 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                    goto LABEL_1748;
                  }
                }
              }

LABEL_1749:
              if (v721)
              {
                free(v721);
              }

              *(v718 + 368) = -1;
              goto LABEL_1752;
            }

            if (*(v12 + 158))
            {
              return;
            }

            if (gLogDatapath != 1)
            {
              return;
            }

            v85 = __nwlog_obj();
            if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
            {
              return;
            }

            v748 = *(v12 + 488);
            v749 = *(*(v12 + 480) + 372);
            v750 = *(v12 + 860);
            if (v748)
            {
              LODWORD(v748) = *(v748 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_connection_close";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v12 + 74;
            HIWORD(buf[2]) = 2080;
            v1007 = " ";
            *v1008 = 1024;
            *&v1008[2] = v749;
            *&v1008[6] = 1024;
            *&v1008[8] = v750;
            *&v1008[12] = 1024;
            *&v1008[14] = v748;
            v69 = "%{public}s %{public}s%s<i%u:c%u:s%u> already closed";
          }

          else
          {
            if (*(v12 + 158))
            {
              return;
            }

            v85 = __nwlog_obj();
            if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
            {
              return;
            }

            v86 = *(v12 + 488);
            v87 = *(*(v12 + 480) + 372);
            v88 = *(v12 + 860);
            if (v86)
            {
              LODWORD(v86) = *(v86 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_new_flow_valid";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v12 + 74;
            HIWORD(buf[2]) = 2080;
            v1007 = " ";
            *v1008 = 1024;
            *&v1008[2] = v87;
            *&v1008[6] = 1024;
            *&v1008[8] = v88;
            *&v1008[12] = 1024;
            *&v1008[14] = v86;
            v69 = "%{public}s %{public}s%s<i%u:c%u:s%u> called without listen handler, ignoring";
          }

          v89 = v85;
          v90 = 50;
LABEL_259:
          _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, v69, buf, v90);
          return;
        }

        if ((*(v12 + 872) & 0x100) != 0)
        {
          if (*(v12 + 158))
          {
            goto LABEL_99;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_99;
          }

          v17 = __nwlog_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_99;
          }

          v803 = *(v12 + 488);
          v804 = *(*(v12 + 480) + 372);
          v805 = *(v12 + 860);
          if (v803)
          {
            LODWORD(v803) = *(v803 + 424);
          }

          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_connection_can_be_reused";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v12 + 74;
          HIWORD(buf[2]) = 2080;
          v1007 = " ";
          *v1008 = 1024;
          *&v1008[2] = v804;
          *&v1008[6] = 1024;
          *&v1008[8] = v805;
          *&v1008[12] = 1024;
          *&v1008[14] = v803;
          v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it has been closed";
          goto LABEL_1371;
        }

        if (*(v12 + 864) == 4)
        {
          if (*(v12 + 158))
          {
            goto LABEL_99;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_99;
          }

          v17 = __nwlog_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_99;
          }

          v49 = *(v12 + 488);
          v50 = *(*(v12 + 480) + 372);
          v51 = *(v12 + 860);
          if (v49)
          {
            LODWORD(v49) = *(v49 + 424);
          }

          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_connection_can_be_reused";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v12 + 74;
          HIWORD(buf[2]) = 2080;
          v1007 = " ";
          *v1008 = 1024;
          *&v1008[2] = v50;
          *&v1008[6] = 1024;
          *&v1008[8] = v51;
          *&v1008[12] = 1024;
          *&v1008[14] = v49;
          v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because input has finished from below";
          goto LABEL_1371;
        }

        if ((v15 & 8) != 0)
        {
          if (*(v12 + 158))
          {
            goto LABEL_99;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_99;
          }

          v17 = __nwlog_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_99;
          }

          v123 = *(v12 + 488);
          v124 = *(*(v12 + 480) + 372);
          v125 = *(v12 + 860);
          if (v123)
          {
            LODWORD(v123) = *(v123 + 424);
          }

          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_connection_can_be_reused";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v12 + 74;
          HIWORD(buf[2]) = 2080;
          v1007 = " ";
          *v1008 = 1024;
          *&v1008[2] = v124;
          *&v1008[6] = 1024;
          *&v1008[8] = v125;
          *&v1008[12] = 1024;
          *&v1008[14] = v123;
          v21 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection cannot be reused because it is websocket";
          goto LABEL_1371;
        }

        if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v903 = __nwlog_obj();
          if (os_log_type_enabled(v903, OS_LOG_TYPE_DEBUG))
          {
            v904 = *(v12 + 488);
            v905 = *(*(v12 + 480) + 372);
            v906 = *(v12 + 860);
            if (v904)
            {
              LODWORD(v904) = *(v904 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_connection_can_be_reused";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v12 + 74;
            HIWORD(buf[2]) = 2080;
            v1007 = " ";
            *v1008 = 1024;
            *&v1008[2] = v905;
            *&v1008[6] = 1024;
            *&v1008[8] = v906;
            *&v1008[12] = 1024;
            *&v1008[14] = v904;
            _os_log_impl(&dword_181A37000, v903, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection can be reused", buf, 0x32u);
          }
        }

        v107 = *(v12 + 488);
        if (v107)
        {
          if (*(v107 + 248))
          {
            v108 = *(v107 + 256);
            if (v108)
            {
              if (*(v108 + 488) == v107)
              {
                if ((*(v107 + 158) & 1) == 0)
                {
                  v130 = __nwlog_obj();
                  if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
                  {
                    v131 = *(v107 + 256);
                    v132 = *(*(v107 + 248) + 372);
                    if (v131)
                    {
                      LODWORD(v131) = *(v131 + 860);
                    }

                    v133 = *(v107 + 424);
                    LODWORD(buf[0]) = 136448002;
                    *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v107 + 74;
                    HIWORD(buf[2]) = 2080;
                    v1007 = " ";
                    *v1008 = 1024;
                    *&v1008[2] = v132;
                    *&v1008[6] = 1024;
                    *&v1008[8] = v131;
                    *&v1008[12] = 1024;
                    *&v1008[14] = v133;
                    *&v1008[18] = 2048;
                    *&v1008[20] = v107;
                    *&v1008[28] = 2048;
                    *&v1008[30] = v108;
                    _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) finished with connection %p", buf, 0x46u);
                  }
                }

                if (gLogDatapath == 1)
                {
                  v933 = __nwlog_obj();
                  if (os_log_type_enabled(v933, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_protocol_finalize_temp_frame_array";
                    _os_log_impl(&dword_181A37000, v933, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
                  }
                }

                nw_frame_array_finalize(v108 + 632, 1, 0);
                *(v107 + 256) = 0;
                *(v108 + 488) = 0;
                nw_protocol_set_output_handler(v107, 0);
                nw_protocol_set_input_handler(v108, 0);
                v134 = *(v12 + 480);
                if (v134)
                {
                  goto LABEL_763;
                }

                goto LABEL_1797;
              }

              __nwlog_obj();
              v109 = *(v108 + 488);
              LODWORD(buf[0]) = 136446978;
              *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v108;
              HIWORD(buf[2]) = 2048;
              v1007 = v107;
              *v1008 = 2048;
              *&v1008[2] = v109;
              v110 = _os_log_send_and_compose_impl();
              LOBYTE(iterate_block[0]) = 16;
              aBlock[0] = 0;
              if (__nwlog_fault(v110, iterate_block, aBlock))
              {
                if (LOBYTE(iterate_block[0]) == 17)
                {
                  v112 = __nwlog_obj();
                  v113 = iterate_block[0];
                  if (!os_log_type_enabled(v112, iterate_block[0]))
                  {
                    goto LABEL_760;
                  }

                  v114 = *(v108 + 488);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v108;
                  HIWORD(buf[2]) = 2048;
                  v1007 = v107;
                  *v1008 = 2048;
                  *&v1008[2] = v114;
                  v115 = "%{public}s Connection %p does not already have stream %p, has %p";
LABEL_759:
                  _os_log_impl(&dword_181A37000, v112, v113, v115, buf, 0x2Au);
                  goto LABEL_760;
                }

                if (aBlock[0] != 1)
                {
                  v112 = __nwlog_obj();
                  v113 = iterate_block[0];
                  if (!os_log_type_enabled(v112, iterate_block[0]))
                  {
                    goto LABEL_760;
                  }

                  v427 = *(v108 + 488);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v108;
                  HIWORD(buf[2]) = 2048;
                  v1007 = v107;
                  *v1008 = 2048;
                  *&v1008[2] = v427;
                  v115 = "%{public}s Connection %p does not already have stream %p, has %p, backtrace limit exceeded";
                  goto LABEL_759;
                }

                v135 = __nw_create_backtrace_string();
                v112 = __nwlog_obj();
                v113 = iterate_block[0];
                v136 = os_log_type_enabled(v112, iterate_block[0]);
                if (!v135)
                {
                  if (!v136)
                  {
                    goto LABEL_760;
                  }

                  v445 = *(v108 + 488);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v108;
                  HIWORD(buf[2]) = 2048;
                  v1007 = v107;
                  *v1008 = 2048;
                  *&v1008[2] = v445;
                  v115 = "%{public}s Connection %p does not already have stream %p, has %p, no backtrace";
                  goto LABEL_759;
                }

                if (v136)
                {
                  v137 = *(v108 + 488);
                  LODWORD(buf[0]) = 136447234;
                  *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v108;
                  HIWORD(buf[2]) = 2048;
                  v1007 = v107;
                  *v1008 = 2048;
                  *&v1008[2] = v137;
                  *&v1008[10] = 2082;
                  *&v1008[12] = v135;
                  _os_log_impl(&dword_181A37000, v112, v113, "%{public}s Connection %p does not already have stream %p, has %p, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v135);
              }

LABEL_760:
              if (v110)
              {
                free(v110);
              }

              v134 = *(v12 + 480);
              if (v134)
              {
LABEL_763:
                if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v907 = __nwlog_obj();
                  if (os_log_type_enabled(v907, OS_LOG_TYPE_DEBUG))
                  {
                    v908 = *(v12 + 488);
                    v909 = *(*(v12 + 480) + 372);
                    v910 = *(v12 + 860);
                    if (v908)
                    {
                      LODWORD(v908) = *(v908 + 424);
                    }

                    LODWORD(buf[0]) = 136447746;
                    *(buf + 4) = "nw_http1_add_idle_connection";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v12 + 74;
                    HIWORD(buf[2]) = 2080;
                    v1007 = " ";
                    *v1008 = 1024;
                    *&v1008[2] = v909;
                    *&v1008[6] = 1024;
                    *&v1008[8] = v910;
                    *&v1008[12] = 1024;
                    *&v1008[14] = v908;
                    *&v1008[18] = 2048;
                    *&v1008[20] = v12;
                    _os_log_impl(&dword_181A37000, v907, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for connection (%p)", buf, 0x3Cu);
                  }
                }

                if ((*(v12 + 874) & 8) == 0)
                {
                  v446 = (v134 + 208);
                  v447 = *(v134 + 208);
                  *(v12 + 592) = v447;
                  if (v447)
                  {
                    v448 = (v447 + 600);
                  }

                  else
                  {
                    v448 = (v134 + 216);
                  }

                  *v448 = v12 + 592;
                  *v446 = v12;
                  *(v12 + 600) = v446;
                  v449 = *(v134 + 340) + 1;
                  *(v134 + 340) = v449;
                  if (v449 == v449 << 31 >> 31)
                  {
                    goto LABEL_1080;
                  }

                  __nwlog_obj();
                  v450 = *(v134 + 340);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_add_idle_connection";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = "http1->idle_connections_count";
                  HIWORD(buf[2]) = 2048;
                  v1007 = 1;
                  *v1008 = 2048;
                  *&v1008[2] = v450;
                  v451 = _os_log_send_and_compose_impl();
                  LOBYTE(iterate_block[0]) = 16;
                  aBlock[0] = 0;
                  if (__nwlog_fault(v451, iterate_block, aBlock))
                  {
                    if (LOBYTE(iterate_block[0]) == 17)
                    {
                      v452 = __nwlog_obj();
                      v453 = iterate_block[0];
                      if (os_log_type_enabled(v452, iterate_block[0]))
                      {
                        v454 = *(v134 + 340);
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http1_add_idle_connection";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = "http1->idle_connections_count";
                        HIWORD(buf[2]) = 2048;
                        v1007 = 1;
                        *v1008 = 2048;
                        *&v1008[2] = v454;
                        v455 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_1076:
                        _os_log_impl(&dword_181A37000, v452, v453, v455, buf, 0x2Au);
                      }
                    }

                    else if (aBlock[0] == 1)
                    {
                      v457 = __nw_create_backtrace_string();
                      v452 = __nwlog_obj();
                      v453 = iterate_block[0];
                      v458 = os_log_type_enabled(v452, iterate_block[0]);
                      if (v457)
                      {
                        if (v458)
                        {
                          v459 = *(v134 + 340);
                          LODWORD(buf[0]) = 136447234;
                          *(buf + 4) = "nw_http1_add_idle_connection";
                          WORD2(buf[1]) = 2082;
                          *(&buf[1] + 6) = "http1->idle_connections_count";
                          HIWORD(buf[2]) = 2048;
                          v1007 = 1;
                          *v1008 = 2048;
                          *&v1008[2] = v459;
                          *&v1008[10] = 2082;
                          *&v1008[12] = v457;
                          _os_log_impl(&dword_181A37000, v452, v453, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                        }

                        free(v457);
                        goto LABEL_1077;
                      }

                      if (v458)
                      {
                        v627 = *(v134 + 340);
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http1_add_idle_connection";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = "http1->idle_connections_count";
                        HIWORD(buf[2]) = 2048;
                        v1007 = 1;
                        *v1008 = 2048;
                        *&v1008[2] = v627;
                        v455 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                        goto LABEL_1076;
                      }
                    }

                    else
                    {
                      v452 = __nwlog_obj();
                      v453 = iterate_block[0];
                      if (os_log_type_enabled(v452, iterate_block[0]))
                      {
                        v460 = *(v134 + 340);
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http1_add_idle_connection";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = "http1->idle_connections_count";
                        HIWORD(buf[2]) = 2048;
                        v1007 = 1;
                        *v1008 = 2048;
                        *&v1008[2] = v460;
                        v455 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                        goto LABEL_1076;
                      }
                    }
                  }

LABEL_1077:
                  if (v451)
                  {
                    free(v451);
                  }

                  *(v134 + 340) = -1;
LABEL_1080:
                  *(v12 + 874) |= 8u;
                  *(v12 + 872) &= 0xFFFAu;
                  v628 = *(v12 + 800);
                  if (v628)
                  {
                    free(v628);
                    *(v12 + 800) = 0;
                  }

                  *(v12 + 840) = 0;
                  v629 = *(v12 + 808);
                  if (v629)
                  {
                    free(v629);
                    *(v12 + 808) = 0;
                  }

                  *(v12 + 844) = 0;
                  v630 = *(v12 + 816);
                  if (v630)
                  {
                    free(v630);
                    *(v12 + 816) = 0;
                  }

                  *(v12 + 848) = 0;
                  v631 = *(v12 + 824);
                  if (v631)
                  {
                    free(v631);
                    *(v12 + 824) = 0;
                  }

                  *(v12 + 852) = 0;
                  v632 = *(v12 + 832);
                  if (v632)
                  {
                    free(v632);
                    *(v12 + 832) = 0;
                  }

                  *(v12 + 856) = 0;
                  v633 = *(v12 + 872);
                  if ((v633 & 0x10) != 0)
                  {
                    if (*(v12 + 224) == 21)
                    {
                      *(v12 + 224) = 0;
                    }

                    *(v12 + 872) = v633 & 0xFFEF;
                    if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                    {
                      v637 = __nwlog_obj();
                      if (os_log_type_enabled(v637, OS_LOG_TYPE_DEBUG))
                      {
                        v958 = *(v12 + 488);
                        v959 = *(*(v12 + 480) + 372);
                        v960 = *(v12 + 860);
                        if (v958)
                        {
                          LODWORD(v958) = *(v958 + 424);
                        }

                        LODWORD(buf[0]) = 136447490;
                        *(buf + 4) = "nw_http1_connection_reset_for_new_message";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v12 + 74;
                        HIWORD(buf[2]) = 2080;
                        v1007 = " ";
                        *v1008 = 1024;
                        *&v1008[2] = v959;
                        *&v1008[6] = 1024;
                        *&v1008[8] = v960;
                        *&v1008[12] = 1024;
                        *&v1008[14] = v958;
                        v641 = "%{public}s %{public}s%s<i%u:c%u:s%u> Unpausing parser, input for next stream available";
                        goto LABEL_1772;
                      }
                    }
                  }

                  else
                  {
                    *(v12 + 200) = 0u;
                    v634 = *(v12 + 272);
                    v635 = *(v12 + 248);
                    v636 = *(v12 + 278);
                    *(v12 + 248) = 0u;
                    *(v12 + 264) = 0u;
                    *(v12 + 216) = 0u;
                    *(v12 + 232) = 0u;
                    *(v12 + 280) = 0;
                    *(v12 + 272) = v634;
                    *(v12 + 248) = v635;
                    *(v12 + 256) = 237;
                    *(v12 + 278) = v636;
                    if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                    {
                      v637 = __nwlog_obj();
                      if (os_log_type_enabled(v637, OS_LOG_TYPE_DEBUG))
                      {
                        v638 = *(v12 + 488);
                        v639 = *(*(v12 + 480) + 372);
                        v640 = *(v12 + 860);
                        if (v638)
                        {
                          LODWORD(v638) = *(v638 + 424);
                        }

                        LODWORD(buf[0]) = 136447490;
                        *(buf + 4) = "nw_http1_connection_reset_for_new_message";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v12 + 74;
                        HIWORD(buf[2]) = 2080;
                        v1007 = " ";
                        *v1008 = 1024;
                        *&v1008[2] = v639;
                        *&v1008[6] = 1024;
                        *&v1008[8] = v640;
                        *&v1008[12] = 1024;
                        *&v1008[14] = v638;
                        v641 = "%{public}s %{public}s%s<i%u:c%u:s%u> Resetting parser, no current available input for next stream";
LABEL_1772:
                        _os_log_impl(&dword_181A37000, v637, OS_LOG_TYPE_DEBUG, v641, buf, 0x32u);
                      }
                    }
                  }

                  v642 = *(v12 + 784);
                  if (v642)
                  {
                    nw_queue_cancel_source(v642, v111);
                  }

                  v643 = *(v12 + 192);
                  channel_flow_count = nw_context_get_channel_flow_count(*(v12 + 496));
                  iterate_block[0] = MEMORY[0x1E69E9820];
                  iterate_block[1] = 0x40000000;
                  iterate_block[2] = ___ZL28nw_http1_add_idle_connectionP17nw_protocol_http1P19nw_http1_connection_block_invoke;
                  v1010 = &__block_descriptor_tmp_88_43975;
                  if (channel_flow_count <= 0x19F)
                  {
                    v645 = v643;
                  }

                  else
                  {
                    v645 = 1000;
                  }

                  v1011 = v12;
                  v1012 = v645;
                  v1013 = v134;
                  source = nw_queue_context_create_source(0, 2, 3, 0, iterate_block, 0);
                  *(v12 + 784) = source;
                  v647 = dispatch_time(0x8000000000000000, 1000000 * v645);
                  nw_queue_set_timer_values(source, v647, 0xFFFFFFFFFFFFFFFFLL, 1000 * v645);
                  nw_queue_activate_source(*(v12 + 784), v648);
                  if ((*(v12 + 158) & 1) == 0 && gLogDatapath == 1)
                  {
                    v649 = __nwlog_obj();
                    if (os_log_type_enabled(v649, OS_LOG_TYPE_DEBUG))
                    {
                      v650 = *(v12 + 488);
                      v651 = *(*(v12 + 480) + 372);
                      v652 = *(v12 + 860);
                      if (v650)
                      {
                        LODWORD(v650) = *(v650 + 424);
                      }

                      v653 = *(v134 + 340);
                      LODWORD(buf[0]) = 136448258;
                      *(buf + 4) = "nw_http1_add_idle_connection";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v12 + 74;
                      HIWORD(buf[2]) = 2080;
                      v1007 = " ";
                      *v1008 = 1024;
                      *&v1008[2] = v651;
                      *&v1008[6] = 1024;
                      *&v1008[8] = v652;
                      *&v1008[12] = 1024;
                      *&v1008[14] = v650;
                      *&v1008[18] = 2048;
                      *&v1008[20] = v12;
                      *&v1008[28] = 2048;
                      *&v1008[30] = v645;
                      *&v1008[38] = 1024;
                      *&v1008[40] = v653;
                      v387 = "%{public}s %{public}s%s<i%u:c%u:s%u> added idle connection %p and started destroy timer for %lldms, now have %u idle connections";
                      v388 = v649;
                      v389 = 76;
LABEL_639:
                      _os_log_impl(&dword_181A37000, v388, OS_LOG_TYPE_DEBUG, v387, buf, v389);
                      goto LABEL_805;
                    }
                  }

                  goto LABEL_805;
                }

                __nwlog_obj();
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "nw_http1_add_idle_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v12;
                v39 = _os_log_send_and_compose_impl();
                LOBYTE(iterate_block[0]) = 16;
                aBlock[0] = 0;
                if (!__nwlog_fault(v39, iterate_block, aBlock))
                {
                  goto LABEL_803;
                }

                if (LOBYTE(iterate_block[0]) == 17)
                {
                  v40 = __nwlog_obj();
                  v41 = iterate_block[0];
                  if (!os_log_type_enabled(v40, iterate_block[0]))
                  {
                    goto LABEL_803;
                  }

                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_add_idle_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v12;
                  v42 = "%{public}s connection %p already in idle list, cannot add twice";
                  goto LABEL_801;
                }

                if (aBlock[0] != 1)
                {
                  v40 = __nwlog_obj();
                  v41 = iterate_block[0];
                  if (!os_log_type_enabled(v40, iterate_block[0]))
                  {
                    goto LABEL_803;
                  }

                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_add_idle_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v12;
                  v42 = "%{public}s connection %p already in idle list, cannot add twice, backtrace limit exceeded";
                  goto LABEL_801;
                }

                v97 = __nw_create_backtrace_string();
                v40 = __nwlog_obj();
                v41 = iterate_block[0];
                v456 = os_log_type_enabled(v40, iterate_block[0]);
                if (!v97)
                {
                  if (!v456)
                  {
                    goto LABEL_803;
                  }

                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_add_idle_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v12;
                  v42 = "%{public}s connection %p already in idle list, cannot add twice, no backtrace";
                  goto LABEL_801;
                }

                if (!v456)
                {
                  goto LABEL_155;
                }

                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_add_idle_connection";
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = v12;
                HIWORD(buf[2]) = 2082;
                v1007 = v97;
                v99 = "%{public}s connection %p already in idle list, cannot add twice, dumping backtrace:%{public}s";
                goto LABEL_154;
              }

LABEL_1797:
              __nwlog_obj();
              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_add_idle_connection";
              v961 = _os_log_send_and_compose_impl();
              LOBYTE(iterate_block[0]) = 16;
              aBlock[0] = 0;
              if (!__nwlog_fault(v961, iterate_block, aBlock))
              {
                goto LABEL_1811;
              }

              if (LOBYTE(iterate_block[0]) == 17)
              {
                v962 = __nwlog_obj();
                v963 = iterate_block[0];
                if (!os_log_type_enabled(v962, iterate_block[0]))
                {
                  goto LABEL_1811;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_add_idle_connection";
                v964 = "%{public}s called with null http1";
              }

              else if (aBlock[0] == 1)
              {
                v965 = __nw_create_backtrace_string();
                v962 = __nwlog_obj();
                v963 = iterate_block[0];
                v966 = os_log_type_enabled(v962, iterate_block[0]);
                if (v965)
                {
                  if (v966)
                  {
                    LODWORD(buf[0]) = 136446466;
                    *(buf + 4) = "nw_http1_add_idle_connection";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v965;
                    _os_log_impl(&dword_181A37000, v962, v963, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v965);
                  goto LABEL_1811;
                }

                if (!v966)
                {
LABEL_1811:
                  if (v961)
                  {
                    free(v961);
                  }

                  goto LABEL_805;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_add_idle_connection";
                v964 = "%{public}s called with null http1, no backtrace";
              }

              else
              {
                v962 = __nwlog_obj();
                v963 = iterate_block[0];
                if (!os_log_type_enabled(v962, iterate_block[0]))
                {
                  goto LABEL_1811;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_add_idle_connection";
                v964 = "%{public}s called with null http1, backtrace limit exceeded";
              }

              _os_log_impl(&dword_181A37000, v962, v963, v964, buf, 0xCu);
              goto LABEL_1811;
            }

            __nwlog_obj();
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
            v899 = _os_log_send_and_compose_impl();
            LOBYTE(iterate_block[0]) = 16;
            aBlock[0] = 0;
            if (!__nwlog_fault(v899, iterate_block, aBlock))
            {
LABEL_1794:
              if (v899)
              {
                free(v899);
              }

              v134 = *(v12 + 480);
              if (v134)
              {
                goto LABEL_763;
              }

              goto LABEL_1797;
            }

            if (LOBYTE(iterate_block[0]) == 17)
            {
              v900 = __nwlog_obj();
              v901 = iterate_block[0];
              if (!os_log_type_enabled(v900, iterate_block[0]))
              {
                goto LABEL_1794;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
              v902 = "%{public}s called with null http1_connection";
              goto LABEL_1793;
            }

            if (aBlock[0] != 1)
            {
              v900 = __nwlog_obj();
              v901 = iterate_block[0];
              if (!os_log_type_enabled(v900, iterate_block[0]))
              {
                goto LABEL_1794;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
              v902 = "%{public}s called with null http1_connection, backtrace limit exceeded";
              goto LABEL_1793;
            }

            v928 = __nw_create_backtrace_string();
            v900 = __nwlog_obj();
            v901 = iterate_block[0];
            v932 = os_log_type_enabled(v900, iterate_block[0]);
            if (!v928)
            {
              if (!v932)
              {
                goto LABEL_1794;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
              v902 = "%{public}s called with null http1_connection, no backtrace";
              goto LABEL_1793;
            }

            if (v932)
            {
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v928;
              v930 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
              goto LABEL_1668;
            }

LABEL_1669:
            free(v928);
            goto LABEL_1794;
          }

          __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
          v899 = _os_log_send_and_compose_impl();
          LOBYTE(iterate_block[0]) = 16;
          aBlock[0] = 0;
          if (!__nwlog_fault(v899, iterate_block, aBlock))
          {
            goto LABEL_1794;
          }

          if (LOBYTE(iterate_block[0]) == 17)
          {
            v900 = __nwlog_obj();
            v901 = iterate_block[0];
            if (!os_log_type_enabled(v900, iterate_block[0]))
            {
              goto LABEL_1794;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
            v902 = "%{public}s called with null http1_stream->protocol_http1";
            goto LABEL_1793;
          }

          if (aBlock[0] != 1)
          {
            v900 = __nwlog_obj();
            v901 = iterate_block[0];
            if (!os_log_type_enabled(v900, iterate_block[0]))
            {
              goto LABEL_1794;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
            v902 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
            goto LABEL_1793;
          }

          v928 = __nw_create_backtrace_string();
          v900 = __nwlog_obj();
          v901 = iterate_block[0];
          v931 = os_log_type_enabled(v900, iterate_block[0]);
          if (!v928)
          {
            if (!v931)
            {
              goto LABEL_1794;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
            v902 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
            goto LABEL_1793;
          }

          if (!v931)
          {
            goto LABEL_1669;
          }

          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v928;
          v930 = "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s";
        }

        else
        {
          __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
          v899 = _os_log_send_and_compose_impl();
          LOBYTE(iterate_block[0]) = 16;
          aBlock[0] = 0;
          if (!__nwlog_fault(v899, iterate_block, aBlock))
          {
            goto LABEL_1794;
          }

          if (LOBYTE(iterate_block[0]) == 17)
          {
            v900 = __nwlog_obj();
            v901 = iterate_block[0];
            if (!os_log_type_enabled(v900, iterate_block[0]))
            {
              goto LABEL_1794;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
            v902 = "%{public}s called with null http1_stream";
LABEL_1793:
            _os_log_impl(&dword_181A37000, v900, v901, v902, buf, 0xCu);
            goto LABEL_1794;
          }

          if (aBlock[0] != 1)
          {
            v900 = __nwlog_obj();
            v901 = iterate_block[0];
            if (!os_log_type_enabled(v900, iterate_block[0]))
            {
              goto LABEL_1794;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
            v902 = "%{public}s called with null http1_stream, backtrace limit exceeded";
            goto LABEL_1793;
          }

          v928 = __nw_create_backtrace_string();
          v900 = __nwlog_obj();
          v901 = iterate_block[0];
          v929 = os_log_type_enabled(v900, iterate_block[0]);
          if (!v928)
          {
            if (!v929)
            {
              goto LABEL_1794;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
            v902 = "%{public}s called with null http1_stream, no backtrace";
            goto LABEL_1793;
          }

          if (!v929)
          {
            goto LABEL_1669;
          }

          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_stream_disassociate_from_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v928;
          v930 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
        }

LABEL_1668:
        _os_log_impl(&dword_181A37000, v900, v901, v930, buf, 0x16u);
        goto LABEL_1669;
      }

      __nwlog_obj();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_disconnect";
      v39 = _os_log_send_and_compose_impl();
      LOBYTE(iterate_block[0]) = 16;
      aBlock[0] = 0;
      if (!__nwlog_fault(v39, iterate_block, aBlock))
      {
        goto LABEL_803;
      }

      if (LOBYTE(iterate_block[0]) == 17)
      {
        v461 = __nwlog_obj();
        v462 = iterate_block[0];
        if (!os_log_type_enabled(v461, iterate_block[0]))
        {
          goto LABEL_803;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_disconnect";
        v42 = "%{public}s called with null http1_connection->current_stream";
        goto LABEL_1269;
      }

      if (aBlock[0] == 1)
      {
        v617 = __nw_create_backtrace_string();
        v461 = __nwlog_obj();
        v462 = iterate_block[0];
        v618 = os_log_type_enabled(v461, iterate_block[0]);
        if (v617)
        {
          if (v618)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_connection_disconnect";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v617;
            _os_log_impl(&dword_181A37000, v461, v462, "%{public}s called with null http1_connection->current_stream, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v617);
          if (!v39)
          {
            goto LABEL_805;
          }

LABEL_804:
          free(v39);
          goto LABEL_805;
        }

        if (v618)
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_disconnect";
          v42 = "%{public}s called with null http1_connection->current_stream, no backtrace";
          goto LABEL_1269;
        }

LABEL_803:
        if (!v39)
        {
          goto LABEL_805;
        }

        goto LABEL_804;
      }

      v461 = __nwlog_obj();
      v462 = iterate_block[0];
      if (!os_log_type_enabled(v461, iterate_block[0]))
      {
        goto LABEL_803;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_disconnect";
      v42 = "%{public}s called with null http1_connection->current_stream, backtrace limit exceeded";
    }

    else
    {
      __nwlog_obj();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_disconnect";
      v39 = _os_log_send_and_compose_impl();
      LOBYTE(iterate_block[0]) = 16;
      aBlock[0] = 0;
      if (!__nwlog_fault(v39, iterate_block, aBlock))
      {
        goto LABEL_803;
      }

      if (LOBYTE(iterate_block[0]) == 17)
      {
        v461 = __nwlog_obj();
        v462 = iterate_block[0];
        if (!os_log_type_enabled(v461, iterate_block[0]))
        {
          goto LABEL_803;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_disconnect";
        v42 = "%{public}s called with null http1_connection->protocol_http1";
        goto LABEL_1269;
      }

      if (aBlock[0] == 1)
      {
        v615 = __nw_create_backtrace_string();
        v461 = __nwlog_obj();
        v462 = iterate_block[0];
        v616 = os_log_type_enabled(v461, iterate_block[0]);
        if (v615)
        {
          if (v616)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_connection_disconnect";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v615;
            _os_log_impl(&dword_181A37000, v461, v462, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v615);
          goto LABEL_803;
        }

        if (!v616)
        {
          goto LABEL_803;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_disconnect";
        v42 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
      }

      else
      {
        v461 = __nwlog_obj();
        v462 = iterate_block[0];
        if (!os_log_type_enabled(v461, iterate_block[0]))
        {
          goto LABEL_803;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_disconnect";
        v42 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
      }
    }

LABEL_1269:
    v463 = v461;
    v464 = v462;
    v465 = 12;
    goto LABEL_802;
  }

  if (*(v10 + 32))
  {
    if ((*(v10 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v23 = *(v10 + 256);
        v24 = *(*(v10 + 248) + 372);
        if (v23)
        {
          LODWORD(v23) = *(v23 + 860);
        }

        v25 = *(v10 + 424);
        LODWORD(buf[0]) = 136447490;
        *(buf + 4) = "nw_protocol_http1_disconnect";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v10 + 74;
        HIWORD(buf[2]) = 2080;
        v1007 = " ";
        *v1008 = 1024;
        *&v1008[2] = v24;
        *&v1008[6] = 1024;
        *&v1008[8] = v23;
        *&v1008[12] = 1024;
        *&v1008[14] = v25;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> disconnecting the initial stream without connecting", buf, 0x32u);
      }
    }

    nw_protocol_disconnect(*(v10 + 32), v10);
    v28 = v991;
    goto LABEL_102;
  }

  if ((v11 & 0x2000) == 0)
  {
    goto LABEL_805;
  }

  if ((*(v7 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v740 = __nwlog_obj();
    v741 = os_log_type_enabled(v740, OS_LOG_TYPE_DEBUG);
    v7 = v991;
    if (v741)
    {
      v742 = *(v991 + 372);
      v743 = *(v10 + 424);
      LODWORD(buf[0]) = 136447490;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v991 + 74;
      HIWORD(buf[2]) = 2080;
      v1007 = " ";
      *v1008 = 1024;
      *&v1008[2] = v742;
      *&v1008[6] = 1024;
      *&v1008[8] = v743;
      *&v1008[12] = 2048;
      *&v1008[14] = v10;
      _os_log_impl(&dword_181A37000, v740, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
      v7 = v991;
    }
  }

  if ((*(v10 + 428) & 0x2000) == 0)
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_http1_remove_pending_stream";
    WORD2(buf[1]) = 2048;
    *(&buf[1] + 6) = v10;
    v39 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (!__nwlog_fault(v39, iterate_block, aBlock))
    {
      goto LABEL_803;
    }

    if (LOBYTE(iterate_block[0]) == 17)
    {
      v40 = __nwlog_obj();
      v41 = iterate_block[0];
      if (!os_log_type_enabled(v40, iterate_block[0]))
      {
        goto LABEL_803;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v10;
      v42 = "%{public}s stream %p not in pending list, cannot remove";
    }

    else if (aBlock[0] == 1)
    {
      v97 = __nw_create_backtrace_string();
      v40 = __nwlog_obj();
      v41 = iterate_block[0];
      v98 = os_log_type_enabled(v40, iterate_block[0]);
      if (v97)
      {
        if (!v98)
        {
          goto LABEL_155;
        }

        LODWORD(buf[0]) = 136446722;
        *(buf + 4) = "nw_http1_remove_pending_stream";
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v10;
        HIWORD(buf[2]) = 2082;
        v1007 = v97;
        v99 = "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s";
LABEL_154:
        _os_log_impl(&dword_181A37000, v40, v41, v99, buf, 0x20u);
LABEL_155:
        free(v97);
        if (!v39)
        {
          goto LABEL_805;
        }

        goto LABEL_804;
      }

      if (!v98)
      {
        goto LABEL_803;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v10;
      v42 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
    }

    else
    {
      v40 = __nwlog_obj();
      v41 = iterate_block[0];
      if (!os_log_type_enabled(v40, iterate_block[0]))
      {
        goto LABEL_803;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v10;
      v42 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
    }

LABEL_801:
    v463 = v40;
    v464 = v41;
    v465 = 22;
LABEL_802:
    _os_log_impl(&dword_181A37000, v463, v464, v42, buf, v465);
    goto LABEL_803;
  }

  v52 = *(v10 + 296);
  v53 = *(v10 + 304);
  v54 = (v7 + 256);
  if (v52)
  {
    v54 = (v52 + 304);
  }

  *v54 = v53;
  *v53 = v52;
  *(v10 + 296) = 0;
  *(v10 + 304) = 0;
  v55 = *(v7 + 348);
  *(v7 + 348) = v55 - 1;
  if (!v55)
  {
    v56 = v7;
    __nwlog_obj();
    v57 = *(v56 + 348);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_remove_pending_stream";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = "http1->pending_stream_count";
    HIWORD(buf[2]) = 2048;
    v1007 = 1;
    *v1008 = 2048;
    *&v1008[2] = v57;
    v58 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (__nwlog_fault(v58, iterate_block, aBlock))
    {
      if (LOBYTE(iterate_block[0]) == 17)
      {
        v59 = __nwlog_obj();
        v60 = iterate_block[0];
        if (os_log_type_enabled(v59, iterate_block[0]))
        {
          v61 = *(v991 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v1007 = 1;
          *v1008 = 2048;
          *&v1008[2] = v61;
          v62 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_629:
          _os_log_impl(&dword_181A37000, v59, v60, v62, buf, 0x2Au);
        }
      }

      else if (aBlock[0] == 1)
      {
        v120 = __nw_create_backtrace_string();
        v59 = __nwlog_obj();
        v60 = iterate_block[0];
        v121 = os_log_type_enabled(v59, iterate_block[0]);
        if (v120)
        {
          if (v121)
          {
            v122 = *(v991 + 348);
            LODWORD(buf[0]) = 136447234;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->pending_stream_count";
            HIWORD(buf[2]) = 2048;
            v1007 = 1;
            *v1008 = 2048;
            *&v1008[2] = v122;
            *&v1008[10] = 2082;
            *&v1008[12] = v120;
            _os_log_impl(&dword_181A37000, v59, v60, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v120);
          goto LABEL_630;
        }

        if (v121)
        {
          v381 = *(v991 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v1007 = 1;
          *v1008 = 2048;
          *&v1008[2] = v381;
          v62 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_629;
        }
      }

      else
      {
        v59 = __nwlog_obj();
        v60 = iterate_block[0];
        if (os_log_type_enabled(v59, iterate_block[0]))
        {
          v126 = *(v991 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v1007 = 1;
          *v1008 = 2048;
          *&v1008[2] = v126;
          v62 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_629;
        }
      }
    }

LABEL_630:
    if (v58)
    {
      free(v58);
    }

    *(v991 + 348) = 0;
  }

  *(v10 + 428) &= ~0x2000u;
  if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v382 = __nwlog_obj();
    if (os_log_type_enabled(v382, OS_LOG_TYPE_DEBUG))
    {
      v383 = *(v10 + 256);
      v384 = *(*(v10 + 248) + 372);
      if (v383)
      {
        LODWORD(v383) = *(v383 + 860);
      }

      v385 = *(v10 + 424);
      v386 = *(v991 + 348);
      LODWORD(buf[0]) = 136448258;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v10 + 74;
      HIWORD(buf[2]) = 2080;
      v1007 = " ";
      *v1008 = 1024;
      *&v1008[2] = v384;
      *&v1008[6] = 1024;
      *&v1008[8] = v383;
      *&v1008[12] = 1024;
      *&v1008[14] = v385;
      *&v1008[18] = 1024;
      *&v1008[20] = v385;
      *&v1008[24] = 2048;
      *&v1008[26] = v10;
      *&v1008[34] = 1024;
      *&v1008[36] = v386;
      v387 = "%{public}s %{public}s%s<i%u:c%u:s%u> removed pending stream %u (%p), now have %u pending streams";
      v388 = v382;
      v389 = 72;
      goto LABEL_639;
    }
  }

LABEL_805:
  nw_protocol_disconnected(*(v10 + 48), v10);
  v28 = v991;
  if (v12)
  {
    goto LABEL_100;
  }

LABEL_102:
  v63 = *(v28 + 248);
  if (!v63)
  {
    if (*(v28 + 158))
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v67 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v68 = *(v991 + 372);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_match_idle_connection_with_pending_stream";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = v991 + 74;
    HIWORD(buf[2]) = 2080;
    v1007 = " ";
    *v1008 = 1024;
    *&v1008[2] = v68;
    v69 = "%{public}s %{public}s%s<i%u> no pending streams, nothing to do";
    goto LABEL_258;
  }

  v990 = *(v28 + 248);
  if ((*(v63 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v574 = __nwlog_obj();
    v575 = os_log_type_enabled(v574, OS_LOG_TYPE_DEBUG);
    v28 = v991;
    if (v575)
    {
      v576 = v63 + 74;
      v577 = *(v63 + 256);
      v578 = *(*(v63 + 248) + 372);
      if (v577)
      {
        LODWORD(v577) = *(v577 + 860);
      }

      v63 = v990;
      v579 = *(v990 + 424);
      LODWORD(buf[0]) = 136448002;
      *(buf + 4) = "nw_http1_get_next_pending_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v576;
      HIWORD(buf[2]) = 2080;
      v1007 = " ";
      *v1008 = 1024;
      *&v1008[2] = v578;
      *&v1008[6] = 1024;
      *&v1008[8] = v577;
      *&v1008[12] = 1024;
      *&v1008[14] = v579;
      *&v1008[18] = 1024;
      *&v1008[20] = v579;
      *&v1008[24] = 2048;
      *&v1008[26] = v990;
      _os_log_impl(&dword_181A37000, v574, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> found stream %u (%p)", buf, 0x42u);
      v28 = v991;
    }
  }

  v64 = *(v28 + 208);
  if (!v64)
  {
LABEL_246:
    if ((*(v28 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v624 = __nwlog_obj();
      v625 = os_log_type_enabled(v624, OS_LOG_TYPE_DEBUG);
      v28 = v991;
      if (v625)
      {
        v626 = *(v991 + 372);
        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = "nw_http1_get_next_idle_connection";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v991 + 74;
        HIWORD(buf[2]) = 2080;
        v1007 = " ";
        *v1008 = 1024;
        *&v1008[2] = v626;
        _os_log_impl(&dword_181A37000, v624, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> no idle connections", buf, 0x26u);
        v28 = v991;
      }
    }

    if (*(v63 + 256))
    {
      if (*(v63 + 158))
      {
        goto LABEL_255;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v146 = gLogObj;
      v147 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
      v28 = v991;
      if (!v147)
      {
        goto LABEL_255;
      }

      v148 = *(v63 + 256);
      v149 = *(*(v63 + 248) + 372);
      if (v148)
      {
        LODWORD(v148) = *(v148 + 860);
      }

      v150 = *(v63 + 424);
      LODWORD(buf[0]) = 136447490;
      *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v63 + 74;
      HIWORD(buf[2]) = 2080;
      v1007 = " ";
      *v1008 = 1024;
      *&v1008[2] = v149;
      *&v1008[6] = 1024;
      *&v1008[8] = v148;
      *&v1008[12] = 1024;
      *&v1008[14] = v150;
      v151 = "%{public}s %{public}s%s<i%u:c%u:s%u> stream already has current connection, ignoring";
      v152 = v146;
      v153 = 50;
LABEL_254:
      _os_log_impl(&dword_181A37000, v152, OS_LOG_TYPE_DEBUG, v151, buf, v153);
      v28 = v991;
LABEL_255:
      if (*(v28 + 158))
      {
        return;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v67 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v154 = *(v991 + 372);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_http1_match_idle_connection_with_pending_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v991 + 74;
      HIWORD(buf[2]) = 2080;
      v1007 = " ";
      *v1008 = 1024;
      *&v1008[2] = v154;
      v69 = "%{public}s %{public}s%s<i%u> cannot make new connection, waiting for other requests to finish";
LABEL_258:
      v89 = v67;
      v90 = 38;
      goto LABEL_259;
    }

    if ((*(v63 + 428) & 0x10) == 0)
    {
      if (*(v28 + 336) + *(v28 + 352) >= (*(v28 + 368) + *(v28 + 364)))
      {
        if (*(v63 + 158))
        {
          goto LABEL_255;
        }

        v177 = __nwlog_obj();
        v178 = os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG);
        v28 = v991;
        if (!v178)
        {
          goto LABEL_255;
        }

        v179 = *(v63 + 256);
        v180 = *(*(v63 + 248) + 372);
        if (v179)
        {
          LODWORD(v179) = *(v179 + 860);
        }

        v181 = *(v63 + 424);
        v182 = *(v991 + 364);
        LODWORD(buf[0]) = 136447746;
        *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v63 + 74;
        HIWORD(buf[2]) = 2080;
        v1007 = " ";
        *v1008 = 1024;
        *&v1008[2] = v180;
        *&v1008[6] = 1024;
        *&v1008[8] = v179;
        *&v1008[12] = 1024;
        *&v1008[14] = v181;
        *&v1008[18] = 1024;
        *&v1008[20] = v182;
        v151 = "%{public}s %{public}s%s<i%u:c%u:s%u> already at max connection width %u, cannot create new connection";
        v152 = v177;
        v153 = 56;
        goto LABEL_254;
      }

      if ((*(v63 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v797 = __nwlog_obj();
        v798 = os_log_type_enabled(v797, OS_LOG_TYPE_DEBUG);
        v28 = v991;
        if (v798)
        {
          v799 = v63 + 74;
          v800 = *(v63 + 256);
          v801 = *(*(v63 + 248) + 372);
          if (v800)
          {
            LODWORD(v800) = *(v800 + 860);
          }

          v63 = v990;
          v802 = *(v990 + 424);
          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v799;
          HIWORD(buf[2]) = 2080;
          v1007 = " ";
          *v1008 = 1024;
          *&v1008[2] = v801;
          *&v1008[6] = 1024;
          *&v1008[8] = v800;
          *&v1008[12] = 1024;
          *&v1008[14] = v802;
          _os_log_impl(&dword_181A37000, v797, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> width allows new connection, creating", buf, 0x32u);
          v28 = v991;
        }
      }

      if ((*(v63 + 428) & 0x2000) == 0)
      {
LABEL_815:
        if (*(v63 + 32))
        {
          if ((*(v63 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v814 = __nwlog_obj();
            if (os_log_type_enabled(v814, OS_LOG_TYPE_DEBUG))
            {
              v815 = v63 + 74;
              v816 = *(v63 + 256);
              v817 = *(*(v63 + 248) + 372);
              if (v816)
              {
                LODWORD(v816) = *(v816 + 860);
              }

              v63 = v990;
              v818 = *(v990 + 424);
              v819 = *(v990 + 32);
              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_http1_establish_new_connection_for_stream";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v815;
              HIWORD(buf[2]) = 2080;
              v1007 = " ";
              *v1008 = 1024;
              *&v1008[2] = v817;
              *&v1008[6] = 1024;
              *&v1008[8] = v816;
              *&v1008[12] = 1024;
              *&v1008[14] = v818;
              *&v1008[18] = 2048;
              *&v1008[20] = v819;
              _os_log_impl(&dword_181A37000, v814, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using already established output handler %p", buf, 0x3Cu);
            }
          }

          v467 = *(v63 + 32);
          if (v467)
          {
            v468 = *(v63 + 336);
            if (v468)
            {
              v469 = *(v63 + 320);
              if (v469)
              {
                v470 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
                v471 = v470;
                if (v470)
                {
                  bzero(v470, 0x370uLL);
                  nw_http1_connection::nw_http1_connection(v471);
                  goto LABEL_835;
                }

                v482 = __nwlog_obj();
                os_log_type_enabled(v482, OS_LOG_TYPE_ERROR);
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_http1_connection_create";
                v12 = 2;
                WORD2(buf[1]) = 2048;
                *(&buf[1] + 6) = 1;
                HIWORD(buf[2]) = 2048;
                v1007 = 880;
                v483 = _os_log_send_and_compose_impl();
                if (!__nwlog_should_abort(v483))
                {
                  free(v483);
                  bzero(0, 0x370uLL);
                  nw_http1_connection::nw_http1_connection(0);
                  v484 = __nwlog_obj();
                  os_log_type_enabled(v484, OS_LOG_TYPE_ERROR);
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_connection_create";
                  v485 = _os_log_send_and_compose_impl();
                  if (!__nwlog_should_abort(v485))
                  {
                    free(v485);
                    v63 = v990;
LABEL_835:
                    v486 = v991;
                    if (nw_protocol_http1_identifier::onceToken != -1)
                    {
                      dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
                      v486 = v991;
                    }

                    *(v471 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
                    if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
                    {
                      dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
                      v486 = v991;
                    }

                    *(v471 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
                    *(v471 + 184) = 3;
                    *(v471 + 176) = v471;
                    *(v471 + 40) = v471 + 160;
                    *(v471 + 480) = v486;
                    nw_protocol_set_output_handler(v471, v467);
                    buf[0] = os_retain(v468);
                    nw::retained_ptr<nw_endpoint *>::operator=(v471 + 752, buf);
                    buf[0] = os_retain(v469);
                    nw::retained_ptr<nw_endpoint *>::operator=(v471 + 736, buf);
                    buf[0] = _nw_parameters_copy_context(v469);
                    nw::retained_ptr<nw_endpoint *>::operator=(v471 + 496, buf);
                    *(v471 + 192) = *(v486 + 192);
                    v487 = *(v471 + 496);
                    iterate_block[0] = MEMORY[0x1E69E9820];
                    iterate_block[1] = 0x40000000;
                    iterate_block[2] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
                    v1010 = &__block_descriptor_tmp_43_43000;
                    v1011 = v471;
                    buf[0] = nw_http_connection_create_metadata(v487, iterate_block, 0);
                    nw::retained_ptr<nw_endpoint *>::operator=(v471 + 768, buf);
                    nw_http_connection_metadata_set_version(*(v471 + 768), 3);
                    nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v471 + 768), *(v486 + 312));
                    *(v471 + 616) = 0;
                    *(v471 + 624) = v471 + 616;
                    *(v471 + 632) = 0;
                    *(v471 + 640) = v471 + 632;
                    *(v471 + 648) = 0;
                    *(v471 + 656) = v471 + 648;
                    *(v471 + 664) = 0;
                    *(v471 + 672) = v471 + 664;
                    *(v471 + 680) = 0;
                    *(v471 + 688) = v471 + 680;
                    nw_frame_cache_init(v471 + 696, v471, 256, 0x40000, 16);
                    v488 = *(v471 + 480);
                    if (v488)
                    {
                      *(v471 + 360) = 0u;
                      *(v471 + 376) = 0u;
                      *(v471 + 392) = 0u;
                      *(v471 + 408) = 0u;
                      *(v471 + 424) = 0u;
                      *(v471 + 440) = 0u;
                      *(v471 + 328) = 0u;
                      *(v471 + 344) = 0u;
                      *(v471 + 296) = nw_http1_on_message_begin;
                      *(v471 + 384) = nw_http1_on_message_complete;
                      *(v471 + 368) = nw_http1_on_headers_complete;
                      *(v471 + 472) = nw_http1_on_reset;
                      *(v471 + 320) = nw_http1_on_method;
                      *(v471 + 408) = nw_http1_on_method_complete;
                      *(v471 + 304) = nw_http1_on_url;
                      *(v471 + 392) = nw_http1_on_url_complete;
                      *(v471 + 312) = nw_http1_on_status;
                      *(v471 + 400) = nw_http1_on_status_complete;
                      *(v471 + 336) = nw_http1_on_header_field;
                      *(v471 + 424) = nw_http1_on_header_field_complete;
                      *(v471 + 344) = nw_http1_on_header_value;
                      *(v471 + 432) = nw_http1_on_header_value_complete;
                      *(v471 + 376) = nw_http1_on_body;
                      *(v471 + 456) = nw_http1_on_chunk_header;
                      *(v471 + 464) = nw_http1_on_chunk_complete;
                      v489 = *(v488 + 376);
                      *(v471 + 248) = 0u;
                      *(v471 + 200) = 0u;
                      *(v471 + 264) = 0u;
                      *(v471 + 232) = 0u;
                      *(v471 + 216) = 0u;
                      if (v489)
                      {
                        v490 = 1;
                      }

                      else
                      {
                        v490 = 2;
                      }

                      *(v471 + 272) = v490;
                      *(v471 + 280) = 0;
                      *(v471 + 288) = v471 + 296;
                      *(v471 + 278) = 16131;
                      *(v471 + 248) = v471;
                      *(v471 + 256) = 237;
                      if ((*(v471 + 158) & 1) == 0)
                      {
                        v491 = __nwlog_obj();
                        if (os_log_type_enabled(v491, OS_LOG_TYPE_DEBUG))
                        {
                          v492 = *(v471 + 488);
                          v493 = *(*(v471 + 480) + 372);
                          v494 = *(v471 + 860);
                          if (v492)
                          {
                            LODWORD(v492) = *(v492 + 424);
                          }

                          LODWORD(buf[0]) = 136448258;
                          *(buf + 4) = "nw_http1_connection_log_parser_version";
                          WORD2(buf[1]) = 2082;
                          *(&buf[1] + 6) = v471 + 74;
                          HIWORD(buf[2]) = 2080;
                          v1007 = " ";
                          *v1008 = 1024;
                          *&v1008[2] = v493;
                          *&v1008[6] = 1024;
                          *&v1008[8] = v494;
                          *&v1008[12] = 1024;
                          *&v1008[14] = v492;
                          *&v1008[18] = 1024;
                          *&v1008[20] = 9;
                          *&v1008[24] = 1024;
                          *&v1008[26] = 2;
                          *&v1008[30] = 1024;
                          *&v1008[32] = 1;
                          _os_log_impl(&dword_181A37000, v491, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
                        }
                      }

                      goto LABEL_848;
                    }

                    __nwlog_obj();
                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_connection_parser_init";
                    v826 = _os_log_send_and_compose_impl();
                    v1003[0] = 16;
                    type[0] = OS_LOG_TYPE_DEFAULT;
                    if (__nwlog_fault(v826, v1003, type))
                    {
                      if (v1003[0] == 17)
                      {
                        v827 = __nwlog_obj();
                        v828 = v1003[0];
                        if (os_log_type_enabled(v827, v1003[0]))
                        {
                          LODWORD(buf[0]) = 136446210;
                          *(buf + 4) = "nw_http1_connection_parser_init";
                          v829 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_1726:
                          _os_log_impl(&dword_181A37000, v827, v828, v829, buf, 0xCu);
                        }
                      }

                      else if (type[0] == OS_LOG_TYPE_INFO)
                      {
                        v875 = __nw_create_backtrace_string();
                        v827 = __nwlog_obj();
                        v828 = v1003[0];
                        v876 = os_log_type_enabled(v827, v1003[0]);
                        if (v875)
                        {
                          if (v876)
                          {
                            LODWORD(buf[0]) = 136446466;
                            *(buf + 4) = "nw_http1_connection_parser_init";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = v875;
                            _os_log_impl(&dword_181A37000, v827, v828, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                          }

                          free(v875);
                          goto LABEL_1727;
                        }

                        if (v876)
                        {
                          LODWORD(buf[0]) = 136446210;
                          *(buf + 4) = "nw_http1_connection_parser_init";
                          v829 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
                          goto LABEL_1726;
                        }
                      }

                      else
                      {
                        v827 = __nwlog_obj();
                        v828 = v1003[0];
                        if (os_log_type_enabled(v827, v1003[0]))
                        {
                          LODWORD(buf[0]) = 136446210;
                          *(buf + 4) = "nw_http1_connection_parser_init";
                          v829 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
                          goto LABEL_1726;
                        }
                      }
                    }

LABEL_1727:
                    if (v826)
                    {
                      free(v826);
                    }

                    v63 = v990;
LABEL_848:
                    buf[0] = 0;
                    buf[1] = buf;
                    buf[2] = 0x2000000000;
                    v1007 = v471;
                    *aBlock = MEMORY[0x1E69E9820];
                    *&aBlock[8] = 0x40000000;
                    *&aBlock[16] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
                    v999 = &unk_1E6A32758;
                    *v1000 = buf;
                    *(v471 + 608) = _Block_copy(aBlock);
                    _Block_object_dispose(buf, 8);
                    if ((*(v471 + 158) & 1) == 0 && gLogDatapath == 1)
                    {
                      v838 = __nwlog_obj();
                      if (os_log_type_enabled(v838, OS_LOG_TYPE_DEBUG))
                      {
                        v839 = *(v471 + 488);
                        v840 = *(*(v471 + 480) + 372);
                        v841 = *(v471 + 860);
                        if (v839)
                        {
                          LODWORD(v839) = *(v839 + 424);
                        }

                        LODWORD(buf[0]) = 136447746;
                        *(buf + 4) = "nw_http1_connection_create";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v471 + 74;
                        HIWORD(buf[2]) = 2080;
                        v1007 = " ";
                        *v1008 = 1024;
                        *&v1008[2] = v840;
                        *&v1008[6] = 1024;
                        *&v1008[8] = v841;
                        *&v1008[12] = 1024;
                        *&v1008[14] = v839;
                        *&v1008[18] = 2048;
                        *&v1008[20] = v471;
                        _os_log_impl(&dword_181A37000, v838, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
                        v63 = v990;
                      }
                    }

                    nw_protocol_replace_input_handler(v467, v63, v471);
                    *v471 = *v467;
                    v495 = *(v471 + 736);
                    if (v495)
                    {
                      v496 = v991;
                      if (!*(v471 + 528))
                      {
                        v497 = _nw_parameters_copy_context(*(v471 + 736));
                        buf[0] = nw_path_copy_flow_registration(v497, v471);
                        v498 = (v471 + 560);
                        nw::retained_ptr<nw_endpoint *>::operator=(v471 + 560, buf);
                        v499 = *(v471 + 560);
                        if (v499)
                        {
                          v500 = nw_path_flow_registration_copy_endpoint(v499);
                          v501 = nw_path_flow_registration_copy_parameters(*v498);
                          buf[0] = nw_endpoint_copy_association_with_evaluator(v500, v501, 0);
                          nw::retained_ptr<nw_endpoint *>::operator=(v471 + 528, buf);
                          if (*(v471 + 528))
                          {
                            buf[0] = nw_protocol_instance_stub_create(v471);
                            nw::retained_ptr<nw_endpoint *>::operator=(v471 + 544, buf);
                            nw_association_register_internal(*(v471 + 528), v495, *(v471 + 544), 0, 0, &__block_literal_global_69_43019);
                            v502 = nw_association_copy_current_path(*(v471 + 528), v501);
                            if (v502)
                            {
                              v503 = v502;
                              v504 = nw_path_copy_for_flow_registration(v502, *v498);
                              if (v504)
                              {
                                v505 = v504;
                                if (*(v471 + 512) != v504)
                                {
                                  buf[0] = os_retain(v504);
                                  nw::retained_ptr<nw_endpoint *>::operator=(v471 + 512, buf);
                                }

                                if (nw_path_has_flows(v505))
                                {
                                  v506 = 4096;
                                }

                                else
                                {
                                  v506 = 0;
                                }

                                *(v471 + 872) = *(v471 + 872) & 0xEFFF | v506;
                                v507 = _nw_parameters_copy_effective_proxy_config(v495);
                                if (v507)
                                {
                                  v508 = v507;
                                  if (nw_path_has_proxy_config(v503, v507))
                                  {
                                    buf[0] = os_retain(v508);
                                    nw::retained_ptr<nw_endpoint *>::operator=(v471 + 576, buf);
                                  }

                                  os_release(v508);
                                }

                                os_release(v505);
                              }

                              os_release(v503);
                            }
                          }

                          if (v501)
                          {
                            os_release(v501);
                          }

                          v63 = v990;
                          if (v500)
                          {
                            os_release(v500);
                          }
                        }

                        v496 = v991;
                        if (v497)
                        {
                          os_release(v497);
                          v496 = v991;
                        }
                      }

                      v509 = *(v471 + 512);
                      if (v509)
                      {
LABEL_874:
                        v510 = _nw_path_uses_interface_type(v509, 2u);
                        v496 = v991;
                        if (v510)
                        {
                          *(v471 + 192) = 1000;
                        }
                      }

LABEL_876:
                      v511 = *(v496 + 336) + 1;
                      *(v496 + 336) = v511;
                      if (v511 == v511 << 31 >> 31)
                      {
                        goto LABEL_901;
                      }

                      v512 = v496;
                      __nwlog_obj();
                      v513 = *(v512 + 336);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->connections_count";
                      HIWORD(buf[2]) = 2048;
                      v1007 = 1;
                      *v1008 = 2048;
                      *&v1008[2] = v513;
                      v514 = _os_log_send_and_compose_impl();
                      LOBYTE(iterate_block[0]) = 16;
                      aBlock[0] = 0;
                      if (__nwlog_fault(v514, iterate_block, aBlock))
                      {
                        if (LOBYTE(iterate_block[0]) == 17)
                        {
                          v515 = __nwlog_obj();
                          v516 = iterate_block[0];
                          if (os_log_type_enabled(v515, iterate_block[0]))
                          {
                            v517 = *(v991 + 336);
                            LODWORD(buf[0]) = 136446978;
                            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = "http1->connections_count";
                            HIWORD(buf[2]) = 2048;
                            v1007 = 1;
                            *v1008 = 2048;
                            *&v1008[2] = v517;
                            v518 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_897:
                            _os_log_impl(&dword_181A37000, v515, v516, v518, buf, 0x2Au);
                          }
                        }

                        else if (aBlock[0] == 1)
                        {
                          v519 = __nw_create_backtrace_string();
                          v515 = __nwlog_obj();
                          v516 = iterate_block[0];
                          v520 = os_log_type_enabled(v515, iterate_block[0]);
                          if (v519)
                          {
                            if (v520)
                            {
                              v521 = *(v991 + 336);
                              LODWORD(buf[0]) = 136447234;
                              *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                              WORD2(buf[1]) = 2082;
                              *(&buf[1] + 6) = "http1->connections_count";
                              HIWORD(buf[2]) = 2048;
                              v1007 = 1;
                              *v1008 = 2048;
                              *&v1008[2] = v521;
                              *&v1008[10] = 2082;
                              *&v1008[12] = v519;
                              _os_log_impl(&dword_181A37000, v515, v516, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                            }

                            free(v519);
                            goto LABEL_898;
                          }

                          if (v520)
                          {
                            v527 = *(v991 + 336);
                            LODWORD(buf[0]) = 136446978;
                            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = "http1->connections_count";
                            HIWORD(buf[2]) = 2048;
                            v1007 = 1;
                            *v1008 = 2048;
                            *&v1008[2] = v527;
                            v518 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                            goto LABEL_897;
                          }
                        }

                        else
                        {
                          v515 = __nwlog_obj();
                          v516 = iterate_block[0];
                          if (os_log_type_enabled(v515, iterate_block[0]))
                          {
                            v525 = *(v991 + 336);
                            LODWORD(buf[0]) = 136446978;
                            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = "http1->connections_count";
                            HIWORD(buf[2]) = 2048;
                            v1007 = 1;
                            *v1008 = 2048;
                            *&v1008[2] = v525;
                            v518 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                            goto LABEL_897;
                          }
                        }
                      }

LABEL_898:
                      if (v514)
                      {
                        free(v514);
                      }

                      v496 = v991;
                      *(v991 + 336) = -1;
                      v63 = v990;
LABEL_901:
                      v528 = *(v496 + 360) + 1;
                      *(v496 + 360) = v528;
                      if (v528 == v528 << 31 >> 31)
                      {
                        goto LABEL_919;
                      }

                      v529 = v496;
                      __nwlog_obj();
                      v530 = *(v529 + 360);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->next_connection_log_num";
                      HIWORD(buf[2]) = 2048;
                      v1007 = 1;
                      *v1008 = 2048;
                      *&v1008[2] = v530;
                      v531 = _os_log_send_and_compose_impl();
                      LOBYTE(iterate_block[0]) = 16;
                      aBlock[0] = 0;
                      if (__nwlog_fault(v531, iterate_block, aBlock))
                      {
                        if (LOBYTE(iterate_block[0]) == 17)
                        {
                          v532 = __nwlog_obj();
                          v533 = iterate_block[0];
                          if (os_log_type_enabled(v532, iterate_block[0]))
                          {
                            v534 = *(v991 + 360);
                            LODWORD(buf[0]) = 136446978;
                            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = "http1->next_connection_log_num";
                            HIWORD(buf[2]) = 2048;
                            v1007 = 1;
                            *v1008 = 2048;
                            *&v1008[2] = v534;
                            v535 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_915:
                            _os_log_impl(&dword_181A37000, v532, v533, v535, buf, 0x2Au);
                          }
                        }

                        else if (aBlock[0] == 1)
                        {
                          v536 = __nw_create_backtrace_string();
                          v532 = __nwlog_obj();
                          v533 = iterate_block[0];
                          v537 = os_log_type_enabled(v532, iterate_block[0]);
                          if (v536)
                          {
                            if (v537)
                            {
                              v538 = *(v991 + 360);
                              LODWORD(buf[0]) = 136447234;
                              *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                              WORD2(buf[1]) = 2082;
                              *(&buf[1] + 6) = "http1->next_connection_log_num";
                              HIWORD(buf[2]) = 2048;
                              v1007 = 1;
                              *v1008 = 2048;
                              *&v1008[2] = v538;
                              *&v1008[10] = 2082;
                              *&v1008[12] = v536;
                              _os_log_impl(&dword_181A37000, v532, v533, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                            }

                            free(v536);
                            goto LABEL_916;
                          }

                          if (v537)
                          {
                            v540 = *(v991 + 360);
                            LODWORD(buf[0]) = 136446978;
                            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = "http1->next_connection_log_num";
                            HIWORD(buf[2]) = 2048;
                            v1007 = 1;
                            *v1008 = 2048;
                            *&v1008[2] = v540;
                            v535 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                            goto LABEL_915;
                          }
                        }

                        else
                        {
                          v532 = __nwlog_obj();
                          v533 = iterate_block[0];
                          if (os_log_type_enabled(v532, iterate_block[0]))
                          {
                            v539 = *(v991 + 360);
                            LODWORD(buf[0]) = 136446978;
                            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = "http1->next_connection_log_num";
                            HIWORD(buf[2]) = 2048;
                            v1007 = 1;
                            *v1008 = 2048;
                            *&v1008[2] = v539;
                            v535 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                            goto LABEL_915;
                          }
                        }
                      }

LABEL_916:
                      if (v531)
                      {
                        free(v531);
                      }

                      LODWORD(v528) = -1;
                      *(v991 + 360) = -1;
                      v63 = v990;
LABEL_919:
                      *(v471 + 860) = v528;
                      if ((*(v471 + 158) & 1) == 0 && gLogDatapath == 1)
                      {
                        v842 = __nwlog_obj();
                        if (os_log_type_enabled(v842, OS_LOG_TYPE_DEBUG))
                        {
                          v843 = *(v471 + 488);
                          v844 = *(*(v471 + 480) + 372);
                          v845 = *(v471 + 860);
                          if (v843)
                          {
                            LODWORD(v843) = *(v843 + 424);
                          }

                          v846 = *(v991 + 336);
                          LODWORD(buf[0]) = 136448002;
                          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                          WORD2(buf[1]) = 2082;
                          *(&buf[1] + 6) = v471 + 74;
                          HIWORD(buf[2]) = 2080;
                          v1007 = " ";
                          *v1008 = 1024;
                          *&v1008[2] = v844;
                          *&v1008[6] = 1024;
                          *&v1008[8] = v845;
                          *&v1008[12] = 1024;
                          *&v1008[14] = v843;
                          *&v1008[18] = 2048;
                          *&v1008[20] = v471;
                          *&v1008[28] = 1024;
                          *&v1008[30] = v846;
                          _os_log_impl(&dword_181A37000, v842, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
                          v63 = v990;
                        }
                      }

                      if (*(v63 + 248))
                      {
                        if (*(v471 + 488))
                        {
                          __nwlog_obj();
                          v541 = *(v471 + 488);
                          LODWORD(buf[0]) = 136446722;
                          *(buf + 4) = "nw_http1_stream_associate_with_connection";
                          WORD2(buf[1]) = 2048;
                          *(&buf[1] + 6) = v471;
                          HIWORD(buf[2]) = 2048;
                          v1007 = v541;
                          v542 = _os_log_send_and_compose_impl();
                          aBlock[0] = 16;
                          v1003[0] = 0;
                          if (__nwlog_fault(v542, aBlock, v1003))
                          {
                            if (aBlock[0] == 17)
                            {
                              v543 = __nwlog_obj();
                              v544 = aBlock[0];
                              if (os_log_type_enabled(v543, aBlock[0]))
                              {
                                v545 = *(v471 + 488);
                                LODWORD(buf[0]) = 136446722;
                                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                                WORD2(buf[1]) = 2048;
                                *(&buf[1] + 6) = v471;
                                HIWORD(buf[2]) = 2048;
                                v1007 = v545;
                                v546 = "%{public}s Connection %p already has a stream (%p)";
LABEL_953:
                                _os_log_impl(&dword_181A37000, v543, v544, v546, buf, 0x20u);
                              }
                            }

                            else if (v1003[0] == 1)
                            {
                              v553 = __nw_create_backtrace_string();
                              v543 = __nwlog_obj();
                              v544 = aBlock[0];
                              v554 = os_log_type_enabled(v543, aBlock[0]);
                              if (v553)
                              {
                                if (v554)
                                {
                                  v555 = *(v471 + 488);
                                  LODWORD(buf[0]) = 136446978;
                                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                                  WORD2(buf[1]) = 2048;
                                  *(&buf[1] + 6) = v471;
                                  HIWORD(buf[2]) = 2048;
                                  v1007 = v555;
                                  *v1008 = 2082;
                                  *&v1008[2] = v553;
                                  _os_log_impl(&dword_181A37000, v543, v544, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                                }

                                free(v553);
                                goto LABEL_954;
                              }

                              if (v554)
                              {
                                v565 = *(v471 + 488);
                                LODWORD(buf[0]) = 136446722;
                                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                                WORD2(buf[1]) = 2048;
                                *(&buf[1] + 6) = v471;
                                HIWORD(buf[2]) = 2048;
                                v1007 = v565;
                                v546 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                                goto LABEL_953;
                              }
                            }

                            else
                            {
                              v543 = __nwlog_obj();
                              v544 = aBlock[0];
                              if (os_log_type_enabled(v543, aBlock[0]))
                              {
                                v556 = *(v471 + 488);
                                LODWORD(buf[0]) = 136446722;
                                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                                WORD2(buf[1]) = 2048;
                                *(&buf[1] + 6) = v471;
                                HIWORD(buf[2]) = 2048;
                                v1007 = v556;
                                v546 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                                goto LABEL_953;
                              }
                            }
                          }

LABEL_954:
                          if (v542)
                          {
                            free(v542);
                          }

                          v566 = 0;
                          goto LABEL_957;
                        }

                        *(v63 + 256) = v471;
                        *(v471 + 488) = v63;
                        v547 = *(v63 + 320);
                        if (v547)
                        {
                          v547 = os_retain(v547);
                        }

                        buf[0] = v547;
                        nw::retained_ptr<nw_endpoint *>::operator=(v471 + 736, buf);
                        if ((*(*(v63 + 248) + 376) & 2) == 0)
                        {
                          goto LABEL_1148;
                        }

                        v548 = nw_parameters_copy_default_protocol_stack(*(v63 + 320));
                        *aBlock = 0;
                        *&aBlock[8] = aBlock;
                        *&aBlock[16] = 0x2000000000;
                        LOBYTE(v999) = 0;
                        buf[0] = 0;
                        buf[1] = buf;
                        buf[2] = 0x3802000000;
                        v1007 = __Block_byref_object_copy__42960;
                        *v1008 = __Block_byref_object_dispose__42961;
                        *&v1008[8] = 0;
                        v1008[16] |= 1u;
                        iterate_block[0] = MEMORY[0x1E69E9820];
                        iterate_block[1] = 0x40000000;
                        iterate_block[2] = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
                        v1010 = &unk_1E6A32930;
                        v1011 = aBlock;
                        v1012 = buf;
                        v1013 = v63;
                        nw_protocol_stack_iterate_application_protocols(v548, iterate_block);
                        if (*(buf[1] + 40))
                        {
                          v549 = v471;
                          while (1)
                          {
                            v549 = *(v549 + 32);
                            if (!v549)
                            {
                              break;
                            }

                            if (nw_protocol_is_tls_over_stream(v549))
                            {
                              v550 = *(buf[1] + 40);
                              v551 = nw_protocol_boringssl_copy_definition();
                              nw_parameters_set_protocol_instance(v550, v552, v549);
                              if (v551)
                              {
                                os_release(v551);
                              }

                              goto LABEL_1135;
                            }
                          }

                          __nwlog_obj();
                          *v1003 = 136446210;
                          *&v1003[4] = "nw_http1_stream_associate_with_connection";
                          v561 = _os_log_send_and_compose_impl();
                          type[0] = OS_LOG_TYPE_ERROR;
                          v997 = OS_LOG_TYPE_DEFAULT;
                          if (!__nwlog_fault(v561, type, &v997))
                          {
                            goto LABEL_1139;
                          }

                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v562 = __nwlog_obj();
                            v563 = type[0];
                            if (os_log_type_enabled(v562, type[0]))
                            {
                              *v1003 = 136446210;
                              *&v1003[4] = "nw_http1_stream_associate_with_connection";
                              v564 = "%{public}s tls should have been in the stack but could not find it";
LABEL_1138:
                              _os_log_impl(&dword_181A37000, v562, v563, v564, v1003, 0xCu);
                            }
                          }

                          else if (v997 == OS_LOG_TYPE_INFO)
                          {
                            v569 = __nw_create_backtrace_string();
                            v562 = __nwlog_obj();
                            v563 = type[0];
                            v570 = os_log_type_enabled(v562, type[0]);
                            if (v569)
                            {
                              if (v570)
                              {
                                *v1003 = 136446466;
                                *&v1003[4] = "nw_http1_stream_associate_with_connection";
                                *&v1003[12] = 2082;
                                *&v1003[14] = v569;
                                _os_log_impl(&dword_181A37000, v562, v563, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v1003, 0x16u);
                              }

                              free(v569);
                              v63 = v990;
                              goto LABEL_1139;
                            }

                            v63 = v990;
                            if (v570)
                            {
                              *v1003 = 136446210;
                              *&v1003[4] = "nw_http1_stream_associate_with_connection";
                              v564 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                              goto LABEL_1138;
                            }
                          }

                          else
                          {
                            v562 = __nwlog_obj();
                            v563 = type[0];
                            if (os_log_type_enabled(v562, type[0]))
                            {
                              *v1003 = 136446210;
                              *&v1003[4] = "nw_http1_stream_associate_with_connection";
                              v564 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                              goto LABEL_1138;
                            }
                          }

LABEL_1139:
                          if (v561)
                          {
                            free(v561);
                          }

                          v660 = 0;
                          goto LABEL_1142;
                        }

                        __nwlog_obj();
                        *v1003 = 136446210;
                        *&v1003[4] = "nw_http1_stream_associate_with_connection";
                        v557 = _os_log_send_and_compose_impl();
                        type[0] = OS_LOG_TYPE_ERROR;
                        v997 = OS_LOG_TYPE_DEFAULT;
                        if (__nwlog_fault(v557, type, &v997))
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v558 = __nwlog_obj();
                            v559 = type[0];
                            if (os_log_type_enabled(v558, type[0]))
                            {
                              *v1003 = 136446210;
                              *&v1003[4] = "nw_http1_stream_associate_with_connection";
                              v560 = "%{public}s unable to find tls options";
LABEL_1132:
                              _os_log_impl(&dword_181A37000, v558, v559, v560, v1003, 0xCu);
                            }
                          }

                          else if (v997 == OS_LOG_TYPE_INFO)
                          {
                            v567 = __nw_create_backtrace_string();
                            v558 = __nwlog_obj();
                            v559 = type[0];
                            v568 = os_log_type_enabled(v558, type[0]);
                            if (v567)
                            {
                              if (v568)
                              {
                                *v1003 = 136446466;
                                *&v1003[4] = "nw_http1_stream_associate_with_connection";
                                *&v1003[12] = 2082;
                                *&v1003[14] = v567;
                                _os_log_impl(&dword_181A37000, v558, v559, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v1003, 0x16u);
                              }

                              free(v567);
                              v63 = v990;
                            }

                            else
                            {
                              v63 = v990;
                              if (v568)
                              {
                                *v1003 = 136446210;
                                *&v1003[4] = "nw_http1_stream_associate_with_connection";
                                v560 = "%{public}s unable to find tls options, no backtrace";
                                goto LABEL_1132;
                              }
                            }
                          }

                          else
                          {
                            v558 = __nwlog_obj();
                            v559 = type[0];
                            if (os_log_type_enabled(v558, type[0]))
                            {
                              *v1003 = 136446210;
                              *&v1003[4] = "nw_http1_stream_associate_with_connection";
                              v560 = "%{public}s unable to find tls options, backtrace limit exceeded";
                              goto LABEL_1132;
                            }
                          }
                        }

                        if (v557)
                        {
                          free(v557);
                        }

LABEL_1135:
                        v660 = 1;
LABEL_1142:
                        _Block_object_dispose(buf, 8);
                        if ((v1008[16] & 1) != 0 && *&v1008[8])
                        {
                          os_release(*&v1008[8]);
                        }

                        _Block_object_dispose(aBlock, 8);
                        if (v548)
                        {
                          os_release(v548);
                        }

                        if (!v660)
                        {
LABEL_1177:
                          v566 = 0;
                          if (*(v63 + 158))
                          {
                            goto LABEL_1182;
                          }

LABEL_1178:
                          v690 = __nwlog_obj();
                          if (os_log_type_enabled(v690, OS_LOG_TYPE_DEBUG))
                          {
                            v691 = *(v63 + 256);
                            v692 = *(*(v63 + 248) + 372);
                            if (v691)
                            {
                              LODWORD(v691) = *(v691 + 860);
                            }

                            v693 = *(v63 + 424);
                            LODWORD(buf[0]) = 136448258;
                            *(buf + 4) = "nw_http1_start_new_connection_for_stream";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = v63 + 74;
                            HIWORD(buf[2]) = 2080;
                            v1007 = " ";
                            *v1008 = 1024;
                            *&v1008[2] = v692;
                            *&v1008[6] = 1024;
                            *&v1008[8] = v691;
                            *&v1008[12] = 1024;
                            *&v1008[14] = v693;
                            *&v1008[18] = 2048;
                            *&v1008[20] = v471;
                            *&v1008[28] = 1024;
                            *&v1008[30] = v693;
                            *&v1008[34] = 2048;
                            *&v1008[36] = v63;
                            _os_log_impl(&dword_181A37000, v690, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
                          }

LABEL_1182:
                          *(v63 + 428) |= 1u;
                          v694 = nw_protocol_copy_info(v467);
                          v472 = v694;
                          if (v694)
                          {
                            object = _nw_array_copy_last_object(v694);
                            v696 = object;
                            if (object)
                            {
                              if (nw_protocol_metadata_is_tls(object))
                              {
                                v696 = v696;
                                nw_http_connection_metadata_set_sec_metadata(*(v471 + 768), v696);
                                os_release(v696);
                              }

                              v697 = 0;
LABEL_1189:
                              if (!v566)
                              {
                                goto LABEL_1190;
                              }

                              __nwlog_obj();
                              LODWORD(buf[0]) = 136446210;
                              *(buf + 4) = "nw_http1_get_output_protocol";
                              v810 = _os_log_send_and_compose_impl();
                              LOBYTE(iterate_block[0]) = 16;
                              aBlock[0] = 0;
                              if (__nwlog_fault(v810, iterate_block, aBlock))
                              {
                                if (LOBYTE(iterate_block[0]) == 17)
                                {
                                  v811 = __nwlog_obj();
                                  v812 = iterate_block[0];
                                  if (os_log_type_enabled(v811, iterate_block[0]))
                                  {
                                    LODWORD(buf[0]) = 136446210;
                                    *(buf + 4) = "nw_http1_get_output_protocol";
                                    v813 = "%{public}s called with null connection";
LABEL_1680:
                                    _os_log_impl(&dword_181A37000, v811, v812, v813, buf, 0xCu);
                                  }
                                }

                                else if (aBlock[0] == 1)
                                {
                                  v869 = __nw_create_backtrace_string();
                                  v811 = __nwlog_obj();
                                  v812 = iterate_block[0];
                                  v870 = os_log_type_enabled(v811, iterate_block[0]);
                                  if (v869)
                                  {
                                    if (v870)
                                    {
                                      LODWORD(buf[0]) = 136446466;
                                      *(buf + 4) = "nw_http1_get_output_protocol";
                                      WORD2(buf[1]) = 2082;
                                      *(&buf[1] + 6) = v869;
                                      _os_log_impl(&dword_181A37000, v811, v812, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                                    }

                                    free(v869);
                                    goto LABEL_1681;
                                  }

                                  if (v870)
                                  {
                                    LODWORD(buf[0]) = 136446210;
                                    *(buf + 4) = "nw_http1_get_output_protocol";
                                    v813 = "%{public}s called with null connection, no backtrace";
                                    goto LABEL_1680;
                                  }
                                }

                                else
                                {
                                  v811 = __nwlog_obj();
                                  v812 = iterate_block[0];
                                  if (os_log_type_enabled(v811, iterate_block[0]))
                                  {
                                    LODWORD(buf[0]) = 136446210;
                                    *(buf + 4) = "nw_http1_get_output_protocol";
                                    v813 = "%{public}s called with null connection, backtrace limit exceeded";
                                    goto LABEL_1680;
                                  }
                                }
                              }

LABEL_1681:
                              if (v810)
                              {
                                free(v810);
                              }

                              v471 = 0;
LABEL_1190:
                              nw_protocol_connect(v467, v471);
                              if ((v697 & 1) == 0)
                              {
                                os_release(v696);
                              }

                              if (!v472)
                              {
                                return;
                              }

                              goto LABEL_1193;
                            }
                          }

                          else
                          {
                            v696 = 0;
                          }

                          v697 = 1;
                          goto LABEL_1189;
                        }

LABEL_1148:
                        v661 = *(v63 + 32);
                        if (!v661 || v661 == *(v471 + 32))
                        {
LABEL_1167:
                          nw_protocol_set_output_handler(v63, *(v471 + 32));
                          nw_protocol_set_input_handler(v471, *(v63 + 48));
                          *v63 = *v471;
                          v678 = *(v63 + 96);
                          v679 = *(v63 + 112);
                          v680 = *(v63 + 128);
                          *(v471 + 144) = *(v63 + 144);
                          v681 = *(v63 + 80);
                          *(v471 + 64) = *(v63 + 64);
                          *(v471 + 80) = v681;
                          *(v471 + 112) = v679;
                          *(v471 + 128) = v680;
                          *(v471 + 96) = v678;
                          *(v471 + 872) &= 0xFFD7u;
                          *(v471 + 864) = 1;
                          if ((*(v471 + 158) & 1) == 0)
                          {
                            v682 = __nwlog_obj();
                            if (os_log_type_enabled(v682, OS_LOG_TYPE_DEBUG))
                            {
                              v683 = *(v471 + 488);
                              v684 = *(*(v471 + 480) + 372);
                              v685 = *(v471 + 860);
                              if (v683)
                              {
                                LODWORD(v683) = *(v683 + 424);
                              }

                              LODWORD(buf[0]) = 136447490;
                              *(buf + 4) = "nw_http1_update_connection_input_state";
                              WORD2(buf[1]) = 2082;
                              *(&buf[1] + 6) = v471 + 74;
                              HIWORD(buf[2]) = 2080;
                              v1007 = " ";
                              *v1008 = 1024;
                              *&v1008[2] = v684;
                              *&v1008[6] = 1024;
                              *&v1008[8] = v685;
                              *&v1008[12] = 1024;
                              *&v1008[14] = v683;
                              _os_log_impl(&dword_181A37000, v682, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                            }
                          }

                          if ((*(v63 + 158) & 1) == 0)
                          {
                            v686 = __nwlog_obj();
                            if (os_log_type_enabled(v686, OS_LOG_TYPE_INFO))
                            {
                              v687 = *(v63 + 256);
                              v688 = *(*(v63 + 248) + 372);
                              if (v687)
                              {
                                LODWORD(v687) = *(v687 + 860);
                              }

                              v689 = *(v63 + 424);
                              LODWORD(buf[0]) = 136448002;
                              *(buf + 4) = "nw_http1_stream_associate_with_connection";
                              WORD2(buf[1]) = 2082;
                              *(&buf[1] + 6) = v63 + 74;
                              HIWORD(buf[2]) = 2080;
                              v1007 = " ";
                              *v1008 = 1024;
                              *&v1008[2] = v688;
                              *&v1008[6] = 1024;
                              *&v1008[8] = v687;
                              *&v1008[12] = 1024;
                              *&v1008[14] = v689;
                              *&v1008[18] = 2048;
                              *&v1008[20] = v63;
                              *&v1008[28] = 2048;
                              *&v1008[30] = v471;
                              _os_log_impl(&dword_181A37000, v686, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                            }
                          }

                          goto LABEL_1177;
                        }

                        __nwlog_obj();
                        v662 = *(v63 + 32);
                        v663 = *(v471 + 32);
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        WORD2(buf[1]) = 2048;
                        *(&buf[1] + 6) = v662;
                        HIWORD(buf[2]) = 2048;
                        v1007 = v63;
                        *v1008 = 2048;
                        *&v1008[2] = v663;
                        v664 = _os_log_send_and_compose_impl();
                        aBlock[0] = 16;
                        v1003[0] = 0;
                        if (__nwlog_fault(v664, aBlock, v1003))
                        {
                          if (aBlock[0] == 17)
                          {
                            v665 = __nwlog_obj();
                            v666 = aBlock[0];
                            if (os_log_type_enabled(v665, aBlock[0]))
                            {
                              v667 = *(v990 + 32);
                              v668 = *(v471 + 32);
                              LODWORD(buf[0]) = 136446978;
                              *(buf + 4) = "nw_http1_stream_associate_with_connection";
                              WORD2(buf[1]) = 2048;
                              *(&buf[1] + 6) = v667;
                              HIWORD(buf[2]) = 2048;
                              v1007 = v990;
                              *v1008 = 2048;
                              *&v1008[2] = v668;
                              v669 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
LABEL_1163:
                              _os_log_impl(&dword_181A37000, v665, v666, v669, buf, 0x2Au);
                            }
                          }

                          else if (v1003[0] == 1)
                          {
                            v670 = __nw_create_backtrace_string();
                            v665 = __nwlog_obj();
                            v666 = aBlock[0];
                            v671 = os_log_type_enabled(v665, aBlock[0]);
                            if (v670)
                            {
                              if (v671)
                              {
                                v672 = *(v990 + 32);
                                v673 = *(v471 + 32);
                                LODWORD(buf[0]) = 136447234;
                                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                                WORD2(buf[1]) = 2048;
                                *(&buf[1] + 6) = v672;
                                HIWORD(buf[2]) = 2048;
                                v1007 = v990;
                                *v1008 = 2048;
                                *&v1008[2] = v673;
                                *&v1008[10] = 2082;
                                *&v1008[12] = v670;
                                _os_log_impl(&dword_181A37000, v665, v666, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                              }

                              free(v670);
                              goto LABEL_1164;
                            }

                            if (v671)
                            {
                              v676 = *(v990 + 32);
                              v677 = *(v471 + 32);
                              LODWORD(buf[0]) = 136446978;
                              *(buf + 4) = "nw_http1_stream_associate_with_connection";
                              WORD2(buf[1]) = 2048;
                              *(&buf[1] + 6) = v676;
                              HIWORD(buf[2]) = 2048;
                              v1007 = v990;
                              *v1008 = 2048;
                              *&v1008[2] = v677;
                              v669 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
                              goto LABEL_1163;
                            }
                          }

                          else
                          {
                            v665 = __nwlog_obj();
                            v666 = aBlock[0];
                            if (os_log_type_enabled(v665, aBlock[0]))
                            {
                              v674 = *(v990 + 32);
                              v675 = *(v471 + 32);
                              LODWORD(buf[0]) = 136446978;
                              *(buf + 4) = "nw_http1_stream_associate_with_connection";
                              WORD2(buf[1]) = 2048;
                              *(&buf[1] + 6) = v674;
                              HIWORD(buf[2]) = 2048;
                              v1007 = v990;
                              *v1008 = 2048;
                              *&v1008[2] = v675;
                              v669 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                              goto LABEL_1163;
                            }
                          }
                        }

LABEL_1164:
                        if (v664)
                        {
                          free(v664);
                        }

                        v63 = v990;
                        goto LABEL_1167;
                      }

                      __nwlog_obj();
                      LODWORD(buf[0]) = 136446210;
                      *(buf + 4) = "nw_http1_stream_associate_with_connection";
                      v834 = _os_log_send_and_compose_impl();
                      aBlock[0] = 16;
                      v1003[0] = 0;
                      if (!__nwlog_fault(v834, aBlock, v1003))
                      {
                        goto LABEL_1740;
                      }

                      if (aBlock[0] == 17)
                      {
                        v835 = __nwlog_obj();
                        v836 = aBlock[0];
                        if (os_log_type_enabled(v835, aBlock[0]))
                        {
                          LODWORD(buf[0]) = 136446210;
                          *(buf + 4) = "nw_http1_stream_associate_with_connection";
                          v837 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_1739:
                          _os_log_impl(&dword_181A37000, v835, v836, v837, buf, 0xCu);
                        }
                      }

                      else if (v1003[0] == 1)
                      {
                        v879 = __nw_create_backtrace_string();
                        v835 = __nwlog_obj();
                        v836 = aBlock[0];
                        v880 = os_log_type_enabled(v835, aBlock[0]);
                        if (v879)
                        {
                          if (v880)
                          {
                            LODWORD(buf[0]) = 136446466;
                            *(buf + 4) = "nw_http1_stream_associate_with_connection";
                            WORD2(buf[1]) = 2082;
                            *(&buf[1] + 6) = v879;
                            _os_log_impl(&dword_181A37000, v835, v836, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                          }

                          free(v879);
                          goto LABEL_1740;
                        }

                        if (v880)
                        {
                          LODWORD(buf[0]) = 136446210;
                          *(buf + 4) = "nw_http1_stream_associate_with_connection";
                          v837 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                          goto LABEL_1739;
                        }
                      }

                      else
                      {
                        v835 = __nwlog_obj();
                        v836 = aBlock[0];
                        if (os_log_type_enabled(v835, aBlock[0]))
                        {
                          LODWORD(buf[0]) = 136446210;
                          *(buf + 4) = "nw_http1_stream_associate_with_connection";
                          v837 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                          goto LABEL_1739;
                        }
                      }

LABEL_1740:
                      if (v834)
                      {
                        free(v834);
                      }

                      v566 = 0;
                      goto LABEL_957;
                    }

                    __nwlog_obj();
                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_protocol_http1_set_up_association";
                    v830 = _os_log_send_and_compose_impl();
                    LOBYTE(iterate_block[0]) = 16;
                    aBlock[0] = 0;
                    if (__nwlog_fault(v830, iterate_block, aBlock))
                    {
                      if (LOBYTE(iterate_block[0]) == 17)
                      {
                        v831 = __nwlog_obj();
                        v832 = iterate_block[0];
                        if (!os_log_type_enabled(v831, iterate_block[0]))
                        {
                          goto LABEL_1733;
                        }

                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_protocol_http1_set_up_association";
                        v833 = "%{public}s called with null parameters";
LABEL_1732:
                        _os_log_impl(&dword_181A37000, v831, v832, v833, buf, 0xCu);
                        goto LABEL_1733;
                      }

                      if (aBlock[0] != 1)
                      {
                        v831 = __nwlog_obj();
                        v832 = iterate_block[0];
                        if (!os_log_type_enabled(v831, iterate_block[0]))
                        {
                          goto LABEL_1733;
                        }

                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_protocol_http1_set_up_association";
                        v833 = "%{public}s called with null parameters, backtrace limit exceeded";
                        goto LABEL_1732;
                      }

                      v877 = __nw_create_backtrace_string();
                      v831 = __nwlog_obj();
                      v832 = iterate_block[0];
                      v878 = os_log_type_enabled(v831, iterate_block[0]);
                      if (!v877)
                      {
                        if (!v878)
                        {
                          goto LABEL_1733;
                        }

                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_protocol_http1_set_up_association";
                        v833 = "%{public}s called with null parameters, no backtrace";
                        goto LABEL_1732;
                      }

                      if (v878)
                      {
                        LODWORD(buf[0]) = 136446466;
                        *(buf + 4) = "nw_protocol_http1_set_up_association";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v877;
                        _os_log_impl(&dword_181A37000, v831, v832, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v877);
                    }

LABEL_1733:
                    if (v830)
                    {
                      free(v830);
                    }

                    v496 = v991;
                    v63 = v990;
                    v509 = *(v471 + 512);
                    if (v509)
                    {
                      goto LABEL_874;
                    }

                    goto LABEL_876;
                  }
                }

                goto LABEL_1814;
              }

              __nwlog_obj();
              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_connection_create";
              v806 = _os_log_send_and_compose_impl();
              v1003[0] = 16;
              type[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v806, v1003, type))
              {
                if (v1003[0] == 17)
                {
                  v807 = __nwlog_obj();
                  v808 = v1003[0];
                  if (!os_log_type_enabled(v807, v1003[0]))
                  {
                    goto LABEL_1689;
                  }

                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_connection_create";
                  v809 = "%{public}s called with null parameters";
                  goto LABEL_1688;
                }

                if (type[0] != OS_LOG_TYPE_INFO)
                {
                  v807 = __nwlog_obj();
                  v808 = v1003[0];
                  if (!os_log_type_enabled(v807, v1003[0]))
                  {
                    goto LABEL_1689;
                  }

                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_connection_create";
                  v809 = "%{public}s called with null parameters, backtrace limit exceeded";
                  goto LABEL_1688;
                }

                v871 = __nw_create_backtrace_string();
                v807 = __nwlog_obj();
                v808 = v1003[0];
                v874 = os_log_type_enabled(v807, v1003[0]);
                if (!v871)
                {
                  if (!v874)
                  {
                    goto LABEL_1689;
                  }

                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_connection_create";
                  v809 = "%{public}s called with null parameters, no backtrace";
                  goto LABEL_1688;
                }

                if (v874)
                {
                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_connection_create";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v871;
                  v873 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
                  goto LABEL_1486;
                }

                goto LABEL_1487;
              }

LABEL_1689:
              if (!v806)
              {
                goto LABEL_1691;
              }

              goto LABEL_1690;
            }

            __nwlog_obj();
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v806 = _os_log_send_and_compose_impl();
            v1003[0] = 16;
            type[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v806, v1003, type))
            {
              goto LABEL_1689;
            }

            if (v1003[0] != 17)
            {
              if (type[0] != OS_LOG_TYPE_INFO)
              {
                v807 = __nwlog_obj();
                v808 = v1003[0];
                if (!os_log_type_enabled(v807, v1003[0]))
                {
                  goto LABEL_1689;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_create";
                v809 = "%{public}s called with null endpoint, backtrace limit exceeded";
                goto LABEL_1688;
              }

              v871 = __nw_create_backtrace_string();
              v807 = __nwlog_obj();
              v808 = v1003[0];
              v872 = os_log_type_enabled(v807, v1003[0]);
              if (!v871)
              {
                if (!v872)
                {
                  goto LABEL_1689;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_create";
                v809 = "%{public}s called with null endpoint, no backtrace";
                goto LABEL_1688;
              }

              if (v872)
              {
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "nw_http1_connection_create";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v871;
                v873 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_1486:
                _os_log_impl(&dword_181A37000, v807, v808, v873, buf, 0x16u);
              }

LABEL_1487:
              free(v871);
              if (!v806)
              {
LABEL_1691:
                __nwlog_obj();
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                v934 = _os_log_send_and_compose_impl();
                LOBYTE(iterate_block[0]) = 16;
                aBlock[0] = 0;
                if (!__nwlog_fault(v934, iterate_block, aBlock))
                {
                  goto LABEL_1705;
                }

                if (LOBYTE(iterate_block[0]) == 17)
                {
                  v935 = __nwlog_obj();
                  v936 = iterate_block[0];
                  if (!os_log_type_enabled(v935, iterate_block[0]))
                  {
                    goto LABEL_1705;
                  }

                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  v937 = "%{public}s called with null http1_connection";
                }

                else if (aBlock[0] == 1)
                {
                  v938 = __nw_create_backtrace_string();
                  v935 = __nwlog_obj();
                  v936 = iterate_block[0];
                  v939 = os_log_type_enabled(v935, iterate_block[0]);
                  if (v938)
                  {
                    if (v939)
                    {
                      LODWORD(buf[0]) = 136446466;
                      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = v938;
                      _os_log_impl(&dword_181A37000, v935, v936, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v938);
LABEL_1705:
                    if (v934)
                    {
                      free(v934);
                    }

                    __nwlog_obj();
                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    v940 = _os_log_send_and_compose_impl();
                    aBlock[0] = 16;
                    v1003[0] = 0;
                    if (!__nwlog_fault(v940, aBlock, v1003))
                    {
                      goto LABEL_1721;
                    }

                    if (aBlock[0] == 17)
                    {
                      v941 = __nwlog_obj();
                      v942 = aBlock[0];
                      if (os_log_type_enabled(v941, aBlock[0]))
                      {
                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        v943 = "%{public}s called with null http1_connection";
LABEL_1720:
                        _os_log_impl(&dword_181A37000, v941, v942, v943, buf, 0xCu);
                      }
                    }

                    else if (v1003[0] == 1)
                    {
                      v944 = __nw_create_backtrace_string();
                      v941 = __nwlog_obj();
                      v942 = aBlock[0];
                      v945 = os_log_type_enabled(v941, aBlock[0]);
                      if (v944)
                      {
                        if (v945)
                        {
                          LODWORD(buf[0]) = 136446466;
                          *(buf + 4) = "nw_http1_stream_associate_with_connection";
                          WORD2(buf[1]) = 2082;
                          *(&buf[1] + 6) = v944;
                          _os_log_impl(&dword_181A37000, v941, v942, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v944);
                        goto LABEL_1721;
                      }

                      if (v945)
                      {
                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        v943 = "%{public}s called with null http1_connection, no backtrace";
                        goto LABEL_1720;
                      }
                    }

                    else
                    {
                      v941 = __nwlog_obj();
                      v942 = aBlock[0];
                      if (os_log_type_enabled(v941, aBlock[0]))
                      {
                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        v943 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                        goto LABEL_1720;
                      }
                    }

LABEL_1721:
                    if (v940)
                    {
                      free(v940);
                    }

                    v471 = 0;
                    v566 = 1;
LABEL_957:
                    v63 = v990;
                    if (*(v990 + 158))
                    {
                      goto LABEL_1182;
                    }

                    goto LABEL_1178;
                  }

                  if (!v939)
                  {
                    goto LABEL_1705;
                  }

                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  v937 = "%{public}s called with null http1_connection, no backtrace";
                }

                else
                {
                  v935 = __nwlog_obj();
                  v936 = iterate_block[0];
                  if (!os_log_type_enabled(v935, iterate_block[0]))
                  {
                    goto LABEL_1705;
                  }

                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                  v937 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                }

                _os_log_impl(&dword_181A37000, v935, v936, v937, buf, 0xCu);
                goto LABEL_1705;
              }

LABEL_1690:
              free(v806);
              goto LABEL_1691;
            }

            v807 = __nwlog_obj();
            v808 = v1003[0];
            if (!os_log_type_enabled(v807, v1003[0]))
            {
              goto LABEL_1689;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v809 = "%{public}s called with null endpoint";
          }

          else
          {
            __nwlog_obj();
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v806 = _os_log_send_and_compose_impl();
            v1003[0] = 16;
            type[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v806, v1003, type))
            {
              goto LABEL_1689;
            }

            if (v1003[0] != 17)
            {
              if (type[0] != OS_LOG_TYPE_INFO)
              {
                v807 = __nwlog_obj();
                v808 = v1003[0];
                if (!os_log_type_enabled(v807, v1003[0]))
                {
                  goto LABEL_1689;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_create";
                v809 = "%{public}s called with null output_handler, backtrace limit exceeded";
                goto LABEL_1688;
              }

              v867 = __nw_create_backtrace_string();
              v807 = __nwlog_obj();
              v808 = v1003[0];
              v868 = os_log_type_enabled(v807, v1003[0]);
              if (!v867)
              {
                if (!v868)
                {
                  goto LABEL_1689;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_create";
                v809 = "%{public}s called with null output_handler, no backtrace";
                goto LABEL_1688;
              }

              if (v868)
              {
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "nw_http1_connection_create";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v867;
                _os_log_impl(&dword_181A37000, v807, v808, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v867);
              goto LABEL_1689;
            }

            v807 = __nwlog_obj();
            v808 = v1003[0];
            if (!os_log_type_enabled(v807, v1003[0]))
            {
              goto LABEL_1689;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v809 = "%{public}s called with null output_handler";
          }

LABEL_1688:
          _os_log_impl(&dword_181A37000, v807, v808, v809, buf, 0xCu);
          goto LABEL_1689;
        }

        v472 = nw_parameters_copy_default_protocol_stack(*(v63 + 320));
        *type = 0;
        v994 = type;
        v995 = 0x2000000000;
        v996 = 0;
        buf[0] = 0;
        buf[1] = buf;
        buf[2] = 0x3802000000;
        v1007 = __Block_byref_object_copy__42960;
        *v1008 = __Block_byref_object_dispose__42961;
        *&v1008[8] = 0;
        v1008[16] |= 1u;
        iterate_block[0] = MEMORY[0x1E69E9820];
        iterate_block[1] = 0x40000000;
        iterate_block[2] = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke;
        v1010 = &unk_1E6A328B8;
        v1011 = type;
        v1012 = buf;
        v1013 = v63;
        nw_protocol_stack_iterate_application_protocols(v472, iterate_block);
        v473 = *(buf[1] + 40);
        if (v473)
        {
          v474 = v473;
          *aBlock = 0;
          *&aBlock[8] = aBlock;
          *&aBlock[16] = 0x2000000000;
          LOBYTE(v999) = 0;
          *v1003 = MEMORY[0x1E69E9820];
          *&v1003[8] = 0x40000000;
          *&v1003[16] = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke_2;
          v1004 = &unk_1E6A328E0;
          v1005 = aBlock;
          nw_sec_protocol_options_iterate_application_protocols(v474, 1, v1003);
          if (*(*&aBlock[8] + 24) == 1)
          {
            sec_protocol_options_clear_tls_application_protocols();
            sec_protocol_options_add_tls_application_protocol(v474, "http/1.1");
          }

          _Block_object_dispose(aBlock, 8);
          os_release(v474);
        }

        nw_protocol_stack_remove_protocols_before_handle_and_make_persistent(v472, v63);
        *(v63 + 428) |= 0x10u;
        v475 = *(v991 + 352) + 1;
        *(v991 + 352) = v475;
        if (v475 == v475 << 31 >> 31)
        {
LABEL_975:
          v572 = *(v63 + 312);
          v573 = *(v63 + 264);
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 0x40000000;
          *&aBlock[16] = ___ZL44nw_http1_establish_new_connection_for_streamP17nw_protocol_http1P15nw_http1_stream_block_invoke_76;
          v999 = &unk_1E6A32908;
          *v1000 = v572;
          nw_queue_context_async(v573, aBlock);
          _Block_object_dispose(buf, 8);
          if ((v1008[16] & 1) != 0 && *&v1008[8])
          {
            os_release(*&v1008[8]);
          }

          _Block_object_dispose(type, 8);
          if (!v472)
          {
            return;
          }

LABEL_1193:
          os_release(v472);
          return;
        }

        __nwlog_obj();
        v476 = *(v991 + 352);
        *aBlock = 136446978;
        *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
        *&aBlock[12] = 2082;
        *&aBlock[14] = "http1->pending_output_handler_count";
        *&aBlock[22] = 2048;
        v999 = 1;
        *v1000 = 2048;
        *&v1000[2] = v476;
        v477 = _os_log_send_and_compose_impl();
        v997 = OS_LOG_TYPE_ERROR;
        v992 = 0;
        if (__nwlog_fault(v477, &v997, &v992))
        {
          if (v997 == OS_LOG_TYPE_FAULT)
          {
            v478 = __nwlog_obj();
            v479 = v997;
            if (os_log_type_enabled(v478, v997))
            {
              v480 = *(v991 + 352);
              *aBlock = 136446978;
              *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
              *&aBlock[12] = 2082;
              *&aBlock[14] = "http1->pending_output_handler_count";
              *&aBlock[22] = 2048;
              v999 = 1;
              *v1000 = 2048;
              *&v1000[2] = v480;
              v481 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_971:
              _os_log_impl(&dword_181A37000, v478, v479, v481, aBlock, 0x2Au);
            }
          }

          else if (v992 == 1)
          {
            v522 = __nw_create_backtrace_string();
            v478 = __nwlog_obj();
            v479 = v997;
            v523 = os_log_type_enabled(v478, v997);
            if (v522)
            {
              if (v523)
              {
                v524 = *(v991 + 352);
                *aBlock = 136447234;
                *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
                *&aBlock[12] = 2082;
                *&aBlock[14] = "http1->pending_output_handler_count";
                *&aBlock[22] = 2048;
                v999 = 1;
                *v1000 = 2048;
                *&v1000[2] = v524;
                v1001 = 2082;
                v1002 = v522;
                _os_log_impl(&dword_181A37000, v478, v479, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", aBlock, 0x34u);
              }

              free(v522);
              goto LABEL_972;
            }

            if (v523)
            {
              v571 = *(v991 + 352);
              *aBlock = 136446978;
              *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
              *&aBlock[12] = 2082;
              *&aBlock[14] = "http1->pending_output_handler_count";
              *&aBlock[22] = 2048;
              v999 = 1;
              *v1000 = 2048;
              *&v1000[2] = v571;
              v481 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
              goto LABEL_971;
            }
          }

          else
          {
            v478 = __nwlog_obj();
            v479 = v997;
            if (os_log_type_enabled(v478, v997))
            {
              v526 = *(v991 + 352);
              *aBlock = 136446978;
              *&aBlock[4] = "nw_http1_establish_new_connection_for_stream";
              *&aBlock[12] = 2082;
              *&aBlock[14] = "http1->pending_output_handler_count";
              *&aBlock[22] = 2048;
              v999 = 1;
              *v1000 = 2048;
              *&v1000[2] = v526;
              v481 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
              goto LABEL_971;
            }
          }
        }

LABEL_972:
        if (v477)
        {
          free(v477);
        }

        *(v991 + 352) = -1;
        v63 = v990;
        goto LABEL_975;
      }

      if ((*(v28 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v863 = __nwlog_obj();
        v864 = os_log_type_enabled(v863, OS_LOG_TYPE_DEBUG);
        v28 = v991;
        if (v864)
        {
          v865 = *(v991 + 372);
          v866 = *(v63 + 424);
          LODWORD(buf[0]) = 136447490;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v991 + 74;
          HIWORD(buf[2]) = 2080;
          v1007 = " ";
          *v1008 = 1024;
          *&v1008[2] = v865;
          *&v1008[6] = 1024;
          *&v1008[8] = v866;
          *&v1008[12] = 2048;
          *&v1008[14] = v63;
          _os_log_impl(&dword_181A37000, v863, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
          v28 = v991;
        }
      }

      if ((*(v63 + 428) & 0x2000) == 0)
      {
        __nwlog_obj();
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_http1_remove_pending_stream";
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = v63;
        v155 = _os_log_send_and_compose_impl();
        LOBYTE(iterate_block[0]) = 16;
        aBlock[0] = 0;
        if (!__nwlog_fault(v155, iterate_block, aBlock))
        {
          goto LABEL_708;
        }

        if (LOBYTE(iterate_block[0]) == 17)
        {
          v156 = __nwlog_obj();
          v157 = iterate_block[0];
          if (!os_log_type_enabled(v156, iterate_block[0]))
          {
            goto LABEL_708;
          }

          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v63;
          v158 = "%{public}s stream %p not in pending list, cannot remove";
        }

        else if (aBlock[0] == 1)
        {
          v257 = __nw_create_backtrace_string();
          v156 = __nwlog_obj();
          v157 = iterate_block[0];
          v258 = os_log_type_enabled(v156, iterate_block[0]);
          if (v257)
          {
            if (v258)
            {
              LODWORD(buf[0]) = 136446722;
              *(buf + 4) = "nw_http1_remove_pending_stream";
              WORD2(buf[1]) = 2048;
              *(&buf[1] + 6) = v63;
              HIWORD(buf[2]) = 2082;
              v1007 = v257;
              _os_log_impl(&dword_181A37000, v156, v157, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v257);
            goto LABEL_708;
          }

          if (!v258)
          {
LABEL_708:
            if (v155)
            {
              free(v155);
            }

            goto LABEL_815;
          }

          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v63;
          v158 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
        }

        else
        {
          v156 = __nwlog_obj();
          v157 = iterate_block[0];
          if (!os_log_type_enabled(v156, iterate_block[0]))
          {
            goto LABEL_708;
          }

          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v63;
          v158 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v156, v157, v158, buf, 0x16u);
        goto LABEL_708;
      }

      v245 = *(v63 + 296);
      v246 = *(v63 + 304);
      v247 = (v28 + 256);
      if (v245)
      {
        v247 = (v245 + 304);
      }

      *v247 = v246;
      *v246 = v245;
      *(v63 + 296) = 0;
      *(v63 + 304) = 0;
      v248 = *(v28 + 348);
      *(v28 + 348) = v248 - 1;
      if (v248)
      {
LABEL_813:
        *(v63 + 428) &= ~0x2000u;
        if ((*(v63 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v893 = __nwlog_obj();
          if (os_log_type_enabled(v893, OS_LOG_TYPE_DEBUG))
          {
            v894 = v63 + 74;
            v895 = *(v63 + 256);
            v896 = *(*(v63 + 248) + 372);
            if (v895)
            {
              LODWORD(v895) = *(v895 + 860);
            }

            v63 = v990;
            v897 = *(v990 + 424);
            v898 = *(v991 + 348);
            LODWORD(buf[0]) = 136448258;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v894;
            HIWORD(buf[2]) = 2080;
            v1007 = " ";
            *v1008 = 1024;
            *&v1008[2] = v896;
            *&v1008[6] = 1024;
            *&v1008[8] = v895;
            *&v1008[12] = 1024;
            *&v1008[14] = v897;
            *&v1008[18] = 1024;
            *&v1008[20] = v897;
            *&v1008[24] = 2048;
            *&v1008[26] = v990;
            *&v1008[34] = 1024;
            *&v1008[36] = v898;
            _os_log_impl(&dword_181A37000, v893, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed pending stream %u (%p), now have %u pending streams", buf, 0x48u);
          }
        }

        goto LABEL_815;
      }

      v249 = v28;
      __nwlog_obj();
      v250 = *(v249 + 348);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = "http1->pending_stream_count";
      HIWORD(buf[2]) = 2048;
      v1007 = 1;
      *v1008 = 2048;
      *&v1008[2] = v250;
      v251 = _os_log_send_and_compose_impl();
      LOBYTE(iterate_block[0]) = 16;
      aBlock[0] = 0;
      if (__nwlog_fault(v251, iterate_block, aBlock))
      {
        if (LOBYTE(iterate_block[0]) == 17)
        {
          v252 = __nwlog_obj();
          v253 = iterate_block[0];
          if (os_log_type_enabled(v252, iterate_block[0]))
          {
            v254 = *(v991 + 348);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->pending_stream_count";
            HIWORD(buf[2]) = 2048;
            v1007 = 1;
            *v1008 = 2048;
            *&v1008[2] = v254;
            v255 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_809:
            _os_log_impl(&dword_181A37000, v252, v253, v255, buf, 0x2Au);
          }
        }

        else if (aBlock[0] == 1)
        {
          v375 = __nw_create_backtrace_string();
          v252 = __nwlog_obj();
          v253 = iterate_block[0];
          v376 = os_log_type_enabled(v252, iterate_block[0]);
          if (v375)
          {
            if (v376)
            {
              v377 = *(v991 + 348);
              LODWORD(buf[0]) = 136447234;
              *(buf + 4) = "nw_http1_remove_pending_stream";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = "http1->pending_stream_count";
              HIWORD(buf[2]) = 2048;
              v1007 = 1;
              *v1008 = 2048;
              *&v1008[2] = v377;
              *&v1008[10] = 2082;
              *&v1008[12] = v375;
              _os_log_impl(&dword_181A37000, v252, v253, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v375);
            goto LABEL_810;
          }

          if (v376)
          {
            v466 = *(v991 + 348);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->pending_stream_count";
            HIWORD(buf[2]) = 2048;
            v1007 = 1;
            *v1008 = 2048;
            *&v1008[2] = v466;
            v255 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
            goto LABEL_809;
          }
        }

        else
        {
          v252 = __nwlog_obj();
          v253 = iterate_block[0];
          if (os_log_type_enabled(v252, iterate_block[0]))
          {
            v428 = *(v991 + 348);
            LODWORD(buf[0]) = 136446978;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->pending_stream_count";
            HIWORD(buf[2]) = 2048;
            v1007 = 1;
            *v1008 = 2048;
            *&v1008[2] = v428;
            v255 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
            goto LABEL_809;
          }
        }
      }

LABEL_810:
      if (v251)
      {
        free(v251);
      }

      *(v991 + 348) = 0;
      goto LABEL_813;
    }

    if (!*(v63 + 32))
    {
      if (*(v63 + 158))
      {
        goto LABEL_255;
      }

      if (gLogDatapath != 1)
      {
        goto LABEL_255;
      }

      v183 = __nwlog_obj();
      v184 = os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG);
      v28 = v991;
      if (!v184)
      {
        goto LABEL_255;
      }

      v185 = *(v63 + 256);
      v186 = *(*(v63 + 248) + 372);
      if (v185)
      {
        LODWORD(v185) = *(v185 + 860);
      }

      v187 = *(v990 + 424);
      LODWORD(buf[0]) = 136447746;
      *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v63 + 74;
      HIWORD(buf[2]) = 2080;
      v1007 = " ";
      *v1008 = 1024;
      *&v1008[2] = v186;
      *&v1008[6] = 1024;
      *&v1008[8] = v185;
      *&v1008[12] = 1024;
      *&v1008[14] = v187;
      *&v1008[18] = 2048;
      *&v1008[20] = v990;
      v151 = "%{public}s %{public}s%s<i%u:c%u:s%u> Stream %p still awaiting new output handler";
      v152 = v183;
      v153 = 60;
      goto LABEL_254;
    }

    if ((*(v63 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v763 = __nwlog_obj();
      if (os_log_type_enabled(v763, OS_LOG_TYPE_DEBUG))
      {
        v764 = v63 + 74;
        v765 = *(v63 + 256);
        v766 = *(*(v63 + 248) + 372);
        if (v765)
        {
          LODWORD(v765) = *(v765 + 860);
        }

        v63 = v990;
        v767 = *(v990 + 424);
        v768 = *(v990 + 32);
        LODWORD(buf[0]) = 136448002;
        *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v764;
        HIWORD(buf[2]) = 2080;
        v1007 = " ";
        *v1008 = 1024;
        *&v1008[2] = v766;
        *&v1008[6] = 1024;
        *&v1008[8] = v765;
        *&v1008[12] = 1024;
        *&v1008[14] = v767;
        *&v1008[18] = 2048;
        *&v1008[20] = v990;
        *&v1008[28] = 2048;
        *&v1008[30] = v768;
        _os_log_impl(&dword_181A37000, v763, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> creating connection for stream %p with new output_handler %p", buf, 0x46u);
      }
    }

    v170 = *(v63 + 32);
    if (v170)
    {
      v171 = *(v63 + 336);
      if (v171)
      {
        v172 = *(v63 + 320);
        if (v172)
        {
          v173 = malloc_type_calloc(1uLL, 0x370uLL, 0xBCAD5C15uLL);
          v174 = v173;
          if (v173)
          {
            bzero(v173, 0x370uLL);
            nw_http1_connection::nw_http1_connection(v174);
          }

          else
          {
            v191 = __nwlog_obj();
            os_log_type_enabled(v191, OS_LOG_TYPE_ERROR);
            LODWORD(buf[0]) = 136446722;
            *(buf + 4) = "nw_http1_connection_create";
            v12 = 2;
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = 1;
            HIWORD(buf[2]) = 2048;
            v1007 = 880;
            v192 = _os_log_send_and_compose_impl();
            if (__nwlog_should_abort(v192) || (free(v192), bzero(0, 0x370uLL), nw_http1_connection::nw_http1_connection(0), v193 = __nwlog_obj(), os_log_type_enabled(v193, OS_LOG_TYPE_ERROR), LODWORD(buf[0]) = 136446210, *(buf + 4) = "nw_http1_connection_create", v194 = _os_log_send_and_compose_impl(), __nwlog_should_abort(v194)))
            {
LABEL_1814:
              __break(1u);
LABEL_1815:
              __nwlog_obj();
              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
              v967 = _os_log_send_and_compose_impl();
              LOBYTE(iterate_block[0]) = 16;
              aBlock[0] = 0;
              if (!__nwlog_fault(v967, iterate_block, aBlock))
              {
                goto LABEL_1866;
              }

              if (LOBYTE(iterate_block[0]) == 17)
              {
                v968 = __nwlog_obj();
                v969 = iterate_block[0];
                if (!os_log_type_enabled(v968, iterate_block[0]))
                {
                  goto LABEL_1866;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                v970 = "%{public}s called with null http1";
LABEL_1859:
                v986 = buf;
LABEL_1865:
                _os_log_impl(&dword_181A37000, v968, v969, v970, v986, 0xCu);
                goto LABEL_1866;
              }

              if (aBlock[0] != 1)
              {
                v968 = __nwlog_obj();
                v969 = iterate_block[0];
                if (!os_log_type_enabled(v968, iterate_block[0]))
                {
                  goto LABEL_1866;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                v970 = "%{public}s called with null http1, backtrace limit exceeded";
                goto LABEL_1859;
              }

              v975 = __nw_create_backtrace_string();
              v968 = __nwlog_obj();
              v969 = iterate_block[0];
              v976 = os_log_type_enabled(v968, iterate_block[0]);
              if (!v975)
              {
                if (!v976)
                {
                  goto LABEL_1866;
                }

                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                v970 = "%{public}s called with null http1, no backtrace";
                goto LABEL_1859;
              }

              if (v976)
              {
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "nw_http1_connection_mark_do_not_reuse";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v975;
                _os_log_impl(&dword_181A37000, v968, v969, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v975);
LABEL_1866:
              if (!v967)
              {
                goto LABEL_1757;
              }

              goto LABEL_1867;
            }

            free(v194);
            v63 = v990;
          }

          v195 = v991;
          if (nw_protocol_http1_identifier::onceToken != -1)
          {
            dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
            v195 = v991;
          }

          *(v174 + 16) = &nw_protocol_http1_identifier::http1_protocol_identifier;
          if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
          {
            dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
            v195 = v991;
          }

          *(v174 + 24) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
          *(v174 + 184) = 3;
          *(v174 + 176) = v174;
          *(v174 + 40) = v174 + 160;
          *(v174 + 480) = v195;
          nw_protocol_set_output_handler(v174, v170);
          v196 = os_retain(v171);
          v197 = *(v174 + 760);
          if ((v197 & 1) != 0 && *(v174 + 752))
          {
            v198 = v196;
            os_release(*(v174 + 752));
            v196 = v198;
            v197 = *(v174 + 760);
          }

          *(v174 + 752) = v196;
          *(v174 + 760) = v197 | 1;
          v199 = os_retain(v172);
          v200 = *(v174 + 744);
          if ((v200 & 1) != 0 && *(v174 + 736))
          {
            v201 = v199;
            os_release(*(v174 + 736));
            v199 = v201;
            v200 = *(v174 + 744);
          }

          *(v174 + 736) = v199;
          *(v174 + 744) = v200 | 1;
          v202 = _nw_parameters_copy_context(v172);
          v203 = *(v174 + 504);
          if (v203)
          {
            v204 = v991;
            if (*(v174 + 496))
            {
              v205 = v202;
              os_release(*(v174 + 496));
              v204 = v991;
              v202 = v205;
              v203 = *(v174 + 504);
            }
          }

          else
          {
            v204 = v991;
          }

          *(v174 + 496) = v202;
          *(v174 + 504) = v203 | 1;
          *(v174 + 192) = *(v204 + 192);
          iterate_block[0] = MEMORY[0x1E69E9820];
          iterate_block[1] = 0x40000000;
          iterate_block[2] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke;
          v1010 = &__block_descriptor_tmp_43_43000;
          v1011 = v174;
          metadata = nw_http_connection_create_metadata(v202, iterate_block, 0);
          v207 = *(v174 + 776);
          if ((v207 & 1) != 0 && *(v174 + 768))
          {
            v208 = metadata;
            os_release(*(v174 + 768));
            metadata = v208;
            v207 = *(v174 + 776);
          }

          *(v174 + 768) = metadata;
          *(v174 + 776) = v207 | 1;
          nw_http_connection_metadata_set_version(metadata, 3);
          nw_http_connection_metadata_set_shared_connection_pool_metadata(*(v174 + 768), *(v991 + 312));
          *(v174 + 616) = 0;
          *(v174 + 624) = v174 + 616;
          *(v174 + 632) = 0;
          *(v174 + 640) = v174 + 632;
          *(v174 + 648) = 0;
          *(v174 + 656) = v174 + 648;
          *(v174 + 664) = 0;
          *(v174 + 672) = v174 + 664;
          *(v174 + 680) = 0;
          *(v174 + 688) = v174 + 680;
          nw_frame_cache_init(v174 + 696, v174, 256, 0x40000, 16);
          v209 = *(v174 + 480);
          if (v209)
          {
            *(v174 + 360) = 0u;
            *(v174 + 376) = 0u;
            *(v174 + 392) = 0u;
            *(v174 + 408) = 0u;
            *(v174 + 424) = 0u;
            *(v174 + 440) = 0u;
            *(v174 + 328) = 0u;
            *(v174 + 344) = 0u;
            *(v174 + 296) = nw_http1_on_message_begin;
            *(v174 + 384) = nw_http1_on_message_complete;
            *(v174 + 368) = nw_http1_on_headers_complete;
            *(v174 + 472) = nw_http1_on_reset;
            *(v174 + 320) = nw_http1_on_method;
            *(v174 + 408) = nw_http1_on_method_complete;
            *(v174 + 304) = nw_http1_on_url;
            *(v174 + 392) = nw_http1_on_url_complete;
            *(v174 + 312) = nw_http1_on_status;
            *(v174 + 400) = nw_http1_on_status_complete;
            *(v174 + 336) = nw_http1_on_header_field;
            *(v174 + 424) = nw_http1_on_header_field_complete;
            *(v174 + 344) = nw_http1_on_header_value;
            *(v174 + 432) = nw_http1_on_header_value_complete;
            *(v174 + 376) = nw_http1_on_body;
            *(v174 + 456) = nw_http1_on_chunk_header;
            *(v174 + 464) = nw_http1_on_chunk_complete;
            v210 = *(v209 + 376);
            *(v174 + 248) = 0u;
            *(v174 + 200) = 0u;
            *(v174 + 264) = 0u;
            *(v174 + 232) = 0u;
            *(v174 + 216) = 0u;
            if (v210)
            {
              v211 = 1;
            }

            else
            {
              v211 = 2;
            }

            *(v174 + 272) = v211;
            *(v174 + 280) = 0;
            *(v174 + 288) = v174 + 296;
            *(v174 + 278) = 16131;
            *(v174 + 248) = v174;
            *(v174 + 256) = 237;
            if ((*(v174 + 158) & 1) == 0)
            {
              v212 = __nwlog_obj();
              if (os_log_type_enabled(v212, OS_LOG_TYPE_DEBUG))
              {
                v213 = *(v174 + 488);
                v214 = *(*(v174 + 480) + 372);
                v215 = *(v174 + 860);
                if (v213)
                {
                  LODWORD(v213) = *(v213 + 424);
                }

                LODWORD(buf[0]) = 136448258;
                *(buf + 4) = "nw_http1_connection_log_parser_version";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v174 + 74;
                HIWORD(buf[2]) = 2080;
                v1007 = " ";
                *v1008 = 1024;
                *&v1008[2] = v214;
                *&v1008[6] = 1024;
                *&v1008[8] = v215;
                *&v1008[12] = 1024;
                *&v1008[14] = v213;
                *&v1008[18] = 1024;
                *&v1008[20] = 9;
                *&v1008[24] = 1024;
                *&v1008[26] = 2;
                *&v1008[30] = 1024;
                *&v1008[32] = 1;
                _os_log_impl(&dword_181A37000, v212, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> using http parser v%d.%d.%d", buf, 0x44u);
              }
            }

            goto LABEL_339;
          }

          __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_parser_init";
          v769 = _os_log_send_and_compose_impl();
          v1003[0] = 16;
          type[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v769, v1003, type))
          {
            if (v1003[0] == 17)
            {
              v770 = __nwlog_obj();
              v771 = v1003[0];
              if (os_log_type_enabled(v770, v1003[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_parser_init";
                v772 = "%{public}s called with null http1_connection->protocol_http1";
LABEL_1635:
                _os_log_impl(&dword_181A37000, v770, v771, v772, buf, 0xCu);
              }
            }

            else if (type[0] == OS_LOG_TYPE_INFO)
            {
              v847 = __nw_create_backtrace_string();
              v770 = __nwlog_obj();
              v771 = v1003[0];
              v848 = os_log_type_enabled(v770, v1003[0]);
              if (v847)
              {
                if (v848)
                {
                  LODWORD(buf[0]) = 136446466;
                  *(buf + 4) = "nw_http1_connection_parser_init";
                  WORD2(buf[1]) = 2082;
                  *(&buf[1] + 6) = v847;
                  _os_log_impl(&dword_181A37000, v770, v771, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v847);
                goto LABEL_1636;
              }

              if (v848)
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_parser_init";
                v772 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
                goto LABEL_1635;
              }
            }

            else
            {
              v770 = __nwlog_obj();
              v771 = v1003[0];
              if (os_log_type_enabled(v770, v1003[0]))
              {
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_connection_parser_init";
                v772 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
                goto LABEL_1635;
              }
            }
          }

LABEL_1636:
          if (v769)
          {
            free(v769);
          }

          v63 = v990;
LABEL_339:
          buf[0] = 0;
          buf[1] = buf;
          buf[2] = 0x2000000000;
          v1007 = v174;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 0x40000000;
          *&aBlock[16] = ___ZL26nw_http1_connection_createP11nw_protocolP17nw_protocol_http1P11nw_endpointP13nw_parameters_block_invoke_2;
          v999 = &unk_1E6A32758;
          *v1000 = buf;
          *(v174 + 608) = _Block_copy(aBlock);
          _Block_object_dispose(buf, 8);
          if ((*(v174 + 158) & 1) == 0 && gLogDatapath == 1)
          {
            v780 = __nwlog_obj();
            if (os_log_type_enabled(v780, OS_LOG_TYPE_DEBUG))
            {
              v781 = *(v174 + 488);
              v782 = *(*(v174 + 480) + 372);
              v783 = *(v174 + 860);
              if (v781)
              {
                LODWORD(v781) = *(v781 + 424);
              }

              LODWORD(buf[0]) = 136447746;
              *(buf + 4) = "nw_http1_connection_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v174 + 74;
              HIWORD(buf[2]) = 2080;
              v1007 = " ";
              *v1008 = 1024;
              *&v1008[2] = v782;
              *&v1008[6] = 1024;
              *&v1008[8] = v783;
              *&v1008[12] = 1024;
              *&v1008[14] = v781;
              *&v1008[18] = 2048;
              *&v1008[20] = v174;
              _os_log_impl(&dword_181A37000, v780, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created %p", buf, 0x3Cu);
              v63 = v990;
            }
          }

          nw_protocol_replace_input_handler(v170, v63, v174);
          *v174 = *v170;
          v216 = *(v174 + 736);
          if (v216)
          {
            v217 = v991;
            if (*(v174 + 528))
            {
              goto LABEL_365;
            }

            v218 = _nw_parameters_copy_context(*(v174 + 736));
            buf[0] = nw_path_copy_flow_registration(v218, v174);
            v219 = (v174 + 560);
            nw::retained_ptr<nw_endpoint *>::operator=(v174 + 560, buf);
            v220 = *(v174 + 560);
            if (v220)
            {
              v221 = nw_path_flow_registration_copy_endpoint(v220);
              v222 = nw_path_flow_registration_copy_parameters(*v219);
              buf[0] = nw_endpoint_copy_association_with_evaluator(v221, v222, 0);
              nw::retained_ptr<nw_endpoint *>::operator=(v174 + 528, buf);
              if (*(v174 + 528))
              {
                buf[0] = nw_protocol_instance_stub_create(v174);
                nw::retained_ptr<nw_endpoint *>::operator=(v174 + 544, buf);
                nw_association_register_internal(*(v174 + 528), v216, *(v174 + 544), 0, 0, &__block_literal_global_69_43019);
                v223 = nw_association_copy_current_path(*(v174 + 528), v222);
                if (v223)
                {
                  v224 = v223;
                  v225 = nw_path_copy_for_flow_registration(v223, *v219);
                  if (v225)
                  {
                    v226 = v225;
                    if (*(v174 + 512) != v225)
                    {
                      buf[0] = os_retain(v225);
                      nw::retained_ptr<nw_endpoint *>::operator=(v174 + 512, buf);
                    }

                    if (nw_path_has_flows(v226))
                    {
                      v227 = 4096;
                    }

                    else
                    {
                      v227 = 0;
                    }

                    *(v174 + 872) = *(v174 + 872) & 0xEFFF | v227;
                    v228 = _nw_parameters_copy_effective_proxy_config(v216);
                    if (v228)
                    {
                      v229 = v228;
                      if (nw_path_has_proxy_config(v224, v228))
                      {
                        buf[0] = os_retain(v229);
                        nw::retained_ptr<nw_endpoint *>::operator=(v174 + 576, buf);
                      }

                      os_release(v229);
                    }

                    os_release(v226);
                  }

                  os_release(v224);
                }
              }

              if (v222)
              {
                os_release(v222);
              }

              if (v221)
              {
                os_release(v221);
              }
            }

            v217 = v991;
            if (!v218)
            {
LABEL_365:
              v230 = *(v174 + 512);
              if (v230)
              {
                v231 = _nw_path_uses_interface_type(v230, 2u);
                v217 = v991;
                if (v231)
                {
                  *(v174 + 192) = 1000;
                }
              }

              v232 = *(v217 + 336) + 1;
              *(v217 + 336) = v232;
              v233 = v990;
              if (v232 == v232 << 31 >> 31)
              {
LABEL_516:
                v316 = *(v217 + 360) + 1;
                *(v217 + 360) = v316;
                if (v316 == v316 << 31 >> 31)
                {
                  goto LABEL_534;
                }

                v317 = v217;
                __nwlog_obj();
                v318 = *(v317 + 360);
                LODWORD(buf[0]) = 136446978;
                *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = "http1->next_connection_log_num";
                HIWORD(buf[2]) = 2048;
                v1007 = 1;
                *v1008 = 2048;
                *&v1008[2] = v318;
                v319 = _os_log_send_and_compose_impl();
                LOBYTE(iterate_block[0]) = 16;
                aBlock[0] = 0;
                if (__nwlog_fault(v319, iterate_block, aBlock))
                {
                  if (LOBYTE(iterate_block[0]) == 17)
                  {
                    v320 = __nwlog_obj();
                    v321 = iterate_block[0];
                    if (os_log_type_enabled(v320, iterate_block[0]))
                    {
                      v322 = *(v991 + 360);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->next_connection_log_num";
                      HIWORD(buf[2]) = 2048;
                      v1007 = 1;
                      *v1008 = 2048;
                      *&v1008[2] = v322;
                      v323 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_530:
                      _os_log_impl(&dword_181A37000, v320, v321, v323, buf, 0x2Au);
                    }
                  }

                  else if (aBlock[0] == 1)
                  {
                    v324 = __nw_create_backtrace_string();
                    v320 = __nwlog_obj();
                    v321 = iterate_block[0];
                    v325 = os_log_type_enabled(v320, iterate_block[0]);
                    if (v324)
                    {
                      if (v325)
                      {
                        v326 = *(v991 + 360);
                        LODWORD(buf[0]) = 136447234;
                        *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = "http1->next_connection_log_num";
                        HIWORD(buf[2]) = 2048;
                        v1007 = 1;
                        *v1008 = 2048;
                        *&v1008[2] = v326;
                        *&v1008[10] = 2082;
                        *&v1008[12] = v324;
                        _os_log_impl(&dword_181A37000, v320, v321, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                      }

                      free(v324);
                      v233 = v990;
                      goto LABEL_531;
                    }

                    v233 = v990;
                    if (v325)
                    {
                      v328 = *(v991 + 360);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->next_connection_log_num";
                      HIWORD(buf[2]) = 2048;
                      v1007 = 1;
                      *v1008 = 2048;
                      *&v1008[2] = v328;
                      v323 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                      goto LABEL_530;
                    }
                  }

                  else
                  {
                    v320 = __nwlog_obj();
                    v321 = iterate_block[0];
                    if (os_log_type_enabled(v320, iterate_block[0]))
                    {
                      v327 = *(v991 + 360);
                      LODWORD(buf[0]) = 136446978;
                      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->next_connection_log_num";
                      HIWORD(buf[2]) = 2048;
                      v1007 = 1;
                      *v1008 = 2048;
                      *&v1008[2] = v327;
                      v323 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                      goto LABEL_530;
                    }
                  }
                }

LABEL_531:
                if (v319)
                {
                  free(v319);
                }

                LODWORD(v316) = -1;
                *(v991 + 360) = -1;
LABEL_534:
                *(v174 + 860) = v316;
                if ((*(v174 + 158) & 1) == 0 && gLogDatapath == 1)
                {
                  v784 = __nwlog_obj();
                  if (os_log_type_enabled(v784, OS_LOG_TYPE_DEBUG))
                  {
                    v785 = *(v174 + 488);
                    v786 = *(*(v174 + 480) + 372);
                    v787 = *(v174 + 860);
                    if (v785)
                    {
                      LODWORD(v785) = *(v785 + 424);
                    }

                    v788 = *(v991 + 336);
                    LODWORD(buf[0]) = 136448002;
                    *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v174 + 74;
                    HIWORD(buf[2]) = 2080;
                    v1007 = " ";
                    *v1008 = 1024;
                    *&v1008[2] = v786;
                    *&v1008[6] = 1024;
                    *&v1008[8] = v787;
                    *&v1008[12] = 1024;
                    *&v1008[14] = v785;
                    *&v1008[18] = 2048;
                    *&v1008[20] = v174;
                    *&v1008[28] = 1024;
                    *&v1008[30] = v788;
                    _os_log_impl(&dword_181A37000, v784, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> added connection %p, now have %u connections", buf, 0x42u);
                    v233 = v990;
                  }
                }

                if (*(v233 + 248))
                {
                  if (*(v174 + 488))
                  {
                    __nwlog_obj();
                    v329 = *(v174 + 488);
                    LODWORD(buf[0]) = 136446722;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2048;
                    *(&buf[1] + 6) = v174;
                    HIWORD(buf[2]) = 2048;
                    v1007 = v329;
                    v330 = _os_log_send_and_compose_impl();
                    aBlock[0] = 16;
                    v1003[0] = 0;
                    if (!__nwlog_fault(v330, aBlock, v1003))
                    {
                      goto LABEL_569;
                    }

                    if (aBlock[0] == 17)
                    {
                      v331 = __nwlog_obj();
                      v332 = aBlock[0];
                      if (!os_log_type_enabled(v331, aBlock[0]))
                      {
                        goto LABEL_569;
                      }

                      v333 = *(v174 + 488);
                      LODWORD(buf[0]) = 136446722;
                      *(buf + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(buf[1]) = 2048;
                      *(&buf[1] + 6) = v174;
                      HIWORD(buf[2]) = 2048;
                      v1007 = v333;
                      v334 = "%{public}s Connection %p already has a stream (%p)";
                    }

                    else if (v1003[0] == 1)
                    {
                      v341 = __nw_create_backtrace_string();
                      v331 = __nwlog_obj();
                      v332 = aBlock[0];
                      v342 = os_log_type_enabled(v331, aBlock[0]);
                      if (v341)
                      {
                        if (v342)
                        {
                          v343 = *(v174 + 488);
                          LODWORD(buf[0]) = 136446978;
                          *(buf + 4) = "nw_http1_stream_associate_with_connection";
                          WORD2(buf[1]) = 2048;
                          *(&buf[1] + 6) = v174;
                          HIWORD(buf[2]) = 2048;
                          v1007 = v343;
                          *v1008 = 2082;
                          *&v1008[2] = v341;
                          _os_log_impl(&dword_181A37000, v331, v332, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
                        }

                        free(v341);
LABEL_569:
                        if (!v330)
                        {
LABEL_571:
                          v233 = v990;
                          goto LABEL_572;
                        }

LABEL_570:
                        free(v330);
                        goto LABEL_571;
                      }

                      if (!v342)
                      {
                        goto LABEL_569;
                      }

                      v353 = *(v174 + 488);
                      LODWORD(buf[0]) = 136446722;
                      *(buf + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(buf[1]) = 2048;
                      *(&buf[1] + 6) = v174;
                      HIWORD(buf[2]) = 2048;
                      v1007 = v353;
                      v334 = "%{public}s Connection %p already has a stream (%p), no backtrace";
                    }

                    else
                    {
                      v331 = __nwlog_obj();
                      v332 = aBlock[0];
                      if (!os_log_type_enabled(v331, aBlock[0]))
                      {
                        goto LABEL_569;
                      }

                      v344 = *(v174 + 488);
                      LODWORD(buf[0]) = 136446722;
                      *(buf + 4) = "nw_http1_stream_associate_with_connection";
                      WORD2(buf[1]) = 2048;
                      *(&buf[1] + 6) = v174;
                      HIWORD(buf[2]) = 2048;
                      v1007 = v344;
                      v334 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
                    }

                    _os_log_impl(&dword_181A37000, v331, v332, v334, buf, 0x20u);
                    goto LABEL_569;
                  }

                  *(v233 + 256) = v174;
                  *(v174 + 488) = v233;
                  v335 = *(v233 + 320);
                  if (v335)
                  {
                    v335 = os_retain(v335);
                  }

                  buf[0] = v335;
                  nw::retained_ptr<nw_endpoint *>::operator=(v174 + 736, buf);
                  if ((*(*(v233 + 248) + 376) & 2) == 0)
                  {
                    goto LABEL_1026;
                  }

                  v336 = nw_parameters_copy_default_protocol_stack(*(v233 + 320));
                  *aBlock = 0;
                  *&aBlock[8] = aBlock;
                  *&aBlock[16] = 0x2000000000;
                  LOBYTE(v999) = 0;
                  buf[0] = 0;
                  buf[1] = buf;
                  buf[2] = 0x3802000000;
                  v1007 = __Block_byref_object_copy__42960;
                  *v1008 = __Block_byref_object_dispose__42961;
                  *&v1008[8] = 0;
                  v1008[16] |= 1u;
                  iterate_block[0] = MEMORY[0x1E69E9820];
                  iterate_block[1] = 0x40000000;
                  iterate_block[2] = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
                  v1010 = &unk_1E6A32930;
                  v1011 = aBlock;
                  v1012 = buf;
                  v1013 = v233;
                  nw_protocol_stack_iterate_application_protocols(v336, iterate_block);
                  if (*(buf[1] + 40))
                  {
                    v337 = v174;
                    while (1)
                    {
                      v337 = *(v337 + 32);
                      if (!v337)
                      {
                        break;
                      }

                      if (nw_protocol_is_tls_over_stream(v337))
                      {
                        v338 = *(buf[1] + 40);
                        v339 = nw_protocol_boringssl_copy_definition();
                        nw_parameters_set_protocol_instance(v338, v340, v337);
                        if (v339)
                        {
                          os_release(v339);
                        }

                        goto LABEL_1013;
                      }
                    }

                    __nwlog_obj();
                    *v1003 = 136446210;
                    *&v1003[4] = "nw_http1_stream_associate_with_connection";
                    v349 = _os_log_send_and_compose_impl();
                    type[0] = OS_LOG_TYPE_ERROR;
                    v997 = OS_LOG_TYPE_DEFAULT;
                    if (!__nwlog_fault(v349, type, &v997))
                    {
                      goto LABEL_1017;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v350 = __nwlog_obj();
                      v351 = type[0];
                      if (os_log_type_enabled(v350, type[0]))
                      {
                        *v1003 = 136446210;
                        *&v1003[4] = "nw_http1_stream_associate_with_connection";
                        v352 = "%{public}s tls should have been in the stack but could not find it";
LABEL_1016:
                        _os_log_impl(&dword_181A37000, v350, v351, v352, v1003, 0xCu);
                      }
                    }

                    else if (v997 == OS_LOG_TYPE_INFO)
                    {
                      v420 = __nw_create_backtrace_string();
                      v350 = __nwlog_obj();
                      v351 = type[0];
                      v421 = os_log_type_enabled(v350, type[0]);
                      if (v420)
                      {
                        if (v421)
                        {
                          *v1003 = 136446466;
                          *&v1003[4] = "nw_http1_stream_associate_with_connection";
                          *&v1003[12] = 2082;
                          *&v1003[14] = v420;
                          _os_log_impl(&dword_181A37000, v350, v351, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v1003, 0x16u);
                        }

                        free(v420);
                        v233 = v990;
                        goto LABEL_1017;
                      }

                      v233 = v990;
                      if (v421)
                      {
                        *v1003 = 136446210;
                        *&v1003[4] = "nw_http1_stream_associate_with_connection";
                        v352 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
                        goto LABEL_1016;
                      }
                    }

                    else
                    {
                      v350 = __nwlog_obj();
                      v351 = type[0];
                      if (os_log_type_enabled(v350, type[0]))
                      {
                        *v1003 = 136446210;
                        *&v1003[4] = "nw_http1_stream_associate_with_connection";
                        v352 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
                        goto LABEL_1016;
                      }
                    }

LABEL_1017:
                    if (v349)
                    {
                      free(v349);
                    }

                    v585 = 0;
                    goto LABEL_1020;
                  }

                  __nwlog_obj();
                  *v1003 = 136446210;
                  *&v1003[4] = "nw_http1_stream_associate_with_connection";
                  v345 = _os_log_send_and_compose_impl();
                  type[0] = OS_LOG_TYPE_ERROR;
                  v997 = OS_LOG_TYPE_DEFAULT;
                  if (__nwlog_fault(v345, type, &v997))
                  {
                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v346 = __nwlog_obj();
                      v347 = type[0];
                      if (os_log_type_enabled(v346, type[0]))
                      {
                        *v1003 = 136446210;
                        *&v1003[4] = "nw_http1_stream_associate_with_connection";
                        v348 = "%{public}s unable to find tls options";
LABEL_1010:
                        _os_log_impl(&dword_181A37000, v346, v347, v348, v1003, 0xCu);
                      }
                    }

                    else if (v997 == OS_LOG_TYPE_INFO)
                    {
                      v379 = __nw_create_backtrace_string();
                      v346 = __nwlog_obj();
                      v347 = type[0];
                      v380 = os_log_type_enabled(v346, type[0]);
                      if (v379)
                      {
                        if (v380)
                        {
                          *v1003 = 136446466;
                          *&v1003[4] = "nw_http1_stream_associate_with_connection";
                          *&v1003[12] = 2082;
                          *&v1003[14] = v379;
                          _os_log_impl(&dword_181A37000, v346, v347, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v1003, 0x16u);
                        }

                        free(v379);
                        v233 = v990;
                      }

                      else
                      {
                        v233 = v990;
                        if (v380)
                        {
                          *v1003 = 136446210;
                          *&v1003[4] = "nw_http1_stream_associate_with_connection";
                          v348 = "%{public}s unable to find tls options, no backtrace";
                          goto LABEL_1010;
                        }
                      }
                    }

                    else
                    {
                      v346 = __nwlog_obj();
                      v347 = type[0];
                      if (os_log_type_enabled(v346, type[0]))
                      {
                        *v1003 = 136446210;
                        *&v1003[4] = "nw_http1_stream_associate_with_connection";
                        v348 = "%{public}s unable to find tls options, backtrace limit exceeded";
                        goto LABEL_1010;
                      }
                    }
                  }

                  if (v345)
                  {
                    free(v345);
                  }

LABEL_1013:
                  v585 = 1;
LABEL_1020:
                  _Block_object_dispose(buf, 8);
                  if ((v1008[16] & 1) != 0 && *&v1008[8])
                  {
                    os_release(*&v1008[8]);
                  }

                  _Block_object_dispose(aBlock, 8);
                  if (v336)
                  {
                    os_release(v336);
                  }

                  if (!v585)
                  {
LABEL_572:
                    if ((*(v233 + 158) & 1) == 0)
                    {
                      v354 = __nwlog_obj();
                      if (os_log_type_enabled(v354, OS_LOG_TYPE_DEBUG))
                      {
                        v355 = *(v233 + 256);
                        v356 = *(*(v233 + 248) + 372);
                        if (v355)
                        {
                          LODWORD(v355) = *(v355 + 860);
                        }

                        v357 = *(v233 + 424);
                        LODWORD(buf[0]) = 136448258;
                        *(buf + 4) = "nw_http1_start_new_connection_for_stream";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v233 + 74;
                        HIWORD(buf[2]) = 2080;
                        v1007 = " ";
                        *v1008 = 1024;
                        *&v1008[2] = v356;
                        *&v1008[6] = 1024;
                        *&v1008[8] = v355;
                        *&v1008[12] = 1024;
                        *&v1008[14] = v357;
                        *&v1008[18] = 2048;
                        *&v1008[20] = v174;
                        *&v1008[28] = 1024;
                        *&v1008[30] = v357;
                        *&v1008[34] = 2048;
                        *&v1008[36] = v233;
                        _os_log_impl(&dword_181A37000, v354, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> created new connection %p for stream %u (%p)", buf, 0x4Cu);
                      }
                    }

                    *(v233 + 428) |= 1u;
                    v358 = nw_protocol_copy_info(v170);
                    v359 = v358;
                    if (v358)
                    {
                      v360 = _nw_array_copy_last_object(v358);
                      v361 = v360;
                      if (v360)
                      {
                        if (nw_protocol_metadata_is_tls(v360))
                        {
                          v361 = v361;
                          nw_http_connection_metadata_set_sec_metadata(*(v174 + 768), v361);
                          os_release(v361);
                          nw_protocol_connect(v170, v174);
                          goto LABEL_590;
                        }

                        v362 = 0;
LABEL_584:
                        if (v174)
                        {
                          nw_protocol_connect(v170, v174);
                          goto LABEL_586;
                        }

                        __nwlog_obj();
                        LODWORD(buf[0]) = 136446210;
                        *(buf + 4) = "nw_http1_get_output_protocol";
                        v789 = _os_log_send_and_compose_impl();
                        LOBYTE(iterate_block[0]) = 16;
                        aBlock[0] = 0;
                        if (__nwlog_fault(v789, iterate_block, aBlock))
                        {
                          if (LOBYTE(iterate_block[0]) == 17)
                          {
                            v790 = __nwlog_obj();
                            v791 = iterate_block[0];
                            if (os_log_type_enabled(v790, iterate_block[0]))
                            {
                              LODWORD(buf[0]) = 136446210;
                              *(buf + 4) = "nw_http1_get_output_protocol";
                              v792 = "%{public}s called with null connection";
LABEL_1652:
                              _os_log_impl(&dword_181A37000, v790, v791, v792, buf, 0xCu);
                            }
                          }

                          else if (aBlock[0] == 1)
                          {
                            v853 = __nw_create_backtrace_string();
                            v790 = __nwlog_obj();
                            v791 = iterate_block[0];
                            v854 = os_log_type_enabled(v790, iterate_block[0]);
                            if (v853)
                            {
                              if (v854)
                              {
                                LODWORD(buf[0]) = 136446466;
                                *(buf + 4) = "nw_http1_get_output_protocol";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = v853;
                                _os_log_impl(&dword_181A37000, v790, v791, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
                              }

                              free(v853);
                              goto LABEL_1653;
                            }

                            if (v854)
                            {
                              LODWORD(buf[0]) = 136446210;
                              *(buf + 4) = "nw_http1_get_output_protocol";
                              v792 = "%{public}s called with null connection, no backtrace";
                              goto LABEL_1652;
                            }
                          }

                          else
                          {
                            v790 = __nwlog_obj();
                            v791 = iterate_block[0];
                            if (os_log_type_enabled(v790, iterate_block[0]))
                            {
                              LODWORD(buf[0]) = 136446210;
                              *(buf + 4) = "nw_http1_get_output_protocol";
                              v792 = "%{public}s called with null connection, backtrace limit exceeded";
                              goto LABEL_1652;
                            }
                          }
                        }

LABEL_1653:
                        if (v789)
                        {
                          free(v789);
                        }

                        nw_protocol_connect(v170, 0);
                        v233 = v990;
LABEL_586:
                        if (v361)
                        {
                          v363 = v362;
                        }

                        else
                        {
                          v363 = 1;
                        }

                        if (v363)
                        {
LABEL_591:
                          if (v359)
                          {
                            os_release(v359);
                          }

                          *(v233 + 428) &= ~0x10u;
                          v364 = *(v991 + 352);
                          *(v991 + 352) = v364 - 1;
                          if (v364)
                          {
                            return;
                          }

                          __nwlog_obj();
                          v365 = *(v991 + 352);
                          LODWORD(buf[0]) = 136446978;
                          *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                          WORD2(buf[1]) = 2082;
                          *(&buf[1] + 6) = "http1->pending_output_handler_count";
                          HIWORD(buf[2]) = 2048;
                          v1007 = 1;
                          *v1008 = 2048;
                          *&v1008[2] = v365;
                          v366 = _os_log_send_and_compose_impl();
                          LOBYTE(iterate_block[0]) = 16;
                          aBlock[0] = 0;
                          if (__nwlog_fault(v366, iterate_block, aBlock))
                          {
                            if (LOBYTE(iterate_block[0]) == 17)
                            {
                              v367 = __nwlog_obj();
                              v368 = iterate_block[0];
                              if (os_log_type_enabled(v367, iterate_block[0]))
                              {
                                v369 = *(v991 + 352);
                                LODWORD(buf[0]) = 136446978;
                                *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                HIWORD(buf[2]) = 2048;
                                v1007 = 1;
                                *v1008 = 2048;
                                *&v1008[2] = v369;
                                v370 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_618:
                                _os_log_impl(&dword_181A37000, v367, v368, v370, buf, 0x2Au);
                              }
                            }

                            else if (aBlock[0] == 1)
                            {
                              v371 = __nw_create_backtrace_string();
                              v367 = __nwlog_obj();
                              v368 = iterate_block[0];
                              v372 = os_log_type_enabled(v367, iterate_block[0]);
                              if (v371)
                              {
                                if (v372)
                                {
                                  v373 = *(v991 + 352);
                                  LODWORD(buf[0]) = 136447234;
                                  *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                  WORD2(buf[1]) = 2082;
                                  *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                  HIWORD(buf[2]) = 2048;
                                  v1007 = 1;
                                  *v1008 = 2048;
                                  *&v1008[2] = v373;
                                  *&v1008[10] = 2082;
                                  *&v1008[12] = v371;
                                  _os_log_impl(&dword_181A37000, v367, v368, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                                }

                                free(v371);
                                goto LABEL_619;
                              }

                              if (v372)
                              {
                                v378 = *(v991 + 352);
                                LODWORD(buf[0]) = 136446978;
                                *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                HIWORD(buf[2]) = 2048;
                                v1007 = 1;
                                *v1008 = 2048;
                                *&v1008[2] = v378;
                                v370 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                                goto LABEL_618;
                              }
                            }

                            else
                            {
                              v367 = __nwlog_obj();
                              v368 = iterate_block[0];
                              if (os_log_type_enabled(v367, iterate_block[0]))
                              {
                                v374 = *(v991 + 352);
                                LODWORD(buf[0]) = 136446978;
                                *(buf + 4) = "nw_http1_create_connection_for_stream_if_allowed";
                                WORD2(buf[1]) = 2082;
                                *(&buf[1] + 6) = "http1->pending_output_handler_count";
                                HIWORD(buf[2]) = 2048;
                                v1007 = 1;
                                *v1008 = 2048;
                                *&v1008[2] = v374;
                                v370 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                                goto LABEL_618;
                              }
                            }
                          }

LABEL_619:
                          if (v366)
                          {
                            free(v366);
                          }

                          *(v991 + 352) = 0;
                          return;
                        }

LABEL_590:
                        os_release(v361);
                        goto LABEL_591;
                      }
                    }

                    else
                    {
                      v361 = 0;
                    }

                    v362 = 1;
                    goto LABEL_584;
                  }

LABEL_1026:
                  v586 = *(v233 + 32);
                  if (!v586 || v586 == *(v174 + 32))
                  {
LABEL_1045:
                    nw_protocol_set_output_handler(v233, *(v174 + 32));
                    nw_protocol_set_input_handler(v174, *(v233 + 48));
                    *v233 = *v174;
                    v603 = *(v233 + 96);
                    v604 = *(v233 + 112);
                    v605 = *(v233 + 128);
                    *(v174 + 144) = *(v233 + 144);
                    v606 = *(v233 + 80);
                    *(v174 + 64) = *(v233 + 64);
                    *(v174 + 80) = v606;
                    *(v174 + 112) = v604;
                    *(v174 + 128) = v605;
                    *(v174 + 96) = v603;
                    *(v174 + 872) &= 0xFFD7u;
                    *(v174 + 864) = 1;
                    if ((*(v174 + 158) & 1) == 0)
                    {
                      v607 = __nwlog_obj();
                      if (os_log_type_enabled(v607, OS_LOG_TYPE_DEBUG))
                      {
                        v608 = *(v174 + 488);
                        v609 = *(*(v174 + 480) + 372);
                        v610 = *(v174 + 860);
                        if (v608)
                        {
                          LODWORD(v608) = *(v608 + 424);
                        }

                        LODWORD(buf[0]) = 136447490;
                        *(buf + 4) = "nw_http1_update_connection_input_state";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v174 + 74;
                        HIWORD(buf[2]) = 2080;
                        v1007 = " ";
                        *v1008 = 1024;
                        *&v1008[2] = v609;
                        *&v1008[6] = 1024;
                        *&v1008[8] = v610;
                        *&v1008[12] = 1024;
                        *&v1008[14] = v608;
                        _os_log_impl(&dword_181A37000, v607, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
                      }
                    }

                    if ((*(v233 + 158) & 1) == 0)
                    {
                      v611 = __nwlog_obj();
                      if (os_log_type_enabled(v611, OS_LOG_TYPE_INFO))
                      {
                        v612 = *(v233 + 256);
                        v613 = *(*(v233 + 248) + 372);
                        if (v612)
                        {
                          LODWORD(v612) = *(v612 + 860);
                        }

                        v614 = *(v233 + 424);
                        LODWORD(buf[0]) = 136448002;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        WORD2(buf[1]) = 2082;
                        *(&buf[1] + 6) = v233 + 74;
                        HIWORD(buf[2]) = 2080;
                        v1007 = " ";
                        *v1008 = 1024;
                        *&v1008[2] = v613;
                        *&v1008[6] = 1024;
                        *&v1008[8] = v612;
                        *&v1008[12] = 1024;
                        *&v1008[14] = v614;
                        *&v1008[18] = 2048;
                        *&v1008[20] = v233;
                        *&v1008[28] = 2048;
                        *&v1008[30] = v174;
                        _os_log_impl(&dword_181A37000, v611, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
                      }
                    }

                    goto LABEL_572;
                  }

                  __nwlog_obj();
                  v587 = *(v233 + 32);
                  v588 = *(v174 + 32);
                  LODWORD(buf[0]) = 136446978;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  WORD2(buf[1]) = 2048;
                  *(&buf[1] + 6) = v587;
                  HIWORD(buf[2]) = 2048;
                  v1007 = v233;
                  *v1008 = 2048;
                  *&v1008[2] = v588;
                  v589 = _os_log_send_and_compose_impl();
                  aBlock[0] = 16;
                  v1003[0] = 0;
                  if (__nwlog_fault(v589, aBlock, v1003))
                  {
                    if (aBlock[0] == 17)
                    {
                      v590 = __nwlog_obj();
                      v591 = aBlock[0];
                      if (os_log_type_enabled(v590, aBlock[0]))
                      {
                        v592 = *(v990 + 32);
                        v593 = *(v174 + 32);
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        WORD2(buf[1]) = 2048;
                        *(&buf[1] + 6) = v592;
                        HIWORD(buf[2]) = 2048;
                        v1007 = v990;
                        *v1008 = 2048;
                        *&v1008[2] = v593;
                        v594 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
LABEL_1041:
                        _os_log_impl(&dword_181A37000, v590, v591, v594, buf, 0x2Au);
                      }
                    }

                    else if (v1003[0] == 1)
                    {
                      v595 = __nw_create_backtrace_string();
                      v590 = __nwlog_obj();
                      v591 = aBlock[0];
                      v596 = os_log_type_enabled(v590, aBlock[0]);
                      if (v595)
                      {
                        if (v596)
                        {
                          v597 = *(v990 + 32);
                          v598 = *(v174 + 32);
                          LODWORD(buf[0]) = 136447234;
                          *(buf + 4) = "nw_http1_stream_associate_with_connection";
                          WORD2(buf[1]) = 2048;
                          *(&buf[1] + 6) = v597;
                          HIWORD(buf[2]) = 2048;
                          v1007 = v990;
                          *v1008 = 2048;
                          *&v1008[2] = v598;
                          *&v1008[10] = 2082;
                          *&v1008[12] = v595;
                          _os_log_impl(&dword_181A37000, v590, v591, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
                        }

                        free(v595);
                        goto LABEL_1042;
                      }

                      if (v596)
                      {
                        v601 = *(v990 + 32);
                        v602 = *(v174 + 32);
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        WORD2(buf[1]) = 2048;
                        *(&buf[1] + 6) = v601;
                        HIWORD(buf[2]) = 2048;
                        v1007 = v990;
                        *v1008 = 2048;
                        *&v1008[2] = v602;
                        v594 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
                        goto LABEL_1041;
                      }
                    }

                    else
                    {
                      v590 = __nwlog_obj();
                      v591 = aBlock[0];
                      if (os_log_type_enabled(v590, aBlock[0]))
                      {
                        v599 = *(v990 + 32);
                        v600 = *(v174 + 32);
                        LODWORD(buf[0]) = 136446978;
                        *(buf + 4) = "nw_http1_stream_associate_with_connection";
                        WORD2(buf[1]) = 2048;
                        *(&buf[1] + 6) = v599;
                        HIWORD(buf[2]) = 2048;
                        v1007 = v990;
                        *v1008 = 2048;
                        *&v1008[2] = v600;
                        v594 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
                        goto LABEL_1041;
                      }
                    }
                  }

LABEL_1042:
                  if (v589)
                  {
                    free(v589);
                  }

                  v233 = v990;
                  goto LABEL_1045;
                }

                __nwlog_obj();
                LODWORD(buf[0]) = 136446210;
                *(buf + 4) = "nw_http1_stream_associate_with_connection";
                v330 = _os_log_send_and_compose_impl();
                aBlock[0] = 16;
                v1003[0] = 0;
                if (__nwlog_fault(v330, aBlock, v1003))
                {
                  if (aBlock[0] == 17)
                  {
                    v777 = __nwlog_obj();
                    v778 = aBlock[0];
                    if (!os_log_type_enabled(v777, aBlock[0]))
                    {
                      goto LABEL_1648;
                    }

                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    v779 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_1647:
                    _os_log_impl(&dword_181A37000, v777, v778, v779, buf, 0xCu);
                    goto LABEL_1648;
                  }

                  if (v1003[0] != 1)
                  {
                    v777 = __nwlog_obj();
                    v778 = aBlock[0];
                    if (!os_log_type_enabled(v777, aBlock[0]))
                    {
                      goto LABEL_1648;
                    }

                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    v779 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
                    goto LABEL_1647;
                  }

                  v851 = __nw_create_backtrace_string();
                  v777 = __nwlog_obj();
                  v778 = aBlock[0];
                  v852 = os_log_type_enabled(v777, aBlock[0]);
                  if (!v851)
                  {
                    if (!v852)
                    {
                      goto LABEL_1648;
                    }

                    LODWORD(buf[0]) = 136446210;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    v779 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
                    goto LABEL_1647;
                  }

                  if (v852)
                  {
                    LODWORD(buf[0]) = 136446466;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v851;
                    _os_log_impl(&dword_181A37000, v777, v778, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v851);
                }

LABEL_1648:
                if (!v330)
                {
                  goto LABEL_571;
                }

                goto LABEL_570;
              }

              v234 = v217;
              __nwlog_obj();
              v235 = *(v234 + 336);
              LODWORD(buf[0]) = 136446978;
              *(buf + 4) = "nw_http1_add_connection_for_output_handler";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = "http1->connections_count";
              HIWORD(buf[2]) = 2048;
              v1007 = 1;
              *v1008 = 2048;
              *&v1008[2] = v235;
              v236 = _os_log_send_and_compose_impl();
              LOBYTE(iterate_block[0]) = 16;
              aBlock[0] = 0;
              if (__nwlog_fault(v236, iterate_block, aBlock))
              {
                if (LOBYTE(iterate_block[0]) == 17)
                {
                  v237 = __nwlog_obj();
                  v238 = iterate_block[0];
                  if (os_log_type_enabled(v237, iterate_block[0]))
                  {
                    v239 = *(v991 + 336);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->connections_count";
                    HIWORD(buf[2]) = 2048;
                    v1007 = 1;
                    *v1008 = 2048;
                    *&v1008[2] = v239;
                    v240 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_512:
                    _os_log_impl(&dword_181A37000, v237, v238, v240, buf, 0x2Au);
                  }
                }

                else if (aBlock[0] == 1)
                {
                  v242 = __nw_create_backtrace_string();
                  v237 = __nwlog_obj();
                  v238 = iterate_block[0];
                  v243 = os_log_type_enabled(v237, iterate_block[0]);
                  if (v242)
                  {
                    if (v243)
                    {
                      v244 = *(v991 + 336);
                      LODWORD(buf[0]) = 136447234;
                      *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                      WORD2(buf[1]) = 2082;
                      *(&buf[1] + 6) = "http1->connections_count";
                      HIWORD(buf[2]) = 2048;
                      v1007 = 1;
                      *v1008 = 2048;
                      *&v1008[2] = v244;
                      *&v1008[10] = 2082;
                      *&v1008[12] = v242;
                      _os_log_impl(&dword_181A37000, v237, v238, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v242);
                    v233 = v990;
                    goto LABEL_513;
                  }

                  v233 = v990;
                  if (v243)
                  {
                    v315 = *(v991 + 336);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->connections_count";
                    HIWORD(buf[2]) = 2048;
                    v1007 = 1;
                    *v1008 = 2048;
                    *&v1008[2] = v315;
                    v240 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                    goto LABEL_512;
                  }
                }

                else
                {
                  v237 = __nwlog_obj();
                  v238 = iterate_block[0];
                  if (os_log_type_enabled(v237, iterate_block[0]))
                  {
                    v256 = *(v991 + 336);
                    LODWORD(buf[0]) = 136446978;
                    *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = "http1->connections_count";
                    HIWORD(buf[2]) = 2048;
                    v1007 = 1;
                    *v1008 = 2048;
                    *&v1008[2] = v256;
                    v240 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                    goto LABEL_512;
                  }
                }
              }

LABEL_513:
              if (v236)
              {
                free(v236);
              }

              v217 = v991;
              *(v991 + 336) = -1;
              goto LABEL_516;
            }

            os_release(v218);
LABEL_364:
            v217 = v991;
            goto LABEL_365;
          }

          __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_protocol_http1_set_up_association";
          v773 = _os_log_send_and_compose_impl();
          LOBYTE(iterate_block[0]) = 16;
          aBlock[0] = 0;
          if (__nwlog_fault(v773, iterate_block, aBlock))
          {
            if (LOBYTE(iterate_block[0]) == 17)
            {
              v774 = __nwlog_obj();
              v775 = iterate_block[0];
              if (!os_log_type_enabled(v774, iterate_block[0]))
              {
                goto LABEL_1642;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_protocol_http1_set_up_association";
              v776 = "%{public}s called with null parameters";
              goto LABEL_1641;
            }

            if (aBlock[0] != 1)
            {
              v774 = __nwlog_obj();
              v775 = iterate_block[0];
              if (!os_log_type_enabled(v774, iterate_block[0]))
              {
                goto LABEL_1642;
              }

              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_protocol_http1_set_up_association";
              v776 = "%{public}s called with null parameters, backtrace limit exceeded";
              goto LABEL_1641;
            }

            v849 = __nw_create_backtrace_string();
            v774 = __nwlog_obj();
            v775 = iterate_block[0];
            v850 = os_log_type_enabled(v774, iterate_block[0]);
            if (v849)
            {
              if (v850)
              {
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "nw_protocol_http1_set_up_association";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v849;
                _os_log_impl(&dword_181A37000, v774, v775, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v849);
              goto LABEL_1642;
            }

            if (v850)
            {
              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_protocol_http1_set_up_association";
              v776 = "%{public}s called with null parameters, no backtrace";
LABEL_1641:
              _os_log_impl(&dword_181A37000, v774, v775, v776, buf, 0xCu);
            }
          }

LABEL_1642:
          if (v773)
          {
            free(v773);
          }

          goto LABEL_364;
        }

        __nwlog_obj();
        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http1_connection_create";
        v759 = _os_log_send_and_compose_impl();
        v1003[0] = 16;
        type[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v759, v1003, type))
        {
          if (v1003[0] == 17)
          {
            v760 = __nwlog_obj();
            v761 = v1003[0];
            if (!os_log_type_enabled(v760, v1003[0]))
            {
              goto LABEL_1597;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v762 = "%{public}s called with null parameters";
            goto LABEL_1596;
          }

          if (type[0] != OS_LOG_TYPE_INFO)
          {
            v760 = __nwlog_obj();
            v761 = v1003[0];
            if (!os_log_type_enabled(v760, v1003[0]))
            {
              goto LABEL_1597;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v762 = "%{public}s called with null parameters, backtrace limit exceeded";
            goto LABEL_1596;
          }

          v822 = __nw_create_backtrace_string();
          v760 = __nwlog_obj();
          v761 = v1003[0];
          v825 = os_log_type_enabled(v760, v1003[0]);
          if (!v822)
          {
            if (!v825)
            {
              goto LABEL_1597;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_connection_create";
            v762 = "%{public}s called with null parameters, no backtrace";
            goto LABEL_1596;
          }

          if (v825)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_connection_create";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v822;
            v824 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
            goto LABEL_1411;
          }

          goto LABEL_1412;
        }

LABEL_1597:
        if (!v759)
        {
          goto LABEL_1599;
        }

        goto LABEL_1598;
      }

      __nwlog_obj();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v759 = _os_log_send_and_compose_impl();
      v1003[0] = 16;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v759, v1003, type))
      {
        goto LABEL_1597;
      }

      if (v1003[0] != 17)
      {
        if (type[0] != OS_LOG_TYPE_INFO)
        {
          v760 = __nwlog_obj();
          v761 = v1003[0];
          if (!os_log_type_enabled(v760, v1003[0]))
          {
            goto LABEL_1597;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v762 = "%{public}s called with null endpoint, backtrace limit exceeded";
          goto LABEL_1596;
        }

        v822 = __nw_create_backtrace_string();
        v760 = __nwlog_obj();
        v761 = v1003[0];
        v823 = os_log_type_enabled(v760, v1003[0]);
        if (!v822)
        {
          if (!v823)
          {
            goto LABEL_1597;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v762 = "%{public}s called with null endpoint, no backtrace";
          goto LABEL_1596;
        }

        if (v823)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_connection_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v822;
          v824 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_1411:
          _os_log_impl(&dword_181A37000, v760, v761, v824, buf, 0x16u);
        }

LABEL_1412:
        free(v822);
        if (!v759)
        {
LABEL_1599:
          __nwlog_obj();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_add_connection_for_output_handler";
          v916 = _os_log_send_and_compose_impl();
          LOBYTE(iterate_block[0]) = 16;
          aBlock[0] = 0;
          if (!__nwlog_fault(v916, iterate_block, aBlock))
          {
            goto LABEL_1613;
          }

          if (LOBYTE(iterate_block[0]) == 17)
          {
            v917 = __nwlog_obj();
            v918 = iterate_block[0];
            if (!os_log_type_enabled(v917, iterate_block[0]))
            {
              goto LABEL_1613;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            v919 = "%{public}s called with null http1_connection";
          }

          else if (aBlock[0] == 1)
          {
            v920 = __nw_create_backtrace_string();
            v917 = __nwlog_obj();
            v918 = iterate_block[0];
            v921 = os_log_type_enabled(v917, iterate_block[0]);
            if (v920)
            {
              if (v921)
              {
                LODWORD(buf[0]) = 136446466;
                *(buf + 4) = "nw_http1_add_connection_for_output_handler";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v920;
                _os_log_impl(&dword_181A37000, v917, v918, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v920);
LABEL_1613:
              if (v916)
              {
                free(v916);
              }

              __nwlog_obj();
              LODWORD(buf[0]) = 136446210;
              *(buf + 4) = "nw_http1_stream_associate_with_connection";
              v922 = _os_log_send_and_compose_impl();
              aBlock[0] = 16;
              v1003[0] = 0;
              if (!__nwlog_fault(v922, aBlock, v1003))
              {
                goto LABEL_1629;
              }

              if (aBlock[0] == 17)
              {
                v923 = __nwlog_obj();
                v924 = aBlock[0];
                if (os_log_type_enabled(v923, aBlock[0]))
                {
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  v925 = "%{public}s called with null http1_connection";
LABEL_1628:
                  _os_log_impl(&dword_181A37000, v923, v924, v925, buf, 0xCu);
                }
              }

              else if (v1003[0] == 1)
              {
                v926 = __nw_create_backtrace_string();
                v923 = __nwlog_obj();
                v924 = aBlock[0];
                v927 = os_log_type_enabled(v923, aBlock[0]);
                if (v926)
                {
                  if (v927)
                  {
                    LODWORD(buf[0]) = 136446466;
                    *(buf + 4) = "nw_http1_stream_associate_with_connection";
                    WORD2(buf[1]) = 2082;
                    *(&buf[1] + 6) = v926;
                    _os_log_impl(&dword_181A37000, v923, v924, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v926);
                  goto LABEL_1629;
                }

                if (v927)
                {
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  v925 = "%{public}s called with null http1_connection, no backtrace";
                  goto LABEL_1628;
                }
              }

              else
              {
                v923 = __nwlog_obj();
                v924 = aBlock[0];
                if (os_log_type_enabled(v923, aBlock[0]))
                {
                  LODWORD(buf[0]) = 136446210;
                  *(buf + 4) = "nw_http1_stream_associate_with_connection";
                  v925 = "%{public}s called with null http1_connection, backtrace limit exceeded";
                  goto LABEL_1628;
                }
              }

LABEL_1629:
              if (v922)
              {
                free(v922);
              }

              v174 = 0;
              goto LABEL_571;
            }

            if (!v921)
            {
              goto LABEL_1613;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            v919 = "%{public}s called with null http1_connection, no backtrace";
          }

          else
          {
            v917 = __nwlog_obj();
            v918 = iterate_block[0];
            if (!os_log_type_enabled(v917, iterate_block[0]))
            {
              goto LABEL_1613;
            }

            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = "nw_http1_add_connection_for_output_handler";
            v919 = "%{public}s called with null http1_connection, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v917, v918, v919, buf, 0xCu);
          goto LABEL_1613;
        }

LABEL_1598:
        free(v759);
        goto LABEL_1599;
      }

      v760 = __nwlog_obj();
      v761 = v1003[0];
      if (!os_log_type_enabled(v760, v1003[0]))
      {
        goto LABEL_1597;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v762 = "%{public}s called with null endpoint";
    }

    else
    {
      __nwlog_obj();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v759 = _os_log_send_and_compose_impl();
      v1003[0] = 16;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v759, v1003, type))
      {
        goto LABEL_1597;
      }

      if (v1003[0] != 17)
      {
        if (type[0] != OS_LOG_TYPE_INFO)
        {
          v760 = __nwlog_obj();
          v761 = v1003[0];
          if (!os_log_type_enabled(v760, v1003[0]))
          {
            goto LABEL_1597;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v762 = "%{public}s called with null output_handler, backtrace limit exceeded";
          goto LABEL_1596;
        }

        v820 = __nw_create_backtrace_string();
        v760 = __nwlog_obj();
        v761 = v1003[0];
        v821 = os_log_type_enabled(v760, v1003[0]);
        if (!v820)
        {
          if (!v821)
          {
            goto LABEL_1597;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_connection_create";
          v762 = "%{public}s called with null output_handler, no backtrace";
          goto LABEL_1596;
        }

        if (v821)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http1_connection_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v820;
          _os_log_impl(&dword_181A37000, v760, v761, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v820);
        goto LABEL_1597;
      }

      v760 = __nwlog_obj();
      v761 = v1003[0];
      if (!os_log_type_enabled(v760, v1003[0]))
      {
        goto LABEL_1597;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http1_connection_create";
      v762 = "%{public}s called with null output_handler";
    }

LABEL_1596:
    _os_log_impl(&dword_181A37000, v760, v761, v762, buf, 0xCu);
    goto LABEL_1597;
  }

  v65 = 0;
  v66 = v28 + 74;
  *&v27 = 136447234;
  do
  {
    v139 = v64;
    v64 = *(v64 + 592);
    if ((*(v139 + 872) & 0x800) == 0)
    {
      if ((*(v28 + 158) & 1) != 0 || gLogDatapath != 1)
      {
        goto LABEL_231;
      }

      v987 = v66;
      v988 = v27;
      v140 = __nwlog_obj();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
      {
        v138 = *(v991 + 372);
        LODWORD(buf[0]) = v988;
        *(buf + 4) = "nw_http1_get_next_idle_connection";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v987;
        HIWORD(buf[2]) = 2080;
        v1007 = " ";
        *v1008 = 1024;
        *&v1008[2] = v138;
        *&v1008[6] = 2048;
        *&v1008[8] = v139;
        _os_log_impl(&dword_181A37000, v140, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> found idle connection connection %p", buf, 0x30u);
        v66 = v987;
        v27 = v988;
        v28 = v991;
LABEL_231:
        v65 = v139;
        continue;
      }

      v65 = v139;
      v28 = v991;
      v27 = v988;
      v66 = v987;
    }
  }

  while (v64);
  v63 = v990;
  if (!v65)
  {
    goto LABEL_246;
  }

  v141 = v66;
  v989 = v27;
  if ((*(v65 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v702 = __nwlog_obj();
    v703 = os_log_type_enabled(v702, OS_LOG_TYPE_DEBUG);
    v28 = v991;
    if (v703)
    {
      v704 = *(v65 + 488);
      v705 = *(*(v65 + 480) + 372);
      v706 = *(v65 + 860);
      if (v704)
      {
        LODWORD(v704) = *(v704 + 424);
      }

      LODWORD(buf[0]) = 136447746;
      *(buf + 4) = "nw_http1_remove_idle_connection";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v65 + 74;
      HIWORD(buf[2]) = 2080;
      v1007 = " ";
      *v1008 = 1024;
      *&v1008[2] = v705;
      *&v1008[6] = 1024;
      *&v1008[8] = v706;
      *&v1008[12] = 1024;
      *&v1008[14] = v704;
      *&v1008[18] = 2048;
      *&v1008[20] = v65;
      _os_log_impl(&dword_181A37000, v702, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> called for connection %p", buf, 0x3Cu);
      v28 = v991;
      v63 = v990;
    }
  }

  if ((*(v65 + 874) & 8) != 0)
  {
    v159 = *(v65 + 592);
    v160 = *(v65 + 600);
    v161 = (v28 + 216);
    if (v159)
    {
      v161 = (v159 + 600);
    }

    *v161 = v160;
    *v160 = v159;
    *(v65 + 592) = 0u;
    v162 = *(v28 + 340);
    *(v28 + 340) = v162 - 1;
    if (v162)
    {
      goto LABEL_406;
    }

    v163 = v28;
    __nwlog_obj();
    v164 = *(v163 + 340);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_remove_idle_connection";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = "http1->idle_connections_count";
    HIWORD(buf[2]) = 2048;
    v1007 = 1;
    *v1008 = 2048;
    *&v1008[2] = v164;
    v165 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (__nwlog_fault(v165, iterate_block, aBlock))
    {
      if (LOBYTE(iterate_block[0]) == 17)
      {
        v166 = __nwlog_obj();
        v167 = iterate_block[0];
        if (os_log_type_enabled(v166, iterate_block[0]))
        {
          v168 = *(v991 + 340);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_idle_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->idle_connections_count";
          HIWORD(buf[2]) = 2048;
          v1007 = 1;
          *v1008 = 2048;
          *&v1008[2] = v168;
          v169 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_402:
          _os_log_impl(&dword_181A37000, v166, v167, v169, buf, 0x2Au);
        }
      }

      else if (aBlock[0] == 1)
      {
        v188 = __nw_create_backtrace_string();
        v166 = __nwlog_obj();
        v167 = iterate_block[0];
        v189 = os_log_type_enabled(v166, iterate_block[0]);
        if (v188)
        {
          if (v189)
          {
            v190 = *(v991 + 340);
            LODWORD(buf[0]) = v989;
            *(buf + 4) = "nw_http1_remove_idle_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->idle_connections_count";
            HIWORD(buf[2]) = 2048;
            v1007 = 1;
            *v1008 = 2048;
            *&v1008[2] = v190;
            *&v1008[10] = 2082;
            *&v1008[12] = v188;
            _os_log_impl(&dword_181A37000, v166, v167, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v188);
          goto LABEL_403;
        }

        if (v189)
        {
          v259 = *(v991 + 340);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_idle_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->idle_connections_count";
          HIWORD(buf[2]) = 2048;
          v1007 = 1;
          *v1008 = 2048;
          *&v1008[2] = v259;
          v169 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_402;
        }
      }

      else
      {
        v166 = __nwlog_obj();
        v167 = iterate_block[0];
        if (os_log_type_enabled(v166, iterate_block[0]))
        {
          v241 = *(v991 + 340);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_idle_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->idle_connections_count";
          HIWORD(buf[2]) = 2048;
          v1007 = 1;
          *v1008 = 2048;
          *&v1008[2] = v241;
          v169 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_402;
        }
      }
    }

LABEL_403:
    if (v165)
    {
      free(v165);
    }

    v28 = v991;
    *(v991 + 340) = 0;
    v63 = v990;
LABEL_406:
    *(v65 + 874) &= ~8u;
    if ((*(v65 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v726 = __nwlog_obj();
      v727 = os_log_type_enabled(v726, OS_LOG_TYPE_DEBUG);
      v28 = v991;
      if (v727)
      {
        v728 = *(v65 + 488);
        v729 = *(*(v65 + 480) + 372);
        v730 = *(v65 + 860);
        if (v728)
        {
          LODWORD(v728) = *(v728 + 424);
        }

        v731 = *(v991 + 340);
        LODWORD(buf[0]) = 136448002;
        *(buf + 4) = "nw_http1_remove_idle_connection";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v65 + 74;
        HIWORD(buf[2]) = 2080;
        v1007 = " ";
        *v1008 = 1024;
        *&v1008[2] = v729;
        *&v1008[6] = 1024;
        *&v1008[8] = v730;
        *&v1008[12] = 1024;
        *&v1008[14] = v728;
        *&v1008[18] = 2048;
        *&v1008[20] = v65;
        *&v1008[28] = 1024;
        *&v1008[30] = v731;
        _os_log_impl(&dword_181A37000, v726, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed idle connection %p, now have %u idle connections", buf, 0x42u);
        v28 = v991;
        v63 = v990;
      }
    }

    if (*(v65 + 784))
    {
      if ((*(v65 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v744 = __nwlog_obj();
        if (os_log_type_enabled(v744, OS_LOG_TYPE_DEBUG))
        {
          v745 = *(v65 + 488);
          v746 = *(*(v65 + 480) + 372);
          v747 = *(v65 + 860);
          if (v745)
          {
            LODWORD(v745) = *(v745 + 424);
          }

          LODWORD(buf[0]) = 136447746;
          *(buf + 4) = "nw_http1_remove_idle_connection";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v65 + 74;
          HIWORD(buf[2]) = 2080;
          v1007 = " ";
          *v1008 = 1024;
          *&v1008[2] = v746;
          *&v1008[6] = 1024;
          *&v1008[8] = v747;
          *&v1008[12] = 1024;
          *&v1008[14] = v745;
          *&v1008[18] = 2048;
          *&v1008[20] = v65;
          _os_log_impl(&dword_181A37000, v744, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> deactivating destroy timer for connection %p", buf, 0x3Cu);
          v63 = v990;
        }
      }

      nw_queue_cancel_source(*(v65 + 784), v26);
      *(v65 + 784) = 0;
      v28 = v991;
    }

    goto LABEL_412;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  LODWORD(buf[0]) = 136446466;
  *(buf + 4) = "nw_http1_remove_idle_connection";
  WORD2(buf[1]) = 2048;
  *(&buf[1] + 6) = v65;
  v142 = _os_log_send_and_compose_impl();
  LOBYTE(iterate_block[0]) = 16;
  aBlock[0] = 0;
  if (!__nwlog_fault(v142, iterate_block, aBlock))
  {
    goto LABEL_376;
  }

  if (LOBYTE(iterate_block[0]) != 17)
  {
    if (aBlock[0] == 1)
    {
      v175 = __nw_create_backtrace_string();
      v143 = __nwlog_obj();
      v144 = iterate_block[0];
      v176 = os_log_type_enabled(v143, iterate_block[0]);
      if (v175)
      {
        if (v176)
        {
          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "nw_http1_remove_idle_connection";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v65;
          HIWORD(buf[2]) = 2082;
          v1007 = v175;
          _os_log_impl(&dword_181A37000, v143, v144, "%{public}s connection %p not in idle list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v175);
        goto LABEL_376;
      }

      if (!v176)
      {
        goto LABEL_376;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_idle_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v65;
      v145 = "%{public}s connection %p not in idle list, cannot remove, no backtrace";
    }

    else
    {
      v143 = __nwlog_obj();
      v144 = iterate_block[0];
      if (!os_log_type_enabled(v143, iterate_block[0]))
      {
        goto LABEL_376;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_idle_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v65;
      v145 = "%{public}s connection %p not in idle list, cannot remove, backtrace limit exceeded";
    }

LABEL_375:
    _os_log_impl(&dword_181A37000, v143, v144, v145, buf, 0x16u);
    goto LABEL_376;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v143 = gLogObj;
  v144 = iterate_block[0];
  if (os_log_type_enabled(gLogObj, iterate_block[0]))
  {
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_http1_remove_idle_connection";
    WORD2(buf[1]) = 2048;
    *(&buf[1] + 6) = v65;
    v145 = "%{public}s connection %p not in idle list, cannot remove";
    goto LABEL_375;
  }

LABEL_376:
  if (v142)
  {
    free(v142);
  }

  v28 = v991;
  v63 = v990;
LABEL_412:
  if ((*(v28 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v707 = __nwlog_obj();
    v708 = os_log_type_enabled(v707, OS_LOG_TYPE_DEBUG);
    v28 = v991;
    if (v708)
    {
      v709 = *(v991 + 372);
      v710 = *(v63 + 424);
      LODWORD(buf[0]) = 136447490;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v141;
      HIWORD(buf[2]) = 2080;
      v1007 = " ";
      *v1008 = 1024;
      *&v1008[2] = v709;
      *&v1008[6] = 1024;
      *&v1008[8] = v710;
      *&v1008[12] = 2048;
      *&v1008[14] = v63;
      _os_log_impl(&dword_181A37000, v707, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream %u (%p)", buf, 0x36u);
      v28 = v991;
    }
  }

  if ((*(v63 + 428) & 0x2000) != 0)
  {
    v264 = *(v63 + 296);
    v265 = *(v63 + 304);
    v266 = (v28 + 256);
    if (v264)
    {
      v266 = (v264 + 304);
    }

    *v266 = v265;
    *v265 = v264;
    *(v63 + 296) = 0;
    *(v63 + 304) = 0;
    v267 = *(v28 + 348);
    *(v28 + 348) = v267 - 1;
    if (v267)
    {
      goto LABEL_451;
    }

    v268 = v28;
    __nwlog_obj();
    v269 = *(v268 + 348);
    LODWORD(buf[0]) = 136446978;
    *(buf + 4) = "nw_http1_remove_pending_stream";
    WORD2(buf[1]) = 2082;
    *(&buf[1] + 6) = "http1->pending_stream_count";
    HIWORD(buf[2]) = 2048;
    v1007 = 1;
    *v1008 = 2048;
    *&v1008[2] = v269;
    v270 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (__nwlog_fault(v270, iterate_block, aBlock))
    {
      if (LOBYTE(iterate_block[0]) == 17)
      {
        v271 = __nwlog_obj();
        v272 = iterate_block[0];
        if (os_log_type_enabled(v271, iterate_block[0]))
        {
          v273 = *(v991 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v1007 = 1;
          *v1008 = 2048;
          *&v1008[2] = v273;
          v274 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_447:
          _os_log_impl(&dword_181A37000, v271, v272, v274, buf, 0x2Au);
        }
      }

      else if (aBlock[0] == 1)
      {
        v277 = __nw_create_backtrace_string();
        v271 = __nwlog_obj();
        v272 = iterate_block[0];
        v278 = os_log_type_enabled(v271, iterate_block[0]);
        if (v277)
        {
          if (v278)
          {
            v279 = *(v991 + 348);
            LODWORD(buf[0]) = v989;
            *(buf + 4) = "nw_http1_remove_pending_stream";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = "http1->pending_stream_count";
            HIWORD(buf[2]) = 2048;
            v1007 = 1;
            *v1008 = 2048;
            *&v1008[2] = v279;
            *&v1008[10] = 2082;
            *&v1008[12] = v277;
            _os_log_impl(&dword_181A37000, v271, v272, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v277);
          goto LABEL_448;
        }

        if (v278)
        {
          v281 = *(v991 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v1007 = 1;
          *v1008 = 2048;
          *&v1008[2] = v281;
          v274 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_447;
        }
      }

      else
      {
        v271 = __nwlog_obj();
        v272 = iterate_block[0];
        if (os_log_type_enabled(v271, iterate_block[0]))
        {
          v280 = *(v991 + 348);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = "http1->pending_stream_count";
          HIWORD(buf[2]) = 2048;
          v1007 = 1;
          *v1008 = 2048;
          *&v1008[2] = v280;
          v274 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_447;
        }
      }
    }

LABEL_448:
    if (v270)
    {
      free(v270);
    }

    *(v991 + 348) = 0;
    v63 = v990;
LABEL_451:
    *(v63 + 428) &= ~0x2000u;
    if ((*(v63 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v732 = __nwlog_obj();
      if (os_log_type_enabled(v732, OS_LOG_TYPE_DEBUG))
      {
        v733 = v63 + 74;
        v734 = *(v63 + 256);
        v735 = *(*(v63 + 248) + 372);
        if (v734)
        {
          LODWORD(v734) = *(v734 + 860);
        }

        v63 = v990;
        v736 = *(v990 + 424);
        v737 = *(v991 + 348);
        LODWORD(buf[0]) = 136448258;
        *(buf + 4) = "nw_http1_remove_pending_stream";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v733;
        HIWORD(buf[2]) = 2080;
        v1007 = " ";
        *v1008 = 1024;
        *&v1008[2] = v735;
        *&v1008[6] = 1024;
        *&v1008[8] = v734;
        *&v1008[12] = 1024;
        *&v1008[14] = v736;
        *&v1008[18] = 1024;
        *&v1008[20] = v736;
        *&v1008[24] = 2048;
        *&v1008[26] = v990;
        *&v1008[34] = 1024;
        *&v1008[36] = v737;
        _os_log_impl(&dword_181A37000, v732, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> removed pending stream %u (%p), now have %u pending streams", buf, 0x48u);
      }
    }

    goto LABEL_453;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  LODWORD(buf[0]) = 136446466;
  *(buf + 4) = "nw_http1_remove_pending_stream";
  WORD2(buf[1]) = 2048;
  *(&buf[1] + 6) = v63;
  v260 = _os_log_send_and_compose_impl();
  LOBYTE(iterate_block[0]) = 16;
  aBlock[0] = 0;
  if (!__nwlog_fault(v260, iterate_block, aBlock))
  {
    goto LABEL_441;
  }

  if (LOBYTE(iterate_block[0]) != 17)
  {
    if (aBlock[0] == 1)
    {
      v275 = __nw_create_backtrace_string();
      v261 = __nwlog_obj();
      v262 = iterate_block[0];
      v276 = os_log_type_enabled(v261, iterate_block[0]);
      if (v275)
      {
        if (v276)
        {
          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "nw_http1_remove_pending_stream";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v63;
          HIWORD(buf[2]) = 2082;
          v1007 = v275;
          _os_log_impl(&dword_181A37000, v261, v262, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v275);
        goto LABEL_441;
      }

      if (!v276)
      {
        goto LABEL_441;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v63;
      v263 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
    }

    else
    {
      v261 = __nwlog_obj();
      v262 = iterate_block[0];
      if (!os_log_type_enabled(v261, iterate_block[0]))
      {
        goto LABEL_441;
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http1_remove_pending_stream";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v63;
      v263 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
    }

LABEL_440:
    _os_log_impl(&dword_181A37000, v261, v262, v263, buf, 0x16u);
    goto LABEL_441;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v261 = gLogObj;
  v262 = iterate_block[0];
  if (os_log_type_enabled(gLogObj, iterate_block[0]))
  {
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "nw_http1_remove_pending_stream";
    WORD2(buf[1]) = 2048;
    *(&buf[1] + 6) = v63;
    v263 = "%{public}s stream %p not in pending list, cannot remove";
    goto LABEL_440;
  }

LABEL_441:
  if (v260)
  {
    free(v260);
  }

LABEL_453:
  if (!*(v63 + 248))
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http1_stream_associate_with_connection";
    v698 = _os_log_send_and_compose_impl();
    LOBYTE(iterate_block[0]) = 16;
    aBlock[0] = 0;
    if (__nwlog_fault(v698, iterate_block, aBlock))
    {
      if (LOBYTE(iterate_block[0]) == 17)
      {
        v699 = __nwlog_obj();
        v700 = iterate_block[0];
        if (os_log_type_enabled(v699, iterate_block[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          v701 = "%{public}s called with null http1_stream->protocol_http1";
LABEL_1374:
          _os_log_impl(&dword_181A37000, v699, v700, v701, buf, 0xCu);
        }
      }

      else if (aBlock[0] == 1)
      {
        v738 = __nw_create_backtrace_string();
        v699 = __nwlog_obj();
        v700 = iterate_block[0];
        v739 = os_log_type_enabled(v699, iterate_block[0]);
        if (v738)
        {
          if (v739)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http1_stream_associate_with_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v738;
            _os_log_impl(&dword_181A37000, v699, v700, "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v738);
          goto LABEL_1375;
        }

        if (v739)
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          v701 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
          goto LABEL_1374;
        }
      }

      else
      {
        v699 = __nwlog_obj();
        v700 = iterate_block[0];
        if (os_log_type_enabled(v699, iterate_block[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          v701 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
          goto LABEL_1374;
        }
      }
    }

LABEL_1375:
    if (v698)
    {
      free(v698);
    }

    v63 = v990;
    goto LABEL_681;
  }

  if (!*(v65 + 488))
  {
    *(v63 + 256) = v65;
    *(v65 + 488) = v63;
    v288 = *(v63 + 320);
    if (v288)
    {
      v289 = os_retain(v288);
    }

    else
    {
      v289 = 0;
    }

    v294 = *(v65 + 744);
    if (v294)
    {
      v295 = *(v65 + 736);
      if (v295)
      {
        os_release(v295);
        v294 = *(v65 + 744);
      }
    }

    *(v65 + 736) = v289;
    *(v65 + 744) = v294 | 1;
    if ((*(*(v63 + 248) + 376) & 2) == 0)
    {
      goto LABEL_653;
    }

    v296 = nw_parameters_copy_default_protocol_stack(*(v63 + 320));
    *aBlock = 0;
    *&aBlock[8] = aBlock;
    *&aBlock[16] = 0x2000000000;
    LOBYTE(v999) = 0;
    buf[0] = 0;
    buf[1] = buf;
    buf[2] = 0x3802000000;
    v1007 = __Block_byref_object_copy__42960;
    *v1008 = __Block_byref_object_dispose__42961;
    *&v1008[8] = 0;
    v1008[16] |= 1u;
    iterate_block[0] = MEMORY[0x1E69E9820];
    iterate_block[1] = 0x40000000;
    iterate_block[2] = ___ZL41nw_http1_stream_associate_with_connectionP15nw_http1_streamP19nw_http1_connection_block_invoke;
    v1010 = &unk_1E6A32930;
    v1011 = aBlock;
    v1012 = buf;
    v1013 = v63;
    nw_protocol_stack_iterate_application_protocols(v296, iterate_block);
    if (*(buf[1] + 40))
    {
      v297 = v65;
      while (1)
      {
        v297 = *(v297 + 32);
        if (!v297)
        {
          break;
        }

        if (nw_protocol_is_tls_over_stream(v297))
        {
          v298 = *(buf[1] + 40);
          v299 = nw_protocol_boringssl_copy_definition();
          nw_parameters_set_protocol_instance(v298, v300, v297);
          if (v299)
          {
            os_release(v299);
          }

          v301 = 1;
          goto LABEL_647;
        }
      }

      __nwlog_obj();
      *v1003 = 136446210;
      *&v1003[4] = "nw_http1_stream_associate_with_connection";
      v306 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v997 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v306, type, &v997))
      {
        goto LABEL_643;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v307 = __nwlog_obj();
        v308 = type[0];
        if (os_log_type_enabled(v307, type[0]))
        {
          *v1003 = 136446210;
          *&v1003[4] = "nw_http1_stream_associate_with_connection";
          v309 = "%{public}s tls should have been in the stack but could not find it";
LABEL_642:
          _os_log_impl(&dword_181A37000, v307, v308, v309, v1003, 0xCu);
        }
      }

      else if (v997 == OS_LOG_TYPE_INFO)
      {
        v313 = __nw_create_backtrace_string();
        v307 = __nwlog_obj();
        v308 = type[0];
        v314 = os_log_type_enabled(v307, type[0]);
        if (v313)
        {
          if (v314)
          {
            *v1003 = 136446466;
            *&v1003[4] = "nw_http1_stream_associate_with_connection";
            *&v1003[12] = 2082;
            *&v1003[14] = v313;
            _os_log_impl(&dword_181A37000, v307, v308, "%{public}s tls should have been in the stack but could not find it, dumping backtrace:%{public}s", v1003, 0x16u);
          }

          free(v313);
          goto LABEL_643;
        }

        if (v314)
        {
          *v1003 = 136446210;
          *&v1003[4] = "nw_http1_stream_associate_with_connection";
          v309 = "%{public}s tls should have been in the stack but could not find it, no backtrace";
          goto LABEL_642;
        }
      }

      else
      {
        v307 = __nwlog_obj();
        v308 = type[0];
        if (os_log_type_enabled(v307, type[0]))
        {
          *v1003 = 136446210;
          *&v1003[4] = "nw_http1_stream_associate_with_connection";
          v309 = "%{public}s tls should have been in the stack but could not find it, backtrace limit exceeded";
          goto LABEL_642;
        }
      }

LABEL_643:
      if (v306)
      {
        free(v306);
      }

      v301 = 0;
LABEL_646:
      v63 = v990;
LABEL_647:
      _Block_object_dispose(buf, 8);
      if ((v1008[16] & 1) != 0 && *&v1008[8])
      {
        os_release(*&v1008[8]);
      }

      _Block_object_dispose(aBlock, 8);
      if (v296)
      {
        os_release(v296);
      }

      if (!v301)
      {
        goto LABEL_681;
      }

LABEL_653:
      v390 = *(v63 + 32);
      if (!v390 || v390 == *(v65 + 32))
      {
LABEL_671:
        nw_protocol_set_output_handler(v63, *(v65 + 32));
        nw_protocol_set_input_handler(v65, *(v63 + 48));
        *v63 = *v65;
        v407 = *(v63 + 96);
        v408 = *(v63 + 112);
        v409 = *(v63 + 128);
        *(v65 + 144) = *(v63 + 144);
        v410 = *(v63 + 80);
        *(v65 + 64) = *(v63 + 64);
        *(v65 + 80) = v410;
        *(v65 + 112) = v408;
        *(v65 + 128) = v409;
        *(v65 + 96) = v407;
        *(v65 + 872) &= 0xFFD7u;
        *(v65 + 864) = 1;
        if ((*(v65 + 158) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v411 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
          {
            v412 = *(v65 + 488);
            v413 = *(*(v65 + 480) + 372);
            v414 = *(v65 + 860);
            if (v412)
            {
              LODWORD(v412) = *(v412 + 424);
            }

            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_http1_update_connection_input_state";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v65 + 74;
            HIWORD(buf[2]) = 2080;
            v1007 = " ";
            *v1008 = 1024;
            *&v1008[2] = v413;
            *&v1008[6] = 1024;
            *&v1008[8] = v414;
            *&v1008[12] = 1024;
            *&v1008[14] = v412;
            _os_log_impl(&dword_181A37000, v411, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: reading", buf, 0x32u);
          }
        }

        if ((*(v63 + 158) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v415 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v416 = *(v63 + 256);
            v417 = *(*(v63 + 248) + 372);
            if (v416)
            {
              LODWORD(v416) = *(v416 + 860);
            }

            v418 = *(v63 + 424);
            LODWORD(buf[0]) = 136448002;
            *(buf + 4) = "nw_http1_stream_associate_with_connection";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v63 + 74;
            HIWORD(buf[2]) = 2080;
            v1007 = " ";
            *v1008 = 1024;
            *&v1008[2] = v417;
            *&v1008[6] = 1024;
            *&v1008[8] = v416;
            *&v1008[12] = 1024;
            *&v1008[14] = v418;
            *&v1008[18] = 2048;
            *&v1008[20] = v63;
            *&v1008[28] = 2048;
            *&v1008[30] = v65;
            _os_log_impl(&dword_181A37000, v415, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> stream (%p) now using connection %p", buf, 0x46u);
          }
        }

        goto LABEL_681;
      }

      __nwlog_obj();
      v391 = *(v63 + 32);
      v392 = *(v65 + 32);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_http1_stream_associate_with_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v391;
      HIWORD(buf[2]) = 2048;
      v1007 = v63;
      *v1008 = 2048;
      *&v1008[2] = v392;
      v393 = _os_log_send_and_compose_impl();
      aBlock[0] = 16;
      v1003[0] = 0;
      if (__nwlog_fault(v393, aBlock, v1003))
      {
        if (aBlock[0] == 17)
        {
          v394 = __nwlog_obj();
          v395 = aBlock[0];
          if (!os_log_type_enabled(v394, aBlock[0]))
          {
            goto LABEL_669;
          }

          v396 = *(v63 + 32);
          v397 = *(v65 + 32);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v396;
          HIWORD(buf[2]) = 2048;
          v1007 = v63;
          *v1008 = 2048;
          *&v1008[2] = v397;
          v398 = "%{public}s overriding existing output handler %p on http1 stream %p to %p";
          goto LABEL_668;
        }

        if (v1003[0] != 1)
        {
          v394 = __nwlog_obj();
          v395 = aBlock[0];
          if (!os_log_type_enabled(v394, aBlock[0]))
          {
            goto LABEL_669;
          }

          v403 = *(v63 + 32);
          v404 = *(v65 + 32);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v403;
          HIWORD(buf[2]) = 2048;
          v1007 = v63;
          *v1008 = 2048;
          *&v1008[2] = v404;
          v398 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, backtrace limit exceeded";
          goto LABEL_668;
        }

        v399 = __nw_create_backtrace_string();
        v394 = __nwlog_obj();
        v395 = aBlock[0];
        v400 = os_log_type_enabled(v394, aBlock[0]);
        if (v399)
        {
          if (v400)
          {
            v401 = *(v63 + 32);
            v402 = *(v65 + 32);
            LODWORD(buf[0]) = v989;
            *(buf + 4) = "nw_http1_stream_associate_with_connection";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = v401;
            HIWORD(buf[2]) = 2048;
            v1007 = v63;
            *v1008 = 2048;
            *&v1008[2] = v402;
            *&v1008[10] = 2082;
            *&v1008[12] = v399;
            _os_log_impl(&dword_181A37000, v394, v395, "%{public}s overriding existing output handler %p on http1 stream %p to %p, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v399);
          goto LABEL_669;
        }

        if (v400)
        {
          v405 = *(v63 + 32);
          v406 = *(v65 + 32);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v405;
          HIWORD(buf[2]) = 2048;
          v1007 = v63;
          *v1008 = 2048;
          *&v1008[2] = v406;
          v398 = "%{public}s overriding existing output handler %p on http1 stream %p to %p, no backtrace";
LABEL_668:
          _os_log_impl(&dword_181A37000, v394, v395, v398, buf, 0x2Au);
        }
      }

LABEL_669:
      if (v393)
      {
        free(v393);
      }

      goto LABEL_671;
    }

    __nwlog_obj();
    *v1003 = 136446210;
    *&v1003[4] = "nw_http1_stream_associate_with_connection";
    v302 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v997 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v302, type, &v997))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v303 = __nwlog_obj();
        v304 = type[0];
        if (os_log_type_enabled(v303, type[0]))
        {
          *v1003 = 136446210;
          *&v1003[4] = "nw_http1_stream_associate_with_connection";
          v305 = "%{public}s unable to find tls options";
LABEL_612:
          _os_log_impl(&dword_181A37000, v303, v304, v305, v1003, 0xCu);
        }
      }

      else if (v997 == OS_LOG_TYPE_INFO)
      {
        v311 = __nw_create_backtrace_string();
        v303 = __nwlog_obj();
        v304 = type[0];
        v312 = os_log_type_enabled(v303, type[0]);
        if (v311)
        {
          if (v312)
          {
            *v1003 = 136446466;
            *&v1003[4] = "nw_http1_stream_associate_with_connection";
            *&v1003[12] = 2082;
            *&v1003[14] = v311;
            _os_log_impl(&dword_181A37000, v303, v304, "%{public}s unable to find tls options, dumping backtrace:%{public}s", v1003, 0x16u);
          }

          free(v311);
          goto LABEL_613;
        }

        if (v312)
        {
          *v1003 = 136446210;
          *&v1003[4] = "nw_http1_stream_associate_with_connection";
          v305 = "%{public}s unable to find tls options, no backtrace";
          goto LABEL_612;
        }
      }

      else
      {
        v303 = __nwlog_obj();
        v304 = type[0];
        if (os_log_type_enabled(v303, type[0]))
        {
          *v1003 = 136446210;
          *&v1003[4] = "nw_http1_stream_associate_with_connection";
          v305 = "%{public}s unable to find tls options, backtrace limit exceeded";
          goto LABEL_612;
        }
      }
    }

LABEL_613:
    if (v302)
    {
      free(v302);
    }

    v301 = 1;
    goto LABEL_646;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v282 = *(v65 + 488);
  LODWORD(buf[0]) = 136446722;
  *(buf + 4) = "nw_http1_stream_associate_with_connection";
  WORD2(buf[1]) = 2048;
  *(&buf[1] + 6) = v65;
  HIWORD(buf[2]) = 2048;
  v1007 = v282;
  v283 = _os_log_send_and_compose_impl();
  LOBYTE(iterate_block[0]) = 16;
  aBlock[0] = 0;
  if (!__nwlog_fault(v283, iterate_block, aBlock))
  {
    goto LABEL_491;
  }

  if (LOBYTE(iterate_block[0]) != 17)
  {
    if (aBlock[0] == 1)
    {
      v290 = __nw_create_backtrace_string();
      v284 = __nwlog_obj();
      v285 = iterate_block[0];
      v291 = os_log_type_enabled(v284, iterate_block[0]);
      if (v290)
      {
        if (v291)
        {
          v292 = *(v65 + 488);
          LODWORD(buf[0]) = 136446978;
          *(buf + 4) = "nw_http1_stream_associate_with_connection";
          WORD2(buf[1]) = 2048;
          *(&buf[1] + 6) = v65;
          HIWORD(buf[2]) = 2048;
          v1007 = v292;
          *v1008 = 2082;
          *&v1008[2] = v290;
          _os_log_impl(&dword_181A37000, v284, v285, "%{public}s Connection %p already has a stream (%p), dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v290);
        goto LABEL_491;
      }

      if (!v291)
      {
        goto LABEL_491;
      }

      v310 = *(v65 + 488);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_http1_stream_associate_with_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v65;
      HIWORD(buf[2]) = 2048;
      v1007 = v310;
      v287 = "%{public}s Connection %p already has a stream (%p), no backtrace";
    }

    else
    {
      v284 = __nwlog_obj();
      v285 = iterate_block[0];
      if (!os_log_type_enabled(v284, iterate_block[0]))
      {
        goto LABEL_491;
      }

      v293 = *(v65 + 488);
      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_http1_stream_associate_with_connection";
      WORD2(buf[1]) = 2048;
      *(&buf[1] + 6) = v65;
      HIWORD(buf[2]) = 2048;
      v1007 = v293;
      v287 = "%{public}s Connection %p already has a stream (%p), backtrace limit exceeded";
    }

LABEL_490:
    _os_log_impl(&dword_181A37000, v284, v285, v287, buf, 0x20u);
    goto LABEL_491;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v284 = gLogObj;
  v285 = iterate_block[0];
  if (os_log_type_enabled(gLogObj, iterate_block[0]))
  {
    v286 = *(v65 + 488);
    LODWORD(buf[0]) = 136446722;
    *(buf + 4) = "nw_http1_stream_associate_with_connection";
    WORD2(buf[1]) = 2048;
    *(&buf[1] + 6) = v65;
    HIWORD(buf[2]) = 2048;
    v1007 = v286;
    v287 = "%{public}s Connection %p already has a stream (%p)";
    goto LABEL_490;
  }

LABEL_491:
  if (v283)
  {
    free(v283);
  }

LABEL_681:
  *(v63 + 428) |= 0x8000u;
  v419 = *(v63 + 352);
  buf[0] = MEMORY[0x1E69E9820];
  buf[1] = 0x40000000;
  buf[2] = ___ZL50nw_http1_match_idle_connection_with_pending_streamP17nw_protocol_http1_block_invoke;
  v1007 = &__block_descriptor_tmp_55_42980;
  *v1008 = v63;
  nw_http_transaction_metadata_set_event_handler(v419, buf);
  if (*(v63 + 428))
  {
    nw_http_transaction_metadata_set_first_on_connection(*(v63 + 352));
    nw_http_connection_metadata_extract_sec_metadata_marshaled_fields(*(v65 + 768));
  }

  nw_http_transaction_metadata_set_connection_metadata(*(v63 + 352), *(v65 + 768));
  nw_protocol_connected(*(v63 + 48), v63);
}
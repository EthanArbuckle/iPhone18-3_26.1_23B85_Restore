uint64_t http2_transport_create_input_frame(uint64_t a1, uint64_t a2, size_t size)
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v56 = "http2_transport_create_input_frame";
    v29 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v54 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v29, type, &v54))
    {
      goto LABEL_94;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type[0];
      if (!os_log_type_enabled(v30, type[0]))
      {
        goto LABEL_94;
      }

      *buf = 136446210;
      v56 = "http2_transport_create_input_frame";
      v32 = "%{public}s called with null http2_transport";
LABEL_93:
      _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
      goto LABEL_94;
    }

    if (v54 != OS_LOG_TYPE_INFO)
    {
      v30 = __nwlog_obj();
      v31 = type[0];
      if (os_log_type_enabled(v30, type[0]))
      {
        *buf = 136446210;
        v56 = "http2_transport_create_input_frame";
        v32 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v31 = type[0];
    v37 = os_log_type_enabled(v30, type[0]);
    if (!backtrace_string)
    {
      if (v37)
      {
        *buf = 136446210;
        v56 = "http2_transport_create_input_frame";
        v32 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    if (!v37)
    {
      goto LABEL_78;
    }

    *buf = 136446466;
    v56 = "http2_transport_create_input_frame";
    v57 = 2082;
    v58 = backtrace_string;
    v38 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
LABEL_77:
    _os_log_impl(&dword_181A37000, v30, v31, v38, buf, 0x16u);
    goto LABEL_78;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v56 = "http2_transport_create_input_frame";
    v29 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v54 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v29, type, &v54))
    {
      goto LABEL_94;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type[0];
      if (!os_log_type_enabled(v30, type[0]))
      {
        goto LABEL_94;
      }

      *buf = 136446210;
      v56 = "http2_transport_create_input_frame";
      v32 = "%{public}s called with null stream";
      goto LABEL_93;
    }

    if (v54 != OS_LOG_TYPE_INFO)
    {
      v30 = __nwlog_obj();
      v31 = type[0];
      if (os_log_type_enabled(v30, type[0]))
      {
        *buf = 136446210;
        v56 = "http2_transport_create_input_frame";
        v32 = "%{public}s called with null stream, backtrace limit exceeded";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v31 = type[0];
    v39 = os_log_type_enabled(v30, type[0]);
    if (!backtrace_string)
    {
      if (v39)
      {
        *buf = 136446210;
        v56 = "http2_transport_create_input_frame";
        v32 = "%{public}s called with null stream, no backtrace";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    if (!v39)
    {
      goto LABEL_78;
    }

    *buf = 136446466;
    v56 = "http2_transport_create_input_frame";
    v57 = 2082;
    v58 = backtrace_string;
    v38 = "%{public}s called with null stream, dumping backtrace:%{public}s";
    goto LABEL_77;
  }

  v4 = size;
  if (!size)
  {
    __nwlog_obj();
    *buf = 136446210;
    v56 = "http2_transport_create_input_frame";
    v29 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v54 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v29, type, &v54))
    {
      goto LABEL_94;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type[0];
      if (os_log_type_enabled(v30, type[0]))
      {
        *buf = 136446210;
        v56 = "http2_transport_create_input_frame";
        v32 = "%{public}s called with null length";
        goto LABEL_93;
      }

LABEL_94:
      if (v29)
      {
        free(v29);
      }

      return 0;
    }

    if (v54 != OS_LOG_TYPE_INFO)
    {
      v30 = __nwlog_obj();
      v31 = type[0];
      if (os_log_type_enabled(v30, type[0]))
      {
        *buf = 136446210;
        v56 = "http2_transport_create_input_frame";
        v32 = "%{public}s called with null length, backtrace limit exceeded";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v31 = type[0];
    v40 = os_log_type_enabled(v30, type[0]);
    if (!backtrace_string)
    {
      if (v40)
      {
        *buf = 136446210;
        v56 = "http2_transport_create_input_frame";
        v32 = "%{public}s called with null length, no backtrace";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    if (v40)
    {
      *buf = 136446466;
      v56 = "http2_transport_create_input_frame";
      v57 = 2082;
      v58 = backtrace_string;
      v38 = "%{public}s called with null length, dumping backtrace:%{public}s";
      goto LABEL_77;
    }

LABEL_78:
    free(backtrace_string);
    goto LABEL_94;
  }

  *type = 0;
  v51 = type;
  v52 = 0x2000000000;
  v53 = 0;
  if (gLogDatapath == 1)
  {
    v33 = __nwlog_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v56 = "http2_transport_create_input_frame";
      v57 = 2082;
      v58 = a1 + 205;
      v59 = 1024;
      LODWORD(v60) = v4;
      _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s requested input frame of length %u", buf, 0x1Cu);
    }
  }

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 0x40000000;
  v44 = ___ZL34http2_transport_create_input_frameP27nw_protocol_http2_transportP22http2_transport_streamj_block_invoke;
  v45 = &unk_1E6A321C0;
  v49 = v4;
  v47 = a1;
  v48 = a2;
  v46 = type;
  v6 = *(a1 + 160);
  do
  {
    if (!v6)
    {
      break;
    }

    v7 = *(v6 + 16);
    v8 = (v44)(v43);
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  if (*(v51 + 3))
  {
    goto LABEL_9;
  }

  if (gLogDatapath == 1)
  {
    v41 = __nwlog_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v56 = "http2_transport_create_input_frame";
      v57 = 2082;
      v58 = a1 + 205;
      v59 = 1024;
      LODWORD(v60) = v4;
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s no input frame to reuse for length %u", buf, 0x1Cu);
    }
  }

  v11 = malloc_type_calloc(1uLL, v4, 0x7C3FEEA1uLL);
  if (v11)
  {
    v12 = v11;
    goto LABEL_18;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v56 = "http2_transport_create_input_frame";
  v57 = 2048;
  v58 = 1;
  v59 = 2048;
  v60 = v4;
  v13 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v13);
  if (!result)
  {
    free(v13);
    v12 = 0;
LABEL_18:
    v14 = nw_frame_create(16, v12, v4, nw_protocol_http2_transport_frame_input_finalizer, 0);
    *(v51 + 3) = v14;
    if (v14)
    {
      if (http2_transport_input_frame_context_reset(v14, a1, a2))
      {
        if (gLogDatapath == 1)
        {
          v15 = __nwlog_obj();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v56 = "http2_transport_create_input_frame";
            v57 = 2082;
            v58 = a1 + 205;
            v59 = 1024;
            LODWORD(v60) = v4;
            _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s allocated new input frame of length %u", buf, 0x1Cu);
          }
        }

LABEL_9:
        if (gLogDatapath == 1)
        {
          v34 = __nwlog_obj();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = *(v51 + 3);
            *buf = 136446978;
            v56 = "http2_transport_create_input_frame";
            v57 = 2082;
            v58 = a1 + 205;
            v59 = 2048;
            v60 = v35;
            v61 = 1024;
            v62 = v4;
            _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s input_frame_create returning frame %p for requested length %u", buf, 0x26u);
          }
        }

        v9 = *(v51 + 3);
        goto LABEL_11;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v56 = "http2_transport_create_input_frame";
        v57 = 2082;
        v58 = a1 + 205;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s %{public}s input frame has no metadata", buf, 0x16u);
      }

      buffer = nw_frame_get_buffer(*(v51 + 3), 0);
      if (buffer)
      {
        free(buffer);
      }

      nw_frame_reset(*(v51 + 3), 0, 0, 0, 0);
      v22 = *(v51 + 3);
      if (v22)
      {
        os_release(v22);
        v9 = 0;
        *(v51 + 3) = 0;
LABEL_11:
        _Block_object_dispose(type, 8);
        return v9;
      }

LABEL_46:
      v9 = 0;
      goto LABEL_11;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v56 = "http2_transport_create_input_frame";
    v16 = _os_log_send_and_compose_impl();
    v54 = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v16, &v54, &v42))
    {
      if (v54 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = v54;
        if (os_log_type_enabled(gLogObj, v54))
        {
          *buf = 136446210;
          v56 = "http2_transport_create_input_frame";
          v19 = "%{public}s nw_frame_create new input frame failed";
LABEL_40:
          v27 = v17;
          v28 = v18;
LABEL_41:
          _os_log_impl(&dword_181A37000, v27, v28, v19, buf, 0xCu);
        }
      }

      else if (v42 == 1)
      {
        v23 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = v54;
        v26 = os_log_type_enabled(gLogObj, v54);
        if (v23)
        {
          if (v26)
          {
            *buf = 136446466;
            v56 = "http2_transport_create_input_frame";
            v57 = 2082;
            v58 = v23;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s nw_frame_create new input frame failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v23);
          goto LABEL_42;
        }

        if (v26)
        {
          *buf = 136446210;
          v56 = "http2_transport_create_input_frame";
          v19 = "%{public}s nw_frame_create new input frame failed, no backtrace";
          v27 = v24;
          v28 = v25;
          goto LABEL_41;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = v54;
        if (os_log_type_enabled(gLogObj, v54))
        {
          *buf = 136446210;
          v56 = "http2_transport_create_input_frame";
          v19 = "%{public}s nw_frame_create new input frame failed, backtrace limit exceeded";
          goto LABEL_40;
        }
      }
    }

LABEL_42:
    if (v16)
    {
      free(v16);
    }

    if (v11)
    {
      free(v11);
    }

    goto LABEL_46;
  }

  __break(1u);
  return result;
}

void nw_frame_inherit_metadata(uint64_t a1, uint64_t a2, int a3)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v63 = "__nw_frame_inherit_metadata";
    v50 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v60 = 0;
    if (!__nwlog_fault(v50, type, &v60))
    {
      goto LABEL_111;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type[0];
      if (!os_log_type_enabled(v51, type[0]))
      {
        goto LABEL_111;
      }

      *buf = 136446210;
      v63 = "__nw_frame_inherit_metadata";
      v53 = "%{public}s called with null original_frame";
      goto LABEL_110;
    }

    if (v60 != 1)
    {
      v51 = __nwlog_obj();
      v52 = type[0];
      if (!os_log_type_enabled(v51, type[0]))
      {
        goto LABEL_111;
      }

      *buf = 136446210;
      v63 = "__nw_frame_inherit_metadata";
      v53 = "%{public}s called with null original_frame, backtrace limit exceeded";
      goto LABEL_110;
    }

    backtrace_string = __nw_create_backtrace_string();
    v51 = __nwlog_obj();
    v52 = type[0];
    v55 = os_log_type_enabled(v51, type[0]);
    if (!backtrace_string)
    {
      if (!v55)
      {
        goto LABEL_111;
      }

      *buf = 136446210;
      v63 = "__nw_frame_inherit_metadata";
      v53 = "%{public}s called with null original_frame, no backtrace";
      goto LABEL_110;
    }

    if (v55)
    {
      *buf = 136446466;
      v63 = "__nw_frame_inherit_metadata";
      v64 = 2082;
      v65 = backtrace_string;
      _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null original_frame, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_111:
    if (!v50)
    {
      return;
    }

    goto LABEL_112;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v63 = "__nw_frame_inherit_metadata";
    v50 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v60 = 0;
    if (!__nwlog_fault(v50, type, &v60))
    {
      goto LABEL_111;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type[0];
      if (!os_log_type_enabled(v51, type[0]))
      {
        goto LABEL_111;
      }

      *buf = 136446210;
      v63 = "__nw_frame_inherit_metadata";
      v53 = "%{public}s called with null new_frame";
      goto LABEL_110;
    }

    if (v60 != 1)
    {
      v51 = __nwlog_obj();
      v52 = type[0];
      if (!os_log_type_enabled(v51, type[0]))
      {
        goto LABEL_111;
      }

      *buf = 136446210;
      v63 = "__nw_frame_inherit_metadata";
      v53 = "%{public}s called with null new_frame, backtrace limit exceeded";
      goto LABEL_110;
    }

    v56 = __nw_create_backtrace_string();
    v51 = __nwlog_obj();
    v52 = type[0];
    v57 = os_log_type_enabled(v51, type[0]);
    if (v56)
    {
      if (v57)
      {
        *buf = 136446466;
        v63 = "__nw_frame_inherit_metadata";
        v64 = 2082;
        v65 = v56;
        _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null new_frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v56);
      if (!v50)
      {
        return;
      }

LABEL_112:
      free(v50);
      return;
    }

    if (v57)
    {
      *buf = 136446210;
      v63 = "__nw_frame_inherit_metadata";
      v53 = "%{public}s called with null new_frame, no backtrace";
LABEL_110:
      _os_log_impl(&dword_181A37000, v51, v52, v53, buf, 0xCu);
      goto LABEL_111;
    }

    goto LABEL_111;
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    v59 = (a2 + 64);
    v6 = a2 + 120;
    do
    {
      if (a3)
      {
        v7 = *(v5 + 66) & 0x40;
        v8 = v5[6];
        if (v8)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7 = 0;
        v8 = v5[6];
        if (v8)
        {
LABEL_9:
          if (_nw_protocol_metadata_is_ip(v8))
          {
            *(a2 + 186) = *(a2 + 186) & 0xFC | _nw_ip_metadata_get_ecn_flag(v8) & 3;
            dscp_value = _nw_ip_metadata_get_dscp_value(v8);
            if (dscp_value < 0x40)
            {
              *(a2 + 184) = dscp_value;
              goto LABEL_12;
            }

            __nwlog_obj();
            *buf = 136446210;
            v63 = "__nw_frame_set_dscp_value";
            v38 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            v60 = 0;
            if (!__nwlog_fault(v38, type, &v60))
            {
              goto LABEL_77;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v39 = __nwlog_obj();
              v40 = type[0];
              if (os_log_type_enabled(v39, type[0]))
              {
                *buf = 136446210;
                v63 = "__nw_frame_set_dscp_value";
                v41 = v39;
                v42 = v40;
                v43 = "%{public}s called with null (dscp_value <= _MAX_DSCP)";
                goto LABEL_76;
              }

              goto LABEL_77;
            }

            if (v60 != 1)
            {
              v48 = __nwlog_obj();
              v49 = type[0];
              if (!os_log_type_enabled(v48, type[0]))
              {
                goto LABEL_77;
              }

              *buf = 136446210;
              v63 = "__nw_frame_set_dscp_value";
              v41 = v48;
              v42 = v49;
              v43 = "%{public}s called with null (dscp_value <= _MAX_DSCP), backtrace limit exceeded";
              goto LABEL_76;
            }

            v44 = __nw_create_backtrace_string();
            v45 = __nwlog_obj();
            v46 = type[0];
            v47 = os_log_type_enabled(v45, type[0]);
            if (v44)
            {
              if (v47)
              {
                *buf = 136446466;
                v63 = "__nw_frame_set_dscp_value";
                v64 = 2082;
                v65 = v44;
                _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null (dscp_value <= _MAX_DSCP), dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v44);
              goto LABEL_77;
            }

            if (v47)
            {
              *buf = 136446210;
              v63 = "__nw_frame_set_dscp_value";
              v41 = v45;
              v42 = v46;
              v43 = "%{public}s called with null (dscp_value <= _MAX_DSCP), no backtrace";
LABEL_76:
              _os_log_impl(&dword_181A37000, v41, v42, v43, buf, 0xCu);
            }

LABEL_77:
            if (v38)
            {
              free(v38);
            }

LABEL_12:
            service_class = _nw_ip_metadata_get_service_class(v8);
            if (service_class > 5)
            {
              v11 = 0;
            }

            else
            {
              v11 = dword_182B0E000[service_class];
            }

            *(a2 + 176) = v11;
            *(a2 + 180) = _nw_ip_metadata_get_fragmentation_value(v8);
          }

          if ((*(a2 + 204) & 8) == 0)
          {
            goto LABEL_20;
          }

          memset(type, 0, sizeof(type));
          v22 = v8;
          _nw_protocol_metadata_copy_identifier(v22, type);

          v23 = *v59;
          if (!*v59)
          {
            goto LABEL_47;
          }

          v24 = 0;
          while (2)
          {
            v25 = _nw_protocol_metadata_copy_definition(v22);
            v26 = v23[6];
            if (v26)
            {
              v27 = _nw_protocol_metadata_copy_definition(v26);
              if (nw_protocol_definition_is_equal_unsafe(v25, v27) && !uuid_compare(type, v23 + 16))
              {
                os_retain(v22);
                v28 = v23[6];
                if (v28)
                {
                  os_release(v28);
                }

                v23[6] = v22;
                *(v23 + 66) = *(v23 + 66) & 0xBF | v7;
                v24 = 1;
                if (v27)
                {
LABEL_39:
                  os_release(v27);
                }
              }

              else if (v27)
              {
                goto LABEL_39;
              }
            }

            if (v25)
            {
              os_release(v25);
            }

            v23 = *v23;
            if (!v23)
            {
              if ((v24 & 1) == 0)
              {
LABEL_47:
                v29 = malloc_type_calloc(1uLL, 0x48uLL, 0x7DE37D5uLL);
                if (!v29)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
                  *buf = 136446722;
                  v63 = "__nw_frame_set_metadata";
                  v64 = 2048;
                  v65 = 1;
                  v66 = 2048;
                  v67 = 72;
                  v30 = _os_log_send_and_compose_impl();
                  if (__nwlog_should_abort(v30))
                  {
                    __break(1u);
                  }

                  free(v30);
                }

                v29[6] = os_retain(v22);
                *(v29 + 1) = *type;
                *(v29 + 66) = *(v29 + 66) & 0xBF | v7;
                *v29 = 0;
                v31 = *(a2 + 72);
                v29[1] = v31;
                *v31 = v29;
                *(a2 + 72) = v29;
              }

              goto LABEL_6;
            }

            continue;
          }
        }
      }

      if ((*(a2 + 204) & 8) != 0)
      {
        goto LABEL_6;
      }

LABEL_20:
      v12 = *(a2 + 168);
      if (v12)
      {
        os_release(v12);
        *(a2 + 168) = 0;
      }

      if (v8)
      {
        *(a2 + 168) = os_retain(v8);
        v13 = *(a2 + 204);
        if ((v13 & 0x20) == 0)
        {
          v14 = v8;
          _nw_protocol_metadata_copy_identifier(v14, (a2 + 136));

          v13 = *(a2 + 204);
        }

        *(a2 + 204) = v13 | 8;
      }

      *(a2 + 186) = *(a2 + 186) & 0xBF | v7;
      v15 = *(a2 + 64);
      if (!v15)
      {
        *(a2 + 64) = v6;
        *(a2 + 72) = v6;
        *(a2 + 120) = 0;
        *(a2 + 128) = v59;
        goto LABEL_6;
      }

      if (v15 != v6)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446722;
        v63 = "__nw_frame_set_metadata";
        v64 = 2048;
        v65 = v15;
        v66 = 2048;
        v67 = a2 + 120;
        v16 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v60 = 0;
        if (!__nwlog_fault(v16, type, &v60))
        {
          goto LABEL_61;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            *buf = 136446722;
            v63 = "__nw_frame_set_metadata";
            v64 = 2048;
            v65 = v15;
            v66 = 2048;
            v67 = a2 + 120;
            v19 = v17;
            v20 = v18;
            v21 = "%{public}s Existing metadata %p doesn't match expected %p";
            goto LABEL_60;
          }

          goto LABEL_61;
        }

        if (v60 == 1)
        {
          v32 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v33 = gLogObj;
          v34 = type[0];
          v35 = os_log_type_enabled(gLogObj, type[0]);
          if (v32)
          {
            if (v35)
            {
              *buf = 136446978;
              v63 = "__nw_frame_set_metadata";
              v64 = 2048;
              v65 = v15;
              v66 = 2048;
              v67 = a2 + 120;
              v68 = 2082;
              v69 = v32;
              _os_log_impl(&dword_181A37000, v33, v34, "%{public}s Existing metadata %p doesn't match expected %p, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v32);
            goto LABEL_61;
          }

          if (!v35)
          {
LABEL_61:
            if (v16)
            {
              free(v16);
            }

            goto LABEL_6;
          }

          *buf = 136446722;
          v63 = "__nw_frame_set_metadata";
          v64 = 2048;
          v65 = v15;
          v66 = 2048;
          v67 = a2 + 120;
          v19 = v33;
          v20 = v34;
          v21 = "%{public}s Existing metadata %p doesn't match expected %p, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v36 = gLogObj;
          v37 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_61;
          }

          *buf = 136446722;
          v63 = "__nw_frame_set_metadata";
          v64 = 2048;
          v65 = v15;
          v66 = 2048;
          v67 = a2 + 120;
          v19 = v36;
          v20 = v37;
          v21 = "%{public}s Existing metadata %p doesn't match expected %p, backtrace limit exceeded";
        }

LABEL_60:
        _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0x20u);
        goto LABEL_61;
      }

LABEL_6:
      v5 = *v5;
    }

    while (v5);
  }

  if (a3)
  {
    if (*(a1 + 186) < 0)
    {
      *(a2 + 186) |= 0x80u;
    }
  }
}

uint64_t on_frame_recv_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v105 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (gLogDatapath == 1)
    {
      v42 = a2;
      v43 = a3;
      v44 = __nwlog_obj();
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG);
      a3 = v43;
      a2 = v42;
      if (v45)
      {
        *buf = 136446466;
        v97 = "on_frame_recv_callback";
        v98 = 2082;
        v99 = (v43 + 205);
        _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
        a3 = v43;
        a2 = v42;
      }
    }

    result = 0;
    v4 = *(a2 + 12);
    if (v4 > 3)
    {
      if (*(a2 + 12) > 6u)
      {
        if (v4 == 7)
        {
          if (gLogDatapath == 1)
          {
            v61 = a3;
            v62 = __nwlog_obj();
            v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG);
            a3 = v61;
            if (v63)
            {
              *buf = 136446466;
              v97 = "on_frame_recv_callback";
              v98 = 2082;
              v99 = (v61 + 205);
              _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s received complete GOAWAY frame, tearing down tunnel connection", buf, 0x16u);
              a3 = v61;
            }
          }

          nw_http2_transport_connection_close(a3);
        }

        else
        {
          if (v4 != 8)
          {
            return result;
          }

          if (gLogDatapath == 1)
          {
            v21 = a3;
            v22 = a2;
            v23 = __nwlog_obj();
            result = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
            if (!result)
            {
              return result;
            }

            v24 = *(v22 + 8);
            v25 = *(v22 + 16);
            *buf = 136446978;
            v97 = "on_frame_recv_callback";
            v98 = 2082;
            v99 = (v21 + 205);
            v100 = 1024;
            *v101 = v24;
            *&v101[4] = 1024;
            *&v101[6] = v25;
            _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s received window update frame for stream %d, window size increment %d", buf, 0x22u);
          }
        }

        return 0;
      }

      if (v4 != 4)
      {
        if (v4 != 5)
        {
          return result;
        }

        v12 = a3;
        v13 = a2;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        v15 = *(v13 + 8);
        *buf = 136446722;
        v97 = "on_frame_recv_callback";
        v98 = 2082;
        v99 = (v12 + 205);
        v100 = 1024;
        *v101 = v15;
        v9 = "%{public}s %{public}s received a complete PUSH_PROMISE frame on stream %d -- currently not supported";
        v10 = v14;
LABEL_16:
        v11 = OS_LOG_TYPE_ERROR;
        goto LABEL_47;
      }

      if (gLogDatapath != 1)
      {
        return 0;
      }

      v30 = a3;
      v31 = __nwlog_obj();
      result = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      *buf = 136446466;
      v97 = "on_frame_recv_callback";
      v98 = 2082;
      v99 = (v30 + 205);
      v32 = "%{public}s %{public}s received complete SETTINGS frame";
    }

    else
    {
      if (*(a2 + 12) <= 1u)
      {
        if (*(a2 + 12))
        {
          if ((*(a2 + 13) & 1) != 0 && gLogDatapath == 1)
          {
            v82 = a2;
            v83 = a3;
            v84 = __nwlog_obj();
            v85 = os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG);
            a3 = v83;
            a2 = v82;
            if (v85)
            {
              *buf = 136446466;
              v97 = "on_frame_recv_callback";
              v98 = 2082;
              v99 = (v83 + 205);
              _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s detected end stream on header frame", buf, 0x16u);
              a3 = v83;
              a2 = v82;
            }
          }

          if (gLogDatapath != 1)
          {
            return 0;
          }

          v5 = a3;
          v6 = a2;
          v7 = __nwlog_obj();
          result = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
          if (!result)
          {
            return result;
          }

          v8 = *(v6 + 8);
          *buf = 136446722;
          v97 = "on_frame_recv_callback";
          v98 = 2082;
          v99 = (v5 + 205);
          v100 = 1024;
          *v101 = v8;
          v9 = "%{public}s %{public}s received incoming HEADERS frame for stream %d";
          v10 = v7;
          v11 = OS_LOG_TYPE_DEBUG;
          goto LABEL_47;
        }

        if (gLogDatapath == 1)
        {
          v56 = a2;
          v57 = a3;
          v58 = __nwlog_obj();
          v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG);
          a3 = v57;
          a2 = v56;
          if (v59)
          {
            v60 = *(v56 + 8);
            *buf = 136446722;
            v97 = "on_frame_recv_callback";
            v98 = 2082;
            v99 = (v57 + 205);
            v100 = 1024;
            *v101 = v60;
            _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s received a complete DATA frame on stream %d", buf, 0x1Cu);
            a3 = v57;
            a2 = v56;
          }
        }

        if ((*(a2 + 13) & 1) == 0)
        {
          return 0;
        }

        if (gLogDatapath == 1)
        {
          v77 = a2;
          v78 = a3;
          v79 = __nwlog_obj();
          v80 = os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG);
          a3 = v78;
          a2 = v77;
          if (v80)
          {
            v81 = *(v77 + 8);
            *buf = 136446722;
            v97 = "on_frame_recv_callback";
            v98 = 2082;
            v99 = (v78 + 205);
            v100 = 1024;
            *v101 = v81;
            _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s end stream flag detected, delivering input_finished for stream %d", buf, 0x1Cu);
            a3 = v78;
            a2 = v77;
          }
        }

        v26 = a2;
        v27 = a3;
        protocol_from_stream_id = nw_http2_transport_get_protocol_from_stream_id(a3, *(a2 + 8));
        if (protocol_from_stream_id)
        {
          v29 = *(protocol_from_stream_id + 24);
          if (v29)
          {
            v20 = *(v29 + 184);
            if (v20)
            {
LABEL_23:
              v20();
              return 0;
            }
          }

          v69 = protocol_from_stream_id;
          __nwlog_obj();
          v70 = (v27 + 205);
          v71 = *(v26 + 8);
          *buf = 136446978;
          v97 = "on_frame_recv_callback";
          v98 = 2082;
          v99 = (v27 + 205);
          v100 = 2048;
          v93 = v69;
          *v101 = v69;
          *&v101[8] = 1024;
          v102 = v71;
          v51 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v94 = 0;
          if (!__nwlog_fault(v51, &type, &v94))
          {
            goto LABEL_108;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v52 = __nwlog_obj();
            v53 = type;
            if (os_log_type_enabled(v52, type))
            {
              v72 = *(v26 + 8);
              *buf = 136446978;
              v97 = "on_frame_recv_callback";
              v98 = 2082;
              v99 = v70;
              v100 = 2048;
              *v101 = v93;
              *&v101[8] = 1024;
              v102 = v72;
              v55 = "%{public}s %{public}s no input finished callback for protocol %p attached to stream %d";
              goto LABEL_107;
            }

            goto LABEL_108;
          }

          if (v94 != 1)
          {
            v52 = __nwlog_obj();
            v53 = type;
            if (os_log_type_enabled(v52, type))
            {
              v89 = *(v26 + 8);
              *buf = 136446978;
              v97 = "on_frame_recv_callback";
              v98 = 2082;
              v99 = v70;
              v100 = 2048;
              *v101 = v93;
              *&v101[8] = 1024;
              v102 = v89;
              v55 = "%{public}s %{public}s no input finished callback for protocol %p attached to stream %d, backtrace limit exceeded";
              goto LABEL_107;
            }

            goto LABEL_108;
          }

          backtrace_string = __nw_create_backtrace_string();
          v52 = __nwlog_obj();
          v53 = type;
          v86 = os_log_type_enabled(v52, type);
          if (!backtrace_string)
          {
            if (v86)
            {
              v91 = *(v26 + 8);
              *buf = 136446978;
              v97 = "on_frame_recv_callback";
              v98 = 2082;
              v99 = v70;
              v100 = 2048;
              *v101 = v93;
              *&v101[8] = 1024;
              v102 = v91;
              v55 = "%{public}s %{public}s no input finished callback for protocol %p attached to stream %d, no backtrace";
              goto LABEL_107;
            }

            goto LABEL_108;
          }

          if (v86)
          {
            v87 = *(v26 + 8);
            *buf = 136447234;
            v97 = "on_frame_recv_callback";
            v98 = 2082;
            v99 = v70;
            v100 = 2048;
            *v101 = v93;
            *&v101[8] = 1024;
            v102 = v87;
            v103 = 2082;
            v104 = backtrace_string;
            v76 = "%{public}s %{public}s no input finished callback for protocol %p attached to stream %d, dumping backtrace:%{public}s";
            goto LABEL_97;
          }

          goto LABEL_98;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        v37 = *(v26 + 8);
        *buf = 136446722;
        v97 = "on_frame_recv_callback";
        v98 = 2082;
        v99 = (v27 + 205);
        v100 = 1024;
        *v101 = v37;
        v9 = "%{public}s %{public}s no input handler found for stream %d, dropping DATA";
        v10 = v36;
        goto LABEL_16;
      }

      if (v4 != 2)
      {
        if (v4 != 3)
        {
          return result;
        }

        if (gLogDatapath == 1)
        {
          v64 = a2;
          v65 = a3;
          v66 = __nwlog_obj();
          v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG);
          a3 = v65;
          a2 = v64;
          if (v67)
          {
            v68 = *(v64 + 8);
            *buf = 136446722;
            v97 = "on_frame_recv_callback";
            v98 = 2082;
            v99 = (v65 + 205);
            v100 = 1024;
            *v101 = v68;
            _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s stream %d received RST_STREAM frame, setting error to ECONNRESET", buf, 0x1Cu);
            a3 = v65;
            a2 = v64;
          }
        }

        v16 = a2;
        v17 = a3;
        v18 = nw_http2_transport_get_protocol_from_stream_id(a3, *(a2 + 8));
        if (v18)
        {
          v19 = *(v18 + 24);
          if (v19)
          {
            v20 = *(v19 + 56);
            if (v20)
            {
              goto LABEL_23;
            }
          }

          v48 = v18;
          __nwlog_obj();
          v49 = (v17 + 205);
          v50 = *(v16 + 8);
          *buf = 136446978;
          v97 = "on_frame_recv_callback";
          v98 = 2082;
          v99 = (v17 + 205);
          v100 = 2048;
          v92 = v48;
          *v101 = v48;
          *&v101[8] = 1024;
          v102 = v50;
          v51 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v94 = 0;
          if (!__nwlog_fault(v51, &type, &v94))
          {
            goto LABEL_108;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v52 = __nwlog_obj();
            v53 = type;
            if (os_log_type_enabled(v52, type))
            {
              v54 = *(v16 + 8);
              *buf = 136446978;
              v97 = "on_frame_recv_callback";
              v98 = 2082;
              v99 = v49;
              v100 = 2048;
              *v101 = v92;
              *&v101[8] = 1024;
              v102 = v54;
              v55 = "%{public}s %{public}s no error callback for protocol %p attached to stream %d";
LABEL_107:
              _os_log_impl(&dword_181A37000, v52, v53, v55, buf, 0x26u);
            }

LABEL_108:
            if (v51)
            {
              free(v51);
            }

            return 4294966775;
          }

          if (v94 != 1)
          {
            v52 = __nwlog_obj();
            v53 = type;
            if (os_log_type_enabled(v52, type))
            {
              v88 = *(v16 + 8);
              *buf = 136446978;
              v97 = "on_frame_recv_callback";
              v98 = 2082;
              v99 = v49;
              v100 = 2048;
              *v101 = v92;
              *&v101[8] = 1024;
              v102 = v88;
              v55 = "%{public}s %{public}s no error callback for protocol %p attached to stream %d, backtrace limit exceeded";
              goto LABEL_107;
            }

            goto LABEL_108;
          }

          backtrace_string = __nw_create_backtrace_string();
          v52 = __nwlog_obj();
          v53 = type;
          v74 = os_log_type_enabled(v52, type);
          if (!backtrace_string)
          {
            if (v74)
            {
              v90 = *(v16 + 8);
              *buf = 136446978;
              v97 = "on_frame_recv_callback";
              v98 = 2082;
              v99 = v49;
              v100 = 2048;
              *v101 = v92;
              *&v101[8] = 1024;
              v102 = v90;
              v55 = "%{public}s %{public}s no error callback for protocol %p attached to stream %d, no backtrace";
              goto LABEL_107;
            }

            goto LABEL_108;
          }

          if (v74)
          {
            v75 = *(v16 + 8);
            *buf = 136447234;
            v97 = "on_frame_recv_callback";
            v98 = 2082;
            v99 = v49;
            v100 = 2048;
            *v101 = v92;
            *&v101[8] = 1024;
            v102 = v75;
            v103 = 2082;
            v104 = backtrace_string;
            v76 = "%{public}s %{public}s no error callback for protocol %p attached to stream %d, dumping backtrace:%{public}s";
LABEL_97:
            _os_log_impl(&dword_181A37000, v52, v53, v76, buf, 0x30u);
          }

LABEL_98:
          free(backtrace_string);
          goto LABEL_108;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
        if (!result)
        {
          return result;
        }

        v35 = *(v16 + 8);
        *buf = 136446722;
        v97 = "on_frame_recv_callback";
        v98 = 2082;
        v99 = (v17 + 205);
        v100 = 1024;
        *v101 = v35;
        v9 = "%{public}s %{public}s no input handler found for stream %d, ignoring RST_STREAM";
        v10 = v34;
        v11 = OS_LOG_TYPE_INFO;
LABEL_47:
        _os_log_impl(&dword_181A37000, v10, v11, v9, buf, 0x1Cu);
        return 0;
      }

      if (gLogDatapath != 1)
      {
        return 0;
      }

      v33 = a3;
      v31 = __nwlog_obj();
      result = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      *buf = 136446466;
      v97 = "on_frame_recv_callback";
      v98 = 2082;
      v99 = (v33 + 205);
      v32 = "%{public}s %{public}s received complete PRIORITY frame, ignoring";
    }

    _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, v32, buf, 0x16u);
    return 0;
  }

  __nwlog_obj();
  *buf = 136446210;
  v97 = "on_frame_recv_callback";
  v38 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v94 = 0;
  if (__nwlog_fault(v38, &type, &v94))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v39, type))
      {
        *buf = 136446210;
        v97 = "on_frame_recv_callback";
        v41 = "%{public}s nghttp2 user data is NULL, not http2_transport";
LABEL_77:
        _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0xCu);
      }
    }

    else if (v94 == 1)
    {
      v46 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type;
      v47 = os_log_type_enabled(v39, type);
      if (v46)
      {
        if (v47)
        {
          *buf = 136446466;
          v97 = "on_frame_recv_callback";
          v98 = 2082;
          v99 = v46;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v46);
        goto LABEL_78;
      }

      if (v47)
      {
        *buf = 136446210;
        v97 = "on_frame_recv_callback";
        v41 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
        goto LABEL_77;
      }
    }

    else
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v39, type))
      {
        *buf = 136446210;
        v97 = "on_frame_recv_callback";
        v41 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
        goto LABEL_77;
      }
    }
  }

LABEL_78:
  if (v38)
  {
    free(v38);
  }

  return 4294966394;
}

uint64_t ___ZL41nw_protocol_http2_transport_process_inputP27nw_protocol_http2_transport_block_invoke_25(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *nw_hash_node_get_extra(a2);
  object = nw_hash_node_get_object(a2);
  if ((*(v4 + 36) & 1) == 0 || !*v4)
  {
    return 1;
  }

  if (gLogDatapath == 1)
  {
    v12 = object;
    v13 = __nwlog_obj();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    object = v12;
    if (v14)
    {
      v15 = *(a1 + 32);
      v16 = (v15 + 205);
      v17 = v15 == 0;
      v18 = *(v4 + 32);
      if (v17)
      {
        v16 = "";
      }

      *buf = 136446722;
      v32 = "nw_protocol_http2_transport_process_input_block_invoke";
      v33 = 2082;
      v34 = v16;
      v35 = 1024;
      LODWORD(v36) = v18;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s calling input_available on stream %d", buf, 0x1Cu);
      object = v12;
    }
  }

  if (object)
  {
    v6 = *(object + 24);
    if (v6)
    {
      v7 = *(v6 + 64);
      if (v7)
      {
        v7();
        return 1;
      }
    }

    v9 = object;
    __nwlog_obj();
    v10 = v9;
    v11 = *(v9 + 16);
    if (!v11)
    {
      v11 = "invalid";
    }
  }

  else
  {
    v10 = 0;
    __nwlog_obj();
    v11 = "invalid";
  }

  *buf = 136446466;
  v32 = "nw_protocol_http2_transport_process_input_block_invoke";
  v33 = 2082;
  v34 = v11;
  v19 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (__nwlog_fault(v19, &type, &v29))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_43;
      }

      v22 = "invalid";
      if (v10 && *(v10 + 16))
      {
        v22 = *(v10 + 16);
      }

      *buf = 136446466;
      v32 = "nw_protocol_http2_transport_process_input_block_invoke";
      v33 = 2082;
      v34 = v22;
      v23 = "%{public}s protocol %{public}s has invalid input_available callback";
      goto LABEL_42;
    }

    if (v29 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_43;
      }

      v27 = "invalid";
      if (v10 && *(v10 + 16))
      {
        v27 = *(v10 + 16);
      }

      *buf = 136446466;
      v32 = "nw_protocol_http2_transport_process_input_block_invoke";
      v33 = 2082;
      v34 = v27;
      v23 = "%{public}s protocol %{public}s has invalid input_available callback, backtrace limit exceeded";
      goto LABEL_42;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type;
    v25 = os_log_type_enabled(v20, type);
    if (backtrace_string)
    {
      if (v25)
      {
        v26 = "invalid";
        if (v10 && *(v10 + 16))
        {
          v26 = *(v10 + 16);
        }

        *buf = 136446722;
        v32 = "nw_protocol_http2_transport_process_input_block_invoke";
        v33 = 2082;
        v34 = v26;
        v35 = 2082;
        v36 = backtrace_string;
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s protocol %{public}s has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
      goto LABEL_43;
    }

    if (v25)
    {
      v28 = "invalid";
      if (v10 && *(v10 + 16))
      {
        v28 = *(v10 + 16);
      }

      *buf = 136446466;
      v32 = "nw_protocol_http2_transport_process_input_block_invoke";
      v33 = 2082;
      v34 = v28;
      v23 = "%{public}s protocol %{public}s has invalid input_available callback, no backtrace";
LABEL_42:
      _os_log_impl(&dword_181A37000, v20, v21, v23, buf, 0x16u);
    }
  }

LABEL_43:
  if (v19)
  {
    free(v19);
  }

  return 1;
}

void nw_socket_frame_input_finalizer(nw_frame *a1, BOOL a2, void *a3)
{
  nw_frame_free_buffer(a1);
  nw_frame_reset(a1, 0, 0, 0, 0);
  v5 = a3 + 36;
  v6 = (a1 + 16);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  if (v7)
  {
    v5 = (v7 + 24);
  }

  *v5 = v8;
  *v8 = v7;
  *(a1 + 3) = 0;
  *v6 = 0;
  v9 = a3[34];
  *(a1 + 3) = v9;
  *v9 = a1;
  a3[34] = v6;
}

uint64_t nw_http2_transport_get_stream_from_id(uint64_t a1, int a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2 <= 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136446722;
    v28 = "nw_http2_transport_get_stream_from_id";
    v29 = 2082;
    v30 = a1 + 205;
    v31 = 1024;
    LODWORD(v32) = a2;
    v11 = "%{public}s %{public}s requested stream id (%d) is not valid, returning NULL stream";
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
LABEL_9:
    _os_log_impl(&dword_181A37000, v12, v13, v11, buf, 0x1Cu);
    return 0;
  }

  stream_node_from_id = nw_http2_transport_get_stream_node_from_id(a1, a2);
  if (!stream_node_from_id)
  {
    if (gLogDatapath != 1)
    {
      return 0;
    }

    v14 = __nwlog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    *buf = 136446722;
    v28 = "nw_http2_transport_get_stream_from_id";
    v29 = 2082;
    v30 = a1 + 205;
    v31 = 1024;
    LODWORD(v32) = a2;
    v11 = "%{public}s %{public}s stream %d not found in id based hash table";
    v12 = v14;
    v13 = OS_LOG_TYPE_DEBUG;
    goto LABEL_9;
  }

  v7 = stream_node_from_id;
  result = *(stream_node_from_id + 16);
  if (!result)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = a1 + 205;
    *buf = 136446722;
    v28 = "nw_http2_transport_get_stream_from_id";
    v29 = 2082;
    v30 = a1 + 205;
    v31 = 2048;
    v32 = v7;
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v16, &type, &v25))
    {
      goto LABEL_31;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_31;
      }

      *buf = 136446722;
      v28 = "nw_http2_transport_get_stream_from_id";
      v29 = 2082;
      v30 = v15;
      v31 = 2048;
      v32 = v7;
      v19 = "%{public}s %{public}s hash node %p didn't have a stream as extra";
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      v21 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446978;
          v28 = "nw_http2_transport_get_stream_from_id";
          v29 = 2082;
          v30 = v15;
          v31 = 2048;
          v32 = v7;
          v33 = 2082;
          v34 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s %{public}s hash node %p didn't have a stream as extra, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(backtrace_string);
        goto LABEL_31;
      }

      if (!v21)
      {
LABEL_31:
        if (v16)
        {
          free(v16);
        }

        return 0;
      }

      *buf = 136446722;
      v28 = "nw_http2_transport_get_stream_from_id";
      v29 = 2082;
      v30 = v15;
      v31 = 2048;
      v32 = v7;
      v19 = "%{public}s %{public}s hash node %p didn't have a stream as extra, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_31;
      }

      *buf = 136446722;
      v28 = "nw_http2_transport_get_stream_from_id";
      v29 = 2082;
      v30 = v15;
      v31 = 2048;
      v32 = v7;
      v19 = "%{public}s %{public}s hash node %p didn't have a stream as extra, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0x20u);
    goto LABEL_31;
  }

  if (a3)
  {
    v9 = *(v7 + 32);
    if (v9)
    {
      *a3 = v9;
    }

    else if (gLogDatapath == 1)
    {
      v22 = result;
      v23 = __nwlog_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(v22 + 32);
        *buf = 136446722;
        v28 = "nw_http2_transport_get_stream_from_id";
        v29 = 2082;
        v30 = a1 + 205;
        v31 = 1024;
        LODWORD(v32) = v24;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s no input handler attached to stream %d, ignoring", buf, 0x1Cu);
      }

      return v22;
    }
  }

  return result;
}

uint64_t http2_transport_input_frame_context_reset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "__nw_frame_get_metadata";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v12, &type, &v18))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v21 = "__nw_frame_get_metadata";
      v15 = "%{public}s called with null frame";
    }

    else if (v18 == 1)
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
          v21 = "__nw_frame_get_metadata";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_39;
      }

      if (!v17)
      {
LABEL_39:
        if (v12)
        {
          free(v12);
        }

        goto LABEL_3;
      }

      *buf = 136446210;
      v21 = "__nw_frame_get_metadata";
      v15 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      v21 = "__nw_frame_get_metadata";
      v15 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_39;
  }

  if ((*(a1 + 204) & 4) != 0)
  {
    *(a1 + 208) = a2;
    *(a1 + 216) = a3;
    return 1;
  }

LABEL_3:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  if (a2)
  {
    v4 = (a2 + 205);
  }

  else
  {
    v4 = "";
  }

  *buf = 136446466;
  v21 = "http2_transport_input_frame_context_reset";
  v22 = 2082;
  v23 = v4;
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v5, &type, &v18))
  {
    goto LABEL_21;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = type;
    if (os_log_type_enabled(gLogObj, type))
    {
      *buf = 136446466;
      v21 = "http2_transport_input_frame_context_reset";
      v22 = 2082;
      v23 = v4;
      v8 = "%{public}s %{public}s frame has no metadata";
LABEL_20:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0x16u);
    }
  }

  else if (v18 == 1)
  {
    v10 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = type;
    v11 = os_log_type_enabled(gLogObj, type);
    if (v10)
    {
      if (v11)
      {
        *buf = 136446722;
        v21 = "http2_transport_input_frame_context_reset";
        v22 = 2082;
        v23 = v4;
        v24 = 2082;
        v25 = v10;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s %{public}s frame has no metadata, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v10);
      goto LABEL_21;
    }

    if (v11)
    {
      *buf = 136446466;
      v21 = "http2_transport_input_frame_context_reset";
      v22 = 2082;
      v23 = v4;
      v8 = "%{public}s %{public}s frame has no metadata, no backtrace";
      goto LABEL_20;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = type;
    if (os_log_type_enabled(gLogObj, type))
    {
      *buf = 136446466;
      v21 = "http2_transport_input_frame_context_reset";
      v22 = 2082;
      v23 = v4;
      v8 = "%{public}s %{public}s frame has no metadata, backtrace limit exceeded";
      goto LABEL_20;
    }
  }

LABEL_21:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

void nw_protocol_socket_get_message_properties(char *a1, uint64_t a2, int *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_protocol_socket_get_message_properties";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v3, &type, &v33))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (!os_log_type_enabled(v28, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v36 = "nw_protocol_socket_get_message_properties";
      v30 = "%{public}s called with null protocol";
    }

    else if (v33 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type;
      v32 = os_log_type_enabled(v28, type);
      if (backtrace_string)
      {
        if (v32)
        {
          *buf = 136446466;
          v36 = "nw_protocol_socket_get_message_properties";
          v37 = 2082;
          v38 = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v3)
        {
          goto LABEL_47;
        }

        return;
      }

      if (!v32)
      {
LABEL_66:
        if (!v3)
        {
          return;
        }

        goto LABEL_47;
      }

      *buf = 136446210;
      v36 = "nw_protocol_socket_get_message_properties";
      v30 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (!os_log_type_enabled(v28, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v36 = "nw_protocol_socket_get_message_properties";
      v30 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
    goto LABEL_66;
  }

  v3 = a1;
  v4 = *(a1 + 5);
  v5 = a1;
  if (v4 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (v4 != &nw_protocol_ref_counted_additional_handle)
  {
    v6 = 1;
    goto LABEL_11;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v7 = *(v5 + 11);
    v6 = 0;
    if (v7)
    {
      *(v5 + 11) = v7 + 1;
    }
  }

  else
  {
    v6 = 1;
  }

  v4 = *(a1 + 5);
LABEL_11:
  v8 = a1;
  if (v4 != &nw_protocol_ref_counted_handle)
  {
    if (v4 != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v36 = "nw_protocol_socket_get_message_properties";
      v9 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v33 = 0;
      if (!__nwlog_fault(v9, &type, &v33))
      {
        goto LABEL_34;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v36 = "nw_protocol_socket_get_message_properties";
        v12 = "%{public}s called with null socket_handler";
      }

      else
      {
        if (v33 == 1)
        {
          v15 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          v17 = type;
          v18 = os_log_type_enabled(gLogObj, type);
          if (v15)
          {
            if (v18)
            {
              *buf = 136446466;
              v36 = "nw_protocol_socket_get_message_properties";
              v37 = 2082;
              v38 = v15;
              _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v15);
            goto LABEL_34;
          }

          if (!v18)
          {
LABEL_34:
            if (v9)
            {
              free(v9);
            }

            goto LABEL_36;
          }

          *buf = 136446210;
          v36 = "nw_protocol_socket_get_message_properties";
          v12 = "%{public}s called with null socket_handler, no backtrace";
          v21 = v16;
          v22 = v17;
LABEL_33:
          _os_log_impl(&dword_181A37000, v21, v22, v12, buf, 0xCu);
          goto LABEL_34;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v36 = "nw_protocol_socket_get_message_properties";
        v12 = "%{public}s called with null socket_handler, backtrace limit exceeded";
      }

      v21 = v10;
      v22 = v11;
      goto LABEL_33;
    }

    v8 = *(a1 + 8);
  }

  if (a3)
  {
    if (*(v8 + 72) == 1)
    {
      v13 = *(v8 + 68);
      v14 = a3[1] & 0xFFFFFFFB;
    }

    else
    {
      v13 = -1;
      v14 = a3[1] | 4;
    }

    *a3 = v13;
    a3[1] = v14;
    v19 = *(v8 + 72) == 1;
    v20 = v14 & 0xFFFFFFFC;
    if (v19)
    {
      ++v20;
    }

    a3[1] = v20;
  }

LABEL_36:
  if ((v6 & 1) == 0)
  {
    v23 = *(v3 + 5);
    if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 8)) != 0)
    {
      v24 = *(v3 + 11);
      if (v24)
      {
        v25 = v24 - 1;
        *(v3 + 11) = v25;
        if (!v25)
        {
          v26 = *(v3 + 8);
          if (v26)
          {
            *(v3 + 8) = 0;
            v26[2](v26);
            _Block_release(v26);
          }

          if (v3[72])
          {
            v27 = *(v3 + 8);
            if (v27)
            {
              _Block_release(v27);
            }
          }

LABEL_47:
          free(v3);
        }
      }
    }
  }
}

uint64_t nw_protocol_http2_transport_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, int a4, int a5, nw_frame_array_s *a6)
{
  v91[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if (gLogDatapath == 1)
      {
        v43 = a3;
        v44 = a6;
        v45 = a4;
        v46 = a5;
        v47 = a2;
        v48 = __nwlog_obj();
        v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG);
        a2 = v47;
        a5 = v46;
        a4 = v45;
        a6 = v44;
        a3 = v43;
        if (v49)
        {
          *v89 = 136447234;
          *&v89[4] = "nw_protocol_http2_transport_get_input_frames";
          *&v89[12] = 2082;
          *&v89[14] = handle + 205;
          *&v89[22] = 1024;
          LODWORD(v90) = v43;
          WORD2(v90) = 1024;
          *(&v90 + 6) = v45;
          WORD5(v90) = 1024;
          HIDWORD(v90) = v46;
          _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called min_bytes: %u, max_bytes: %u, max_frame_count: %u", v89, 0x28u);
          a2 = v47;
          a5 = v46;
          a4 = v45;
          a6 = v44;
          a3 = v43;
        }
      }

      *v89 = 0;
      *&v89[8] = v89;
      *&v89[16] = 0x3802000000;
      *&v90 = __Block_byref_object_copy__41168;
      *(&v90 + 1) = __Block_byref_object_dispose__41169;
      v91[0] = 0;
      v91[1] = v91;
      a6->tqh_first = 0;
      a6->tqh_last = &a6->tqh_first;
      if (a2)
      {
        output_handler_context = a2->output_handler_context;
        if (output_handler_context)
        {
          v8 = output_handler_context[4];
          if (v8)
          {
            v9 = a3;
            *type = 0;
            v78 = type;
            v79 = 0x2000000000;
            v80 = 0;
            v73 = 0;
            v74 = &v73;
            v75 = 0x2000000000;
            v76 = 0;
            v62[0] = MEMORY[0x1E69E9820];
            v62[1] = 0x40000000;
            v63 = ___ZL44nw_protocol_http2_transport_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
            v64 = &unk_1E6A32178;
            v65 = type;
            v66 = &v73;
            v71 = a5;
            v72 = a4;
            v67 = v89;
            v68 = handle;
            v69 = v8;
            v70 = a6;
            v10 = a6;
            v11 = *v8;
            do
            {
              if (!v11)
              {
                break;
              }

              v12 = *(v11 + 16);
              v13 = (v63)(v62);
              v11 = v12;
            }

            while ((v13 & 1) != 0);
            if (*(v74 + 6) >= v9)
            {
              v32 = *&v89[8];
              v33 = *&v89[8] + 40;
              v34 = *(*&v89[8] + 40);
              if (v34)
              {
                v35 = handle[19];
                *v35 = v34;
                *(*(v32 + 40) + 24) = v35;
                handle[19] = *(v32 + 48);
                *(v32 + 40) = 0;
                *(v32 + 48) = v33;
              }

              if (gLogDatapath == 1)
              {
                v55 = __nwlog_obj();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                {
                  v56 = *(v78 + 6);
                  v57 = *(v74 + 6);
                  *buf = 136446978;
                  v82 = "nw_protocol_http2_transport_get_input_frames";
                  v83 = 2082;
                  v84 = handle + 205;
                  v85 = 1024;
                  v86 = v56;
                  v87 = 1024;
                  LODWORD(v88) = v57;
                  _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s returning %u frames (%u total bytes)", buf, 0x22u);
                }
              }

              v21 = *(v78 + 6);
            }

            else
            {
              if (*(v78 + 6))
              {
                v14 = *&v89[8];
                v15 = (*&v89[8] + 40);
                if (*v8)
                {
                  v16 = *(*&v89[8] + 48);
                  *v16 = *v8;
                  *(*v8 + 24) = v16;
                  *(v14 + 48) = v8[1];
                  *v8 = 0;
                  v8[1] = v8;
                }

                if (*v15)
                {
                  v17 = v8[1];
                  *v17 = *v15;
                  *(*(v14 + 40) + 24) = v17;
                  v8[1] = *(v14 + 48);
                  *(v14 + 40) = 0;
                  *(v14 + 48) = v15;
                }

                v58[0] = MEMORY[0x1E69E9820];
                v58[1] = 0x40000000;
                v59 = ___ZL44nw_protocol_http2_transport_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_36;
                v60 = &__block_descriptor_tmp_37_41177;
                v61 = v10;
                tqh_first = v10->tqh_first;
                do
                {
                  if (!tqh_first)
                  {
                    break;
                  }

                  v19 = *(tqh_first + 4);
                  v20 = (v59)(v58);
                  tqh_first = v19;
                }

                while ((v20 & 1) != 0);
                v10->tqh_first = 0;
                v10->tqh_last = &v10->tqh_first;
              }

              if (gLogDatapath == 1 && (v54 = __nwlog_obj(), os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG)))
              {
                *buf = 136446722;
                v82 = "nw_protocol_http2_transport_get_input_frames";
                v83 = 2082;
                v84 = handle + 205;
                v85 = 1024;
                v86 = v9;
                _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s failed to find enough (%u) bytes to return, returning 0 frames", buf, 0x1Cu);
                v21 = 0;
              }

              else
              {
                v21 = 0;
              }
            }

            _Block_object_dispose(&v73, 8);
            _Block_object_dispose(type, 8);
            goto LABEL_45;
          }
        }

        v22 = a2;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v82 = "nw_protocol_http2_transport_get_input_frames";
          v83 = 2082;
          v84 = handle + 205;
          v85 = 1042;
          v86 = 16;
          v87 = 2098;
          v88 = v22;
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s %{public}s can't find hash table entry for %{public,uuid_t}.16P", buf, 0x26u);
        }

LABEL_44:
        v21 = 0;
LABEL_45:
        _Block_object_dispose(v89, 8);
        return v21;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v82 = "nw_protocol_http2_transport_get_input_frames";
      v24 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v73) = 0;
      if (__nwlog_fault(v24, type, &v73))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          v26 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_42;
          }

          *buf = 136446210;
          v82 = "nw_protocol_http2_transport_get_input_frames";
          v27 = "%{public}s called with null input_protocol";
LABEL_40:
          v36 = v25;
          v37 = v26;
LABEL_41:
          _os_log_impl(&dword_181A37000, v36, v37, v27, buf, 0xCu);
          goto LABEL_42;
        }

        if (v73 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          v26 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_42;
          }

          *buf = 136446210;
          v82 = "nw_protocol_http2_transport_get_input_frames";
          v27 = "%{public}s called with null input_protocol, backtrace limit exceeded";
          goto LABEL_40;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        v30 = type[0];
        v31 = os_log_type_enabled(gLogObj, type[0]);
        if (backtrace_string)
        {
          if (v31)
          {
            *buf = 136446466;
            v82 = "nw_protocol_http2_transport_get_input_frames";
            v83 = 2082;
            v84 = backtrace_string;
            _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_42;
        }

        if (v31)
        {
          *buf = 136446210;
          v82 = "nw_protocol_http2_transport_get_input_frames";
          v27 = "%{public}s called with null input_protocol, no backtrace";
          v36 = v29;
          v37 = v30;
          goto LABEL_41;
        }
      }

LABEL_42:
      if (v24)
      {
        free(v24);
      }

      goto LABEL_44;
    }

    __nwlog_obj();
    *v89 = 136446210;
    *&v89[4] = "nw_protocol_http2_transport_get_input_frames";
    v39 = _os_log_send_and_compose_impl();
    buf[0] = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v39, buf, type))
    {
      goto LABEL_82;
    }

    if (buf[0] == 17)
    {
      v40 = __nwlog_obj();
      v41 = buf[0];
      if (os_log_type_enabled(v40, buf[0]))
      {
        *v89 = 136446210;
        *&v89[4] = "nw_protocol_http2_transport_get_input_frames";
        v42 = "%{public}s called with null http2_transport";
        goto LABEL_81;
      }

      goto LABEL_82;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v40 = __nwlog_obj();
      v41 = buf[0];
      if (os_log_type_enabled(v40, buf[0]))
      {
        *v89 = 136446210;
        *&v89[4] = "nw_protocol_http2_transport_get_input_frames";
        v42 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_81;
      }

      goto LABEL_82;
    }

    v50 = __nw_create_backtrace_string();
    v40 = __nwlog_obj();
    v41 = buf[0];
    v53 = os_log_type_enabled(v40, buf[0]);
    if (!v50)
    {
      if (v53)
      {
        *v89 = 136446210;
        *&v89[4] = "nw_protocol_http2_transport_get_input_frames";
        v42 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_81;
      }

      goto LABEL_82;
    }

    if (v53)
    {
      *v89 = 136446466;
      *&v89[4] = "nw_protocol_http2_transport_get_input_frames";
      *&v89[12] = 2082;
      *&v89[14] = v50;
      v52 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  __nwlog_obj();
  *v89 = 136446210;
  *&v89[4] = "nw_protocol_http2_transport_get_input_frames";
  v39 = _os_log_send_and_compose_impl();
  buf[0] = 16;
  type[0] = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v39, buf, type))
  {
    goto LABEL_82;
  }

  if (buf[0] != 17)
  {
    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v40 = __nwlog_obj();
      v41 = buf[0];
      if (os_log_type_enabled(v40, buf[0]))
      {
        *v89 = 136446210;
        *&v89[4] = "nw_protocol_http2_transport_get_input_frames";
        v42 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_81;
      }

      goto LABEL_82;
    }

    v50 = __nw_create_backtrace_string();
    v40 = __nwlog_obj();
    v41 = buf[0];
    v51 = os_log_type_enabled(v40, buf[0]);
    if (!v50)
    {
      if (v51)
      {
        *v89 = 136446210;
        *&v89[4] = "nw_protocol_http2_transport_get_input_frames";
        v42 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_81;
      }

      goto LABEL_82;
    }

    if (v51)
    {
      *v89 = 136446466;
      *&v89[4] = "nw_protocol_http2_transport_get_input_frames";
      *&v89[12] = 2082;
      *&v89[14] = v50;
      v52 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_67:
      _os_log_impl(&dword_181A37000, v40, v41, v52, v89, 0x16u);
    }

LABEL_68:
    free(v50);
    goto LABEL_82;
  }

  v40 = __nwlog_obj();
  v41 = buf[0];
  if (os_log_type_enabled(v40, buf[0]))
  {
    *v89 = 136446210;
    *&v89[4] = "nw_protocol_http2_transport_get_input_frames";
    v42 = "%{public}s called with null protocol";
LABEL_81:
    _os_log_impl(&dword_181A37000, v40, v41, v42, v89, 0xCu);
  }

LABEL_82:
  if (v39)
  {
    free(v39);
  }

  return 0;
}

uint64_t nw_frame_array_get_frame_count(uint64_t *a1, int a2, _DWORD *a3)
{
  v82 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v73 = "nw_frame_array_get_frame_count";
    v63 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v70 = 0;
    if (__nwlog_fault(v63, &type, &v70))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v64 = __nwlog_obj();
        v65 = type;
        if (os_log_type_enabled(v64, type))
        {
          *buf = 136446210;
          v73 = "nw_frame_array_get_frame_count";
          v66 = "%{public}s called with null array";
LABEL_110:
          _os_log_impl(&dword_181A37000, v64, v65, v66, buf, 0xCu);
        }
      }

      else if (v70 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v64 = __nwlog_obj();
        v65 = type;
        v68 = os_log_type_enabled(v64, type);
        if (backtrace_string)
        {
          if (v68)
          {
            *buf = 136446466;
            v73 = "nw_frame_array_get_frame_count";
            v74 = 2082;
            v75 = backtrace_string;
            _os_log_impl(&dword_181A37000, v64, v65, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_111;
        }

        if (v68)
        {
          *buf = 136446210;
          v73 = "nw_frame_array_get_frame_count";
          v66 = "%{public}s called with null array, no backtrace";
          goto LABEL_110;
        }
      }

      else
      {
        v64 = __nwlog_obj();
        v65 = type;
        if (os_log_type_enabled(v64, type))
        {
          *buf = 136446210;
          v73 = "nw_frame_array_get_frame_count";
          v66 = "%{public}s called with null array, backtrace limit exceeded";
          goto LABEL_110;
        }
      }
    }

LABEL_111:
    if (v63)
    {
      free(v63);
    }

    return 0;
  }

  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      v4 = 0;
      LODWORD(v5) = 0;
      while (1)
      {
        v6 = *(v3 + 52);
        v7 = v6 ? v6 - (*(v3 + 56) + *(v3 + 60)) : 0;
        v3 = *(v3 + 32);
        v4 = (v4 << 31 >> 31) + 1;
        if (v4 != v4 << 31 >> 31)
        {
          break;
        }

        v4 = v4;
        v15 = __CFADD__(v5, v7);
        v5 = v5 + v7;
        if (v15)
        {
          goto LABEL_32;
        }

LABEL_6:
        if (!v3)
        {
          goto LABEL_94;
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = v4;
      *buf = 136446978;
      v73 = "nw_frame_array_get_frame_count";
      v74 = 2082;
      v75 = "frame_count";
      v76 = 2048;
      v77 = 1;
      v78 = 2048;
      v79 = v4;
      v9 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v70 = 0;
      if (__nwlog_fault(v9, &type, &v70))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_28;
          }

          *buf = 136446978;
          v73 = "nw_frame_array_get_frame_count";
          v74 = 2082;
          v75 = "frame_count";
          v76 = 2048;
          v77 = 1;
          v78 = 2048;
          v79 = v8;
          v12 = v10;
          v13 = v11;
          v14 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_27:
          _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0x2Au);
          goto LABEL_28;
        }

        if (v70 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = gLogObj;
          v21 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_28;
          }

          *buf = 136446978;
          v73 = "nw_frame_array_get_frame_count";
          v74 = 2082;
          v75 = "frame_count";
          v76 = 2048;
          v77 = 1;
          v78 = 2048;
          v79 = v8;
          v12 = v20;
          v13 = v21;
          v14 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_27;
        }

        v16 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = type;
        v19 = os_log_type_enabled(gLogObj, type);
        if (!v16)
        {
          if (!v19)
          {
            goto LABEL_28;
          }

          *buf = 136446978;
          v73 = "nw_frame_array_get_frame_count";
          v74 = 2082;
          v75 = "frame_count";
          v76 = 2048;
          v77 = 1;
          v78 = 2048;
          v79 = v8;
          v12 = v17;
          v13 = v18;
          v14 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_27;
        }

        if (v19)
        {
          *buf = 136447234;
          v73 = "nw_frame_array_get_frame_count";
          v74 = 2082;
          v75 = "frame_count";
          v76 = 2048;
          v77 = 1;
          v78 = 2048;
          v79 = v8;
          v80 = 2082;
          v81 = v16;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
        }

        free(v16);
      }

LABEL_28:
      if (v9)
      {
        free(v9);
      }

      v4 = 0xFFFFFFFFLL;
      v15 = __CFADD__(v5, v7);
      v5 = v5 + v7;
      if (!v15)
      {
        goto LABEL_6;
      }

LABEL_32:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446978;
      v73 = "nw_frame_array_get_frame_count";
      v74 = 2082;
      v75 = "byte_count";
      v76 = 2048;
      v77 = v7;
      v78 = 2048;
      v79 = v5;
      v22 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v70 = 0;
      if (__nwlog_fault(v22, &type, &v70))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          v24 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446978;
            v73 = "nw_frame_array_get_frame_count";
            v74 = 2082;
            v75 = "byte_count";
            v76 = 2048;
            v77 = v7;
            v78 = 2048;
            v79 = v5;
            v25 = v23;
            v26 = v24;
            v27 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_45:
            _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0x2Au);
          }
        }

        else if (v70 == 1)
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
              *buf = 136447234;
              v73 = "nw_frame_array_get_frame_count";
              v74 = 2082;
              v75 = "byte_count";
              v76 = 2048;
              v77 = v7;
              v78 = 2048;
              v79 = v5;
              v80 = 2082;
              v81 = v28;
              _os_log_impl(&dword_181A37000, v29, v30, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v28);
            goto LABEL_46;
          }

          if (v31)
          {
            *buf = 136446978;
            v73 = "nw_frame_array_get_frame_count";
            v74 = 2082;
            v75 = "byte_count";
            v76 = 2048;
            v77 = v7;
            v78 = 2048;
            v79 = v5;
            v25 = v29;
            v26 = v30;
            v27 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_45;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          v33 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446978;
            v73 = "nw_frame_array_get_frame_count";
            v74 = 2082;
            v75 = "byte_count";
            v76 = 2048;
            v77 = v7;
            v78 = 2048;
            v79 = v5;
            v25 = v32;
            v26 = v33;
            v27 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_45;
          }
        }
      }

LABEL_46:
      if (v22)
      {
        free(v22);
      }

      LODWORD(v5) = -1;
      goto LABEL_6;
    }

    goto LABEL_93;
  }

  if (v3)
  {
    v4 = 0;
    LODWORD(v34) = 0;
    while (1)
    {
      v35 = *(v3 + 52);
      v36 = v35 ? v35 - (*(v3 + 56) + *(v3 + 60)) : 0;
      v3 = *(v3 + 16);
      v4 = (v4 << 31 >> 31) + 1;
      if (v4 != v4 << 31 >> 31)
      {
        break;
      }

      v4 = v4;
      v15 = __CFADD__(v34, v36);
      v34 = v34 + v36;
      if (v15)
      {
        goto LABEL_77;
      }

LABEL_51:
      LODWORD(v5) = v34;
      if (!v3)
      {
        goto LABEL_94;
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v37 = v4;
    *buf = 136446978;
    v73 = "nw_frame_array_get_frame_count";
    v74 = 2082;
    v75 = "frame_count";
    v76 = 2048;
    v77 = 1;
    v78 = 2048;
    v79 = v4;
    v38 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v70 = 0;
    if (__nwlog_fault(v38, &type, &v70))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v39 = gLogObj;
        v40 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_73;
        }

        *buf = 136446978;
        v73 = "nw_frame_array_get_frame_count";
        v74 = 2082;
        v75 = "frame_count";
        v76 = 2048;
        v77 = 1;
        v78 = 2048;
        v79 = v37;
        v41 = v39;
        v42 = v40;
        v43 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_72:
        _os_log_impl(&dword_181A37000, v41, v42, v43, buf, 0x2Au);
        goto LABEL_73;
      }

      if (v70 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v48 = gLogObj;
        v49 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_73;
        }

        *buf = 136446978;
        v73 = "nw_frame_array_get_frame_count";
        v74 = 2082;
        v75 = "frame_count";
        v76 = 2048;
        v77 = 1;
        v78 = 2048;
        v79 = v37;
        v41 = v48;
        v42 = v49;
        v43 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_72;
      }

      v44 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v45 = gLogObj;
      v46 = type;
      v47 = os_log_type_enabled(gLogObj, type);
      if (!v44)
      {
        if (!v47)
        {
          goto LABEL_73;
        }

        *buf = 136446978;
        v73 = "nw_frame_array_get_frame_count";
        v74 = 2082;
        v75 = "frame_count";
        v76 = 2048;
        v77 = 1;
        v78 = 2048;
        v79 = v37;
        v41 = v45;
        v42 = v46;
        v43 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        goto LABEL_72;
      }

      if (v47)
      {
        *buf = 136447234;
        v73 = "nw_frame_array_get_frame_count";
        v74 = 2082;
        v75 = "frame_count";
        v76 = 2048;
        v77 = 1;
        v78 = 2048;
        v79 = v37;
        v80 = 2082;
        v81 = v44;
        _os_log_impl(&dword_181A37000, v45, v46, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
      }

      free(v44);
    }

LABEL_73:
    if (v38)
    {
      free(v38);
    }

    v4 = 0xFFFFFFFFLL;
    v15 = __CFADD__(v34, v36);
    v34 = v34 + v36;
    if (!v15)
    {
      goto LABEL_51;
    }

LABEL_77:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    v73 = "nw_frame_array_get_frame_count";
    v74 = 2082;
    v75 = "byte_count";
    v76 = 2048;
    v77 = v36;
    v78 = 2048;
    v79 = v34;
    v50 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v70 = 0;
    if (__nwlog_fault(v50, &type, &v70))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v51 = gLogObj;
        v52 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446978;
          v73 = "nw_frame_array_get_frame_count";
          v74 = 2082;
          v75 = "byte_count";
          v76 = 2048;
          v77 = v36;
          v78 = 2048;
          v79 = v34;
          v53 = v51;
          v54 = v52;
          v55 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_90:
          _os_log_impl(&dword_181A37000, v53, v54, v55, buf, 0x2Au);
        }
      }

      else if (v70 == 1)
      {
        v56 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v57 = gLogObj;
        v58 = type;
        v59 = os_log_type_enabled(gLogObj, type);
        if (v56)
        {
          if (v59)
          {
            *buf = 136447234;
            v73 = "nw_frame_array_get_frame_count";
            v74 = 2082;
            v75 = "byte_count";
            v76 = 2048;
            v77 = v36;
            v78 = 2048;
            v79 = v34;
            v80 = 2082;
            v81 = v56;
            _os_log_impl(&dword_181A37000, v57, v58, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v56);
          goto LABEL_91;
        }

        if (v59)
        {
          *buf = 136446978;
          v73 = "nw_frame_array_get_frame_count";
          v74 = 2082;
          v75 = "byte_count";
          v76 = 2048;
          v77 = v36;
          v78 = 2048;
          v79 = v34;
          v53 = v57;
          v54 = v58;
          v55 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_90;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v60 = gLogObj;
        v61 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446978;
          v73 = "nw_frame_array_get_frame_count";
          v74 = 2082;
          v75 = "byte_count";
          v76 = 2048;
          v77 = v36;
          v78 = 2048;
          v79 = v34;
          v53 = v60;
          v54 = v61;
          v55 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_90;
        }
      }
    }

LABEL_91:
    if (v50)
    {
      free(v50);
    }

    LODWORD(v34) = -1;
    goto LABEL_51;
  }

LABEL_93:
  LODWORD(v5) = 0;
  v4 = 0;
LABEL_94:
  if (a3)
  {
    *a3 = v5;
  }

  return v4;
}

void http2_transport_purge_frame_cache_if_necessary(nw_frame_array_s *a1, int *a2, unsigned int *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v84 = "http2_transport_purge_frame_cache_if_necessary";
    v71 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (!__nwlog_fault(v71, &type, &v81))
    {
      goto LABEL_135;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_135;
      }

      *buf = 136446210;
      v84 = "http2_transport_purge_frame_cache_if_necessary";
      v74 = "%{public}s called with null frame_cache";
      goto LABEL_134;
    }

    if (v81 != 1)
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_135;
      }

      *buf = 136446210;
      v84 = "http2_transport_purge_frame_cache_if_necessary";
      v74 = "%{public}s called with null frame_cache, backtrace limit exceeded";
      goto LABEL_134;
    }

    backtrace_string = __nw_create_backtrace_string();
    v72 = __nwlog_obj();
    v73 = type;
    v78 = os_log_type_enabled(v72, type);
    if (!backtrace_string)
    {
      if (!v78)
      {
        goto LABEL_135;
      }

      *buf = 136446210;
      v84 = "http2_transport_purge_frame_cache_if_necessary";
      v74 = "%{public}s called with null frame_cache, no backtrace";
      goto LABEL_134;
    }

    if (v78)
    {
      *buf = 136446466;
      v84 = "http2_transport_purge_frame_cache_if_necessary";
      v85 = 2082;
      *v86 = backtrace_string;
      _os_log_impl(&dword_181A37000, v72, v73, "%{public}s called with null frame_cache, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_135:
    if (!v71)
    {
      return;
    }

    goto LABEL_136;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v84 = "http2_transport_purge_frame_cache_if_necessary";
    v71 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (!__nwlog_fault(v71, &type, &v81))
    {
      goto LABEL_135;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_135;
      }

      *buf = 136446210;
      v84 = "http2_transport_purge_frame_cache_if_necessary";
      v74 = "%{public}s called with null frame_cache_count";
      goto LABEL_134;
    }

    if (v81 != 1)
    {
      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_135;
      }

      *buf = 136446210;
      v84 = "http2_transport_purge_frame_cache_if_necessary";
      v74 = "%{public}s called with null frame_cache_count, backtrace limit exceeded";
      goto LABEL_134;
    }

    v79 = __nw_create_backtrace_string();
    v72 = __nwlog_obj();
    v73 = type;
    v80 = os_log_type_enabled(v72, type);
    if (v79)
    {
      if (v80)
      {
        *buf = 136446466;
        v84 = "http2_transport_purge_frame_cache_if_necessary";
        v85 = 2082;
        *v86 = v79;
        _os_log_impl(&dword_181A37000, v72, v73, "%{public}s called with null frame_cache_count, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v79);
      if (!v71)
      {
        return;
      }

LABEL_136:
      free(v71);
      return;
    }

    if (v80)
    {
      *buf = 136446210;
      v84 = "http2_transport_purge_frame_cache_if_necessary";
      v74 = "%{public}s called with null frame_cache_count, no backtrace";
LABEL_134:
      _os_log_impl(&dword_181A37000, v72, v73, v74, buf, 0xCu);
      goto LABEL_135;
    }

    goto LABEL_135;
  }

  if (gLogDatapath == 1)
  {
    v75 = __nwlog_obj();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      v76 = *a2;
      *buf = 136446466;
      v84 = "http2_transport_purge_frame_cache_if_necessary";
      v85 = 1024;
      *v86 = v76;
      _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s total %u empty frames in cache (initial)", buf, 0x12u);
    }
  }

  if (*a2 >= 0x15)
  {
    while (1)
    {
      if (gLogDatapath == 1)
      {
        v22 = __nwlog_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = *a2;
          *buf = 136446722;
          v84 = "http2_transport_purge_frame_cache_if_necessary";
          v85 = 1024;
          *v86 = v23;
          *&v86[4] = 1024;
          *&v86[6] = 20;
          _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s too many frames in frame cache (%u > %d), pruning", buf, 0x18u);
        }
      }

      v5 = **(a1->tqh_last + 1);
      if (!v5)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v45 = *a2;
        *buf = 136446466;
        v84 = "http2_transport_purge_frame_cache_if_necessary";
        v85 = 1024;
        *v86 = v45;
        v46 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v81 = 0;
        if (!__nwlog_fault(v46, &type, &v81))
        {
          goto LABEL_101;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v47 = gLogObj;
          v48 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_101;
          }

          v49 = *a2;
          *buf = 136446466;
          v84 = "http2_transport_purge_frame_cache_if_necessary";
          v85 = 1024;
          *v86 = v49;
          v50 = "%{public}s no more frames in frame cache, we thought we had %u frames";
          goto LABEL_96;
        }

        if (v81 == 1)
        {
          v55 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v47 = gLogObj;
          v48 = type;
          v56 = os_log_type_enabled(gLogObj, type);
          if (v55)
          {
            if (v56)
            {
              v57 = *a2;
              *buf = 136446722;
              v84 = "http2_transport_purge_frame_cache_if_necessary";
              v85 = 1024;
              *v86 = v57;
              *&v86[4] = 2082;
              *&v86[6] = v55;
              v58 = "%{public}s no more frames in frame cache, we thought we had %u frames, dumping backtrace:%{public}s";
              v59 = v47;
              v60 = v48;
              v61 = 28;
              goto LABEL_88;
            }

            goto LABEL_89;
          }

          if (!v56)
          {
            goto LABEL_101;
          }

          v66 = *a2;
          *buf = 136446466;
          v84 = "http2_transport_purge_frame_cache_if_necessary";
          v85 = 1024;
          *v86 = v66;
          v50 = "%{public}s no more frames in frame cache, we thought we had %u frames, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v47 = gLogObj;
          v48 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_101;
          }

          v64 = *a2;
          *buf = 136446466;
          v84 = "http2_transport_purge_frame_cache_if_necessary";
          v85 = 1024;
          *v86 = v64;
          v50 = "%{public}s no more frames in frame cache, we thought we had %u frames, backtrace limit exceeded";
        }

LABEL_96:
        v67 = v47;
        v68 = v48;
        v69 = 18;
        goto LABEL_100;
      }

      v6 = *(v5 + 16);
      v7 = *(v5 + 24);
      p_tqh_last = (v6 + 24);
      if (!v6)
      {
        p_tqh_last = &a1->tqh_last;
      }

      *p_tqh_last = v7;
      *v7 = v6;
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      if (!*a2)
      {
        break;
      }

      --*a2;
LABEL_29:
      if ((*(v5 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(v5, *(v5 + 88)))
      {
        v21 = *(v5 + 112);
        if (v21)
        {
          free(v21);
        }
      }

      nw_frame_reset(v5, 0, 0, 0, 0);
      os_release(v5);
      if (*a2 <= 0x14)
      {
        goto LABEL_36;
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v84 = "http2_transport_purge_frame_cache_if_necessary";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (__nwlog_fault(v9, &type, &v81))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v84 = "http2_transport_purge_frame_cache_if_necessary";
        v12 = v10;
        v13 = v11;
        v14 = "%{public}s http2_transport count attempted to decrement below zero";
        goto LABEL_26;
      }

      if (v81 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v84 = "http2_transport_purge_frame_cache_if_necessary";
        v12 = v19;
        v13 = v20;
        v14 = "%{public}s http2_transport count attempted to decrement below zero, backtrace limit exceeded";
        goto LABEL_26;
      }

      v15 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      v18 = os_log_type_enabled(gLogObj, type);
      if (v15)
      {
        if (v18)
        {
          *buf = 136446466;
          v84 = "http2_transport_purge_frame_cache_if_necessary";
          v85 = 2082;
          *v86 = v15;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s http2_transport count attempted to decrement below zero, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v15);
        goto LABEL_27;
      }

      if (v18)
      {
        *buf = 136446210;
        v84 = "http2_transport_purge_frame_cache_if_necessary";
        v12 = v16;
        v13 = v17;
        v14 = "%{public}s http2_transport count attempted to decrement below zero, no backtrace";
LABEL_26:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }
    }

LABEL_27:
    if (v9)
    {
      free(v9);
    }

    goto LABEL_29;
  }

LABEL_36:
  *buf = 0;
  nw_frame_array_get_frame_count(a1, 0, buf);
  v24 = *buf;
  if (*buf < 0x1000001u)
  {
LABEL_37:
    if (gLogDatapath == 1)
    {
      v25 = __nwlog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = *a2;
        *buf = 136446466;
        v84 = "http2_transport_purge_frame_cache_if_necessary";
        v85 = 1024;
        *v86 = v26;
        _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s total %u empty frames in cache (final)", buf, 0x12u);
      }
    }

    return;
  }

  while (1)
  {
    if (gLogDatapath == 1)
    {
      v44 = __nwlog_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v84 = "http2_transport_purge_frame_cache_if_necessary";
        v85 = 1024;
        *v86 = v24;
        *&v86[4] = 1024;
        *&v86[6] = 0x1000000;
        _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s too many bytes in frame cache (%u > %d), pruning", buf, 0x18u);
      }
    }

    v27 = **(a1->tqh_last + 1);
    if (!v27)
    {
      break;
    }

    v28 = *(v27 + 16);
    v29 = *(v27 + 24);
    v30 = (v28 + 24);
    if (!v28)
    {
      v30 = &a1->tqh_last;
    }

    *v30 = v29;
    *v29 = v28;
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    if (*a2)
    {
      --*a2;
      if ((*(v27 + 204) & 0x100) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_66;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v84 = "http2_transport_purge_frame_cache_if_necessary";
    v31 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (__nwlog_fault(v31, &type, &v81))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        v33 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_63;
        }

        *buf = 136446210;
        v84 = "http2_transport_purge_frame_cache_if_necessary";
        v34 = v32;
        v35 = v33;
        v36 = "%{public}s http2_transport count attempted to decrement below zero";
LABEL_62:
        _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
        goto LABEL_63;
      }

      if (v81 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v41 = gLogObj;
        v42 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_63;
        }

        *buf = 136446210;
        v84 = "http2_transport_purge_frame_cache_if_necessary";
        v34 = v41;
        v35 = v42;
        v36 = "%{public}s http2_transport count attempted to decrement below zero, backtrace limit exceeded";
        goto LABEL_62;
      }

      v37 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v38 = gLogObj;
      v39 = type;
      v40 = os_log_type_enabled(gLogObj, type);
      if (!v37)
      {
        if (!v40)
        {
          goto LABEL_63;
        }

        *buf = 136446210;
        v84 = "http2_transport_purge_frame_cache_if_necessary";
        v34 = v38;
        v35 = v39;
        v36 = "%{public}s http2_transport count attempted to decrement below zero, no backtrace";
        goto LABEL_62;
      }

      if (v40)
      {
        *buf = 136446466;
        v84 = "http2_transport_purge_frame_cache_if_necessary";
        v85 = 2082;
        *v86 = v37;
        _os_log_impl(&dword_181A37000, v38, v39, "%{public}s http2_transport count attempted to decrement below zero, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v37);
    }

LABEL_63:
    if (v31)
    {
      free(v31);
    }

    if ((*(v27 + 204) & 0x100) == 0)
    {
LABEL_68:
      v43 = *(v27 + 112);
      if (v43)
      {
        free(v43);
      }

      goto LABEL_41;
    }

LABEL_66:
    if (!g_channel_check_validity || g_channel_check_validity(v27, *(v27 + 88)))
    {
      goto LABEL_68;
    }

LABEL_41:
    nw_frame_reset(v27, 0, 0, 0, 0);
    os_release(v27);
    *buf = 0;
    nw_frame_array_get_frame_count(a1, 0, buf);
    v24 = *buf;
    if (*buf < 0x1000001u)
    {
      goto LABEL_37;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v51 = *a2;
  *buf = 136446722;
  v84 = "http2_transport_purge_frame_cache_if_necessary";
  v85 = 1024;
  *v86 = v24;
  *&v86[4] = 1024;
  *&v86[6] = v51;
  v46 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v81 = 0;
  if (!__nwlog_fault(v46, &type, &v81))
  {
    goto LABEL_101;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v81 == 1)
    {
      v55 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v52 = gLogObj;
      v53 = type;
      v62 = os_log_type_enabled(gLogObj, type);
      if (v55)
      {
        if (v62)
        {
          v63 = *a2;
          *buf = 136446978;
          v84 = "http2_transport_purge_frame_cache_if_necessary";
          v85 = 1024;
          *v86 = v24;
          *&v86[4] = 1024;
          *&v86[6] = v63;
          *&v86[10] = 2082;
          *&v86[12] = v55;
          v58 = "%{public}s no more frames in frame cache, we thought we had %u bytes in %u frames, dumping backtrace:%{public}s";
          v59 = v52;
          v60 = v53;
          v61 = 34;
LABEL_88:
          _os_log_impl(&dword_181A37000, v59, v60, v58, buf, v61);
        }

LABEL_89:
        free(v55);
        goto LABEL_101;
      }

      if (!v62)
      {
        goto LABEL_101;
      }

      v70 = *a2;
      *buf = 136446722;
      v84 = "http2_transport_purge_frame_cache_if_necessary";
      v85 = 1024;
      *v86 = v24;
      *&v86[4] = 1024;
      *&v86[6] = v70;
      v50 = "%{public}s no more frames in frame cache, we thought we had %u bytes in %u frames, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v52 = gLogObj;
      v53 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_101;
      }

      v65 = *a2;
      *buf = 136446722;
      v84 = "http2_transport_purge_frame_cache_if_necessary";
      v85 = 1024;
      *v86 = v24;
      *&v86[4] = 1024;
      *&v86[6] = v65;
      v50 = "%{public}s no more frames in frame cache, we thought we had %u bytes in %u frames, backtrace limit exceeded";
    }

LABEL_99:
    v67 = v52;
    v68 = v53;
    v69 = 24;
LABEL_100:
    _os_log_impl(&dword_181A37000, v67, v68, v50, buf, v69);
    goto LABEL_101;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v52 = gLogObj;
  v53 = type;
  if (os_log_type_enabled(gLogObj, type))
  {
    v54 = *a2;
    *buf = 136446722;
    v84 = "http2_transport_purge_frame_cache_if_necessary";
    v85 = 1024;
    *v86 = v24;
    *&v86[4] = 1024;
    *&v86[6] = v54;
    v50 = "%{public}s no more frames in frame cache, we thought we had %u bytes in %u frames";
    goto LABEL_99;
  }

LABEL_101:
  if (v46)
  {
    free(v46);
  }

  *a2 = 0;
}

void nw_http2_transport_session_send(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v23 = __nwlog_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v28 = "nw_http2_transport_session_send";
      v29 = 2082;
      *v30 = a1 + 205;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  if (nghttp2_session_want_write())
  {
    if (gLogDatapath)
    {
      v2 = __nwlog_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v28 = "nw_http2_transport_session_send";
        v29 = 2082;
        *v30 = a1 + 205;
        v3 = "%{public}s %{public}s nghttp2 wants to write";
LABEL_45:
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, v3, buf, 0x16u);
      }
    }
  }

  else if (gLogDatapath)
  {
    v2 = __nwlog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v28 = "nw_http2_transport_session_send";
      v29 = 2082;
      *v30 = a1 + 205;
      v3 = "%{public}s %{public}s nghttp2 does not want to write";
      goto LABEL_45;
    }
  }

  if ((*(a1 + 204) & 0x20) == 0)
  {
    stream_remote_window_size = nghttp2_session_get_stream_remote_window_size();
    if (stream_remote_window_size >= nghttp2_session_get_remote_window_size())
    {
      remote_window_size = nghttp2_session_get_remote_window_size();
    }

    else
    {
      remote_window_size = nghttp2_session_get_stream_remote_window_size();
    }

    v7 = remote_window_size;
    if (gLogDatapath == 1)
    {
      v24 = __nwlog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v28 = "nw_http2_transport_session_send";
        v29 = 2082;
        *v30 = a1 + 205;
        *&v30[8] = 2048;
        *&v30[10] = v7;
        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s window size that we can send is %lld bytes", buf, 0x20u);
      }
    }

    *(a1 + 204) |= 0x20u;
    v8 = nghttp2_session_send();
    if (!v8)
    {
      goto LABEL_37;
    }

    v9 = v8;
    v10 = *(a1 + 204);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (v9 == -902 && (v10 & 8) != 0)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v28 = "nw_http2_transport_session_send";
        v29 = 2082;
        *v30 = a1 + 205;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s tunnel error, send failed, closing", buf, 0x16u);
      }

LABEL_36:
      nw_http2_transport_connection_close(a1);
LABEL_37:
      *(a1 + 204) &= ~0x20u;
      return;
    }

    v12 = nghttp2_strerror();
    *buf = 136446722;
    v28 = "nw_http2_transport_session_send";
    v29 = 1024;
    *v30 = v9;
    *&v30[4] = 2082;
    *&v30[6] = v12;
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v13, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_34;
        }

        v16 = nghttp2_strerror();
        *buf = 136446722;
        v28 = "nw_http2_transport_session_send";
        v29 = 1024;
        *v30 = v9;
        *&v30[4] = 2082;
        *&v30[6] = v16;
        v17 = "%{public}s nghttp2_session_send failed: %d (%{public}s) failed";
        goto LABEL_33;
      }

      if (v25 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_34;
        }

        v21 = nghttp2_strerror();
        *buf = 136446722;
        v28 = "nw_http2_transport_session_send";
        v29 = 1024;
        *v30 = v9;
        *&v30[4] = 2082;
        *&v30[6] = v21;
        v17 = "%{public}s nghttp2_session_send failed: %d (%{public}s) failed, backtrace limit exceeded";
        goto LABEL_33;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      v19 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v19)
        {
          v20 = nghttp2_strerror();
          *buf = 136446978;
          v28 = "nw_http2_transport_session_send";
          v29 = 1024;
          *v30 = v9;
          *&v30[4] = 2082;
          *&v30[6] = v20;
          *&v30[14] = 2082;
          *&v30[16] = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s nghttp2_session_send failed: %d (%{public}s) failed, dumping backtrace:%{public}s", buf, 0x26u);
        }

        free(backtrace_string);
        goto LABEL_34;
      }

      if (v19)
      {
        v22 = nghttp2_strerror();
        *buf = 136446722;
        v28 = "nw_http2_transport_session_send";
        v29 = 1024;
        *v30 = v9;
        *&v30[4] = 2082;
        *&v30[6] = v22;
        v17 = "%{public}s nghttp2_session_send failed: %d (%{public}s) failed, no backtrace";
LABEL_33:
        _os_log_impl(&dword_181A37000, v14, v15, v17, buf, 0x1Cu);
      }
    }

LABEL_34:
    if (v13)
    {
      free(v13);
    }

    goto LABEL_36;
  }

  if (gLogDatapath == 1)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v28 = "nw_http2_transport_session_send";
      v29 = 2082;
      *v30 = a1 + 205;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s already in session send, skipping", buf, 0x16u);
    }
  }
}

uint64_t nw_http2_transport_get_stream_node_from_id(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v3 = *(a1 + 120);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_http2_transport_get_stream_node_from_id";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v11, &type, &v17))
    {
      goto LABEL_25;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v21 = "nw_http2_transport_get_stream_node_from_id";
      v14 = "%{public}s called with null http2_transport->http2_transport_streams_id";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v21 = "nw_http2_transport_get_stream_node_from_id";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null http2_transport->http2_transport_streams_id, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (!v16)
      {
LABEL_25:
        if (v11)
        {
          free(v11);
        }

        return 0;
      }

      *buf = 136446210;
      v21 = "nw_http2_transport_get_stream_node_from_id";
      v14 = "%{public}s called with null http2_transport->http2_transport_streams_id, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v21 = "nw_http2_transport_get_stream_node_from_id";
      v14 = "%{public}s called with null http2_transport->http2_transport_streams_id, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_25;
  }

  if (a2 <= 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "nw_http2_transport_get_stream_node_from_id";
      v22 = 2082;
      v23 = (a1 + 205);
      v24 = 1024;
      v25 = a2;
      v6 = "%{public}s %{public}s requested stream id (%d) is not valid, returning NULL hash node";
      v7 = v10;
      v8 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }
  }

  else
  {
    result = nw_hash_table_get_node(v3, &v19, 4);
    if (result)
    {
      return result;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v21 = "nw_http2_transport_get_stream_node_from_id";
      v22 = 2082;
      v23 = (a1 + 205);
      v24 = 1024;
      v25 = v19;
      v6 = "%{public}s %{public}s requested stream id (%d) not found, returning NULL";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEBUG;
LABEL_8:
      _os_log_impl(&dword_181A37000, v7, v8, v6, buf, 0x1Cu);
    }
  }

  return 0;
}

uint64_t stream_key_hash(unsigned int *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 == 4)
  {
    return *a1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446466;
  v13 = "stream_key_hash";
  v14 = 1024;
  v15 = a2;
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v13 = "stream_key_hash";
        v14 = 1024;
        v15 = a2;
        v7 = "%{public}s stream_key_hash called with invalid key_length %u";
LABEL_16:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0x12u);
      }
    }

    else if (v10 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      v9 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446722;
          v13 = "stream_key_hash";
          v14 = 1024;
          v15 = a2;
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s stream_key_hash called with invalid key_length %u, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(backtrace_string);
        goto LABEL_17;
      }

      if (v9)
      {
        *buf = 136446466;
        v13 = "stream_key_hash";
        v14 = 1024;
        v15 = a2;
        v7 = "%{public}s stream_key_hash called with invalid key_length %u, no backtrace";
        goto LABEL_16;
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
        *buf = 136446466;
        v13 = "stream_key_hash";
        v14 = 1024;
        v15 = a2;
        v7 = "%{public}s stream_key_hash called with invalid key_length %u, backtrace limit exceeded";
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

BOOL http2_transport_candidate_frame_length_is_match(unsigned int a1, unsigned int a2)
{
  *&v17[5] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "http2_transport_candidate_frame_length_is_match";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v3, &type, &v12))
    {
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v15 = "http2_transport_candidate_frame_length_is_match";
      v6 = "%{public}s called with null length";
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v11 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v15 = "http2_transport_candidate_frame_length_is_match";
          v16 = 2082;
          *v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null length, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (!v11)
      {
LABEL_23:
        if (v3)
        {
          free(v3);
        }

        return 0;
      }

      *buf = 136446210;
      v15 = "http2_transport_candidate_frame_length_is_match";
      v6 = "%{public}s called with null length, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_23;
      }

      *buf = 136446210;
      v15 = "http2_transport_candidate_frame_length_is_match";
      v6 = "%{public}s called with null length, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_23;
  }

  if (*MEMORY[0x1E69E9AC8] + a2 >= a1)
  {
    return a1 >= a2;
  }

  if (gLogDatapath != 1)
  {
    return 0;
  }

  v9 = __nwlog_obj();
  result = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446722;
    v15 = "http2_transport_candidate_frame_length_is_match";
    v16 = 1024;
    *v17 = a1;
    v17[2] = 1024;
    *&v17[3] = a2;
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s candidate frame (%u bytes) is too much larger than requested (%u bytes), skipping", buf, 0x18u);
    return 0;
  }

  return result;
}

uint64_t ___ZL44nw_protocol_http2_transport_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = nw_frame_unclaimed_length(a2);
  if ((*(*(*(a1 + 32) + 8) + 24) + 1) <= *(a1 + 80))
  {
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 24);
    v7 = *(a1 + 84);
    v8 = v7 - v6;
    if (v7 > v6)
    {
      if (v8 >= v4)
      {
        *(v5 + 24) = v6 + v4;
        v15 = (*(a1 + 64) + 8);
        v16 = (a2 + 16);
        v17 = *(a2 + 16);
        v18 = *(a2 + 24);
        if (v17)
        {
          v15 = (v17 + 24);
        }

        *v15 = v18;
        *v18 = v17;
        *(a2 + 24) = 0;
        *v16 = 0;
        v19 = *(*(a1 + 48) + 8);
        v20 = *(v19 + 48);
        *(a2 + 24) = v20;
        *v20 = a2;
        *(v19 + 48) = v16;
        if (gLogDatapath == 1)
        {
          v55 = v4;
          v56 = __nwlog_obj();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            v57 = *(a1 + 56);
            *buf = 136446722;
            v66 = "nw_protocol_http2_transport_get_input_frames_block_invoke";
            if (v57)
            {
              v58 = (v57 + 205);
            }

            else
            {
              v58 = "";
            }

            v67 = 2082;
            v68 = v58;
            v69 = 1024;
            v70 = v55;
            _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s delivering entire incoming frame (%u bytes)", buf, 0x1Cu);
          }
        }

        v11 = a2;
        goto LABEL_47;
      }

      v9 = v4;
      if (gLogDatapath == 1)
      {
        v52 = __nwlog_obj();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          v53 = *(a1 + 56);
          *buf = 136446978;
          v66 = "nw_protocol_http2_transport_get_input_frames_block_invoke";
          if (v53)
          {
            v54 = (v53 + 205);
          }

          else
          {
            v54 = "";
          }

          v67 = 2082;
          v68 = v54;
          v69 = 1024;
          v70 = v8;
          v71 = 1024;
          v72 = v9;
          _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s remaining space %u less than frame length %u", buf, 0x22u);
        }
      }

      input_frame = http2_transport_create_input_frame(*(a1 + 56), *(a1 + 64), v8);
      if (input_frame)
      {
        v11 = input_frame;
        http2_transport_input_frame_context_reset(input_frame, *(a1 + 56), *(a1 + 64));
        nw_frame_inherit_metadata(a2, v11, 0);
        if (!*(v11 + 112) || (*(v11 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v11, *(v11 + 88)))
        {
          v14 = 0;
          v25 = 0;
          if (!v8)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v13 = *(v11 + 52);
          v12 = *(v11 + 56);
          if (v13)
          {
            v14 = v13 - (v12 + *(v11 + 60));
          }

          else
          {
            v14 = 0;
          }

          v25 = (*(v11 + 112) + v12);
          if (v14 == v8)
          {
LABEL_46:
            v40 = nw_frame_unclaimed_bytes(a2, 0);
            memcpy(v25, v40, v8);
            v41 = *(*(a1 + 48) + 8);
            *(v11 + 16) = 0;
            v42 = *(v41 + 48);
            *(v11 + 24) = v42;
            *v42 = v11;
            *(v41 + 48) = v11 + 16;
            nw_frame_claim(a2, v43, v8, 0);
            *(*(*(a1 + 40) + 8) + 24) += v8;
            if (gLogDatapath == 1)
            {
              v59 = __nwlog_obj();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
              {
                v60 = *(a1 + 56);
                if (v60)
                {
                  v61 = (v60 + 205);
                }

                else
                {
                  v61 = "";
                }

                v62 = nw_frame_unclaimed_length(a2);
                *buf = 136447234;
                v66 = "nw_protocol_http2_transport_get_input_frames_block_invoke";
                v67 = 2082;
                v68 = v61;
                v69 = 1024;
                v70 = v8;
                v71 = 1024;
                v72 = v9;
                v73 = 1024;
                LODWORD(v74) = v62;
                _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s delivering partial frame (%u bytes of %u, %u bytes remaining)", buf, 0x28u);
              }
            }

LABEL_47:
            ++*(*(*(a1 + 32) + 8) + 24);
            v44 = *(a1 + 72);
            *(v11 + 32) = 0;
            v45 = *(v44 + 8);
            *(v11 + 40) = v45;
            *v45 = v11;
            *(v44 + 8) = v11 + 32;
            return 1;
          }
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = *(a1 + 56);
        if (v26)
        {
          v27 = (v26 + 205);
        }

        else
        {
          v27 = "";
        }

        *buf = 136446978;
        v66 = "nw_protocol_http2_transport_get_input_frames_block_invoke";
        v67 = 2082;
        v68 = v27;
        v69 = 1024;
        v70 = v14;
        v71 = 1024;
        v72 = v8;
        v28 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v63 = 0;
        if (!__nwlog_fault(v28, &type, &v63))
        {
          goto LABEL_66;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v29 = __nwlog_obj();
          v30 = type;
          if (os_log_type_enabled(v29, type))
          {
            v31 = *(a1 + 56);
            if (v31)
            {
              v32 = (v31 + 205);
            }

            else
            {
              v32 = "";
            }

            *buf = 136446978;
            v66 = "nw_protocol_http2_transport_get_input_frames_block_invoke";
            v67 = 2082;
            v68 = v32;
            v69 = 1024;
            v70 = v14;
            v71 = 1024;
            v72 = v8;
            v33 = "%{public}s %{public}s got frame with wrong number of bytes (got %u != wanted %u) from http2_transport_create_input_frame";
LABEL_65:
            _os_log_impl(&dword_181A37000, v29, v30, v33, buf, 0x22u);
          }
        }

        else if (v63 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v29 = __nwlog_obj();
          v30 = type;
          v37 = os_log_type_enabled(v29, type);
          if (backtrace_string)
          {
            if (v37)
            {
              v38 = *(a1 + 56);
              if (v38)
              {
                v39 = (v38 + 205);
              }

              else
              {
                v39 = "";
              }

              *buf = 136447234;
              v66 = "nw_protocol_http2_transport_get_input_frames_block_invoke";
              v67 = 2082;
              v68 = v39;
              v69 = 1024;
              v70 = v14;
              v71 = 1024;
              v72 = v8;
              v73 = 2082;
              v74 = backtrace_string;
              _os_log_impl(&dword_181A37000, v29, v30, "%{public}s %{public}s got frame with wrong number of bytes (got %u != wanted %u) from http2_transport_create_input_frame, dumping backtrace:%{public}s", buf, 0x2Cu);
            }

            free(backtrace_string);
            goto LABEL_66;
          }

          if (v37)
          {
            v49 = *(a1 + 56);
            if (v49)
            {
              v50 = (v49 + 205);
            }

            else
            {
              v50 = "";
            }

            *buf = 136446978;
            v66 = "nw_protocol_http2_transport_get_input_frames_block_invoke";
            v67 = 2082;
            v68 = v50;
            v69 = 1024;
            v70 = v14;
            v71 = 1024;
            v72 = v8;
            v33 = "%{public}s %{public}s got frame with wrong number of bytes (got %u != wanted %u) from http2_transport_create_input_frame, no backtrace";
            goto LABEL_65;
          }
        }

        else
        {
          v29 = __nwlog_obj();
          v30 = type;
          if (os_log_type_enabled(v29, type))
          {
            v47 = *(a1 + 56);
            if (v47)
            {
              v48 = (v47 + 205);
            }

            else
            {
              v48 = "";
            }

            *buf = 136446978;
            v66 = "nw_protocol_http2_transport_get_input_frames_block_invoke";
            v67 = 2082;
            v68 = v48;
            v69 = 1024;
            v70 = v14;
            v71 = 1024;
            v72 = v8;
            v33 = "%{public}s %{public}s got frame with wrong number of bytes (got %u != wanted %u) from http2_transport_create_input_frame, backtrace limit exceeded";
            goto LABEL_65;
          }
        }

LABEL_66:
        if (v28)
        {
          free(v28);
        }

        if ((*(v11 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(v11, *(v11 + 88)))
        {
          v51 = *(v11 + 112);
          if (v51)
          {
            free(v51);
          }
        }

        nw_frame_reset(v11, 0, 0, 0, 0);
        os_release(v11);
        return 0;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v66 = "nw_protocol_http2_transport_get_input_frames_block_invoke";
      v21 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v63 = 0;
      if (__nwlog_fault(v21, &type, &v63))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = gLogObj;
          v23 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_58;
          }

          *buf = 136446210;
          v66 = "nw_protocol_http2_transport_get_input_frames_block_invoke";
          v24 = "%{public}s http2_transport_create_input_frame failed";
          goto LABEL_57;
        }

        if (v63 != 1)
        {
          v22 = __nwlog_obj();
          v23 = type;
          if (!os_log_type_enabled(v22, type))
          {
            goto LABEL_58;
          }

          *buf = 136446210;
          v66 = "nw_protocol_http2_transport_get_input_frames_block_invoke";
          v24 = "%{public}s http2_transport_create_input_frame failed, backtrace limit exceeded";
          goto LABEL_57;
        }

        v34 = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v23 = type;
        v35 = os_log_type_enabled(v22, type);
        if (v34)
        {
          if (v35)
          {
            *buf = 136446466;
            v66 = "nw_protocol_http2_transport_get_input_frames_block_invoke";
            v67 = 2082;
            v68 = v34;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s http2_transport_create_input_frame failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v34);
          goto LABEL_58;
        }

        if (v35)
        {
          *buf = 136446210;
          v66 = "nw_protocol_http2_transport_get_input_frames_block_invoke";
          v24 = "%{public}s http2_transport_create_input_frame failed, no backtrace";
LABEL_57:
          _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
        }
      }

LABEL_58:
      if (v21)
      {
        free(v21);
      }
    }
  }

  return 0;
}

void nw_protocol_http2_transport_frame_input_finalizer(nw_frame *a1, int a2, void *a3)
{
  v73 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v39 = a2;
    v40 = a3;
    v41 = __nwlog_obj();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);
    a3 = v40;
    a2 = v39;
    if (v42)
    {
      *buf = 136446210;
      v65 = "nw_protocol_http2_transport_frame_input_finalizer";
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      a3 = v40;
      a2 = v39;
    }
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v65 = "nw_protocol_http2_transport_frame_input_finalizer";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (__nwlog_fault(v4, &type, &v62))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v5 = __nwlog_obj();
        v6 = type;
        if (os_log_type_enabled(v5, type))
        {
          *buf = 136446210;
          v65 = "nw_protocol_http2_transport_frame_input_finalizer";
          v7 = "%{public}s called with null frame";
          goto LABEL_32;
        }
      }

      else if (v62 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v5 = __nwlog_obj();
        v6 = type;
        v44 = os_log_type_enabled(v5, type);
        if (backtrace_string)
        {
          if (v44)
          {
            *buf = 136446466;
            v65 = "nw_protocol_http2_transport_frame_input_finalizer";
            v66 = 2082;
            v67 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
        }

        else if (v44)
        {
          *buf = 136446210;
          v65 = "nw_protocol_http2_transport_frame_input_finalizer";
          v7 = "%{public}s called with null frame, no backtrace";
          goto LABEL_32;
        }
      }

      else
      {
        v5 = __nwlog_obj();
        v6 = type;
        if (os_log_type_enabled(v5, type))
        {
          *buf = 136446210;
          v65 = "nw_protocol_http2_transport_frame_input_finalizer";
          v7 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_32;
        }
      }
    }

    goto LABEL_34;
  }

  if (a3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v65 = "nw_protocol_http2_transport_frame_input_finalizer";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v4, &type, &v62))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v65 = "nw_protocol_http2_transport_frame_input_finalizer";
      v7 = "%{public}s http2_transport input frames should no longer have nonnull context";
    }

    else
    {
      if (v62 == 1)
      {
        v15 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type;
        v18 = os_log_type_enabled(gLogObj, type);
        if (v15)
        {
          if (v18)
          {
            *buf = 136446466;
            v65 = "nw_protocol_http2_transport_frame_input_finalizer";
            v66 = 2082;
            v67 = v15;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s http2_transport input frames should no longer have nonnull context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v15);
          if (v4)
          {
            goto LABEL_35;
          }

          return;
        }

        if (!v18)
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v65 = "nw_protocol_http2_transport_frame_input_finalizer";
        v7 = "%{public}s http2_transport input frames should no longer have nonnull context, no backtrace";
        v20 = v16;
        v21 = v17;
        goto LABEL_33;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v65 = "nw_protocol_http2_transport_frame_input_finalizer";
      v7 = "%{public}s http2_transport input frames should no longer have nonnull context, backtrace limit exceeded";
    }

LABEL_32:
    v20 = v5;
    v21 = v6;
LABEL_33:
    _os_log_impl(&dword_181A37000, v20, v21, v7, buf, 0xCu);
    goto LABEL_34;
  }

  if ((*(a1 + 102) & 4) == 0)
  {
    __nwlog_obj();
    *buf = 136446210;
    v65 = "nw_protocol_http2_transport_frame_input_finalizer";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v4, &type, &v62))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v65 = "nw_protocol_http2_transport_frame_input_finalizer";
        v7 = "%{public}s called with null input_frame_context";
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    if (v62 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v65 = "nw_protocol_http2_transport_frame_input_finalizer";
        v7 = "%{public}s called with null input_frame_context, backtrace limit exceeded";
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    v48 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v49 = os_log_type_enabled(v5, type);
    if (!v48)
    {
      if (v49)
      {
        *buf = 136446210;
        v65 = "nw_protocol_http2_transport_frame_input_finalizer";
        v7 = "%{public}s called with null input_frame_context, no backtrace";
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    if (!v49)
    {
      goto LABEL_122;
    }

    *buf = 136446466;
    v65 = "nw_protocol_http2_transport_frame_input_finalizer";
    v66 = 2082;
    v67 = v48;
    v50 = "%{public}s called with null input_frame_context, dumping backtrace:%{public}s";
LABEL_121:
    _os_log_impl(&dword_181A37000, v5, v6, v50, buf, 0x16u);
    goto LABEL_122;
  }

  v8 = *(a1 + 26);
  if (!v8)
  {
    __nwlog_obj();
    *buf = 136446210;
    v65 = "nw_protocol_http2_transport_frame_input_finalizer";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (!__nwlog_fault(v4, &type, &v62))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v65 = "nw_protocol_http2_transport_frame_input_finalizer";
        v7 = "%{public}s called with null http2_transport";
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    if (v62 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v65 = "nw_protocol_http2_transport_frame_input_finalizer";
        v7 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    v48 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v51 = os_log_type_enabled(v5, type);
    if (!v48)
    {
      if (v51)
      {
        *buf = 136446210;
        v65 = "nw_protocol_http2_transport_frame_input_finalizer";
        v7 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    if (!v51)
    {
      goto LABEL_122;
    }

    *buf = 136446466;
    v65 = "nw_protocol_http2_transport_frame_input_finalizer";
    v66 = 2082;
    v67 = v48;
    v50 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
    goto LABEL_121;
  }

  v9 = *(a1 + 27);
  if (v9)
  {
    if (gLogDatapath == 1)
    {
      v45 = a2;
      v46 = __nwlog_obj();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);
      a2 = v45;
      if (v47)
      {
        *buf = 136446466;
        v65 = "nw_protocol_http2_transport_frame_input_finalizer";
        v66 = 2082;
        v67 = v8 + 205;
        _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s finalizing input frame", buf, 0x16u);
        a2 = v45;
      }
    }

    v10 = (v8 + 152);
    v11 = *(a1 + 2);
    v12 = *(a1 + 3);
    if (v11)
    {
      v10 = (v11 + 24);
    }

    *v10 = v12;
    *v12 = v11;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    if (!a2)
    {
      if (gLogDatapath == 1)
      {
        v52 = __nwlog_obj();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v65 = "nw_protocol_http2_transport_frame_input_finalizer";
          v66 = 2082;
          v67 = v8 + 205;
          _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s disposing of input frame, finalizer called with success == false", buf, 0x16u);
        }
      }

      if ((*(a1 + 102) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(a1, *(a1 + 11)))
      {
        v19 = *(a1 + 14);
        if (v19)
        {
          free(v19);
        }
      }

      nw_frame_reset(a1, 0, 0, 0, 0);
      os_release(a1);
      return;
    }

    v13 = *(a1 + 13);
    if (v13)
    {
      v14 = v13 - (*(a1 + 14) + *(a1 + 15));
    }

    else
    {
      v14 = 0;
    }

    if (!nghttp2_session_consume_stream())
    {
LABEL_56:
      if (gLogDatapath == 1)
      {
        v53 = __nwlog_obj();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v54 = *(v9 + 32);
          *buf = 136446978;
          v65 = "nw_protocol_http2_transport_frame_input_finalizer";
          v66 = 2082;
          v67 = v8 + 205;
          v68 = 1024;
          *v69 = v14;
          *&v69[4] = 1024;
          *&v69[6] = v54;
          _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s consumed %u bytes on stream %d", buf, 0x22u);
        }
      }

      if (gLogDatapath == 1)
      {
        v55 = __nwlog_obj();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v65 = "http2_transport_cache_input_frame";
          v66 = 2082;
          v67 = v8 + 205;
          v68 = 2048;
          *v69 = a1;
          _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s caching input frame %p", buf, 0x20u);
        }
      }

      if (http2_transport_input_frame_context_reset(a1, 0, 0))
      {
        if ((*(a1 + 102) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(a1, *(a1 + 11)))
        {
          v33 = 0;
          v34 = 0;
        }

        else
        {
          v33 = *(a1 + 12);
          v34 = *(a1 + 14);
        }

        if (gLogDatapath == 1)
        {
          v57 = v34;
          v58 = __nwlog_obj();
          v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG);
          v34 = v57;
          if (v59)
          {
            *buf = 136447234;
            v65 = "http2_transport_cache_input_frame";
            v66 = 2082;
            v67 = v8 + 205;
            v68 = 2048;
            *v69 = a1;
            *&v69[8] = 2048;
            v70 = v57;
            v71 = 1024;
            v72 = v33;
            _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s resetting input frame %p to buffer %p, length %u", buf, 0x30u);
            v34 = v57;
          }
        }

        nw_frame_reset(a1, v34, v33, nw_protocol_http2_transport_frame_input_finalizer, 0);
        nw_frame_array_prepend((v8 + 160), 0, a1);
        v36 = (v8 + 192);
        ++*(v8 + 192);
        if (gLogDatapath == 1)
        {
          v60 = __nwlog_obj();
          v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG);
          v36 = (v8 + 192);
          if (v61)
          {
            *buf = 136446722;
            v65 = "http2_transport_cache_input_frame";
            v66 = 2082;
            v67 = v8 + 205;
            v68 = 1024;
            *v69 = v33;
            _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s reset input frame of length %u, eligible for reuse", buf, 0x1Cu);
            v36 = (v8 + 192);
          }
        }

        http2_transport_purge_frame_cache_if_necessary((v8 + 160), v36, v35);
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v37 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v65 = "http2_transport_cache_input_frame";
          v66 = 2082;
          v67 = v8 + 205;
          v68 = 2048;
          *v69 = a1;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s %{public}s ERROR: unable to clear metadata for input frame %p, freeing", buf, 0x20u);
        }

        if ((*(a1 + 102) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(a1, *(a1 + 11)))
        {
          v38 = *(a1 + 14);
          if (v38)
          {
            free(v38);
          }
        }

        nw_frame_reset(a1, 0, 0, 0, 0);
        os_release(a1);
      }

      nw_http2_transport_session_send(v8);
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = nghttp2_strerror();
    *buf = 136446466;
    v65 = "nw_protocol_http2_transport_frame_input_finalizer";
    v66 = 2082;
    v67 = v22;
    v23 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v62 = 0;
    if (__nwlog_fault(v23, &type, &v62))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_54;
        }

        v26 = nghttp2_strerror();
        *buf = 136446466;
        v65 = "nw_protocol_http2_transport_frame_input_finalizer";
        v66 = 2082;
        v67 = v26;
        v27 = "%{public}s nghttp2_session_consume_stream: %{public}s failed";
        goto LABEL_53;
      }

      if (v62 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_54;
        }

        v31 = nghttp2_strerror();
        *buf = 136446466;
        v65 = "nw_protocol_http2_transport_frame_input_finalizer";
        v66 = 2082;
        v67 = v31;
        v27 = "%{public}s nghttp2_session_consume_stream: %{public}s failed, backtrace limit exceeded";
        goto LABEL_53;
      }

      v28 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      v29 = os_log_type_enabled(gLogObj, type);
      if (v28)
      {
        if (v29)
        {
          v30 = nghttp2_strerror();
          *buf = 136446722;
          v65 = "nw_protocol_http2_transport_frame_input_finalizer";
          v66 = 2082;
          v67 = v30;
          v68 = 2082;
          *v69 = v28;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s nghttp2_session_consume_stream: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v28);
        goto LABEL_54;
      }

      if (v29)
      {
        v32 = nghttp2_strerror();
        *buf = 136446466;
        v65 = "nw_protocol_http2_transport_frame_input_finalizer";
        v66 = 2082;
        v67 = v32;
        v27 = "%{public}s nghttp2_session_consume_stream: %{public}s failed, no backtrace";
LABEL_53:
        _os_log_impl(&dword_181A37000, v24, v25, v27, buf, 0x16u);
      }
    }

LABEL_54:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_56;
  }

  __nwlog_obj();
  *buf = 136446210;
  v65 = "nw_protocol_http2_transport_frame_input_finalizer";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v62 = 0;
  if (__nwlog_fault(v4, &type, &v62))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v65 = "nw_protocol_http2_transport_frame_input_finalizer";
        v7 = "%{public}s called with null stream";
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    if (v62 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v65 = "nw_protocol_http2_transport_frame_input_finalizer";
        v7 = "%{public}s called with null stream, backtrace limit exceeded";
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    v48 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v56 = os_log_type_enabled(v5, type);
    if (!v48)
    {
      if (v56)
      {
        *buf = 136446210;
        v65 = "nw_protocol_http2_transport_frame_input_finalizer";
        v7 = "%{public}s called with null stream, no backtrace";
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    if (v56)
    {
      *buf = 136446466;
      v65 = "nw_protocol_http2_transport_frame_input_finalizer";
      v66 = 2082;
      v67 = v48;
      v50 = "%{public}s called with null stream, dumping backtrace:%{public}s";
      goto LABEL_121;
    }

LABEL_122:
    free(v48);
    if (v4)
    {
      goto LABEL_35;
    }

    return;
  }

LABEL_34:
  if (v4)
  {
LABEL_35:
    free(v4);
  }
}

uint64_t sub_181BE0664(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_182AD3AE8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_182AD44E8();
      MEMORY[0x1865DB070](v9);
      result = sub_182AD4558();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_181BE07F8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7Network8Endpoint_associations;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = *(v5 + 16);
  v7 = OBJC_IVAR____TtC7Network18__NWPathParameters_parameters;

  if (!v6)
  {
  }

  v9 = 0;
  v10 = (a1 + v7);
  v11 = 32;
  while (v9 < *(v5 + 16))
  {
    v12 = (*(v5 + v11) + OBJC_IVAR____TtC7Network18__NWPathParameters_parameters);
    v14 = v12[1];
    v13 = v12[2];
    v59[0] = *v12;
    v59[1] = v14;
    v59[2] = v13;
    v15 = v12[6];
    v17 = v12[3];
    v16 = v12[4];
    v59[5] = v12[5];
    v59[6] = v15;
    v59[3] = v17;
    v59[4] = v16;
    v18 = v12[10];
    v20 = v12[7];
    v19 = v12[8];
    v59[9] = v12[9];
    v59[10] = v18;
    v59[7] = v20;
    v59[8] = v19;
    v55 = v12[7];
    v56 = v12[8];
    v57 = v12[9];
    v58 = v12[10];
    v51 = v12[3];
    v52 = v12[4];
    v53 = v12[5];
    v54 = v12[6];
    v21 = v10[10];
    v48 = *v12;
    v49 = v12[1];
    v50 = v12[2];
    v22 = v10[1];
    v60[0] = *v10;
    v60[1] = v22;
    v23 = v10[3];
    v24 = v10[5];
    v63 = v10[4];
    v64 = v24;
    v25 = v10[3];
    v26 = *v10;
    v27 = v10[1];
    v61 = v10[2];
    v62 = v25;
    v28 = v10[9];
    v69 = v10[10];
    v29 = v10[7];
    v30 = v10[9];
    v67 = v10[8];
    v68 = v30;
    v31 = v10[5];
    v32 = v10[7];
    v65 = v10[6];
    v66 = v32;
    v45 = v67;
    v46 = v28;
    v47 = v21;
    v41 = v63;
    v42 = v31;
    v43 = v65;
    v44 = v29;
    v37 = v26;
    v38 = v27;
    v39 = v61;
    v40 = v23;
    v36 = 0;
    sub_181A41E20(v59, v35);
    sub_181A41E20(v60, v35);
    v33 = sub_181B02888(&v37, &v36);
    v70[8] = v45;
    v70[9] = v46;
    v70[10] = v47;
    v70[4] = v41;
    v70[5] = v42;
    v70[6] = v43;
    v70[7] = v44;
    v70[0] = v37;
    v70[1] = v38;
    v70[2] = v39;
    v70[3] = v40;
    sub_181A41E7C(v70);
    v71[8] = v56;
    v71[9] = v57;
    v71[10] = v58;
    v71[4] = v52;
    v71[5] = v53;
    v71[6] = v54;
    v71[7] = v55;
    v71[0] = v48;
    v71[1] = v49;
    v71[2] = v50;
    v71[3] = v51;
    result = sub_181A41E7C(v71);
    if (v33)
    {

      swift_beginAccess();
      v34 = sub_181BE0A9C(v9);
      swift_endAccess();

      return swift_unknownObjectRelease();
    }

    ++v9;
    v11 += 16;
    if (v6 == v9)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181BE0A9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_181BE0B28(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_181BE0D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  _Block_object_dispose((v11 - 80), 8);
  a11.super_class = NWConcrete_nw_association;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void nw_context_endpoint_table_release(os_unfair_lock_s *a1, uint64_t a2)
{
  if (a1)
  {
    _nw_hash_table_release(a1, a2);
  }
}

uint64_t ___ZL34http2_transport_create_input_frameP27nw_protocol_http2_transportP22http2_transport_streamj_block_invoke(uint64_t a1, uint64_t a2)
{
  v117 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((*(a2 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(a2, *(a2 + 88)))
    {
      v4 = 0;
      v5 = 0;
    }

    else
    {
      v4 = *(a2 + 48);
      v5 = *(a2 + 112);
    }

    if (gLogDatapath == 1)
    {
      v94 = __nwlog_obj();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
      {
        v95 = *(a1 + 40);
        v96 = v95 == 0;
        *buf = 136446978;
        v97 = (v95 + 205);
        v111 = "http2_transport_create_input_frame_block_invoke";
        if (v96)
        {
          v97 = "";
        }

        v112 = 2082;
        v113 = v97;
        v114 = 2048;
        *v115 = v5;
        *&v115[8] = 1024;
        v116 = v4;
        _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s existing frame found, buffer %p, length %u", buf, 0x26u);
      }
    }

    v6 = *(a2 + 52);
    if (v6)
    {
      v6 -= *(a2 + 56) + *(a2 + 60);
    }

    if (v6 == v4)
    {
      if (v5 && v4)
      {
        if (http2_transport_candidate_frame_length_is_match(v4, *(a1 + 56)))
        {
          v8 = (*(a1 + 40) + 168);
          v9 = *(a2 + 16);
          v10 = *(a2 + 24);
          if (v9)
          {
            v8 = (v9 + 24);
          }

          *v8 = v10;
          *v10 = v9;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          v11 = *(a1 + 40);
          v12 = *(v11 + 192);
          if (v12)
          {
            *(v11 + 192) = v12 - 1;
LABEL_172:
            if (gLogDatapath == 1)
            {
              v98 = __nwlog_obj();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
              {
                v99 = *(a1 + 40);
                v100 = "";
                v101 = (v99 + 205);
                v96 = v99 == 0;
                v102 = *(a1 + 56);
                if (!v96)
                {
                  v100 = v101;
                }

                *buf = 136446978;
                v111 = "http2_transport_create_input_frame_block_invoke";
                v112 = 2082;
                v113 = v100;
                v114 = 1024;
                *v115 = v4;
                *&v115[4] = 1024;
                *&v115[6] = v102;
                _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s reusing input frame of length %u, adjusting to %u", buf, 0x22u);
              }
            }

            v89 = *(a1 + 56);
            v90 = v4 - v89;
            if (v4 == v89)
            {
              if (gLogDatapath)
              {
                v91 = __nwlog_obj();
                if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
                {
                  v92 = *(a1 + 40);
                  if (v92)
                  {
                    v93 = (v92 + 205);
                  }

                  else
                  {
                    v93 = "";
                  }

                  *buf = 136446466;
                  v111 = "http2_transport_create_input_frame_block_invoke";
                  v112 = 2082;
                  v113 = v93;
                  _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s frame was exact match, not modifying", buf, 0x16u);
                }
              }
            }

            else
            {
              if (gLogDatapath)
              {
                v103 = v4 - v89;
                v104 = __nwlog_obj();
                v105 = os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG);
                v90 = v103;
                if (v105)
                {
                  v106 = *(a1 + 40);
                  *buf = 136446722;
                  v111 = "http2_transport_create_input_frame_block_invoke";
                  if (v106)
                  {
                    v107 = (v106 + 205);
                  }

                  else
                  {
                    v107 = "";
                  }

                  v112 = 2082;
                  v113 = v107;
                  v114 = 1024;
                  *v115 = v103;
                  _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s claiming %u bytes off end of frame", buf, 0x1Cu);
                  v90 = v103;
                }
              }

              nw_frame_claim(a2, v7, 0, v90);
            }

            http2_transport_input_frame_context_reset(a2, *(a1 + 40), *(a1 + 48));
            result = 0;
            *(*(*(a1 + 32) + 8) + 24) = a2;
            return result;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          v111 = "http2_transport_create_input_frame_block_invoke";
          v58 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v108 = 0;
          if (__nwlog_fault(v58, &type, &v108))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v59 = __nwlog_obj();
              v60 = type;
              if (!os_log_type_enabled(v59, type))
              {
                goto LABEL_170;
              }

              *buf = 136446210;
              v111 = "http2_transport_create_input_frame_block_invoke";
              v61 = "%{public}s http2_transport count attempted to decrement below zero";
              goto LABEL_169;
            }

            if (v108 != 1)
            {
              v59 = __nwlog_obj();
              v60 = type;
              if (!os_log_type_enabled(v59, type))
              {
                goto LABEL_170;
              }

              *buf = 136446210;
              v111 = "http2_transport_create_input_frame_block_invoke";
              v61 = "%{public}s http2_transport count attempted to decrement below zero, backtrace limit exceeded";
              goto LABEL_169;
            }

            backtrace_string = __nw_create_backtrace_string();
            v59 = __nwlog_obj();
            v60 = type;
            v85 = os_log_type_enabled(v59, type);
            if (backtrace_string)
            {
              if (v85)
              {
                *buf = 136446466;
                v111 = "http2_transport_create_input_frame_block_invoke";
                v112 = 2082;
                v113 = backtrace_string;
                _os_log_impl(&dword_181A37000, v59, v60, "%{public}s http2_transport count attempted to decrement below zero, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_170;
            }

            if (v85)
            {
              *buf = 136446210;
              v111 = "http2_transport_create_input_frame_block_invoke";
              v61 = "%{public}s http2_transport count attempted to decrement below zero, no backtrace";
LABEL_169:
              _os_log_impl(&dword_181A37000, v59, v60, v61, buf, 0xCu);
            }
          }

LABEL_170:
          if (v58)
          {
            free(v58);
          }

          goto LABEL_172;
        }

        return 1;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = *(a1 + 40);
      if (v33)
      {
        v34 = (v33 + 205);
      }

      else
      {
        v34 = "";
      }

      *buf = 136446466;
      v111 = "http2_transport_create_input_frame_block_invoke";
      v112 = 2082;
      v113 = v34;
      v35 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v108 = 0;
      if (__nwlog_fault(v35, &type, &v108))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v36 = gLogObj;
          v37 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_127;
          }

          v38 = *(a1 + 40);
          if (v38)
          {
            v39 = (v38 + 205);
          }

          else
          {
            v39 = "";
          }

          *buf = 136446466;
          v111 = "http2_transport_create_input_frame_block_invoke";
          v112 = 2082;
          v113 = v39;
          v40 = "%{public}s %{public}s destroying frame with NULL buffer";
LABEL_126:
          _os_log_impl(&dword_181A37000, v36, v37, v40, buf, 0x16u);
          goto LABEL_127;
        }

        if (v108 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v36 = gLogObj;
          v37 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_127;
          }

          v53 = *(a1 + 40);
          if (v53)
          {
            v54 = (v53 + 205);
          }

          else
          {
            v54 = "";
          }

          *buf = 136446466;
          v111 = "http2_transport_create_input_frame_block_invoke";
          v112 = 2082;
          v113 = v54;
          v40 = "%{public}s %{public}s destroying frame with NULL buffer, backtrace limit exceeded";
          goto LABEL_126;
        }

        v47 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type;
        v48 = os_log_type_enabled(gLogObj, type);
        if (!v47)
        {
          if (!v48)
          {
            goto LABEL_127;
          }

          v77 = *(a1 + 40);
          if (v77)
          {
            v78 = (v77 + 205);
          }

          else
          {
            v78 = "";
          }

          *buf = 136446466;
          v111 = "http2_transport_create_input_frame_block_invoke";
          v112 = 2082;
          v113 = v78;
          v40 = "%{public}s %{public}s destroying frame with NULL buffer, no backtrace";
          goto LABEL_126;
        }

        if (v48)
        {
          v49 = *(a1 + 40);
          if (v49)
          {
            v50 = (v49 + 205);
          }

          else
          {
            v50 = "";
          }

          *buf = 136446722;
          v111 = "http2_transport_create_input_frame_block_invoke";
          v112 = 2082;
          v113 = v50;
          v114 = 2082;
          *v115 = v47;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s %{public}s destroying frame with NULL buffer, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v47);
      }

LABEL_127:
      if (v35)
      {
        free(v35);
      }

      v79 = (*(a1 + 40) + 168);
      v80 = *(a2 + 16);
      v81 = *(a2 + 24);
      if (v80)
      {
        v79 = (v80 + 24);
      }

      *v79 = v81;
      *v81 = v80;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v67 = *(a1 + 40);
      v68 = *(v67 + 192);
      if (v68)
      {
LABEL_132:
        *(v67 + 192) = v68 - 1;
LABEL_160:
        if ((*(a2 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(a2, *(a2 + 88)))
        {
          v88 = *(a2 + 112);
          if (v88)
          {
            free(v88);
          }
        }

        nw_frame_reset(a2, 0, 0, 0, 0);
        os_release(a2);
        return 1;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v111 = "http2_transport_create_input_frame_block_invoke";
      v69 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v108 = 0;
      if (!__nwlog_fault(v69, &type, &v108))
      {
        goto LABEL_158;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v70 = gLogObj;
        v71 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_158;
        }

        *buf = 136446210;
        v111 = "http2_transport_create_input_frame_block_invoke";
        v72 = "%{public}s http2_transport count attempted to decrement below zero";
        goto LABEL_156;
      }

      if (v108 != 1)
      {
        v70 = __nwlog_obj();
        v71 = type;
        if (!os_log_type_enabled(v70, type))
        {
          goto LABEL_158;
        }

        *buf = 136446210;
        v111 = "http2_transport_create_input_frame_block_invoke";
        v72 = "%{public}s http2_transport count attempted to decrement below zero, backtrace limit exceeded";
        goto LABEL_156;
      }

      v82 = __nw_create_backtrace_string();
      v70 = __nwlog_obj();
      v71 = type;
      v83 = os_log_type_enabled(v70, type);
      if (v82)
      {
        if (v83)
        {
          *buf = 136446466;
          v111 = "http2_transport_create_input_frame_block_invoke";
          v112 = 2082;
          v113 = v82;
          _os_log_impl(&dword_181A37000, v70, v71, "%{public}s http2_transport count attempted to decrement below zero, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v82);
        if (!v69)
        {
          goto LABEL_160;
        }

        goto LABEL_159;
      }

      if (v83)
      {
        *buf = 136446210;
        v111 = "http2_transport_create_input_frame_block_invoke";
        v72 = "%{public}s http2_transport count attempted to decrement below zero, no backtrace";
LABEL_156:
        v86 = v70;
        v87 = v71;
LABEL_157:
        _os_log_impl(&dword_181A37000, v86, v87, v72, buf, 0xCu);
        goto LABEL_158;
      }

      goto LABEL_158;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = *(a1 + 40);
    if (v21)
    {
      v22 = (v21 + 205);
    }

    else
    {
      v22 = "";
    }

    *buf = 136446466;
    v111 = "http2_transport_create_input_frame_block_invoke";
    v112 = 2082;
    v113 = v22;
    v23 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v108 = 0;
    if (__nwlog_fault(v23, &type, &v108))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v26 = *(a1 + 40);
          if (v26)
          {
            v27 = (v26 + 205);
          }

          else
          {
            v27 = "";
          }

          *buf = 136446466;
          v111 = "http2_transport_create_input_frame_block_invoke";
          v112 = 2082;
          v113 = v27;
          v28 = "%{public}s %{public}s candidate frame is not fully unclaimed, destroying";
LABEL_104:
          _os_log_impl(&dword_181A37000, v24, v25, v28, buf, 0x16u);
        }
      }

      else if (v108 == 1)
      {
        v41 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        v42 = os_log_type_enabled(gLogObj, type);
        if (v41)
        {
          if (v42)
          {
            v43 = *(a1 + 40);
            if (v43)
            {
              v44 = (v43 + 205);
            }

            else
            {
              v44 = "";
            }

            *buf = 136446722;
            v111 = "http2_transport_create_input_frame_block_invoke";
            v112 = 2082;
            v113 = v44;
            v114 = 2082;
            *v115 = v41;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s %{public}s candidate frame is not fully unclaimed, destroying, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v41);
          goto LABEL_105;
        }

        if (v42)
        {
          v62 = *(a1 + 40);
          if (v62)
          {
            v63 = (v62 + 205);
          }

          else
          {
            v63 = "";
          }

          *buf = 136446466;
          v111 = "http2_transport_create_input_frame_block_invoke";
          v112 = 2082;
          v113 = v63;
          v28 = "%{public}s %{public}s candidate frame is not fully unclaimed, destroying, no backtrace";
          goto LABEL_104;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v51 = *(a1 + 40);
          if (v51)
          {
            v52 = (v51 + 205);
          }

          else
          {
            v52 = "";
          }

          *buf = 136446466;
          v111 = "http2_transport_create_input_frame_block_invoke";
          v112 = 2082;
          v113 = v52;
          v28 = "%{public}s %{public}s candidate frame is not fully unclaimed, destroying, backtrace limit exceeded";
          goto LABEL_104;
        }
      }
    }

LABEL_105:
    if (v23)
    {
      free(v23);
    }

    v64 = (*(a1 + 40) + 168);
    v65 = *(a2 + 16);
    v66 = *(a2 + 24);
    if (v65)
    {
      v64 = (v65 + 24);
    }

    *v64 = v66;
    *v66 = v65;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v67 = *(a1 + 40);
    v68 = *(v67 + 192);
    if (v68)
    {
      goto LABEL_132;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v111 = "http2_transport_create_input_frame_block_invoke";
    v69 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v108 = 0;
    if (!__nwlog_fault(v69, &type, &v108))
    {
      goto LABEL_158;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v70 = gLogObj;
      v71 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_158;
      }

      *buf = 136446210;
      v111 = "http2_transport_create_input_frame_block_invoke";
      v72 = "%{public}s http2_transport count attempted to decrement below zero";
      goto LABEL_156;
    }

    if (v108 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v70 = gLogObj;
      v71 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_158;
      }

      *buf = 136446210;
      v111 = "http2_transport_create_input_frame_block_invoke";
      v72 = "%{public}s http2_transport count attempted to decrement below zero, backtrace limit exceeded";
      goto LABEL_156;
    }

    v73 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v74 = gLogObj;
    v75 = type;
    v76 = os_log_type_enabled(gLogObj, type);
    if (!v73)
    {
      if (!v76)
      {
        goto LABEL_158;
      }

      *buf = 136446210;
      v111 = "http2_transport_create_input_frame_block_invoke";
      v72 = "%{public}s http2_transport count attempted to decrement below zero, no backtrace";
      v86 = v74;
      v87 = v75;
      goto LABEL_157;
    }

    if (v76)
    {
      *buf = 136446466;
      v111 = "http2_transport_create_input_frame_block_invoke";
      v112 = 2082;
      v113 = v73;
      _os_log_impl(&dword_181A37000, v74, v75, "%{public}s http2_transport count attempted to decrement below zero, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v73);
LABEL_158:
    if (!v69)
    {
      goto LABEL_160;
    }

LABEL_159:
    free(v69);
    goto LABEL_160;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = (v13 + 205);
  }

  else
  {
    v14 = "";
  }

  *buf = 136446466;
  v111 = "http2_transport_create_input_frame_block_invoke";
  v112 = 2082;
  v113 = v14;
  v15 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v108 = 0;
  if (__nwlog_fault(v15, &type, &v108))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v18 = *(a1 + 40);
        if (v18)
        {
          v19 = (v18 + 205);
        }

        else
        {
          v19 = "";
        }

        *buf = 136446466;
        v111 = "http2_transport_create_input_frame_block_invoke";
        v112 = 2082;
        v113 = v19;
        v20 = "%{public}s %{public}s foreach gave null candidate_frame";
LABEL_91:
        _os_log_impl(&dword_181A37000, v16, v17, v20, buf, 0x16u);
      }
    }

    else if (v108 == 1)
    {
      v29 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      v30 = os_log_type_enabled(gLogObj, type);
      if (v29)
      {
        if (v30)
        {
          v31 = *(a1 + 40);
          if (v31)
          {
            v32 = (v31 + 205);
          }

          else
          {
            v32 = "";
          }

          *buf = 136446722;
          v111 = "http2_transport_create_input_frame_block_invoke";
          v112 = 2082;
          v113 = v32;
          v114 = 2082;
          *v115 = v29;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s %{public}s foreach gave null candidate_frame, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v29);
        goto LABEL_92;
      }

      if (v30)
      {
        v55 = *(a1 + 40);
        if (v55)
        {
          v56 = (v55 + 205);
        }

        else
        {
          v56 = "";
        }

        *buf = 136446466;
        v111 = "http2_transport_create_input_frame_block_invoke";
        v112 = 2082;
        v113 = v56;
        v20 = "%{public}s %{public}s foreach gave null candidate_frame, no backtrace";
        goto LABEL_91;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v45 = *(a1 + 40);
        if (v45)
        {
          v46 = (v45 + 205);
        }

        else
        {
          v46 = "";
        }

        *buf = 136446466;
        v111 = "http2_transport_create_input_frame_block_invoke";
        v112 = 2082;
        v113 = v46;
        v20 = "%{public}s %{public}s foreach gave null candidate_frame, backtrace limit exceeded";
        goto LABEL_91;
      }
    }
  }

LABEL_92:
  if (v15)
  {
    free(v15);
  }

  return 0;
}

void nw_frame_free_buffer(uint64_t a1)
{
  if ((*(a1 + 204) & 2) == 0)
  {
    v2 = *(a1 + 112);
    if (!v2)
    {
LABEL_4:
      *(a1 + 196) = 0;
      *(a1 + 48) = 0;
      return;
    }

LABEL_3:
    free(v2);
    *(a1 + 112) = 0;
    goto LABEL_4;
  }

  v3 = __nwlog_obj();
  os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  v4 = _os_log_send_and_compose_impl();
  if (!__nwlog_should_abort(v4))
  {
    free(v4);
    v2 = *(a1 + 112);
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  __break(1u);
}

uint64_t ProtocolOptions.isEqual(to:for:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 88);
  v92 = *(*v3 + 80);
  v93 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v103 = sub_182AD39B8();
  v100 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v94 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v88 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v88 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v88 - v15;
  v102 = AssociatedTypeWitness;
  v99 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v88 - v19;
  v20 = sub_182AD2738();
  v21 = *(v20 - 1);
  v104 = v20;
  v105 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v88 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v88 - v30;
  v90 = *a2;
  v32 = *(v6 + 136);
  swift_beginAccess();
  v33 = *&v3[v32];
  v34 = *(*a1 + 136);
  swift_beginAccess();
  v35 = *(a1 + v34);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_7;
    }

    type metadata accessor for Endpoint(0);
    v36 = v35;
    v37 = v33;
    v38 = sub_182AD3978();

    if ((v38 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v39 = *(*v3 + 176);
    swift_beginAccess();
    LODWORD(v39) = v3[v39];
    v40 = *(*a1 + 176);
    swift_beginAccess();
    if (v39 != *(a1 + v40))
    {
      goto LABEL_7;
    }

    v43 = qword_1ED411A90;
    swift_beginAccess();
    sub_181AACF84(&v3[v43], v31);
    v44 = qword_1ED411A90;
    swift_beginAccess();
    v45 = *(v23 + 48);
    sub_181AACF84(v31, v25);
    sub_181AACF84(a1 + v44, &v25[v45]);
    v46 = v104;
    v47 = v105[6];
    if (v47(v25, 1, v104) == 1)
    {
      sub_181F49A88(v31, &qword_1EA838E00);
      if (v47(&v25[v45], 1, v46) == 1)
      {
        sub_181F49A88(v25, &qword_1EA838E00);
        goto LABEL_16;
      }
    }

    else
    {
      sub_181AACF84(v25, v28);
      if (v47(&v25[v45], 1, v46) != 1)
      {
        v48 = v105;
        v49 = v101;
        (v105[4])(v101, &v25[v45], v46);
        sub_181E2F230();
        LODWORD(v89) = sub_182AD2F48();
        v50 = v48[1];
        v50(v49, v46);
        sub_181F49A88(v31, &qword_1EA838E00);
        v50(v28, v46);
        sub_181F49A88(v25, &qword_1EA838E00);
        if ((v89 & 1) == 0)
        {
          goto LABEL_7;
        }

LABEL_16:
        swift_beginAccess();
        v51 = *(v3 + 3);
        v52 = *(v3 + 4);
        v53 = v3[40];
        v110 = *(v3 + 8);
        v111 = v51;
        v112 = v52;
        v113 = v53;
        swift_beginAccess();
        v54 = *(a1 + 24);
        v55 = *(a1 + 32);
        v56 = *(a1 + 40);
        v106 = *(a1 + 16);
        v107 = v54;
        v108 = v55;
        v109 = v56;
        LODWORD(v105) = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v110, &v106);
        v57 = v107;
        v104 = v108;
        LODWORD(v101) = v109;
        sub_181F49A24(v51, v52, v53);
        sub_181F49A24(v54, v55, v56);
        sub_181F48350(v57, v104, v101);
        sub_181F48350(v111, v112, v113);
        if (v105)
        {
          v58 = *(*v3 + 128);
          swift_beginAccess();
          v59 = v100;
          v61 = (v100 + 16);
          v60 = *(v100 + 16);
          v89 = v58;
          v62 = v97;
          v105 = v60;
          (v60)(v97, &v3[v58], v103);
          v63 = v99;
          v65 = v99 + 48;
          v64 = *(v99 + 48);
          v66 = v102;
          v67 = v64(v62, 1, v102);
          v104 = v64;
          v101 = v61;
          if (v67 == 1)
          {
            v93 = v65;
            v68 = v105;
          }

          else
          {
            v69 = *(v63 + 32);
            v97 = (v63 + 32);
            v88 = v69;
            v69(v98, v62, v66);
            v70 = *(*a1 + 128);
            swift_beginAccess();
            v71 = a1 + v70;
            v72 = v102;
            v62 = v95;
            v73 = v105;
            (v105)(v95, v71, v103);
            if (v64(v62, 1, v72) != 1)
            {
              v84 = v91;
              v88(v91, v62, v72);
              LOBYTE(v106) = v90;
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
              v86 = v98;
              v41 = (*(AssociatedConformanceWitness + 40))(v84, &v106, v72, AssociatedConformanceWitness);
              v87 = *(v63 + 8);
              v87(v84, v72);
              v87(v86, v72);
              return v41 & 1;
            }

            v68 = v73;
            v93 = v65;
            v66 = v72;
            (*(v63 + 8))(v98, v72);
            v59 = v100;
          }

          v74 = *(v59 + 8);
          v75 = v62;
          v76 = v103;
          v74(v75, v103);
          v77 = &v3[v89];
          v78 = v76;
          v79 = v96;
          v68(v96, v77, v78);
          v80 = v104(v79, 1, v66);
          v74(v79, v78);
          if (v80 == 1)
          {
            v81 = *(*a1 + 128);
            swift_beginAccess();
            v82 = a1 + v81;
            v83 = v94;
            (v105)(v94, v82, v78);
            v41 = v104(v83, 1, v66) == 1;
            v74(v83, v78);
            return v41 & 1;
          }
        }

        goto LABEL_7;
      }

      sub_181F49A88(v31, &qword_1EA838E00);
      (v105[1])(v28, v46);
    }

    sub_181F49A88(v25, &qword_1EA838AF0);
    v41 = 0;
    return v41 & 1;
  }

  if (!v35)
  {
    goto LABEL_6;
  }

LABEL_7:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_181BE2C70(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  if (!v2)
  {
    return !v3;
  }

  if (!v3)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  options_comparator = nw_protocol_definition_get_options_comparator(*(v1 + 24));
  result = *(v1 + 24);
  if (options_comparator)
  {
    if (*(v1 + 16))
    {
      if (*(a1 + 16))
      {
        return options_comparator(result);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  result = nw_protocol_definition_get_check_equality_options(result);
  if (!result)
  {
    return 1;
  }

  if (*(v1 + 16))
  {
    if (*(a1 + 16))
    {
      return (result)(*(v1 + 24));
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t nw_frame_buffer_used_malloc(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 204) & 1;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_frame_buffer_used_malloc";
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
        v11 = "nw_frame_buffer_used_malloc";
        v5 = "%{public}s called with null frame";
LABEL_17:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else if (v8 == 1)
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
          v11 = "nw_frame_buffer_used_malloc";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "nw_frame_buffer_used_malloc";
        v5 = "%{public}s called with null frame, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_frame_buffer_used_malloc";
        v5 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

BOOL nw_frame_buffer_used_manager(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 104) != 0;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_frame_buffer_used_manager";
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
        v11 = "__nw_frame_buffer_used_manager";
        v5 = "%{public}s called with null frame";
LABEL_17:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else if (v8 == 1)
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
          v11 = "__nw_frame_buffer_used_manager";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "__nw_frame_buffer_used_manager";
        v5 = "%{public}s called with null frame, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_frame_buffer_used_manager";
        v5 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

BOOL nw_content_context_get_is_wake_packet(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = 0;
    if (v1 != &__block_literal_global_10_44685 && v1 != &__block_literal_global_8_44676 && v1 != &__block_literal_global_6_44667 && v1 != &__block_literal_global_44658)
    {
      v3 = v1[118];
      v2 = v3 < 0;
      v1[118] = v3 & 0x7F;
    }

    goto LABEL_7;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_content_context_get_is_wake_packet";
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
        v16 = "nw_content_context_get_is_wake_packet";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null context", buf, 0xCu);
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
          v16 = "nw_content_context_get_is_wake_packet";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_content_context_get_is_wake_packet";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_content_context_get_is_wake_packet";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v6)
  {
    free(v6);
  }

  v2 = 0;
  v1 = 0;
LABEL_7:

  return v2;
}

uint64_t nw_flow_passthrough_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_flow_passthrough_get_input_frames";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v12, &type, &v21))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_input_frames";
        v15 = "%{public}s called with null protocol";
LABEL_38:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v18 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v24 = "nw_flow_passthrough_get_input_frames";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v12)
        {
          return 0;
        }

LABEL_41:
        free(v12);
        return 0;
      }

      if (v18)
      {
        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_input_frames";
        v15 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_38;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_input_frames";
        v15 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  output_handler = a1->output_handler;
  if (!output_handler)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_flow_passthrough_get_input_frames";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v12, &type, &v21))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_input_frames";
        v15 = "%{public}s called with null protocol->output_handler";
        goto LABEL_38;
      }
    }

    else
    {
      if (v21 == 1)
      {
        v19 = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v20 = os_log_type_enabled(v13, type);
        if (v19)
        {
          if (v20)
          {
            *buf = 136446466;
            v24 = "nw_flow_passthrough_get_input_frames";
            v25 = 2082;
            v26 = v19;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol->output_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          if (!v12)
          {
            return 0;
          }

          goto LABEL_41;
        }

        if (!v20)
        {
          goto LABEL_39;
        }

        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_input_frames";
        v15 = "%{public}s called with null protocol->output_handler, no backtrace";
        goto LABEL_38;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v24 = "nw_flow_passthrough_get_input_frames";
        v15 = "%{public}s called with null protocol->output_handler, backtrace limit exceeded";
        goto LABEL_38;
      }
    }

    goto LABEL_39;
  }

  callbacks = output_handler->callbacks;
  if (!callbacks || (get_input_frames = callbacks->get_input_frames) == 0)
  {
    v10 = __nwlog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v24 = "nw_flow_passthrough_get_input_frames";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s Output protocol handler does not support get_input_frames", buf, 0xCu);
    }

    return 0;
  }

  return get_input_frames();
}

void nw_frame_foreach_protocol_metadata(uint64_t a1, int a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v43 = "__nw_frame_foreach_protocol_metadata";
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v15, &type, &v40))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v43 = "__nw_frame_foreach_protocol_metadata";
      v18 = "%{public}s called with null frame";
      goto LABEL_61;
    }

    if (v40 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v43 = "__nw_frame_foreach_protocol_metadata";
      v18 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_61;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v20 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (!v20)
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v43 = "__nw_frame_foreach_protocol_metadata";
      v18 = "%{public}s called with null frame, no backtrace";
      goto LABEL_61;
    }

    if (v20)
    {
      *buf = 136446466;
      v43 = "__nw_frame_foreach_protocol_metadata";
      v44 = 2082;
      v45 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_62:
    if (!v15)
    {
      return;
    }

    goto LABEL_63;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v43 = "__nw_frame_foreach_protocol_metadata";
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v15, &type, &v40))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v43 = "__nw_frame_foreach_protocol_metadata";
      v18 = "%{public}s called with null block";
      goto LABEL_61;
    }

    if (v40 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v43 = "__nw_frame_foreach_protocol_metadata";
      v18 = "%{public}s called with null block, backtrace limit exceeded";
      goto LABEL_61;
    }

    v21 = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v22 = os_log_type_enabled(v16, type);
    if (v21)
    {
      if (v22)
      {
        *buf = 136446466;
        v43 = "__nw_frame_foreach_protocol_metadata";
        v44 = 2082;
        v45 = v21;
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null block, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v21);
      if (!v15)
      {
        return;
      }

LABEL_63:
      free(v15);
      return;
    }

    if (v22)
    {
      *buf = 136446210;
      v43 = "__nw_frame_foreach_protocol_metadata";
      v18 = "%{public}s called with null block, no backtrace";
LABEL_61:
      _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
      goto LABEL_62;
    }

    goto LABEL_62;
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = *v6;
      v9 = v6[6];
      if (v9)
      {
        is_ip = _nw_protocol_metadata_is_ip(v9);
        if (!(*(a3 + 16))(a3, v6[6]))
        {
          return;
        }

        v7 |= is_ip;
      }

      v6 = v8;
      if (!v8)
      {
        goto LABEL_10;
      }
    }
  }

  v7 = 0;
LABEL_10:
  if ((v7 & 1) == 0 && a2)
  {
    if ((*(a1 + 204) & 0x10) != 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a1 + 152);
    }

    v12 = *(a1 + 185);
    v13 = *(a1 + 186) & 3;
    if (!v11 && !*(a1 + 185))
    {
      if ((*(a1 + 186) & 3) == 0)
      {
        return;
      }

      metadata = _nw_ip_copy_metadata_for_ecn_flag(*(a1 + 186) & 3);
      (*(a3 + 16))(a3, metadata);
      if (!metadata)
      {
        return;
      }

      goto LABEL_22;
    }

    metadata = _nw_ip_create_metadata();
    nw_ip_metadata_set_ecn_flag(metadata, v13);
    if (metadata)
    {
      _nw_ip_metadata_set_receive_time(metadata, v11);
      _nw_ip_metadata_set_hop_limit(metadata, v12);
      (*(a3 + 16))(a3, metadata);
LABEL_22:

      os_release(metadata);
      return;
    }

    v23 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_ip_metadata_set_receive_time";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    v25 = v24;
    if (__nwlog_fault(v24, &type, &v40))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v43 = "nw_ip_metadata_set_receive_time";
          v28 = "%{public}s called with null metadata";
LABEL_68:
          _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
          goto LABEL_69;
        }

        goto LABEL_69;
      }

      if (v40 != 1)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v43 = "nw_ip_metadata_set_receive_time";
          v28 = "%{public}s called with null metadata, backtrace limit exceeded";
          goto LABEL_68;
        }

LABEL_69:

        goto LABEL_70;
      }

      v29 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v27 = type;
      v30 = os_log_type_enabled(v26, type);
      if (!v29)
      {
        if (v30)
        {
          *buf = 136446210;
          v43 = "nw_ip_metadata_set_receive_time";
          v28 = "%{public}s called with null metadata, no backtrace";
          goto LABEL_68;
        }

        goto LABEL_69;
      }

      if (v30)
      {
        *buf = 136446466;
        v43 = "nw_ip_metadata_set_receive_time";
        v44 = 2082;
        v45 = v29;
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v29);
    }

LABEL_70:
    if (v25)
    {
      free(v25);
    }

    v31 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_ip_metadata_set_hop_limit";
    v32 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    v33 = v32;
    if (!__nwlog_fault(v32, &type, &v40))
    {
      goto LABEL_87;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v43 = "nw_ip_metadata_set_hop_limit";
        v36 = "%{public}s called with null metadata";
LABEL_85:
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
          v43 = "nw_ip_metadata_set_hop_limit";
          v44 = 2082;
          v45 = v37;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_87;
      }

      if (v38)
      {
        *buf = 136446210;
        v43 = "nw_ip_metadata_set_hop_limit";
        v36 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_85;
      }
    }

    else
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v43 = "nw_ip_metadata_set_hop_limit";
        v36 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_85;
      }
    }

LABEL_87:
    if (v33)
    {
      free(v33);
    }

    v39 = *(a3 + 16);

    v39(a3, 0);
  }
}

uint64_t nw_frame_get_buffer(uint64_t a1, _DWORD *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 204) & 0x100) != 0 && g_channel_check_validity && (g_channel_check_validity(a1, *(a1 + 88)) & 1) == 0)
    {
      result = 0;
      if (a2)
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a2)
      {
        *a2 = *(a1 + 48);
      }

      return *(a1 + 112);
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "__nw_frame_get_buffer";
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
        v14 = "__nw_frame_get_buffer";
        v8 = "%{public}s called with null frame";
LABEL_24:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
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
          v14 = "__nw_frame_get_buffer";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v10)
      {
        *buf = 136446210;
        v14 = "__nw_frame_get_buffer";
        v8 = "%{public}s called with null frame, no backtrace";
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
        v14 = "__nw_frame_get_buffer";
        v8 = "%{public}s called with null frame, backtrace limit exceeded";
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

uint64_t nw_frame_buffer_get_manager(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 104);
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_frame_buffer_get_manager";
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
        v11 = "__nw_frame_buffer_get_manager";
        v5 = "%{public}s called with null frame";
LABEL_17:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else if (v8 == 1)
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
          v11 = "__nw_frame_buffer_get_manager";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "__nw_frame_buffer_get_manager";
        v5 = "%{public}s called with null frame, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_frame_buffer_get_manager";
        v5 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

void nw_frame_will_free_buffer_externally(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 104))
    {
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      return;
    }

    v1 = *(a1 + 204);
    if (v1)
    {
      *(a1 + 204) = v1 & 0xFFFE;
      *(a1 + 112) = 0;
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v17 = "nw_frame_will_free_buffer_externally";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v2, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v3 = gLogObj;
        v4 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v17 = "nw_frame_will_free_buffer_externally";
        v5 = "%{public}s Frame buffer cannot be freed externally";
        goto LABEL_17;
      }

      if (v14 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v3 = gLogObj;
        v4 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v17 = "nw_frame_will_free_buffer_externally";
        v5 = "%{public}s Frame buffer cannot be freed externally, backtrace limit exceeded";
        goto LABEL_17;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      v9 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v17 = "nw_frame_will_free_buffer_externally";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s Frame buffer cannot be freed externally, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
      }

      else if (v9)
      {
        *buf = 136446210;
        v17 = "nw_frame_will_free_buffer_externally";
        v5 = "%{public}s Frame buffer cannot be freed externally, no backtrace";
        v10 = v7;
        v11 = v8;
        goto LABEL_18;
      }
    }

LABEL_19:
    if (!v2)
    {
      return;
    }

    goto LABEL_20;
  }

  __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_frame_will_free_buffer_externally";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v2, &type, &v14))
  {
    goto LABEL_19;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v3 = __nwlog_obj();
    v4 = type;
    if (!os_log_type_enabled(v3, type))
    {
      goto LABEL_19;
    }

    *buf = 136446210;
    v17 = "nw_frame_will_free_buffer_externally";
    v5 = "%{public}s called with null frame";
    goto LABEL_17;
  }

  if (v14 != 1)
  {
    v3 = __nwlog_obj();
    v4 = type;
    if (!os_log_type_enabled(v3, type))
    {
      goto LABEL_19;
    }

    *buf = 136446210;
    v17 = "nw_frame_will_free_buffer_externally";
    v5 = "%{public}s called with null frame, backtrace limit exceeded";
    goto LABEL_17;
  }

  v12 = __nw_create_backtrace_string();
  v3 = __nwlog_obj();
  v4 = type;
  v13 = os_log_type_enabled(v3, type);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_19;
    }

    *buf = 136446210;
    v17 = "nw_frame_will_free_buffer_externally";
    v5 = "%{public}s called with null frame, no backtrace";
LABEL_17:
    v10 = v3;
    v11 = v4;
LABEL_18:
    _os_log_impl(&dword_181A37000, v10, v11, v5, buf, 0xCu);
    goto LABEL_19;
  }

  if (v13)
  {
    *buf = 136446466;
    v17 = "nw_frame_will_free_buffer_externally";
    v18 = 2082;
    v19 = v12;
    _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v2)
  {
LABEL_20:
    free(v2);
  }
}

void nw_context_count_input_bytes(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (g_some_context_has_cap == 1)
  {
    nw_context_assert_queue(v3);
    v15 = nw_context_copy_globals_context(v4);

    v3 = v15;
    v5 = *(v15 + 4);
    v6 = *(v5 + 76);
    if (v6)
    {
      v7 = v6 > a2;
      v8 = v6 - a2;
      if (v7)
      {
        *(v5 + 76) = v8;
      }

      else
      {
        *(v5 + 76) = 0;
        v9 = _Block_copy(*(v5 + 100));
        v10 = *(v15 + 4);
        v11 = *(v10 + 92);
        *(v10 + 92) = 0;
        v12 = v11;

        v13 = *(v15 + 4);
        v14 = *(v13 + 100);
        *(v13 + 100) = 0;

        dispatch_async(v12, v9);
        v3 = v15;
      }
    }
  }
}

void nw_protocol_output_available(void *a1, uint64_t a2)
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
        v48 = "__nw_protocol_output_available";
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
          v48 = "__nw_protocol_output_available";
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
          v48 = "__nw_protocol_output_available";
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
          v48 = "__nw_protocol_output_available";
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
          v48 = "__nw_protocol_output_available";
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

    v16 = *(v10 + 72);
    if (v16)
    {
      v16(a1, a2);
      goto LABEL_25;
    }

LABEL_50:
    __nwlog_obj();
    v27 = *(v3 + 16);
    *buf = 136446722;
    v48 = "__nw_protocol_output_available";
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
      v48 = "__nw_protocol_output_available";
      v49 = 2082;
      v50 = v31;
      v51 = 2048;
      v52 = v3;
      v32 = "%{public}s protocol %{public}s (%p) has invalid output_available callback";
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
          v48 = "__nw_protocol_output_available";
          v49 = 2082;
          v50 = v38;
          v51 = 2048;
          v52 = v3;
          v53 = 2082;
          v54 = v36;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s protocol %{public}s (%p) has invalid output_available callback, dumping backtrace:%{public}s", buf, 0x2Au);
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
      v48 = "__nw_protocol_output_available";
      v49 = 2082;
      v50 = v44;
      v51 = 2048;
      v52 = v3;
      v32 = "%{public}s protocol %{public}s (%p) has invalid output_available callback, no backtrace";
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
      v48 = "__nw_protocol_output_available";
      v49 = 2082;
      v50 = v43;
      v51 = 2048;
      v52 = v3;
      v32 = "%{public}s protocol %{public}s (%p) has invalid output_available callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v29, v30, v32, buf, 0x20u);
    goto LABEL_94;
  }

  __nwlog_obj();
  *buf = 136446210;
  v48 = "__nw_protocol_output_available";
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
      v48 = "__nw_protocol_output_available";
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
          v48 = "__nw_protocol_output_available";
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
      v48 = "__nw_protocol_output_available";
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
      v48 = "__nw_protocol_output_available";
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

void nw_flow_passthrough_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    default_input_handler = a1->default_input_handler;
    if (default_input_handler)
    {
      callbacks = default_input_handler->callbacks;
      if (callbacks)
      {
        output_available = callbacks->output_available;
        if (output_available)
        {

          output_available();
        }
      }
    }

    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_flow_passthrough_output_available";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_flow_passthrough_output_available";
        v9 = "%{public}s called with null protocol";
LABEL_21:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v11 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446466;
            v15 = "nw_flow_passthrough_output_available";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (!v11)
        {
          goto LABEL_22;
        }

        *buf = 136446210;
        v15 = "nw_flow_passthrough_output_available";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_21;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_flow_passthrough_output_available";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_22:
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }
}

void nw_framer_protocol_get_message_properties(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = *(a1 + 40);
    v6 = v5;
    if (v5)
    {
      if (*(v5 + 1))
      {
        if (!a3)
        {
LABEL_11:

          return;
        }

        if ((~v5[608] & 3) != 0)
        {
          v10 = a3[1] & 0xFFFFFFFC;
          *a3 = -1;
          a3[1] = v10;
          goto LABEL_11;
        }

        v7 = *(a1 + 32);
        if (v7)
        {
          v8 = *(v7 + 24);
          if (v8)
          {
            v9 = *(v8 + 248);
            if (v9)
            {
              v9();
              goto LABEL_11;
            }
          }
        }

        v21 = __nwlog_obj();
        v22 = *(a1 + 32);
        v23 = "invalid";
        if (v22)
        {
          v24 = *(v22 + 16);
          if (v24)
          {
            v23 = v24;
          }
        }

        *buf = 136446466;
        v58 = "nw_framer_protocol_get_message_properties";
        v59 = 2082;
        v60 = v23;
        v16 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v55 = 0;
        if (__nwlog_fault(v16, &type, &v55))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v25 = __nwlog_obj();
            v26 = type;
            if (os_log_type_enabled(v25, type))
            {
              v27 = *(a1 + 32);
              v28 = "invalid";
              if (v27)
              {
                v29 = *(v27 + 16);
                if (v29)
                {
                  v28 = v29;
                }
              }

              *buf = 136446466;
              v58 = "nw_framer_protocol_get_message_properties";
              v59 = 2082;
              v60 = v28;
              _os_log_impl(&dword_181A37000, v25, v26, "%{public}s protocol %{public}s has invalid get_message_properties callback", buf, 0x16u);
            }
          }

          else if (v55 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v25 = __nwlog_obj();
            v40 = type;
            v41 = os_log_type_enabled(v25, type);
            if (backtrace_string)
            {
              if (v41)
              {
                v42 = *(a1 + 32);
                v43 = "invalid";
                if (v42)
                {
                  v44 = *(v42 + 16);
                  if (v44)
                  {
                    v43 = v44;
                  }
                }

                *buf = 136446722;
                v58 = "nw_framer_protocol_get_message_properties";
                v59 = 2082;
                v60 = v43;
                v61 = 2082;
                v62 = backtrace_string;
                _os_log_impl(&dword_181A37000, v25, v40, "%{public}s protocol %{public}s has invalid get_message_properties callback, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(backtrace_string);
              if (!v16)
              {
                goto LABEL_11;
              }

              goto LABEL_97;
            }

            if (v41)
            {
              v52 = *(a1 + 32);
              v53 = "invalid";
              if (v52)
              {
                v54 = *(v52 + 16);
                if (v54)
                {
                  v53 = v54;
                }
              }

              *buf = 136446466;
              v58 = "nw_framer_protocol_get_message_properties";
              v59 = 2082;
              v60 = v53;
              _os_log_impl(&dword_181A37000, v25, v40, "%{public}s protocol %{public}s has invalid get_message_properties callback, no backtrace", buf, 0x16u);
            }
          }

          else
          {
            v25 = __nwlog_obj();
            v48 = type;
            if (os_log_type_enabled(v25, type))
            {
              v49 = *(a1 + 32);
              v50 = "invalid";
              if (v49)
              {
                v51 = *(v49 + 16);
                if (v51)
                {
                  v50 = v51;
                }
              }

              *buf = 136446466;
              v58 = "nw_framer_protocol_get_message_properties";
              v59 = 2082;
              v60 = v50;
              _os_log_impl(&dword_181A37000, v25, v48, "%{public}s protocol %{public}s has invalid get_message_properties callback, backtrace limit exceeded", buf, 0x16u);
            }
          }
        }

        goto LABEL_96;
      }

      v19 = __nwlog_obj();
      *buf = 136446210;
      v58 = "nw_framer_protocol_get_message_properties";
      v16 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v55 = 0;
      if (__nwlog_fault(v16, &type, &v55))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v17 = __nwlog_obj();
          v20 = type;
          if (os_log_type_enabled(v17, type))
          {
            *buf = 136446210;
            v58 = "nw_framer_protocol_get_message_properties";
            _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }
        }

        else if (v55 == 1)
        {
          v36 = __nw_create_backtrace_string();
          v17 = __nwlog_obj();
          v37 = type;
          v38 = os_log_type_enabled(v17, type);
          if (v36)
          {
            if (v38)
            {
              *buf = 136446466;
              v58 = "nw_framer_protocol_get_message_properties";
              v59 = 2082;
              v60 = v36;
              _os_log_impl(&dword_181A37000, v17, v37, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v36);
            if (!v16)
            {
              goto LABEL_11;
            }

            goto LABEL_97;
          }

          if (v38)
          {
            *buf = 136446210;
            v58 = "nw_framer_protocol_get_message_properties";
            _os_log_impl(&dword_181A37000, v17, v37, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v17 = __nwlog_obj();
          v47 = type;
          if (os_log_type_enabled(v17, type))
          {
            *buf = 136446210;
            v58 = "nw_framer_protocol_get_message_properties";
            _os_log_impl(&dword_181A37000, v17, v47, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }
        }

        goto LABEL_89;
      }

LABEL_96:
      if (!v16)
      {
        goto LABEL_11;
      }

LABEL_97:
      free(v16);
      goto LABEL_11;
    }

    v15 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_framer_protocol_get_message_properties";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v16, &type, &v55))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v58 = "nw_framer_protocol_get_message_properties";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null framer", buf, 0xCu);
      }
    }

    else if (v55 == 1)
    {
      v33 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v34 = type;
      v35 = os_log_type_enabled(v17, type);
      if (v33)
      {
        if (v35)
        {
          *buf = 136446466;
          v58 = "nw_framer_protocol_get_message_properties";
          v59 = 2082;
          v60 = v33;
          _os_log_impl(&dword_181A37000, v17, v34, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v33);
        goto LABEL_96;
      }

      if (v35)
      {
        *buf = 136446210;
        v58 = "nw_framer_protocol_get_message_properties";
        _os_log_impl(&dword_181A37000, v17, v34, "%{public}s called with null framer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v58 = "nw_framer_protocol_get_message_properties";
        _os_log_impl(&dword_181A37000, v17, v46, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_89:

    goto LABEL_96;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v58 = "nw_framer_protocol_get_message_properties";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v55 = 0;
  if (__nwlog_fault(v12, &type, &v55))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v58 = "nw_framer_protocol_get_message_properties";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v55 == 1)
    {
      v30 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v31 = type;
      v32 = os_log_type_enabled(v13, type);
      if (v30)
      {
        if (v32)
        {
          *buf = 136446466;
          v58 = "nw_framer_protocol_get_message_properties";
          v59 = 2082;
          v60 = v30;
          _os_log_impl(&dword_181A37000, v13, v31, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v30);
        goto LABEL_82;
      }

      if (v32)
      {
        *buf = 136446210;
        v58 = "nw_framer_protocol_get_message_properties";
        _os_log_impl(&dword_181A37000, v13, v31, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v58 = "nw_framer_protocol_get_message_properties";
        _os_log_impl(&dword_181A37000, v13, v45, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_82:
  if (v12)
  {
    free(v12);
  }
}
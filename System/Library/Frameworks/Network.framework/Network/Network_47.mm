void nw_protocol_http3_connected(nw_protocol *a1, nw_protocol *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v62 = "nw_protocol_http3_connected";
    v19 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(size_ptr) = 0;
    if (!__nwlog_fault(v19, type, &size_ptr))
    {
      goto LABEL_97;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (!os_log_type_enabled(v20, type[0]))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v62 = "nw_protocol_http3_connected";
      v22 = "%{public}s called with null protocol";
      goto LABEL_96;
    }

    if (size_ptr != 1)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (!os_log_type_enabled(v20, type[0]))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v62 = "nw_protocol_http3_connected";
      v22 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_96;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type[0];
    v39 = os_log_type_enabled(v20, type[0]);
    if (backtrace_string)
    {
      if (v39)
      {
        *buf = 136446466;
        v62 = "nw_protocol_http3_connected";
        v63 = 2082;
        v64 = backtrace_string;
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_97;
    }

    if (!v39)
    {
      goto LABEL_97;
    }

    *buf = 136446210;
    v62 = "nw_protocol_http3_connected";
    v22 = "%{public}s called with null protocol, no backtrace";
    goto LABEL_96;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v62 = "nw_protocol_http3_connected";
    v19 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(size_ptr) = 0;
    if (!__nwlog_fault(v19, type, &size_ptr))
    {
      goto LABEL_97;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (!os_log_type_enabled(v20, type[0]))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v62 = "nw_protocol_http3_connected";
      v22 = "%{public}s called with null http3";
      goto LABEL_96;
    }

    if (size_ptr != 1)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (!os_log_type_enabled(v20, type[0]))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v62 = "nw_protocol_http3_connected";
      v22 = "%{public}s called with null http3, backtrace limit exceeded";
      goto LABEL_96;
    }

    v40 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type[0];
    v41 = os_log_type_enabled(v20, type[0]);
    if (v40)
    {
      if (!v41)
      {
        goto LABEL_90;
      }

      *buf = 136446466;
      v62 = "nw_protocol_http3_connected";
      v63 = 2082;
      v64 = v40;
      v42 = "%{public}s called with null http3, dumping backtrace:%{public}s";
      goto LABEL_89;
    }

    if (!v41)
    {
      goto LABEL_97;
    }

    *buf = 136446210;
    v62 = "nw_protocol_http3_connected";
    v22 = "%{public}s called with null http3, no backtrace";
LABEL_96:
    _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
    goto LABEL_97;
  }

  v4 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((handle[1399] & 0x20) == 0 && gLogDatapath == 1)
  {
    v23 = a2;
    v24 = __nwlog_obj();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
    a2 = v23;
    if (v25)
    {
      v26 = *(handle + 326);
      *buf = 136446978;
      v62 = "nw_protocol_http3_connected";
      v63 = 2082;
      v64 = (handle + 1313);
      v65 = 2080;
      v66 = " ";
      v67 = 1024;
      v68 = v26;
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Got a connected event from the lower layer", buf, 0x26u);
      a2 = v23;
    }
  }

  v5 = *(handle + 111);
  if (v5)
  {
    v6 = 0;
    do
    {
      ++v6;
      v5 = *(v5 + 536);
    }

    while (v5);
    if ((handle[1399] & 0x20) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
    if ((handle[1399] & 0x20) != 0)
    {
      goto LABEL_12;
    }
  }

  if (gLogDatapath == 1)
  {
    v27 = a2;
    v28 = __nwlog_obj();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
    a2 = v27;
    if (v29)
    {
      v30 = *(handle + 326);
      *buf = 136447234;
      v62 = "nw_protocol_http3_connected";
      v63 = 2082;
      v64 = (handle + 1313);
      v65 = 2080;
      v66 = " ";
      v67 = 1024;
      v68 = v30;
      v69 = 1024;
      LODWORD(v70) = v6;
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> http3 has %u streams", buf, 0x2Cu);
      a2 = v27;
    }
  }

LABEL_12:
  output_handler = a1->output_handler;
  if (output_handler != a2)
  {
    if ((handle[1399] & 0x20) == 0 && gLogDatapath == 1)
    {
      v31 = a2;
      v32 = __nwlog_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = *(handle + 326);
        identifier = v31->identifier;
        *buf = 136447490;
        v62 = "nw_protocol_http3_connected";
        v63 = 2082;
        v64 = (handle + 1313);
        v65 = 2080;
        v66 = " ";
        v67 = 1024;
        v68 = v33;
        v69 = 2048;
        v70 = v31;
        v71 = 2080;
        v72 = identifier;
        _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> connected protocol %p (%s) is not our output_handler, ignoring", buf, 0x3Au);
      }
    }

    return;
  }

  if (!a2 || (callbacks = output_handler->callbacks) == 0 || (waiting_for_output = callbacks->waiting_for_output) == 0)
  {
    __nwlog_obj();
    v13 = a1->output_handler;
    *buf = 136446466;
    v62 = "nw_protocol_http3_connected";
    v63 = 2048;
    v64 = v13;
    v14 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(size_ptr) = 0;
    if (!__nwlog_fault(v14, type, &size_ptr))
    {
      goto LABEL_65;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type[0];
      if (!os_log_type_enabled(v15, type[0]))
      {
        goto LABEL_65;
      }

      v17 = a1->output_handler;
      *buf = 136446466;
      v62 = "nw_protocol_http3_connected";
      v63 = 2048;
      v64 = v17;
      v18 = "%{public}s Output handler (%p)'s waiting_for_output callback is not properly set";
    }

    else if (size_ptr == 1)
    {
      v35 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type[0];
      v36 = os_log_type_enabled(v15, type[0]);
      if (v35)
      {
        if (v36)
        {
          v37 = a1->output_handler;
          *buf = 136446722;
          v62 = "nw_protocol_http3_connected";
          v63 = 2048;
          v64 = v37;
          v65 = 2082;
          v66 = v35;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s Output handler (%p)'s waiting_for_output callback is not properly set, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v35);
        v4 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
LABEL_65:
        if (v14)
        {
          free(v14);
        }

        v11 = *(handle + 1397);
        v12 = handle + 1397;
        if ((v11 & 0x100) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_68;
      }

      v4 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      if (!v36)
      {
        goto LABEL_65;
      }

      v44 = a1->output_handler;
      *buf = 136446466;
      v62 = "nw_protocol_http3_connected";
      v63 = 2048;
      v64 = v44;
      v18 = "%{public}s Output handler (%p)'s waiting_for_output callback is not properly set, no backtrace";
    }

    else
    {
      v15 = __nwlog_obj();
      v16 = type[0];
      if (!os_log_type_enabled(v15, type[0]))
      {
        goto LABEL_65;
      }

      v43 = a1->output_handler;
      *buf = 136446466;
      v62 = "nw_protocol_http3_connected";
      v63 = 2048;
      v64 = v43;
      v18 = "%{public}s Output handler (%p)'s waiting_for_output callback is not properly set, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v15, v16, v18, buf, 0x16u);
    goto LABEL_65;
  }

  if (waiting_for_output())
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(handle + 1397) & 0xFEFF | v10;
  *(handle + 1397) = v11;
  v12 = handle + 1397;
  if ((v11 & 0x100) == 0)
  {
LABEL_23:
    *v12 = v11 | 0x10;
    goto LABEL_69;
  }

LABEL_68:
  nw_http3_signal_output_pending(handle, 1);
LABEL_69:
  nw_http3_control_stream_process_output(handle);
  if ((*v12 & 0x100) != 0)
  {
    size_ptr = 0;
    *type = 0;
    v48 = *(handle + 146);
    if (!v48)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v62 = "nw_protocol_http3_connected";
      v19 = _os_log_send_and_compose_impl();
      v58 = OS_LOG_TYPE_ERROR;
      v57 = 0;
      if (!__nwlog_fault(v19, &v58, &v57))
      {
        goto LABEL_97;
      }

      if (v58 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v21 = v58;
        if (!os_log_type_enabled(gLogObj, v58))
        {
          goto LABEL_97;
        }

        *buf = 136446210;
        v62 = "nw_protocol_http3_connected";
        v22 = "%{public}s Could not find persisted SETTINGS";
        goto LABEL_96;
      }

      if (v57 != 1)
      {
        v20 = __nwlog_obj();
        v21 = v58;
        if (!os_log_type_enabled(v20, v58))
        {
          goto LABEL_97;
        }

        *buf = 136446210;
        v62 = "nw_protocol_http3_connected";
        v22 = "%{public}s Could not find persisted SETTINGS, backtrace limit exceeded";
        goto LABEL_96;
      }

      v40 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = v58;
      v50 = os_log_type_enabled(v20, v58);
      if (!v40)
      {
        if (!v50)
        {
          goto LABEL_97;
        }

        *buf = 136446210;
        v62 = "nw_protocol_http3_connected";
        v22 = "%{public}s Could not find persisted SETTINGS, no backtrace";
        goto LABEL_96;
      }

      if (!v50)
      {
        goto LABEL_90;
      }

      *buf = 136446466;
      v62 = "nw_protocol_http3_connected";
      v63 = 2082;
      v64 = v40;
      v42 = "%{public}s Could not find persisted SETTINGS, dumping backtrace:%{public}s";
      goto LABEL_89;
    }

    v49 = dispatch_data_create_map(v48, type, &size_ptr);
    nw_http3_parse_settings(handle, *type, size_ptr);
    if (v49)
    {
      dispatch_release(v49);
    }
  }

  else
  {
    if ((handle[1399] & 0x20) == 0 && BYTE1(v4[82].isa) == 1)
    {
      v51 = __nwlog_obj();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        v52 = *(handle + 326);
        *buf = 136446978;
        v62 = "nw_protocol_http3_connected";
        v63 = 2082;
        v64 = (handle + 1313);
        v65 = 2080;
        v66 = " ";
        v67 = 1024;
        v68 = v52;
        _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> http3 connection is connected", buf, 0x26u);
      }
    }

    if (nw_settings_get_http_connection_coalescing_enabled())
    {
      if ((handle[1399] & 0x20) == 0 && BYTE1(v4[82].isa) == 1)
      {
        v53 = __nwlog_obj();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v54 = *(handle + 326);
          *buf = 136446978;
          v62 = "nw_http3_add_edges";
          v63 = 2082;
          v64 = (handle + 1313);
          v65 = 2080;
          v66 = " ";
          v67 = 1024;
          v68 = v54;
          _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
        }
      }

      v45 = *(handle + 139);
      if (v45)
      {
        v46 = v45;
        is_registered = _nw_endpoint_is_registered(v46);

        if (is_registered)
        {
          nw_endpoint_add_edges_for_instance(*(handle + 139), handle, 1);
          return;
        }

        __nwlog_obj();
        *buf = 136446210;
        v62 = "nw_http3_add_edges";
        v19 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(size_ptr) = 0;
        if (!__nwlog_fault(v19, type, &size_ptr))
        {
          goto LABEL_97;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v20 = __nwlog_obj();
          v21 = type[0];
          if (os_log_type_enabled(v20, type[0]))
          {
            *buf = 136446210;
            v62 = "nw_http3_add_edges";
            v22 = "%{public}s http3->remote_endpoint is not registered when connected";
            goto LABEL_96;
          }

LABEL_97:
          if (!v19)
          {
            return;
          }

          goto LABEL_98;
        }

        if (size_ptr != 1)
        {
          v20 = __nwlog_obj();
          v21 = type[0];
          if (os_log_type_enabled(v20, type[0]))
          {
            *buf = 136446210;
            v62 = "nw_http3_add_edges";
            v22 = "%{public}s http3->remote_endpoint is not registered when connected, backtrace limit exceeded";
            goto LABEL_96;
          }

          goto LABEL_97;
        }

        v40 = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v21 = type[0];
        v56 = os_log_type_enabled(v20, type[0]);
        if (!v40)
        {
          if (v56)
          {
            *buf = 136446210;
            v62 = "nw_http3_add_edges";
            v22 = "%{public}s http3->remote_endpoint is not registered when connected, no backtrace";
            goto LABEL_96;
          }

          goto LABEL_97;
        }

        if (v56)
        {
          *buf = 136446466;
          v62 = "nw_http3_add_edges";
          v63 = 2082;
          v64 = v40;
          v42 = "%{public}s http3->remote_endpoint is not registered when connected, dumping backtrace:%{public}s";
          goto LABEL_89;
        }

LABEL_90:
        free(v40);
        if (!v19)
        {
          return;
        }

LABEL_98:
        free(v19);
        return;
      }

      __nwlog_obj();
      *buf = 136446210;
      v62 = "nw_http3_add_edges";
      v19 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(size_ptr) = 0;
      if (!__nwlog_fault(v19, type, &size_ptr))
      {
        goto LABEL_97;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type[0];
        if (!os_log_type_enabled(v20, type[0]))
        {
          goto LABEL_97;
        }

        *buf = 136446210;
        v62 = "nw_http3_add_edges";
        v22 = "%{public}s http3->remote_endpoint is NULL when connected";
        goto LABEL_96;
      }

      if (size_ptr != 1)
      {
        v20 = __nwlog_obj();
        v21 = type[0];
        if (os_log_type_enabled(v20, type[0]))
        {
          *buf = 136446210;
          v62 = "nw_http3_add_edges";
          v22 = "%{public}s http3->remote_endpoint is NULL when connected, backtrace limit exceeded";
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      v40 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type[0];
      v55 = os_log_type_enabled(v20, type[0]);
      if (!v40)
      {
        if (v55)
        {
          *buf = 136446210;
          v62 = "nw_http3_add_edges";
          v22 = "%{public}s http3->remote_endpoint is NULL when connected, no backtrace";
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      if (!v55)
      {
        goto LABEL_90;
      }

      *buf = 136446466;
      v62 = "nw_http3_add_edges";
      v63 = 2082;
      v64 = v40;
      v42 = "%{public}s http3->remote_endpoint is NULL when connected, dumping backtrace:%{public}s";
LABEL_89:
      _os_log_impl(&dword_181A37000, v20, v21, v42, buf, 0x16u);
      goto LABEL_90;
    }
  }
}

void nw_quic_report_race_result_on_queue(void *a1, int a2, int a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5)
  {
    v62 = __nwlog_obj();
    *buf = 136446210;
    v75 = "nw_quic_report_race_result_on_queue";
    v63 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (!__nwlog_fault(v63, &type, &v72))
    {
      goto LABEL_115;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v64 = __nwlog_obj();
      v65 = type;
      if (os_log_type_enabled(v64, type))
      {
        *buf = 136446210;
        v75 = "nw_quic_report_race_result_on_queue";
        v66 = "%{public}s called with null association";
LABEL_113:
        _os_log_impl(&dword_181A37000, v64, v65, v66, buf, 0xCu);
      }
    }

    else
    {
      if (v72 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v64 = __nwlog_obj();
        v65 = type;
        v69 = os_log_type_enabled(v64, type);
        if (backtrace_string)
        {
          if (v69)
          {
            *buf = 136446466;
            v75 = "nw_quic_report_race_result_on_queue";
            v76 = 2082;
            v77 = backtrace_string;
            _os_log_impl(&dword_181A37000, v64, v65, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_115;
        }

        if (!v69)
        {
          goto LABEL_114;
        }

        *buf = 136446210;
        v75 = "nw_quic_report_race_result_on_queue";
        v66 = "%{public}s called with null association, no backtrace";
        goto LABEL_113;
      }

      v64 = __nwlog_obj();
      v65 = type;
      if (os_log_type_enabled(v64, type))
      {
        *buf = 136446210;
        v75 = "nw_quic_report_race_result_on_queue";
        v66 = "%{public}s called with null association, backtrace limit exceeded";
        goto LABEL_113;
      }
    }

LABEL_114:

LABEL_115:
    if (v63)
    {
      free(v63);
    }

    goto LABEL_88;
  }

  if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
  }

  v6 = nw_protocol_copy_quic_connection_definition_quic_definition;
  if (!v6)
  {
    v67 = __nwlog_obj();
    *buf = 136446210;
    v75 = "nw_quic_report_race_result_on_queue";
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (__nwlog_fault(v36, &type, &v72))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (!os_log_type_enabled(v37, type))
        {
          goto LABEL_56;
        }

        *buf = 136446210;
        v75 = "nw_quic_report_race_result_on_queue";
        v39 = "%{public}s called with null definition";
        goto LABEL_54;
      }

      if (v72 != 1)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (!os_log_type_enabled(v37, type))
        {
          goto LABEL_56;
        }

        *buf = 136446210;
        v75 = "nw_quic_report_race_result_on_queue";
        v39 = "%{public}s called with null definition, backtrace limit exceeded";
        goto LABEL_54;
      }

      v70 = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v38 = type;
      v71 = os_log_type_enabled(v37, type);
      if (!v70)
      {
        if (!v71)
        {
          goto LABEL_56;
        }

        *buf = 136446210;
        v75 = "nw_quic_report_race_result_on_queue";
        v39 = "%{public}s called with null definition, no backtrace";
        goto LABEL_54;
      }

      if (v71)
      {
        *buf = 136446466;
        v75 = "nw_quic_report_race_result_on_queue";
        v76 = 2082;
        v77 = v70;
        _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v70);
    }

LABEL_57:
    if (!v36)
    {
LABEL_87:

LABEL_88:
      return;
    }

LABEL_58:
    free(v36);
    goto LABEL_87;
  }

  cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v5, v6);
  if (cached_content_for_protocol || (cached_content_for_protocol = malloc_type_calloc(1uLL, 0x30uLL, 0x129F5D95uLL)) != 0)
  {
    v8 = cached_content_for_protocol;
    if (a2)
    {
      v9 = cached_content_for_protocol[6] + 1;
      cached_content_for_protocol[6] = v9;
      if (v9 != v9 << 31 >> 31)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = v8[6];
        *buf = 136446978;
        v75 = "nw_quic_report_race_result_on_queue";
        v76 = 2082;
        v77 = "association_cache->success_count";
        v78 = 2048;
        v79 = 1;
        v80 = 2048;
        v81 = v11;
        v12 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v72 = 0;
        if (!__nwlog_fault(v12, &type, &v72))
        {
LABEL_67:
          if (v12)
          {
            free(v12);
          }

          v8[6] = -1;
          goto LABEL_86;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (os_log_type_enabled(v13, type))
          {
            v15 = v8[6];
            *buf = 136446978;
            v75 = "nw_quic_report_race_result_on_queue";
            v76 = 2082;
            v77 = "association_cache->success_count";
            v78 = 2048;
            v79 = 1;
            v80 = 2048;
            v81 = v15;
            v16 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_65:
            _os_log_impl(&dword_181A37000, v13, v14, v16, buf, 0x2Au);
          }
        }

        else
        {
          if (v72 == 1)
          {
            v40 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v13 = gLogObj;
            v14 = type;
            v41 = os_log_type_enabled(v13, type);
            if (v40)
            {
              if (v41)
              {
                v42 = v8[6];
                *buf = 136447234;
                v75 = "nw_quic_report_race_result_on_queue";
                v76 = 2082;
                v77 = "association_cache->success_count";
                v78 = 2048;
                v79 = 1;
                v80 = 2048;
                v81 = v42;
                v82 = 2082;
                v83 = v40;
                _os_log_impl(&dword_181A37000, v13, v14, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v40);
              goto LABEL_67;
            }

            if (!v41)
            {
              goto LABEL_66;
            }

            v57 = v8[6];
            *buf = 136446978;
            v75 = "nw_quic_report_race_result_on_queue";
            v76 = 2082;
            v77 = "association_cache->success_count";
            v78 = 2048;
            v79 = 1;
            v80 = 2048;
            v81 = v57;
            v16 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_65;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (os_log_type_enabled(v13, type))
          {
            v52 = v8[6];
            *buf = 136446978;
            v75 = "nw_quic_report_race_result_on_queue";
            v76 = 2082;
            v77 = "association_cache->success_count";
            v78 = 2048;
            v79 = 1;
            v80 = 2048;
            v81 = v52;
            v16 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_65;
          }
        }

LABEL_66:

        goto LABEL_67;
      }

LABEL_86:
      int64_with_default = networkd_settings_get_int64_with_default(nw_setting_quic_failure_cache_seconds, 1800);
      v61 = time(0);
      nw_association_set_cached_content_for_protocol(v5, v6, v8, v61 + int64_with_default);
      goto LABEL_87;
    }

    if (a3)
    {
      v17 = cached_content_for_protocol[8] + 1;
      cached_content_for_protocol[8] = v17;
      if (v17 == v17 << 31 >> 31)
      {
        goto LABEL_86;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = v8[8];
      *buf = 136446978;
      v75 = "nw_quic_report_race_result_on_queue";
      v76 = 2082;
      v77 = "association_cache->cancelled_count";
      v78 = 2048;
      v79 = 1;
      v80 = 2048;
      v81 = v19;
      v20 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v72 = 0;
      if (!__nwlog_fault(v20, &type, &v72))
      {
LABEL_76:
        if (v20)
        {
          free(v20);
        }

        v8[8] = -1;
        goto LABEL_86;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          v23 = v8[8];
          *buf = 136446978;
          v75 = "nw_quic_report_race_result_on_queue";
          v76 = 2082;
          v77 = "association_cache->cancelled_count";
          v78 = 2048;
          v79 = 1;
          v80 = 2048;
          v81 = v23;
          v24 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_74:
          _os_log_impl(&dword_181A37000, v21, v22, v24, buf, 0x2Au);
        }
      }

      else
      {
        if (v72 == 1)
        {
          v46 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v22 = type;
          v47 = os_log_type_enabled(v21, type);
          if (v46)
          {
            if (v47)
            {
              v48 = v8[8];
              *buf = 136447234;
              v75 = "nw_quic_report_race_result_on_queue";
              v76 = 2082;
              v77 = "association_cache->cancelled_count";
              v78 = 2048;
              v79 = 1;
              v80 = 2048;
              v81 = v48;
              v82 = 2082;
              v83 = v46;
              _os_log_impl(&dword_181A37000, v21, v22, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v46);
            goto LABEL_76;
          }

          if (!v47)
          {
            goto LABEL_75;
          }

          v58 = v8[8];
          *buf = 136446978;
          v75 = "nw_quic_report_race_result_on_queue";
          v76 = 2082;
          v77 = "association_cache->cancelled_count";
          v78 = 2048;
          v79 = 1;
          v80 = 2048;
          v81 = v58;
          v24 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_74;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          v55 = v8[8];
          *buf = 136446978;
          v75 = "nw_quic_report_race_result_on_queue";
          v76 = 2082;
          v77 = "association_cache->cancelled_count";
          v78 = 2048;
          v79 = 1;
          v80 = 2048;
          v81 = v55;
          v24 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_74;
        }
      }

LABEL_75:

      goto LABEL_76;
    }

    v25 = cached_content_for_protocol[7] + 1;
    cached_content_for_protocol[7] = v25;
    if (v25 == v25 << 31 >> 31)
    {
      goto LABEL_86;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    v27 = v8[7];
    *buf = 136446978;
    v75 = "nw_quic_report_race_result_on_queue";
    v76 = 2082;
    v77 = "association_cache->failure_count";
    v78 = 2048;
    v79 = 1;
    v80 = 2048;
    v81 = v27;
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (!__nwlog_fault(v28, &type, &v72))
    {
LABEL_83:
      if (v28)
      {
        free(v28);
      }

      v8[7] = -1;
      goto LABEL_86;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        v31 = v8[7];
        *buf = 136446978;
        v75 = "nw_quic_report_race_result_on_queue";
        v76 = 2082;
        v77 = "association_cache->failure_count";
        v78 = 2048;
        v79 = 1;
        v80 = 2048;
        v81 = v31;
        v32 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_81:
        _os_log_impl(&dword_181A37000, v29, v30, v32, buf, 0x2Au);
      }
    }

    else
    {
      if (v72 == 1)
      {
        v49 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        v30 = type;
        v50 = os_log_type_enabled(v29, type);
        if (v49)
        {
          if (v50)
          {
            v51 = v8[7];
            *buf = 136447234;
            v75 = "nw_quic_report_race_result_on_queue";
            v76 = 2082;
            v77 = "association_cache->failure_count";
            v78 = 2048;
            v79 = 1;
            v80 = 2048;
            v81 = v51;
            v82 = 2082;
            v83 = v49;
            _os_log_impl(&dword_181A37000, v29, v30, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v49);
          goto LABEL_83;
        }

        if (!v50)
        {
          goto LABEL_82;
        }

        v59 = v8[7];
        *buf = 136446978;
        v75 = "nw_quic_report_race_result_on_queue";
        v76 = 2082;
        v77 = "association_cache->failure_count";
        v78 = 2048;
        v79 = 1;
        v80 = 2048;
        v81 = v59;
        v32 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
        goto LABEL_81;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        v56 = v8[7];
        *buf = 136446978;
        v75 = "nw_quic_report_race_result_on_queue";
        v76 = 2082;
        v77 = "association_cache->failure_count";
        v78 = 2048;
        v79 = 1;
        v80 = 2048;
        v81 = v56;
        v32 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
        goto LABEL_81;
      }
    }

LABEL_82:

    goto LABEL_83;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v33 = gLogObj;
  os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v75 = "nw_quic_report_race_result_on_queue";
  v76 = 2048;
  v77 = 1;
  v78 = 2048;
  v79 = 48;
  v34 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v34))
  {
    free(v34);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v35 = gLogObj;
    *buf = 136446210;
    v75 = "nw_quic_report_race_result_on_queue";
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (!__nwlog_fault(v36, &type, &v72))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v37 = gLogObj;
      v38 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446210;
        v75 = "nw_quic_report_race_result_on_queue";
        v39 = "%{public}s called with null association_cache";
LABEL_54:
        v53 = v37;
        v54 = v38;
LABEL_55:
        _os_log_impl(&dword_181A37000, v53, v54, v39, buf, 0xCu);
      }
    }

    else
    {
      if (v72 == 1)
      {
        v43 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v37 = gLogObj;
        v44 = type;
        v45 = os_log_type_enabled(v37, type);
        if (v43)
        {
          if (v45)
          {
            *buf = 136446466;
            v75 = "nw_quic_report_race_result_on_queue";
            v76 = 2082;
            v77 = v43;
            _os_log_impl(&dword_181A37000, v37, v44, "%{public}s called with null association_cache, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v43);
          if (!v36)
          {
            goto LABEL_87;
          }

          goto LABEL_58;
        }

        if (!v45)
        {
          goto LABEL_56;
        }

        *buf = 136446210;
        v75 = "nw_quic_report_race_result_on_queue";
        v39 = "%{public}s called with null association_cache, no backtrace";
        v53 = v37;
        v54 = v44;
        goto LABEL_55;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v37 = gLogObj;
      v38 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446210;
        v75 = "nw_quic_report_race_result_on_queue";
        v39 = "%{public}s called with null association_cache, backtrace limit exceeded";
        goto LABEL_54;
      }
    }

LABEL_56:

    goto LABEL_57;
  }

  __break(1u);
}

uint64_t nw_protocol_copy_swift_tls_definition(double a1)
{
  v10 = *MEMORY[0x1E69E9840];
  Helper_x8__nwswifttls_copy_definition = gotLoadHelper_x8__nwswifttls_copy_definition(a1);
  if (!*(v2 + 2224))
  {
    return 0;
  }

  inited = nwswifttls_copy_definition_delayInitStub(Helper_x8__nwswifttls_copy_definition);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136446466;
    v7 = "nw_protocol_copy_swift_tls_definition_if_present";
    v8 = 2048;
    v9 = inited;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s SwiftTLS protocol definition %p", &v6, 0x16u);
  }

  return inited;
}

uint64_t sub_181D6099C()
{
  v1 = *(v0 + 128);
  v6[6] = *(v0 + 112);
  v6[7] = v1;
  v6[8] = *(v0 + 144);
  v7 = *(v0 + 160);
  v2 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v2;
  v3 = *(v0 + 96);
  v6[4] = *(v0 + 80);
  v6[5] = v3;
  v4 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v4;
  sub_181D09760(v6);
  return swift_deallocClassInstance();
}

void nw_masque_deallocate_options(nw_protocol_definition *a1, void **a2)
{
  if (*a2)
  {
    os_release(*a2);
    *a2 = 0;
  }

  v3 = a2[1];
  if (v3)
  {
    xpc_release(v3);
    a2[1] = 0;
  }

  v4 = a2[2];
  if (v4)
  {
    xpc_release(v4);
  }

  free(a2);
}

void nw_http3_deallocate_options(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2[7];
    a2[7] = 0;

    v4 = a2[8];
    a2[8] = 0;

    v5 = a2[9];
    a2[9] = 0;

    v6 = a2[10];
    a2[10] = 0;

    v7 = a2[11];
    a2[11] = 0;

    free(a2);
    return;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_http3_deallocate_options";
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
        v18 = "nw_http3_deallocate_options";
        v12 = "%{public}s called with null allocated_handle";
LABEL_18:
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
            v18 = "nw_http3_deallocate_options";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null allocated_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v14)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v18 = "nw_http3_deallocate_options";
        v12 = "%{public}s called with null allocated_handle, no backtrace";
        goto LABEL_18;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_http3_deallocate_options";
        v12 = "%{public}s called with null allocated_handle, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v9)
  {
    free(v9);
  }
}

xpc_object_t _nw_endpoint_copy_dictionary(void *a1)
{
  v1 = a1;
  v2 = sub_181D616F0(v1);

  return v2;
}

uint64_t nw_socket_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v60 = "nw_socket_remove_input_handler";
    v43 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (__nwlog_fault(v43, type, &v57))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type[0];
        if (os_log_type_enabled(v44, type[0]))
        {
          *buf = 136446210;
          v60 = "nw_socket_remove_input_handler";
          v46 = "%{public}s called with null protocol";
LABEL_105:
          _os_log_impl(&dword_181A37000, v44, v45, v46, buf, 0xCu);
        }
      }

      else if (v57 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v45 = type[0];
        v53 = os_log_type_enabled(v44, type[0]);
        if (backtrace_string)
        {
          if (v53)
          {
            *buf = 136446466;
            v60 = "nw_socket_remove_input_handler";
            v61 = 2082;
            v62 = backtrace_string;
            _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_106;
        }

        if (v53)
        {
          *buf = 136446210;
          v60 = "nw_socket_remove_input_handler";
          v46 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_105;
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v45 = type[0];
        if (os_log_type_enabled(v44, type[0]))
        {
          *buf = 136446210;
          v60 = "nw_socket_remove_input_handler";
          v46 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_105;
        }
      }
    }

LABEL_106:
    if (v43)
    {
      free(v43);
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
      v60 = "nw_socket_remove_input_handler";
      v9 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v57 = 0;
      if (!__nwlog_fault(v9, type, &v57))
      {
        goto LABEL_64;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_64;
        }

        *buf = 136446210;
        v60 = "nw_socket_remove_input_handler";
        v12 = "%{public}s called with null socket_handler";
      }

      else
      {
        if (v57 == 1)
        {
          v31 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          v33 = type[0];
          v34 = os_log_type_enabled(gLogObj, type[0]);
          if (v31)
          {
            if (v34)
            {
              *buf = 136446466;
              v60 = "nw_socket_remove_input_handler";
              v61 = 2082;
              v62 = v31;
              _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v31);
            goto LABEL_64;
          }

          if (!v34)
          {
LABEL_64:
            if (v9)
            {
              free(v9);
            }

LABEL_66:
            result = 0;
            if (v6)
            {
              return result;
            }

            goto LABEL_67;
          }

          *buf = 136446210;
          v60 = "nw_socket_remove_input_handler";
          v12 = "%{public}s called with null socket_handler, no backtrace";
          v35 = v32;
          v36 = v33;
LABEL_63:
          _os_log_impl(&dword_181A37000, v35, v36, v12, buf, 0xCu);
          goto LABEL_64;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_64;
        }

        *buf = 136446210;
        v60 = "nw_socket_remove_input_handler";
        v12 = "%{public}s called with null socket_handler, backtrace limit exceeded";
      }

      v35 = v10;
      v36 = v11;
      goto LABEL_63;
    }

    v8 = *a1[1].flow_id;
  }

  if (!a2)
  {
    v47 = a3;
    __nwlog_obj();
    *buf = 136446210;
    v60 = "__nw_protocol_get_output_handler";
    v48 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (__nwlog_fault(v48, type, &v57))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v49 = __nwlog_obj();
        v50 = type[0];
        if (os_log_type_enabled(v49, type[0]))
        {
          *buf = 136446210;
          v60 = "__nw_protocol_get_output_handler";
          v51 = "%{public}s called with null protocol";
LABEL_111:
          _os_log_impl(&dword_181A37000, v49, v50, v51, buf, 0xCu);
        }
      }

      else if (v57 == 1)
      {
        v56 = v8;
        v54 = __nw_create_backtrace_string();
        v49 = __nwlog_obj();
        v50 = type[0];
        v55 = os_log_type_enabled(v49, type[0]);
        if (v54)
        {
          if (v55)
          {
            *buf = 136446466;
            v60 = "__nw_protocol_get_output_handler";
            v61 = 2082;
            v62 = v54;
            _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v54);
          v8 = v56;
          goto LABEL_112;
        }

        v8 = v56;
        if (v55)
        {
          *buf = 136446210;
          v60 = "__nw_protocol_get_output_handler";
          v51 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_111;
        }
      }

      else
      {
        v49 = __nwlog_obj();
        v50 = type[0];
        if (os_log_type_enabled(v49, type[0]))
        {
          *buf = 136446210;
          v60 = "__nw_protocol_get_output_handler";
          v51 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_111;
        }
      }
    }

LABEL_112:
    if (v48)
    {
      free(v48);
    }

    a3 = v47;
    a2 = 0;
    goto LABEL_32;
  }

  output_handler = a2->output_handler;
  if (output_handler == a1)
  {
    v14 = output_handler->handle;
    if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
    {
      v15 = output_handler[1].callbacks;
      if (v15)
      {
        v16 = (v15 - 1);
        output_handler[1].callbacks = v16;
        if (!v16)
        {
          v17 = a2;
          v18 = a3;
          v19 = *output_handler[1].flow_id;
          if (v19)
          {
            *output_handler[1].flow_id = 0;
            v19[2](v19);
            _Block_release(v19);
          }

          if (output_handler[1].flow_id[8])
          {
            v20 = *output_handler[1].flow_id;
            if (v20)
            {
              _Block_release(v20);
            }
          }

          free(output_handler);
          a3 = v18;
          a2 = v17;
        }
      }
    }

    a2->output_handler = 0;
  }

LABEL_32:
  if (v8[2].callbacks != a2)
  {
    goto LABEL_66;
  }

  v21 = a3;
  v22 = (&v8[6].callbacks + 5);
  if ((*(&v8[6].callbacks + 5) & 0x44) == 4 && LODWORD(v8[4].output_handler) == 2)
  {
    *type = 1;
    if (setsockopt(HIDWORD(v8[4].callbacks), 0xFFFF, 128, type, 8u) < 0)
    {
      v23 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v24 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v60 = "nw_protocol_socket_reset_linger";
        v61 = 2082;
        v62 = &v8[6].output_handler + 4;
        v63 = 1024;
        v64 = v23;
        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_LINGER failed %{darwin.errno}d", buf, 0x1Cu);
      }
    }
  }

  nw_socket_cancel_input_source(&v8[1].output_handler, a2);
  v26 = v8[3].handle;
  if (v26)
  {
    nw_queue_cancel_source(v8[3].handle, v25);
    v8[3].handle = 0;
    if ((*v22 & 0x800) == 0)
    {
      nw_queue_resume_source(v26, v25);
      *v22 |= 0x800u;
    }
  }

  name = v8[3].identifier->name;
  if (name)
  {
    nw_queue_cancel_source(name, v25);
    v8[3].identifier = 0;
  }

  nw::retained_ptr<nw_protocol *>::~retained_ptr(&v8[2].callbacks);
  v8[2].callbacks = 0;
  LOBYTE(v8[2].output_handler) |= 1u;
  if (v21)
  {
    nw_protocol_socket_cancel(&v8[1].output_handler);
    if (v8[3].output_handler_context)
    {
      default_input_handler = v8[3].default_input_handler;
      if (default_input_handler)
      {
        os_release(default_input_handler);
      }
    }

    v8[3].default_input_handler = 0;
    if (v8[2].output_handler_context)
    {
      v29 = v8[2].default_input_handler;
      if (v29)
      {
        os_release(v29);
      }
    }

    v8[2].default_input_handler = 0;
    nw::retained_ptr<nw_protocol *>::~retained_ptr(&v8[2].callbacks);
    nw_protocol_destroy(&v8[1].output_handler, 0);
  }

  result = 1;
  if ((v6 & 1) == 0)
  {
LABEL_67:
    v37 = v3->handle;
    if (v37 == &nw_protocol_ref_counted_handle || v37 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v38 = v3[1].callbacks;
      if (v38)
      {
        v39 = (v38 - 1);
        v3[1].callbacks = v39;
        if (!v39)
        {
          v40 = result;
          v41 = *v3[1].flow_id;
          if (v41)
          {
            *v3[1].flow_id = 0;
            v41[2](v41);
            _Block_release(v41);
          }

          if (v3[1].flow_id[8])
          {
            v42 = *v3[1].flow_id;
            if (v42)
            {
              _Block_release(v42);
            }
          }

          free(v3);
          return v40;
        }
      }
    }
  }

  return result;
}

xpc_object_t sub_181D616F0(uint64_t a1)
{
  v36[4] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = xpc_dictionary_create(0, 0, 0);
  v36[0] = v5;
  v6 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(a1 + v6, v4, type metadata accessor for Endpoint.EndpointType);
  v7 = qword_182B07720[swift_getEnumCaseMultiPayload()];
  swift_unknownObjectRetain();
  sub_181AB7264(v4, type metadata accessor for Endpoint.EndpointType);
  xpc_dictionary_set_uint64(v5, "type", v7);
  swift_unknownObjectRelease();
  if ((*(a1 + OBJC_IVAR____TtC7Network8Endpoint_flags) & 8) != 0)
  {
    xpc_dictionary_set_BOOL(v5, "is_local_domain", 1);
  }

  if ((*(a1 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort + 2) & 1) == 0)
  {
    xpc_dictionary_set_uint64(v5, "alternate_port", *(a1 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort));
  }

  xpc_dictionary_set_value(v5, "signature", *(a1 + OBJC_IVAR____TtC7Network8Endpoint_signature));
  v8 = OBJC_IVAR____TtC7Network8Endpoint__publicKeys;
  if (!*(*(a1 + OBJC_IVAR____TtC7Network8Endpoint__publicKeys) + 16))
  {
    goto LABEL_35;
  }

  empty = xpc_array_create_empty();
  v9 = *(a1 + v8);
  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_34;
  }

  v32 = v5;
  v33 = a1;

  v11 = 0;
  v12 = (v9 + 40);
  do
  {
    if (v11 >= *(v9 + 16))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    v16 = *(v12 - 1);
    v15 = *v12;
    v17 = *v12 >> 62;
    if (v17 > 1)
    {
      if (v17 != 2)
      {
        memset(bytes, 0, 14);
        v13 = 0;
LABEL_9:
        v14 = xpc_data_create(bytes, v13);
        xpc_array_append_value(empty, v14);
        swift_unknownObjectRelease();
LABEL_10:
        sub_181C1F2E4(v16, v15);
        goto LABEL_11;
      }

      v18 = *(v16 + 16);
      v19 = *(v16 + 24);

      v20 = sub_182AD1D58();
      if (v20)
      {
        v21 = sub_182AD1D88();
        if (__OFSUB__(v18, v21))
        {
          goto LABEL_39;
        }

        v20 += v18 - v21;
      }

      v22 = __OFSUB__(v19, v18);
      v23 = v19 - v18;
      if (v22)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (!v17)
      {
        bytes[0] = *(v12 - 1);
        LOWORD(bytes[1]) = v15;
        BYTE2(bytes[1]) = BYTE2(v15);
        BYTE3(bytes[1]) = BYTE3(v15);
        BYTE4(bytes[1]) = BYTE4(v15);
        v13 = BYTE6(v15);
        BYTE5(bytes[1]) = BYTE5(v15);
        goto LABEL_9;
      }

      v23 = (v16 >> 32) - v16;
      if (v16 >> 32 < v16)
      {
        goto LABEL_37;
      }

      v24 = sub_182AD1D58();
      if (!v24)
      {
        sub_182AD1D78();
        goto LABEL_10;
      }

      v25 = v24;
      v26 = sub_182AD1D88();
      if (__OFSUB__(v16, v26))
      {
        goto LABEL_40;
      }

      v20 = (v16 - v26 + v25);
    }

    v27 = sub_182AD1D78();
    if (!v20)
    {
      goto LABEL_10;
    }

    if (v27 >= v23)
    {
      v28 = v23;
    }

    else
    {
      v28 = v27;
    }

    v29 = xpc_data_create(v20, v28);
    xpc_array_append_value(empty, v29);
    sub_181C1F2E4(v16, v15);
    swift_unknownObjectRelease();
LABEL_11:
    ++v11;
    v12 += 2;
  }

  while (v10 != v11);

  v5 = v32;
  a1 = v33;
LABEL_34:
  xpc_dictionary_set_value(v5, "public_keys", empty);
  swift_unknownObjectRelease();
LABEL_35:
  v30 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_lock);
  os_unfair_lock_lock(v30 + 4);
  sub_181D61B2C(a1, v36);
  os_unfair_lock_unlock(v30 + 4);
  return v5;
}

uint64_t sub_181D61B2C(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(a1 + v10, v9, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v17 = *(v9 + 1);
      v38[0] = *v9;
      v38[1] = v17;
      v19 = *v9;
      v18 = *(v9 + 1);
      v39[0] = *(v9 + 2);
      *(v39 + 12) = *(v9 + 44);
      v36[0] = v19;
      v36[1] = v18;
      v37[0] = *(v9 + 2);
      *(v37 + 12) = *(v9 + 44);
      sub_181D644AC(v36, a2);
      v36[0] = v38[0];

      sub_181D62120(v36, a2);
      sub_181AA57B4(v38);
LABEL_14:
    }

    v12 = *v9;
    if (EnumCaseMultiPayload == 1)
    {
      *&v38[0] = v12;
      sub_1822C2370(v38, a2);
    }

    else
    {
      v25 = *a2;
      v26 = sub_182AD3048();
      xpc_dictionary_set_string(v25, "bonjour_name", (v26 + 32));

      v27 = sub_182AD3048();
      xpc_dictionary_set_string(v25, "bonjour_type", (v27 + 32));

      v28 = sub_182AD3048();
      xpc_dictionary_set_string(v25, "bonjour_domain", (v28 + 32));
    }

    v29 = *(v12 + 24);
    *&v38[0] = *(v12 + 16);
    *(&v38[0] + 1) = v29;

    sub_181D62120(v38, a2);
LABEL_13:

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v20 = *v9;
    v21 = *(v9 + 1);
    v22 = *(v9 + 16);
    v23 = *a2;
    v24 = sub_182AD3048();
    xpc_dictionary_set_string(v23, "hostname", (v24 + 32));

    xpc_dictionary_set_uint64(v23, "port", v22);
    *&v38[0] = v20;
    *(&v38[0] + 1) = v21;

    sub_181D62120(v38, a2);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v13 = *v9;
    v14 = *(v9 + 1);
    v15 = *a2;
    v16 = sub_182AD3048();
    xpc_dictionary_set_string(v15, "srv_name", (v16 + 32));

    *&v38[0] = v13;
    *(&v38[0] + 1) = v14;

    sub_181D62120(v38, a2);
LABEL_10:

    goto LABEL_13;
  }

  sub_181B2BEE4(v9, v6);
  v31 = *a2;
  v32 = sub_182AD1F98();
  v33 = CFURLGetBytes(v32, 0, 0);
  MEMORY[0x1EEE9AC00](v33);
  *&v36[-1] = v32;
  sub_182AD30D8();

  v34 = sub_182AD3048();

  xpc_dictionary_set_string(v31, "url", (v34 + 32));

  v35 = v6[1];
  *&v38[0] = *v6;
  *(&v38[0] + 1) = v35;

  sub_181D62120(v38, a2);

  return sub_181AB7264(v6, type metadata accessor for URLEndpoint);
}

void nw_socket_cancel_input_source(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    nw_queue_cancel_source(*(a1 + 128), a2);
    *(a1 + 128) = 0;
    if ((*(a1 + 317) & 0x400) != 0)
    {
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
      }

      if (_nw_signposts_enabled == 1)
      {
        if (kdebug_is_enabled())
        {
          kdebug_trace();
        }
      }

      nw_queue_resume_source(v2, v4);
      *(a1 + 317) &= ~0x400u;
    }
  }
}

void nw_protocol_socket_cancel(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    os_release(v2);
    *(a1 + 96) = 0;
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    os_release(v3);
    *(a1 + 104) = 0;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    nw_tcp_set_callbacks(v4, 0, 0);
    v5 = *(a1 + 72);
    if (v5)
    {
      os_release(v5);
      *(a1 + 72) = 0;
    }
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    xpc_release(v6);
    *(a1 + 120) = 0;
  }

  nw_socket_release_frame_array((a1 + 280));
  nw_socket_release_frame_array((a1 + 232));
  nw_socket_release_frame_array((a1 + 248));
  nw_socket_release_frame_array((a1 + 216));
  nw_socket_release_frame_array((a1 + 264));
  nw_socket_release_frame_array((a1 + 296));
  v7 = *(a1 + 160);
  if (v7)
  {
    os_release(v7);
    *(a1 + 160) = 0;
  }

  *(a1 + 317) |= 0x4000u;
}

void sub_181D62120(uint64_t *a1, xpc_object_t *a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  if (v4)
  {
    if (*(v4 + 40))
    {
      v5 = *a2;
      v6 = sub_182AD3048();
      xpc_dictionary_set_string(v5, "device_id", (v6 + 32));
    }

    v7 = *(v4 + 16);
    if (v7)
    {
      v8 = *(v4 + 24);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_182AE7580;
      aBlock[4] = sub_181FB0158;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18224CA7C;
      aBlock[3] = &block_descriptor_37;
      v10 = _Block_copy(aBlock);
      sub_181E6550C(v7);
      swift_unknownObjectRetain();

      nw_txt_record_access_bytes(v8, v10);
      _Block_release(v10);
      swift_unknownObjectRelease();
      swift_beginAccess();
      v11 = *(v9 + 16);
      v12 = *(v9 + 24);
      sub_181F49B58(v11, v12);

      sub_1822C2508(v11, v12, a2);
      sub_181AB612C(v7);
      sub_181C1F2E4(v11, v12);
    }
  }

  if (v3)
  {
    *uuid = v3;

    sub_182092204();
    v14 = v13;

    xpc_dictionary_set_value(*a2, "interface", v14);
    swift_unknownObjectRelease();
  }

  if (v4)
  {
    if ((*(v4 + 64) & 1) == 0)
    {
      v16 = *(v4 + 48);
      v15 = *(v4 + 56);
      *uuid = v16;
      v18 = v15;
      xpc_dictionary_set_uuid(*a2, "agent_identifier", uuid);
    }
  }
}

uint64_t sub_181D623E4()
{
  sub_181C1F2E4(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t __NWUtilsCreateNSDictionaryFromXPCDictionary_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    v36 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "NWUtilsCreateNSDictionaryFromXPCDictionary_block_invoke";
    v37 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v37, &type, &v48))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *applier = 136446210;
        *&applier[4] = "NWUtilsCreateNSDictionaryFromXPCDictionary_block_invoke";
        v40 = "%{public}s called with null key";
LABEL_67:
        _os_log_impl(&dword_181A37000, v38, v39, v40, applier, 0xCu);
      }
    }

    else if (v48 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type;
      v43 = os_log_type_enabled(v38, type);
      if (backtrace_string)
      {
        if (v43)
        {
          *applier = 136446466;
          *&applier[4] = "NWUtilsCreateNSDictionaryFromXPCDictionary_block_invoke";
          *&applier[12] = 2082;
          *&applier[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null key, dumping backtrace:%{public}s", applier, 0x16u);
        }

        free(backtrace_string);
LABEL_69:
        if (!v37)
        {
          goto LABEL_38;
        }

LABEL_70:
        free(v37);
        goto LABEL_38;
      }

      if (v43)
      {
        *applier = 136446210;
        *&applier[4] = "NWUtilsCreateNSDictionaryFromXPCDictionary_block_invoke";
        v40 = "%{public}s called with null key, no backtrace";
        goto LABEL_67;
      }
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *applier = 136446210;
        *&applier[4] = "NWUtilsCreateNSDictionaryFromXPCDictionary_block_invoke";
        v40 = "%{public}s called with null key, backtrace limit exceeded";
        goto LABEL_67;
      }
    }

LABEL_68:

    goto LABEL_69;
  }

  if (!v5)
  {
    v41 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "NWUtilsCreateNSDictionaryFromXPCDictionary_block_invoke";
    v37 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v37, &type, &v48))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *applier = 136446210;
        *&applier[4] = "NWUtilsCreateNSDictionaryFromXPCDictionary_block_invoke";
        v40 = "%{public}s called with null value";
        goto LABEL_67;
      }
    }

    else
    {
      if (v48 == 1)
      {
        v44 = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v39 = type;
        v45 = os_log_type_enabled(v38, type);
        if (v44)
        {
          if (v45)
          {
            *applier = 136446466;
            *&applier[4] = "NWUtilsCreateNSDictionaryFromXPCDictionary_block_invoke";
            *&applier[12] = 2082;
            *&applier[14] = v44;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null value, dumping backtrace:%{public}s", applier, 0x16u);
          }

          free(v44);
          if (!v37)
          {
            goto LABEL_38;
          }

          goto LABEL_70;
        }

        if (!v45)
        {
          goto LABEL_68;
        }

        *applier = 136446210;
        *&applier[4] = "NWUtilsCreateNSDictionaryFromXPCDictionary_block_invoke";
        v40 = "%{public}s called with null value, no backtrace";
        goto LABEL_67;
      }

      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *applier = 136446210;
        *&applier[4] = "NWUtilsCreateNSDictionaryFromXPCDictionary_block_invoke";
        v40 = "%{public}s called with null value, backtrace limit exceeded";
        goto LABEL_67;
      }
    }

    goto LABEL_68;
  }

  Class = object_getClass(v5);
  if (Class == MEMORY[0x1E69E9E50])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v11 = MEMORY[0x1E695DF70];
    v12 = v6;
    v13 = [v11 array];
    *applier = MEMORY[0x1E69E9820];
    *&applier[8] = 3221225472;
    *&applier[16] = __NWUtilsCreateNSArrayFromXPCArray_block_invoke;
    v51 = &unk_1E6A3D300;
    v14 = v13;
    v52 = v14;
    xpc_array_apply(v12, applier);

    if (!xpc_array_get_count(v12))
    {
LABEL_36:
      v25 = *(a1 + 32);
      v26 = v14;
      v27 = v10;
      goto LABEL_37;
    }

    v15 = xpc_array_get_value(v12, 0);
    v16 = object_getClass(v15);
    if (v16 == MEMORY[0x1E69E9EB0])
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = @"INT64-";
    }

    else if (v16 == MEMORY[0x1E69E9F18])
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = @"UINT64-";
    }

    else
    {
      if (v16 != MEMORY[0x1E69E9E88])
      {
        if (v16 != MEMORY[0x1E69E9E58])
        {
          v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
LABEL_35:
          v35 = v17;

          v10 = v35;
          goto LABEL_36;
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%s", @"BOOL-", a2];
        v17 = LABEL_34:;
        goto LABEL_35;
      }

      v30 = MEMORY[0x1E696AEC0];
      v31 = @"DOUBLE-";
    }

    [v30 stringWithFormat:@"%@%s", v31, a2];
    goto LABEL_34;
  }

  if (Class != MEMORY[0x1E69E9E80])
  {
    v8 = object_getClass(v6);
    if (v8 == MEMORY[0x1E69E9EB0])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"INT64-";
    }

    else if (v8 == MEMORY[0x1E69E9F18])
    {
      v28 = MEMORY[0x1E696AEC0];
      v29 = @"UINT64-";
    }

    else
    {
      if (v8 != MEMORY[0x1E69E9E88])
      {
        if (v8 != MEMORY[0x1E69E9E58])
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
LABEL_26:
          v32 = v9;
          NSObjectFromSimpleXPCObject = NWUtilsCreateNSObjectFromSimpleXPCObject(v6);
          v34 = NSObjectFromSimpleXPCObject;
          if (v32)
          {
            if (NSObjectFromSimpleXPCObject)
            {
              [*(a1 + 32) setObject:NSObjectFromSimpleXPCObject forKeyedSubscript:v32];
            }
          }

          goto LABEL_38;
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%s", @"BOOL-", a2];
        v9 = LABEL_25:;
        goto LABEL_26;
      }

      v28 = MEMORY[0x1E696AEC0];
      v29 = @"DOUBLE-";
    }

    [v28 stringWithFormat:@"%@%s", v29, a2];
    goto LABEL_25;
  }

  v18 = MEMORY[0x1E695DF90];
  v19 = v6;
  v20 = [v18 dictionary];
  *applier = MEMORY[0x1E69E9820];
  *&applier[8] = 3221225472;
  *&applier[16] = __NWUtilsCreateNSDictionaryFromXPCDictionary_block_invoke;
  v51 = &unk_1E6A39980;
  v10 = v20;
  v52 = v10;
  xpc_dictionary_apply(v19, applier);

  v21 = *(a1 + 32);
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  if (v14)
  {
    goto LABEL_19;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v22 = gLogObj;
  os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
  *applier = 136446466;
  *&applier[4] = "nw_nsstring";
  *&applier[12] = 2080;
  *&applier[14] = a2;
  LODWORD(v47) = 22;
  v46 = applier;
  v23 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v23);
  if (!result)
  {
    free(v23);
LABEL_19:
    v25 = v21;
    v26 = v10;
    v27 = v14;
LABEL_37:
    [v25 setObject:v26 forKeyedSubscript:{v27, v46, v47}];

LABEL_38:
    return 1;
  }

  __break(1u);
  return result;
}

void __nw_protocol_instance_schedule_wakeup_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = WeakRetained[33];
    if (v1)
    {
      if ((*(WeakRetained + 412) & 0x10) != 0)
      {
        (*(v1 + 16))(v1, WeakRetained);
      }
    }
  }
}

id NWUtilsCreateNSObjectFromSimpleXPCObject(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  Class = object_getClass(v1);
  if (Class == MEMORY[0x1E69E9E58])
  {
    value = xpc_BOOL_get_value(v1);
    v12 = MEMORY[0x1E695E110];
    if (value)
    {
      v12 = MEMORY[0x1E695E118];
    }

    v13 = v12;
  }

  else if (Class == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(v1);
    if (!string_ptr)
    {
LABEL_39:
      v13 = 0;
      goto LABEL_40;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string_ptr];
  }

  else if (Class == MEMORY[0x1E69E9E70])
  {
    v15 = MEMORY[0x1E695DEF0];
    bytes_ptr = xpc_data_get_bytes_ptr(v1);
    v13 = [v15 dataWithBytes:bytes_ptr length:xpc_data_get_length(v1)];
  }

  else if (Class == MEMORY[0x1E69E9EB0])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:xpc_int64_get_value(v1)];
  }

  else if (Class == MEMORY[0x1E69E9F18])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:xpc_uint64_get_value(v1)];
  }

  else if (Class == MEMORY[0x1E69E9E88])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:xpc_double_get_value(v1)];
  }

  else
  {
    if (Class != MEMORY[0x1E69E9F20])
    {
      v3 = MEMORY[0x1E69E9EE0];
      v4 = Class;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = v5;
      if (v4 == v3)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          v23 = "NWUtilsCreateNSObjectFromSimpleXPCObject";
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s Cannot encode pointer types, skipping value", buf, 0xCu);
        }

        goto LABEL_39;
      }

      *buf = 136446466;
      v23 = "NWUtilsCreateNSObjectFromSimpleXPCObject";
      v24 = 2048;
      v25 = v4;
      v7 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v20 = 0;
      if (!__nwlog_fault(v7, &type, &v20))
      {
        goto LABEL_37;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446466;
          v23 = "NWUtilsCreateNSObjectFromSimpleXPCObject";
          v24 = 2048;
          v25 = v4;
          v10 = "%{public}s Cannot handle XPC type %p";
LABEL_35:
          _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0x16u);
        }
      }

      else if (v20 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v18 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446722;
            v23 = "NWUtilsCreateNSObjectFromSimpleXPCObject";
            v24 = 2048;
            v25 = v4;
            v26 = 2082;
            v27 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s Cannot handle XPC type %p, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_37;
        }

        if (v18)
        {
          *buf = 136446466;
          v23 = "NWUtilsCreateNSObjectFromSimpleXPCObject";
          v24 = 2048;
          v25 = v4;
          v10 = "%{public}s Cannot handle XPC type %p, no backtrace";
          goto LABEL_35;
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446466;
          v23 = "NWUtilsCreateNSObjectFromSimpleXPCObject";
          v24 = 2048;
          v25 = v4;
          v10 = "%{public}s Cannot handle XPC type %p, backtrace limit exceeded";
          goto LABEL_35;
        }
      }

LABEL_37:
      if (v7)
      {
        free(v7);
      }

      goto LABEL_39;
    }

    v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:xpc_uuid_get_bytes(v1)];
  }

LABEL_40:

  return v13;
}

void nw_protocol_instance_update_available_paths(NWConcrete_nw_protocol_instance *a1)
{
  v102 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v60 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_update_available_paths";
    v47 = _os_log_send_and_compose_impl();

    LOBYTE(__buf[0]) = 16;
    LOBYTE(v89[0]) = 0;
    if (__nwlog_fault(v47, __buf, v89))
    {
      if (LOBYTE(__buf[0]) == 17)
      {
        v48 = __nwlog_obj();
        v61 = __buf[0];
        if (os_log_type_enabled(v48, __buf[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_update_available_paths";
          _os_log_impl(&dword_181A37000, v48, v61, "%{public}s called with null instance", buf, 0xCu);
        }

        goto LABEL_78;
      }

      if (LOBYTE(v89[0]) != 1)
      {
        v48 = __nwlog_obj();
        v65 = __buf[0];
        if (os_log_type_enabled(v48, __buf[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_update_available_paths";
          _os_log_impl(&dword_181A37000, v48, v65, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_78;
      }

      backtrace_string = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v63 = __buf[0];
      v64 = os_log_type_enabled(v48, __buf[0]);
      if (!backtrace_string)
      {
        if (v64)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_instance_update_available_paths";
          _os_log_impl(&dword_181A37000, v48, v63, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }

        goto LABEL_78;
      }

      if (v64)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_instance_update_available_paths";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v48, v63, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_79:
    if (!v47)
    {
      goto LABEL_57;
    }

LABEL_80:
    free(v47);
    goto LABEL_57;
  }

  if (!v1->parent_definition->extended_state->var27)
  {
    goto LABEL_57;
  }

  if (v1->flow_registration)
  {
    goto LABEL_4;
  }

  internal = nw_hash_table_create_internal(5u, 160, nw_protocol_get_key, nw_protocol_key_hash, nw_protocol_matches_key, 0, 0);
  if (internal)
  {
    *(internal + 56) &= ~2u;
    v2->flow_registration = internal;
    if (v2->wakeup_block && *&v2[-1].log_str[25])
    {
      __buf[0] = 0;
      arc4random_buf(__buf, 8uLL);
      LOBYTE(v89[0]) = 0;
      v15 = nw_hash_table_add_object(v2->flow_registration, __buf[0], v89);
      if (LOBYTE(v89[0]) == 1)
      {
        v16 = v15;
        if (v15)
        {
          v15[10] = 0u;
          v15[11] = 0u;
          v15[8] = 0u;
          v15[9] = 0u;
          v15[6] = 0u;
          v15[7] = 0u;
          v15[4] = 0u;
          v15[5] = 0u;
          v15[2] = 0u;
          v15[3] = 0u;
          v17 = nw_path_copy_interface(v2->wakeup_block);
          v18 = *(v16 + 6);
          *(v16 + 6) = v17;

          *(v16 + 44) = 3;
          v19 = *&v2[-1].log_str[25];
          if (v19)
          {
            v20 = *(v19 + 40);
            v21 = *&v2[-1].log_str[25];
            if (v20 != &nw_protocol_ref_counted_handle)
            {
              if (v20 != &nw_protocol_ref_counted_additional_handle)
              {
                goto LABEL_26;
              }

              v21 = *(v19 + 64);
              if (!v21)
              {
                goto LABEL_27;
              }
            }

            v55 = *(v21 + 88);
            if (v55)
            {
              *(v21 + 88) = v55 + 1;
            }

            v22 = 1;
            LOBYTE(v21) = -1;
            goto LABEL_85;
          }

LABEL_26:
          LOBYTE(v21) = 0;
LABEL_27:
          v22 = 0;
LABEL_85:
          *buf = v19;
          buf[8] = v21;
          v56 = *(v16 + 72);
          if (v56)
          {
            nw::release_if_needed<nw_protocol *>(v16 + 8);
            v56 = *(v16 + 72);
          }

          *(v16 + 8) = v19;
          *(v16 + 72) = v22 | v56 & 0xFE;
          *(v16 + 185) = *(v16 + 185) & 0xE7 | 0x10;
          if ((SBYTE5(v2->flow_in_connected) & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v57 = gLogObj;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              v58 = *(v16 + 6);
              *buf = 136447234;
              *&buf[4] = "nw_protocol_instance_update_available_paths";
              *&buf[12] = 2082;
              *&buf[14] = &v2->flow_in_connected + 7;
              *&buf[22] = 2080;
              v100 = " ";
              *v101 = 2048;
              *&v101[2] = __buf[0];
              *&v101[10] = 2112;
              *&v101[12] = v58;
              _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAdded path %lx as primary path over %@", buf, 0x34u);
            }
          }

          v3 = __buf[0];
          *(v16 + 19) = 0;
          tqh_last = v2->pending_inbound_frames.tqh_last;
          v2->current_path = v3;
          v2->paths_table = v3;
          *(v16 + 20) = v16 + 152;
          if (tqh_last)
          {
            *(v16 + 19) = tqh_last;
            *(v2->pending_inbound_frames.tqh_last + 5) = v16 + 152;
            *(v16 + 20) = *&v2->pending_inbound_frame_count;
            v2->pending_inbound_frames.tqh_last = 0;
            *&v2->pending_inbound_frame_count = &v2->pending_inbound_frames.tqh_last;
          }

          goto LABEL_5;
        }
      }

      if ((SBYTE5(v2->flow_in_connected) & 0x80000000) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v53 = gLogObj;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_update_available_paths";
          *&buf[12] = 2082;
          *&buf[14] = &v2->flow_in_connected + 7;
          *&buf[22] = 2080;
          v100 = " ";
          *v101 = 2048;
          *&v101[2] = __buf[0];
          _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to add path %lx to paths table", buf, 0x2Au);
        }
      }
    }

LABEL_4:
    v3 = 0;
LABEL_5:
    if ((SBYTE5(v2->flow_in_connected) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_instance_update_available_paths";
        *&buf[12] = 2082;
        *&buf[14] = &v2->flow_in_connected + 7;
        *&buf[22] = 2080;
        v100 = " ";
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sExisting paths:", buf, 0x20u);
      }
    }

    flow_registration = v2->flow_registration;
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke;
    v97[3] = &unk_1E6A3CDF8;
    v6 = v2;
    v98 = v6;
    nw_hash_table_apply(flow_registration, v97);
    v7 = v6[36];
    if (v7)
    {
      if ((SBYTE5(v2->flow_in_connected) & 0x80000000) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_instance_update_available_paths";
          *&buf[12] = 2082;
          *&buf[14] = v6 + 415;
          *&buf[22] = 2080;
          v100 = " ";
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sInterface options:", buf, 0x20u);
        }

        v7 = v6[36];
      }

      v95[0] = MEMORY[0x1E69E9820];
      v95[1] = 3221225472;
      v95[2] = ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_249;
      v95[3] = &unk_1E6A2CE90;
      v96 = v6;
      nw_path_enumerate_interface_options_with_details(v7, v95);

      v7 = v6[36];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v100 = __Block_byref_object_copy__12441;
    *v101 = __Block_byref_object_dispose__12442;
    *&v101[8] = 0;
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_253;
    v92[3] = &unk_1E6A2CEB8;
    v94 = buf;
    v9 = v6;
    v93 = v9;
    _nw_path_enumerate_network_agents(v7, v92);
    v10 = *(*&buf[8] + 40);
    if (v10)
    {
      v11 = *(v10 + 8);
      v12 = v11;
      if (v11)
      {
        index = _nw_interface_get_index(v11);
      }

      else
      {
        index = 0;
      }
    }

    else
    {
      index = 0;
      v12 = 0;
    }

    v23 = xpc_array_create(0, 0);
    v24 = v6[36];
    if (v24)
    {
      __buf[0] = 0;
      __buf[1] = __buf;
      __buf[2] = 0x2020000000;
      __buf[3] = 0;
      v89[0] = 0;
      v89[1] = v89;
      v89[2] = 0x2020000000;
      v90 = 1;
      v87[0] = 0;
      v87[1] = v87;
      v87[2] = 0x2020000000;
      v88 = 0;
      v25 = v24;
      v26 = _nw_path_copy_endpoint(v25);

      v27 = v6[36];
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_255;
      v77[3] = &unk_1E6A2CF08;
      v78 = v9;
      v86 = index;
      v82 = buf;
      v79 = v12;
      v80 = v26;
      v81 = v23;
      v83 = v89;
      v84 = __buf;
      v85 = v87;
      v28 = v26;
      nw_path_enumerate_interface_options_with_details(v27, v77);

      _Block_object_dispose(v87, 8);
      _Block_object_dispose(v89, 8);
      _Block_object_dispose(__buf, 8);
    }

    v29 = xpc_array_create(0, 0);
    if (v6[36])
    {
      v30 = v2->flow_registration;
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_257;
      v72[3] = &unk_1E6A2CF58;
      v73 = v9;
      v74 = v12;
      v76 = index;
      v75 = v29;
      nw_hash_table_apply(v30, v72);
    }

    if (v3)
    {
      v31 = v9;
      v32 = v31;
      var27 = v2->parent_definition->extended_state->var27;
      if (var27)
      {
        var27(v31, v3, 3, v31[39] == v3);
      }
    }

    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_258;
    applier[3] = &unk_1E6A2CF80;
    v71 = v3;
    v34 = v9;
    v70 = v34;
    xpc_array_apply(v23, applier);
    if (xpc_array_get_count(v29))
    {
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_2_259;
      v66[3] = &unk_1E6A3D760;
      v67 = v29;
      v68 = v34;
      nw_protocol_instance_async(v68, v66);
    }

    should_fallback = nw_path_should_fallback(v6[36], 1);
    v36 = nw_path_fallback_is_weak(v6[36]);
    v37 = v36;
    v38 = BYTE5(v2->flow_in_connected);
    if (should_fallback == ((v38 & 0x10) == 0) || ((v36 ^ ((v38 & 0x20) == 0)) & 1) == 0)
    {
      if (should_fallback)
      {
        v39 = 16;
      }

      else
      {
        v39 = 0;
      }

      v40 = v38 & 0xCF;
      if (v36)
      {
        v41 = 32;
      }

      else
      {
        v41 = 0;
      }

      BYTE5(v2->flow_in_connected) = v41 | v39 | v40;
      fallback_interface_index = nw_path_get_fallback_interface_index(v6[36]);
      if (fallback_interface_index < 0)
      {
        v44 = 0;
      }

      else
      {
        if (nw_context_copy_implicit_context::onceToken[0] != -1)
        {
          dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
        }

        v43 = nw_context_copy_implicit_context::implicit_context;
        v44 = nw_path_copy_interface_with_generation(v43, fallback_interface_index, 0);
      }

      var28 = v2->parent_definition->extended_state->var28;
      if (var28)
      {
        var28(v34, v44, should_fallback, v37);
      }
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_57;
  }

  v2->flow_registration = 0;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v46 = gLogObj;
  *buf = 136446210;
  *&buf[4] = "nw_protocol_instance_update_available_paths";
  v47 = _os_log_send_and_compose_impl();

  LOBYTE(__buf[0]) = 16;
  LOBYTE(v89[0]) = 0;
  if (!__nwlog_fault(v47, __buf, v89))
  {
    goto LABEL_79;
  }

  if (LOBYTE(__buf[0]) == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v48 = gLogObj;
    v49 = __buf[0];
    if (os_log_type_enabled(v48, __buf[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_update_available_paths";
      _os_log_impl(&dword_181A37000, v48, v49, "%{public}s nw_hash_table_create_no_lock failed", buf, 0xCu);
    }

LABEL_78:

    goto LABEL_79;
  }

  if (LOBYTE(v89[0]) != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v48 = gLogObj;
    v54 = __buf[0];
    if (os_log_type_enabled(v48, __buf[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_update_available_paths";
      _os_log_impl(&dword_181A37000, v48, v54, "%{public}s nw_hash_table_create_no_lock failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_78;
  }

  v50 = __nw_create_backtrace_string();
  v48 = __nwlog_obj();
  v51 = __buf[0];
  v52 = os_log_type_enabled(v48, __buf[0]);
  if (!v50)
  {
    if (v52)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_instance_update_available_paths";
      _os_log_impl(&dword_181A37000, v48, v51, "%{public}s nw_hash_table_create_no_lock failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_78;
  }

  if (v52)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_instance_update_available_paths";
    *&buf[12] = 2082;
    *&buf[14] = v50;
    _os_log_impl(&dword_181A37000, v48, v51, "%{public}s nw_hash_table_create_no_lock failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v50);
  if (v47)
  {
    goto LABEL_80;
  }

LABEL_57:
}

void sub_181D640F8(_Unwind_Exception *a1)
{
  if ((v2 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>((v3 - 176));
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  object = nw_hash_node_get_object(a2);
  v6 = *(a1 + 32);
  if (!v6 || (*(v6 + 413) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = (v8 + 415);
      v10 = v8 == 0;
      if (!v8)
      {
        v9 = "";
      }

      v11 = " ";
      if (v10)
      {
        v11 = "";
      }

      v12 = *(extra + 144);
      if (v12 > 3)
      {
        v13 = "unknown";
      }

      else
      {
        v13 = off_1E6A2D1A8[v12];
      }

      v14 = *(extra + 16);
      v15 = *(extra + 152);
      v16 = *(extra + 136);
      v18 = 136448002;
      v19 = "nw_protocol_instance_update_available_paths_block_invoke";
      v20 = 2082;
      v21 = v9;
      v22 = 2080;
      v23 = v11;
      v24 = 2048;
      v25 = object;
      v26 = 2080;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      v30 = 1024;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s\tPath %lx %s over %@ p:%d (%@)", &v18, 0x4Eu);
    }
  }

  return 1;
}

void nw_socket_release_frame_array(nw_frame_array_s *a1)
{
  p_tqh_last = &a1->tqh_last;
  while (1)
  {
    tqh_first = a1->tqh_first;
    if (!a1->tqh_first)
    {
      break;
    }

    v4 = *(tqh_first + 5);
    if (v4 == a1)
    {
      v5 = (tqh_first + 32);
      v9 = *(tqh_first + 4);
      if (v9)
      {
        *(v9 + 40) = v4;
        v4 = *(tqh_first + 5);
      }

      else
      {
        *p_tqh_last = &v4->tqh_first;
      }

      v4->tqh_first = v9;
    }

    else
    {
      v6 = *(tqh_first + 2);
      v7 = *(tqh_first + 3);
      v5 = (tqh_first + 16);
      v8 = (v6 + 24);
      if (!v6)
      {
        v8 = p_tqh_last;
      }

      *v8 = v7;
      *v7 = v6;
    }

    *v5 = 0;
    v5[1] = 0;
    if ((*(tqh_first + 204) & 2) != 0)
    {
      nw_frame_set_external_data(tqh_first, 0, 0);
    }

    else
    {
      nw_frame_free_buffer(tqh_first);
    }

    nw_frame_reset(tqh_first, 0, 0, 0, 0);
    os_release(tqh_first);
  }
}

void sub_181D644AC(uint64_t a1, void **a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 42);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 40);
    *length = *a1;
    *&length[16] = v3;
    *&length[24] = v6;
    *&length[32] = v4;
    *&length[40] = v7;
    length[42] = v5;
    *&length[43] = *(a1 + 43);
    length[59] = *(a1 + 59);
    v8 = sub_181C1EE60();
    if ((v11 & 0x100000000) != 0)
    {
      sub_18217B0E0(length);
      if (v23)
      {
        return;
      }

      v13 = length[0];
      bytes[0] = length[0];
      v17 = *&length[49];
      v18 = v21;
      *v19 = *v22;
      *&v19[9] = *&v22[9];
      *&bytes[1] = *&length[1];
      *&bytes[17] = *&length[17];
      v16 = *&length[33];
      v14 = *a2;
      v12 = bytes;
    }

    else
    {
      *bytes = v8;
      *&bytes[8] = v9;
      *&bytes[16] = v10;
      *&bytes[24] = v11;
      v12 = bytes;
      v13 = v8;
      v14 = *a2;
    }
  }

  else
  {
    *length = 528;
    *&length[2] = bswap32(v4) >> 16;
    *&length[4] = v3;
    *&length[8] = 0;
    v14 = *a2;
    v12 = length;
    v13 = 16;
  }

  xpc_dictionary_set_data(v14, "address", v12, v13);
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<nw_protocol_get_zombie_callbacks(void)::$_0 &&>>()
{
  nw_protocol_get_zombie_callbacks(void)::callbacks = nw_protocol_zombie_add_input_handler;
  qword_1ED4110B8 = nw_protocol_zombie_replace_input_handler;
  qword_1ED4110B0 = nw_protocol_zombie_remove_input_handler;
  qword_1ED4110E8 = nw_protocol_zombie_input_available;
  qword_1ED4110F0 = nw_protocol_zombie_output_available;
  qword_1ED411160 = nw_protocol_zombie_input_finished;
  qword_1ED411168 = nw_protocol_zombie_output_finished;
  qword_1ED4111B0 = nw_protocol_zombie_input_flush;
  qword_1ED4110F8 = nw_protocol_zombie_get_input_frames;
  qword_1ED411100 = nw_protocol_zombie_get_output_frames;
  qword_1ED411108 = nw_protocol_zombie_finalize_output_frames;
  qword_1ED4111A0 = nw_protocol_zombie_get_message_properties;
  qword_1ED411110 = nw_protocol_zombie_link_state;
  qword_1ED411118 = nw_protocol_zombie_get_parameters;
  qword_1ED411128 = nw_protocol_zombie_get_local_endpoint;
  qword_1ED411130 = nw_protocol_zombie_get_remote_endpoint;
  qword_1ED411120 = nw_protocol_zombie_get_path;
  qword_1ED411150 = nw_protocol_zombie_updated_path;
  qword_1ED411170 = nw_protocol_zombie_get_output_local_endpoint;
  qword_1ED411178 = nw_protocol_zombie_get_output_interface;
  qword_1ED4110C0 = nw_protocol_zombie_connect;
  qword_1ED4110C8 = nw_protocol_zombie_disconnect;
  qword_1ED4110D0 = nw_protocol_zombie_connected;
  qword_1ED4110D8 = nw_protocol_zombie_disconnected;
  qword_1ED4110E0 = nw_protocol_zombie_error;
  qword_1ED4111A8 = nw_protocol_zombie_reset;
  qword_1ED411158 = nw_protocol_zombie_supports_external_data;
  qword_1ED411180 = nw_protocol_zombie_waiting_for_output;
  qword_1ED411188 = nw_protocol_zombie_copy_info;
  qword_1ED411138 = nw_protocol_zombie_register_notification;
  qword_1ED411140 = nw_protocol_zombie_unregister_notification;
  qword_1ED411148 = nw_protocol_zombie_notify;
  qword_1ED411190 = nw_protocol_zombie_add_listen_handler;
  qword_1ED411198 = nw_protocol_zombie_remove_listen_handler;
}

void *nw_establishment_report_copy_dictionary(void *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = v2;
    v4 = v1[1];
    if (v4)
    {
      xpc_dictionary_set_uint64(v2, "attempt_started_after_milliseconds", v4);
    }

    v5 = v1[2];
    if (v5)
    {
      xpc_dictionary_set_uint64(v3, "duration_milliseconds", v5);
    }

    v6 = v1[3];
    if (v6)
    {
      xpc_dictionary_set_uint64(v3, "resolution_started_after_milliseconds", v6);
    }

    v7 = v1[4];
    if (v7)
    {
      xpc_dictionary_set_uint64(v3, "flow_started_after_milliseconds", v7);
    }

    v8 = xpc_array_create(0, 0);
    v9 = v1[5];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_establishment_report_copy_dictionary_block_invoke;
    aBlock[3] = &unk_1E6A3CCB8;
    v10 = v8;
    v38 = v10;
    if (v9)
    {
      _nw_array_apply(v9, aBlock);
    }

    xpc_dictionary_set_value(v3, "proxy_endpoints", v10);
    v11 = xpc_array_create(0, 0);
    v12 = v1[6];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __nw_establishment_report_copy_dictionary_block_invoke_2;
    v35[3] = &unk_1E6A3CCB8;
    v13 = v11;
    v36 = v13;
    if (v12)
    {
      _nw_array_apply(v12, v35);
    }

    xpc_dictionary_set_value(v3, "proxied_next_hop_endpoints", v13);
    v14 = *(v1 + 20);
    if (v14)
    {
      xpc_dictionary_set_uint64(v3, "previous_attempt_count", v14);
    }

    v15 = *(v1 + 84);
    if (v15)
    {
      xpc_dictionary_set_BOOL(v3, "proxy_configured", 1);
      v15 = *(v1 + 84);
    }

    if ((v15 & 2) != 0)
    {
      xpc_dictionary_set_BOOL(v3, "used_proxy", 1);
    }

    v16 = xpc_array_create(0, 0);
    v17 = v1[8];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __nw_establishment_report_copy_dictionary_block_invoke_3;
    v33[3] = &unk_1E6A3CCB8;
    v18 = v16;
    v34 = v18;
    if (v17)
    {
      _nw_array_apply(v17, v33);
    }

    xpc_dictionary_set_value(v3, "protocol_reports", v18);
    v19 = xpc_array_create(0, 0);
    v20 = v1[9];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __nw_establishment_report_copy_dictionary_block_invoke_4;
    v31[3] = &unk_1E6A3CCB8;
    v21 = v19;
    v32 = v21;
    if (v20)
    {
      _nw_array_apply(v20, v31);
    }

    xpc_dictionary_set_value(v3, "resolution_reports", v21);

    goto LABEL_25;
  }

  v23 = __nwlog_obj();
  *buf = 136446210;
  v42 = "nw_establishment_report_copy_dictionary";
  v24 = _os_log_send_and_compose_impl();

  v40 = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (__nwlog_fault(v24, &v40, &v39))
  {
    if (v40 == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = v40;
      if (os_log_type_enabled(v25, v40))
      {
        *buf = 136446210;
        v42 = "nw_establishment_report_copy_dictionary";
        _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v28 = v40;
      v29 = os_log_type_enabled(v25, v40);
      if (backtrace_string)
      {
        if (v29)
        {
          *buf = 136446466;
          v42 = "nw_establishment_report_copy_dictionary";
          v43 = 2082;
          v44 = backtrace_string;
          _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_42;
      }

      if (v29)
      {
        *buf = 136446210;
        v42 = "nw_establishment_report_copy_dictionary";
        _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v25 = __nwlog_obj();
      v30 = v40;
      if (os_log_type_enabled(v25, v40))
      {
        *buf = 136446210;
        v42 = "nw_establishment_report_copy_dictionary";
        _os_log_impl(&dword_181A37000, v25, v30, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_42:
  if (v24)
  {
    free(v24);
  }

  v3 = 0;
LABEL_25:

  return v3;
}

uint64_t __nw_establishment_report_copy_dictionary_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  identifier = nw_protocol_definition_get_identifier(*(v4 + 4));
  if (identifier)
  {
    xpc_dictionary_set_string(v5, "protocol", identifier);
  }

  v7 = *(v4 + 1);
  if (v7)
  {
    xpc_dictionary_set_uint64(v5, "handshake_milliseconds", v7);
  }

  v8 = *(v4 + 2);
  if (v8)
  {
    xpc_dictionary_set_uint64(v5, "handshake_rtt_milliseconds", v8);
  }

  v9 = v4[6];
  if (v9)
  {
    xpc_dictionary_set_uint64(v5, "client_accurate_ecn_state", v9);
  }

  v10 = v4[7];
  if (v10)
  {
    xpc_dictionary_set_uint64(v5, "server_accurate_ecn_state", v10);
  }

  if (v4[10])
  {
    xpc_dictionary_set_BOOL(v5, "l4s_enabled", 1);
  }

  xpc_array_append_value(*(a1 + 32), v5);

  return 1;
}

void nw_path_flow_registration_close(void *a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_path_flow_registration_close";
    v33 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v33, &type, &v48))
    {
      goto LABEL_90;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v51 = "nw_path_flow_registration_close";
        _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null registration", buf, 0xCu);
      }
    }

    else if (v48 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v34, type);
      if (backtrace_string)
      {
        if (v40)
        {
          *buf = 136446466;
          v51 = "nw_path_flow_registration_close";
          v52 = 2082;
          *v53 = backtrace_string;
          _os_log_impl(&dword_181A37000, v34, v39, "%{public}s called with null registration, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_90:
        if (!v33)
        {
          goto LABEL_51;
        }

LABEL_91:
        free(v33);
        goto LABEL_51;
      }

      if (v40)
      {
        *buf = 136446210;
        v51 = "nw_path_flow_registration_close";
        _os_log_impl(&dword_181A37000, v34, v39, "%{public}s called with null registration, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v34 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v51 = "nw_path_flow_registration_close";
        _os_log_impl(&dword_181A37000, v34, v41, "%{public}s called with null registration, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_89:

    goto LABEL_90;
  }

  if ((v1[148] & 1) == 0)
  {
    goto LABEL_51;
  }

  v3 = *(v1 + 1);
  if (v3)
  {
    v4 = nw_parameters_copy_context(*(v3 + 8));
    if ((nw_path_shared_necp_fd(v4) & 0x80000000) != 0 || uuid_is_null(v2 + 32))
    {
      goto LABEL_6;
    }

    *(v2 + 8) = 0;
    if (necp_client_action())
    {
      v11 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      *buf = 136446466;
      v51 = "nw_path_flow_registration_close";
      v52 = 1024;
      *v53 = v11;
      v13 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (!__nwlog_fault(v13, &type, &v48))
      {
        goto LABEL_55;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446466;
          v51 = "nw_path_flow_registration_close";
          v52 = 1024;
          *v53 = v11;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s NECP_CLIENT_ACTION_REMOVE_FLOW error %{darwin.errno}d", buf, 0x12u);
        }

LABEL_54:

LABEL_55:
        if (!v13)
        {
          goto LABEL_6;
        }

        goto LABEL_56;
      }

      if (v48 != 1)
      {
        v14 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446466;
          v51 = "nw_path_flow_registration_close";
          v52 = 1024;
          *v53 = v11;
          _os_log_impl(&dword_181A37000, v14, v26, "%{public}s NECP_CLIENT_ACTION_REMOVE_FLOW error %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
        }

        goto LABEL_54;
      }

      v23 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v14, type);
      if (!v23)
      {
        if (v25)
        {
          *buf = 136446466;
          v51 = "nw_path_flow_registration_close";
          v52 = 1024;
          *v53 = v11;
          _os_log_impl(&dword_181A37000, v14, v24, "%{public}s NECP_CLIENT_ACTION_REMOVE_FLOW error %{darwin.errno}d, no backtrace", buf, 0x12u);
        }

        goto LABEL_54;
      }

      if (v25)
      {
        *buf = 136446722;
        v51 = "nw_path_flow_registration_close";
        v52 = 1024;
        *v53 = v11;
        *&v53[4] = 2082;
        *&v53[6] = v23;
        _os_log_impl(&dword_181A37000, v14, v24, "%{public}s NECP_CLIENT_ACTION_REMOVE_FLOW error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v23);
      if (v13)
      {
LABEL_56:
        free(v13);
      }
    }

    else
    {
      if ((v2[148] & 4) != 0)
      {
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __nw_path_flow_registration_close_block_invoke;
        v46[3] = &unk_1E6A3D868;
        v47 = v4;
        nw_queue_context_async_if_needed(v47, v46);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(v2 + 1) + 80;
        *buf = 136447234;
        v51 = "nw_path_flow_registration_close";
        v52 = 1042;
        *v53 = 16;
        *&v53[4] = 2098;
        *&v53[6] = v2 + 32;
        v54 = 1042;
        v55 = 16;
        v56 = 2098;
        v57 = v22;
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s Removed flow %{public,uuid_t}.16P from %{public,uuid_t}.16P", buf, 0x2Cu);
      }
    }

LABEL_6:
    v2[148] &= ~1u;

    os_unfair_lock_lock((*(v2 + 1) + 96));
    v5 = *(v2 + 1);
    v6 = *(v5 + 100);
    if (v6)
    {
      *(v5 + 100) = v6 - 1;
      goto LABEL_47;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v51 = "nw_path_flow_registration_close";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (__nwlog_fault(v8, &type, &v48))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v51 = "nw_path_flow_registration_close";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s Path evaluator flow count unexpectedly 0 when closing flow", buf, 0xCu);
        }
      }

      else if (v48 == 1)
      {
        v16 = __nw_create_backtrace_string();
        if (v16)
        {
          v17 = v16;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v19 = type;
          if (os_log_type_enabled(v18, type))
          {
            *buf = 136446466;
            v51 = "nw_path_flow_registration_close";
            v52 = 2082;
            *v53 = v17;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s Path evaluator flow count unexpectedly 0 when closing flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v17);
          if (!v8)
          {
            goto LABEL_47;
          }

LABEL_46:
          free(v8);
LABEL_47:
          os_unfair_lock_unlock((*(v2 + 1) + 96));
          v28 = nw_parameters_copy_context(*(*(v2 + 1) + 8));
          globals_for_path = nw_context_get_globals_for_path(v28);

          os_unfair_lock_lock((globals_for_path + 116));
          v30 = *(globals_for_path + 40);
          if (v30)
          {
            node = nw_hash_table_get_node(v30, (v2 + 32), 16);
            if (node)
            {
              nw_hash_table_remove_node(*(globals_for_path + 40), node);
            }
          }

          os_unfair_lock_unlock((globals_for_path + 116));
          goto LABEL_51;
        }

        v9 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v51 = "nw_path_flow_registration_close";
          _os_log_impl(&dword_181A37000, v9, v27, "%{public}s Path evaluator flow count unexpectedly 0 when closing flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v51 = "nw_path_flow_registration_close";
          _os_log_impl(&dword_181A37000, v9, v20, "%{public}s Path evaluator flow count unexpectedly 0 when closing flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v8)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v36 = __nwlog_obj();
  *buf = 136446210;
  v51 = "nw_path_flow_registration_close";
  v33 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v48 = 0;
  if (!__nwlog_fault(v33, &type, &v48))
  {
    goto LABEL_90;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v34 = __nwlog_obj();
    v37 = type;
    if (os_log_type_enabled(v34, type))
    {
      *buf = 136446210;
      v51 = "nw_path_flow_registration_close";
      _os_log_impl(&dword_181A37000, v34, v37, "%{public}s called with null registration->parent_evaluator", buf, 0xCu);
    }

    goto LABEL_89;
  }

  if (v48 != 1)
  {
    v34 = __nwlog_obj();
    v45 = type;
    if (os_log_type_enabled(v34, type))
    {
      *buf = 136446210;
      v51 = "nw_path_flow_registration_close";
      _os_log_impl(&dword_181A37000, v34, v45, "%{public}s called with null registration->parent_evaluator, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_89;
  }

  v42 = __nw_create_backtrace_string();
  v34 = __nwlog_obj();
  v43 = type;
  v44 = os_log_type_enabled(v34, type);
  if (!v42)
  {
    if (v44)
    {
      *buf = 136446210;
      v51 = "nw_path_flow_registration_close";
      _os_log_impl(&dword_181A37000, v34, v43, "%{public}s called with null registration->parent_evaluator, no backtrace", buf, 0xCu);
    }

    goto LABEL_89;
  }

  if (v44)
  {
    *buf = 136446466;
    v51 = "nw_path_flow_registration_close";
    v52 = 2082;
    *v53 = v42;
    _os_log_impl(&dword_181A37000, v34, v43, "%{public}s called with null registration->parent_evaluator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v42);
  if (v33)
  {
    goto LABEL_91;
  }

LABEL_51:
}

uint64_t __nw_establishment_report_copy_dictionary_block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  v7 = *(v4 + 1);
  if (v7)
  {
    xpc_dictionary_set_uint64(v5, "milliseconds", v7);
  }

  v8 = *(v4 + 4);
  if (v8)
  {
    v9 = v8;
    v10 = _nw_endpoint_copy_dictionary(v8);

    if (v10)
    {
      xpc_dictionary_set_value(v6, "successful_endpoint", v10);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v4 + 5);
  if (v11)
  {
    v12 = v11;
    v13 = _nw_endpoint_copy_dictionary(v11);

    if (v13)
    {
      xpc_dictionary_set_value(v6, "preferred_endpoint", v13);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v4[14];
  if (v14)
  {
    xpc_dictionary_set_uint64(v6, "endpoint_count", v14);
  }

  v15 = v4[15];
  if (v15)
  {
    xpc_dictionary_set_uint64(v6, "source", v15);
  }

  xpc_array_append_value(*(a1 + 32), v6);

  return 1;
}

void sub_181D65DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NWConcrete_nw_path_flow_registration;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

xpc_object_t nw_data_transfer_report_copy_dictionary(void *a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v68 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_data_transfer_report_copy_dictionary_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v64 = buf;
    v3 = v1;
    v63 = v3;
    v4 = _Block_copy(aBlock);
    os_unfair_lock_lock(v1 + 10);
    v4[2](v4);
    os_unfair_lock_unlock(v1 + 10);

    if (*(*&buf[8] + 24) == 2)
    {
      v5 = *&v3[4]._os_unfair_lock_opaque;
      if (v5)
      {
        xpc_dictionary_set_uint64(v2, "duration_milliseconds", v5);
      }

      if (v3[11]._os_unfair_lock_opaque)
      {
        v6 = xpc_dictionary_create(0, 0, 0);
        v7 = v6;
        v8 = *&v3[14]._os_unfair_lock_opaque;
        if (v8)
        {
          xpc_dictionary_set_uint64(v6, "total_received_ip_packet_count", v8);
        }

        v9 = *&v3[58]._os_unfair_lock_opaque;
        if (v9)
        {
          xpc_dictionary_set_uint64(v7, "incremental_received_ip_packet_count", v9);
        }

        v10 = *&v3[16]._os_unfair_lock_opaque;
        if (v10)
        {
          xpc_dictionary_set_uint64(v7, "total_received_ip_ect1_packet_count", v10);
        }

        v11 = *&v3[60]._os_unfair_lock_opaque;
        if (v11)
        {
          xpc_dictionary_set_uint64(v7, "incremental_received_ip_ect1_packet_count", v11);
        }

        v12 = *&v3[18]._os_unfair_lock_opaque;
        if (v12)
        {
          xpc_dictionary_set_uint64(v7, "total_received_ip_ect0_packet_count", v12);
        }

        v13 = *&v3[62]._os_unfair_lock_opaque;
        if (v13)
        {
          xpc_dictionary_set_uint64(v7, "incremental_received_ip_ect0_packet_count", v13);
        }

        v14 = *&v3[20]._os_unfair_lock_opaque;
        if (v14)
        {
          xpc_dictionary_set_uint64(v7, "total_received_ip_ce_packet_count", v14);
        }

        v15 = *&v3[64]._os_unfair_lock_opaque;
        if (v15)
        {
          xpc_dictionary_set_uint64(v7, "incremental_received_ip_ce_packet_count", v15);
        }

        v16 = *&v3[22]._os_unfair_lock_opaque;
        if (v16)
        {
          xpc_dictionary_set_uint64(v7, "total_sent_ip_packet_count", v16);
        }

        v17 = *&v3[66]._os_unfair_lock_opaque;
        if (v17)
        {
          xpc_dictionary_set_uint64(v7, "incremental_sent_ip_packet_count", v17);
        }

        v18 = *&v3[24]._os_unfair_lock_opaque;
        if (v18)
        {
          xpc_dictionary_set_uint64(v7, "total_received_transport_byte_count", v18);
        }

        v19 = *&v3[68]._os_unfair_lock_opaque;
        if (v19)
        {
          xpc_dictionary_set_uint64(v7, "incremental_received_transport_byte_count", v19);
        }

        v20 = *&v3[26]._os_unfair_lock_opaque;
        if (v20)
        {
          xpc_dictionary_set_uint64(v7, "total_received_transport_duplicate_byte_count", v20);
        }

        v21 = *&v3[70]._os_unfair_lock_opaque;
        if (v21)
        {
          xpc_dictionary_set_uint64(v7, "incremental_received_transport_duplicate_byte_count", v21);
        }

        v22 = *&v3[28]._os_unfair_lock_opaque;
        if (v22)
        {
          xpc_dictionary_set_uint64(v7, "total_received_transport_out_of_order_byte_count", v22);
        }

        v23 = *&v3[72]._os_unfair_lock_opaque;
        if (v23)
        {
          xpc_dictionary_set_uint64(v7, "incremental_received_transport_out_of_order_byte_count", v23);
        }

        v24 = *&v3[30]._os_unfair_lock_opaque;
        if (v24)
        {
          xpc_dictionary_set_uint64(v7, "total_sent_transport_byte_count", v24);
        }

        v25 = *&v3[74]._os_unfair_lock_opaque;
        if (v25)
        {
          xpc_dictionary_set_uint64(v7, "incremental_sent_transport_byte_count", v25);
        }

        v26 = *&v3[32]._os_unfair_lock_opaque;
        if (v26)
        {
          xpc_dictionary_set_uint64(v7, "total_sent_transport_retransmitted_byte_count", v26);
        }

        v27 = *&v3[76]._os_unfair_lock_opaque;
        if (v27)
        {
          xpc_dictionary_set_uint64(v7, "incremental_sent_transport_retransmitted_byte_count", v27);
        }

        v28 = *&v3[34]._os_unfair_lock_opaque;
        if (v28)
        {
          xpc_dictionary_set_uint64(v7, "total_sent_transport_ecn_capable_packet_count", v28);
        }

        v29 = *&v3[78]._os_unfair_lock_opaque;
        if (v29)
        {
          xpc_dictionary_set_uint64(v7, "incremental_sent_transport_ecn_capable_packet_count", v29);
        }

        v30 = *&v3[36]._os_unfair_lock_opaque;
        if (v30)
        {
          xpc_dictionary_set_uint64(v7, "total_sent_transport_ecn_capable_acked_packet_count", v30);
        }

        v31 = *&v3[80]._os_unfair_lock_opaque;
        if (v31)
        {
          xpc_dictionary_set_uint64(v7, "incremental_sent_transport_ecn_capable_acked_packet_count", v31);
        }

        v32 = *&v3[38]._os_unfair_lock_opaque;
        if (v32)
        {
          xpc_dictionary_set_uint64(v7, "total_sent_transport_ecn_capable_marked_packet_count", v32);
        }

        v33 = *&v3[82]._os_unfair_lock_opaque;
        if (v33)
        {
          xpc_dictionary_set_uint64(v7, "incremental_sent_transport_ecn_capable_marked_packet_count", v33);
        }

        v34 = *&v3[40]._os_unfair_lock_opaque;
        if (v34)
        {
          xpc_dictionary_set_uint64(v7, "total_sent_transport_ecn_capable_lost_packet_count", v34);
        }

        v35 = *&v3[84]._os_unfair_lock_opaque;
        if (v35)
        {
          xpc_dictionary_set_uint64(v7, "incremental_sent_transport_ecn_capable_lost_packet_count", v35);
        }

        v36 = *&v3[42]._os_unfair_lock_opaque;
        if (v36)
        {
          xpc_dictionary_set_uint64(v7, "total_transport_smoothed_rtt_milliseconds", v36);
        }

        v37 = *&v3[86]._os_unfair_lock_opaque;
        if (v37)
        {
          xpc_dictionary_set_uint64(v7, "incremental_transport_smoothed_rtt_milliseconds", v37);
        }

        v38 = *&v3[44]._os_unfair_lock_opaque;
        if (v38)
        {
          xpc_dictionary_set_uint64(v7, "total_transport_minimum_rtt_milliseconds", v38);
        }

        v39 = *&v3[88]._os_unfair_lock_opaque;
        if (v39)
        {
          xpc_dictionary_set_uint64(v7, "incremental_transport_minimum_rtt_milliseconds", v39);
        }

        v40 = *&v3[46]._os_unfair_lock_opaque;
        if (v40)
        {
          xpc_dictionary_set_uint64(v7, "total_transport_current_rtt_milliseconds", v40);
        }

        v41 = *&v3[90]._os_unfair_lock_opaque;
        if (v41)
        {
          xpc_dictionary_set_uint64(v7, "incremental_transport_current_rtt_milliseconds", v41);
        }

        v42 = *&v3[48]._os_unfair_lock_opaque;
        if (v42)
        {
          xpc_dictionary_set_uint64(v7, "total_transport_rtt_variance", v42);
        }

        v43 = *&v3[92]._os_unfair_lock_opaque;
        if (v43)
        {
          xpc_dictionary_set_uint64(v7, "incremental_transport_rtt_variance", v43);
        }

        v44 = *&v3[50]._os_unfair_lock_opaque;
        if (v44)
        {
          xpc_dictionary_set_uint64(v7, "total_transport_congestion_window", v44);
        }

        v45 = *&v3[94]._os_unfair_lock_opaque;
        if (v45)
        {
          xpc_dictionary_set_uint64(v7, "incremental_transport_congestion_window", v45);
        }

        v46 = *&v3[52]._os_unfair_lock_opaque;
        if (v46)
        {
          xpc_dictionary_set_uint64(v7, "total_transport_slow_start_threshold", v46);
        }

        v47 = *&v3[96]._os_unfair_lock_opaque;
        if (v47)
        {
          xpc_dictionary_set_uint64(v7, "incremental_transport_slow_start_threshold", v47);
        }

        v48 = *&v3[54]._os_unfair_lock_opaque;
        if (v48)
        {
          xpc_dictionary_set_uint64(v7, "total_received_application_byte_count", v48);
        }

        v49 = *&v3[98]._os_unfair_lock_opaque;
        if (v49)
        {
          xpc_dictionary_set_uint64(v7, "incremental_received_application_byte_count", v49);
        }

        v50 = *&v3[56]._os_unfair_lock_opaque;
        if (v50)
        {
          xpc_dictionary_set_uint64(v7, "total_sent_application_byte_count", v50);
        }

        v51 = *&v3[100]._os_unfair_lock_opaque;
        if (v51)
        {
          xpc_dictionary_set_uint64(v7, "incremental_sent_application_byte_count", v51);
        }

        v52 = nw_interface_copy_dictionary(*&v3[102]._os_unfair_lock_opaque);
        if (v52)
        {
          xpc_dictionary_set_value(v7, "interface", v52);
        }

        xpc_dictionary_set_value(v2, "primary_path", v7);
      }
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_98;
  }

  v54 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_data_transfer_report_copy_dictionary";
  v55 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v65 = 0;
  if (__nwlog_fault(v55, &type, &v65))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v56 = __nwlog_obj();
      v57 = type;
      if (os_log_type_enabled(v56, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_data_transfer_report_copy_dictionary";
        _os_log_impl(&dword_181A37000, v56, v57, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v65 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v59 = type;
      v60 = os_log_type_enabled(v56, type);
      if (backtrace_string)
      {
        if (v60)
        {
          *buf = 136446466;
          *&buf[4] = "nw_data_transfer_report_copy_dictionary";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v56, v59, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_115;
      }

      if (v60)
      {
        *buf = 136446210;
        *&buf[4] = "nw_data_transfer_report_copy_dictionary";
        _os_log_impl(&dword_181A37000, v56, v59, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v56 = __nwlog_obj();
      v61 = type;
      if (os_log_type_enabled(v56, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_data_transfer_report_copy_dictionary";
        _os_log_impl(&dword_181A37000, v56, v61, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_115:
  if (v55)
  {
    free(v55);
  }

  v2 = 0;
LABEL_98:

  return v2;
}

void sub_181D665D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

xpc_object_t nw_interface_copy_dictionary(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = nw_interface_key_type;
  type = _nw_interface_get_type(v1);
  if (type)
  {
    xpc_dictionary_set_uint64(v2, v3, type);
  }

  v5 = nw_interface_key_subtype;
  subtype = _nw_interface_get_subtype(v1);
  if (subtype)
  {
    xpc_dictionary_set_uint64(v2, v5, subtype);
  }

  v7 = nw_interface_key_name;
  name = _nw_interface_get_name(v1);
  if (name)
  {
    xpc_dictionary_set_string(v2, v7, name);
  }

  v9 = nw_interface_key_index;
  index = _nw_interface_get_index(v1);
  if (index)
  {
    xpc_dictionary_set_uint64(v2, v9, index);
  }

  v11 = nw_interface_key_generation;
  generation = _nw_interface_get_generation(v1);

  if (generation)
  {
    xpc_dictionary_set_uint64(v2, v11, generation);
  }

  return v2;
}

uint64_t nw_parameters_get_stricter_path_scoping(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_stricter_path_scoping(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_stricter_path_scoping";
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
        v12 = "nw_parameters_get_stricter_path_scoping";
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
            v12 = "nw_parameters_get_stricter_path_scoping";
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
        v12 = "nw_parameters_get_stricter_path_scoping";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_stricter_path_scoping";
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

uint64_t ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_253(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_agent_has_quic_migration_info";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v16, &type, &v22))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v25 = "nw_agent_has_quic_migration_info";
        v19 = "%{public}s called with null netagent";
LABEL_31:
        _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
      }
    }

    else
    {
      if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v17 = __nwlog_obj();
        v18 = type;
        v21 = os_log_type_enabled(v17, type);
        if (backtrace_string)
        {
          if (v21)
          {
            *buf = 136446466;
            v25 = "nw_agent_has_quic_migration_info";
            v26 = 2082;
            v27 = backtrace_string;
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null netagent, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_33;
        }

        if (!v21)
        {
          goto LABEL_32;
        }

        *buf = 136446210;
        v25 = "nw_agent_has_quic_migration_info";
        v19 = "%{public}s called with null netagent, no backtrace";
        goto LABEL_31;
      }

      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v25 = "nw_agent_has_quic_migration_info";
        v19 = "%{public}s called with null netagent, backtrace limit exceeded";
        goto LABEL_31;
      }
    }

LABEL_32:

LABEL_33:
    if (v16)
    {
      free(v16);
    }

    return 1;
  }

  if (strcmp((a2 + 16), "Network"))
  {
    return 1;
  }

  if (strcmp((a2 + 48), "QUICMigrationInfo"))
  {
    return 1;
  }

  v5 = nw_quic_migration_info_create_from_data(a2 + 216, *(a2 + 212));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    return 1;
  }

  v8 = *(a1 + 32);
  if (!v8 || (*(v8 + 413) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = v10 == 0;
      if (v10)
      {
        v12 = (v10 + 415);
      }

      else
      {
        v12 = "";
      }

      v13 = " ";
      if (v11)
      {
        v13 = "";
      }

      v14 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 136446978;
      v25 = "nw_protocol_instance_update_available_paths_block_invoke";
      v26 = 2082;
      v27 = v12;
      v28 = 2080;
      v29 = v13;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sMigration info: %@", buf, 0x2Au);
    }
  }

  return 0;
}

xpc_object_t NWUtilsCreateXPCDictionaryFromNSDictionary(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = a1;
  xdict = xpc_dictionary_create(0, 0, 0);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = @"INT64-";
    v7 = 0x1E695D000uLL;
    v8 = *v34;
    *&v4 = 136446722;
    v30 = v4;
    v9 = @"UINT64-";
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        if ([v11 hasPrefix:v6])
        {
          v12 = v6;
LABEL_17:
          v13 = [v11 substringFromIndex:{-[__CFString length](v12, "length", v30)}];
          goto LABEL_18;
        }

        if ([v11 hasPrefix:@"DOUBLE-"])
        {
          v12 = @"DOUBLE-";
          goto LABEL_17;
        }

        if ([v11 hasPrefix:@"UINT64-"] || (v9 = @"BOOL-", objc_msgSend(v11, "hasPrefix:", @"BOOL-")))
        {
          v12 = v9;
          goto LABEL_17;
        }

        v13 = v11;
LABEL_18:
        v14 = v13;

        v15 = [v2 objectForKeyedSubscript:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          XPCArrayFromNSArray = NWUtilsCreateXPCArrayFromNSArray(v11, v15);
          if (!XPCArrayFromNSArray)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v32 = v14;
          v18 = v5;
          v19 = v8;
          v20 = v6;
          v21 = v7;
          v22 = v15;
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            XPCDictionaryFromNSDictionary = NWUtilsCreateXPCDictionaryFromNSDictionary(v22);
          }

          else
          {
            XPCDictionaryFromNSDictionary = NWUtilsCreateXPCObjectFromSimpleNSObject(v11, v22);
          }

          XPCArrayFromNSArray = XPCDictionaryFromNSDictionary;
          v7 = v21;
          v6 = v20;
          v8 = v19;
          v5 = v18;
          v14 = v32;
          if (!XPCDictionaryFromNSDictionary)
          {
LABEL_26:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v25 = gLogObj;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v38 = "NWUtilsCreateXPCDictionaryFromNSDictionary";
              v39 = 2114;
              v40 = v15;
              v26 = v25;
              v27 = "%{public}s Could not create xpc object for %{public}@";
              v28 = 22;
              goto LABEL_5;
            }

LABEL_6:

            goto LABEL_7;
          }
        }

        v17 = [v14 UTF8String];
        if (!v17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = v30;
            v38 = "NWUtilsCreateXPCDictionaryFromNSDictionary";
            v39 = 2114;
            v40 = v14;
            v41 = 2114;
            v42 = v15;
            v26 = v25;
            v27 = "%{public}s Could not parse trimmed key %{public}@ for %{public}@";
            v28 = 32;
LABEL_5:
            _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, v27, buf, v28);
          }

          goto LABEL_6;
        }

        xpc_dictionary_set_value(xdict, v17, XPCArrayFromNSArray);
LABEL_7:

        v9 = @"UINT64-";
      }

      v5 = [v2 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v5);
  }

  return xdict;
}

BOOL nw_protocol_options_is_udp(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_options_is_udp(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_options_is_udp";
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
        v12 = "nw_protocol_options_is_udp";
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
            v12 = "nw_protocol_options_is_udp";
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
        v12 = "nw_protocol_options_is_udp";
        v6 = "%{public}s called with null options, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_options_is_udp";
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

uint64_t sub_181D6746C(char *a1, void *a2)
{
  if (!a1)
  {
    if (!a2)
    {
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_5;
  }

  if (!a2)
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v3 = OBJC_IVAR____TtC7Network13__NWInterface_interface;
  v4 = *&a1[OBJC_IVAR____TtC7Network13__NWInterface_interface];
  v5 = a1;
  v6 = a2;
  v9 = *&v6[v3];
  v10 = v4;
  v7 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(&v10, &v9);

  return v7 & 1;
}

id nw_interface_option_details_copy_local_cid(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[7];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_interface_option_details_copy_local_cid";
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
        v16 = "nw_interface_option_details_copy_local_cid";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null interface_option_details", buf, 0xCu);
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
          v16 = "nw_interface_option_details_copy_local_cid";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null interface_option_details, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_interface_option_details_copy_local_cid";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null interface_option_details, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_interface_option_details_copy_local_cid";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null interface_option_details, backtrace limit exceeded", buf, 0xCu);
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

uint64_t _nw_tcp_options_get_reset_local_port(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = result + *(*result + 128);
    result = swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4 == 2)
    {
      __break(1u);
    }

    else
    {

      return HIWORD(v4) & 1;
    }
  }

  return result;
}

uint64_t nw_dispatch_data_is_equal(NSObject *a1, NSObject *a2)
{
  v2 = a1 == a2;
  if (a1 != a2 && a1 && a2)
  {
    size = dispatch_data_get_size(a1);
    if (size == dispatch_data_get_size(a2))
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2000000000;
      v11 = 1;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 0x40000000;
      v7[2] = __nw_dispatch_data_is_equal_block_invoke;
      v7[3] = &unk_1E6A343E0;
      v7[4] = &v8;
      v7[5] = a2;
      dispatch_data_apply(a1, v7);
      v2 = *(v9 + 24);
      _Block_object_dispose(&v8, 8);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t NWUtilsCreateXPCObjectFromSimpleNSObject(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v5 = v4, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass))
  {
    v7 = _CFXPCCreateXPCObjectFromCFObject();
LABEL_4:
    v8 = v7;
    goto LABEL_5;
  }

  v10 = v5;
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    *uuid = 0;
    *&uuid[8] = 0;
    [v10 getUUIDBytes:uuid];
    v7 = xpc_uuid_create(uuid);
    goto LABEL_4;
  }

  v12 = v10;
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if (v13)
  {
    if ([v3 hasPrefix:@"INT64-"])
    {
      v7 = xpc_int64_create([v12 longLongValue]);
    }

    else if ([v3 hasPrefix:@"DOUBLE-"])
    {
      [v12 doubleValue];
      v7 = xpc_double_create(v22);
    }

    else if ([v3 hasPrefix:@"BOOL-"])
    {
      v7 = xpc_BOOL_create([v12 BOOLValue]);
    }

    else
    {
      v7 = xpc_uint64_create([v12 unsignedLongLongValue]);
    }

    goto LABEL_4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  *uuid = 136446466;
  *&uuid[4] = "NWUtilsCreateXPCObjectFromSimpleNSObject";
  *&uuid[12] = 2114;
  *&uuid[14] = objc_opt_class();
  v15 = *&uuid[14];
  v16 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (__nwlog_fault(v16, &type, &v29))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        v19 = objc_opt_class();
        *uuid = 136446466;
        *&uuid[4] = "NWUtilsCreateXPCObjectFromSimpleNSObject";
        *&uuid[12] = 2114;
        *&uuid[14] = v19;
        v20 = v19;
        v21 = "%{public}s Unknown NSObject type %{public}@";
LABEL_29:
        _os_log_impl(&dword_181A37000, v17, v18, v21, uuid, 0x16u);
      }
    }

    else
    {
      if (v29 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v17 = __nwlog_obj();
        v18 = type;
        v24 = os_log_type_enabled(v17, type);
        if (backtrace_string)
        {
          if (v24)
          {
            v25 = objc_opt_class();
            *uuid = 136446722;
            *&uuid[4] = "NWUtilsCreateXPCObjectFromSimpleNSObject";
            *&uuid[12] = 2114;
            *&uuid[14] = v25;
            v32 = 2082;
            v33 = backtrace_string;
            v26 = v25;
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s Unknown NSObject type %{public}@, dumping backtrace:%{public}s", uuid, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_31;
        }

        if (!v24)
        {
          goto LABEL_30;
        }

        v28 = objc_opt_class();
        *uuid = 136446466;
        *&uuid[4] = "NWUtilsCreateXPCObjectFromSimpleNSObject";
        *&uuid[12] = 2114;
        *&uuid[14] = v28;
        v20 = v28;
        v21 = "%{public}s Unknown NSObject type %{public}@, no backtrace";
        goto LABEL_29;
      }

      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        v27 = objc_opt_class();
        *uuid = 136446466;
        *&uuid[4] = "NWUtilsCreateXPCObjectFromSimpleNSObject";
        *&uuid[12] = 2114;
        *&uuid[14] = v27;
        v20 = v27;
        v21 = "%{public}s Unknown NSObject type %{public}@, backtrace limit exceeded";
        goto LABEL_29;
      }
    }

LABEL_30:
  }

LABEL_31:
  if (v16)
  {
    free(v16);
  }

  v8 = 0;
LABEL_5:

  return v8;
}

id nw_interface_option_details_copy_remote_cid(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[8];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_interface_option_details_copy_remote_cid";
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
        v16 = "nw_interface_option_details_copy_remote_cid";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null interface_option_details", buf, 0xCu);
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
          v16 = "nw_interface_option_details_copy_remote_cid";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null interface_option_details, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_interface_option_details_copy_remote_cid";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null interface_option_details, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_interface_option_details_copy_remote_cid";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null interface_option_details, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_interface_option_details_get_priority(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[48];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_interface_option_details_get_priority";
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
        v15 = "nw_interface_option_details_get_priority";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null interface_option_details", buf, 0xCu);
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
          v15 = "nw_interface_option_details_get_priority";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null interface_option_details, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_interface_option_details_get_priority";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null interface_option_details, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_interface_option_details_get_priority";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null interface_option_details, backtrace limit exceeded", buf, 0xCu);
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

void ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_255(uint64_t a1, void *a2)
{
  v135 = *MEMORY[0x1E69E9840];
  v3 = a2;
  address_with_port = nw_interface_option_details_copy_remote_endpoint(v3);
  v5 = nw_interface_option_details_copy_interface(v3);
  if (v5)
  {
    is_injected = nw_interface_option_details_is_injected(v3);
    if (!*(a1 + 40))
    {
      goto LABEL_10;
    }

    if (_nw_interface_get_index(v5) == *(a1 + 96))
    {
      if (*(a1 + 40))
      {
        v7 = nw_quic_migration_info_get_remote_endpoint(*(*(*(a1 + 64) + 8) + 40));
        if (address_with_port)
        {
LABEL_9:

          is_injected = 1;
          goto LABEL_10;
        }

        v8 = nw_endpoint_copy_port_string(*(*(a1 + 32) + 40));
        memset(buf, 0, sizeof(buf));
        LODWORD(v128) = 0;
        if (nw_endpoint_fillout_v4v6_address(v7, buf))
        {
          address_with_port = nw_endpoint_create_address_with_port(buf, v8);
          if (v8)
          {
            free(v8);
          }

          goto LABEL_9;
        }

        v98 = __nwlog_obj();
        *v133 = 136446210;
        *&v133[4] = "nw_protocol_instance_update_available_paths_block_invoke";
        v99 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(__buf) = 0;
        if (__nwlog_fault(v99, type, &__buf))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v100 = __nwlog_obj();
            v101 = type[0];
            if (os_log_type_enabled(v100, type[0]))
            {
              *v133 = 136446210;
              *&v133[4] = "nw_protocol_instance_update_available_paths_block_invoke";
              _os_log_impl(&dword_181A37000, v100, v101, "%{public}s called with null success_evaluator", v133, 0xCu);
            }
          }

          else if (__buf == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v100 = __nwlog_obj();
            v106 = type[0];
            v107 = os_log_type_enabled(v100, type[0]);
            if (backtrace_string)
            {
              if (v107)
              {
                *v133 = 136446466;
                *&v133[4] = "nw_protocol_instance_update_available_paths_block_invoke";
                *&v133[12] = 2082;
                *&v133[14] = backtrace_string;
                _os_log_impl(&dword_181A37000, v100, v106, "%{public}s called with null success_evaluator, dumping backtrace:%{public}s", v133, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_161;
            }

            if (v107)
            {
              *v133 = 136446210;
              *&v133[4] = "nw_protocol_instance_update_available_paths_block_invoke";
              _os_log_impl(&dword_181A37000, v100, v106, "%{public}s called with null success_evaluator, no backtrace", v133, 0xCu);
            }
          }

          else
          {
            v100 = __nwlog_obj();
            v109 = type[0];
            if (os_log_type_enabled(v100, type[0]))
            {
              *v133 = 136446210;
              *&v133[4] = "nw_protocol_instance_update_available_paths_block_invoke";
              _os_log_impl(&dword_181A37000, v100, v109, "%{public}s called with null success_evaluator, backtrace limit exceeded", v133, 0xCu);
            }
          }
        }

LABEL_161:
        if (v99)
        {
          free(v99);
        }

        goto LABEL_126;
      }

LABEL_10:
      v7 = nw_interface_option_details_copy_interface(v3);
      stricter_path_scoping = nw_parameters_get_stricter_path_scoping(*(*(a1 + 32) + 48));
      if (address_with_port)
      {
        v10 = 0;
      }

      else
      {
        v10 = stricter_path_scoping;
      }

      if (v10 != 1 || (v11 = *(a1 + 48)) == 0)
      {
LABEL_17:
        *v133 = 0;
        *&v133[8] = v133;
        *&v133[16] = 0x2020000000;
        v134 = 0;
        *type = 0;
        v123 = type;
        v124 = 0x2020000000;
        v125 = 0;
        v14 = *(*(a1 + 32) + 296);
        v114[0] = MEMORY[0x1E69E9820];
        v114[1] = 3221225472;
        v114[2] = ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_256;
        v114[3] = &unk_1E6A2CEE0;
        v112 = v7;
        v115 = v112;
        v111 = address_with_port;
        v116 = v111;
        v117 = *(a1 + 40);
        v15 = v3;
        v118 = v15;
        v120 = v133;
        v121 = type;
        v119 = *(a1 + 32);
        nw_hash_table_apply(v14, v114);
        v16 = *(*&v133[8] + 24);
        if (!v16)
        {
          __buf = 0;
          arc4random_buf(&__buf, 8uLL);
          v126 = 0;
          v17 = nw_hash_table_add_object(*(*(a1 + 32) + 296), __buf, &v126);
          if (v126 != 1 || (v18 = v17) == 0)
          {
            v83 = *(a1 + 32);
            if (!v83 || (*(v83 + 413) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v84 = gLogObj;
              if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
                v85 = *(a1 + 32);
                v86 = (v85 + 415);
                v87 = "";
                if (!v85)
                {
                  v86 = "";
                }

                *&buf[4] = "nw_protocol_instance_update_available_paths_block_invoke";
                *&buf[12] = 2082;
                *buf = 136446978;
                if (v85)
                {
                  v87 = " ";
                }

                *&buf[14] = v86;
                *&buf[22] = 2080;
                v128 = v87;
                v129 = 2048;
                v130 = __buf;
                _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sFailed to add path %lx to paths table", buf, 0x2Au);
              }
            }

            goto LABEL_111;
          }

          *(v17 + 32) = 0u;
          v19 = v17 + 32;
          *(v17 + 48) = 0u;
          *(v17 + 160) = 0u;
          *(v17 + 176) = 0u;
          *(v17 + 128) = 0u;
          *(v17 + 144) = 0u;
          *(v17 + 96) = 0u;
          *(v17 + 112) = 0u;
          *(v17 + 64) = 0u;
          *(v17 + 80) = 0u;
          v110 = (v17 + 48);
          objc_storeStrong((v17 + 48), v7);
          nw_interface_option_details_get_nexus_agent(v15, (v18 + 32));
          objc_storeStrong((v18 + 168), address_with_port);
          *(v18 + 184) = nw_interface_option_details_get_priority(v15);
          v20 = nw_interface_option_details_copy_local_cid(v15);
          v21 = *(v18 + 112);
          *(v18 + 112) = v20;

          v22 = nw_interface_option_details_copy_remote_cid(v15);
          v23 = *(v18 + 120);
          *(v18 + 120) = v22;

          v24 = nw_interface_option_details_copy_initial_data(v15);
          v25 = *(v18 + 128);
          *(v18 + 128) = v24;

          v26 = nw_interface_option_details_copy_evaluator(v15);
          v27 = *(v18 + 144);
          *(v18 + 144) = v26;

          *(v18 + 180) = nw_interface_option_details_get_sockfd(v15);
          if (is_injected)
          {
            v28 = 64;
          }

          else
          {
            v28 = 0;
          }

          v29 = *(v18 + 185) & 0xB7 | v28;
          *(v18 + 185) = v29;
          *(v18 + 185) = v29 & 0xDF | (32 * (*(*(*(a1 + 64) + 8) + 40) != 0));
          *(v18 + 152) = 0;
          v30 = v18 + 152;
          *(v30 + 24) = 1;
          *(v30 + 8) = v30;
          xpc_array_set_uint64(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL, __buf);
          v31 = *(a1 + 32);
          if (!v31 || (*(v31 + 413) & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v32 = gLogObj;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v33 = *(a1 + 32);
              v34 = (v33 + 415);
              v44 = v33 == 0;
              v35 = " ";
              v36 = *v110;
              if (v44)
              {
                v34 = "";
                v35 = "";
              }

              *buf = 136447234;
              *&buf[4] = "nw_protocol_instance_update_available_paths_block_invoke";
              *&buf[12] = 2082;
              *&buf[14] = v34;
              *&buf[22] = 2080;
              v128 = v35;
              v129 = 2048;
              v130 = __buf;
              v131 = 2112;
              v132 = v36;
              _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDetected path %lx over %@", buf, 0x34u);
            }
          }

          *(*&v133[8] + 24) = v19;
          *(v123 + 3) = __buf;
        }

        if (*(*(*(a1 + 72) + 8) + 24) == 1)
        {
          v37 = *(a1 + 32);
          v38 = *(v37 + 312);
          v39 = v123;
          v40 = *(v123 + 3);
          if (v38 != v40)
          {
            if (v38)
            {
              *(*(*(a1 + 80) + 8) + 24) = v38;
              v40 = *(v39 + 3);
              v37 = *(a1 + 32);
            }

            *(v37 + 312) = v40;
            v41 = *(a1 + 32);
            if (!v41 || (*(v41 + 413) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v42 = gLogObj;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                v43 = *(a1 + 32);
                v44 = v43 == 0;
                if (v43)
                {
                  v45 = (v43 + 415);
                }

                else
                {
                  v45 = "";
                }

                v46 = " ";
                if (v44)
                {
                  v46 = "";
                }

                v47 = *(v123 + 3);
                v48 = *(*(*&v133[8] + 24) + 16);
                *buf = 136447234;
                *&buf[4] = "nw_protocol_instance_update_available_paths_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = v45;
                *&buf[22] = 2080;
                v128 = v46;
                v129 = 2048;
                v130 = v47;
                v131 = 2112;
                v132 = v48;
                _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sMarking path %lx as primary path over %@", buf, 0x34u);
              }
            }

            if (v16)
            {
              xpc_array_set_uint64(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL, *(v123 + 3));
            }
          }

          *(*(*(a1 + 72) + 8) + 24) = 0;
        }

        else if (v16)
        {
          v60 = *(v123 + 3);
          if (v60 == *(*(*(a1 + 80) + 8) + 24))
          {
            v61 = *(a1 + 32);
            if (!v61 || (*(v61 + 413) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v62 = gLogObj;
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
              {
                v63 = *(a1 + 32);
                v64 = v63 == 0;
                if (v63)
                {
                  v65 = (v63 + 415);
                }

                else
                {
                  v65 = "";
                }

                v66 = " ";
                if (v64)
                {
                  v66 = "";
                }

                v67 = *(v123 + 3);
                v68 = *(*(*&v133[8] + 24) + 16);
                *buf = 136447234;
                *&buf[4] = "nw_protocol_instance_update_available_paths_block_invoke";
                *&buf[12] = 2082;
                *&buf[14] = v65;
                *&buf[22] = 2080;
                v128 = v66;
                v129 = 2048;
                v130 = v67;
                v131 = 2112;
                v132 = v68;
                _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sPath %lx over %@ is no longer primary", buf, 0x34u);
              }

              v60 = *(v123 + 3);
            }

            xpc_array_set_uint64(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL, v60);
          }
        }

        v69 = *(*(a1 + 88) + 8);
        if ((*(v69 + 24) & 1) != 0 || (v70 = *(*&v133[8] + 24), *(v70 + 144) != 3))
        {
LABEL_111:

          _Block_object_dispose(type, 8);
          _Block_object_dispose(v133, 8);
          address_with_port = v111;
          v7 = v112;
          goto LABEL_112;
        }

        *(v69 + 24) = 1;
        *(*(a1 + 32) + 304) = *(v123 + 3);
        v71 = *(a1 + 32);
        if (v71 && *(v71 + 413) < 0)
        {
LABEL_95:
          v79 = *(v70 + 32);
          v80 = *(v71 - 64);
          if (v80 != v79)
          {
            nw_protocol_release(v80);
            *(v71 - 64) = v79;
            if (v79)
            {
              v81 = v79[5];
              if (v81 == &nw_protocol_ref_counted_handle || v81 == &nw_protocol_ref_counted_additional_handle && (v79 = v79[8]) != 0)
              {
                v82 = v79[11];
                if (v82)
                {
                  v79[11] = v82 + 1;
                }
              }
            }
          }

          goto LABEL_111;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v72 = gLogObj;
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          v73 = *(a1 + 32);
          v74 = v73 == 0;
          if (v73)
          {
            v75 = (v73 + 415);
          }

          else
          {
            v75 = "";
          }

          v76 = " ";
          if (v74)
          {
            v76 = "";
          }

          v77 = *(v123 + 3);
          v78 = *(*(*&v133[8] + 24) + 16);
          *buf = 136447234;
          *&buf[4] = "nw_protocol_instance_update_available_paths_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v75;
          *&buf[22] = 2080;
          v128 = v76;
          v129 = 2048;
          v130 = v77;
          v131 = 2112;
          v132 = v78;
          _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sMarking path %lx as default path over %@", buf, 0x34u);
        }

        v71 = *(a1 + 32);
        if (v71)
        {
          v70 = *(*&v133[8] + 24);
          goto LABEL_95;
        }

        v94 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_set_output_handler";
        v95 = _os_log_send_and_compose_impl();

        LOBYTE(__buf) = 16;
        v126 = 0;
        if (__nwlog_fault(v95, &__buf, &v126))
        {
          if (__buf == 17)
          {
            v96 = __nwlog_obj();
            v97 = __buf;
            if (os_log_type_enabled(v96, __buf))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_set_output_handler";
              _os_log_impl(&dword_181A37000, v96, v97, "%{public}s called with null protocol", buf, 0xCu);
            }
          }

          else if (v126 == 1)
          {
            v102 = __nw_create_backtrace_string();
            v96 = __nwlog_obj();
            v103 = __buf;
            v104 = os_log_type_enabled(v96, __buf);
            if (v102)
            {
              if (v104)
              {
                *buf = 136446466;
                *&buf[4] = "__nw_protocol_set_output_handler";
                *&buf[12] = 2082;
                *&buf[14] = v102;
                _os_log_impl(&dword_181A37000, v96, v103, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v102);
              goto LABEL_156;
            }

            if (v104)
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_set_output_handler";
              _os_log_impl(&dword_181A37000, v96, v103, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v96 = __nwlog_obj();
            v108 = __buf;
            if (os_log_type_enabled(v96, __buf))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_set_output_handler";
              _os_log_impl(&dword_181A37000, v96, v108, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_156:
        if (v95)
        {
          free(v95);
        }

        goto LABEL_111;
      }

      v12 = v11;
      v13 = _nw_endpoint_copy_interface(v12);

      if (_nw_interface_shallow_compare(v13, v7))
      {

        goto LABEL_17;
      }

      v88 = *(a1 + 32);
      if (!v88 || (*(v88 + 413) & 0x80000000) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v89 = gLogObj;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
        {
          v90 = *(a1 + 32);
          v91 = v90 == 0;
          if (v90)
          {
            v92 = (v90 + 415);
          }

          else
          {
            v92 = "";
          }

          *buf = 136446978;
          *&buf[4] = "nw_protocol_instance_update_available_paths_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v92;
          if (v91)
          {
            v93 = "";
          }

          else
          {
            v93 = " ";
          }

          *&buf[22] = 2080;
          v128 = v93;
          v129 = 2112;
          v130 = v7;
          _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSkipping path over %@, doesn't match endpoint interface", buf, 0x2Au);
        }
      }

LABEL_126:
      address_with_port = 0;
      goto LABEL_112;
    }

    v55 = *(a1 + 32);
    if (!v55 || (*(v55 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v56 = *(a1 + 32);
        v57 = v56 == 0;
        if (v56)
        {
          v58 = (v56 + 415);
        }

        else
        {
          v58 = "";
        }

        *buf = 136446978;
        *&buf[4] = "nw_protocol_instance_update_available_paths_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v58;
        if (v57)
        {
          v59 = "";
        }

        else
        {
          v59 = " ";
        }

        *&buf[22] = 2080;
        v128 = v59;
        v129 = 2112;
        v130 = v5;
        v54 = "%{public}s %{public}s%sSkipping path over %@, doesn't match migration info interface";
LABEL_68:
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, v54, buf, 0x2Au);
        goto LABEL_112;
      }

      goto LABEL_112;
    }
  }

  else
  {
    v49 = *(a1 + 32);
    if (!v49 || (*(v49 + 413) & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v50 = *(a1 + 32);
        v51 = v50 == 0;
        if (v50)
        {
          v52 = (v50 + 415);
        }

        else
        {
          v52 = "";
        }

        *buf = 136446978;
        *&buf[4] = "nw_protocol_instance_update_available_paths_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v52;
        if (v51)
        {
          v53 = "";
        }

        else
        {
          v53 = " ";
        }

        *&buf[22] = 2080;
        v128 = v53;
        v129 = 2112;
        v130 = address_with_port;
        v54 = "%{public}s %{public}s%sDetected path over null interface for endpoint %@, skipping";
        goto LABEL_68;
      }

LABEL_112:
    }
  }
}

void ___ZL43nw_protocol_instance_update_available_pathsP31NWConcrete_nw_protocol_instance_block_invoke_2(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nw_interface_option_details_copy_interface(v3);
  v5 = v4;
  if (!*(a1 + 32) || (!v4 ? (index = 0) : (index = _nw_interface_get_index(v4)), index == *(a1 + 64)))
  {
    v7 = nw_interface_option_details_copy_remote_endpoint(v3);
    v8 = *(a1 + 40);
    if ((!v8 || (*(v8 + 413) & 0x80000000) == 0) && gLogDatapath == 1)
    {
      v23 = __nwlog_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(a1 + 40);
        v25 = "";
        v26 = (v24 + 415);
        v27 = *(a1 + 56);
        v28 = v24 == 0;
        v29 = *(v27 + 16);
        if (v28)
        {
          v26 = "";
        }

        v30 = *(v27 + 136);
        if (!v28)
        {
          v25 = " ";
        }

        v31 = 136447746;
        v32 = "nw_protocol_instance_update_available_paths_block_invoke";
        v33 = 2082;
        v34 = v26;
        v35 = 2080;
        v36 = v25;
        v37 = 2112;
        v38 = v5;
        v39 = 2112;
        v40 = v29;
        v41 = 2112;
        v42 = v7;
        v43 = 2112;
        v44 = v30;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sComparing interface %@ with %@ and endpoint %@ with %@", &v31, 0x48u);
      }
    }

    if (!_nw_interface_shallow_compare(v5, *(*(a1 + 56) + 16)) || v7 && !nw_endpoint_is_equal(v7, *(*(a1 + 56) + 136), 0))
    {
      goto LABEL_27;
    }

    v9 = nw_interface_option_details_copy_local_cid(v3);
    if (nw_dispatch_data_is_equal(v9, *(*(a1 + 56) + 80)))
    {
      v10 = nw_interface_option_details_copy_remote_cid(v3);
      is_equal = nw_dispatch_data_is_equal(v10, *(*(a1 + 56) + 88));

      if (!is_equal)
      {
LABEL_27:

        goto LABEL_28;
      }

      v12 = *(*(a1 + 56) + 152);
      if (v12 == nw_interface_option_details_get_priority(v3))
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        goto LABEL_27;
      }

      v18 = *(a1 + 40);
      if (v18 && *(v18 + 413) < 0)
      {
        goto LABEL_27;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 40);
        v20 = v19 == 0;
        if (v19)
        {
          v21 = (v19 + 415);
        }

        else
        {
          v21 = "";
        }

        v31 = 136446978;
        v32 = "nw_protocol_instance_update_available_paths_block_invoke";
        v33 = 2082;
        v34 = v21;
        if (v20)
        {
          v22 = "";
        }

        else
        {
          v22 = " ";
        }

        v35 = 2080;
        v36 = v22;
        v37 = 2112;
        v38 = v3;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sPriority changed, skipping match with %@", &v31, 0x2Au);
      }
    }

    goto LABEL_27;
  }

  v13 = *(a1 + 40);
  if (!v13 || (*(v13 + 413) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 40);
      v15 = v14 == 0;
      if (v14)
      {
        v16 = (v14 + 415);
      }

      else
      {
        v16 = "";
      }

      v31 = 136446978;
      v32 = "nw_protocol_instance_update_available_paths_block_invoke_2";
      v33 = 2082;
      v34 = v16;
      if (v15)
      {
        v17 = "";
      }

      else
      {
        v17 = " ";
      }

      v35 = 2080;
      v36 = v17;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSkipping path over %@ for teardown, doesn't match migration info interface", &v31, 0x2Au);
    }

    goto LABEL_27;
  }

LABEL_28:
}

uint64_t _nw_endpoint_create_application_service_from_dictionaryTm()
{
  v0 = swift_unknownObjectRetain();
  v1 = sub_181D698EC(v0);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_181D698EC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A470);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v49[-1] - v3;
  v5 = type metadata accessor for URLEndpoint();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v49[-1] - v10);
  result = xpc_dictionary_get_uint64(a1, "type");
  if (HIDWORD(result))
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v13 = 0;
  if (result <= 3)
  {
    switch(result)
    {
      case 1:
        sub_181D6AEF4(a1, v55);
        if (*v55 != 1)
        {
          *aBlock = *v55;
          *&aBlock[8] = *&v55[8];
          *&aBlock[24] = *&v55[24];
          *&aBlock[40] = v56;
          *&aBlock[56] = v57;
          sub_181D6A2AC(aBlock, a1);
          v51[0] = *aBlock;
          v51[1] = *&aBlock[16];
          v52[0] = *&aBlock[32];
          *(v52 + 12) = *&aBlock[44];
          v49[0] = *aBlock;
          v49[1] = *&aBlock[16];
          v50[0] = *&aBlock[32];
          *(v50 + 12) = *&aBlock[44];
          v32 = objc_allocWithZone(type metadata accessor for Endpoint(0));
          sub_181D6B080(v51, v53);
          v13 = Endpoint.init(_:)(v49);
          v53[0] = *aBlock;
          v53[1] = *&aBlock[16];
          v54[0] = *&aBlock[32];
          *(v54 + 12) = *&aBlock[44];
          sub_181AA57B4(v53);
          goto LABEL_28;
        }

        break;
      case 2:
        sub_181D6A16C(a1, v55);
        if (*&v55[24])
        {
          *aBlock = *v55;
          *&aBlock[16] = *&v55[16];
          *&aBlock[32] = *&v55[32];
          *&aBlock[36] = *&v55[36];
          sub_181D6A2AC(aBlock, a1);
          v48 = *&aBlock[8];
          *&v55[8] = *&aBlock[8];
          *v55 = *aBlock;
          *&v55[24] = *&aBlock[24];
          *&v55[32] = *&aBlock[32];
          *&v55[36] = *&aBlock[36];
          v33 = objc_allocWithZone(type metadata accessor for Endpoint(0));

          v34 = Endpoint.init(_:)(v55);
LABEL_26:
          v13 = v34;

          goto LABEL_27;
        }

        break;
      case 3:
        sub_1822C1E64(a1, aBlock);
        v14 = *aBlock;
        if (*aBlock)
        {
          v15 = (*aBlock + 16);
          v16 = *(*aBlock + 24);
          *&v53[0] = *(*aBlock + 16);
          *(&v53[0] + 1) = v16;

          sub_181D6A2AC(v53, a1);
          v17 = v53[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = v14[3];
            *&aBlock[16] = v14[2];
            *&aBlock[32] = v18;
            v19 = v14[5];
            *&aBlock[48] = v14[4];
            v59 = v19;
            *aBlock = *v15;
            type metadata accessor for BonjourEndpoint1.BonjourBackingClass();
            v20 = swift_allocObject();
            memmove((v20 + 16), v14 + 1, 0x50uLL);
            sub_1820F5388(aBlock, v55);

            v14 = v20;
          }

          v14[1] = v17;

          *aBlock = v14;
          v21 = objc_allocWithZone(type metadata accessor for Endpoint(0));

          v22 = Endpoint.init(_:)(aBlock);
LABEL_17:
          v13 = v22;
LABEL_27:

          goto LABEL_28;
        }

        return 0;
      default:
        return v13;
    }

    return 0;
  }

  if (result != 4)
  {
    if (result != 5)
    {
      if (result == 6)
      {
        sub_1822C152C(a1, aBlock);
        v23 = *aBlock;
        if (*aBlock)
        {
          v24 = (*aBlock + 16);
          v25 = *(*aBlock + 24);
          *&v53[0] = *(*aBlock + 16);
          *(&v53[0] + 1) = v25;

          sub_181D6A2AC(v53, a1);
          v26 = v53[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = *(v23 + 112);
            v60 = *(v23 + 96);
            v61 = v27;
            v62 = *(v23 + 128);
            v63 = *(v23 + 144);
            v28 = *(v23 + 48);
            *&aBlock[16] = *(v23 + 32);
            *&aBlock[32] = v28;
            v29 = *(v23 + 80);
            *&aBlock[48] = *(v23 + 64);
            v59 = v29;
            *aBlock = *v24;
            type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
            v30 = swift_allocObject();
            memmove((v30 + 16), (v23 + 16), 0x88uLL);
            sub_181E63A90(aBlock, v55);

            v23 = v30;
          }

          *(v23 + 16) = v26;

          *aBlock = v23;
          v31 = objc_allocWithZone(type metadata accessor for Endpoint(0));

          v22 = Endpoint.init(_:)(aBlock);
          goto LABEL_17;
        }

        return 0;
      }

      return v13;
    }

    sub_1822C1FFC(a1, v55);
    if (*&v55[24])
    {
      *aBlock = *v55;
      *&aBlock[16] = *&v55[16];
      sub_181D6A2AC(aBlock, a1);
      v48 = *&aBlock[8];
      *&v55[8] = *&aBlock[8];
      *v55 = *aBlock;
      *&v55[24] = *&aBlock[24];
      v35 = objc_allocWithZone(type metadata accessor for Endpoint(0));

      v34 = Endpoint.init(_:)(v55);
      goto LABEL_26;
    }

    return 0;
  }

  sub_1822C2100(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1822C26E4(v4);
    return 0;
  }

  sub_181B2BEE4(v4, v11);
  sub_181D6A2AC(v11, a1);
  sub_181ACC828(v11, v8, type metadata accessor for URLEndpoint);
  v47 = objc_allocWithZone(type metadata accessor for Endpoint(0));
  v13 = Endpoint.init(_:)(v8);
  sub_181AB7264(v11, type metadata accessor for URLEndpoint);
LABEL_28:
  v36 = MEMORY[0x1E69E7CC0];
  *v55 = MEMORY[0x1E69E7CC0];
  v37 = xpc_dictionary_get_array(a1, "public_keys");
  if (!v37)
  {
    goto LABEL_32;
  }

  v38 = swift_allocObject();
  *(v38 + 16) = v55;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1822C274C;
  *(v39 + 24) = v38;
  *&aBlock[32] = sub_181F7F228;
  *&aBlock[40] = v39;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = sub_181F79D48;
  *&aBlock[24] = &block_descriptor_9_0;
  v40 = _Block_copy(aBlock);

  xpc_array_apply(v37, v40);
  swift_unknownObjectRelease();
  _Block_release(v40);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v37 = sub_1822C274C;
    v36 = *v55;
LABEL_32:
    *&v13[OBJC_IVAR____TtC7Network8Endpoint__publicKeys] = v36;

    v42 = xpc_dictionary_get_BOOL(a1, "is_local_domain");
    v43 = *&v13[OBJC_IVAR____TtC7Network8Endpoint_flags];
    if (v42)
    {
      if ((v43 & 8) != 0)
      {
        goto LABEL_38;
      }

      v44 = v43 | 8;
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        goto LABEL_38;
      }

      v44 = v43 & 0xFFF7;
    }

    *&v13[OBJC_IVAR____TtC7Network8Endpoint_flags] = v44;
LABEL_38:
    result = xpc_dictionary_get_uint64(a1, "alternate_port");
    if (!(result >> 16))
    {
      v45 = &v13[OBJC_IVAR____TtC7Network8Endpoint_alternatePort];
      *v45 = result;
      v45[2] = 0;
      v46 = xpc_dictionary_get_value(a1, "signature");
      *&v13[OBJC_IVAR____TtC7Network8Endpoint_signature] = v46;
      swift_unknownObjectRelease();

      sub_181A554F4(v37);
      return v13;
    }

    goto LABEL_43;
  }

LABEL_44:
  __break(1u);
  return result;
}

double sub_181D6A16C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (xpc_dictionary_get_string(a1, "hostname"))
  {
    uint64 = xpc_dictionary_get_uint64(a1, "port");
    if (!(uint64 >> 16))
    {
      v5 = uint64;
      v6 = sub_182AD3158();
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = v6;
      *(a2 + 24) = v8;
      *(a2 + 32) = v5;
      *(a2 + 36) = WORD2(v5);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (qword_1ED40FE10 != -1)
  {
LABEL_9:
    swift_once();
  }

  v9 = sub_182AD2698();
  __swift_project_value_buffer(v9, qword_1ED411BA0);
  v10 = sub_182AD2678();
  v11 = sub_182AD38B8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_181A37000, v10, v11, "Failed to construct endpoint from dictionary", v12, 2u);
    MEMORY[0x1865DF520](v12, -1, -1);
  }

  *(a2 + 30) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_181D6A2AC(uint64_t *a1, xpc_object_t xdict)
{
  v43 = *MEMORY[0x1E69E9840];
  if (xpc_dictionary_get_string(xdict, "device_id"))
  {
    v4 = sub_182AD3158();
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v37 = v3;
  length = 0;
  data = xpc_dictionary_get_data(xdict, "txt_record", &length);
  if (data && length >= 1)
  {
    v6 = nw_txt_record_create_with_bytes(data, length);
    v7 = swift_allocObject();
    *(v7 + 16) = MEMORY[0x1E69E7CC8];
    v8 = (v7 + 16);
    aBlock[4] = sub_181E63B60;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181E63AEC;
    aBlock[3] = &block_descriptor_15_1;
    v9 = _Block_copy(aBlock);

    nw_txt_record_apply(v6, v9);
    _Block_release(v9);
    swift_beginAccess();
    v10 = *v8;
  }

  else
  {
    v10 = 0;
    v6 = 0;
  }

  v11 = sub_182AD26F8();
  v12 = nw_xpc_dictionary_get_value_of_type(xdict, "interface", v11);
  if (v12)
  {
    sub_182092014(v12, dst);
    v38 = *dst;
  }

  else
  {
    v38 = 0;
  }

  memset(dst, 0, sizeof(dst));
  uuid = xpc_dictionary_get_uuid(xdict, "agent_identifier");
  v14 = v4;
  if (uuid)
  {
    uuid_copy(dst, uuid);
    v15 = dst[0];
    v16 = dst[12] << 32;
    v17 = dst[13] << 40;
    v18 = dst[14] << 48;
    v19 = dst[15] << 56;
    v20 = dst[3] << 24;
    v21 = dst[2] << 16;
    v22 = dst[1] << 8;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v15 = 0;
  }

  v23 = *&dst[4];
  v24 = *&dst[8];
  v25 = v16 | v17 | v18 | v19;
  if (!v38)
  {
    v38 = *a1;
  }

  v26 = v23 << 32;
  v27 = v25 | v24;
  v28 = v14;
  v29 = v37;
  if (!v37)
  {
    v30 = a1[1];
    if (v30)
    {
      v28 = *(v30 + 32);
      v29 = *(v30 + 40);
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }
  }

  v31 = v22 | v15 | v21 | v20 | v26;
  if (SystemUUID.isUUIDNULL.getter())
  {
    v32 = a1[1];
    if (v32)
    {
      v31 = *(v32 + 48);
      v27 = *(v32 + 56);
      v33 = *(v32 + 64);
    }

    else
    {
      v31 = 0;
      v27 = 0;
      v33 = 1;
    }
  }

  else
  {
    v33 = 0;
  }

  v34 = a1[1];
  if (v10)
  {
  }

  else if (v34)
  {
    v10 = *(v34 + 16);
    v6 = *(v34 + 24);
    sub_181E6550C(v10);
  }

  else
  {

    v10 = 0;
    v6 = 0;
  }

  if (!v33)
  {
    goto LABEL_37;
  }

  if (v29)
  {
    v35 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v35 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (!(v35 | v10))
    {
      goto LABEL_35;
    }

LABEL_37:
    type metadata accessor for EndpointCommon.EndpointCommonBacking();
    result = swift_allocObject();
    *(result + 16) = v10;
    *(result + 24) = v6;
    *(result + 32) = v28;
    *(result + 40) = v29;
    *(result + 48) = v31;
    *(result + 56) = v27;
    *(result + 64) = v33;
    goto LABEL_38;
  }

  if (v10)
  {
    goto LABEL_37;
  }

LABEL_35:

  result = 0;
LABEL_38:
  *a1 = v38;
  a1[1] = result;
  return result;
}

uint64_t sub_181D6A690()
{

  return swift_deallocObject();
}

xpc_object_t nw_xpc_dictionary_get_value_of_type(xpc_object_t result, const char *a2, objc_class *a3)
{
  if (result)
  {
    v5 = result;
    Class = object_getClass(result);
    result = 0;
    if (a2)
    {
      if (Class == MEMORY[0x1E69E9E80])
      {
        result = xpc_dictionary_get_value(v5, a2);
        if (a3)
        {
          if (result)
          {
            v7 = result;
            if (object_getClass(result) == a3)
            {
              return v7;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

id nw_protocol_instance_copy_override_endpoint_for_path(void *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_instance_copy_override_endpoint_for_path";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_protocol_instance_copy_override_endpoint_for_path";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v23 != 1)
    {
      v11 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_protocol_instance_copy_override_endpoint_for_path";
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v26 = "nw_protocol_instance_copy_override_endpoint_for_path";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v17)
    {
      *buf = 136446466;
      v26 = "nw_protocol_instance_copy_override_endpoint_for_path";
      v27 = 2082;
      v28 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_27;
  }

  if (!a2)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_instance_copy_override_endpoint_for_path";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_protocol_instance_copy_override_endpoint_for_path";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null path", buf, 0xCu);
      }

LABEL_39:

LABEL_40:
      if (v10)
      {
        free(v10);
      }

      goto LABEL_42;
    }

    if (v23 != 1)
    {
      v11 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_protocol_instance_copy_override_endpoint_for_path";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v26 = "nw_protocol_instance_copy_override_endpoint_for_path";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_39;
    }

    if (v19)
    {
      *buf = 136446466;
      v26 = "nw_protocol_instance_copy_override_endpoint_for_path";
      v27 = 2082;
      v28 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_27:

    free(backtrace_string);
    goto LABEL_40;
  }

  v5 = v3[37];
  if (!v5 || (node = nw_hash_table_get_node(v5, a2, 8)) == 0)
  {
LABEL_42:
    v8 = 0;
    goto LABEL_43;
  }

  v7 = 168;
  if (!*(node + 168))
  {
    v7 = 136;
  }

  v8 = *(node + v7);
LABEL_43:

  return v8;
}

char *nw_path_fallback_is_weak(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_fallback_is_weak(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_fallback_is_weak";
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
        v16 = "nw_path_fallback_is_weak";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_fallback_is_weak";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_fallback_is_weak";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_fallback_is_weak";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

void sub_181D6AEF4(void *a1@<X0>, uint64_t a2@<X8>)
{
  length[1] = *MEMORY[0x1E69E9840];
  length[0] = 0;
  data = xpc_dictionary_get_data(a1, "address", length);
  if (data && length[0] >= 16 && (v4 = *data, v4 <= 0x80))
  {
    memset(v9, 0, sizeof(v9));
    memcpy(v9, data, v4);
    sub_181AD2530(v9, a2);
  }

  else
  {
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1ED411BA0);
    v6 = sub_182AD2678();
    v7 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_181A37000, v6, v7, "Failed to construct endpoint from dictionary", v8, 2u);
      MEMORY[0x1865DF520](v8, -1, -1);
    }

    *a2 = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
  }
}

char *_nw_path_fallback_is_weak(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return (v1 & 1);
  }

  return result;
}

NWConcrete_nw_establishment_report *nw_establishment_report_create_from_dictionary(void *a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v62 = "nw_establishment_report_create_from_dictionary";
    v30 = _os_log_send_and_compose_impl();

    v60 = OS_LOG_TYPE_ERROR;
    v59 = 0;
    if (!__nwlog_fault(v30, &v60, &v59))
    {
      goto LABEL_80;
    }

    if (v60 == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = v60;
      if (os_log_type_enabled(v31, v60))
      {
        *buf = 136446210;
        v62 = "nw_establishment_report_create_from_dictionary";
        _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null dictionary", buf, 0xCu);
      }
    }

    else if (v59 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      v40 = v60;
      v41 = os_log_type_enabled(v31, v60);
      if (backtrace_string)
      {
        if (v41)
        {
          *buf = 136446466;
          v62 = "nw_establishment_report_create_from_dictionary";
          v63 = 2082;
          v64 = backtrace_string;
          _os_log_impl(&dword_181A37000, v31, v40, "%{public}s called with null dictionary, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v30)
        {
          goto LABEL_82;
        }

        goto LABEL_81;
      }

      if (v41)
      {
        *buf = 136446210;
        v62 = "nw_establishment_report_create_from_dictionary";
        _os_log_impl(&dword_181A37000, v31, v40, "%{public}s called with null dictionary, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v31 = __nwlog_obj();
      v48 = v60;
      if (os_log_type_enabled(v31, v60))
      {
        *buf = 136446210;
        v62 = "nw_establishment_report_create_from_dictionary";
        _os_log_impl(&dword_181A37000, v31, v48, "%{public}s called with null dictionary, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_79;
  }

  Class = object_getClass(v1);
  v4 = MEMORY[0x1E69E9E80];
  if (Class != MEMORY[0x1E69E9E80])
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v62 = "nw_establishment_report_create_from_dictionary";
    v30 = _os_log_send_and_compose_impl();

    v60 = OS_LOG_TYPE_ERROR;
    v59 = 0;
    if (!__nwlog_fault(v30, &v60, &v59))
    {
      goto LABEL_80;
    }

    if (v60 == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v34 = v60;
      if (os_log_type_enabled(v31, v60))
      {
        *buf = 136446210;
        v62 = "nw_establishment_report_create_from_dictionary";
        _os_log_impl(&dword_181A37000, v31, v34, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary))", buf, 0xCu);
      }
    }

    else if (v59 == 1)
    {
      v42 = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      v43 = v60;
      v44 = os_log_type_enabled(v31, v60);
      if (v42)
      {
        if (v44)
        {
          *buf = 136446466;
          v62 = "nw_establishment_report_create_from_dictionary";
          v63 = 2082;
          v64 = v42;
          _os_log_impl(&dword_181A37000, v31, v43, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v42);
LABEL_80:
        if (!v30)
        {
LABEL_82:
          v5 = 0;
          goto LABEL_17;
        }

LABEL_81:
        free(v30);
        goto LABEL_82;
      }

      if (v44)
      {
        *buf = 136446210;
        v62 = "nw_establishment_report_create_from_dictionary";
        _os_log_impl(&dword_181A37000, v31, v43, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v31 = __nwlog_obj();
      v49 = v60;
      if (os_log_type_enabled(v31, v60))
      {
        *buf = 136446210;
        v62 = "nw_establishment_report_create_from_dictionary";
        _os_log_impl(&dword_181A37000, v31, v49, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_79:

    goto LABEL_80;
  }

  v5 = objc_alloc_init(NWConcrete_nw_establishment_report);
  if (!v5)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v62 = "nw_establishment_report_create_from_dictionary";
    v36 = _os_log_send_and_compose_impl();

    v60 = OS_LOG_TYPE_ERROR;
    v59 = 0;
    if (__nwlog_fault(v36, &v60, &v59))
    {
      if (v60 == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = v60;
        if (os_log_type_enabled(v37, v60))
        {
          *buf = 136446210;
          v62 = "nw_establishment_report_create_from_dictionary";
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null report", buf, 0xCu);
        }
      }

      else if (v59 == 1)
      {
        v45 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v46 = v60;
        v47 = os_log_type_enabled(v37, v60);
        if (v45)
        {
          if (v47)
          {
            *buf = 136446466;
            v62 = "nw_establishment_report_create_from_dictionary";
            v63 = 2082;
            v64 = v45;
            _os_log_impl(&dword_181A37000, v37, v46, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v45);
          goto LABEL_86;
        }

        if (v47)
        {
          *buf = 136446210;
          v62 = "nw_establishment_report_create_from_dictionary";
          _os_log_impl(&dword_181A37000, v37, v46, "%{public}s called with null report, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v37 = __nwlog_obj();
        v50 = v60;
        if (os_log_type_enabled(v37, v60))
        {
          *buf = 136446210;
          v62 = "nw_establishment_report_create_from_dictionary";
          _os_log_impl(&dword_181A37000, v37, v50, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_86:
    if (v36)
    {
      free(v36);
    }

    goto LABEL_16;
  }

  v5->attempt_started_after_milliseconds = xpc_dictionary_get_uint64(v2, "attempt_started_after_milliseconds");
  v5->duration_milliseconds = xpc_dictionary_get_uint64(v2, "duration_milliseconds");
  v5->resolution_started_after_milliseconds = xpc_dictionary_get_uint64(v2, "resolution_started_after_milliseconds");
  v5->flow_started_after_milliseconds = xpc_dictionary_get_uint64(v2, "flow_started_after_milliseconds");
  if (object_getClass(v2) == v4 && (value = xpc_dictionary_get_value(v2, "proxy_endpoints")) != 0 && (v14 = value, object_getClass(value) == MEMORY[0x1E69E9E50]))
  {
    v6 = xpc_retain(v14);
    if (v6)
    {
      v15 = _nw_array_create();
      proxy_endpoints = v5->proxy_endpoints;
      v5->proxy_endpoints = v15;

      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_establishment_report_create_from_dictionary_block_invoke;
      applier[3] = &unk_1E6A3D300;
      v58 = v5;
      xpc_array_apply(v6, applier);
    }
  }

  else
  {
    v6 = 0;
  }

  if (object_getClass(v2) == v4 && (v17 = xpc_dictionary_get_value(v2, "proxied_next_hop_endpoints")) != 0 && (v18 = v17, object_getClass(v17) == MEMORY[0x1E69E9E50]))
  {
    v7 = xpc_retain(v18);
    if (v7)
    {
      v19 = _nw_array_create();
      proxied_next_hop_endpoints = v5->proxied_next_hop_endpoints;
      v5->proxied_next_hop_endpoints = v19;

      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __nw_establishment_report_create_from_dictionary_block_invoke_2;
      v55[3] = &unk_1E6A3D300;
      v56 = v5;
      xpc_array_apply(v7, v55);
    }
  }

  else
  {
    v7 = 0;
  }

  v5->previous_attempt_count = xpc_dictionary_get_uint64(v2, "previous_attempt_count");
  *(v5 + 84) = *(v5 + 84) & 0xFE | xpc_dictionary_get_BOOL(v2, "proxy_configured");
  if (xpc_dictionary_get_BOOL(v2, "used_proxy"))
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 84) = *(v5 + 84) & 0xFD | v8;
  if (object_getClass(v2) == v4 && (v21 = xpc_dictionary_get_value(v2, "protocol_reports")) != 0 && (v22 = v21, object_getClass(v21) == MEMORY[0x1E69E9E50]))
  {
    v9 = xpc_retain(v22);
    if (v9)
    {
      v23 = _nw_array_create();
      protocol_reports = v5->protocol_reports;
      v5->protocol_reports = v23;

      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __nw_establishment_report_create_from_dictionary_block_invoke_3;
      v53[3] = &unk_1E6A3D300;
      v54 = v5;
      xpc_array_apply(v9, v53);
    }
  }

  else
  {
    v9 = 0;
  }

  if (object_getClass(v2) == v4 && (v25 = xpc_dictionary_get_value(v2, "resolution_reports")) != 0 && (v26 = v25, object_getClass(v25) == MEMORY[0x1E69E9E50]))
  {
    v10 = xpc_retain(v26);
    if (v10)
    {
      v27 = _nw_array_create();
      resolution_reports = v5->resolution_reports;
      v5->resolution_reports = v27;

      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __nw_establishment_report_create_from_dictionary_block_invoke_4;
      v51[3] = &unk_1E6A3D300;
      v52 = v5;
      xpc_array_apply(v10, v51);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v5;

LABEL_16:
LABEL_17:

  return v5;
}

void nw_http3_control_stream_process_output(uint64_t a1)
{
  buf[9] = *MEMORY[0x1E69E9840];
  v72 = (a1 + 1397);
  while (1)
  {
    v98 = 0;
    v99 = &v98;
    v100 = 0x3802000000;
    v101 = __Block_byref_object_copy__63268;
    v102 = __Block_byref_object_dispose__63269;
    v103[0] = 0;
    v103[1] = v103;
    v3 = *(a1 + 1288);
    if (v3 <= 1)
    {
      break;
    }

    if (v3 == 2)
    {
      v14 = *(a1 + 1208);
      if (v14)
      {
        size = dispatch_data_get_size(v14);
        if (!nw_http3_framer_get_output_frames_for_single_http3_frame(a1 + 160, 0xFF8E1EB5uLL, size, v103))
        {
          goto LABEL_149;
        }

        buf[0] = 0;
        buf[1] = buf;
        buf[2] = 0x2000000000;
        buf[3] = 0;
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 0x40000000;
        v76 = ___ZL38nw_http3_control_stream_process_outputP17nw_protocol_http3_block_invoke_52;
        v77 = &unk_1E6A38B00;
        v80 = size;
        v78 = buf;
        v79 = a1;
        v16 = v99[5];
        do
        {
          if (!v16)
          {
            break;
          }

          v17 = *(v16 + 32);
          v18 = (v76)(v75);
          v16 = v17;
        }

        while ((v18 & 1) != 0);
        v4 = v73;
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 0x40000000;
        v73[2] = ___ZL38nw_http3_control_stream_process_outputP17nw_protocol_http3_block_invoke_2_54;
        v73[3] = &unk_1E6A38B28;
        v74 = size;
        v73[4] = &v98;
        v73[5] = a1;
        goto LABEL_76;
      }

      __nwlog_obj();
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http3_control_stream_process_output";
      v61 = _os_log_send_and_compose_impl();
      v104[0] = 16;
      LOBYTE(__src) = 0;
      if (!__nwlog_fault(v61, v104, &__src))
      {
        goto LABEL_147;
      }

      if (v104[0] == 17)
      {
        v62 = __nwlog_obj();
        v63 = v104[0];
        if (os_log_type_enabled(v62, v104[0]))
        {
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = "nw_http3_control_stream_process_output";
          v64 = "%{public}s called with null http3->authenticator_data";
          goto LABEL_146;
        }

        goto LABEL_147;
      }

      if (__src == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v62 = __nwlog_obj();
        v63 = v104[0];
        v66 = os_log_type_enabled(v62, v104[0]);
        if (backtrace_string)
        {
          if (v66)
          {
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "nw_http3_control_stream_process_output";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = backtrace_string;
            _os_log_impl(&dword_181A37000, v62, v63, "%{public}s called with null http3->authenticator_data, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_147;
        }

        if (!v66)
        {
LABEL_147:
          if (v61)
          {
            free(v61);
          }

LABEL_149:
          _Block_object_dispose(&v98, 8);
          return;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http3_control_stream_process_output";
        v64 = "%{public}s called with null http3->authenticator_data, no backtrace";
      }

      else
      {
        v62 = __nwlog_obj();
        v63 = v104[0];
        if (!os_log_type_enabled(v62, v104[0]))
        {
          goto LABEL_147;
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = "nw_http3_control_stream_process_output";
        v64 = "%{public}s called with null http3->authenticator_data, backtrace limit exceeded";
      }

LABEL_146:
      _os_log_impl(&dword_181A37000, v62, v63, v64, buf, 0xCu);
      goto LABEL_147;
    }

    v4 = &__block_literal_global_31_63275;
    if (v3 != 3)
    {
      goto LABEL_77;
    }

    v8 = *(a1 + 920);
    if (!v8)
    {
      goto LABEL_149;
    }

    if ((*(v8 + 732) & 0x1000) != 0 && !*(v8 + 520) && !*(v8 + 630) && !*(v8 + 631))
    {
      *(v8 + 732) &= ~0x1000u;
      v9 = *(v8 + 32);
      if (v9)
      {
        v10 = *(v9 + 24);
        if (v10)
        {
          v11 = *(v10 + 32);
          if (v11)
          {
            v11(v9, v8);
            goto LABEL_21;
          }
        }
      }

      __nwlog_obj();
      v42 = *(v8 + 32);
      if (v42)
      {
        v43 = *(v42 + 16);
        if (!v43)
        {
          v43 = "invalid";
        }
      }

      else
      {
        v43 = "invalid";
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http3_stream_control_stream_output_available";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v43;
      v44 = _os_log_send_and_compose_impl();
      v104[0] = 16;
      LOBYTE(__src) = 0;
      v71 = v44;
      if (!__nwlog_fault(v44, v104, &__src))
      {
        goto LABEL_128;
      }

      if (v104[0] == 17)
      {
        v45 = __nwlog_obj();
        type = v104[0];
        if (os_log_type_enabled(v45, v104[0]))
        {
          v46 = *(v8 + 32);
          if (v46)
          {
            v47 = *(v46 + 16);
            if (!v47)
            {
              v47 = "invalid";
            }
          }

          else
          {
            v47 = "invalid";
          }

          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http3_stream_control_stream_output_available";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v47;
          v55 = v45;
          v56 = type;
          v57 = "%{public}s protocol %{public}s has invalid disconnect callback";
          goto LABEL_124;
        }

        goto LABEL_128;
      }

      if (__src != 1)
      {
        v52 = __nwlog_obj();
        typeb = v104[0];
        if (os_log_type_enabled(v52, v104[0]))
        {
          v53 = *(v8 + 32);
          if (v53)
          {
            v54 = *(v53 + 16);
            if (!v54)
            {
              v54 = "invalid";
            }
          }

          else
          {
            v54 = "invalid";
          }

          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http3_stream_control_stream_output_available";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v54;
          v55 = v52;
          v56 = typeb;
          v57 = "%{public}s protocol %{public}s has invalid disconnect callback, backtrace limit exceeded";
LABEL_124:
          _os_log_impl(&dword_181A37000, v55, v56, v57, buf, 0x16u);
        }

LABEL_128:
        v60 = v71;
        if (!v71)
        {
          goto LABEL_21;
        }

LABEL_129:
        free(v60);
        goto LABEL_21;
      }

      v48 = __nw_create_backtrace_string();
      typea = __nwlog_obj();
      v67 = v104[0];
      v49 = os_log_type_enabled(typea, v104[0]);
      if (v48)
      {
        if (v49)
        {
          v50 = *(v8 + 32);
          if (v50)
          {
            v51 = *(v50 + 16);
            if (!v51)
            {
              v51 = "invalid";
            }
          }

          else
          {
            v51 = "invalid";
          }

          LODWORD(buf[0]) = 136446722;
          *(buf + 4) = "nw_http3_stream_control_stream_output_available";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v51;
          HIWORD(buf[2]) = 2082;
          buf[3] = v48;
          _os_log_impl(&dword_181A37000, typea, v67, "%{public}s protocol %{public}s has invalid disconnect callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v48);
        goto LABEL_128;
      }

      if (!v49)
      {
        goto LABEL_128;
      }

      v58 = *(v8 + 32);
      if (v58)
      {
        v59 = *(v58 + 16);
        if (!v59)
        {
          v59 = "invalid";
        }
      }

      else
      {
        v59 = "invalid";
      }

      LODWORD(buf[0]) = 136446466;
      *(buf + 4) = "nw_http3_stream_control_stream_output_available";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v59;
      _os_log_impl(&dword_181A37000, typea, v67, "%{public}s protocol %{public}s has invalid disconnect callback, no backtrace", buf, 0x16u);
      v60 = v71;
      if (v71)
      {
        goto LABEL_129;
      }
    }

LABEL_21:
    if (v8 == *(a1 + 920))
    {
      goto LABEL_149;
    }

    v4 = &__block_literal_global_31_63275;
    v12 = *(a1 + 1399);
    if ((v12 & 2) != 0)
    {
LABEL_2:
      *(a1 + 1288) = 2;
      v2 = v12 & 0xFD;
LABEL_3:
      *(a1 + 1399) = v2;
      goto LABEL_4;
    }

LABEL_78:
    if (v12)
    {
      *(a1 + 1288) = 1;
      v2 = v12 & 0xFC;
      goto LABEL_3;
    }

    *(a1 + 1288) = 3;
LABEL_4:
    (v4[2])(v4);
    _Block_object_dispose(&v98, 8);
  }

  if (v3)
  {
    v4 = &__block_literal_global_31_63275;
    if (v3 != 1)
    {
      goto LABEL_77;
    }

    v5 = *(a1 + 1008);
    if (v5 >= 0x40)
    {
      if (v5 >= 0x4000)
      {
        if (v5 >> 30)
        {
          if (v5 >> 62)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
            LODWORD(buf[0]) = 136446466;
            *(buf + 4) = "_http_vle_encode";
            WORD2(buf[1]) = 2048;
            *(&buf[1] + 6) = v5;
            v32 = _os_log_send_and_compose_impl();
            if (__nwlog_should_abort(v32))
            {
              goto LABEL_150;
            }

            free(v32);
            v6 = 0;
            v7 = v99;
          }

          else
          {
            v6 = 8;
            v7 = &v98;
          }
        }

        else
        {
          v6 = 4;
          v7 = &v98;
        }
      }

      else
      {
        v6 = 2;
        v7 = &v98;
      }
    }

    else
    {
      v6 = 1;
      v7 = &v98;
    }

    if (!nw_http3_framer_get_output_frames_for_single_http3_frame(a1 + 160, 7uLL, v6, v7 + 5))
    {
      goto LABEL_149;
    }

    buf[0] = 0;
    buf[1] = buf;
    buf[2] = 0x2000000000;
    buf[3] = 0;
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 0x40000000;
    v84 = ___ZL38nw_http3_control_stream_process_outputP17nw_protocol_http3_block_invoke_48;
    v85 = &unk_1E6A38AB0;
    v88 = v6;
    v86 = buf;
    v87 = a1;
    v33 = v99[5];
    do
    {
      if (!v33)
      {
        break;
      }

      v34 = *(v33 + 32);
      v35 = (v84)(v83);
      v33 = v34;
    }

    while ((v35 & 1) != 0);
    v4 = v81;
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 0x40000000;
    v81[2] = ___ZL38nw_http3_control_stream_process_outputP17nw_protocol_http3_block_invoke_2_50;
    v81[3] = &unk_1E6A38AD8;
    v82 = v6;
    v81[4] = &v98;
    v81[5] = a1;
LABEL_76:
    _Block_object_dispose(buf, 8);
LABEL_77:
    v12 = *(a1 + 1399);
    if ((v12 & 2) != 0)
    {
      goto LABEL_2;
    }

    goto LABEL_78;
  }

  if (!nw_http3_framer_get_output_frames_for_single_http3_frame(a1 + 160, 4uLL, 0x3Fu, v103))
  {
    goto LABEL_149;
  }

  memset(&buf[4] + 6, 0, 25);
  memset(buf + 6, 0, 32);
  LOBYTE(buf[0]) = 1;
  *(buf + 1) = -129;
  BYTE3(buf[0]) = 7;
  WORD2(buf[0]) = 25664;
  if ((*v72 & 2) != 0)
  {
    v19 = (*v72 & 4) == 0;
    v20 = 30274;
    if ((*v72 & 4) != 0)
    {
      v21 = 2;
    }

    else
    {
      v20 = 51;
      v21 = 1;
    }

    __src = v20;
    if (v19)
    {
      v22 = 7;
    }

    else
    {
      v22 = 8;
    }

    memcpy(buf + 6, &__src, v21);
    *(buf + v22) = 1;
    v13 = v21 + 7;
  }

  else
  {
    v13 = 6;
  }

  v23 = arc4random();
  if (v23)
  {
    if (v23 > 0x20F)
    {
      if (v23 > 0x210841F)
      {
        __src = bswap64((31 * v23 + 33) | 0xC000000000000000);
        v24 = 8;
      }

      else
      {
        __src = bswap32((31 * v23 + 33) | 0x80000000);
        v24 = 4;
      }
    }

    else
    {
      __src = bswap32((31 * v23 + 33) | 0x4000) >> 16;
      v24 = 2;
    }
  }

  else
  {
    __src = 33;
    v24 = 1;
  }

  memcpy(buf + v13, &__src, v24);
  v25 = arc4random();
  if (v25 > 0x3F)
  {
    if (v25 >> 14)
    {
      if (v25 >> 30)
      {
        __src = bswap64(v25 | 0xC000000000000000);
        v26 = 8;
      }

      else
      {
        __src = bswap32(v25 | 0x80000000);
        v26 = 4;
      }
    }

    else
    {
      __src = bswap32(v25 | 0x4000) >> 16;
      v26 = 2;
    }
  }

  else
  {
    __src = v25;
    v26 = 1;
  }

  v27 = v24 + v13;
  memcpy(buf + v27, &__src, v26);
  v28 = v26 + v27;
  if ((*v72 & 1) == 0)
  {
    goto LABEL_86;
  }

  *(buf + v28) = 8;
  *(buf + v28 + 1) = 1;
  webtransport_state = nw_http_connection_metadata_get_webtransport_state(*(a1 + 1264));
  max_sessions = nw_webtransport_connection_state_get_max_sessions(webtransport_state);
  if (!max_sessions)
  {
    v28 += 2;
    goto LABEL_86;
  }

  __src = 0x6A7071C6000000C0;
  *(buf + v28 + 2) = 0x6A7071C6000000C0;
  if (max_sessions <= 0x3F)
  {
    __src = max_sessions;
    v31 = 1;
    goto LABEL_85;
  }

  if (!(max_sessions >> 14))
  {
    __src = bswap32(max_sessions | 0x4000) >> 16;
    v31 = 2;
    goto LABEL_85;
  }

  if (!(max_sessions >> 30))
  {
    __src = bswap32(max_sessions | 0x80000000);
    v31 = 4;
    goto LABEL_85;
  }

  if (!(max_sessions >> 62))
  {
    __src = bswap64(max_sessions | 0xC000000000000000);
    v31 = 8;
    goto LABEL_85;
  }

  v36 = max_sessions;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *v104 = 136446466;
  *&v104[4] = "_http_vle_encode";
  *&v104[12] = 2048;
  *&v104[14] = v36;
  v37 = _os_log_send_and_compose_impl();
  if (!__nwlog_should_abort(v37))
  {
    free(v37);
    v31 = 0;
LABEL_85:
    v38 = v28 + 10;
    memcpy(buf + v38, &__src, v31);
    v28 = v31 + v38;
LABEL_86:
    *v104 = 0;
    *&v104[8] = v104;
    *&v104[16] = 0x2000000000;
    v105 = 0;
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 0x40000000;
    v91 = ___ZL38nw_http3_control_stream_process_outputP17nw_protocol_http3_block_invoke_32;
    v92 = &unk_1E6A389B8;
    v93 = v104;
    v94 = v28;
    v95 = buf;
    v96 = a1;
    v39 = v99[5];
    do
    {
      if (!v39)
      {
        break;
      }

      v40 = *(v39 + 32);
      v41 = v91(v90);
      v39 = v40;
    }

    while ((v41 & 1) != 0);
    v4 = v89;
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 0x40000000;
    v89[2] = ___ZL38nw_http3_control_stream_process_outputP17nw_protocol_http3_block_invoke_2;
    v89[3] = &unk_1E6A38A88;
    v89[5] = a1;
    v89[6] = v28;
    v89[4] = &v98;
    _Block_object_dispose(v104, 8);
    v12 = *(a1 + 1399);
    if ((v12 & 2) != 0)
    {
      goto LABEL_2;
    }

    goto LABEL_78;
  }

LABEL_150:
  __break(1u);
}

uint64_t __nw_establishment_report_create_from_dictionary_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) != MEMORY[0x1E69E9E80])
  {
    goto LABEL_22;
  }

  string = xpc_dictionary_get_string(v4, "protocol");
  if (!strcmp(string, "tcp"))
  {
    if (nw_protocol_setup_tcp_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
    }

    v6 = &g_tcp_definition;
LABEL_17:
    v7 = *v6;
    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (strcmp(string, "tls"))
  {
    if (!strcmp(string, "quic"))
    {
      if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
      }

      v6 = &nw_protocol_copy_quic_stream_definition_quic_definition;
    }

    else
    {
      if (strcmp(string, "quic-connection"))
      {
        goto LABEL_22;
      }

      if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
      }

      v6 = &nw_protocol_copy_quic_connection_definition_quic_definition;
    }

    goto LABEL_17;
  }

  v7 = nw_protocol_boringssl_copy_definition();
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_18:
  v8 = objc_alloc_init(NWConcrete_nw_protocol_establishment_report);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->protocol, v7);
    *(v9 + 8) = xpc_dictionary_get_uint64(v4, "handshake_milliseconds");
    *(v9 + 16) = xpc_dictionary_get_uint64(v4, "handshake_rtt_milliseconds");
    *(v9 + 24) = xpc_dictionary_get_uint64(v4, "client_accurate_ecn_state");
    *(v9 + 28) = xpc_dictionary_get_uint64(v4, "server_accurate_ecn_state");
    *(v9 + 40) = *(v9 + 40) & 0xFE | xpc_dictionary_get_BOOL(v4, "l4s_enabled");
    v10 = *(*(a1 + 32) + 64);
    if (v10)
    {
      _nw_array_append(v10, v9);
    }
  }

LABEL_22:
  return 1;
}

uint64_t nw_http3_framer_get_output_frames_for_single_http3_frame(uint64_t a1, unint64_t a2, unsigned int a3, _DWORD **a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_http3_framer_get_output_frames_for_single_http3_frame";
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
          v34 = "nw_http3_framer_get_output_frames_for_single_http3_frame";
          v28 = "%{public}s called with null http3_framer";
LABEL_59:
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
            v34 = "nw_http3_framer_get_output_frames_for_single_http3_frame";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null http3_framer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_60;
        }

        if (v30)
        {
          *buf = 136446210;
          v34 = "nw_http3_framer_get_output_frames_for_single_http3_frame";
          v28 = "%{public}s called with null http3_framer, no backtrace";
          goto LABEL_59;
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v34 = "nw_http3_framer_get_output_frames_for_single_http3_frame";
          v28 = "%{public}s called with null http3_framer, backtrace limit exceeded";
          goto LABEL_59;
        }
      }
    }

LABEL_60:
    if (v25)
    {
      free(v25);
    }

    return 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 24);
    if (v6)
    {
      v7 = *(v6 + 88);
      if (v7)
      {
        if (a2 >> 30)
        {
          v9 = 8;
        }

        else
        {
          v9 = 4;
        }

        if (a2 >= 0x4000)
        {
          v10 = v9;
        }

        else
        {
          v10 = 2;
        }

        if (a2 >= 0x40)
        {
          v11 = v10;
        }

        else
        {
          v11 = 1;
        }

        if (a3 >> 30)
        {
          v12 = 8;
        }

        else
        {
          v12 = 4;
        }

        if (a3 < 0x4000)
        {
          v12 = 2;
        }

        if (a3 >= 0x40)
        {
          v13 = v12;
        }

        else
        {
          v13 = 1;
        }

        v14 = (v13 + v11);
        v15 = a3 + v14;
        if (!__CFADD__(a3, v14))
        {
          goto LABEL_41;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446978;
        v34 = "nw_http3_framer_get_output_frames_for_single_http3_frame";
        v35 = 2082;
        v36 = "bytes";
        v37 = 2048;
        v38 = v14;
        v39 = 2048;
        v40 = v15;
        v16 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v31 = 0;
        if (__nwlog_fault(v16, &type, &v31))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v17 = gLogObj;
            v18 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136446978;
              v34 = "nw_http3_framer_get_output_frames_for_single_http3_frame";
              v35 = 2082;
              v36 = "bytes";
              v37 = 2048;
              v38 = v14;
              v39 = 2048;
              v40 = v15;
              v19 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_37:
              _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0x2Au);
            }
          }

          else if (v31 == 1)
          {
            v20 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v17 = gLogObj;
            v18 = type;
            v21 = os_log_type_enabled(gLogObj, type);
            if (v20)
            {
              if (v21)
              {
                *buf = 136447234;
                v34 = "nw_http3_framer_get_output_frames_for_single_http3_frame";
                v35 = 2082;
                v36 = "bytes";
                v37 = 2048;
                v38 = v14;
                v39 = 2048;
                v40 = v15;
                v41 = 2082;
                v42 = v20;
                _os_log_impl(&dword_181A37000, v17, v18, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v20);
              goto LABEL_38;
            }

            if (v21)
            {
              *buf = 136446978;
              v34 = "nw_http3_framer_get_output_frames_for_single_http3_frame";
              v35 = 2082;
              v36 = "bytes";
              v37 = 2048;
              v38 = v14;
              v39 = 2048;
              v40 = v15;
              v19 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
              goto LABEL_37;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v17 = gLogObj;
            v18 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136446978;
              v34 = "nw_http3_framer_get_output_frames_for_single_http3_frame";
              v35 = 2082;
              v36 = "bytes";
              v37 = 2048;
              v38 = v14;
              v39 = 2048;
              v40 = v15;
              v19 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
              goto LABEL_37;
            }
          }
        }

LABEL_38:
        if (v16)
        {
          free(v16);
        }

        v7 = *(*(v5 + 24) + 88);
        v15 = 0xFFFFFFFFLL;
LABEL_41:
        result = v7(v5, *(a1 + 24), v15, v15, 0xFFFFFFFFLL, a4);
        if (result)
        {
          v23 = result;
          nw_http3_framer_claim_http3_frame_header(v14, *a4);
          return v23;
        }

        return result;
      }
    }
  }

  v24 = __nwlog_obj();
  result = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v34 = "nw_http3_framer_get_output_frames_for_single_http3_frame";
    v35 = 2048;
    v36 = v5;
    _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s Output handler (%p)'s get_output_frames callback is not properly set", buf, 0x16u);
    return 0;
  }

  return result;
}

uint64_t _nw_tcp_options_get_enable_keepalive_offload(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = result + *(*result + 128);
    result = swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4 == 2)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 38) & 1;
    }
  }

  return result;
}

void nw_endpoint_handler_migration_callback(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  *(v6 + 20) = 655361;
  nw_endpoint_handler_report(v6, 0, v6 + 40, 0);
  v4 = _Block_copy(*(v6 + 6));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v3);
  }
}

uint64_t __nw_establishment_report_create_from_dictionary_block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  Class = object_getClass(v4);
  v6 = MEMORY[0x1E69E9E80];
  if (Class == MEMORY[0x1E69E9E80])
  {
    v7 = objc_alloc_init(NWConcrete_nw_resolution_report);
    v7->milliseconds = xpc_dictionary_get_uint64(v4, "milliseconds");
    if (!v4)
    {
      goto LABEL_6;
    }

    if (object_getClass(v4) == v6 && (value = xpc_dictionary_get_value(v4, "successful_endpoint")) != 0 && (v13 = value, object_getClass(value) == v6))
    {
      v8 = v13;
      v14 = _nw_endpoint_create_from_dictionary(v8);

      successful_endpoint = v7->successful_endpoint;
      v7->successful_endpoint = v14;
    }

    else
    {
      v8 = 0;
    }

    if (object_getClass(v4) == v6 && (v16 = xpc_dictionary_get_value(v4, "preferred_endpoint")) != 0 && (v17 = v16, object_getClass(v16) == v6))
    {
      v9 = v17;
      v18 = _nw_endpoint_create_from_dictionary(v9);

      preferred_endpoint = v7->preferred_endpoint;
      v7->preferred_endpoint = v18;
    }

    else
    {
LABEL_6:
      v9 = 0;
    }

    v7->endpoint_count = xpc_dictionary_get_uint64(v4, "endpoint_count");
    v7->source = xpc_dictionary_get_uint64(v4, "source");
    v10 = *(*(a1 + 32) + 72);
    if (v10 && v7)
    {
      _nw_array_append(v10, v7);
    }
  }

  return 1;
}

void nw_protocol_remove_instance(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_remove_instance";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v9, &type, &v18))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v21 = "nw_protocol_remove_instance";
      v12 = "%{public}s called with null protocol";
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v21 = "nw_protocol_remove_instance";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_38;
      }

      if (!v16)
      {
LABEL_38:
        if (v9)
        {
          free(v9);
        }

        return;
      }

      *buf = 136446210;
      v21 = "nw_protocol_remove_instance";
      v12 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v21 = "nw_protocol_remove_instance";
      v12 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_38;
  }

  nw_allow_use_of_dispatch_internal();
  if (gLogDatapath == 1)
  {
    v13 = __nwlog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 16);
      *buf = 136446722;
      v21 = "nw_protocol_remove_instance";
      v22 = 2048;
      v23 = a1;
      v24 = 2080;
      v25 = v14;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s checking to remove instance %p of %s", buf, 0x20u);
    }
  }

  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v2 = *(a1 + 16);
  v3 = &g_registration_list;
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (*v2 == v3[4] && v2[1] == v3[5] && v2[2] == v3[6] && v2[3] == v3[7] && v2[4] == v3[8])
    {
      v8 = v3[9];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = __nw_protocol_remove_instance_block_invoke;
      v17[3] = &__block_descriptor_tmp_46848;
      v17[4] = a1;
      nw_array_remove_objects(v8, v17);
      break;
    }
  }

  os_unfair_lock_unlock(&nw_protocol_registrar_lock);
}

uint64_t nw_protocol_http3_uni_stream_get_output_frames(nw_protocol *a1, nw_protocol *a2, int a3, int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_protocol_http3_uni_stream_get_output_frames";
    v36 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v36, &type, &v49))
    {
      goto LABEL_94;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446210;
        v52 = "nw_protocol_http3_uni_stream_get_output_frames";
        v39 = "%{public}s called with null protocol";
LABEL_93:
        _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0xCu);
      }

LABEL_94:
      if (!v36)
      {
        return 0;
      }

      v35 = v36;
      goto LABEL_53;
    }

    if (v49 != 1)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446210;
        v52 = "nw_protocol_http3_uni_stream_get_output_frames";
        v39 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    backtrace_string = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = type;
    v42 = os_log_type_enabled(v37, type);
    if (!backtrace_string)
    {
      if (v42)
      {
        *buf = 136446210;
        v52 = "nw_protocol_http3_uni_stream_get_output_frames";
        v39 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    if (v42)
    {
      *buf = 136446466;
      v52 = "nw_protocol_http3_uni_stream_get_output_frames";
      v53 = 2082;
      *v54 = backtrace_string;
      v43 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_74:
      _os_log_impl(&dword_181A37000, v37, v38, v43, buf, 0x16u);
    }

LABEL_75:
    free(backtrace_string);
    goto LABEL_94;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_protocol_http3_uni_stream_get_output_frames";
    v36 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v36, &type, &v49))
    {
      goto LABEL_94;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446210;
        v52 = "nw_protocol_http3_uni_stream_get_output_frames";
        v39 = "%{public}s called with null http3_stream";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    if (v49 != 1)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446210;
        v52 = "nw_protocol_http3_uni_stream_get_output_frames";
        v39 = "%{public}s called with null http3_stream, backtrace limit exceeded";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    backtrace_string = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = type;
    v44 = os_log_type_enabled(v37, type);
    if (!backtrace_string)
    {
      if (v44)
      {
        *buf = 136446210;
        v52 = "nw_protocol_http3_uni_stream_get_output_frames";
        v39 = "%{public}s called with null http3_stream, no backtrace";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    if (v44)
    {
      *buf = 136446466;
      v52 = "nw_protocol_http3_uni_stream_get_output_frames";
      v53 = 2082;
      *v54 = backtrace_string;
      v43 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (gLogDatapath == 1)
  {
    v40 = __nwlog_obj();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v52 = "nw_protocol_http3_uni_stream_get_output_frames";
      v53 = 2048;
      *v54 = handle;
      _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s called on http3_uni_stream %p", buf, 0x16u);
    }
  }

  v11 = handle[8];
  if (v11 == -1 || *(handle + 120))
  {
    v12 = 0;
    result = a1->output_handler;
    if (!result)
    {
      return result;
    }

    goto LABEL_23;
  }

  if (v11 >= 0x40)
  {
    if (v11 >= 0x4000)
    {
      if (v11 >> 30)
      {
        if (v11 >> 62)
        {
          v14 = __nwlog_obj();
          os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
          *buf = 136446466;
          v52 = "_http_vle_length";
          v53 = 2048;
          *v54 = v11;
          v15 = _os_log_send_and_compose_impl();
          result = __nwlog_should_abort(v15);
          if (result)
          {
            __break(1u);
            return result;
          }

          free(v15);
          v12 = 0;
        }

        else
        {
          v12 = 8;
        }
      }

      else
      {
        v12 = 4;
      }
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 1;
  }

  v16 = __CFADD__(a3, v12);
  v17 = a3 + v12;
  if (v16)
  {
    if (gLogDatapath == 1)
    {
      v48 = handle;
      v45 = __nwlog_obj();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v52 = "nw_protocol_http3_uni_stream_get_output_frames";
        v53 = 2082;
        *v54 = "minimum_bytes";
        *&v54[8] = 2048;
        *v55 = v12;
        *&v55[8] = 2048;
        v56 = v17;
        _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
      }

      handle = v48;
      v16 = __CFADD__(a4, v12);
      v18 = a4 + v12;
      if (!v16)
      {
LABEL_22:
        result = a1->output_handler;
        if (!result)
        {
          return result;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = __CFADD__(a4, v12);
      v18 = a4 + v12;
      if (!v16)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v16 = __CFADD__(a4, v12);
    v18 = a4 + v12;
    if (!v16)
    {
      goto LABEL_22;
    }
  }

  if (gLogDatapath == 1)
  {
    v46 = handle;
    v47 = __nwlog_obj();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v52 = "nw_protocol_http3_uni_stream_get_output_frames";
      v53 = 2082;
      *v54 = "maximum_bytes";
      *&v54[8] = 2048;
      *v55 = v12;
      *&v55[8] = 2048;
      v56 = v18;
      _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
    }

    handle = v46;
    result = a1->output_handler;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = a1->output_handler;
    if (!result)
    {
      return result;
    }
  }

LABEL_23:
  v19 = *(result + 24);
  if (!v19)
  {
    return 0;
  }

  v20 = *(v19 + 88);
  if (!v20)
  {
    return 0;
  }

  result = v20(result, a1);
  if (result && v12)
  {
    v21 = result;
    tqh_first = a6->tqh_first;
    v23 = nw_frame_unclaimed_length(tqh_first);
    if (v23 < v12)
    {
      v24 = v23;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446722;
      v52 = "nw_protocol_http3_uni_stream_get_output_frames";
      v53 = 1024;
      *v54 = v12;
      *&v54[4] = 1024;
      *&v54[6] = v24;
      v25 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v49 = 0;
      if (__nwlog_fault(v25, &type, &v49))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v27 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446722;
            v52 = "nw_protocol_http3_uni_stream_get_output_frames";
            v53 = 1024;
            *v54 = v12;
            *&v54[4] = 1024;
            *&v54[6] = v24;
            v28 = "%{public}s Expected http3_stream_type_length (%u) to be <= claimed_length (%u)";
LABEL_50:
            _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0x18u);
          }
        }

        else if (v49 == 1)
        {
          v33 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v27 = type;
          v34 = os_log_type_enabled(gLogObj, type);
          if (v33)
          {
            if (v34)
            {
              *buf = 136446978;
              v52 = "nw_protocol_http3_uni_stream_get_output_frames";
              v53 = 1024;
              *v54 = v12;
              *&v54[4] = 1024;
              *&v54[6] = v24;
              *v55 = 2082;
              *&v55[2] = v33;
              _os_log_impl(&dword_181A37000, v26, v27, "%{public}s Expected http3_stream_type_length (%u) to be <= claimed_length (%u), dumping backtrace:%{public}s", buf, 0x22u);
            }

            free(v33);
            goto LABEL_51;
          }

          if (v34)
          {
            *buf = 136446722;
            v52 = "nw_protocol_http3_uni_stream_get_output_frames";
            v53 = 1024;
            *v54 = v12;
            *&v54[4] = 1024;
            *&v54[6] = v24;
            v28 = "%{public}s Expected http3_stream_type_length (%u) to be <= claimed_length (%u), no backtrace";
            goto LABEL_50;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v27 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446722;
            v52 = "nw_protocol_http3_uni_stream_get_output_frames";
            v53 = 1024;
            *v54 = v12;
            *&v54[4] = 1024;
            *&v54[6] = v24;
            v28 = "%{public}s Expected http3_stream_type_length (%u) to be <= claimed_length (%u), backtrace limit exceeded";
            goto LABEL_50;
          }
        }
      }

LABEL_51:
      if (!v25)
      {
        return 0;
      }

      v35 = v25;
LABEL_53:
      free(v35);
      return 0;
    }

    if (nw_frame_uses_external_data(tqh_first))
    {
      v30 = tqh_first;
      v31 = 0;
      v32 = v12;
    }

    else
    {
      v30 = tqh_first;
      v31 = v12;
      v32 = 0;
    }

    nw_frame_claim(v30, v29, v31, v32);
    *(handle + 120) = v12;
    return v21;
  }

  return result;
}
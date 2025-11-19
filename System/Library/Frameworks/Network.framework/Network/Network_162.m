void ___ZL44nw_http_client_register_channel_flow_changesP10nw_context_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_http2_cancel_if_idle";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v16 = "nw_http2_cancel_if_idle";
      v8 = "%{public}s called with null protocol";
    }

    else if (v13 == 1)
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
          v16 = "nw_http2_cancel_if_idle";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v5)
        {
          return;
        }

        goto LABEL_42;
      }

      if (!v10)
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v16 = "nw_http2_cancel_if_idle";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v16 = "nw_http2_cancel_if_idle";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_40:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_41;
  }

  v2 = *(a2 + 40);
  if (v2)
  {
    v3 = *(v2 + 88);
    if (v3)
    {
      if (*v3)
      {
        v4 = *v3;

        dispatch_source_set_timer(v4, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      }

      else
      {
        *(v3 + 32) = xmmword_182B08D40;
        if (*(v3 + 48) == 1 && *(v3 + 49) == 1)
        {

          nw_queue_source_run_timer(v3, a2);
        }
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_http2_cancel_if_idle";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v5, &type, &v13))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v16 = "nw_http2_cancel_if_idle";
    v8 = "%{public}s called with null http2";
    goto LABEL_40;
  }

  if (v13 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v16 = "nw_http2_cancel_if_idle";
    v8 = "%{public}s called with null http2, backtrace limit exceeded";
    goto LABEL_40;
  }

  v11 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v12 = os_log_type_enabled(v6, type);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v16 = "nw_http2_cancel_if_idle";
    v8 = "%{public}s called with null http2, no backtrace";
    goto LABEL_40;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_http2_cancel_if_idle";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v5)
  {
LABEL_42:
    free(v5);
  }
}

void ___ZL44nw_http_client_register_channel_flow_changesP10nw_context_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_http3_cancel_if_idle";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v16 = "nw_http3_cancel_if_idle";
      v8 = "%{public}s called with null protocol";
    }

    else if (v13 == 1)
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
          v16 = "nw_http3_cancel_if_idle";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v5)
        {
          return;
        }

        goto LABEL_42;
      }

      if (!v10)
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v16 = "nw_http3_cancel_if_idle";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v16 = "nw_http3_cancel_if_idle";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_40:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_41;
  }

  v2 = *(a2 + 40);
  if (v2)
  {
    v3 = *(v2 + 1280);
    if (v3)
    {
      if (*v3)
      {
        v4 = *v3;

        dispatch_source_set_timer(v4, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      }

      else
      {
        *(v3 + 32) = xmmword_182B08D40;
        if (*(v3 + 48) == 1 && *(v3 + 49) == 1)
        {

          nw_queue_source_run_timer(v3, a2);
        }
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_http3_cancel_if_idle";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v5, &type, &v13))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v16 = "nw_http3_cancel_if_idle";
    v8 = "%{public}s called with null http3";
    goto LABEL_40;
  }

  if (v13 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v16 = "nw_http3_cancel_if_idle";
    v8 = "%{public}s called with null http3, backtrace limit exceeded";
    goto LABEL_40;
  }

  v11 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v12 = os_log_type_enabled(v6, type);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v16 = "nw_http3_cancel_if_idle";
    v8 = "%{public}s called with null http3, no backtrace";
    goto LABEL_40;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_http3_cancel_if_idle";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null http3, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v5)
  {
LABEL_42:
    free(v5);
  }
}

uint64_t nw_protocol_http_client_create::$_2::__invoke(nw_protocol_http_client_create::$_2 *this, nw_protocol *a2, nw_protocol *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (this)
  {
    if (*(this + 5))
    {
      return 0;
    }

    __nwlog_obj();
    *buf = 136446210;
    v15 = "operator()";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v15 = "operator()";
      v7 = "%{public}s called with null http_client";
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v11 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v15 = "operator()";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null http_client, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_32:
        if (!v4)
        {
          return 0;
        }

LABEL_33:
        free(v4);
        return 0;
      }

      if (!v11)
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v15 = "operator()";
      v7 = "%{public}s called with null http_client, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v15 = "operator()";
      v7 = "%{public}s called with null http_client, backtrace limit exceeded";
    }

LABEL_31:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_32;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "operator()";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v4, &type, &v12))
  {
    goto LABEL_32;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_32;
    }

    *buf = 136446210;
    v15 = "operator()";
    v7 = "%{public}s called with null protocol";
    goto LABEL_31;
  }

  if (v12 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_32;
    }

    *buf = 136446210;
    v15 = "operator()";
    v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    goto LABEL_31;
  }

  v8 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v9 = os_log_type_enabled(v5, type);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_32;
    }

    *buf = 136446210;
    v15 = "operator()";
    v7 = "%{public}s called with null protocol, no backtrace";
    goto LABEL_31;
  }

  if (v9)
  {
    *buf = 136446466;
    v15 = "operator()";
    v16 = 2082;
    v17 = v8;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v8);
  if (v4)
  {
    goto LABEL_33;
  }

  return 0;
}

void nw_protocol_http_client_report_transfer_size(nw_protocol *a1, nw_protocol_metadata *a2, unsigned int a3, int a4)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_client_report_transfer_size";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v12, &type, &v37))
    {
      goto LABEL_106;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_client_report_transfer_size";
      v15 = "%{public}s called with null protocol";
    }

    else if (v37 == 1)
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
          *&buf[4] = "nw_protocol_http_client_report_transfer_size";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_106:
        if (!v12)
        {
          return;
        }

        goto LABEL_107;
      }

      if (!v17)
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_client_report_transfer_size";
      v15 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_client_report_transfer_size";
      v15 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_105;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_client_report_transfer_size";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v12, &type, &v37))
    {
      goto LABEL_106;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v37 != 1)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_106;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_client_report_transfer_size";
        v15 = "%{public}s called with null http_client, backtrace limit exceeded";
        goto LABEL_105;
      }

      v18 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v19 = os_log_type_enabled(v13, type);
      if (!v18)
      {
        if (!v19)
        {
          goto LABEL_106;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_client_report_transfer_size";
        v15 = "%{public}s called with null http_client, no backtrace";
        goto LABEL_105;
      }

      if (v19)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http_client_report_transfer_size";
        *&buf[12] = 2082;
        *&buf[14] = v18;
        v20 = "%{public}s called with null http_client, dumping backtrace:%{public}s";
LABEL_54:
        _os_log_impl(&dword_181A37000, v13, v14, v20, buf, 0x16u);
      }

LABEL_55:
      free(v18);
      if (!v12)
      {
        return;
      }

LABEL_107:
      free(v12);
      return;
    }

    v13 = __nwlog_obj();
    v14 = type;
    if (!os_log_type_enabled(v13, type))
    {
      goto LABEL_106;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_client_report_transfer_size";
    v15 = "%{public}s called with null http_client";
LABEL_105:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_106;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_client_report_transfer_size";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v12, &type, &v37))
    {
      goto LABEL_106;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_client_report_transfer_size";
      v15 = "%{public}s called with null size";
      goto LABEL_105;
    }

    if (v37 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_client_report_transfer_size";
      v15 = "%{public}s called with null size, backtrace limit exceeded";
      goto LABEL_105;
    }

    v18 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v27 = os_log_type_enabled(v13, type);
    if (!v18)
    {
      if (!v27)
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_client_report_transfer_size";
      v15 = "%{public}s called with null size, no backtrace";
      goto LABEL_105;
    }

    if (v27)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http_client_report_transfer_size";
      *&buf[12] = 2082;
      *&buf[14] = v18;
      v20 = "%{public}s called with null size, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  v7 = nw_http_client_metadata_copy_current_transaction_metadata(handle[59]);
  v8 = v7;
  if (a4)
  {
    v9 = v7;
    if (v8)
    {
      if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
      }

      if (nw_protocol_metadata_matches_definition(v9, nw_protocol_copy_http_transaction_definition_definition))
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        v10 = __nw_http_transaction_metadata_increment_inbound_body_size_block_invoke;
        goto LABEL_15;
      }

      v28 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
      v22 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v37 = 0;
      if (__nwlog_fault(v22, &type, &v37))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v23 = __nwlog_obj();
          v24 = type;
          if (os_log_type_enabled(v23, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
            v25 = "%{public}s metadata must be http_transaction";
            goto LABEL_117;
          }

LABEL_118:

          goto LABEL_119;
        }

        if (v37 != 1)
        {
          v23 = __nwlog_obj();
          v24 = type;
          if (os_log_type_enabled(v23, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
            v25 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
            goto LABEL_117;
          }

          goto LABEL_118;
        }

        v32 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v24 = type;
        v35 = os_log_type_enabled(v23, type);
        if (!v32)
        {
          if (v35)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
            v25 = "%{public}s metadata must be http_transaction, no backtrace";
            goto LABEL_117;
          }

          goto LABEL_118;
        }

        if (v35)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
          *&buf[12] = 2082;
          *&buf[14] = v32;
          v34 = "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s";
          goto LABEL_88;
        }

        goto LABEL_89;
      }

LABEL_119:
      if (!v22)
      {
        goto LABEL_17;
      }

      goto LABEL_120;
    }

    v21 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v22, &type, &v37))
    {
      goto LABEL_119;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v37 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
          v25 = "%{public}s called with null metadata, backtrace limit exceeded";
          goto LABEL_117;
        }

        goto LABEL_118;
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
          *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
          v25 = "%{public}s called with null metadata, no backtrace";
          goto LABEL_117;
        }

        goto LABEL_118;
      }

      if (v31)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
        *&buf[12] = 2082;
        *&buf[14] = v30;
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v30);
      goto LABEL_119;
    }

    v23 = __nwlog_obj();
    v24 = type;
    if (!os_log_type_enabled(v23, type))
    {
      goto LABEL_118;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_increment_inbound_body_size";
    v25 = "%{public}s called with null metadata";
LABEL_117:
    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
    goto LABEL_118;
  }

  v9 = v7;
  if (v8)
  {
    if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    if (nw_protocol_metadata_matches_definition(v9, nw_protocol_copy_http_transaction_definition_definition))
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      v10 = __nw_http_transaction_metadata_increment_outbound_body_size_block_invoke;
LABEL_15:
      *&buf[16] = v10;
      v40 = &__block_descriptor_40_e9_B16__0_v8l;
      v41 = a3;
      v11 = _nw_protocol_metadata_get_handle(v9);
      if (v11)
      {
        (*&buf[16])(buf, v11);
      }

      goto LABEL_17;
    }

    v29 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v22, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
          v25 = "%{public}s metadata must be http_transaction";
          goto LABEL_117;
        }

        goto LABEL_118;
      }

      if (v37 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
          v25 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
          goto LABEL_117;
        }

        goto LABEL_118;
      }

      v32 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v36 = os_log_type_enabled(v23, type);
      if (!v32)
      {
        if (v36)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
          v25 = "%{public}s metadata must be http_transaction, no backtrace";
          goto LABEL_117;
        }

        goto LABEL_118;
      }

      if (v36)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
        *&buf[12] = 2082;
        *&buf[14] = v32;
        v34 = "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s";
        goto LABEL_88;
      }

      goto LABEL_89;
    }

    goto LABEL_119;
  }

  v26 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
  v22 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v37 = 0;
  if (!__nwlog_fault(v22, &type, &v37))
  {
    goto LABEL_119;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v23 = __nwlog_obj();
    v24 = type;
    if (!os_log_type_enabled(v23, type))
    {
      goto LABEL_118;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
    v25 = "%{public}s called with null metadata";
    goto LABEL_117;
  }

  if (v37 != 1)
  {
    v23 = __nwlog_obj();
    v24 = type;
    if (os_log_type_enabled(v23, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
      v25 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_117;
    }

    goto LABEL_118;
  }

  v32 = __nw_create_backtrace_string();
  v23 = __nwlog_obj();
  v24 = type;
  v33 = os_log_type_enabled(v23, type);
  if (!v32)
  {
    if (v33)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
      v25 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_117;
    }

    goto LABEL_118;
  }

  if (v33)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http_transaction_metadata_increment_outbound_body_size";
    *&buf[12] = 2082;
    *&buf[14] = v32;
    v34 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_88:
    _os_log_impl(&dword_181A37000, v23, v24, v34, buf, 0x16u);
  }

LABEL_89:

  free(v32);
  if (v22)
  {
LABEL_120:
    free(v22);
  }

LABEL_17:

  if (v8)
  {

    os_release(v8);
  }
}

void nw_protocol_http_client_create::$_1::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "operator()";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v6, &type, &v17))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v20 = "operator()";
      v9 = "%{public}s called with null protocol";
    }

    else if (v17 == 1)
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
          v20 = "operator()";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_61:
        if (!v6)
        {
          return;
        }

        goto LABEL_62;
      }

      if (!v11)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v20 = "operator()";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v20 = "operator()";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_60;
  }

  if (!*(a1 + 40))
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "operator()";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v6, &type, &v17))
    {
      goto LABEL_61;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v17 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_61;
        }

        *buf = 136446210;
        v20 = "operator()";
        v9 = "%{public}s called with null http_client, backtrace limit exceeded";
        goto LABEL_60;
      }

      v12 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!v12)
      {
        if (!v13)
        {
          goto LABEL_61;
        }

        *buf = 136446210;
        v20 = "operator()";
        v9 = "%{public}s called with null http_client, no backtrace";
        goto LABEL_60;
      }

      if (!v13)
      {
        goto LABEL_42;
      }

      *buf = 136446466;
      v20 = "operator()";
      v21 = 2082;
      v22 = v12;
      v14 = "%{public}s called with null http_client, dumping backtrace:%{public}s";
      goto LABEL_41;
    }

    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v20 = "operator()";
    v9 = "%{public}s called with null http_client";
LABEL_60:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_61;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "operator()";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v6, &type, &v17))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v20 = "operator()";
      v9 = "%{public}s called with null metadata";
      goto LABEL_60;
    }

    if (v17 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v20 = "operator()";
      v9 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_60;
    }

    v12 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v15 = os_log_type_enabled(v7, type);
    if (!v12)
    {
      if (!v15)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v20 = "operator()";
      v9 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_60;
    }

    if (!v15)
    {
      goto LABEL_42;
    }

    *buf = 136446466;
    v20 = "operator()";
    v21 = 2082;
    v22 = v12;
    v14 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_41:
    _os_log_impl(&dword_181A37000, v7, v8, v14, buf, 0x16u);
    goto LABEL_42;
  }

  if (!a5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "operator()";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v6, &type, &v17))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v20 = "operator()";
      v9 = "%{public}s called with null completion";
      goto LABEL_60;
    }

    if (v17 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v20 = "operator()";
      v9 = "%{public}s called with null completion, backtrace limit exceeded";
      goto LABEL_60;
    }

    v12 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v16 = os_log_type_enabled(v7, type);
    if (!v12)
    {
      if (!v16)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v20 = "operator()";
      v9 = "%{public}s called with null completion, no backtrace";
      goto LABEL_60;
    }

    if (v16)
    {
      *buf = 136446466;
      v20 = "operator()";
      v21 = 2082;
      v22 = v12;
      v14 = "%{public}s called with null completion, dumping backtrace:%{public}s";
      goto LABEL_41;
    }

LABEL_42:
    free(v12);
    if (!v6)
    {
      return;
    }

LABEL_62:
    free(v6);
    return;
  }

  v5 = *(a5 + 16);

  v5(a5, 1);
}

void nw_protocol_http_client_create::$_0::__invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "operator()";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_78;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v24 = "operator()";
      v11 = "%{public}s called with null protocol";
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v14 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v24 = "operator()";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_78:
        if (!v8)
        {
          return;
        }

        goto LABEL_79;
      }

      if (!v14)
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v24 = "operator()";
      v11 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v24 = "operator()";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_77;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "operator()";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_78;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v21 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_78;
        }

        *buf = 136446210;
        v24 = "operator()";
        v11 = "%{public}s called with null http_client, backtrace limit exceeded";
        goto LABEL_77;
      }

      v15 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v16 = os_log_type_enabled(v9, type);
      if (!v15)
      {
        if (!v16)
        {
          goto LABEL_78;
        }

        *buf = 136446210;
        v24 = "operator()";
        v11 = "%{public}s called with null http_client, no backtrace";
        goto LABEL_77;
      }

      if (!v16)
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v24 = "operator()";
      v25 = 2082;
      v26 = v15;
      v17 = "%{public}s called with null http_client, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_78;
    }

    *buf = 136446210;
    v24 = "operator()";
    v11 = "%{public}s called with null http_client";
LABEL_77:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_78;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "operator()";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_78;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v21 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_78;
        }

        *buf = 136446210;
        v24 = "operator()";
        v11 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_77;
      }

      v15 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v18 = os_log_type_enabled(v9, type);
      if (!v15)
      {
        if (!v18)
        {
          goto LABEL_78;
        }

        *buf = 136446210;
        v24 = "operator()";
        v11 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_77;
      }

      if (!v18)
      {
        goto LABEL_55;
      }

      *buf = 136446466;
      v24 = "operator()";
      v25 = 2082;
      v26 = v15;
      v17 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_78;
    }

    *buf = 136446210;
    v24 = "operator()";
    v11 = "%{public}s called with null other_protocol";
    goto LABEL_77;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "operator()";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_78;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v24 = "operator()";
      v11 = "%{public}s called with null metadata";
      goto LABEL_77;
    }

    if (v21 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v24 = "operator()";
      v11 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_77;
    }

    v15 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v19 = os_log_type_enabled(v9, type);
    if (!v15)
    {
      if (!v19)
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v24 = "operator()";
      v11 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_77;
    }

    if (!v19)
    {
      goto LABEL_55;
    }

    *buf = 136446466;
    v24 = "operator()";
    v25 = 2082;
    v26 = v15;
    v17 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_54:
    _os_log_impl(&dword_181A37000, v9, v10, v17, buf, 0x16u);
    goto LABEL_55;
  }

  if (!a5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "operator()";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_78;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v24 = "operator()";
      v11 = "%{public}s called with null completion";
      goto LABEL_77;
    }

    if (v21 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v24 = "operator()";
      v11 = "%{public}s called with null completion, backtrace limit exceeded";
      goto LABEL_77;
    }

    v15 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v20 = os_log_type_enabled(v9, type);
    if (!v15)
    {
      if (!v20)
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v24 = "operator()";
      v11 = "%{public}s called with null completion, no backtrace";
      goto LABEL_77;
    }

    if (v20)
    {
      *buf = 136446466;
      v24 = "operator()";
      v25 = 2082;
      v26 = v15;
      v17 = "%{public}s called with null completion, dumping backtrace:%{public}s";
      goto LABEL_54;
    }

LABEL_55:
    free(v15);
    if (!v8)
    {
      return;
    }

LABEL_79:
    free(v8);
    return;
  }

  v7 = nw_http_metadata_copy_response(a3);
  if ((*(v5 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v12 = __nwlog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v24 = "operator()";
      v25 = 2082;
      v26 = (v5 + 114);
      v27 = 2080;
      v28 = " ";
      v29 = 1024;
      status_code = nw_http_response_get_status_code(v7);
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived http response %d", buf, 0x26u);
    }
  }

  (*(a5 + 16))(a5, 1);
  if (v7)
  {
    os_release(v7);
  }
}

void ___ZL37nw_protocol_http_client_get_callbacksv_block_invoke()
{
  nw_protocol_http_client_get_callbacks(void)::protocol_callbacks = nw_protocol_common_add_input_handler;
  qword_1EA840CE8 = nw_protocol_common_replace_input_handler;
  qword_1EA840D28 = nw_protocol_common_get_input_frames;
  qword_1EA840D30 = nw_protocol_common_get_output_frames;
  qword_1EA840D38 = nw_protocol_common_finalize_output_frames;
  qword_1EA840D48 = nw_protocol_common_get_parameters;
  qword_1EA840D50 = nw_protocol_common_get_path;
  qword_1EA840D60 = nw_protocol_common_get_remote_endpoint;
  qword_1EA840D58 = nw_protocol_common_get_local_endpoint;
  qword_1EA840DA0 = nw_protocol_common_get_output_local_endpoint;
  qword_1EA840DA8 = nw_protocol_common_get_output_interface;
  qword_1EA840CF0 = nw_protocol_common_connect;
  qword_1EA840D00 = nw_protocol_common_connected;
  qword_1EA840CF8 = nw_protocol_common_disconnect;
  qword_1EA840D08 = nw_protocol_common_disconnected;
  qword_1EA840D18 = nw_protocol_common_input_available;
  qword_1EA840D20 = nw_protocol_common_output_available;
  qword_1EA840D90 = nw_protocol_common_input_finished;
  qword_1EA840D98 = nw_protocol_common_output_finished;
  qword_1EA840DE0 = nw_protocol_common_input_flush;
  qword_1EA840D10 = nw_protocol_common_error;
  qword_1EA840DD8 = nw_protocol_common_reset;
  qword_1EA840DD0 = nw_protocol_common_get_message_properties;
  qword_1EA840D88 = nw_protocol_common_supports_external_data;
  qword_1EA840DB0 = nw_protocol_common_waiting_for_output;
  qword_1EA840D68 = nw_protocol_common_register_notification;
  qword_1EA840D70 = nw_protocol_common_unregister_notification;
  qword_1EA840D78 = nw_protocol_common_notify;
  qword_1EA840D80 = nw_protocol_common_updated_path;
  qword_1EA840D40 = nw_protocol_common_link_state;
  qword_1EA840DB8 = nw_protocol_http_client_copy_info;
  qword_1EA840CE0 = nw_protocol_http_client_remove_input_handler;
}

void nw_quic_metadata_set_original(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ((nw_protocol_metadata_is_quic_connection(v3) & 1) == 0)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_quic_metadata_set_original";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_metadata_set_original";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_32:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v18 = "nw_quic_metadata_set_original";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v6)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v6);
        goto LABEL_4;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "nw_quic_metadata_set_original";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_metadata_set_original";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (nw_protocol_metadata_is_quic_connection(v4))
  {
    _nw_quic_metadata_set_original(v3, v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_quic_metadata_set_original";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &type, &v15))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v18 = "nw_quic_metadata_set_original";
      v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(original_metadata)";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v18 = "nw_quic_metadata_set_original";
      v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(original_metadata), backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v18 = "nw_quic_metadata_set_original";
      v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(original_metadata), no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v14)
  {
    *buf = 136446466;
    v18 = "nw_quic_metadata_set_original";
    v19 = 2082;
    v20 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_connection(original_metadata), dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_35;
  }

LABEL_4:
}

void *nw_protocol_set_quic_overrides(void *result, void *a2, void *a3, void *a4, void *a5)
{
  quic_fillout_definition_callbacks_override = result;
  qpod_conn_create_override = a2;
  qpod_conn_free_override = a3;
  qpod_conn_encode_datagram_override = a4;
  qpod_conn_decode_datagram_override = a5;
  return result;
}

void nw_quic_deallocate_cache_entry(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = 0;

  v4 = a2[1];
  a2[1] = 0;

  v5 = a2[2];
  a2[2] = 0;

  free(a2);
}

void nw_quic_access_application_result_on_queue(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
    }

    v5 = nw_protocol_copy_quic_connection_definition_quic_definition;
    if (v5)
    {
      cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v3, v5);
      if (cached_content_for_protocol)
      {
        (*(v4 + 2))(v4, *(cached_content_for_protocol + 36), *(cached_content_for_protocol + 40));
      }

      else
      {
        (*(v4 + 2))(v4, 0, 0);
      }

LABEL_8:

      goto LABEL_9;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_quic_access_application_result_on_queue";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
    {
LABEL_42:
      if (v13)
      {
        free(v13);
      }

      goto LABEL_8;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_application_result_on_queue";
        v16 = "%{public}s called with null definition";
LABEL_40:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v20 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v24 = "nw_quic_access_application_result_on_queue";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_42;
        }

        if (!v20)
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v24 = "nw_quic_access_application_result_on_queue";
        v16 = "%{public}s called with null definition, no backtrace";
        goto LABEL_40;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_application_result_on_queue";
        v16 = "%{public}s called with null definition, backtrace limit exceeded";
        goto LABEL_40;
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_quic_access_application_result_on_queue";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v8, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_application_result_on_queue";
        v11 = "%{public}s called with null association";
LABEL_34:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        v17 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v18 = os_log_type_enabled(v9, type);
        if (v17)
        {
          if (v18)
          {
            *buf = 136446466;
            v24 = "nw_quic_access_application_result_on_queue";
            v25 = 2082;
            v26 = v17;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v17);
          goto LABEL_36;
        }

        if (!v18)
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v24 = "nw_quic_access_application_result_on_queue";
        v11 = "%{public}s called with null association, no backtrace";
        goto LABEL_34;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_access_application_result_on_queue";
        v11 = "%{public}s called with null association, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:
  }

LABEL_36:
  if (v8)
  {
    free(v8);
  }

LABEL_9:
}

uint64_t nw_quic_stream_should_serialize_options(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {

    return _nw_quic_stream_should_serialize_options(a2);
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_quic_stream_should_serialize_options";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_quic_stream_should_serialize_options";
        v7 = "%{public}s called with null existing_handle";
LABEL_18:
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
            v13 = "nw_quic_stream_should_serialize_options";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v9)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v13 = "nw_quic_stream_should_serialize_options";
        v7 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_18;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_quic_stream_should_serialize_options";
        v7 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t nw_protocol_swift_quic_create(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = nw_protocol_swift_wrapper_setup_callbacks_onceToken;
  v6 = a4;
  if (v5 != -1)
  {
    dispatch_once(&nw_protocol_swift_wrapper_setup_callbacks_onceToken, &__block_literal_global_58517);
  }

  v7 = nw_protocol_new(32, v6, a1, &g_swift_wrapper_protocol_callbacks);

  if (v7)
  {
    v8 = v7 - 96;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    _nw_protocol_create_swift_quic_instance();
    v10 = v9;
    if (v9)
    {
      nw_protocol_swift_wrapper_set_instance(v8, v9, 1);
LABEL_9:

      return v8;
    }

    v17 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_swift_quic_create";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v18, &type, &v26))
    {
LABEL_44:
      if (v18)
      {
        free(v18);
      }

      v8 = 0;
      goto LABEL_9;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_swift_quic_create";
        v21 = "%{public}s called with null instance";
LABEL_42:
        _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
      }
    }

    else
    {
      if (v26 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v20 = type;
        v25 = os_log_type_enabled(v19, type);
        if (backtrace_string)
        {
          if (v25)
          {
            *buf = 136446466;
            v29 = "nw_protocol_swift_quic_create";
            v30 = 2082;
            v31 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_44;
        }

        if (!v25)
        {
          goto LABEL_43;
        }

        *buf = 136446210;
        v29 = "nw_protocol_swift_quic_create";
        v21 = "%{public}s called with null instance, no backtrace";
        goto LABEL_42;
      }

      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_swift_quic_create";
        v21 = "%{public}s called with null instance, backtrace limit exceeded";
        goto LABEL_42;
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_protocol_swift_quic_create";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v13, &type, &v26))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_swift_quic_create";
        v16 = "%{public}s called with null protocol";
LABEL_35:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v26 == 1)
      {
        v22 = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v23 = os_log_type_enabled(v14, type);
        if (v22)
        {
          if (v23)
          {
            *buf = 136446466;
            v29 = "nw_protocol_swift_quic_create";
            v30 = 2082;
            v31 = v22;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v22);
          goto LABEL_37;
        }

        if (!v23)
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v29 = "nw_protocol_swift_quic_create";
        v16 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_swift_quic_create";
        v16 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:
  }

LABEL_37:
  if (v13)
  {
    free(v13);
  }

  return 0;
}

void nw_quic_add_tls_application_protocol(nw_protocol_options_t options, const char *application_protocol)
{
  v3 = nw_quic_copy_sec_protocol_options(options);
  sec_protocol_options_add_tls_application_protocol(v3, application_protocol);
}

void nw_quic_connection_set_override_trust_certs_for_tests(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    if (os_variant_allows_internal_security_policies())
    {
      _nw_quic_connection_set_override_trust_certs_for_tests(v3, a2);
    }

    goto LABEL_4;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_override_trust_certs_for_tests";
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
        v14 = "nw_quic_connection_set_override_trust_certs_for_tests";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_18:
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
            v14 = "nw_quic_connection_set_override_trust_certs_for_tests";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v10)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_override_trust_certs_for_tests";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_18;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_override_trust_certs_for_tests";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

LABEL_4:
}

void nw_quic_connection_set_trust_override_security_options(void *a1)
{
  options = a1;
  if (os_variant_allows_internal_security_policies())
  {
    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v1 = nw_context_copy_implicit_context::implicit_context;
    v2 = nw_context_copy_workloop(v1);
    sec_protocol_options_set_verify_block(options, &__block_literal_global_69, v2);
  }
}

void nw_quic_connection_add_h3_alpn(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_add_h3_alpn(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_add_h3_alpn";
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
        v14 = "nw_quic_connection_add_h3_alpn";
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
            v14 = "nw_quic_connection_add_h3_alpn";
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
        v14 = "nw_quic_connection_add_h3_alpn";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_add_h3_alpn";
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

LABEL_3:
}

void nw_quic_connection_set_pqtls_mode(void *a1, __int16 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_pqtls_mode(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_pqtls_mode";
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
        v14 = "nw_quic_connection_set_pqtls_mode";
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
            v14 = "nw_quic_connection_set_pqtls_mode";
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
        v14 = "nw_quic_connection_set_pqtls_mode";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_pqtls_mode";
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

LABEL_3:
}

void nw_quic_connection_set_server_raw_public_keys(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_server_raw_public_keys(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_server_raw_public_keys";
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
        v14 = "nw_quic_connection_set_server_raw_public_keys";
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
            v14 = "nw_quic_connection_set_server_raw_public_keys";
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
        v14 = "nw_quic_connection_set_server_raw_public_keys";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_server_raw_public_keys";
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

LABEL_3:
}

void nw_quic_connection_set_client_identity_reference(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (nw_protocol_options_is_quic_connection(v5))
  {
    _nw_quic_connection_set_client_identity_reference(v5, a2, a3);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_quic_connection_set_client_identity_reference";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_quic_connection_set_client_identity_reference";
        v10 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
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
            v16 = "nw_quic_connection_set_client_identity_reference";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v12)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v16 = "nw_quic_connection_set_client_identity_reference";
        v10 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_quic_connection_set_client_identity_reference";
        v10 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v7)
  {
    free(v7);
  }

LABEL_3:
}

uint64_t nw_quic_connection_fetch_proxy_endpoint_from_nehelper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v4 = NEHelperCopyXPCEndpointForIdentityProxyExtended();
    if (v4)
    {
LABEL_3:
      v5 = objc_alloc_init(MEMORY[0x1E696B0E0]);
      [v5 _setEndpoint:v4];
      v11 = 0;
      v6 = [MEMORY[0x1E697AAB0] createIdentityFromEndpoint:v5 error:&v11];
      v7 = v11;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v13 = "nw_quic_connection_fetch_proxy_endpoint_from_nehelper";
          v14 = 2112;
          v15 = v7;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Failed to fetch identity from NEHelper: %@", buf, 0x16u);
        }

        v6 = 0;
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v13 = "nw_quic_connection_fetch_proxy_endpoint_from_nehelper";
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s Fetched identity %@ from NEHelper", buf, 0x16u);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v4 = NEHelperCopyXPCEndpointForIdentityProxy();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v13 = "nw_quic_connection_fetch_proxy_endpoint_from_nehelper";
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s Unable to copy xpc endpoint for client identity, returning null", buf, 0xCu);
  }

  v6 = 0;
LABEL_14:

  return v6;
}

uint64_t nw_quic_connection_get_selected_key_index(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic(v1))
  {
    selected_key_index = _nw_quic_connection_get_selected_key_index(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_selected_key_index";
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
        v14 = "nw_quic_connection_get_selected_key_index";
        v8 = "%{public}s called with null nw_protocol_options_is_quic(options)";
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
            v14 = "nw_quic_connection_get_selected_key_index";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_selected_key_index";
        v8 = "%{public}s called with null nw_protocol_options_is_quic(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_selected_key_index";
        v8 = "%{public}s called with null nw_protocol_options_is_quic(options), backtrace limit exceeded";
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

  selected_key_index = 255;
LABEL_3:

  return selected_key_index;
}

void nw_quic_connection_set_local_identity(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_local_identity(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_local_identity";
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
        v15 = "nw_quic_connection_set_local_identity";
        v9 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v15 = "nw_quic_connection_set_local_identity";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_connection_set_local_identity";
        v9 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_local_identity";
        v9 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

uint64_t nw_quic_connection_copy_local_public_key(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    v2 = _nw_quic_connection_copy_local_public_key(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_copy_local_public_key";
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
        v14 = "nw_quic_connection_copy_local_public_key";
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
            v14 = "nw_quic_connection_copy_local_public_key";
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
        v14 = "nw_quic_connection_copy_local_public_key";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_copy_local_public_key";
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

void nw_quic_connection_set_trusted_peer_keys(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (nw_protocol_options_is_quic(v5))
  {
    if (nw_protocol_options_is_quic_stream(v5))
    {
      v8 = nw_quic_stream_copy_shared_connection_options(v5);

      v5 = v8;
    }

    _nw_quic_connection_set_trusted_peer_keys(v5, v6, v7);
    goto LABEL_5;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_quic_connection_set_trusted_peer_keys";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v10, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_quic_connection_set_trusted_peer_keys";
        v13 = "%{public}s called with null nw_protocol_options_is_quic(options)";
LABEL_19:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v15 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v19 = "nw_quic_connection_set_trusted_peer_keys";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null nw_protocol_options_is_quic(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v15)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v19 = "nw_quic_connection_set_trusted_peer_keys";
        v13 = "%{public}s called with null nw_protocol_options_is_quic(options), no backtrace";
        goto LABEL_19;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_quic_connection_set_trusted_peer_keys";
        v13 = "%{public}s called with null nw_protocol_options_is_quic(options), backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v10)
  {
    free(v10);
  }

LABEL_5:
}

void nw_quic_connection_set_use_swift_tls(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_use_swift_tls(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_use_swift_tls";
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
        v14 = "nw_quic_connection_set_use_swift_tls";
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
            v14 = "nw_quic_connection_set_use_swift_tls";
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
        v14 = "nw_quic_connection_set_use_swift_tls";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_use_swift_tls";
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

LABEL_3:
}

void nw_quic_connection_set_use_x25519(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_use_x25519(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_use_x25519";
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
        v14 = "nw_quic_connection_set_use_x25519";
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
            v14 = "nw_quic_connection_set_use_x25519";
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
        v14 = "nw_quic_connection_set_use_x25519";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_use_x25519";
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

LABEL_3:
}

void nw_quic_connection_set_client_identity_is_raw_public_Key(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_client_identity_is_raw_public_key(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_client_identity_is_raw_public_Key";
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
        v14 = "nw_quic_connection_set_client_identity_is_raw_public_Key";
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
            v14 = "nw_quic_connection_set_client_identity_is_raw_public_Key";
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
        v14 = "nw_quic_connection_set_client_identity_is_raw_public_Key";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_client_identity_is_raw_public_Key";
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

LABEL_3:
}

void nw_quic_clear_tls_application_protocols(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic(v1))
  {
    if (nw_protocol_options_is_quic_stream(v1))
    {
      v2 = nw_quic_stream_copy_shared_connection_options(v1);

      v1 = v2;
    }

    _nw_quic_clear_tls_application_protocols(v1);
    goto LABEL_5;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_quic_clear_tls_application_protocols";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_quic_clear_tls_application_protocols";
        v7 = "%{public}s called with null nw_protocol_options_is_quic(options)";
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
            v13 = "nw_quic_clear_tls_application_protocols";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null nw_protocol_options_is_quic(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v9)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v13 = "nw_quic_clear_tls_application_protocols";
        v7 = "%{public}s called with null nw_protocol_options_is_quic(options), no backtrace";
        goto LABEL_19;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_quic_clear_tls_application_protocols";
        v7 = "%{public}s called with null nw_protocol_options_is_quic(options), backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }

LABEL_5:
}

void nw_quic_iterate_tls_application_protocols(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_options_is_quic(v3))
  {
    _nw_quic_iterate_tls_application_protocols(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_iterate_tls_application_protocols";
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
        v15 = "nw_quic_iterate_tls_application_protocols";
        v9 = "%{public}s called with null nw_protocol_options_is_quic(options)";
LABEL_17:
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
            v15 = "nw_quic_iterate_tls_application_protocols";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_quic(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_iterate_tls_application_protocols";
        v9 = "%{public}s called with null nw_protocol_options_is_quic(options), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_iterate_tls_application_protocols";
        v9 = "%{public}s called with null nw_protocol_options_is_quic(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_quic_connection_set_initial_max_data(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_initial_max_data(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_initial_max_data";
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
        v14 = "nw_quic_connection_set_initial_max_data";
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
            v14 = "nw_quic_connection_set_initial_max_data";
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
        v14 = "nw_quic_connection_set_initial_max_data";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_initial_max_data";
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

LABEL_3:
}

void nw_quic_set_initial_max_data(nw_protocol_options_t options, uint64_t initial_max_data)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_initial_max_data(v3, initial_max_data);
}

uint64_t nw_quic_get_initial_max_data(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  initial_max_data = nw_quic_connection_get_initial_max_data(v1);

  return initial_max_data;
}

void nw_quic_set_initial_max_streams_bidirectional(nw_protocol_options_t options, uint64_t initial_max_streams_bidirectional)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_initial_max_streams_bidirectional(v3, initial_max_streams_bidirectional);
}

uint64_t nw_quic_get_initial_max_streams_bidirectional(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  initial_max_streams_bidirectional = nw_quic_connection_get_initial_max_streams_bidirectional(v1);

  return initial_max_streams_bidirectional;
}

void nw_quic_connection_set_initial_max_streams_unidirectional(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_initial_max_streams_unidirectional(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_initial_max_streams_unidirectional";
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
        v14 = "nw_quic_connection_set_initial_max_streams_unidirectional";
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
            v14 = "nw_quic_connection_set_initial_max_streams_unidirectional";
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
        v14 = "nw_quic_connection_set_initial_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_initial_max_streams_unidirectional";
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

LABEL_3:
}

void nw_quic_set_initial_max_streams_unidirectional(nw_protocol_options_t options, uint64_t initial_max_streams_unidirectional)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_initial_max_streams_unidirectional(v3, initial_max_streams_unidirectional);
}

uint64_t nw_quic_get_initial_max_streams_unidirectional(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  initial_max_streams_unidirectional = nw_quic_connection_get_initial_max_streams_unidirectional(v1);

  return initial_max_streams_unidirectional;
}

void nw_quic_connection_set_initial_max_stream_data_bidirectional_local(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_initial_max_stream_data_bidirectional_local(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_local";
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
        v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_local";
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
            v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_local";
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
        v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_local";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_local";
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

LABEL_3:
}

void nw_quic_set_initial_max_stream_data_bidirectional_local(nw_protocol_options_t options, uint64_t initial_max_stream_data_bidirectional_local)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_initial_max_stream_data_bidirectional_local(v3, initial_max_stream_data_bidirectional_local);
}

uint64_t nw_quic_get_initial_max_stream_data_bidirectional_local(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  initial_max_stream_data_bidirectional_local = nw_quic_connection_get_initial_max_stream_data_bidirectional_local(v1);

  return initial_max_stream_data_bidirectional_local;
}

void nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_remote";
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
        v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_remote";
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
            v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_remote";
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
        v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_remote";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_initial_max_stream_data_bidirectional_remote";
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

LABEL_3:
}

void nw_quic_set_initial_max_stream_data_bidirectional_remote(nw_protocol_options_t options, uint64_t initial_max_stream_data_bidirectional_remote)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(v3, initial_max_stream_data_bidirectional_remote);
}

uint64_t nw_quic_get_initial_max_stream_data_bidirectional_remote(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  initial_max_stream_data_bidirectional_remote = nw_quic_connection_get_initial_max_stream_data_bidirectional_remote(v1);

  return initial_max_stream_data_bidirectional_remote;
}

void nw_quic_connection_set_initial_max_stream_data_unidirectional(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_initial_max_stream_data_unidirectional(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_initial_max_stream_data_unidirectional";
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
        v14 = "nw_quic_connection_set_initial_max_stream_data_unidirectional";
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
            v14 = "nw_quic_connection_set_initial_max_stream_data_unidirectional";
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
        v14 = "nw_quic_connection_set_initial_max_stream_data_unidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_initial_max_stream_data_unidirectional";
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

LABEL_3:
}

void nw_quic_set_initial_max_stream_data_unidirectional(nw_protocol_options_t options, uint64_t initial_max_stream_data_unidirectional)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_initial_max_stream_data_unidirectional(v3, initial_max_stream_data_unidirectional);
}

uint64_t nw_quic_get_initial_max_stream_data_unidirectional(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  initial_max_stream_data_unidirectional = nw_quic_connection_get_initial_max_stream_data_unidirectional(v1);

  return initial_max_stream_data_unidirectional;
}

void nw_quic_set_idle_timeout(nw_protocol_options_t options, uint32_t idle_timeout)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_idle_timeout(v3, idle_timeout);
}

uint32_t nw_quic_get_idle_timeout(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  idle_timeout = nw_quic_connection_get_idle_timeout(v1);

  return idle_timeout;
}

void nw_quic_connection_set_stream_path_affinity(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_stream_path_affinity(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_stream_path_affinity";
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
        v14 = "nw_quic_connection_set_stream_path_affinity";
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
            v14 = "nw_quic_connection_set_stream_path_affinity";
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
        v14 = "nw_quic_connection_set_stream_path_affinity";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_stream_path_affinity";
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

LABEL_3:
}

void nw_quic_set_stream_path_affinity(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_stream_path_affinity(v3, a2);
}

uint64_t nw_quic_get_stream_path_affinity(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  stream_path_affinity = nw_quic_connection_get_stream_path_affinity(v1);

  return stream_path_affinity;
}

void nw_quic_connection_set_max_udp_payload_size(void *a1, __int16 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_max_udp_payload_size(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_max_udp_payload_size";
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
        v14 = "nw_quic_connection_set_max_udp_payload_size";
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
            v14 = "nw_quic_connection_set_max_udp_payload_size";
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
        v14 = "nw_quic_connection_set_max_udp_payload_size";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_udp_payload_size";
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

LABEL_3:
}

void nw_quic_set_max_udp_payload_size(nw_protocol_options_t options, uint16_t max_udp_payload_size)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_max_udp_payload_size(v3, max_udp_payload_size);
}

uint16_t nw_quic_get_max_udp_payload_size(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  max_udp_payload_size = nw_quic_connection_get_max_udp_payload_size(v1);

  return max_udp_payload_size;
}

void nw_quic_connection_set_max_datagram_frame_size(void *a1, __int16 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_max_datagram_frame_size(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_max_datagram_frame_size";
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
        v14 = "nw_quic_connection_set_max_datagram_frame_size";
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
            v14 = "nw_quic_connection_set_max_datagram_frame_size";
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
        v14 = "nw_quic_connection_set_max_datagram_frame_size";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_datagram_frame_size";
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

LABEL_3:
}

void nw_quic_set_max_datagram_frame_size(nw_protocol_options_t options, uint16_t max_datagram_frame_size)
{
  v3 = nw_quic_stream_copy_shared_connection_options(options);
  nw_quic_connection_set_max_datagram_frame_size(v3, max_datagram_frame_size);
}

uint16_t nw_quic_get_max_datagram_frame_size(nw_protocol_options_t options)
{
  v1 = nw_quic_stream_copy_shared_connection_options(options);
  max_datagram_frame_size = nw_quic_connection_get_max_datagram_frame_size(v1);

  return max_datagram_frame_size;
}

void nw_quic_connection_set_initial_packet_size(void *a1, __int16 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_initial_packet_size(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_initial_packet_size";
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
        v14 = "nw_quic_connection_set_initial_packet_size";
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
            v14 = "nw_quic_connection_set_initial_packet_size";
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
        v14 = "nw_quic_connection_set_initial_packet_size";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_initial_packet_size";
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

LABEL_3:
}

void nw_quic_set_initial_packet_size(void *a1, __int16 a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_initial_packet_size(v3, a2);
}

uint64_t nw_quic_get_initial_packet_size(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  initial_packet_size = nw_quic_connection_get_initial_packet_size(v1);

  return initial_packet_size;
}

void nw_quic_set_keepalive_count(void *a1, __int16 a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_keepalive_count(v3, a2);
}

uint64_t nw_quic_get_keepalive_count(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  keepalive_count = nw_quic_connection_get_keepalive_count(v1);

  return keepalive_count;
}

void nw_quic_connection_set_ack_delay_size(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_ack_delay_size(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_ack_delay_size";
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
        v14 = "nw_quic_connection_set_ack_delay_size";
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
            v14 = "nw_quic_connection_set_ack_delay_size";
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
        v14 = "nw_quic_connection_set_ack_delay_size";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_ack_delay_size";
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

LABEL_3:
}

void nw_quic_set_ack_delay_size(void *a1, char a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_ack_delay_size(v3, a2);
}

uint64_t nw_quic_get_ack_delay_size(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  ack_delay_size = nw_quic_connection_get_ack_delay_size(v1);

  return ack_delay_size;
}

void nw_quic_connection_set_source_connection_id(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_source_connection_id(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_source_connection_id";
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
        v15 = "nw_quic_connection_set_source_connection_id";
        v9 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v15 = "nw_quic_connection_set_source_connection_id";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_connection_set_source_connection_id";
        v9 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_source_connection_id";
        v9 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_quic_set_source_connection_id(void *a1, void *a2)
{
  v3 = a2;
  v4 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_source_connection_id(v4, v3);
}

uint64_t nw_quic_get_source_connection_id(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  source_connection_id = nw_quic_connection_get_source_connection_id(v1);

  return source_connection_id;
}

void nw_quic_connection_set_max_paths_per_interface(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_max_paths_per_interface(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_max_paths_per_interface";
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
        v14 = "nw_quic_connection_set_max_paths_per_interface";
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
            v14 = "nw_quic_connection_set_max_paths_per_interface";
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
        v14 = "nw_quic_connection_set_max_paths_per_interface";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_paths_per_interface";
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

LABEL_3:
}

void nw_quic_set_max_paths_per_interface(void *a1, char a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_max_paths_per_interface(v3, a2);
}

uint64_t nw_quic_get_max_paths_per_interface(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  max_paths_per_interface = nw_quic_connection_get_max_paths_per_interface(v1);

  return max_paths_per_interface;
}

void nw_quic_connection_set_pmtud(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_pmtud(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_pmtud";
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
        v14 = "nw_quic_connection_set_pmtud";
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
            v14 = "nw_quic_connection_set_pmtud";
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
        v14 = "nw_quic_connection_set_pmtud";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_pmtud";
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

LABEL_3:
}

void nw_quic_set_pmtud(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_pmtud(v3, a2);
}

uint64_t nw_quic_get_pmtud(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  pmtud = nw_quic_connection_get_pmtud(v1);

  return pmtud;
}

void nw_quic_connection_set_pmtud_ignore_cost(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_pmtud_ignore_cost(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_pmtud_ignore_cost";
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
        v14 = "nw_quic_connection_set_pmtud_ignore_cost";
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
            v14 = "nw_quic_connection_set_pmtud_ignore_cost";
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
        v14 = "nw_quic_connection_set_pmtud_ignore_cost";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_pmtud_ignore_cost";
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

LABEL_3:
}

void nw_quic_set_pmtud_ignore_cost(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_pmtud_ignore_cost(v3, a2);
}

uint64_t nw_quic_get_pmtud_ignore_cost(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  pmtud_ignore_cost = nw_quic_connection_get_pmtud_ignore_cost(v1);

  return pmtud_ignore_cost;
}

void nw_quic_connection_set_pmtud_for_non_transport(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_pmtud_for_non_transport(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_pmtud_for_non_transport";
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
        v14 = "nw_quic_connection_set_pmtud_for_non_transport";
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
            v14 = "nw_quic_connection_set_pmtud_for_non_transport";
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
        v14 = "nw_quic_connection_set_pmtud_for_non_transport";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_pmtud_for_non_transport";
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

LABEL_3:
}

void nw_quic_set_pmtud_for_non_transport(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_pmtud_for_non_transport(v3, a2);
}

uint64_t nw_quic_get_pmtud_for_non_transport(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  pmtud_for_non_transport = nw_quic_connection_get_pmtud_for_non_transport(v1);

  return pmtud_for_non_transport;
}

void nw_quic_connection_set_pmtud_update_interval(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_pmtud_update_interval(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_pmtud_update_interval";
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
        v14 = "nw_quic_connection_set_pmtud_update_interval";
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
            v14 = "nw_quic_connection_set_pmtud_update_interval";
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
        v14 = "nw_quic_connection_set_pmtud_update_interval";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_pmtud_update_interval";
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

LABEL_3:
}

void nw_quic_set_pmtud_update_interval(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_pmtud_update_interval(v3, a2);
}

uint64_t nw_quic_get_pmtud_update_interval(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  pmtud_update_interval = nw_quic_connection_get_pmtud_update_interval(v1);

  return pmtud_update_interval;
}

void nw_quic_connection_set_migration_for_non_transport(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_migration_for_non_transport(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_migration_for_non_transport";
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
        v14 = "nw_quic_connection_set_migration_for_non_transport";
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
            v14 = "nw_quic_connection_set_migration_for_non_transport";
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
        v14 = "nw_quic_connection_set_migration_for_non_transport";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_migration_for_non_transport";
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

LABEL_3:
}

uint64_t nw_quic_connection_get_migration_for_non_transport(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    migration_for_non_transport = _nw_quic_connection_get_migration_for_non_transport(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_migration_for_non_transport";
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
        v14 = "nw_quic_connection_get_migration_for_non_transport";
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
            v14 = "nw_quic_connection_get_migration_for_non_transport";
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
        v14 = "nw_quic_connection_get_migration_for_non_transport";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_migration_for_non_transport";
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

  migration_for_non_transport = 0;
LABEL_3:

  return migration_for_non_transport;
}

void nw_quic_set_migration_for_non_transport(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_migration_for_non_transport(v3, a2);
}

uint64_t nw_quic_get_migration_for_non_transport(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  migration_for_non_transport = nw_quic_connection_get_migration_for_non_transport(v1);

  return migration_for_non_transport;
}

void nw_quic_connection_set_retry(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_retry(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_retry";
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
        v14 = "nw_quic_connection_set_retry";
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
            v14 = "nw_quic_connection_set_retry";
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
        v14 = "nw_quic_connection_set_retry";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_retry";
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

LABEL_3:
}

uint64_t nw_quic_connection_get_retry(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    retry = _nw_quic_connection_get_retry(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_retry";
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
        v14 = "nw_quic_connection_get_retry";
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
            v14 = "nw_quic_connection_get_retry";
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
        v14 = "nw_quic_connection_get_retry";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_retry";
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

  retry = 0;
LABEL_3:

  return retry;
}

void nw_quic_set_retry(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_retry(v3, a2);
}

uint64_t nw_quic_get_retry(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  retry = nw_quic_connection_get_retry(v1);

  return retry;
}

void nw_quic_connection_set_force_version_negotiation(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_force_version_negotiation(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_force_version_negotiation";
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
        v14 = "nw_quic_connection_set_force_version_negotiation";
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
            v14 = "nw_quic_connection_set_force_version_negotiation";
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
        v14 = "nw_quic_connection_set_force_version_negotiation";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_force_version_negotiation";
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

LABEL_3:
}

void nw_quic_set_force_version_negotiation(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_force_version_negotiation(v3, a2);
}

uint64_t nw_quic_get_force_version_negotiation(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  force_version_negotiation = nw_quic_connection_get_force_version_negotiation(v1);

  return force_version_negotiation;
}

void nw_quic_connection_set_datagram_variant_flow_id_enabled(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_datagram_variant_flow_id_enabled(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_datagram_variant_flow_id_enabled";
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
        v14 = "nw_quic_connection_set_datagram_variant_flow_id_enabled";
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
            v14 = "nw_quic_connection_set_datagram_variant_flow_id_enabled";
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
        v14 = "nw_quic_connection_set_datagram_variant_flow_id_enabled";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_datagram_variant_flow_id_enabled";
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

LABEL_3:
}

void nw_quic_set_datagram_variant_flow_id_enabled(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_datagram_variant_flow_id_enabled(v3, a2);
}

uint64_t nw_quic_get_datagram_variant_flow_id_enabled(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  datagram_variant_flow_id_enabled = nw_quic_connection_get_datagram_variant_flow_id_enabled(v1);

  return datagram_variant_flow_id_enabled;
}

void nw_quic_connection_set_datagram_quarter_stream_id(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_datagram_quarter_stream_id(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_datagram_quarter_stream_id";
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
        v14 = "nw_quic_connection_set_datagram_quarter_stream_id";
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
            v14 = "nw_quic_connection_set_datagram_quarter_stream_id";
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
        v14 = "nw_quic_connection_set_datagram_quarter_stream_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_datagram_quarter_stream_id";
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

LABEL_3:
}

void nw_quic_set_datagram_quarter_stream_id(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_datagram_quarter_stream_id(v3, a2);
}

uint64_t nw_quic_get_datagram_quarter_stream_id(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  datagram_quarter_stream_id = nw_quic_connection_get_datagram_quarter_stream_id(v1);

  return datagram_quarter_stream_id;
}

void nw_quic_connection_set_datagram_context_id(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_datagram_context_id(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_datagram_context_id";
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
        v14 = "nw_quic_connection_set_datagram_context_id";
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
            v14 = "nw_quic_connection_set_datagram_context_id";
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
        v14 = "nw_quic_connection_set_datagram_context_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_datagram_context_id";
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

LABEL_3:
}

void nw_quic_set_datagram_context_id(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_datagram_context_id(v3, a2);
}

uint64_t nw_quic_get_datagram_context_id(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  datagram_context_id = nw_quic_connection_get_datagram_context_id(v1);

  return datagram_context_id;
}

void nw_quic_connection_set_disable_ecn_echo(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_disable_ecn_echo(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_disable_ecn_echo";
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
        v14 = "nw_quic_connection_set_disable_ecn_echo";
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
            v14 = "nw_quic_connection_set_disable_ecn_echo";
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
        v14 = "nw_quic_connection_set_disable_ecn_echo";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_disable_ecn_echo";
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

LABEL_3:
}

void nw_quic_set_disable_ecn_echo(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_disable_ecn_echo(v3, a2);
}

uint64_t nw_quic_get_disable_ecn_echo(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  disable_ecn_echo = nw_quic_connection_get_disable_ecn_echo(v1);

  return disable_ecn_echo;
}

void nw_quic_connection_set_disable_ecn(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_disable_ecn(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_disable_ecn";
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
        v14 = "nw_quic_connection_set_disable_ecn";
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
            v14 = "nw_quic_connection_set_disable_ecn";
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
        v14 = "nw_quic_connection_set_disable_ecn";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_disable_ecn";
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

LABEL_3:
}

void nw_quic_set_disable_ecn(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_disable_ecn(v3, a2);
}

uint64_t nw_quic_get_disable_ecn(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  disable_ecn = nw_quic_connection_get_disable_ecn(v1);

  return disable_ecn;
}

void nw_quic_connection_set_enable_l4s(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_enable_l4s(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_enable_l4s";
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
        v14 = "nw_quic_connection_set_enable_l4s";
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
            v14 = "nw_quic_connection_set_enable_l4s";
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
        v14 = "nw_quic_connection_set_enable_l4s";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_enable_l4s";
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

LABEL_3:
}

void nw_quic_set_enable_l4s(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_enable_l4s(v3, a2);
}

uint64_t nw_quic_get_enable_l4s(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  enable_l4s = nw_quic_connection_get_enable_l4s(v1);

  return enable_l4s;
}

void nw_quic_connection_set_is_speculative_attempt(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_is_speculative_attempt(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_is_speculative_attempt";
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
        v14 = "nw_quic_connection_set_is_speculative_attempt";
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
            v14 = "nw_quic_connection_set_is_speculative_attempt";
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
        v14 = "nw_quic_connection_set_is_speculative_attempt";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_is_speculative_attempt";
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

LABEL_3:
}

void nw_quic_set_is_speculative_attempt(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_is_speculative_attempt(v3, a2);
}

uint64_t nw_quic_get_is_speculative_attempt(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  is_speculative_attempt = nw_quic_connection_get_is_speculative_attempt(v1);

  return is_speculative_attempt;
}

void nw_quic_connection_set_disable_spin_bit(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_disable_spin_bit(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_disable_spin_bit";
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
        v14 = "nw_quic_connection_set_disable_spin_bit";
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
            v14 = "nw_quic_connection_set_disable_spin_bit";
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
        v14 = "nw_quic_connection_set_disable_spin_bit";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_disable_spin_bit";
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

LABEL_3:
}

void nw_quic_set_disable_spin_bit(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_disable_spin_bit(v3, a2);
}

uint64_t nw_quic_get_disable_spin_bit(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  disable_spin_bit = nw_quic_connection_get_disable_spin_bit(v1);

  return disable_spin_bit;
}

void nw_quic_connection_set_spin_bit_value(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_spin_bit_value(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_spin_bit_value";
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
        v14 = "nw_quic_connection_set_spin_bit_value";
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
            v14 = "nw_quic_connection_set_spin_bit_value";
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
        v14 = "nw_quic_connection_set_spin_bit_value";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_spin_bit_value";
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

LABEL_3:
}

uint64_t nw_quic_connection_get_spin_bit_value(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    spin_bit_value = _nw_quic_connection_get_spin_bit_value(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_spin_bit_value";
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
        v14 = "nw_quic_connection_get_spin_bit_value";
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
            v14 = "nw_quic_connection_get_spin_bit_value";
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
        v14 = "nw_quic_connection_get_spin_bit_value";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_spin_bit_value";
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

  spin_bit_value = 0;
LABEL_3:

  return spin_bit_value;
}

void nw_quic_set_spin_bit_value(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_spin_bit_value(v3, a2);
}

uint64_t nw_quic_get_spin_bit_value(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  spin_bit_value = nw_quic_connection_get_spin_bit_value(v1);

  return spin_bit_value;
}

void nw_quic_connection_set_enable_multipath(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_enable_multipath(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_enable_multipath";
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
        v14 = "nw_quic_connection_set_enable_multipath";
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
            v14 = "nw_quic_connection_set_enable_multipath";
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
        v14 = "nw_quic_connection_set_enable_multipath";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_enable_multipath";
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

LABEL_3:
}

void nw_quic_set_enable_multipath(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_enable_multipath(v3, a2);
}

uint64_t nw_quic_get_enable_multipath(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  enable_multipath = nw_quic_connection_get_enable_multipath(v1);

  return enable_multipath;
}

void nw_quic_connection_set_probe_simultaneously(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_probe_simultaneously(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_probe_simultaneously";
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
        v14 = "nw_quic_connection_set_probe_simultaneously";
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
            v14 = "nw_quic_connection_set_probe_simultaneously";
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
        v14 = "nw_quic_connection_set_probe_simultaneously";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_probe_simultaneously";
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

LABEL_3:
}

void nw_quic_set_probe_simultaneously(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_probe_simultaneously(v3, a2);
}

uint64_t nw_quic_get_probe_simultaneously(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  probe_simultaneously = nw_quic_connection_get_probe_simultaneously(v1);

  return probe_simultaneously;
}

void nw_quic_connection_set_phone_call_relay_optimization(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_phone_call_relay_optimization(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_phone_call_relay_optimization";
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
        v14 = "nw_quic_connection_set_phone_call_relay_optimization";
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
            v14 = "nw_quic_connection_set_phone_call_relay_optimization";
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
        v14 = "nw_quic_connection_set_phone_call_relay_optimization";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_phone_call_relay_optimization";
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

LABEL_3:
}

void nw_quic_set_phone_call_relay_optimization(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_phone_call_relay_optimization(v3, a2);
}

uint64_t nw_quic_get_phone_call_relay_optimization(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  v2 = nw_quic_connection_get_phone_call_relay_optimization(v1);

  return v2;
}

void nw_quic_connection_set_ignore_path_errors(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_ignore_path_errors(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_ignore_path_errors";
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
        v14 = "nw_quic_connection_set_ignore_path_errors";
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
            v14 = "nw_quic_connection_set_ignore_path_errors";
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
        v14 = "nw_quic_connection_set_ignore_path_errors";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_ignore_path_errors";
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

LABEL_3:
}

void nw_quic_set_ignore_path_errors(void *a1, char a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_ignore_path_errors(v3, a2);
}

uint64_t nw_quic_get_ignore_path_errors(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  ignore_path_errors = nw_quic_connection_get_ignore_path_errors(v1);

  return ignore_path_errors;
}

void nw_quic_connection_set_setup_placeholder(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_setup_placeholder(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_setup_placeholder";
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
        v14 = "nw_quic_connection_set_setup_placeholder";
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
            v14 = "nw_quic_connection_set_setup_placeholder";
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
        v14 = "nw_quic_connection_set_setup_placeholder";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_setup_placeholder";
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

LABEL_3:
}

uint64_t nw_quic_connection_get_setup_placeholder(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    setup_placeholder = _nw_quic_connection_get_setup_placeholder(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_setup_placeholder";
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
        v14 = "nw_quic_connection_get_setup_placeholder";
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
            v14 = "nw_quic_connection_get_setup_placeholder";
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
        v14 = "nw_quic_connection_get_setup_placeholder";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_setup_placeholder";
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

  setup_placeholder = 0;
LABEL_3:

  return setup_placeholder;
}

void nw_quic_set_setup_placeholder(void *a1, char a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_setup_placeholder(v3, a2);
}

uint64_t nw_quic_get_setup_placeholder(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  setup_placeholder = nw_quic_connection_get_setup_placeholder(v1);

  return setup_placeholder;
}

void nw_quic_connection_set_pmtud_update_block(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (nw_protocol_options_is_quic_connection(v5))
  {
    _nw_quic_connection_set_pmtud_update_block(v5, v6, v7);
    goto LABEL_3;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_quic_connection_set_pmtud_update_block";
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
        v18 = "nw_quic_connection_set_pmtud_update_block";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v18 = "nw_quic_connection_set_pmtud_update_block";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v14)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v18 = "nw_quic_connection_set_pmtud_update_block";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_connection_set_pmtud_update_block";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v9)
  {
    free(v9);
  }

LABEL_3:
}

void nw_quic_connection_execute_pmtud_update_block(void *a1, __int16 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_execute_pmtud_update_block(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_execute_pmtud_update_block";
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
        v14 = "nw_quic_connection_execute_pmtud_update_block";
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
            v14 = "nw_quic_connection_execute_pmtud_update_block";
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
        v14 = "nw_quic_connection_execute_pmtud_update_block";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_execute_pmtud_update_block";
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

LABEL_3:
}

void nw_quic_connection_set_source_connection_id_length(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_connection(v3))
  {
    _nw_quic_connection_set_source_connection_id_length(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_source_connection_id_length";
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
        v14 = "nw_quic_connection_set_source_connection_id_length";
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
            v14 = "nw_quic_connection_set_source_connection_id_length";
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
        v14 = "nw_quic_connection_set_source_connection_id_length";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_source_connection_id_length";
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

LABEL_3:
}

void nw_quic_set_source_connection_id_length(void *a1, char a2)
{
  v3 = nw_quic_stream_copy_shared_connection_options(a1);
  nw_quic_connection_set_source_connection_id_length(v3, a2);
}

uint64_t nw_quic_get_source_connection_id_length(void *a1)
{
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  source_connection_id_length = nw_quic_connection_get_source_connection_id_length(v1);

  return source_connection_id_length;
}

void nw_quic_connection_set_session_state_update_block(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (nw_protocol_options_is_quic_connection(v5))
  {
    _nw_quic_connection_set_session_state_update_block(v5, v6, v7);
    goto LABEL_3;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_quic_connection_set_session_state_update_block";
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
        v18 = "nw_quic_connection_set_session_state_update_block";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
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
            v18 = "nw_quic_connection_set_session_state_update_block";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v14)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v18 = "nw_quic_connection_set_session_state_update_block";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_connection_set_session_state_update_block";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v9)
  {
    free(v9);
  }

LABEL_3:
}

void nw_quic_connection_execute_max_streams_update_block(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (nw_protocol_options_is_quic_connection(v5))
  {
    _nw_quic_connection_execute_max_streams_update_block(v5, a2, a3);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_quic_connection_execute_max_streams_update_block";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_quic_connection_execute_max_streams_update_block";
        v10 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
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
            v16 = "nw_quic_connection_execute_max_streams_update_block";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v12)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v16 = "nw_quic_connection_execute_max_streams_update_block";
        v10 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_quic_connection_execute_max_streams_update_block";
        v10 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v7)
  {
    free(v7);
  }

LABEL_3:
}

void nw_quic_stream_set_is_datagram(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_stream(v3))
  {
    _nw_quic_stream_set_is_datagram(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_is_datagram";
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
        v14 = "nw_quic_stream_set_is_datagram";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options)";
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
            v14 = "nw_quic_stream_set_is_datagram";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_stream(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_is_datagram";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_is_datagram";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_stream_set_associated_stream_id(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_stream(v3))
  {
    _nw_quic_stream_set_associated_stream_id(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_associated_stream_id";
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
        v14 = "nw_quic_stream_set_associated_stream_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options)";
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
            v14 = "nw_quic_stream_set_associated_stream_id";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_stream(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_associated_stream_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_associated_stream_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_stream_set_datagram_context_id(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_stream(v3))
  {
    _nw_quic_stream_set_datagram_context_id(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_datagram_context_id";
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
        v14 = "nw_quic_stream_set_datagram_context_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options)";
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
            v14 = "nw_quic_stream_set_datagram_context_id";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_stream(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_datagram_context_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_datagram_context_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), backtrace limit exceeded";
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

LABEL_3:
}

uint64_t nw_quic_options_copy_local_public_key(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_quic_options_copy_local_public_key";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_options_copy_local_public_key";
        v11 = "%{public}s called with null options";
LABEL_33:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v18 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            v24 = "nw_quic_options_copy_local_public_key";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_35;
        }

        if (!v18)
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v24 = "nw_quic_options_copy_local_public_key";
        v11 = "%{public}s called with null options, no backtrace";
        goto LABEL_33;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_options_copy_local_public_key";
        v11 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_33;
      }
    }

LABEL_34:

LABEL_35:
    if (v8)
    {
      free(v8);
    }

    return 0;
  }

  v2 = v1;
  if (!_nw_protocol_options_is_quic_connection(v2))
  {
    is_quic_stream = _nw_protocol_options_is_quic_stream(v2);

    if (is_quic_stream)
    {
      goto LABEL_5;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_quic_options_copy_local_public_key";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
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
        v24 = "nw_quic_options_copy_local_public_key";
        v16 = "%{public}s called with null nw_protocol_options_is_quic(options)";
LABEL_39:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      v19 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v20 = os_log_type_enabled(v14, type);
      if (v19)
      {
        if (v20)
        {
          *buf = 136446466;
          v24 = "nw_quic_options_copy_local_public_key";
          v25 = 2082;
          v26 = v19;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null nw_protocol_options_is_quic(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v19);
        goto LABEL_41;
      }

      if (v20)
      {
        *buf = 136446210;
        v24 = "nw_quic_options_copy_local_public_key";
        v16 = "%{public}s called with null nw_protocol_options_is_quic(options), no backtrace";
        goto LABEL_39;
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_options_copy_local_public_key";
        v16 = "%{public}s called with null nw_protocol_options_is_quic(options), backtrace limit exceeded";
        goto LABEL_39;
      }
    }

LABEL_41:
    if (v13)
    {
      free(v13);
    }

    return 0;
  }

LABEL_5:
  if (_nw_protocol_options_is_quic_stream(v2))
  {
    v4 = nw_quic_stream_copy_shared_connection_options(v2);

    v2 = v4;
  }

  v5 = nw_quic_connection_copy_local_public_key(v2);

  return v5;
}

void nw_quic_set_remote_transport_parameters(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = a1;
  if (nw_protocol_options_is_quic_connection(v13))
  {
    _nw_quic_set_remote_transport_parameters(v13, a2, a3, a4, a5, a6, a7);
    goto LABEL_3;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_quic_set_remote_transport_parameters";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v15, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_set_remote_transport_parameters";
        v18 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v17 = type;
        v20 = os_log_type_enabled(v16, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v24 = "nw_quic_set_remote_transport_parameters";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v20)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v24 = "nw_quic_set_remote_transport_parameters";
        v18 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v24 = "nw_quic_set_remote_transport_parameters";
        v18 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v15)
  {
    free(v15);
  }

LABEL_3:
}

void nw_quic_connection_set_max_data(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_max_data(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_max_data";
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
        v14 = "nw_quic_connection_set_max_data";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_set_max_data";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_data";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_data";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_max_data(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_max_data(v3, a2);
}

void nw_quic_connection_set_max_stream_data_bidirectional_local(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_max_stream_data_bidirectional_local(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_max_stream_data_bidirectional_local";
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
        v14 = "nw_quic_connection_set_max_stream_data_bidirectional_local";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_set_max_stream_data_bidirectional_local";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_stream_data_bidirectional_local";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_stream_data_bidirectional_local";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_max_stream_data_bidirectional_local(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_max_stream_data_bidirectional_local(v3, a2);
}

void nw_quic_connection_set_max_stream_data_bidirectional_remote(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_max_stream_data_bidirectional_remote(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_max_stream_data_bidirectional_remote";
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
        v14 = "nw_quic_connection_set_max_stream_data_bidirectional_remote";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_set_max_stream_data_bidirectional_remote";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_stream_data_bidirectional_remote";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_stream_data_bidirectional_remote";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_max_stream_data_bidirectional_remote(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_max_stream_data_bidirectional_remote(v3, a2);
}

void nw_quic_connection_set_max_stream_data_unidirectional(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_max_stream_data_unidirectional(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_max_stream_data_unidirectional";
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
        v14 = "nw_quic_connection_set_max_stream_data_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_set_max_stream_data_unidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_stream_data_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_max_stream_data_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_max_stream_data_unidirectional(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_max_stream_data_unidirectional(v3, a2);
}

void nw_quic_connection_set_local_max_streams_unidirectional(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_local_max_streams_unidirectional(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_local_max_streams_unidirectional";
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
        v14 = "nw_quic_connection_set_local_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_set_local_max_streams_unidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_local_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_local_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_local_max_streams_unidirectional(nw_protocol_metadata_t metadata, uint64_t max_streams_unidirectional)
{
  v3 = nw_quic_stream_copy_connection_metadata(metadata);
  nw_quic_connection_set_local_max_streams_unidirectional(v3, max_streams_unidirectional);
}

void nw_quic_connection_set_local_max_streams_bidirectional(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_local_max_streams_bidirectional(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_local_max_streams_bidirectional";
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
        v14 = "nw_quic_connection_set_local_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_set_local_max_streams_bidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_local_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_local_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}
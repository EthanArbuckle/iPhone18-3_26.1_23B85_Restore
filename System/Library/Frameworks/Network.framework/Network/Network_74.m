uint64_t nw_protocol_http_retry_create::$_5::__invoke(nw_protocol_http_retry_create::$_5 *this, nw_protocol *a2, nw_protocol *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v3 = *(this + 5);
    if (v3)
    {
      *(v3 + 572) |= 4u;
      return 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    v16 = "operator()";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v16 = "operator()";
        v8 = "%{public}s called with null http_retry";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v13 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v16 = "operator()";
        v8 = "%{public}s called with null http_retry, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v12 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v16 = "operator()";
        v8 = "%{public}s called with null http_retry, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v16 = "operator()";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null http_retry, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v16 = "operator()";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v5, &type, &v13))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v13 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v16 = "operator()";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v10 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v10)
      {
        *buf = 136446210;
        v16 = "operator()";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v16 = "operator()";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v6, v7, v11, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v6 = __nwlog_obj();
  v7 = type;
  if (os_log_type_enabled(v6, type))
  {
    *buf = 136446210;
    v16 = "operator()";
    v8 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_32:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

void nw_protocol_http2_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_http2_disconnect";
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v16, &type, &v41))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http2_disconnect";
      v19 = "%{public}s called with null protocol";
    }

    else if (v41 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v23 = os_log_type_enabled(v17, type);
      if (backtrace_string)
      {
        if (v23)
        {
          *buf = 136446466;
          v44 = "nw_protocol_http2_disconnect";
          v45 = 2082;
          v46 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_88:
        if (!v16)
        {
          return;
        }

        goto LABEL_89;
      }

      if (!v23)
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http2_disconnect";
      v19 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http2_disconnect";
      v19 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_87;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_http2_disconnect";
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v16, &type, &v41))
    {
      goto LABEL_88;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v41 != 1)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_88;
        }

        *buf = 136446210;
        v44 = "nw_protocol_http2_disconnect";
        v19 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_87;
      }

      v24 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v25 = os_log_type_enabled(v17, type);
      if (!v24)
      {
        if (!v25)
        {
          goto LABEL_88;
        }

        *buf = 136446210;
        v44 = "nw_protocol_http2_disconnect";
        v19 = "%{public}s called with null http2, no backtrace";
        goto LABEL_87;
      }

      if (v25)
      {
        *buf = 136446466;
        v44 = "nw_protocol_http2_disconnect";
        v45 = 2082;
        v46 = v24;
        v26 = "%{public}s called with null http2, dumping backtrace:%{public}s";
LABEL_53:
        _os_log_impl(&dword_181A37000, v17, v18, v26, buf, 0x16u);
      }

LABEL_54:
      free(v24);
      if (!v16)
      {
        return;
      }

LABEL_89:
      v39 = v16;
LABEL_90:
      free(v39);
      return;
    }

    v17 = __nwlog_obj();
    v18 = type;
    if (!os_log_type_enabled(v17, type))
    {
      goto LABEL_88;
    }

    *buf = 136446210;
    v44 = "nw_protocol_http2_disconnect";
    v19 = "%{public}s called with null http2";
LABEL_87:
    _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
    goto LABEL_88;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_http2_disconnect";
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v16, &type, &v41))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http2_disconnect";
      v19 = "%{public}s called with null other_protocol";
      goto LABEL_87;
    }

    if (v41 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http2_disconnect";
      v19 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_87;
    }

    v24 = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type;
    v27 = os_log_type_enabled(v17, type);
    if (!v24)
    {
      if (!v27)
      {
        goto LABEL_88;
      }

      *buf = 136446210;
      v44 = "nw_protocol_http2_disconnect";
      v19 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_87;
    }

    if (v27)
    {
      *buf = 136446466;
      v44 = "nw_protocol_http2_disconnect";
      v45 = 2082;
      v46 = v24;
      v26 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  if ((*(handle + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v20 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v21 = handle[90];
      *buf = 136446978;
      v44 = "nw_protocol_http2_disconnect";
      v45 = 2082;
      v46 = (handle + 95);
      v47 = 2080;
      v48 = " ";
      v49 = 1024;
      v50 = v21;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  output_handler_context = a2->output_handler_context;
  if (!output_handler_context)
  {
    if (*(handle + 379))
    {
      return;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v9 = gconnectionLogObj;
    if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = handle[90];
    *buf = 136446978;
    v44 = "nw_protocol_http2_disconnect";
    v45 = 2082;
    v46 = (handle + 95);
    v47 = 2080;
    v48 = " ";
    v49 = 1024;
    v50 = v10;
    v11 = "%{public}s %{public}s%s<i%u> attempting to disconnect on protocol that doesn't have entry in table, ignoring";
    v12 = v9;
    v13 = 38;
LABEL_22:
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    return;
  }

  v5 = output_handler_context[4];
  if (!v5)
  {
    if (*(handle + 379))
    {
      return;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v14 = gconnectionLogObj;
    if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v15 = handle[90];
    *buf = 136447490;
    v44 = "nw_protocol_http2_disconnect";
    v45 = 2082;
    v46 = (handle + 95);
    v47 = 2080;
    v48 = " ";
    v49 = 1024;
    v50 = v15;
    v51 = 2048;
    v52 = a2;
    v53 = 2048;
    v54 = output_handler_context;
    v11 = "%{public}s %{public}s%s<i%u> protocol (%p) node (%p) has no stream pointer as extra";
    v12 = v14;
    v13 = 58;
    goto LABEL_22;
  }

  nw_http2_stream_close(handle, output_handler_context[4]);
  v6 = *(v5 + 188);
  if ((v6 & 0x40) != 0)
  {
    return;
  }

  *(v5 + 188) = v6 | 0x40;
  callbacks = a2->callbacks;
  if (callbacks)
  {
    disconnected = callbacks->disconnected;
    if (disconnected)
    {
      disconnected(a2, handle);
      return;
    }
  }

  __nwlog_obj();
  identifier = a2->identifier;
  if (!identifier)
  {
    identifier = "invalid";
  }

  *buf = 136446466;
  v44 = "nw_protocol_http2_disconnect";
  v45 = 2082;
  v46 = identifier;
  v29 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v41 = 0;
  if (!__nwlog_fault(v29, &type, &v41))
  {
    goto LABEL_96;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v30 = __nwlog_obj();
    v31 = type;
    if (!os_log_type_enabled(v30, type))
    {
      goto LABEL_96;
    }

    v32 = a2->identifier;
    if (!v32)
    {
      v32 = "invalid";
    }

    *buf = 136446466;
    v44 = "nw_protocol_http2_disconnect";
    v45 = 2082;
    v46 = v32;
    v33 = "%{public}s protocol %{public}s has invalid disconnected callback";
LABEL_95:
    _os_log_impl(&dword_181A37000, v30, v31, v33, buf, 0x16u);
    goto LABEL_96;
  }

  if (v41 != 1)
  {
    v30 = __nwlog_obj();
    v31 = type;
    v37 = os_log_type_enabled(v30, type);
    v38 = "invalid";
    if (!v37)
    {
      goto LABEL_96;
    }

    if (a2->identifier)
    {
      v38 = a2->identifier;
    }

    *buf = 136446466;
    v44 = "nw_protocol_http2_disconnect";
    v45 = 2082;
    v46 = v38;
    v33 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
    goto LABEL_95;
  }

  v34 = __nw_create_backtrace_string();
  v30 = __nwlog_obj();
  v31 = type;
  v35 = os_log_type_enabled(v30, type);
  if (!v34)
  {
    v40 = "invalid";
    if (!v35)
    {
      goto LABEL_96;
    }

    if (a2->identifier)
    {
      v40 = a2->identifier;
    }

    *buf = 136446466;
    v44 = "nw_protocol_http2_disconnect";
    v45 = 2082;
    v46 = v40;
    v33 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
    goto LABEL_95;
  }

  if (v35)
  {
    v36 = "invalid";
    if (a2->identifier)
    {
      v36 = a2->identifier;
    }

    *buf = 136446722;
    v44 = "nw_protocol_http2_disconnect";
    v45 = 2082;
    v46 = v36;
    v47 = 2082;
    v48 = v34;
    _os_log_impl(&dword_181A37000, v30, v31, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v34);
LABEL_96:
  if (v29)
  {
    v39 = v29;
    goto LABEL_90;
  }
}

void nw_http2_drain_output_frames(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 379) & 1) != 0)
  {
    goto LABEL_5;
  }

  if (gLogDatapath == 1)
  {
    v7 = a1;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v8 = gconnectionLogObj;
    v9 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
    a1 = v7;
    if (v9)
    {
      v10 = " ";
      v11 = *(v7 + 360);
      v26 = "nw_http2_drain_output_frames";
      v27 = 2082;
      v12 = (v7 + 380);
      *buf = 136446978;
      if (!v7)
      {
        v12 = "";
      }

      v28 = v12;
      if (!v7)
      {
        v10 = "";
      }

      v29 = 2080;
      v30 = v10;
      v31 = 1024;
      v32 = v11;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      a1 = v7;
      goto LABEL_5;
    }
  }

  if (a1)
  {
LABEL_5:
    v1 = (a1 + 377);
    if ((*(a1 + 377) & 0x400) != 0)
    {
      if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
      {
        v19 = a1;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v20 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v21 = *(v19 + 360);
          *buf = 136446978;
          v26 = "nw_http2_drain_output_frames";
          v27 = 2082;
          v28 = (v19 + 380);
          v29 = 2080;
          v30 = " ";
          v31 = 1024;
          v32 = v21;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> already draining output frames, skipping", buf, 0x26u);
        }
      }
    }

    else
    {
      *v1 = *(a1 + 377) | 0x400;
      if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
      {
        v15 = a1;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v16 = gconnectionLogObj;
        v17 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
        a1 = v15;
        if (v17)
        {
          v18 = *(v15 + 360);
          *buf = 136446978;
          v26 = "nw_http2_drain_output_frames";
          v27 = 2082;
          v28 = (v15 + 380);
          v29 = 2080;
          v30 = " ";
          v31 = 1024;
          v32 = v18;
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> draining output frames", buf, 0x26u);
          a1 = v15;
        }
      }

      v2 = *(a1 + 152);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 0x40000000;
      v22[2] = ___ZL28nw_http2_drain_output_framesP17nw_protocol_http2_block_invoke;
      v22[3] = &__block_descriptor_tmp_29_87137;
      v22[4] = a1;
      nw_hash_table_apply(v2, v22);
      *v1 &= ~0x400u;
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_http2_drain_output_frames";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v3, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v26 = "nw_http2_drain_output_frames";
      v6 = "%{public}s called with null http2";
      goto LABEL_41;
    }

    if (v23 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v26 = "nw_http2_drain_output_frames";
      v6 = "%{public}s called with null http2, backtrace limit exceeded";
      goto LABEL_41;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v14 = os_log_type_enabled(v4, type);
    if (backtrace_string)
    {
      if (v14)
      {
        *buf = 136446466;
        v26 = "nw_http2_drain_output_frames";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_42;
    }

    if (v14)
    {
      *buf = 136446210;
      v26 = "nw_http2_drain_output_frames";
      v6 = "%{public}s called with null http2, no backtrace";
LABEL_41:
      _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    }
  }

LABEL_42:
  if (v3)
  {
    free(v3);
  }
}

void nw_http2_stream_close(uint64_t a1, uint64_t a2)
{
  v112 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v76 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v78 = *(a2 + 176);
        v77 = *(a2 + 180);
        *buf = 136447234;
        v101 = "nw_http2_stream_close";
        v102 = 2082;
        v103 = (a2 + 191);
        v104 = 2080;
        v105 = " ";
        v106 = 1024;
        *v107 = v77;
        *&v107[4] = 1024;
        *&v107[6] = v78;
        _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> called", buf, 0x2Cu);
      }
    }
  }

  else
  {
    if (a1 && (*(a1 + 379) & 1) != 0)
    {
      goto LABEL_127;
    }

    if (gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v68 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v69 = (a1 + 380);
        v70 = *(a1 + 360);
        *buf = 136446978;
        v101 = "nw_http2_stream_close";
        v102 = 2082;
        if (!a1)
        {
          v69 = "";
        }

        v103 = v69;
        if (a1)
        {
          v71 = " ";
        }

        else
        {
          v71 = "";
        }

        v104 = 2080;
        v105 = v71;
        v106 = 1024;
        *v107 = v70;
        _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
        goto LABEL_127;
      }
    }
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_http2_stream_close";
    v72 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (!__nwlog_fault(v72, &type, &v98))
    {
      goto LABEL_177;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v73 = __nwlog_obj();
      v74 = type;
      if (!os_log_type_enabled(v73, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v101 = "nw_http2_stream_close";
      v75 = "%{public}s called with null http2";
      goto LABEL_176;
    }

    if (v98 != 1)
    {
      v73 = __nwlog_obj();
      v74 = type;
      if (!os_log_type_enabled(v73, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v101 = "nw_http2_stream_close";
      v75 = "%{public}s called with null http2, backtrace limit exceeded";
      goto LABEL_176;
    }

    backtrace_string = __nw_create_backtrace_string();
    v73 = __nwlog_obj();
    v74 = type;
    v80 = os_log_type_enabled(v73, type);
    if (!backtrace_string)
    {
      if (!v80)
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v101 = "nw_http2_stream_close";
      v75 = "%{public}s called with null http2, no backtrace";
      goto LABEL_176;
    }

    if (v80)
    {
      *buf = 136446466;
      v101 = "nw_http2_stream_close";
      v102 = 2082;
      v103 = backtrace_string;
      _os_log_impl(&dword_181A37000, v73, v74, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    goto LABEL_177;
  }

  if (!a2)
  {
LABEL_127:
    __nwlog_obj();
    *buf = 136446210;
    v101 = "nw_http2_stream_close";
    v72 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (!__nwlog_fault(v72, &type, &v98))
    {
      goto LABEL_177;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v73 = __nwlog_obj();
      v74 = type;
      if (!os_log_type_enabled(v73, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v101 = "nw_http2_stream_close";
      v75 = "%{public}s called with null stream";
      goto LABEL_176;
    }

    if (v98 != 1)
    {
      v73 = __nwlog_obj();
      v74 = type;
      if (!os_log_type_enabled(v73, type))
      {
        goto LABEL_177;
      }

      *buf = 136446210;
      v101 = "nw_http2_stream_close";
      v75 = "%{public}s called with null stream, backtrace limit exceeded";
      goto LABEL_176;
    }

    v81 = __nw_create_backtrace_string();
    v73 = __nwlog_obj();
    v74 = type;
    v82 = os_log_type_enabled(v73, type);
    if (v81)
    {
      if (v82)
      {
        *buf = 136446466;
        v101 = "nw_http2_stream_close";
        v102 = 2082;
        v103 = v81;
        _os_log_impl(&dword_181A37000, v73, v74, "%{public}s called with null stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v81);
      if (!v72)
      {
        return;
      }

LABEL_178:
      free(v72);
      return;
    }

    if (v82)
    {
      *buf = 136446210;
      v101 = "nw_http2_stream_close";
      v75 = "%{public}s called with null stream, no backtrace";
LABEL_176:
      _os_log_impl(&dword_181A37000, v73, v74, v75, buf, 0xCu);
    }

LABEL_177:
    if (!v72)
    {
      return;
    }

    goto LABEL_178;
  }

  v4 = (a2 + 176);
  v5 = *(a2 + 188);
  if (*(a2 + 176) != -1)
  {
    if ((v5 & 1) == 0)
    {
      if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v6 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v8 = *(a2 + 176);
          v7 = *(a2 + 180);
          *buf = 136447234;
          v101 = "nw_http2_stream_close";
          v102 = 2082;
          v103 = (a2 + 191);
          v104 = 2080;
          v105 = " ";
          v106 = 1024;
          *v107 = v7;
          *&v107[4] = 1024;
          *&v107[6] = v8;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> not sending RST_STREAM, since we are already closed from nghttp2's perspective", buf, 0x2Cu);
        }
      }

LABEL_36:
      if ((*(a2 + 188) & 0x400) == 0)
      {
        v24 = *(a2 + 32);
        if (v24)
        {
          v25 = mach_continuous_approximate_time();
          v26 = v25 <= 1 ? 1 : v25;
          v27 = nw_delta_nanos(v24, v26);
          if (v27 > 1000000000 * networkd_settings_get_int64_with_default(nw_setting_proxy_setup_threshold_seconds, 5))
          {
            v28 = (*(a1 + 364))++ + 1;
            if ((v28 & 0x10000) != 0)
            {
              if (gLogDatapath == 1)
              {
                v96 = __nwlog_obj();
                if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
                {
                  v97 = *(a1 + 364);
                  *buf = 136446978;
                  v101 = "nw_http2_stream_close";
                  v102 = 2082;
                  v103 = "http2->stream_stall_count";
                  v104 = 2048;
                  v105 = 1;
                  v106 = 2048;
                  *v107 = v97;
                  _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
                }
              }

              *(a1 + 364) = -1;
            }

            if ((*(a2 + 190) & 0x10) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v29 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
              {
                v31 = *(a2 + 176);
                v30 = *(a2 + 180);
                v32 = *(a1 + 364);
                *buf = 136447490;
                v101 = "nw_http2_stream_close";
                v102 = 2082;
                v103 = (a2 + 191);
                v104 = 2080;
                v105 = " ";
                v106 = 1024;
                *v107 = v30;
                *&v107[4] = 1024;
                *&v107[6] = v31;
                v108 = 1024;
                v109 = v32;
                _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%d> stream setup stalls incremented to %u", buf, 0x32u);
              }
            }
          }
        }
      }

      if (*(a2 + 176) != -1)
      {
        if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v83 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v85 = *(a2 + 176);
            v84 = *(a2 + 180);
            *buf = 136447746;
            v101 = "nw_http2_remove_from_id_table";
            v102 = 2082;
            v103 = (a2 + 191);
            v104 = 2080;
            v105 = " ";
            v106 = 1024;
            *v107 = v84;
            *&v107[4] = 1024;
            *&v107[6] = v85;
            v108 = 1024;
            v109 = v85;
            v110 = 2048;
            v111 = a2;
            _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> called for stream %d (%p)", buf, 0x3Cu);
          }
        }

        v33 = *(a1 + 160);
        if (v33)
        {
          node = nw_hash_table_get_node(v33, a2 + 176, 4);
          if (node)
          {
            if (nw_hash_table_remove_node(*(a1 + 160), node))
            {
              if ((*(a2 + 190) & 0x10) != 0 || gLogDatapath != 1)
              {
                goto LABEL_111;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v35 = gconnectionLogObj;
              if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_111;
              }

              v37 = *(a2 + 176);
              v36 = *(a2 + 180);
              *buf = 136447490;
              v101 = "nw_http2_remove_from_id_table";
              v102 = 2082;
              v103 = (a2 + 191);
              v104 = 2080;
              v105 = " ";
              v106 = 1024;
              *v107 = v36;
              *&v107[4] = 1024;
              *&v107[6] = v37;
              v108 = 1024;
              v109 = v37;
              v38 = "%{public}s %{public}s%s<i%u:s%d> removed stream %d from id based table";
LABEL_110:
              _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, v38, buf, 0x32u);
LABEL_111:
              if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v86 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                {
                  v88 = *(a2 + 176);
                  v87 = *(a2 + 180);
                  *buf = 136447490;
                  v101 = "nw_http2_stream_close";
                  v102 = 2082;
                  v103 = (a2 + 191);
                  v104 = 2080;
                  v105 = " ";
                  v106 = 1024;
                  *v107 = v87;
                  *&v107[4] = 1024;
                  *&v107[6] = v88;
                  v108 = 1024;
                  v109 = v88;
                  _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> removed stream %d from id based table", buf, 0x32u);
                }
              }

              *v4 = -1;
              return;
            }

            if ((*(a2 + 190) & 0x10) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v51 = *(a2 + 176);
              v50 = *(a2 + 180);
              *buf = 136447490;
              v101 = "nw_http2_remove_from_id_table";
              v102 = 2082;
              v103 = (a2 + 191);
              v104 = 2080;
              v105 = " ";
              v106 = 1024;
              *v107 = v50;
              *&v107[4] = 1024;
              *&v107[6] = v51;
              v108 = 1024;
              v109 = v51;
              v52 = _os_log_send_and_compose_impl();
              type = OS_LOG_TYPE_ERROR;
              v98 = 0;
              if (!__nwlog_fault(v52, &type, &v98))
              {
                goto LABEL_103;
              }

              if (type == OS_LOG_TYPE_FAULT)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v53 = gconnectionLogObj;
                v54 = type;
                if (!os_log_type_enabled(gconnectionLogObj, type))
                {
                  goto LABEL_103;
                }

                v56 = *(a2 + 176);
                v55 = *(a2 + 180);
                *buf = 136447490;
                v101 = "nw_http2_remove_from_id_table";
                v102 = 2082;
                v103 = (a2 + 191);
                v104 = 2080;
                v105 = " ";
                v106 = 1024;
                *v107 = v55;
                *&v107[4] = 1024;
                *&v107[6] = v56;
                v108 = 1024;
                v109 = v56;
                v57 = "%{public}s %{public}s%s<i%u:s%d> failed to remove id node for stream %d from table";
              }

              else if (v98 == 1)
              {
                v58 = __nw_create_backtrace_string();
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v53 = gconnectionLogObj;
                v54 = type;
                v59 = os_log_type_enabled(gconnectionLogObj, type);
                if (v58)
                {
                  if (v59)
                  {
                    v61 = *(a2 + 176);
                    v60 = *(a2 + 180);
                    *buf = 136447746;
                    v101 = "nw_http2_remove_from_id_table";
                    v102 = 2082;
                    v103 = (a2 + 191);
                    v104 = 2080;
                    v105 = " ";
                    v106 = 1024;
                    *v107 = v60;
                    *&v107[4] = 1024;
                    *&v107[6] = v61;
                    v108 = 1024;
                    v109 = v61;
                    v110 = 2082;
                    v111 = v58;
                    _os_log_impl(&dword_181A37000, v53, v54, "%{public}s %{public}s%s<i%u:s%d> failed to remove id node for stream %d from table, dumping backtrace:%{public}s", buf, 0x3Cu);
                  }

                  free(v58);
                  goto LABEL_103;
                }

                if (!v59)
                {
LABEL_103:
                  if (v52)
                  {
                    free(v52);
                  }

                  goto LABEL_105;
                }

                v65 = *(a2 + 176);
                v64 = *(a2 + 180);
                *buf = 136447490;
                v101 = "nw_http2_remove_from_id_table";
                v102 = 2082;
                v103 = (a2 + 191);
                v104 = 2080;
                v105 = " ";
                v106 = 1024;
                *v107 = v64;
                *&v107[4] = 1024;
                *&v107[6] = v65;
                v108 = 1024;
                v109 = v65;
                v57 = "%{public}s %{public}s%s<i%u:s%d> failed to remove id node for stream %d from table, no backtrace";
              }

              else
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v53 = gconnectionLogObj;
                v54 = type;
                if (!os_log_type_enabled(gconnectionLogObj, type))
                {
                  goto LABEL_103;
                }

                v63 = *(a2 + 176);
                v62 = *(a2 + 180);
                *buf = 136447490;
                v101 = "nw_http2_remove_from_id_table";
                v102 = 2082;
                v103 = (a2 + 191);
                v104 = 2080;
                v105 = " ";
                v106 = 1024;
                *v107 = v62;
                *&v107[4] = 1024;
                *&v107[6] = v63;
                v108 = 1024;
                v109 = v63;
                v57 = "%{public}s %{public}s%s<i%u:s%d> failed to remove id node for stream %d from table, backtrace limit exceeded";
              }

              _os_log_impl(&dword_181A37000, v53, v54, v57, buf, 0x32u);
              goto LABEL_103;
            }

LABEL_105:
            if ((*(a2 + 190) & 0x10) != 0)
            {
              goto LABEL_111;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v35 = gconnectionLogObj;
            if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_111;
            }

            v67 = *(a2 + 176);
            v66 = *(a2 + 180);
            *buf = 136447490;
            v101 = "nw_http2_stream_close";
            v102 = 2082;
            v103 = (a2 + 191);
            v104 = 2080;
            v105 = " ";
            v106 = 1024;
            *v107 = v66;
            *&v107[4] = 1024;
            *&v107[6] = v67;
            v108 = 1024;
            v109 = v67;
            v38 = "%{public}s %{public}s%s<i%u:s%d> did not remove stream %d from id table";
            goto LABEL_110;
          }

          if ((*(a2 + 190) & 0x10) != 0)
          {
            goto LABEL_105;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v47 = gconnectionLogObj;
          if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
          {
            goto LABEL_105;
          }

          v49 = *(a2 + 176);
          v48 = *(a2 + 180);
          *buf = 136447490;
          v101 = "nw_http2_remove_from_id_table";
          v102 = 2082;
          v103 = (a2 + 191);
          v104 = 2080;
          v105 = " ";
          v106 = 1024;
          *v107 = v48;
          *&v107[4] = 1024;
          *&v107[6] = v49;
          v108 = 1024;
          v109 = v49;
          v44 = "%{public}s %{public}s%s<i%u:s%d> stream %d is not present in id based table, will not remove";
          v45 = v47;
          v46 = OS_LOG_TYPE_INFO;
        }

        else
        {
          if ((*(a2 + 190) & 0x10) != 0)
          {
            goto LABEL_105;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v41 = gconnectionLogObj;
          if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_105;
          }

          v43 = *(a2 + 176);
          v42 = *(a2 + 180);
          *buf = 136447490;
          v101 = "nw_http2_remove_from_id_table";
          v102 = 2082;
          v103 = (a2 + 191);
          v104 = 2080;
          v105 = " ";
          v106 = 1024;
          *v107 = v42;
          *&v107[4] = 1024;
          *&v107[6] = v43;
          v108 = 1024;
          v109 = v43;
          v44 = "%{public}s %{public}s%s<i%u:s%d> id based table is NULL, cannot remove stream %d";
          v45 = v41;
          v46 = OS_LOG_TYPE_ERROR;
        }

        _os_log_impl(&dword_181A37000, v45, v46, v44, buf, 0x32u);
        goto LABEL_105;
      }

      if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v9 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v40 = *(a2 + 176);
          v39 = *(a2 + 180);
          *buf = 136447234;
          v101 = "nw_http2_stream_close";
          v102 = 2082;
          v103 = (a2 + 191);
          v104 = 2080;
          v105 = " ";
          v106 = 1024;
          *v107 = v39;
          *&v107[4] = 1024;
          *&v107[6] = v40;
          v12 = "%{public}s %{public}s%s<i%u:s%d> stream id is -1, skipping removal from id based table";
          goto LABEL_68;
        }
      }

      return;
    }

    *(a2 + 188) = v5 & 0xFFDE;
    if ((*(a2 + 190) & 0x10) != 0 || gLogDatapath != 1)
    {
      goto LABEL_22;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v89 = gconnectionLogObj;
    v90 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
    v91 = *v4;
    if (v90)
    {
      v92 = *(a2 + 180);
      *buf = 136447234;
      v101 = "nw_http2_stream_send_rst_stream";
      v102 = 2082;
      v103 = (a2 + 191);
      v104 = 2080;
      v105 = " ";
      v106 = 1024;
      *v107 = v92;
      *&v107[4] = 1024;
      *&v107[6] = v91;
      _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> called", buf, 0x2Cu);
      v91 = *(a2 + 176);
    }

    if (v91 == -1)
    {
      if ((*(a2 + 190) & 0x10) != 0)
      {
        goto LABEL_35;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v93 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v95 = *(a2 + 176);
      v94 = *(a2 + 180);
      *buf = 136447490;
      v101 = "nw_http2_stream_send_rst_stream";
      v102 = 2082;
      v103 = (a2 + 191);
      v104 = 2080;
      v105 = " ";
      v106 = 1024;
      *v107 = v94;
      *&v107[4] = 1024;
      *&v107[6] = v95;
      v108 = 1024;
      v109 = v95;
      v17 = "%{public}s %{public}s%s<i%u:s%d> cannot send RST_STREAM for stream with invalid stream id %d";
      v18 = v93;
      v19 = OS_LOG_TYPE_ERROR;
    }

    else
    {
LABEL_22:
      nw_http_transaction_metadata_get_error_code(*(a2 + 96));
      if (nghttp2_submit_rst_stream())
      {
        if ((*(a2 + 190) & 0x10) != 0)
        {
          goto LABEL_35;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v13 = gconnectionLogObj;
        if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_35;
        }

        v15 = *(a2 + 176);
        v14 = *(a2 + 180);
        v16 = nghttp2_strerror();
        *buf = 136447746;
        v101 = "nw_http2_stream_send_rst_stream";
        v102 = 2082;
        v103 = (a2 + 191);
        v104 = 2080;
        v105 = " ";
        v106 = 1024;
        *v107 = v14;
        *&v107[4] = 1024;
        *&v107[6] = v15;
        v108 = 1024;
        v109 = v15;
        v110 = 2082;
        v111 = v16;
        v17 = "%{public}s %{public}s%s<i%u:s%d> Failed to submit RST_STREAM on stream %d: %{public}s";
        v18 = v13;
        v19 = OS_LOG_TYPE_ERROR;
        v20 = 60;
LABEL_34:
        _os_log_impl(&dword_181A37000, v18, v19, v17, buf, v20);
LABEL_35:
        nw_http2_session_send(a1);
        goto LABEL_36;
      }

      if ((*(a2 + 190) & 0x10) != 0)
      {
        goto LABEL_35;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v21 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      v23 = *(a2 + 176);
      v22 = *(a2 + 180);
      *buf = 136447490;
      v101 = "nw_http2_stream_send_rst_stream";
      v102 = 2082;
      v103 = (a2 + 191);
      v104 = 2080;
      v105 = " ";
      v106 = 1024;
      *v107 = v22;
      *&v107[4] = 1024;
      *&v107[6] = v23;
      v108 = 1024;
      v109 = v23;
      v17 = "%{public}s %{public}s%s<i%u:s%d> Submitted RST_STREAM on stream %d";
      v18 = v21;
      v19 = OS_LOG_TYPE_INFO;
    }

    v20 = 50;
    goto LABEL_34;
  }

  *(a2 + 188) = v5 & 0xFFFE;
  if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v9 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a2 + 176);
      v10 = *(a2 + 180);
      *buf = 136447234;
      v101 = "nw_http2_stream_close";
      v102 = 2082;
      v103 = (a2 + 191);
      v104 = 2080;
      v105 = " ";
      v106 = 1024;
      *v107 = v10;
      *&v107[4] = 1024;
      *&v107[6] = v11;
      v12 = "%{public}s %{public}s%s<i%u:s%d> stream id is -1, skipping rst_stream and removal from id based table";
LABEL_68:
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, v12, buf, 0x2Cu);
    }
  }
}

void nw_protocol_plugins_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugins_disconnected";
    v20 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v42) = 0;
    if (!__nwlog_fault(v20, type, &v42))
    {
      goto LABEL_92;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type[0];
      if (!os_log_type_enabled(v21, type[0]))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugins_disconnected";
      v23 = "%{public}s called with null protocol";
    }

    else if (v42 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = type[0];
      v31 = os_log_type_enabled(v21, type[0]);
      if (backtrace_string)
      {
        if (v31)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugins_disconnected";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_92:
        if (!v20)
        {
          return;
        }

LABEL_93:
        free(v20);
        return;
      }

      if (!v31)
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugins_disconnected";
      v23 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v21 = __nwlog_obj();
      v22 = type[0];
      if (!os_log_type_enabled(v21, type[0]))
      {
        goto LABEL_92;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugins_disconnected";
      v23 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_91:
    _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
    goto LABEL_92;
  }

  handle = a1->handle;
  if (handle)
  {
    if (a2)
    {
      if (gLogDatapath == 1)
      {
        v28 = __nwlog_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          identifier = a1->identifier;
          if (!identifier)
          {
            identifier = "invalid";
          }

          *buf = 136446722;
          *&buf[4] = "nw_protocol_plugins_handle_disconnected";
          *&buf[12] = 2080;
          *&buf[14] = identifier;
          *&buf[22] = 2048;
          v47 = a1;
          _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s called for %s:%p", buf, 0x20u);
        }
      }

      v5 = handle[11];
      if (v5 && (*(v5 + 108) & 0x20) != 0)
      {
        goto LABEL_22;
      }

      v6 = handle[9];
      if (v6)
      {
        v7 = *(v6 + 142);
        if ((v7 & 2) == 0)
        {
          if (nw_protocol_plugin_metadata_handle_eof(handle[9], a1))
          {
            v5 = handle[11];
            goto LABEL_11;
          }

          v7 = *(v6 + 142);
        }

        v10 = 0;
        *(v6 + 142) = v7 | 8;
        goto LABEL_23;
      }

LABEL_11:
      if (v5)
      {
        v8 = *(v5 + 108);
        if ((v8 & 0x80) == 0)
        {
          if ((v8 & 0x10) == 0)
          {
            if ((v8 & 1) == 0)
            {
              v9 = *(v5 + 48);
              if (v9)
              {
                v10 = v9(a1, a2, *(v5 + 104) != 0) ^ 1;
                goto LABEL_23;
              }

              goto LABEL_18;
            }

            if (gLogDatapath == 1)
            {
              v39 = v5;
              v40 = __nwlog_obj();
              v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG);
              v5 = v39;
              if (v41)
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_plugin_retry_disconnected";
                _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s holding onto disconnected because getting input frames", buf, 0xCu);
                v5 = v39;
              }
            }

            v10 = 0;
            *(v5 + 108) |= 2u;
LABEL_23:
            v11 = handle[9];
            if (v11)
            {
              if (BYTE6(v11[8].tqh_last))
              {
                nw_protocol_plugin_metadata_deep_copy_input_frame_array(handle[9]);
                nw_protocol_plugin_metadata_deep_copy_input_frame_array(v11 + 1);
                if ((v10 & 1) == 0)
                {
                  return;
                }
              }

              else
              {
                tqh_last = &v42;
                v42 = 0;
                v43 = &v42;
                tqh_first = v11->tqh_first;
                if (v11->tqh_first)
                {
                  *(tqh_first + 5) = &v42;
                  tqh_last = v11->tqh_last;
                  v42 = tqh_first;
                  v43 = tqh_last;
                  v11->tqh_first = 0;
                  v11->tqh_last = &v11->tqh_first;
                }

                v14 = v11[1].tqh_first;
                if (v14)
                {
                  *tqh_last = v14;
                  *(v11[1].tqh_first + 5) = tqh_last;
                  v43 = v11[1].tqh_last;
                  v11[1].tqh_first = 0;
                  v11[1].tqh_last = &v11[1].tqh_first;
                }

                if (gLogDatapath == 1)
                {
                  v36 = __nwlog_obj();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_protocol_finalize_temp_frame_array";
                    _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
                  }
                }

                v15 = v42;
                if (v42)
                {
                  *(v42 + 5) = type;
                  *type = v15;
                  v45 = v43;
                  v42 = 0;
                  v43 = &v42;
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 0x40000000;
                  *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
                  v47 = &__block_descriptor_tmp_21_49595;
                  v48 = 0;
                  do
                  {
                    v16 = *type;
                    if (!*type)
                    {
                      break;
                    }

                    v17 = *(*type + 32);
                    v18 = *(*type + 40);
                    v19 = (v17 + 40);
                    if (!v17)
                    {
                      v19 = &v45;
                    }

                    *v19 = v18;
                    *v18 = v17;
                    *(v16 + 32) = 0;
                    *(v16 + 40) = 0;
                  }

                  while (((*&buf[16])(buf) & 1) != 0);
                }

                if ((v10 & 1) == 0)
                {
                  return;
                }
              }
            }

            else if (!v10)
            {
              return;
            }

LABEL_41:
            nw_protocol_common_disconnected(a1, a2);
            return;
          }

          if (gLogDatapath == 1)
          {
            v38 = __nwlog_obj();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_plugin_retry_disconnected";
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s holding onto disconnected because reissuing", buf, 0xCu);
              v10 = 0;
              goto LABEL_23;
            }
          }

LABEL_22:
          v10 = 0;
          goto LABEL_23;
        }

        if (gLogDatapath == 1)
        {
          v37 = __nwlog_obj();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_plugin_retry_disconnected";
            _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s sending disconnected because disconnect was received", buf, 0xCu);
            v10 = 1;
            goto LABEL_23;
          }
        }
      }

LABEL_18:
      v10 = 1;
      goto LABEL_23;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugins_handle_disconnected";
    v24 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v42) = 0;
    if (__nwlog_fault(v24, type, &v42))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type[0];
        if (!os_log_type_enabled(v25, type[0]))
        {
          goto LABEL_97;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugins_handle_disconnected";
        v27 = "%{public}s called with null other_protocol";
        goto LABEL_96;
      }

      if (v42 != 1)
      {
        v25 = __nwlog_obj();
        v26 = type[0];
        if (!os_log_type_enabled(v25, type[0]))
        {
          goto LABEL_97;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugins_handle_disconnected";
        v27 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_96;
      }

      v34 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type[0];
      v35 = os_log_type_enabled(v25, type[0]);
      if (v34)
      {
        if (v35)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugins_handle_disconnected";
          *&buf[12] = 2082;
          *&buf[14] = v34;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v34);
        goto LABEL_97;
      }

      if (v35)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugins_handle_disconnected";
        v27 = "%{public}s called with null other_protocol, no backtrace";
LABEL_96:
        _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
      }
    }

LABEL_97:
    if (v24)
    {
      free(v24);
    }

    goto LABEL_41;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_plugins_disconnected";
  v20 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v42) = 0;
  if (!__nwlog_fault(v20, type, &v42))
  {
    goto LABEL_92;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v21 = __nwlog_obj();
    v22 = type[0];
    if (!os_log_type_enabled(v21, type[0]))
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugins_disconnected";
    v23 = "%{public}s called with null protocol->handle";
    goto LABEL_91;
  }

  if (v42 != 1)
  {
    v21 = __nwlog_obj();
    v22 = type[0];
    if (!os_log_type_enabled(v21, type[0]))
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugins_disconnected";
    v23 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
    goto LABEL_91;
  }

  v32 = __nw_create_backtrace_string();
  v21 = __nwlog_obj();
  v22 = type[0];
  v33 = os_log_type_enabled(v21, type[0]);
  if (!v32)
  {
    if (!v33)
    {
      goto LABEL_92;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugins_disconnected";
    v23 = "%{public}s called with null protocol->handle, no backtrace";
    goto LABEL_91;
  }

  if (v33)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_plugins_disconnected";
    *&buf[12] = 2082;
    *&buf[14] = v32;
    _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null protocol->handle, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v32);
  if (v20)
  {
    goto LABEL_93;
  }
}

BOOL nw_protocol_plugin_metadata_handle_eof(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 142);
  if (*(a1 + 140) == 3 || (v3 & 0x10) != 0)
  {
    goto LABEL_19;
  }

  v37 = -1;
  v38 = 0;
  v35 = 0;
  v36 = -1;
  v34 = 0;
  v32 = 0;
  v33 = &v32;
  if (*a1)
  {
    if (gLogDatapath == 1)
    {
      v17 = __nwlog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_handle_eof";
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s resuming saved input frames", buf, 0xCu);
      }
    }

    v6 = a2[6];
    if (v6)
    {
      v7 = *(a1 + 96);
      if (v7)
      {
        *type = 0;
        v40 = type;
        v41 = 0x2000000000;
        v42 = 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_protocol_plugin_metadata_process_frames_block_invoke;
        v45 = &unk_1E6A2BE58;
        v48 = a1;
        v49 = &v37;
        v57 = 1;
        v50 = a1;
        v51 = &v32;
        v52 = &v38;
        v53 = &v34;
        v46 = type;
        v47 = &v36;
        v54 = a2;
        v55 = v7;
        v56 = v6;
        v8 = *a1;
        do
        {
          if (!v8)
          {
            break;
          }

          v9 = *(v8 + 32);
          v10 = (*&buf[16])(buf);
          v8 = v9;
        }

        while ((v10 & 1) != 0);
        v11 = *(v40 + 6);
        _Block_object_dispose(type, 8);
LABEL_14:
        v35 = v11;
        if (v32)
        {
          v12 = *(a1 + 24);
          *v12 = v32;
          v13 = v33;
          *(v32 + 40) = v12;
          *(a1 + 24) = v13;
        }

        goto LABEL_16;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
      v18 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v43 = 0;
      if (__nwlog_fault(v18, type, &v43))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v19 = __nwlog_obj();
          v20 = type[0];
          if (!os_log_type_enabled(v19, type[0]))
          {
            goto LABEL_52;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
          v21 = "%{public}s called with null processor";
LABEL_51:
          _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
          goto LABEL_52;
        }

        if (v43 != 1)
        {
          v19 = __nwlog_obj();
          v20 = type[0];
          if (!os_log_type_enabled(v19, type[0]))
          {
            goto LABEL_52;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
          v21 = "%{public}s called with null processor, backtrace limit exceeded";
          goto LABEL_51;
        }

        backtrace_string = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v20 = type[0];
        v28 = os_log_type_enabled(v19, type[0]);
        if (!backtrace_string)
        {
          if (!v28)
          {
            goto LABEL_52;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
          v21 = "%{public}s called with null processor, no backtrace";
          goto LABEL_51;
        }

        if (v28)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null processor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
      }

LABEL_52:
      if (v18)
      {
        v31 = v18;
LABEL_59:
        free(v31);
        goto LABEL_60;
      }

      goto LABEL_60;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
    v22 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v43 = 0;
    v23 = v22;
    if (__nwlog_fault(v22, type, &v43))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type[0];
        if (!os_log_type_enabled(v24, type[0]))
        {
          goto LABEL_57;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
        v26 = "%{public}s called with null input_protocol";
LABEL_56:
        _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
        goto LABEL_57;
      }

      if (v43 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type[0];
        if (!os_log_type_enabled(v24, type[0]))
        {
          goto LABEL_57;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
        v26 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_56;
      }

      v29 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type[0];
      v30 = os_log_type_enabled(v24, type[0]);
      if (!v29)
      {
        if (!v30)
        {
          goto LABEL_57;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
        v26 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_56;
      }

      if (v30)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_plugin_metadata_process_frames";
        *&buf[12] = 2082;
        *&buf[14] = v29;
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v29);
    }

LABEL_57:
    if (v23)
    {
      v31 = v23;
      goto LABEL_59;
    }

LABEL_60:
    v11 = 0;
    goto LABEL_14;
  }

LABEL_16:
  while (1)
  {
    v32 = 0;
    v33 = &v32;
    nw_protocol_plugin_metadata_get_and_process_frames(a1, a2, a2[6], v38, &v38, &v37, &v36, &v35, &v34, *(a1 + 96), &v32);
    if (!v32)
    {
      break;
    }

    v14 = *(a1 + 24);
    *v14 = v32;
    v15 = v33;
    *(v32 + 40) = v14;
    *(a1 + 24) = v15;
    v32 = 0;
    v33 = &v32;
    v34 = 0;
  }

  v3 = *(a1 + 142) | 0x10;
  *(a1 + 142) = v3;
LABEL_19:
  if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if (v3)
  {
    return *(a1 + 140) != 2;
  }

  return 1;
}

void nw_protocol_common_disconnected(void *a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v51 = "nw_protocol_common_disconnected";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (!__nwlog_fault(v3, &type, &v48))
    {
      goto LABEL_58;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_58;
      }

      *buf = 136446210;
      v51 = "nw_protocol_common_disconnected";
      v9 = "%{public}s called with null protocol";
      goto LABEL_56;
    }

    if (v48 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v43 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (!v43)
        {
          goto LABEL_95;
        }

        *buf = 136446466;
        v51 = "nw_protocol_common_disconnected";
        v52 = 2082;
        v53 = backtrace_string;
        v44 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
        goto LABEL_94;
      }

      if (!v43)
      {
        goto LABEL_58;
      }

      *buf = 136446210;
      v51 = "nw_protocol_common_disconnected";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_58;
      }

      *buf = 136446210;
      v51 = "nw_protocol_common_disconnected";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_56:
    v31 = v7;
    v32 = v8;
LABEL_57:
    _os_log_impl(&dword_181A37000, v31, v32, v9, buf, 0xCu);
    goto LABEL_58;
  }

  if (a2)
  {
    v2 = a1;
    v3 = a1[6];
    if (v3)
    {
      v4 = *(v3 + 40);
      v5 = a1[6];
      if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v3 + 64)) != 0)
      {
        v14 = *(v5 + 88);
        v6 = 0;
        if (v14)
        {
          *(v5 + 88) = v14 + 1;
        }
      }

      else
      {
        v6 = 1;
      }

      v15 = a1[5];
      v16 = a1;
      if (v15 == &nw_protocol_ref_counted_handle || v15 == &nw_protocol_ref_counted_additional_handle && (v16 = a1[8]) != 0)
      {
        v19 = v16[11];
        if (v19)
        {
          v17 = 0;
          v16[11] = v19 + 1;
          v18 = *(v3 + 24);
          if (!v18)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v17 = 0;
          v18 = *(v3 + 24);
          if (!v18)
          {
            goto LABEL_63;
          }
        }
      }

      else
      {
        v17 = 1;
        v18 = *(v3 + 24);
        if (!v18)
        {
          goto LABEL_63;
        }
      }

      v20 = *(v18 + 48);
      if (v20)
      {
        v20(v3, a1);
        goto LABEL_31;
      }

LABEL_63:
      __nwlog_obj();
      v33 = *(v3 + 16);
      *buf = 136446722;
      v51 = "__nw_protocol_disconnected";
      if (!v33)
      {
        v33 = "invalid";
      }

      v52 = 2082;
      v53 = v33;
      v54 = 2048;
      v55 = v3;
      v34 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (!__nwlog_fault(v34, &type, &v48))
      {
        goto LABEL_110;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v36 = type;
        if (!os_log_type_enabled(v35, type))
        {
          goto LABEL_110;
        }

        v37 = *(v3 + 16);
        if (!v37)
        {
          v37 = "invalid";
        }

        *buf = 136446722;
        v51 = "__nw_protocol_disconnected";
        v52 = 2082;
        v53 = v37;
        v54 = 2048;
        v55 = v3;
        v38 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback";
      }

      else if (v48 == 1)
      {
        v39 = __nw_create_backtrace_string();
        v35 = __nwlog_obj();
        v36 = type;
        v40 = os_log_type_enabled(v35, type);
        if (v39)
        {
          if (v40)
          {
            v41 = *(v3 + 16);
            if (!v41)
            {
              v41 = "invalid";
            }

            *buf = 136446978;
            v51 = "__nw_protocol_disconnected";
            v52 = 2082;
            v53 = v41;
            v54 = 2048;
            v55 = v3;
            v56 = 2082;
            v57 = v39;
            _os_log_impl(&dword_181A37000, v35, v36, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v39);
          goto LABEL_110;
        }

        if (!v40)
        {
LABEL_110:
          if (v34)
          {
            free(v34);
          }

LABEL_31:
          if ((v17 & 1) == 0)
          {
            v21 = v2[5];
            if (v21 == &nw_protocol_ref_counted_handle || v21 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
            {
              v22 = v2[11];
              if (v22)
              {
                v23 = v22 - 1;
                v2[11] = v23;
                if (!v23)
                {
                  v24 = v2[8];
                  if (v24)
                  {
                    v2[8] = 0;
                    v24[2](v24);
                    _Block_release(v24);
                  }

                  if (v2[9])
                  {
                    v25 = v2[8];
                    if (v25)
                    {
                      _Block_release(v25);
                    }
                  }

                  free(v2);
                }
              }
            }
          }

          if ((v6 & 1) == 0)
          {
            v26 = *(v3 + 40);
            if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
            {
              v27 = *(v3 + 88);
              if (v27)
              {
                v28 = v27 - 1;
                *(v3 + 88) = v28;
                if (!v28)
                {
                  v29 = *(v3 + 64);
                  if (v29)
                  {
                    *(v3 + 64) = 0;
                    v29[2](v29);
                    _Block_release(v29);
                  }

                  if (*(v3 + 72))
                  {
                    v30 = *(v3 + 64);
                    if (v30)
                    {
                      _Block_release(v30);
                    }
                  }

                  goto LABEL_59;
                }
              }
            }
          }

          return;
        }

        v47 = *(v3 + 16);
        if (!v47)
        {
          v47 = "invalid";
        }

        *buf = 136446722;
        v51 = "__nw_protocol_disconnected";
        v52 = 2082;
        v53 = v47;
        v54 = 2048;
        v55 = v3;
        v38 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace";
      }

      else
      {
        v35 = __nwlog_obj();
        v36 = type;
        if (!os_log_type_enabled(v35, type))
        {
          goto LABEL_110;
        }

        v46 = *(v3 + 16);
        if (!v46)
        {
          v46 = "invalid";
        }

        *buf = 136446722;
        v51 = "__nw_protocol_disconnected";
        v52 = 2082;
        v53 = v46;
        v54 = 2048;
        v55 = v3;
        v38 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v35, v36, v38, buf, 0x20u);
      goto LABEL_110;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v51 = "nw_protocol_common_disconnected";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v48 = 0;
    if (__nwlog_fault(v3, &type, &v48))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_58;
        }

        *buf = 136446210;
        v51 = "nw_protocol_common_disconnected";
        v9 = "%{public}s disconnected requires a default input handler";
        goto LABEL_56;
      }

      if (v48 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_58;
        }

        *buf = 136446210;
        v51 = "nw_protocol_common_disconnected";
        v9 = "%{public}s disconnected requires a default input handler, backtrace limit exceeded";
        goto LABEL_56;
      }

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
          v51 = "nw_protocol_common_disconnected";
          v52 = 2082;
          v53 = v10;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s disconnected requires a default input handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v10);
        if (v3)
        {
          goto LABEL_59;
        }

        return;
      }

      if (v13)
      {
        *buf = 136446210;
        v51 = "nw_protocol_common_disconnected";
        v9 = "%{public}s disconnected requires a default input handler, no backtrace";
        v31 = v11;
        v32 = v12;
        goto LABEL_57;
      }
    }

LABEL_58:
    if (!v3)
    {
      return;
    }

    goto LABEL_59;
  }

  __nwlog_obj();
  *buf = 136446210;
  v51 = "nw_protocol_common_disconnected";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v48 = 0;
  if (!__nwlog_fault(v3, &type, &v48))
  {
    goto LABEL_58;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_58;
    }

    *buf = 136446210;
    v51 = "nw_protocol_common_disconnected";
    v9 = "%{public}s called with null other_protocol";
    goto LABEL_56;
  }

  if (v48 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_58;
    }

    *buf = 136446210;
    v51 = "nw_protocol_common_disconnected";
    v9 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    goto LABEL_56;
  }

  backtrace_string = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v45 = os_log_type_enabled(v7, type);
  if (!backtrace_string)
  {
    if (!v45)
    {
      goto LABEL_58;
    }

    *buf = 136446210;
    v51 = "nw_protocol_common_disconnected";
    v9 = "%{public}s called with null other_protocol, no backtrace";
    goto LABEL_56;
  }

  if (!v45)
  {
    goto LABEL_95;
  }

  *buf = 136446466;
  v51 = "nw_protocol_common_disconnected";
  v52 = 2082;
  v53 = backtrace_string;
  v44 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_94:
  _os_log_impl(&dword_181A37000, v7, v8, v44, buf, 0x16u);
LABEL_95:
  free(backtrace_string);
  if (v3)
  {
LABEL_59:
    free(v3);
  }
}

BOOL nw_http2_remove_from_protocol_table(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v22 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 360);
      *buf = 136447234;
      v29 = "nw_http2_remove_from_protocol_table";
      v30 = 2082;
      v31 = a1 + 380;
      v32 = 2080;
      v33 = " ";
      v34 = 1024;
      v35 = v23;
      v36 = 2048;
      v37 = a2;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for input handler %p", buf, 0x30u);
    }
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    node = nw_hash_table_get_node(v4, a2, 8);
    if (node)
    {
      if (nw_hash_table_remove_node(*(a1 + 152), node))
      {
        *(a2 + 56) = 0;
        if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v24 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v25 = *(a1 + 360);
            *buf = 136447234;
            v29 = "nw_http2_remove_from_protocol_table";
            v30 = 2082;
            v31 = a1 + 380;
            v32 = 2080;
            v33 = " ";
            v34 = 1024;
            v35 = v25;
            v36 = 2048;
            v37 = a2;
            _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> removed protocol %p from protocol based table", buf, 0x30u);
          }
        }

        return 1;
      }

      if ((*(a1 + 379) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v11 = *(a1 + 360);
        *buf = 136447234;
        v29 = "nw_http2_remove_from_protocol_table";
        v30 = 2082;
        v31 = a1 + 380;
        v32 = 2080;
        v33 = " ";
        v34 = 1024;
        v35 = v11;
        v36 = 2048;
        v37 = a2;
        v12 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v26 = 0;
        if (!__nwlog_fault(v12, &type, &v26))
        {
          goto LABEL_43;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v13 = gconnectionLogObj;
          v14 = type;
          if (!os_log_type_enabled(gconnectionLogObj, type))
          {
            goto LABEL_43;
          }

          v15 = *(a1 + 360);
          *buf = 136447234;
          v29 = "nw_http2_remove_from_protocol_table";
          v30 = 2082;
          v31 = a1 + 380;
          v32 = 2080;
          v33 = " ";
          v34 = 1024;
          v35 = v15;
          v36 = 2048;
          v37 = a2;
          v16 = "%{public}s %{public}s%s<i%u> failed to remove protocol node for protocol %p from table";
        }

        else if (v26 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v13 = gconnectionLogObj;
          v14 = type;
          v18 = os_log_type_enabled(gconnectionLogObj, type);
          if (backtrace_string)
          {
            if (v18)
            {
              v19 = *(a1 + 360);
              *buf = 136447490;
              v29 = "nw_http2_remove_from_protocol_table";
              v30 = 2082;
              v31 = a1 + 380;
              v32 = 2080;
              v33 = " ";
              v34 = 1024;
              v35 = v19;
              v36 = 2048;
              v37 = a2;
              v38 = 2082;
              v39 = backtrace_string;
              _os_log_impl(&dword_181A37000, v13, v14, "%{public}s %{public}s%s<i%u> failed to remove protocol node for protocol %p from table, dumping backtrace:%{public}s", buf, 0x3Au);
            }

            free(backtrace_string);
            goto LABEL_43;
          }

          if (!v18)
          {
LABEL_43:
            if (v12)
            {
              free(v12);
            }

            return 0;
          }

          v21 = *(a1 + 360);
          *buf = 136447234;
          v29 = "nw_http2_remove_from_protocol_table";
          v30 = 2082;
          v31 = a1 + 380;
          v32 = 2080;
          v33 = " ";
          v34 = 1024;
          v35 = v21;
          v36 = 2048;
          v37 = a2;
          v16 = "%{public}s %{public}s%s<i%u> failed to remove protocol node for protocol %p from table, no backtrace";
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v13 = gconnectionLogObj;
          v14 = type;
          if (!os_log_type_enabled(gconnectionLogObj, type))
          {
            goto LABEL_43;
          }

          v20 = *(a1 + 360);
          *buf = 136447234;
          v29 = "nw_http2_remove_from_protocol_table";
          v30 = 2082;
          v31 = a1 + 380;
          v32 = 2080;
          v33 = " ";
          v34 = 1024;
          v35 = v20;
          v36 = 2048;
          v37 = a2;
          v16 = "%{public}s %{public}s%s<i%u> failed to remove protocol node for protocol %p from table, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v13, v14, v16, buf, 0x30u);
        goto LABEL_43;
      }

      return 0;
    }

    if (*(a1 + 379))
    {
      return 0;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v10 = *(a1 + 360);
      *buf = 136447234;
      v29 = "nw_http2_remove_from_protocol_table";
      v30 = 2082;
      v31 = a1 + 380;
      v32 = 2080;
      v33 = " ";
      v34 = 1024;
      v35 = v10;
      v36 = 2048;
      v37 = a2;
      v9 = "%{public}s %{public}s%s<i%u> protocol %p is not present in id based table, cannot remove";
      goto LABEL_19;
    }
  }

  else
  {
    if (*(a1 + 379))
    {
      return 0;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v8 = *(a1 + 360);
      *buf = 136447234;
      v29 = "nw_http2_remove_from_protocol_table";
      v30 = 2082;
      v31 = a1 + 380;
      v32 = 2080;
      v33 = " ";
      v34 = 1024;
      v35 = v8;
      v36 = 2048;
      v37 = a2;
      v9 = "%{public}s %{public}s%s<i%u> protocol based table is NULL, cannot remove protocol %p";
LABEL_19:
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, v9, buf, 0x30u);
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_http_redirect_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZL46nw_protocol_http_redirect_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v15[3] = &__block_descriptor_tmp_68;
      v15[4] = handle;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = ___ZL46nw_protocol_http_redirect_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
      v13[3] = &__block_descriptor_tmp_69;
      v14 = a3;
      v13[4] = handle;
      return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v15, v13);
    }

    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_http_redirect_remove_input_handler";
    v5 = _os_log_send_and_compose_impl();
    v17 = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v5, &v17, &v16))
    {
      goto LABEL_32;
    }

    if (v17 == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = v17;
      if (os_log_type_enabled(v6, v17))
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_redirect_remove_input_handler";
        v8 = "%{public}s called with null http_redirect";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v16 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v17;
      if (os_log_type_enabled(v6, v17))
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_redirect_remove_input_handler";
        v8 = "%{public}s called with null http_redirect, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v17;
    v12 = os_log_type_enabled(v6, v17);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_redirect_remove_input_handler";
        v8 = "%{public}s called with null http_redirect, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http_redirect_remove_input_handler";
      v20 = 2082;
      v21 = backtrace_string;
      v11 = "%{public}s called with null http_redirect, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_http_redirect_remove_input_handler";
  v5 = _os_log_send_and_compose_impl();
  v17 = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v5, &v17, &v16))
  {
    goto LABEL_32;
  }

  if (v17 != OS_LOG_TYPE_FAULT)
  {
    if (v16 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v17;
      if (os_log_type_enabled(v6, v17))
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_redirect_remove_input_handler";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v17;
    v10 = os_log_type_enabled(v6, v17);
    if (!backtrace_string)
    {
      if (v10)
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_redirect_remove_input_handler";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http_redirect_remove_input_handler";
      v20 = 2082;
      v21 = backtrace_string;
      v11 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v6, v7, v11, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v6 = __nwlog_obj();
  v7 = v17;
  if (os_log_type_enabled(v6, v17))
  {
    *buf = 136446210;
    v19 = "nw_protocol_http_redirect_remove_input_handler";
    v8 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_32:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

void ___ZL46nw_protocol_http_sniffing_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(v2 + 232);
    if (v4)
    {
      _Block_release(v4);
      v3 = *(v2 + 240);
    }
  }

  *(v2 + 232) = 0;
  *(v2 + 240) = v3 | 1;
  v5 = *(v2 + 280);
  if (v5)
  {
    v6 = *(v2 + 272);
    if (v6)
    {
      _Block_release(v6);
      v5 = *(v2 + 280);
    }
  }

  *(v2 + 272) = 0;
  *(v2 + 280) = v5 | 1;
  v7 = *(a1 + 32);
  if ((*(v7 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v15 = __nwlog_obj();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    v7 = *(a1 + 32);
    if (v16)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_http_sniffing_remove_input_handler_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 114;
      *&buf[22] = 2080;
      v20 = " ";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sfinalizing pending input frames", buf, 0x20u);
      v7 = *(a1 + 32);
    }
  }

  if (gLogDatapath == 1)
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v8 = *(v7 + 328);
  if (v8)
  {
    *(v8 + 40) = &v17;
    v9 = *(v7 + 336);
    v17 = v8;
    v18 = v9;
    *(v7 + 328) = 0;
    *(v7 + 336) = v7 + 328;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v20 = &__block_descriptor_tmp_21_49595;
    v21 = 0;
    do
    {
      v10 = v17;
      if (!v17)
      {
        break;
      }

      v11 = *(v17 + 32);
      v12 = *(v17 + 40);
      v13 = (v11 + 40);
      if (!v11)
      {
        v13 = &v18;
      }

      *v13 = v12;
      *v12 = v11;
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }
}

void ___ZL46nw_protocol_http_redirect_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (gLogDatapath == 1)
  {
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136446210;
      v10 = "nw_protocol_plugin_metadata_teardown";
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s called", &v9, 0xCu);
    }
  }

  nw_protocol_plugin_metadata_reset((v2 + 200));
  *(v2 + 328) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 368);
  if (v4)
  {
    v5 = *(v3 + 360);
    if (v5)
    {
      _Block_release(v5);
      v4 = *(v3 + 368);
    }
  }

  *(v3 + 360) = 0;
  *(v3 + 368) = v4 | 1;
  v6 = *(v3 + 408);
  if (v6)
  {
    v7 = *(v3 + 400);
    if (v7)
    {
      _Block_release(v7);
      v6 = *(v3 + 408);
    }
  }

  *(v3 + 400) = 0;
  *(v3 + 408) = v6 | 1;
}

void ___ZL46nw_protocol_http_security_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (gLogDatapath == 1)
  {
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136446210;
      v10 = "nw_protocol_plugin_metadata_teardown";
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s called", &v9, 0xCu);
    }
  }

  nw_protocol_plugin_metadata_reset((v2 + 200));
  *(v2 + 328) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 368);
  if (v4)
  {
    v5 = *(v3 + 360);
    if (v5)
    {
      _Block_release(v5);
      v4 = *(v3 + 368);
    }
  }

  *(v3 + 360) = 0;
  *(v3 + 368) = v4 | 1;
  v6 = *(v3 + 408);
  if (v6)
  {
    v7 = *(v3 + 400);
    if (v7)
    {
      _Block_release(v7);
      v6 = *(v3 + 408);
    }
  }

  *(v3 + 400) = 0;
  *(v3 + 408) = v6 | 1;
}

uint64_t nw_protocol_http_security_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((handle[198] & 1) == 0 && gLogDatapath == 1)
      {
        v9 = a3;
        v10 = a2;
        v11 = a1;
        v12 = __nwlog_obj();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
        a2 = v10;
        a3 = v9;
        v14 = v13;
        a1 = v11;
        if (v14)
        {
          *buf = 136446722;
          v25 = "nw_protocol_http_security_remove_input_handler";
          v26 = 2082;
          v27 = handle + 114;
          v28 = 2080;
          v29 = " ";
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
          a1 = v11;
          a2 = v10;
          a3 = v9;
        }
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 0x40000000;
      v21[2] = ___ZL46nw_protocol_http_security_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v21[3] = &__block_descriptor_tmp_79;
      v21[4] = handle;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v19[2] = ___ZL46nw_protocol_http_security_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
      v19[3] = &__block_descriptor_tmp_80_29337;
      v20 = a3;
      v19[4] = handle;
      return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v21, v19);
    }

    __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_http_security_remove_input_handler";
    v5 = _os_log_send_and_compose_impl();
    v23 = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v5, &v23, &v22))
    {
      goto LABEL_36;
    }

    if (v23 == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = v23;
      if (os_log_type_enabled(v6, v23))
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_security_remove_input_handler";
        v8 = "%{public}s called with null http_security";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v22 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v23;
      if (os_log_type_enabled(v6, v23))
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_security_remove_input_handler";
        v8 = "%{public}s called with null http_security, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v23;
    v18 = os_log_type_enabled(v6, v23);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_security_remove_input_handler";
        v8 = "%{public}s called with null http_security, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "nw_protocol_http_security_remove_input_handler";
      v26 = 2082;
      v27 = backtrace_string;
      v17 = "%{public}s called with null http_security, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_protocol_http_security_remove_input_handler";
  v5 = _os_log_send_and_compose_impl();
  v23 = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v5, &v23, &v22))
  {
    goto LABEL_36;
  }

  if (v23 != OS_LOG_TYPE_FAULT)
  {
    if (v22 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v23;
      if (os_log_type_enabled(v6, v23))
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_security_remove_input_handler";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v23;
    v16 = os_log_type_enabled(v6, v23);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_security_remove_input_handler";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_http_security_remove_input_handler";
      v26 = 2082;
      v27 = backtrace_string;
      v17 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v6, v7, v17, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v6 = __nwlog_obj();
  v7 = v23;
  if (os_log_type_enabled(v6, v23))
  {
    *buf = 136446210;
    v25 = "nw_protocol_http_security_remove_input_handler";
    v8 = "%{public}s called with null protocol";
LABEL_35:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_36:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

void ___ZL46nw_protocol_http_encoding_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = (v2 + 504);
  if (gLogDatapath == 1)
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v4 = *v3;
  if (*v3)
  {
    *(v4 + 40) = &v21;
    v5 = *(v2 + 512);
    v21 = v4;
    v22 = v5;
    *(v2 + 504) = 0;
    *(v2 + 512) = v3;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v24 = &__block_descriptor_tmp_21_49595;
    v25 = 0;
    do
    {
      v6 = v21;
      if (!v21)
      {
        break;
      }

      v7 = *(v21 + 32);
      v8 = *(v21 + 40);
      v9 = (v7 + 40);
      if (!v7)
      {
        v9 = &v22;
      }

      *v9 = v8;
      *v8 = v7;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  v10 = *(a1 + 32);
  if ((*(v10 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v15 = __nwlog_obj();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    v10 = *(a1 + 32);
    if (v16)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_http_encoding_remove_input_handler_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v10 + 114;
      *&buf[22] = 2080;
      v24 = " ";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sremoving finalized_output_frames", buf, 0x20u);
      v10 = *(a1 + 32);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v18 = ___ZL46nw_protocol_http_encoding_remove_input_handlerP11nw_protocolS0_b_block_invoke_52;
  v19 = &__block_descriptor_tmp_53_35815;
  v20 = v10;
  v11 = *(v10 + 488);
  do
  {
    if (!v11)
    {
      break;
    }

    v12 = *(v11 + 32);
    v13 = v18(v17);
    v11 = v12;
  }

  while ((v13 & 1) != 0);
  nw_frame_cache_remove_all((*(a1 + 32) + 336));
}

uint64_t nw_protocol_http_encoding_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZL46nw_protocol_http_encoding_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v15[3] = &__block_descriptor_tmp_54_35801;
      v15[4] = handle;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = ___ZL46nw_protocol_http_encoding_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
      v13[3] = &__block_descriptor_tmp_55_35802;
      v14 = a3;
      v13[4] = handle;
      return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v15, v13);
    }

    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_http_encoding_remove_input_handler";
    v5 = _os_log_send_and_compose_impl();
    v17 = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v5, &v17, &v16))
    {
      goto LABEL_32;
    }

    if (v17 == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = v17;
      if (os_log_type_enabled(v6, v17))
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_encoding_remove_input_handler";
        v8 = "%{public}s called with null http_encoding";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v16 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v17;
      if (os_log_type_enabled(v6, v17))
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_encoding_remove_input_handler";
        v8 = "%{public}s called with null http_encoding, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v17;
    v12 = os_log_type_enabled(v6, v17);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_encoding_remove_input_handler";
        v8 = "%{public}s called with null http_encoding, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http_encoding_remove_input_handler";
      v20 = 2082;
      v21 = backtrace_string;
      v11 = "%{public}s called with null http_encoding, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_http_encoding_remove_input_handler";
  v5 = _os_log_send_and_compose_impl();
  v17 = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v5, &v17, &v16))
  {
    goto LABEL_32;
  }

  if (v17 != OS_LOG_TYPE_FAULT)
  {
    if (v16 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v17;
      if (os_log_type_enabled(v6, v17))
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_encoding_remove_input_handler";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v17;
    v10 = os_log_type_enabled(v6, v17);
    if (!backtrace_string)
    {
      if (v10)
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_encoding_remove_input_handler";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http_encoding_remove_input_handler";
      v20 = 2082;
      v21 = backtrace_string;
      v11 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v6, v7, v11, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v6 = __nwlog_obj();
  v7 = v17;
  if (os_log_type_enabled(v6, v17))
  {
    *buf = 136446210;
    v19 = "nw_protocol_http_encoding_remove_input_handler";
    v8 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_32:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

void ___ZL52nw_protocol_http_authentication_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (gLogDatapath == 1)
  {
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136446210;
      v10 = "nw_protocol_plugin_metadata_teardown";
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s called", &v9, 0xCu);
    }
  }

  nw_protocol_plugin_metadata_reset((v2 + 200));
  *(v2 + 328) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 368);
  if (v4)
  {
    v5 = *(v3 + 360);
    if (v5)
    {
      _Block_release(v5);
      v4 = *(v3 + 368);
    }
  }

  *(v3 + 360) = 0;
  *(v3 + 368) = v4 | 1;
  v6 = *(v3 + 408);
  if (v6)
  {
    v7 = *(v3 + 400);
    if (v7)
    {
      _Block_release(v7);
      v6 = *(v3 + 408);
    }
  }

  *(v3 + 400) = 0;
  *(v3 + 408) = v6 | 1;
}

uint64_t nw_protocol_http_retry_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((handle[198] & 1) == 0 && gLogDatapath == 1)
      {
        v9 = a3;
        v10 = a2;
        v11 = a1;
        v12 = __nwlog_obj();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
        a2 = v10;
        a3 = v9;
        v14 = v13;
        a1 = v11;
        if (v14)
        {
          *buf = 136446722;
          v25 = "nw_protocol_http_retry_remove_input_handler";
          v26 = 2082;
          v27 = handle + 114;
          v28 = 2080;
          v29 = " ";
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
          a1 = v11;
          a2 = v10;
          a3 = v9;
        }
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 0x40000000;
      v21[2] = ___ZL43nw_protocol_http_retry_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v21[3] = &__block_descriptor_tmp_35_44651;
      v21[4] = handle;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v19[2] = ___ZL43nw_protocol_http_retry_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
      v19[3] = &__block_descriptor_tmp_36_44652;
      v20 = a3;
      v19[4] = handle;
      return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v21, v19);
    }

    __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_http_retry_remove_input_handler";
    v5 = _os_log_send_and_compose_impl();
    v23 = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v5, &v23, &v22))
    {
      goto LABEL_36;
    }

    if (v23 == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = v23;
      if (os_log_type_enabled(v6, v23))
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_retry_remove_input_handler";
        v8 = "%{public}s called with null http_retry";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v22 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v23;
      if (os_log_type_enabled(v6, v23))
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_retry_remove_input_handler";
        v8 = "%{public}s called with null http_retry, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v23;
    v18 = os_log_type_enabled(v6, v23);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_retry_remove_input_handler";
        v8 = "%{public}s called with null http_retry, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "nw_protocol_http_retry_remove_input_handler";
      v26 = 2082;
      v27 = backtrace_string;
      v17 = "%{public}s called with null http_retry, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_protocol_http_retry_remove_input_handler";
  v5 = _os_log_send_and_compose_impl();
  v23 = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v5, &v23, &v22))
  {
    goto LABEL_36;
  }

  if (v23 != OS_LOG_TYPE_FAULT)
  {
    if (v22 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v23;
      if (os_log_type_enabled(v6, v23))
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_retry_remove_input_handler";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v23;
    v16 = os_log_type_enabled(v6, v23);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_retry_remove_input_handler";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_http_retry_remove_input_handler";
      v26 = 2082;
      v27 = backtrace_string;
      v17 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v6, v7, v17, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v6 = __nwlog_obj();
  v7 = v23;
  if (os_log_type_enabled(v6, v23))
  {
    *buf = 136446210;
    v25 = "nw_protocol_http_retry_remove_input_handler";
    v8 = "%{public}s called with null protocol";
LABEL_35:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_36:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

void ___ZL43nw_protocol_http_retry_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (gLogDatapath == 1)
  {
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136446210;
      v10 = "nw_protocol_plugin_metadata_teardown";
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s called", &v9, 0xCu);
    }
  }

  nw_protocol_plugin_metadata_reset((v2 + 200));
  *(v2 + 328) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 384);
  if (v4)
  {
    v5 = *(v3 + 376);
    if (v5)
    {
      _Block_release(v5);
      v4 = *(v3 + 384);
    }
  }

  *(v3 + 376) = 0;
  *(v3 + 384) = v4 | 1;
  v6 = *(v3 + 424);
  if (v6)
  {
    v7 = *(v3 + 416);
    if (v7)
    {
      _Block_release(v7);
      v6 = *(v3 + 424);
    }
  }

  *(v3 + 416) = 0;
  *(v3 + 424) = v6 | 1;
}

uint64_t nw_protocol_http_cookie_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_http_cookie_remove_input_handler";
    v5 = _os_log_send_and_compose_impl();
    v24 = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v5, &v24, &v23))
    {
      goto LABEL_49;
    }

    if (v24 == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = v24;
      if (!os_log_type_enabled(v6, v24))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v26 = "nw_protocol_http_cookie_remove_input_handler";
      v8 = "%{public}s called with null protocol";
LABEL_48:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      goto LABEL_49;
    }

    if (v23 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v24;
      if (os_log_type_enabled(v6, v24))
      {
        *buf = 136446210;
        v26 = "nw_protocol_http_cookie_remove_input_handler";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v24;
    v16 = os_log_type_enabled(v6, v24);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v26 = "nw_protocol_http_cookie_remove_input_handler";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (!v16)
    {
      goto LABEL_35;
    }

    *buf = 136446466;
    v26 = "nw_protocol_http_cookie_remove_input_handler";
    v27 = 2082;
    v28 = backtrace_string;
    v17 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_34:
    _os_log_impl(&dword_181A37000, v6, v7, v17, buf, 0x16u);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_http_cookie_remove_input_handler";
    v5 = _os_log_send_and_compose_impl();
    v24 = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v5, &v24, &v23))
    {
      goto LABEL_49;
    }

    if (v24 == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = v24;
      if (!os_log_type_enabled(v6, v24))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v26 = "nw_protocol_http_cookie_remove_input_handler";
      v8 = "%{public}s called with null http_cookie";
      goto LABEL_48;
    }

    if (v23 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v24;
      if (os_log_type_enabled(v6, v24))
      {
        *buf = 136446210;
        v26 = "nw_protocol_http_cookie_remove_input_handler";
        v8 = "%{public}s called with null http_cookie, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v24;
    v18 = os_log_type_enabled(v6, v24);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v26 = "nw_protocol_http_cookie_remove_input_handler";
        v8 = "%{public}s called with null http_cookie, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (!v18)
    {
      goto LABEL_35;
    }

    *buf = 136446466;
    v26 = "nw_protocol_http_cookie_remove_input_handler";
    v27 = 2082;
    v28 = backtrace_string;
    v17 = "%{public}s called with null http_cookie, dumping backtrace:%{public}s";
    goto LABEL_34;
  }

  if (a2)
  {
    if ((handle[198] & 1) == 0 && gLogDatapath == 1)
    {
      v9 = a3;
      v10 = a2;
      v11 = a1;
      v12 = __nwlog_obj();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      a2 = v10;
      a3 = v9;
      v14 = v13;
      a1 = v11;
      if (v14)
      {
        *buf = 136446722;
        v26 = "nw_protocol_http_cookie_remove_input_handler";
        v27 = 2082;
        v28 = handle + 114;
        v29 = 2080;
        v30 = " ";
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
        a1 = v11;
        a2 = v10;
        a3 = v9;
      }
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v22[2] = ___ZL44nw_protocol_http_cookie_remove_input_handlerP11nw_protocolS0_b_block_invoke;
    v22[3] = &__block_descriptor_tmp_29;
    v22[4] = handle;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = ___ZL44nw_protocol_http_cookie_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
    v20[3] = &__block_descriptor_tmp_30_16449;
    v21 = a3;
    v20[4] = a1;
    v20[5] = handle;
    return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v22, v20);
  }

  __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_protocol_http_cookie_remove_input_handler";
  v5 = _os_log_send_and_compose_impl();
  v24 = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v5, &v24, &v23))
  {
    goto LABEL_49;
  }

  if (v24 != OS_LOG_TYPE_FAULT)
  {
    if (v23 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v24;
      if (os_log_type_enabled(v6, v24))
      {
        *buf = 136446210;
        v26 = "nw_protocol_http_cookie_remove_input_handler";
        v8 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v24;
    v19 = os_log_type_enabled(v6, v24);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v26 = "nw_protocol_http_cookie_remove_input_handler";
        v8 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (v19)
    {
      *buf = 136446466;
      v26 = "nw_protocol_http_cookie_remove_input_handler";
      v27 = 2082;
      v28 = backtrace_string;
      v17 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_34;
    }

LABEL_35:
    free(backtrace_string);
    goto LABEL_49;
  }

  v6 = __nwlog_obj();
  v7 = v24;
  if (os_log_type_enabled(v6, v24))
  {
    *buf = 136446210;
    v26 = "nw_protocol_http_cookie_remove_input_handler";
    v8 = "%{public}s called with null input_protocol";
    goto LABEL_48;
  }

LABEL_49:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

void ___ZL44nw_protocol_http_cookie_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (gLogDatapath == 1)
  {
    v2 = __nwlog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = 136446210;
      v4 = "nw_protocol_plugin_metadata_teardown";
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s called", &v3, 0xCu);
    }
  }

  nw_protocol_plugin_metadata_reset((v1 + 200));
  *(v1 + 328) = 0;
}

uint64_t nw_protocol_http_connection_state_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_http_connection_state_remove_input_handler";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v5, &type, &v22))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v25 = "nw_protocol_http_connection_state_remove_input_handler";
      v8 = "%{public}s called with null protocol";
LABEL_48:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      goto LABEL_49;
    }

    if (v22 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_connection_state_remove_input_handler";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v16 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_connection_state_remove_input_handler";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (!v16)
    {
      goto LABEL_35;
    }

    *buf = 136446466;
    v25 = "nw_protocol_http_connection_state_remove_input_handler";
    v26 = 2082;
    v27 = backtrace_string;
    v17 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_34:
    _os_log_impl(&dword_181A37000, v6, v7, v17, buf, 0x16u);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_http_connection_state_remove_input_handler";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v5, &type, &v22))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v25 = "nw_protocol_http_connection_state_remove_input_handler";
      v8 = "%{public}s called with null http_connection_state";
      goto LABEL_48;
    }

    if (v22 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_connection_state_remove_input_handler";
        v8 = "%{public}s called with null http_connection_state, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v18 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_connection_state_remove_input_handler";
        v8 = "%{public}s called with null http_connection_state, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (!v18)
    {
      goto LABEL_35;
    }

    *buf = 136446466;
    v25 = "nw_protocol_http_connection_state_remove_input_handler";
    v26 = 2082;
    v27 = backtrace_string;
    v17 = "%{public}s called with null http_connection_state, dumping backtrace:%{public}s";
    goto LABEL_34;
  }

  if (a2)
  {
    if ((handle[198] & 1) == 0 && gLogDatapath == 1)
    {
      v9 = a3;
      v10 = a2;
      v11 = a1;
      v12 = __nwlog_obj();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      a2 = v10;
      a3 = v9;
      v14 = v13;
      a1 = v11;
      if (v14)
      {
        *buf = 136446722;
        v25 = "nw_protocol_http_connection_state_remove_input_handler";
        v26 = 2082;
        v27 = handle + 114;
        v28 = 2080;
        v29 = " ";
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
        a1 = v11;
        a2 = v10;
        a3 = v9;
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = ___ZL54nw_protocol_http_connection_state_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
    v20[3] = &__block_descriptor_tmp_28_74035;
    v21 = a3;
    v20[4] = a1;
    v20[5] = handle;
    return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, &__block_literal_global_27_74036, v20);
  }

  __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_protocol_http_connection_state_remove_input_handler";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v5, &type, &v22))
  {
    goto LABEL_49;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v22 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_connection_state_remove_input_handler";
        v8 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v19 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v25 = "nw_protocol_http_connection_state_remove_input_handler";
        v8 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (v19)
    {
      *buf = 136446466;
      v25 = "nw_protocol_http_connection_state_remove_input_handler";
      v26 = 2082;
      v27 = backtrace_string;
      v17 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_34;
    }

LABEL_35:
    free(backtrace_string);
    goto LABEL_49;
  }

  v6 = __nwlog_obj();
  v7 = type;
  if (os_log_type_enabled(v6, type))
  {
    *buf = 136446210;
    v25 = "nw_protocol_http_connection_state_remove_input_handler";
    v8 = "%{public}s called with null input_protocol";
    goto LABEL_48;
  }

LABEL_49:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

BOOL nw_protocol_http2_remove_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v118 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v107 = "nw_protocol_http2_remove_input_handler";
    v74 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v104 = 0;
    if (!__nwlog_fault(v74, &type, &v104))
    {
      goto LABEL_208;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (!os_log_type_enabled(v75, type))
      {
        goto LABEL_208;
      }

      *buf = 136446210;
      v107 = "nw_protocol_http2_remove_input_handler";
      v77 = "%{public}s called with null protocol";
LABEL_207:
      _os_log_impl(&dword_181A37000, v75, v76, v77, buf, 0xCu);
      goto LABEL_208;
    }

    if (v104 != 1)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (os_log_type_enabled(v75, type))
      {
        *buf = 136446210;
        v107 = "nw_protocol_http2_remove_input_handler";
        v77 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_207;
      }

      goto LABEL_208;
    }

    backtrace_string = __nw_create_backtrace_string();
    v75 = __nwlog_obj();
    v76 = type;
    v87 = os_log_type_enabled(v75, type);
    if (!backtrace_string)
    {
      if (v87)
      {
        *buf = 136446210;
        v107 = "nw_protocol_http2_remove_input_handler";
        v77 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_207;
      }

      goto LABEL_208;
    }

    if (!v87)
    {
      goto LABEL_164;
    }

    *buf = 136446466;
    v107 = "nw_protocol_http2_remove_input_handler";
    v108 = 2082;
    v109 = backtrace_string;
    v88 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_163:
    _os_log_impl(&dword_181A37000, v75, v76, v88, buf, 0x16u);
    goto LABEL_164;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v107 = "nw_protocol_http2_remove_input_handler";
    v74 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v104 = 0;
    if (!__nwlog_fault(v74, &type, &v104))
    {
      goto LABEL_208;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (!os_log_type_enabled(v75, type))
      {
        goto LABEL_208;
      }

      *buf = 136446210;
      v107 = "nw_protocol_http2_remove_input_handler";
      v77 = "%{public}s called with null http2";
      goto LABEL_207;
    }

    if (v104 != 1)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (os_log_type_enabled(v75, type))
      {
        *buf = 136446210;
        v107 = "nw_protocol_http2_remove_input_handler";
        v77 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_207;
      }

      goto LABEL_208;
    }

    backtrace_string = __nw_create_backtrace_string();
    v75 = __nwlog_obj();
    v76 = type;
    v89 = os_log_type_enabled(v75, type);
    if (!backtrace_string)
    {
      if (v89)
      {
        *buf = 136446210;
        v107 = "nw_protocol_http2_remove_input_handler";
        v77 = "%{public}s called with null http2, no backtrace";
        goto LABEL_207;
      }

      goto LABEL_208;
    }

    if (!v89)
    {
      goto LABEL_164;
    }

    *buf = 136446466;
    v107 = "nw_protocol_http2_remove_input_handler";
    v108 = 2082;
    v109 = backtrace_string;
    v88 = "%{public}s called with null http2, dumping backtrace:%{public}s";
    goto LABEL_163;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v107 = "nw_protocol_http2_remove_input_handler";
    v74 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v104 = 0;
    if (!__nwlog_fault(v74, &type, &v104))
    {
      goto LABEL_208;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (os_log_type_enabled(v75, type))
      {
        *buf = 136446210;
        v107 = "nw_protocol_http2_remove_input_handler";
        v77 = "%{public}s called with null input_protocol";
        goto LABEL_207;
      }

LABEL_208:
      if (!v74)
      {
        return 0;
      }

      v73 = v74;
      goto LABEL_120;
    }

    if (v104 != 1)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (os_log_type_enabled(v75, type))
      {
        *buf = 136446210;
        v107 = "nw_protocol_http2_remove_input_handler";
        v77 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_207;
      }

      goto LABEL_208;
    }

    backtrace_string = __nw_create_backtrace_string();
    v75 = __nwlog_obj();
    v76 = type;
    v90 = os_log_type_enabled(v75, type);
    if (!backtrace_string)
    {
      if (v90)
      {
        *buf = 136446210;
        v107 = "nw_protocol_http2_remove_input_handler";
        v77 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_207;
      }

      goto LABEL_208;
    }

    if (v90)
    {
      *buf = 136446466;
      v107 = "nw_protocol_http2_remove_input_handler";
      v108 = 2082;
      v109 = backtrace_string;
      v88 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_163;
    }

LABEL_164:
    free(backtrace_string);
    goto LABEL_208;
  }

  v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v82 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v83 = *(handle + 90);
      *buf = 136447234;
      v107 = "nw_protocol_http2_remove_input_handler";
      v108 = 2082;
      v109 = handle + 380;
      v110 = 2080;
      v111 = " ";
      v112 = 1024;
      v113 = v83;
      v114 = 2048;
      *v115 = a2;
      _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called with input_protocol %p", buf, 0x30u);
    }
  }

  v6 = a1->handle;
  if (!v6)
  {
    __nwlog_obj();
    *buf = 136446210;
    v107 = "nw_http2_remove_input_handler";
    v78 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v104 = 0;
    if (!__nwlog_fault(v78, &type, &v104))
    {
      goto LABEL_215;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v79 = __nwlog_obj();
      v80 = type;
      if (!os_log_type_enabled(v79, type))
      {
        goto LABEL_215;
      }

      *buf = 136446210;
      v107 = "nw_http2_remove_input_handler";
      v81 = "%{public}s called with null http2";
      goto LABEL_214;
    }

    if (v104 != 1)
    {
      v79 = __nwlog_obj();
      v80 = type;
      if (!os_log_type_enabled(v79, type))
      {
        goto LABEL_215;
      }

      *buf = 136446210;
      v107 = "nw_http2_remove_input_handler";
      v81 = "%{public}s called with null http2, backtrace limit exceeded";
      goto LABEL_214;
    }

    v91 = __nw_create_backtrace_string();
    v79 = __nwlog_obj();
    v80 = type;
    v92 = os_log_type_enabled(v79, type);
    if (!v91)
    {
      if (!v92)
      {
        goto LABEL_215;
      }

      *buf = 136446210;
      v107 = "nw_http2_remove_input_handler";
      v81 = "%{public}s called with null http2, no backtrace";
      goto LABEL_214;
    }

    if (v92)
    {
      *buf = 136446466;
      v107 = "nw_http2_remove_input_handler";
      v108 = 2082;
      v109 = v91;
      _os_log_impl(&dword_181A37000, v79, v80, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v91);
LABEL_215:
    if (!v78)
    {
      goto LABEL_20;
    }

    goto LABEL_216;
  }

  if (!*(handle + 19))
  {
    __nwlog_obj();
    *buf = 136446210;
    v107 = "nw_http2_remove_input_handler";
    v78 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v104 = 0;
    if (!__nwlog_fault(v78, &type, &v104))
    {
      goto LABEL_215;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v79 = __nwlog_obj();
      v80 = type;
      if (!os_log_type_enabled(v79, type))
      {
        goto LABEL_215;
      }

      *buf = 136446210;
      v107 = "nw_http2_remove_input_handler";
      v81 = "%{public}s called with null table";
      goto LABEL_214;
    }

    if (v104 != 1)
    {
      v79 = __nwlog_obj();
      v80 = type;
      if (!os_log_type_enabled(v79, type))
      {
        goto LABEL_215;
      }

      *buf = 136446210;
      v107 = "nw_http2_remove_input_handler";
      v81 = "%{public}s called with null table, backtrace limit exceeded";
      goto LABEL_214;
    }

    v93 = __nw_create_backtrace_string();
    v79 = __nwlog_obj();
    v80 = type;
    v94 = os_log_type_enabled(v79, type);
    if (v93)
    {
      if (v94)
      {
        *buf = 136446466;
        v107 = "nw_http2_remove_input_handler";
        v108 = 2082;
        v109 = v93;
        _os_log_impl(&dword_181A37000, v79, v80, "%{public}s called with null table, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v93);
      if (!v78)
      {
        goto LABEL_20;
      }

LABEL_216:
      free(v78);
      goto LABEL_20;
    }

    if (v94)
    {
      *buf = 136446210;
      v107 = "nw_http2_remove_input_handler";
      v81 = "%{public}s called with null table, no backtrace";
LABEL_214:
      _os_log_impl(&dword_181A37000, v79, v80, v81, buf, 0xCu);
      goto LABEL_215;
    }

    goto LABEL_215;
  }

  if ((v6[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v84 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v85 = *(v6 + 90);
      *buf = 136446978;
      v107 = "nw_http2_remove_input_handler";
      v108 = 2082;
      v109 = v6 + 380;
      v110 = 2080;
      v111 = " ";
      v112 = 1024;
      v113 = v85;
      _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  output_handler_context = a2->output_handler_context;
  if (output_handler_context)
  {
    v8 = output_handler_context[4];
    if (v8)
    {
      nw_http_transaction_metadata_mark_end(*(v8 + 96));
      v9 = *(v8 + 188);
      *(v8 + 188) = v9 & 0xFFFB;
      if ((v9 & 1) != 0 || *(v8 + 176) != -1)
      {
        nw_http2_stream_close(v6, v8);
        goto LABEL_36;
      }

      if ((*(v8 + 190) & 0x10) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v21 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v23 = *(v8 + 176);
          v22 = *(v8 + 180);
          *buf = 136447234;
          v107 = "nw_http2_remove_input_handler";
          v108 = 2082;
          v109 = (v8 + 191);
          v110 = 2080;
          v111 = " ";
          v112 = 1024;
          v113 = v22;
          v114 = 1024;
          *v115 = v23;
          v17 = "%{public}s %{public}s%s<i%u:s%d> not closing already closed stream";
          v18 = v21;
          v19 = OS_LOG_TYPE_DEBUG;
          v20 = 44;
          goto LABEL_35;
        }
      }
    }

    else if ((v6[379] & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v15 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        v16 = *(v6 + 90);
        *buf = 136446978;
        v107 = "nw_http2_remove_input_handler";
        v108 = 2082;
        v109 = v6 + 380;
        v110 = 2080;
        v111 = " ";
        v112 = 1024;
        v113 = v16;
        v17 = "%{public}s %{public}s%s<i%u> stream not found as extra";
        v18 = v15;
        v19 = OS_LOG_TYPE_ERROR;
        v20 = 38;
LABEL_35:
        _os_log_impl(&dword_181A37000, v18, v19, v17, buf, v20);
      }
    }

LABEL_36:
    if (nw_http2_remove_from_protocol_table(v6, a2))
    {
      nw_protocol_set_output_handler(a2, 0);
      if (!v8)
      {
        if (v6[379])
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (!v8)
      {
        if ((v6[379] & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v95 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            v96 = *(v6 + 90);
            *buf = 136447234;
            v107 = "nw_http2_remove_input_handler";
            v108 = 2082;
            v109 = v6 + 380;
            v110 = 2080;
            v111 = " ";
            v112 = 1024;
            v113 = v96;
            v114 = 2048;
            *v115 = a2;
            _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> unable to remove protocol %p from protocol table", buf, 0x30u);
          }
        }

        nw_protocol_set_output_handler(a2, 0);
        if (v6[379])
        {
LABEL_63:
          v44 = *(handle + 19);
          if (v44)
          {
            v45 = handle + 377;
            if ((*(handle + 377) & 0xC) == 0 && a1->default_input_handler == a2)
            {
              if ((handle[379] & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v46 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                {
                  v47 = *(handle + 90);
                  *buf = 136446978;
                  v107 = "nw_protocol_http2_remove_input_handler";
                  v108 = 2082;
                  v109 = handle + 380;
                  v110 = 2080;
                  v111 = " ";
                  v112 = 1024;
                  v113 = v47;
                  _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> first input handler bailed, closing", buf, 0x26u);
                }
              }

              *v45 |= 8u;
              nw_protocol_remove_instance(a1);
              nw_protocol_http2_notify(a1, a1, 0x16u, 0, 0);
              v44 = *(handle + 19);
            }

            v48 = nw_hash_table_count(v44, v24);
            if (v48)
            {
              if ((handle[379] & 1) == 0 && BYTE1(v5[82].isa) == 1)
              {
                v97 = v48;
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v98 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                {
                  v99 = *(handle + 90);
                  *buf = 136447234;
                  v107 = "nw_protocol_http2_remove_input_handler";
                  v108 = 2082;
                  v109 = handle + 380;
                  v110 = 2080;
                  v111 = " ";
                  v112 = 1024;
                  v113 = v99;
                  v114 = 1024;
                  *v115 = v97;
                  _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> not destroying, still have %u input handlers", buf, 0x2Cu);
                }
              }

              if (a1->default_input_handler == a2)
              {
                nw_protocol_set_input_handler(a1, 0);
                v49 = *(handle + 19);
                v102[0] = MEMORY[0x1E69E9820];
                v102[1] = 0x40000000;
                v102[2] = ___ZL38nw_protocol_http2_remove_input_handlerP11nw_protocolS0_b_block_invoke_64;
                v102[3] = &__block_descriptor_tmp_65_88693;
                v102[4] = a1;
                v102[5] = handle;
                nw_hash_table_apply(v49, v102);
              }
            }

            else
            {
              if ((handle[379] & 1) == 0 && BYTE1(v5[82].isa) == 1)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v100 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                {
                  v101 = *(handle + 90);
                  *buf = 136446978;
                  v107 = "nw_protocol_http2_remove_input_handler";
                  v108 = 2082;
                  v109 = handle + 380;
                  v110 = 2080;
                  v111 = " ";
                  v112 = 1024;
                  v113 = v101;
                  _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> no more input handlers, scheduling destroy", buf, 0x26u);
                }
              }

              nw_protocol_set_input_handler(a1, 0);
              nw_frame_cache_remove_all(handle + 25);
              v57 = *(handle + 11);
              if (v57)
              {
                nw_queue_cancel_source(v57, v56);
              }

              v103[0] = MEMORY[0x1E69E9820];
              v103[1] = 0x40000000;
              v103[2] = ___ZL38nw_protocol_http2_remove_input_handlerP11nw_protocolS0_b_block_invoke;
              v103[3] = &__block_descriptor_tmp_63_88690;
              v103[4] = a1;
              *(handle + 11) = nw_queue_context_create_source(0, 2, 3, 0, v103, 0);
              v58 = *(handle + 10);
              if (nw_protocol_http2_accept(a1, v59, *(handle + 13)))
              {
                if (nw_context_get_channel_flow_count(*(handle + 16)) <= 0x19F)
                {
                  v60 = v58;
                }

                else
                {
                  v60 = 1000;
                }
              }

              else
              {
                if ((handle[379] & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v64 = gconnectionLogObj;
                  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
                  {
                    v65 = *(handle + 90);
                    *buf = 136446978;
                    v107 = "nw_protocol_http2_remove_input_handler";
                    v108 = 2082;
                    v109 = handle + 380;
                    v110 = 2080;
                    v111 = " ";
                    v112 = 1024;
                    v113 = v65;
                    _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> cannot accept input handlers, destroying immediately", buf, 0x26u);
                  }
                }

                v60 = 0;
              }

              v66 = *(handle + 11);
              v67 = dispatch_time(0x8000000000000000, 1000000 * v60);
              nw_queue_set_timer_values(v66, v67, 0xFFFFFFFFFFFFFFFFLL, 1000 * v60);
              nw_queue_activate_source(*(handle + 11), v68);
              v70 = *(handle + 42);
              if (v70)
              {
                nw_queue_cancel_source(v70, v69);
                *(handle + 42) = 0;
              }

              *v45 &= ~0x8000u;
            }

            return 1;
          }

          if (handle[379])
          {
            return 0;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v50 = *(handle + 90);
          *buf = 136447234;
          v107 = "nw_protocol_http2_remove_input_handler";
          v108 = 2082;
          v109 = handle + 380;
          v110 = 2080;
          v111 = " ";
          v112 = 1024;
          v113 = v50;
          v114 = 2048;
          *v115 = a2;
          v51 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v104 = 0;
          if (__nwlog_fault(v51, &type, &v104))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v52 = gconnectionLogObj;
              v53 = type;
              if (os_log_type_enabled(gconnectionLogObj, type))
              {
                v54 = *(handle + 90);
                *buf = 136447234;
                v107 = "nw_protocol_http2_remove_input_handler";
                v108 = 2082;
                v109 = handle + 380;
                v110 = 2080;
                v111 = " ";
                v112 = 1024;
                v113 = v54;
                v114 = 2048;
                *v115 = a2;
                v55 = "%{public}s %{public}s%s<i%u> http2_streams_protocol NULL when removing input handler %p";
LABEL_117:
                _os_log_impl(&dword_181A37000, v52, v53, v55, buf, 0x30u);
              }
            }

            else if (v104 == 1)
            {
              v61 = __nw_create_backtrace_string();
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v52 = gconnectionLogObj;
              v53 = type;
              v62 = os_log_type_enabled(gconnectionLogObj, type);
              if (!v61)
              {
                if (!v62)
                {
                  goto LABEL_118;
                }

                v72 = *(handle + 90);
                *buf = 136447234;
                v107 = "nw_protocol_http2_remove_input_handler";
                v108 = 2082;
                v109 = handle + 380;
                v110 = 2080;
                v111 = " ";
                v112 = 1024;
                v113 = v72;
                v114 = 2048;
                *v115 = a2;
                v55 = "%{public}s %{public}s%s<i%u> http2_streams_protocol NULL when removing input handler %p, no backtrace";
                goto LABEL_117;
              }

              if (v62)
              {
                v63 = *(handle + 90);
                *buf = 136447490;
                v107 = "nw_protocol_http2_remove_input_handler";
                v108 = 2082;
                v109 = handle + 380;
                v110 = 2080;
                v111 = " ";
                v112 = 1024;
                v113 = v63;
                v114 = 2048;
                *v115 = a2;
                *&v115[8] = 2082;
                *&v115[10] = v61;
                _os_log_impl(&dword_181A37000, v52, v53, "%{public}s %{public}s%s<i%u> http2_streams_protocol NULL when removing input handler %p, dumping backtrace:%{public}s", buf, 0x3Au);
              }

              free(v61);
            }

            else
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v52 = gconnectionLogObj;
              v53 = type;
              if (os_log_type_enabled(gconnectionLogObj, type))
              {
                v71 = *(handle + 90);
                *buf = 136447234;
                v107 = "nw_protocol_http2_remove_input_handler";
                v108 = 2082;
                v109 = handle + 380;
                v110 = 2080;
                v111 = " ";
                v112 = 1024;
                v113 = v71;
                v114 = 2048;
                *v115 = a2;
                v55 = "%{public}s %{public}s%s<i%u> http2_streams_protocol NULL when removing input handler %p, backtrace limit exceeded";
                goto LABEL_117;
              }
            }
          }

LABEL_118:
          if (v51)
          {
            v73 = v51;
LABEL_120:
            free(v73);
          }

          return 0;
        }

LABEL_39:
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v25 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(v6 + 90);
          v27 = nw_hash_table_count(*(v6 + 19), v24);
          *buf = 136447490;
          v107 = "nw_http2_remove_input_handler";
          v108 = 2082;
          v109 = v6 + 380;
          v110 = 2080;
          v111 = " ";
          v112 = 1024;
          v113 = v26;
          v114 = 2048;
          *v115 = a2;
          *&v115[8] = 1024;
          *&v115[10] = v27;
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> removed input handler %p, now have %u input handlers", buf, 0x36u);
        }

        goto LABEL_63;
      }

      if ((*(v8 + 190) & 0x10) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v28 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          v30 = *(v8 + 176);
          v29 = *(v8 + 180);
          *buf = 136447490;
          v107 = "nw_http2_remove_input_handler";
          v108 = 2082;
          v109 = (v8 + 191);
          v110 = 2080;
          v111 = " ";
          v112 = 1024;
          v113 = v29;
          v114 = 1024;
          *v115 = v30;
          *&v115[4] = 2048;
          *&v115[6] = a2;
          _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%d> unable to remove protocol %p from protocol table", buf, 0x36u);
        }
      }

      nw_protocol_set_output_handler(a2, 0);
    }

    if (*(v8 + 191))
    {
      if ((*(v8 + 190) & 0x10) != 0)
      {
        goto LABEL_62;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v31 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_62;
      }

      v33 = *(v8 + 176);
      v34 = *(v8 + 180);
      v35 = nw_hash_table_count(*(v6 + 19), v32);
      *buf = 136448002;
      v107 = "nw_http2_remove_input_handler";
      v108 = 2082;
      v109 = (v8 + 191);
      v110 = 2080;
      v111 = " ";
      v112 = 1024;
      v113 = v34;
      v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      v114 = 1024;
      *v115 = v33;
      *&v115[4] = 2048;
      *&v115[6] = a2;
      *&v115[14] = 2080;
      *&v115[16] = v8 + 191;
      v116 = 1024;
      v117 = v35;
      v36 = "%{public}s %{public}s%s<i%u:s%d> removed input handler %p, originally from %s, now have %u input handlers";
      v37 = v31;
      v38 = 70;
    }

    else
    {
      if ((*(v8 + 190) & 0x10) != 0)
      {
        goto LABEL_62;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v39 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_62;
      }

      v42 = *(v8 + 176);
      v41 = *(v8 + 180);
      v43 = nw_hash_table_count(*(v6 + 19), v40);
      *buf = 136447746;
      v107 = "nw_http2_remove_input_handler";
      v108 = 2082;
      v109 = (v8 + 191);
      v110 = 2080;
      v111 = " ";
      v112 = 1024;
      v113 = v41;
      v114 = 1024;
      *v115 = v42;
      v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
      *&v115[4] = 2048;
      *&v115[6] = a2;
      *&v115[14] = 1024;
      *&v115[16] = v43;
      v36 = "%{public}s %{public}s%s<i%u:s%d> removed input handler %p, now have %u input handlers";
      v37 = v39;
      v38 = 60;
    }

    _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, v36, buf, v38);
LABEL_62:
    nw_http2_stream_destroy(v8);
    goto LABEL_63;
  }

  if ((v6[379] & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v10 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      v11 = *(v6 + 90);
      *buf = 136447234;
      v107 = "nw_http2_remove_input_handler";
      v108 = 2082;
      v109 = v6 + 380;
      v110 = 2080;
      v111 = " ";
      v112 = 1024;
      v113 = v11;
      v114 = 2048;
      *v115 = a2;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler context doesn't exist on protocol %p", buf, 0x30u);
    }
  }

LABEL_20:
  if (handle[379])
  {
    return 0;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v12 = gconnectionLogObj;
  result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v14 = *(handle + 90);
    *buf = 136447490;
    v107 = "nw_protocol_http2_remove_input_handler";
    v108 = 2082;
    v109 = handle + 380;
    v110 = 2080;
    v111 = " ";
    v112 = 1024;
    v113 = v14;
    v114 = 1042;
    *v115 = 16;
    *&v115[4] = 2098;
    *&v115[6] = a2;
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> http2 does not have input handler registered for %{public,uuid_t}.16P", buf, 0x36u);
    return 0;
  }

  return result;
}

void nw_http2_stream_destroy(void **a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 190) & 0x20) != 0)
  {
    nw_http_transaction_metadata_set_event_handler(a1[12], 0);
  }

  if (gLogDatapath == 1)
  {
    v18 = __nwlog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s called", &buf, 0xCu);
    }
  }

  v2 = *a1;
  if (*a1)
  {
    v2[5] = &v20;
    v3 = a1[1];
    v20 = v2;
    v21 = v3;
    *a1 = 0;
    a1[1] = a1;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v23 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v24 = &__block_descriptor_tmp_21_49595;
    LOBYTE(v25) = 0;
    do
    {
      v4 = v20;
      if (!v20)
      {
        break;
      }

      v5 = v20[4];
      v6 = v20[5];
      v7 = (v5 + 40);
      if (!v5)
      {
        v7 = &v21;
      }

      *v7 = v6;
      *v6 = v5;
      v4[4] = 0;
      v4[5] = 0;
    }

    while ((v23(&buf) & 1) != 0);
  }

  if (gLogDatapath == 1)
  {
    v19 = __nwlog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "nw_protocol_release_master_frame_array";
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s called", &buf, 0xCu);
    }
  }

  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 0x40000000;
  v23 = ___ZL38nw_protocol_release_master_frame_arrayP16nw_frame_array_s_block_invoke;
  v24 = &__block_descriptor_tmp_33_87356;
  v25 = (a1 + 2);
  v8 = a1[2];
  do
  {
    if (!v8)
    {
      break;
    }

    v9 = v8[2];
    v10 = v23(&buf);
    v8 = v9;
  }

  while ((v10 & 1) != 0);
  v11 = a1[12];
  if (v11)
  {
    os_release(v11);
    a1[12] = 0;
  }

  v12 = a1[13];
  if (v12)
  {
    os_release(v12);
    a1[13] = 0;
  }

  v13 = a1[14];
  if (v13)
  {
    os_release(v13);
    a1[14] = 0;
  }

  v14 = *(a1 + 94);
  *(a1 + 44) = -1;
  *(a1 + 94) = v14 & 0xEF66;
  if (a1[21])
  {
    v15 = a1[20];
    if (v15)
    {
      os_release(v15);
    }
  }

  a1[20] = 0;
  if (a1[19])
  {
    v16 = a1[18];
    if (v16)
    {
      os_release(v16);
    }
  }

  a1[18] = 0;
  v17 = a1[15];
  if (v17)
  {
    a1[16] = v17;
    operator delete(v17);
  }

  free(a1);
}

uint64_t nw_protocol_http2_accept(uint64_t a1, uint64_t a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_http2_accept";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v28, &type, &v38))
    {
      goto LABEL_82;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v38 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (!os_log_type_enabled(v29, type))
        {
          goto LABEL_82;
        }

        *buf = 136446210;
        v41 = "nw_protocol_http2_accept";
        v31 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_81;
      }

      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v35 = os_log_type_enabled(v29, type);
      if (!backtrace_string)
      {
        if (!v35)
        {
          goto LABEL_82;
        }

        *buf = 136446210;
        v41 = "nw_protocol_http2_accept";
        v31 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_81;
      }

      if (v35)
      {
        *buf = 136446466;
        v41 = "nw_protocol_http2_accept";
        v42 = 2082;
        v43 = backtrace_string;
        v36 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_71:
        _os_log_impl(&dword_181A37000, v29, v30, v36, buf, 0x16u);
      }

LABEL_72:
      free(backtrace_string);
      goto LABEL_82;
    }

    v29 = __nwlog_obj();
    v30 = type;
    if (!os_log_type_enabled(v29, type))
    {
      goto LABEL_82;
    }

    *buf = 136446210;
    v41 = "nw_protocol_http2_accept";
    v31 = "%{public}s called with null protocol";
LABEL_81:
    _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
LABEL_82:
    if (v28)
    {
      free(v28);
    }

    return 0;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_http2_accept";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v28, &type, &v38))
    {
      goto LABEL_82;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_82;
      }

      *buf = 136446210;
      v41 = "nw_protocol_http2_accept";
      v31 = "%{public}s called with null http2";
      goto LABEL_81;
    }

    if (v38 != 1)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_82;
      }

      *buf = 136446210;
      v41 = "nw_protocol_http2_accept";
      v31 = "%{public}s called with null http2, backtrace limit exceeded";
      goto LABEL_81;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v30 = type;
    v37 = os_log_type_enabled(v29, type);
    if (backtrace_string)
    {
      if (v37)
      {
        *buf = 136446466;
        v41 = "nw_protocol_http2_accept";
        v42 = 2082;
        v43 = backtrace_string;
        v36 = "%{public}s called with null http2, dumping backtrace:%{public}s";
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    if (!v37)
    {
      goto LABEL_82;
    }

    *buf = 136446210;
    v41 = "nw_protocol_http2_accept";
    v31 = "%{public}s called with null http2, no backtrace";
    goto LABEL_81;
  }

  if ((*(v3 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v32 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v33 = *(v3 + 360);
      *buf = 136446978;
      v41 = "nw_protocol_http2_accept";
      v42 = 2082;
      v43 = (v3 + 380);
      v44 = 2080;
      v45 = " ";
      v46 = 1024;
      v47 = v33;
      _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  if ((*(v3 + 377) & 4) == 0)
  {
    v5 = *(v3 + 64);
    if (v5)
    {
      v6 = mach_continuous_time();
      v7 = v6 <= 1 ? 1 : v6;
      v8 = nw_delta_nanos(v5, v7);
      int64_with_default = networkd_settings_get_int64_with_default(nw_setting_proxy_setup_threshold_seconds, 5);
      if (v8 > 1000000000 * int64_with_default)
      {
        if ((*(v3 + 379) & 1) == 0)
        {
          v10 = int64_with_default;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v11 = gconnectionLogObj;
          result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
          if (result)
          {
            v13 = *(v3 + 360);
            *buf = 136447234;
            v41 = "nw_protocol_http2_accept";
            v42 = 2082;
            v43 = (v3 + 380);
            v44 = 2080;
            v45 = " ";
            v46 = 1024;
            v47 = v13;
            v48 = 2048;
            v49 = v10;
            v14 = "%{public}s %{public}s%s<i%u> denying join attempt because http2 connection not ready within %lld seconds";
            v15 = v11;
            v16 = 48;
LABEL_48:
            _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
            return 0;
          }

          return result;
        }

        return 0;
      }
    }
  }

  if (!*(v3 + 364) || networkd_settings_get_int64_with_default(nw_setting_proxy_maximum_stall_count, 5) >= *(v3 + 364))
  {
    v20 = *(v3 + 377);
    if ((v20 & 2) != 0)
    {
      if (*(v3 + 379))
      {
        return 0;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v24 = gconnectionLogObj;
      result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v25 = *(v3 + 360);
      *buf = 136446978;
      v41 = "nw_protocol_http2_accept";
      v42 = 2082;
      v43 = (v3 + 380);
      v44 = 2080;
      v45 = " ";
      v46 = 1024;
      v47 = v25;
      v14 = "%{public}s %{public}s%s<i%u> cannot accept new streams after receiving a goaway";
    }

    else if ((v20 & 8) != 0)
    {
      if (*(v3 + 379))
      {
        return 0;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v24 = gconnectionLogObj;
      result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v26 = *(v3 + 360);
      *buf = 136446978;
      v41 = "nw_protocol_http2_accept";
      v42 = 2082;
      v43 = (v3 + 380);
      v44 = 2080;
      v45 = " ";
      v46 = 1024;
      v47 = v26;
      v14 = "%{public}s %{public}s%s<i%u> cannot accept new streams after the tunnel is closed";
    }

    else
    {
      if ((v20 & 0x40) == 0)
      {
        if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
        }

        v21 = nw_parameters_copy_protocol_options_for_definition(a3, nw_protocol_copy_http_messaging_definition_definition);
        if (!v21)
        {
          return 1;
        }

        v22 = v21;
        is_websocket = nw_http_messaging_options_is_websocket(v21);
        os_release(v22);
        if (!is_websocket)
        {
          return 1;
        }

        result = nw_http_connection_metadata_get_connect_enabled(*(v3 + 256));
        if (result)
        {
          return 1;
        }

        return result;
      }

      if (*(v3 + 379))
      {
        return 0;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v24 = gconnectionLogObj;
      result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v27 = *(v3 + 360);
      *buf = 136446978;
      v41 = "nw_protocol_http2_accept";
      v42 = 2082;
      v43 = (v3 + 380);
      v44 = 2080;
      v45 = " ";
      v46 = 1024;
      v47 = v27;
      v14 = "%{public}s %{public}s%s<i%u> denying join attempt because http2 has a better alternate path";
    }

    v15 = v24;
    v16 = 38;
    goto LABEL_48;
  }

  if (*(v3 + 379))
  {
    return 0;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v17 = gconnectionLogObj;
  result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
  if (result)
  {
    v18 = *(v3 + 360);
    v19 = *(v3 + 364);
    *buf = 136447234;
    v41 = "nw_protocol_http2_accept";
    v42 = 2082;
    v43 = (v3 + 380);
    v44 = 2080;
    v45 = " ";
    v46 = 1024;
    v47 = v18;
    v48 = 1024;
    LODWORD(v49) = v19;
    v14 = "%{public}s %{public}s%s<i%u> denying join attempt because http2 connection has hit %u stalls";
    v15 = v17;
    v16 = 44;
    goto LABEL_48;
  }

  return result;
}

void ___ZL54nw_protocol_http_connection_state_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    *(*(a1 + 32) + 40) = 0;
    if ((*(v1 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v4 = __nwlog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = 136446722;
        v6 = "nw_http_connection_state_destroy";
        v7 = 2082;
        v8 = v1 + 114;
        v9 = 2080;
        v10 = " ";
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v5, 0x20u);
      }
    }

    (*(*(v1 + 216) + 16))();
    v2 = *(v1 + 216);
    if (v2)
    {
      _Block_release(v2);
      *(v1 + 216) = 0;
    }

    if (*(v1 + 208))
    {
      v3 = *(v1 + 200);
      if (v3)
      {
        os_release(v3);
      }
    }

    free(v1);
  }
}

void ___ZL44nw_protocol_http_cookie_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) != 1)
  {
    return;
  }

  *(*(a1 + 32) + 40) = 0;
  v1 = *(a1 + 40);
  if (v1)
  {
    if (*(v1 + 288))
    {
      v2 = *(v1 + 280);
      if (v2)
      {
        os_release(v2);
      }
    }

    *(v1 + 280) = 0;
    if (*(v1 + 272))
    {
      v3 = *(v1 + 264);
      if (v3)
      {
        os_release(v3);
      }
    }

    *(v1 + 264) = 0;
    if (*(v1 + 256))
    {
      v4 = *(v1 + 248);
      if (v4)
      {
        os_release(v4);
      }
    }

    free(v1);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_http_cookie_destroy";
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
        goto LABEL_29;
      }

      *buf = 136446210;
      v14 = "nw_protocol_http_cookie_destroy";
      v8 = "%{public}s called with null http_cookie";
      goto LABEL_28;
    }

    if (v11 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      v14 = "nw_protocol_http_cookie_destroy";
      v8 = "%{public}s called with null http_cookie, backtrace limit exceeded";
      goto LABEL_28;
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
        v14 = "nw_protocol_http_cookie_destroy";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null http_cookie, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_29;
    }

    if (v10)
    {
      *buf = 136446210;
      v14 = "nw_protocol_http_cookie_destroy";
      v8 = "%{public}s called with null http_cookie, no backtrace";
LABEL_28:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    }
  }

LABEL_29:
  if (v5)
  {
    free(v5);
  }
}

void nw_http_retry_destroy(_BYTE *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((a1[198] & 1) == 0 && gLogDatapath == 1)
  {
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136446722;
      v17 = "nw_http_retry_destroy";
      v18 = 2082;
      v19 = a1 + 114;
      v20 = 2080;
      v21 = " ";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v16, 0x20u);
    }
  }

  if (*(a1 + 116))
  {
    *(a1 + 234) |= 0x40u;
    if ((a1[198] & 1) == 0 && gLogDatapath == 1)
    {
      v2 = __nwlog_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136446722;
        v17 = "nw_http_retry_destroy";
        v18 = 2082;
        v19 = a1 + 114;
        v20 = 2080;
        v21 = " ";
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdeferring destroy because the request is being reissued", &v16, 0x20u);
      }
    }
  }

  else
  {
    if (a1[560])
    {
      v3 = *(a1 + 69);
      if (v3)
      {
        os_release(v3);
      }
    }

    *(a1 + 69) = 0;
    if (a1[544])
    {
      v4 = *(a1 + 67);
      if (v4)
      {
        os_release(v4);
      }
    }

    *(a1 + 67) = 0;
    if (a1[528])
    {
      v5 = *(a1 + 65);
      if (v5)
      {
        os_release(v5);
      }
    }

    *(a1 + 65) = 0;
    if (a1[512])
    {
      v6 = *(a1 + 63);
      if (v6)
      {
        _Block_release(v6);
      }
    }

    *(a1 + 63) = 0;
    if (a1[496])
    {
      v7 = *(a1 + 61);
      if (v7)
      {
        os_release(v7);
      }
    }

    *(a1 + 61) = 0;
    if (a1[480])
    {
      v8 = *(a1 + 59);
      if (v8)
      {
        os_release(v8);
      }
    }

    *(a1 + 59) = 0;
    if (a1[424])
    {
      v9 = *(a1 + 52);
      if (v9)
      {
        _Block_release(v9);
      }
    }

    *(a1 + 52) = 0;
    if (a1[384])
    {
      v10 = *(a1 + 47);
      if (v10)
      {
        _Block_release(v10);
      }
    }

    *(a1 + 47) = 0;
    if (a1[368])
    {
      v11 = *(a1 + 45);
      if (v11)
      {
        os_release(v11);
      }
    }

    *(a1 + 45) = 0;
    if (a1[288])
    {
      v12 = *(a1 + 35);
      if (v12)
      {
        os_release(v12);
      }
    }

    *(a1 + 35) = 0;
    if (a1[272])
    {
      v13 = *(a1 + 33);
      if (v13)
      {
        os_release(v13);
      }
    }

    *(a1 + 33) = 0;
    if (a1[256])
    {
      v14 = *(a1 + 31);
      if (v14)
      {
        os_release(v14);
      }
    }

    free(a1);
  }
}

void ___ZL43nw_protocol_http_retry_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    nw_http_retry_destroy(*(a1 + 32));
  }
}

void ___ZL52nw_protocol_http_authentication_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    nw_http_authentication_destroy(*(a1 + 32));
  }
}

void nw_http_authentication_destroy(nw_protocol_http_authentication *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v39 = __nwlog_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v40 = 136446722;
      v41 = "nw_http_authentication_destroy";
      v42 = 2082;
      v43 = a1 + 114;
      v44 = 2080;
      v45 = " ";
      _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v40, 0x20u);
    }
  }

  if (*(a1 + 112))
  {
    *(a1 + 226) |= 0x40u;
    if ((*(a1 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v2 = __nwlog_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v40 = 136446722;
        v41 = "nw_http_authentication_destroy";
        v42 = 2082;
        v43 = a1 + 114;
        v44 = 2080;
        v45 = " ";
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdeferring destroy because the request is being reissued", &v40, 0x20u);
      }
    }
  }

  else
  {
    if (*(a1 + 928))
    {
      v3 = *(a1 + 115);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    *(a1 + 115) = 0;
    if (*(a1 + 912))
    {
      v4 = *(a1 + 113);
      if (v4)
      {
        CFRelease(v4);
      }
    }

    *(a1 + 113) = 0;
    if (*(a1 + 896))
    {
      v5 = *(a1 + 111);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    *(a1 + 111) = 0;
    if (*(a1 + 880))
    {
      v6 = *(a1 + 109);
      if (v6)
      {
        CFRelease(v6);
      }
    }

    *(a1 + 109) = 0;
    if (*(a1 + 864))
    {
      v7 = *(a1 + 107);
      if (v7)
      {
        os_release(v7);
      }
    }

    *(a1 + 107) = 0;
    if (*(a1 + 848))
    {
      v8 = *(a1 + 105);
      if (v8)
      {
        os_release(v8);
      }
    }

    *(a1 + 105) = 0;
    if (*(a1 + 832))
    {
      v9 = *(a1 + 103);
      if (v9)
      {
        os_release(v9);
      }
    }

    *(a1 + 103) = 0;
    if (*(a1 + 816))
    {
      v10 = *(a1 + 101);
      if (v10)
      {
        os_release(v10);
      }
    }

    *(a1 + 101) = 0;
    if (*(a1 + 800))
    {
      v11 = *(a1 + 99);
      if (v11)
      {
        CFRelease(v11);
      }
    }

    *(a1 + 99) = 0;
    if (*(a1 + 784))
    {
      v12 = *(a1 + 97);
      if (v12)
      {
        CFRelease(v12);
      }
    }

    *(a1 + 97) = 0;
    if (*(a1 + 768))
    {
      v13 = *(a1 + 95);
      if (v13)
      {
        os_release(v13);
      }
    }

    *(a1 + 95) = 0;
    if (*(a1 + 752))
    {
      v14 = *(a1 + 93);
      if (v14)
      {
        os_release(v14);
      }
    }

    *(a1 + 93) = 0;
    if (*(a1 + 736))
    {
      v15 = *(a1 + 91);
      if (v15)
      {
        os_release(v15);
      }
    }

    *(a1 + 91) = 0;
    if (*(a1 + 720))
    {
      v16 = *(a1 + 89);
      if (v16)
      {
        os_release(v16);
      }
    }

    *(a1 + 89) = 0;
    if (*(a1 + 704))
    {
      v17 = *(a1 + 87);
      if (v17)
      {
        os_release(v17);
      }
    }

    *(a1 + 87) = 0;
    if (*(a1 + 688))
    {
      v18 = *(a1 + 85);
      if (v18)
      {
        os_release(v18);
      }
    }

    *(a1 + 85) = 0;
    if (*(a1 + 672))
    {
      v19 = *(a1 + 83);
      if (v19)
      {
        dispatch_release(v19);
      }
    }

    *(a1 + 83) = 0;
    if (*(a1 + 656))
    {
      v20 = *(a1 + 81);
      if (v20)
      {
        _Block_release(v20);
      }
    }

    *(a1 + 81) = 0;
    if (*(a1 + 640))
    {
      v21 = *(a1 + 79);
      if (v21)
      {
        os_release(v21);
      }
    }

    *(a1 + 79) = 0;
    if (*(a1 + 624))
    {
      v22 = *(a1 + 77);
      if (v22)
      {
        os_release(v22);
      }
    }

    *(a1 + 77) = 0;
    if (*(a1 + 608))
    {
      v23 = *(a1 + 75);
      if (v23)
      {
        os_release(v23);
      }
    }

    *(a1 + 75) = 0;
    if (*(a1 + 592))
    {
      v24 = *(a1 + 73);
      if (v24)
      {
        os_release(v24);
      }
    }

    *(a1 + 73) = 0;
    if (*(a1 + 576))
    {
      v25 = *(a1 + 71);
      if (v25)
      {
        os_release(v25);
      }
    }

    *(a1 + 71) = 0;
    if (*(a1 + 560))
    {
      v26 = *(a1 + 69);
      if (v26)
      {
        os_release(v26);
      }
    }

    *(a1 + 69) = 0;
    if (*(a1 + 544))
    {
      v27 = *(a1 + 67);
      if (v27)
      {
        os_release(v27);
      }
    }

    *(a1 + 67) = 0;
    if (*(a1 + 528))
    {
      v28 = *(a1 + 65);
      if (v28)
      {
        CFRelease(v28);
      }
    }

    *(a1 + 65) = 0;
    if (*(a1 + 512))
    {
      v29 = *(a1 + 63);
      if (v29)
      {
        _Block_release(v29);
      }
    }

    *(a1 + 63) = 0;
    if (*(a1 + 496))
    {
      v30 = *(a1 + 61);
      if (v30)
      {
        os_release(v30);
      }
    }

    *(a1 + 61) = 0;
    if (*(a1 + 480))
    {
      v31 = *(a1 + 59);
      if (v31)
      {
        os_release(v31);
      }
    }

    *(a1 + 59) = 0;
    if (*(a1 + 464))
    {
      v32 = *(a1 + 57);
      if (v32)
      {
        os_release(v32);
      }
    }

    *(a1 + 57) = 0;
    if (*(a1 + 408))
    {
      v33 = *(a1 + 50);
      if (v33)
      {
        _Block_release(v33);
      }
    }

    *(a1 + 50) = 0;
    if (*(a1 + 368))
    {
      v34 = *(a1 + 45);
      if (v34)
      {
        _Block_release(v34);
      }
    }

    *(a1 + 45) = 0;
    if (*(a1 + 352))
    {
      v35 = *(a1 + 43);
      if (v35)
      {
        os_release(v35);
      }
    }

    *(a1 + 43) = 0;
    if (*(a1 + 288))
    {
      v36 = *(a1 + 35);
      if (v36)
      {
        os_release(v36);
      }
    }

    *(a1 + 35) = 0;
    if (*(a1 + 272))
    {
      v37 = *(a1 + 33);
      if (v37)
      {
        os_release(v37);
      }
    }

    *(a1 + 33) = 0;
    if (*(a1 + 256))
    {
      v38 = *(a1 + 31);
      if (v38)
      {
        os_release(v38);
      }
    }

    free(a1);
  }
}

void ___ZL46nw_protocol_http_encoding_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != 1)
  {
    return;
  }

  v1 = *(a1 + 32);
  v2 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((*(v1 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v48 = __nwlog_obj();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_http_encoding_destroy";
      *&buf[12] = 2082;
      *&buf[14] = v1 + 114;
      *&buf[22] = 2080;
      v60 = " ";
      _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
    }
  }

  if ((*(v1 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v49 = __nwlog_obj();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_http_encoding_destroy";
      *&buf[12] = 2082;
      *&buf[14] = v1 + 114;
      *&buf[22] = 2080;
      v60 = " ";
      _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sfinalizing frame arrays", buf, 0x20u);
    }
  }

  v3 = (v1 + 456);
  if (gLogDatapath == 1)
  {
    v33 = __nwlog_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v4 = *v3;
  if (*v3)
  {
    *(v4 + 24) = type;
    v5 = *(v1 + 464);
    *type = v4;
    v58 = v5;
    *(v1 + 456) = 0;
    *(v1 + 464) = v3;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v60 = &__block_descriptor_tmp_21_49595;
    v61 = 0;
    do
    {
      v6 = *type;
      if (!*type)
      {
        break;
      }

      v7 = *(*type + 16);
      v8 = *(*type + 24);
      v9 = (v7 + 24);
      if (!v7)
      {
        v9 = &v58;
      }

      *v9 = v8;
      *v8 = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
    if (*v3)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      v34 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v56 = 0;
      if (!__nwlog_fault(v34, type, &v56))
      {
        goto LABEL_103;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v36 = type[0];
        if (!os_log_type_enabled(v35, type[0]))
        {
          goto LABEL_103;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        v37 = "%{public}s frame array is not empty after finalize";
      }

      else if (v56 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v35 = __nwlog_obj();
        v36 = type[0];
        v51 = os_log_type_enabled(v35, type[0]);
        if (backtrace_string)
        {
          if (v51)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_finalize_master_frame_array";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v35, v36, "%{public}s frame array is not empty after finalize, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          v2 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          goto LABEL_103;
        }

        v2 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        if (!v51)
        {
LABEL_103:
          if (v34)
          {
            free(v34);
          }

          goto LABEL_14;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        v37 = "%{public}s frame array is not empty after finalize, no backtrace";
      }

      else
      {
        v35 = __nwlog_obj();
        v36 = type[0];
        if (!os_log_type_enabled(v35, type[0]))
        {
          goto LABEL_103;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        v37 = "%{public}s frame array is not empty after finalize, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0xCu);
      goto LABEL_103;
    }
  }

LABEL_14:
  v10 = (v1 + 472);
  if (BYTE1(v2[82].isa) == 1)
  {
    v38 = __nwlog_obj();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v11 = *v10;
  if (*v10)
  {
    *(v11 + 24) = type;
    v12 = *(v1 + 480);
    *type = v11;
    v58 = v12;
    *(v1 + 472) = 0;
    *(v1 + 480) = v10;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v60 = &__block_descriptor_tmp_21_49595;
    v61 = 0;
    do
    {
      v13 = *type;
      if (!*type)
      {
        break;
      }

      v14 = *(*type + 16);
      v15 = *(*type + 24);
      v16 = (v14 + 24);
      if (!v14)
      {
        v16 = &v58;
      }

      *v16 = v15;
      *v15 = v14;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
    if (*v10)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      v39 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v56 = 0;
      if (!__nwlog_fault(v39, type, &v56))
      {
        goto LABEL_108;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = type[0];
        if (!os_log_type_enabled(v40, type[0]))
        {
          goto LABEL_108;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        v42 = "%{public}s frame array is not empty after finalize";
      }

      else if (v56 == 1)
      {
        v52 = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v41 = type[0];
        v53 = os_log_type_enabled(v40, type[0]);
        if (v52)
        {
          if (v53)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_finalize_master_frame_array";
            *&buf[12] = 2082;
            *&buf[14] = v52;
            _os_log_impl(&dword_181A37000, v40, v41, "%{public}s frame array is not empty after finalize, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v52);
          v2 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          goto LABEL_108;
        }

        v2 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        if (!v53)
        {
LABEL_108:
          if (v39)
          {
            free(v39);
          }

          goto LABEL_22;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        v42 = "%{public}s frame array is not empty after finalize, no backtrace";
      }

      else
      {
        v40 = __nwlog_obj();
        v41 = type[0];
        if (!os_log_type_enabled(v40, type[0]))
        {
          goto LABEL_108;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        v42 = "%{public}s frame array is not empty after finalize, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v40, v41, v42, buf, 0xCu);
      goto LABEL_108;
    }
  }

LABEL_22:
  v17 = (v1 + 520);
  if (BYTE1(v2[82].isa) == 1)
  {
    v43 = __nwlog_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v18 = *v17;
  if (!*v17)
  {
    goto LABEL_30;
  }

  *(v18 + 24) = type;
  v19 = *(v1 + 528);
  *type = v18;
  v58 = v19;
  *(v1 + 520) = 0;
  *(v1 + 528) = v17;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
  v60 = &__block_descriptor_tmp_21_49595;
  v61 = 0;
  do
  {
    v20 = *type;
    if (!*type)
    {
      break;
    }

    v21 = *(*type + 16);
    v22 = *(*type + 24);
    v23 = (v21 + 24);
    if (!v21)
    {
      v23 = &v58;
    }

    *v23 = v22;
    *v22 = v21;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
  }

  while (((*&buf[16])(buf) & 1) != 0);
  if (!*v17)
  {
    goto LABEL_30;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_finalize_master_frame_array";
  v44 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v56 = 0;
  if (__nwlog_fault(v44, type, &v56))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v46 = type[0];
      if (!os_log_type_enabled(v45, type[0]))
      {
        goto LABEL_113;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      v47 = "%{public}s frame array is not empty after finalize";
      goto LABEL_112;
    }

    if (v56 != 1)
    {
      v45 = __nwlog_obj();
      v46 = type[0];
      if (!os_log_type_enabled(v45, type[0]))
      {
        goto LABEL_113;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      v47 = "%{public}s frame array is not empty after finalize, backtrace limit exceeded";
      goto LABEL_112;
    }

    v54 = __nw_create_backtrace_string();
    v45 = __nwlog_obj();
    v46 = type[0];
    v55 = os_log_type_enabled(v45, type[0]);
    if (v54)
    {
      if (v55)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_finalize_master_frame_array";
        *&buf[12] = 2082;
        *&buf[14] = v54;
        _os_log_impl(&dword_181A37000, v45, v46, "%{public}s frame array is not empty after finalize, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v54);
      goto LABEL_113;
    }

    if (v55)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_master_frame_array";
      v47 = "%{public}s frame array is not empty after finalize, no backtrace";
LABEL_112:
      _os_log_impl(&dword_181A37000, v45, v46, v47, buf, 0xCu);
    }
  }

LABEL_113:
  if (v44)
  {
    free(v44);
  }

LABEL_30:
  nw_frame_cache_destroy((v1 + 336));
  v24 = *(v1 + 448);
  if (v24)
  {
    (**v24)(*(v1 + 448));
    free(v24);
    *(v1 + 448) = 0;
  }

  v25 = *(v1 + 440);
  if (v25)
  {
    (**v25)(*(v1 + 440));
    free(v25);
    *(v1 + 440) = 0;
  }

  if (*(v1 + 432))
  {
    v26 = *(v1 + 424);
    if (v26)
    {
      os_release(v26);
    }
  }

  *(v1 + 424) = 0;
  if (*(v1 + 416))
  {
    v27 = *(v1 + 408);
    if (v27)
    {
      os_release(v27);
    }
  }

  *(v1 + 408) = 0;
  if (*(v1 + 400))
  {
    v28 = *(v1 + 392);
    if (v28)
    {
      os_release(v28);
    }
  }

  *(v1 + 392) = 0;
  if (*(v1 + 384))
  {
    v29 = *(v1 + 376);
    if (v29)
    {
      os_release(v29);
    }
  }

  *(v1 + 376) = 0;
  if (*(v1 + 280))
  {
    v30 = *(v1 + 272);
    if (v30)
    {
      _Block_release(v30);
    }
  }

  *(v1 + 272) = 0;
  if (*(v1 + 240))
  {
    v31 = *(v1 + 232);
    if (v31)
    {
      _Block_release(v31);
    }
  }

  *(v1 + 232) = 0;
  if (*(v1 + 224))
  {
    v32 = *(v1 + 216);
    if (v32)
    {
      os_release(v32);
    }
  }

  free(v1);
}

void nw_frame_cache_destroy(char *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (gLogDatapath == 1)
    {
      v6 = __nwlog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 2);
        v8 = "<null>";
        if (v7)
        {
          v9 = *(v7 + 16);
          if (v9)
          {
            v8 = v9;
          }
        }

        *buf = 136446722;
        v15 = "nw_frame_cache_destroy";
        v16 = 2048;
        v17 = a1;
        v18 = 2080;
        v19 = v8;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s destroying frame cache %p for protocol %s", buf, 0x20u);
      }
    }

    nw_frame_cache_remove_all(a1);
    *(a1 + 2) = 0;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_frame_cache_destroy";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v2, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v15 = "nw_frame_cache_destroy";
      v5 = "%{public}s called with null frame_cache";
      goto LABEL_23;
    }

    if (v12 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v15 = "nw_frame_cache_destroy";
      v5 = "%{public}s called with null frame_cache, backtrace limit exceeded";
      goto LABEL_23;
    }

    backtrace_string = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v11 = os_log_type_enabled(v3, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446466;
        v15 = "nw_frame_cache_destroy";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame_cache, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_24;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "nw_frame_cache_destroy";
      v5 = "%{public}s called with null frame_cache, no backtrace";
LABEL_23:
      _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    }
  }

LABEL_24:
  if (v2)
  {
    free(v2);
  }
}

void nw_http_security_destroy(_BYTE *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((a1[198] & 1) == 0 && gLogDatapath == 1)
  {
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136446722;
      v17 = "nw_http_security_destroy";
      v18 = 2082;
      v19 = a1 + 114;
      v20 = 2080;
      v21 = " ";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v16, 0x20u);
    }
  }

  if (*(a1 + 112))
  {
    *(a1 + 226) |= 0x40u;
    if ((a1[198] & 1) == 0 && gLogDatapath == 1)
    {
      v2 = __nwlog_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136446722;
        v17 = "nw_http_security_destroy";
        v18 = 2082;
        v19 = a1 + 114;
        v20 = 2080;
        v21 = " ";
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdeferring destroy because the request is being reissued", &v16, 0x20u);
      }
    }
  }

  else
  {
    if (a1[544])
    {
      v3 = *(a1 + 67);
      if (v3)
      {
        os_release(v3);
      }
    }

    *(a1 + 67) = 0;
    if (a1[528])
    {
      v4 = *(a1 + 65);
      if (v4)
      {
        os_release(v4);
      }
    }

    *(a1 + 65) = 0;
    if (a1[512])
    {
      v5 = *(a1 + 63);
      if (v5)
      {
        os_release(v5);
      }
    }

    *(a1 + 63) = 0;
    if (a1[496])
    {
      v6 = *(a1 + 61);
      if (v6)
      {
        os_release(v6);
      }
    }

    *(a1 + 61) = 0;
    if (a1[480])
    {
      v7 = *(a1 + 59);
      if (v7)
      {
        os_release(v7);
      }
    }

    *(a1 + 59) = 0;
    if (a1[464])
    {
      v8 = *(a1 + 57);
      if (v8)
      {
        CFRelease(v8);
      }
    }

    *(a1 + 57) = 0;
    if (a1[408])
    {
      v9 = *(a1 + 50);
      if (v9)
      {
        _Block_release(v9);
      }
    }

    *(a1 + 50) = 0;
    if (a1[368])
    {
      v10 = *(a1 + 45);
      if (v10)
      {
        _Block_release(v10);
      }
    }

    *(a1 + 45) = 0;
    if (a1[352])
    {
      v11 = *(a1 + 43);
      if (v11)
      {
        os_release(v11);
      }
    }

    *(a1 + 43) = 0;
    if (a1[288])
    {
      v12 = *(a1 + 35);
      if (v12)
      {
        os_release(v12);
      }
    }

    *(a1 + 35) = 0;
    if (a1[272])
    {
      v13 = *(a1 + 33);
      if (v13)
      {
        os_release(v13);
      }
    }

    *(a1 + 33) = 0;
    if (a1[256])
    {
      v14 = *(a1 + 31);
      if (v14)
      {
        os_release(v14);
      }
    }

    free(a1);
  }
}

void ___ZL46nw_protocol_http_security_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    nw_http_security_destroy(*(a1 + 32));
  }
}

void nw_http_redirect_destroy(_BYTE *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((a1[198] & 1) == 0 && gLogDatapath == 1)
  {
    v17 = __nwlog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136446722;
      v19 = "nw_http_redirect_destroy";
      v20 = 2082;
      v21 = a1 + 114;
      v22 = 2080;
      v23 = " ";
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v18, 0x20u);
    }
  }

  if (*(a1 + 112))
  {
    *(a1 + 226) |= 0x40u;
    if ((a1[198] & 1) == 0 && gLogDatapath == 1)
    {
      v2 = __nwlog_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136446722;
        v19 = "nw_http_redirect_destroy";
        v20 = 2082;
        v21 = a1 + 114;
        v22 = 2080;
        v23 = " ";
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdeferring destroy because the request is being reissued", &v18, 0x20u);
      }
    }
  }

  else
  {
    if (a1[576])
    {
      v3 = *(a1 + 71);
      if (v3)
      {
        os_release(v3);
      }
    }

    *(a1 + 71) = 0;
    if (a1[560])
    {
      v4 = *(a1 + 69);
      if (v4)
      {
        os_release(v4);
      }
    }

    *(a1 + 69) = 0;
    if (a1[544])
    {
      v5 = *(a1 + 67);
      if (v5)
      {
        os_release(v5);
      }
    }

    *(a1 + 67) = 0;
    if (a1[528])
    {
      v6 = *(a1 + 65);
      if (v6)
      {
        os_release(v6);
      }
    }

    *(a1 + 65) = 0;
    if (a1[512])
    {
      v7 = *(a1 + 63);
      if (v7)
      {
        dispatch_release(v7);
      }
    }

    *(a1 + 63) = 0;
    if (a1[496])
    {
      v8 = *(a1 + 61);
      if (v8)
      {
        _Block_release(v8);
      }
    }

    *(a1 + 61) = 0;
    if (a1[480])
    {
      v9 = *(a1 + 59);
      if (v9)
      {
        os_release(v9);
      }
    }

    *(a1 + 59) = 0;
    if (a1[464])
    {
      v10 = *(a1 + 57);
      if (v10)
      {
        os_release(v10);
      }
    }

    *(a1 + 57) = 0;
    if (a1[408])
    {
      v11 = *(a1 + 50);
      if (v11)
      {
        _Block_release(v11);
      }
    }

    *(a1 + 50) = 0;
    if (a1[368])
    {
      v12 = *(a1 + 45);
      if (v12)
      {
        _Block_release(v12);
      }
    }

    *(a1 + 45) = 0;
    if (a1[352])
    {
      v13 = *(a1 + 43);
      if (v13)
      {
        os_release(v13);
      }
    }

    *(a1 + 43) = 0;
    if (a1[288])
    {
      v14 = *(a1 + 35);
      if (v14)
      {
        os_release(v14);
      }
    }

    *(a1 + 35) = 0;
    if (a1[272])
    {
      v15 = *(a1 + 33);
      if (v15)
      {
        os_release(v15);
      }
    }

    *(a1 + 33) = 0;
    if (a1[256])
    {
      v16 = *(a1 + 31);
      if (v16)
      {
        os_release(v16);
      }
    }

    free(a1);
  }
}

void ___ZL46nw_protocol_http_redirect_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    nw_http_redirect_destroy(*(a1 + 32));
  }
}

void ___ZL46nw_protocol_http_sniffing_remove_input_handlerP11nw_protocolS0_b_block_invoke_140(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != 1)
  {
    return;
  }

  v1 = *(a1 + 32);
  if ((*(v1 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v10 = __nwlog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136446722;
      v12 = "nw_http_sniffing_destroy";
      v13 = 2082;
      v14 = v1 + 114;
      v15 = 2080;
      v16 = " ";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v11, 0x20u);
    }
  }

  v2 = *(v1 + 432);
  if (v2)
  {
    *(v1 + 440) = v2;
    operator delete(v2);
  }

  if (*(v1 + 431) < 0)
  {
    operator delete(*(v1 + 408));
    if ((*(v1 + 400) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v3 = *(v1 + 392);
    if (v3)
    {
      os_release(v3);
    }

    goto LABEL_12;
  }

  if (*(v1 + 400))
  {
    goto LABEL_10;
  }

LABEL_12:
  *(v1 + 392) = 0;
  if (*(v1 + 384))
  {
    v4 = *(v1 + 376);
    if (v4)
    {
      os_release(v4);
    }
  }

  *(v1 + 376) = 0;
  if (*(v1 + 368))
  {
    v5 = *(v1 + 360);
    if (v5)
    {
      os_release(v5);
    }
  }

  *(v1 + 360) = 0;
  if (*(v1 + 352))
  {
    v6 = *(v1 + 344);
    if (v6)
    {
      os_release(v6);
    }
  }

  *(v1 + 344) = 0;
  if (*(v1 + 280))
  {
    v7 = *(v1 + 272);
    if (v7)
    {
      _Block_release(v7);
    }
  }

  *(v1 + 272) = 0;
  if (*(v1 + 240))
  {
    v8 = *(v1 + 232);
    if (v8)
    {
      _Block_release(v8);
    }
  }

  *(v1 + 232) = 0;
  if (*(v1 + 224))
  {
    v9 = *(v1 + 216);
    if (v9)
    {
      os_release(v9);
    }
  }

  free(v1);
}

void ___ZL44nw_protocol_http_client_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) == 1)
  {
    v1 = *(a1 + 32);
    if ((*(v1 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v11 = __nwlog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = 136446722;
        v13 = "nw_http_client_destroy";
        v14 = 2082;
        v15 = v1 + 114;
        v16 = 2080;
        v17 = " ";
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v12, 0x20u);
      }
    }

    if (*(v1 + 448))
    {
      *(v1 + 452) |= 0x40u;
      if ((*(v1 + 198) & 1) == 0 && gLogDatapath == 1)
      {
        v2 = __nwlog_obj();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          v12 = 136446722;
          v13 = "nw_http_client_destroy";
          v14 = 2082;
          v15 = v1 + 114;
          v16 = 2080;
          v17 = " ";
          _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdeferring destroy because the request is being reissued", &v12, 0x20u);
        }
      }
    }

    else
    {
      if (*(v1 + 480))
      {
        v3 = *(v1 + 472);
        if (v3)
        {
          os_release(v3);
        }
      }

      *(v1 + 472) = 0;
      if (*(v1 + 464))
      {
        v4 = *(v1 + 456);
        if (v4)
        {
          os_release(v4);
        }
      }

      *(v1 + 456) = 0;
      if (*(v1 + 408))
      {
        v5 = *(v1 + 400);
        if (v5)
        {
          _Block_release(v5);
        }
      }

      *(v1 + 400) = 0;
      if (*(v1 + 368))
      {
        v6 = *(v1 + 360);
        if (v6)
        {
          _Block_release(v6);
        }
      }

      *(v1 + 360) = 0;
      if (*(v1 + 352))
      {
        v7 = *(v1 + 344);
        if (v7)
        {
          os_release(v7);
        }
      }

      *(v1 + 344) = 0;
      if (*(v1 + 288))
      {
        v8 = *(v1 + 280);
        if (v8)
        {
          os_release(v8);
        }
      }

      *(v1 + 280) = 0;
      if (*(v1 + 272))
      {
        v9 = *(v1 + 264);
        if (v9)
        {
          os_release(v9);
        }
      }

      *(v1 + 264) = 0;
      if (*(v1 + 256))
      {
        v10 = *(v1 + 248);
        if (v10)
        {
          os_release(v10);
        }
      }

      free(v1);
    }
  }
}

uint64_t nw_frame_array_unclaimed_length(uint64_t *a1, int a2)
{
  v3 = 0;
  nw_frame_array_get_frame_count(a1, a2, &v3);
  return v3;
}

void nw_protocol_http2_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_http2_input_available";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v3, &type, &v15))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http2_input_available";
      v6 = "%{public}s called with null protocol";
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v12 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v18 = "nw_protocol_http2_input_available";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v3)
        {
          return;
        }

LABEL_41:
        free(v3);
        return;
      }

      if (!v12)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http2_input_available";
      v6 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http2_input_available";
      v6 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_39:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_40;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((*(handle + 379) & 1) == 0 && gLogDatapath == 1)
    {
      v7 = handle;
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v8 = gconnectionLogObj;
      v9 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
      handle = v7;
      if (v9)
      {
        v10 = *(v7 + 90);
        *buf = 136446978;
        v18 = "nw_protocol_http2_input_available";
        v19 = 2082;
        v20 = v7 + 380;
        v21 = 2080;
        v22 = " ";
        v23 = 1024;
        v24 = v10;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
        handle = v7;
      }
    }

    if ((*(handle + 377) & 0x1000) == 0)
    {
      nw_protocol_http2_process_input(handle);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocol_http2_input_available";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v3, &type, &v15))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v18 = "nw_protocol_http2_input_available";
    v6 = "%{public}s called with null http2";
    goto LABEL_39;
  }

  if (v15 != 1)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v18 = "nw_protocol_http2_input_available";
    v6 = "%{public}s called with null http2, backtrace limit exceeded";
    goto LABEL_39;
  }

  v13 = __nw_create_backtrace_string();
  v4 = __nwlog_obj();
  v5 = type;
  v14 = os_log_type_enabled(v4, type);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v18 = "nw_protocol_http2_input_available";
    v6 = "%{public}s called with null http2, no backtrace";
    goto LABEL_39;
  }

  if (v14)
  {
    *buf = 136446466;
    v18 = "nw_protocol_http2_input_available";
    v19 = 2082;
    v20 = v13;
    _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v3)
  {
    goto LABEL_41;
  }
}

uint64_t ___ZL31nw_protocol_http2_process_inputP17nw_protocol_http2_block_invoke(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v3 = nw_frame_unclaimed_bytes(a2, &v46);
  v4 = v46;
  if (v3)
  {
    v5 = v46 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    v7 = v3;
    v8 = *(a1 + 40);
    if ((!v8 || (*(v8 + 379) & 1) == 0) && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v38 = gconnectionLogObj;
      v39 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
      v4 = v46;
      if (v39)
      {
        v40 = *(a1 + 40);
        v41 = (v40 + 380);
        v42 = v40 == 0;
        v43 = "";
        if (!v40)
        {
          v41 = "";
        }

        v44 = *(v40 + 360);
        if (!v42)
        {
          v43 = " ";
        }

        *buf = 136447234;
        v48 = "nw_protocol_http2_process_input_block_invoke";
        v49 = 2082;
        v50 = v41;
        v51 = 2080;
        v52 = v43;
        v53 = 1024;
        v54 = v44;
        v55 = 1024;
        v56 = v46;
        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> processing frame of length %u bytes", buf, 0x2Cu);
        v4 = v46;
      }

      if (!v4)
      {
        v9 = 0;
        goto LABEL_55;
      }
    }

    v9 = 0;
    while (1)
    {
      v10 = MEMORY[0x1865DDB50](*(*(a1 + 40) + 96), v7 + v9, v4 - v9);
      if (v10 < 0)
      {
        break;
      }

      v9 += v10;
      v11 = *(a1 + 40);
      if ((!v11 || (*(v11 + 379) & 1) == 0) && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        log = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(a1 + 40);
          v13 = (v12 + 380);
          v14 = v12 == 0;
          v15 = "";
          if (!v12)
          {
            v13 = "";
          }

          v16 = *(v12 + 360);
          if (!v14)
          {
            v15 = " ";
          }

          *buf = 136447234;
          v48 = "nw_protocol_http2_process_input_block_invoke";
          v49 = 2082;
          v50 = v13;
          v51 = 2080;
          v52 = v15;
          v53 = 1024;
          v54 = v16;
          v55 = 1024;
          v56 = v9;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> nghttp2_session_mem_recv consumed %u bytes", buf, 0x2Cu);
        }
      }

      v4 = v46;
      if (v9 >= v46)
      {
        goto LABEL_55;
      }
    }

    v17 = *(a1 + 40);
    v18 = *(v17 + 377) & 0x10;
    v19 = *(v17 + 379);
    if (v10 != -902 || v18 == 0)
    {
      if (v19)
      {
        goto LABEL_54;
      }

      v21 = v10;
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v22 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      v23 = *(a1 + 40);
      if (v23)
      {
        v24 = (v23 + 380);
      }

      else
      {
        v24 = "";
      }

      if (v23)
      {
        v25 = " ";
      }

      else
      {
        v25 = "";
      }

      v26 = *(v23 + 360);
      v27 = nghttp2_strerror();
      *buf = 136447490;
      v48 = "nw_protocol_http2_process_input_block_invoke";
      v49 = 2082;
      v50 = v24;
      v51 = 2080;
      v52 = v25;
      v53 = 1024;
      v54 = v26;
      v55 = 1024;
      v56 = v21;
      v57 = 2082;
      v58 = v27;
      v28 = "%{public}s %{public}s%s<i%u> ERROR: Could not process incoming data: %d (%{public}s)";
      v29 = v22;
      v30 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (v19)
      {
        goto LABEL_54;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v31 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      v32 = *(a1 + 40);
      if (v32)
      {
        v33 = (v32 + 380);
      }

      else
      {
        v33 = "";
      }

      if (v32)
      {
        v34 = " ";
      }

      else
      {
        v34 = "";
      }

      v35 = *(v32 + 360);
      v36 = nghttp2_strerror();
      *buf = 136447490;
      v48 = "nw_protocol_http2_process_input_block_invoke";
      v49 = 2082;
      v50 = v33;
      v51 = 2080;
      v52 = v34;
      v53 = 1024;
      v54 = v35;
      v55 = 1024;
      v56 = -902;
      v57 = 2082;
      v58 = v36;
      v28 = "%{public}s %{public}s%s<i%u> Could not process incoming data: %d (%{public}s), closing";
      v29 = v31;
      v30 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_181A37000, v29, v30, v28, buf, 0x36u);
LABEL_54:
    nw_http2_connection_close(*(a1 + 40));
LABEL_55:
    *(*(*(a1 + 32) + 8) + 24) += v9;
  }

  return v6;
}

uint64_t nw_http_connection_metadata_get_settings_received(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_connection_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_connection_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_connection_metadata_get_settings_received_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle(v4))
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_settings_received";
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
          *&buf[4] = "nw_http_connection_metadata_get_settings_received";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_connection", buf, 0xCu);
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
          *&buf[4] = "nw_http_connection_metadata_get_settings_received";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
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
          *&buf[4] = "nw_http_connection_metadata_get_settings_received";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_connection_metadata_get_settings_received";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_settings_received";
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
          *&buf[4] = "nw_http_connection_metadata_get_settings_received";
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
          *&buf[4] = "nw_http_connection_metadata_get_settings_received";
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
          *&buf[4] = "nw_http_connection_metadata_get_settings_received";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_connection_metadata_get_settings_received";
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

  return v6 & 1;
}

void sub_181F11BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http_connection_metadata_get_webtransport_state(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_connection_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_connection_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_connection_metadata_get_webtransport_state_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle(v4))
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
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
          *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_connection", buf, 0xCu);
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
          *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
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
          *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
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
          *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
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
          *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
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
          *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_connection_metadata_get_webtransport_state";
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

void sub_181F12174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_http_connection_metadata_get_webtransport_state_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 160);
  if (!v3)
  {
    v3 = nw_webtransport_connection_state_create();
    *(a2 + 160) = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return 1;
}

void *nw_webtransport_connection_state_create()
{
  result = malloc_type_calloc(1uLL, 0x20uLL, 0x661FAC76uLL);
  if (result)
  {
    goto LABEL_4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  v1 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v1);
  if (!result)
  {
    free(v1);
    result = 0;
LABEL_4:
    *result = 0;
    result[1] = result;
    return result;
  }

  __break(1u);
  return result;
}

void nw_http_connection_metadata_set_connect_enabled(void *a1, char a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_connection_metadata_set_connect_enabled";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_connection_metadata_set_connect_enabled";
        v9 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v19 == 1)
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
          v22 = "nw_http_connection_metadata_set_connect_enabled";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v6)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v6);
        goto LABEL_7;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_http_connection_metadata_set_connect_enabled";
        v9 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_connection_metadata_set_connect_enabled";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_connection_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __nw_http_connection_metadata_set_connect_enabled_block_invoke;
    v17 = &__block_descriptor_33_e9_B16__0_v8l;
    v18 = a2;
    handle = _nw_protocol_metadata_get_handle(v3);
    if (handle)
    {
      v16(v15, handle);
    }

    goto LABEL_7;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_http_connection_metadata_set_connect_enabled";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_connection_metadata_set_connect_enabled";
      v9 = "%{public}s metadata must be http_connection";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_connection_metadata_set_connect_enabled";
      v9 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
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
      v22 = "nw_http_connection_metadata_set_connect_enabled";
      v9 = "%{public}s metadata must be http_connection, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_connection_metadata_set_connect_enabled";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_38;
  }

LABEL_7:
}
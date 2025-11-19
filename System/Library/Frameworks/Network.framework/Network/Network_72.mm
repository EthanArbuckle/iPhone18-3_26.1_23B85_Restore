uint64_t nw_protocol_http2_copy_info(uint64_t a1, int a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_protocol_http2_copy_info";
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v16, &type, &v33))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v36 = "nw_protocol_http2_copy_info";
        v19 = "%{public}s called with null protocol";
LABEL_60:
        _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
      }

LABEL_61:
      if (v16)
      {
        free(v16);
      }

      return 0;
    }

    if (v33 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v36 = "nw_protocol_http2_copy_info";
        v19 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type;
    v21 = os_log_type_enabled(v17, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v36 = "nw_protocol_http2_copy_info";
        v19 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    if (v21)
    {
      *buf = 136446466;
      v36 = "nw_protocol_http2_copy_info";
      v37 = 2082;
      v38 = backtrace_string;
      v22 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_42:
      _os_log_impl(&dword_181A37000, v17, v18, v22, buf, 0x16u);
    }

LABEL_43:
    free(backtrace_string);
    goto LABEL_61;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_protocol_http2_copy_info";
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v16, &type, &v33))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v36 = "nw_protocol_http2_copy_info";
        v19 = "%{public}s called with null http2";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    if (v33 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v36 = "nw_protocol_http2_copy_info";
        v19 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type;
    v23 = os_log_type_enabled(v17, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v36 = "nw_protocol_http2_copy_info";
        v19 = "%{public}s called with null http2, no backtrace";
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    if (v23)
    {
      *buf = 136446466;
      v36 = "nw_protocol_http2_copy_info";
      v37 = 2082;
      v38 = backtrace_string;
      v22 = "%{public}s called with null http2, dumping backtrace:%{public}s";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if (a2 == 253)
  {
    return *(v3 + 144);
  }

  result = nw_protocol_common_copy_info(a1, a2);
  if (a2 == 255)
  {
    if (!result)
    {
      result = _nw_array_create();
    }

    v7 = *(v3 + 256);
    if (v7)
    {
      v8 = result == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = result;
      _nw_array_append(result, v7);
      result = v9;
    }

    if (a3)
    {
      v10 = *(a3 + 56);
      if (v10)
      {
        v11 = *(v10 + 32);
        if (v11)
        {
          v12 = *(v11 + 96);
          if (v12)
          {
            v13 = 0;
          }

          else
          {
            v13 = result;
          }

          if (v12)
          {
            v14 = result == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {
            return v13;
          }

          v15 = result;
          _nw_array_append(result, v12);
          return v15;
        }

        v32 = result;
        __nwlog_obj();
        *buf = 136446210;
        v36 = "nw_protocol_http2_copy_info";
        v24 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v33 = 0;
        if (!__nwlog_fault(v24, &type, &v33))
        {
          goto LABEL_83;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v25 = __nwlog_obj();
          v26 = type;
          if (os_log_type_enabled(v25, type))
          {
            *buf = 136446210;
            v36 = "nw_protocol_http2_copy_info";
            v27 = "%{public}s called with null stream";
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        if (v33 != 1)
        {
          v25 = __nwlog_obj();
          v26 = type;
          if (os_log_type_enabled(v25, type))
          {
            *buf = 136446210;
            v36 = "nw_protocol_http2_copy_info";
            v27 = "%{public}s called with null stream, backtrace limit exceeded";
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        v28 = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type;
        v31 = os_log_type_enabled(v25, type);
        if (!v28)
        {
          if (v31)
          {
            *buf = 136446210;
            v36 = "nw_protocol_http2_copy_info";
            v27 = "%{public}s called with null stream, no backtrace";
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        if (v31)
        {
          *buf = 136446466;
          v36 = "nw_protocol_http2_copy_info";
          v37 = 2082;
          v38 = v28;
          v30 = "%{public}s called with null stream, dumping backtrace:%{public}s";
          goto LABEL_72;
        }
      }

      else
      {
        v32 = result;
        __nwlog_obj();
        *buf = 136446210;
        v36 = "nw_protocol_http2_copy_info";
        v24 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v33 = 0;
        if (!__nwlog_fault(v24, &type, &v33))
        {
          goto LABEL_83;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v25 = __nwlog_obj();
          v26 = type;
          if (os_log_type_enabled(v25, type))
          {
            *buf = 136446210;
            v36 = "nw_protocol_http2_copy_info";
            v27 = "%{public}s called with null node";
LABEL_82:
            _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
          }

LABEL_83:
          if (v24)
          {
            free(v24);
          }

          return v32;
        }

        if (v33 != 1)
        {
          v25 = __nwlog_obj();
          v26 = type;
          if (os_log_type_enabled(v25, type))
          {
            *buf = 136446210;
            v36 = "nw_protocol_http2_copy_info";
            v27 = "%{public}s called with null node, backtrace limit exceeded";
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        v28 = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type;
        v29 = os_log_type_enabled(v25, type);
        if (!v28)
        {
          if (v29)
          {
            *buf = 136446210;
            v36 = "nw_protocol_http2_copy_info";
            v27 = "%{public}s called with null node, no backtrace";
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        if (v29)
        {
          *buf = 136446466;
          v36 = "nw_protocol_http2_copy_info";
          v37 = 2082;
          v38 = v28;
          v30 = "%{public}s called with null node, dumping backtrace:%{public}s";
LABEL_72:
          _os_log_impl(&dword_181A37000, v25, v26, v30, buf, 0x16u);
        }
      }

      free(v28);
      goto LABEL_83;
    }
  }

  return result;
}

void nw_protocol_http2_notify(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_http2_notify";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v17, &type, &v38))
    {
      goto LABEL_80;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v41 = "nw_protocol_http2_notify";
      v20 = "%{public}s called with null protocol";
    }

    else if (v38 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v30 = os_log_type_enabled(v18, type);
      if (backtrace_string)
      {
        if (v30)
        {
          *buf = 136446466;
          v41 = "nw_protocol_http2_notify";
          v42 = 2082;
          v43 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_80:
        if (!v17)
        {
          return;
        }

        goto LABEL_81;
      }

      if (!v30)
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v41 = "nw_protocol_http2_notify";
      v20 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v41 = "nw_protocol_http2_notify";
      v20 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_79;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_http2_notify";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v17, &type, &v38))
    {
      goto LABEL_80;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v38 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_80;
        }

        *buf = 136446210;
        v41 = "nw_protocol_http2_notify";
        v20 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_79;
      }

      v31 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v32 = os_log_type_enabled(v18, type);
      if (!v31)
      {
        if (!v32)
        {
          goto LABEL_80;
        }

        *buf = 136446210;
        v41 = "nw_protocol_http2_notify";
        v20 = "%{public}s called with null http2, no backtrace";
        goto LABEL_79;
      }

      if (!v32)
      {
        goto LABEL_61;
      }

      *buf = 136446466;
      v41 = "nw_protocol_http2_notify";
      v42 = 2082;
      v43 = v31;
      v33 = "%{public}s called with null http2, dumping backtrace:%{public}s";
      goto LABEL_60;
    }

    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_80;
    }

    *buf = 136446210;
    v41 = "nw_protocol_http2_notify";
    v20 = "%{public}s called with null http2";
LABEL_79:
    _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
    goto LABEL_80;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_http2_notify";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v17, &type, &v38))
    {
      goto LABEL_80;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v41 = "nw_protocol_http2_notify";
      v20 = "%{public}s called with null other_protocol";
      goto LABEL_79;
    }

    if (v38 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v41 = "nw_protocol_http2_notify";
      v20 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_79;
    }

    v31 = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v34 = os_log_type_enabled(v18, type);
    if (!v31)
    {
      if (!v34)
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v41 = "nw_protocol_http2_notify";
      v20 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_79;
    }

    if (!v34)
    {
      goto LABEL_61;
    }

    *buf = 136446466;
    v41 = "nw_protocol_http2_notify";
    v42 = 2082;
    v43 = v31;
    v33 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_60:
    _os_log_impl(&dword_181A37000, v18, v19, v33, buf, 0x16u);
    goto LABEL_61;
  }

  if (!*(v5 + 152))
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_http2_notify";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v17, &type, &v38))
    {
      goto LABEL_80;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v41 = "nw_protocol_http2_notify";
      v20 = "%{public}s called with null http2->http2_streams_protocol";
      goto LABEL_79;
    }

    if (v38 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v41 = "nw_protocol_http2_notify";
      v20 = "%{public}s called with null http2->http2_streams_protocol, backtrace limit exceeded";
      goto LABEL_79;
    }

    v31 = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v35 = os_log_type_enabled(v18, type);
    if (!v31)
    {
      if (!v35)
      {
        goto LABEL_80;
      }

      *buf = 136446210;
      v41 = "nw_protocol_http2_notify";
      v20 = "%{public}s called with null http2->http2_streams_protocol, no backtrace";
      goto LABEL_79;
    }

    if (v35)
    {
      *buf = 136446466;
      v41 = "nw_protocol_http2_notify";
      v42 = 2082;
      v43 = v31;
      v33 = "%{public}s called with null http2->http2_streams_protocol, dumping backtrace:%{public}s";
      goto LABEL_60;
    }

LABEL_61:
    free(v31);
    if (!v17)
    {
      return;
    }

LABEL_81:
    free(v17);
    return;
  }

  if ((*(v5 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v25 = a5;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v26 = gconnectionLogObj;
    v27 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
    a5 = v25;
    a4 = v24;
    a3 = v23;
    a2 = v22;
    a1 = v21;
    if (v27)
    {
      v28 = *(v5 + 360);
      *buf = 136446978;
      v41 = "nw_protocol_http2_notify";
      v42 = 2082;
      v43 = (v5 + 380);
      v44 = 2080;
      v45 = " ";
      v46 = 1024;
      v47 = v28;
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      a1 = v21;
      a2 = v22;
      a3 = v23;
      a4 = v24;
      a5 = v25;
    }
  }

  if (a3 > 0x16)
  {
    goto LABEL_21;
  }

  if (((1 << a3) & 0x208080) != 0)
  {
    return;
  }

  if (((1 << a3) & 0x12000) == 0)
  {
    if (a3 == 22)
    {
      if ((*(v5 + 379) & 1) == 0)
      {
        v9 = a2;
        v10 = a3;
        v11 = a4;
        v12 = a5;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v13 = gconnectionLogObj;
        v14 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
        a5 = v12;
        a4 = v11;
        a3 = v10;
        a2 = v9;
        if (v14)
        {
          v15 = *(v5 + 360);
          *buf = 136446978;
          v41 = "nw_protocol_http2_notify";
          v42 = 2082;
          v43 = (v5 + 380);
          v44 = 2080;
          v45 = " ";
          v46 = 1024;
          v47 = v15;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> restarting all streams", buf, 0x26u);
          a2 = v9;
          a3 = v10;
          a4 = v11;
          a5 = v12;
        }
      }

      *(v5 + 377) |= 8u;
    }

LABEL_21:
    v16 = *(v5 + 152);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 0x40000000;
    v36[2] = ___ZL24nw_protocol_http2_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke;
    v36[3] = &__block_descriptor_tmp_96_88013;
    v36[4] = v5;
    v36[5] = a2;
    v37 = a3;
    v36[6] = a4;
    v36[7] = a5;
    nw_hash_table_apply(v16, v36);
    return;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 24);
    if (v7)
    {
      v8 = *(v7 + 160);
      if (v8)
      {
        v8();
      }
    }
  }
}

void nw_protocol_http2_stream_get_message_properties(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_http2_stream_get_message_properties";
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
      v15 = "nw_protocol_http2_stream_get_message_properties";
      v7 = "%{public}s called with null protocol";
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
          v15 = "nw_protocol_http2_stream_get_message_properties";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v4)
        {
          return;
        }

LABEL_35:
        free(v4);
        return;
      }

      if (!v9)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v15 = "nw_protocol_http2_stream_get_message_properties";
      v7 = "%{public}s called with null protocol, no backtrace";
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
      v15 = "nw_protocol_http2_stream_get_message_properties";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_34;
  }

  if (*(a1 + 40))
  {
    if (a3)
    {
      v3 = a3[1] & 0xFFFFFFF8;
      *a3 = -1;
      a3[1] = v3;
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_http2_stream_get_message_properties";
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
    v15 = "nw_protocol_http2_stream_get_message_properties";
    v7 = "%{public}s called with null http2";
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
    v15 = "nw_protocol_http2_stream_get_message_properties";
    v7 = "%{public}s called with null http2, backtrace limit exceeded";
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
    v15 = "nw_protocol_http2_stream_get_message_properties";
    v7 = "%{public}s called with null http2, no backtrace";
    goto LABEL_33;
  }

  if (v11)
  {
    *buf = 136446466;
    v15 = "nw_protocol_http2_stream_get_message_properties";
    v16 = 2082;
    v17 = v10;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v10);
  if (v4)
  {
    goto LABEL_35;
  }
}

void nw_protocol_http_joining_connected(nw_protocol *a1, nw_protocol *a2)
{
  v97 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    buf[0] = 136446210;
    *&buf[1] = "nw_protocol_http_joining_connected";
    v43 = _os_log_send_and_compose_impl();
    v96[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v43, v96, &type))
    {
      goto LABEL_150;
    }

    if (v96[0] == 17)
    {
      v29 = __nwlog_obj();
      v30 = v96[0];
      if (!os_log_type_enabled(v29, v96[0]))
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_protocol_http_joining_connected";
      v31 = "%{public}s called with null protocol";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = v96[0];
      v75 = os_log_type_enabled(v29, v96[0]);
      if (backtrace_string)
      {
        if (v75)
        {
          buf[0] = 136446466;
          *&buf[1] = "nw_protocol_http_joining_connected";
          v92 = 2082;
          v93 = backtrace_string;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_150;
      }

      if (!v75)
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_protocol_http_joining_connected";
      v31 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v29 = __nwlog_obj();
      v30 = v96[0];
      if (!os_log_type_enabled(v29, v96[0]))
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_protocol_http_joining_connected";
      v31 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_149;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    buf[0] = 136446210;
    *&buf[1] = "nw_protocol_http_joining_connected";
    v43 = _os_log_send_and_compose_impl();
    v96[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v43, v96, &type))
    {
      goto LABEL_150;
    }

    if (v96[0] == 17)
    {
      v29 = __nwlog_obj();
      v30 = v96[0];
      if (!os_log_type_enabled(v29, v96[0]))
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_protocol_http_joining_connected";
      v31 = "%{public}s called with null http_joining";
      goto LABEL_149;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v29 = __nwlog_obj();
      v30 = v96[0];
      if (!os_log_type_enabled(v29, v96[0]))
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_protocol_http_joining_connected";
      v31 = "%{public}s called with null http_joining, backtrace limit exceeded";
      goto LABEL_149;
    }

    v35 = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v30 = v96[0];
    v76 = os_log_type_enabled(v29, v96[0]);
    if (!v35)
    {
      if (!v76)
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_protocol_http_joining_connected";
      v31 = "%{public}s called with null http_joining, no backtrace";
      goto LABEL_149;
    }

    if (!v76)
    {
LABEL_96:
      free(v35);
      if (v43)
      {
        goto LABEL_151;
      }

      return;
    }

    buf[0] = 136446466;
    *&buf[1] = "nw_protocol_http_joining_connected";
    v92 = 2082;
    v93 = v35;
    v37 = "%{public}s called with null http_joining, dumping backtrace:%{public}s";
LABEL_95:
    _os_log_impl(&dword_181A37000, v29, v30, v37, buf, 0x16u);
    goto LABEL_96;
  }

  if ((handle[294] & 8) != 0)
  {
    if ((handle[294] & 2) != 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      return;
    }

    buf[0] = 136446722;
    *&buf[1] = "nw_protocol_http_joining_connected";
    v92 = 2082;
    v93 = handle + 208;
    v94 = 2080;
    v95 = " ";
    v12 = "%{public}s %{public}s%signoring connected";
    v13 = v11;
    v14 = OS_LOG_TYPE_INFO;
LABEL_36:
    _os_log_impl(&dword_181A37000, v13, v14, v12, buf, 0x20u);
    return;
  }

  if (!*(handle + 6))
  {
    if ((handle[294] & 2) != 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    buf[0] = 136446722;
    *&buf[1] = "nw_protocol_http_joining_connected";
    v92 = 2082;
    v93 = handle + 208;
    v94 = 2080;
    v95 = " ";
    v12 = "%{public}s %{public}s%sno default input handler, ignoring connected";
    v13 = v15;
    v14 = OS_LOG_TYPE_ERROR;
    goto LABEL_36;
  }

  identifier = a2->identifier;
  if (nw_protocol_http_messaging_identifier::onceToken != -1)
  {
    v77 = a2->identifier;
    dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
    identifier = v77;
  }

  if (nw_protocols_are_equal(identifier, &nw_protocol_http_messaging_identifier::protocol_identifier))
  {
    goto LABEL_23;
  }

  v5 = a2->identifier;
  if (nw_protocol_http1_identifier::onceToken != -1)
  {
    v78 = a2->identifier;
    dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
    v5 = v78;
  }

  if (nw_protocols_are_equal(v5, &nw_protocol_http1_identifier::http1_protocol_identifier))
  {
    goto LABEL_23;
  }

  v6 = a2->identifier;
  if (nw_protocol_http2_identifier::onceToken != -1)
  {
    v80 = a2->identifier;
    dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
    v6 = v80;
  }

  if (nw_protocols_are_equal(v6, &nw_protocol_http2_identifier::http2_protocol_identifier))
  {
    goto LABEL_23;
  }

  v7 = a2->identifier;
  if (nw_protocol_http3_identifier::onceToken != -1)
  {
    v85 = a2->identifier;
    dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
    v7 = v85;
  }

  if (nw_protocols_are_equal(v7, &nw_protocol_http3_identifier::http3_protocol_identifier))
  {
    goto LABEL_23;
  }

  v8 = a2->identifier;
  if (nw_protocol_oblivious_http_identifier::onceToken != -1)
  {
    v88 = a2->identifier;
    dispatch_once(&nw_protocol_oblivious_http_identifier::onceToken, &__block_literal_global_29544);
    v8 = v88;
  }

  if (nw_protocols_are_equal(v8, &nw_protocol_oblivious_http_identifier::ohttp_protocol_identifier))
  {
    goto LABEL_23;
  }

  v9 = a2->identifier;
  if (nw_protocol_oblivious_http_contexts_identifier::onceToken != -1)
  {
    v89 = a2->identifier;
    dispatch_once(&nw_protocol_oblivious_http_contexts_identifier::onceToken, &__block_literal_global_8_29551);
    v9 = v89;
  }

  if (nw_protocols_are_equal(v9, nw_protocol_oblivious_http_contexts_identifier::ohttp_protocol_identifier))
  {
LABEL_23:
    *(handle + 17) = a2;
  }

  if (*(handle + 4) != a2)
  {
    if ((handle[294] & 1) == 0 && !*(handle + 17))
    {
      v10 = *(handle + 6);

      nw_protocol_connected(v10, a2);
    }

    return;
  }

  if (*(handle + 17))
  {
    v16 = *(handle + 17);
  }

  else
  {
    v16 = *(handle + 4);
  }

  handle[294] |= 1u;
  do
  {
    v17 = v16[2];
    if (nw_protocol_http_messaging_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
    }

    if (nw_protocols_are_equal(v17, &nw_protocol_http_messaging_identifier::protocol_identifier))
    {
      goto LABEL_62;
    }

    v18 = v16[2];
    if (nw_protocol_http1_identifier::onceToken != -1)
    {
      v23 = v16[2];
      dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
      v18 = v23;
    }

    if (nw_protocols_are_equal(v18, &nw_protocol_http1_identifier::http1_protocol_identifier))
    {
      goto LABEL_62;
    }

    v19 = v16[2];
    if (nw_protocol_http2_identifier::onceToken != -1)
    {
      v24 = v16[2];
      dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
      v19 = v24;
    }

    if (nw_protocols_are_equal(v19, &nw_protocol_http2_identifier::http2_protocol_identifier))
    {
      goto LABEL_62;
    }

    v20 = v16[2];
    if (nw_protocol_http3_identifier::onceToken != -1)
    {
      v25 = v16[2];
      dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
      v20 = v25;
    }

    if (nw_protocols_are_equal(v20, &nw_protocol_http3_identifier::http3_protocol_identifier))
    {
      goto LABEL_62;
    }

    v21 = v16[2];
    if (nw_protocol_oblivious_http_identifier::onceToken != -1)
    {
      v26 = v16[2];
      dispatch_once(&nw_protocol_oblivious_http_identifier::onceToken, &__block_literal_global_29544);
      v21 = v26;
    }

    if (nw_protocols_are_equal(v21, &nw_protocol_oblivious_http_identifier::ohttp_protocol_identifier))
    {
      goto LABEL_62;
    }

    v22 = v16[2];
    if (nw_protocol_oblivious_http_contexts_identifier::onceToken != -1)
    {
      v27 = v16[2];
      dispatch_once(&nw_protocol_oblivious_http_contexts_identifier::onceToken, &__block_literal_global_8_29551);
      v22 = v27;
    }

    if (nw_protocols_are_equal(v22, nw_protocol_oblivious_http_contexts_identifier::ohttp_protocol_identifier))
    {
LABEL_62:
      v28 = v16[2];
      if (nw_protocol_oblivious_http_contexts_identifier::onceToken != -1)
      {
        v79 = v16[2];
        dispatch_once(&nw_protocol_oblivious_http_contexts_identifier::onceToken, &__block_literal_global_8_29551);
        v28 = v79;
      }

      if (nw_protocols_are_equal(v28, nw_protocol_oblivious_http_contexts_identifier::ohttp_protocol_identifier))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        buf[0] = 136446210;
        *&buf[1] = "nw_http_joining_get_out_of_the_way";
        v43 = _os_log_send_and_compose_impl();
        v96[0] = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v43, v96, &type))
        {
          goto LABEL_150;
        }

        if (v96[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = gLogObj;
          v30 = v96[0];
          if (os_log_type_enabled(gLogObj, v96[0]))
          {
            buf[0] = 136446210;
            *&buf[1] = "nw_http_joining_get_out_of_the_way";
            v31 = "%{public}s http_oblivious_http_contexts not supported below http_joining";
            goto LABEL_149;
          }

          goto LABEL_150;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v29 = __nwlog_obj();
          v30 = v96[0];
          if (!os_log_type_enabled(v29, v96[0]))
          {
            goto LABEL_150;
          }

          buf[0] = 136446210;
          *&buf[1] = "nw_http_joining_get_out_of_the_way";
          v31 = "%{public}s http_oblivious_http_contexts not supported below http_joining, backtrace limit exceeded";
          goto LABEL_149;
        }

        v35 = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v30 = v96[0];
        v36 = os_log_type_enabled(v29, v96[0]);
        if (!v35)
        {
          if (!v36)
          {
            goto LABEL_150;
          }

          buf[0] = 136446210;
          *&buf[1] = "nw_http_joining_get_out_of_the_way";
          v31 = "%{public}s http_oblivious_http_contexts not supported below http_joining, no backtrace";
          goto LABEL_149;
        }

        if (!v36)
        {
          goto LABEL_96;
        }

        buf[0] = 136446466;
        *&buf[1] = "nw_http_joining_get_out_of_the_way";
        v92 = 2082;
        v93 = v35;
        v37 = "%{public}s http_oblivious_http_contexts not supported below http_joining, dumping backtrace:%{public}s";
        goto LABEL_95;
      }

      v32 = nw_protocol_copy_info(v16);
      if (!v32 || (v16 = *(v32 + 24)) != 0)
      {
        v33 = v16[3];
        if (nw_protocol_http_messaging_get_callbacks(void)::onceToken != -1)
        {
          dispatch_once(&nw_protocol_http_messaging_get_callbacks(void)::onceToken, &__block_literal_global_19_80494);
        }

        if (v33 == &nw_protocol_http_messaging_get_callbacks(void)::protocol_callbacks)
        {
          *(handle + 17) = v16;
          nw_protocol_add_listen_handler(v16, (handle + 64));
          parameters = nw_protocol_get_parameters(v16);
          v39 = nw_parameters_copy_effective_proxy_config(parameters);
          if (v39)
          {
            v40 = v39;
            if (nw_proxy_config_get_type(v39) == 2001)
            {
              v41 = handle[168];
              if (v41)
              {
                v42 = *(handle + 20);
                if (v42)
                {
                  os_release(v42);
                  v41 = handle[168];
                }
              }

              *(handle + 20) = v40;
              handle[168] = v41 | 1;
            }

            else
            {
              os_release(v40);
            }
          }

          v34 = 1;
          goto LABEL_100;
        }

LABEL_74:
        v34 = 0;
LABEL_100:
        v46 = *(handle + 6);
        nw_protocol_set_input_handler(handle, 0);
        nw_protocol_set_output_handler(v46, 0);
        nw_protocol_replace_input_handler(*(handle + 4), handle, v46);
        nw_protocol_set_output_handler(handle, 0);
        handle[294] |= 0x10u;
        nw_protocol_connect(*(v46 + 32), v46);
        if ((handle[294] & 0x10) == 0)
        {
LABEL_101:

LABEL_103:
          nw_http_joining_destroy(handle);
          return;
        }

        handle[294] &= ~0x10u;
        if (!v34)
        {
          nw_protocol_remove_instance(handle);
          v73 = *(handle + 23);
          v72 = *(handle + 24);
          if (v73 != v72)
          {
            if (v72 - v73 >= 0)
            {
              operator new();
            }

LABEL_194:
            std::string::__throw_length_error[abi:nn200100]();
          }

          goto LABEL_101;
        }

        while (1)
        {
          v49 = *(handle + 23);
          v48 = *(handle + 24);
          v50 = v49;
          if (v49 != v48)
          {
            while (*(v50 + 8) == 2)
            {
              v50 += 16;
              if (v50 == v48)
              {
                v50 = *(handle + 24);
                break;
              }
            }
          }

          if (v48 == v50)
          {
            return;
          }

          v51 = *v50;
          v52 = *(v50 + 8);
          v53 = v50 + 16;
          if (v50 + 16 != v48)
          {
            v54 = v48 - v50 - 32;
            if (v54 >= 0x10)
            {
              v55 = v50 - v49;
              v56 = (v54 >> 4) + 1;
              v57 = 16 * (v56 & 0x1FFFFFFFFFFFFFFELL);
              v50 += v57;
              v58 = v49 + v55 + 24;
              v59 = v56 & 0x1FFFFFFFFFFFFFFELL;
              do
              {
                v60 = *(v58 + 8);
                *(v58 - 24) = *(v58 - 8);
                *(v58 - 8) = v60;
                LODWORD(v60) = *(v58 + 16);
                *(v58 - 16) = *v58;
                *v58 = v60;
                v58 += 32;
                v59 -= 2;
              }

              while (v59);
              if (v56 == (v56 & 0x1FFFFFFFFFFFFFFELL))
              {
                goto LABEL_120;
              }

              v53 += v57;
            }

            do
            {
              *v50 = *v53;
              *(v50 + 8) = *(v53 + 8);
              v53 += 16;
              v50 += 16;
            }

            while (v53 != v48);
          }

LABEL_120:
          *(handle + 24) = v50;
          v61 = nw_protocol_get_parameters(v51);
          if (nw_protocol_http_joining_accept(handle, *(handle + 15), v61) && (nw_http_joining_add_to_messaging(handle, v51) & 1) != 0)
          {
            if (v52 == 1)
            {
              handle[294] |= 0x10u;
              nw_protocol_connect(*(v51 + 32), v51);
              if ((handle[294] & 0x10) == 0)
              {
                goto LABEL_103;
              }

              handle[294] &= ~0x10u;
            }
          }

          else
          {
            if ((handle[294] & 2) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v62 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                buf[0] = 136446722;
                *&buf[1] = "nw_http_joining_get_out_of_the_way";
                v92 = 2082;
                v93 = handle + 208;
                v94 = 2080;
                v95 = " ";
                _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sMessaging cannot accept stream", buf, 0x20u);
              }
            }

            v64 = *(handle + 24);
            v63 = *(handle + 25);
            if (v64 < v63)
            {
              *v64 = v51;
              *(v64 + 8) = 2;
              v47 = v64 + 16;
            }

            else
            {
              v65 = *(handle + 23);
              v66 = v64 - v65;
              v67 = (v64 - v65) >> 4;
              v68 = v67 + 1;
              if ((v67 + 1) >> 60)
              {
                goto LABEL_194;
              }

              v69 = v63 - v65;
              if (v69 >> 3 > v68)
              {
                v68 = v69 >> 3;
              }

              if (v69 >= 0x7FFFFFFFFFFFFFF0)
              {
                v70 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v70 = v68;
              }

              if (v70)
              {
                if (!(v70 >> 60))
                {
                  operator new();
                }

                std::string::__throw_length_error[abi:nn200100]();
              }

              v71 = 16 * v67;
              *v71 = v51;
              *(v71 + 8) = 2;
              v47 = 16 * v67 + 16;
              memcpy(0, v65, v66);
              *(handle + 23) = 0;
              *(handle + 24) = v47;
              *(handle + 25) = 0;
              if (v65)
              {
                operator delete(v65);
              }
            }

            *(handle + 24) = v47;
            nw_protocol_error(v51, handle);
            nw_protocol_disconnected(v51, handle);
          }
        }
      }

      __nwlog_obj();
      buf[0] = 136446210;
      *&buf[1] = "nw_protocol_uses_http_messaging_callbacks";
      v81 = _os_log_send_and_compose_impl();
      v96[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v81, v96, &type))
      {
        if (v96[0] == 17)
        {
          v82 = __nwlog_obj();
          v83 = v96[0];
          if (!os_log_type_enabled(v82, v96[0]))
          {
            goto LABEL_192;
          }

          buf[0] = 136446210;
          *&buf[1] = "nw_protocol_uses_http_messaging_callbacks";
          v84 = "%{public}s called with null protocol";
          goto LABEL_191;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v82 = __nwlog_obj();
          v83 = v96[0];
          if (!os_log_type_enabled(v82, v96[0]))
          {
            goto LABEL_192;
          }

          buf[0] = 136446210;
          *&buf[1] = "nw_protocol_uses_http_messaging_callbacks";
          v84 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_191;
        }

        v86 = __nw_create_backtrace_string();
        v82 = __nwlog_obj();
        v83 = v96[0];
        v87 = os_log_type_enabled(v82, v96[0]);
        if (v86)
        {
          if (v87)
          {
            buf[0] = 136446466;
            *&buf[1] = "nw_protocol_uses_http_messaging_callbacks";
            v92 = 2082;
            v93 = v86;
            _os_log_impl(&dword_181A37000, v82, v83, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v86);
          goto LABEL_192;
        }

        if (v87)
        {
          buf[0] = 136446210;
          *&buf[1] = "nw_protocol_uses_http_messaging_callbacks";
          v84 = "%{public}s called with null protocol, no backtrace";
LABEL_191:
          _os_log_impl(&dword_181A37000, v82, v83, v84, buf, 0xCu);
        }
      }

LABEL_192:
      if (v81)
      {
        free(v81);
      }

      goto LABEL_74;
    }

    v16 = v16[4];
  }

  while (v16);
  __nwlog_obj();
  buf[0] = 136446210;
  *&buf[1] = "nw_http_joining_get_out_of_the_way";
  v43 = _os_log_send_and_compose_impl();
  v96[0] = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v43, v96, &type))
  {
    goto LABEL_150;
  }

  if (v96[0] != 17)
  {
    if (type == OS_LOG_TYPE_INFO)
    {
      v35 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = v96[0];
      v45 = os_log_type_enabled(v29, v96[0]);
      if (v35)
      {
        if (!v45)
        {
          goto LABEL_96;
        }

        buf[0] = 136446466;
        *&buf[1] = "nw_http_joining_get_out_of_the_way";
        v92 = 2082;
        v93 = v35;
        v37 = "%{public}s http_messaging not found below http_joining, dumping backtrace:%{public}s";
        goto LABEL_95;
      }

      if (!v45)
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_http_joining_get_out_of_the_way";
      v31 = "%{public}s http_messaging not found below http_joining, no backtrace";
    }

    else
    {
      v29 = __nwlog_obj();
      v30 = v96[0];
      if (!os_log_type_enabled(v29, v96[0]))
      {
        goto LABEL_150;
      }

      buf[0] = 136446210;
      *&buf[1] = "nw_http_joining_get_out_of_the_way";
      v31 = "%{public}s http_messaging not found below http_joining, backtrace limit exceeded";
    }

LABEL_149:
    _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
    goto LABEL_150;
  }

  v29 = __nwlog_obj();
  v30 = v96[0];
  if (os_log_type_enabled(v29, v96[0]))
  {
    buf[0] = 136446210;
    *&buf[1] = "nw_http_joining_get_out_of_the_way";
    v31 = "%{public}s http_messaging not found below http_joining";
    goto LABEL_149;
  }

LABEL_150:
  if (v43)
  {
LABEL_151:
    free(v43);
  }
}

void nw_protocol_common_connected(uint64_t a1, uint64_t a2)
{
  v99 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v92 = "nw_protocol_common_connected";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v89 = 0;
    if (!__nwlog_fault(v8, &type, &v89))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v92 = "nw_protocol_common_connected";
      v11 = "%{public}s called with null protocol";
    }

    else
    {
      if (v89 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v69 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v69)
          {
            *buf = 136446466;
            v92 = "nw_protocol_common_connected";
            v93 = 2082;
            v94 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
        }

        else if (v69)
        {
          *buf = 136446210;
          v92 = "nw_protocol_common_connected";
          v11 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_62;
        }

        goto LABEL_64;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v92 = "nw_protocol_common_connected";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_62;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v92 = "nw_protocol_common_connected";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v89 = 0;
    if (!__nwlog_fault(v8, &type, &v89))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v92 = "nw_protocol_common_connected";
      v11 = "%{public}s called with null other_protocol";
    }

    else
    {
      if (v89 == 1)
      {
        v70 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v71 = os_log_type_enabled(v9, type);
        if (!v70)
        {
          if (v71)
          {
            *buf = 136446210;
            v92 = "nw_protocol_common_connected";
            v11 = "%{public}s called with null other_protocol, no backtrace";
            goto LABEL_62;
          }

          goto LABEL_64;
        }

        if (v71)
        {
          *buf = 136446466;
          v92 = "nw_protocol_common_connected";
          v93 = 2082;
          v94 = v70;
          v72 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_140:
          _os_log_impl(&dword_181A37000, v9, v10, v72, buf, 0x16u);
        }

LABEL_141:
        free(v70);
        if (!v8)
        {
          return;
        }

        goto LABEL_65;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v92 = "nw_protocol_common_connected";
      v11 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

LABEL_62:
    v38 = v9;
    v39 = v10;
LABEL_63:
    _os_log_impl(&dword_181A37000, v38, v39, v11, buf, 0xCu);
    goto LABEL_64;
  }

  v3 = a1;
  v4 = *(a1 + 48);
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v92 = "nw_protocol_common_connected";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v89 = 0;
    if (!__nwlog_fault(v8, &type, &v89))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v92 = "nw_protocol_common_connected";
      v11 = "%{public}s connected requires a default input handler";
      goto LABEL_62;
    }

    if (v89 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_64;
      }

      *buf = 136446210;
      v92 = "nw_protocol_common_connected";
      v11 = "%{public}s connected requires a default input handler, backtrace limit exceeded";
      goto LABEL_62;
    }

    v12 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = type;
    v15 = os_log_type_enabled(gLogObj, type);
    if (!v12)
    {
      if (v15)
      {
        *buf = 136446210;
        v92 = "nw_protocol_common_connected";
        v11 = "%{public}s connected requires a default input handler, no backtrace";
        v38 = v13;
        v39 = v14;
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    if (v15)
    {
      *buf = 136446466;
      v92 = "nw_protocol_common_connected";
      v93 = 2082;
      v94 = v12;
      _os_log_impl(&dword_181A37000, v13, v14, "%{public}s connected requires a default input handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v12);
    if (v8)
    {
LABEL_65:
      v40 = v8;
      goto LABEL_66;
    }

    return;
  }

  v5 = *(v4 + 40);
  v6 = *(a1 + 48);
  if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v4 + 64)) != 0)
  {
    v16 = *(v6 + 88);
    v7 = 0;
    if (v16)
    {
      *(v6 + 88) = v16 + 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v17 = *(a2 + 40);
  v18 = a2;
  if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v18 = *(a2 + 64)) != 0)
  {
    v21 = *(v18 + 88);
    if (v21)
    {
      v19 = 0;
      *(v18 + 88) = v21 + 1;
      v20 = *(v4 + 24);
      if (!v20)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v19 = 0;
      v20 = *(v4 + 24);
      if (!v20)
      {
        goto LABEL_108;
      }
    }
  }

  else
  {
    v19 = 1;
    v20 = *(v4 + 24);
    if (!v20)
    {
      goto LABEL_108;
    }
  }

  v22 = *(v20 + 40);
  if (v22)
  {
    v22(v4, a2);
    goto LABEL_31;
  }

LABEL_108:
  __nwlog_obj();
  v58 = *(v4 + 16);
  *buf = 136446722;
  v92 = "__nw_protocol_connected";
  if (!v58)
  {
    v58 = "invalid";
  }

  v93 = 2082;
  v94 = v58;
  v95 = 2048;
  v96 = v4;
  v59 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v89 = 0;
  if (!__nwlog_fault(v59, &type, &v89))
  {
    goto LABEL_157;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v60 = __nwlog_obj();
    v61 = type;
    if (!os_log_type_enabled(v60, type))
    {
      goto LABEL_157;
    }

    v62 = *(v4 + 16);
    if (!v62)
    {
      v62 = "invalid";
    }

    *buf = 136446722;
    v92 = "__nw_protocol_connected";
    v93 = 2082;
    v94 = v62;
    v95 = 2048;
    v96 = v4;
    v63 = "%{public}s protocol %{public}s (%p) has invalid connected callback";
LABEL_155:
    v80 = v60;
LABEL_156:
    _os_log_impl(&dword_181A37000, v80, v61, v63, buf, 0x20u);
    goto LABEL_157;
  }

  if (v89 != 1)
  {
    v60 = __nwlog_obj();
    v61 = type;
    if (!os_log_type_enabled(v60, type))
    {
      goto LABEL_157;
    }

    v79 = *(v4 + 16);
    if (!v79)
    {
      v79 = "invalid";
    }

    *buf = 136446722;
    v92 = "__nw_protocol_connected";
    v93 = 2082;
    v94 = v79;
    v95 = 2048;
    v96 = v4;
    v63 = "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded";
    goto LABEL_155;
  }

  v64 = __nw_create_backtrace_string();
  v65 = __nwlog_obj();
  v61 = type;
  log = v65;
  v66 = os_log_type_enabled(v65, type);
  if (v64)
  {
    if (v66)
    {
      v67 = *(v4 + 16);
      if (!v67)
      {
        v67 = "invalid";
      }

      *buf = 136446978;
      v92 = "__nw_protocol_connected";
      v93 = 2082;
      v94 = v67;
      v95 = 2048;
      v96 = v4;
      v97 = 2082;
      v98 = v64;
      _os_log_impl(&dword_181A37000, log, v61, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v64);
    goto LABEL_157;
  }

  if (v66)
  {
    v85 = *(v4 + 16);
    if (!v85)
    {
      v85 = "invalid";
    }

    *buf = 136446722;
    v92 = "__nw_protocol_connected";
    v93 = 2082;
    v94 = v85;
    v95 = 2048;
    v96 = v4;
    v63 = "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace";
    v80 = log;
    goto LABEL_156;
  }

LABEL_157:
  if (v59)
  {
    free(v59);
  }

LABEL_31:
  if ((v19 & 1) == 0)
  {
    v23 = *(a2 + 40);
    v24 = a2;
    if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v24 = *(a2 + 64)) != 0)
    {
      v25 = *(v24 + 88);
      if (v25)
      {
        v26 = v25 - 1;
        *(v24 + 88) = v26;
        if (!v26)
        {
          v27 = *(v24 + 64);
          if (v27)
          {
            *(v24 + 64) = 0;
            v27[2](v27);
            _Block_release(v27);
          }

          if (*(v24 + 72))
          {
            v28 = *(v24 + 64);
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

  if ((v7 & 1) == 0)
  {
    v29 = *(v4 + 40);
    if (v29 == &nw_protocol_ref_counted_handle || v29 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
    {
      v30 = *(v4 + 88);
      if (v30)
      {
        v31 = v30 - 1;
        *(v4 + 88) = v31;
        if (!v31)
        {
          v32 = *(v4 + 64);
          if (v32)
          {
            *(v4 + 64) = 0;
            v32[2](v32);
            _Block_release(v32);
          }

          if (*(v4 + 72))
          {
            v33 = *(v4 + 64);
            if (v33)
            {
              _Block_release(v33);
            }
          }

          free(v4);
        }
      }
    }
  }

  if (*(v3 + 32) == a2)
  {
    v34 = *(v3 + 48);
    if (v34)
    {
      v35 = *(v34 + 40);
      v36 = *(v3 + 48);
      if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v36 = *(v34 + 64)) != 0)
      {
        v41 = *(v36 + 88);
        v37 = 0;
        if (v41)
        {
          *(v36 + 88) = v41 + 1;
        }
      }

      else
      {
        v37 = 1;
      }

      v42 = *(v3 + 40);
      v43 = v3;
      if (v42 == &nw_protocol_ref_counted_handle || v42 == &nw_protocol_ref_counted_additional_handle && (v43 = *(v3 + 64)) != 0)
      {
        v46 = *(v43 + 88);
        if (v46)
        {
          v44 = 0;
          *(v43 + 88) = v46 + 1;
          v45 = *(v34 + 24);
          if (!v45)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v44 = 0;
          v45 = *(v34 + 24);
          if (!v45)
          {
            goto LABEL_143;
          }
        }
      }

      else
      {
        v44 = 1;
        v45 = *(v34 + 24);
        if (!v45)
        {
          goto LABEL_143;
        }
      }

      v47 = *(v45 + 40);
      if (v47)
      {
        v47(v34, v3);
LABEL_81:
        if ((v44 & 1) == 0)
        {
          v48 = *(v3 + 40);
          if (v48 == &nw_protocol_ref_counted_handle || v48 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
          {
            v49 = *(v3 + 88);
            if (v49)
            {
              v50 = v49 - 1;
              *(v3 + 88) = v50;
              if (!v50)
              {
                v51 = *(v3 + 64);
                if (v51)
                {
                  *(v3 + 64) = 0;
                  v51[2](v51);
                  _Block_release(v51);
                }

                if (*(v3 + 72))
                {
                  v52 = *(v3 + 64);
                  if (v52)
                  {
                    _Block_release(v52);
                  }
                }

                free(v3);
              }
            }
          }
        }

        if (v37)
        {
          return;
        }

        v53 = *(v34 + 40);
        if (v53 != &nw_protocol_ref_counted_handle)
        {
          if (v53 != &nw_protocol_ref_counted_additional_handle)
          {
            return;
          }

          v34 = *(v34 + 64);
          if (!v34)
          {
            return;
          }
        }

        v54 = *(v34 + 88);
        if (!v54)
        {
          return;
        }

        v55 = v54 - 1;
        *(v34 + 88) = v55;
        if (v55)
        {
          return;
        }

        v56 = *(v34 + 64);
        if (v56)
        {
          *(v34 + 64) = 0;
          v56[2](v56);
          _Block_release(v56);
        }

        if (*(v34 + 72))
        {
          v57 = *(v34 + 64);
          if (v57)
          {
            _Block_release(v57);
          }
        }

        v40 = v34;
LABEL_66:
        free(v40);
        return;
      }

LABEL_143:
      __nwlog_obj();
      v73 = *(v34 + 16);
      *buf = 136446722;
      v92 = "__nw_protocol_connected";
      if (!v73)
      {
        v73 = "invalid";
      }

      v93 = 2082;
      v94 = v73;
      v95 = 2048;
      v96 = v34;
      v74 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v89 = 0;
      if (!__nwlog_fault(v74, &type, &v89))
      {
        goto LABEL_197;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v75 = __nwlog_obj();
        v76 = type;
        if (!os_log_type_enabled(v75, type))
        {
          goto LABEL_197;
        }

        v77 = *(v34 + 16);
        if (!v77)
        {
          v77 = "invalid";
        }

        *buf = 136446722;
        v92 = "__nw_protocol_connected";
        v93 = 2082;
        v94 = v77;
        v95 = 2048;
        v96 = v34;
        v78 = "%{public}s protocol %{public}s (%p) has invalid connected callback";
      }

      else if (v89 == 1)
      {
        v81 = __nw_create_backtrace_string();
        v75 = __nwlog_obj();
        v76 = type;
        v82 = os_log_type_enabled(v75, type);
        if (v81)
        {
          if (v82)
          {
            v83 = *(v34 + 16);
            if (!v83)
            {
              v83 = "invalid";
            }

            *buf = 136446978;
            v92 = "__nw_protocol_connected";
            v93 = 2082;
            v94 = v83;
            v95 = 2048;
            v96 = v34;
            v97 = 2082;
            v98 = v81;
            _os_log_impl(&dword_181A37000, v75, v76, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v81);
          goto LABEL_197;
        }

        if (!v82)
        {
LABEL_197:
          if (v74)
          {
            free(v74);
          }

          goto LABEL_81;
        }

        v87 = *(v34 + 16);
        if (!v87)
        {
          v87 = "invalid";
        }

        *buf = 136446722;
        v92 = "__nw_protocol_connected";
        v93 = 2082;
        v94 = v87;
        v95 = 2048;
        v96 = v34;
        v78 = "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace";
      }

      else
      {
        v75 = __nwlog_obj();
        v76 = type;
        if (!os_log_type_enabled(v75, type))
        {
          goto LABEL_197;
        }

        v86 = *(v34 + 16);
        if (!v86)
        {
          v86 = "invalid";
        }

        *buf = 136446722;
        v92 = "__nw_protocol_connected";
        v93 = 2082;
        v94 = v86;
        v95 = 2048;
        v96 = v34;
        v78 = "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v75, v76, v78, buf, 0x20u);
      goto LABEL_197;
    }

    __nwlog_obj();
    *buf = 136446210;
    v92 = "__nw_protocol_connected";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v89 = 0;
    if (!__nwlog_fault(v8, &type, &v89))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v92 = "__nw_protocol_connected";
        v11 = "%{public}s called with null protocol";
        goto LABEL_62;
      }

LABEL_64:
      if (!v8)
      {
        return;
      }

      goto LABEL_65;
    }

    if (v89 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v92 = "__nw_protocol_connected";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_62;
      }

      goto LABEL_64;
    }

    v70 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v84 = os_log_type_enabled(v9, type);
    if (!v70)
    {
      if (v84)
      {
        *buf = 136446210;
        v92 = "__nw_protocol_connected";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_62;
      }

      goto LABEL_64;
    }

    if (v84)
    {
      *buf = 136446466;
      v92 = "__nw_protocol_connected";
      v93 = 2082;
      v94 = v70;
      v72 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_140;
    }

    goto LABEL_141;
  }
}

uint64_t nw_protocol_common_replace_input_handler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_protocol_common_replace_input_handler";
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v32, &type, &v42))
    {
      goto LABEL_93;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v45 = "nw_protocol_common_replace_input_handler";
      v35 = "%{public}s called with null protocol";
    }

    else if (v42 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v34 = type;
      v37 = os_log_type_enabled(v33, type);
      if (backtrace_string)
      {
        if (v37)
        {
          *buf = 136446466;
          v45 = "nw_protocol_common_replace_input_handler";
          v46 = 2082;
          v47 = backtrace_string;
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_93:
        if (!v32)
        {
          return 0;
        }

        goto LABEL_94;
      }

      if (!v37)
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v45 = "nw_protocol_common_replace_input_handler";
      v35 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v45 = "nw_protocol_common_replace_input_handler";
      v35 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_92;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_protocol_common_replace_input_handler";
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v32, &type, &v42))
    {
      goto LABEL_93;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v42 != 1)
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (!os_log_type_enabled(v33, type))
        {
          goto LABEL_93;
        }

        *buf = 136446210;
        v45 = "nw_protocol_common_replace_input_handler";
        v35 = "%{public}s called with null old_input_protocol, backtrace limit exceeded";
        goto LABEL_92;
      }

      v38 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v34 = type;
      v39 = os_log_type_enabled(v33, type);
      if (!v38)
      {
        if (!v39)
        {
          goto LABEL_93;
        }

        *buf = 136446210;
        v45 = "nw_protocol_common_replace_input_handler";
        v35 = "%{public}s called with null old_input_protocol, no backtrace";
        goto LABEL_92;
      }

      if (v39)
      {
        *buf = 136446466;
        v45 = "nw_protocol_common_replace_input_handler";
        v46 = 2082;
        v47 = v38;
        v40 = "%{public}s called with null old_input_protocol, dumping backtrace:%{public}s";
LABEL_77:
        _os_log_impl(&dword_181A37000, v33, v34, v40, buf, 0x16u);
      }

LABEL_78:
      free(v38);
      if (!v32)
      {
        return 0;
      }

LABEL_94:
      v31 = v32;
      goto LABEL_50;
    }

    v33 = __nwlog_obj();
    v34 = type;
    if (!os_log_type_enabled(v33, type))
    {
      goto LABEL_93;
    }

    *buf = 136446210;
    v45 = "nw_protocol_common_replace_input_handler";
    v35 = "%{public}s called with null old_input_protocol";
LABEL_92:
    _os_log_impl(&dword_181A37000, v33, v34, v35, buf, 0xCu);
    goto LABEL_93;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_protocol_common_replace_input_handler";
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v32, &type, &v42))
    {
      goto LABEL_93;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v45 = "nw_protocol_common_replace_input_handler";
      v35 = "%{public}s called with null new_input_protocol";
      goto LABEL_92;
    }

    if (v42 != 1)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v45 = "nw_protocol_common_replace_input_handler";
      v35 = "%{public}s called with null new_input_protocol, backtrace limit exceeded";
      goto LABEL_92;
    }

    v38 = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v34 = type;
    v41 = os_log_type_enabled(v33, type);
    if (!v38)
    {
      if (!v41)
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v45 = "nw_protocol_common_replace_input_handler";
      v35 = "%{public}s called with null new_input_protocol, no backtrace";
      goto LABEL_92;
    }

    if (v41)
    {
      *buf = 136446466;
      v45 = "nw_protocol_common_replace_input_handler";
      v46 = 2082;
      v47 = v38;
      v40 = "%{public}s called with null new_input_protocol, dumping backtrace:%{public}s";
      goto LABEL_77;
    }

    goto LABEL_78;
  }

  v5 = *(a1 + 48);
  if (v5 != a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = *(a1 + 48);
    *buf = 136446722;
    v45 = "nw_protocol_common_replace_input_handler";
    v46 = 2048;
    v47 = v6;
    v48 = 2048;
    v49 = a2;
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v7, &type, &v42))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v10 = *(a1 + 48);
          *buf = 136446722;
          v45 = "nw_protocol_common_replace_input_handler";
          v46 = 2048;
          v47 = v10;
          v48 = 2048;
          v49 = a2;
          v11 = "%{public}s Old input handler does not match (%p != %p)";
LABEL_47:
          _os_log_impl(&dword_181A37000, v8, v9, v11, buf, 0x20u);
        }
      }

      else if (v42 == 1)
      {
        v26 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        v27 = os_log_type_enabled(gLogObj, type);
        if (v26)
        {
          if (v27)
          {
            v28 = *(a1 + 48);
            *buf = 136446978;
            v45 = "nw_protocol_common_replace_input_handler";
            v46 = 2048;
            v47 = v28;
            v48 = 2048;
            v49 = a2;
            v50 = 2082;
            v51 = v26;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s Old input handler does not match (%p != %p), dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v26);
          goto LABEL_48;
        }

        if (v27)
        {
          v30 = *(a1 + 48);
          *buf = 136446722;
          v45 = "nw_protocol_common_replace_input_handler";
          v46 = 2048;
          v47 = v30;
          v48 = 2048;
          v49 = a2;
          v11 = "%{public}s Old input handler does not match (%p != %p), no backtrace";
          goto LABEL_47;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v29 = *(a1 + 48);
          *buf = 136446722;
          v45 = "nw_protocol_common_replace_input_handler";
          v46 = 2048;
          v47 = v29;
          v48 = 2048;
          v49 = a2;
          v11 = "%{public}s Old input handler does not match (%p != %p), backtrace limit exceeded";
          goto LABEL_47;
        }
      }
    }

LABEL_48:
    if (!v7)
    {
      return 0;
    }

    v31 = v7;
LABEL_50:
    free(v31);
    return 0;
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *(v12 + 40);
    if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v12 = *(v12 + 64)) != 0)
    {
      v14 = *(v12 + 88);
      if (v14)
      {
        v15 = v14 - 1;
        *(v12 + 88) = v15;
        if (!v15)
        {
          v16 = a3;
          v17 = *(v12 + 64);
          if (v17)
          {
            *(v12 + 64) = 0;
            v17[2](v17);
            _Block_release(v17);
          }

          if (*(v12 + 72))
          {
            v18 = *(v12 + 64);
            if (v18)
            {
              _Block_release(v18);
            }
          }

          free(v12);
          v5 = *(a1 + 48);
          a3 = v16;
        }
      }
    }

    *(a2 + 32) = 0;
  }

  if (v5)
  {
    v19 = *(v5 + 40);
    if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v5 + 64)) != 0)
    {
      v20 = *(v5 + 88);
      if (v20)
      {
        v21 = v20 - 1;
        *(v5 + 88) = v21;
        if (!v21)
        {
          v22 = a3;
          v23 = *(v5 + 64);
          if (v23)
          {
            *(v5 + 64) = 0;
            v23[2](v23);
            _Block_release(v23);
          }

          if (*(v5 + 72))
          {
            v24 = *(v5 + 64);
            if (v24)
            {
              _Block_release(v24);
            }
          }

          free(v5);
          a3 = v22;
        }
      }
    }

    *(a1 + 48) = 0;
  }

  return nw_protocol_common_add_input_handler(a1, a3);
}

void nw_protocol_plugin_retry_connected(uint64_t a1, uint64_t a2, void *a3)
{
  v236 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v126 = __nwlog_obj();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v228 = "nw_protocol_plugin_retry_connected";
      v229 = 2048;
      *v230 = a2;
      _os_log_impl(&dword_181A37000, v126, OS_LOG_TYPE_DEBUG, "%{public}s called %p", buf, 0x16u);
    }
  }

  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = *(v6 + 40);
    v8 = *(a2 + 48);
    if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(v6 + 64)) != 0)
    {
      v14 = *(v8 + 88);
      if (v14)
      {
        v9 = 0;
        *(v8 + 88) = v14 + 1;
        if (!a3)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = 0;
        if (!a3)
        {
LABEL_13:
          __nwlog_obj();
          *buf = 136446210;
          v228 = "__nw_protocol_connected";
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v222[0]) = 0;
          v217 = _os_log_send_and_compose_impl();
          if (!__nwlog_fault(v217, type, v222))
          {
            goto LABEL_310;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v15 = __nwlog_obj();
            v16 = type[0];
            if (!os_log_type_enabled(v15, type[0]))
            {
              goto LABEL_310;
            }

            *buf = 136446210;
            v228 = "__nw_protocol_connected";
            v17 = "%{public}s called with null other_protocol";
          }

          else
          {
            if (LOBYTE(v222[0]) == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v146 = __nwlog_obj();
              logb = type[0];
              v147 = os_log_type_enabled(v146, type[0]);
              if (backtrace_string)
              {
                if (v147)
                {
                  *buf = 136446466;
                  v228 = "__nw_protocol_connected";
                  v229 = 2082;
                  *v230 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v146, logb, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
              }

              else if (v147)
              {
                *buf = 136446210;
                v228 = "__nw_protocol_connected";
                v17 = "%{public}s called with null other_protocol, no backtrace";
                v167 = v146;
                v168 = logb;
                goto LABEL_309;
              }

LABEL_310:
              v26 = v217;
              if (!v217)
              {
                goto LABEL_39;
              }

              goto LABEL_38;
            }

            v15 = __nwlog_obj();
            v16 = type[0];
            if (!os_log_type_enabled(v15, type[0]))
            {
              goto LABEL_310;
            }

            *buf = 136446210;
            v228 = "__nw_protocol_connected";
            v17 = "%{public}s called with null other_protocol, backtrace limit exceeded";
          }

          v167 = v15;
          v168 = v16;
LABEL_309:
          _os_log_impl(&dword_181A37000, v167, v168, v17, buf, 0xCu);
          goto LABEL_310;
        }
      }
    }

    else
    {
      v9 = 1;
      if (!a3)
      {
        goto LABEL_13;
      }
    }

    v10 = a3[5];
    v11 = a3;
    if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v11 = a3[8]) != 0)
    {
      v18 = v11[11];
      if (v18)
      {
        v12 = 0;
        v11[11] = v18 + 1;
        v13 = *(v6 + 24);
        if (!v13)
        {
          goto LABEL_217;
        }
      }

      else
      {
        v12 = 0;
        v13 = *(v6 + 24);
        if (!v13)
        {
          goto LABEL_217;
        }
      }
    }

    else
    {
      v12 = 1;
      v13 = *(v6 + 24);
      if (!v13)
      {
        goto LABEL_217;
      }
    }

    v19 = *(v13 + 40);
    if (v19)
    {
      v19(v6, a3);
LABEL_26:
      if ((v12 & 1) != 0 || (v20 = a3[5], v21 = a3, v20 != &nw_protocol_ref_counted_handle) && (v20 != &nw_protocol_ref_counted_additional_handle || (v21 = a3[8]) == 0) || (v22 = *(v21 + 11)) == 0 || (v23 = v22 - 1, (*(v21 + 11) = v23) != 0))
      {
LABEL_39:
        if ((v9 & 1) == 0)
        {
          v27 = *(v6 + 40);
          if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v6 + 64)) != 0)
          {
            v28 = *(v6 + 88);
            if (v28)
            {
              v29 = v28 - 1;
              *(v6 + 88) = v29;
              if (!v29)
              {
                v30 = *(v6 + 64);
                if (v30)
                {
                  *(v6 + 64) = 0;
                  v30[2](v30);
                  _Block_release(v30);
                }

                if (*(v6 + 72))
                {
                  v31 = *(v6 + 64);
                  if (v31)
                  {
                    _Block_release(v31);
                  }
                }

                goto LABEL_50;
              }
            }
          }
        }

        goto LABEL_51;
      }

      v24 = *(v21 + 8);
      if (v24)
      {
        *(v21 + 8) = 0;
        v24[2](v24);
        _Block_release(v24);
      }

      if (v21[72])
      {
        v25 = *(v21 + 8);
        if (v25)
        {
          _Block_release(v25);
        }
      }

      v26 = v21;
LABEL_38:
      free(v26);
      goto LABEL_39;
    }

LABEL_217:
    __nwlog_obj();
    v122 = *(v6 + 16);
    *buf = 136446722;
    v228 = "__nw_protocol_connected";
    if (!v122)
    {
      v122 = "invalid";
    }

    v229 = 2082;
    *v230 = v122;
    *&v230[8] = 2048;
    v231 = v6;
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v222[0]) = 0;
    v219 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault(v219, type, v222))
    {
      goto LABEL_271;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v123 = __nwlog_obj();
      log = type[0];
      if (!os_log_type_enabled(v123, type[0]))
      {
        goto LABEL_271;
      }

      v124 = *(v6 + 16);
      if (!v124)
      {
        v124 = "invalid";
      }

      *buf = 136446722;
      v228 = "__nw_protocol_connected";
      v229 = 2082;
      *v230 = v124;
      *&v230[8] = 2048;
      v231 = v6;
      v125 = "%{public}s protocol %{public}s (%p) has invalid connected callback";
    }

    else
    {
      if (LOBYTE(v222[0]) == 1)
      {
        v130 = __nw_create_backtrace_string();
        loga = __nwlog_obj();
        v209 = type[0];
        v131 = os_log_type_enabled(loga, type[0]);
        if (v130)
        {
          if (v131)
          {
            v132 = *(v6 + 16);
            if (!v132)
            {
              v132 = "invalid";
            }

            *buf = 136446978;
            v228 = "__nw_protocol_connected";
            v229 = 2082;
            *v230 = v132;
            *&v230[8] = 2048;
            v231 = v6;
            v232 = 2082;
            v233 = v130;
            _os_log_impl(&dword_181A37000, loga, v209, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v130);
          goto LABEL_271;
        }

        if (!v131)
        {
LABEL_271:
          if (v219)
          {
            free(v219);
          }

          goto LABEL_26;
        }

        v169 = *(v6 + 16);
        if (!v169)
        {
          v169 = "invalid";
        }

        *buf = 136446722;
        v228 = "__nw_protocol_connected";
        v229 = 2082;
        *v230 = v169;
        *&v230[8] = 2048;
        v231 = v6;
        v125 = "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace";
        v149 = loga;
        v150 = v209;
LABEL_270:
        _os_log_impl(&dword_181A37000, v149, v150, v125, buf, 0x20u);
        goto LABEL_271;
      }

      v123 = __nwlog_obj();
      log = type[0];
      if (!os_log_type_enabled(v123, type[0]))
      {
        goto LABEL_271;
      }

      v148 = *(v6 + 16);
      if (!v148)
      {
        v148 = "invalid";
      }

      *buf = 136446722;
      v228 = "__nw_protocol_connected";
      v229 = 2082;
      *v230 = v148;
      *&v230[8] = 2048;
      v231 = v6;
      v125 = "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded";
    }

    v149 = v123;
    v150 = log;
    goto LABEL_270;
  }

  __nwlog_obj();
  *buf = 136446210;
  v228 = "__nw_protocol_connected";
  v6 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v222[0]) = 0;
  if (__nwlog_fault(v6, type, v222))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v127 = __nwlog_obj();
      v128 = type[0];
      if (!os_log_type_enabled(v127, type[0]))
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v228 = "__nw_protocol_connected";
      v129 = "%{public}s called with null protocol";
    }

    else if (LOBYTE(v222[0]) == 1)
    {
      v143 = __nw_create_backtrace_string();
      v127 = __nwlog_obj();
      v128 = type[0];
      v144 = os_log_type_enabled(v127, type[0]);
      if (v143)
      {
        if (v144)
        {
          *buf = 136446466;
          v228 = "__nw_protocol_connected";
          v229 = 2082;
          *v230 = v143;
          _os_log_impl(&dword_181A37000, v127, v128, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v143);
        if (v6)
        {
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      if (!v144)
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v228 = "__nw_protocol_connected";
      v129 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v127 = __nwlog_obj();
      v128 = type[0];
      if (!os_log_type_enabled(v127, type[0]))
      {
        goto LABEL_347;
      }

      *buf = 136446210;
      v228 = "__nw_protocol_connected";
      v129 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v127, v128, v129, buf, 0xCu);
  }

LABEL_347:
  if (v6)
  {
LABEL_50:
    free(v6);
  }

LABEL_51:
  v32 = *(a2 + 32);
  if (v32 != a3)
  {
    if (gLogDatapath == 1)
    {
      v133 = __nwlog_obj();
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
      {
        v134 = *(a2 + 32);
        v135 = "invalid";
        if (v134 && *(v134 + 16))
        {
          v135 = *(v134 + 16);
        }

        v136 = "invalid";
        if (a3)
        {
          if (a3[2])
          {
            v136 = a3[2];
          }
        }

        *buf = 136447234;
        v228 = "nw_protocol_plugin_retry_connected";
        v229 = 2080;
        *v230 = v135;
        *&v230[8] = 2048;
        v231 = v134;
        v232 = 2080;
        v233 = v136;
        v234 = 2048;
        v235 = a3;
        _os_log_impl(&dword_181A37000, v133, OS_LOG_TYPE_DEBUG, "%{public}s connected protocol %s: %p is not our output_handler %s: %p, ignoring", buf, 0x34u);
      }
    }

    return;
  }

  if ((*(a1 + 108) & 0x100) == 0)
  {
    goto LABEL_98;
  }

  if (a3 && ((v33 = *(v32 + 40), v34 = *(a2 + 32), v33 == &nw_protocol_ref_counted_handle) || v33 == &nw_protocol_ref_counted_additional_handle && (v34 = *(v32 + 64)) != 0))
  {
    v36 = *(v34 + 88);
    v35 = 0;
    if (v36)
    {
      *(v34 + 88) = v36 + 1;
    }
  }

  else
  {
    v35 = 1;
  }

  v37 = *(a2 + 40);
  v38 = a2;
  if (v37 == &nw_protocol_ref_counted_handle || v37 == &nw_protocol_ref_counted_additional_handle && (v38 = *(a2 + 64)) != 0)
  {
    v64 = *(v38 + 88);
    if (v64)
    {
      v39 = 0;
      *(v38 + 88) = v64 + 1;
      if (!a3)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v39 = 0;
      if (!a3)
      {
        goto LABEL_107;
      }
    }
  }

  else
  {
    v39 = 1;
    if (!a3)
    {
LABEL_107:
      __nwlog_obj();
      v65 = 0;
      v66 = "invalid";
      goto LABEL_276;
    }
  }

  v40 = *(v32 + 24);
  if (v40)
  {
    v41 = *(v40 + 216);
    if (v41)
    {
      v42 = v41(v32, a2);
      if (v39)
      {
        goto LABEL_79;
      }

      goto LABEL_68;
    }
  }

  __nwlog_obj();
  v66 = "invalid";
  if (*(v32 + 16))
  {
    v66 = *(v32 + 16);
  }

  v65 = a3;
LABEL_276:
  *buf = 136446722;
  v228 = "__nw_protocol_waiting_for_output";
  v229 = 2082;
  *v230 = v66;
  *&v230[8] = 2048;
  v231 = v65;
  v151 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v222[0]) = 0;
  v220 = v151;
  if (!__nwlog_fault(v151, type, v222))
  {
    goto LABEL_336;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v152 = __nwlog_obj();
    logc = type[0];
    if (!os_log_type_enabled(v152, type[0]))
    {
      goto LABEL_336;
    }

    v153 = "invalid";
    if (a3 && *(v32 + 16))
    {
      v153 = *(v32 + 16);
    }

    *buf = 136446722;
    v228 = "__nw_protocol_waiting_for_output";
    v229 = 2082;
    *v230 = v153;
    *&v230[8] = 2048;
    v231 = a3;
    v154 = "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback";
LABEL_334:
    v179 = v152;
    v180 = logc;
LABEL_335:
    _os_log_impl(&dword_181A37000, v179, v180, v154, buf, 0x20u);
    goto LABEL_336;
  }

  if (LOBYTE(v222[0]) != 1)
  {
    v152 = __nwlog_obj();
    logc = type[0];
    if (!os_log_type_enabled(v152, type[0]))
    {
      goto LABEL_336;
    }

    v178 = "invalid";
    if (a3 && *(v32 + 16))
    {
      v178 = *(v32 + 16);
    }

    *buf = 136446722;
    v228 = "__nw_protocol_waiting_for_output";
    v229 = 2082;
    *v230 = v178;
    *&v230[8] = 2048;
    v231 = a3;
    v154 = "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback, backtrace limit exceeded";
    goto LABEL_334;
  }

  v161 = __nw_create_backtrace_string();
  logd = __nwlog_obj();
  v210 = type[0];
  v162 = os_log_type_enabled(logd, type[0]);
  if (v161)
  {
    if (v162)
    {
      v163 = "invalid";
      if (a3 && *(v32 + 16))
      {
        v163 = *(v32 + 16);
      }

      *buf = 136446978;
      v228 = "__nw_protocol_waiting_for_output";
      v229 = 2082;
      *v230 = v163;
      *&v230[8] = 2048;
      v231 = a3;
      v232 = 2082;
      v233 = v161;
      _os_log_impl(&dword_181A37000, logd, v210, "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v161);
  }

  else if (v162)
  {
    v190 = "invalid";
    if (a3 && *(v32 + 16))
    {
      v190 = *(v32 + 16);
    }

    *buf = 136446722;
    v228 = "__nw_protocol_waiting_for_output";
    v229 = 2082;
    *v230 = v190;
    *&v230[8] = 2048;
    v231 = a3;
    v154 = "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback, no backtrace";
    v179 = logd;
    v180 = v210;
    goto LABEL_335;
  }

LABEL_336:
  if (v220)
  {
    free(v220);
  }

  v42 = 0;
  if ((v39 & 1) == 0)
  {
LABEL_68:
    v43 = *(a2 + 40);
    v44 = a2;
    if (v43 == &nw_protocol_ref_counted_handle || v43 == &nw_protocol_ref_counted_additional_handle && (v44 = *(a2 + 64)) != 0)
    {
      v45 = *(v44 + 88);
      if (v45)
      {
        v46 = v45 - 1;
        *(v44 + 88) = v46;
        if (!v46)
        {
          v218 = v42;
          v47 = *(v44 + 64);
          if (v47)
          {
            *(v44 + 64) = 0;
            v47[2](v47);
            _Block_release(v47);
          }

          if (*(v44 + 72))
          {
            v48 = *(v44 + 64);
            if (v48)
            {
              _Block_release(v48);
            }
          }

          free(v44);
          v42 = v218;
        }
      }
    }
  }

LABEL_79:
  if (a3)
  {
    v49 = v35;
  }

  else
  {
    v49 = 1;
  }

  if ((v49 & 1) == 0)
  {
    v50 = *(v32 + 40);
    if (v50 == &nw_protocol_ref_counted_handle || v50 == &nw_protocol_ref_counted_additional_handle && (v32 = *(v32 + 64)) != 0)
    {
      v51 = *(v32 + 88);
      if (v51)
      {
        v52 = v51 - 1;
        *(v32 + 88) = v52;
        if (!v52)
        {
          v53 = v42;
          v54 = *(v32 + 64);
          if (v54)
          {
            *(v32 + 64) = 0;
            v54[2](v54);
            _Block_release(v54);
          }

          if (*(v32 + 72))
          {
            v55 = *(v32 + 64);
            if (v55)
            {
              _Block_release(v55);
            }
          }

          free(v32);
          v42 = v53;
        }
      }
    }
  }

  if (v42)
  {
    if (gLogDatapath == 1)
    {
      v56 = __nwlog_obj();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v228 = "nw_protocol_plugin_retry_connected";
        _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s Dropping early connected event", buf, 0xCu);
      }
    }

    return;
  }

LABEL_98:
  *(a1 + 72) = 0;
  if (gLogDatapath == 1)
  {
    v155 = __nwlog_obj();
    if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
    {
      v156 = (*(a1 + 108) >> 4) & 1;
      *buf = 136446466;
      v228 = "nw_protocol_plugin_retry_send_output_frames";
      v229 = 1024;
      *v230 = v156;
      _os_log_impl(&dword_181A37000, v155, OS_LOG_TYPE_DEBUG, "%{public}s reissuing %{BOOL}d", buf, 0x12u);
    }
  }

  v57 = *(a1 + 108);
  if ((v57 & 0x10) == 0)
  {
    goto LABEL_174;
  }

  *(a1 + 108) = v57 & 0xFFEF;
  if (!*(a1 + 84))
  {
    goto LABEL_174;
  }

  v222[0] = 0;
  v222[1] = v222;
  v58 = *(a1 + 76);
  v59 = *(a1 + 80);
  v60 = *(a2 + 40);
  v61 = *(a2 + 48);
  v62 = a2;
  if (v60 == &nw_protocol_ref_counted_handle || v60 == &nw_protocol_ref_counted_additional_handle && (v62 = *(a2 + 64)) != 0)
  {
    v67 = *(v62 + 88);
    v63 = 0;
    if (v67)
    {
      *(v62 + 88) = v67 + 1;
    }
  }

  else
  {
    v63 = 1;
  }

  if (!v61)
  {
    __nwlog_obj();
    *buf = 136446210;
    v228 = "__nw_protocol_get_output_frames";
    v182 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v226 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v182, type, &v226))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v183 = __nwlog_obj();
        v184 = type[0];
        if (os_log_type_enabled(v183, type[0]))
        {
          *buf = 136446210;
          v228 = "__nw_protocol_get_output_frames";
          v185 = "%{public}s called with null input_protocol";
LABEL_421:
          _os_log_impl(&dword_181A37000, v183, v184, v185, buf, 0xCu);
        }
      }

      else if (v226 == OS_LOG_TYPE_INFO)
      {
        v192 = __nw_create_backtrace_string();
        v183 = __nwlog_obj();
        v184 = type[0];
        v193 = os_log_type_enabled(v183, type[0]);
        if (v192)
        {
          if (v193)
          {
            *buf = 136446466;
            v228 = "__nw_protocol_get_output_frames";
            v229 = 2082;
            *v230 = v192;
            _os_log_impl(&dword_181A37000, v183, v184, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v192);
          goto LABEL_422;
        }

        if (v193)
        {
          *buf = 136446210;
          v228 = "__nw_protocol_get_output_frames";
          v185 = "%{public}s called with null input_protocol, no backtrace";
          goto LABEL_421;
        }
      }

      else
      {
        v183 = __nwlog_obj();
        v184 = type[0];
        if (os_log_type_enabled(v183, type[0]))
        {
          *buf = 136446210;
          v228 = "__nw_protocol_get_output_frames";
          v185 = "%{public}s called with null input_protocol, backtrace limit exceeded";
          goto LABEL_421;
        }
      }
    }

LABEL_422:
    if (v182)
    {
      free(v182);
    }

    v74 = 1;
    goto LABEL_134;
  }

  v68 = *(v61 + 40);
  v69 = v61;
  if (v68 == &nw_protocol_ref_counted_handle || v68 == &nw_protocol_ref_counted_additional_handle && (v69 = *(v61 + 64)) != 0)
  {
    v71 = *(v69 + 88);
    v70 = 0;
    if (v71)
    {
      *(v69 + 88) = v71 + 1;
    }
  }

  else
  {
    v70 = 1;
  }

  v72 = *(a2 + 24);
  if (v72)
  {
    v73 = *(v72 + 88);
    if (v73)
    {
      v74 = v73(a2, v61, v58, v59) == 0;
      if (v70)
      {
        goto LABEL_134;
      }

      goto LABEL_123;
    }
  }

  __nwlog_obj();
  v170 = *(a2 + 16);
  *buf = 136446722;
  v228 = "__nw_protocol_get_output_frames";
  if (!v170)
  {
    v170 = "invalid";
  }

  v229 = 2082;
  *v230 = v170;
  *&v230[8] = 2048;
  v231 = a2;
  v171 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v226 = OS_LOG_TYPE_DEFAULT;
  v221 = v171;
  if (!__nwlog_fault(v171, type, &v226))
  {
    goto LABEL_387;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v172 = __nwlog_obj();
    v173 = type[0];
    if (!os_log_type_enabled(v172, type[0]))
    {
      goto LABEL_387;
    }

    v174 = *(a2 + 16);
    if (!v174)
    {
      v174 = "invalid";
    }

    *buf = 136446722;
    v228 = "__nw_protocol_get_output_frames";
    v229 = 2082;
    *v230 = v174;
    *&v230[8] = 2048;
    v231 = a2;
    v175 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback";
LABEL_385:
    v195 = v172;
LABEL_386:
    _os_log_impl(&dword_181A37000, v195, v173, v175, buf, 0x20u);
    goto LABEL_387;
  }

  if (v226 != OS_LOG_TYPE_INFO)
  {
    v172 = __nwlog_obj();
    v173 = type[0];
    if (!os_log_type_enabled(v172, type[0]))
    {
      goto LABEL_387;
    }

    v194 = *(a2 + 16);
    if (!v194)
    {
      v194 = "invalid";
    }

    *buf = 136446722;
    v228 = "__nw_protocol_get_output_frames";
    v229 = 2082;
    *v230 = v194;
    *&v230[8] = 2048;
    v231 = a2;
    v175 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, backtrace limit exceeded";
    goto LABEL_385;
  }

  v186 = __nw_create_backtrace_string();
  v187 = __nwlog_obj();
  v173 = type[0];
  loge = v187;
  v188 = os_log_type_enabled(v187, type[0]);
  if (v186)
  {
    if (v188)
    {
      v189 = *(a2 + 16);
      if (!v189)
      {
        v189 = "invalid";
      }

      *buf = 136446978;
      v228 = "__nw_protocol_get_output_frames";
      v229 = 2082;
      *v230 = v189;
      *&v230[8] = 2048;
      v231 = a2;
      v232 = 2082;
      v233 = v186;
      _os_log_impl(&dword_181A37000, loge, v173, "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v186);
  }

  else if (v188)
  {
    v202 = *(a2 + 16);
    if (!v202)
    {
      v202 = "invalid";
    }

    *buf = 136446722;
    v228 = "__nw_protocol_get_output_frames";
    v229 = 2082;
    *v230 = v202;
    *&v230[8] = 2048;
    v231 = a2;
    v175 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, no backtrace";
    v195 = loge;
    goto LABEL_386;
  }

LABEL_387:
  if (v221)
  {
    free(v221);
  }

  v74 = 1;
  if ((v70 & 1) == 0)
  {
LABEL_123:
    v75 = *(v61 + 40);
    if (v75 == &nw_protocol_ref_counted_handle || v75 == &nw_protocol_ref_counted_additional_handle && (v61 = *(v61 + 64)) != 0)
    {
      v76 = *(v61 + 88);
      if (v76)
      {
        v77 = v76 - 1;
        *(v61 + 88) = v77;
        if (!v77)
        {
          v78 = *(v61 + 64);
          if (v78)
          {
            *(v61 + 64) = 0;
            v78[2](v78);
            _Block_release(v78);
          }

          if (*(v61 + 72))
          {
            v79 = *(v61 + 64);
            if (v79)
            {
              _Block_release(v79);
            }
          }

          free(v61);
        }
      }
    }
  }

LABEL_134:
  if (a2)
  {
    v80 = v63;
  }

  else
  {
    v80 = 1;
  }

  if ((v80 & 1) == 0)
  {
    v81 = *(a2 + 40);
    v82 = a2;
    if (v81 == &nw_protocol_ref_counted_handle || v81 == &nw_protocol_ref_counted_additional_handle && (v82 = *(a2 + 64)) != 0)
    {
      v83 = *(v82 + 88);
      if (v83)
      {
        v84 = v83 - 1;
        *(v82 + 88) = v84;
        if (!v84)
        {
          v85 = *(v82 + 64);
          if (v85)
          {
            *(v82 + 64) = 0;
            v85[2](v85);
            _Block_release(v85);
          }

          if (*(v82 + 72))
          {
            v86 = *(v82 + 64);
            if (v86)
            {
              _Block_release(v86);
            }
          }

          free(v82);
        }
      }
    }
  }

  if (v222[0])
  {
    if (v74)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v87 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v228 = "nw_protocol_plugin_retry_send_output_frames";
        _os_log_impl(&dword_181A37000, v87, OS_LOG_TYPE_ERROR, "%{public}s Output frames is not empty but returned frame count is 0", buf, 0xCu);
      }

      goto LABEL_174;
    }

    if ((*(*(a1 + 16) + 16))(*(a1 + 16), v222))
    {
      nw::share(type, a2);
      v92 = *(a2 + 24);
      if (v92)
      {
        v93 = *(v92 + 96);
        if (v93)
        {
          v93(a2, v222);
LABEL_159:
          if (v225)
          {
            v94 = *type;
            if (*type)
            {
              v95 = *(*type + 40);
              if (v95 == &nw_protocol_ref_counted_handle || v95 == &nw_protocol_ref_counted_additional_handle && (v94 = *(*type + 64)) != 0)
              {
                v96 = *(v94 + 88);
                if (v96)
                {
                  v97 = v96 - 1;
                  *(v94 + 88) = v97;
                  if (!v97)
                  {
                    v98 = *(v94 + 64);
                    if (v98)
                    {
                      *(v94 + 64) = 0;
                      v98[2](v98);
                      _Block_release(v98);
                    }

                    if (*(v94 + 72))
                    {
                      v99 = *(v94 + 64);
                      if (v99)
                      {
                        _Block_release(v99);
                      }
                    }

                    free(v94);
                  }
                }
              }
            }
          }

          goto LABEL_174;
        }
      }

      __nwlog_obj();
      v196 = *(a2 + 16);
      *buf = 136446722;
      v228 = "__nw_protocol_finalize_output_frames";
      if (!v196)
      {
        v196 = "invalid";
      }

      v229 = 2082;
      *v230 = v196;
      *&v230[8] = 2048;
      v231 = a2;
      v197 = _os_log_send_and_compose_impl();
      v226 = OS_LOG_TYPE_ERROR;
      v223 = 0;
      if (__nwlog_fault(v197, &v226, &v223))
      {
        if (v226 == OS_LOG_TYPE_FAULT)
        {
          v198 = __nwlog_obj();
          v199 = v226;
          if (!os_log_type_enabled(v198, v226))
          {
            goto LABEL_434;
          }

          v200 = *(a2 + 16);
          if (!v200)
          {
            v200 = "invalid";
          }

          *buf = 136446722;
          v228 = "__nw_protocol_finalize_output_frames";
          v229 = 2082;
          *v230 = v200;
          *&v230[8] = 2048;
          v231 = a2;
          v201 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback";
          goto LABEL_433;
        }

        if (v223 != 1)
        {
          v198 = __nwlog_obj();
          v199 = v226;
          if (!os_log_type_enabled(v198, v226))
          {
            goto LABEL_434;
          }

          v207 = *(a2 + 16);
          if (!v207)
          {
            v207 = "invalid";
          }

          *buf = 136446722;
          v228 = "__nw_protocol_finalize_output_frames";
          v229 = 2082;
          *v230 = v207;
          *&v230[8] = 2048;
          v231 = a2;
          v201 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded";
          goto LABEL_433;
        }

        v204 = __nw_create_backtrace_string();
        v198 = __nwlog_obj();
        v199 = v226;
        v205 = os_log_type_enabled(v198, v226);
        if (v204)
        {
          if (v205)
          {
            v206 = *(a2 + 16);
            if (!v206)
            {
              v206 = "invalid";
            }

            *buf = 136446978;
            v228 = "__nw_protocol_finalize_output_frames";
            v229 = 2082;
            *v230 = v206;
            *&v230[8] = 2048;
            v231 = a2;
            v232 = 2082;
            v233 = v204;
            _os_log_impl(&dword_181A37000, v198, v199, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v204);
          goto LABEL_434;
        }

        if (v205)
        {
          v208 = *(a2 + 16);
          if (!v208)
          {
            v208 = "invalid";
          }

          *buf = 136446722;
          v228 = "__nw_protocol_finalize_output_frames";
          v229 = 2082;
          *v230 = v208;
          *&v230[8] = 2048;
          v231 = a2;
          v201 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace";
LABEL_433:
          _os_log_impl(&dword_181A37000, v198, v199, v201, buf, 0x20u);
        }
      }

LABEL_434:
      if (v197)
      {
        free(v197);
      }

      goto LABEL_159;
    }

    if (gLogDatapath == 1)
    {
      v203 = __nwlog_obj();
      if (os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v228 = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v203, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    nw_frame_array_finalize(v222, 1, 0);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v88 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v89 = *(a1 + 76);
      v90 = *(a1 + 80);
      v91 = *(a1 + 84);
      *buf = 136446978;
      v228 = "nw_protocol_plugin_retry_send_output_frames";
      v229 = 1024;
      *v230 = v89;
      *&v230[4] = 1024;
      *&v230[6] = v90;
      LOWORD(v231) = 1024;
      *(&v231 + 2) = v91;
      _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_ERROR, "%{public}s Asked for %u minimum bytes, %u maximum bytes, %u frames but received no frames", buf, 0x1Eu);
    }
  }

LABEL_174:
  v100 = *(a2 + 48);
  if (!v100)
  {
    __nwlog_obj();
    *buf = 136446210;
    v228 = "__nw_protocol_connected";
    v157 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v222[0]) = 0;
    if (__nwlog_fault(v157, type, v222))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v158 = __nwlog_obj();
        v159 = type[0];
        if (os_log_type_enabled(v158, type[0]))
        {
          *buf = 136446210;
          v228 = "__nw_protocol_connected";
          v160 = "%{public}s called with null protocol";
LABEL_401:
          _os_log_impl(&dword_181A37000, v158, v159, v160, buf, 0xCu);
        }
      }

      else if (LOBYTE(v222[0]) == 1)
      {
        v176 = __nw_create_backtrace_string();
        v158 = __nwlog_obj();
        v159 = type[0];
        v177 = os_log_type_enabled(v158, type[0]);
        if (v176)
        {
          if (v177)
          {
            *buf = 136446466;
            v228 = "__nw_protocol_connected";
            v229 = 2082;
            *v230 = v176;
            _os_log_impl(&dword_181A37000, v158, v159, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v176);
          goto LABEL_402;
        }

        if (v177)
        {
          *buf = 136446210;
          v228 = "__nw_protocol_connected";
          v160 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_401;
        }
      }

      else
      {
        v158 = __nwlog_obj();
        v159 = type[0];
        if (os_log_type_enabled(v158, type[0]))
        {
          *buf = 136446210;
          v228 = "__nw_protocol_connected";
          v160 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_401;
        }
      }
    }

LABEL_402:
    if (!v157)
    {
      return;
    }

    v121 = v157;
LABEL_216:
    free(v121);
    return;
  }

  v101 = *(v100 + 40);
  v102 = *(a2 + 48);
  if (v101 == &nw_protocol_ref_counted_handle || v101 == &nw_protocol_ref_counted_additional_handle && (v102 = *(v100 + 64)) != 0)
  {
    v104 = *(v102 + 88);
    v103 = 0;
    if (v104)
    {
      *(v102 + 88) = v104 + 1;
    }
  }

  else
  {
    v103 = 1;
  }

  v105 = *(a2 + 40);
  v106 = a2;
  if (v105 == &nw_protocol_ref_counted_handle || v105 == &nw_protocol_ref_counted_additional_handle && (v106 = *(a2 + 64)) != 0)
  {
    v109 = *(v106 + 88);
    if (v109)
    {
      v107 = 0;
      *(v106 + 88) = v109 + 1;
      v108 = *(v100 + 24);
      if (!v108)
      {
        goto LABEL_246;
      }
    }

    else
    {
      v107 = 0;
      v108 = *(v100 + 24);
      if (!v108)
      {
        goto LABEL_246;
      }
    }
  }

  else
  {
    v107 = 1;
    v108 = *(v100 + 24);
    if (!v108)
    {
      goto LABEL_246;
    }
  }

  v110 = *(v108 + 40);
  if (v110)
  {
    v110(v100, a2);
    goto LABEL_192;
  }

LABEL_246:
  __nwlog_obj();
  v137 = *(v100 + 16);
  *buf = 136446722;
  v228 = "__nw_protocol_connected";
  if (!v137)
  {
    v137 = "invalid";
  }

  v229 = 2082;
  *v230 = v137;
  *&v230[8] = 2048;
  v231 = v100;
  v138 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v222[0]) = 0;
  if (!__nwlog_fault(v138, type, v222))
  {
    goto LABEL_374;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v139 = __nwlog_obj();
    v140 = type[0];
    if (!os_log_type_enabled(v139, type[0]))
    {
      goto LABEL_374;
    }

    v141 = *(v100 + 16);
    if (!v141)
    {
      v141 = "invalid";
    }

    *buf = 136446722;
    v228 = "__nw_protocol_connected";
    v229 = 2082;
    *v230 = v141;
    *&v230[8] = 2048;
    v231 = v100;
    v142 = "%{public}s protocol %{public}s (%p) has invalid connected callback";
    goto LABEL_373;
  }

  if (LOBYTE(v222[0]) != 1)
  {
    v139 = __nwlog_obj();
    v140 = type[0];
    if (!os_log_type_enabled(v139, type[0]))
    {
      goto LABEL_374;
    }

    v181 = *(v100 + 16);
    if (!v181)
    {
      v181 = "invalid";
    }

    *buf = 136446722;
    v228 = "__nw_protocol_connected";
    v229 = 2082;
    *v230 = v181;
    *&v230[8] = 2048;
    v231 = v100;
    v142 = "%{public}s protocol %{public}s (%p) has invalid connected callback, backtrace limit exceeded";
    goto LABEL_373;
  }

  v164 = __nw_create_backtrace_string();
  v139 = __nwlog_obj();
  v140 = type[0];
  v165 = os_log_type_enabled(v139, type[0]);
  if (v164)
  {
    if (v165)
    {
      v166 = *(v100 + 16);
      if (!v166)
      {
        v166 = "invalid";
      }

      *buf = 136446978;
      v228 = "__nw_protocol_connected";
      v229 = 2082;
      *v230 = v166;
      *&v230[8] = 2048;
      v231 = v100;
      v232 = 2082;
      v233 = v164;
      _os_log_impl(&dword_181A37000, v139, v140, "%{public}s protocol %{public}s (%p) has invalid connected callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v164);
    goto LABEL_374;
  }

  if (v165)
  {
    v191 = *(v100 + 16);
    if (!v191)
    {
      v191 = "invalid";
    }

    *buf = 136446722;
    v228 = "__nw_protocol_connected";
    v229 = 2082;
    *v230 = v191;
    *&v230[8] = 2048;
    v231 = v100;
    v142 = "%{public}s protocol %{public}s (%p) has invalid connected callback, no backtrace";
LABEL_373:
    _os_log_impl(&dword_181A37000, v139, v140, v142, buf, 0x20u);
  }

LABEL_374:
  if (v138)
  {
    free(v138);
  }

LABEL_192:
  if ((v107 & 1) == 0)
  {
    v111 = *(a2 + 40);
    if (v111 == &nw_protocol_ref_counted_handle || v111 == &nw_protocol_ref_counted_additional_handle && (a2 = *(a2 + 64)) != 0)
    {
      v112 = *(a2 + 88);
      if (v112)
      {
        v113 = v112 - 1;
        *(a2 + 88) = v113;
        if (!v113)
        {
          v114 = *(a2 + 64);
          if (v114)
          {
            *(a2 + 64) = 0;
            v114[2](v114);
            _Block_release(v114);
          }

          if (*(a2 + 72))
          {
            v115 = *(a2 + 64);
            if (v115)
            {
              _Block_release(v115);
            }
          }

          free(a2);
        }
      }
    }
  }

  if ((v103 & 1) == 0)
  {
    v116 = *(v100 + 40);
    if (v116 == &nw_protocol_ref_counted_handle || v116 == &nw_protocol_ref_counted_additional_handle && (v100 = *(v100 + 64)) != 0)
    {
      v117 = *(v100 + 88);
      if (v117)
      {
        v118 = v117 - 1;
        *(v100 + 88) = v118;
        if (!v118)
        {
          v119 = *(v100 + 64);
          if (v119)
          {
            *(v100 + 64) = 0;
            v119[2](v119);
            _Block_release(v119);
          }

          if (*(v100 + 72))
          {
            v120 = *(v100 + 64);
            if (v120)
            {
              _Block_release(v120);
            }
          }

          v121 = v100;
          goto LABEL_216;
        }
      }
    }
  }
}

uint64_t nw_protocol_common_waiting_for_output(void *a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_protocol_common_waiting_for_output";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v7, &type, &v52))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v55 = "nw_protocol_common_waiting_for_output";
      v10 = "%{public}s called with null protocol";
      goto LABEL_55;
    }

    if (v52 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v55 = "nw_protocol_common_waiting_for_output";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v47 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v47)
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v55 = "nw_protocol_common_waiting_for_output";
      v10 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_55;
    }

    if (v47)
    {
      *buf = 136446466;
      v55 = "nw_protocol_common_waiting_for_output";
      v56 = 2082;
      v57 = backtrace_string;
      v48 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_94:
      _os_log_impl(&dword_181A37000, v8, v9, v48, buf, 0x16u);
    }

LABEL_95:
    free(backtrace_string);
    goto LABEL_57;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_protocol_common_waiting_for_output";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v7, &type, &v52))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v55 = "nw_protocol_common_waiting_for_output";
      v10 = "%{public}s called with null other_protocol";
      goto LABEL_55;
    }

    if (v52 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v55 = "nw_protocol_common_waiting_for_output";
      v10 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v49 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v49)
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v55 = "nw_protocol_common_waiting_for_output";
      v10 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_55;
    }

    if (v49)
    {
      *buf = 136446466;
      v55 = "nw_protocol_common_waiting_for_output";
      v56 = 2082;
      v57 = backtrace_string;
      v48 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_94;
    }

    goto LABEL_95;
  }

  v2 = a1;
  v3 = a1[4];
  if (v3)
  {
    v4 = *(v3 + 40);
    v5 = a1[4];
    if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = *(v3 + 64)) != 0)
    {
      v15 = *(v5 + 88);
      v6 = 0;
      if (v15)
      {
        *(v5 + 88) = v15 + 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v16 = a1[5];
    v17 = a1;
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = a1[8]) != 0)
    {
      v20 = v17[11];
      if (v20)
      {
        v18 = 0;
        v17[11] = v20 + 1;
        v19 = *(v3 + 24);
        if (!v19)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v18 = 0;
        v19 = *(v3 + 24);
        if (!v19)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      v18 = 1;
      v19 = *(v3 + 24);
      if (!v19)
      {
        goto LABEL_63;
      }
    }

    v21 = *(v19 + 216);
    if (v21)
    {
      result = v21(v3, a1);
      if (v18)
      {
LABEL_41:
        if ((v6 & 1) == 0)
        {
          v29 = *(v3 + 40);
          if (v29 == &nw_protocol_ref_counted_handle || v29 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
          {
            v30 = *(v3 + 88);
            if (v30)
            {
              v31 = v30 - 1;
              *(v3 + 88) = v31;
              if (!v31)
              {
                v32 = result;
                v33 = *(v3 + 64);
                if (v33)
                {
                  *(v3 + 64) = 0;
                  v33[2](v33);
                  _Block_release(v33);
                }

                if (*(v3 + 72))
                {
                  v34 = *(v3 + 64);
                  if (v34)
                  {
                    _Block_release(v34);
                  }
                }

                free(v3);
                return v32;
              }
            }
          }
        }

        return result;
      }

LABEL_30:
      v23 = v2[5];
      if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
      {
        v24 = v2[11];
        if (v24)
        {
          v25 = v24 - 1;
          v2[11] = v25;
          if (!v25)
          {
            v26 = result;
            v27 = v2[8];
            if (v27)
            {
              v2[8] = 0;
              v27[2](v27);
              _Block_release(v27);
            }

            if (v2[9])
            {
              v28 = v2[8];
              if (v28)
              {
                _Block_release(v28);
              }
            }

            free(v2);
            result = v26;
          }
        }
      }

      goto LABEL_41;
    }

LABEL_63:
    __nwlog_obj();
    v37 = *(v3 + 16);
    *buf = 136446722;
    v55 = "__nw_protocol_waiting_for_output";
    if (!v37)
    {
      v37 = "invalid";
    }

    v56 = 2082;
    v57 = v37;
    v58 = 2048;
    v59 = v3;
    v38 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (__nwlog_fault(v38, &type, &v52))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v40 = type;
        if (!os_log_type_enabled(v39, type))
        {
          goto LABEL_109;
        }

        v41 = *(v3 + 16);
        if (!v41)
        {
          v41 = "invalid";
        }

        *buf = 136446722;
        v55 = "__nw_protocol_waiting_for_output";
        v56 = 2082;
        v57 = v41;
        v58 = 2048;
        v59 = v3;
        v42 = "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback";
LABEL_108:
        _os_log_impl(&dword_181A37000, v39, v40, v42, buf, 0x20u);
        goto LABEL_109;
      }

      if (v52 != 1)
      {
        v39 = __nwlog_obj();
        v40 = type;
        if (!os_log_type_enabled(v39, type))
        {
          goto LABEL_109;
        }

        v50 = *(v3 + 16);
        if (!v50)
        {
          v50 = "invalid";
        }

        *buf = 136446722;
        v55 = "__nw_protocol_waiting_for_output";
        v56 = 2082;
        v57 = v50;
        v58 = 2048;
        v59 = v3;
        v42 = "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback, backtrace limit exceeded";
        goto LABEL_108;
      }

      v43 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type;
      v44 = os_log_type_enabled(v39, type);
      if (!v43)
      {
        if (!v44)
        {
          goto LABEL_109;
        }

        v51 = *(v3 + 16);
        if (!v51)
        {
          v51 = "invalid";
        }

        *buf = 136446722;
        v55 = "__nw_protocol_waiting_for_output";
        v56 = 2082;
        v57 = v51;
        v58 = 2048;
        v59 = v3;
        v42 = "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback, no backtrace";
        goto LABEL_108;
      }

      if (v44)
      {
        v45 = *(v3 + 16);
        if (!v45)
        {
          v45 = "invalid";
        }

        *buf = 136446978;
        v55 = "__nw_protocol_waiting_for_output";
        v56 = 2082;
        v57 = v45;
        v58 = 2048;
        v59 = v3;
        v60 = 2082;
        v61 = v43;
        _os_log_impl(&dword_181A37000, v39, v40, "%{public}s protocol %{public}s (%p) has invalid waiting_for_output callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v43);
    }

LABEL_109:
    if (v38)
    {
      free(v38);
    }

    result = 0;
    if (v18)
    {
      goto LABEL_41;
    }

    goto LABEL_30;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v55 = "nw_protocol_common_waiting_for_output";
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v52 = 0;
  if (__nwlog_fault(v7, &type, &v52))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v55 = "nw_protocol_common_waiting_for_output";
        v10 = "%{public}s waiting_for_output requires an output handler";
LABEL_55:
        v35 = v8;
        v36 = v9;
LABEL_56:
        _os_log_impl(&dword_181A37000, v35, v36, v10, buf, 0xCu);
      }
    }

    else if (v52 == 1)
    {
      v11 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      v14 = os_log_type_enabled(gLogObj, type);
      if (v11)
      {
        if (v14)
        {
          *buf = 136446466;
          v55 = "nw_protocol_common_waiting_for_output";
          v56 = 2082;
          v57 = v11;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s waiting_for_output requires an output handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v11);
        goto LABEL_57;
      }

      if (v14)
      {
        *buf = 136446210;
        v55 = "nw_protocol_common_waiting_for_output";
        v10 = "%{public}s waiting_for_output requires an output handler, no backtrace";
        v35 = v12;
        v36 = v13;
        goto LABEL_56;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v55 = "nw_protocol_common_waiting_for_output";
        v10 = "%{public}s waiting_for_output requires an output handler, backtrace limit exceeded";
        goto LABEL_55;
      }
    }
  }

LABEL_57:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

void nw_protocol_common_get_message_properties(void *a1, uint64_t a2, uint64_t a3)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_protocol_common_get_message_properties";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v4, &type, &v45))
    {
      goto LABEL_116;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (!os_log_type_enabled(v32, type))
      {
        goto LABEL_116;
      }

      *buf = 136446210;
      v48 = "nw_protocol_common_get_message_properties";
      v34 = "%{public}s called with null protocol";
LABEL_115:
      _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0xCu);
      goto LABEL_116;
    }

    if (v45 != 1)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (!os_log_type_enabled(v32, type))
      {
        goto LABEL_116;
      }

      *buf = 136446210;
      v48 = "nw_protocol_common_get_message_properties";
      v34 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_115;
    }

    backtrace_string = __nw_create_backtrace_string();
    v32 = __nwlog_obj();
    v33 = type;
    v39 = os_log_type_enabled(v32, type);
    if (!backtrace_string)
    {
      if (!v39)
      {
        goto LABEL_116;
      }

      *buf = 136446210;
      v48 = "nw_protocol_common_get_message_properties";
      v34 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_115;
    }

    if (!v39)
    {
      goto LABEL_90;
    }

    *buf = 136446466;
    v48 = "nw_protocol_common_get_message_properties";
    v49 = 2082;
    v50 = backtrace_string;
    v40 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_89:
    _os_log_impl(&dword_181A37000, v32, v33, v40, buf, 0x16u);
    goto LABEL_90;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_protocol_common_get_message_properties";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v4, &type, &v45))
    {
      goto LABEL_116;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (!os_log_type_enabled(v32, type))
      {
        goto LABEL_116;
      }

      *buf = 136446210;
      v48 = "nw_protocol_common_get_message_properties";
      v34 = "%{public}s called with null other_protocol";
      goto LABEL_115;
    }

    if (v45 != 1)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (!os_log_type_enabled(v32, type))
      {
        goto LABEL_116;
      }

      *buf = 136446210;
      v48 = "nw_protocol_common_get_message_properties";
      v34 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_115;
    }

    backtrace_string = __nw_create_backtrace_string();
    v32 = __nwlog_obj();
    v33 = type;
    v41 = os_log_type_enabled(v32, type);
    if (!backtrace_string)
    {
      if (!v41)
      {
        goto LABEL_116;
      }

      *buf = 136446210;
      v48 = "nw_protocol_common_get_message_properties";
      v34 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_115;
    }

    if (!v41)
    {
      goto LABEL_90;
    }

    *buf = 136446466;
    v48 = "nw_protocol_common_get_message_properties";
    v49 = 2082;
    v50 = backtrace_string;
    v40 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
    goto LABEL_89;
  }

  if (a3)
  {
    v3 = a1;
    v4 = a1[4];
    if (!v4)
    {
      if (gLogDatapath == 1)
      {
        v8 = __nwlog_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          v48 = "nw_protocol_common_get_message_properties";
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s get_message_properties requires an output handler", buf, 0xCu);
        }
      }

      return;
    }

    v5 = *(v4 + 40);
    v6 = a1[4];
    if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = *(v4 + 64)) != 0)
    {
      v9 = *(v6 + 88);
      v7 = 0;
      if (v9)
      {
        *(v6 + 88) = v9 + 1;
      }
    }

    else
    {
      v7 = 1;
    }

    v10 = a1[5];
    v11 = a1;
    if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v11 = a1[8]) != 0)
    {
      v14 = v11[11];
      if (v14)
      {
        v12 = 0;
        v11[11] = v14 + 1;
        v13 = *(v4 + 24);
        if (!v13)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v12 = 0;
        v13 = *(v4 + 24);
        if (!v13)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v12 = 1;
      v13 = *(v4 + 24);
      if (!v13)
      {
        goto LABEL_50;
      }
    }

    v15 = *(v13 + 248);
    if (v15)
    {
      v15(v4, a1);
      goto LABEL_25;
    }

LABEL_50:
    __nwlog_obj();
    v26 = *(v4 + 16);
    *buf = 136446722;
    v48 = "__nw_protocol_get_message_properties";
    if (!v26)
    {
      v26 = "invalid";
    }

    v49 = 2082;
    v50 = v26;
    v51 = 2048;
    v52 = v4;
    v27 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v27, &type, &v45))
    {
      goto LABEL_107;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (!os_log_type_enabled(v28, type))
      {
        goto LABEL_107;
      }

      v30 = *(v4 + 16);
      if (!v30)
      {
        v30 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_get_message_properties";
      v49 = 2082;
      v50 = v30;
      v51 = 2048;
      v52 = v4;
      v31 = "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback";
    }

    else if (v45 == 1)
    {
      v35 = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type;
      v36 = os_log_type_enabled(v28, type);
      if (v35)
      {
        if (v36)
        {
          v37 = *(v4 + 16);
          if (!v37)
          {
            v37 = "invalid";
          }

          *buf = 136446978;
          v48 = "__nw_protocol_get_message_properties";
          v49 = 2082;
          v50 = v37;
          v51 = 2048;
          v52 = v4;
          v53 = 2082;
          v54 = v35;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v35);
        goto LABEL_107;
      }

      if (!v36)
      {
LABEL_107:
        if (v27)
        {
          free(v27);
        }

LABEL_25:
        if ((v12 & 1) == 0)
        {
          v16 = v3[5];
          if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v3 = v3[8]) != 0)
          {
            v17 = v3[11];
            if (v17)
            {
              v18 = v17 - 1;
              v3[11] = v18;
              if (!v18)
              {
                v19 = v3[8];
                if (v19)
                {
                  v3[8] = 0;
                  v19[2](v19);
                  _Block_release(v19);
                }

                if (v3[9])
                {
                  v20 = v3[8];
                  if (v20)
                  {
                    _Block_release(v20);
                  }
                }

                free(v3);
              }
            }
          }
        }

        if ((v7 & 1) == 0)
        {
          v21 = *(v4 + 40);
          if (v21 == &nw_protocol_ref_counted_handle || v21 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
          {
            v22 = *(v4 + 88);
            if (v22)
            {
              v23 = v22 - 1;
              *(v4 + 88) = v23;
              if (!v23)
              {
                v24 = *(v4 + 64);
                if (v24)
                {
                  *(v4 + 64) = 0;
                  v24[2](v24);
                  _Block_release(v24);
                }

                if (*(v4 + 72))
                {
                  v25 = *(v4 + 64);
                  if (v25)
                  {
                    _Block_release(v25);
                  }
                }

                goto LABEL_48;
              }
            }
          }
        }

        return;
      }

      v44 = *(v4 + 16);
      if (!v44)
      {
        v44 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_get_message_properties";
      v49 = 2082;
      v50 = v44;
      v51 = 2048;
      v52 = v4;
      v31 = "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback, no backtrace";
    }

    else
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (!os_log_type_enabled(v28, type))
      {
        goto LABEL_107;
      }

      v43 = *(v4 + 16);
      if (!v43)
      {
        v43 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_get_message_properties";
      v49 = 2082;
      v50 = v43;
      v51 = 2048;
      v52 = v4;
      v31 = "%{public}s protocol %{public}s (%p) has invalid get_message_properties callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v28, v29, v31, buf, 0x20u);
    goto LABEL_107;
  }

  __nwlog_obj();
  *buf = 136446210;
  v48 = "nw_protocol_common_get_message_properties";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v45 = 0;
  if (!__nwlog_fault(v4, &type, &v45))
  {
LABEL_116:
    if (!v4)
    {
      return;
    }

    goto LABEL_48;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v32 = __nwlog_obj();
    v33 = type;
    if (!os_log_type_enabled(v32, type))
    {
      goto LABEL_116;
    }

    *buf = 136446210;
    v48 = "nw_protocol_common_get_message_properties";
    v34 = "%{public}s called with null message_properties";
    goto LABEL_115;
  }

  if (v45 != 1)
  {
    v32 = __nwlog_obj();
    v33 = type;
    if (!os_log_type_enabled(v32, type))
    {
      goto LABEL_116;
    }

    *buf = 136446210;
    v48 = "nw_protocol_common_get_message_properties";
    v34 = "%{public}s called with null message_properties, backtrace limit exceeded";
    goto LABEL_115;
  }

  backtrace_string = __nw_create_backtrace_string();
  v32 = __nwlog_obj();
  v33 = type;
  v42 = os_log_type_enabled(v32, type);
  if (!backtrace_string)
  {
    if (!v42)
    {
      goto LABEL_116;
    }

    *buf = 136446210;
    v48 = "nw_protocol_common_get_message_properties";
    v34 = "%{public}s called with null message_properties, no backtrace";
    goto LABEL_115;
  }

  if (v42)
  {
    *buf = 136446466;
    v48 = "nw_protocol_common_get_message_properties";
    v49 = 2082;
    v50 = backtrace_string;
    v40 = "%{public}s called with null message_properties, dumping backtrace:%{public}s";
    goto LABEL_89;
  }

LABEL_90:
  free(backtrace_string);
  if (v4)
  {
LABEL_48:
    free(v4);
  }
}

uint64_t nw_protocol_http_messaging_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2, char a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_http_messaging_add_listen_handler";
    v14 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v14, &type, &v39))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v42 = "nw_protocol_http_messaging_add_listen_handler";
      v17 = "%{public}s called with null protocol";
      goto LABEL_35;
    }

    if (v39 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v42 = "nw_protocol_http_messaging_add_listen_handler";
      v17 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v36 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (!v36)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v42 = "nw_protocol_http_messaging_add_listen_handler";
      v17 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_35;
    }

    if (v36)
    {
      *buf = 136446466;
      v42 = "nw_protocol_http_messaging_add_listen_handler";
      v43 = 2082;
      v44 = backtrace_string;
      v37 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_61:
      _os_log_impl(&dword_181A37000, v15, v16, v37, buf, 0x16u);
    }

LABEL_62:
    free(backtrace_string);
    goto LABEL_37;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_http_messaging_add_listen_handler";
    v14 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v14, &type, &v39))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v42 = "nw_protocol_http_messaging_add_listen_handler";
      v17 = "%{public}s called with null http_messaging";
      goto LABEL_35;
    }

    if (v39 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v42 = "nw_protocol_http_messaging_add_listen_handler";
      v17 = "%{public}s called with null http_messaging, backtrace limit exceeded";
      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v38 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (!v38)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v42 = "nw_protocol_http_messaging_add_listen_handler";
      v17 = "%{public}s called with null http_messaging, no backtrace";
      goto LABEL_35;
    }

    if (v38)
    {
      *buf = 136446466;
      v42 = "nw_protocol_http_messaging_add_listen_handler";
      v43 = 2082;
      v44 = backtrace_string;
      v37 = "%{public}s called with null http_messaging, dumping backtrace:%{public}s";
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  if ((handle[172] & 2) == 0 && gLogDatapath == 1)
  {
    v30 = a1;
    v31 = a3;
    v32 = __nwlog_obj();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
    a3 = v31;
    v34 = v33;
    a1 = v30;
    if (v34)
    {
      *buf = 136446978;
      v42 = "nw_protocol_http_messaging_add_listen_handler";
      v43 = 2082;
      v44 = (handle + 130);
      v45 = 2080;
      v46 = " ";
      v47 = 2048;
      v48 = a2;
      _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled with listen_protocol %p", buf, 0x2Au);
      a3 = v31;
      a1 = v30;
    }
  }

  v5 = *(handle + 16);
  v6 = *(handle + 17);
  if (v5 == v6 || (handle[172] & 1) == 0)
  {
    v7 = *(handle + 18);
    if (v6 >= v7)
    {
      v9 = v6 - v5;
      v10 = (v6 - v5) >> 3;
      v11 = v10 + 1;
      if ((v10 + 1) >> 61)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v12 = v7 - v5;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 61))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v22 = a3;
      v23 = a1;
      v24 = (v6 - v5) >> 3;
      v25 = (8 * v10);
      v26 = (8 * v10 - 8 * v24);
      *v25 = a2;
      v8 = v25 + 1;
      memcpy(v26, v5, v9);
      *(handle + 16) = v26;
      *(handle + 17) = v8;
      *(handle + 18) = 0;
      if (v5)
      {
        operator delete(v5);
      }

      a1 = v23;
      a3 = v22;
    }

    else
    {
      *v6 = a2;
      v8 = v6 + 8;
    }

    *(handle + 17) = v8;
    a2->protocol_handler = a1;
    if (a3)
    {
      nw_protocol_remove_instance(a1);
    }

    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v42 = "nw_protocol_http_messaging_add_listen_handler";
  v14 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (__nwlog_fault(v14, &type, &v39))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_http_messaging_add_listen_handler";
        v17 = "%{public}s already have a server listen handler, ignoring add";
LABEL_35:
        v28 = v15;
        v29 = v16;
LABEL_36:
        _os_log_impl(&dword_181A37000, v28, v29, v17, buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
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
          v42 = "nw_protocol_http_messaging_add_listen_handler";
          v43 = 2082;
          v44 = v18;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s already have a server listen handler, ignoring add, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
        goto LABEL_37;
      }

      if (v21)
      {
        *buf = 136446210;
        v42 = "nw_protocol_http_messaging_add_listen_handler";
        v17 = "%{public}s already have a server listen handler, ignoring add, no backtrace";
        v28 = v19;
        v29 = v20;
        goto LABEL_36;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446210;
        v42 = "nw_protocol_http_messaging_add_listen_handler";
        v17 = "%{public}s already have a server listen handler, ignoring add, backtrace limit exceeded";
        goto LABEL_35;
      }
    }
  }

LABEL_37:
  if (v14)
  {
    free(v14);
  }

  return 0;
}

void nw_connection_get_uuid(void *a1, unsigned __int8 *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_connection_get_uuid";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v5, &type, &v18))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v21 = "nw_connection_get_uuid";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null out_uuid", buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v21 = "nw_connection_get_uuid";
          v22 = 2082;
          v23 = backtrace_string;
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
        v21 = "nw_connection_get_uuid";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null out_uuid, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v21 = "nw_connection_get_uuid";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null out_uuid, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  uuid_clear(a2);
  if (v3)
  {
    *a2 = *(v3 + 452);
    goto LABEL_4;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_connection_get_uuid";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v5, &type, &v18))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v21 = "nw_connection_get_uuid";
      _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null connection", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v18 != 1)
  {
    v6 = __nwlog_obj();
    v17 = type;
    if (os_log_type_enabled(v6, type))
    {
      *buf = 136446210;
      v21 = "nw_connection_get_uuid";
      _os_log_impl(&dword_181A37000, v6, v17, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v13 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v14 = type;
  v15 = os_log_type_enabled(v6, type);
  if (!v13)
  {
    if (v15)
    {
      *buf = 136446210;
      v21 = "nw_connection_get_uuid";
      _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v21 = "nw_connection_get_uuid";
    v22 = 2082;
    v23 = v13;
    _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v5)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_http_connection_metadata_set_uuid(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_connection_metadata_set_uuid";
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
        v22 = "nw_http_connection_metadata_set_uuid";
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
          v22 = "nw_http_connection_metadata_set_uuid";
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
        v22 = "nw_http_connection_metadata_set_uuid";
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
        v22 = "nw_http_connection_metadata_set_uuid";
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
    v16 = __nw_http_connection_metadata_set_uuid_block_invoke;
    v17 = &__block_descriptor_40_e9_B16__0_v8l;
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
  v22 = "nw_http_connection_metadata_set_uuid";
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
      v22 = "nw_http_connection_metadata_set_uuid";
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
      v22 = "nw_http_connection_metadata_set_uuid";
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
      v22 = "nw_http_connection_metadata_set_uuid";
      v9 = "%{public}s metadata must be http_connection, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_connection_metadata_set_uuid";
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

void ___ZL44nw_protocol_http_client_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
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

uint64_t nw_protocol_http_client_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if (handle->default_input_handler == a2)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 0x40000000;
        v15[2] = ___ZL44nw_protocol_http_client_remove_input_handlerP11nw_protocolS0_b_block_invoke;
        v15[3] = &__block_descriptor_tmp_22_30755;
        v15[4] = handle;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 0x40000000;
        v13[2] = ___ZL44nw_protocol_http_client_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
        v13[3] = &__block_descriptor_tmp_23_30756;
        v14 = a3;
        v13[4] = handle;
        return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v15, v13);
      }

      else
      {
        if (a2->output_handler == handle)
        {
          a2->output_handler = 0;
        }

        return 1;
      }
    }

    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_http_client_remove_input_handler";
    v5 = _os_log_send_and_compose_impl();
    v17 = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v5, &v17, &v16))
    {
      goto LABEL_36;
    }

    if (v17 == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = v17;
      if (os_log_type_enabled(v6, v17))
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_client_remove_input_handler";
        v8 = "%{public}s called with null http_client";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v16 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v17;
      if (os_log_type_enabled(v6, v17))
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_client_remove_input_handler";
        v8 = "%{public}s called with null http_client, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
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
        v19 = "nw_protocol_http_client_remove_input_handler";
        v8 = "%{public}s called with null http_client, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http_client_remove_input_handler";
      v20 = 2082;
      v21 = backtrace_string;
      v11 = "%{public}s called with null http_client, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_http_client_remove_input_handler";
  v5 = _os_log_send_and_compose_impl();
  v17 = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v5, &v17, &v16))
  {
    goto LABEL_36;
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
        v19 = "nw_protocol_http_client_remove_input_handler";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
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
        v19 = "nw_protocol_http_client_remove_input_handler";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v10)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http_client_remove_input_handler";
      v20 = 2082;
      v21 = backtrace_string;
      v11 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v6, v7, v11, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v6 = __nwlog_obj();
  v7 = v17;
  if (os_log_type_enabled(v6, v17))
  {
    *buf = 136446210;
    v19 = "nw_protocol_http_client_remove_input_handler";
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

void nw_protocol_plugin_metadata_reset(uint64_t *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v27 = __nwlog_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "nw_protocol_plugin_metadata_reset";
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s called", &buf, 0xCu);
    }
  }

  if (gLogDatapath == 1)
  {
    v28 = __nwlog_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s called", &buf, 0xCu);
    }
  }

  v2 = *a1;
  if (*a1)
  {
    *(v2 + 40) = &v31;
    v3 = a1[1];
    v31 = v2;
    v32 = v3;
    *a1 = 0;
    a1[1] = a1;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v34 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v35 = &__block_descriptor_tmp_21_49595;
    v36 = 0;
    do
    {
      v4 = v31;
      if (!v31)
      {
        break;
      }

      v5 = *(v31 + 32);
      v6 = *(v31 + 40);
      v7 = (v5 + 40);
      if (!v5)
      {
        v7 = &v32;
      }

      *v7 = v6;
      *v6 = v5;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
    }

    while (((v34)(&buf) & 1) != 0);
  }

  v8 = a1 + 2;
  if (gLogDatapath == 1)
  {
    v29 = __nwlog_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s called", &buf, 0xCu);
    }
  }

  v9 = *v8;
  if (*v8)
  {
    *(v9 + 40) = &v31;
    v10 = a1[3];
    v31 = v9;
    v32 = v10;
    a1[2] = 0;
    a1[3] = v8;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v34 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v35 = &__block_descriptor_tmp_21_49595;
    v36 = 0;
    do
    {
      v11 = v31;
      if (!v31)
      {
        break;
      }

      v12 = *(v31 + 32);
      v13 = *(v31 + 40);
      v14 = (v12 + 40);
      if (!v12)
      {
        v14 = &v32;
      }

      *v14 = v13;
      *v13 = v12;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
    }

    while (((v34)(&buf) & 1) != 0);
  }

  v15 = a1 + 4;
  if (gLogDatapath == 1)
  {
    v30 = __nwlog_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s called", &buf, 0xCu);
    }
  }

  v16 = *v15;
  if (*v15)
  {
    *(v16 + 40) = &v31;
    v17 = a1[5];
    v31 = v16;
    v32 = v17;
    a1[4] = 0;
    a1[5] = v15;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v34 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v35 = &__block_descriptor_tmp_21_49595;
    v36 = 0;
    do
    {
      v18 = v31;
      if (!v31)
      {
        break;
      }

      v19 = *(v31 + 32);
      v20 = *(v31 + 40);
      v21 = (v19 + 40);
      if (!v19)
      {
        v21 = &v32;
      }

      *v21 = v20;
      *v20 = v19;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
    }

    while (((v34)(&buf) & 1) != 0);
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    v23 = a1[6];
    if (v23)
    {
      os_release(v23);
      v22 = *(a1 + 56);
    }
  }

  a1[6] = 0;
  *(a1 + 56) = v22 | 1;
  v24 = *(a1 + 72);
  if (v24)
  {
    v25 = a1[8];
    if (v25)
    {
      os_release(v25);
      v24 = *(a1 + 72);
    }
  }

  a1[8] = 0;
  *(a1 + 72) = v24 | 1;
  v26 = *(a1 + 142);
  *(a1 + 34) = 0;
  *(a1 + 142) = v26 & 0xC2;
  *(a1 + 70) = 2;
}

uint64_t nw_protocol_http_sniffing_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZL46nw_protocol_http_sniffing_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v15[3] = &__block_descriptor_tmp_139;
      v15[4] = handle;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = ___ZL46nw_protocol_http_sniffing_remove_input_handlerP11nw_protocolS0_b_block_invoke_140;
      v13[3] = &__block_descriptor_tmp_141;
      v14 = a3;
      v13[4] = handle;
      return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v15, v13);
    }

    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_http_sniffing_remove_input_handler";
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
        v19 = "nw_protocol_http_sniffing_remove_input_handler";
        v8 = "%{public}s called with null http_sniffing";
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
        v19 = "nw_protocol_http_sniffing_remove_input_handler";
        v8 = "%{public}s called with null http_sniffing, backtrace limit exceeded";
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
        v19 = "nw_protocol_http_sniffing_remove_input_handler";
        v8 = "%{public}s called with null http_sniffing, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http_sniffing_remove_input_handler";
      v20 = 2082;
      v21 = backtrace_string;
      v11 = "%{public}s called with null http_sniffing, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_http_sniffing_remove_input_handler";
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
        v19 = "nw_protocol_http_sniffing_remove_input_handler";
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
        v19 = "nw_protocol_http_sniffing_remove_input_handler";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http_sniffing_remove_input_handler";
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
    v19 = "nw_protocol_http_sniffing_remove_input_handler";
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

void nw_frame_cache_remove_all(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (gLogDatapath == 1)
    {
      v8 = a1;
      v9 = __nwlog_obj();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      a1 = v8;
      if (v10)
      {
        v11 = *(v8 + 6);
        v12 = v8[2];
        v13 = "<null>";
        if (v12)
        {
          v14 = *(v12 + 16);
          if (v14)
          {
            v13 = v14;
          }
        }

        *buf = 136446978;
        v24 = "nw_frame_cache_remove_all";
        v25 = 1024;
        *v26 = v11;
        *&v26[4] = 2048;
        *&v26[6] = v8;
        v27 = 2080;
        v28 = v13;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s purging %u frames from frame cache %p for protocol %s", buf, 0x26u);
        a1 = v8;
      }
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v18 = __nw_frame_cache_remove_all_block_invoke;
    v19 = &__block_descriptor_tmp_27305;
    v20 = a1;
    v1 = *a1;
    do
    {
      if (!v1)
      {
        break;
      }

      v2 = *(v1 + 16);
      v3 = (v18)(v17);
      v1 = v2;
    }

    while ((v3 & 1) != 0);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_frame_cache_remove_all";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v4, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v24 = "nw_frame_cache_remove_all";
      v7 = "%{public}s called with null frame_cache";
      goto LABEL_25;
    }

    if (v21 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v24 = "nw_frame_cache_remove_all";
      v7 = "%{public}s called with null frame_cache, backtrace limit exceeded";
      goto LABEL_25;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v16 = os_log_type_enabled(v5, type);
    if (backtrace_string)
    {
      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_frame_cache_remove_all";
        v25 = 2082;
        *v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null frame_cache, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_26;
    }

    if (v16)
    {
      *buf = 136446210;
      v24 = "nw_frame_cache_remove_all";
      v7 = "%{public}s called with null frame_cache, no backtrace";
LABEL_25:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    }
  }

LABEL_26:
  if (v4)
  {
    free(v4);
  }
}

uint64_t nw_protocol_http_authentication_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZL52nw_protocol_http_authentication_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v15[3] = &__block_descriptor_tmp_129;
      v15[4] = handle;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = ___ZL52nw_protocol_http_authentication_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
      v13[3] = &__block_descriptor_tmp_130;
      v14 = a3;
      v13[4] = handle;
      return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v15, v13);
    }

    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_http_authentication_remove_input_handler";
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
        v19 = "nw_protocol_http_authentication_remove_input_handler";
        v8 = "%{public}s called with null http_authentication";
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
        v19 = "nw_protocol_http_authentication_remove_input_handler";
        v8 = "%{public}s called with null http_authentication, backtrace limit exceeded";
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
        v19 = "nw_protocol_http_authentication_remove_input_handler";
        v8 = "%{public}s called with null http_authentication, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http_authentication_remove_input_handler";
      v20 = 2082;
      v21 = backtrace_string;
      v11 = "%{public}s called with null http_authentication, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_http_authentication_remove_input_handler";
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
        v19 = "nw_protocol_http_authentication_remove_input_handler";
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
        v19 = "nw_protocol_http_authentication_remove_input_handler";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http_authentication_remove_input_handler";
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
    v19 = "nw_protocol_http_authentication_remove_input_handler";
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

void ___ZL62nw_protocol_instance_registrar_copy_san_list_from_tls_metadataP41NWConcrete_nw_protocol_instance_registrarP11nw_protocolPU35objcproto24OS_sec_protocol_metadata8NSObjectt_block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (gLogDatapath == 1)
  {
    v22 = __nwlog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 56);
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      buf = 136447234;
      v38 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
      v39 = 2112;
      v40 = v24;
      v41 = 2048;
      v42 = v23;
      v43 = 2112;
      v44 = v25;
      v45 = 2112;
      v46 = v3;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %@ protocol %p, tls metdata %@ found certificate: %@", &buf, 0x34u);
    }
  }

  cf = sec_certificate_copy_ref(v3);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = SecCertificateCopyDNSNames();
  v4 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v4)
  {
    v5 = *v33;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        if (gLogDatapath == 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            buf = 136446466;
            v38 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
            v39 = 2112;
            v40 = v7;
            _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s \tgot dns name: %@", &buf, 0x16u);
          }
        }

        v8 = [v7 UTF8String];
        if (v8)
        {
          if (*v8 == 42)
          {
            if (*(v8 + 1) == 46)
            {
              host_with_numeric_port = nw_endpoint_create_host_with_numeric_port((v8 + 2), *(a1 + 64));
              nw_endpoint_set_is_wildcard_host_from_san(host_with_numeric_port);
              v10 = *(a1 + 48);
              if (v10 && host_with_numeric_port)
              {
                _nw_array_append(v10, host_with_numeric_port);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              host_with_numeric_port = gLogObj;
              if (os_log_type_enabled(host_with_numeric_port, OS_LOG_TYPE_ERROR))
              {
                buf = 136446466;
                v38 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
                v39 = 2112;
                v40 = v7;
                _os_log_impl(&dword_181A37000, host_with_numeric_port, OS_LOG_TYPE_ERROR, "%{public}s invalid wildcard SAN %@", &buf, 0x16u);
              }
            }
          }

          else
          {
            host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(v8, *(a1 + 64));
            v16 = *(a1 + 48);
            if (v16 && host_with_numeric_port)
            {
              _nw_array_append(v16, host_with_numeric_port);
            }
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            buf = 136446466;
            v38 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
            v39 = 2112;
            v40 = v7;
            _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s failed to get UTF8 string from name %@", &buf, 0x16u);
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          buf = 136446210;
          v38 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
          LODWORD(v27) = 12;
          p_buf = &buf;
          v13 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v30 = 0;
          if (!__nwlog_fault(v13, &type, &v30))
          {
            goto LABEL_24;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            v15 = type;
            if (os_log_type_enabled(v14, type))
            {
              buf = 136446210;
              v38 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
              _os_log_impl(&dword_181A37000, v14, v15, "%{public}s failed to get UTF8 string from DNS name", &buf, 0xCu);
            }

LABEL_23:

LABEL_24:
            if (!v13)
            {
              continue;
            }

LABEL_25:
            free(v13);
            continue;
          }

          if (v30 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            v20 = type;
            if (os_log_type_enabled(v14, type))
            {
              buf = 136446210;
              v38 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
              _os_log_impl(&dword_181A37000, v14, v20, "%{public}s failed to get UTF8 string from DNS name, backtrace limit exceeded", &buf, 0xCu);
            }

            goto LABEL_23;
          }

          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v18 = type;
          v19 = os_log_type_enabled(v14, type);
          if (!backtrace_string)
          {
            if (v19)
            {
              buf = 136446210;
              v38 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
              _os_log_impl(&dword_181A37000, v14, v18, "%{public}s failed to get UTF8 string from DNS name, no backtrace", &buf, 0xCu);
            }

            goto LABEL_23;
          }

          if (v19)
          {
            buf = 136446466;
            v38 = "nw_protocol_instance_registrar_copy_san_list_from_tls_metadata_block_invoke";
            v39 = 2082;
            v40 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v18, "%{public}s failed to get UTF8 string from DNS name, dumping backtrace:%{public}s", &buf, 0x16u);
          }

          free(backtrace_string);
          if (v13)
          {
            goto LABEL_25;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t nw_http2_add_to_protocol_table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if ((*(a3 + 190) & 0x10) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v42 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v44 = *(a3 + 176);
        v43 = *(a3 + 180);
        *buf = 136447746;
        v68 = "nw_http2_add_to_protocol_table";
        v69 = 2082;
        v70 = (a3 + 191);
        v71 = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v43;
        v75 = 1024;
        *v76 = v44;
        *&v76[4] = 2048;
        *&v76[6] = a2;
        *&v76[14] = 1024;
        *&v76[16] = v44;
        v39 = "%{public}s %{public}s%s<i%u:s%d> called for protocol %p, stream %d";
        v40 = v42;
        v41 = 60;
        goto LABEL_70;
      }
    }
  }

  else if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v37 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a1 + 360);
      *buf = 136447490;
      v68 = "nw_http2_add_to_protocol_table";
      v69 = 2082;
      v70 = (a1 + 380);
      v71 = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v38;
      v75 = 2048;
      *v76 = a2;
      *&v76[8] = 1024;
      *&v76[10] = -999;
      v39 = "%{public}s %{public}s%s<i%u> called for protocol %p, stream %d";
      v40 = v37;
      v41 = 54;
LABEL_70:
      _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, v39, buf, v41);
    }
  }

  v66 = 0;
  internal = *(a1 + 152);
  if (internal)
  {
    goto LABEL_7;
  }

  internal = nw_hash_table_create_internal(0x11u, 8, nw_http2_get_key, nw_http2_key_hash, nw_http2_matches_key, 0, 0);
  if (!internal)
  {
    *(a1 + 152) = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v68 = "nw_http2_add_to_protocol_table";
    v21 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (!__nwlog_fault(v21, &type, &v64))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v68 = "nw_http2_add_to_protocol_table";
      v24 = "%{public}s nw_hash_table_create_no_lock failed";
    }

    else
    {
      if (v64 == 1)
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
            v68 = "nw_http2_add_to_protocol_table";
            v69 = 2082;
            v70 = backtrace_string;
            _os_log_impl(&dword_181A37000, v28, v29, "%{public}s nw_hash_table_create_no_lock failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
        }

        else if (v30)
        {
          *buf = 136446210;
          v68 = "nw_http2_add_to_protocol_table";
          v24 = "%{public}s nw_hash_table_create_no_lock failed, no backtrace";
          v31 = v28;
          v32 = v29;
          goto LABEL_47;
        }

LABEL_48:
        if (v21)
        {
          v33 = v21;
LABEL_55:
          free(v33);
        }

        return 0;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v68 = "nw_http2_add_to_protocol_table";
      v24 = "%{public}s nw_hash_table_create_no_lock failed, backtrace limit exceeded";
    }

    v31 = v22;
    v32 = v23;
LABEL_47:
    _os_log_impl(&dword_181A37000, v31, v32, v24, buf, 0xCu);
    goto LABEL_48;
  }

  *(internal + 56) &= ~2u;
  *(a1 + 152) = internal;
LABEL_7:
  v7 = nw_hash_table_add_object(internal, a2, &v66);
  if ((v66 & 1) == 0)
  {
    if (a3)
    {
      if ((*(a3 + 190) & 0x10) != 0)
      {
        return 0;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = *(a3 + 176);
      v9 = *(a3 + 180);
      *buf = 136447746;
      v68 = "nw_http2_add_to_protocol_table";
      v69 = 2082;
      v70 = (a3 + 191);
      v71 = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v9;
      v75 = 1024;
      *v76 = v10;
      *&v76[4] = 1042;
      *&v76[6] = 16;
      *&v76[10] = 2098;
      *&v76[12] = a2;
      v11 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v64 = 0;
      if (!__nwlog_fault(v11, &type, &v64))
      {
        goto LABEL_53;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v12 = gconnectionLogObj;
        v13 = type;
        if (os_log_type_enabled(gconnectionLogObj, type))
        {
          v15 = *(a3 + 176);
          v14 = *(a3 + 180);
          *buf = 136447746;
          v68 = "nw_http2_add_to_protocol_table";
          v69 = 2082;
          v70 = (a3 + 191);
          v71 = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v14;
          v75 = 1024;
          *v76 = v15;
          *&v76[4] = 1042;
          *&v76[6] = 16;
          *&v76[10] = 2098;
          *&v76[12] = a2;
          v16 = "%{public}s %{public}s%s<i%u:s%d> http2 already has input handler registered for %{public,uuid_t}.16P";
LABEL_52:
          _os_log_impl(&dword_181A37000, v12, v13, v16, buf, 0x3Cu);
        }
      }

      else if (v64 == 1)
      {
        v17 = __nw_create_backtrace_string();
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v12 = gconnectionLogObj;
        v13 = type;
        v18 = os_log_type_enabled(gconnectionLogObj, type);
        if (!v17)
        {
          if (!v18)
          {
            goto LABEL_53;
          }

          v35 = *(a3 + 176);
          v34 = *(a3 + 180);
          *buf = 136447746;
          v68 = "nw_http2_add_to_protocol_table";
          v69 = 2082;
          v70 = (a3 + 191);
          v71 = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v34;
          v75 = 1024;
          *v76 = v35;
          *&v76[4] = 1042;
          *&v76[6] = 16;
          *&v76[10] = 2098;
          *&v76[12] = a2;
          v16 = "%{public}s %{public}s%s<i%u:s%d> http2 already has input handler registered for %{public,uuid_t}.16P, no backtrace";
          goto LABEL_52;
        }

        if (v18)
        {
          v20 = *(a3 + 176);
          v19 = *(a3 + 180);
          *buf = 136448002;
          v68 = "nw_http2_add_to_protocol_table";
          v69 = 2082;
          v70 = (a3 + 191);
          v71 = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v19;
          v75 = 1024;
          *v76 = v20;
          *&v76[4] = 1042;
          *&v76[6] = 16;
          *&v76[10] = 2098;
          *&v76[12] = a2;
          *&v76[20] = 2082;
          *&v76[22] = v17;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s %{public}s%s<i%u:s%d> http2 already has input handler registered for %{public,uuid_t}.16P, dumping backtrace:%{public}s", buf, 0x46u);
        }

        free(v17);
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v12 = gconnectionLogObj;
        v13 = type;
        if (os_log_type_enabled(gconnectionLogObj, type))
        {
          v26 = *(a3 + 176);
          v25 = *(a3 + 180);
          *buf = 136447746;
          v68 = "nw_http2_add_to_protocol_table";
          v69 = 2082;
          v70 = (a3 + 191);
          v71 = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v25;
          v75 = 1024;
          *v76 = v26;
          *&v76[4] = 1042;
          *&v76[6] = 16;
          *&v76[10] = 2098;
          *&v76[12] = a2;
          v16 = "%{public}s %{public}s%s<i%u:s%d> http2 already has input handler registered for %{public,uuid_t}.16P, backtrace limit exceeded";
          goto LABEL_52;
        }
      }

LABEL_53:
      if (v11)
      {
        v33 = v11;
        goto LABEL_55;
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

    v53 = *(a1 + 360);
    *buf = 136447490;
    v68 = "nw_http2_add_to_protocol_table";
    v69 = 2082;
    v70 = (a1 + 380);
    v71 = 2080;
    v72 = " ";
    v73 = 1024;
    v74 = v53;
    v75 = 1042;
    *v76 = 16;
    *&v76[4] = 2098;
    *&v76[6] = a2;
    v54 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (__nwlog_fault(v54, &type, &v64))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v55 = gconnectionLogObj;
        v56 = type;
        if (!os_log_type_enabled(gconnectionLogObj, type))
        {
          goto LABEL_108;
        }

        v57 = *(a1 + 360);
        *buf = 136447490;
        v68 = "nw_http2_add_to_protocol_table";
        v69 = 2082;
        v70 = (a1 + 380);
        v71 = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v57;
        v75 = 1042;
        *v76 = 16;
        *&v76[4] = 2098;
        *&v76[6] = a2;
        v58 = "%{public}s %{public}s%s<i%u> http2 already has input handler registered for %{public,uuid_t}.16P";
        goto LABEL_107;
      }

      if (v64 != 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v55 = gconnectionLogObj;
        v56 = type;
        if (!os_log_type_enabled(gconnectionLogObj, type))
        {
          goto LABEL_108;
        }

        v62 = *(a1 + 360);
        *buf = 136447490;
        v68 = "nw_http2_add_to_protocol_table";
        v69 = 2082;
        v70 = (a1 + 380);
        v71 = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v62;
        v75 = 1042;
        *v76 = 16;
        *&v76[4] = 2098;
        *&v76[6] = a2;
        v58 = "%{public}s %{public}s%s<i%u> http2 already has input handler registered for %{public,uuid_t}.16P, backtrace limit exceeded";
        goto LABEL_107;
      }

      v59 = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v55 = gconnectionLogObj;
      v56 = type;
      v60 = os_log_type_enabled(gconnectionLogObj, type);
      if (v59)
      {
        if (v60)
        {
          v61 = *(a1 + 360);
          *buf = 136447746;
          v68 = "nw_http2_add_to_protocol_table";
          v69 = 2082;
          v70 = (a1 + 380);
          v71 = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v61;
          v75 = 1042;
          *v76 = 16;
          *&v76[4] = 2098;
          *&v76[6] = a2;
          *&v76[14] = 2082;
          *&v76[16] = v59;
          _os_log_impl(&dword_181A37000, v55, v56, "%{public}s %{public}s%s<i%u> http2 already has input handler registered for %{public,uuid_t}.16P, dumping backtrace:%{public}s", buf, 0x40u);
        }

        free(v59);
        goto LABEL_108;
      }

      if (v60)
      {
        v63 = *(a1 + 360);
        *buf = 136447490;
        v68 = "nw_http2_add_to_protocol_table";
        v69 = 2082;
        v70 = (a1 + 380);
        v71 = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v63;
        v75 = 1042;
        *v76 = 16;
        *&v76[4] = 2098;
        *&v76[6] = a2;
        v58 = "%{public}s %{public}s%s<i%u> http2 already has input handler registered for %{public,uuid_t}.16P, no backtrace";
LABEL_107:
        _os_log_impl(&dword_181A37000, v55, v56, v58, buf, 0x36u);
      }
    }

LABEL_108:
    if (!v54)
    {
      return 0;
    }

    v33 = v54;
    goto LABEL_55;
  }

  v8 = v7;
  if (a3)
  {
    if ((*(a3 + 190) & 0x10) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v47 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v49 = *(a3 + 176);
        v48 = *(a3 + 180);
        *buf = 136447490;
        v68 = "nw_http2_add_to_protocol_table";
        v69 = 2082;
        v70 = (a3 + 191);
        v71 = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v48;
        v75 = 1024;
        *v76 = v49;
        *&v76[4] = 2048;
        *&v76[6] = a2;
        _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> added protocol %p to protocol hash table", buf, 0x36u);
      }
    }

    if ((*(a3 + 190) & 0x10) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v50 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v52 = *(a3 + 176);
        v51 = *(a3 + 180);
        *buf = 136448002;
        v68 = "nw_http2_add_to_protocol_table";
        v69 = 2082;
        v70 = (a3 + 191);
        v71 = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v51;
        v75 = 1024;
        *v76 = v52;
        *&v76[4] = 2048;
        *&v76[6] = a2;
        *&v76[14] = 2048;
        *&v76[16] = v8;
        *&v76[24] = 2048;
        *&v76[26] = a3;
        _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> connecting protocol %p node %p with stream %p", buf, 0x4Au);
      }
    }

    *nw_hash_node_get_extra(v8) = a3;
  }

  else if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v45 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v46 = *(a1 + 360);
      *buf = 136447234;
      v68 = "nw_http2_add_to_protocol_table";
      v69 = 2082;
      v70 = (a1 + 380);
      v71 = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v46;
      v75 = 2048;
      *v76 = a2;
      _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> added protocol %p to protocol hash table", buf, 0x30u);
    }
  }

  return v8;
}

uint64_t nw_protocol_common_remove_input_handler_with_cleanup_blocks(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v83 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
    v61 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (!__nwlog_fault(v61, &type, &v80))
    {
      goto LABEL_143;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_143;
      }

      *buf = 136446210;
      v83 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
      v64 = "%{public}s called with null protocol";
      goto LABEL_142;
    }

    if (v80 != 1)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_143;
      }

      *buf = 136446210;
      v83 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
      v64 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_142;
    }

    backtrace_string = __nw_create_backtrace_string();
    v62 = __nwlog_obj();
    v63 = type;
    v66 = os_log_type_enabled(v62, type);
    if (!backtrace_string)
    {
      if (!v66)
      {
        goto LABEL_143;
      }

      *buf = 136446210;
      v83 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
      v64 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_142;
    }

    if (v66)
    {
      *buf = 136446466;
      v83 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
      v84 = 2082;
      v85 = backtrace_string;
      _os_log_impl(&dword_181A37000, v62, v63, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_143:
    if (!v61)
    {
      return 0;
    }

    goto LABEL_144;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v83 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
    v61 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (!__nwlog_fault(v61, &type, &v80))
    {
      goto LABEL_143;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_143;
      }

      *buf = 136446210;
      v83 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
      v64 = "%{public}s called with null input_protocol";
      goto LABEL_142;
    }

    if (v80 != 1)
    {
      v62 = __nwlog_obj();
      v63 = type;
      if (!os_log_type_enabled(v62, type))
      {
        goto LABEL_143;
      }

      *buf = 136446210;
      v83 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
      v64 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_142;
    }

    v67 = __nw_create_backtrace_string();
    v62 = __nwlog_obj();
    v63 = type;
    v68 = os_log_type_enabled(v62, type);
    if (v67)
    {
      if (v68)
      {
        *buf = 136446466;
        v83 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
        v84 = 2082;
        v85 = v67;
        _os_log_impl(&dword_181A37000, v62, v63, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v67);
      if (!v61)
      {
        return 0;
      }

LABEL_144:
      v39 = v61;
      goto LABEL_51;
    }

    if (v68)
    {
      *buf = 136446210;
      v83 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
      v64 = "%{public}s called with null input_protocol, no backtrace";
LABEL_142:
      _os_log_impl(&dword_181A37000, v62, v63, v64, buf, 0xCu);
      goto LABEL_143;
    }

    goto LABEL_143;
  }

  v9 = *(a2 + 32);
  if (v9 == a1)
  {
    v10 = *(v9 + 40);
    if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (v9 = *(v9 + 64)) != 0)
    {
      v11 = *(v9 + 88);
      if (v11)
      {
        v12 = v11 - 1;
        *(v9 + 88) = v12;
        if (!v12)
        {
          v13 = a4;
          v14 = *(v9 + 64);
          if (v14)
          {
            *(v9 + 64) = 0;
            v14[2](v14);
            _Block_release(v14);
          }

          if (*(v9 + 72))
          {
            v15 = *(v9 + 64);
            if (v15)
            {
              _Block_release(v15);
            }
          }

          free(v9);
          a4 = v13;
        }
      }
    }

    *(a2 + 32) = 0;
  }

  v16 = a1[6];
  if (v16 != a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = a1[6];
    *buf = 136446722;
    v83 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
    v84 = 2048;
    v85 = v17;
    v86 = 2048;
    v87 = a2;
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (__nwlog_fault(v18, &type, &v80))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v21 = a1[6];
          *buf = 136446722;
          v83 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
          v84 = 2048;
          v85 = v21;
          v86 = 2048;
          v87 = a2;
          v22 = "%{public}s Input protocol does not match (%p != %p)";
LABEL_48:
          _os_log_impl(&dword_181A37000, v19, v20, v22, buf, 0x20u);
        }
      }

      else if (v80 == 1)
      {
        v33 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        v34 = os_log_type_enabled(gLogObj, type);
        if (v33)
        {
          if (v34)
          {
            v35 = a1[6];
            *buf = 136446978;
            v83 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
            v84 = 2048;
            v85 = v35;
            v86 = 2048;
            v87 = a2;
            v88 = 2082;
            v89 = v33;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Input protocol does not match (%p != %p), dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v33);
          goto LABEL_49;
        }

        if (v34)
        {
          v38 = a1[6];
          *buf = 136446722;
          v83 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
          v84 = 2048;
          v85 = v38;
          v86 = 2048;
          v87 = a2;
          v22 = "%{public}s Input protocol does not match (%p != %p), no backtrace";
          goto LABEL_48;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v36 = a1[6];
          *buf = 136446722;
          v83 = "nw_protocol_common_remove_input_handler_with_cleanup_blocks";
          v84 = 2048;
          v85 = v36;
          v86 = 2048;
          v87 = a2;
          v22 = "%{public}s Input protocol does not match (%p != %p), backtrace limit exceeded";
          goto LABEL_48;
        }
      }
    }

LABEL_49:
    if (!v18)
    {
      return 0;
    }

    v39 = v18;
LABEL_51:
    free(v39);
    return 0;
  }

  v23 = *(v16 + 40);
  if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v16 = *(v16 + 64)) != 0)
  {
    v24 = *(v16 + 88);
    if (v24)
    {
      v25 = v24 - 1;
      *(v16 + 88) = v25;
      if (!v25)
      {
        v26 = a4;
        v27 = *(v16 + 64);
        if (v27)
        {
          *(v16 + 64) = 0;
          v27[2](v27);
          _Block_release(v27);
        }

        if (*(v16 + 72))
        {
          v28 = *(v16 + 64);
          if (v28)
          {
            _Block_release(v28);
          }
        }

        free(v16);
        a4 = v26;
      }
    }
  }

  a1[6] = 0;
  if (a4)
  {
    (*(a4 + 16))(a4);
  }

  v29 = a1[4];
  if (v29)
  {
    v30 = *(v29 + 40);
    v31 = a1[4];
    if (v30 == &nw_protocol_ref_counted_handle || v30 == &nw_protocol_ref_counted_additional_handle && (v31 = *(v29 + 64)) != 0)
    {
      v40 = *(v31 + 88);
      v32 = 0;
      if (v40)
      {
        *(v31 + 88) = v40 + 1;
      }
    }

    else
    {
      v32 = 1;
    }

    v41 = a1[5];
    v42 = a1;
    if (v41 == &nw_protocol_ref_counted_handle || v41 == &nw_protocol_ref_counted_additional_handle && (v42 = a1[8]) != 0)
    {
      v45 = v42[11];
      if (v45)
      {
        v43 = 0;
        v42[11] = v45 + 1;
        v44 = *(v29 + 24);
        if (!v44)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v43 = 0;
        v44 = *(v29 + 24);
        if (!v44)
        {
          goto LABEL_115;
        }
      }
    }

    else
    {
      v43 = 1;
      v44 = *(v29 + 24);
      if (!v44)
      {
        goto LABEL_115;
      }
    }

    v46 = *(v44 + 8);
    if (v46)
    {
      result = v46(v29, a1, a3);
      if (v43)
      {
LABEL_78:
        if ((v32 & 1) == 0)
        {
          v54 = *(v29 + 40);
          if (v54 == &nw_protocol_ref_counted_handle || v54 == &nw_protocol_ref_counted_additional_handle && (v29 = *(v29 + 64)) != 0)
          {
            v55 = *(v29 + 88);
            if (v55)
            {
              v56 = v55 - 1;
              *(v29 + 88) = v56;
              if (!v56)
              {
                v57 = result;
                v58 = *(v29 + 64);
                if (v58)
                {
                  *(v29 + 64) = 0;
                  v58[2](v58);
                  _Block_release(v58);
                }

                if (*(v29 + 72))
                {
                  v59 = *(v29 + 64);
                  if (v59)
                  {
                    _Block_release(v59);
                  }
                }

                free(v29);
                result = v57;
              }
            }
          }
        }

        goto LABEL_90;
      }

LABEL_67:
      v47 = a1[5];
      v48 = a1;
      if (v47 == &nw_protocol_ref_counted_handle || v47 == &nw_protocol_ref_counted_additional_handle && (v48 = a1[8]) != 0)
      {
        v49 = v48[11];
        if (v49)
        {
          v50 = v49 - 1;
          v48[11] = v50;
          if (!v50)
          {
            v51 = result;
            v52 = v48[8];
            if (v52)
            {
              v48[8] = 0;
              v52[2](v52);
              _Block_release(v52);
            }

            if (v48[9])
            {
              v53 = v48[8];
              if (v53)
              {
                _Block_release(v53);
              }
            }

            free(v48);
            result = v51;
          }
        }
      }

      goto LABEL_78;
    }

LABEL_115:
    __nwlog_obj();
    v69 = *(v29 + 16);
    *buf = 136446722;
    v83 = "__nw_protocol_remove_input_handler";
    if (!v69)
    {
      v69 = "invalid";
    }

    v84 = 2082;
    v85 = v69;
    v86 = 2048;
    v87 = v29;
    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    v79 = _os_log_send_and_compose_impl();
    if (__nwlog_fault(v79, &type, &v80))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v70 = __nwlog_obj();
        v71 = type;
        if (!os_log_type_enabled(v70, type))
        {
          goto LABEL_150;
        }

        v72 = *(v29 + 16);
        if (!v72)
        {
          v72 = "invalid";
        }

        *buf = 136446722;
        v83 = "__nw_protocol_remove_input_handler";
        v84 = 2082;
        v85 = v72;
        v86 = 2048;
        v87 = v29;
        v73 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback";
LABEL_149:
        _os_log_impl(&dword_181A37000, v70, v71, v73, buf, 0x20u);
        goto LABEL_150;
      }

      if (v80 != 1)
      {
        v70 = __nwlog_obj();
        v71 = type;
        if (!os_log_type_enabled(v70, type))
        {
          goto LABEL_150;
        }

        v77 = *(v29 + 16);
        if (!v77)
        {
          v77 = "invalid";
        }

        *buf = 136446722;
        v83 = "__nw_protocol_remove_input_handler";
        v84 = 2082;
        v85 = v77;
        v86 = 2048;
        v87 = v29;
        v73 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, backtrace limit exceeded";
        goto LABEL_149;
      }

      v74 = __nw_create_backtrace_string();
      v70 = __nwlog_obj();
      v71 = type;
      v75 = os_log_type_enabled(v70, type);
      if (!v74)
      {
        if (!v75)
        {
          goto LABEL_150;
        }

        v78 = *(v29 + 16);
        if (!v78)
        {
          v78 = "invalid";
        }

        *buf = 136446722;
        v83 = "__nw_protocol_remove_input_handler";
        v84 = 2082;
        v85 = v78;
        v86 = 2048;
        v87 = v29;
        v73 = "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, no backtrace";
        goto LABEL_149;
      }

      if (v75)
      {
        v76 = *(v29 + 16);
        if (!v76)
        {
          v76 = "invalid";
        }

        *buf = 136446978;
        v83 = "__nw_protocol_remove_input_handler";
        v84 = 2082;
        v85 = v76;
        v86 = 2048;
        v87 = v29;
        v88 = 2082;
        v89 = v74;
        _os_log_impl(&dword_181A37000, v70, v71, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v74);
    }

LABEL_150:
    if (v79)
    {
      free(v79);
    }

    result = 0;
    if (v43)
    {
      goto LABEL_78;
    }

    goto LABEL_67;
  }

  result = 1;
LABEL_90:
  if (a3 && a1[5] != &nw_protocol_ref_counted_handle)
  {
    a1[5] = 0;
  }

  if (a5)
  {
    v60 = result;
    (*(a5 + 16))(a5);
    return v60;
  }

  return result;
}

uint64_t ___ZL54nw_protocol_instance_registrar_array_contains_endpointPU22objcproto11OS_nw_array8NSObjectPU25objcproto14OS_nw_endpointS__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  is_equal = nw_endpoint_is_equal(*(a1 + 32), a3, 31);
  if (is_equal)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return is_equal ^ 1u;
}

uint64_t nw_protocol_http2_create(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v87 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v69 = __nwlog_obj();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_protocol_http2_create";
      _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v6 = malloc_type_calloc(1uLL, 0x1D0uLL, 0xE3C6119AuLL);
  v7 = v6;
  if (v6)
  {
    v6[27] = 0u;
    v6[28] = 0u;
    v6[25] = 0u;
    v6[26] = 0u;
    v6[23] = 0u;
    v6[24] = 0u;
    v6[21] = 0u;
    v6[22] = 0u;
    v6[19] = 0u;
    v6[20] = 0u;
    v6[17] = 0u;
    v6[18] = 0u;
    v6[15] = 0u;
    v6[16] = 0u;
    v6[13] = 0u;
    v6[14] = 0u;
    v6[11] = 0u;
    v6[12] = 0u;
    v6[9] = 0u;
    v6[10] = 0u;
    v6[7] = 0u;
    v6[8] = 0u;
    v6[5] = 0u;
    v6[6] = 0u;
    v6[3] = 0u;
    v6[4] = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    *v6 = 0u;
    *(v6 + 82) = 1065353216;
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  LODWORD(buf[0]) = 136446722;
  *(buf + 4) = "nw_protocol_http2_create";
  WORD2(buf[1]) = 2048;
  *(&buf[1] + 6) = 1;
  HIWORD(buf[2]) = 2048;
  v80 = 464;
  v8 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v8);
  if (!result)
  {
    free(v8);
    MEMORY[0x1C0] = 0u;
    MEMORY[0x1B0] = 0u;
    MEMORY[0x1A0] = 0u;
    MEMORY[0x190] = 0u;
    MEMORY[0x180] = 0u;
    MEMORY[0x170] = 0u;
    MEMORY[0x160] = 0u;
    MEMORY[0x150] = 0u;
    MEMORY[0x140] = 0u;
    MEMORY[0x120] = 0u;
    MEMORY[0x110] = 0u;
    MEMORY[0x100] = 0u;
    MEMORY[0xF0] = 0u;
    MEMORY[0xE0] = 0u;
    MEMORY[0xD0] = 0u;
    MEMORY[0xC0] = 0u;
    MEMORY[0xB0] = 0u;
    MEMORY[0xA0] = 0u;
    MEMORY[0x90] = 0u;
    MEMORY[0x80] = 0u;
    MEMORY[0x70] = 0u;
    MEMORY[0x60] = 0u;
    MEMORY[0x50] = 0u;
    MEMORY[0x40] = 0u;
    MEMORY[0x30] = 0u;
    MEMORY[0x20] = 0u;
    MEMORY[0x10] = 0u;
    MEMORY[0] = 0u;
    MEMORY[0x80] = 0;
    MEMORY[0x88] = 0;
    MEMORY[0x138] = 0u;
    MEMORY[0x128] = 0u;
    MEMORY[0x148] = 1065353216;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_protocol_http2_create";
    v10 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v10);
    if (!result)
    {
      free(v10);
LABEL_7:
      *(v7 + 16) = a1;
      if (nw_protocol_http2_get_callbacks(void)::onceToken != -1)
      {
        dispatch_once(&nw_protocol_http2_get_callbacks(void)::onceToken, &__block_literal_global_36_87006);
      }

      *(v7 + 24) = &nw_protocol_http2_get_callbacks(void)::protocol_callbacks;
      *(v7 + 40) = v7;
      *(v7 + 356) = 0;
      *(v7 + 64) = 0;
      *(v7 + 364) = 0;
      v11 = (v7 + 377);
      *(v7 + 377) &= 0xFFE2u;
      *(v7 + 80) = 240000;
      *(v7 + 379) = *(v7 + 379) & 0xFE | nw_parameters_get_logging_disabled(a4);
      *(v7 + 352) = -1;
      if (nw_parameters_get_server_mode(a4))
      {
        v12 = 128;
      }

      else
      {
        v12 = 0;
      }

      *v11 = *(v7 + 377) & 0xFF7F | v12;
      nw_frame_cache_init(v7 + 200, v7, 20, 0x1000000, 24);
      *(v7 + 168) = 0;
      *(v7 + 184) = 0;
      *(v7 + 176) = v7 + 168;
      *(v7 + 192) = v7 + 184;
      *(v7 + 240) = 0;
      *(v7 + 248) = v7 + 240;
      v13 = nw_parameters_copy_context(a4);
      v14 = *(v7 + 136);
      if ((v14 & 1) != 0 && *(v7 + 128))
      {
        v15 = v13;
        os_release(*(v7 + 128));
        v13 = v15;
        v14 = *(v7 + 136);
      }

      *(v7 + 128) = v13;
      *(v7 + 136) = v14 | 1;
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 0x40000000;
      v78[2] = __nw_protocol_http2_create_block_invoke;
      v78[3] = &__block_descriptor_tmp_87007;
      v78[4] = v7;
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 0x40000000;
      v77[2] = __nw_protocol_http2_create_block_invoke_2;
      v77[3] = &__block_descriptor_tmp_8_87008;
      v77[4] = v7;
      metadata = nw_http_connection_create_metadata(v13, v78, v77);
      *(v7 + 256) = metadata;
      nw_http_connection_metadata_set_version(metadata, 4);
      buf[0] = 0;
      buf[1] = buf;
      buf[2] = 0x2000000000;
      v80 = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = __nw_protocol_http2_create_block_invoke_3;
      aBlock[3] = &unk_1E6A3C258;
      aBlock[4] = buf;
      *(v7 + 344) = _Block_copy(aBlock);
      _Block_object_dispose(buf, 8);
      v75 = 0;
      if (nghttp2_session_callbacks_new())
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = nghttp2_strerror();
        LODWORD(buf[0]) = 136446466;
        *(buf + 4) = "nw_protocol_http2_create";
        WORD2(buf[1]) = 2082;
        *(&buf[1] + 6) = v17;
        v18 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v74 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v18, type, &v74))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v20 = type[0];
            if (os_log_type_enabled(gLogObj, type[0]))
            {
              v21 = nghttp2_strerror();
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_protocol_http2_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v21;
              v22 = "%{public}s nghttp2_session_callbacks_new: %{public}s failed";
LABEL_51:
              _os_log_impl(&dword_181A37000, v19, v20, v22, buf, 0x16u);
            }
          }

          else if (v74 == OS_LOG_TYPE_INFO)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v20 = type[0];
            v32 = os_log_type_enabled(gLogObj, type[0]);
            if (backtrace_string)
            {
              if (v32)
              {
                v33 = nghttp2_strerror();
                LODWORD(buf[0]) = 136446722;
                *(buf + 4) = "nw_protocol_http2_create";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v33;
                HIWORD(buf[2]) = 2082;
                v80 = backtrace_string;
                _os_log_impl(&dword_181A37000, v19, v20, "%{public}s nghttp2_session_callbacks_new: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(backtrace_string);
              goto LABEL_52;
            }

            if (v32)
            {
              v43 = nghttp2_strerror();
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_protocol_http2_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v43;
              v22 = "%{public}s nghttp2_session_callbacks_new: %{public}s failed, no backtrace";
              goto LABEL_51;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v20 = type[0];
            if (os_log_type_enabled(gLogObj, type[0]))
            {
              v34 = nghttp2_strerror();
              LODWORD(buf[0]) = 136446466;
              *(buf + 4) = "nw_protocol_http2_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v34;
              v22 = "%{public}s nghttp2_session_callbacks_new: %{public}s failed, backtrace limit exceeded";
              goto LABEL_51;
            }
          }
        }

LABEL_52:
        if (v18)
        {
          free(v18);
        }

        v44 = *(v7 + 312);
        while (v44)
        {
          v47 = v44;
          v44 = *v44;
          if ((v47[5] & 1) != 0 && v47[4])
          {
            v48 = v47;
            _Block_release(v47[4]);
            v47 = v48;
          }

          operator delete(v47);
        }

LABEL_55:
        v45 = *(v7 + 296);
        *(v7 + 296) = 0;
        if (v45)
        {
          operator delete(v45);
        }

        if (*(v7 + 136))
        {
          v46 = *(v7 + 128);
          if (v46)
          {
            os_release(v46);
          }
        }

        free(v7);
        return 0;
      }

      nghttp2_session_callbacks_set_before_frame_send_callback();
      nghttp2_session_callbacks_set_on_header_callback();
      nghttp2_session_callbacks_set_on_begin_headers_callback();
      nghttp2_session_callbacks_set_on_frame_recv_callback();
      nghttp2_session_callbacks_set_on_data_chunk_recv_callback();
      nghttp2_session_callbacks_set_on_stream_close_callback();
      nghttp2_session_callbacks_set_on_frame_send_callback();
      nghttp2_session_callbacks_set_send_callback();
      nghttp2_session_callbacks_set_send_data_callback();
      nghttp2_session_callbacks_set_on_frame_not_send_callback();
      nghttp2_session_callbacks_set_on_invalid_frame_recv_callback();
      nghttp2_session_callbacks_set_error_callback2();
      nghttp2_set_debug_vprintf_callback();
      *type = 0;
      nghttp2_option_new();
      nghttp2_option_set_no_auto_window_update();
      nghttp2_option_set_no_rfc9113_leading_and_trailing_ws_validation();
      nghttp2_option_set_peer_max_concurrent_streams();
      nghttp2_option_set_no_closed_streams();
      if ((*v11 & 0x80) == 0)
      {
        if ((nghttp2_session_client_new2() & 0x80000000) != 0)
        {
          if (*(v7 + 379))
          {
LABEL_93:
            v61 = *(v7 + 312);
            while (v61)
            {
              v62 = v61;
              v61 = *v61;
              if ((v62[5] & 1) != 0 && v62[4])
              {
                v63 = v62;
                _Block_release(v62[4]);
                v62 = v63;
              }

              operator delete(v62);
            }

            goto LABEL_55;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v23 = *(v7 + 360);
          v24 = nghttp2_strerror();
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_protocol_http2_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v7 + 380;
          HIWORD(buf[2]) = 2080;
          v80 = " ";
          v81 = 1024;
          v82 = v23;
          v83 = 2082;
          v84 = v24;
          v25 = _os_log_send_and_compose_impl();
          v74 = OS_LOG_TYPE_ERROR;
          v72 = 0;
          if (__nwlog_fault(v25, &v74, &v72))
          {
            if (v74 == OS_LOG_TYPE_FAULT)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v26 = gconnectionLogObj;
              v27 = v74;
              if (!os_log_type_enabled(gconnectionLogObj, v74))
              {
                goto LABEL_91;
              }

              v28 = *(v7 + 360);
              v29 = nghttp2_strerror();
              LODWORD(buf[0]) = 136447234;
              *(buf + 4) = "nw_protocol_http2_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v7 + 380;
              HIWORD(buf[2]) = 2080;
              v80 = " ";
              v81 = 1024;
              v82 = v28;
              v83 = 2082;
              v84 = v29;
              v30 = "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s";
              goto LABEL_90;
            }

            if (v72 != 1)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v26 = gconnectionLogObj;
              v27 = v74;
              if (!os_log_type_enabled(gconnectionLogObj, v74))
              {
                goto LABEL_91;
              }

              v55 = *(v7 + 360);
              v56 = nghttp2_strerror();
              LODWORD(buf[0]) = 136447234;
              *(buf + 4) = "nw_protocol_http2_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v7 + 380;
              HIWORD(buf[2]) = 2080;
              v80 = " ";
              v81 = 1024;
              v82 = v55;
              v83 = 2082;
              v84 = v56;
              v30 = "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s, backtrace limit exceeded";
              goto LABEL_90;
            }

            v49 = __nw_create_backtrace_string();
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v26 = gconnectionLogObj;
            v27 = v74;
            v50 = os_log_type_enabled(gconnectionLogObj, v74);
            if (v49)
            {
              if (v50)
              {
                v70 = *(v7 + 360);
                v51 = nghttp2_strerror();
                LODWORD(buf[0]) = 136447490;
                *(buf + 4) = "nw_protocol_http2_create";
                WORD2(buf[1]) = 2082;
                *(&buf[1] + 6) = v7 + 380;
                HIWORD(buf[2]) = 2080;
                v80 = " ";
                v81 = 1024;
                v82 = v70;
                v83 = 2082;
                v84 = v51;
                v85 = 2082;
                v86 = v49;
                _os_log_impl(&dword_181A37000, v26, v27, "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s, dumping backtrace:%{public}s", buf, 0x3Au);
              }

              free(v49);
              goto LABEL_91;
            }

            if (v50)
            {
              v59 = *(v7 + 360);
              v60 = nghttp2_strerror();
              LODWORD(buf[0]) = 136447234;
              *(buf + 4) = "nw_protocol_http2_create";
              WORD2(buf[1]) = 2082;
              *(&buf[1] + 6) = v7 + 380;
              HIWORD(buf[2]) = 2080;
              v80 = " ";
              v81 = 1024;
              v82 = v59;
              v83 = 2082;
              v84 = v60;
              v30 = "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s, no backtrace";
LABEL_90:
              _os_log_impl(&dword_181A37000, v26, v27, v30, buf, 0x30u);
            }
          }

LABEL_91:
          if (v25)
          {
            free(v25);
          }

          goto LABEL_93;
        }

LABEL_37:
        MEMORY[0x1865DDA10](v75);
        MEMORY[0x1865DD980](*type);
        return v7;
      }

      if ((nghttp2_session_server_new2() & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      if (*(v7 + 379))
      {
LABEL_104:
        v66 = *(v7 + 312);
        while (v66)
        {
          v67 = v66;
          v66 = *v66;
          if ((v67[5] & 1) != 0 && v67[4])
          {
            v68 = v67;
            _Block_release(v67[4]);
            v67 = v68;
          }

          operator delete(v67);
        }

        goto LABEL_55;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v35 = *(v7 + 360);
      v36 = nghttp2_strerror();
      LODWORD(buf[0]) = 136447234;
      *(buf + 4) = "nw_protocol_http2_create";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = v7 + 380;
      HIWORD(buf[2]) = 2080;
      v80 = " ";
      v81 = 1024;
      v82 = v35;
      v83 = 2082;
      v84 = v36;
      v37 = _os_log_send_and_compose_impl();
      v74 = OS_LOG_TYPE_ERROR;
      v72 = 0;
      if (__nwlog_fault(v37, &v74, &v72))
      {
        if (v74 == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v38 = gconnectionLogObj;
          v39 = v74;
          if (!os_log_type_enabled(gconnectionLogObj, v74))
          {
            goto LABEL_102;
          }

          v40 = *(v7 + 360);
          v41 = nghttp2_strerror();
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_protocol_http2_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v7 + 380;
          HIWORD(buf[2]) = 2080;
          v80 = " ";
          v81 = 1024;
          v82 = v40;
          v83 = 2082;
          v84 = v41;
          v42 = "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s";
          goto LABEL_101;
        }

        if (v72 != 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v38 = gconnectionLogObj;
          v39 = v74;
          if (!os_log_type_enabled(gconnectionLogObj, v74))
          {
            goto LABEL_102;
          }

          v57 = *(v7 + 360);
          v58 = nghttp2_strerror();
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_protocol_http2_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v7 + 380;
          HIWORD(buf[2]) = 2080;
          v80 = " ";
          v81 = 1024;
          v82 = v57;
          v83 = 2082;
          v84 = v58;
          v42 = "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s, backtrace limit exceeded";
          goto LABEL_101;
        }

        v52 = __nw_create_backtrace_string();
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v38 = gconnectionLogObj;
        v39 = v74;
        v53 = os_log_type_enabled(gconnectionLogObj, v74);
        if (v52)
        {
          if (v53)
          {
            v71 = *(v7 + 360);
            v54 = nghttp2_strerror();
            LODWORD(buf[0]) = 136447490;
            *(buf + 4) = "nw_protocol_http2_create";
            WORD2(buf[1]) = 2082;
            *(&buf[1] + 6) = v7 + 380;
            HIWORD(buf[2]) = 2080;
            v80 = " ";
            v81 = 1024;
            v82 = v71;
            v83 = 2082;
            v84 = v54;
            v85 = 2082;
            v86 = v52;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s, dumping backtrace:%{public}s", buf, 0x3Au);
          }

          free(v52);
          goto LABEL_102;
        }

        if (v53)
        {
          v64 = *(v7 + 360);
          v65 = nghttp2_strerror();
          LODWORD(buf[0]) = 136447234;
          *(buf + 4) = "nw_protocol_http2_create";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = v7 + 380;
          HIWORD(buf[2]) = 2080;
          v80 = " ";
          v81 = 1024;
          v82 = v64;
          v83 = 2082;
          v84 = v65;
          v42 = "%{public}s %{public}s%s<i%u> nghttp2_session_server_new2 failed: %{public}s, no backtrace";
LABEL_101:
          _os_log_impl(&dword_181A37000, v38, v39, v42, buf, 0x30u);
        }
      }

LABEL_102:
      if (v37)
      {
        free(v37);
      }

      goto LABEL_104;
    }
  }

  __break(1u);
  return result;
}
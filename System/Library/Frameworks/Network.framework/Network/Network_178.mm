uint64_t ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 32) + 48);
  v6 = (a2 + 32);
  v5 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v5)
  {
    v4 = (v5 + 40);
  }

  *v4 = v7;
  *v7 = v5;
  *(a2 + 40) = 0;
  *v6 = 0;
  is_metadata_complete = nw_frame_is_metadata_complete(a2);
  v9 = is_metadata_complete;
  if (*(a1 + 48) == 1)
  {
    v9 = (*(*(a1 + 32) + 40) == 0) | is_metadata_complete;
  }

  v10 = *(a2 + 64);
  *(a2 + 204) &= 0xFFC7u;
  if (v10)
  {
    do
    {
      v11 = *v10;
      v12 = v10[6];
      v13 = *v10;
      if (v12)
      {
        os_release(v12);
        v10[6] = 0;
        v13 = *v10;
      }

      v14 = v10[1];
      v15 = v13 + 1;
      if (!v13)
      {
        v15 = (a2 + 72);
      }

      *v15 = v14;
      *v14 = v13;
      if (v10 != (a2 + 120))
      {
        free(v10);
      }

      v10 = v11;
    }

    while (v11);
  }

  *(a2 + 64) = 0;
  *(a2 + 72) = a2 + 64;
  v16 = *(a2 + 168);
  if (v16)
  {
    os_release(v16);
  }

  *(a2 + 184) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  nw_frame_set_metadata(a2, *(*(a1 + 40) + 160), 1, v9 & 1);
  v17 = *(a1 + 40);
  v18 = *(v17 + 80);
  *(a2 + 32) = 0;
  *(a2 + 40) = v18;
  *v18 = a2;
  *(v17 + 80) = v6;
  return 1;
}

uint64_t ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 32) + 48);
  v6 = (a2 + 32);
  v5 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v5)
  {
    v4 = (v5 + 40);
  }

  *v4 = v7;
  *v7 = v5;
  *(a2 + 40) = 0;
  *v6 = 0;
  is_metadata_complete = nw_frame_is_metadata_complete(a2);
  v9 = *(*(a1 + 32) + 40);
  v10 = *(a2 + 64);
  *(a2 + 204) &= 0xFFC7u;
  if (v10)
  {
    do
    {
      v11 = *v10;
      v12 = v10[6];
      v13 = *v10;
      if (v12)
      {
        os_release(v12);
        v10[6] = 0;
        v13 = *v10;
      }

      v14 = v10[1];
      v15 = v13 + 1;
      if (!v13)
      {
        v15 = (a2 + 72);
      }

      *v15 = v14;
      *v14 = v13;
      if (v10 != (a2 + 120))
      {
        free(v10);
      }

      v10 = v11;
    }

    while (v11);
  }

  *(a2 + 64) = 0;
  *(a2 + 72) = a2 + 64;
  v16 = *(a2 + 168);
  if (v16)
  {
    os_release(v16);
  }

  *(a2 + 184) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  nw_frame_set_metadata(a2, *(*(a1 + 40) + 160), 1, (v9 == 0) | is_metadata_complete & 1);
  v17 = *(a1 + 40);
  v18 = *(v17 + 80);
  *(a2 + 32) = 0;
  *(a2 + 40) = v18;
  *v18 = a2;
  *(v17 + 80) = v6;
  return 1;
}

void nw_webtransport_http3_handle_input(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v11 = __nwlog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a1 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_http3_handle_input";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 496;
        v24 = 2080;
        v25 = " ";
        v26 = 1024;
        v27 = v12;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    if (*(a1 + 476) == 4)
    {
      *buf = 0;
      *&buf[8] = buf;
      if (nw_protocol_copy_http_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
      }

      v2 = nw_protocol_copy_http_definition_http_definition;
      v3 = *(a1 + 448);
      while (nw_protocol_get_input_frames(*(a1 + 32), a1, 0, 0xFFFFFFFFLL, 0xFFFFFFFFLL, buf))
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 0x40000000;
        v16 = ___ZL34nw_webtransport_http3_handle_inputP23nw_webtransport_session_block_invoke;
        v17 = &__block_descriptor_tmp_36_36505;
        v18 = buf;
        v19 = v2;
        v20 = v3;
        v4 = *buf;
        do
        {
          if (!v4)
          {
            break;
          }

          v5 = *(v4 + 32);
          v6 = (v16)(v15);
          v4 = v5;
        }

        while ((v6 & 1) != 0);
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_webtransport_http3_handle_input";
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v7, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http3_handle_input";
      v10 = "%{public}s called with null webtransport_session";
      goto LABEL_28;
    }

    if (v21 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http3_handle_input";
      v10 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
      goto LABEL_28;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v14 = os_log_type_enabled(v8, type);
    if (backtrace_string)
    {
      if (v14)
      {
        *buf = 136446466;
        *&buf[4] = "nw_webtransport_http3_handle_input";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_29;
    }

    if (v14)
    {
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http3_handle_input";
      v10 = "%{public}s called with null webtransport_session, no backtrace";
LABEL_28:
      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    }
  }

LABEL_29:
  if (v7)
  {
    free(v7);
  }
}

uint64_t ___ZL34nw_webtransport_http3_handle_inputP23nw_webtransport_session_block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = (*(a1 + 32) + 8);
  v6 = (a2 + 32);
  v5 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v5)
  {
    v4 = (v5 + 40);
  }

  *v4 = v7;
  *v7 = v5;
  *(a2 + 40) = 0;
  *v6 = 0;
  v8 = nw_frame_copy_metadata_for_protocol(a2, *(a1 + 40));
  if (v8 && nw_http_metadata_is_capsule(v8))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446210;
      v14 = "nw_webtransport_http3_handle_input_block_invoke";
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Got a capsule on webtransport session", &v13, 0xCu);
    }

    goto LABEL_9;
  }

  v10 = *(a1 + 48);
  if (!v10)
  {
LABEL_9:
    nw_frame_finalize(a2);
    return 1;
  }

  v11 = *(v10 + 80);
  *(a2 + 32) = 0;
  *(a2 + 40) = v11;
  *v11 = a2;
  *(v10 + 80) = v6;
  return 1;
}

uint64_t ___ZL48nw_webtransport_session_get_underlying_stream_idP23nw_webtransport_sessionP11nw_protocolS2__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  is_http_transaction = nw_protocol_metadata_is_http_transaction(a3);
  if (is_http_transaction)
  {
    *(*(*(a1 + 32) + 8) + 24) = nw_http_transaction_metadata_get_stream_id(a3);
  }

  return is_http_transaction ^ 1u;
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__60(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

void ___ZL48nw_webtransport_session_setup_for_http_messagingP23nw_webtransport_sessionP11nw_protocolS2__block_invoke(void *a1, void *a2)
{
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    if (!*(*(a1[5] + 8) + 40) && nw_protocol_options_is_http_messaging(a2))
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

void nw_webtransport_http3_stream_fix_http_parameters(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_webtransport_http3_stream_fix_http_parameters";
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v16, &type, &v32))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v35 = "nw_webtransport_http3_stream_fix_http_parameters";
      v19 = "%{public}s called with null webtransport_session";
    }

    else if (v32 == 1)
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
          v35 = "nw_webtransport_http3_stream_fix_http_parameters";
          v36 = 2082;
          v37 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_57:
        if (!v16)
        {
          return;
        }

LABEL_58:
        free(v16);
        return;
      }

      if (!v21)
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v35 = "nw_webtransport_http3_stream_fix_http_parameters";
      v19 = "%{public}s called with null webtransport_session, no backtrace";
    }

    else
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_57;
      }

      *buf = 136446210;
      v35 = "nw_webtransport_http3_stream_fix_http_parameters";
      v19 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    }

LABEL_56:
    _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
    goto LABEL_57;
  }

  if (a2)
  {
    v4 = *(a2 + 144);
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if ((*(a1 + 580) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 492);
          *buf = 136446978;
          v35 = "nw_webtransport_http3_stream_fix_http_parameters";
          v36 = 2082;
          v37 = (a1 + 496);
          v38 = 2080;
          v39 = " ";
          v40 = 1024;
          v41 = v8;
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u> webtransport stream not fully setup, cannot fix parameters", buf, 0x26u);
        }
      }
    }

    else
    {
      v9 = v4;
      v10 = _nw_parameters_copy_protocol_options_with_level(v9, v5);

      if (v10)
      {
        v11 = *(a2 + 276);
        if ((v11 & 8) == 0)
        {
          v12 = v11 << 31 >> 31;
          if ((v11 & 4) != 0)
          {
            v13 = 1;
          }

          else
          {
            v13 = 2;
          }

          v14 = v12 & v13;
          if ((v11 & 0x10) == 0 && gLogDatapath == 1)
          {
            v26 = v12 & v13;
            v27 = __nwlog_obj();
            v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
            v14 = v26;
            if (v28)
            {
              v29 = *(a2 + 88);
              if (v29)
              {
                v30 = *(v29 + 492);
              }

              else
              {
                v30 = -1;
              }

              v31 = *(a2 + 64);
              *buf = 136447746;
              v35 = "nw_webtransport_http3_stream_fix_http_parameters";
              v36 = 2082;
              v37 = (a2 + 192);
              v38 = 2080;
              v39 = " ";
              v40 = 1024;
              v41 = v30;
              v42 = 2048;
              v43 = v31;
              v44 = 2048;
              v45 = v10;
              v46 = 1024;
              v47 = v26;
              _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Adjusting HTTP options for webtransport: %p with mode: %u", buf, 0x40u);
              v14 = v26;
            }
          }

          nw_http3_set_stream_mode(v10, v14);
          nw_http3_set_webtransport_session_id(v10, *(*(a2 + 88) + 168));
          LOBYTE(v11) = *(a2 + 276);
        }

        *(a2 + 276) = v11 | 0x40;
        os_release(v10);
      }

      else
      {
        if ((*(a1 + 580) & 2) == 0 && gLogDatapath == 1)
        {
          v24 = __nwlog_obj();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v25 = *(a1 + 492);
            *buf = 136446978;
            v35 = "nw_webtransport_http3_stream_fix_http_parameters";
            v36 = 2082;
            v37 = (a1 + 496);
            v38 = 2080;
            v39 = " ";
            v40 = 1024;
            v41 = v25;
            _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL, failing", buf, 0x26u);
          }
        }

        v15 = *(a2 + 88);
        nw_protocol_error(*(a2 + 48), a2);
        nw_protocol_disconnect(a2, v15);
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v35 = "nw_webtransport_http3_stream_fix_http_parameters";
  v16 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (!__nwlog_fault(v16, &type, &v32))
  {
    goto LABEL_57;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v17 = __nwlog_obj();
    v18 = type;
    if (!os_log_type_enabled(v17, type))
    {
      goto LABEL_57;
    }

    *buf = 136446210;
    v35 = "nw_webtransport_http3_stream_fix_http_parameters";
    v19 = "%{public}s called with null webtransport_stream";
    goto LABEL_56;
  }

  if (v32 != 1)
  {
    v17 = __nwlog_obj();
    v18 = type;
    if (!os_log_type_enabled(v17, type))
    {
      goto LABEL_57;
    }

    *buf = 136446210;
    v35 = "nw_webtransport_http3_stream_fix_http_parameters";
    v19 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_56;
  }

  v22 = __nw_create_backtrace_string();
  v17 = __nwlog_obj();
  v18 = type;
  v23 = os_log_type_enabled(v17, type);
  if (!v22)
  {
    if (!v23)
    {
      goto LABEL_57;
    }

    *buf = 136446210;
    v35 = "nw_webtransport_http3_stream_fix_http_parameters";
    v19 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_56;
  }

  if (v23)
  {
    *buf = 136446466;
    v35 = "nw_webtransport_http3_stream_fix_http_parameters";
    v36 = 2082;
    v37 = v22;
    _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v22);
  if (v16)
  {
    goto LABEL_58;
  }
}

uint64_t ___ZL50nw_webtransport_http3_stream_reconfigure_and_startP22nw_webtransport_streamb_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v2 = result;
    v3 = *(result + 32);

    return nw_protocol_connect(v3, v2);
  }

  return result;
}

uint64_t ___ZL46nw_webtransport_session_handle_connect_requestP23nw_webtransport_sessionP20nw_protocol_metadata_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  is_http_transaction = nw_protocol_metadata_is_http_transaction(a3);
  if (is_http_transaction)
  {
    nw_http_transaction_metadata_set_error_code(a3, *(a1 + 32));
  }

  return is_http_transaction ^ 1u;
}

uint64_t ___ZL37nw_webtransport_session_send_metadataP23nw_webtransport_sessionP20nw_protocol_metadataP11nw_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v4 = (*(a1 + 40) + 8);
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    if (v5)
    {
      v4 = (v5 + 40);
    }

    *v4 = v6;
    *v6 = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    nw_frame_finalize(a2);
    v7 = *(a1 + 48);
    if ((!v7 || (*(v7 + 580) & 2) == 0) && gLogDatapath == 1)
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 48);
        v10 = (v9 + 496);
        v11 = "";
        v12 = v9 == 0;
        v13 = *(v9 + 492);
        if (v12)
        {
          v10 = "";
        }

        v16 = "nw_webtransport_session_send_metadata_block_invoke";
        v17 = 2082;
        v15 = 136446978;
        if (!v12)
        {
          v11 = " ";
        }

        v18 = v10;
        v19 = 2080;
        v20 = v11;
        v21 = 1024;
        v22 = v13;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Dropping unneeded output frame", &v15, 0x26u);
      }
    }
  }

  else
  {
    nw_frame_collapse(a2);
    nw_frame_set_metadata(a2, *(a1 + 56), 0, 0);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 1;
}

void ___ZL47nw_protocol_webtransport_http3_stream_callbacksv_block_invoke()
{
  qword_1EA842348 = nw_protocol_default_replace_input_handler;
  qword_1EA842440 = nw_protocol_default_input_flush;
  qword_1EA8423A0 = nw_protocol_default_link_state;
  qword_1EA8423B8 = nw_protocol_default_get_local;
  qword_1EA8423B0 = nw_protocol_default_get_path;
  qword_1EA8423E0 = nw_protocol_default_updated_path;
  qword_1EA842400 = nw_protocol_default_get_output_local;
  qword_1EA842408 = nw_protocol_default_get_output_interface;
  qword_1EA842438 = nw_protocol_default_reset;
  qword_1EA8423E8 = nw_protocol_default_supports_external_data;
  qword_1EA842410 = nw_protocol_default_waiting_for_output;
  qword_1EA8423C8 = nw_protocol_default_register_notification;
  qword_1EA8423D0 = nw_protocol_default_unregister_notification;
  nw_protocol_webtransport_http3_stream_callbacks(void)::protocol_callbacks = nw_protocol_webtransport_stream_add_input_handler;
  qword_1EA8423A8 = nw_protocol_webtransport_stream_get_parameters;
  qword_1EA8423C0 = nw_protocol_webtransport_stream_get_remote_endpoint;
  qword_1EA842358 = nw_protocol_webtransport_stream_disconnect;
  qword_1EA842368 = nw_protocol_webtransport_stream_disconnected;
  qword_1EA842370 = nw_protocol_webtransport_stream_error;
  qword_1EA842378 = nw_protocol_webtransport_stream_input_available;
  qword_1EA842380 = nw_protocol_webtransport_stream_output_available;
  qword_1EA8423D8 = nw_protocol_webtransport_stream_notify;
  qword_1EA842418 = nw_protocol_webtransport_stream_copy_info;
  qword_1EA842420 = nw_protocol_webtransport_stream_add_listen_handler;
  qword_1EA842428 = nw_protocol_webtransport_stream_remove_listen_handler;
  qword_1EA842430 = nw_protocol_webtransport_stream_get_message_properties;
  qword_1EA842340 = nw_protocol_webtransport_http3_stream_remove_input_handler;
  qword_1EA842350 = nw_protocol_webtransport_http3_stream_connect;
  qword_1EA842360 = nw_protocol_webtransport_http3_stream_connected;
  qword_1EA842388 = nw_protocol_webtransport_http3_stream_get_input_frames;
  qword_1EA842390 = nw_protocol_webtransport_http3_stream_get_output_frames;
  qword_1EA842398 = nw_protocol_webtransport_http3_stream_finalize_output_frames;
  qword_1EA8423F0 = nw_protocol_webtransport_http3_stream_input_finished;
  qword_1EA8423F8 = nw_protocol_webtransport_http3_stream_output_finished;
}

void nw_protocol_webtransport_http3_stream_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_webtransport_http3_stream_output_finished";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v3, &type, &v17))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v20 = "nw_protocol_webtransport_http3_stream_output_finished";
      v6 = "%{public}s called with null protocol";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v13 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v20 = "nw_protocol_webtransport_http3_stream_output_finished";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v3)
        {
          return;
        }

LABEL_43:
        free(v3);
        return;
      }

      if (!v13)
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v20 = "nw_protocol_webtransport_http3_stream_output_finished";
      v6 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v20 = "nw_protocol_webtransport_http3_stream_output_finished";
      v6 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_41:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_42;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v7 = a1;
      v8 = __nwlog_obj();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
      a1 = v7;
      if (v9)
      {
        v10 = handle[11];
        if (v10)
        {
          v11 = *(v10 + 492);
        }

        else
        {
          v11 = -1;
        }

        v16 = handle[8];
        *buf = 136447234;
        v20 = "nw_protocol_webtransport_http3_stream_output_finished";
        v21 = 2082;
        v22 = (handle + 24);
        v23 = 2080;
        v24 = " ";
        v25 = 1024;
        v26 = v11;
        v27 = 2048;
        v28 = v16;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        a1 = v7;
      }
    }

    if (*(handle + 47) == 2 && (*(handle + 276) & 8) == 0)
    {
      nw_protocol_output_finished(handle[4], a1);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_webtransport_http3_stream_output_finished";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v3, &type, &v17))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v20 = "nw_protocol_webtransport_http3_stream_output_finished";
    v6 = "%{public}s called with null webtransport_stream";
    goto LABEL_41;
  }

  if (v17 != 1)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v20 = "nw_protocol_webtransport_http3_stream_output_finished";
    v6 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_41;
  }

  v14 = __nw_create_backtrace_string();
  v4 = __nwlog_obj();
  v5 = type;
  v15 = os_log_type_enabled(v4, type);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v20 = "nw_protocol_webtransport_http3_stream_output_finished";
    v6 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_41;
  }

  if (v15)
  {
    *buf = 136446466;
    v20 = "nw_protocol_webtransport_http3_stream_output_finished";
    v21 = 2082;
    v22 = v14;
    _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v3)
  {
    goto LABEL_43;
  }
}

void nw_protocol_webtransport_http3_stream_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_webtransport_http3_stream_input_finished";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v3, &type, &v17))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v20 = "nw_protocol_webtransport_http3_stream_input_finished";
      v6 = "%{public}s called with null protocol";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v13 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v20 = "nw_protocol_webtransport_http3_stream_input_finished";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v3)
        {
          return;
        }

LABEL_43:
        free(v3);
        return;
      }

      if (!v13)
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v20 = "nw_protocol_webtransport_http3_stream_input_finished";
      v6 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v20 = "nw_protocol_webtransport_http3_stream_input_finished";
      v6 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_41:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_42;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v7 = a1;
      v8 = __nwlog_obj();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
      a1 = v7;
      if (v9)
      {
        v10 = handle[11];
        if (v10)
        {
          v11 = *(v10 + 492);
        }

        else
        {
          v11 = -1;
        }

        v16 = handle[8];
        *buf = 136447234;
        v20 = "nw_protocol_webtransport_http3_stream_input_finished";
        v21 = 2082;
        v22 = (handle + 24);
        v23 = 2080;
        v24 = " ";
        v25 = 1024;
        v26 = v11;
        v27 = 2048;
        v28 = v16;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        a1 = v7;
      }
    }

    if (*(handle + 46) == 2 && (*(handle + 276) & 8) == 0)
    {
      nw_protocol_input_finished(handle[6], a1);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_webtransport_http3_stream_input_finished";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v3, &type, &v17))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v20 = "nw_protocol_webtransport_http3_stream_input_finished";
    v6 = "%{public}s called with null webtransport_stream";
    goto LABEL_41;
  }

  if (v17 != 1)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v20 = "nw_protocol_webtransport_http3_stream_input_finished";
    v6 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_41;
  }

  v14 = __nw_create_backtrace_string();
  v4 = __nwlog_obj();
  v5 = type;
  v15 = os_log_type_enabled(v4, type);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v20 = "nw_protocol_webtransport_http3_stream_input_finished";
    v6 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_41;
  }

  if (v15)
  {
    *buf = 136446466;
    v20 = "nw_protocol_webtransport_http3_stream_input_finished";
    v21 = 2082;
    v22 = v14;
    _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v3)
  {
    goto LABEL_43;
  }
}

uint64_t nw_protocol_webtransport_http3_stream_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
      {
        v13 = __nwlog_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = handle[11];
          if (v14)
          {
            v15 = *(v14 + 492);
          }

          else
          {
            v15 = -1;
          }

          v20 = handle[8];
          *buf = 136447234;
          v28 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
          v29 = 2082;
          v30 = (handle + 24);
          v31 = 2080;
          v32 = " ";
          v33 = 1024;
          v34 = v15;
          v35 = 2048;
          v36 = v20;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        }
      }

      if ((*(handle + 276) & 8) == 0)
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 0x40000000;
        v22 = ___ZL60nw_protocol_webtransport_http3_stream_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
        v23 = &__block_descriptor_tmp_58_36697;
        v24 = handle;
        tqh_first = a2->tqh_first;
        do
        {
          if (!tqh_first)
          {
            break;
          }

          v6 = *(tqh_first + 4);
          v7 = (v22)(v21);
          tqh_first = v6;
        }

        while ((v7 & 1) != 0);
      }

      return nw_protocol_common_finalize_output_frames(a1, a2);
    }

    __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v9, &type, &v25))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
        v12 = "%{public}s called with null webtransport_stream";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v25 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
        v12 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v19 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
        v12 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v19)
    {
      *buf = 136446466;
      v28 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
      v29 = 2082;
      v30 = backtrace_string;
      v18 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  __nwlog_obj();
  *buf = 136446210;
  v28 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
  v9 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v9, &type, &v25))
  {
    goto LABEL_43;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v25 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
        v12 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v17 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v28 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
        v12 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v17)
    {
      *buf = 136446466;
      v28 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
      v29 = 2082;
      v30 = backtrace_string;
      v18 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_30:
      _os_log_impl(&dword_181A37000, v10, v11, v18, buf, 0x16u);
    }

LABEL_31:
    free(backtrace_string);
    goto LABEL_43;
  }

  v10 = __nwlog_obj();
  v11 = type;
  if (os_log_type_enabled(v10, type))
  {
    *buf = 136446210;
    v28 = "nw_protocol_webtransport_http3_stream_finalize_output_frames";
    v12 = "%{public}s called with null protocol";
LABEL_42:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
  }

LABEL_43:
  if (v9)
  {
    free(v9);
  }

  return 0;
}

uint64_t ___ZL60nw_protocol_webtransport_http3_stream_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  if (nw_frame_is_metadata_complete(a2))
  {
    *(*(a1 + 32) + 188) = 3;
  }

  return 1;
}

uint64_t nw_protocol_webtransport_http3_stream_get_output_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, uint64_t a4, uint64_t a5, nw_frame_array_s *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v9, &type, &v28))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v12 = "%{public}s called with null protocol";
      goto LABEL_51;
    }

    if (v28 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v12 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v23 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (!v23)
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v12 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_51;
    }

    if (!v23)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
    v32 = 2082;
    v33 = backtrace_string;
    v24 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_35:
    _os_log_impl(&dword_181A37000, v10, v11, v24, buf, 0x16u);
    goto LABEL_36;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v9, &type, &v28))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v12 = "%{public}s called with null webtransport_stream";
      goto LABEL_51;
    }

    if (v28 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v12 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v25 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (!v25)
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v12 = "%{public}s called with null webtransport_stream, no backtrace";
      goto LABEL_51;
    }

    if (!v25)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
    v32 = 2082;
    v33 = backtrace_string;
    v24 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_35;
  }

  if (!a6)
  {
    __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v9, &type, &v28))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v12 = "%{public}s called with null return_array";
      goto LABEL_51;
    }

    if (v28 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v12 = "%{public}s called with null return_array, backtrace limit exceeded";
      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v26 = os_log_type_enabled(v10, type);
    if (backtrace_string)
    {
      if (v26)
      {
        *buf = 136446466;
        v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
        v32 = 2082;
        v33 = backtrace_string;
        v24 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
        goto LABEL_35;
      }

LABEL_36:
      free(backtrace_string);
      goto LABEL_52;
    }

    if (!v26)
    {
      goto LABEL_52;
    }

    *buf = 136446210;
    v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
    v12 = "%{public}s called with null return_array, no backtrace";
LABEL_51:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
LABEL_52:
    if (v9)
    {
      free(v9);
    }

    return 0;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v13 = a6;
    v14 = a5;
    v15 = a4;
    v16 = a3;
    v18 = __nwlog_obj();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    a3 = v16;
    a4 = v15;
    a5 = v14;
    a6 = v13;
    if (v19)
    {
      v20 = handle[11];
      if (v20)
      {
        v21 = *(v20 + 492);
      }

      else
      {
        v21 = -1;
      }

      v27 = handle[8];
      *buf = 136447746;
      v31 = "nw_protocol_webtransport_http3_stream_get_output_frames";
      v32 = 2082;
      v33 = (handle + 24);
      v34 = 2080;
      v35 = " ";
      v36 = 1024;
      v37 = v21;
      v38 = 2048;
      v39 = v27;
      v40 = 2048;
      v41 = a1;
      v42 = 2048;
      v43 = a2;
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called with protocol %p and input protocol %p", buf, 0x44u);
      a6 = v13;
      a5 = v14;
      a4 = v15;
      a3 = v16;
    }
  }

  if (*(handle + 47) == 2)
  {
    return nw_protocol_get_output_frames_quiet(a1->output_handler, a1, a3, a4, a5, a6);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_http3_stream_get_input_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, uint64_t a4, uint64_t a5, nw_frame_array_s *a6)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v15, &type, &v38))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v18 = "%{public}s called with null protocol";
      goto LABEL_60;
    }

    if (v38 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v18 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v28 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (!v28)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v18 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_60;
    }

    if (!v28)
    {
      goto LABEL_45;
    }

    *buf = 136446466;
    v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
    v42 = 2082;
    v43 = backtrace_string;
    v29 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_44:
    _os_log_impl(&dword_181A37000, v16, v17, v29, buf, 0x16u);
    goto LABEL_45;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v15, &type, &v38))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v18 = "%{public}s called with null webtransport_stream";
      goto LABEL_60;
    }

    if (v38 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v18 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v30 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (!v30)
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v18 = "%{public}s called with null webtransport_stream, no backtrace";
      goto LABEL_60;
    }

    if (!v30)
    {
      goto LABEL_45;
    }

    *buf = 136446466;
    v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
    v42 = 2082;
    v43 = backtrace_string;
    v29 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_44;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v15, &type, &v38))
    {
      goto LABEL_61;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v18 = "%{public}s called with null input_protocol";
      goto LABEL_60;
    }

    if (v38 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_61;
      }

      *buf = 136446210;
      v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v18 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v31 = os_log_type_enabled(v16, type);
    if (backtrace_string)
    {
      if (v31)
      {
        *buf = 136446466;
        v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
        v42 = 2082;
        v43 = backtrace_string;
        v29 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
        goto LABEL_44;
      }

LABEL_45:
      free(backtrace_string);
      goto LABEL_61;
    }

    if (!v31)
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
    v18 = "%{public}s called with null input_protocol, no backtrace";
LABEL_60:
    _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
LABEL_61:
    if (v15)
    {
      free(v15);
    }

    return 0;
  }

  if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
  {
    v19 = a5;
    v20 = a4;
    v21 = a3;
    v23 = __nwlog_obj();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    a3 = v21;
    a4 = v20;
    a5 = v19;
    if (v24)
    {
      v25 = *(handle + 11);
      if (v25)
      {
        v26 = *(v25 + 492);
      }

      else
      {
        v26 = -1;
      }

      v32 = *(handle + 8);
      *buf = 136447746;
      v41 = "nw_protocol_webtransport_http3_stream_get_input_frames";
      v42 = 2082;
      v43 = handle + 192;
      v44 = 2080;
      v45 = " ";
      v46 = 1024;
      v47 = v26;
      v48 = 2048;
      v49 = v32;
      v50 = 2048;
      v51 = a1;
      v52 = 2048;
      v53 = a2;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called with protocol %p and input protocol %p", buf, 0x44u);
      a5 = v19;
      a4 = v20;
      a3 = v21;
    }
  }

  if (*(handle + 46) != 2)
  {
    return 0;
  }

  if ((handle[276] & 8) != 0)
  {
    nw_webtransport_http3_handle_input(*(handle + 11));
    v10 = (handle + 72);
    frame_count = nw_frame_array_get_frame_count(handle + 9, 1, 0);
    if (!frame_count)
    {
      return frame_count;
    }

    if (*v10)
    {
      tqh_last = a6->tqh_last;
      *tqh_last = *v10;
      *(*(handle + 9) + 40) = tqh_last;
      a6->tqh_last = *(handle + 10);
      *(handle + 9) = 0;
      *(handle + 10) = v10;
    }
  }

  else
  {
    frame_count = nw_protocol_get_input_frames_quiet(a1->output_handler, a1, a3, a4, a5, a6);
    if (!frame_count)
    {
      return frame_count;
    }
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 0x40000000;
  v35 = ___ZL54nw_protocol_webtransport_http3_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
  v36 = &__block_descriptor_tmp_57_36730;
  v37 = handle;
  tqh_first = a6->tqh_first;
  do
  {
    if (!tqh_first)
    {
      break;
    }

    v13 = *(tqh_first + 4);
    v14 = (v35)(v34);
    tqh_first = v13;
  }

  while ((v14 & 1) != 0);
  return frame_count;
}

uint64_t ___ZL54nw_protocol_webtransport_http3_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  is_metadata_complete = nw_frame_is_metadata_complete(a2);
  v5 = *(a2 + 64);
  *(a2 + 204) &= 0xFFC7u;
  if (v5)
  {
    do
    {
      v6 = *v5;
      v7 = v5[6];
      v8 = *v5;
      if (v7)
      {
        os_release(v7);
        v5[6] = 0;
        v8 = *v5;
      }

      v9 = v5[1];
      v10 = v8 + 1;
      if (!v8)
      {
        v10 = (a2 + 72);
      }

      *v10 = v9;
      *v9 = v8;
      if (v5 != (a2 + 120))
      {
        free(v5);
      }

      v5 = v6;
    }

    while (v6);
  }

  *(a2 + 64) = 0;
  *(a2 + 72) = a2 + 64;
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
  nw_frame_set_metadata(a2, *(*(a1 + 32) + 160), 1, is_metadata_complete);
  if (is_metadata_complete)
  {
    v12 = *(a1 + 32);
    if ((*(v12 + 276) & 8) == 0)
    {
      *(v12 + 184) = 3;
    }
  }

  return 1;
}

void nw_protocol_webtransport_http3_stream_connected(nw_protocol *a1, nw_protocol *a2)
{
  v119 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v104 = "nw_protocol_webtransport_http3_stream_connected";
    v48 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v98[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v48, type, v98))
    {
      goto LABEL_121;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v50 = type[0];
      if (!os_log_type_enabled(v49, type[0]))
      {
        goto LABEL_121;
      }

      *buf = 136446210;
      v104 = "nw_protocol_webtransport_http3_stream_connected";
      v51 = "%{public}s called with null protocol";
      goto LABEL_120;
    }

    if (v98[0] != OS_LOG_TYPE_INFO)
    {
      v49 = __nwlog_obj();
      v50 = type[0];
      if (!os_log_type_enabled(v49, type[0]))
      {
        goto LABEL_121;
      }

      *buf = 136446210;
      v104 = "nw_protocol_webtransport_http3_stream_connected";
      v51 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_120;
    }

    backtrace_string = __nw_create_backtrace_string();
    v49 = __nwlog_obj();
    v50 = type[0];
    v56 = os_log_type_enabled(v49, type[0]);
    if (!backtrace_string)
    {
      if (!v56)
      {
        goto LABEL_121;
      }

      *buf = 136446210;
      v104 = "nw_protocol_webtransport_http3_stream_connected";
      v51 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_120;
    }

    if (v56)
    {
      *buf = 136446466;
      v104 = "nw_protocol_webtransport_http3_stream_connected";
      v105 = 2082;
      v106 = backtrace_string;
      _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_121:
    if (!v48)
    {
      return;
    }

    goto LABEL_122;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v104 = "nw_protocol_webtransport_http3_stream_connected";
    v48 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v98[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v48, type, v98))
    {
      goto LABEL_121;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v50 = type[0];
      if (!os_log_type_enabled(v49, type[0]))
      {
        goto LABEL_121;
      }

      *buf = 136446210;
      v104 = "nw_protocol_webtransport_http3_stream_connected";
      v51 = "%{public}s called with null webtransport_stream";
      goto LABEL_120;
    }

    if (v98[0] != OS_LOG_TYPE_INFO)
    {
      v49 = __nwlog_obj();
      v50 = type[0];
      if (!os_log_type_enabled(v49, type[0]))
      {
        goto LABEL_121;
      }

      *buf = 136446210;
      v104 = "nw_protocol_webtransport_http3_stream_connected";
      v51 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_120;
    }

    v57 = __nw_create_backtrace_string();
    v49 = __nwlog_obj();
    v50 = type[0];
    v58 = os_log_type_enabled(v49, type[0]);
    if (v57)
    {
      if (v58)
      {
        *buf = 136446466;
        v104 = "nw_protocol_webtransport_http3_stream_connected";
        v105 = 2082;
        v106 = v57;
        _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v57);
      if (!v48)
      {
        return;
      }

LABEL_122:
      free(v48);
      return;
    }

    if (v58)
    {
      *buf = 136446210;
      v104 = "nw_protocol_webtransport_http3_stream_connected";
      v51 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_120:
      _os_log_impl(&dword_181A37000, v49, v50, v51, buf, 0xCu);
      goto LABEL_121;
    }

    goto LABEL_121;
  }

  if (!*(handle + 11))
  {
    if ((handle[276] & 0x10) != 0)
    {
      return;
    }

    if (gLogDatapath != 1)
    {
      return;
    }

    v9 = __nwlog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v10 = *(handle + 11);
    if (v10)
    {
      v11 = *(v10 + 492);
    }

    else
    {
      v11 = -1;
    }

    v64 = *(handle + 8);
    *buf = 136447234;
    v104 = "nw_protocol_webtransport_http3_stream_connected";
    v105 = 2082;
    v106 = handle + 192;
    v107 = 2080;
    v108 = " ";
    v109 = 1024;
    v110 = v11;
    v111 = 2048;
    v112 = v64;
    v43 = "%{public}s %{public}s%s<i%u:s%llu> Stream is not fully setup. Ignoring connected.";
    goto LABEL_133;
  }

  v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
  {
    v52 = __nwlog_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v53 = *(handle + 11);
      if (v53)
      {
        v54 = *(v53 + 492);
      }

      else
      {
        v54 = -1;
      }

      v61 = *(handle + 8);
      *buf = 136447234;
      v104 = "nw_protocol_webtransport_http3_stream_connected";
      v105 = 2082;
      v106 = handle + 192;
      v107 = 2080;
      v108 = " ";
      v109 = 1024;
      v110 = v54;
      v111 = 2048;
      v112 = v61;
      _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Got a connected event from the lower layer", buf, 0x30u);
    }
  }

  nw_protocol_connected(a1->default_input_handler->flow_id, a2);
  if (a1->output_handler == a2)
  {
    if (*(handle + 46) == 2 || *(handle + 47) == 2)
    {
      if ((handle[276] & 0x10) != 0)
      {
        return;
      }

      if (gLogDatapath != 1)
      {
        return;
      }

      v9 = __nwlog_obj();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v59 = *(handle + 11);
      if (v59)
      {
        v60 = *(v59 + 492);
      }

      else
      {
        v60 = -1;
      }

      v69 = *(handle + 8);
      *buf = 136447234;
      v104 = "nw_protocol_webtransport_http3_stream_connected";
      v105 = 2082;
      v106 = handle + 192;
      v107 = 2080;
      v108 = " ";
      v109 = 1024;
      v110 = v60;
      v111 = 2048;
      v112 = v69;
      v43 = "%{public}s %{public}s%s<i%u:s%llu> stream is already connected, not forwarding";
LABEL_133:
      v44 = v9;
      v45 = OS_LOG_TYPE_DEBUG;
      goto LABEL_81;
    }

    if ((handle[276] & 8) != 0)
    {
      *(handle + 8) = -2;
      goto LABEL_30;
    }

    if (*(handle + 8) != -1)
    {
      if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
      {
        v12 = __nwlog_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(handle + 11);
          if (v13)
          {
            v14 = *(v13 + 492);
          }

          else
          {
            v14 = -1;
          }

          v87 = *(handle + 8);
          *buf = 136447490;
          v104 = "nw_webtransport_http3_stream_assign_stream_id";
          v105 = 2082;
          v106 = handle + 192;
          v107 = 2080;
          v108 = " ";
          v109 = 1024;
          v110 = v14;
          v111 = 2048;
          v112 = v87;
          v113 = 2048;
          v114 = v87;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Stream ID %llu already set, skipping", buf, 0x3Au);
        }
      }

      goto LABEL_30;
    }

    v26 = *(handle + 11);
    if (v26)
    {
      v27 = *(handle + 4);
      if (v27)
      {
        *v98 = 0;
        v99 = v98;
        v100 = 0x2000000000;
        v101 = -1;
        if (*(v26 + 480) <= 1u)
        {
          v28 = nw_protocol_copy_info(v27);
          v29 = v28;
          if (v28)
          {
            *type = MEMORY[0x1E69E9820];
            v94 = 0x40000000;
            v95 = ___ZL48nw_webtransport_session_get_underlying_stream_idP23nw_webtransport_sessionP11nw_protocolS2__block_invoke;
            v96 = &unk_1E6A31968;
            v97 = v98;
            _nw_array_apply(v28, type);
          }

          if ((*(v26 + 580) & 2) == 0 && gLogDatapath == 1)
          {
            v84 = __nwlog_obj();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
            {
              v85 = *(v26 + 492);
              v86 = *(v99 + 3);
              *buf = 136447234;
              v104 = "nw_webtransport_session_get_underlying_stream_id";
              v105 = 2082;
              v106 = (v26 + 496);
              v107 = 2080;
              v108 = " ";
              v109 = 1024;
              v110 = v85;
              v111 = 2048;
              v112 = v86;
              _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Got underlying stream ID: %llu", buf, 0x30u);
            }
          }

          if (v29)
          {
            os_release(v29);
          }
        }

        v30 = *(v99 + 3);
        _Block_object_dispose(v98, 8);
        if (v30 != -1)
        {
          *(handle + 8) = v30;
          nw_webtransport_metadata_set_stream_id(*(handle + 20), v30);
          if ((handle[276] & 0x10) == 0)
          {
            v31 = __nwlog_obj();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = *(handle + 11);
              if (v32)
              {
                v33 = *(v32 + 492);
              }

              else
              {
                v33 = -1;
              }

              v47 = *(handle + 8);
              *buf = 136448002;
              v104 = "nw_webtransport_http3_stream_assign_stream_id";
              v105 = 2082;
              v106 = handle + 192;
              v107 = 2080;
              v108 = " ";
              v109 = 1024;
              v110 = v33;
              v111 = 2048;
              v112 = v47;
              v113 = 2048;
              v114 = v47;
              v115 = 2048;
              v116 = handle;
              v117 = 1024;
              LODWORD(v118) = 0;
              _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> Assigned stream ID: %llu to stream with protocol %p, incoming: %u", buf, 0x4Au);
            }
          }

          goto LABEL_30;
        }

LABEL_186:
        if ((handle[276] & 0x10) == 0)
        {
          v88 = __nwlog_obj();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v89 = *(handle + 11);
            if (v89)
            {
              v90 = *(v89 + 492);
            }

            else
            {
              v90 = -1;
            }

            v91 = *(handle + 8);
            *buf = 136447234;
            v104 = "nw_webtransport_http3_stream_assign_stream_id";
            v105 = 2082;
            v106 = handle + 192;
            v107 = 2080;
            v108 = " ";
            v109 = 1024;
            v110 = v90;
            v111 = 2048;
            v112 = v91;
            _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Failed to get stream ID for HTTP/3 webtransport stream, failing", buf, 0x30u);
          }
        }

        v92 = *(handle + 11);
        nw_protocol_error(*(handle + 6), handle);
        nw_protocol_disconnect(handle, v92);
LABEL_30:
        v15 = *(handle + 11);
        if (v15)
        {
          if (*(handle + 8) == -2)
          {
            if (*(v15 + 448))
            {
              if ((*(v15 + 580) & 2) == 0)
              {
                v16 = __nwlog_obj();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v17 = *(v15 + 492);
                  *buf = 136446978;
                  v104 = "nw_webtransport_session_add_stream";
                  v105 = 2082;
                  v106 = (v15 + 496);
                  v107 = 2080;
                  v108 = " ";
                  v109 = 1024;
                  v110 = v17;
                  v18 = "%{public}s %{public}s%s<i%u> WebTransport already has datagram stream registered";
                  v19 = v16;
                  v20 = OS_LOG_TYPE_ERROR;
                  v21 = 38;
LABEL_43:
                  _os_log_impl(&dword_181A37000, v19, v20, v18, buf, v21);
                }
              }

LABEL_61:
              default_input_handler = a1->default_input_handler;
              if (!default_input_handler)
              {
                if ((handle[276] & 0x10) != 0)
                {
                  return;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v39 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  return;
                }

                v40 = *(handle + 11);
                if (v40)
                {
                  v41 = *(v40 + 492);
                }

                else
                {
                  v41 = -1;
                }

                v42 = *(handle + 8);
                *buf = 136447234;
                v104 = "nw_protocol_webtransport_http3_stream_connected";
                v105 = 2082;
                v106 = handle + 192;
                v107 = 2080;
                v108 = " ";
                v109 = 1024;
                v110 = v41;
                v111 = 2048;
                v112 = v42;
                v43 = "%{public}s %{public}s%s<i%u:s%llu> No input handler found, ignoring connected call";
                v44 = v39;
                v45 = OS_LOG_TYPE_ERROR;
LABEL_81:
                v46 = 48;
LABEL_82:
                _os_log_impl(&dword_181A37000, v44, v45, v43, buf, v46);
                return;
              }

              if ((handle[276] & 4) != 0)
              {
                v35 = 3;
                if ((handle[276] & 2) != 0)
                {
                  goto LABEL_67;
                }

                *(handle + 46) = 3;
              }

              if (*(handle + 47))
              {
                goto LABEL_68;
              }

              v35 = 2;
LABEL_67:
              *(handle + 47) = v35;
LABEL_68:
              if (!*(handle + 46))
              {
                *(handle + 46) = 2;
              }

              nw_protocol_connected(default_input_handler, a1);
              if ((handle[276] & 0x10) == 0 && BYTE1(v5[82].isa) == 1)
              {
                v36 = __nwlog_obj();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  v37 = *(handle + 11);
                  if (v37)
                  {
                    v38 = *(v37 + 492);
                  }

                  else
                  {
                    v38 = -1;
                  }

                  v79 = *(handle + 8);
                  *buf = 136448002;
                  v104 = "nw_protocol_webtransport_http3_stream_connected";
                  v105 = 2082;
                  v106 = handle + 192;
                  v107 = 2080;
                  v108 = " ";
                  v109 = 1024;
                  v110 = v38;
                  v111 = 2048;
                  v112 = v79;
                  v113 = 2048;
                  v114 = a1;
                  v115 = 2048;
                  v116 = v79;
                  v117 = 2048;
                  v118 = a2;
                  v43 = "%{public}s %{public}s%s<i%u:s%llu> webtransport http3 stream %p with id %llu connected with output_handler %p";
                  v44 = v36;
                  v45 = OS_LOG_TYPE_DEBUG;
                  v46 = 78;
                  goto LABEL_82;
                }
              }

              return;
            }

            *(v15 + 448) = handle;
          }

          else
          {
            no_lock = *(v15 + 192);
            if (!no_lock)
            {
              no_lock = nw_hash_table_create_no_lock(0x11u, 0, nw_webtransport_stream_get_key, nw_webtransport_stream_key_hash, nw_webtransport_stream_matches_key, 0, 0);
              *(v15 + 192) = no_lock;
            }

            type[0] = OS_LOG_TYPE_DEFAULT;
            nw_hash_table_add_object(no_lock, handle, type);
            if ((type[0] & 1) == 0)
            {
              if ((*(v15 + 580) & 2) != 0)
              {
                goto LABEL_61;
              }

              v23 = __nwlog_obj();
              if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_61;
              }

              v24 = *(v15 + 492);
              v25 = *(handle + 8);
              *buf = 136447234;
              v104 = "nw_webtransport_session_add_stream";
              v105 = 2082;
              v106 = (v15 + 496);
              v107 = 2080;
              v108 = " ";
              v109 = 1024;
              v110 = v24;
              v111 = 2048;
              v112 = v25;
              v18 = "%{public}s %{public}s%s<i%u> WebTransport already has stream id registered for %llu";
              v19 = v23;
              v20 = OS_LOG_TYPE_ERROR;
LABEL_42:
              v21 = 48;
              goto LABEL_43;
            }
          }

          if ((*(v15 + 580) & 2) != 0)
          {
            goto LABEL_61;
          }

          if (BYTE1(v5[82].isa) != 1)
          {
            goto LABEL_61;
          }

          v72 = __nwlog_obj();
          if (!os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_61;
          }

          v73 = *(v15 + 492);
          v74 = *(handle + 8);
          *buf = 136447234;
          v104 = "nw_webtransport_session_add_stream";
          v105 = 2082;
          v106 = (v15 + 496);
          v107 = 2080;
          v108 = " ";
          v109 = 1024;
          v110 = v73;
          v111 = 2048;
          v112 = v74;
          v18 = "%{public}s %{public}s%s<i%u> Added stream %llu to WebTransport streams";
          v19 = v72;
          v20 = OS_LOG_TYPE_DEBUG;
          goto LABEL_42;
        }

        __nwlog_obj();
        *buf = 136446210;
        v104 = "nw_webtransport_session_add_stream";
        v65 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v98[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v65, type, v98))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v66 = __nwlog_obj();
            v67 = type[0];
            if (os_log_type_enabled(v66, type[0]))
            {
              *buf = 136446210;
              v104 = "nw_webtransport_session_add_stream";
              v68 = "%{public}s called with null webtransport_session";
LABEL_155:
              _os_log_impl(&dword_181A37000, v66, v67, v68, buf, 0xCu);
            }
          }

          else if (v98[0] == OS_LOG_TYPE_INFO)
          {
            v70 = __nw_create_backtrace_string();
            v66 = __nwlog_obj();
            v67 = type[0];
            v71 = os_log_type_enabled(v66, type[0]);
            if (v70)
            {
              if (v71)
              {
                *buf = 136446466;
                v104 = "nw_webtransport_session_add_stream";
                v105 = 2082;
                v106 = v70;
                _os_log_impl(&dword_181A37000, v66, v67, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v70);
              goto LABEL_156;
            }

            if (v71)
            {
              *buf = 136446210;
              v104 = "nw_webtransport_session_add_stream";
              v68 = "%{public}s called with null webtransport_session, no backtrace";
              goto LABEL_155;
            }
          }

          else
          {
            v66 = __nwlog_obj();
            v67 = type[0];
            if (os_log_type_enabled(v66, type[0]))
            {
              *buf = 136446210;
              v104 = "nw_webtransport_session_add_stream";
              v68 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
              goto LABEL_155;
            }
          }
        }

LABEL_156:
        if (v65)
        {
          free(v65);
        }

        v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        goto LABEL_61;
      }

      __nwlog_obj();
      *buf = 136446210;
      v104 = "nw_webtransport_session_get_underlying_stream_id";
      v75 = _os_log_send_and_compose_impl();
      v98[0] = OS_LOG_TYPE_ERROR;
      v102 = 0;
      if (__nwlog_fault(v75, v98, &v102))
      {
        if (v98[0] == OS_LOG_TYPE_FAULT)
        {
          v76 = __nwlog_obj();
          v77 = v98[0];
          if (!os_log_type_enabled(v76, v98[0]))
          {
            goto LABEL_183;
          }

          *buf = 136446210;
          v104 = "nw_webtransport_session_get_underlying_stream_id";
          v78 = "%{public}s called with null output_protocol";
          goto LABEL_182;
        }

        if (v102 != 1)
        {
          v76 = __nwlog_obj();
          v77 = v98[0];
          if (!os_log_type_enabled(v76, v98[0]))
          {
            goto LABEL_183;
          }

          *buf = 136446210;
          v104 = "nw_webtransport_session_get_underlying_stream_id";
          v78 = "%{public}s called with null output_protocol, backtrace limit exceeded";
          goto LABEL_182;
        }

        v82 = __nw_create_backtrace_string();
        v76 = __nwlog_obj();
        v77 = v98[0];
        v83 = os_log_type_enabled(v76, v98[0]);
        if (!v82)
        {
          if (!v83)
          {
            goto LABEL_183;
          }

          *buf = 136446210;
          v104 = "nw_webtransport_session_get_underlying_stream_id";
          v78 = "%{public}s called with null output_protocol, no backtrace";
          goto LABEL_182;
        }

        if (v83)
        {
          *buf = 136446466;
          v104 = "nw_webtransport_session_get_underlying_stream_id";
          v105 = 2082;
          v106 = v82;
          _os_log_impl(&dword_181A37000, v76, v77, "%{public}s called with null output_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v82);
      }

LABEL_183:
      if (!v75)
      {
LABEL_185:
        v5 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        goto LABEL_186;
      }

LABEL_184:
      free(v75);
      goto LABEL_185;
    }

    __nwlog_obj();
    *buf = 136446210;
    v104 = "nw_webtransport_session_get_underlying_stream_id";
    v75 = _os_log_send_and_compose_impl();
    v98[0] = OS_LOG_TYPE_ERROR;
    v102 = 0;
    if (!__nwlog_fault(v75, v98, &v102))
    {
      goto LABEL_183;
    }

    if (v98[0] == OS_LOG_TYPE_FAULT)
    {
      v76 = __nwlog_obj();
      v77 = v98[0];
      if (!os_log_type_enabled(v76, v98[0]))
      {
        goto LABEL_183;
      }

      *buf = 136446210;
      v104 = "nw_webtransport_session_get_underlying_stream_id";
      v78 = "%{public}s called with null webtransport_session";
    }

    else
    {
      if (v102 != 1)
      {
        v76 = __nwlog_obj();
        v77 = v98[0];
        if (!os_log_type_enabled(v76, v98[0]))
        {
          goto LABEL_183;
        }

        *buf = 136446210;
        v104 = "nw_webtransport_session_get_underlying_stream_id";
        v78 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_182;
      }

      v80 = __nw_create_backtrace_string();
      v76 = __nwlog_obj();
      v77 = v98[0];
      v81 = os_log_type_enabled(v76, v98[0]);
      if (v80)
      {
        if (v81)
        {
          *buf = 136446466;
          v104 = "nw_webtransport_session_get_underlying_stream_id";
          v105 = 2082;
          v106 = v80;
          _os_log_impl(&dword_181A37000, v76, v77, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v80);
        if (!v75)
        {
          goto LABEL_185;
        }

        goto LABEL_184;
      }

      if (!v81)
      {
        goto LABEL_183;
      }

      *buf = 136446210;
      v104 = "nw_webtransport_session_get_underlying_stream_id";
      v78 = "%{public}s called with null webtransport_session, no backtrace";
    }

LABEL_182:
    _os_log_impl(&dword_181A37000, v76, v77, v78, buf, 0xCu);
    goto LABEL_183;
  }

  if ((handle[276] & 0x10) == 0 && gLogDatapath == 1)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(handle + 11);
      if (v7)
      {
        v8 = *(v7 + 492);
      }

      else
      {
        v8 = -1;
      }

      v62 = *(handle + 8);
      identifier = a2->identifier;
      *buf = 136447746;
      v104 = "nw_protocol_webtransport_http3_stream_connected";
      v105 = 2082;
      v106 = handle + 192;
      v107 = 2080;
      v108 = " ";
      v109 = 1024;
      v110 = v8;
      v111 = 2048;
      v112 = v62;
      v113 = 2048;
      v114 = a2;
      v115 = 2080;
      v116 = identifier;
      v43 = "%{public}s %{public}s%s<i%u:s%llu> connected protocol %p (%s) is not our output_handler, ignoring";
      v44 = v6;
      v45 = OS_LOG_TYPE_DEBUG;
      v46 = 68;
      goto LABEL_82;
    }
  }
}

uint64_t nw_protocol_webtransport_http3_stream_connect(nw_protocol *a1, nw_protocol *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
      {
        v9 = __nwlog_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = handle[11];
          if (v10)
          {
            v11 = *(v10 + 492);
          }

          else
          {
            v11 = -1;
          }

          v16 = handle[8];
          *buf = 136447234;
          v20 = "nw_protocol_webtransport_http3_stream_connect";
          v21 = 2082;
          v22 = (handle + 24);
          v23 = 2080;
          v24 = " ";
          v25 = 1024;
          v26 = v11;
          v27 = 2048;
          v28 = v16;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        }
      }

      return nw_protocol_connect(a1->output_handler->flow_id, a1);
    }

    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_webtransport_http3_stream_connect";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v5, &type, &v17))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_webtransport_http3_stream_connect";
        v8 = "%{public}s called with null webtransport_stream";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v17 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_webtransport_http3_stream_connect";
        v8 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v15 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_protocol_webtransport_http3_stream_connect";
        v8 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v15)
    {
      *buf = 136446466;
      v20 = "nw_protocol_webtransport_http3_stream_connect";
      v21 = 2082;
      v22 = backtrace_string;
      v14 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_webtransport_http3_stream_connect";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v5, &type, &v17))
  {
    goto LABEL_39;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v17 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_webtransport_http3_stream_connect";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v13 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v20 = "nw_protocol_webtransport_http3_stream_connect";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v13)
    {
      *buf = 136446466;
      v20 = "nw_protocol_webtransport_http3_stream_connect";
      v21 = 2082;
      v22 = backtrace_string;
      v14 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_26:
      _os_log_impl(&dword_181A37000, v6, v7, v14, buf, 0x16u);
    }

LABEL_27:
    free(backtrace_string);
    goto LABEL_39;
  }

  v6 = __nwlog_obj();
  v7 = type;
  if (os_log_type_enabled(v6, type))
  {
    *buf = 136446210;
    v20 = "nw_protocol_webtransport_http3_stream_connect";
    v8 = "%{public}s called with null protocol";
LABEL_38:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_39:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_http3_stream_remove_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v194 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
    v132 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v180[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v132, type, v180))
    {
      goto LABEL_279;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v133 = __nwlog_obj();
      v134 = type[0];
      if (!os_log_type_enabled(v133, type[0]))
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v135 = "%{public}s called with null protocol";
      goto LABEL_278;
    }

    if (v180[0] != OS_LOG_TYPE_INFO)
    {
      v133 = __nwlog_obj();
      v134 = type[0];
      if (!os_log_type_enabled(v133, type[0]))
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v135 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_278;
    }

    backtrace_string = __nw_create_backtrace_string();
    v133 = __nwlog_obj();
    v134 = type[0];
    v140 = os_log_type_enabled(v133, type[0]);
    if (!backtrace_string)
    {
      if (!v140)
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v135 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_278;
    }

    if (!v140)
    {
      goto LABEL_252;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v141 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_251:
    _os_log_impl(&dword_181A37000, v133, v134, v141, buf, 0x16u);
    goto LABEL_252;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
    v132 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v180[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v132, type, v180))
    {
      goto LABEL_279;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v133 = __nwlog_obj();
      v134 = type[0];
      if (!os_log_type_enabled(v133, type[0]))
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v135 = "%{public}s called with null webtransport_stream";
      goto LABEL_278;
    }

    if (v180[0] != OS_LOG_TYPE_INFO)
    {
      v133 = __nwlog_obj();
      v134 = type[0];
      if (!os_log_type_enabled(v133, type[0]))
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v135 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_278;
    }

    backtrace_string = __nw_create_backtrace_string();
    v133 = __nwlog_obj();
    v134 = type[0];
    v142 = os_log_type_enabled(v133, type[0]);
    if (!backtrace_string)
    {
      if (!v142)
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v135 = "%{public}s called with null webtransport_stream, no backtrace";
      goto LABEL_278;
    }

    if (!v142)
    {
      goto LABEL_252;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v141 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_251;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
    v132 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v180[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v132, type, v180))
    {
      goto LABEL_279;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v133 = __nwlog_obj();
      v134 = type[0];
      if (!os_log_type_enabled(v133, type[0]))
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v135 = "%{public}s called with null input_protocol";
      goto LABEL_278;
    }

    if (v180[0] != OS_LOG_TYPE_INFO)
    {
      v133 = __nwlog_obj();
      v134 = type[0];
      if (!os_log_type_enabled(v133, type[0]))
      {
        goto LABEL_279;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      v135 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_278;
    }

    backtrace_string = __nw_create_backtrace_string();
    v133 = __nwlog_obj();
    v134 = type[0];
    v143 = os_log_type_enabled(v133, type[0]);
    if (backtrace_string)
    {
      if (v143)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v141 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
        goto LABEL_251;
      }

LABEL_252:
      free(backtrace_string);
      goto LABEL_279;
    }

    if (!v143)
    {
      goto LABEL_279;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
    v135 = "%{public}s called with null input_protocol, no backtrace";
LABEL_278:
    _os_log_impl(&dword_181A37000, v133, v134, v135, buf, 0xCu);
LABEL_279:
    if (v132)
    {
      free(v132);
    }

    return 0;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v136 = __nwlog_obj();
    if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
    {
      v137 = handle[11];
      if (v137)
      {
        v138 = *(v137 + 492);
      }

      else
      {
        v138 = -1;
      }

      v148 = handle[8];
      *buf = 136447234;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v188 = " ";
      *v189 = 1024;
      *&v189[2] = v138;
      *&v189[6] = 2048;
      *&v189[8] = v148;
      _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
    }
  }

  if ((*(handle + 276) & 0x10) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v6 = handle[11];
      if (v6)
      {
        v7 = *(v6 + 492);
      }

      else
      {
        v7 = -1;
      }

      v8 = handle[8];
      default_input_handler = a1->default_input_handler;
      *buf = 136448002;
      *&buf[4] = "nw_protocol_webtransport_http3_stream_remove_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v188 = " ";
      *v189 = 1024;
      *&v189[2] = v7;
      *&v189[6] = 2048;
      *&v189[8] = v8;
      *&v189[16] = 2048;
      *&v189[18] = a1;
      v190 = 2048;
      v191 = default_input_handler;
      v192 = 2048;
      v193 = a2;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:s%llu> protocol %p, default_input_handler %p, input protocol %p", buf, 0x4Eu);
    }
  }

  if (a2->output_handler == a1)
  {
    nw_protocol_set_output_handler(a2, 0);
  }

  if (a1->default_input_handler != a2)
  {
    return 0;
  }

  if ((*(handle + 276) & 8) == 0)
  {
    nw_protocol_remove_input_handler(handle[4], a1);
  }

  nw_protocol_set_output_handler(a1, 0);
  v168 = handle[11];
  if (!v168)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_remove_stream";
    v144 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v180[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v144, type, v180))
    {
      goto LABEL_293;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v145 = __nwlog_obj();
      v146 = type[0];
      if (!os_log_type_enabled(v145, type[0]))
      {
        goto LABEL_293;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      v147 = "%{public}s called with null webtransport_session";
    }

    else if (v180[0] == OS_LOG_TYPE_INFO)
    {
      v149 = __nw_create_backtrace_string();
      v145 = __nwlog_obj();
      v146 = type[0];
      v150 = os_log_type_enabled(v145, type[0]);
      if (v149)
      {
        if (v150)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_remove_stream";
          *&buf[12] = 2082;
          *&buf[14] = v149;
          _os_log_impl(&dword_181A37000, v145, v146, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v149);
        goto LABEL_293;
      }

      if (!v150)
      {
LABEL_293:
        if (v144)
        {
          free(v144);
        }

        goto LABEL_86;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      v147 = "%{public}s called with null webtransport_session, no backtrace";
    }

    else
    {
      v145 = __nwlog_obj();
      v146 = type[0];
      if (!os_log_type_enabled(v145, type[0]))
      {
        goto LABEL_293;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      v147 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v145, v146, v147, buf, 0xCu);
    goto LABEL_293;
  }

  if ((*(handle + 276) & 0x20) != 0)
  {
    if ((*(v168 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v151 = __nwlog_obj();
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
      {
        v152 = *(v168 + 492);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_remove_pending_stream";
        *&buf[12] = 2082;
        *&buf[14] = v168 + 496;
        *&buf[22] = 2080;
        v188 = " ";
        *v189 = 1024;
        *&v189[2] = v152;
        *&v189[6] = 2048;
        *&v189[8] = handle;
        _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream (%p)", buf, 0x30u);
      }
    }

    if ((*(handle + 276) & 0x20) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      *&buf[4] = "nw_webtransport_session_remove_pending_stream";
      *&buf[12] = 2048;
      *&buf[14] = handle;
      v15 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v180[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v15, type, v180))
      {
        goto LABEL_67;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_67;
        }

        *buf = 136446466;
        *&buf[4] = "nw_webtransport_session_remove_pending_stream";
        *&buf[12] = 2048;
        *&buf[14] = handle;
        v18 = "%{public}s stream %p not in pending list, cannot remove";
      }

      else if (v180[0] == OS_LOG_TYPE_INFO)
      {
        v29 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type[0];
        v30 = os_log_type_enabled(gLogObj, type[0]);
        if (v29)
        {
          if (v30)
          {
            *buf = 136446722;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            *&buf[12] = 2048;
            *&buf[14] = handle;
            *&buf[22] = 2082;
            v188 = v29;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v29);
          goto LABEL_67;
        }

        if (!v30)
        {
LABEL_67:
          if (v15)
          {
            free(v15);
          }

          goto LABEL_79;
        }

        *buf = 136446466;
        *&buf[4] = "nw_webtransport_session_remove_pending_stream";
        *&buf[12] = 2048;
        *&buf[14] = handle;
        v18 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_67;
        }

        *buf = 136446466;
        *&buf[4] = "nw_webtransport_session_remove_pending_stream";
        *&buf[12] = 2048;
        *&buf[14] = handle;
        v18 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0x16u);
      goto LABEL_67;
    }

    v19 = handle[14];
    v20 = handle[15];
    v21 = (v168 + 344);
    if (v19)
    {
      v21 = (v19 + 120);
    }

    *v21 = v20;
    *v20 = v19;
    handle[14] = 0;
    handle[15] = 0;
    v22 = *(v168 + 488);
    *(v168 + 488) = v22 - 1;
    if (v22)
    {
LABEL_77:
      v40 = *(handle + 276);
      *(handle + 276) = v40 & 0xDF;
      if ((v40 & 0x10) == 0 && gLogDatapath == 1)
      {
        v153 = __nwlog_obj();
        if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
        {
          v154 = handle[11];
          if (v154)
          {
            v155 = *(v154 + 492);
          }

          else
          {
            v155 = -1;
          }

          v160 = handle[8];
          v161 = *(v168 + 488);
          *buf = 136447746;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = handle + 24;
          *&buf[22] = 2080;
          v188 = " ";
          *v189 = 1024;
          *&v189[2] = v155;
          *&v189[6] = 2048;
          *&v189[8] = v160;
          *&v189[16] = 2048;
          *&v189[18] = handle;
          v190 = 1024;
          LODWORD(v191) = v161;
          v14 = "%{public}s %{public}s%s<i%u:s%llu> removed pending stream (%p), now have %u pending streams";
          v32 = v153;
          v33 = OS_LOG_TYPE_DEBUG;
          v34 = 64;
          goto LABEL_56;
        }
      }

      goto LABEL_79;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = *(v168 + 488);
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_remove_pending_stream";
    *&buf[12] = 2082;
    *&buf[14] = "webtransport_session->pending_stream_count";
    *&buf[22] = 2048;
    v188 = 1;
    *v189 = 2048;
    *&v189[2] = v23;
    v24 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v180[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v24, type, v180))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          v27 = *(v168 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "webtransport_session->pending_stream_count";
          *&buf[22] = 2048;
          v188 = 1;
          *v189 = 2048;
          *&v189[2] = v27;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_73:
          _os_log_impl(&dword_181A37000, v25, v26, v28, buf, 0x2Au);
        }
      }

      else if (v180[0] == OS_LOG_TYPE_INFO)
      {
        v35 = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type[0];
        v36 = os_log_type_enabled(v25, type[0]);
        if (v35)
        {
          if (v36)
          {
            v37 = *(v168 + 488);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            *&buf[12] = 2082;
            *&buf[14] = "webtransport_session->pending_stream_count";
            *&buf[22] = 2048;
            v188 = 1;
            *v189 = 2048;
            *&v189[2] = v37;
            *&v189[10] = 2082;
            *&v189[12] = v35;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v35);
          goto LABEL_74;
        }

        if (v36)
        {
          v39 = *(v168 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "webtransport_session->pending_stream_count";
          *&buf[22] = 2048;
          v188 = 1;
          *v189 = 2048;
          *&v189[2] = v39;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_73;
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v26 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          v38 = *(v168 + 488);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          *&buf[12] = 2082;
          *&buf[14] = "webtransport_session->pending_stream_count";
          *&buf[22] = 2048;
          v188 = 1;
          *v189 = 2048;
          *&v189[2] = v38;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_73;
        }
      }
    }

LABEL_74:
    if (v24)
    {
      free(v24);
    }

    *(v168 + 488) = 0;
    goto LABEL_77;
  }

  if (*(v168 + 440) == handle)
  {
    if ((*(v168 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v156 = __nwlog_obj();
      if (os_log_type_enabled(v156, OS_LOG_TYPE_DEBUG))
      {
        v157 = *(v168 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v168 + 496;
        *&buf[22] = 2080;
        v188 = " ";
        *v189 = 1024;
        *&v189[2] = v157;
        _os_log_impl(&dword_181A37000, v156, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Removing placeholder stream for session", buf, 0x26u);
      }
    }

    *(v168 + 440) = 0;
  }

  else if (*(v168 + 448) == handle)
  {
    if ((*(v168 + 580) & 2) == 0 && gLogDatapath == 1)
    {
      v158 = __nwlog_obj();
      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
      {
        v159 = *(v168 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v168 + 496;
        *&buf[22] = 2080;
        v188 = " ";
        *v189 = 1024;
        *&v189[2] = v159;
        _os_log_impl(&dword_181A37000, v158, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Removing datagram stream for session", buf, 0x26u);
      }
    }

    *(v168 + 448) = 0;
  }

  else
  {
    *type = handle[8];
    node = nw_hash_table_get_node(*(v168 + 192), type, 8);
    if (node)
    {
      if ((nw_hash_table_remove_node(*(v168 + 192), node) & 1) == 0 && (*(v168 + 580) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v13 = *(v168 + 492);
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_session_remove_stream";
          *&buf[12] = 2082;
          *&buf[14] = v168 + 496;
          *&buf[22] = 2080;
          v188 = " ";
          *v189 = 1024;
          *&v189[2] = v13;
          *&v189[6] = 2048;
          *&v189[8] = *type;
          v14 = "%{public}s %{public}s%s<i%u> Failed to remove stream %llu from hash table";
LABEL_55:
          v32 = v12;
          v33 = OS_LOG_TYPE_ERROR;
          v34 = 48;
LABEL_56:
          _os_log_impl(&dword_181A37000, v32, v33, v14, buf, v34);
        }
      }
    }

    else if ((*(v168 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v31 = *(v168 + 492);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v168 + 496;
        *&buf[22] = 2080;
        v188 = " ";
        *v189 = 1024;
        *&v189[2] = v31;
        *&v189[6] = 2048;
        *&v189[8] = *type;
        v14 = "%{public}s %{public}s%s<i%u> called remove_input_handler with stream id %llu, but no stream found";
        goto LABEL_55;
      }
    }
  }

LABEL_79:
  handle[11] = 0;
  v41 = v168;
  if (*(v168 + 48) != handle)
  {
    goto LABEL_86;
  }

  if (*(v168 + 476))
  {
    v42 = *(v168 + 448);
    if (v42)
    {
LABEL_82:
      nw_protocol_set_input_handler(v41, v42);
      if ((*(v41 + 580) & 2) != 0)
      {
        goto LABEL_86;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v43 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_86;
      }

      v44 = *(v41 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      *&buf[12] = 2082;
      *&buf[14] = v41 + 496;
      *&buf[22] = 2080;
      v188 = " ";
      *v189 = 1024;
      *&v189[2] = v44;
      v45 = "%{public}s %{public}s%s<i%u> not destroying, still have datagram stream";
      goto LABEL_85;
    }
  }

  else
  {
    if ((*(v168 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v53 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v54 = *(v168 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_remove_stream";
        *&buf[12] = 2082;
        *&buf[14] = v168 + 496;
        *&buf[22] = 2080;
        v188 = " ";
        *v189 = 1024;
        *&v189[2] = v54;
        _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> first input handler bailed, closing", buf, 0x26u);
      }
    }

    v41 = v168;
    v55 = *(v168 + 464);
    v56 = *(v168 + 416);
    v169[0] = MEMORY[0x1E69E9820];
    v169[1] = 0x40000000;
    v169[2] = ___ZL37nw_webtransport_session_remove_streamP23nw_webtransport_sessionP22nw_webtransport_stream_block_invoke;
    v169[3] = &unk_1E6A31A10;
    v169[4] = v55;
    nw_queue_context_async(v56, v169);
    v42 = *(v168 + 448);
    if (v42)
    {
      goto LABEL_82;
    }
  }

  v57 = *(v41 + 192);
  if (v57 && v57[12]._os_unfair_lock_opaque)
  {
    some_node = nw_hash_table_get_some_node(v57);
    object = nw_hash_node_get_object(some_node);
    nw_protocol_set_input_handler(v168, object);
    if ((*(v168 + 580) & 2) != 0)
    {
      goto LABEL_86;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v43 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_86;
    }

    v60 = *(v168 + 492);
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_remove_stream";
    *&buf[12] = 2082;
    *&buf[14] = v168 + 496;
    *&buf[22] = 2080;
    v188 = " ";
    *v189 = 1024;
    *&v189[2] = v60;
    v45 = "%{public}s %{public}s%s<i%u> not destroying, still have active streams";
    goto LABEL_85;
  }

  if (!*(v168 + 488))
  {
    v71 = *(v168 + 440);
    v72 = v168;
    if (v71)
    {
      nw_protocol_set_input_handler(v168, v71);
      if ((*(v168 + 580) & 2) != 0)
      {
        goto LABEL_86;
      }

      v43 = __nwlog_obj();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        goto LABEL_86;
      }

      v73 = *(v168 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_remove_stream";
      *&buf[12] = 2082;
      *&buf[14] = v168 + 496;
      *&buf[22] = 2080;
      v188 = " ";
      *v189 = 1024;
      *&v189[2] = v73;
      v45 = "%{public}s %{public}s%s<i%u> not destroying, still have placeholder stream";
      goto LABEL_85;
    }

    nw_protocol_set_input_handler(v168, 0);
    if ((*(v168 + 580) & 2) == 0)
    {
      v74 = __nwlog_obj();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        v75 = *(v168 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_destroy";
        *&buf[12] = 2082;
        *&buf[14] = v168 + 496;
        *&buf[22] = 2080;
        v188 = " ";
        *v189 = 1024;
        *&v189[2] = v75;
        _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> called, destroying session", buf, 0x26u);
      }
    }

    *buf = 0;
    nw::retained_ptr<nw_endpoint *>::operator=(v168 + 368, buf);
    *buf = 0;
    nw::retained_ptr<nw_endpoint *>::operator=(v168 + 384, buf);
    *buf = 0;
    nw::retained_ptr<nw_endpoint *>::operator=(v168 + 400, buf);
    nw_http_capsule_framer_cleanup((v168 + 96));
    v76 = *(v168 + 424);
    if (v76)
    {
      (*(*v76 + 8))(v76, v168, 0);
    }

    if ((*(v168 + 580) & 4) != 0)
    {
      if ((nw_protocol_remove_listen_handler(*(v168 + 432), v168 + 64) & 1) == 0 && (*(v168 + 580) & 2) == 0)
      {
        v77 = __nwlog_obj();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v78 = *(v168 + 492);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v168 + 496;
          *&buf[22] = 2080;
          v188 = " ";
          *v189 = 1024;
          *&v189[2] = v78;
          _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> failed to remove listen handler", buf, 0x26u);
        }
      }

      *(v168 + 432) = 0;
    }

    v79 = *(v168 + 32);
    if (v79)
    {
      nw_protocol_remove_input_handler(v79, v168);
      if (*(v168 + 476) != 5)
      {
        nw_protocol_remove_instance(v168);
      }
    }

    v176 = 0;
    v177 = &v176;
    v178 = 0x2000000000;
    v179 = 0;
    v80 = *(v168 + 192);
    if (v80)
    {
      *type = MEMORY[0x1E69E9820];
      v171 = 0x40000000;
      v172 = ___ZL31nw_webtransport_session_destroyP23nw_webtransport_session_block_invoke;
      v173 = &unk_1E6A31A38;
      v174 = &v176;
      v175 = v168;
      nw_hash_table_apply(v80, type);
      v82 = *(v168 + 192);
      if (v82)
      {
        _nw_hash_table_release(v82, v81);
        *(v168 + 192) = 0;
      }
    }

    v83 = *(v168 + 336);
    v177[3] = v83;
    if (!v83)
    {
      (*(*(v168 + 464) + 16))(*(v168 + 464), 0);
      v131 = *(v168 + 464);
      if (v131)
      {
        _Block_release(v131);
        *(v168 + 464) = 0;
      }

      std::destroy_at[abi:nn200100]<nw_webtransport_session,0>(v168);
      free(v168);
      _Block_object_dispose(&v176, 8);
      goto LABEL_86;
    }

    v84 = &qword_1ED411000;
    while (1)
    {
      v83 = *(v83 + 112);
      if ((*(v72 + 580) & 2) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v85 = v84[275];
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          v86 = *(v72 + 492);
          v87 = v177[3];
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_session_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v168 + 496;
          *&buf[22] = 2080;
          v188 = " ";
          *v189 = 1024;
          *&v189[2] = v86;
          *&v189[6] = 2048;
          *&v189[8] = v87;
          _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> should not have stream %p left, destroying anyways", buf, 0x30u);
        }
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_destroy";
      v88 = _os_log_send_and_compose_impl();
      v180[0] = OS_LOG_TYPE_ERROR;
      v186 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v88, v180, &v186))
      {
        if (v180[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v89 = gLogObj;
          v90 = v180[0];
          if (!os_log_type_enabled(gLogObj, v180[0]))
          {
            goto LABEL_172;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_destroy";
          v91 = v89;
          v92 = v90;
          v93 = "%{public}s should not have streams left when destroying";
LABEL_171:
          _os_log_impl(&dword_181A37000, v91, v92, v93, buf, 0xCu);
          goto LABEL_172;
        }

        if (v186 != OS_LOG_TYPE_INFO)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v98 = gLogObj;
          v99 = v180[0];
          if (!os_log_type_enabled(gLogObj, v180[0]))
          {
            goto LABEL_172;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_destroy";
          v91 = v98;
          v92 = v99;
          v93 = "%{public}s should not have streams left when destroying, backtrace limit exceeded";
          goto LABEL_171;
        }

        v94 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v95 = gLogObj;
        v96 = v180[0];
        v97 = os_log_type_enabled(gLogObj, v180[0]);
        if (!v94)
        {
          if (!v97)
          {
            goto LABEL_172;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_destroy";
          v91 = v95;
          v92 = v96;
          v93 = "%{public}s should not have streams left when destroying, no backtrace";
          goto LABEL_171;
        }

        if (v97)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v94;
          _os_log_impl(&dword_181A37000, v95, v96, "%{public}s should not have streams left when destroying, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v94);
      }

LABEL_172:
      if (v88)
      {
        free(v88);
      }

      v100 = *(v83 + 112);
      v101 = *(v83 + 120);
      v102 = (v100 + 120);
      if (!v100)
      {
        v102 = (v168 + 344);
      }

      *v102 = v101;
      *v101 = v100;
      *(v83 + 112) = 0;
      *(v83 + 120) = 0;
      v103 = v177[3];
      v84 = &qword_1ED411000;
      if (v103)
      {
        if ((*(v103 + 276) & 0x10) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v104 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v105 = *(v103 + 88);
            if (v105)
            {
              v106 = *(v105 + 492);
            }

            else
            {
              v106 = -1;
            }

            v107 = *(v103 + 64);
            *buf = 136447490;
            *&buf[4] = "nw_webtransport_stream_destroy";
            *&buf[12] = 2082;
            *&buf[14] = v103 + 192;
            *&buf[22] = 2080;
            v188 = " ";
            *v189 = 1024;
            *&v189[2] = v106;
            *&v189[6] = 2048;
            *&v189[8] = v107;
            *&v189[16] = 2048;
            *&v189[18] = v103;
            _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> destroying stream %p", buf, 0x3Au);
          }
        }

        if (*(v103 + 72))
        {
          if ((*(v103 + 276) & 0x10) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v108 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              v109 = *(v103 + 88);
              if (v109)
              {
                v110 = *(v109 + 492);
              }

              else
              {
                v110 = -1;
              }

              v111 = *(v103 + 64);
              *buf = 136447234;
              *&buf[4] = "nw_webtransport_stream_destroy";
              *&buf[12] = 2082;
              *&buf[14] = v103 + 192;
              *&buf[22] = 2080;
              v188 = " ";
              *v189 = 1024;
              *&v189[2] = v110;
              *&v189[6] = 2048;
              *&v189[8] = v111;
              _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> input_frames has unread frames before destroying", buf, 0x30u);
            }
          }
        }

        *v180 = MEMORY[0x1E69E9820];
        v181 = 0x40000000;
        v182 = ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke;
        v183 = &__block_descriptor_tmp_39_36819;
        v184 = v103;
        v112 = *(v103 + 72);
        do
        {
          if (!v112)
          {
            break;
          }

          v113 = *(v112 + 32);
          v114 = (v182)(v180);
          v112 = v113;
        }

        while ((v114 & 1) != 0);
        (*(*(v103 + 176) + 16))(*(v103 + 176), 0);
        v115 = *(v103 + 176);
        if (v115)
        {
          _Block_release(v115);
          *(v103 + 176) = 0;
        }

        if (*(v103 + 168))
        {
          v116 = *(v103 + 160);
          if (v116)
          {
            os_release(v116);
          }
        }

        *(v103 + 160) = 0;
        if (*(v103 + 152))
        {
          v117 = *(v103 + 144);
          if (v117)
          {
            os_release(v117);
          }
        }

        *(v103 + 144) = 0;
        if (*(v103 + 136))
        {
          v118 = *(v103 + 128);
          if (v118)
          {
            os_release(v118);
          }
        }

        free(v103);
        goto LABEL_154;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_stream_destroy";
      v119 = _os_log_send_and_compose_impl();
      v186 = OS_LOG_TYPE_ERROR;
      v185 = 0;
      if (__nwlog_fault(v119, &v186, &v185))
      {
        if (v186 == OS_LOG_TYPE_FAULT)
        {
          v120 = __nwlog_obj();
          v121 = v186;
          if (os_log_type_enabled(v120, v186))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_destroy";
            v122 = v120;
            v123 = v121;
            v124 = "%{public}s called with null webtransport_stream";
LABEL_217:
            _os_log_impl(&dword_181A37000, v122, v123, v124, buf, 0xCu);
          }
        }

        else if (v185 == 1)
        {
          v125 = __nw_create_backtrace_string();
          v126 = __nwlog_obj();
          v127 = v186;
          v128 = os_log_type_enabled(v126, v186);
          if (v125)
          {
            if (v128)
            {
              *buf = 136446466;
              *&buf[4] = "nw_webtransport_stream_destroy";
              *&buf[12] = 2082;
              *&buf[14] = v125;
              _os_log_impl(&dword_181A37000, v126, v127, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v125);
            goto LABEL_218;
          }

          if (v128)
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_destroy";
            v122 = v126;
            v123 = v127;
            v124 = "%{public}s called with null webtransport_stream, no backtrace";
            goto LABEL_217;
          }
        }

        else
        {
          v129 = __nwlog_obj();
          v130 = v186;
          if (os_log_type_enabled(v129, v186))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_destroy";
            v122 = v129;
            v123 = v130;
            v124 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
            goto LABEL_217;
          }
        }
      }

LABEL_218:
      if (v119)
      {
        free(v119);
      }

      v84 = &qword_1ED411000;
LABEL_154:
      v177[3] = v83;
      v72 = v168;
    }
  }

  v69 = *(v168 + 336);
  if (v69)
  {
    if ((*(v69 + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v162 = *(v168 + 336);
      v163 = __nwlog_obj();
      v164 = os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG);
      v69 = v162;
      if (v164)
      {
        v165 = *(v162 + 88);
        if (v165)
        {
          v166 = *(v165 + 492);
        }

        else
        {
          v166 = -1;
        }

        v167 = *(v162 + 64);
        *buf = 136447490;
        *&buf[4] = "nw_webtransport_session_get_next_pending_stream";
        *&buf[12] = 2082;
        *&buf[14] = v162 + 192;
        *&buf[22] = 2080;
        v188 = " ";
        *v189 = 1024;
        *&v189[2] = v166;
        *&v189[6] = 2048;
        *&v189[8] = v167;
        *&v189[16] = 2048;
        *&v189[18] = v162;
        _os_log_impl(&dword_181A37000, v163, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> found stream (%p)", buf, 0x3Au);
        v69 = v162;
      }
    }
  }

  nw_protocol_set_input_handler(v168, v69);
  if ((*(v168 + 580) & 2) != 0)
  {
    goto LABEL_86;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v43 = gLogObj;
  if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
  {
    goto LABEL_86;
  }

  v70 = *(v168 + 492);
  *buf = 136446978;
  *&buf[4] = "nw_webtransport_session_remove_stream";
  *&buf[12] = 2082;
  *&buf[14] = v168 + 496;
  *&buf[22] = 2080;
  v188 = " ";
  *v189 = 1024;
  *&v189[2] = v70;
  v45 = "%{public}s %{public}s%s<i%u> not destroying, still have pending streams";
LABEL_85:
  _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_INFO, v45, buf, 0x26u);
LABEL_86:
  if ((*(handle + 276) & 0x10) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v47 = handle[11];
      if (v47)
      {
        v48 = *(v47 + 492);
      }

      else
      {
        v48 = -1;
      }

      v49 = handle[8];
      *buf = 136447490;
      *&buf[4] = "nw_webtransport_stream_destroy";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v188 = " ";
      *v189 = 1024;
      *&v189[2] = v48;
      *&v189[6] = 2048;
      *&v189[8] = v49;
      *&v189[16] = 2048;
      *&v189[18] = handle;
      _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> destroying stream %p", buf, 0x3Au);
    }
  }

  if (handle[9])
  {
    if ((*(handle + 276) & 0x10) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v50 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v51 = handle[11];
        if (v51)
        {
          v52 = *(v51 + 492);
        }

        else
        {
          v52 = -1;
        }

        v61 = handle[8];
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_stream_destroy";
        *&buf[12] = 2082;
        *&buf[14] = handle + 24;
        *&buf[22] = 2080;
        v188 = " ";
        *v189 = 1024;
        *&v189[2] = v52;
        *&v189[6] = 2048;
        *&v189[8] = v61;
        _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> input_frames has unread frames before destroying", buf, 0x30u);
      }
    }
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke;
  v188 = &__block_descriptor_tmp_39_36819;
  *v189 = handle;
  v62 = handle[9];
  do
  {
    if (!v62)
    {
      break;
    }

    v63 = *(v62 + 32);
    v64 = (*&buf[16])(buf);
    v62 = v63;
  }

  while ((v64 & 1) != 0);
  (*(handle[22] + 16))(handle[22], 0);
  v65 = handle[22];
  if (v65)
  {
    _Block_release(v65);
    handle[22] = 0;
  }

  if (handle[21])
  {
    v66 = handle[20];
    if (v66)
    {
      os_release(v66);
    }
  }

  handle[20] = 0;
  if (handle[19])
  {
    v67 = handle[18];
    if (v67)
    {
      os_release(v67);
    }
  }

  handle[18] = 0;
  if (handle[17])
  {
    v68 = handle[16];
    if (v68)
    {
      os_release(v68);
    }
  }

  free(handle);
  return 1;
}

void ___ZL37nw_webtransport_session_remove_streamP23nw_webtransport_sessionP22nw_webtransport_stream_block_invoke(uint64_t a1)
{
  v193 = *MEMORY[0x1E69E9840];
  v1 = (*(*(a1 + 32) + 16))();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  if (*(v1 + 476) == 5)
  {
    if ((*(v1 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v4 = *(v2 + 492);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 496;
        *&buf[22] = 2080;
        v187 = " ";
        *v188 = 1024;
        *&v188[2] = v4;
        v5 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
        v6 = v3;
        v7 = OS_LOG_TYPE_INFO;
LABEL_6:
        _os_log_impl(&dword_181A37000, v6, v7, v5, buf, 0x26u);
        return;
      }
    }

    return;
  }

  if ((*(v1 + 580) & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v9 = *(v2 + 492);
      *buf = 136447234;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = v2 + 496;
      *&buf[22] = 2080;
      v187 = " ";
      *v188 = 1024;
      *&v188[2] = v9;
      *&v188[6] = 1024;
      *&v188[8] = 57;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d", buf, 0x2Cu);
    }
  }

  v10 = *(v2 + 476);
  *(v2 + 476) = 5;
  v11 = *(v2 + 192);
  if (v11)
  {
    v164[0] = MEMORY[0x1E69E9820];
    v164[1] = 0x40000000;
    v164[2] = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
    v164[3] = &__block_descriptor_tmp_24_36439;
    v165 = 57;
    nw_hash_table_apply(v11, v164);
  }

  v12 = *(v2 + 448);
  if (v12)
  {
    v13 = *(v12 + 88);
    nw_protocol_error(*(v12 + 48), *(v2 + 448));
    nw_protocol_disconnect(v12, v13);
  }

  v14 = *(v2 + 336);
  if (v14)
  {
    do
    {
      v15 = *(v14 + 112);
      v16 = *(v14 + 88);
      nw_protocol_error(*(v14 + 48), v14);
      nw_protocol_disconnect(v14, v16);
      v14 = v15;
    }

    while (v15);
  }

  v17 = *(v2 + 440);
  if (v17)
  {
    v18 = *(v17 + 88);
    nw_protocol_error(*(v17 + 48), *(v2 + 440));
    nw_protocol_disconnect(v17, v18);
  }

  if (*(v2 + 32))
  {
    nw_protocol_remove_instance(v2);
    nw_protocol_disconnect(*(v2 + 32), v2);
  }

  v19 = *(v2 + 400);
  if (!v19)
  {
    return;
  }

  webtransport_state = nw_http_connection_metadata_get_webtransport_state(v19);
  if (!webtransport_state)
  {
    return;
  }

  v21 = webtransport_state;
  if (v10 != 4 && v10 != 1)
  {
    return;
  }

  v22 = *(webtransport_state + 16);
  *(webtransport_state + 16) = v22 - 1;
  if (!v22)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = v21[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_terminate";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v187 = 1;
    *v188 = 2048;
    *&v188[2] = v23;
    v24 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v179[0]) = 0;
    if (__nwlog_fault(v24, type, v179))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          v27 = v21[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v187 = 1;
          *v188 = 2048;
          *&v188[2] = v27;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_38:
          _os_log_impl(&dword_181A37000, v25, v26, v28, buf, 0x2Au);
        }
      }

      else if (LOBYTE(v179[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type[0];
        v30 = os_log_type_enabled(v25, type[0]);
        if (backtrace_string)
        {
          if (v30)
          {
            v31 = v21[2];
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v187 = 1;
            *v188 = 2048;
            *&v188[2] = v31;
            *&v188[10] = 2082;
            *&v188[12] = backtrace_string;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
          goto LABEL_39;
        }

        if (v30)
        {
          v33 = v21[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v187 = 1;
          *v188 = 2048;
          *&v188[2] = v33;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_38;
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v26 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          v32 = v21[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v187 = 1;
          *v188 = 2048;
          *&v188[2] = v32;
          v28 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_38;
        }
      }
    }

LABEL_39:
    if (v24)
    {
      free(v24);
    }

    v21[2] = 0;
  }

  if (*(v2 + 580))
  {
    return;
  }

  v34 = *v21;
  if (!*v21)
  {
    return;
  }

  v35 = *(v34 + 352);
  v36 = *(v34 + 360);
  v37 = (v35 + 360);
  if (!v35)
  {
    v37 = v21 + 1;
  }

  *v37 = v36;
  *v36 = v35;
  *(v34 + 352) = 0;
  *(v34 + 360) = 0;
  v38 = *(v34 + 32);
  if (v38 && *(v34 + 480) == 2)
  {
    v39 = v38[2];
    if (nw_protocol_http2_identifier::onceToken != -1)
    {
      v127 = v38[2];
      dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
      v39 = v127;
    }

    if (nw_protocols_are_equal(v39, &nw_protocol_http2_identifier::http2_protocol_identifier))
    {
      goto LABEL_57;
    }

    v40 = v38[2];
    if (nw_protocol_http3_identifier::onceToken != -1)
    {
      v129 = v38[2];
      dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
      v40 = v129;
    }

    if (nw_protocols_are_equal(v40, &nw_protocol_http3_identifier::http3_protocol_identifier))
    {
      goto LABEL_57;
    }

    v41 = v38[2];
    if (nw_protocol_http_messaging_identifier::onceToken != -1)
    {
      v130 = v38[2];
      dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
      v41 = v130;
    }

    if (nw_protocols_are_equal(v41, &nw_protocol_http_messaging_identifier::protocol_identifier))
    {
LABEL_57:
      v42 = nw_protocol_copy_info(v38);
      v43 = v42;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_27_36446;
      aBlock[4] = v34;
      if (v42)
      {
        _nw_array_apply(v42, aBlock);
        v44 = *(v34 + 400);
        if (!v44)
        {
          os_release(v43);
          return;
        }
      }

      else
      {
        v44 = *(v34 + 400);
        if (!v44)
        {
          return;
        }
      }

      version = nw_http_connection_metadata_get_version(v44);
      v46 = version;
      if (version == 4)
      {
        v47 = 0;
      }

      else
      {
        if (version != 5)
        {
LABEL_66:
          v48 = v38[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v128 = v38[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v48 = v128;
          }

          v49 = nw_protocols_are_equal(v48, &nw_protocol_http_messaging_identifier::protocol_identifier);
          v50 = *(v34 + 580);
          if (v49)
          {
            v50 |= 0x40u;
            *(v34 + 580) = v50;
          }

          if ((v50 & 2) == 0)
          {
            v51 = __nwlog_obj();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              v52 = *(v34 + 492);
              if (v46 == 4)
              {
                v53 = 2;
              }

              else
              {
                v53 = 3;
              }

              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_establish";
              *&buf[12] = 2082;
              *&buf[14] = v34 + 496;
              *&buf[22] = 2080;
              v187 = " ";
              *v188 = 1024;
              *&v188[2] = v52;
              *&v188[6] = 1024;
              *&v188[8] = v53;
              _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
            }
          }

          if (v43)
          {
            os_release(v43);
          }

          goto LABEL_78;
        }

        v47 = 1;
      }

      *(v34 + 480) = v47;
      goto LABEL_66;
    }
  }

LABEL_78:
  v54 = *(v34 + 480);
  if (v54 <= 1)
  {
    if ((*(v34 + 580) & 1) == 0)
    {
      if (!*(v34 + 476))
      {
        nw_webtransport_http_send_connect(v34);
      }

      return;
    }

    v57 = *(v34 + 476);
    if (v54 == 1)
    {
      if (v57 != 3)
      {
        if (v57)
        {
          return;
        }

        v58 = *(v34 + 48);
        if (v58)
        {
          v59 = *(v58 + 40);
          if (v59)
          {
            nw_protocol_replace_input_handler(*(v34 + 32), v34, *(v58 + 40));
            *(v34 + 440) = v59;
            nw_protocol_set_output_handler(v34, 0);
            nw_protocol_set_input_handler(v34, 0);
            if (*(v34 + 580))
            {
              v60 = *(*(v34 + 440) + 32);
              v61 = *(v60 + 16);
              if (nw_protocol_http_messaging_identifier::onceToken != -1)
              {
                v150 = *(v60 + 16);
                dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                v61 = v150;
              }

              if (nw_protocols_are_equal(v61, &nw_protocol_http_messaging_identifier::protocol_identifier))
              {
                goto LABEL_97;
              }

              v62 = *(v60 + 16);
              if (nw_protocol_http3_identifier::onceToken != -1)
              {
                v153 = *(v60 + 16);
                dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                v62 = v153;
              }

              if (nw_protocols_are_equal(v62, &nw_protocol_http3_identifier::http3_protocol_identifier))
              {
LABEL_97:
                v63 = *(v34 + 368);
                if (v63)
                {
                  v64 = nw_parameters_copy_protocol_options_legacy(v63, v60);
                  if (v64)
                  {
                    if ((*(v59 + 276) & 0x10) == 0 && gLogDatapath == 1)
                    {
                      v154 = v64;
                      v155 = __nwlog_obj();
                      v156 = os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG);
                      v64 = v154;
                      if (v156)
                      {
                        v157 = *(v59 + 88);
                        if (v157)
                        {
                          v158 = *(v157 + 492);
                        }

                        else
                        {
                          v158 = -1;
                        }

                        v163 = *(v59 + 64);
                        *buf = 136447490;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v59 + 192;
                        *&buf[22] = 2080;
                        v187 = " ";
                        *v188 = 1024;
                        *&v188[2] = v158;
                        *&v188[6] = 2048;
                        *&v188[8] = v163;
                        *&v188[16] = 2048;
                        *&v188[18] = v154;
                        _os_log_impl(&dword_181A37000, v155, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                        v64 = v154;
                      }
                    }

                    v65 = v64;
                    nw_http3_set_stream_mode(v64, 0);
                    os_release(v65);
                  }

                  else
                  {
                    if ((*(v34 + 580) & 2) == 0 && gLogDatapath == 1)
                    {
                      v161 = __nwlog_obj();
                      if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
                      {
                        v162 = *(v34 + 492);
                        *buf = 136446978;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v34 + 496;
                        *&buf[22] = 2080;
                        v187 = " ";
                        *v188 = 1024;
                        *&v188[2] = v162;
                        _os_log_impl(&dword_181A37000, v161, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                      }
                    }

                    v77 = *(v59 + 88);
                    nw_protocol_error(*(v59 + 48), v59);
                    nw_protocol_disconnect(v59, v77);
                  }
                }
              }
            }

            goto LABEL_131;
          }

          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
          v137 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v179[0]) = 0;
          if (__nwlog_fault(v137, type, v179))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v138 = __nwlog_obj();
              v139 = type[0];
              if (!os_log_type_enabled(v138, type[0]))
              {
                goto LABEL_330;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v140 = "%{public}s called with null webtransport_stream";
              goto LABEL_329;
            }

            if (LOBYTE(v179[0]) != 1)
            {
              v138 = __nwlog_obj();
              v139 = type[0];
              if (!os_log_type_enabled(v138, type[0]))
              {
                goto LABEL_330;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v140 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
              goto LABEL_329;
            }

            v151 = __nw_create_backtrace_string();
            v138 = __nwlog_obj();
            v139 = type[0];
            v152 = os_log_type_enabled(v138, type[0]);
            if (v151)
            {
              if (v152)
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                *&buf[12] = 2082;
                *&buf[14] = v151;
                _os_log_impl(&dword_181A37000, v138, v139, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v151);
              if (!v137)
              {
                goto LABEL_131;
              }

              goto LABEL_331;
            }

            if (v152)
            {
              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v140 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_329:
              _os_log_impl(&dword_181A37000, v138, v139, v140, buf, 0xCu);
            }
          }
        }

        else
        {
          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
          v137 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v179[0]) = 0;
          if (!__nwlog_fault(v137, type, v179))
          {
            goto LABEL_330;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v138 = __nwlog_obj();
            v139 = type[0];
            if (!os_log_type_enabled(v138, type[0]))
            {
              goto LABEL_330;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v140 = "%{public}s called with null input_protocol";
            goto LABEL_329;
          }

          if (LOBYTE(v179[0]) != 1)
          {
            v138 = __nwlog_obj();
            v139 = type[0];
            if (!os_log_type_enabled(v138, type[0]))
            {
              goto LABEL_330;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v140 = "%{public}s called with null input_protocol, backtrace limit exceeded";
            goto LABEL_329;
          }

          v146 = __nw_create_backtrace_string();
          v138 = __nwlog_obj();
          v139 = type[0];
          v147 = os_log_type_enabled(v138, type[0]);
          if (!v146)
          {
            if (!v147)
            {
              goto LABEL_330;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v140 = "%{public}s called with null input_protocol, no backtrace";
            goto LABEL_329;
          }

          if (v147)
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            *&buf[12] = 2082;
            *&buf[14] = v146;
            _os_log_impl(&dword_181A37000, v138, v139, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v146);
        }

LABEL_330:
        if (!v137)
        {
LABEL_131:
          *(v34 + 476) = 2;
          return;
        }

LABEL_331:
        free(v137);
        goto LABEL_131;
      }

      v68 = *(v34 + 32);
      if (v68)
      {
        v69 = v68[3];
        if (v69 && *(v69 + 80))
        {
          for (i = 3; (i | 2) == 3; i = *(v34 + 476))
          {
            if (!nw_protocol_get_input_frames(v68, v34, 0, 0, 0xFFFFFFFFLL, v34 + 120))
            {
              return;
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3802000000;
            v187 = __Block_byref_object_copy__36471;
            *v188 = __Block_byref_object_dispose__36472;
            *&v188[8] = nw_protocol_copy_http_definition();
            v188[16] |= 1u;
            *type = MEMORY[0x1E69E9820];
            v168 = 0x40000000;
            v169 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
            v170 = &unk_1E6A31940;
            v171 = buf;
            v172 = v34;
            v173 = v34 + 120;
            v71 = *(v34 + 120);
            do
            {
              if (!v71)
              {
                break;
              }

              v72 = *(v71 + 32);
              v73 = (v169)(type);
              v71 = v72;
            }

            while ((v73 & 1) != 0);
            _Block_object_dispose(buf, 8);
            if ((v188[16] & 1) != 0 && *&v188[8])
            {
              os_release(*&v188[8]);
            }
          }

          v74 = *(v34 + 480);
          if (v74 == 1)
          {
            nw_webtransport_http3_handle_input(v34);
            v76 = *(v34 + 448);
            if (v76 && *(v76 + 72))
            {
              nw_protocol_input_available(*(v76 + 48), v76);
            }

            return;
          }

          if (v74)
          {
            return;
          }

          if ((*(v34 + 580) & 2) == 0 && gLogDatapath == 1)
          {
            v159 = __nwlog_obj();
            if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
            {
              v160 = *(v34 + 492);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_http2_handle_capsules";
              *&buf[12] = 2082;
              *&buf[14] = v34 + 496;
              *&buf[22] = 2080;
              v187 = " ";
              *v188 = 1024;
              *&v188[2] = v160;
              _os_log_impl(&dword_181A37000, v159, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
            }
          }

          if (*(v34 + 476) != 4)
          {
            return;
          }

          v75 = (v34 + 96);
          while (1)
          {
            capsule = nw_http_capsule_framer_read_capsule((v34 + 96), v34);
            if (!capsule && !*(v34 + 136))
            {
              return;
            }

            if (*(v34 + 456))
            {
              goto LABEL_140;
            }

            v83 = *v75;
            if (*v75 == -1)
            {
LABEL_197:
              v97 = __nwlog_obj();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2048;
                *&buf[14] = v83;
                _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
              }

              goto LABEL_140;
            }

            v84 = *(v34 + 104) != -1 && *(v34 + 112) == 0;
            if (v83 <= 16770303)
            {
              if ((v83 - 16770048) < 6 || (v83 + 1) <= 4 && v83)
              {
                goto LABEL_197;
              }
            }

            else if ((v83 - 420171065) <= 9 && ((1 << (v83 - 57)) & 0x2EF) != 0)
            {
              v185 = -1;
              if (nw_http_capsule_framer_parse_vle_value((v34 + 96), v34, &v185))
              {
                stream = nw_webtransport_session_get_stream(v34, v185);
                if (stream)
                {
                  goto LABEL_191;
                }

                if ((v83 - 420171067) > 1)
                {
                  goto LABEL_222;
                }

                v104 = v185;
                v105 = *(v34 + 580);
                if (v185 >> 60 || ((v185 ^ v105) & 1) == 0)
                {
                  if ((v105 & 2) == 0)
                  {
                    v114 = __nwlog_obj();
                    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                    {
                      v115 = *(v34 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v34 + 496;
                      *&buf[22] = 2080;
                      v187 = " ";
                      *v188 = 1024;
                      *&v188[2] = v115;
                      v116 = v114;
                      v117 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                      goto LABEL_221;
                    }
                  }

LABEL_222:
                  if ((*(v34 + 580) & 2) == 0)
                  {
                    v118 = __nwlog_obj();
                    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
                    {
                      v119 = *(v34 + 492);
                      *buf = 136447490;
                      *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                      *&buf[12] = 2082;
                      *&buf[14] = v34 + 496;
                      *&buf[22] = 2080;
                      v187 = " ";
                      *v188 = 1024;
                      *&v188[2] = v119;
                      *&v188[6] = 2048;
                      *&v188[8] = v185;
                      *&v188[16] = 2048;
                      *&v188[18] = v83;
                      _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                    }
                  }

                  goto LABEL_140;
                }

                v106 = *(v34 + 424);
                if (!v106 || (v107 = *v106) == 0 || !*v107)
                {
                  if ((v105 & 2) == 0)
                  {
                    v120 = __nwlog_obj();
                    if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
                    {
                      v121 = *(v34 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v34 + 496;
                      *&buf[22] = 2080;
                      v187 = " ";
                      *v188 = 1024;
                      *&v188[2] = v121;
                      v116 = v120;
                      v117 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_221:
                      _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_ERROR, v117, buf, 0x26u);
                    }
                  }

                  goto LABEL_222;
                }

                v108 = _nw_parameters_copy(*(v34 + 368));
                *(v34 + 580) |= 0x20u;
                *(v34 + 176) = v104;
                v109 = (***(v34 + 424))(*(v34 + 424), *(v34 + 384), v108);
                *(v34 + 176) = -1;
                *(v34 + 580) &= ~0x20u;
                if (v109)
                {
                  v110 = nw_webtransport_session_get_stream(v34, v104);
                }

                else
                {
                  v110 = 0;
                }

                if (v108)
                {
                  os_release(v108);
                }

                if (!v110)
                {
                  goto LABEL_222;
                }

                stream = v110;
                if (*(v110 + 184) != 3)
                {
LABEL_191:
                  *(v34 + 456) = stream;
                  goto LABEL_140;
                }

                if ((*(v34 + 580) & 2) != 0)
                {
                  goto LABEL_140;
                }

                v122 = __nwlog_obj();
                if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_140;
                }

                v123 = *(v34 + 492);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = v34 + 496;
                *&buf[22] = 2080;
                v187 = " ";
                *v188 = 1024;
                *&v188[2] = v123;
                *&v188[6] = 2048;
                *&v188[8] = v185;
                v100 = v122;
                v101 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
              }

              else
              {
                if (!v84)
                {
                  goto LABEL_140;
                }

                if ((*(v34 + 580) & 2) != 0)
                {
                  goto LABEL_140;
                }

                v98 = __nwlog_obj();
                if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_140;
                }

                v99 = *(v34 + 492);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = v34 + 496;
                *&buf[22] = 2080;
                v187 = " ";
                *v188 = 1024;
                *&v188[2] = v99;
                *&v188[6] = 2048;
                *&v188[8] = v83;
                v100 = v98;
                v101 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
              }

              _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_ERROR, v101, buf, 0x30u);
            }

            else if ((v83 - 16770304) < 4)
            {
              goto LABEL_197;
            }

LABEL_140:
            v82 = *(v34 + 96);
            if ((*(v34 + 580) & 2) == 0 && gLogDatapath == 1)
            {
              v124 = __nwlog_obj();
              if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
              {
                v125 = *(v34 + 492);
                v126 = *(v34 + 104);
                *buf = 136447490;
                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                *&buf[12] = 2082;
                *&buf[14] = v34 + 496;
                *&buf[22] = 2080;
                v187 = " ";
                *v188 = 1024;
                *&v188[2] = v125;
                *&v188[6] = 2048;
                *&v188[8] = v82;
                *&v188[16] = 2048;
                *&v188[18] = v126;
                _os_log_impl(&dword_181A37000, v124, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
              }
            }

            if (v82 > 16770303)
            {
              if (v82 <= 420171064)
              {
                if ((v82 - 16770304) < 4)
                {
                  goto LABEL_159;
                }

                if (v82 == 420171064)
                {
                  goto LABEL_158;
                }

                goto LABEL_161;
              }

              if ((v82 - 420171065) >= 2)
              {
                if ((v82 - 420171067) < 2)
                {
                  v85 = *(v34 + 456);
                  v87 = v82 == 420171068 && capsule;
                  v179[0] = MEMORY[0x1E69E9820];
                  v179[1] = 0x40000000;
                  v180 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                  v181 = &__block_descriptor_tmp_34_36485;
                  v184 = v87;
                  v182 = v34 + 96;
                  v183 = v85;
                  v88 = *(v34 + 136);
                  do
                  {
                    if (!v88)
                    {
                      break;
                    }

                    v89 = *(v88 + 32);
                    v90 = (v180)(v179);
                    v88 = v89;
                  }

                  while ((v90 & 1) != 0);
                  if (!v87)
                  {
                    goto LABEL_217;
                  }

                  nw_protocol_input_finished(v85, v34);
                }

                goto LABEL_161;
              }

              if (capsule)
              {
                v91 = *(v34 + 456);
                v185 = -1;
                if (nw_http_capsule_framer_parse_vle_value((v34 + 96), v34, &v185))
                {
                  if (!v91 || (*(v91 + 276) & 0x10) == 0)
                  {
                    v92 = __nwlog_obj();
                    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                    {
                      if (v91)
                      {
                        v93 = (v91 + 192);
                      }

                      else
                      {
                        v93 = "";
                      }

                      v94 = " ";
                      if (!v91)
                      {
                        v94 = "";
                      }

                      v95 = *(v91 + 88);
                      if (v95)
                      {
                        v78 = *(v95 + 492);
                      }

                      else
                      {
                        v78 = -1;
                      }

                      v79 = *(v91 + 64);
                      *buf = 136448002;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v93;
                      *&buf[22] = 2080;
                      v187 = v94;
                      *v188 = 1024;
                      *&v188[2] = v78;
                      *&v188[6] = 2048;
                      *&v188[8] = v79;
                      *&v188[16] = 2048;
                      *&v188[18] = v82;
                      v189 = 2048;
                      v190 = v79;
                      v191 = 2048;
                      v192 = v185;
                      _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                    }
                  }

                  nw_protocol_webtransport_stream_error(v91, v34);
                  nw_protocol_webtransport_stream_disconnect(v91, v80);
                }

                else if ((*(v34 + 580) & 2) == 0)
                {
                  v102 = __nwlog_obj();
                  if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                  {
                    v103 = *(v34 + 492);
                    *buf = 136447234;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2082;
                    *&buf[14] = v34 + 496;
                    *&buf[22] = 2080;
                    v187 = " ";
                    *v188 = 1024;
                    *&v188[2] = v103;
                    *&v188[6] = 2048;
                    *&v188[8] = v82;
                    _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                  }
                }

LABEL_136:
                *(v34 + 456) = 0;
                nw_http_capsule_complete_capsule(v34 + 96);
              }
            }

            else
            {
              if (v82 <= 16770047)
              {
                if ((v82 - 1) < 3 || v82 == -1)
                {
LABEL_159:
                  v86 = __nwlog_obj();
                  if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2048;
                    *&buf[14] = v82;
                    _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                  }

                  goto LABEL_161;
                }

                if (!v82)
                {
                  v85 = *(v34 + 448);
                  if (v85 && *(v85 + 184) != 3)
                  {
                    v174[0] = MEMORY[0x1E69E9820];
                    v174[1] = 0x40000000;
                    v175 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                    v176 = &__block_descriptor_tmp_35_36486;
                    v177 = v34 + 96;
                    v178 = v85;
                    v111 = *(v34 + 136);
                    do
                    {
                      if (!v111)
                      {
                        break;
                      }

                      v112 = *(v111 + 32);
                      v113 = (v175)(v174);
                      v111 = v112;
                    }

                    while ((v113 & 1) != 0);
LABEL_217:
                    nw_protocol_input_available(v85, v34);
                    goto LABEL_161;
                  }

LABEL_158:
                  nw_frame_array_finalize(v34 + 136, 1, 1);
                }
              }

              else if ((v82 - 16770048) < 6)
              {
                goto LABEL_159;
              }

LABEL_161:
              if (capsule)
              {
                goto LABEL_136;
              }
            }
          }
        }

        if ((*(v34 + 580) & 2) == 0)
        {
          v131 = __nwlog_obj();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            v132 = *(v34 + 492);
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            *&buf[12] = 2082;
            *&buf[14] = v34 + 496;
            *&buf[22] = 2080;
            v187 = " ";
            *v188 = 1024;
            *&v188[2] = v132;
            _os_log_impl(&dword_181A37000, v131, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
          }
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        v133 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v179[0]) = 0;
        if (!__nwlog_fault(v133, type, v179))
        {
          goto LABEL_325;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v134 = __nwlog_obj();
          v135 = type[0];
          if (!os_log_type_enabled(v134, type[0]))
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          v136 = "%{public}s output handler has no get_input_frames callback";
LABEL_324:
          _os_log_impl(&dword_181A37000, v134, v135, v136, buf, 0xCu);
          goto LABEL_325;
        }

        if (LOBYTE(v179[0]) != 1)
        {
          v134 = __nwlog_obj();
          v135 = type[0];
          if (!os_log_type_enabled(v134, type[0]))
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          v136 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
          goto LABEL_324;
        }

        v141 = __nw_create_backtrace_string();
        v134 = __nwlog_obj();
        v135 = type[0];
        v142 = os_log_type_enabled(v134, type[0]);
        if (!v141)
        {
          if (!v142)
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          v136 = "%{public}s output handler has no get_input_frames callback, no backtrace";
          goto LABEL_324;
        }

        if (v142)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          *&buf[12] = 2082;
          *&buf[14] = v141;
          v143 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
LABEL_278:
          _os_log_impl(&dword_181A37000, v134, v135, v143, buf, 0x16u);
          goto LABEL_279;
        }

        goto LABEL_279;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v133 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v179[0]) = 0;
      if (!__nwlog_fault(v133, type, v179))
      {
        goto LABEL_325;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v134 = __nwlog_obj();
        v135 = type[0];
        if (!os_log_type_enabled(v134, type[0]))
        {
          goto LABEL_325;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        v136 = "%{public}s called with null output_handler";
        goto LABEL_324;
      }

      if (LOBYTE(v179[0]) != 1)
      {
        v134 = __nwlog_obj();
        v135 = type[0];
        if (!os_log_type_enabled(v134, type[0]))
        {
          goto LABEL_325;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        v136 = "%{public}s called with null output_handler, backtrace limit exceeded";
        goto LABEL_324;
      }

      v148 = __nw_create_backtrace_string();
      v134 = __nwlog_obj();
      v135 = type[0];
      v149 = os_log_type_enabled(v134, type[0]);
      if (!v148)
      {
        if (!v149)
        {
          goto LABEL_325;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        v136 = "%{public}s called with null output_handler, no backtrace";
        goto LABEL_324;
      }

      if (v149)
      {
        *buf = 136446466;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        *&buf[12] = 2082;
        *&buf[14] = v148;
        _os_log_impl(&dword_181A37000, v134, v135, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v148);
    }

    else
    {
      if (v57)
      {
        return;
      }

      *(v34 + 476) = 3;
      v66 = *(v34 + 48);
      if (!v66)
      {
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        v133 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v179[0]) = 0;
        if (!__nwlog_fault(v133, type, v179))
        {
          goto LABEL_325;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v134 = __nwlog_obj();
          v135 = type[0];
          if (!os_log_type_enabled(v134, type[0]))
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          v136 = "%{public}s called with null input_protocol";
          goto LABEL_324;
        }

        if (LOBYTE(v179[0]) != 1)
        {
          v134 = __nwlog_obj();
          v135 = type[0];
          if (!os_log_type_enabled(v134, type[0]))
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          v136 = "%{public}s called with null input_protocol, backtrace limit exceeded";
          goto LABEL_324;
        }

        v141 = __nw_create_backtrace_string();
        v134 = __nwlog_obj();
        v135 = type[0];
        v144 = os_log_type_enabled(v134, type[0]);
        if (!v141)
        {
          if (!v144)
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          v136 = "%{public}s called with null input_protocol, no backtrace";
          goto LABEL_324;
        }

        if (v144)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          *&buf[12] = 2082;
          *&buf[14] = v141;
          v143 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
          goto LABEL_278;
        }

LABEL_279:
        free(v141);
        if (!v133)
        {
          return;
        }

LABEL_326:
        free(v133);
        return;
      }

      v67 = *(v66 + 40);
      if (v67)
      {
        *(v34 + 440) = v67;
        return;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
      v133 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v179[0]) = 0;
      if (__nwlog_fault(v133, type, v179))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v134 = __nwlog_obj();
          v135 = type[0];
          if (!os_log_type_enabled(v134, type[0]))
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          v136 = "%{public}s called with null webtransport_stream";
          goto LABEL_324;
        }

        if (LOBYTE(v179[0]) != 1)
        {
          v134 = __nwlog_obj();
          v135 = type[0];
          if (!os_log_type_enabled(v134, type[0]))
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          v136 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
          goto LABEL_324;
        }

        v141 = __nw_create_backtrace_string();
        v134 = __nwlog_obj();
        v135 = type[0];
        v145 = os_log_type_enabled(v134, type[0]);
        if (!v141)
        {
          if (!v145)
          {
            goto LABEL_325;
          }

          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          v136 = "%{public}s called with null webtransport_stream, no backtrace";
          goto LABEL_324;
        }

        if (v145)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          *&buf[12] = 2082;
          *&buf[14] = v141;
          v143 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
          goto LABEL_278;
        }

        goto LABEL_279;
      }
    }

LABEL_325:
    if (!v133)
    {
      return;
    }

    goto LABEL_326;
  }

  if ((*(v34 + 580) & 2) == 0)
  {
    v55 = __nwlog_obj();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = *(v34 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_establish";
      *&buf[12] = 2082;
      *&buf[14] = v34 + 496;
      *&buf[22] = 2080;
      v187 = " ";
      *v188 = 1024;
      *&v188[2] = v56;
      v5 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
      v6 = v55;
      v7 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }
}

uint64_t nw::retained_ptr<nw_endpoint *>::operator=(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  if ((v2 & 1) != 0 && *result)
  {
    v3 = result;
    v4 = a2;
    os_release(*result);
    a2 = v4;
    result = v3;
    v2 = *(v3 + 8);
  }

  *result = 0;
  *result = *a2;
  *(result + 8) = v2 | 1;
  *a2 = 0;
  return result;
}

uint64_t ___ZL31nw_webtransport_session_destroyP23nw_webtransport_session_block_invoke(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 32) + 8) + 24) = nw_hash_node_get_object(a2);
  v4 = *(a1 + 40);
  if (!v4 || (*(v4 + 580) & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v7 = (v6 + 496);
      v8 = "";
      v9 = v6 == 0;
      if (!v6)
      {
        v7 = "";
      }

      v10 = *(v6 + 492);
      if (!v9)
      {
        v8 = " ";
      }

      v11 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 136447234;
      *&buf[4] = "nw_webtransport_session_destroy_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v7;
      *&buf[22] = 2080;
      v54 = v8;
      LOWORD(v55) = 1024;
      *(&v55 + 2) = v10;
      HIWORD(v55) = 2048;
      v56 = v11;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> should not have stream %p left, destroying anyways", buf, 0x30u);
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  *&buf[4] = "nw_webtransport_session_destroy_block_invoke";
  v12 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v51 = 0;
  if (__nwlog_fault(v12, &type, &v51))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_destroy_block_invoke";
      v15 = "%{public}s should not have streams left when destroying";
LABEL_20:
      v20 = v13;
      v21 = v14;
LABEL_21:
      _os_log_impl(&dword_181A37000, v20, v21, v15, buf, 0xCu);
      goto LABEL_22;
    }

    if (v51 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_destroy_block_invoke";
      v15 = "%{public}s should not have streams left when destroying, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    v18 = type;
    v19 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v19)
      {
        *buf = 136446466;
        *&buf[4] = "nw_webtransport_session_destroy_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s should not have streams left when destroying, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v19)
    {
      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_destroy_block_invoke";
      v15 = "%{public}s should not have streams left when destroying, no backtrace";
      v20 = v17;
      v21 = v18;
      goto LABEL_21;
    }
  }

LABEL_22:
  if (v12)
  {
    free(v12);
  }

  if ((nw_hash_table_remove_node(*(*(a1 + 40) + 192), a2) & 1) == 0)
  {
    v22 = *(a1 + 40);
    if (!v22 || (*(v22 + 580) & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 40);
        v25 = (v24 + 496);
        v26 = "";
        if (v24)
        {
          v26 = " ";
        }

        else
        {
          v25 = "";
        }

        v27 = *(v24 + 492);
        v28 = *(*(*(*(a1 + 32) + 8) + 24) + 64);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_destroy_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v25;
        *&buf[22] = 2080;
        v54 = v26;
        LOWORD(v55) = 1024;
        *(&v55 + 2) = v27;
        HIWORD(v55) = 2048;
        v56 = v28;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to remove stream %llu from hash table", buf, 0x30u);
      }
    }
  }

  v29 = *(*(*(a1 + 32) + 8) + 24);
  if (v29)
  {
    if ((*(v29 + 276) & 0x10) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v31 = *(v29 + 88);
        if (v31)
        {
          v32 = *(v31 + 492);
        }

        else
        {
          v32 = -1;
        }

        v33 = *(v29 + 64);
        *buf = 136447490;
        *&buf[4] = "nw_webtransport_stream_destroy";
        *&buf[12] = 2082;
        *&buf[14] = v29 + 192;
        *&buf[22] = 2080;
        v54 = " ";
        LOWORD(v55) = 1024;
        *(&v55 + 2) = v32;
        HIWORD(v55) = 2048;
        v56 = v33;
        v57 = 2048;
        v58 = v29;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> destroying stream %p", buf, 0x3Au);
      }
    }

    if (*(v29 + 72))
    {
      if ((*(v29 + 276) & 0x10) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v35 = *(v29 + 88);
          if (v35)
          {
            v36 = *(v35 + 492);
          }

          else
          {
            v36 = -1;
          }

          v37 = *(v29 + 64);
          *buf = 136447234;
          *&buf[4] = "nw_webtransport_stream_destroy";
          *&buf[12] = 2082;
          *&buf[14] = v29 + 192;
          *&buf[22] = 2080;
          v54 = " ";
          LOWORD(v55) = 1024;
          *(&v55 + 2) = v36;
          HIWORD(v55) = 2048;
          v56 = v37;
          _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> input_frames has unread frames before destroying", buf, 0x30u);
        }
      }
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke;
    v54 = &__block_descriptor_tmp_39_36819;
    v55 = v29;
    v38 = *(v29 + 72);
    do
    {
      if (!v38)
      {
        break;
      }

      v39 = *(v38 + 32);
      v40 = (*&buf[16])(buf);
      v38 = v39;
    }

    while ((v40 & 1) != 0);
    (*(*(v29 + 176) + 16))(*(v29 + 176), 0);
    v41 = *(v29 + 176);
    if (v41)
    {
      _Block_release(v41);
      *(v29 + 176) = 0;
    }

    if (*(v29 + 168))
    {
      v42 = *(v29 + 160);
      if (v42)
      {
        os_release(v42);
      }
    }

    *(v29 + 160) = 0;
    if (*(v29 + 152))
    {
      v43 = *(v29 + 144);
      if (v43)
      {
        os_release(v43);
      }
    }

    *(v29 + 144) = 0;
    if (*(v29 + 136))
    {
      v44 = *(v29 + 128);
      if (v44)
      {
        os_release(v44);
      }
    }

LABEL_60:
    free(v29);
    return 1;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_webtransport_stream_destroy";
  v29 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v51 = 0;
  if (!__nwlog_fault(v29, &type, &v51))
  {
LABEL_79:
    if (!v29)
    {
      return 1;
    }

    goto LABEL_60;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v46 = __nwlog_obj();
    v47 = type;
    if (!os_log_type_enabled(v46, type))
    {
      goto LABEL_79;
    }

    *buf = 136446210;
    *&buf[4] = "nw_webtransport_stream_destroy";
    v48 = "%{public}s called with null webtransport_stream";
LABEL_78:
    _os_log_impl(&dword_181A37000, v46, v47, v48, buf, 0xCu);
    goto LABEL_79;
  }

  if (v51 != 1)
  {
    v46 = __nwlog_obj();
    v47 = type;
    if (!os_log_type_enabled(v46, type))
    {
      goto LABEL_79;
    }

    *buf = 136446210;
    *&buf[4] = "nw_webtransport_stream_destroy";
    v48 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_78;
  }

  v49 = __nw_create_backtrace_string();
  v46 = __nwlog_obj();
  v47 = type;
  v50 = os_log_type_enabled(v46, type);
  if (!v49)
  {
    if (!v50)
    {
      goto LABEL_79;
    }

    *buf = 136446210;
    *&buf[4] = "nw_webtransport_stream_destroy";
    v48 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_78;
  }

  if (v50)
  {
    *buf = 136446466;
    *&buf[4] = "nw_webtransport_stream_destroy";
    *&buf[12] = 2082;
    *&buf[14] = v49;
    _os_log_impl(&dword_181A37000, v46, v47, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v49);
  if (v29)
  {
    goto LABEL_60;
  }

  return 1;
}

uint64_t ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 32) + 80);
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (v3)
  {
    v2 = (v3 + 40);
  }

  *v2 = v4;
  *v4 = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  nw_frame_finalize(a2);
  return 1;
}

void std::destroy_at[abi:nn200100]<nw_webtransport_session,0>(uint64_t a1)
{
  if (*(a1 + 408))
  {
    v2 = *(a1 + 400);
    if (v2)
    {
      os_release(v2);
    }
  }

  *(a1 + 400) = 0;
  if (*(a1 + 392))
  {
    v3 = *(a1 + 384);
    if (v3)
    {
      os_release(v3);
    }
  }

  *(a1 + 384) = 0;
  if (*(a1 + 376))
  {
    v4 = *(a1 + 368);
    if (v4)
    {
      os_release(v4);
    }
  }

  *(a1 + 368) = 0;
}

void nw_protocol_webtransport_stream_get_message_properties(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_get_message_properties";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v6, &type, &v16))
    {
      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_get_message_properties";
      v9 = "%{public}s called with null protocol";
    }

    else if (v16 == 1)
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
          v19 = "nw_protocol_webtransport_stream_get_message_properties";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_50:
        if (!v6)
        {
          return;
        }

        goto LABEL_51;
      }

      if (!v11)
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_get_message_properties";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_get_message_properties";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_49;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_get_message_properties";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v6, &type, &v16))
    {
      goto LABEL_50;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v16 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        v19 = "nw_protocol_webtransport_stream_get_message_properties";
        v9 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_49;
      }

      v12 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!v12)
      {
        if (!v13)
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        v19 = "nw_protocol_webtransport_stream_get_message_properties";
        v9 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_49;
      }

      if (v13)
      {
        *buf = 136446466;
        v19 = "nw_protocol_webtransport_stream_get_message_properties";
        v20 = 2082;
        v21 = v12;
        v14 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
LABEL_34:
        _os_log_impl(&dword_181A37000, v7, v8, v14, buf, 0x16u);
      }

LABEL_35:
      free(v12);
      if (!v6)
      {
        return;
      }

LABEL_51:
      free(v6);
      return;
    }

    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_50;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_get_message_properties";
    v9 = "%{public}s called with null webtransport_stream";
LABEL_49:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_50;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_get_message_properties";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v6, &type, &v16))
    {
      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_get_message_properties";
      v9 = "%{public}s called with null message_properties";
      goto LABEL_49;
    }

    if (v16 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_get_message_properties";
      v9 = "%{public}s called with null message_properties, backtrace limit exceeded";
      goto LABEL_49;
    }

    v12 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v15 = os_log_type_enabled(v7, type);
    if (!v12)
    {
      if (!v15)
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_get_message_properties";
      v9 = "%{public}s called with null message_properties, no backtrace";
      goto LABEL_49;
    }

    if (v15)
    {
      *buf = 136446466;
      v19 = "nw_protocol_webtransport_stream_get_message_properties";
      v20 = 2082;
      v21 = v12;
      v14 = "%{public}s called with null message_properties, dumping backtrace:%{public}s";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v4 = a3[1] & 0xFFFFFFF8;
  if (*(v3 + 64) == -2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  *a3 = -1;
  a3[1] = v4 | v5;
}

uint64_t nw_protocol_webtransport_stream_remove_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
      v8 = "%{public}s called with null protocol";
LABEL_52:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      goto LABEL_53;
    }

    if (v19 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v14 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (!v14)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
    v23 = 2082;
    v24 = backtrace_string;
    v15 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_35:
    _os_log_impl(&dword_181A37000, v6, v7, v15, buf, 0x16u);
    goto LABEL_36;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
      v8 = "%{public}s called with null webtransport_stream";
      goto LABEL_52;
    }

    if (v19 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
        v8 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
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
        v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
        v8 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (!v16)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
    v23 = 2082;
    v24 = backtrace_string;
    v15 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_35;
  }

  v3 = handle[11];
  if (v3)
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v9 = a2;
      v10 = __nwlog_obj();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      v3 = handle[11];
      if (v11)
      {
        if (v3)
        {
          v12 = *(v3 + 492);
        }

        else
        {
          v12 = -1;
        }

        v18 = handle[8];
        *buf = 136447234;
        v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
        v23 = 2082;
        v24 = (handle + 24);
        v25 = 2080;
        v26 = " ";
        v27 = 1024;
        v28 = v12;
        v29 = 2048;
        v30 = v18;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        v3 = handle[11];
      }

      a2 = v9;
    }

    return nw_protocol_remove_listen_handler(v3, a2);
  }

  __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v5, &type, &v19))
  {
    goto LABEL_53;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v19 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
        v8 = "%{public}s called with null webtransport_stream->webtransport_session, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v17 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
        v8 = "%{public}s called with null webtransport_stream->webtransport_session, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v17)
    {
      *buf = 136446466;
      v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
      v23 = 2082;
      v24 = backtrace_string;
      v15 = "%{public}s called with null webtransport_stream->webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_35;
    }

LABEL_36:
    free(backtrace_string);
    goto LABEL_53;
  }

  v6 = __nwlog_obj();
  v7 = type;
  if (os_log_type_enabled(v6, type))
  {
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_stream_remove_listen_handler";
    v8 = "%{public}s called with null webtransport_stream->webtransport_session";
    goto LABEL_52;
  }

LABEL_53:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_stream_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_stream_add_listen_handler";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_stream_add_listen_handler";
      v8 = "%{public}s called with null protocol";
LABEL_52:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      goto LABEL_53;
    }

    if (v19 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_stream_add_listen_handler";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v14 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_stream_add_listen_handler";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (!v14)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v22 = "nw_protocol_webtransport_stream_add_listen_handler";
    v23 = 2082;
    v24 = backtrace_string;
    v15 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_35:
    _os_log_impl(&dword_181A37000, v6, v7, v15, buf, 0x16u);
    goto LABEL_36;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_stream_add_listen_handler";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_53;
      }

      *buf = 136446210;
      v22 = "nw_protocol_webtransport_stream_add_listen_handler";
      v8 = "%{public}s called with null webtransport_stream";
      goto LABEL_52;
    }

    if (v19 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_stream_add_listen_handler";
        v8 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
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
        v22 = "nw_protocol_webtransport_stream_add_listen_handler";
        v8 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (!v16)
    {
      goto LABEL_36;
    }

    *buf = 136446466;
    v22 = "nw_protocol_webtransport_stream_add_listen_handler";
    v23 = 2082;
    v24 = backtrace_string;
    v15 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
    goto LABEL_35;
  }

  v3 = handle[11];
  if (v3)
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v9 = a2;
      v10 = __nwlog_obj();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      v3 = handle[11];
      if (v11)
      {
        if (v3)
        {
          v12 = *(v3 + 492);
        }

        else
        {
          v12 = -1;
        }

        v18 = handle[8];
        *buf = 136447234;
        v22 = "nw_protocol_webtransport_stream_add_listen_handler";
        v23 = 2082;
        v24 = (handle + 24);
        v25 = 2080;
        v26 = " ";
        v27 = 1024;
        v28 = v12;
        v29 = 2048;
        v30 = v18;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        v3 = handle[11];
      }

      a2 = v9;
    }

    return nw_protocol_add_listen_handler(v3, a2);
  }

  __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_webtransport_stream_add_listen_handler";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v5, &type, &v19))
  {
    goto LABEL_53;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v19 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_stream_add_listen_handler";
        v8 = "%{public}s called with null webtransport_stream->webtransport_session, backtrace limit exceeded";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v17 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v22 = "nw_protocol_webtransport_stream_add_listen_handler";
        v8 = "%{public}s called with null webtransport_stream->webtransport_session, no backtrace";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (v17)
    {
      *buf = 136446466;
      v22 = "nw_protocol_webtransport_stream_add_listen_handler";
      v23 = 2082;
      v24 = backtrace_string;
      v15 = "%{public}s called with null webtransport_stream->webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_35;
    }

LABEL_36:
    free(backtrace_string);
    goto LABEL_53;
  }

  v6 = __nwlog_obj();
  v7 = type;
  if (os_log_type_enabled(v6, type))
  {
    *buf = 136446210;
    v22 = "nw_protocol_webtransport_stream_add_listen_handler";
    v8 = "%{public}s called with null webtransport_stream->webtransport_session";
    goto LABEL_52;
  }

LABEL_53:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_stream_copy_info(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      if ((*(v2 + 276) & 0x10) == 0 && gLogDatapath == 1)
      {
        v11 = a1;
        v12 = __nwlog_obj();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
        a1 = v11;
        if (v13)
        {
          v14 = *(v2 + 88);
          if (v14)
          {
            v15 = *(v14 + 492);
          }

          else
          {
            v15 = -1;
          }

          v20 = *(v2 + 64);
          *buf = 136447234;
          v24 = "nw_protocol_webtransport_stream_copy_info";
          v25 = 2082;
          v26 = (v2 + 192);
          v27 = 2080;
          v28 = " ";
          v29 = 1024;
          v30 = v15;
          v31 = 2048;
          v32 = v20;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
          a1 = v11;
        }
      }

      if (!*(v2 + 32))
      {
        a1 = *(v2 + 88);
      }

      result = nw_protocol_common_copy_info(a1, a2);
      if (a2 == 255)
      {
        if (!result)
        {
          result = _nw_array_create();
        }

        v5 = *(v2 + 160);
        if (v5)
        {
          if (result)
          {
            v6 = result;
            _nw_array_append(result, v5);
            return v6;
          }
        }
      }

      return result;
    }

    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_webtransport_stream_copy_info";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v7, &type, &v21))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v24 = "nw_protocol_webtransport_stream_copy_info";
        v10 = "%{public}s called with null webtransport_stream";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (v21 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v24 = "nw_protocol_webtransport_stream_copy_info";
        v10 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v19 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v24 = "nw_protocol_webtransport_stream_copy_info";
        v10 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (v19)
    {
      *buf = 136446466;
      v24 = "nw_protocol_webtransport_stream_copy_info";
      v25 = 2082;
      v26 = backtrace_string;
      v18 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_protocol_webtransport_stream_copy_info";
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v7, &type, &v21))
  {
    goto LABEL_46;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v21 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v24 = "nw_protocol_webtransport_stream_copy_info";
        v10 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v17 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v24 = "nw_protocol_webtransport_stream_copy_info";
        v10 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (v17)
    {
      *buf = 136446466;
      v24 = "nw_protocol_webtransport_stream_copy_info";
      v25 = 2082;
      v26 = backtrace_string;
      v18 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_33:
      _os_log_impl(&dword_181A37000, v8, v9, v18, buf, 0x16u);
    }

LABEL_34:
    free(backtrace_string);
    goto LABEL_46;
  }

  v8 = __nwlog_obj();
  v9 = type;
  if (os_log_type_enabled(v8, type))
  {
    *buf = 136446210;
    v24 = "nw_protocol_webtransport_stream_copy_info";
    v10 = "%{public}s called with null protocol";
LABEL_45:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
  }

LABEL_46:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

void nw_protocol_webtransport_stream_notify(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_webtransport_stream_notify";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v4, &type, &v21))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v24 = "nw_protocol_webtransport_stream_notify";
      v7 = "%{public}s called with null protocol";
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v17 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v24 = "nw_protocol_webtransport_stream_notify";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v4)
        {
          return;
        }

LABEL_41:
        free(v4);
        return;
      }

      if (!v17)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v24 = "nw_protocol_webtransport_stream_notify";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v24 = "nw_protocol_webtransport_stream_notify";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_39:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_40;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    if ((*(v3 + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v8 = a3;
      v9 = a2;
      v10 = a1;
      v11 = __nwlog_obj();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
      a2 = v9;
      a3 = v8;
      v13 = v12;
      a1 = v10;
      if (v13)
      {
        v14 = *(v3 + 88);
        if (v14)
        {
          v15 = *(v14 + 492);
        }

        else
        {
          v15 = -1;
        }

        v20 = *(v3 + 64);
        *buf = 136447234;
        v24 = "nw_protocol_webtransport_stream_notify";
        v25 = 2082;
        v26 = (v3 + 192);
        v27 = 2080;
        v28 = " ";
        v29 = 1024;
        v30 = v15;
        v31 = 2048;
        v32 = v20;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
        a3 = v8;
        a2 = v9;
        a1 = v10;
      }
    }

    nw_protocol_common_notify(a1, a2, a3);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_protocol_webtransport_stream_notify";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v4, &type, &v21))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v24 = "nw_protocol_webtransport_stream_notify";
    v7 = "%{public}s called with null webtransport_stream";
    goto LABEL_39;
  }

  if (v21 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v24 = "nw_protocol_webtransport_stream_notify";
    v7 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_39;
  }

  v18 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v19 = os_log_type_enabled(v5, type);
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v24 = "nw_protocol_webtransport_stream_notify";
    v7 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v24 = "nw_protocol_webtransport_stream_notify";
    v25 = 2082;
    v26 = v18;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v18);
  if (v4)
  {
    goto LABEL_41;
  }
}

void nw_protocol_webtransport_stream_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_output_available";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v4, &type, &v16))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_output_available";
      v7 = "%{public}s called with null protocol";
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v12 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v19 = "nw_protocol_webtransport_stream_output_available";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v4)
        {
          return;
        }

LABEL_42:
        free(v4);
        return;
      }

      if (!v12)
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_output_available";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_output_available";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_40:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_41;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = handle[11];
        if (v9)
        {
          v10 = *(v9 + 492);
        }

        else
        {
          v10 = -1;
        }

        v15 = handle[8];
        *buf = 136447234;
        v19 = "nw_protocol_webtransport_stream_output_available";
        v20 = 2082;
        v21 = (handle + 24);
        v22 = 2080;
        v23 = " ";
        v24 = 1024;
        v25 = v10;
        v26 = 2048;
        v27 = v15;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      }
    }

    if (*(handle + 47) == 2)
    {
      nw_protocol_output_available(handle[6], a1);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_webtransport_stream_output_available";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v4, &type, &v16))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_output_available";
    v7 = "%{public}s called with null webtransport_stream";
    goto LABEL_40;
  }

  if (v16 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_output_available";
    v7 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_40;
  }

  v13 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v14 = os_log_type_enabled(v5, type);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_output_available";
    v7 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_40;
  }

  if (v14)
  {
    *buf = 136446466;
    v19 = "nw_protocol_webtransport_stream_output_available";
    v20 = 2082;
    v21 = v13;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v4)
  {
    goto LABEL_42;
  }
}

void nw_protocol_webtransport_stream_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_input_available";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v4, &type, &v16))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_input_available";
      v7 = "%{public}s called with null protocol";
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v12 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v19 = "nw_protocol_webtransport_stream_input_available";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v4)
        {
          return;
        }

LABEL_42:
        free(v4);
        return;
      }

      if (!v12)
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_input_available";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_41;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_input_available";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_40:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_41;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = handle[11];
        if (v9)
        {
          v10 = *(v9 + 492);
        }

        else
        {
          v10 = -1;
        }

        v15 = handle[8];
        *buf = 136447234;
        v19 = "nw_protocol_webtransport_stream_input_available";
        v20 = 2082;
        v21 = (handle + 24);
        v22 = 2080;
        v23 = " ";
        v24 = 1024;
        v25 = v10;
        v26 = 2048;
        v27 = v15;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      }
    }

    if (*(handle + 46) == 2)
    {
      nw_protocol_input_available(handle[6], a1);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_webtransport_stream_input_available";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v4, &type, &v16))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_input_available";
    v7 = "%{public}s called with null webtransport_stream";
    goto LABEL_40;
  }

  if (v16 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_input_available";
    v7 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_40;
  }

  v13 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v14 = os_log_type_enabled(v5, type);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_41;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_input_available";
    v7 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_40;
  }

  if (v14)
  {
    *buf = 136446466;
    v19 = "nw_protocol_webtransport_stream_input_available";
    v20 = 2082;
    v21 = v13;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v4)
  {
    goto LABEL_42;
  }
}

void nw_protocol_webtransport_stream_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_disconnected";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v4, &type, &v16))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_disconnected";
      v7 = "%{public}s called with null protocol";
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v12 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v19 = "nw_protocol_webtransport_stream_disconnected";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v4)
        {
          return;
        }

LABEL_41:
        free(v4);
        return;
      }

      if (!v12)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_disconnected";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v19 = "nw_protocol_webtransport_stream_disconnected";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_39:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_40;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = handle[11];
        if (v9)
        {
          v10 = *(v9 + 492);
        }

        else
        {
          v10 = -1;
        }

        v15 = handle[8];
        *buf = 136447234;
        v19 = "nw_protocol_webtransport_stream_disconnected";
        v20 = 2082;
        v21 = (handle + 24);
        v22 = 2080;
        v23 = " ";
        v24 = 1024;
        v25 = v10;
        v26 = 2048;
        v27 = v15;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      }
    }

    nw_protocol_disconnected(a1->default_input_handler->flow_id, a1);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_webtransport_stream_disconnected";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v4, &type, &v16))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_disconnected";
    v7 = "%{public}s called with null webtransport_stream";
    goto LABEL_39;
  }

  if (v16 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_disconnected";
    v7 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
    goto LABEL_39;
  }

  v13 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v14 = os_log_type_enabled(v5, type);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v19 = "nw_protocol_webtransport_stream_disconnected";
    v7 = "%{public}s called with null webtransport_stream, no backtrace";
    goto LABEL_39;
  }

  if (v14)
  {
    *buf = 136446466;
    v19 = "nw_protocol_webtransport_stream_disconnected";
    v20 = 2082;
    v21 = v13;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v4)
  {
    goto LABEL_41;
  }
}

uint64_t nw_protocol_webtransport_stream_get_remote_endpoint(nw_protocol *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_webtransport_stream_get_remote_endpoint";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v17 = "nw_protocol_webtransport_stream_get_remote_endpoint";
      v9 = "%{public}s called with null protocol";
      goto LABEL_36;
    }

    if (v14 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v17 = "nw_protocol_webtransport_stream_get_remote_endpoint";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (!v11)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v17 = "nw_protocol_webtransport_stream_get_remote_endpoint";
      v9 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_36;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_protocol_webtransport_stream_get_remote_endpoint";
      v18 = 2082;
      v19 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_37:
    if (!v6)
    {
      return 0;
    }

LABEL_38:
    free(v6);
    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_webtransport_stream_get_remote_endpoint";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v17 = "nw_protocol_webtransport_stream_get_remote_endpoint";
      v9 = "%{public}s called with null webtransport_stream";
      goto LABEL_36;
    }

    if (v14 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v17 = "nw_protocol_webtransport_stream_get_remote_endpoint";
      v9 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_36;
    }

    v12 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v13 = os_log_type_enabled(v7, type);
    if (v12)
    {
      if (v13)
      {
        *buf = 136446466;
        v17 = "nw_protocol_webtransport_stream_get_remote_endpoint";
        v18 = 2082;
        v19 = v12;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v12);
      if (!v6)
      {
        return 0;
      }

      goto LABEL_38;
    }

    if (v13)
    {
      *buf = 136446210;
      v17 = "nw_protocol_webtransport_stream_get_remote_endpoint";
      v9 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_36:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      goto LABEL_37;
    }

    goto LABEL_37;
  }

  v2 = handle[6];
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 24);
  if (!v3 || !*(v3 + 136))
  {
    return 0;
  }

  default_input_handler = a1->default_input_handler;

  return nw_protocol_get_remote_endpoint(default_input_handler);
}

uint64_t nw_protocol_webtransport_stream_get_parameters(nw_protocol *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[18];
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_webtransport_stream_get_parameters";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v3, &type, &v11))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_webtransport_stream_get_parameters";
        v6 = "%{public}s called with null webtransport_stream";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_webtransport_stream_get_parameters";
        v6 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v10 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (v10)
      {
        *buf = 136446210;
        v14 = "nw_protocol_webtransport_stream_get_parameters";
        v6 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_webtransport_stream_get_parameters";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_webtransport_stream_get_parameters";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (!__nwlog_fault(v3, &type, &v11))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_webtransport_stream_get_parameters";
        v6 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v8 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (v8)
      {
        *buf = 136446210;
        v14 = "nw_protocol_webtransport_stream_get_parameters";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_webtransport_stream_get_parameters";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v4, v5, v9, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v4 = __nwlog_obj();
  v5 = type;
  if (os_log_type_enabled(v4, type))
  {
    *buf = 136446210;
    v14 = "nw_protocol_webtransport_stream_get_parameters";
    v6 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
  }

LABEL_32:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_stream_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_protocol_webtransport_stream_add_input_handler";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v13, &type, &v49))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v52 = "nw_protocol_webtransport_stream_add_input_handler";
      v16 = "%{public}s called with null protocol";
      goto LABEL_74;
    }

    if (v49 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v52 = "nw_protocol_webtransport_stream_add_input_handler";
      v16 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_74;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v25 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (!v25)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v52 = "nw_protocol_webtransport_stream_add_input_handler";
      v16 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_74;
    }

    if (v25)
    {
      *buf = 136446466;
      v52 = "nw_protocol_webtransport_stream_add_input_handler";
      v53 = 2082;
      v54 = backtrace_string;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_75:
    if (!v13)
    {
      return 0;
    }

LABEL_76:
    free(v13);
    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_protocol_webtransport_stream_add_input_handler";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (!__nwlog_fault(v13, &type, &v49))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v52 = "nw_protocol_webtransport_stream_add_input_handler";
      v16 = "%{public}s called with null webtransport_stream";
      goto LABEL_74;
    }

    if (v49 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v52 = "nw_protocol_webtransport_stream_add_input_handler";
      v16 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
      goto LABEL_74;
    }

    v26 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v27 = os_log_type_enabled(v14, type);
    if (v26)
    {
      if (v27)
      {
        *buf = 136446466;
        v52 = "nw_protocol_webtransport_stream_add_input_handler";
        v53 = 2082;
        v54 = v26;
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v26);
      if (!v13)
      {
        return 0;
      }

      goto LABEL_76;
    }

    if (v27)
    {
      *buf = 136446210;
      v52 = "nw_protocol_webtransport_stream_add_input_handler";
      v16 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_74:
      _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      goto LABEL_75;
    }

    goto LABEL_75;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v17 = a2;
    v18 = a1;
    v19 = __nwlog_obj();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
    a2 = v17;
    v21 = v20;
    a1 = v18;
    if (v21)
    {
      v22 = handle[11];
      if (v22)
      {
        v23 = *(v22 + 492);
      }

      else
      {
        v23 = -1;
      }

      v44 = handle[8];
      *buf = 136447234;
      v52 = "nw_protocol_webtransport_stream_add_input_handler";
      v53 = 2082;
      v54 = (handle + 24);
      v55 = 2080;
      v56 = " ";
      v57 = 1024;
      v58 = v23;
      v59 = 2048;
      v60 = v44;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      a2 = v17;
      a1 = v18;
    }
  }

  v3 = handle[11];
  if (v3)
  {
    v4 = a1->default_input_handler == a2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (gLogDatapath == 1)
    {
      v5 = __nwlog_obj();
      result = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      *buf = 136446210;
      v52 = "nw_protocol_webtransport_stream_add_input_handler";
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s Rejecting duplicate request for a webtransport stream", buf, 0xCu);
    }
  }

  else
  {
    if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
    {
      v28 = a2;
      v29 = __nwlog_obj();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
      a2 = v28;
      if (v30)
      {
        v31 = handle[11];
        if (v31)
        {
          v32 = *(v31 + 492);
        }

        else
        {
          v32 = -1;
        }

        v45 = handle[8];
        *buf = 136447490;
        v52 = "nw_protocol_webtransport_stream_add_input_handler";
        v53 = 2082;
        v54 = (handle + 24);
        v55 = 2080;
        v56 = " ";
        v57 = 1024;
        v58 = v32;
        v59 = 2048;
        v60 = v45;
        v61 = 2048;
        v62 = handle;
        _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Peeling off a new stream from %p", buf, 0x3Au);
        a2 = v28;
      }
    }

    v7 = a2;
    parameters = nw_protocol_get_parameters(a2);
    if (parameters)
    {
      if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
      {
        v33 = parameters;
        v34 = __nwlog_obj();
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);
        parameters = v33;
        if (v35)
        {
          v36 = handle[11];
          if (v36)
          {
            v37 = *(v36 + 492);
          }

          else
          {
            v37 = -1;
          }

          v46 = handle[8];
          *buf = 136447234;
          v52 = "nw_webtransport_stream_replace_protocol_instance";
          v53 = 2082;
          v54 = (handle + 24);
          v55 = 2080;
          v56 = " ";
          v57 = 1024;
          v58 = v37;
          v59 = 2048;
          v60 = v46;
          _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
          parameters = v33;
        }
      }

      v9 = parameters;
      v10 = _nw_parameters_copy_protocol_options_with_level(v9, handle);

      if (v10)
      {
        if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
        {
          v41 = __nwlog_obj();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            v42 = handle[11];
            if (v42)
            {
              v43 = *(v42 + 492);
            }

            else
            {
              v43 = -1;
            }

            v48 = handle[8];
            *buf = 136448514;
            v52 = "nw_webtransport_stream_replace_protocol_instance";
            v53 = 2082;
            v54 = (handle + 24);
            v55 = 2080;
            v56 = " ";
            v57 = 1024;
            v58 = v43;
            v59 = 2048;
            v60 = v48;
            v61 = 2048;
            v62 = handle;
            v63 = 2048;
            v64 = v3;
            v65 = 2048;
            v66 = handle;
            v67 = 2048;
            v68 = v9;
            v69 = 2048;
            v70 = v10;
            _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> webtransport_stream protocol %p, set protocol instance to %p instead of %p in parameters %p options %p", buf, 0x62u);
          }
        }

        if (nw_protocol_copy_webtransport_definition::onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_webtransport_definition::onceToken, &__block_literal_global_62942);
        }

        v11 = nw_protocol_copy_webtransport_definition::definition;
        v12 = v10;
        _nw_protocol_options_set_instance(v12, v3);

        if (v11)
        {
          os_release(v11);
        }

        os_release(v12);
      }

      if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
      {
        v38 = __nwlog_obj();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v39 = handle[11];
          if (v39)
          {
            v40 = *(v39 + 492);
          }

          else
          {
            v40 = -1;
          }

          v47 = handle[8];
          *buf = 136447490;
          v52 = "nw_protocol_webtransport_stream_add_input_handler";
          v53 = 2082;
          v54 = (handle + 24);
          v55 = 2080;
          v56 = " ";
          v57 = 1024;
          v58 = v40;
          v59 = 2048;
          v60 = v47;
          v61 = 2048;
          v62 = v9;
          _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Set connection protocol as instance in peeled off parameters %p", buf, 0x3Au);
        }
      }
    }

    if (handle[11])
    {
      return nw_protocol_add_input_handler(v3, v7);
    }
  }

  return 0;
}

void ___ZL47nw_protocol_webtransport_http2_stream_callbacksv_block_invoke()
{
  qword_1EA842230 = nw_protocol_default_replace_input_handler;
  qword_1EA842328 = nw_protocol_default_input_flush;
  qword_1EA842288 = nw_protocol_default_link_state;
  qword_1EA8422A0 = nw_protocol_default_get_local;
  qword_1EA842298 = nw_protocol_default_get_path;
  qword_1EA8422C8 = nw_protocol_default_updated_path;
  qword_1EA8422E8 = nw_protocol_default_get_output_local;
  qword_1EA8422F0 = nw_protocol_default_get_output_interface;
  qword_1EA842320 = nw_protocol_default_reset;
  qword_1EA8422D0 = nw_protocol_default_supports_external_data;
  qword_1EA8422F8 = nw_protocol_default_waiting_for_output;
  qword_1EA8422B0 = nw_protocol_default_register_notification;
  qword_1EA8422B8 = nw_protocol_default_unregister_notification;
  nw_protocol_webtransport_http2_stream_callbacks(void)::protocol_callbacks = nw_protocol_webtransport_stream_add_input_handler;
  qword_1EA842290 = nw_protocol_webtransport_stream_get_parameters;
  qword_1EA8422A8 = nw_protocol_webtransport_stream_get_remote_endpoint;
  qword_1EA842240 = nw_protocol_webtransport_stream_disconnect;
  qword_1EA842250 = nw_protocol_webtransport_stream_disconnected;
  qword_1EA842258 = nw_protocol_webtransport_stream_error;
  qword_1EA842260 = nw_protocol_webtransport_stream_input_available;
  qword_1EA842268 = nw_protocol_webtransport_stream_output_available;
  qword_1EA8422C0 = nw_protocol_webtransport_stream_notify;
  qword_1EA842300 = nw_protocol_webtransport_stream_copy_info;
  qword_1EA842308 = nw_protocol_webtransport_stream_add_listen_handler;
  qword_1EA842310 = nw_protocol_webtransport_stream_remove_listen_handler;
  qword_1EA842318 = nw_protocol_webtransport_stream_get_message_properties;
  qword_1EA842228 = nw_protocol_webtransport_http2_stream_remove_input_handler;
  qword_1EA842238 = nw_protocol_webtransport_http2_stream_connect;
  qword_1EA842248 = nw_protocol_webtransport_http2_stream_connected;
  qword_1EA842270 = nw_protocol_webtransport_http2_stream_get_input_frames;
  qword_1EA842278 = nw_protocol_webtransport_http2_stream_get_output_frames;
  qword_1EA842280 = nw_protocol_webtransport_http2_stream_finalize_output_frames;
  qword_1EA8422D8 = nw_protocol_webtransport_http2_stream_input_finished;
  qword_1EA8422E0 = nw_protocol_webtransport_http2_stream_output_finished;
}

void nw_protocol_webtransport_http2_stream_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
    v11 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v11, type, &v25))
    {
      goto LABEL_67;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (!os_log_type_enabled(v12, type[0]))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
      v14 = "%{public}s called with null protocol";
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type[0];
      v19 = os_log_type_enabled(v12, type[0]);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_67:
        if (!v11)
        {
          return;
        }

        goto LABEL_68;
      }

      if (!v19)
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
      v14 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (!os_log_type_enabled(v12, type[0]))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
      v14 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_66;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
    v11 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v11, type, &v25))
    {
      goto LABEL_67;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v25 != 1)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (!os_log_type_enabled(v12, type[0]))
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
        v14 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_66;
      }

      v20 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type[0];
      v21 = os_log_type_enabled(v12, type[0]);
      if (!v20)
      {
        if (!v21)
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
        v14 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_66;
      }

      if (v21)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
        *&buf[12] = 2082;
        *&buf[14] = v20;
        v22 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
LABEL_41:
        _os_log_impl(&dword_181A37000, v12, v13, v22, buf, 0x16u);
      }

LABEL_42:
      free(v20);
      if (!v11)
      {
        return;
      }

LABEL_68:
      free(v11);
      return;
    }

    v12 = __nwlog_obj();
    v13 = type[0];
    if (!os_log_type_enabled(v12, type[0]))
    {
      goto LABEL_67;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
    v14 = "%{public}s called with null webtransport_stream";
LABEL_66:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_67;
  }

  if ((*(handle + 276) & 0x10) == 0 && gLogDatapath == 1)
  {
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = handle[11];
      if (v16)
      {
        v17 = *(v16 + 492);
      }

      else
      {
        v17 = -1;
      }

      v23 = handle[8];
      *buf = 136447234;
      *&buf[4] = "nw_protocol_webtransport_http2_stream_output_finished";
      *&buf[12] = 2082;
      *&buf[14] = handle + 24;
      *&buf[22] = 2080;
      v32 = " ";
      LOWORD(v33) = 1024;
      *(&v33 + 2) = v17;
      HIWORD(v33) = 2048;
      v34 = v23;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
    }
  }

  if (*(handle + 47) != 2 || (*(handle + 276) & 8) != 0)
  {
    return;
  }

  v3 = handle[11];
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_http2_send_control_capsule";
    v11 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v11, type, &v25))
    {
      goto LABEL_67;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (!os_log_type_enabled(v12, type[0]))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http2_send_control_capsule";
      v14 = "%{public}s called with null webtransport_session";
      goto LABEL_66;
    }

    if (v25 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (!os_log_type_enabled(v12, type[0]))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http2_send_control_capsule";
      v14 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
      goto LABEL_66;
    }

    v20 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type[0];
    v24 = os_log_type_enabled(v12, type[0]);
    if (!v20)
    {
      if (!v24)
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_http2_send_control_capsule";
      v14 = "%{public}s called with null webtransport_session, no backtrace";
      goto LABEL_66;
    }

    if (v24)
    {
      *buf = 136446466;
      *&buf[4] = "nw_webtransport_http2_send_control_capsule";
      *&buf[12] = 2082;
      *&buf[14] = v20;
      v22 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  v4 = handle[8];
  if (!*(v3 + 200))
  {
    *(v3 + 200) = _nw_array_create();
  }

  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x3ECB0013uLL);
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    *&buf[4] = "nw_webtransport_http2_add_control_capsule";
    *&buf[12] = 2048;
    *&buf[14] = 1;
    *&buf[22] = 2048;
    v32 = 24;
    v6 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v6))
    {
      __break(1u);
      return;
    }

    free(v6);
  }

  *v5 = 420171068;
  v5[1] = v4;
  v5[2] = -1;
  v7 = *(v3 + 200);
  if (v7)
  {
    _nw_array_append(v7, v5);
    v8 = *(v3 + 200);
    if (v8)
    {
      if (!_nw_array_is_empty(v8))
      {
        v9 = _nw_array_create();
        v10 = *(v3 + 200);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke;
        v32 = &__block_descriptor_tmp_50_36984;
        v33 = v3;
        v34 = v9;
        if (v10)
        {
          _nw_array_apply(v10, buf);
        }

        *type = MEMORY[0x1E69E9820];
        v27 = 0x40000000;
        v28 = ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke_51;
        v29 = &__block_descriptor_tmp_52;
        v30 = v3;
        if (v9)
        {
          _nw_array_apply(v9, type);
          os_release(v9);
        }
      }
    }
  }
}
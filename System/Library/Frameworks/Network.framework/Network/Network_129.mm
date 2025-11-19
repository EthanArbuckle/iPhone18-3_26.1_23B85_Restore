void nw_protocol_http_sniffing_create::$_1::__invoke(nw_protocol_http_sniffing_create::$_1 *this, nw_protocol *a2, nw_protocol *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "operator()";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v17 = "operator()";
      v9 = "%{public}s called with null protocol";
    }

    else if (v14 == 1)
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
          v17 = "operator()";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v6)
        {
          return;
        }

LABEL_37:
        free(v6);
        return;
      }

      if (!v11)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v17 = "operator()";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v17 = "operator()";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_36;
  }

  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 + 352);
    if (v4)
    {
      v5 = *(v3 + 344);
      if (v5)
      {
        os_release(v5);
        v4 = *(v3 + 352);
      }
    }

    *(v3 + 344) = 0;
    *(v3 + 352) = v4 | 1;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v17 = "operator()";
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v6, &type, &v14))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v17 = "operator()";
    v9 = "%{public}s called with null http_sniffing";
    goto LABEL_35;
  }

  if (v14 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v17 = "operator()";
    v9 = "%{public}s called with null http_sniffing, backtrace limit exceeded";
    goto LABEL_35;
  }

  v12 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v13 = os_log_type_enabled(v7, type);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v17 = "operator()";
    v9 = "%{public}s called with null http_sniffing, no backtrace";
    goto LABEL_35;
  }

  if (v13)
  {
    *buf = 136446466;
    v17 = "operator()";
    v18 = 2082;
    v19 = v12;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null http_sniffing, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v6)
  {
    goto LABEL_37;
  }
}

void ___ZL39nw_protocol_http_sniffing_get_callbacksv_block_invoke()
{
  nw_protocol_http_sniffing_get_callbacks(void)::protocol_callbacks = nw_protocol_common_add_input_handler;
  qword_1EA840760 = nw_protocol_common_replace_input_handler;
  qword_1EA8407A8 = nw_protocol_common_get_output_frames;
  qword_1EA8407B0 = nw_protocol_common_finalize_output_frames;
  qword_1EA8407C0 = nw_protocol_common_get_parameters;
  qword_1EA8407C8 = nw_protocol_common_get_path;
  qword_1EA8407D8 = nw_protocol_common_get_remote_endpoint;
  qword_1EA8407D0 = nw_protocol_common_get_local_endpoint;
  qword_1EA840818 = nw_protocol_common_get_output_local_endpoint;
  qword_1EA840820 = nw_protocol_common_get_output_interface;
  qword_1EA840768 = nw_protocol_common_connect;
  qword_1EA840778 = nw_protocol_common_connected;
  qword_1EA840770 = nw_protocol_common_disconnect;
  qword_1EA840780 = nw_protocol_common_disconnected;
  qword_1EA840790 = nw_protocol_common_input_available;
  qword_1EA840798 = nw_protocol_common_output_available;
  qword_1EA840808 = nw_protocol_common_input_finished;
  qword_1EA840810 = nw_protocol_common_output_finished;
  qword_1EA840858 = nw_protocol_common_input_flush;
  qword_1EA840788 = nw_protocol_common_error;
  qword_1EA840850 = nw_protocol_common_reset;
  qword_1EA840848 = nw_protocol_common_get_message_properties;
  qword_1EA840830 = nw_protocol_common_copy_info;
  qword_1EA840800 = nw_protocol_common_supports_external_data;
  qword_1EA840828 = nw_protocol_common_waiting_for_output;
  qword_1EA8407E0 = nw_protocol_common_register_notification;
  qword_1EA8407E8 = nw_protocol_common_unregister_notification;
  qword_1EA8407F0 = nw_protocol_common_notify;
  qword_1EA8407F8 = nw_protocol_common_updated_path;
  qword_1EA8407B8 = nw_protocol_common_link_state;
  qword_1EA8407A0 = nw_protocol_http_sniffing_get_input_frames;
  qword_1EA840758 = nw_protocol_http_sniffing_remove_input_handler;
}

BOOL nw_protocol_http_sniffing_get_input_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, uint64_t a4, uint64_t a5, nw_frame_array_s *a6)
{
  v98 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *v93 = 136446210;
    *&v93[4] = "nw_protocol_http_sniffing_get_input_frames";
    v57 = _os_log_send_and_compose_impl();
    buf[0] = 16;
    v96[0] = 0;
    if (!__nwlog_fault(v57, buf, v96))
    {
      goto LABEL_145;
    }

    if (buf[0] != 17)
    {
      if (v96[0] != 1)
      {
        v58 = __nwlog_obj();
        v59 = buf[0];
        if (!os_log_type_enabled(v58, buf[0]))
        {
          goto LABEL_145;
        }

        *v93 = 136446210;
        *&v93[4] = "nw_protocol_http_sniffing_get_input_frames";
        v60 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_144;
      }

      backtrace_string = __nw_create_backtrace_string();
      v58 = __nwlog_obj();
      v59 = buf[0];
      v65 = os_log_type_enabled(v58, buf[0]);
      if (!backtrace_string)
      {
        if (!v65)
        {
          goto LABEL_145;
        }

        *v93 = 136446210;
        *&v93[4] = "nw_protocol_http_sniffing_get_input_frames";
        v60 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_144;
      }

      if (v65)
      {
        *v93 = 136446466;
        *&v93[4] = "nw_protocol_http_sniffing_get_input_frames";
        *&v93[12] = 2082;
        *&v93[14] = backtrace_string;
        v66 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_130:
        _os_log_impl(&dword_181A37000, v58, v59, v66, v93, 0x16u);
      }

LABEL_131:
      free(backtrace_string);
      goto LABEL_145;
    }

    v58 = __nwlog_obj();
    v59 = buf[0];
    if (!os_log_type_enabled(v58, buf[0]))
    {
      goto LABEL_145;
    }

    *v93 = 136446210;
    *&v93[4] = "nw_protocol_http_sniffing_get_input_frames";
    v60 = "%{public}s called with null protocol";
LABEL_144:
    _os_log_impl(&dword_181A37000, v58, v59, v60, v93, 0xCu);
LABEL_145:
    if (v57)
    {
      free(v57);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *v93 = 136446210;
    *&v93[4] = "nw_protocol_http_sniffing_get_input_frames";
    v57 = _os_log_send_and_compose_impl();
    buf[0] = 16;
    v96[0] = 0;
    if (!__nwlog_fault(v57, buf, v96))
    {
      goto LABEL_145;
    }

    if (buf[0] == 17)
    {
      v58 = __nwlog_obj();
      v59 = buf[0];
      if (!os_log_type_enabled(v58, buf[0]))
      {
        goto LABEL_145;
      }

      *v93 = 136446210;
      *&v93[4] = "nw_protocol_http_sniffing_get_input_frames";
      v60 = "%{public}s called with null http_sniffing";
      goto LABEL_144;
    }

    if (v96[0] != 1)
    {
      v58 = __nwlog_obj();
      v59 = buf[0];
      if (!os_log_type_enabled(v58, buf[0]))
      {
        goto LABEL_145;
      }

      *v93 = 136446210;
      *&v93[4] = "nw_protocol_http_sniffing_get_input_frames";
      v60 = "%{public}s called with null http_sniffing, backtrace limit exceeded";
      goto LABEL_144;
    }

    backtrace_string = __nw_create_backtrace_string();
    v58 = __nwlog_obj();
    v59 = buf[0];
    v67 = os_log_type_enabled(v58, buf[0]);
    if (backtrace_string)
    {
      if (v67)
      {
        *v93 = 136446466;
        *&v93[4] = "nw_protocol_http_sniffing_get_input_frames";
        *&v93[12] = 2082;
        *&v93[14] = backtrace_string;
        v66 = "%{public}s called with null http_sniffing, dumping backtrace:%{public}s";
        goto LABEL_130;
      }

      goto LABEL_131;
    }

    if (!v67)
    {
      goto LABEL_145;
    }

    *v93 = 136446210;
    *&v93[4] = "nw_protocol_http_sniffing_get_input_frames";
    v60 = "%{public}s called with null http_sniffing, no backtrace";
    goto LABEL_144;
  }

  if ((handle[198] & 1) == 0 && gLogDatapath == 1)
  {
    v61 = a6;
    v62 = __nwlog_obj();
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG);
    a6 = v61;
    if (v63)
    {
      *v93 = 136447490;
      *&v93[4] = "nw_protocol_http_sniffing_get_input_frames";
      *&v93[12] = 2082;
      *&v93[14] = handle + 114;
      *&v93[22] = 2080;
      v94 = " ";
      *v95 = 1024;
      *&v95[2] = a3;
      *&v95[6] = 1024;
      *&v95[8] = a4;
      *&v95[12] = 1024;
      *&v95[14] = a5;
      _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sminimum bytes %u, maximum bytes %u, maximum frame count %u", v93, 0x32u);
      a6 = v61;
    }
  }

  v11 = *(handle + 162);
  if ((v11 & 1) == 0)
  {
    v80 = a6;
    *(handle + 162) = v11 | 1;
    v13 = handle[460];
    if ((v13 & 1) == 0)
    {
LABEL_10:
      if (v13)
      {
        if (*(handle + 43))
        {
          v55 = 0;
          goto LABEL_108;
        }

        *buf = 0;
        v96[0] = 0;
        input_frames = nw_protocol_fulfill_frame_request(handle + 41, v80, a3, a4, a5, buf, v96);
        v56 = *(handle + 114);
        v16 = v56 >= *buf;
        *(handle + 114) = v56 - *buf;
        if (!v16)
        {
          if (gLogDatapath != 1)
          {
            goto LABEL_106;
          }

          v23 = input_frames;
          v24 = __nwlog_obj();
          v70 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
          input_frames = v23;
          if (!v70)
          {
            goto LABEL_106;
          }

          goto LABEL_148;
        }
      }

      else
      {
        if (*(handle + 41))
        {
          v14 = *(handle + 114);
          v15 = a4 - v14;
          if (a4 > v14)
          {
            v16 = a3 >= v14;
            v17 = a3 - v14;
            v18 = v16 ? v17 : 1;
            *v93 = 0;
            *&v93[8] = v93;
            nw_protocol_get_input_frames(a1->output_handler->flow_id, a1, v18, v15, a5, v93);
            if (*v93)
            {
              v19 = *(handle + 42);
              *v19 = *v93;
              v20 = *&v93[8];
              *(*v93 + 40) = v19;
              *(handle + 42) = v20;
            }
          }

          *buf = 0;
          v96[0] = 0;
          input_frames = nw_protocol_fulfill_frame_request(handle + 41, v80, a3, a4, a5, buf, v96);
          v22 = *(handle + 114);
          v16 = v22 >= *buf;
          *(handle + 114) = v22 - *buf;
          if (v16)
          {
            goto LABEL_107;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_106;
          }

          v23 = input_frames;
          v24 = __nwlog_obj();
          v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
          input_frames = v23;
          if (!v25)
          {
            goto LABEL_106;
          }

LABEL_148:
          v71 = *(handle + 114);
          *v93 = 136446978;
          *&v93[4] = "nw_protocol_http_sniffing_get_input_frames";
          *&v93[12] = 2082;
          *&v93[14] = "http_sniffing->pending_input_frames_byte_count";
          *&v93[22] = 2048;
          v94 = *buf;
          *v95 = 2048;
          *&v95[2] = v71;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", v93, 0x2Au);
          input_frames = v23;
LABEL_106:
          *(handle + 114) = 0;
          goto LABEL_107;
        }

        input_frames = nw_protocol_get_input_frames(a1->output_handler->flow_id, a1, a3, a4, a5, v80);
      }

LABEL_107:
      v55 = input_frames;
LABEL_108:
      nw_protocol_plugin_retry_set_getting_input_frames((handle + 216), a1, 0);
      if ((handle[198] & 1) == 0 && gLogDatapath == 1)
      {
        v69 = __nwlog_obj();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          *v93 = 136446978;
          *&v93[4] = "nw_protocol_http_sniffing_get_input_frames";
          *&v93[12] = 2082;
          *&v93[14] = handle + 114;
          *&v93[22] = 2080;
          v94 = " ";
          *v95 = 1024;
          *&v95[2] = v55;
          _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sreturning %u frames", v93, 0x26u);
        }
      }

      return v55;
    }

    while (1)
    {
      *v93 = 0;
      *&v93[8] = v93;
      *&v93[16] = 0x3802000000;
      v94 = __Block_byref_object_copy__848;
      *v95 = __Block_byref_object_dispose__849;
      *&v95[8] = 0;
      *&v95[16] = &v95[8];
      v26 = a5;
      v27 = a4;
      v28 = a3;
      if (*(handle + 43))
      {
        v29 = *(handle + 114);
        if (a3 <= v29)
        {
          v28 = 1;
        }

        else
        {
          v28 = a3 - v29;
        }

        v16 = a4 >= v29;
        v30 = a4 - v29;
        if (v30 != 0 && v16)
        {
          v31 = *(handle + 108) - *(handle + 110) + 512;
          if (v30 <= v31)
          {
            v27 = v31;
          }

          else
          {
            v27 = v30;
          }
        }

        else
        {
          v27 = (*(handle + 108) - *(handle + 110) + 512);
        }

        v26 = 0xFFFFFFFFLL;
      }

      if (nw_protocol_get_input_frames(a1->output_handler->flow_id, a1, v28, v27, v26, &v95[8]) && *(*&v93[8] + 40))
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3802000000;
        v90 = __Block_byref_object_copy__17;
        *&v91 = __Block_byref_object_dispose__18;
        if (nw_protocol_copy_http_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
        }

        *(&v91 + 1) = nw_protocol_copy_http_definition_http_definition;
        v92 |= 1u;
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 0x40000000;
        v82 = ___ZL42nw_protocol_http_sniffing_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
        v83 = &unk_1E6A2B4F0;
        v84 = buf;
        v85 = v93;
        v86 = handle;
        v32 = *(*&v93[8] + 40);
        do
        {
          if (!v32)
          {
            break;
          }

          v33 = *(v32 + 32);
          v34 = v82(v81);
          v32 = v33;
        }

        while ((v34 & 1) != 0);
        if ((handle[460] & 1) != 0 && *(handle + 55) != *(handle + 54))
        {
          client_metadata_in_parameters = *(handle + 49);
          if (client_metadata_in_parameters)
          {
            goto LABEL_46;
          }

          client_metadata_in_parameters = nw_http_messaging_options_find_or_create_client_metadata_in_parameters(*(handle + 47), handle);
          v36 = handle[400];
          if ((v36 & 1) != 0 && *(handle + 49))
          {
            v37 = client_metadata_in_parameters;
            os_release(*(handle + 49));
            client_metadata_in_parameters = v37;
            v36 = handle[400];
          }

          *(handle + 49) = client_metadata_in_parameters;
          handle[400] = v36 | 1;
          if (client_metadata_in_parameters)
          {
LABEL_46:
            v38 = client_metadata_in_parameters;
            if (nw_protocol_copy_http_client_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
            }

            if (nw_protocol_metadata_matches_definition(v38, nw_protocol_copy_http_client_definition_definition))
            {
              v39 = _nw_protocol_metadata_get_handle(v38);
              if (v39)
              {
                __nw_http_client_metadata_call_prevent_timeout_callback_block_invoke(&__block_literal_global_88, v39);
              }

              goto LABEL_51;
            }

            logb = __nwlog_obj();
            *v96 = 136446210;
            *&v96[4] = "nw_http_client_metadata_call_prevent_timeout_callback";
            v79 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v87 = 0;
            if (__nwlog_fault(v79, &type, &v87))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                log = __nwlog_obj();
                v73 = type;
                if (os_log_type_enabled(log, type))
                {
                  *v96 = 136446210;
                  *&v96[4] = "nw_http_client_metadata_call_prevent_timeout_callback";
                  v50 = log;
                  v51 = v73;
                  v52 = "%{public}s metadata must be http_client";
                  goto LABEL_93;
                }

                goto LABEL_94;
              }

              if (v87 == 1)
              {
                loga = __nw_create_backtrace_string();
                v74 = __nwlog_obj();
                v72 = type;
                v53 = os_log_type_enabled(v74, type);
                if (loga)
                {
                  if (v53)
                  {
                    *v96 = 136446466;
                    *&v96[4] = "nw_http_client_metadata_call_prevent_timeout_callback";
                    *&v96[12] = 2082;
                    *&v96[14] = loga;
                    _os_log_impl(&dword_181A37000, v74, v72, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", v96, 0x16u);
                  }

                  free(loga);
                  goto LABEL_96;
                }

                if (v53)
                {
                  *v96 = 136446210;
                  *&v96[4] = "nw_http_client_metadata_call_prevent_timeout_callback";
                  _os_log_impl(&dword_181A37000, v74, v72, "%{public}s metadata must be http_client, no backtrace", v96, 0xCu);
                }

                v54 = v74;
              }

              else
              {
                log = __nwlog_obj();
                v75 = type;
                if (os_log_type_enabled(log, type))
                {
                  *v96 = 136446210;
                  *&v96[4] = "nw_http_client_metadata_call_prevent_timeout_callback";
                  v50 = log;
                  v51 = v75;
                  v52 = "%{public}s metadata must be http_client, backtrace limit exceeded";
LABEL_93:
                  _os_log_impl(&dword_181A37000, v50, v51, v52, v96, 0xCu);
                }

LABEL_94:
                v54 = log;
              }
            }

LABEL_96:
            if (v79)
            {
              free(v79);
            }

LABEL_51:
          }
        }

        _Block_object_dispose(buf, 8);
        if ((v92 & 1) != 0 && *(&v91 + 1))
        {
          os_release(*(&v91 + 1));
        }

        v40 = 1;
        goto LABEL_75;
      }

      v41 = handle[460];
      if ((~v41 & 3) == 0)
      {
        break;
      }

LABEL_74:
      v40 = 0;
LABEL_75:
      _Block_object_dispose(v93, 8);
      v13 = handle[460];
      if (!v40 || (handle[460] & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    handle[460] = v41 & 0xFE;
    nw_http_sniffing_guess_media_type(v96, handle);
    v42 = v97;
    v43 = v97;
    if ((v97 & 0x80u) != 0)
    {
      v42 = *&v96[8];
    }

    if (v42)
    {
      if ((handle[198] & 1) == 0 && gLogDatapath == 1)
      {
        v48 = __nwlog_obj();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          v49 = v96;
          if ((v97 & 0x80u) != 0)
          {
            v49 = *v96;
          }

          *buf = 136446978;
          *&buf[4] = "nw_http_sniffing_stop";
          *&buf[12] = 2082;
          *&buf[14] = handle + 114;
          *&buf[22] = 2080;
          v90 = " ";
          LOWORD(v91) = 2080;
          *(&v91 + 2) = v49;
          _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%smedia type %s", buf, 0x2Au);
        }
      }

      v44 = *(handle + 49);
      if (v44)
      {
        v43 = v97;
      }

      else
      {
        v44 = nw_http_messaging_options_find_or_create_client_metadata_in_parameters(*(handle + 47), handle);
        v45 = handle[400];
        if ((v45 & 1) != 0 && *(handle + 49))
        {
          v46 = v44;
          os_release(*(handle + 49));
          v44 = v46;
          v45 = handle[400];
        }

        *(handle + 49) = v44;
        handle[400] = v45 | 1;
        v43 = v97;
        if (!v44)
        {
          goto LABEL_72;
        }
      }

      if ((v43 & 0x80u) == 0)
      {
        v47 = v96;
      }

      else
      {
        v47 = *v96;
      }

      nw_http_client_metadata_set_sniffed_media_type(v44, v47);
      v43 = v97;
    }

LABEL_72:
    if ((v43 & 0x80) != 0)
    {
      operator delete(*v96);
    }

    goto LABEL_74;
  }

  if ((handle[198] & 1) != 0 || gLogDatapath != 1)
  {
    return 0;
  }

  v68 = __nwlog_obj();
  result = os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *v93 = 136446722;
    *&v93[4] = "nw_protocol_http_sniffing_get_input_frames";
    *&v93[12] = 2082;
    *&v93[14] = handle + 114;
    *&v93[22] = 2080;
    v94 = " ";
    _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%salready getting input frames, returning 0", v93, 0x20u);
    return 0;
  }

  return result;
}

__n128 __Block_byref_object_copy__848(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__18(uint64_t result)
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

BOOL ___ZL42nw_protocol_http_sniffing_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(void *a1, uint64_t a2)
{
  v119 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = nw_frame_copy_metadata_for_protocol(a2, *(*(a1[4] + 8) + 40));
    v5 = v4;
    if (*(a1[6] + 344) == v4 || nw_http_metadata_get_type(v4) == 3)
    {
      goto LABEL_57;
    }

    v6 = a1[6];
    v7 = *(v6 + 352);
    if (v7)
    {
      v8 = *(v6 + 344);
      if (v8)
      {
        os_release(v8);
        v7 = *(v6 + 352);
      }
    }

    *(v6 + 344) = v5;
    *(v6 + 352) = v7 | 1;
    v9 = *(a1[6] + 344);
    if (v9)
    {
      v10 = nw_http_metadata_copy_header_fields(v9);
      if (v10)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x4002000000;
        v115 = __Block_byref_object_copy__22;
        *&v116 = __Block_byref_object_dispose__23;
        *(&v116 + 1) = 0;
        v117 = 0;
        v118 = 0;
        v103[0] = MEMORY[0x1E69E9820];
        v103[1] = 0x40000000;
        v103[2] = ___ZL31nw_http_sniffing_get_media_typeP25nw_protocol_http_sniffingP20nw_protocol_metadata_block_invoke;
        v103[3] = &unk_1E6A2B518;
        v103[4] = buf;
        v11 = v10;
        v12 = v103;
        _nw_http_fields_enumerate_by_name(v11, "Content-Type", v12);

        v13 = *&buf[8];
        v14 = (*&buf[8] + 40);
        v15 = *(*&buf[8] + 63);
        if (v15 < 0)
        {
          v16 = *(*&buf[8] + 40);
          v17 = *(*&buf[8] + 48);
          if (!v17)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v16 = (*&buf[8] + 40);
          v17 = *(*&buf[8] + 63);
          if (!*(*&buf[8] + 63))
          {
            goto LABEL_17;
          }
        }

        v18 = memchr(v16, 47, v17);
        if (v18 && v18 - v16 != -1)
        {
          if ((v15 & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&__p, *(v13 + 40), *(v13 + 48));
          }

          else
          {
            *&__p.__r_.__value_.__l.__data_ = *v14;
            __p.__r_.__value_.__r.__words[2] = *(v13 + 56);
          }

LABEL_18:
          _Block_object_dispose(buf, 8);
          if (SHIBYTE(v118) < 0)
          {
            operator delete(*(&v116 + 1));
          }

          os_release(v11);
          v19 = a1[6];
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v101, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            v20 = a1[6];
            if (v19)
            {
              goto LABEL_22;
            }

            goto LABEL_29;
          }

LABEL_21:
          v101 = __p;
          v20 = v19;
          if (v19)
          {
LABEL_22:
            v21 = *(v20 + 344);
            if (v21)
            {
              if (nw_http_metadata_get_type(*(v20 + 344)) == 3)
              {
LABEL_24:
                LOBYTE(v22) = 0;
                goto LABEL_40;
              }

              v23 = nw_http_metadata_copy_header_fields(v21);
              if (v23)
              {
                v110 = 0;
                v111 = &v110;
                v112 = 0x2000000000;
                v113 = 0;
                *type = MEMORY[0x1E69E9820];
                v106 = 0x40000000;
                v107 = ___ZL29nw_http_sniffing_should_sniffP25nw_protocol_http_sniffingNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEP20nw_protocol_metadata_block_invoke;
                v108 = &unk_1E6A2B540;
                v109 = &v110;
                v24 = v23;
                v25 = type;
                _nw_http_fields_access_value_by_name(v24, "X-Content-Type-Options", v25);

                if (v111[3])
                {
                  LOBYTE(v22) = 0;
LABEL_39:
                  _Block_object_dispose(&v110, 8);
                  os_release(v24);
LABEL_40:
                  *(a1[6] + 460) = *(a1[6] + 460) & 0xFE | v22;
                  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v101.__r_.__value_.__l.__data_);
                  }

                  v31 = a1[6];
                  if (*(v31 + 460))
                  {
                    v32 = (v31 + 408);
                    if (*(v31 + 431) < 0)
                    {
                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        p_p = &__p;
                      }

                      else
                      {
                        p_p = __p.__r_.__value_.__r.__words[0];
                      }

                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        size = __p.__r_.__value_.__l.__size_;
                      }

                      std::string::__assign_no_alias<false>(v32, p_p, size);
                    }

                    else
                    {
                      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
                      {
                        *v32 = *&__p.__r_.__value_.__l.__data_;
                        *(v31 + 424) = *(&__p.__r_.__value_.__l + 2);
                        *(a1[6] + 440) = *(a1[6] + 432);
LABEL_56:
                        v5 = 0;
LABEL_57:
                        v36 = *(a2 + 64);
                        if (v36)
                        {
                          v37 = (*(v36 + 66) >> 6) & 1;
                        }

                        else
                        {
                          LOBYTE(v37) = 0;
                        }

                        v38 = a1[6];
                        if (!*(v38 + 344) || (*(v38 + 460) & 1) == 0)
                        {
                          goto LABEL_107;
                        }

                        if (*(a2 + 112) && ((*(a2 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(a2, *(a2 + 88))))
                        {
                          v39 = *(a2 + 52);
                          if (v39)
                          {
                            v40 = *(a2 + 56);
                            v41 = v39 - (v40 + *(a2 + 60));
                            if (v41)
                            {
                              v42 = a1[6];
                              v44 = *(v42 + 432);
                              v43 = *(v42 + 440);
                              v45 = v44 - v43 + 512;
                              v46 = v45 >= v41 ? v41 : v45;
                              if (v44 - v43 != -512)
                              {
                                v47 = *(a2 + 112);
                                v48 = *(v42 + 448);
                                if (v48 - v43 >= v46)
                                {
                                  memmove(*(v42 + 440), (v47 + v40), v46);
                                  *(v42 + 440) = v43 + v46;
                                }

                                else
                                {
                                  v49 = v43 - v44 + v46;
                                  if (v49 < 0)
                                  {
                                    std::string::__throw_length_error[abi:nn200100]();
                                  }

                                  v50 = v48 - v44;
                                  if (2 * v50 > v49)
                                  {
                                    v49 = 2 * v50;
                                  }

                                  v51 = v50 >= 0x3FFFFFFFFFFFFFFFLL;
                                  v52 = 0x7FFFFFFFFFFFFFFFLL;
                                  if (!v51)
                                  {
                                    v52 = v49;
                                  }

                                  if (v52)
                                  {
                                    operator new();
                                  }

                                  memcpy((v43 - v44), (v47 + v40), v46);
                                  *(v42 + 440) = v43;
                                  memcpy(0, v44, v43 - v44);
                                  *(v42 + 432) = 0;
                                  *(v42 + 440) = v43 - v44 + v46;
                                  *(v42 + 448) = 0;
                                  if (v44)
                                  {
                                    operator delete(v44);
                                  }
                                }
                              }
                            }
                          }
                        }

                        v53 = a1[6];
                        if (!((*(v53 + 440) - *(v53 + 432) > 0x1FFuLL) | v37 & 1))
                        {
LABEL_106:
                          v38 = a1[6];
LABEL_107:
                          v60 = *(v38 + 456);
                          v61 = *(a2 + 52);
                          if (v61)
                          {
                            v61 -= *(a2 + 56) + *(a2 + 60);
                          }

                          *(v38 + 456) = v60 + v61;
                          if (__CFADD__(v60, v61))
                          {
                            if (gLogDatapath == 1)
                            {
                              v75 = __nwlog_obj();
                              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                              {
                                v76 = *(a2 + 52);
                                if (v76)
                                {
                                  v77 = (v76 - (*(a2 + 56) + *(a2 + 60)));
                                }

                                else
                                {
                                  v77 = 0;
                                }

                                v97 = *(a1[6] + 456);
                                *buf = 136446978;
                                *&buf[4] = "nw_protocol_http_sniffing_get_input_frames_block_invoke";
                                *&buf[12] = 2082;
                                *&buf[14] = "http_sniffing->pending_input_frames_byte_count";
                                *&buf[22] = 2048;
                                v115 = v77;
                                LOWORD(v116) = 2048;
                                *(&v116 + 2) = v97;
                                _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
                              }
                            }

                            *(a1[6] + 456) = -1;
                          }

                          v62 = (*(a1[5] + 8) + 48);
                          v63 = (a2 + 32);
                          v64 = *(a2 + 32);
                          v65 = *(a2 + 40);
                          if (v64)
                          {
                            v62 = (v64 + 40);
                          }

                          *v62 = v65;
                          *v65 = v64;
                          *(a2 + 40) = 0;
                          *v63 = 0;
                          v66 = a1[6];
                          v67 = *(v66 + 336);
                          *(a2 + 40) = v67;
                          *v67 = a2;
                          *(v66 + 336) = v63;
                          if (v5)
                          {
                            os_release(v5);
                          }

                          return a2 != 0;
                        }

                        if (*(v53 + 460))
                        {
                          *(v53 + 460) &= ~1u;
                          nw_http_sniffing_guess_media_type(type, v53);
                          v54 = HIBYTE(v107);
                          v55 = HIBYTE(v107);
                          if (SHIBYTE(v107) < 0)
                          {
                            v54 = v106;
                          }

                          if (!v54)
                          {
                            goto LABEL_104;
                          }

                          if ((*(v53 + 198) & 1) == 0 && gLogDatapath == 1)
                          {
                            v95 = __nwlog_obj();
                            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
                            {
                              v96 = type;
                              if (SHIBYTE(v107) < 0)
                              {
                                v96 = *type;
                              }

                              *buf = 136446978;
                              *&buf[4] = "nw_http_sniffing_stop";
                              *&buf[12] = 2082;
                              *&buf[14] = v53 + 114;
                              *&buf[22] = 2080;
                              v115 = " ";
                              LOWORD(v116) = 2080;
                              *(&v116 + 2) = v96;
                              _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%smedia type %s", buf, 0x2Au);
                            }
                          }

                          client_metadata_in_parameters = *(v53 + 392);
                          if (client_metadata_in_parameters)
                          {
                            v55 = HIBYTE(v107);
                          }

                          else
                          {
                            client_metadata_in_parameters = nw_http_messaging_options_find_or_create_client_metadata_in_parameters(*(v53 + 376), v53);
                            v57 = *(v53 + 400);
                            if ((v57 & 1) != 0 && *(v53 + 392))
                            {
                              v58 = client_metadata_in_parameters;
                              os_release(*(v53 + 392));
                              client_metadata_in_parameters = v58;
                              v57 = *(v53 + 400);
                            }

                            *(v53 + 392) = client_metadata_in_parameters;
                            *(v53 + 400) = v57 | 1;
                            v55 = HIBYTE(v107);
                            if (!client_metadata_in_parameters)
                            {
                              goto LABEL_104;
                            }
                          }

                          if (v55 >= 0)
                          {
                            v59 = type;
                          }

                          else
                          {
                            v59 = *type;
                          }

                          nw_http_client_metadata_set_sniffed_media_type(client_metadata_in_parameters, v59);
                          v55 = HIBYTE(v107);
LABEL_104:
                          if (v55 < 0)
                          {
                            operator delete(*type);
                          }

                          goto LABEL_106;
                        }

                        __nwlog_obj();
                        *buf = 136446210;
                        *&buf[4] = "nw_http_sniffing_stop";
                        v82 = _os_log_send_and_compose_impl();
                        type[0] = OS_LOG_TYPE_ERROR;
                        LOBYTE(v104[0]) = 0;
                        v83 = v82;
                        if (__nwlog_fault(v82, type, v104))
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v84 = __nwlog_obj();
                            v85 = type[0];
                            if (!os_log_type_enabled(v84, type[0]))
                            {
                              goto LABEL_227;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_http_sniffing_stop";
                            v86 = "%{public}s called with null http_sniffing->active";
                            goto LABEL_226;
                          }

                          if (LOBYTE(v104[0]) != 1)
                          {
                            v84 = __nwlog_obj();
                            v85 = type[0];
                            if (!os_log_type_enabled(v84, type[0]))
                            {
                              goto LABEL_227;
                            }

                            *buf = 136446210;
                            *&buf[4] = "nw_http_sniffing_stop";
                            v86 = "%{public}s called with null http_sniffing->active, backtrace limit exceeded";
                            goto LABEL_226;
                          }

                          backtrace_string = __nw_create_backtrace_string();
                          v84 = __nwlog_obj();
                          v85 = type[0];
                          v99 = os_log_type_enabled(v84, type[0]);
                          if (backtrace_string)
                          {
                            if (v99)
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_http_sniffing_stop";
                              *&buf[12] = 2082;
                              *&buf[14] = backtrace_string;
                              _os_log_impl(&dword_181A37000, v84, v85, "%{public}s called with null http_sniffing->active, dumping backtrace:%{public}s", buf, 0x16u);
                            }

                            free(backtrace_string);
                            goto LABEL_227;
                          }

                          if (v99)
                          {
                            *buf = 136446210;
                            *&buf[4] = "nw_http_sniffing_stop";
                            v86 = "%{public}s called with null http_sniffing->active, no backtrace";
LABEL_226:
                            _os_log_impl(&dword_181A37000, v84, v85, v86, buf, 0xCu);
                          }
                        }

LABEL_227:
                        if (v83)
                        {
                          free(v83);
                        }

                        goto LABEL_106;
                      }

                      std::string::__assign_no_alias<true>(v32, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                    }
                  }

                  v35 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                  *(a1[6] + 440) = *(a1[6] + 432);
                  if (v35 < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_56;
                }

                v30 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
                if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v30 = v101.__r_.__value_.__l.__size_;
                }

                if (!v30)
                {
                  goto LABEL_38;
                }

                mime_type_to_class();
                v22 = std::__hash_table<std::__hash_value_type<std::string,mime_type_class>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mime_type_class>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mime_type_class>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mime_type_class>>>::find<std::string>(&v101);
                mime_type_to_class();
                if (!v22)
                {
                  goto LABEL_39;
                }

                if (*(v22 + 10))
                {
LABEL_38:
                  LOBYTE(v22) = 1;
                  goto LABEL_39;
                }

                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x4002000000;
                v115 = __Block_byref_object_copy__22;
                *&v116 = __Block_byref_object_dispose__23;
                *(&v116 + 1) = 0;
                v117 = 0;
                v118 = 0;
                v104[0] = MEMORY[0x1E69E9820];
                v104[1] = 0x40000000;
                v104[2] = ___ZL29nw_http_sniffing_should_sniffP25nw_protocol_http_sniffingNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEP20nw_protocol_metadata_block_invoke_2;
                v104[3] = &unk_1E6A2B568;
                v104[4] = buf;
                nw_http_fields_enumerate_by_name(v24, "Content-Type", v104);
                v22 = (*&buf[8] + 40);
                if (*(*&buf[8] + 63) < 0)
                {
                  if (!*(*&buf[8] + 48))
                  {
                    goto LABEL_122;
                  }

                  v22 = *v22;
                }

                else if (!*(*&buf[8] + 63))
                {
                  goto LABEL_122;
                }

                if (strcasecmp(v22, "utf-8"))
                {
                  LOBYTE(v22) = strcasecmp(v22, "iso-8859-1") == 0;
                  goto LABEL_123;
                }

LABEL_122:
                LOBYTE(v22) = 1;
LABEL_123:
                _Block_object_dispose(buf, 8);
                if (SHIBYTE(v118) < 0)
                {
                  operator delete(*(&v116 + 1));
                }

                goto LABEL_39;
              }

              __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_http_sniffing_should_sniff";
              v26 = _os_log_send_and_compose_impl();
              type[0] = OS_LOG_TYPE_ERROR;
              LOBYTE(v104[0]) = 0;
              if (!__nwlog_fault(v26, type, v104))
              {
LABEL_232:
                if (v26)
                {
                  free(v26);
                }

                goto LABEL_24;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v27 = __nwlog_obj();
                v28 = type[0];
                if (!os_log_type_enabled(v27, type[0]))
                {
                  goto LABEL_232;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http_sniffing_should_sniff";
                v29 = "%{public}s called with null header_fields";
                goto LABEL_231;
              }

              if (LOBYTE(v104[0]) != 1)
              {
                v27 = __nwlog_obj();
                v28 = type[0];
                if (!os_log_type_enabled(v27, type[0]))
                {
                  goto LABEL_232;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http_sniffing_should_sniff";
                v29 = "%{public}s called with null header_fields, backtrace limit exceeded";
                goto LABEL_231;
              }

              v87 = __nw_create_backtrace_string();
              v27 = __nwlog_obj();
              v28 = type[0];
              v100 = os_log_type_enabled(v27, type[0]);
              if (!v87)
              {
                if (!v100)
                {
                  goto LABEL_232;
                }

                *buf = 136446210;
                *&buf[4] = "nw_http_sniffing_should_sniff";
                v29 = "%{public}s called with null header_fields, no backtrace";
                goto LABEL_231;
              }

              if (v100)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http_sniffing_should_sniff";
                *&buf[12] = 2082;
                *&buf[14] = v87;
                v89 = "%{public}s called with null header_fields, dumping backtrace:%{public}s";
                goto LABEL_206;
              }

LABEL_207:
              free(v87);
              goto LABEL_232;
            }

            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_http_sniffing_should_sniff";
            v26 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v104[0]) = 0;
            if (!__nwlog_fault(v26, type, v104))
            {
              goto LABEL_232;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v27 = __nwlog_obj();
              v28 = type[0];
              if (!os_log_type_enabled(v27, type[0]))
              {
                goto LABEL_232;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_sniffing_should_sniff";
              v29 = "%{public}s called with null http_metadata";
              goto LABEL_231;
            }

            if (LOBYTE(v104[0]) != 1)
            {
              v27 = __nwlog_obj();
              v28 = type[0];
              if (!os_log_type_enabled(v27, type[0]))
              {
                goto LABEL_232;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_sniffing_should_sniff";
              v29 = "%{public}s called with null http_metadata, backtrace limit exceeded";
              goto LABEL_231;
            }

            v87 = __nw_create_backtrace_string();
            v27 = __nwlog_obj();
            v28 = type[0];
            v94 = os_log_type_enabled(v27, type[0]);
            if (!v87)
            {
              if (!v94)
              {
                goto LABEL_232;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_sniffing_should_sniff";
              v29 = "%{public}s called with null http_metadata, no backtrace";
              goto LABEL_231;
            }

            if (!v94)
            {
              goto LABEL_207;
            }

            *buf = 136446466;
            *&buf[4] = "nw_http_sniffing_should_sniff";
            *&buf[12] = 2082;
            *&buf[14] = v87;
            v89 = "%{public}s called with null http_metadata, dumping backtrace:%{public}s";
            goto LABEL_206;
          }

LABEL_29:
          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http_sniffing_should_sniff";
          v26 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v104[0]) = 0;
          if (!__nwlog_fault(v26, type, v104))
          {
            goto LABEL_232;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v27 = __nwlog_obj();
            v28 = type[0];
            if (!os_log_type_enabled(v27, type[0]))
            {
              goto LABEL_232;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_sniffing_should_sniff";
            v29 = "%{public}s called with null http_sniffing";
LABEL_231:
            _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
            goto LABEL_232;
          }

          if (LOBYTE(v104[0]) != 1)
          {
            v27 = __nwlog_obj();
            v28 = type[0];
            if (!os_log_type_enabled(v27, type[0]))
            {
              goto LABEL_232;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_sniffing_should_sniff";
            v29 = "%{public}s called with null http_sniffing, backtrace limit exceeded";
            goto LABEL_231;
          }

          v87 = __nw_create_backtrace_string();
          v27 = __nwlog_obj();
          v28 = type[0];
          v88 = os_log_type_enabled(v27, type[0]);
          if (!v87)
          {
            if (!v88)
            {
              goto LABEL_232;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http_sniffing_should_sniff";
            v29 = "%{public}s called with null http_sniffing, no backtrace";
            goto LABEL_231;
          }

          if (!v88)
          {
            goto LABEL_207;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http_sniffing_should_sniff";
          *&buf[12] = 2082;
          *&buf[14] = v87;
          v89 = "%{public}s called with null http_sniffing, dumping backtrace:%{public}s";
LABEL_206:
          _os_log_impl(&dword_181A37000, v27, v28, v89, buf, 0x16u);
          goto LABEL_207;
        }

LABEL_17:
        *(&__p.__r_.__value_.__s + 23) = 0;
        __p.__r_.__value_.__s.__data_[0] = 0;
        goto LABEL_18;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_sniffing_get_media_type";
      v78 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v104[0]) = 0;
      if (__nwlog_fault(v78, type, v104))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v79 = __nwlog_obj();
          v80 = type[0];
          if (!os_log_type_enabled(v79, type[0]))
          {
            goto LABEL_219;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_sniffing_get_media_type";
          v81 = "%{public}s called with null header_fields";
          goto LABEL_218;
        }

        if (LOBYTE(v104[0]) != 1)
        {
          v79 = __nwlog_obj();
          v80 = type[0];
          if (!os_log_type_enabled(v79, type[0]))
          {
            goto LABEL_219;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_sniffing_get_media_type";
          v81 = "%{public}s called with null header_fields, backtrace limit exceeded";
          goto LABEL_218;
        }

        v92 = __nw_create_backtrace_string();
        v79 = __nwlog_obj();
        v80 = type[0];
        v93 = os_log_type_enabled(v79, type[0]);
        if (!v92)
        {
          if (!v93)
          {
            goto LABEL_219;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_sniffing_get_media_type";
          v81 = "%{public}s called with null header_fields, no backtrace";
          goto LABEL_218;
        }

        if (v93)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_sniffing_get_media_type";
          *&buf[12] = 2082;
          *&buf[14] = v92;
          _os_log_impl(&dword_181A37000, v79, v80, "%{public}s called with null header_fields, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v92);
      }

LABEL_219:
      if (!v78)
      {
LABEL_221:
        memset(&__p, 0, sizeof(__p));
        v19 = a1[6];
        goto LABEL_21;
      }

LABEL_220:
      free(v78);
      goto LABEL_221;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_sniffing_get_media_type";
    v78 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v104[0]) = 0;
    if (!__nwlog_fault(v78, type, v104))
    {
      goto LABEL_219;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v79 = __nwlog_obj();
      v80 = type[0];
      if (!os_log_type_enabled(v79, type[0]))
      {
        goto LABEL_219;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_sniffing_get_media_type";
      v81 = "%{public}s called with null http_metadata";
    }

    else
    {
      if (LOBYTE(v104[0]) != 1)
      {
        v79 = __nwlog_obj();
        v80 = type[0];
        if (!os_log_type_enabled(v79, type[0]))
        {
          goto LABEL_219;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_sniffing_get_media_type";
        v81 = "%{public}s called with null http_metadata, backtrace limit exceeded";
        goto LABEL_218;
      }

      v90 = __nw_create_backtrace_string();
      v79 = __nwlog_obj();
      v80 = type[0];
      v91 = os_log_type_enabled(v79, type[0]);
      if (v90)
      {
        if (v91)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_sniffing_get_media_type";
          *&buf[12] = 2082;
          *&buf[14] = v90;
          _os_log_impl(&dword_181A37000, v79, v80, "%{public}s called with null http_metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v90);
        if (!v78)
        {
          goto LABEL_221;
        }

        goto LABEL_220;
      }

      if (!v91)
      {
        goto LABEL_219;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_sniffing_get_media_type";
      v81 = "%{public}s called with null http_metadata, no backtrace";
    }

LABEL_218:
    _os_log_impl(&dword_181A37000, v79, v80, v81, buf, 0xCu);
    goto LABEL_219;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_http_sniffing_get_input_frames_block_invoke";
  v69 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v104[0]) = 0;
  if (__nwlog_fault(v69, type, v104))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v70 = __nwlog_obj();
      v71 = type[0];
      if (!os_log_type_enabled(v70, type[0]))
      {
        goto LABEL_185;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_sniffing_get_input_frames_block_invoke";
      v72 = "%{public}s called with null frame";
      goto LABEL_184;
    }

    if (LOBYTE(v104[0]) != 1)
    {
      v70 = __nwlog_obj();
      v71 = type[0];
      if (!os_log_type_enabled(v70, type[0]))
      {
        goto LABEL_185;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_sniffing_get_input_frames_block_invoke";
      v72 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_184;
    }

    v73 = __nw_create_backtrace_string();
    v70 = __nwlog_obj();
    v71 = type[0];
    v74 = os_log_type_enabled(v70, type[0]);
    if (v73)
    {
      if (v74)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http_sniffing_get_input_frames_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v73;
        _os_log_impl(&dword_181A37000, v70, v71, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v73);
      goto LABEL_185;
    }

    if (v74)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_sniffing_get_input_frames_block_invoke";
      v72 = "%{public}s called with null frame, no backtrace";
LABEL_184:
      _os_log_impl(&dword_181A37000, v70, v71, v72, buf, 0xCu);
    }
  }

LABEL_185:
  if (v69)
  {
    free(v69);
  }

  return a2 != 0;
}

void nw_http_sniffing_guess_media_type(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (!*(a2 + 344))
    {
      return;
    }

    v4 = (a2 + 408);
    if ((*(a2 + 431) & 0x8000000000000000) != 0)
    {
      if (!*(a2 + 416))
      {
        goto LABEL_66;
      }
    }

    else if (!*(a2 + 431))
    {
      goto LABEL_66;
    }

    mime_type_to_class();
    v5 = std::__hash_table<std::__hash_value_type<std::string,mime_type_class>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mime_type_class>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mime_type_class>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mime_type_class>>>::find<std::string>(a2 + 408);
    mime_type_to_class();
    if (!v5)
    {
      if (v4 != a1)
      {
        v30 = *(a2 + 431);
        if (*(a1 + 23) < 0)
        {
          if (v30 >= 0)
          {
            v33 = (a2 + 408);
          }

          else
          {
            v33 = *(a2 + 408);
          }

          if (v30 >= 0)
          {
            v34 = *(a2 + 431);
          }

          else
          {
            v34 = *(a2 + 416);
          }

          std::string::__assign_no_alias<false>(a1, v33, v34);
        }

        else
        {
          if ((*(a2 + 431) & 0x80) == 0)
          {
            *a1 = *&v4->__r_.__value_.__l.__data_;
            v27 = *(a2 + 424);
LABEL_70:
            *(a1 + 16) = v27;
            goto LABEL_71;
          }

          std::string::__assign_no_alias<true>(a1, *(a2 + 408), *(a2 + 416));
        }
      }

LABEL_71:
      v28 = *(a1 + 23);
      if (v28 < 0)
      {
        if (*(a1 + 8))
        {
          return;
        }
      }

      else if (*(a1 + 23))
      {
        return;
      }

      v29 = *(a2 + 431);
      if (v29 < 0)
      {
        if (*(a2 + 416))
        {
LABEL_77:
          if (v4 != a1)
          {
            if ((v28 & 0x80000000) != 0)
            {
              if (v29 >= 0)
              {
                v35 = (a2 + 408);
              }

              else
              {
                v35 = *(a2 + 408);
              }

              if (v29 >= 0)
              {
                v36 = *(a2 + 431);
              }

              else
              {
                v36 = *(a2 + 416);
              }

              std::string::__assign_no_alias<false>(a1, v35, v36);
            }

            else if ((v29 & 0x80000000) != 0)
            {
              std::string::__assign_no_alias<true>(a1, *(a2 + 408), *(a2 + 416));
            }

            else
            {
              *a1 = *&v4->__r_.__value_.__l.__data_;
              *(a1 + 16) = *(a2 + 424);
            }
          }

          return;
        }
      }

      else if (*(a2 + 431))
      {
        goto LABEL_77;
      }

      std::string::__assign_external(a1, "application/octet-stream", 0x18uLL);
      return;
    }

    v6 = *(v5 + 10);
    if (v6 != 2)
    {
      if (v6 != 1)
      {
        if (v6)
        {
          goto LABEL_71;
        }

        v7 = *(a2 + 432);
        v8 = *(a2 + 440);
        if (v7 == v8)
        {
          v37 = strlen(kNWMIMETypeTextPlain);
          if (v37 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v38 = v37;
          if (v37 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v37;
          if (v37)
          {
            memmove(&__dst, kNWMIMETypeTextPlain, v37);
          }

          __dst.__r_.__value_.__s.__data_[v38] = 0;
        }

        else
        {
          memset(&__dst, 0, sizeof(__dst));
          if ((v8 - v7) < 3)
          {
            goto LABEL_23;
          }

          if (*v7 != -2 && *v7 != -257)
          {
            v9 = *v7;
            v10 = *(v7 + 2);
            if (v9 != 48111 || v10 != 191)
            {
              goto LABEL_23;
            }
          }

          std::string::__assign_external(&__dst, kNWMIMETypeTextPlain);
          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __dst.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
LABEL_23:
            v13 = *(a2 + 432);
            v14 = *(a2 + 440);
            if (v13 == v14)
            {
              goto LABEL_38;
            }

            v15 = v14 - v13;
            if (v15 >= 0x200)
            {
              v15 = 512;
            }

            v16 = &v13[v15 - 1];
            if (v13 > v16)
            {
LABEL_38:
              std::string::__assign_external(&__dst, kNWMIMETypeTextPlain);
            }

            else
            {
              while (1)
              {
                v17 = *v13;
                v18 = (v17 & 0xFC) != 0x1C && v17 >= 9;
                v19 = !v18 || v17 == 11;
                if (v19 || v17 - 27 >= 0xFFFFFFF3)
                {
                  break;
                }

                if (++v13 > v16)
                {
                  goto LABEL_38;
                }
              }
            }
          }

          v21 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          LOBYTE(v22) = *(&__dst.__r_.__value_.__s + 23);
          v23 = __dst.__r_.__value_.__l.__size_;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v24 = __dst.__r_.__value_.__l.__size_;
          }

          if (!v24)
          {
            {
              sNonScriptableTypeRules(void)::rules = 0;
              *algn_1EA83ED18 = "%!PS-Adobe-";
              qword_1EA83ED20 = 11;
              unk_1EA83ED28 = "application/postscript";
              qword_1EA83ED30 = &unk_182B08F26;
              unk_1EA83ED38 = &unk_182B08F2B;
              qword_1EA83ED40 = 4;
              unk_1EA83ED48 = kNWMIMETypeTextPlain;
              qword_1EA83ED50 = &unk_182B08F26;
              unk_1EA83ED58 = &unk_182B08F30;
              qword_1EA83ED60 = 4;
              unk_1EA83ED68 = kNWMIMETypeTextPlain;
              qword_1EA83ED70 = &unk_182B08F35;
              unk_1EA83ED78 = &unk_182B08F3A;
              qword_1EA83ED80 = 4;
              unk_1EA83ED88 = kNWMIMETypeTextPlain;
              qword_1EA83ED90 = 0;
              unk_1EA83ED98 = &unk_182B08CE0;
              qword_1EA83EDA0 = 7;
              unk_1EA83EDA8 = "application/x-rar-compressed";
              qword_1EA83EDB0 = 0;
              unk_1EA83EDB8 = "PK\x03\x04";
              qword_1EA83EDC0 = 4;
              unk_1EA83EDC8 = "application/zip";
              qword_1EA83EDD0 = 0;
              unk_1EA83EDD8 = "\x1F\x8B\b";
              qword_1EA83EDE0 = 3;
              unk_1EA83EDE8 = "application/x-gzip";
              qword_1EA83EDF0 = 0;
              unk_1EA83EDF8 = 0;
              qword_1EA83EE00 = 0;
              unk_1EA83EE08 = "";
            }

            nw_http_sniffing_get_mime_type_for_rule_array(&buf, *(a2 + 432), *(a2 + 440), &sNonScriptableTypeRules(void)::rules, 0);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            __dst = buf;
            v21 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
            v23 = buf.__r_.__value_.__l.__size_;
            v22 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

          if ((v22 & 0x80u) == 0)
          {
            v25 = v21;
          }

          else
          {
            v25 = v23;
          }

          if (!v25)
          {
            {
              sImageTypeRules(void)::rules = 0;
              unk_1EA83F290 = "GIF87a";
              qword_1EA83F298 = 6;
              unk_1EA83F2A0 = kNWMIMETypeImageGIF;
              qword_1EA83F2A8 = 0;
              unk_1EA83F2B0 = "GIF89a";
              qword_1EA83F2B8 = 6;
              unk_1EA83F2C0 = kNWMIMETypeImageGIF;
              qword_1EA83F2C8 = 0;
              unk_1EA83F2D0 = "\x89PNG\r\n\x1A\n";
              qword_1EA83F2D8 = 8;
              unk_1EA83F2E0 = kNWMIMETypeImagePNG;
              qword_1EA83F2E8 = 0;
              unk_1EA83F2F0 = "\xFF\xD8\xFF";
              qword_1EA83F2F8 = 3;
              unk_1EA83F300 = kNWMIMETypeImageJPEG;
              qword_1EA83F308 = 0;
              unk_1EA83F310 = "BM";
              qword_1EA83F318 = 2;
              unk_1EA83F320 = kNWMIMETypeImageBMP;
              qword_1EA83F328 = 0;
              unk_1EA83F330 = &unk_182B08F3F;
              qword_1EA83F338 = 4;
              unk_1EA83F340 = kNWMIMETypeImageICO;
              qword_1EA83F348 = 0;
              unk_1EA83F350 = 0;
              qword_1EA83F358 = 0;
              unk_1EA83F360 = "";
            }

            nw_http_sniffing_get_mime_type_for_rule_array(&buf, *(a2 + 432), *(a2 + 440), &sImageTypeRules(void)::rules, 0);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            __dst = buf;
            v21 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
            v23 = buf.__r_.__value_.__l.__size_;
            v22 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

          if ((v22 & 0x80u) == 0)
          {
            v26 = v21;
          }

          else
          {
            v26 = v23;
          }

          if (!v26)
          {
            nw_http_sniffing_get_mime_type_for_complex_nonscriptable_type_rules(&buf, a2);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            __dst = buf;
            v21 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
            v23 = buf.__r_.__value_.__l.__size_;
            v22 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

          if ((v22 & 0x80u) != 0)
          {
            v21 = v23;
          }

          if (!v21)
          {
            std::string::__assign_external(&__dst, "application/octet-stream", 0x18uLL);
          }
        }

        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        *a1 = *&__dst.__r_.__value_.__l.__data_;
        v27 = __dst.__r_.__value_.__r.__words[2];
        goto LABEL_70;
      }

      {
        sImageTypeRules(void)::rules = 0;
        unk_1EA83F290 = "GIF87a";
        qword_1EA83F298 = 6;
        unk_1EA83F2A0 = kNWMIMETypeImageGIF;
        qword_1EA83F2A8 = 0;
        unk_1EA83F2B0 = "GIF89a";
        qword_1EA83F2B8 = 6;
        unk_1EA83F2C0 = kNWMIMETypeImageGIF;
        qword_1EA83F2C8 = 0;
        unk_1EA83F2D0 = "\x89PNG\r\n\x1A\n";
        qword_1EA83F2D8 = 8;
        unk_1EA83F2E0 = kNWMIMETypeImagePNG;
        qword_1EA83F2E8 = 0;
        unk_1EA83F2F0 = "\xFF\xD8\xFF";
        qword_1EA83F2F8 = 3;
        unk_1EA83F300 = kNWMIMETypeImageJPEG;
        qword_1EA83F308 = 0;
        unk_1EA83F310 = "BM";
        qword_1EA83F318 = 2;
        unk_1EA83F320 = kNWMIMETypeImageBMP;
        qword_1EA83F328 = 0;
        unk_1EA83F330 = &unk_182B08F3F;
        qword_1EA83F338 = 4;
        unk_1EA83F340 = kNWMIMETypeImageICO;
        qword_1EA83F348 = 0;
        unk_1EA83F350 = 0;
        qword_1EA83F358 = 0;
        unk_1EA83F360 = "";
      }

      nw_http_sniffing_get_mime_type_for_rule_array(&buf, *(a2 + 432), *(a2 + 440), &sImageTypeRules(void)::rules, 0);
      v31 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v31 = buf.__r_.__value_.__l.__size_;
      }

      if (v4 != &buf && !v31)
      {
        v32 = *(a2 + 431);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v32 >= 0)
          {
            v39 = (a2 + 408);
          }

          else
          {
            v39 = *(a2 + 408);
          }

          if (v32 >= 0)
          {
            v40 = *(a2 + 431);
          }

          else
          {
            v40 = *(a2 + 416);
          }

          std::string::__assign_no_alias<false>(&buf, v39, v40);
        }

        else if ((*(a2 + 431) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(&buf, *(a2 + 408), *(a2 + 416));
        }

        else
        {
          *&buf.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
          buf.__r_.__value_.__r.__words[2] = *(a2 + 424);
        }
      }

      goto LABEL_67;
    }

LABEL_66:
    nw_http_sniffing_copy_mime_type_for_unknown(&buf, a2);
LABEL_67:
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = *&buf.__r_.__value_.__l.__data_;
    v27 = buf.__r_.__value_.__r.__words[2];
    goto LABEL_70;
  }

  __nwlog_obj();
  LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
  *(buf.__r_.__value_.__r.__words + 4) = "nw_http_sniffing_guess_media_type";
  v41 = _os_log_send_and_compose_impl();
  __dst.__r_.__value_.__s.__data_[0] = 16;
  v48 = 0;
  if (__nwlog_fault(v41, &__dst, &v48))
  {
    if (__dst.__r_.__value_.__s.__data_[0] == 17)
    {
      v42 = __nwlog_obj();
      v43 = __dst.__r_.__value_.__s.__data_[0];
      if (os_log_type_enabled(v42, __dst.__r_.__value_.__s.__data_[0]))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
        *(buf.__r_.__value_.__r.__words + 4) = "nw_http_sniffing_guess_media_type";
        v44 = "%{public}s called with null http_sniffing";
LABEL_143:
        _os_log_impl(&dword_181A37000, v42, v43, v44, &buf, 0xCu);
      }
    }

    else if (v48 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v43 = __dst.__r_.__value_.__s.__data_[0];
      v46 = os_log_type_enabled(v42, __dst.__r_.__value_.__s.__data_[0]);
      if (backtrace_string)
      {
        if (v46)
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
          *(buf.__r_.__value_.__r.__words + 4) = "nw_http_sniffing_guess_media_type";
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = backtrace_string;
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null http_sniffing, dumping backtrace:%{public}s", &buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_144;
      }

      if (v46)
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
        *(buf.__r_.__value_.__r.__words + 4) = "nw_http_sniffing_guess_media_type";
        v44 = "%{public}s called with null http_sniffing, no backtrace";
        goto LABEL_143;
      }
    }

    else
    {
      v42 = __nwlog_obj();
      v43 = __dst.__r_.__value_.__s.__data_[0];
      if (os_log_type_enabled(v42, __dst.__r_.__value_.__s.__data_[0]))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
        *(buf.__r_.__value_.__r.__words + 4) = "nw_http_sniffing_guess_media_type";
        v44 = "%{public}s called with null http_sniffing, backtrace limit exceeded";
        goto LABEL_143;
      }
    }
  }

LABEL_144:
  if (v41)
  {
    free(v41);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void nw_http_sniffing_copy_mime_type_for_unknown(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 432) == *(a2 + 440))
  {
    v5 = kNWMIMETypeTextPlain;
    v6 = strlen(kNWMIMETypeTextPlain);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    *(a1 + 23) = v6;
    if (v6)
    {
      memmove(a1, v5, v6);
    }

    *(a1 + v7) = 0;
    return;
  }

  {
    sScriptableTypeRules(void)::rules = "\xFF\xFF\xDF\xDF\xDF\xDF\xDF\xDF\xDF\xFF\xDF\xDF\xDF\xDF\xFF";
    unk_1EA83EE20 = "<!DOCTYPE HTML ";
    qword_1EA83EE28 = 15;
    unk_1EA83EE30 = "text/html";
    qword_1EA83EE38 = "\xFF\xDF\xDF\xDF\xDF\xFF";
    unk_1EA83EE40 = "<HTML ";
    qword_1EA83EE48 = 6;
    unk_1EA83EE50 = "text/html";
    qword_1EA83EE58 = "\xFF\xDF\xDF\xDF\xDF\xFF";
    unk_1EA83EE60 = "<HEAD ";
    qword_1EA83EE68 = 6;
    unk_1EA83EE70 = "text/html";
    qword_1EA83EE78 = "\xFF\xDF\xDF\xDF\xDF\xDF\xDF\xFF";
    unk_1EA83EE80 = "<SCRIPT ";
    qword_1EA83EE88 = 8;
    unk_1EA83EE90 = "text/html";
    qword_1EA83EE98 = "\xFF\xDF\xDF\xDF\xDF\xDF\xDF\xFF";
    unk_1EA83EEA0 = "<IFRAME ";
    qword_1EA83EEA8 = 8;
    unk_1EA83EEB0 = "text/html";
    qword_1EA83EEB8 = "\xFF\xDF\xDF\xFF";
    unk_1EA83EEC0 = "<H1 ";
    qword_1EA83EEC8 = 4;
    unk_1EA83EED0 = "text/html";
    qword_1EA83EED8 = "\xFF\xDF\xDF\xDF\xFF";
    unk_1EA83EEE0 = "<DIV ";
    qword_1EA83EEE8 = 5;
    unk_1EA83EEF0 = "text/html";
    qword_1EA83EEF8 = "\xFF\xDF\xDF\xDF\xDF\xFF";
    unk_1EA83EF00 = "<FONT ";
    qword_1EA83EF08 = 6;
    unk_1EA83EF10 = "text/html";
    qword_1EA83EF18 = "\xFF\xDF\xDF\xDF\xDF\xDF\xFF";
    unk_1EA83EF20 = "<TABLE ";
    qword_1EA83EF28 = 7;
    unk_1EA83EF30 = "text/html";
    qword_1EA83EF38 = "\xFF\xDF\xFF";
    unk_1EA83EF40 = "<A ";
    qword_1EA83EF48 = 3;
    unk_1EA83EF50 = "text/html";
    qword_1EA83EF58 = "\xFF\xDF\xDF\xDF\xDF\xDF\xFF";
    unk_1EA83EF60 = "<STYLE ";
    qword_1EA83EF68 = 7;
    unk_1EA83EF70 = "text/html";
    qword_1EA83EF78 = "\xFF\xDF\xDF\xDF\xDF\xDF\xFF";
    unk_1EA83EF80 = "<TITLE ";
    qword_1EA83EF88 = 7;
    unk_1EA83EF90 = "text/html";
    qword_1EA83EF98 = "\xFF\xDF\xFF";
    unk_1EA83EFA0 = "<B ";
    qword_1EA83EFA8 = 3;
    unk_1EA83EFB0 = "text/html";
    qword_1EA83EFB8 = "\xFF\xDF\xDF\xDF\xDF\xFF";
    unk_1EA83EFC0 = "<BODY ";
    qword_1EA83EFC8 = 6;
    unk_1EA83EFD0 = "text/html";
    qword_1EA83EFD8 = "\xFF\xDF\xDF\xFF";
    unk_1EA83EFE0 = "<BR ";
    qword_1EA83EFE8 = 4;
    unk_1EA83EFF0 = "text/html";
    qword_1EA83EFF8 = "\xFF\xDF\xFF";
    unk_1EA83F000 = "<P ";
    qword_1EA83F008 = 3;
    unk_1EA83F010 = "text/html";
    qword_1EA83F018 = 0;
    qword_1EA83F020 = "<!--";
    qword_1EA83F028 = 4;
    qword_1EA83F030 = "text/html";
    qword_1EA83F038 = "\xFF\xDF\xDF\xDF\xDF\xFF";
    qword_1EA83F040 = "<META ";
    qword_1EA83F048 = 6;
    qword_1EA83F050 = "text/html";
    qword_1EA83F058 = 0;
    qword_1EA83F060 = "<?xml";
    qword_1EA83F068 = 5;
    qword_1EA83F070 = "text/xml";
    qword_1EA83F078 = 0;
    qword_1EA83F080 = "%PDF-";
    qword_1EA83F088 = 5;
    qword_1EA83F090 = "application/pdf";
    qword_1EA83F0A8 = 0;
    xmmword_1EA83F098 = 0u;
    qword_1EA83F0B0 = "";
  }

  nw_http_sniffing_get_mime_type_for_rule_array(a1, *(a2 + 432), *(a2 + 440), &sScriptableTypeRules(void)::rules, 1);
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
LABEL_5:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_5;
  }

  {
    sNonScriptableTypeRules(void)::rules = 0;
    *algn_1EA83ED18 = "%!PS-Adobe-";
    qword_1EA83ED20 = 11;
    unk_1EA83ED28 = "application/postscript";
    qword_1EA83ED30 = &unk_182B08F26;
    unk_1EA83ED38 = &unk_182B08F2B;
    qword_1EA83ED40 = 4;
    unk_1EA83ED48 = kNWMIMETypeTextPlain;
    qword_1EA83ED50 = &unk_182B08F26;
    unk_1EA83ED58 = &unk_182B08F30;
    qword_1EA83ED60 = 4;
    unk_1EA83ED68 = kNWMIMETypeTextPlain;
    qword_1EA83ED70 = &unk_182B08F35;
    unk_1EA83ED78 = &unk_182B08F3A;
    qword_1EA83ED80 = 4;
    unk_1EA83ED88 = kNWMIMETypeTextPlain;
    qword_1EA83ED90 = 0;
    unk_1EA83ED98 = &unk_182B08CE0;
    qword_1EA83EDA0 = 7;
    unk_1EA83EDA8 = "application/x-rar-compressed";
    qword_1EA83EDB0 = 0;
    unk_1EA83EDB8 = "PK\x03\x04";
    qword_1EA83EDC0 = 4;
    unk_1EA83EDC8 = "application/zip";
    qword_1EA83EDD0 = 0;
    unk_1EA83EDD8 = "\x1F\x8B\b";
    qword_1EA83EDE0 = 3;
    unk_1EA83EDE8 = "application/x-gzip";
    qword_1EA83EDF0 = 0;
    unk_1EA83EDF8 = 0;
    qword_1EA83EE00 = 0;
    unk_1EA83EE08 = "";
  }

  nw_http_sniffing_get_mime_type_for_rule_array(&v19, *(a2 + 432), *(a2 + 440), &sNonScriptableTypeRules(void)::rules, 1);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *&v19.__r_.__value_.__l.__data_;
  v8 = v19.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v19.__r_.__value_.__l + 2);
  v4 = HIBYTE(v8);
  if ((v4 & 0x80) == 0)
  {
LABEL_6:
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  if (*(a1 + 8))
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_22:
  {
    sImageTypeRules(void)::rules = 0;
    unk_1EA83F290 = "GIF87a";
    qword_1EA83F298 = 6;
    unk_1EA83F2A0 = kNWMIMETypeImageGIF;
    qword_1EA83F2A8 = 0;
    unk_1EA83F2B0 = "GIF89a";
    qword_1EA83F2B8 = 6;
    unk_1EA83F2C0 = kNWMIMETypeImageGIF;
    qword_1EA83F2C8 = 0;
    unk_1EA83F2D0 = "\x89PNG\r\n\x1A\n";
    qword_1EA83F2D8 = 8;
    unk_1EA83F2E0 = kNWMIMETypeImagePNG;
    qword_1EA83F2E8 = 0;
    unk_1EA83F2F0 = "\xFF\xD8\xFF";
    qword_1EA83F2F8 = 3;
    unk_1EA83F300 = kNWMIMETypeImageJPEG;
    qword_1EA83F308 = 0;
    unk_1EA83F310 = "BM";
    qword_1EA83F318 = 2;
    unk_1EA83F320 = kNWMIMETypeImageBMP;
    qword_1EA83F328 = 0;
    unk_1EA83F330 = &unk_182B08F3F;
    qword_1EA83F338 = 4;
    unk_1EA83F340 = kNWMIMETypeImageICO;
    qword_1EA83F348 = 0;
    unk_1EA83F350 = 0;
    qword_1EA83F358 = 0;
    unk_1EA83F360 = "";
  }

  nw_http_sniffing_get_mime_type_for_rule_array(&v19, *(a2 + 432), *(a2 + 440), &sImageTypeRules(void)::rules, 1);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *&v19.__r_.__value_.__l.__data_;
  v9 = v19.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v19.__r_.__value_.__l + 2);
  v4 = HIBYTE(v9);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (*(a1 + 8))
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_30:
    if (*(a1 + 8))
    {
      goto LABEL_47;
    }

    goto LABEL_31;
  }

LABEL_27:
  nw_http_sniffing_get_mime_type_for_complex_nonscriptable_type_rules(&v19, a2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *&v19.__r_.__value_.__l.__data_;
  v10 = v19.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v19.__r_.__value_.__l + 2);
  v4 = HIBYTE(v10);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if (v4)
  {
    goto LABEL_47;
  }

LABEL_31:
  v11 = *(a2 + 432);
  v12 = *(a2 + 440);
  if (v11 == v12)
  {
    goto LABEL_46;
  }

  v13 = v12 - v11;
  if (v13 >= 0x200)
  {
    v13 = 512;
  }

  v14 = &v11[v13 - 1];
  if (v11 > v14)
  {
LABEL_46:
    std::string::__assign_external(a1, kNWMIMETypeTextPlain);
    LOBYTE(v4) = *(a1 + 23);
  }

  else
  {
    while (1)
    {
      v15 = *v11;
      v16 = (v15 & 0xFC) != 0x1C && v15 >= 9;
      v17 = !v16 || v15 == 11;
      if (v17 || v15 - 27 >= 0xFFFFFFF3)
      {
        break;
      }

      if (++v11 > v14)
      {
        goto LABEL_46;
      }
    }
  }

LABEL_47:
  if ((v4 & 0x80) != 0)
  {
    if (!*(a1 + 8))
    {
LABEL_51:
      std::string::__assign_external(a1, "application/octet-stream", 0x18uLL);
    }
  }

  else if (!v4)
  {
    goto LABEL_51;
  }
}

void mime_type_to_class(void)
{
  v27 = *MEMORY[0x1E69E9840];
  {
    v8 = 0;
    std::pair<std::string const,mime_type_class>::pair[abi:nn200100]<char const*&,mime_type_class,0>(v9, kNWMIMETypeTextPlain, &v8);
    v7 = 1;
    std::pair<std::string const,mime_type_class>::pair[abi:nn200100]<char const*&,mime_type_class,0>(v11, kNWMIMETypeImageJPEG, &v7);
    v6 = 1;
    std::pair<std::string const,mime_type_class>::pair[abi:nn200100]<char const*&,mime_type_class,0>(__p, kNWMIMETypeImageGIF, &v6);
    v5 = 1;
    std::pair<std::string const,mime_type_class>::pair[abi:nn200100]<char const*&,mime_type_class,0>(v15, kNWMIMETypeImagePNG, &v5);
    v4 = 1;
    std::pair<std::string const,mime_type_class>::pair[abi:nn200100]<char const*&,mime_type_class,0>(v17, kNWMIMETypeImageICO, &v4);
    v3 = 1;
    std::pair<std::string const,mime_type_class>::pair[abi:nn200100]<char const*&,mime_type_class,0>(v19, kNWMIMETypeImageBMP, &v3);
    v2 = 2;
    std::pair<std::string const,mime_type_class>::pair[abi:nn200100]<char const*&,mime_type_class,0>(v21, kNWMIMETypeUnknownUnknown, &v2);
    v1 = 2;
    std::pair<std::string const,mime_type_class>::pair[abi:nn200100]<char const*&,mime_type_class,0>(v23, kNWMIMETypeApplicationUnknown, &v1);
    v0 = 2;
    std::pair<std::string const,mime_type_class>::pair[abi:nn200100]<char const*&,mime_type_class,0>(v25, kNWMIMETypeAsteriskAsterisk, &v0);
    mime_type_to_class(void)::instance = 0u;
    *&qword_1EA840238 = 0u;
    dword_1EA840248 = 1065353216;
    std::__hash_table<std::__hash_value_type<std::string,mime_type_class>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mime_type_class>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mime_type_class>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mime_type_class>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mime_type_class> const&>(v9);
    std::__hash_table<std::__hash_value_type<std::string,mime_type_class>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mime_type_class>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mime_type_class>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mime_type_class>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mime_type_class> const&>(v11);
    std::__hash_table<std::__hash_value_type<std::string,mime_type_class>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mime_type_class>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mime_type_class>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mime_type_class>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mime_type_class> const&>(__p);
    std::__hash_table<std::__hash_value_type<std::string,mime_type_class>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mime_type_class>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mime_type_class>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mime_type_class>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mime_type_class> const&>(v15);
    std::__hash_table<std::__hash_value_type<std::string,mime_type_class>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mime_type_class>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mime_type_class>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mime_type_class>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mime_type_class> const&>(v17);
    std::__hash_table<std::__hash_value_type<std::string,mime_type_class>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mime_type_class>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mime_type_class>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mime_type_class>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mime_type_class> const&>(v19);
    std::__hash_table<std::__hash_value_type<std::string,mime_type_class>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mime_type_class>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mime_type_class>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mime_type_class>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mime_type_class> const&>(v21);
    std::__hash_table<std::__hash_value_type<std::string,mime_type_class>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mime_type_class>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mime_type_class>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mime_type_class>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mime_type_class> const&>(v23);
    std::__hash_table<std::__hash_value_type<std::string,mime_type_class>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mime_type_class>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mime_type_class>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mime_type_class>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mime_type_class> const&>(v25);
    if (v26 < 0)
    {
      operator delete(v25[0]);
      if ((v24 & 0x80000000) == 0)
      {
LABEL_6:
        if ((v22 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(v23[0]);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_7:
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    operator delete(v21[0]);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_8:
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    operator delete(v19[0]);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_9:
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    operator delete(v17[0]);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_10:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_19:
    operator delete(v15[0]);
    if ((v14 & 0x80000000) == 0)
    {
LABEL_11:
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

LABEL_20:
    operator delete(__p[0]);
    if ((v12 & 0x80000000) == 0)
    {
LABEL_12:
      if ((v10 & 0x80000000) == 0)
      {
LABEL_13:
        return;
      }

LABEL_22:
      operator delete(v9[0]);
      goto LABEL_13;
    }

LABEL_21:
    operator delete(v11[0]);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,mime_type_class>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mime_type_class>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mime_type_class>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mime_type_class>>>::find<std::string>(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v2, v3);
  v5 = *(&mime_type_to_class(void)::instance + 1);
  if (!*(&mime_type_to_class(void)::instance + 1))
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(*(&mime_type_to_class(void)::instance + 8));
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *(&mime_type_to_class(void)::instance + 1))
    {
      v8 = v4 % *(&mime_type_to_class(void)::instance + 1);
    }
  }

  else
  {
    v8 = (*(&mime_type_to_class(void)::instance + 1) - 1) & v4;
  }

  v9 = *(mime_type_to_class(void)::instance + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *(&mime_type_to_class(void)::instance + 1) - 1;
      while (1)
      {
        v12 = v10[1];
        if (v6 == v12)
        {
          v13 = *(v10 + 39);
          v14 = v13;
          if (v13 < 0)
          {
            v13 = v10[3];
          }

          if (v13 == v3)
          {
            v15 = v14 >= 0 ? (v10 + 2) : v10[2];
            if (!memcmp(v15, v2, v3))
            {
              return v10;
            }
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        v10 = *v10;
        if (!v10)
        {
          return v10;
        }
      }
    }

    do
    {
      v16 = v10[1];
      if (v6 == v16)
      {
        v17 = *(v10 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v10[3];
        }

        if (v17 == v3)
        {
          v19 = v18 >= 0 ? (v10 + 2) : v10[2];
          if (!memcmp(v19, v2, v3))
          {
            return v10;
          }
        }
      }

      else
      {
        if (v16 >= v5)
        {
          v16 %= v5;
        }

        if (v16 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *nw_http_sniffing_get_mime_type_for_rule_array(std::string *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result->__r_.__value_.__r.__words[0] = 0;
  result->__r_.__value_.__l.__size_ = 0;
  result->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a3)
  {
    v5 = 512;
    if ((a3 - a2) < 0x200)
    {
      v5 = a3 - a2;
    }

    v6 = *(a4 + 8);
    if (v6)
    {
      v7 = 0;
      if (a5)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        while (1)
        {
          v15 = (a4 + 32 * v7);
          v16 = v15[2];
          if (v5 >= v16)
          {
            v17 = *v6;
            if (v17 != 60)
            {
              v18 = a2;
              if (!v16)
              {
                goto LABEL_8;
              }

              goto LABEL_19;
            }

            if (v8)
            {
              if (!v10)
              {
LABEL_36:
                v8 = 1;
                goto LABEL_10;
              }
            }

            else
            {
              v22 = 0;
              while (1)
              {
                v10 = a2 + v22;
                v23 = *(a2 + v22);
                if (v23 > 0x20 || ((1 << v23) & 0x100003600) == 0)
                {
                  break;
                }

                if (v5 == ++v22)
                {
                  goto LABEL_35;
                }
              }

              if (v23 != 60)
              {
LABEL_35:
                v10 = 0;
                goto LABEL_36;
              }

              v9 = v5 - v22;
            }

            v8 = 1;
            v18 = v10;
            if (v9 >= v16)
            {
              if (!v16)
              {
LABEL_8:
                v14 = 0;
                goto LABEL_9;
              }

LABEL_19:
              v19 = *v15;
              if (v19)
              {
                if (v17 == 60)
                {
                  v14 = 0;
                  while (1)
                  {
                    v20 = (*(v19 + v14) & *(v18 + v14));
                    v21 = v6[v14];
                    if (v20 != v21 && (v16 - 1 != v14 || v21 != 32 || v20 != 62 && v20 != 32))
                    {
                      break;
                    }

                    if (v16 == ++v14)
                    {
                      return std::string::__assign_external(result, *(a4 + 32 * v7 + 24));
                    }
                  }
                }

                else
                {
                  v14 = 0;
                  while ((*(v19 + v14) & *(v18 + v14)) == v6[v14])
                  {
                    if (v16 == ++v14)
                    {
                      return std::string::__assign_external(result, *(a4 + 32 * v7 + 24));
                    }
                  }
                }
              }

              else if (v17 == 60)
              {
                v14 = 0;
                while (1)
                {
                  v25 = *(v18 + v14);
                  v26 = v6[v14];
                  if (v25 != v26 && (v16 - 1 != v14 || v26 != 32 || v25 != 62 && v25 != 32))
                  {
                    break;
                  }

                  if (v16 == ++v14)
                  {
                    return std::string::__assign_external(result, *(a4 + 32 * v7 + 24));
                  }
                }
              }

              else
              {
                v14 = 0;
                while (*(v18 + v14) == v6[v14])
                {
                  if (v16 == ++v14)
                  {
                    return std::string::__assign_external(result, *(a4 + 32 * v7 + 24));
                  }
                }
              }

LABEL_9:
              if (v14 == v16)
              {
                return std::string::__assign_external(result, *(a4 + 32 * v7 + 24));
              }
            }
          }

LABEL_10:
          ++v7;
          v6 = *(a4 + 32 * v7 + 8);
          if (!v6)
          {
            return result;
          }
        }
      }

      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        v27 = *(a4 + 32 * v7 + 16);
        if (v5 >= v27)
        {
          if (*v6 == 60)
          {
            if (v11)
            {
              if (!v13 || v12 < v27)
              {
                goto LABEL_84;
              }
            }

            else
            {
              v31 = 0;
              while (1)
              {
                v13 = a2 + v31;
                v32 = *(a2 + v31);
                if (v32 > 0x20 || ((1 << v32) & 0x100003600) == 0)
                {
                  break;
                }

                if (v5 == ++v31)
                {
                  goto LABEL_83;
                }
              }

              if (v32 != 60)
              {
LABEL_83:
                v13 = 0;
                goto LABEL_84;
              }

              v12 = v5 - v31;
              if (v5 - v31 < v27)
              {
LABEL_84:
                v11 = 1;
                goto LABEL_58;
              }
            }

            v28 = 0;
            if (v27)
            {
              while (1)
              {
                v29 = *(v13 + v28);
                v30 = v6[v28];
                if (v29 != v30)
                {
                  v11 = 1;
                  if (v27 - 1 != v28 || v30 != 32 || v29 != 62 && v29 != 32)
                  {
                    break;
                  }
                }

                if (v27 == ++v28)
                {
                  return std::string::__assign_external(result, *(a4 + 32 * v7 + 24));
                }
              }
            }

            else
            {
              v11 = 1;
            }
          }

          else
          {
            v28 = 0;
            if (v27)
            {
              while (*(a2 + v28) == v6[v28])
              {
                if (v27 == ++v28)
                {
                  return std::string::__assign_external(result, *(a4 + 32 * v7 + 24));
                }
              }
            }
          }

          if (v28 == v27)
          {
            return std::string::__assign_external(result, *(a4 + 32 * v7 + 24));
          }
        }

LABEL_58:
        ++v7;
        v6 = *(a4 + 32 * v7 + 8);
      }

      while (v6);
    }
  }

  return result;
}

uint64_t nw_http_sniffing_get_mime_type_for_complex_nonscriptable_type_rules(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v2 = *(a2 + 432);
  v3 = *(a2 + 440);
  if (v2 == v3)
  {
    return result;
  }

  v4 = v3 - v2;
  if (v4 < 4)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v5 = *v2 == 17481 && *(v2 + 2) == 51;
  if (v5 && *(v2 + 3) <= 31)
  {
    v6 = 10;
    *(result + 23) = 10;
    *(result + 8) = 26469;
    *result = *"audio/mpeg";
LABEL_11:
    v7 = v4 > 7;
    goto LABEL_12;
  }

  if (v4 < 8)
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_40;
  }

  if (*(v2 + 1) == 1987014509 || *(v2 + 1) == 1952539757 || *(v2 + 1) == 1701079415)
  {
    v6 = 15;
    *(result + 23) = 15;
    qmemcpy(result, "video/quicktime", 15);
    goto LABEL_64;
  }

  v6 = 0;
  v7 = 1;
LABEL_12:
  v8 = v4 > 0xB;
  v9 = v6;
  if (v6 || v4 < 0xC)
  {
    goto LABEL_18;
  }

  if (*v2 || *(v2 + 1) || *(v2 + 1) != 1887007846)
  {
    goto LABEL_17;
  }

  if (v2[4] == 28781 && *(v2 + 10) == 52)
  {
    if (*(v2 + 11) - 49 <= 1)
    {
LABEL_105:
      v6 = 9;
      *(result + 23) = 9;
      *(result + 8) = 52;
      v14 = "video/mp4";
      goto LABEL_63;
    }

LABEL_17:
    v9 = 0;
    v8 = 1;
    goto LABEL_18;
  }

  if (v2[4] == 29545 && *(v2 + 10) == 111)
  {
    v19 = *(v2 + 11);
    if (v19 == 109 || v19 == 50)
    {
      goto LABEL_105;
    }

    goto LABEL_17;
  }

  if (v2[4] != 13389 || *(v2 + 10) != 86)
  {
    if (*(v2 + 2) == 541144141)
    {
      v6 = 9;
      *(result + 23) = 9;
      *(result + 8) = 52;
      v14 = "audio/mp4";
      goto LABEL_63;
    }

    if (v2[4] == 26419)
    {
      if (v2[5] == 24882)
      {
        v6 = 11;
        *(result + 23) = 11;
        *(result + 7) = 846229607;
        v15 = "video/3gpp2";
        goto LABEL_73;
      }

      if (*(v2 + 10) - 101 <= 0xE && (*(v2 + 11) & 0xFC) == 0x34 && (v2[5] == 13925 || v2[5] == 14181 || v2[5] == 13927 || v2[5] == 13424 || v2[5] == 13680 || v2[5] == 13936 || v2[5] == 13938 || v2[5] == 13939 || v2[5] == 14195))
      {
        v6 = 10;
        *(result + 23) = 10;
        *(result + 8) = 28784;
        v12 = "video/3gpp";
        goto LABEL_33;
      }
    }

    goto LABEL_17;
  }

  v9 = 0;
  v8 = 1;
  v20 = *(v2 + 11) - 32;
  if (v20 <= 0x30 && ((1 << v20) & 0x1010000000001) != 0)
  {
    v6 = 9;
    *(result + 23) = 9;
    *(result + 8) = 118;
    v14 = "video/m4v";
    goto LABEL_63;
  }

LABEL_18:
  if (v9 || !v8)
  {
    goto LABEL_22;
  }

  if (*v2 == 1179011410)
  {
    if (*(v2 + 2) == 1163280727)
    {
      v6 = 9;
      *(result + 23) = 9;
      *(result + 8) = 118;
      v14 = "audio/wav";
    }

    else
    {
      if (*(v2 + 2) != 541677121)
      {
        goto LABEL_21;
      }

      v6 = 9;
      *(result + 23) = 9;
      *(result + 8) = 105;
      v14 = "video/avi";
    }

LABEL_63:
    *result = *v14;
    goto LABEL_64;
  }

LABEL_21:
  v8 = 1;
LABEL_22:
  if (v6 || !v8 || *v2 != 1297239878 || (v2[4] == 18753 ? (v10 = *(v2 + 10) == 70) : (v10 = 0), !v10 || (v11 = *(v2 + 11), v11 != 70) && v11 != 67))
  {
LABEL_40:
    if (v6 || v4 < 5 || *(v2 + 3) || *(v2 + 4))
    {
      goto LABEL_44;
    }

    if (*(v2 + 1))
    {
      if (*(v2 + 1) == 1 && (v2[1] & 0xF7) == 1)
      {
        goto LABEL_72;
      }
    }

    else if ((v2[1] & 0xF6) == 2)
    {
LABEL_72:
      v6 = 11;
      *(result + 23) = 11;
      *(result + 7) = 1634169441;
      v15 = "image/targa";
LABEL_73:
      *result = *v15;
      *(result + 11) = 0;
      goto LABEL_64;
    }

LABEL_44:
    v13 = !v7;
    if (v6)
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0 && (*(v2 + 1) == 1668506729 || *(v2 + 1) == 1952539753))
    {
      v6 = 17;
      *(result + 23) = 17;
      strcpy(result, "image/x-quicktime");
    }

    else if (!v6 && v4 >= 2 && *v2 == 759)
    {
      v6 = 17;
      *(result + 23) = 17;
      strcpy(result, "application/x-dvi");
    }

    goto LABEL_64;
  }

  v6 = 10;
  *(result + 23) = 10;
  *(result + 8) = 26214;
  v12 = "audio/aiff";
LABEL_33:
  *result = *v12;
  *(result + 10) = 0;
LABEL_64:
  if (!v6 && v4 >= 4 && *v2 == 55809 && *(v2 + 2) <= 1u && *(v2 + 3) - 1 <= 0xE)
  {
    *(result + 23) = 9;
    strcpy(result, "image/sgi");
  }

  return result;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  LODWORD(v5) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80000000) != 0)
  {
    v7 = this->__r_.__value_.__r.__words[2];
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__n > v8)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v7 & 0x7FFFFFFFFFFFFFFFLL) >= __n - v8)
      {
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          operator new();
        }

LABEL_8:
        operator new();
      }

LABEL_17:
      std::string::__throw_length_error[abi:nn200100]();
    }

    v5 = HIBYTE(v7);
    v6 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v6 = this;
    if (__n > 0x16)
    {
      if (__n - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  if (__n)
  {
    memmove(v6, __s, __n);
    LOBYTE(v5) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v6->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

_BYTE *std::string::__assign_no_alias<true>(_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  __dst[23] = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  v5[__len] = 0;
  return __dst;
}

uint64_t std::string::__assign_no_alias<false>(uint64_t a1, const void *a2, size_t __len)
{
  v5 = *(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v5 >= __len - v5 + 1)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = *a1;
  *(a1 + 8) = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)))) ^ ((0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)))) >> 47));
  }

  else
  {
    if (a2 > 0x10)
    {
      v26 = a1[1];
      v27 = 0xB492B66FBE98F273 * *a1;
      v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
      v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
      v23 = 0x9DDFEA08EB382D69;
      v30 = 0x9DDFEA08EB382D69 * ((v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v29);
      v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
      v25 = 0x9DDFEA08EB382D69 * v31;
      return (v25 ^ (v25 >> 47)) * v23;
    }

    if (a2 >= 9)
    {
      v2 = *(a1 + a2 - 8);
      v3 = __ROR8__(v2 + a2, a2);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
    }

    if (a2 >= 4)
    {
      v71 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v72 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v71);
      v31 = v71 ^ (v72 >> 47) ^ v72;
      goto LABEL_8;
    }

    if (a2)
    {
      v73 = 0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8));
      v74 = 0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)));
      return 0x9AE16A3B2F90404FLL * (v74 ^ v73 ^ ((v74 ^ v73) >> 47));
    }

    else
    {
      return 0x9AE16A3B2F90404FLL;
    }
  }
}

uint64_t std::pair<std::string const,mime_type_class>::pair[abi:nn200100]<char const*&,mime_type_class,0>(uint64_t a1, char *__s, _DWORD *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  *(a1 + v7) = 0;
  *(a1 + 24) = *a3;
  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,mime_type_class>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,mime_type_class>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,mime_type_class>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,mime_type_class>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,mime_type_class> const&>(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v2, v3);
  v5 = v4;
  v6 = *(&mime_type_to_class(void)::instance + 1);
  if (!*(&mime_type_to_class(void)::instance + 1))
  {
    goto LABEL_41;
  }

  v7 = vcnt_s8(*(&mime_type_to_class(void)::instance + 8));
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *(&mime_type_to_class(void)::instance + 1))
    {
      v8 = v4 % *(&mime_type_to_class(void)::instance + 1);
    }
  }

  else
  {
    v8 = (*(&mime_type_to_class(void)::instance + 1) - 1) & v4;
  }

  v9 = *(mime_type_to_class(void)::instance + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_41:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        v12 = *(v10 + 39);
        v13 = v12;
        if (v12 < 0)
        {
          v12 = v10[3];
        }

        if (v12 == v3)
        {
          v14 = v13 >= 0 ? (v10 + 2) : v10[2];
          result = memcmp(v14, v2, v3);
          if (!result)
          {
            return result;
          }
        }
      }

      else if ((v11 & (v6 - 1)) != v8)
      {
        goto LABEL_41;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v16 = v10[1];
    if (v16 == v5)
    {
      break;
    }

    if (v16 >= v6)
    {
      v16 %= v6;
    }

    if (v16 != v8)
    {
      goto LABEL_41;
    }

LABEL_29:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_41;
    }
  }

  v17 = *(v10 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v10[3];
  }

  if (v17 != v3)
  {
    goto LABEL_29;
  }

  v19 = v18 >= 0 ? (v10 + 2) : v10[2];
  result = memcmp(v19, v2, v3);
  if (result)
  {
    goto LABEL_29;
  }

  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

__n128 __Block_byref_object_copy__22(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__23(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t ___ZL31nw_http_sniffing_get_media_typeP25nw_protocol_http_sniffingP20nw_protocol_metadata_block_invoke(uint64_t a1, int a2, int a3, char *__s, uint64_t a5)
{
  if (a5)
  {
    v8 = strchr(__s, 59);
    v9 = v8 - __s;
    if (!v8)
    {
      v9 = a5;
    }

    v10 = v9 - 1;
    v11 = MEMORY[0x1E69E9830];
    do
    {
      while (1)
      {
        if (v10 == -1)
        {
          v15 = 0;
          HIBYTE(v22) = 0;
          goto LABEL_14;
        }

        v13 = v10;
        v14 = __s[v10];
        if ((v14 & 0x80000000) == 0)
        {
          break;
        }

        v12 = __maskrune(v14, 0x4000uLL);
        v10 = v13 - 1;
        if (!v12)
        {
          goto LABEL_9;
        }
      }

      --v10;
    }

    while ((*(v11 + 4 * v14 + 60) & 0x4000) != 0);
LABEL_9:
    v15 = v13 + 1;
    if ((v13 + 1) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v22) = v13 + 1;
    memcpy(&__dst, __s, v15);
LABEL_14:
    *(&__dst + v15) = 0;
    v16 = HIBYTE(v22);
    v17 = SHIBYTE(v22);
    if (v22 < 0)
    {
      v16 = *(&__dst + 1);
    }

    if (v16)
    {
      v18 = *(*(a1 + 32) + 8);
      if ((*(v18 + 63) & 0x80000000) == 0)
      {
        if ((SHIBYTE(v22) & 0x80000000) == 0)
        {
          *(v18 + 40) = __dst;
          *(v18 + 56) = v22;
          return 1;
        }

        std::string::__assign_no_alias<true>((v18 + 40), __dst, *(&__dst + 1));
LABEL_27:
        operator delete(__dst);
        return 1;
      }

      if (v22 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      std::string::__assign_no_alias<false>(v18 + 40, p_dst, v16);
    }

    if ((v17 & 0x80000000) == 0)
    {
      return 1;
    }

    goto LABEL_27;
  }

  return 1;
}

uint64_t ___ZL29nw_http_sniffing_should_sniffP25nw_protocol_http_sniffingNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEP20nw_protocol_metadata_block_invoke(uint64_t result, char *a2)
{
  if (a2)
  {
    v2 = result;
    result = strcasecmp(a2, "nosniff");
    if (!result)
    {
      *(*(*(v2 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t ___ZL29nw_http_sniffing_should_sniffP25nw_protocol_http_sniffingNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEP20nw_protocol_metadata_block_invoke_2(uint64_t a1, int a2, int a3, char *__big)
{
  v5 = strcasestr(__big, "charset=");
  if (v5)
  {
    v6 = v5;
    v7 = 8;
    do
    {
      v8 = v7;
      is_valid_token_char = nw_http_is_valid_token_char(v6[v7]);
      v7 = v8 + 1;
    }

    while (is_valid_token_char);
    v10 = v8 - 8;
    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v14) = v10;
    if (v10)
    {
      memmove(&__dst, v6 + 8, v10);
    }

    *(&__dst + v10) = 0;
    v11 = *(*(a1 + 32) + 8);
    if (*(v11 + 63) < 0)
    {
      operator delete(*(v11 + 40));
    }

    *(v11 + 40) = __dst;
    *(v11 + 56) = v14;
  }

  return 1;
}

double __nw_protocol_http_sniffing_identifier_block_invoke()
{
  strcpy(&nw_protocol_http_sniffing_identifier::protocol_identifier, "http_sniffing");
  *&result = 0x100000005;
  qword_1EA840F60 = 0x100000005;
  return result;
}

uint64_t networkd_privileged_get_kernel_socket_internal(uint64_t a1)
{
  v99 = *MEMORY[0x1E69E9840];
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, networkd_privileged_key_type, a1);
    v4 = networkd_privileged_send_sync_inner("networkd_privileged_get_kernel_socket_internal", v3);
    v5 = v4;
    if (!v4)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      *buf = 136446210;
      v94 = "networkd_privileged_get_kernel_socket_internal";
      v7 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v91 = 0;
      if (!__nwlog_fault(v7, &type, &v91))
      {
        goto LABEL_55;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s received NULL response", buf, 0xCu);
        }

        goto LABEL_173;
      }

      if (v91 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v29 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          _os_log_impl(&dword_181A37000, v13, v29, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_173;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v22 = type;
      v23 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s received NULL response, no backtrace", buf, 0xCu);
        }

        goto LABEL_173;
      }

      if (v23)
      {
        *buf = 136446466;
        v94 = "networkd_privileged_get_kernel_socket_internal";
        v95 = 2082;
        *v96 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v22, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }

    Class = object_getClass(v4);
    if (Class != MEMORY[0x1E69E9E80])
    {
      if (Class != MEMORY[0x1E69E9E98])
      {
        v7 = MEMORY[0x1865DFA50](v5);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        *buf = 136446466;
        v94 = "networkd_privileged_get_kernel_socket_internal";
        v95 = 2082;
        *v96 = v7;
        v9 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v91 = 0;
        if (!__nwlog_fault(v9, &type, &v91))
        {
          goto LABEL_53;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type;
          if (os_log_type_enabled(v10, type))
          {
            *buf = 136446466;
            v94 = "networkd_privileged_get_kernel_socket_internal";
            v95 = 2082;
            *v96 = v7;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
          }

LABEL_52:

LABEL_53:
          if (!v9)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        if (v91 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v32 = type;
          if (os_log_type_enabled(v10, type))
          {
            *buf = 136446466;
            v94 = "networkd_privileged_get_kernel_socket_internal";
            v95 = 2082;
            *v96 = v7;
            _os_log_impl(&dword_181A37000, v10, v32, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_52;
        }

        v26 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v27 = type;
        v28 = os_log_type_enabled(v10, type);
        if (!v26)
        {
          if (v28)
          {
            *buf = 136446466;
            v94 = "networkd_privileged_get_kernel_socket_internal";
            v95 = 2082;
            *v96 = v7;
            _os_log_impl(&dword_181A37000, v10, v27, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
          }

          goto LABEL_52;
        }

        if (v28)
        {
          *buf = 136446722;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          v95 = 2082;
          *v96 = v7;
          *&v96[8] = 2082;
          *&v96[10] = v26;
          _os_log_impl(&dword_181A37000, v10, v27, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v26);
        if (!v9)
        {
LABEL_55:
          if (!v7)
          {
LABEL_153:
            v53 = 0xFFFFFFFFLL;
            goto LABEL_154;
          }

LABEL_56:
          free(v7);
          goto LABEL_153;
        }

LABEL_54:
        free(v9);
        goto LABEL_55;
      }

      if (v5 == MEMORY[0x1E69E9E18])
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        *buf = 136446210;
        v94 = "networkd_privileged_get_kernel_socket_internal";
        v7 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v91 = 0;
        if (!__nwlog_fault(v7, &type, &v91))
        {
          goto LABEL_55;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v34 = type;
          if (os_log_type_enabled(v13, type))
          {
            *buf = 136446210;
            v94 = "networkd_privileged_get_kernel_socket_internal";
            _os_log_impl(&dword_181A37000, v13, v34, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
          }

          goto LABEL_173;
        }

        if (v91 != 1)
        {
          v13 = __nwlog_obj();
          v65 = type;
          if (os_log_type_enabled(v13, type))
          {
            *buf = 136446210;
            v94 = "networkd_privileged_get_kernel_socket_internal";
            _os_log_impl(&dword_181A37000, v13, v65, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_173;
        }

        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v47 = type;
        v48 = os_log_type_enabled(v13, type);
        if (!backtrace_string)
        {
          if (v48)
          {
            *buf = 136446210;
            v94 = "networkd_privileged_get_kernel_socket_internal";
            _os_log_impl(&dword_181A37000, v13, v47, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
          }

          goto LABEL_173;
        }

        if (v48)
        {
          *buf = 136446466;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          v95 = 2082;
          *v96 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v47, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        if (v5 == MEMORY[0x1E69E9E20])
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v46 = gLogObj;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v94 = "networkd_privileged_get_kernel_socket_internal";
            _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
          }

          goto LABEL_153;
        }

        if (v5 != MEMORY[0x1E69E9E38])
        {
          v7 = MEMORY[0x1865DFA50](v5);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v24 = gLogObj;
          *buf = 136446466;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          v95 = 2082;
          *v96 = v7;
          v9 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v91 = 0;
          if (!__nwlog_fault(v9, &type, &v91))
          {
            goto LABEL_53;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v10 = __nwlog_obj();
            v25 = type;
            if (os_log_type_enabled(v10, type))
            {
              *buf = 136446466;
              v94 = "networkd_privileged_get_kernel_socket_internal";
              v95 = 2082;
              *v96 = v7;
              _os_log_impl(&dword_181A37000, v10, v25, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
            }

            goto LABEL_52;
          }

          if (v91 != 1)
          {
            v10 = __nwlog_obj();
            v68 = type;
            if (os_log_type_enabled(v10, type))
            {
              *buf = 136446466;
              v94 = "networkd_privileged_get_kernel_socket_internal";
              v95 = 2082;
              *v96 = v7;
              _os_log_impl(&dword_181A37000, v10, v68, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
            }

            goto LABEL_52;
          }

          v58 = __nw_create_backtrace_string();
          v10 = __nwlog_obj();
          v59 = type;
          v60 = os_log_type_enabled(v10, type);
          if (!v58)
          {
            if (v60)
            {
              *buf = 136446466;
              v94 = "networkd_privileged_get_kernel_socket_internal";
              v95 = 2082;
              *v96 = v7;
              _os_log_impl(&dword_181A37000, v10, v59, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
            }

            goto LABEL_52;
          }

          if (v60)
          {
            *buf = 136446722;
            v94 = "networkd_privileged_get_kernel_socket_internal";
            v95 = 2082;
            *v96 = v7;
            *&v96[8] = 2082;
            *&v96[10] = v58;
            _os_log_impl(&dword_181A37000, v10, v59, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v58);
          if (!v9)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v51 = gLogObj;
        *buf = 136446210;
        v94 = "networkd_privileged_get_kernel_socket_internal";
        v7 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v91 = 0;
        if (!__nwlog_fault(v7, &type, &v91))
        {
          goto LABEL_55;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v13 = __nwlog_obj();
          v52 = type;
          if (os_log_type_enabled(v13, type))
          {
            *buf = 136446210;
            v94 = "networkd_privileged_get_kernel_socket_internal";
            _os_log_impl(&dword_181A37000, v13, v52, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
          }

LABEL_173:

          goto LABEL_55;
        }

        if (v91 != 1)
        {
          v13 = __nwlog_obj();
          v76 = type;
          if (os_log_type_enabled(v13, type))
          {
            *buf = 136446210;
            v94 = "networkd_privileged_get_kernel_socket_internal";
            _os_log_impl(&dword_181A37000, v13, v76, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_173;
        }

        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v66 = type;
        v67 = os_log_type_enabled(v13, type);
        if (!backtrace_string)
        {
          if (v67)
          {
            *buf = 136446210;
            v94 = "networkd_privileged_get_kernel_socket_internal";
            _os_log_impl(&dword_181A37000, v13, v66, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
          }

          goto LABEL_173;
        }

        if (v67)
        {
          *buf = 136446466;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          v95 = 2082;
          *v96 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v66, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

LABEL_26:

      free(backtrace_string);
      if (!v7)
      {
        goto LABEL_153;
      }

      goto LABEL_56;
    }

    v15 = xpc_dictionary_get_value(v5, networkd_privileged_key_result);
    v16 = v15;
    if (!v15)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      *buf = 136446210;
      v94 = "networkd_privileged_get_kernel_socket_internal";
      v18 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v91 = 0;
      if (!__nwlog_fault(v18, &type, &v91))
      {
        goto LABEL_150;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v31 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          _os_log_impl(&dword_181A37000, v19, v31, "%{public}s received response without result code", buf, 0xCu);
        }

        goto LABEL_149;
      }

      if (v91 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v50 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          _os_log_impl(&dword_181A37000, v19, v50, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_149;
      }

      v41 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v44 = type;
      v45 = os_log_type_enabled(v19, type);
      if (!v41)
      {
        if (v45)
        {
          *buf = 136446210;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          _os_log_impl(&dword_181A37000, v19, v44, "%{public}s received response without result code, no backtrace", buf, 0xCu);
        }

        goto LABEL_149;
      }

      if (v45)
      {
        *buf = 136446466;
        v94 = "networkd_privileged_get_kernel_socket_internal";
        v95 = 2082;
        *v96 = v41;
        _os_log_impl(&dword_181A37000, v19, v44, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_78;
    }

    if (object_getClass(v15) != MEMORY[0x1E69E9EB0])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      *buf = 136446210;
      v94 = "networkd_privileged_get_kernel_socket_internal";
      v18 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v91 = 0;
      if (!__nwlog_fault(v18, &type, &v91))
      {
        goto LABEL_150;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s received invalid result type", buf, 0xCu);
        }

LABEL_149:

LABEL_150:
        if (!v18)
        {
LABEL_152:

          goto LABEL_153;
        }

LABEL_151:
        free(v18);
        goto LABEL_152;
      }

      if (v91 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v49 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          _os_log_impl(&dword_181A37000, v19, v49, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_149;
      }

      v41 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v42 = type;
      v43 = os_log_type_enabled(v19, type);
      if (!v41)
      {
        if (v43)
        {
          *buf = 136446210;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          _os_log_impl(&dword_181A37000, v19, v42, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
        }

        goto LABEL_149;
      }

      if (v43)
      {
        *buf = 136446466;
        v94 = "networkd_privileged_get_kernel_socket_internal";
        v95 = 2082;
        *v96 = v41;
        _os_log_impl(&dword_181A37000, v19, v42, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_78:

      free(v41);
      if (!v18)
      {
        goto LABEL_152;
      }

      goto LABEL_151;
    }

    value = xpc_int64_get_value(v16);
    v36 = value;
    if (value)
    {
      if (!(value >> 31))
      {
        v37 = __nwlog_obj();
        *buf = 136446466;
        v94 = "networkd_privileged_get_kernel_socket_internal";
        v95 = 1024;
        *v96 = v36;
        v38 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v91 = 0;
        if (__nwlog_fault(v38, &type, &v91))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v39 = __nwlog_obj();
            v40 = type;
            if (os_log_type_enabled(v39, type))
            {
              *buf = 136446466;
              v94 = "networkd_privileged_get_kernel_socket_internal";
              v95 = 1024;
              *v96 = v36;
              _os_log_impl(&dword_181A37000, v39, v40, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
            }
          }

          else if (v91 == 1)
          {
            v69 = __nw_create_backtrace_string();
            v39 = __nwlog_obj();
            v70 = type;
            v71 = os_log_type_enabled(v39, type);
            if (v69)
            {
              if (v71)
              {
                *buf = 136446722;
                v94 = "networkd_privileged_get_kernel_socket_internal";
                v95 = 1024;
                *v96 = v36;
                *&v96[4] = 2082;
                *&v96[6] = v69;
                _os_log_impl(&dword_181A37000, v39, v70, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v69);
              if (!v38)
              {
                goto LABEL_152;
              }

              goto LABEL_181;
            }

            if (v71)
            {
              *buf = 136446466;
              v94 = "networkd_privileged_get_kernel_socket_internal";
              v95 = 1024;
              *v96 = v36;
              _os_log_impl(&dword_181A37000, v39, v70, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
            }
          }

          else
          {
            v39 = __nwlog_obj();
            v77 = type;
            if (os_log_type_enabled(v39, type))
            {
              *buf = 136446466;
              v94 = "networkd_privileged_get_kernel_socket_internal";
              v95 = 1024;
              *v96 = v36;
              _os_log_impl(&dword_181A37000, v39, v77, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
            }
          }
        }

LABEL_180:
        if (!v38)
        {
          goto LABEL_152;
        }

LABEL_181:
        free(v38);
        goto LABEL_152;
      }

      v61 = __nwlog_obj();
      v62 = networkd_privileged_result_to_string(v36);
      *buf = 136446722;
      v94 = "networkd_privileged_get_kernel_socket_internal";
      v95 = 2048;
      *v96 = v36;
      *&v96[8] = 2082;
      *&v96[10] = v62;
      v38 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v91 = 0;
      if (!__nwlog_fault(v38, &type, &v91))
      {
        goto LABEL_180;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v63 = __nwlog_obj();
        v64 = type;
        if (os_log_type_enabled(v63, type))
        {
          *buf = 136446722;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          v95 = 2048;
          *v96 = v36;
          *&v96[8] = 2082;
          *&v96[10] = v62;
          _os_log_impl(&dword_181A37000, v63, v64, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
        }
      }

      else if (v91 == 1)
      {
        v72 = __nw_create_backtrace_string();
        v63 = __nwlog_obj();
        v73 = type;
        v74 = os_log_type_enabled(v63, type);
        if (v72)
        {
          if (v74)
          {
            *buf = 136446978;
            v94 = "networkd_privileged_get_kernel_socket_internal";
            v95 = 2048;
            *v96 = v36;
            *&v96[8] = 2082;
            *&v96[10] = v62;
            v97 = 2082;
            v98 = v72;
            _os_log_impl(&dword_181A37000, v63, v73, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v72);
          goto LABEL_180;
        }

        if (v74)
        {
          *buf = 136446722;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          v95 = 2048;
          *v96 = v36;
          *&v96[8] = 2082;
          *&v96[10] = v62;
          _os_log_impl(&dword_181A37000, v63, v73, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        v63 = __nwlog_obj();
        v78 = type;
        if (os_log_type_enabled(v63, type))
        {
          *buf = 136446722;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          v95 = 2048;
          *v96 = v36;
          *&v96[8] = 2082;
          *&v96[10] = v62;
          _os_log_impl(&dword_181A37000, v63, v78, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_180;
    }

    v53 = xpc_dictionary_dup_fd(v5, networkd_privileged_key_kernel_socket_fd);
    if ((v53 & 0x80000000) == 0)
    {
LABEL_154:

      goto LABEL_155;
    }

    v54 = __nwlog_obj();
    *buf = 136446466;
    v94 = "networkd_privileged_get_kernel_socket_internal";
    v95 = 1024;
    *v96 = v53;
    v55 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v91 = 0;
    if (__nwlog_fault(v55, &type, &v91))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v56 = __nwlog_obj();
        v57 = type;
        if (os_log_type_enabled(v56, type))
        {
          *buf = 136446466;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          v95 = 1024;
          *v96 = v53;
          _os_log_impl(&dword_181A37000, v56, v57, "%{public}s received invalid fd %d", buf, 0x12u);
        }
      }

      else if (v91 == 1)
      {
        v87 = __nw_create_backtrace_string();
        v56 = __nwlog_obj();
        v88 = type;
        v89 = os_log_type_enabled(v56, type);
        if (v87)
        {
          if (v89)
          {
            *buf = 136446722;
            v94 = "networkd_privileged_get_kernel_socket_internal";
            v95 = 1024;
            *v96 = v53;
            *&v96[4] = 2082;
            *&v96[6] = v87;
            _os_log_impl(&dword_181A37000, v56, v88, "%{public}s received invalid fd %d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v87);
          goto LABEL_213;
        }

        if (v89)
        {
          *buf = 136446466;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          v95 = 1024;
          *v96 = v53;
          _os_log_impl(&dword_181A37000, v56, v88, "%{public}s received invalid fd %d, no backtrace", buf, 0x12u);
        }
      }

      else
      {
        v56 = __nwlog_obj();
        v90 = type;
        if (os_log_type_enabled(v56, type))
        {
          *buf = 136446466;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          v95 = 1024;
          *v96 = v53;
          _os_log_impl(&dword_181A37000, v56, v90, "%{public}s received invalid fd %d, backtrace limit exceeded", buf, 0x12u);
        }
      }
    }

LABEL_213:
    if (v55)
    {
      free(v55);
    }

    goto LABEL_154;
  }

  v79 = __nwlog_obj();
  *buf = 136446210;
  v94 = "networkd_privileged_get_kernel_socket_internal";
  v80 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v91 = 0;
  if (__nwlog_fault(v80, &type, &v91))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v81 = __nwlog_obj();
      v82 = type;
      if (os_log_type_enabled(v81, type))
      {
        *buf = 136446210;
        v94 = "networkd_privileged_get_kernel_socket_internal";
        _os_log_impl(&dword_181A37000, v81, v82, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
      }
    }

    else if (v91 == 1)
    {
      v83 = __nw_create_backtrace_string();
      v81 = __nwlog_obj();
      v84 = type;
      v85 = os_log_type_enabled(v81, type);
      if (v83)
      {
        if (v85)
        {
          *buf = 136446466;
          v94 = "networkd_privileged_get_kernel_socket_internal";
          v95 = 2082;
          *v96 = v83;
          _os_log_impl(&dword_181A37000, v81, v84, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v83);
        goto LABEL_199;
      }

      if (v85)
      {
        *buf = 136446210;
        v94 = "networkd_privileged_get_kernel_socket_internal";
        _os_log_impl(&dword_181A37000, v81, v84, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v81 = __nwlog_obj();
      v86 = type;
      if (os_log_type_enabled(v81, type))
      {
        *buf = 136446210;
        v94 = "networkd_privileged_get_kernel_socket_internal";
        _os_log_impl(&dword_181A37000, v81, v86, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_199:
  if (v80)
  {
    free(v80);
  }

  v53 = 0xFFFFFFFFLL;
LABEL_155:

  return v53;
}

xpc_object_t networkd_privileged_send_sync_inner(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkd_privileged_copy_connection();
  v5 = v4;
  if (v4)
  {
    v6 = xpc_connection_send_message_with_reply_sync(v4, v3);
    if (v6 == MEMORY[0x1E69E9E18])
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = 136446722;
        v15 = "networkd_privileged_send_sync_inner";
        v16 = 2082;
        v17 = a1;
        v18 = 1024;
        v19 = 1;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", &v14, 0x1Cu);
      }

      v9 = MEMORY[0x1E69E9E18];
      v6 = xpc_connection_send_message_with_reply_sync(v5, v3);

      if (v6 == v9)
      {
        v10 = __nwlog_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v14 = 136446722;
          v15 = "networkd_privileged_send_sync_inner";
          v16 = 2082;
          v17 = a1;
          v18 = 1024;
          v19 = 2;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s %{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", &v14, 0x1Cu);
        }

        v6 = xpc_connection_send_message_with_reply_sync(v5, v3);
        if (v6 == v9)
        {
          v11 = __nwlog_obj();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v14 = 136446722;
            v15 = "networkd_privileged_send_sync_inner";
            v16 = 2082;
            v17 = a1;
            v18 = 1024;
            v19 = 3;
            _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s %{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", &v14, 0x1Cu);
          }

          v6 = xpc_connection_send_message_with_reply_sync(v5, v3);
          if (v6 == v9)
          {
            v12 = __nwlog_obj();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v14 = 136446722;
              v15 = "networkd_privileged_send_sync_inner";
              v16 = 2082;
              v17 = a1;
              v18 = 1024;
              v19 = 4;
              _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s %{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", &v14, 0x1Cu);
            }

            v6 = xpc_connection_send_message_with_reply_sync(v5, v3);
            if (v6 == v9)
            {
              v13 = __nwlog_obj();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                v14 = 136446722;
                v15 = "networkd_privileged_send_sync_inner";
                v16 = 2082;
                v17 = a1;
                v18 = 1024;
                v19 = 5;
                _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s %{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, retrying (%u)", &v14, 0x1Cu);
              }

              v6 = MEMORY[0x1E69E9E18];
            }
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

const char *networkd_privileged_result_to_string(uint64_t a1)
{
  v1 = a1;
  if (a1 != a1)
  {
    return "Unknown";
  }

  result = "Unknown";
  if (v1 <= -1004)
  {
    switch(v1)
    {
      case -1006:
        return "FailureParseAgent";
      case -1005:
        return "FailureCreateXPCFD";
      case -1004:
        return "FailureCreateKernelSocket";
    }
  }

  else if (v1 > -1002)
  {
    if (v1)
    {
      if (v1 == -1001)
      {
        return "FailureUnknown";
      }
    }

    else
    {
      return "Success";
    }
  }

  else if (v1 == -1003)
  {
    return "FailureInvalidType";
  }

  else
  {
    return "FailureMissingEntitlement";
  }

  return result;
}

uint64_t __Block_byref_object_copy__993(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL35networkd_privileged_copy_connectionv_block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  Class = object_getClass(v3);
  v5 = Class != MEMORY[0x1E69E9E98] || _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection == 0;
  if (!v5 && *(a1 + 32) == _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection)
  {
    xpc_connection_cancel(_ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection);
    v8 = _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection;
    _ZZZL35networkd_privileged_copy_connectionvEUb7_E29sNetworkdPrivilegedConnection = 0;
  }

  else if (Class == MEMORY[0x1E69E9E80])
  {
    v6 = MEMORY[0x1865DFA50](v3);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446722;
      v10 = "networkd_privileged_copy_connection_block_invoke_2";
      v11 = 2082;
      v12 = networkd_privileged_service;
      v13 = 2082;
      v14 = v6;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s unexpected message from %{public}s: %{public}s", &v9, 0x20u);
    }

    if (v6)
    {
      free(v6);
    }
  }
}

void ___ZL30networkd_privileged_copy_queuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.network.xpc_to_privileged_helper", v2);
  v1 = networkd_privileged_copy_queue(void)::networkdPrivilegedQueue;
  networkd_privileged_copy_queue(void)::networkdPrivilegedQueue = v0;
}

uint64_t networkd_privileged_set_agent_on_interface_internal(const char *a1, const unsigned __int8 *a2, BOOL a3, int a4)
{
  v108 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    v9 = v8;
    if (v8)
    {
      if (a4)
      {
        v10 = 14;
      }

      else
      {
        v10 = 8;
      }

      xpc_dictionary_set_uint64(v8, networkd_privileged_key_type, v10);
      xpc_dictionary_set_string(v9, networkd_privileged_key_interface_name, a1);
      xpc_dictionary_set_uuid(v9, networkd_privileged_key_agent_uuid, a2);
      xpc_dictionary_set_BOOL(v9, networkd_privileged_key_remove, a3);
      v11 = networkd_privileged_send_sync_inner("networkd_privileged_set_agent_on_interface_internal", v9);
      v12 = v11;
      if (!v11)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        *buf = 136446210;
        v103 = "networkd_privileged_set_agent_on_interface_internal";
        v14 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v100 = 0;
        if (!__nwlog_fault(v14, &type, &v100))
        {
          goto LABEL_59;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = gLogObj;
          v21 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446210;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s received NULL response", buf, 0xCu);
          }

          goto LABEL_179;
        }

        if (v100 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = gLogObj;
          v36 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446210;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            _os_log_impl(&dword_181A37000, v20, v36, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_179;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v29 = type;
        v30 = os_log_type_enabled(v20, type);
        if (!backtrace_string)
        {
          if (v30)
          {
            *buf = 136446210;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            _os_log_impl(&dword_181A37000, v20, v29, "%{public}s received NULL response, no backtrace", buf, 0xCu);
          }

          goto LABEL_179;
        }

        if (v30)
        {
          *buf = 136446466;
          v103 = "networkd_privileged_set_agent_on_interface_internal";
          v104 = 2082;
          *v105 = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v29, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_30;
      }

      Class = object_getClass(v11);
      if (Class != MEMORY[0x1E69E9E80])
      {
        if (Class != MEMORY[0x1E69E9E98])
        {
          v14 = MEMORY[0x1865DFA50](v12);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          *buf = 136446466;
          v103 = "networkd_privileged_set_agent_on_interface_internal";
          v104 = 2082;
          *v105 = v14;
          v16 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v100 = 0;
          if (!__nwlog_fault(v16, &type, &v100))
          {
            goto LABEL_57;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v17 = gLogObj;
            v18 = type;
            if (os_log_type_enabled(v17, type))
            {
              *buf = 136446466;
              v103 = "networkd_privileged_set_agent_on_interface_internal";
              v104 = 2082;
              *v105 = v14;
              _os_log_impl(&dword_181A37000, v17, v18, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
            }

LABEL_56:

LABEL_57:
            if (!v16)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          }

          if (v100 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v17 = gLogObj;
            v39 = type;
            if (os_log_type_enabled(v17, type))
            {
              *buf = 136446466;
              v103 = "networkd_privileged_set_agent_on_interface_internal";
              v104 = 2082;
              *v105 = v14;
              _os_log_impl(&dword_181A37000, v17, v39, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
            }

            goto LABEL_56;
          }

          v33 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v34 = type;
          v35 = os_log_type_enabled(v17, type);
          if (!v33)
          {
            if (v35)
            {
              *buf = 136446466;
              v103 = "networkd_privileged_set_agent_on_interface_internal";
              v104 = 2082;
              *v105 = v14;
              _os_log_impl(&dword_181A37000, v17, v34, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
            }

            goto LABEL_56;
          }

          if (v35)
          {
            *buf = 136446722;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            v104 = 2082;
            *v105 = v14;
            *&v105[8] = 2082;
            *&v105[10] = v33;
            _os_log_impl(&dword_181A37000, v17, v34, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v33);
          if (!v16)
          {
LABEL_59:
            if (!v14)
            {
LABEL_61:
              v40 = 0;
LABEL_153:

LABEL_154:
              return v40;
            }

LABEL_60:
            free(v14);
            goto LABEL_61;
          }

LABEL_58:
          free(v16);
          goto LABEL_59;
        }

        if (v12 == MEMORY[0x1E69E9E18])
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v41 = gLogObj;
          *buf = 136446210;
          v103 = "networkd_privileged_set_agent_on_interface_internal";
          v14 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v100 = 0;
          if (!__nwlog_fault(v14, &type, &v100))
          {
            goto LABEL_59;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v20 = gLogObj;
            v42 = type;
            if (os_log_type_enabled(v20, type))
            {
              *buf = 136446210;
              v103 = "networkd_privileged_set_agent_on_interface_internal";
              _os_log_impl(&dword_181A37000, v20, v42, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
            }

            goto LABEL_179;
          }

          if (v100 != 1)
          {
            v20 = __nwlog_obj();
            v67 = type;
            if (os_log_type_enabled(v20, type))
            {
              *buf = 136446210;
              v103 = "networkd_privileged_set_agent_on_interface_internal";
              _os_log_impl(&dword_181A37000, v20, v67, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_179;
          }

          backtrace_string = __nw_create_backtrace_string();
          v20 = __nwlog_obj();
          v53 = type;
          v54 = os_log_type_enabled(v20, type);
          if (!backtrace_string)
          {
            if (v54)
            {
              *buf = 136446210;
              v103 = "networkd_privileged_set_agent_on_interface_internal";
              _os_log_impl(&dword_181A37000, v20, v53, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
            }

            goto LABEL_179;
          }

          if (v54)
          {
            *buf = 136446466;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            v104 = 2082;
            *v105 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v53, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
          }
        }

        else
        {
          if (v12 == MEMORY[0x1E69E9E20])
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v52 = gLogObj;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v103 = "networkd_privileged_set_agent_on_interface_internal";
              _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
            }

            goto LABEL_61;
          }

          if (v12 != MEMORY[0x1E69E9E38])
          {
            v14 = MEMORY[0x1865DFA50](v12);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v31 = gLogObj;
            *buf = 136446466;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            v104 = 2082;
            *v105 = v14;
            v16 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v100 = 0;
            if (!__nwlog_fault(v16, &type, &v100))
            {
              goto LABEL_57;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v17 = __nwlog_obj();
              v32 = type;
              if (os_log_type_enabled(v17, type))
              {
                *buf = 136446466;
                v103 = "networkd_privileged_set_agent_on_interface_internal";
                v104 = 2082;
                *v105 = v14;
                _os_log_impl(&dword_181A37000, v17, v32, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
              }

              goto LABEL_56;
            }

            if (v100 != 1)
            {
              v17 = __nwlog_obj();
              v70 = type;
              if (os_log_type_enabled(v17, type))
              {
                *buf = 136446466;
                v103 = "networkd_privileged_set_agent_on_interface_internal";
                v104 = 2082;
                *v105 = v14;
                _os_log_impl(&dword_181A37000, v17, v70, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
              }

              goto LABEL_56;
            }

            v59 = __nw_create_backtrace_string();
            v17 = __nwlog_obj();
            v60 = type;
            v61 = os_log_type_enabled(v17, type);
            if (!v59)
            {
              if (v61)
              {
                *buf = 136446466;
                v103 = "networkd_privileged_set_agent_on_interface_internal";
                v104 = 2082;
                *v105 = v14;
                _os_log_impl(&dword_181A37000, v17, v60, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
              }

              goto LABEL_56;
            }

            if (v61)
            {
              *buf = 136446722;
              v103 = "networkd_privileged_set_agent_on_interface_internal";
              v104 = 2082;
              *v105 = v14;
              *&v105[8] = 2082;
              *&v105[10] = v59;
              _os_log_impl(&dword_181A37000, v17, v60, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v59);
            if (!v16)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v57 = gLogObj;
          *buf = 136446210;
          v103 = "networkd_privileged_set_agent_on_interface_internal";
          v14 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v100 = 0;
          if (!__nwlog_fault(v14, &type, &v100))
          {
            goto LABEL_59;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v20 = __nwlog_obj();
            v58 = type;
            if (os_log_type_enabled(v20, type))
            {
              *buf = 136446210;
              v103 = "networkd_privileged_set_agent_on_interface_internal";
              _os_log_impl(&dword_181A37000, v20, v58, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
            }

LABEL_179:

            goto LABEL_59;
          }

          if (v100 != 1)
          {
            v20 = __nwlog_obj();
            v78 = type;
            if (os_log_type_enabled(v20, type))
            {
              *buf = 136446210;
              v103 = "networkd_privileged_set_agent_on_interface_internal";
              _os_log_impl(&dword_181A37000, v20, v78, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_179;
          }

          backtrace_string = __nw_create_backtrace_string();
          v20 = __nwlog_obj();
          v68 = type;
          v69 = os_log_type_enabled(v20, type);
          if (!backtrace_string)
          {
            if (v69)
            {
              *buf = 136446210;
              v103 = "networkd_privileged_set_agent_on_interface_internal";
              _os_log_impl(&dword_181A37000, v20, v68, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
            }

            goto LABEL_179;
          }

          if (v69)
          {
            *buf = 136446466;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            v104 = 2082;
            *v105 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v68, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
          }
        }

LABEL_30:

        free(backtrace_string);
        if (!v14)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v22 = xpc_dictionary_get_value(v12, networkd_privileged_key_result);
      v23 = v22;
      if (!v22)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v37 = gLogObj;
        *buf = 136446210;
        v103 = "networkd_privileged_set_agent_on_interface_internal";
        v25 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v100 = 0;
        if (!__nwlog_fault(v25, &type, &v100))
        {
          goto LABEL_148;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v38 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            _os_log_impl(&dword_181A37000, v26, v38, "%{public}s received response without result code", buf, 0xCu);
          }

          goto LABEL_147;
        }

        if (v100 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v56 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            _os_log_impl(&dword_181A37000, v26, v56, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_147;
        }

        v47 = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v50 = type;
        v51 = os_log_type_enabled(v26, type);
        if (!v47)
        {
          if (v51)
          {
            *buf = 136446210;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            _os_log_impl(&dword_181A37000, v26, v50, "%{public}s received response without result code, no backtrace", buf, 0xCu);
          }

          goto LABEL_147;
        }

        if (v51)
        {
          *buf = 136446466;
          v103 = "networkd_privileged_set_agent_on_interface_internal";
          v104 = 2082;
          *v105 = v47;
          _os_log_impl(&dword_181A37000, v26, v50, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_82;
      }

      if (object_getClass(v22) != MEMORY[0x1E69E9EB0])
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        *buf = 136446210;
        v103 = "networkd_privileged_set_agent_on_interface_internal";
        v25 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v100 = 0;
        if (!__nwlog_fault(v25, &type, &v100))
        {
          goto LABEL_148;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v27 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s received invalid result type", buf, 0xCu);
          }

LABEL_147:

LABEL_148:
          if (!v25)
          {
LABEL_151:
            v40 = 0;
            goto LABEL_152;
          }

          goto LABEL_149;
        }

        if (v100 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v55 = type;
          if (os_log_type_enabled(v26, type))
          {
            *buf = 136446210;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            _os_log_impl(&dword_181A37000, v26, v55, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_147;
        }

        v47 = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v48 = type;
        v49 = os_log_type_enabled(v26, type);
        if (!v47)
        {
          if (v49)
          {
            *buf = 136446210;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            _os_log_impl(&dword_181A37000, v26, v48, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
          }

          goto LABEL_147;
        }

        if (v49)
        {
          *buf = 136446466;
          v103 = "networkd_privileged_set_agent_on_interface_internal";
          v104 = 2082;
          *v105 = v47;
          _os_log_impl(&dword_181A37000, v26, v48, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_82:

        free(v47);
        if (!v25)
        {
          goto LABEL_151;
        }

LABEL_149:
        v76 = v25;
LABEL_150:
        free(v76);
        goto LABEL_151;
      }

      value = xpc_int64_get_value(v23);
      v44 = value;
      if (!value)
      {
        v40 = 1;
LABEL_152:

        goto LABEL_153;
      }

      if (!(value >> 31))
      {
        v45 = __nwlog_obj();
        v46 = v45;
        if (v44 == 6)
        {
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            v104 = 1024;
            *v105 = 6;
            _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_ERROR, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
          }

          goto LABEL_151;
        }

        *buf = 136446466;
        v103 = "networkd_privileged_set_agent_on_interface_internal";
        v104 = 1024;
        *v105 = v44;
        v64 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v100 = 0;
        if (__nwlog_fault(v64, &type, &v100))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v71 = __nwlog_obj();
            v72 = type;
            if (os_log_type_enabled(v71, type))
            {
              *buf = 136446466;
              v103 = "networkd_privileged_set_agent_on_interface_internal";
              v104 = 1024;
              *v105 = v44;
              _os_log_impl(&dword_181A37000, v71, v72, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
            }
          }

          else if (v100 == 1)
          {
            v79 = __nw_create_backtrace_string();
            v71 = __nwlog_obj();
            v80 = type;
            v81 = os_log_type_enabled(v71, type);
            if (v79)
            {
              if (v81)
              {
                *buf = 136446722;
                v103 = "networkd_privileged_set_agent_on_interface_internal";
                v104 = 1024;
                *v105 = v44;
                *&v105[4] = 2082;
                *&v105[6] = v79;
                _os_log_impl(&dword_181A37000, v71, v80, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v79);
              if (!v64)
              {
                goto LABEL_151;
              }

LABEL_187:
              v76 = v64;
              goto LABEL_150;
            }

            if (v81)
            {
              *buf = 136446466;
              v103 = "networkd_privileged_set_agent_on_interface_internal";
              v104 = 1024;
              *v105 = v44;
              _os_log_impl(&dword_181A37000, v71, v80, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
            }
          }

          else
          {
            v71 = __nwlog_obj();
            v83 = type;
            if (os_log_type_enabled(v71, type))
            {
              *buf = 136446466;
              v103 = "networkd_privileged_set_agent_on_interface_internal";
              v104 = 1024;
              *v105 = v44;
              _os_log_impl(&dword_181A37000, v71, v83, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
            }
          }
        }

LABEL_186:
        if (!v64)
        {
          goto LABEL_151;
        }

        goto LABEL_187;
      }

      v62 = __nwlog_obj();
      v63 = networkd_privileged_result_to_string(v44);
      *buf = 136446722;
      v103 = "networkd_privileged_set_agent_on_interface_internal";
      v104 = 2048;
      *v105 = v44;
      *&v105[8] = 2082;
      *&v105[10] = v63;
      v64 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v100 = 0;
      if (!__nwlog_fault(v64, &type, &v100))
      {
        goto LABEL_186;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v65 = __nwlog_obj();
        v66 = type;
        if (os_log_type_enabled(v65, type))
        {
          *buf = 136446722;
          v103 = "networkd_privileged_set_agent_on_interface_internal";
          v104 = 2048;
          *v105 = v44;
          *&v105[8] = 2082;
          *&v105[10] = v63;
          _os_log_impl(&dword_181A37000, v65, v66, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
        }
      }

      else if (v100 == 1)
      {
        v73 = __nw_create_backtrace_string();
        v65 = __nwlog_obj();
        v74 = type;
        v75 = os_log_type_enabled(v65, type);
        if (v73)
        {
          if (v75)
          {
            *buf = 136446978;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            v104 = 2048;
            *v105 = v44;
            *&v105[8] = 2082;
            *&v105[10] = v63;
            v106 = 2082;
            v107 = v73;
            _os_log_impl(&dword_181A37000, v65, v74, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v73);
          goto LABEL_186;
        }

        if (v75)
        {
          *buf = 136446722;
          v103 = "networkd_privileged_set_agent_on_interface_internal";
          v104 = 2048;
          *v105 = v44;
          *&v105[8] = 2082;
          *&v105[10] = v63;
          _os_log_impl(&dword_181A37000, v65, v74, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        v65 = __nwlog_obj();
        v82 = type;
        if (os_log_type_enabled(v65, type))
        {
          *buf = 136446722;
          v103 = "networkd_privileged_set_agent_on_interface_internal";
          v104 = 2048;
          *v105 = v44;
          *&v105[8] = 2082;
          *&v105[10] = v63;
          _os_log_impl(&dword_181A37000, v65, v82, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_186;
    }

    v88 = __nwlog_obj();
    *buf = 136446210;
    v103 = "networkd_privileged_set_agent_on_interface_internal";
    v89 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (__nwlog_fault(v89, &type, &v100))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v90 = __nwlog_obj();
        v91 = type;
        if (os_log_type_enabled(v90, type))
        {
          *buf = 136446210;
          v103 = "networkd_privileged_set_agent_on_interface_internal";
          _os_log_impl(&dword_181A37000, v90, v91, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
        }
      }

      else if (v100 == 1)
      {
        v95 = __nw_create_backtrace_string();
        v90 = __nwlog_obj();
        v96 = type;
        v97 = os_log_type_enabled(v90, type);
        if (v95)
        {
          if (v97)
          {
            *buf = 136446466;
            v103 = "networkd_privileged_set_agent_on_interface_internal";
            v104 = 2082;
            *v105 = v95;
            _os_log_impl(&dword_181A37000, v90, v96, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v95);
          goto LABEL_223;
        }

        if (v97)
        {
          *buf = 136446210;
          v103 = "networkd_privileged_set_agent_on_interface_internal";
          _os_log_impl(&dword_181A37000, v90, v96, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v90 = __nwlog_obj();
        v99 = type;
        if (os_log_type_enabled(v90, type))
        {
          *buf = 136446210;
          v103 = "networkd_privileged_set_agent_on_interface_internal";
          _os_log_impl(&dword_181A37000, v90, v99, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_223:
    if (v89)
    {
      free(v89);
    }

    v40 = 0;
    goto LABEL_154;
  }

  v84 = __nwlog_obj();
  *buf = 136446210;
  v103 = "networkd_privileged_set_agent_on_interface_internal";
  v85 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v100 = 0;
  if (__nwlog_fault(v85, &type, &v100))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v86 = __nwlog_obj();
      v87 = type;
      if (os_log_type_enabled(v86, type))
      {
        *buf = 136446210;
        v103 = "networkd_privileged_set_agent_on_interface_internal";
        _os_log_impl(&dword_181A37000, v86, v87, "%{public}s called with null interface_name", buf, 0xCu);
      }
    }

    else if (v100 == 1)
    {
      v92 = __nw_create_backtrace_string();
      v86 = __nwlog_obj();
      v93 = type;
      v94 = os_log_type_enabled(v86, type);
      if (v92)
      {
        if (v94)
        {
          *buf = 136446466;
          v103 = "networkd_privileged_set_agent_on_interface_internal";
          v104 = 2082;
          *v105 = v92;
          _os_log_impl(&dword_181A37000, v86, v93, "%{public}s called with null interface_name, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v92);
        goto LABEL_217;
      }

      if (v94)
      {
        *buf = 136446210;
        v103 = "networkd_privileged_set_agent_on_interface_internal";
        _os_log_impl(&dword_181A37000, v86, v93, "%{public}s called with null interface_name, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v86 = __nwlog_obj();
      v98 = type;
      if (os_log_type_enabled(v86, type))
      {
        *buf = 136446210;
        v103 = "networkd_privileged_set_agent_on_interface_internal";
        _os_log_impl(&dword_181A37000, v86, v98, "%{public}s called with null interface_name, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_217:
  if (v85)
  {
    free(v85);
  }

  return 0;
}

uint64_t networkd_privileged_setup_feth_pair(const char *a1, const char *a2)
{
  v108 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v78 = __nwlog_obj();
    *buf = 136446210;
    v103 = "networkd_privileged_setup_feth_pair";
    v79 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v79, &type, &v100))
    {
      goto LABEL_228;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v80 = __nwlog_obj();
      v81 = type;
      if (os_log_type_enabled(v80, type))
      {
        *buf = 136446210;
        v103 = "networkd_privileged_setup_feth_pair";
        _os_log_impl(&dword_181A37000, v80, v81, "%{public}s called with null ifname1", buf, 0xCu);
      }
    }

    else if (v100 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v80 = __nwlog_obj();
      v89 = type;
      v90 = os_log_type_enabled(v80, type);
      if (backtrace_string)
      {
        if (v90)
        {
          *buf = 136446466;
          v103 = "networkd_privileged_setup_feth_pair";
          v104 = 2082;
          *v105 = backtrace_string;
          _os_log_impl(&dword_181A37000, v80, v89, "%{public}s called with null ifname1, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v79)
        {
          return 0;
        }

        goto LABEL_229;
      }

      if (v90)
      {
        *buf = 136446210;
        v103 = "networkd_privileged_setup_feth_pair";
        _os_log_impl(&dword_181A37000, v80, v89, "%{public}s called with null ifname1, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v80 = __nwlog_obj();
      v97 = type;
      if (os_log_type_enabled(v80, type))
      {
        *buf = 136446210;
        v103 = "networkd_privileged_setup_feth_pair";
        _os_log_impl(&dword_181A37000, v80, v97, "%{public}s called with null ifname1, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_227;
  }

  if (!a2)
  {
    v82 = __nwlog_obj();
    *buf = 136446210;
    v103 = "networkd_privileged_setup_feth_pair";
    v79 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v79, &type, &v100))
    {
      goto LABEL_228;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v80 = __nwlog_obj();
      v83 = type;
      if (os_log_type_enabled(v80, type))
      {
        *buf = 136446210;
        v103 = "networkd_privileged_setup_feth_pair";
        _os_log_impl(&dword_181A37000, v80, v83, "%{public}s called with null ifname2", buf, 0xCu);
      }
    }

    else if (v100 == 1)
    {
      v91 = __nw_create_backtrace_string();
      v80 = __nwlog_obj();
      v92 = type;
      v93 = os_log_type_enabled(v80, type);
      if (v91)
      {
        if (v93)
        {
          *buf = 136446466;
          v103 = "networkd_privileged_setup_feth_pair";
          v104 = 2082;
          *v105 = v91;
          _os_log_impl(&dword_181A37000, v80, v92, "%{public}s called with null ifname2, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v91);
LABEL_228:
        if (!v79)
        {
          return 0;
        }

LABEL_229:
        free(v79);
        return 0;
      }

      if (v93)
      {
        *buf = 136446210;
        v103 = "networkd_privileged_setup_feth_pair";
        _os_log_impl(&dword_181A37000, v80, v92, "%{public}s called with null ifname2, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v80 = __nwlog_obj();
      v98 = type;
      if (os_log_type_enabled(v80, type))
      {
        *buf = 136446210;
        v103 = "networkd_privileged_setup_feth_pair";
        _os_log_impl(&dword_181A37000, v80, v98, "%{public}s called with null ifname2, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_227:

    goto LABEL_228;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (!v4)
  {
    v84 = __nwlog_obj();
    *buf = 136446210;
    v103 = "networkd_privileged_setup_feth_pair";
    v85 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (__nwlog_fault(v85, &type, &v100))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v86 = __nwlog_obj();
        v87 = type;
        if (os_log_type_enabled(v86, type))
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v86, v87, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
        }
      }

      else if (v100 == 1)
      {
        v94 = __nw_create_backtrace_string();
        v86 = __nwlog_obj();
        v95 = type;
        v96 = os_log_type_enabled(v86, type);
        if (v94)
        {
          if (v96)
          {
            *buf = 136446466;
            v103 = "networkd_privileged_setup_feth_pair";
            v104 = 2082;
            *v105 = v94;
            _os_log_impl(&dword_181A37000, v86, v95, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v94);
          goto LABEL_234;
        }

        if (v96)
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v86, v95, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v86 = __nwlog_obj();
        v99 = type;
        if (os_log_type_enabled(v86, type))
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v86, v99, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_234:
    if (v85)
    {
      free(v85);
    }

    v35 = 0;
    goto LABEL_154;
  }

  xpc_dictionary_set_uint64(v4, networkd_privileged_key_type, 0x11uLL);
  xpc_dictionary_set_string(v5, networkd_privileged_key_interface_name, a1);
  xpc_dictionary_set_string(v5, networkd_privileged_key_second_interface_name, a2);
  v6 = networkd_privileged_send_sync_inner("networkd_privileged_setup_feth_pair", v5);
  v7 = v6;
  if (!v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    *buf = 136446210;
    v103 = "networkd_privileged_setup_feth_pair";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v9, &type, &v100))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v103 = "networkd_privileged_setup_feth_pair";
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s received NULL response", buf, 0xCu);
      }

      goto LABEL_173;
    }

    if (v100 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v31 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v103 = "networkd_privileged_setup_feth_pair";
        _os_log_impl(&dword_181A37000, v15, v31, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_173;
    }

    v23 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    v24 = type;
    v25 = os_log_type_enabled(v15, type);
    if (!v23)
    {
      if (v25)
      {
        *buf = 136446210;
        v103 = "networkd_privileged_setup_feth_pair";
        _os_log_impl(&dword_181A37000, v15, v24, "%{public}s received NULL response, no backtrace", buf, 0xCu);
      }

      goto LABEL_173;
    }

    if (v25)
    {
      *buf = 136446466;
      v103 = "networkd_privileged_setup_feth_pair";
      v104 = 2082;
      *v105 = v23;
      _os_log_impl(&dword_181A37000, v15, v24, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_28;
  }

  Class = object_getClass(v6);
  if (Class == MEMORY[0x1E69E9E80])
  {
    v17 = xpc_dictionary_get_value(v7, networkd_privileged_key_result);
    v18 = v17;
    if (!v17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      *buf = 136446210;
      v103 = "networkd_privileged_setup_feth_pair";
      v20 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v100 = 0;
      if (!__nwlog_fault(v20, &type, &v100))
      {
        goto LABEL_148;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v33 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v21, v33, "%{public}s received response without result code", buf, 0xCu);
        }

        goto LABEL_147;
      }

      if (v100 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v53 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v21, v53, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_147;
      }

      v44 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v47 = type;
      v48 = os_log_type_enabled(v21, type);
      if (!v44)
      {
        if (v48)
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v21, v47, "%{public}s received response without result code, no backtrace", buf, 0xCu);
        }

        goto LABEL_147;
      }

      if (v48)
      {
        *buf = 136446466;
        v103 = "networkd_privileged_setup_feth_pair";
        v104 = 2082;
        *v105 = v44;
        _os_log_impl(&dword_181A37000, v21, v47, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_81;
    }

    if (object_getClass(v17) != MEMORY[0x1E69E9EB0])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      *buf = 136446210;
      v103 = "networkd_privileged_setup_feth_pair";
      v20 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v100 = 0;
      if (!__nwlog_fault(v20, &type, &v100))
      {
        goto LABEL_148;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s received invalid result type", buf, 0xCu);
        }

LABEL_147:

LABEL_148:
        if (!v20)
        {
LABEL_151:
          v35 = 0;
          goto LABEL_152;
        }

        goto LABEL_149;
      }

      if (v100 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v52 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v21, v52, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_147;
      }

      v44 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v45 = type;
      v46 = os_log_type_enabled(v21, type);
      if (!v44)
      {
        if (v46)
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v21, v45, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
        }

        goto LABEL_147;
      }

      if (v46)
      {
        *buf = 136446466;
        v103 = "networkd_privileged_setup_feth_pair";
        v104 = 2082;
        *v105 = v44;
        _os_log_impl(&dword_181A37000, v21, v45, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_81:

      free(v44);
      if (!v20)
      {
        goto LABEL_151;
      }

LABEL_149:
      v73 = v20;
LABEL_150:
      free(v73);
      goto LABEL_151;
    }

    value = xpc_int64_get_value(v18);
    v39 = value;
    if (!value)
    {
      v35 = 1;
LABEL_152:

      goto LABEL_153;
    }

    if (!(value >> 31))
    {
      v40 = __nwlog_obj();
      *buf = 136446466;
      v103 = "networkd_privileged_setup_feth_pair";
      v104 = 1024;
      *v105 = v39;
      v41 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v100 = 0;
      if (__nwlog_fault(v41, &type, &v100))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v42 = __nwlog_obj();
          v43 = type;
          if (os_log_type_enabled(v42, type))
          {
            *buf = 136446466;
            v103 = "networkd_privileged_setup_feth_pair";
            v104 = 1024;
            *v105 = v39;
            _os_log_impl(&dword_181A37000, v42, v43, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v100 == 1)
        {
          v67 = __nw_create_backtrace_string();
          v42 = __nwlog_obj();
          v68 = type;
          v69 = os_log_type_enabled(v42, type);
          if (v67)
          {
            if (v69)
            {
              *buf = 136446722;
              v103 = "networkd_privileged_setup_feth_pair";
              v104 = 1024;
              *v105 = v39;
              *&v105[4] = 2082;
              *&v105[6] = v67;
              _os_log_impl(&dword_181A37000, v42, v68, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v67);
            if (!v41)
            {
              goto LABEL_151;
            }

LABEL_181:
            v73 = v41;
            goto LABEL_150;
          }

          if (v69)
          {
            *buf = 136446466;
            v103 = "networkd_privileged_setup_feth_pair";
            v104 = 1024;
            *v105 = v39;
            _os_log_impl(&dword_181A37000, v42, v68, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v42 = __nwlog_obj();
          v76 = type;
          if (os_log_type_enabled(v42, type))
          {
            *buf = 136446466;
            v103 = "networkd_privileged_setup_feth_pair";
            v104 = 1024;
            *v105 = v39;
            _os_log_impl(&dword_181A37000, v42, v76, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_180:
      if (!v41)
      {
        goto LABEL_151;
      }

      goto LABEL_181;
    }

    v59 = __nwlog_obj();
    v60 = networkd_privileged_result_to_string(v39);
    *buf = 136446722;
    v103 = "networkd_privileged_setup_feth_pair";
    v104 = 2048;
    *v105 = v39;
    *&v105[8] = 2082;
    *&v105[10] = v60;
    v41 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v100 = 0;
    if (!__nwlog_fault(v41, &type, &v100))
    {
      goto LABEL_180;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v61 = __nwlog_obj();
      v62 = type;
      if (os_log_type_enabled(v61, type))
      {
        *buf = 136446722;
        v103 = "networkd_privileged_setup_feth_pair";
        v104 = 2048;
        *v105 = v39;
        *&v105[8] = 2082;
        *&v105[10] = v60;
        _os_log_impl(&dword_181A37000, v61, v62, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
      }
    }

    else if (v100 == 1)
    {
      v70 = __nw_create_backtrace_string();
      v61 = __nwlog_obj();
      v71 = type;
      v72 = os_log_type_enabled(v61, type);
      if (v70)
      {
        if (v72)
        {
          *buf = 136446978;
          v103 = "networkd_privileged_setup_feth_pair";
          v104 = 2048;
          *v105 = v39;
          *&v105[8] = 2082;
          *&v105[10] = v60;
          v106 = 2082;
          v107 = v70;
          _os_log_impl(&dword_181A37000, v61, v71, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v70);
        goto LABEL_180;
      }

      if (v72)
      {
        *buf = 136446722;
        v103 = "networkd_privileged_setup_feth_pair";
        v104 = 2048;
        *v105 = v39;
        *&v105[8] = 2082;
        *&v105[10] = v60;
        _os_log_impl(&dword_181A37000, v61, v71, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v61 = __nwlog_obj();
      v77 = type;
      if (os_log_type_enabled(v61, type))
      {
        *buf = 136446722;
        v103 = "networkd_privileged_setup_feth_pair";
        v104 = 2048;
        *v105 = v39;
        *&v105[8] = 2082;
        *&v105[10] = v60;
        _os_log_impl(&dword_181A37000, v61, v77, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_180;
  }

  if (Class == MEMORY[0x1E69E9E98])
  {
    if (v7 == MEMORY[0x1E69E9E18])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      *buf = 136446210;
      v103 = "networkd_privileged_setup_feth_pair";
      v9 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v100 = 0;
      if (!__nwlog_fault(v9, &type, &v100))
      {
        goto LABEL_57;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v37 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v15, v37, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
        }

        goto LABEL_173;
      }

      if (v100 != 1)
      {
        v15 = __nwlog_obj();
        v63 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v15, v63, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_173;
      }

      v23 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v50 = type;
      v51 = os_log_type_enabled(v15, type);
      if (!v23)
      {
        if (v51)
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v15, v50, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
        }

        goto LABEL_173;
      }

      if (v51)
      {
        *buf = 136446466;
        v103 = "networkd_privileged_setup_feth_pair";
        v104 = 2082;
        *v105 = v23;
        _os_log_impl(&dword_181A37000, v15, v50, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      if (v7 == MEMORY[0x1E69E9E20])
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v49 = gLogObj;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
        }

        goto LABEL_59;
      }

      if (v7 != MEMORY[0x1E69E9E38])
      {
        v9 = MEMORY[0x1865DFA50](v7);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        *buf = 136446466;
        v103 = "networkd_privileged_setup_feth_pair";
        v104 = 2082;
        *v105 = v9;
        v11 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v100 = 0;
        if (!__nwlog_fault(v11, &type, &v100))
        {
          goto LABEL_55;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v27 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136446466;
            v103 = "networkd_privileged_setup_feth_pair";
            v104 = 2082;
            *v105 = v9;
            _os_log_impl(&dword_181A37000, v12, v27, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
          }

          goto LABEL_54;
        }

        if (v100 != 1)
        {
          v12 = __nwlog_obj();
          v66 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136446466;
            v103 = "networkd_privileged_setup_feth_pair";
            v104 = 2082;
            *v105 = v9;
            _os_log_impl(&dword_181A37000, v12, v66, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_54;
        }

        v56 = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v57 = type;
        v58 = os_log_type_enabled(v12, type);
        if (!v56)
        {
          if (v58)
          {
            *buf = 136446466;
            v103 = "networkd_privileged_setup_feth_pair";
            v104 = 2082;
            *v105 = v9;
            _os_log_impl(&dword_181A37000, v12, v57, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
          }

          goto LABEL_54;
        }

        if (v58)
        {
          *buf = 136446722;
          v103 = "networkd_privileged_setup_feth_pair";
          v104 = 2082;
          *v105 = v9;
          *&v105[8] = 2082;
          *&v105[10] = v56;
          _os_log_impl(&dword_181A37000, v12, v57, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v56);
        if (!v11)
        {
          goto LABEL_57;
        }

LABEL_56:
        free(v11);
        goto LABEL_57;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v54 = gLogObj;
      *buf = 136446210;
      v103 = "networkd_privileged_setup_feth_pair";
      v9 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v100 = 0;
      if (!__nwlog_fault(v9, &type, &v100))
      {
        goto LABEL_57;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v55 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v15, v55, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
        }

LABEL_173:

        goto LABEL_57;
      }

      if (v100 != 1)
      {
        v15 = __nwlog_obj();
        v75 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v15, v75, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_173;
      }

      v23 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v64 = type;
      v65 = os_log_type_enabled(v15, type);
      if (!v23)
      {
        if (v65)
        {
          *buf = 136446210;
          v103 = "networkd_privileged_setup_feth_pair";
          _os_log_impl(&dword_181A37000, v15, v64, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
        }

        goto LABEL_173;
      }

      if (v65)
      {
        *buf = 136446466;
        v103 = "networkd_privileged_setup_feth_pair";
        v104 = 2082;
        *v105 = v23;
        _os_log_impl(&dword_181A37000, v15, v64, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

LABEL_28:

    free(v23);
    if (!v9)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v9 = MEMORY[0x1865DFA50](v7);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  *buf = 136446466;
  v103 = "networkd_privileged_setup_feth_pair";
  v104 = 2082;
  *v105 = v9;
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v100 = 0;
  if (!__nwlog_fault(v11, &type, &v100))
  {
    goto LABEL_55;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v13 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446466;
      v103 = "networkd_privileged_setup_feth_pair";
      v104 = 2082;
      *v105 = v9;
      _os_log_impl(&dword_181A37000, v12, v13, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
    }

LABEL_54:

LABEL_55:
    if (!v11)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (v100 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v34 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446466;
      v103 = "networkd_privileged_setup_feth_pair";
      v104 = 2082;
      *v105 = v9;
      _os_log_impl(&dword_181A37000, v12, v34, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
    }

    goto LABEL_54;
  }

  v28 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  v29 = type;
  v30 = os_log_type_enabled(v12, type);
  if (!v28)
  {
    if (v30)
    {
      *buf = 136446466;
      v103 = "networkd_privileged_setup_feth_pair";
      v104 = 2082;
      *v105 = v9;
      _os_log_impl(&dword_181A37000, v12, v29, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if (v30)
  {
    *buf = 136446722;
    v103 = "networkd_privileged_setup_feth_pair";
    v104 = 2082;
    *v105 = v9;
    *&v105[8] = 2082;
    *&v105[10] = v28;
    _os_log_impl(&dword_181A37000, v12, v29, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v28);
  if (v11)
  {
    goto LABEL_56;
  }

LABEL_57:
  if (v9)
  {
LABEL_58:
    free(v9);
  }

LABEL_59:
  v35 = 0;
LABEL_153:

LABEL_154:
  return v35;
}

void networkd_privileged_teardown_feth_pair(const char *a1, const char *a2)
{
  v106 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v76 = __nwlog_obj();
    *buf = 136446210;
    v101 = "networkd_privileged_teardown_feth_pair";
    v77 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (!__nwlog_fault(v77, &type, &v98))
    {
      goto LABEL_225;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v78 = __nwlog_obj();
      v79 = type;
      if (os_log_type_enabled(v78, type))
      {
        *buf = 136446210;
        v101 = "networkd_privileged_teardown_feth_pair";
        _os_log_impl(&dword_181A37000, v78, v79, "%{public}s called with null ifname1", buf, 0xCu);
      }
    }

    else if (v98 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v78 = __nwlog_obj();
      v87 = type;
      v88 = os_log_type_enabled(v78, type);
      if (backtrace_string)
      {
        if (v88)
        {
          *buf = 136446466;
          v101 = "networkd_privileged_teardown_feth_pair";
          v102 = 2082;
          *v103 = backtrace_string;
          _os_log_impl(&dword_181A37000, v78, v87, "%{public}s called with null ifname1, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_225;
      }

      if (v88)
      {
        *buf = 136446210;
        v101 = "networkd_privileged_teardown_feth_pair";
        _os_log_impl(&dword_181A37000, v78, v87, "%{public}s called with null ifname1, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v78 = __nwlog_obj();
      v95 = type;
      if (os_log_type_enabled(v78, type))
      {
        *buf = 136446210;
        v101 = "networkd_privileged_teardown_feth_pair";
        _os_log_impl(&dword_181A37000, v78, v95, "%{public}s called with null ifname1, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_224:

    goto LABEL_225;
  }

  if (a2)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    v5 = v4;
    if (v4)
    {
      xpc_dictionary_set_uint64(v4, networkd_privileged_key_type, 0x12uLL);
      xpc_dictionary_set_string(v5, networkd_privileged_key_interface_name, a1);
      xpc_dictionary_set_string(v5, networkd_privileged_key_second_interface_name, a2);
      v6 = networkd_privileged_send_sync_inner("networkd_privileged_teardown_feth_pair", v5);
      v7 = v6;
      if (!v6)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        *buf = 136446210;
        v101 = "networkd_privileged_teardown_feth_pair";
        v9 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v98 = 0;
        if (!__nwlog_fault(v9, &type, &v98))
        {
          goto LABEL_57;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v16 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v101 = "networkd_privileged_teardown_feth_pair";
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s received NULL response", buf, 0xCu);
          }

          goto LABEL_170;
        }

        if (v98 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v31 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v101 = "networkd_privileged_teardown_feth_pair";
            _os_log_impl(&dword_181A37000, v15, v31, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_170;
        }

        v23 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v24 = type;
        v25 = os_log_type_enabled(v15, type);
        if (!v23)
        {
          if (v25)
          {
            *buf = 136446210;
            v101 = "networkd_privileged_teardown_feth_pair";
            _os_log_impl(&dword_181A37000, v15, v24, "%{public}s received NULL response, no backtrace", buf, 0xCu);
          }

          goto LABEL_170;
        }

        if (v25)
        {
          *buf = 136446466;
          v101 = "networkd_privileged_teardown_feth_pair";
          v102 = 2082;
          *v103 = v23;
          _os_log_impl(&dword_181A37000, v15, v24, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_28;
      }

      Class = object_getClass(v6);
      if (Class != MEMORY[0x1E69E9E80])
      {
        if (Class != MEMORY[0x1E69E9E98])
        {
          v9 = MEMORY[0x1865DFA50](v7);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          *buf = 136446466;
          v101 = "networkd_privileged_teardown_feth_pair";
          v102 = 2082;
          *v103 = v9;
          v11 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v98 = 0;
          if (!__nwlog_fault(v11, &type, &v98))
          {
            goto LABEL_55;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v12 = gLogObj;
            v13 = type;
            if (os_log_type_enabled(v12, type))
            {
              *buf = 136446466;
              v101 = "networkd_privileged_teardown_feth_pair";
              v102 = 2082;
              *v103 = v9;
              _os_log_impl(&dword_181A37000, v12, v13, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
            }

LABEL_54:

LABEL_55:
            if (!v11)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          }

          if (v98 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v12 = gLogObj;
            v34 = type;
            if (os_log_type_enabled(v12, type))
            {
              *buf = 136446466;
              v101 = "networkd_privileged_teardown_feth_pair";
              v102 = 2082;
              *v103 = v9;
              _os_log_impl(&dword_181A37000, v12, v34, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
            }

            goto LABEL_54;
          }

          v28 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          v29 = type;
          v30 = os_log_type_enabled(v12, type);
          if (!v28)
          {
            if (v30)
            {
              *buf = 136446466;
              v101 = "networkd_privileged_teardown_feth_pair";
              v102 = 2082;
              *v103 = v9;
              _os_log_impl(&dword_181A37000, v12, v29, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
            }

            goto LABEL_54;
          }

          if (v30)
          {
            *buf = 136446722;
            v101 = "networkd_privileged_teardown_feth_pair";
            v102 = 2082;
            *v103 = v9;
            *&v103[8] = 2082;
            *&v103[10] = v28;
            _os_log_impl(&dword_181A37000, v12, v29, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v28);
          if (!v11)
          {
LABEL_57:
            if (!v9)
            {
LABEL_150:

LABEL_151:
              return;
            }

LABEL_58:
            free(v9);
            goto LABEL_150;
          }

LABEL_56:
          free(v11);
          goto LABEL_57;
        }

        if (v7 == MEMORY[0x1E69E9E18])
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v35 = gLogObj;
          *buf = 136446210;
          v101 = "networkd_privileged_teardown_feth_pair";
          v9 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v98 = 0;
          if (!__nwlog_fault(v9, &type, &v98))
          {
            goto LABEL_57;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v15 = gLogObj;
            v36 = type;
            if (os_log_type_enabled(v15, type))
            {
              *buf = 136446210;
              v101 = "networkd_privileged_teardown_feth_pair";
              _os_log_impl(&dword_181A37000, v15, v36, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
            }

            goto LABEL_170;
          }

          if (v98 != 1)
          {
            v15 = __nwlog_obj();
            v62 = type;
            if (os_log_type_enabled(v15, type))
            {
              *buf = 136446210;
              v101 = "networkd_privileged_teardown_feth_pair";
              _os_log_impl(&dword_181A37000, v15, v62, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_170;
          }

          v23 = __nw_create_backtrace_string();
          v15 = __nwlog_obj();
          v49 = type;
          v50 = os_log_type_enabled(v15, type);
          if (!v23)
          {
            if (v50)
            {
              *buf = 136446210;
              v101 = "networkd_privileged_teardown_feth_pair";
              _os_log_impl(&dword_181A37000, v15, v49, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
            }

            goto LABEL_170;
          }

          if (v50)
          {
            *buf = 136446466;
            v101 = "networkd_privileged_teardown_feth_pair";
            v102 = 2082;
            *v103 = v23;
            _os_log_impl(&dword_181A37000, v15, v49, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
          }
        }

        else
        {
          if (v7 == MEMORY[0x1E69E9E20])
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v48 = gLogObj;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v101 = "networkd_privileged_teardown_feth_pair";
              _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
            }

            goto LABEL_150;
          }

          if (v7 != MEMORY[0x1E69E9E38])
          {
            v9 = MEMORY[0x1865DFA50](v7);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v26 = gLogObj;
            *buf = 136446466;
            v101 = "networkd_privileged_teardown_feth_pair";
            v102 = 2082;
            *v103 = v9;
            v11 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v98 = 0;
            if (!__nwlog_fault(v11, &type, &v98))
            {
              goto LABEL_55;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v12 = __nwlog_obj();
              v27 = type;
              if (os_log_type_enabled(v12, type))
              {
                *buf = 136446466;
                v101 = "networkd_privileged_teardown_feth_pair";
                v102 = 2082;
                *v103 = v9;
                _os_log_impl(&dword_181A37000, v12, v27, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
              }

              goto LABEL_54;
            }

            if (v98 != 1)
            {
              v12 = __nwlog_obj();
              v65 = type;
              if (os_log_type_enabled(v12, type))
              {
                *buf = 136446466;
                v101 = "networkd_privileged_teardown_feth_pair";
                v102 = 2082;
                *v103 = v9;
                _os_log_impl(&dword_181A37000, v12, v65, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
              }

              goto LABEL_54;
            }

            v55 = __nw_create_backtrace_string();
            v12 = __nwlog_obj();
            v56 = type;
            v57 = os_log_type_enabled(v12, type);
            if (!v55)
            {
              if (v57)
              {
                *buf = 136446466;
                v101 = "networkd_privileged_teardown_feth_pair";
                v102 = 2082;
                *v103 = v9;
                _os_log_impl(&dword_181A37000, v12, v56, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
              }

              goto LABEL_54;
            }

            if (v57)
            {
              *buf = 136446722;
              v101 = "networkd_privileged_teardown_feth_pair";
              v102 = 2082;
              *v103 = v9;
              *&v103[8] = 2082;
              *&v103[10] = v55;
              _os_log_impl(&dword_181A37000, v12, v56, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v55);
            if (!v11)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v53 = gLogObj;
          *buf = 136446210;
          v101 = "networkd_privileged_teardown_feth_pair";
          v9 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v98 = 0;
          if (!__nwlog_fault(v9, &type, &v98))
          {
            goto LABEL_57;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v15 = __nwlog_obj();
            v54 = type;
            if (os_log_type_enabled(v15, type))
            {
              *buf = 136446210;
              v101 = "networkd_privileged_teardown_feth_pair";
              _os_log_impl(&dword_181A37000, v15, v54, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
            }

LABEL_170:

            goto LABEL_57;
          }

          if (v98 != 1)
          {
            v15 = __nwlog_obj();
            v73 = type;
            if (os_log_type_enabled(v15, type))
            {
              *buf = 136446210;
              v101 = "networkd_privileged_teardown_feth_pair";
              _os_log_impl(&dword_181A37000, v15, v73, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_170;
          }

          v23 = __nw_create_backtrace_string();
          v15 = __nwlog_obj();
          v63 = type;
          v64 = os_log_type_enabled(v15, type);
          if (!v23)
          {
            if (v64)
            {
              *buf = 136446210;
              v101 = "networkd_privileged_teardown_feth_pair";
              _os_log_impl(&dword_181A37000, v15, v63, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
            }

            goto LABEL_170;
          }

          if (v64)
          {
            *buf = 136446466;
            v101 = "networkd_privileged_teardown_feth_pair";
            v102 = 2082;
            *v103 = v23;
            _os_log_impl(&dword_181A37000, v15, v63, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
          }
        }

LABEL_28:

        free(v23);
        if (!v9)
        {
          goto LABEL_150;
        }

        goto LABEL_58;
      }

      v17 = xpc_dictionary_get_value(v7, networkd_privileged_key_result);
      v18 = v17;
      if (!v17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        *buf = 136446210;
        v101 = "networkd_privileged_teardown_feth_pair";
        v20 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v98 = 0;
        if (!__nwlog_fault(v20, &type, &v98))
        {
          goto LABEL_146;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v33 = type;
          if (os_log_type_enabled(v21, type))
          {
            *buf = 136446210;
            v101 = "networkd_privileged_teardown_feth_pair";
            _os_log_impl(&dword_181A37000, v21, v33, "%{public}s received response without result code", buf, 0xCu);
          }

          goto LABEL_145;
        }

        if (v98 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v52 = type;
          if (os_log_type_enabled(v21, type))
          {
            *buf = 136446210;
            v101 = "networkd_privileged_teardown_feth_pair";
            _os_log_impl(&dword_181A37000, v21, v52, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_145;
        }

        v43 = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v46 = type;
        v47 = os_log_type_enabled(v21, type);
        if (!v43)
        {
          if (v47)
          {
            *buf = 136446210;
            v101 = "networkd_privileged_teardown_feth_pair";
            _os_log_impl(&dword_181A37000, v21, v46, "%{public}s received response without result code, no backtrace", buf, 0xCu);
          }

          goto LABEL_145;
        }

        if (v47)
        {
          *buf = 136446466;
          v101 = "networkd_privileged_teardown_feth_pair";
          v102 = 2082;
          *v103 = v43;
          _os_log_impl(&dword_181A37000, v21, v46, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_80;
      }

      if (object_getClass(v17) != MEMORY[0x1E69E9EB0])
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        *buf = 136446210;
        v101 = "networkd_privileged_teardown_feth_pair";
        v20 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v98 = 0;
        if (!__nwlog_fault(v20, &type, &v98))
        {
          goto LABEL_146;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v22 = type;
          if (os_log_type_enabled(v21, type))
          {
            *buf = 136446210;
            v101 = "networkd_privileged_teardown_feth_pair";
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s received invalid result type", buf, 0xCu);
          }

LABEL_145:

LABEL_146:
          if (v20)
          {
LABEL_147:
            v72 = v20;
LABEL_148:
            free(v72);
          }

LABEL_149:

          goto LABEL_150;
        }

        if (v98 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v51 = type;
          if (os_log_type_enabled(v21, type))
          {
            *buf = 136446210;
            v101 = "networkd_privileged_teardown_feth_pair";
            _os_log_impl(&dword_181A37000, v21, v51, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_145;
        }

        v43 = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v44 = type;
        v45 = os_log_type_enabled(v21, type);
        if (!v43)
        {
          if (v45)
          {
            *buf = 136446210;
            v101 = "networkd_privileged_teardown_feth_pair";
            _os_log_impl(&dword_181A37000, v21, v44, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
          }

          goto LABEL_145;
        }

        if (v45)
        {
          *buf = 136446466;
          v101 = "networkd_privileged_teardown_feth_pair";
          v102 = 2082;
          *v103 = v43;
          _os_log_impl(&dword_181A37000, v21, v44, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_80:

        free(v43);
        if (!v20)
        {
          goto LABEL_149;
        }

        goto LABEL_147;
      }

      value = xpc_int64_get_value(v18);
      v38 = value;
      if (!value)
      {
        goto LABEL_149;
      }

      if (!(value >> 31))
      {
        v39 = __nwlog_obj();
        *buf = 136446466;
        v101 = "networkd_privileged_teardown_feth_pair";
        v102 = 1024;
        *v103 = v38;
        v40 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v98 = 0;
        if (__nwlog_fault(v40, &type, &v98))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v41 = __nwlog_obj();
            v42 = type;
            if (os_log_type_enabled(v41, type))
            {
              *buf = 136446466;
              v101 = "networkd_privileged_teardown_feth_pair";
              v102 = 1024;
              *v103 = v38;
              _os_log_impl(&dword_181A37000, v41, v42, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
            }
          }

          else if (v98 == 1)
          {
            v66 = __nw_create_backtrace_string();
            v41 = __nwlog_obj();
            v67 = type;
            v68 = os_log_type_enabled(v41, type);
            if (v66)
            {
              if (v68)
              {
                *buf = 136446722;
                v101 = "networkd_privileged_teardown_feth_pair";
                v102 = 1024;
                *v103 = v38;
                *&v103[4] = 2082;
                *&v103[6] = v66;
                _os_log_impl(&dword_181A37000, v41, v67, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v66);
              if (!v40)
              {
                goto LABEL_149;
              }

LABEL_178:
              v72 = v40;
              goto LABEL_148;
            }

            if (v68)
            {
              *buf = 136446466;
              v101 = "networkd_privileged_teardown_feth_pair";
              v102 = 1024;
              *v103 = v38;
              _os_log_impl(&dword_181A37000, v41, v67, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
            }
          }

          else
          {
            v41 = __nwlog_obj();
            v74 = type;
            if (os_log_type_enabled(v41, type))
            {
              *buf = 136446466;
              v101 = "networkd_privileged_teardown_feth_pair";
              v102 = 1024;
              *v103 = v38;
              _os_log_impl(&dword_181A37000, v41, v74, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
            }
          }
        }

LABEL_177:
        if (!v40)
        {
          goto LABEL_149;
        }

        goto LABEL_178;
      }

      v58 = __nwlog_obj();
      v59 = networkd_privileged_result_to_string(v38);
      *buf = 136446722;
      v101 = "networkd_privileged_teardown_feth_pair";
      v102 = 2048;
      *v103 = v38;
      *&v103[8] = 2082;
      *&v103[10] = v59;
      v40 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v98 = 0;
      if (!__nwlog_fault(v40, &type, &v98))
      {
        goto LABEL_177;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v60 = __nwlog_obj();
        v61 = type;
        if (os_log_type_enabled(v60, type))
        {
          *buf = 136446722;
          v101 = "networkd_privileged_teardown_feth_pair";
          v102 = 2048;
          *v103 = v38;
          *&v103[8] = 2082;
          *&v103[10] = v59;
          _os_log_impl(&dword_181A37000, v60, v61, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
        }
      }

      else if (v98 == 1)
      {
        v69 = __nw_create_backtrace_string();
        v60 = __nwlog_obj();
        v70 = type;
        v71 = os_log_type_enabled(v60, type);
        if (v69)
        {
          if (v71)
          {
            *buf = 136446978;
            v101 = "networkd_privileged_teardown_feth_pair";
            v102 = 2048;
            *v103 = v38;
            *&v103[8] = 2082;
            *&v103[10] = v59;
            v104 = 2082;
            v105 = v69;
            _os_log_impl(&dword_181A37000, v60, v70, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v69);
          goto LABEL_177;
        }

        if (v71)
        {
          *buf = 136446722;
          v101 = "networkd_privileged_teardown_feth_pair";
          v102 = 2048;
          *v103 = v38;
          *&v103[8] = 2082;
          *&v103[10] = v59;
          _os_log_impl(&dword_181A37000, v60, v70, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        v60 = __nwlog_obj();
        v75 = type;
        if (os_log_type_enabled(v60, type))
        {
          *buf = 136446722;
          v101 = "networkd_privileged_teardown_feth_pair";
          v102 = 2048;
          *v103 = v38;
          *&v103[8] = 2082;
          *&v103[10] = v59;
          _os_log_impl(&dword_181A37000, v60, v75, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_177;
    }

    v82 = __nwlog_obj();
    *buf = 136446210;
    v101 = "networkd_privileged_teardown_feth_pair";
    v83 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v98 = 0;
    if (__nwlog_fault(v83, &type, &v98))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v84 = __nwlog_obj();
        v85 = type;
        if (os_log_type_enabled(v84, type))
        {
          *buf = 136446210;
          v101 = "networkd_privileged_teardown_feth_pair";
          _os_log_impl(&dword_181A37000, v84, v85, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
        }
      }

      else if (v98 == 1)
      {
        v92 = __nw_create_backtrace_string();
        v84 = __nwlog_obj();
        v93 = type;
        v94 = os_log_type_enabled(v84, type);
        if (v92)
        {
          if (v94)
          {
            *buf = 136446466;
            v101 = "networkd_privileged_teardown_feth_pair";
            v102 = 2082;
            *v103 = v92;
            _os_log_impl(&dword_181A37000, v84, v93, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v92);
          goto LABEL_230;
        }

        if (v94)
        {
          *buf = 136446210;
          v101 = "networkd_privileged_teardown_feth_pair";
          _os_log_impl(&dword_181A37000, v84, v93, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v84 = __nwlog_obj();
        v97 = type;
        if (os_log_type_enabled(v84, type))
        {
          *buf = 136446210;
          v101 = "networkd_privileged_teardown_feth_pair";
          _os_log_impl(&dword_181A37000, v84, v97, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_230:
    if (v83)
    {
      free(v83);
    }

    goto LABEL_151;
  }

  v80 = __nwlog_obj();
  *buf = 136446210;
  v101 = "networkd_privileged_teardown_feth_pair";
  v77 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v98 = 0;
  if (__nwlog_fault(v77, &type, &v98))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v78 = __nwlog_obj();
      v81 = type;
      if (os_log_type_enabled(v78, type))
      {
        *buf = 136446210;
        v101 = "networkd_privileged_teardown_feth_pair";
        _os_log_impl(&dword_181A37000, v78, v81, "%{public}s called with null ifname2", buf, 0xCu);
      }
    }

    else if (v98 == 1)
    {
      v89 = __nw_create_backtrace_string();
      v78 = __nwlog_obj();
      v90 = type;
      v91 = os_log_type_enabled(v78, type);
      if (v89)
      {
        if (v91)
        {
          *buf = 136446466;
          v101 = "networkd_privileged_teardown_feth_pair";
          v102 = 2082;
          *v103 = v89;
          _os_log_impl(&dword_181A37000, v78, v90, "%{public}s called with null ifname2, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v89);
        if (v77)
        {
          goto LABEL_226;
        }

        return;
      }

      if (v91)
      {
        *buf = 136446210;
        v101 = "networkd_privileged_teardown_feth_pair";
        _os_log_impl(&dword_181A37000, v78, v90, "%{public}s called with null ifname2, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v78 = __nwlog_obj();
      v96 = type;
      if (os_log_type_enabled(v78, type))
      {
        *buf = 136446210;
        v101 = "networkd_privileged_teardown_feth_pair";
        _os_log_impl(&dword_181A37000, v78, v96, "%{public}s called with null ifname2, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_224;
  }

LABEL_225:
  if (v77)
  {
LABEL_226:
    free(v77);
  }
}

const char *networkd_privileged_type_to_string(int a1)
{
  if ((a1 - 2) > 0x14)
  {
    return "unknown";
  }

  else
  {
    return off_1E6A2B668[a1 - 2];
  }
}

void __networkd_privileged_check_mobile_asset_block_invoke(uint64_t a1, void *a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    *buf = 136446210;
    v74 = "networkd_privileged_check_mobile_asset_block_invoke";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v71 = 0;
    if (!__nwlog_fault(v5, &type, &v71))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v74 = "networkd_privileged_check_mobile_asset_block_invoke";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s received NULL response", buf, 0xCu);
      }

      goto LABEL_167;
    }

    if (v71 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v27 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v74 = "networkd_privileged_check_mobile_asset_block_invoke";
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_167;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v20 = type;
    v21 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v74 = "networkd_privileged_check_mobile_asset_block_invoke";
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s received NULL response, no backtrace", buf, 0xCu);
      }

      goto LABEL_167;
    }

    if (v21)
    {
      *buf = 136446466;
      v74 = "networkd_privileged_check_mobile_asset_block_invoke";
      v75 = 2082;
      *v76 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v20, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  Class = object_getClass(v2);
  if (Class == MEMORY[0x1E69E9E80])
  {
    v13 = xpc_dictionary_get_value(v3, networkd_privileged_key_result);
    v14 = v13;
    if (!v13)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      *buf = 136446210;
      v74 = "networkd_privileged_check_mobile_asset_block_invoke";
      v16 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (!__nwlog_fault(v16, &type, &v71))
      {
        goto LABEL_146;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v29 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_check_mobile_asset_block_invoke";
          _os_log_impl(&dword_181A37000, v17, v29, "%{public}s received response without result code", buf, 0xCu);
        }

        goto LABEL_145;
      }

      if (v71 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v48 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_check_mobile_asset_block_invoke";
          _os_log_impl(&dword_181A37000, v17, v48, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_145;
      }

      v39 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v42 = type;
      v43 = os_log_type_enabled(v17, type);
      if (!v39)
      {
        if (v43)
        {
          *buf = 136446210;
          v74 = "networkd_privileged_check_mobile_asset_block_invoke";
          _os_log_impl(&dword_181A37000, v17, v42, "%{public}s received response without result code, no backtrace", buf, 0xCu);
        }

        goto LABEL_145;
      }

      if (v43)
      {
        *buf = 136446466;
        v74 = "networkd_privileged_check_mobile_asset_block_invoke";
        v75 = 2082;
        *v76 = v39;
        _os_log_impl(&dword_181A37000, v17, v42, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_77;
    }

    if (object_getClass(v13) != MEMORY[0x1E69E9EB0])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      *buf = 136446210;
      v74 = "networkd_privileged_check_mobile_asset_block_invoke";
      v16 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (!__nwlog_fault(v16, &type, &v71))
      {
        goto LABEL_146;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_check_mobile_asset_block_invoke";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s received invalid result type", buf, 0xCu);
        }

LABEL_145:

LABEL_146:
        if (!v16)
        {
LABEL_148:

          goto LABEL_149;
        }

LABEL_147:
        free(v16);
        goto LABEL_148;
      }

      if (v71 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v47 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_check_mobile_asset_block_invoke";
          _os_log_impl(&dword_181A37000, v17, v47, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_145;
      }

      v39 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v40 = type;
      v41 = os_log_type_enabled(v17, type);
      if (!v39)
      {
        if (v41)
        {
          *buf = 136446210;
          v74 = "networkd_privileged_check_mobile_asset_block_invoke";
          _os_log_impl(&dword_181A37000, v17, v40, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
        }

        goto LABEL_145;
      }

      if (v41)
      {
        *buf = 136446466;
        v74 = "networkd_privileged_check_mobile_asset_block_invoke";
        v75 = 2082;
        *v76 = v39;
        _os_log_impl(&dword_181A37000, v17, v40, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_77:

      free(v39);
      if (!v16)
      {
        goto LABEL_148;
      }

      goto LABEL_147;
    }

    value = xpc_int64_get_value(v14);
    v34 = value;
    if (!value)
    {

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v44 = gLogObj;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v74 = "networkd_privileged_check_mobile_asset_block_invoke";
        _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s Successfully checked mobile asset", buf, 0xCu);
      }

      goto LABEL_84;
    }

    if (!(value >> 31))
    {
      v35 = __nwlog_obj();
      *buf = 136446466;
      v74 = "networkd_privileged_check_mobile_asset_block_invoke";
      v75 = 1024;
      *v76 = v34;
      v36 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (__nwlog_fault(v36, &type, &v71))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v37 = __nwlog_obj();
          v38 = type;
          if (os_log_type_enabled(v37, type))
          {
            *buf = 136446466;
            v74 = "networkd_privileged_check_mobile_asset_block_invoke";
            v75 = 1024;
            *v76 = v34;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v71 == 1)
        {
          v62 = __nw_create_backtrace_string();
          v37 = __nwlog_obj();
          v63 = type;
          v64 = os_log_type_enabled(v37, type);
          if (v62)
          {
            if (v64)
            {
              *buf = 136446722;
              v74 = "networkd_privileged_check_mobile_asset_block_invoke";
              v75 = 1024;
              *v76 = v34;
              *&v76[4] = 2082;
              *&v76[6] = v62;
              _os_log_impl(&dword_181A37000, v37, v63, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v62);
            if (!v36)
            {
              goto LABEL_148;
            }

            goto LABEL_175;
          }

          if (v64)
          {
            *buf = 136446466;
            v74 = "networkd_privileged_check_mobile_asset_block_invoke";
            v75 = 1024;
            *v76 = v34;
            _os_log_impl(&dword_181A37000, v37, v63, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v37 = __nwlog_obj();
          v69 = type;
          if (os_log_type_enabled(v37, type))
          {
            *buf = 136446466;
            v74 = "networkd_privileged_check_mobile_asset_block_invoke";
            v75 = 1024;
            *v76 = v34;
            _os_log_impl(&dword_181A37000, v37, v69, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_174:
      if (!v36)
      {
        goto LABEL_148;
      }

LABEL_175:
      free(v36);
      goto LABEL_148;
    }

    v54 = __nwlog_obj();
    v55 = networkd_privileged_result_to_string(v34);
    *buf = 136446722;
    v74 = "networkd_privileged_check_mobile_asset_block_invoke";
    v75 = 2048;
    *v76 = v34;
    *&v76[8] = 2082;
    *&v76[10] = v55;
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v71 = 0;
    if (!__nwlog_fault(v36, &type, &v71))
    {
      goto LABEL_174;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v56 = __nwlog_obj();
      v57 = type;
      if (os_log_type_enabled(v56, type))
      {
        *buf = 136446722;
        v74 = "networkd_privileged_check_mobile_asset_block_invoke";
        v75 = 2048;
        *v76 = v34;
        *&v76[8] = 2082;
        *&v76[10] = v55;
        _os_log_impl(&dword_181A37000, v56, v57, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
      }
    }

    else if (v71 == 1)
    {
      v65 = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v66 = type;
      v67 = os_log_type_enabled(v56, type);
      if (v65)
      {
        if (v67)
        {
          *buf = 136446978;
          v74 = "networkd_privileged_check_mobile_asset_block_invoke";
          v75 = 2048;
          *v76 = v34;
          *&v76[8] = 2082;
          *&v76[10] = v55;
          v77 = 2082;
          v78 = v65;
          _os_log_impl(&dword_181A37000, v56, v66, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v65);
        goto LABEL_174;
      }

      if (v67)
      {
        *buf = 136446722;
        v74 = "networkd_privileged_check_mobile_asset_block_invoke";
        v75 = 2048;
        *v76 = v34;
        *&v76[8] = 2082;
        *&v76[10] = v55;
        _os_log_impl(&dword_181A37000, v56, v66, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v56 = __nwlog_obj();
      v70 = type;
      if (os_log_type_enabled(v56, type))
      {
        *buf = 136446722;
        v74 = "networkd_privileged_check_mobile_asset_block_invoke";
        v75 = 2048;
        *v76 = v34;
        *&v76[8] = 2082;
        *&v76[10] = v55;
        _os_log_impl(&dword_181A37000, v56, v70, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_174;
  }

  if (Class == MEMORY[0x1E69E9E98])
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = gLogObj;
      *buf = 136446210;
      v74 = "networkd_privileged_check_mobile_asset_block_invoke";
      v5 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (!__nwlog_fault(v5, &type, &v71))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v32 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_check_mobile_asset_block_invoke";
          _os_log_impl(&dword_181A37000, v11, v32, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
        }

        goto LABEL_167;
      }

      if (v71 != 1)
      {
        v11 = __nwlog_obj();
        v58 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_check_mobile_asset_block_invoke";
          _os_log_impl(&dword_181A37000, v11, v58, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_167;
      }

      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v45 = type;
      v46 = os_log_type_enabled(v11, type);
      if (!backtrace_string)
      {
        if (v46)
        {
          *buf = 136446210;
          v74 = "networkd_privileged_check_mobile_asset_block_invoke";
          _os_log_impl(&dword_181A37000, v11, v45, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
        }

        goto LABEL_167;
      }

      if (v46)
      {
        *buf = 136446466;
        v74 = "networkd_privileged_check_mobile_asset_block_invoke";
        v75 = 2082;
        *v76 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v45, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_25;
    }

    if (v3 != MEMORY[0x1E69E9E20])
    {
      if (v3 != MEMORY[0x1E69E9E38])
      {
        v5 = MEMORY[0x1865DFA50](v3);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        *buf = 136446466;
        v74 = "networkd_privileged_check_mobile_asset_block_invoke";
        v75 = 2082;
        *v76 = v5;
        v7 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v71 = 0;
        if (!__nwlog_fault(v7, &type, &v71))
        {
          goto LABEL_52;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v8 = __nwlog_obj();
          v23 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446466;
            v74 = "networkd_privileged_check_mobile_asset_block_invoke";
            v75 = 2082;
            *v76 = v5;
            _os_log_impl(&dword_181A37000, v8, v23, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v71 != 1)
        {
          v8 = __nwlog_obj();
          v61 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446466;
            v74 = "networkd_privileged_check_mobile_asset_block_invoke";
            v75 = 2082;
            *v76 = v5;
            _os_log_impl(&dword_181A37000, v8, v61, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_51;
        }

        v51 = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v52 = type;
        v53 = os_log_type_enabled(v8, type);
        if (!v51)
        {
          if (v53)
          {
            *buf = 136446466;
            v74 = "networkd_privileged_check_mobile_asset_block_invoke";
            v75 = 2082;
            *v76 = v5;
            _os_log_impl(&dword_181A37000, v8, v52, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v53)
        {
          *buf = 136446722;
          v74 = "networkd_privileged_check_mobile_asset_block_invoke";
          v75 = 2082;
          *v76 = v5;
          *&v76[8] = 2082;
          *&v76[10] = v51;
          _os_log_impl(&dword_181A37000, v8, v52, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v51);
        if (!v7)
        {
          goto LABEL_54;
        }

LABEL_53:
        free(v7);
        goto LABEL_54;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v49 = gLogObj;
      *buf = 136446210;
      v74 = "networkd_privileged_check_mobile_asset_block_invoke";
      v5 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (!__nwlog_fault(v5, &type, &v71))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v50 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_check_mobile_asset_block_invoke";
          _os_log_impl(&dword_181A37000, v11, v50, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
        }

LABEL_167:

        goto LABEL_54;
      }

      if (v71 != 1)
      {
        v11 = __nwlog_obj();
        v68 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_check_mobile_asset_block_invoke";
          _os_log_impl(&dword_181A37000, v11, v68, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_167;
      }

      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v59 = type;
      v60 = os_log_type_enabled(v11, type);
      if (!backtrace_string)
      {
        if (v60)
        {
          *buf = 136446210;
          v74 = "networkd_privileged_check_mobile_asset_block_invoke";
          _os_log_impl(&dword_181A37000, v11, v59, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
        }

        goto LABEL_167;
      }

      if (v60)
      {
        *buf = 136446466;
        v74 = "networkd_privileged_check_mobile_asset_block_invoke";
        v75 = 2082;
        *v76 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v59, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_25:

      free(backtrace_string);
      if (!v5)
      {
        goto LABEL_149;
      }

      goto LABEL_55;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v44 = gLogObj;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v74 = "networkd_privileged_check_mobile_asset_block_invoke";
      _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
    }

LABEL_84:

    goto LABEL_149;
  }

  v5 = MEMORY[0x1865DFA50](v3);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  *buf = 136446466;
  v74 = "networkd_privileged_check_mobile_asset_block_invoke";
  v75 = 2082;
  *v76 = v5;
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v71 = 0;
  if (!__nwlog_fault(v7, &type, &v71))
  {
    goto LABEL_52;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446466;
      v74 = "networkd_privileged_check_mobile_asset_block_invoke";
      v75 = 2082;
      *v76 = v5;
      _os_log_impl(&dword_181A37000, v8, v9, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
    }

LABEL_51:

LABEL_52:
    if (!v7)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v71 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v30 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446466;
      v74 = "networkd_privileged_check_mobile_asset_block_invoke";
      v75 = 2082;
      *v76 = v5;
      _os_log_impl(&dword_181A37000, v8, v30, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
    }

    goto LABEL_51;
  }

  v24 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  v25 = type;
  v26 = os_log_type_enabled(v8, type);
  if (!v24)
  {
    if (v26)
    {
      *buf = 136446466;
      v74 = "networkd_privileged_check_mobile_asset_block_invoke";
      v75 = 2082;
      *v76 = v5;
      _os_log_impl(&dword_181A37000, v8, v25, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
    }

    goto LABEL_51;
  }

  if (v26)
  {
    *buf = 136446722;
    v74 = "networkd_privileged_check_mobile_asset_block_invoke";
    v75 = 2082;
    *v76 = v5;
    *&v76[8] = 2082;
    *&v76[10] = v24;
    _os_log_impl(&dword_181A37000, v8, v25, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v24);
  if (v7)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (v5)
  {
LABEL_55:
    free(v5);
  }

LABEL_149:
}

void __networkd_privileged_run_probes_block_invoke(uint64_t a1, void *a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    *buf = 136446210;
    v74 = "networkd_privileged_run_probes_block_invoke";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v71 = 0;
    if (!__nwlog_fault(v5, &type, &v71))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v74 = "networkd_privileged_run_probes_block_invoke";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s received NULL response", buf, 0xCu);
      }

      goto LABEL_167;
    }

    if (v71 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v27 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v74 = "networkd_privileged_run_probes_block_invoke";
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s received NULL response, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_167;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v20 = type;
    v21 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v74 = "networkd_privileged_run_probes_block_invoke";
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s received NULL response, no backtrace", buf, 0xCu);
      }

      goto LABEL_167;
    }

    if (v21)
    {
      *buf = 136446466;
      v74 = "networkd_privileged_run_probes_block_invoke";
      v75 = 2082;
      *v76 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v20, "%{public}s received NULL response, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  Class = object_getClass(v2);
  if (Class == MEMORY[0x1E69E9E80])
  {
    v13 = xpc_dictionary_get_value(v3, networkd_privileged_key_result);
    v14 = v13;
    if (!v13)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      *buf = 136446210;
      v74 = "networkd_privileged_run_probes_block_invoke";
      v16 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (!__nwlog_fault(v16, &type, &v71))
      {
        goto LABEL_146;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v29 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_run_probes_block_invoke";
          _os_log_impl(&dword_181A37000, v17, v29, "%{public}s received response without result code", buf, 0xCu);
        }

        goto LABEL_145;
      }

      if (v71 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v48 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_run_probes_block_invoke";
          _os_log_impl(&dword_181A37000, v17, v48, "%{public}s received response without result code, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_145;
      }

      v39 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v42 = type;
      v43 = os_log_type_enabled(v17, type);
      if (!v39)
      {
        if (v43)
        {
          *buf = 136446210;
          v74 = "networkd_privileged_run_probes_block_invoke";
          _os_log_impl(&dword_181A37000, v17, v42, "%{public}s received response without result code, no backtrace", buf, 0xCu);
        }

        goto LABEL_145;
      }

      if (v43)
      {
        *buf = 136446466;
        v74 = "networkd_privileged_run_probes_block_invoke";
        v75 = 2082;
        *v76 = v39;
        _os_log_impl(&dword_181A37000, v17, v42, "%{public}s received response without result code, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_77;
    }

    if (object_getClass(v13) != MEMORY[0x1E69E9EB0])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      *buf = 136446210;
      v74 = "networkd_privileged_run_probes_block_invoke";
      v16 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (!__nwlog_fault(v16, &type, &v71))
      {
        goto LABEL_146;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_run_probes_block_invoke";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s received invalid result type", buf, 0xCu);
        }

LABEL_145:

LABEL_146:
        if (!v16)
        {
LABEL_148:

          goto LABEL_149;
        }

LABEL_147:
        free(v16);
        goto LABEL_148;
      }

      if (v71 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v47 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_run_probes_block_invoke";
          _os_log_impl(&dword_181A37000, v17, v47, "%{public}s received invalid result type, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_145;
      }

      v39 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v40 = type;
      v41 = os_log_type_enabled(v17, type);
      if (!v39)
      {
        if (v41)
        {
          *buf = 136446210;
          v74 = "networkd_privileged_run_probes_block_invoke";
          _os_log_impl(&dword_181A37000, v17, v40, "%{public}s received invalid result type, no backtrace", buf, 0xCu);
        }

        goto LABEL_145;
      }

      if (v41)
      {
        *buf = 136446466;
        v74 = "networkd_privileged_run_probes_block_invoke";
        v75 = 2082;
        *v76 = v39;
        _os_log_impl(&dword_181A37000, v17, v40, "%{public}s received invalid result type, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_77:

      free(v39);
      if (!v16)
      {
        goto LABEL_148;
      }

      goto LABEL_147;
    }

    value = xpc_int64_get_value(v14);
    v34 = value;
    if (!value)
    {

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v44 = gLogObj;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v74 = "networkd_privileged_run_probes_block_invoke";
        _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s Successfully ran network probes", buf, 0xCu);
      }

      goto LABEL_84;
    }

    if (!(value >> 31))
    {
      v35 = __nwlog_obj();
      *buf = 136446466;
      v74 = "networkd_privileged_run_probes_block_invoke";
      v75 = 1024;
      *v76 = v34;
      v36 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (__nwlog_fault(v36, &type, &v71))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v37 = __nwlog_obj();
          v38 = type;
          if (os_log_type_enabled(v37, type))
          {
            *buf = 136446466;
            v74 = "networkd_privileged_run_probes_block_invoke";
            v75 = 1024;
            *v76 = v34;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s received failure result code %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v71 == 1)
        {
          v62 = __nw_create_backtrace_string();
          v37 = __nwlog_obj();
          v63 = type;
          v64 = os_log_type_enabled(v37, type);
          if (v62)
          {
            if (v64)
            {
              *buf = 136446722;
              v74 = "networkd_privileged_run_probes_block_invoke";
              v75 = 1024;
              *v76 = v34;
              *&v76[4] = 2082;
              *&v76[6] = v62;
              _os_log_impl(&dword_181A37000, v37, v63, "%{public}s received failure result code %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v62);
            if (!v36)
            {
              goto LABEL_148;
            }

            goto LABEL_175;
          }

          if (v64)
          {
            *buf = 136446466;
            v74 = "networkd_privileged_run_probes_block_invoke";
            v75 = 1024;
            *v76 = v34;
            _os_log_impl(&dword_181A37000, v37, v63, "%{public}s received failure result code %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v37 = __nwlog_obj();
          v69 = type;
          if (os_log_type_enabled(v37, type))
          {
            *buf = 136446466;
            v74 = "networkd_privileged_run_probes_block_invoke";
            v75 = 1024;
            *v76 = v34;
            _os_log_impl(&dword_181A37000, v37, v69, "%{public}s received failure result code %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_174:
      if (!v36)
      {
        goto LABEL_148;
      }

LABEL_175:
      free(v36);
      goto LABEL_148;
    }

    v54 = __nwlog_obj();
    v55 = networkd_privileged_result_to_string(v34);
    *buf = 136446722;
    v74 = "networkd_privileged_run_probes_block_invoke";
    v75 = 2048;
    *v76 = v34;
    *&v76[8] = 2082;
    *&v76[10] = v55;
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v71 = 0;
    if (!__nwlog_fault(v36, &type, &v71))
    {
      goto LABEL_174;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v56 = __nwlog_obj();
      v57 = type;
      if (os_log_type_enabled(v56, type))
      {
        *buf = 136446722;
        v74 = "networkd_privileged_run_probes_block_invoke";
        v75 = 2048;
        *v76 = v34;
        *&v76[8] = 2082;
        *&v76[10] = v55;
        _os_log_impl(&dword_181A37000, v56, v57, "%{public}s received internal failure result code: [%lld] %{public}s", buf, 0x20u);
      }
    }

    else if (v71 == 1)
    {
      v65 = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v66 = type;
      v67 = os_log_type_enabled(v56, type);
      if (v65)
      {
        if (v67)
        {
          *buf = 136446978;
          v74 = "networkd_privileged_run_probes_block_invoke";
          v75 = 2048;
          *v76 = v34;
          *&v76[8] = 2082;
          *&v76[10] = v55;
          v77 = 2082;
          v78 = v65;
          _os_log_impl(&dword_181A37000, v56, v66, "%{public}s received internal failure result code: [%lld] %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v65);
        goto LABEL_174;
      }

      if (v67)
      {
        *buf = 136446722;
        v74 = "networkd_privileged_run_probes_block_invoke";
        v75 = 2048;
        *v76 = v34;
        *&v76[8] = 2082;
        *&v76[10] = v55;
        _os_log_impl(&dword_181A37000, v56, v66, "%{public}s received internal failure result code: [%lld] %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      v56 = __nwlog_obj();
      v70 = type;
      if (os_log_type_enabled(v56, type))
      {
        *buf = 136446722;
        v74 = "networkd_privileged_run_probes_block_invoke";
        v75 = 2048;
        *v76 = v34;
        *&v76[8] = 2082;
        *&v76[10] = v55;
        _os_log_impl(&dword_181A37000, v56, v70, "%{public}s received internal failure result code: [%lld] %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_174;
  }

  if (Class == MEMORY[0x1E69E9E98])
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = gLogObj;
      *buf = 136446210;
      v74 = "networkd_privileged_run_probes_block_invoke";
      v5 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (!__nwlog_fault(v5, &type, &v71))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v32 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_run_probes_block_invoke";
          _os_log_impl(&dword_181A37000, v11, v32, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED", buf, 0xCu);
        }

        goto LABEL_167;
      }

      if (v71 != 1)
      {
        v11 = __nwlog_obj();
        v58 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_run_probes_block_invoke";
          _os_log_impl(&dword_181A37000, v11, v58, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_167;
      }

      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v45 = type;
      v46 = os_log_type_enabled(v11, type);
      if (!backtrace_string)
      {
        if (v46)
        {
          *buf = 136446210;
          v74 = "networkd_privileged_run_probes_block_invoke";
          _os_log_impl(&dword_181A37000, v11, v45, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, no backtrace", buf, 0xCu);
        }

        goto LABEL_167;
      }

      if (v46)
      {
        *buf = 136446466;
        v74 = "networkd_privileged_run_probes_block_invoke";
        v75 = 2082;
        *v76 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v45, "%{public}s received XPC_ERROR_CONNECTION_INTERRUPTED, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_25;
    }

    if (v3 != MEMORY[0x1E69E9E20])
    {
      if (v3 != MEMORY[0x1E69E9E38])
      {
        v5 = MEMORY[0x1865DFA50](v3);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        *buf = 136446466;
        v74 = "networkd_privileged_run_probes_block_invoke";
        v75 = 2082;
        *v76 = v5;
        v7 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v71 = 0;
        if (!__nwlog_fault(v7, &type, &v71))
        {
          goto LABEL_52;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v8 = __nwlog_obj();
          v23 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446466;
            v74 = "networkd_privileged_run_probes_block_invoke";
            v75 = 2082;
            *v76 = v5;
            _os_log_impl(&dword_181A37000, v8, v23, "%{public}s received returned unknown XPC error %{public}s", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v71 != 1)
        {
          v8 = __nwlog_obj();
          v61 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446466;
            v74 = "networkd_privileged_run_probes_block_invoke";
            v75 = 2082;
            *v76 = v5;
            _os_log_impl(&dword_181A37000, v8, v61, "%{public}s received returned unknown XPC error %{public}s, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_51;
        }

        v51 = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v52 = type;
        v53 = os_log_type_enabled(v8, type);
        if (!v51)
        {
          if (v53)
          {
            *buf = 136446466;
            v74 = "networkd_privileged_run_probes_block_invoke";
            v75 = 2082;
            *v76 = v5;
            _os_log_impl(&dword_181A37000, v8, v52, "%{public}s received returned unknown XPC error %{public}s, no backtrace", buf, 0x16u);
          }

          goto LABEL_51;
        }

        if (v53)
        {
          *buf = 136446722;
          v74 = "networkd_privileged_run_probes_block_invoke";
          v75 = 2082;
          *v76 = v5;
          *&v76[8] = 2082;
          *&v76[10] = v51;
          _os_log_impl(&dword_181A37000, v8, v52, "%{public}s received returned unknown XPC error %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v51);
        if (!v7)
        {
          goto LABEL_54;
        }

LABEL_53:
        free(v7);
        goto LABEL_54;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v49 = gLogObj;
      *buf = 136446210;
      v74 = "networkd_privileged_run_probes_block_invoke";
      v5 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (!__nwlog_fault(v5, &type, &v71))
      {
        goto LABEL_54;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v50 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_run_probes_block_invoke";
          _os_log_impl(&dword_181A37000, v11, v50, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT", buf, 0xCu);
        }

LABEL_167:

        goto LABEL_54;
      }

      if (v71 != 1)
      {
        v11 = __nwlog_obj();
        v68 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v74 = "networkd_privileged_run_probes_block_invoke";
          _os_log_impl(&dword_181A37000, v11, v68, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_167;
      }

      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v59 = type;
      v60 = os_log_type_enabled(v11, type);
      if (!backtrace_string)
      {
        if (v60)
        {
          *buf = 136446210;
          v74 = "networkd_privileged_run_probes_block_invoke";
          _os_log_impl(&dword_181A37000, v11, v59, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, no backtrace", buf, 0xCu);
        }

        goto LABEL_167;
      }

      if (v60)
      {
        *buf = 136446466;
        v74 = "networkd_privileged_run_probes_block_invoke";
        v75 = 2082;
        *v76 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v59, "%{public}s received XPC_ERROR_TERMINATION_IMMINENT, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_25:

      free(backtrace_string);
      if (!v5)
      {
        goto LABEL_149;
      }

      goto LABEL_55;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v44 = gLogObj;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v74 = "networkd_privileged_run_probes_block_invoke";
      _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s received XPC_ERROR_CONNECTION_INVALID", buf, 0xCu);
    }

LABEL_84:

    goto LABEL_149;
  }

  v5 = MEMORY[0x1865DFA50](v3);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  *buf = 136446466;
  v74 = "networkd_privileged_run_probes_block_invoke";
  v75 = 2082;
  *v76 = v5;
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v71 = 0;
  if (!__nwlog_fault(v7, &type, &v71))
  {
    goto LABEL_52;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446466;
      v74 = "networkd_privileged_run_probes_block_invoke";
      v75 = 2082;
      *v76 = v5;
      _os_log_impl(&dword_181A37000, v8, v9, "%{public}s received unknown type XPC %{public}s", buf, 0x16u);
    }

LABEL_51:

LABEL_52:
    if (!v7)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v71 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v30 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446466;
      v74 = "networkd_privileged_run_probes_block_invoke";
      v75 = 2082;
      *v76 = v5;
      _os_log_impl(&dword_181A37000, v8, v30, "%{public}s received unknown type XPC %{public}s, backtrace limit exceeded", buf, 0x16u);
    }

    goto LABEL_51;
  }

  v24 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  v25 = type;
  v26 = os_log_type_enabled(v8, type);
  if (!v24)
  {
    if (v26)
    {
      *buf = 136446466;
      v74 = "networkd_privileged_run_probes_block_invoke";
      v75 = 2082;
      *v76 = v5;
      _os_log_impl(&dword_181A37000, v8, v25, "%{public}s received unknown type XPC %{public}s, no backtrace", buf, 0x16u);
    }

    goto LABEL_51;
  }

  if (v26)
  {
    *buf = 136446722;
    v74 = "networkd_privileged_run_probes_block_invoke";
    v75 = 2082;
    *v76 = v5;
    *&v76[8] = 2082;
    *&v76[10] = v24;
    _os_log_impl(&dword_181A37000, v8, v25, "%{public}s received unknown type XPC %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v24);
  if (v7)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (v5)
  {
LABEL_55:
    free(v5);
  }

LABEL_149:
}
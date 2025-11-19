uint64_t nw_http_messaging_add_to_version_specific_protocol(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_http_messaging_add_to_version_specific_protocol";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v13, &type, &v30))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v33 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null input_protocol";
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v23 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v23)
        {
          *buf = 136446466;
          v33 = "nw_http_messaging_add_to_version_specific_protocol";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_69:
        if (!v13)
        {
          return 0;
        }

LABEL_70:
        free(v13);
        return 0;
      }

      if (!v23)
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v33 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null input_protocol, no backtrace";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v33 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null input_protocol, backtrace limit exceeded";
    }

    goto LABEL_68;
  }

  parameters = nw_protocol_get_parameters(a2);
  if (!parameters)
  {
    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_http_messaging_add_to_version_specific_protocol";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v13, &type, &v30))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v33 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null parameters";
    }

    else if (v30 == 1)
    {
      v24 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v25 = os_log_type_enabled(v14, type);
      if (v24)
      {
        if (!v25)
        {
          goto LABEL_62;
        }

        *buf = 136446466;
        v33 = "nw_http_messaging_add_to_version_specific_protocol";
        v34 = 2082;
        v35 = v24;
        v26 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
        goto LABEL_61;
      }

      if (!v25)
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v33 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null parameters, no backtrace";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v33 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null parameters, backtrace limit exceeded";
    }

LABEL_68:
    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    goto LABEL_69;
  }

  v5 = parameters;
  v6 = v5;
  if (!a1)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_parameters_copy_protocol_options_legacy";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v18, &type, &v30))
    {
LABEL_50:
      if (v18)
      {
        free(v18);
      }

      goto LABEL_53;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v33 = "nw_parameters_copy_protocol_options_legacy";
        v21 = "%{public}s called with null protocol_handle";
LABEL_48:
        _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
      }
    }

    else
    {
      if (v30 == 1)
      {
        v27 = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v20 = type;
        v28 = os_log_type_enabled(v19, type);
        if (v27)
        {
          if (v28)
          {
            *buf = 136446466;
            v33 = "nw_parameters_copy_protocol_options_legacy";
            v34 = 2082;
            v35 = v27;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null protocol_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v27);
          goto LABEL_50;
        }

        if (!v28)
        {
          goto LABEL_49;
        }

        *buf = 136446210;
        v33 = "nw_parameters_copy_protocol_options_legacy";
        v21 = "%{public}s called with null protocol_handle, no backtrace";
        goto LABEL_48;
      }

      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v33 = "nw_parameters_copy_protocol_options_legacy";
        v21 = "%{public}s called with null protocol_handle, backtrace limit exceeded";
        goto LABEL_48;
      }
    }

LABEL_49:

    goto LABEL_50;
  }

  v7 = _nw_parameters_copy_protocol_options_with_level(v5, a1);

  if (!v7)
  {
LABEL_53:
    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_http_messaging_add_to_version_specific_protocol";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v13, &type, &v30))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v33 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null options";
      goto LABEL_68;
    }

    if (v30 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v33 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null options, backtrace limit exceeded";
      goto LABEL_68;
    }

    v24 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v29 = os_log_type_enabled(v14, type);
    if (!v24)
    {
      if (!v29)
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v33 = "nw_http_messaging_add_to_version_specific_protocol";
      v16 = "%{public}s called with null options, no backtrace";
      goto LABEL_68;
    }

    if (!v29)
    {
LABEL_62:
      free(v24);
      if (!v13)
      {
        return 0;
      }

      goto LABEL_70;
    }

    *buf = 136446466;
    v33 = "nw_http_messaging_add_to_version_specific_protocol";
    v34 = 2082;
    v35 = v24;
    v26 = "%{public}s called with null options, dumping backtrace:%{public}s";
LABEL_61:
    _os_log_impl(&dword_181A37000, v14, v15, v26, buf, 0x16u);
    goto LABEL_62;
  }

  if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  v8 = nw_protocol_copy_http_messaging_definition_definition;
  v9 = *(a1 + 152);
  v10 = v7;
  _nw_protocol_options_set_instance(v10, v9);

  if (v8)
  {
    os_release(v8);
  }

  nw_protocol_set_output_handler(a2, 0);
  v11 = nw_protocol_add_input_handler(*(a1 + 152), a2);
  os_release(v10);
  return v11;
}

BOOL nw_protocol_http2_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v206 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v191 = "nw_protocol_http2_add_input_handler";
    v149 = _os_log_send_and_compose_impl();
    LOBYTE(v204[0]) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v149, v204, &type))
    {
      goto LABEL_285;
    }

    if (LOBYTE(v204[0]) == 17)
    {
      v150 = __nwlog_obj();
      v151 = v204[0];
      if (!os_log_type_enabled(v150, v204[0]))
      {
        goto LABEL_285;
      }

      *buf = 136446210;
      v191 = "nw_protocol_http2_add_input_handler";
      v152 = "%{public}s called with null protocol";
      goto LABEL_284;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v150 = __nwlog_obj();
      v151 = v204[0];
      if (!os_log_type_enabled(v150, v204[0]))
      {
        goto LABEL_285;
      }

      *buf = 136446210;
      v191 = "nw_protocol_http2_add_input_handler";
      v152 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_284;
    }

    backtrace_string = __nw_create_backtrace_string();
    v150 = __nwlog_obj();
    v151 = v204[0];
    v158 = os_log_type_enabled(v150, v204[0]);
    if (!backtrace_string)
    {
      if (!v158)
      {
        goto LABEL_285;
      }

      *buf = 136446210;
      v191 = "nw_protocol_http2_add_input_handler";
      v152 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_284;
    }

    if (!v158)
    {
      goto LABEL_263;
    }

    *buf = 136446466;
    v191 = "nw_protocol_http2_add_input_handler";
    v192 = 2082;
    v193 = backtrace_string;
    v159 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_262:
    _os_log_impl(&dword_181A37000, v150, v151, v159, buf, 0x16u);
    goto LABEL_263;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v191 = "nw_protocol_http2_add_input_handler";
    v149 = _os_log_send_and_compose_impl();
    LOBYTE(v204[0]) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v149, v204, &type))
    {
      goto LABEL_285;
    }

    if (LOBYTE(v204[0]) == 17)
    {
      v150 = __nwlog_obj();
      v151 = v204[0];
      if (!os_log_type_enabled(v150, v204[0]))
      {
        goto LABEL_285;
      }

      *buf = 136446210;
      v191 = "nw_protocol_http2_add_input_handler";
      v152 = "%{public}s called with null http2";
      goto LABEL_284;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v150 = __nwlog_obj();
      v151 = v204[0];
      if (!os_log_type_enabled(v150, v204[0]))
      {
        goto LABEL_285;
      }

      *buf = 136446210;
      v191 = "nw_protocol_http2_add_input_handler";
      v152 = "%{public}s called with null http2, backtrace limit exceeded";
      goto LABEL_284;
    }

    backtrace_string = __nw_create_backtrace_string();
    v150 = __nwlog_obj();
    v151 = v204[0];
    v160 = os_log_type_enabled(v150, v204[0]);
    if (!backtrace_string)
    {
      if (!v160)
      {
        goto LABEL_285;
      }

      *buf = 136446210;
      v191 = "nw_protocol_http2_add_input_handler";
      v152 = "%{public}s called with null http2, no backtrace";
      goto LABEL_284;
    }

    if (!v160)
    {
      goto LABEL_263;
    }

    *buf = 136446466;
    v191 = "nw_protocol_http2_add_input_handler";
    v192 = 2082;
    v193 = backtrace_string;
    v159 = "%{public}s called with null http2, dumping backtrace:%{public}s";
    goto LABEL_262;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v191 = "nw_protocol_http2_add_input_handler";
    v149 = _os_log_send_and_compose_impl();
    LOBYTE(v204[0]) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v149, v204, &type))
    {
      goto LABEL_285;
    }

    if (LOBYTE(v204[0]) == 17)
    {
      v150 = __nwlog_obj();
      v151 = v204[0];
      if (!os_log_type_enabled(v150, v204[0]))
      {
        goto LABEL_285;
      }

      *buf = 136446210;
      v191 = "nw_protocol_http2_add_input_handler";
      v152 = "%{public}s called with null input_protocol";
      goto LABEL_284;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v150 = __nwlog_obj();
      v151 = v204[0];
      if (!os_log_type_enabled(v150, v204[0]))
      {
        goto LABEL_285;
      }

      *buf = 136446210;
      v191 = "nw_protocol_http2_add_input_handler";
      v152 = "%{public}s called with null input_protocol, backtrace limit exceeded";
      goto LABEL_284;
    }

    backtrace_string = __nw_create_backtrace_string();
    v150 = __nwlog_obj();
    v151 = v204[0];
    v161 = os_log_type_enabled(v150, v204[0]);
    if (backtrace_string)
    {
      if (v161)
      {
        *buf = 136446466;
        v191 = "nw_protocol_http2_add_input_handler";
        v192 = 2082;
        v193 = backtrace_string;
        v159 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
        goto LABEL_262;
      }

LABEL_263:
      free(backtrace_string);
      goto LABEL_285;
    }

    if (!v161)
    {
      goto LABEL_285;
    }

    *buf = 136446210;
    v191 = "nw_protocol_http2_add_input_handler";
    v152 = "%{public}s called with null input_protocol, no backtrace";
LABEL_284:
    _os_log_impl(&dword_181A37000, v150, v151, v152, buf, 0xCu);
LABEL_285:
    if (v149)
    {
      free(v149);
    }

    return 0;
  }

  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v153 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v154 = *(handle + 90);
      *buf = 136446978;
      v191 = "nw_protocol_http2_add_input_handler";
      v192 = 2082;
      v193 = (handle + 380);
      v194 = 2080;
      v195 = " ";
      v196 = 1024;
      v197 = v154;
      _os_log_impl(&dword_181A37000, v153, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  v5 = *(handle + 88);
  *(handle + 88) = -1;
  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v155 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v156 = *(handle + 90);
      *buf = 136447746;
      v191 = "nw_protocol_http2_add_input_handler";
      v192 = 2082;
      v193 = (handle + 380);
      v194 = 2080;
      v195 = " ";
      v196 = 1024;
      v197 = v156;
      v198 = 2048;
      *v199 = a2;
      *&v199[8] = 1042;
      *&v199[10] = 16;
      *&v199[14] = 2098;
      *&v199[16] = a2;
      _os_log_impl(&dword_181A37000, v155, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> incoming protocol %p has flow id %{public,uuid_t}.16P", buf, 0x40u);
    }
  }

  if (!*(handle + 14))
  {
    callbacks = a2->callbacks;
    if (!callbacks || (get_remote_endpoint = callbacks->get_remote_endpoint) == 0 || (v8 = get_remote_endpoint(a2)) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136446210;
      v191 = "nw_protocol_http2_add_input_handler";
      v25 = "%{public}s failed to get remote endpoint from input_handler";
LABEL_28:
      v28 = v23;
      v29 = 12;
LABEL_85:
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, v25, buf, v29);
      return 0;
    }

    *(handle + 14) = os_retain(v8);
  }

  v9 = a2->callbacks;
  if (!v9 || (get_parameters = v9->get_parameters) == 0 || (v11 = get_parameters(a2)) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136446210;
    v191 = "nw_protocol_http2_add_input_handler";
    v25 = "%{public}s couldn't get parameters from input_protocol";
    goto LABEL_28;
  }

  v205 = 0;
  memset(v204, 0, sizeof(v204));
  v12 = v11;
  v13 = _nw_parameters_copy_protocol_options_with_level(v12, a1);
  object = v12;

  if (!v13)
  {
    v15 = 0;
    v26 = 0;
    v186 = 0;
    v27 = 240000;
    goto LABEL_63;
  }

  v14 = v13;
  _nw_protocol_options_get_log_id_str(v14, v204);

  v15 = (handle + 380);
  LODWORD(v16) = handle[380];
  v186 = handle[380] == 0;
  if (!handle[380])
  {
    v30 = v14;
    _nw_protocol_options_get_log_id_str(v30, handle + 380);

    *(handle + 90) = nw_protocol_get_next_instance_id();
    top_id = _nw_protocol_options_get_top_id(v30);
    if (handle[379])
    {
      goto LABEL_35;
    }

    v32 = top_id;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v33 = gconnectionLogObj;
    if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_35;
    }

    v34 = *(handle + 90);
    *buf = 136447490;
    v191 = "nw_protocol_http2_add_input_handler";
    v192 = 2082;
    v193 = (handle + 380);
    v194 = 2080;
    v195 = " ";
    v196 = 1024;
    v197 = v34;
    v198 = 1024;
    *v199 = v34;
    *&v199[4] = 1024;
    *&v199[6] = v32;
    v19 = "%{public}s %{public}s%s<i%u> created HTTP/2 and assigned instance ID: %u from C%u";
    v20 = v33;
    v21 = OS_LOG_TYPE_INFO;
    v22 = 50;
    goto LABEL_34;
  }

  if ((handle[379] & 1) != 0 || gLogDatapath != 1)
  {
    goto LABEL_35;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    goto LABEL_304;
  }

  while (1)
  {
    v17 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(handle + 90);
      *buf = 136447234;
      v191 = "nw_protocol_http2_add_input_handler";
      v192 = 2082;
      v193 = v15;
      v194 = 2080;
      v195 = " ";
      v196 = 1024;
      v197 = v18;
      v198 = 2080;
      *v199 = v204;
      v19 = "%{public}s %{public}s%s<i%u> new stream %s joined http2";
      v20 = v17;
      v21 = OS_LOG_TYPE_DEBUG;
      v22 = 48;
LABEL_34:
      _os_log_impl(&dword_181A37000, v20, v21, v19, buf, v22);
    }

LABEL_35:
    v181 = v15;
    idle_timeout = nw_http2_get_idle_timeout(v14);
    v26 = nw_http_messaging_options_copy_transaction_metadata(v14);
    LODWORD(v13) = nw_http2_get_capsule_handling_disabled(v14);
    send_truncated_data_frames = nw_http2_get_send_truncated_data_frames(v14);
    if (!v16)
    {
      v183 = v26;
      stream_receive_window_size = nw_http2_get_stream_receive_window_size(v14);
      v180 = v13;
      if (stream_receive_window_size)
      {
        v38 = stream_receive_window_size;
        if ((handle[379] & 1) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v39 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v40 = *(handle + 90);
            *buf = 136447234;
            v191 = "nw_protocol_http2_add_input_handler";
            v192 = 2082;
            v193 = v181;
            v194 = 2080;
            v195 = " ";
            v196 = 1024;
            v197 = v40;
            v198 = 1024;
            *v199 = v38;
            _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> overriding stream receive window size to %u", buf, 0x2Cu);
          }
        }
      }

      else
      {
        v38 = 0x200000;
      }

      connection_receive_window_size = nw_http2_get_connection_receive_window_size(v14);
      if (connection_receive_window_size)
      {
        v42 = connection_receive_window_size;
        if ((handle[379] & 1) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v43 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v44 = *(handle + 90);
            *buf = 136447234;
            v191 = "nw_protocol_http2_add_input_handler";
            v192 = 2082;
            v193 = v181;
            v194 = 2080;
            v195 = " ";
            v196 = 1024;
            v197 = v44;
            v198 = 1024;
            *v199 = v42;
            _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> overriding connection receive window size to %u", buf, 0x2Cu);
          }
        }
      }

      else
      {
        v42 = 10485760;
      }

      if ((*(handle + 377) & 0x80) != 0)
      {
        max_webtransport_sessions = nw_http2_get_max_webtransport_sessions(v14);
        if (max_webtransport_sessions)
        {
          LODWORD(v46) = max_webtransport_sessions;
          if ((handle[379] & 1) == 0 && gLogDatapath == 1)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            log = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
            {
              v169 = *(handle + 90);
              *buf = 136447234;
              v191 = "nw_protocol_http2_add_input_handler";
              v192 = 2082;
              v193 = v181;
              v194 = 2080;
              v195 = " ";
              v196 = 1024;
              v197 = v169;
              v198 = 1024;
              *v199 = v46;
              _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> setting max webtransport sessions to %u", buf, 0x2Cu);
            }
          }

          v46 = v46;
        }

        else
        {
          v46 = 0;
        }

        webtransport_state = nw_http_connection_metadata_get_webtransport_state(*(handle + 32));
        nw_webtransport_connection_state_set_max_sessions(webtransport_state, v46);
      }

      *(handle + 92) = v38;
      *(handle + 93) = v42;
      v26 = v183;
      LODWORD(v13) = v180;
    }

    os_release(v14);
    v27 = (1000 * idle_timeout);
    if (send_truncated_data_frames)
    {
      v15 = 64;
    }

    else
    {
      v15 = 0;
    }

LABEL_63:
    *(handle + 10) = v27;
    v48 = *(handle + 19);
    if (v48)
    {
      v49 = *(v48 + 48) == 0;
    }

    else
    {
      v49 = 1;
    }

    v50 = nw_http2_add_to_protocol_table(handle, a2, 0);
    if (!v50)
    {
      if (handle[379])
      {
        return 0;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v64 = gconnectionLogObj;
      result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v65 = *(handle + 90);
        *buf = 136446978;
        v191 = "nw_protocol_http2_add_input_handler";
        v192 = 2082;
        v193 = (handle + 380);
        v194 = 2080;
        v195 = " ";
        v196 = 1024;
        v197 = v65;
        v25 = "%{public}s %{public}s%s<i%u> could not add protocol to protocol based hash table, cannot add input handler";
        v28 = v64;
        v29 = 38;
        goto LABEL_85;
      }

      return result;
    }

    v16 = v50;
    if (v5 != -1)
    {
      stream_node_from_id = nw_http2_get_stream_node_from_id(handle, v5);
      if (stream_node_from_id)
      {
        v14 = *(stream_node_from_id + 16);
        if (v14)
        {
          v52 = *(stream_node_from_id + 32);
          if (v52)
          {
            if ((v14[190] & 0x10) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                v168 = stream_node_from_id;
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                stream_node_from_id = v168;
              }

              v54 = *(v14 + 44);
              v53 = *(v14 + 45);
              v55 = stream_node_from_id;
              v56 = *(stream_node_from_id + 32);
              *buf = 136448258;
              v191 = "nw_protocol_http2_add_input_handler";
              v192 = 2082;
              v193 = (v14 + 191);
              v194 = 2080;
              v195 = " ";
              v196 = 1024;
              v197 = v53;
              v198 = 1024;
              *v199 = v54;
              *&v199[4] = 2048;
              *&v199[6] = a2;
              *&v199[14] = 2048;
              *&v199[16] = v56;
              *&v199[24] = 2048;
              *v200 = v14;
              *&v200[8] = 1024;
              v201 = v54;
              v57 = _os_log_send_and_compose_impl();
              type = OS_LOG_TYPE_ERROR;
              v188 = 0;
              if (!__nwlog_fault(v57, &type, &v188))
              {
                goto LABEL_219;
              }

              if (type == OS_LOG_TYPE_FAULT)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v58 = gconnectionLogObj;
                v59 = type;
                if (!os_log_type_enabled(gconnectionLogObj, type))
                {
                  goto LABEL_219;
                }

                v61 = *(v14 + 44);
                v60 = *(v14 + 45);
                v62 = *(v55 + 32);
                *buf = 136448258;
                v191 = "nw_protocol_http2_add_input_handler";
                v192 = 2082;
                v193 = (v14 + 191);
                v194 = 2080;
                v195 = " ";
                v196 = 1024;
                v197 = v60;
                v198 = 1024;
                *v199 = v61;
                *&v199[4] = 2048;
                *&v199[6] = a2;
                *&v199[14] = 2048;
                *&v199[16] = v62;
                *&v199[24] = 2048;
                *v200 = v14;
                *&v200[8] = 1024;
                v201 = v61;
                v63 = "%{public}s %{public}s%s<i%u:s%d> adding new input handler %p, already have existing protocol pointer %p for stream (%p, id %d)";
              }

              else if (v188 == 1)
              {
                v89 = __nw_create_backtrace_string();
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v58 = gconnectionLogObj;
                v59 = type;
                v90 = os_log_type_enabled(gconnectionLogObj, type);
                if (v89)
                {
                  if (v90)
                  {
                    v92 = *(v14 + 44);
                    v91 = *(v14 + 45);
                    v93 = *(v55 + 32);
                    *buf = 136448514;
                    v191 = "nw_protocol_http2_add_input_handler";
                    v192 = 2082;
                    v193 = (v14 + 191);
                    v194 = 2080;
                    v195 = " ";
                    v196 = 1024;
                    v197 = v91;
                    v198 = 1024;
                    *v199 = v92;
                    *&v199[4] = 2048;
                    *&v199[6] = a2;
                    *&v199[14] = 2048;
                    *&v199[16] = v93;
                    *&v199[24] = 2048;
                    *v200 = v14;
                    *&v200[8] = 1024;
                    v201 = v92;
                    v202 = 2082;
                    v203 = v89;
                    _os_log_impl(&dword_181A37000, v58, v59, "%{public}s %{public}s%s<i%u:s%d> adding new input handler %p, already have existing protocol pointer %p for stream (%p, id %d), dumping backtrace:%{public}s", buf, 0x5Au);
                  }

                  free(v89);
                  goto LABEL_219;
                }

                if (!v90)
                {
LABEL_219:
                  if (v57)
                  {
                    free(v57);
                  }

                  goto LABEL_221;
                }

                v147 = *(v14 + 44);
                v146 = *(v14 + 45);
                v148 = *(v55 + 32);
                *buf = 136448258;
                v191 = "nw_protocol_http2_add_input_handler";
                v192 = 2082;
                v193 = (v14 + 191);
                v194 = 2080;
                v195 = " ";
                v196 = 1024;
                v197 = v146;
                v198 = 1024;
                *v199 = v147;
                *&v199[4] = 2048;
                *&v199[6] = a2;
                *&v199[14] = 2048;
                *&v199[16] = v148;
                *&v199[24] = 2048;
                *v200 = v14;
                *&v200[8] = 1024;
                v201 = v147;
                v63 = "%{public}s %{public}s%s<i%u:s%d> adding new input handler %p, already have existing protocol pointer %p for stream (%p, id %d), no backtrace";
              }

              else
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v58 = gconnectionLogObj;
                v59 = type;
                if (!os_log_type_enabled(gconnectionLogObj, type))
                {
                  goto LABEL_219;
                }

                v141 = *(v14 + 44);
                v140 = *(v14 + 45);
                v142 = *(v55 + 32);
                *buf = 136448258;
                v191 = "nw_protocol_http2_add_input_handler";
                v192 = 2082;
                v193 = (v14 + 191);
                v194 = 2080;
                v195 = " ";
                v196 = 1024;
                v197 = v140;
                v198 = 1024;
                *v199 = v141;
                *&v199[4] = 2048;
                *&v199[6] = a2;
                *&v199[14] = 2048;
                *&v199[16] = v142;
                *&v199[24] = 2048;
                *v200 = v14;
                *&v200[8] = 1024;
                v201 = v141;
                v63 = "%{public}s %{public}s%s<i%u:s%d> adding new input handler %p, already have existing protocol pointer %p for stream (%p, id %d), backtrace limit exceeded";
              }

              _os_log_impl(&dword_181A37000, v58, v59, v63, buf, 0x50u);
              goto LABEL_219;
            }

LABEL_221:
            nw_http2_remove_from_protocol_table(handle, a2);
            return 0;
          }

          v184 = v26;
          *(stream_node_from_id + 32) = a2;
          v16[4] = v14;
          while (1)
          {
            v84 = *(v204 + v52);
            v14[v52 + 191] = v84;
            if (!v84)
            {
              break;
            }

            if (++v52 == 83)
            {
              v14[274] = 0;
              break;
            }
          }

          if ((v14[190] & 0x10) == 0)
          {
            v182 = v49;
            v85 = v13;
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v86 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
            {
              v88 = *(v14 + 44);
              v87 = *(v14 + 45);
              *buf = 136448258;
              v191 = "nw_protocol_http2_add_input_handler";
              v192 = 2082;
              v193 = (v14 + 191);
              v194 = 2080;
              v195 = " ";
              v196 = 1024;
              v197 = v87;
              v198 = 1024;
              *v199 = v88;
              *&v199[4] = 1024;
              *&v199[6] = v5;
              *&v199[10] = 2080;
              *&v199[12] = v204;
              *&v199[20] = 1024;
              *&v199[22] = v88;
              *v200 = 2048;
              *&v200[2] = v14;
              _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%d> connected incoming stream id %d for %s to existing stream %d (%p)", buf, 0x4Cu);
            }

            LOBYTE(v13) = v85;
            v49 = v182;
          }

LABEL_146:
          v94 = v15 | v13 | v14[190] & 0xBE;
          v14[190] = v94;
          v95 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          singleton = v184;
          if (!v184)
          {
            if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
            }

            singleton = _nw_protocol_metadata_create_singleton();
            v94 = v14[190];
          }

          *(v14 + 12) = singleton;
          if (v186)
          {
            v97 = 8;
          }

          else
          {
            v97 = 0;
          }

          v98 = v94 & 0xF7 | v97;
          v14[190] = v98;
          v99 = *(v14 + 44);
          if (v99 != -1)
          {
            nw_http_transaction_metadata_set_stream_id(singleton, v99);
            v98 = v14[190];
          }

          if ((v98 & 0x10) == 0 && gLogDatapath == 1)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v164 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
            {
              v166 = *(v14 + 44);
              v165 = *(v14 + 45);
              identifier = a2->identifier;
              *buf = 136448002;
              v191 = "nw_protocol_http2_add_input_handler";
              v192 = 2082;
              v193 = (v14 + 191);
              v194 = 2080;
              v195 = " ";
              v196 = 1024;
              v197 = v165;
              v198 = 1024;
              *v199 = v166;
              *&v199[4] = 2048;
              *&v199[6] = a2;
              *&v199[14] = 2080;
              *&v199[16] = identifier;
              *&v199[24] = 2048;
              *v200 = v16;
              _os_log_impl(&dword_181A37000, v164, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> setting input protocol %p (%s) output_handler_context to %p", buf, 0x4Au);
            }
          }

          a2->output_handler_context = v16;
          nw_protocol_set_output_handler(a2, a1);
          if (!a1->default_input_handler)
          {
            nw_protocol_set_input_handler(a1, a2);
            *handle = *a2->flow_id;
          }

          if (v186 && !*(handle + 34))
          {
            v124 = _nw_parameters_copy_context(object);
            v125 = *(handle + 33);
            if (v125)
            {
              os_release(v125);
              *(handle + 33) = 0;
            }

            v126 = nw_path_copy_flow_registration(v124, handle);
            *(handle + 33) = v126;
            if (v124)
            {
              os_release(v124);
              v126 = *(handle + 33);
            }

            if (v126)
            {
              v127 = nw_path_flow_registration_copy_endpoint(v126);
              v128 = nw_path_flow_registration_copy_parameters(*(handle + 33));
              v129 = nw_endpoint_copy_association_with_evaluator(v127, v128, 0);
              *(handle + 34) = v129;
              if (v127)
              {
                os_release(v127);
                v129 = *(handle + 34);
              }

              if (v129)
              {
                v130 = nw_protocol_instance_stub_create(handle);
                *(handle + 35) = v130;
                nw_association_register_internal(*(handle + 34), object, v130, 0, 0, &__block_literal_global_58_88783);
                v131 = nw_association_copy_current_path(*(handle + 34), v128);
                if (v131)
                {
                  v132 = v131;
                  v133 = nw_path_copy_for_flow_registration(v131, *(handle + 33));
                  if (v133)
                  {
                    v134 = v133;
                    v135 = *(handle + 15);
                    if (v135 != v134)
                    {
                      if (v135)
                      {
                        os_release(v135);
                        *(handle + 15) = 0;
                      }

                      *(handle + 15) = os_retain(v134);
                    }

                    if (nw_path_has_flows(v134))
                    {
                      v136 = 32;
                    }

                    else
                    {
                      v136 = 0;
                    }

                    *(handle + 377) = *(handle + 377) & 0xFFDF | v136;
                    v137 = _nw_parameters_copy_effective_proxy_config(object);
                    if (v137)
                    {
                      v138 = v137;
                      if (nw_path_has_proxy_config(v132, v137))
                      {
                        v139 = *(handle + 36);
                        if (v139)
                        {
                          os_release(v139);
                        }

                        *(handle + 36) = v138;
                      }

                      else
                      {
                        os_release(v138);
                      }
                    }

                    os_release(v132);
                    v95 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                  }

                  else
                  {
                    v134 = v132;
                  }

                  os_release(v134);
                }
              }

              if (v128)
              {
                os_release(v128);
              }
            }
          }

          v101 = *(handle + 11);
          if (v101)
          {
            nw_queue_cancel_source(v101, v100);
            *(handle + 11) = 0;
          }

          if (!*(handle + 13))
          {
            *(handle + 13) = os_retain(object);
          }

          if (v49 && (*(handle + 377) & 0x80) == 0)
          {
            if ((handle[379] & 1) == 0 && BYTE1(v95[82].isa) == 1)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v170 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
              {
                v171 = *(handle + 90);
                *buf = 136446978;
                v191 = "nw_protocol_http2_add_input_handler";
                v192 = 2082;
                v193 = (handle + 380);
                v194 = 2080;
                v195 = " ";
                v196 = 1024;
                v197 = v171;
                _os_log_impl(&dword_181A37000, v170, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> starting keepalive timer", buf, 0x26u);
              }
            }

            v187[0] = MEMORY[0x1E69E9820];
            v187[1] = 0x40000000;
            v187[2] = ___ZL35nw_protocol_http2_add_input_handlerP11nw_protocolS0__block_invoke;
            v187[3] = &__block_descriptor_tmp_54_88785;
            v187[4] = handle;
            source = nw_queue_context_create_source(0, 2, 3, 0, v187, 0);
            *(handle + 42) = source;
            v103 = dispatch_time(0x8000000000000000, 45000000000);
            nw_queue_set_timer_values(source, v103, 0xA7A358200uLL, 0x3E8uLL);
            nw_queue_activate_source(*(handle + 42), v104);
          }

          if (LOBYTE(v204[0]))
          {
            if ((v14[190] & 0x10) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v105 = gconnectionLogObj;
              v107 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
              result = 1;
              if (!v107)
              {
                return result;
              }

              v108 = v14 + 191;
              v111 = v14 + 176;
              v109 = *(v14 + 44);
              v110 = *(v111 + 1);
              v112 = nw_hash_table_count(*(handle + 19), v106);
              *buf = 136448002;
              v191 = "nw_protocol_http2_add_input_handler";
              v192 = 2082;
              v193 = v108;
              v194 = 2080;
              v195 = " ";
              v196 = 1024;
              v197 = v110;
              v198 = 1024;
              *v199 = v109;
              *&v199[4] = 2048;
              *&v199[6] = a2;
              *&v199[14] = 2082;
              *&v199[16] = v204;
              *&v199[24] = 1024;
              *v200 = v112;
              v113 = "%{public}s %{public}s%s<i%u:s%d> added input handler %p from %{public}s, now have %u input handlers";
              v114 = v105;
              v115 = 70;
LABEL_181:
              _os_log_impl(&dword_181A37000, v114, OS_LOG_TYPE_INFO, v113, buf, v115);
            }
          }

          else if ((v14[190] & 0x10) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v116 = gconnectionLogObj;
            v118 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO);
            result = 1;
            if (!v118)
            {
              return result;
            }

            v119 = v14 + 191;
            v122 = v14 + 176;
            v120 = *(v14 + 44);
            v121 = *(v122 + 1);
            v123 = nw_hash_table_count(*(handle + 19), v117);
            *buf = 136447746;
            v191 = "nw_protocol_http2_add_input_handler";
            v192 = 2082;
            v193 = v119;
            v194 = 2080;
            v195 = " ";
            v196 = 1024;
            v197 = v121;
            v198 = 1024;
            *v199 = v120;
            *&v199[4] = 2048;
            *&v199[6] = a2;
            *&v199[14] = 1024;
            *&v199[16] = v123;
            v113 = "%{public}s %{public}s%s<i%u:s%d> added input handler %p, now have %u input handlers";
            v114 = v116;
            v115 = 60;
            goto LABEL_181;
          }

          return 1;
        }

        if (handle[379])
        {
          goto LABEL_221;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v72 = gconnectionLogObj;
        if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_221;
        }

        v73 = *(handle + 90);
        *buf = 136447234;
        v191 = "nw_protocol_http2_add_input_handler";
        v192 = 2082;
        v193 = (handle + 380);
        v194 = 2080;
        v195 = " ";
        v196 = 1024;
        v197 = v73;
        v198 = 1024;
        *v199 = v5;
        v69 = "%{public}s %{public}s%s<i%u> stream (id %d) not found in hash node";
        v70 = v72;
        v71 = 44;
      }

      else
      {
        if (handle[379])
        {
          goto LABEL_221;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v67 = gconnectionLogObj;
        if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_221;
        }

        v68 = *(handle + 90);
        *buf = 136447490;
        v191 = "nw_protocol_http2_add_input_handler";
        v192 = 2082;
        v193 = (handle + 380);
        v194 = 2080;
        v195 = " ";
        v196 = 1024;
        v197 = v68;
        v198 = 1024;
        *v199 = v5;
        *&v199[4] = 2048;
        *&v199[6] = a2;
        v69 = "%{public}s %{public}s%s<i%u> could not find existing stream %d to connect protocol %p with";
        v70 = v67;
        v71 = 54;
      }

      _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_ERROR, v69, buf, v71);
      goto LABEL_221;
    }

    v5 = v13;
    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v162 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v163 = *(handle + 90);
        *buf = 136446978;
        v191 = "nw_protocol_http2_add_input_handler";
        v192 = 2082;
        v193 = (handle + 380);
        v194 = 2080;
        v195 = " ";
        v196 = 1024;
        v197 = v163;
        _os_log_impl(&dword_181A37000, v162, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> detected new stream initiated from this side of the connection, allocating new stream", buf, 0x26u);
      }
    }

    v66 = malloc_type_calloc(1uLL, 0x118uLL, 0x58AB443BuLL);
    v14 = v66;
    v184 = v26;
    if (v66)
    {
      break;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v191 = "nw_protocol_http2_add_input_handler";
    v192 = 2048;
    v193 = 1;
    v194 = 2048;
    v195 = 280;
    v74 = _os_log_send_and_compose_impl();
    if (!__nwlog_should_abort(v74))
    {
      free(v74);
      MEMORY[0x110] = 0;
      MEMORY[0x100] = 0u;
      MEMORY[0xF0] = 0u;
      MEMORY[0xE0] = 0u;
      MEMORY[0xD0] = 0u;
      MEMORY[0xC0] = 0u;
      MEMORY[0xB0] = 0u;
      MEMORY[0xA0] = 0u;
      MEMORY[0x90] = 0u;
      MEMORY[0x70] = 0u;
      MEMORY[0x60] = 0u;
      MEMORY[0x50] = 0u;
      MEMORY[0x40] = 0u;
      MEMORY[0x30] = 0u;
      MEMORY[0x20] = 0u;
      MEMORY[0x10] = 0u;
      MEMORY[0] = 0u;
      MEMORY[0x28] = 0;
      MEMORY[0x38] = 0;
      MEMORY[0x48] = 0;
      MEMORY[0x50] = 0;
      MEMORY[0x58] = 0;
      MEMORY[0x59] = 0;
      MEMORY[0x88] = 0u;
      MEMORY[0x78] = 0u;
      MEMORY[0x98] = 0;
      MEMORY[0xA0] = 0;
      MEMORY[0xA8] = 0;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v191 = "nw_protocol_http2_add_input_handler";
      v75 = _os_log_send_and_compose_impl();
      if (!__nwlog_should_abort(v75))
      {
        free(v75);
        v66 = 0;
        goto LABEL_104;
      }
    }

    __break(1u);
LABEL_304:
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  *(v66 + 34) = 0;
  *(v66 + 15) = 0u;
  *(v66 + 16) = 0u;
  *(v66 + 13) = 0u;
  *(v66 + 14) = 0u;
  *(v66 + 11) = 0u;
  *(v66 + 12) = 0u;
  *(v66 + 9) = 0u;
  *(v66 + 10) = 0u;
  *(v66 + 7) = 0u;
  *(v66 + 8) = 0u;
  *(v66 + 5) = 0u;
  *(v66 + 6) = 0u;
  *(v66 + 3) = 0u;
  *(v66 + 4) = 0u;
  *(v66 + 1) = 0u;
  *(v66 + 2) = 0u;
  *v66 = 0u;
LABEL_104:
  nw_http2_stream_init(v66);
  v76 = 0;
  v14[88] = (*(handle + 377) & 0x80) != 0;
  *(v14 + 94) = *(v14 + 94) & 0xFF7F | *(handle + 377) & 0x80;
  LOBYTE(v13) = v5;
  while (1)
  {
    v77 = *(v204 + v76);
    v14[v76 + 191] = v77;
    if (!v77)
    {
      break;
    }

    if (++v76 == 83)
    {
      v14[274] = 0;
      break;
    }
  }

  v14[190] = v14[190] & 0xEF | (16 * (handle[379] & 1));
  *(v14 + 45) = *(handle + 90);
  v16[4] = v14;
  if ((v14[188] & 0x80) == 0)
  {
    goto LABEL_146;
  }

  if (a1->default_input_handler)
  {
    if ((v14[190] & 0x10) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v78 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        v80 = *(v14 + 44);
        v79 = *(v14 + 45);
        *buf = 136447234;
        v191 = "nw_protocol_http2_add_input_handler";
        v192 = 2082;
        v193 = (v14 + 191);
        v194 = 2080;
        v195 = " ";
        v196 = 1024;
        v197 = v79;
        v198 = 1024;
        *v199 = v80;
        _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%d> http2 has default_input_handler on the first stream in a listening connection. Is a connection trying to join while having server set on the parameters?", buf, 0x2Cu);
      }
    }

    nw_http2_remove_from_protocol_table(handle, a2);
    if (v14[168])
    {
      v81 = *(v14 + 20);
      if (v81)
      {
        os_release(v81);
      }
    }

    *(v14 + 20) = 0;
    if (v14[152])
    {
      v82 = *(v14 + 18);
      if (v82)
      {
        os_release(v82);
      }
    }

    *(v14 + 18) = 0;
    v83 = *(v14 + 15);
    if (v83)
    {
      *(v14 + 16) = v83;
      operator delete(v83);
    }

    goto LABEL_215;
  }

  if ((v14[190] & 0x10) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v172 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v174 = *(v14 + 44);
      v173 = *(v14 + 45);
      *buf = 136447234;
      v191 = "nw_protocol_http2_add_input_handler";
      v192 = 2082;
      v193 = (v14 + 191);
      v194 = 2080;
      v195 = " ";
      v196 = 1024;
      v197 = v173;
      v198 = 1024;
      *v199 = v174;
      _os_log_impl(&dword_181A37000, v172, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> responder's first stream detected, overriding stream id to 1", buf, 0x2Cu);
    }
  }

  *(v14 + 44) = 1;
  if (nw_http2_add_to_id_table(handle, v14, a2))
  {
    if ((v14[190] & 0x10) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v175 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v177 = *(v14 + 44);
        v176 = *(v14 + 45);
        v178 = v16[4];
        *buf = 136447746;
        v191 = "nw_protocol_http2_add_input_handler";
        v192 = 2082;
        v193 = (v14 + 191);
        v194 = 2080;
        v195 = " ";
        v196 = 1024;
        v197 = v176;
        v198 = 1024;
        *v199 = v177;
        *&v199[4] = 2048;
        *&v199[6] = v14;
        *&v199[14] = 2048;
        *&v199[16] = v178;
        _os_log_impl(&dword_181A37000, v175, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> new stream is %p, stream pointer is %p", buf, 0x40u);
      }
    }

    LOBYTE(v13) = v5;
    goto LABEL_146;
  }

  if ((v14[190] & 0x10) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v143 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      v145 = *(v14 + 44);
      v144 = *(v14 + 45);
      *buf = 136447234;
      v191 = "nw_protocol_http2_add_input_handler";
      v192 = 2082;
      v193 = (v14 + 191);
      v194 = 2080;
      v195 = " ";
      v196 = 1024;
      v197 = v144;
      v198 = 1024;
      *v199 = v145;
      _os_log_impl(&dword_181A37000, v143, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%d> Failed to add new stream to the id based hash table", buf, 0x2Cu);
    }
  }

  nw_http2_remove_from_protocol_table(handle, a2);
  std::destroy_at[abi:nn200100]<http2_stream,0>(v14);
LABEL_215:
  free(v14);
  return 0;
}

uint64_t nw_http2_get_idle_timeout(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http2_options(v1);
    idle_timeout = nw_http2_get_idle_timeout();

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http2(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http2_get_idle_timeout_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    idle_timeout = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http2_get_idle_timeout";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_idle_timeout";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_http2_get_idle_timeout";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_idle_timeout";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_idle_timeout";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http2(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  idle_timeout = 0;
LABEL_5:

  return idle_timeout;
}

void sub_181EF8688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http2_get_send_truncated_data_frames(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http2_options(v1);
    send_truncated_data_frames = nw_http2_get_send_truncated_data_frames();

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http2(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http2_get_send_truncated_data_frames_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    send_truncated_data_frames = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http2_get_send_truncated_data_frames";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_send_truncated_data_frames";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_http2_get_send_truncated_data_frames";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_send_truncated_data_frames";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_send_truncated_data_frames";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http2(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  send_truncated_data_frames = 0;
LABEL_5:

  return send_truncated_data_frames & 1;
}

void sub_181EF8A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http2_get_stream_receive_window_size(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http2_options(v1);
    stream_receive_window_size = nw_http2_get_stream_receive_window_size();

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http2(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http2_get_stream_receive_window_size_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    stream_receive_window_size = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http2_get_stream_receive_window_size";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_stream_receive_window_size";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_http2_get_stream_receive_window_size";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_stream_receive_window_size";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_stream_receive_window_size";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http2(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  stream_receive_window_size = 0;
LABEL_5:

  return stream_receive_window_size;
}

void sub_181EF8D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http2_get_connection_receive_window_size(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http2_options(v1);
    connection_receive_window_size = nw_http2_get_connection_receive_window_size();

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http2(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http2_get_connection_receive_window_size_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    connection_receive_window_size = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http2_get_connection_receive_window_size";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v6, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_connection_receive_window_size";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http2(options)", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          *&buf[4] = "nw_http2_get_connection_receive_window_size";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_connection_receive_window_size";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http2(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http2_get_connection_receive_window_size";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http2(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  connection_receive_window_size = 0;
LABEL_5:

  return connection_receive_window_size;
}

void sub_181EF90CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL nw_protocol_http2_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2, char a3)
{
  v78 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_add_listen_handler";
    v45 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (!__nwlog_fault(v45, &type, &v72))
    {
      goto LABEL_152;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v72 != 1)
      {
        v46 = __nwlog_obj();
        v47 = type;
        if (!os_log_type_enabled(v46, type))
        {
          goto LABEL_152;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_add_listen_handler";
        v48 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_151;
      }

      backtrace_string = __nw_create_backtrace_string();
      v46 = __nwlog_obj();
      v47 = type;
      v56 = os_log_type_enabled(v46, type);
      if (!backtrace_string)
      {
        if (!v56)
        {
          goto LABEL_152;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http2_add_listen_handler";
        v48 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_151;
      }

      if (v56)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_add_listen_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v57 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_129:
        _os_log_impl(&dword_181A37000, v46, v47, v57, buf, 0x16u);
      }

LABEL_130:
      free(backtrace_string);
      goto LABEL_152;
    }

    v46 = __nwlog_obj();
    v47 = type;
    if (!os_log_type_enabled(v46, type))
    {
      goto LABEL_152;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_add_listen_handler";
    v48 = "%{public}s called with null protocol";
LABEL_151:
    _os_log_impl(&dword_181A37000, v46, v47, v48, buf, 0xCu);
LABEL_152:
    if (v45)
    {
      free(v45);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_add_listen_handler";
    v45 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (!__nwlog_fault(v45, &type, &v72))
    {
      goto LABEL_152;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v46 = __nwlog_obj();
      v47 = type;
      if (!os_log_type_enabled(v46, type))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_add_listen_handler";
      v48 = "%{public}s called with null http2";
      goto LABEL_151;
    }

    if (v72 != 1)
    {
      v46 = __nwlog_obj();
      v47 = type;
      if (!os_log_type_enabled(v46, type))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http2_add_listen_handler";
      v48 = "%{public}s called with null http2, backtrace limit exceeded";
      goto LABEL_151;
    }

    backtrace_string = __nw_create_backtrace_string();
    v46 = __nwlog_obj();
    v47 = type;
    v58 = os_log_type_enabled(v46, type);
    if (backtrace_string)
    {
      if (v58)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_add_listen_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v57 = "%{public}s called with null http2, dumping backtrace:%{public}s";
        goto LABEL_129;
      }

      goto LABEL_130;
    }

    if (!v58)
    {
      goto LABEL_152;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http2_add_listen_handler";
    v48 = "%{public}s called with null http2, no backtrace";
    goto LABEL_151;
  }

  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    v49 = a2;
    v50 = a3;
    v51 = a1;
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v52 = gconnectionLogObj;
    v53 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
    a1 = v51;
    a3 = v50;
    a2 = v49;
    if (v53)
    {
      v54 = *(handle + 90);
      *buf = 136447234;
      *&buf[4] = "nw_protocol_http2_add_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v75 = " ";
      LOWORD(v76) = 1024;
      *(&v76 + 2) = v54;
      HIWORD(v76) = 2048;
      v77 = v49;
      _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called with listen_protocol %p", buf, 0x30u);
      a2 = v49;
      a3 = v50;
      a1 = v51;
    }
  }

  if (!*(handle + 18))
  {
    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      v59 = a2;
      v60 = a3;
      v61 = a1;
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v62 = gconnectionLogObj;
      v63 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
      a1 = v61;
      a3 = v60;
      a2 = v59;
      if (v63)
      {
        v64 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_add_listen_handler";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v75 = " ";
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v64;
        _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> added protocol listen handler", buf, 0x26u);
        a2 = v59;
        a3 = v60;
        a1 = v61;
      }
    }

    *(handle + 18) = a2;
    a2->protocol_handler = a1;
    if (a3)
    {
      nw_protocol_remove_instance(a1);
    }

    v11 = (handle + 377);
    if ((*(handle + 377) & 0x1000) == 0)
    {
      return 1;
    }

    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v65 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v66 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_add_listen_handler";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v75 = " ";
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v66;
        _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> waiting for listen handler, resuming processing of connected", buf, 0x26u);
      }
    }

    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v67 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v68 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v75 = " ";
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v68;
        _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    if ((*v11 & 0x80) != 0)
    {
      if (!*(handle + 18))
      {
        if ((handle[379] & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v25 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
          {
            v26 = *(handle + 90);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_http2_process_connected";
            *&buf[12] = 2082;
            *&buf[14] = handle + 380;
            *&buf[22] = 2080;
            v75 = " ";
            LOWORD(v76) = 1024;
            *(&v76 + 2) = v26;
            _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> no listen handler on server, deferring processing of input and connected state until listen handler is present", buf, 0x26u);
          }
        }

        *v11 |= 0x1000u;
        return 1;
      }

      if ((handle[379] & 1) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v12 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v69 = *(handle + 90);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 380;
          *&buf[22] = 2080;
          v75 = " ";
          LOWORD(v76) = 1024;
          *(&v76 + 2) = v69;
          v14 = "%{public}s %{public}s%s<i%u> listen handler present, processing input without waiting";
          goto LABEL_159;
        }
      }
    }

    else if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v12 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v75 = " ";
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v13;
        v14 = "%{public}s %{public}s%s<i%u> not server, processing input without waiting";
LABEL_159:
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, v14, buf, 0x26u);
      }
    }

    v18 = *v11;
    *v11 &= ~0x1000u;
    if ((v18 & 0xC) != 0)
    {
      if ((handle[379] & 1) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v19 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v20 = *(handle + 90);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 380;
          *&buf[22] = 2080;
          v75 = " ";
          LOWORD(v76) = 1024;
          *(&v76 + 2) = v20;
          _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> tunnel already connected or closed, ignoring connected event", buf, 0x26u);
        }
      }

      return 1;
    }

    nw_http2_send_settings(handle);
    *v11 |= 4u;
    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v70 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v71 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v75 = " ";
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v71;
        _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> http2 tunnel is now connected", buf, 0x26u);
      }
    }

    v22 = *(handle + 14);
    if (v22)
    {
      v23 = v22;
      is_registered = _nw_endpoint_is_registered(v23);

      if (is_registered)
      {
        if (nw_settings_get_http_connection_coalescing_enabled())
        {
          nw_endpoint_add_edges_for_instance(v23, handle, 1);
        }
      }

      else if ((handle[379] & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v37 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v38 = *(handle + 90);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 380;
          *&buf[22] = 2080;
          v75 = " ";
          LOWORD(v76) = 1024;
          *(&v76 + 2) = v38;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> http2's remote endpoint is not registered", buf, 0x26u);
        }
      }

      goto LABEL_106;
    }

    if (handle[379])
    {
LABEL_106:
      nw_protocol_http2_process_input(handle);
      v44 = *(handle + 19);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL35nw_protocol_http2_process_connectedP17nw_protocol_http2_block_invoke;
      v75 = &__block_descriptor_tmp_49_88077;
      v76 = handle;
      nw_hash_table_apply(v44, buf);
      return 1;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v31 = *(handle + 90);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_http2_process_connected";
    *&buf[12] = 2082;
    *&buf[14] = handle + 380;
    *&buf[22] = 2080;
    v75 = " ";
    LOWORD(v76) = 1024;
    *(&v76 + 2) = v31;
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v72 = 0;
    if (__nwlog_fault(v32, &type, &v72))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v33 = gconnectionLogObj;
        v34 = type;
        if (!os_log_type_enabled(gconnectionLogObj, type))
        {
          goto LABEL_104;
        }

        v35 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v75 = " ";
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v35;
        v36 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint";
        goto LABEL_103;
      }

      if (v72 != 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v33 = gconnectionLogObj;
        v34 = type;
        if (!os_log_type_enabled(gconnectionLogObj, type))
        {
          goto LABEL_104;
        }

        v42 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v75 = " ";
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v42;
        v36 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, backtrace limit exceeded";
        goto LABEL_103;
      }

      v39 = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v33 = gconnectionLogObj;
      v34 = type;
      v40 = os_log_type_enabled(gconnectionLogObj, type);
      if (v39)
      {
        if (v40)
        {
          v41 = *(handle + 90);
          *buf = 136447234;
          *&buf[4] = "nw_protocol_http2_process_connected";
          *&buf[12] = 2082;
          *&buf[14] = handle + 380;
          *&buf[22] = 2080;
          v75 = " ";
          LOWORD(v76) = 1024;
          *(&v76 + 2) = v41;
          HIWORD(v76) = 2082;
          v77 = v39;
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, dumping backtrace:%{public}s", buf, 0x30u);
        }

        free(v39);
        goto LABEL_104;
      }

      if (v40)
      {
        v43 = *(handle + 90);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_connected";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v75 = " ";
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v43;
        v36 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, no backtrace";
LABEL_103:
        _os_log_impl(&dword_181A37000, v33, v34, v36, buf, 0x26u);
      }
    }

LABEL_104:
    if (v32)
    {
      free(v32);
    }

    goto LABEL_106;
  }

  v4 = handle[379];
  if (*(handle + 377) & 0x1000) == 0 || (handle[379])
  {
    goto LABEL_71;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v5 = *(handle + 90);
  *buf = 136446978;
  *&buf[4] = "nw_protocol_http2_add_listen_handler";
  *&buf[12] = 2082;
  *&buf[14] = handle + 380;
  *&buf[22] = 2080;
  v75 = " ";
  LOWORD(v76) = 1024;
  *(&v76 + 2) = v5;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v72 = 0;
  if (__nwlog_fault(v6, &type, &v72))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      v8 = type;
      if (!os_log_type_enabled(gconnectionLogObj, type))
      {
        goto LABEL_68;
      }

      v9 = *(handle + 90);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_add_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v75 = " ";
      LOWORD(v76) = 1024;
      *(&v76 + 2) = v9;
      v10 = "%{public}s %{public}s%s<i%u> cannot have listen handler and be waiting for listen handler at the same time";
      goto LABEL_67;
    }

    if (v72 != 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      v8 = type;
      if (!os_log_type_enabled(gconnectionLogObj, type))
      {
        goto LABEL_68;
      }

      v21 = *(handle + 90);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_add_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v75 = " ";
      LOWORD(v76) = 1024;
      *(&v76 + 2) = v21;
      v10 = "%{public}s %{public}s%s<i%u> cannot have listen handler and be waiting for listen handler at the same time, backtrace limit exceeded";
      goto LABEL_67;
    }

    v15 = __nw_create_backtrace_string();
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    v8 = type;
    v16 = os_log_type_enabled(gconnectionLogObj, type);
    if (v15)
    {
      if (v16)
      {
        v17 = *(handle + 90);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_http2_add_listen_handler";
        *&buf[12] = 2082;
        *&buf[14] = handle + 380;
        *&buf[22] = 2080;
        v75 = " ";
        LOWORD(v76) = 1024;
        *(&v76 + 2) = v17;
        HIWORD(v76) = 2082;
        v77 = v15;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s %{public}s%s<i%u> cannot have listen handler and be waiting for listen handler at the same time, dumping backtrace:%{public}s", buf, 0x30u);
      }

      free(v15);
      goto LABEL_68;
    }

    if (v16)
    {
      v27 = *(handle + 90);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_add_listen_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 380;
      *&buf[22] = 2080;
      v75 = " ";
      LOWORD(v76) = 1024;
      *(&v76 + 2) = v27;
      v10 = "%{public}s %{public}s%s<i%u> cannot have listen handler and be waiting for listen handler at the same time, no backtrace";
LABEL_67:
      _os_log_impl(&dword_181A37000, v7, v8, v10, buf, 0x26u);
    }
  }

LABEL_68:
  if (v6)
  {
    free(v6);
  }

  v4 = handle[379];
LABEL_71:
  if (v4)
  {
    return 0;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v28 = gconnectionLogObj;
  result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v30 = *(handle + 90);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_http2_add_listen_handler";
    *&buf[12] = 2082;
    *&buf[14] = handle + 380;
    *&buf[22] = 2080;
    v75 = " ";
    LOWORD(v76) = 1024;
    *(&v76 + 2) = v30;
    _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> already have a listen handler, ignoring add", buf, 0x26u);
    return 0;
  }

  return result;
}

BOOL nw_protocol_http2_connect(nw_protocol *a1, nw_protocol *a2)
{
  *&v106[11] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v97 = "nw_protocol_http2_connect";
    v59 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (!__nwlog_fault(v59, &type, &v94))
    {
      goto LABEL_199;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v60 = __nwlog_obj();
      v61 = type;
      if (!os_log_type_enabled(v60, type))
      {
        goto LABEL_199;
      }

      *buf = 136446210;
      v97 = "nw_protocol_http2_connect";
      v62 = "%{public}s called with null protocol";
LABEL_198:
      _os_log_impl(&dword_181A37000, v60, v61, v62, buf, 0xCu);
      goto LABEL_199;
    }

    if (v94 != 1)
    {
      v60 = __nwlog_obj();
      v61 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446210;
        v97 = "nw_protocol_http2_connect";
        v62 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_198;
      }

      goto LABEL_199;
    }

    backtrace_string = __nw_create_backtrace_string();
    v60 = __nwlog_obj();
    v61 = type;
    v76 = os_log_type_enabled(v60, type);
    if (!backtrace_string)
    {
      if (v76)
      {
        *buf = 136446210;
        v97 = "nw_protocol_http2_connect";
        v62 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_198;
      }

      goto LABEL_199;
    }

    if (!v76)
    {
      goto LABEL_168;
    }

    *buf = 136446466;
    v97 = "nw_protocol_http2_connect";
    v98 = 2082;
    v99 = backtrace_string;
    v77 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_167:
    _os_log_impl(&dword_181A37000, v60, v61, v77, buf, 0x16u);
    goto LABEL_168;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v97 = "nw_protocol_http2_connect";
    v59 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (!__nwlog_fault(v59, &type, &v94))
    {
      goto LABEL_199;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v60 = __nwlog_obj();
      v61 = type;
      if (!os_log_type_enabled(v60, type))
      {
        goto LABEL_199;
      }

      *buf = 136446210;
      v97 = "nw_protocol_http2_connect";
      v62 = "%{public}s called with null http2";
      goto LABEL_198;
    }

    if (v94 != 1)
    {
      v60 = __nwlog_obj();
      v61 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446210;
        v97 = "nw_protocol_http2_connect";
        v62 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_198;
      }

      goto LABEL_199;
    }

    backtrace_string = __nw_create_backtrace_string();
    v60 = __nwlog_obj();
    v61 = type;
    v78 = os_log_type_enabled(v60, type);
    if (!backtrace_string)
    {
      if (v78)
      {
        *buf = 136446210;
        v97 = "nw_protocol_http2_connect";
        v62 = "%{public}s called with null http2, no backtrace";
        goto LABEL_198;
      }

      goto LABEL_199;
    }

    if (!v78)
    {
      goto LABEL_168;
    }

    *buf = 136446466;
    v97 = "nw_protocol_http2_connect";
    v98 = 2082;
    v99 = backtrace_string;
    v77 = "%{public}s called with null http2, dumping backtrace:%{public}s";
    goto LABEL_167;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v97 = "nw_protocol_http2_connect";
    v59 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (!__nwlog_fault(v59, &type, &v94))
    {
      goto LABEL_199;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v60 = __nwlog_obj();
      v61 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446210;
        v97 = "nw_protocol_http2_connect";
        v62 = "%{public}s called with null other_protocol";
        goto LABEL_198;
      }

LABEL_199:
      if (!v59)
      {
        return 0;
      }

      v58 = v59;
      goto LABEL_127;
    }

    if (v94 != 1)
    {
      v60 = __nwlog_obj();
      v61 = type;
      if (os_log_type_enabled(v60, type))
      {
        *buf = 136446210;
        v97 = "nw_protocol_http2_connect";
        v62 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_198;
      }

      goto LABEL_199;
    }

    backtrace_string = __nw_create_backtrace_string();
    v60 = __nwlog_obj();
    v61 = type;
    v79 = os_log_type_enabled(v60, type);
    if (!backtrace_string)
    {
      if (v79)
      {
        *buf = 136446210;
        v97 = "nw_protocol_http2_connect";
        v62 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_198;
      }

      goto LABEL_199;
    }

    if (v79)
    {
      *buf = 136446466;
      v97 = "nw_protocol_http2_connect";
      v98 = 2082;
      v99 = backtrace_string;
      v77 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_167;
    }

LABEL_168:
    free(backtrace_string);
    goto LABEL_199;
  }

  if ((handle[379] & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v63 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v64 = *(handle + 90);
      *buf = 136446978;
      v97 = "nw_protocol_http2_connect";
      v98 = 2082;
      v99 = handle + 380;
      v100 = 2080;
      v101 = " ";
      v102 = 1024;
      v103 = v64;
      _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  if ((*(handle + 377) & 8) != 0)
  {
    if ((handle[379] & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(handle + 90);
        *buf = 136446978;
        v97 = "nw_protocol_http2_connect";
        v98 = 2082;
        v99 = handle + 380;
        v100 = 2080;
        v101 = " ";
        v102 = 1024;
        v103 = v18;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> tunnel already closed, ignoring connect with success", buf, 0x26u);
      }
    }

    return 1;
  }

  if (!*(handle + 8))
  {
    v5 = mach_continuous_time();
    v6 = v5 <= 1 ? 1 : v5;
    *(handle + 8) = v6;
    v7 = nw_protocol_copy_info(*(handle + 4));
    if (v7)
    {
      v8 = v7;
      object = _nw_array_copy_last_object(v7);
      if (object)
      {
        v10 = object;
        if (nw_protocol_metadata_is_tls(object))
        {
          v11 = v10;
          nw_http_connection_metadata_set_sec_metadata(*(handle + 32), v11);
          os_release(v11);
        }

        os_release(v10);
      }

      os_release(v8);
    }
  }

  output_handler_context = a2->output_handler_context;
  if ((*(handle + 377) & 4) == 0)
  {
    if (!output_handler_context)
    {
      goto LABEL_22;
    }

    v13 = output_handler_context[4];
    if (v13)
    {
      *(v13 + 188) |= 8u;
      if ((*(v13 + 190) & 0x10) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v88 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v90 = *(v13 + 176);
          v89 = *(v13 + 180);
          *buf = 136447746;
          v97 = "nw_protocol_http2_connect";
          v98 = 2082;
          v99 = (v13 + 191);
          v100 = 2080;
          v101 = " ";
          v102 = 1024;
          v103 = v89;
          v104 = 1024;
          *v105 = v90;
          *&v105[4] = 1024;
          *&v105[6] = v90;
          v106[0] = 2048;
          *&v106[1] = v13;
          _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> marked stream id %d (%p) as waiting for connect", buf, 0x3Cu);
        }
      }

LABEL_22:
      v14 = *(handle + 14);
      if (v14)
      {
        v15 = v14;
        is_registered = _nw_endpoint_is_registered(v15);

        if (is_registered)
        {
          nw_endpoint_add_edges_for_instance(v15, handle, 0);
        }

        else if ((handle[379] & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v35 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            v36 = *(handle + 90);
            *buf = 136446978;
            v97 = "nw_protocol_http2_connect";
            v98 = 2082;
            v99 = handle + 380;
            v100 = 2080;
            v101 = " ";
            v102 = 1024;
            v103 = v36;
            _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> http2's remote endpoint is not registered", buf, 0x26u);
          }
        }

        goto LABEL_114;
      }

      if (handle[379])
      {
        goto LABEL_114;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v29 = *(handle + 90);
      *buf = 136446978;
      v97 = "nw_protocol_http2_connect";
      v98 = 2082;
      v99 = handle + 380;
      v100 = 2080;
      v101 = " ";
      v102 = 1024;
      v103 = v29;
      v30 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v94 = 0;
      if (__nwlog_fault(v30, &type, &v94))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v31 = gconnectionLogObj;
          v32 = type;
          if (!os_log_type_enabled(gconnectionLogObj, type))
          {
            goto LABEL_112;
          }

          v33 = *(handle + 90);
          *buf = 136446978;
          v97 = "nw_protocol_http2_connect";
          v98 = 2082;
          v99 = handle + 380;
          v100 = 2080;
          v101 = " ";
          v102 = 1024;
          v103 = v33;
          v34 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint";
          goto LABEL_111;
        }

        if (v94 != 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v31 = gconnectionLogObj;
          v32 = type;
          if (!os_log_type_enabled(gconnectionLogObj, type))
          {
            goto LABEL_112;
          }

          v51 = *(handle + 90);
          *buf = 136446978;
          v97 = "nw_protocol_http2_connect";
          v98 = 2082;
          v99 = handle + 380;
          v100 = 2080;
          v101 = " ";
          v102 = 1024;
          v103 = v51;
          v34 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, backtrace limit exceeded";
          goto LABEL_111;
        }

        v44 = __nw_create_backtrace_string();
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v31 = gconnectionLogObj;
        v32 = type;
        v45 = os_log_type_enabled(gconnectionLogObj, type);
        if (v44)
        {
          if (v45)
          {
            v46 = *(handle + 90);
            *buf = 136447234;
            v97 = "nw_protocol_http2_connect";
            v98 = 2082;
            v99 = handle + 380;
            v100 = 2080;
            v101 = " ";
            v102 = 1024;
            v103 = v46;
            v104 = 2082;
            *v105 = v44;
            _os_log_impl(&dword_181A37000, v31, v32, "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, dumping backtrace:%{public}s", buf, 0x30u);
          }

          free(v44);
          goto LABEL_112;
        }

        if (v45)
        {
          v53 = *(handle + 90);
          *buf = 136446978;
          v97 = "nw_protocol_http2_connect";
          v98 = 2082;
          v99 = handle + 380;
          v100 = 2080;
          v101 = " ";
          v102 = 1024;
          v103 = v53;
          v34 = "%{public}s %{public}s%s<i%u> http2 does not have remote endpoint, no backtrace";
LABEL_111:
          _os_log_impl(&dword_181A37000, v31, v32, v34, buf, 0x26u);
        }
      }

LABEL_112:
      if (v30)
      {
        free(v30);
      }

LABEL_114:
      output_handler = a1->output_handler;
      if (output_handler)
      {
        callbacks = output_handler->callbacks;
        if (callbacks)
        {
          connect = callbacks->connect;
          if (connect)
          {
            connect(output_handler, a1);
            return 1;
          }
        }
      }

      __nwlog_obj();
      v65 = a1->output_handler;
      v66 = "invalid";
      if (v65)
      {
        identifier = v65->identifier;
        if (identifier)
        {
          v66 = identifier;
        }
      }

      *buf = 136446466;
      v97 = "nw_protocol_http2_connect";
      v98 = 2082;
      v99 = v66;
      v68 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v94 = 0;
      if (__nwlog_fault(v68, &type, &v94))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v69 = __nwlog_obj();
          v70 = type;
          if (!os_log_type_enabled(v69, type))
          {
            goto LABEL_207;
          }

          v71 = a1->output_handler;
          v72 = "invalid";
          if (v71)
          {
            v73 = v71->identifier;
            if (v73)
            {
              v72 = v73;
            }
          }

          *buf = 136446466;
          v97 = "nw_protocol_http2_connect";
          v98 = 2082;
          v99 = v72;
          v74 = "%{public}s protocol %{public}s has invalid connect callback";
          goto LABEL_206;
        }

        if (v94 != 1)
        {
          v69 = __nwlog_obj();
          v70 = type;
          if (!os_log_type_enabled(v69, type))
          {
            goto LABEL_207;
          }

          v85 = a1->output_handler;
          v86 = "invalid";
          if (v85)
          {
            v87 = v85->identifier;
            if (v87)
            {
              v86 = v87;
            }
          }

          *buf = 136446466;
          v97 = "nw_protocol_http2_connect";
          v98 = 2082;
          v99 = v86;
          v74 = "%{public}s protocol %{public}s has invalid connect callback, backtrace limit exceeded";
          goto LABEL_206;
        }

        v80 = __nw_create_backtrace_string();
        v69 = __nwlog_obj();
        v70 = type;
        v81 = os_log_type_enabled(v69, type);
        if (v80)
        {
          if (v81)
          {
            v82 = a1->output_handler;
            v83 = "invalid";
            if (v82)
            {
              v84 = v82->identifier;
              if (v84)
              {
                v83 = v84;
              }
            }

            *buf = 136446722;
            v97 = "nw_protocol_http2_connect";
            v98 = 2082;
            v99 = v83;
            v100 = 2082;
            v101 = v80;
            _os_log_impl(&dword_181A37000, v69, v70, "%{public}s protocol %{public}s has invalid connect callback, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v80);
          goto LABEL_207;
        }

        if (v81)
        {
          v91 = a1->output_handler;
          v92 = "invalid";
          if (v91)
          {
            v93 = v91->identifier;
            if (v93)
            {
              v92 = v93;
            }
          }

          *buf = 136446466;
          v97 = "nw_protocol_http2_connect";
          v98 = 2082;
          v99 = v92;
          v74 = "%{public}s protocol %{public}s has invalid connect callback, no backtrace";
LABEL_206:
          _os_log_impl(&dword_181A37000, v69, v70, v74, buf, 0x16u);
        }
      }

LABEL_207:
      if (v68)
      {
        free(v68);
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

    v37 = *(handle + 90);
    *buf = 136447234;
    v97 = "nw_protocol_http2_connect";
    v98 = 2082;
    v99 = handle + 380;
    v100 = 2080;
    v101 = " ";
    v102 = 1024;
    v103 = v37;
    v104 = 2048;
    *v105 = a2;
    v38 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v94 = 0;
    if (!__nwlog_fault(v38, &type, &v94))
    {
      goto LABEL_125;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v39 = gconnectionLogObj;
      v40 = type;
      if (os_log_type_enabled(gconnectionLogObj, type))
      {
LABEL_67:
        v41 = *(handle + 90);
        *buf = 136447234;
        v97 = "nw_protocol_http2_connect";
        v98 = 2082;
        v99 = handle + 380;
        v100 = 2080;
        v101 = " ";
        v102 = 1024;
        v103 = v41;
        v104 = 2048;
        *v105 = a2;
        v42 = "%{public}s %{public}s%s<i%u> hash node for protocol %p did not have stream as extra";
LABEL_124:
        _os_log_impl(&dword_181A37000, v39, v40, v42, buf, 0x30u);
      }

LABEL_125:
      if (v38)
      {
        v58 = v38;
LABEL_127:
        free(v58);
      }

      return 0;
    }

    if (v94 == 1)
    {
      v47 = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v39 = gconnectionLogObj;
      v40 = type;
      v48 = os_log_type_enabled(gconnectionLogObj, type);
      if (v47)
      {
        if (v48)
        {
          goto LABEL_95;
        }

        goto LABEL_96;
      }

      if (!v48)
      {
        goto LABEL_125;
      }

      goto LABEL_123;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v39 = gconnectionLogObj;
    v40 = type;
    if (!os_log_type_enabled(gconnectionLogObj, type))
    {
      goto LABEL_125;
    }

    goto LABEL_104;
  }

  if (output_handler_context)
  {
    v19 = output_handler_context[4];
    if (!v19)
    {
      if (handle[379])
      {
        return 0;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v43 = *(handle + 90);
      *buf = 136447234;
      v97 = "nw_protocol_http2_connect";
      v98 = 2082;
      v99 = handle + 380;
      v100 = 2080;
      v101 = " ";
      v102 = 1024;
      v103 = v43;
      v104 = 2048;
      *v105 = a2;
      v38 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v94 = 0;
      if (!__nwlog_fault(v38, &type, &v94))
      {
        goto LABEL_125;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v39 = gconnectionLogObj;
        v40 = type;
        if (os_log_type_enabled(gconnectionLogObj, type))
        {
          goto LABEL_67;
        }

        goto LABEL_125;
      }

      if (v94 == 1)
      {
        v47 = __nw_create_backtrace_string();
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v39 = gconnectionLogObj;
        v40 = type;
        v49 = os_log_type_enabled(gconnectionLogObj, type);
        if (v47)
        {
          if (v49)
          {
LABEL_95:
            v50 = *(handle + 90);
            *buf = 136447490;
            v97 = "nw_protocol_http2_connect";
            v98 = 2082;
            v99 = handle + 380;
            v100 = 2080;
            v101 = " ";
            v102 = 1024;
            v103 = v50;
            v104 = 2048;
            *v105 = a2;
            *&v105[8] = 2082;
            *v106 = v47;
            _os_log_impl(&dword_181A37000, v39, v40, "%{public}s %{public}s%s<i%u> hash node for protocol %p did not have stream as extra, dumping backtrace:%{public}s", buf, 0x3Au);
          }

LABEL_96:
          free(v47);
          goto LABEL_125;
        }

        if (!v49)
        {
          goto LABEL_125;
        }

LABEL_123:
        v57 = *(handle + 90);
        *buf = 136447234;
        v97 = "nw_protocol_http2_connect";
        v98 = 2082;
        v99 = handle + 380;
        v100 = 2080;
        v101 = " ";
        v102 = 1024;
        v103 = v57;
        v104 = 2048;
        *v105 = a2;
        v42 = "%{public}s %{public}s%s<i%u> hash node for protocol %p did not have stream as extra, no backtrace";
        goto LABEL_124;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v39 = gconnectionLogObj;
      v40 = type;
      if (!os_log_type_enabled(gconnectionLogObj, type))
      {
        goto LABEL_125;
      }

LABEL_104:
      v52 = *(handle + 90);
      *buf = 136447234;
      v97 = "nw_protocol_http2_connect";
      v98 = 2082;
      v99 = handle + 380;
      v100 = 2080;
      v101 = " ";
      v102 = 1024;
      v103 = v52;
      v104 = 2048;
      *v105 = a2;
      v42 = "%{public}s %{public}s%s<i%u> hash node for protocol %p did not have stream as extra, backtrace limit exceeded";
      goto LABEL_124;
    }

    if (nw_http2_stream_connect(handle, output_handler_context[4], a2))
    {
      return 1;
    }

    if ((*(v19 + 190) & 0x10) != 0)
    {
      return 0;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v20 = gconnectionLogObj;
    result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v23 = *(v19 + 176);
      v22 = *(v19 + 180);
      *buf = 136447746;
      v97 = "nw_protocol_http2_connect";
      v98 = 2082;
      v99 = (v19 + 191);
      v100 = 2080;
      v101 = " ";
      v102 = 1024;
      v103 = v22;
      v104 = 1024;
      *v105 = v23;
      *&v105[4] = 1024;
      *&v105[6] = v23;
      v106[0] = 2048;
      *&v106[1] = v19;
      v24 = "%{public}s %{public}s%s<i%u:s%d> nw_http2_stream_connect failed for stream id %d (%p)";
      v25 = v20;
      v26 = 60;
LABEL_44:
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
      return 0;
    }
  }

  else
  {
    if (handle[379])
    {
      return 0;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v27 = gconnectionLogObj;
    result = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v28 = *(handle + 90);
      *buf = 136447234;
      v97 = "nw_protocol_http2_connect";
      v98 = 2082;
      v99 = handle + 380;
      v100 = 2080;
      v101 = " ";
      v102 = 1024;
      v103 = v28;
      v104 = 2048;
      *v105 = a2;
      v24 = "%{public}s %{public}s%s<i%u> connect called on protocol %p which is not in protocol hash table";
      v25 = v27;
      v26 = 48;
      goto LABEL_44;
    }
  }

  return result;
}

uint64_t nw_protocol_http2_get_remote_endpoint(nw_protocol *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v2 = handle[6];
      if (!v2)
      {
        return handle[14];
      }

      v3 = *(v2 + 24);
      if (!v3)
      {
        return handle[14];
      }

      v4 = *(v3 + 136);
      if (!v4)
      {
        return handle[14];
      }

      default_input_handler = a1->default_input_handler;

      return v4(default_input_handler);
    }

    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_http2_get_remote_endpoint";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v7, &type, &v15))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_http2_get_remote_endpoint";
        v10 = "%{public}s called with null http2";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v15 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_http2_get_remote_endpoint";
        v10 = "%{public}s called with null http2, backtrace limit exceeded";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v14 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v18 = "nw_protocol_http2_get_remote_endpoint";
        v10 = "%{public}s called with null http2, no backtrace";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v14)
    {
      *buf = 136446466;
      v18 = "nw_protocol_http2_get_remote_endpoint";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null http2, dumping backtrace:%{public}s";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocol_http2_get_remote_endpoint";
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v7, &type, &v15))
  {
    goto LABEL_37;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v15 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_http2_get_remote_endpoint";
        v10 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v12 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v18 = "nw_protocol_http2_get_remote_endpoint";
        v10 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v12)
    {
      *buf = 136446466;
      v18 = "nw_protocol_http2_get_remote_endpoint";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_26:
      _os_log_impl(&dword_181A37000, v8, v9, v13, buf, 0x16u);
    }

LABEL_27:
    free(backtrace_string);
    goto LABEL_37;
  }

  v8 = __nwlog_obj();
  v9 = type;
  if (os_log_type_enabled(v8, type))
  {
    *buf = 136446210;
    v18 = "nw_protocol_http2_get_remote_endpoint";
    v10 = "%{public}s called with null protocol";
LABEL_36:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
  }

LABEL_37:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

uint64_t nw_protocol_http2_get_parameters(nw_protocol *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[13];
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_http2_get_parameters";
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
        v14 = "nw_protocol_http2_get_parameters";
        v6 = "%{public}s called with null http2";
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
        v14 = "nw_protocol_http2_get_parameters";
        v6 = "%{public}s called with null http2, backtrace limit exceeded";
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
        v14 = "nw_protocol_http2_get_parameters";
        v6 = "%{public}s called with null http2, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_http2_get_parameters";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null http2, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_http2_get_parameters";
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
        v14 = "nw_protocol_http2_get_parameters";
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
        v14 = "nw_protocol_http2_get_parameters";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_http2_get_parameters";
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
    v14 = "nw_protocol_http2_get_parameters";
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

void nw_http2_send_settings(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v27 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a1 + 360);
      *v43 = 136446978;
      *&v43[4] = "nw_http2_send_settings";
      *&v43[12] = 2082;
      *&v43[14] = a1 + 380;
      *&v43[22] = 2080;
      v44 = " ";
      LOWORD(v45) = 1024;
      *(&v45 + 2) = v28;
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", v43, 0x26u);
    }
  }

  *v43 = xmmword_182B08E80;
  v2 = *(a1 + 368);
  *&v43[16] = 4;
  *&v43[20] = v2;
  v44 = 0x100000009;
  if ((*(a1 + 377) & 0x80) != 0)
  {
    v45 = 0x100000008;
    webtransport_state = nw_http_connection_metadata_get_webtransport_state(*(a1 + 256));
    max_sessions = nw_webtransport_connection_state_get_max_sessions(webtransport_state);
    if (max_sessions)
    {
      v46 = 11104;
      v47 = max_sessions;
    }
  }

  if (nghttp2_submit_settings())
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = nghttp2_strerror();
    *buf = 136446466;
    v36 = "nw_http2_send_settings";
    v37 = 2082;
    v38 = v5;
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v6, &type, &v33))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_21;
      }

      v9 = nghttp2_strerror();
      *buf = 136446466;
      v36 = "nw_http2_send_settings";
      v37 = 2082;
      v38 = v9;
      v10 = "%{public}s nghttp2_submit_settings: %{public}s failed";
    }

    else if (v33 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      v12 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v12)
        {
          v13 = nghttp2_strerror();
          *buf = 136446722;
          v36 = "nw_http2_send_settings";
          v37 = 2082;
          v38 = v13;
          v39 = 2082;
          v40 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s nghttp2_submit_settings: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (!v12)
      {
LABEL_21:
        if (v6)
        {
          free(v6);
        }

        goto LABEL_23;
      }

      v15 = nghttp2_strerror();
      *buf = 136446466;
      v36 = "nw_http2_send_settings";
      v37 = 2082;
      v38 = v15;
      v10 = "%{public}s nghttp2_submit_settings: %{public}s failed, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_21;
      }

      v14 = nghttp2_strerror();
      *buf = 136446466;
      v36 = "nw_http2_send_settings";
      v37 = 2082;
      v38 = v14;
      v10 = "%{public}s nghttp2_submit_settings: %{public}s failed, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v7, v8, v10, buf, 0x16u);
    goto LABEL_21;
  }

LABEL_23:
  if (*(a1 + 372) == 0xFFFF || !nghttp2_session_set_local_window_size())
  {
    goto LABEL_41;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = nghttp2_strerror();
  *buf = 136446466;
  v36 = "nw_http2_send_settings";
  v37 = 2082;
  v38 = v16;
  v17 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (__nwlog_fault(v17, &type, &v33))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_39;
      }

      v20 = nghttp2_strerror();
      *buf = 136446466;
      v36 = "nw_http2_send_settings";
      v37 = 2082;
      v38 = v20;
      v21 = "%{public}s nghttp2_session_set_local_window_size: %{public}s failed";
      goto LABEL_38;
    }

    if (v33 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_39;
      }

      v25 = nghttp2_strerror();
      *buf = 136446466;
      v36 = "nw_http2_send_settings";
      v37 = 2082;
      v38 = v25;
      v21 = "%{public}s nghttp2_session_set_local_window_size: %{public}s failed, backtrace limit exceeded";
      goto LABEL_38;
    }

    v22 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = type;
    v23 = os_log_type_enabled(gLogObj, type);
    if (v22)
    {
      if (v23)
      {
        v24 = nghttp2_strerror();
        *buf = 136446722;
        v36 = "nw_http2_send_settings";
        v37 = 2082;
        v38 = v24;
        v39 = 2082;
        v40 = v22;
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s nghttp2_session_set_local_window_size: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v22);
      goto LABEL_39;
    }

    if (v23)
    {
      v26 = nghttp2_strerror();
      *buf = 136446466;
      v36 = "nw_http2_send_settings";
      v37 = 2082;
      v38 = v26;
      v21 = "%{public}s nghttp2_session_set_local_window_size: %{public}s failed, no backtrace";
LABEL_38:
      _os_log_impl(&dword_181A37000, v18, v19, v21, buf, 0x16u);
    }
  }

LABEL_39:
  if (v17)
  {
    free(v17);
  }

LABEL_41:
  if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v29 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a1 + 360);
      *buf = 136446978;
      v36 = "nw_http2_send_settings";
      v37 = 2082;
      v38 = a1 + 380;
      v39 = 2080;
      v40 = " ";
      v41 = 1024;
      v42 = v30;
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> submitted settings to nghttp2", buf, 0x26u);
    }
  }

  nw_http2_session_send(a1);
  if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v31 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(a1 + 360);
      *buf = 136446978;
      v36 = "nw_http2_send_settings";
      v37 = 2082;
      v38 = a1 + 380;
      v39 = 2080;
      v40 = " ";
      v41 = 1024;
      v42 = v32;
      _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> nghttp2_session_send complete with settings", buf, 0x26u);
    }
  }
}

uint64_t ___ZL28nw_http2_drain_output_framesP17nw_protocol_http2_block_invoke(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v5 = object;
    v6 = *nw_hash_node_get_extra(a2);
    if (v6)
    {
      if ((*(v6 + 188) & 2) != 0)
      {
          ;
        }
      }

      return 1;
    }

    v17 = *(a1 + 32);
    if (!v17 || (*(v17 + 379) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v18 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 32);
        v20 = (v19 + 380);
        v21 = "";
        v22 = v19 == 0;
        v23 = *(v19 + 360);
        v26 = "nw_http2_drain_output_frames_block_invoke";
        if (v22)
        {
          v20 = "";
        }

        v27 = 2082;
        v25 = 136447234;
        if (!v22)
        {
          v21 = " ";
        }

        v28 = v20;
        v29 = 2080;
        v30 = v21;
        v31 = 1024;
        v32 = v23;
        v33 = 2048;
        v34 = v5;
        v14 = "%{public}s %{public}s%s<i%u> stream not found for input protocol %p, not draining output frames";
        v15 = v18;
        v16 = OS_LOG_TYPE_INFO;
LABEL_26:
        _os_log_impl(&dword_181A37000, v15, v16, v14, &v25, 0x30u);
      }
    }
  }

  else
  {
    v7 = *(a1 + 32);
    if (!v7 || (*(v7 + 379) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v8 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = (v9 + 380);
        v11 = "";
        v12 = v9 == 0;
        v13 = *(v9 + 360);
        v26 = "nw_http2_drain_output_frames_block_invoke";
        if (v12)
        {
          v10 = "";
        }

        v27 = 2082;
        v25 = 136447234;
        if (!v12)
        {
          v11 = " ";
        }

        v28 = v10;
        v29 = 2080;
        v30 = v11;
        v31 = 1024;
        v32 = v13;
        v33 = 2048;
        v34 = a2;
        v14 = "%{public}s %{public}s%s<i%u> input protocol in node %p in protocol table is NULL, skipping";
        v15 = v8;
        v16 = OS_LOG_TYPE_ERROR;
        goto LABEL_26;
      }
    }
  }

  return 1;
}

void nw_protocol_http2_process_input(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v52 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v53 = *(a1 + 360);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_process_input";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 380;
      *&buf[22] = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v53;
      _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  *(a1 + 377) |= 0x200u;
  while (1)
  {
    v67 = 0;
    v68 = &v67;
    v2 = *(a1 + 32);
    if (!v2)
    {
      break;
    }

    v3 = *(v2 + 24);
    if (!v3)
    {
      break;
    }

    v4 = *(v3 + 80);
    if (!v4)
    {
      break;
    }

    v5 = v4(v2, a1);
    if (!v5)
    {
      goto LABEL_81;
    }

    v6 = v5;
    if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v34 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v35 = *(a1 + 360);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_http2_process_input";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 380;
        *&buf[22] = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v35;
        v75 = 1024;
        LODWORD(v76) = v6;
        _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> received %u frames from output_handler", buf, 0x2Cu);
      }
    }

    *type = 0;
    v64 = type;
    v65 = 0x2000000000;
    v66 = 0;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 0x40000000;
    v59 = ___ZL31nw_protocol_http2_process_inputP17nw_protocol_http2_block_invoke;
    v60 = &unk_1E6A3C490;
    v61 = type;
    v62 = a1;
    v7 = v67;
    do
    {
      if (!v7)
      {
        break;
      }

      v8 = *(v7 + 32);
      v9 = (v59)(v58);
      v7 = v8;
    }

    while ((v9 & 1) != 0);
    if (nghttp2_session_consume_connection())
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = nghttp2_strerror();
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http2_process_input";
      *&buf[12] = 2082;
      *&buf[14] = v10;
      v11 = _os_log_send_and_compose_impl();
      LOBYTE(v69) = 16;
      v57 = 0;
      if (!__nwlog_fault(v11, &v69, &v57))
      {
        goto LABEL_28;
      }

      if (v69 == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = v69;
        if (os_log_type_enabled(gLogObj, v69))
        {
          v14 = nghttp2_strerror();
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http2_process_input";
          *&buf[12] = 2082;
          *&buf[14] = v14;
          v15 = v12;
          v16 = v13;
          v17 = "%{public}s nghttp2_session_consume_connection: %{public}s failed";
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      if (v57 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = v69;
        v21 = os_log_type_enabled(gLogObj, v69);
        if (backtrace_string)
        {
          if (v21)
          {
            v22 = nghttp2_strerror();
            *buf = 136446722;
            *&buf[4] = "nw_protocol_http2_process_input";
            *&buf[12] = 2082;
            *&buf[14] = v22;
            *&buf[22] = 2082;
            v72 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s nghttp2_session_consume_connection: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (!v21)
        {
LABEL_28:
          if (v11)
          {
            free(v11);
          }

          goto LABEL_30;
        }

        v26 = nghttp2_strerror();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_process_input";
        *&buf[12] = 2082;
        *&buf[14] = v26;
        v15 = v19;
        v16 = v20;
        v17 = "%{public}s nghttp2_session_consume_connection: %{public}s failed, no backtrace";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = v69;
        if (!os_log_type_enabled(gLogObj, v69))
        {
          goto LABEL_28;
        }

        v25 = nghttp2_strerror();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http2_process_input";
        *&buf[12] = 2082;
        *&buf[14] = v25;
        v15 = v23;
        v16 = v24;
        v17 = "%{public}s nghttp2_session_consume_connection: %{public}s failed, backtrace limit exceeded";
      }

LABEL_27:
      _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0x16u);
      goto LABEL_28;
    }

LABEL_30:
    if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v36 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v37 = *(a1 + 360);
        v38 = *(v64 + 6);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_http2_process_input";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 380;
        *&buf[22] = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v37;
        v75 = 1024;
        LODWORD(v76) = v38;
        _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> consumed %u bytes on connection", buf, 0x2Cu);
      }
    }

    v27 = *(a1 + 152);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 0x40000000;
    v56[2] = ___ZL31nw_protocol_http2_process_inputP17nw_protocol_http2_block_invoke_51;
    v56[3] = &__block_descriptor_tmp_52_88155;
    v56[4] = a1;
    nw_hash_table_apply(v27, v56);
    if (gLogDatapath == 1)
    {
      v33 = __nwlog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      }
    }

    v28 = v67;
    if (v67)
    {
      *(v67 + 40) = &v69;
      v69 = v28;
      v70 = v68;
      v67 = 0;
      v68 = &v67;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v72 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v73) = 1;
      do
      {
        v29 = v69;
        if (!v69)
        {
          break;
        }

        v30 = *(v69 + 32);
        v31 = *(v69 + 40);
        v32 = (v30 + 40);
        if (!v30)
        {
          v32 = &v70;
        }

        *v32 = v31;
        *v31 = v30;
        *(v29 + 32) = 0;
        *(v29 + 40) = 0;
      }

      while (((*&buf[16])(buf) & 1) != 0);
    }

    if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v39 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v40 = *(a1 + 360);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_http2_process_input";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 380;
        *&buf[22] = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v40;
        v75 = 1024;
        LODWORD(v76) = v6;
        _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> processed %u frames", buf, 0x2Cu);
      }
    }

    _Block_object_dispose(type, 8);
  }

  if ((*(a1 + 379) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v41 = *(a1 + 360);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_http2_process_input";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 380;
    *&buf[22] = 2080;
    v72 = " ";
    v73 = 1024;
    v74 = v41;
    v42 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v69) = 0;
    if (__nwlog_fault(v42, type, &v69))
    {
      if (type[0] != OS_LOG_TYPE_FAULT)
      {
        if (v69 == 1)
        {
          v47 = __nw_create_backtrace_string();
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v43 = gconnectionLogObj;
          v44 = type[0];
          v48 = os_log_type_enabled(gconnectionLogObj, type[0]);
          if (v47)
          {
            if (v48)
            {
              v49 = *(a1 + 360);
              *buf = 136447234;
              *&buf[4] = "nw_protocol_http2_process_input";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 380;
              *&buf[22] = 2080;
              v72 = " ";
              v73 = 1024;
              v74 = v49;
              v75 = 2082;
              v76 = v47;
              _os_log_impl(&dword_181A37000, v43, v44, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback, dumping backtrace:%{public}s", buf, 0x30u);
            }

            free(v47);
            goto LABEL_79;
          }

          if (!v48)
          {
            goto LABEL_79;
          }

          v51 = *(a1 + 360);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_process_input";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 380;
          *&buf[22] = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v51;
          v46 = "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback, no backtrace";
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v43 = gconnectionLogObj;
          v44 = type[0];
          if (!os_log_type_enabled(gconnectionLogObj, type[0]))
          {
            goto LABEL_79;
          }

          v50 = *(a1 + 360);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http2_process_input";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 380;
          *&buf[22] = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v50;
          v46 = "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback, backtrace limit exceeded";
        }

LABEL_78:
        _os_log_impl(&dword_181A37000, v43, v44, v46, buf, 0x26u);
        goto LABEL_79;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v43 = gconnectionLogObj;
      v44 = type[0];
      if (os_log_type_enabled(gconnectionLogObj, type[0]))
      {
        v45 = *(a1 + 360);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http2_process_input";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 380;
        *&buf[22] = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v45;
        v46 = "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback";
        goto LABEL_78;
      }
    }

LABEL_79:
    if (v42)
    {
      free(v42);
    }
  }

LABEL_81:
  if ((*(a1 + 379) & 1) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v54 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v55 = *(a1 + 360);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http2_process_input";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 380;
      *&buf[22] = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v55;
      _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> about to allow http2 to send pending data", buf, 0x26u);
    }
  }

  *(a1 + 377) &= ~0x200u;
  nw_http2_session_send(a1);
}

uint64_t ___ZL35nw_protocol_http2_process_connectedP17nw_protocol_http2_block_invoke(uint64_t a1, uint64_t a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = *nw_hash_node_get_extra(a2);
  if (!v4)
  {
    v9 = *(a1 + 32);
    if (v9 && (*(v9 + 379) & 1) != 0)
    {
      return 1;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v10 = *(a1 + 32);
    v11 = (v10 + 380);
    v12 = v10 == 0;
    v13 = *(v10 + 360);
    if (v12)
    {
      v11 = "";
    }

    *buf = 136447234;
    v68 = "nw_protocol_http2_process_connected_block_invoke";
    if (v12)
    {
      v14 = "";
    }

    else
    {
      v14 = " ";
    }

    v69 = 2082;
    v70 = v11;
    v71 = 2080;
    v72 = v14;
    v73 = 1024;
    v74 = v13;
    v75 = 2048;
    *v76 = a2;
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (!__nwlog_fault(v15, &type, &v65))
    {
      goto LABEL_79;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      v17 = type;
      if (!os_log_type_enabled(gconnectionLogObj, type))
      {
        goto LABEL_79;
      }

      v18 = *(a1 + 32);
      v19 = (v18 + 380);
      v20 = v18 == 0;
      if (!v18)
      {
        v19 = "";
      }

      v21 = *(v18 + 360);
      if (v20)
      {
        v22 = "";
      }

      else
      {
        v22 = " ";
      }

      *buf = 136447234;
      v68 = "nw_protocol_http2_process_connected_block_invoke";
      v69 = 2082;
      v70 = v19;
      v71 = 2080;
      v72 = v22;
      v73 = 1024;
      v74 = v21;
      v75 = 2048;
      *v76 = a2;
      v23 = "%{public}s %{public}s%s<i%u> protocol hash node %p didn't have stream extra";
    }

    else if (v65 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      v17 = type;
      v25 = os_log_type_enabled(gconnectionLogObj, type);
      if (backtrace_string)
      {
        if (v25)
        {
          v26 = *(a1 + 32);
          v27 = (v26 + 380);
          v28 = v26 == 0;
          if (!v26)
          {
            v27 = "";
          }

          v29 = *(v26 + 360);
          if (v28)
          {
            v30 = "";
          }

          else
          {
            v30 = " ";
          }

          *buf = 136447490;
          v68 = "nw_protocol_http2_process_connected_block_invoke";
          v69 = 2082;
          v70 = v27;
          v71 = 2080;
          v72 = v30;
          v73 = 1024;
          v74 = v29;
          v75 = 2048;
          *v76 = a2;
          *&v76[8] = 2082;
          *&v76[10] = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s %{public}s%s<i%u> protocol hash node %p didn't have stream extra, dumping backtrace:%{public}s", buf, 0x3Au);
        }

        free(backtrace_string);
        goto LABEL_79;
      }

      if (!v25)
      {
LABEL_79:
        if (!v15)
        {
          return 1;
        }

        v53 = v15;
LABEL_90:
        free(v53);
        return 1;
      }

      v48 = *(a1 + 32);
      v49 = (v48 + 380);
      v50 = v48 == 0;
      if (!v48)
      {
        v49 = "";
      }

      v51 = *(v48 + 360);
      if (v50)
      {
        v52 = "";
      }

      else
      {
        v52 = " ";
      }

      *buf = 136447234;
      v68 = "nw_protocol_http2_process_connected_block_invoke";
      v69 = 2082;
      v70 = v49;
      v71 = 2080;
      v72 = v52;
      v73 = 1024;
      v74 = v51;
      v75 = 2048;
      *v76 = a2;
      v23 = "%{public}s %{public}s%s<i%u> protocol hash node %p didn't have stream extra, no backtrace";
    }

    else
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v16 = gconnectionLogObj;
      v17 = type;
      if (!os_log_type_enabled(gconnectionLogObj, type))
      {
        goto LABEL_79;
      }

      v39 = *(a1 + 32);
      v40 = (v39 + 380);
      v41 = v39 == 0;
      if (!v39)
      {
        v40 = "";
      }

      v42 = *(v39 + 360);
      if (v41)
      {
        v43 = "";
      }

      else
      {
        v43 = " ";
      }

      *buf = 136447234;
      v68 = "nw_protocol_http2_process_connected_block_invoke";
      v69 = 2082;
      v70 = v40;
      v71 = 2080;
      v72 = v43;
      v73 = 1024;
      v74 = v42;
      v75 = 2048;
      *v76 = a2;
      v23 = "%{public}s %{public}s%s<i%u> protocol hash node %p didn't have stream extra, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v16, v17, v23, buf, 0x30u);
    goto LABEL_79;
  }

  if ((*(v4 + 190) & 0x10) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v59 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v61 = *(v4 + 176);
      v60 = *(v4 + 180);
      *buf = 136447490;
      v68 = "nw_protocol_http2_process_connected_block_invoke";
      v69 = 2082;
      v70 = (v4 + 191);
      v71 = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v60;
      v75 = 1024;
      *v76 = v61;
      *&v76[4] = 1024;
      *&v76[6] = v61;
      _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> checking existing stream %d to see if waiting_for_connect", buf, 0x32u);
    }
  }

  if ((*(v4 + 188) & 8) != 0)
  {
    if ((*(v4 + 190) & 0x10) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v62 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v64 = *(v4 + 176);
        v63 = *(v4 + 180);
        *buf = 136447490;
        v68 = "nw_protocol_http2_process_connected_block_invoke";
        v69 = 2082;
        v70 = (v4 + 191);
        v71 = 2080;
        v72 = " ";
        v73 = 1024;
        v74 = v63;
        v75 = 1024;
        *v76 = v64;
        *&v76[4] = 1024;
        *&v76[6] = v64;
        _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> calling connect on waiting stream %d", buf, 0x32u);
      }
    }

    object = nw_hash_node_get_object(a2);
    if (object)
    {
      if (!nw_http2_stream_connect(*(a1 + 32), v4, object) && (*(v4 + 190) & 0x10) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v6 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          v8 = *(v4 + 176);
          v7 = *(v4 + 180);
          *buf = 136447746;
          v68 = "nw_protocol_http2_process_connected_block_invoke";
          v69 = 2082;
          v70 = (v4 + 191);
          v71 = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v7;
          v75 = 1024;
          *v76 = v8;
          *&v76[4] = 1024;
          *&v76[6] = v8;
          *&v76[10] = 2048;
          *&v76[12] = v4;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%d> nw_http2_stream_connect failed for stream id %d (%p)", buf, 0x3Cu);
        }
      }

      return 1;
    }

    if ((*(v4 + 190) & 0x10) != 0)
    {
      return 1;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v32 = *(v4 + 176);
    v31 = *(v4 + 180);
    *buf = 136447490;
    v68 = "nw_protocol_http2_process_connected_block_invoke";
    v69 = 2082;
    v70 = (v4 + 191);
    v71 = 2080;
    v72 = " ";
    v73 = 1024;
    v74 = v31;
    v75 = 1024;
    *v76 = v32;
    *&v76[4] = 2048;
    *&v76[6] = a2;
    v33 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (!__nwlog_fault(v33, &type, &v65))
    {
      goto LABEL_88;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v34 = gconnectionLogObj;
      v35 = type;
      if (!os_log_type_enabled(gconnectionLogObj, type))
      {
        goto LABEL_88;
      }

      v37 = *(v4 + 176);
      v36 = *(v4 + 180);
      *buf = 136447490;
      v68 = "nw_protocol_http2_process_connected_block_invoke";
      v69 = 2082;
      v70 = (v4 + 191);
      v71 = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v36;
      v75 = 1024;
      *v76 = v37;
      *&v76[4] = 2048;
      *&v76[6] = a2;
      v38 = "%{public}s %{public}s%s<i%u:s%d> protocol hash node %p didn't have object";
    }

    else if (v65 == 1)
    {
      v44 = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v34 = gconnectionLogObj;
      v35 = type;
      v45 = os_log_type_enabled(gconnectionLogObj, type);
      if (v44)
      {
        if (v45)
        {
          v47 = *(v4 + 176);
          v46 = *(v4 + 180);
          *buf = 136447746;
          v68 = "nw_protocol_http2_process_connected_block_invoke";
          v69 = 2082;
          v70 = (v4 + 191);
          v71 = 2080;
          v72 = " ";
          v73 = 1024;
          v74 = v46;
          v75 = 1024;
          *v76 = v47;
          *&v76[4] = 2048;
          *&v76[6] = a2;
          *&v76[14] = 2082;
          *&v76[16] = v44;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s %{public}s%s<i%u:s%d> protocol hash node %p didn't have object, dumping backtrace:%{public}s", buf, 0x40u);
        }

        free(v44);
        goto LABEL_88;
      }

      if (!v45)
      {
LABEL_88:
        if (!v33)
        {
          return 1;
        }

        v53 = v33;
        goto LABEL_90;
      }

      v57 = *(v4 + 176);
      v56 = *(v4 + 180);
      *buf = 136447490;
      v68 = "nw_protocol_http2_process_connected_block_invoke";
      v69 = 2082;
      v70 = (v4 + 191);
      v71 = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v56;
      v75 = 1024;
      *v76 = v57;
      *&v76[4] = 2048;
      *&v76[6] = a2;
      v38 = "%{public}s %{public}s%s<i%u:s%d> protocol hash node %p didn't have object, no backtrace";
    }

    else
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v34 = gconnectionLogObj;
      v35 = type;
      if (!os_log_type_enabled(gconnectionLogObj, type))
      {
        goto LABEL_88;
      }

      v55 = *(v4 + 176);
      v54 = *(v4 + 180);
      *buf = 136447490;
      v68 = "nw_protocol_http2_process_connected_block_invoke";
      v69 = 2082;
      v70 = (v4 + 191);
      v71 = 2080;
      v72 = " ";
      v73 = 1024;
      v74 = v54;
      v75 = 1024;
      *v76 = v55;
      *&v76[4] = 2048;
      *&v76[6] = a2;
      v38 = "%{public}s %{public}s%s<i%u:s%d> protocol hash node %p didn't have object, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v34, v35, v38, buf, 0x36u);
    goto LABEL_88;
  }

  return 1;
}

BOOL nw_http2_stream_connect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_http2_stream_connect";
    v20 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v20, &type, &v46))
    {
      goto LABEL_87;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      v49 = "nw_http2_stream_connect";
      v23 = "%{public}s called with null http2";
    }

    else if (v46 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = type;
      v29 = os_log_type_enabled(v21, type);
      if (backtrace_string)
      {
        if (v29)
        {
          *buf = 136446466;
          v49 = "nw_http2_stream_connect";
          v50 = 2082;
          v51 = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null http2, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_87:
        if (v20)
        {
          v43 = v20;
LABEL_100:
          free(v43);
          return a1 != 0;
        }

        return a1 != 0;
      }

      if (!v29)
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      v49 = "nw_http2_stream_connect";
      v23 = "%{public}s called with null http2, no backtrace";
    }

    else
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      v49 = "nw_http2_stream_connect";
      v23 = "%{public}s called with null http2, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
    goto LABEL_87;
  }

  if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v25 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a2 + 176);
      v26 = *(a2 + 180);
      *buf = 136447746;
      v49 = "nw_http2_stream_connect";
      v50 = 2082;
      v51 = (a2 + 191);
      v52 = 2080;
      v53 = " ";
      v54 = 1024;
      v55 = v26;
      v56 = 1024;
      v57 = v27;
      v58 = 1024;
      v59 = v27;
      v60 = 2048;
      v61 = a2;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> called for stream %d (%p)", buf, 0x3Cu);
    }
  }

  v6 = *(a2 + 188);
  if ((v6 & 1) == 0)
  {
    if (!*(a2 + 32))
    {
      v7 = mach_continuous_approximate_time();
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      *(a2 + 32) = v8;
      v6 = *(a2 + 188);
    }

    *(a2 + 188) = v6 & 0xFFF6 | 1;
    *(a2 + 190) |= 0x20u;
    v9 = *(a2 + 96);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 0x40000000;
    v45[2] = ___ZL23nw_http2_stream_connectP17nw_protocol_http2P12http2_streamP11nw_protocol_block_invoke;
    v45[3] = &__block_descriptor_tmp_48_88109;
    v45[4] = a2;
    v45[5] = a1;
    nw_http_transaction_metadata_set_event_handler(v9, v45);
    if ((*(a2 + 190) & 8) != 0)
    {
      nw_http_transaction_metadata_set_first_on_connection(*(a2 + 96));
      nw_http_connection_metadata_extract_sec_metadata_marshaled_fields(*(a1 + 256));
    }

    nw_http_transaction_metadata_set_connection_metadata(*(a2 + 96), *(a1 + 256));
    if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v30 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        v32 = *(a2 + 176);
        v31 = *(a2 + 180);
        *buf = 136447490;
        v49 = "nw_http2_stream_connect";
        v50 = 2082;
        v51 = (a2 + 191);
        v52 = 2080;
        v53 = " ";
        v54 = 1024;
        v55 = v31;
        v56 = 1024;
        v57 = v32;
        v58 = 1024;
        v59 = v32;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> connect complete for stream %d, calling connected", buf, 0x32u);
      }
    }

    v10 = *(a3 + 24);
    if (!v10 || (v11 = *(v10 + 40)) == 0)
    {
      __nwlog_obj();
      v12 = *(a3 + 16);
      if (!v12)
      {
        v12 = "invalid";
      }

      *buf = 136446466;
      v49 = "nw_http2_stream_connect";
      v50 = 2082;
      v51 = v12;
      v13 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v46 = 0;
      if (__nwlog_fault(v13, &type, &v46))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v14 = __nwlog_obj();
          v15 = type;
          if (!os_log_type_enabled(v14, type))
          {
            goto LABEL_98;
          }

          v16 = *(a3 + 16);
          if (!v16)
          {
            v16 = "invalid";
          }

LABEL_23:
          *buf = 136446466;
          v49 = "nw_http2_stream_connect";
          v50 = 2082;
          v51 = v16;
          v17 = "%{public}s protocol %{public}s has invalid connected callback";
LABEL_97:
          _os_log_impl(&dword_181A37000, v14, v15, v17, buf, 0x16u);
          goto LABEL_98;
        }

        if (v46 == 1)
        {
          v36 = __nw_create_backtrace_string();
          v14 = __nwlog_obj();
          v15 = type;
          v37 = os_log_type_enabled(v14, type);
          if (v36)
          {
            if (v37)
            {
              v38 = "invalid";
              if (*(a3 + 16))
              {
                v38 = *(a3 + 16);
              }

              *buf = 136446722;
              v49 = "nw_http2_stream_connect";
              v50 = 2082;
              v51 = v38;
              v52 = 2082;
              v53 = v36;
              _os_log_impl(&dword_181A37000, v14, v15, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v36);
            goto LABEL_98;
          }

          if (!v37)
          {
            goto LABEL_98;
          }

          v44 = *(a3 + 16);
          if (!v44)
          {
            v44 = "invalid";
          }

LABEL_96:
          *buf = 136446466;
          v49 = "nw_http2_stream_connect";
          v50 = 2082;
          v51 = v44;
          v17 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
          goto LABEL_97;
        }

        v14 = __nwlog_obj();
        v15 = type;
        if (!os_log_type_enabled(v14, type))
        {
          goto LABEL_98;
        }

        v42 = *(a3 + 16);
        if (!v42)
        {
          v42 = "invalid";
        }

LABEL_79:
        *buf = 136446466;
        v49 = "nw_http2_stream_connect";
        v50 = 2082;
        v51 = v42;
        v17 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
        goto LABEL_97;
      }

      goto LABEL_98;
    }

LABEL_28:
    v11(a3, a1);
    return a1 != 0;
  }

  if ((*(a2 + 190) & 0x10) == 0 && gLogDatapath == 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v33 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a2 + 176);
      v34 = *(a2 + 180);
      *buf = 136447490;
      v49 = "nw_http2_stream_connect";
      v50 = 2082;
      v51 = (a2 + 191);
      v52 = 2080;
      v53 = " ";
      v54 = 1024;
      v55 = v34;
      v56 = 1024;
      v57 = v35;
      v58 = 1024;
      v59 = v35;
      _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%d> stream %d is already connected", buf, 0x32u);
    }
  }

  v18 = *(a3 + 24);
  if (v18)
  {
    v11 = *(v18 + 40);
    if (v11)
    {
      goto LABEL_28;
    }
  }

  __nwlog_obj();
  v24 = *(a3 + 16);
  if (!v24)
  {
    v24 = "invalid";
  }

  *buf = 136446466;
  v49 = "nw_http2_stream_connect";
  v50 = 2082;
  v51 = v24;
  v13 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v46 = 0;
  if (__nwlog_fault(v13, &type, &v46))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_98;
      }

      v16 = *(a3 + 16);
      if (!v16)
      {
        v16 = "invalid";
      }

      goto LABEL_23;
    }

    if (v46 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_98;
      }

      v42 = *(a3 + 16);
      if (!v42)
      {
        v42 = "invalid";
      }

      goto LABEL_79;
    }

    v39 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v40 = os_log_type_enabled(v14, type);
    if (v39)
    {
      if (v40)
      {
        v41 = "invalid";
        if (*(a3 + 16))
        {
          v41 = *(a3 + 16);
        }

        *buf = 136446722;
        v49 = "nw_http2_stream_connect";
        v50 = 2082;
        v51 = v41;
        v52 = 2082;
        v53 = v39;
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v39);
      if (v13)
      {
        goto LABEL_99;
      }

      return a1 != 0;
    }

    if (v40)
    {
      v44 = *(a3 + 16);
      if (!v44)
      {
        v44 = "invalid";
      }

      goto LABEL_96;
    }
  }

LABEL_98:
  if (v13)
  {
LABEL_99:
    v43 = v13;
    goto LABEL_100;
  }

  return a1 != 0;
}

void nw_protocol_plugins_connected(nw_protocol *a1, nw_protocol *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_plugins_connected";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v9, &type, &v23))
    {
      goto LABEL_65;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v26 = "nw_protocol_plugins_connected";
      v12 = "%{public}s called with null protocol";
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v18 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v26 = "nw_protocol_plugins_connected";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_65:
        if (!v9)
        {
          return;
        }

        goto LABEL_66;
      }

      if (!v18)
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v26 = "nw_protocol_plugins_connected";
      v12 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v26 = "nw_protocol_plugins_connected";
      v12 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_64;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_plugins_connected";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v9, &type, &v23))
    {
      goto LABEL_65;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v23 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_65;
        }

        *buf = 136446210;
        v26 = "nw_protocol_plugins_connected";
        v12 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
        goto LABEL_64;
      }

      v19 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v20 = os_log_type_enabled(v10, type);
      if (!v19)
      {
        if (!v20)
        {
          goto LABEL_65;
        }

        *buf = 136446210;
        v26 = "nw_protocol_plugins_connected";
        v12 = "%{public}s called with null protocol->handle, no backtrace";
        goto LABEL_64;
      }

      if (v20)
      {
        *buf = 136446466;
        v26 = "nw_protocol_plugins_connected";
        v27 = 2082;
        v28 = v19;
        v21 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
LABEL_49:
        _os_log_impl(&dword_181A37000, v10, v11, v21, buf, 0x16u);
      }

LABEL_50:
      free(v19);
      if (!v9)
      {
        return;
      }

LABEL_66:
      free(v9);
      return;
    }

    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_65;
    }

    *buf = 136446210;
    v26 = "nw_protocol_plugins_connected";
    v12 = "%{public}s called with null protocol->handle";
LABEL_64:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_65;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_protocol_plugins_handle_connected";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v9, &type, &v23))
    {
      goto LABEL_65;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v26 = "nw_protocol_plugins_handle_connected";
      v12 = "%{public}s called with null other_protocol";
      goto LABEL_64;
    }

    if (v23 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v26 = "nw_protocol_plugins_handle_connected";
      v12 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_64;
    }

    v19 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v22 = os_log_type_enabled(v10, type);
    if (!v19)
    {
      if (!v22)
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v26 = "nw_protocol_plugins_handle_connected";
      v12 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_64;
    }

    if (v22)
    {
      *buf = 136446466;
      v26 = "nw_protocol_plugins_handle_connected";
      v27 = 2082;
      v28 = v19;
      v21 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_49;
    }

    goto LABEL_50;
  }

  if (gLogDatapath == 1)
  {
    v13 = __nwlog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      identifier = a1->identifier;
      if (!identifier)
      {
        identifier = "invalid";
      }

      *buf = 136446722;
      v26 = "nw_protocol_plugins_handle_connected";
      v27 = 2080;
      v28 = identifier;
      v29 = 2048;
      v30 = a1;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s called for %s:%p", buf, 0x20u);
    }
  }

  v5 = handle[9];
  if (v5)
  {
    if (gLogDatapath == 1)
    {
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = a1->identifier;
        if (!v16)
        {
          v16 = "invalid";
        }

        *buf = 136446722;
        v26 = "nw_protocol_plugin_metadata_connected";
        v27 = 2048;
        v28 = a1;
        v29 = 2080;
        v30 = v16;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s protocol %p:%s got connected event", buf, 0x20u);
      }
    }

    v6 = *(v5 + 142);
    if ((v6 & 1) == 0)
    {
      v7 = v6 | 1;
      if ((*(v5 + 142) & 0x20) != 0)
      {
        *(v5 + 136) = 0;
        v7 = v6 & 0xC2 | 1;
      }

      *(v5 + 140) = 0;
      v6 = v7;
    }

    *(v5 + 142) = v6 & 0xEF;
  }

  v8 = handle[11];
  if (v8)
  {
    nw_protocol_plugin_retry_connected(v8, a1, a2);
  }

  else
  {
    nw_protocol_common_connected(a1, a2);
  }
}

uint64_t nw_flow_connect(nw_protocol *a1, nw_protocol *a2)
{
  handle = a1->handle;
  if (handle && (v3 = handle[20]) != 0)
  {
    return nw_endpoint_flow_connect(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t nw_protocol_http_client_copy_info(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(a1 + 32);
      if (a2 == 255)
      {
        result = nw_protocol_copy_info(v3);
        if (!result)
        {
          result = _nw_array_create();
        }

        if (result)
        {
          v5 = *(v2 + 472);
          if (v5)
          {
            v6 = result;
            _nw_array_append(result, v5);
            return v6;
          }
        }
      }

      else
      {

        return nw_protocol_copy_info(v3);
      }

      return result;
    }

    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_http_client_copy_info";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v7, &type, &v15))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_http_client_copy_info";
        v10 = "%{public}s called with null http_client";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v15 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_http_client_copy_info";
        v10 = "%{public}s called with null http_client, backtrace limit exceeded";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v14 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v18 = "nw_protocol_http_client_copy_info";
        v10 = "%{public}s called with null http_client, no backtrace";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v14)
    {
      *buf = 136446466;
      v18 = "nw_protocol_http_client_copy_info";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null http_client, dumping backtrace:%{public}s";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocol_http_client_copy_info";
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v7, &type, &v15))
  {
    goto LABEL_40;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v15 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_http_client_copy_info";
        v10 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v12 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v18 = "nw_protocol_http_client_copy_info";
        v10 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v12)
    {
      *buf = 136446466;
      v18 = "nw_protocol_http_client_copy_info";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_29:
      _os_log_impl(&dword_181A37000, v8, v9, v13, buf, 0x16u);
    }

LABEL_30:
    free(backtrace_string);
    goto LABEL_40;
  }

  v8 = __nwlog_obj();
  v9 = type;
  if (os_log_type_enabled(v8, type))
  {
    *buf = 136446210;
    v18 = "nw_protocol_http_client_copy_info";
    v10 = "%{public}s called with null protocol";
LABEL_39:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
  }

LABEL_40:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

uint64_t nw_protocol_http_connection_state_copy_info(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_http_connection_state_copy_info";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v5, &type, &v16))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connection_state_copy_info";
      v8 = "%{public}s called with null protocol";
    }

    else if (v16 == 1)
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
          v19 = "nw_protocol_http_connection_state_copy_info";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_54:
        if (!v5)
        {
          return 0;
        }

LABEL_55:
        free(v5);
        return 0;
      }

      if (!v10)
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connection_state_copy_info";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connection_state_copy_info";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_53;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_http_connection_state_copy_info";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v5, &type, &v16))
    {
      goto LABEL_54;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v16 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_54;
        }

        *buf = 136446210;
        v19 = "nw_protocol_http_connection_state_copy_info";
        v8 = "%{public}s called with null http_connection_state, backtrace limit exceeded";
        goto LABEL_53;
      }

      v11 = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v12 = os_log_type_enabled(v6, type);
      if (!v11)
      {
        if (!v12)
        {
          goto LABEL_54;
        }

        *buf = 136446210;
        v19 = "nw_protocol_http_connection_state_copy_info";
        v8 = "%{public}s called with null http_connection_state, no backtrace";
        goto LABEL_53;
      }

      if (v12)
      {
        *buf = 136446466;
        v19 = "nw_protocol_http_connection_state_copy_info";
        v20 = 2082;
        v21 = v11;
        v13 = "%{public}s called with null http_connection_state, dumping backtrace:%{public}s";
LABEL_36:
        _os_log_impl(&dword_181A37000, v6, v7, v13, buf, 0x16u);
      }

LABEL_37:
      free(v11);
      if (!v5)
      {
        return 0;
      }

      goto LABEL_55;
    }

    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_54;
    }

    *buf = 136446210;
    v19 = "nw_protocol_http_connection_state_copy_info";
    v8 = "%{public}s called with null http_connection_state";
LABEL_53:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_54;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_http_connection_state_copy_info";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v5, &type, &v16))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connection_state_copy_info";
      v8 = "%{public}s called with null type";
      goto LABEL_53;
    }

    if (v16 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connection_state_copy_info";
      v8 = "%{public}s called with null type, backtrace limit exceeded";
      goto LABEL_53;
    }

    v11 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v14 = os_log_type_enabled(v6, type);
    if (!v11)
    {
      if (!v14)
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v19 = "nw_protocol_http_connection_state_copy_info";
      v8 = "%{public}s called with null type, no backtrace";
      goto LABEL_53;
    }

    if (v14)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http_connection_state_copy_info";
      v20 = 2082;
      v21 = v11;
      v13 = "%{public}s called with null type, dumping backtrace:%{public}s";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    if ((*(v2 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v19 = "nw_protocol_http_connection_state_copy_info";
        v20 = 2082;
        v21 = (v2 + 114);
        v22 = 2080;
        v23 = " ";
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scopy_info requires an output handler", buf, 0x20u);
      }
    }

    return 0;
  }

  return nw_protocol_common_copy_info(v3, a2);
}

id nw_http_connection_metadata_get_establishment_report(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_protocol_copy_http_connection_definition_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  v4 = nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_connection_definition_definition);

  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v30 = __Block_byref_object_copy__75915;
    v31 = __Block_byref_object_dispose__75916;
    v32 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v24 = __nw_http_connection_metadata_get_establishment_report_block_invoke;
    v25 = &unk_1E6A3A858;
    v26 = buf;
    if (v3)
    {
      if (_nw_protocol_metadata_get_handle(v3))
      {
        (v24)(v23);
      }

LABEL_7:
      v5 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_8;
    }

    v11 = __nwlog_obj();
    *v33 = 136446210;
    v34 = "nw_protocol_metadata_access_handle";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v12, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *v33 = 136446210;
          v34 = "nw_protocol_metadata_access_handle";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null metadata", v33, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v19 = type;
        v20 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *v33 = 136446466;
            v34 = "nw_protocol_metadata_access_handle";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null metadata, dumping backtrace:%{public}s", v33, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_44;
        }

        if (v20)
        {
          *v33 = 136446210;
          v34 = "nw_protocol_metadata_access_handle";
          _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null metadata, no backtrace", v33, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v13, type))
        {
          *v33 = 136446210;
          v34 = "nw_protocol_metadata_access_handle";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null metadata, backtrace limit exceeded", v33, 0xCu);
        }
      }
    }

LABEL_44:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_7;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_connection_metadata_get_establishment_report";
  v8 = _os_log_send_and_compose_impl();

  v33[0] = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v8, v33, &type))
  {
    if (v33[0] == 17)
    {
      v9 = __nwlog_obj();
      v10 = v33[0];
      if (os_log_type_enabled(v9, v33[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_connection_metadata_get_establishment_report";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s metadata must be http_connection", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v15 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v16 = v33[0];
      v17 = os_log_type_enabled(v9, v33[0]);
      if (v15)
      {
        if (v17)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_connection_metadata_get_establishment_report";
          *&buf[12] = 2082;
          *&buf[14] = v15;
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v15);
        goto LABEL_38;
      }

      if (v17)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_connection_metadata_get_establishment_report";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s metadata must be http_connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v21 = v33[0];
      if (os_log_type_enabled(v9, v33[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_connection_metadata_get_establishment_report";
        _os_log_impl(&dword_181A37000, v9, v21, "%{public}s metadata must be http_connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_38:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_8:

  return v5;
}

void sub_181F0092C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_http_connection_metadata_set_privacy_stance(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_connection_metadata_set_privacy_stance";
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
        v22 = "nw_http_connection_metadata_set_privacy_stance";
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
          v22 = "nw_http_connection_metadata_set_privacy_stance";
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
        v22 = "nw_http_connection_metadata_set_privacy_stance";
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
        v22 = "nw_http_connection_metadata_set_privacy_stance";
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
    v16 = __nw_http_connection_metadata_set_privacy_stance_block_invoke;
    v17 = &__block_descriptor_36_e9_B16__0_v8l;
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
  v22 = "nw_http_connection_metadata_set_privacy_stance";
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
      v22 = "nw_http_connection_metadata_set_privacy_stance";
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
      v22 = "nw_http_connection_metadata_set_privacy_stance";
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
      v22 = "nw_http_connection_metadata_set_privacy_stance";
      v9 = "%{public}s metadata must be http_connection, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_connection_metadata_set_privacy_stance";
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

uint64_t __nw_http_connection_metadata_set_path_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = nw_path_copy_effective_remote_endpoint(*(a1 + 32));
  v5 = *(a2 + 216);
  *(a2 + 216) = v4;

  v6 = nw_path_copy_effective_local_endpoint(*(a1 + 32));
  v7 = *(a2 + 208);
  *(a2 + 208) = v6;

  v8 = nw_path_copy_interface(*(a1 + 32));
  v9 = v8;
  if (v8)
  {
    name = _nw_interface_get_name(v8);
    if (name)
    {
      v11 = strdup(name);
      if (v11)
      {
LABEL_4:
        *(a2 + 200) = v11;
        goto LABEL_5;
      }
    }

    else
    {
      v19 = __nwlog_obj();
      os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      v20 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v20);
      if (result)
      {
        goto LABEL_16;
      }

      free(v20);
      v11 = strdup(0);
      if (v11)
      {
        goto LABEL_4;
      }
    }

    v21 = v11;
    v22 = __nwlog_obj();
    os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    v23 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v23);
    if (!result)
    {
      free(v23);
      v11 = v21;
      goto LABEL_4;
    }

LABEL_16:
    __break(1u);
    return result;
  }

LABEL_5:
  v13 = *(a1 + 32);
  v12 = (a1 + 32);
  v14 = _nw_path_uses_interface_type(v13, 2u);
  LOWORD(v13) = *(a2 + 224);
  v15 = (a2 + 224);
  *v15 = v13 & 0xFFFE | v14;
  if (_nw_path_is_expensive(*v12))
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  *v15 = *v15 & 0xFFFD | v16;
  if (_nw_path_is_constrained(*v12))
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  *v15 = *v15 & 0xFFFB | v17;

  return 1;
}

void nw_protocol_plugins_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v177 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v170 = "nw_protocol_plugins_disconnect";
    v98 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v167 = 0;
    if (!__nwlog_fault(v98, &type, &v167))
    {
      goto LABEL_329;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v99 = __nwlog_obj();
      v100 = type;
      if (!os_log_type_enabled(v99, type))
      {
        goto LABEL_329;
      }

      *buf = 136446210;
      v170 = "nw_protocol_plugins_disconnect";
      v101 = "%{public}s called with null protocol";
    }

    else if (v167 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v99 = __nwlog_obj();
      v100 = type;
      v124 = os_log_type_enabled(v99, type);
      if (backtrace_string)
      {
        if (v124)
        {
          *buf = 136446466;
          v170 = "nw_protocol_plugins_disconnect";
          v171 = 2082;
          v172 = backtrace_string;
          _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_329:
        if (!v98)
        {
          return;
        }

        goto LABEL_330;
      }

      if (!v124)
      {
        goto LABEL_329;
      }

      *buf = 136446210;
      v170 = "nw_protocol_plugins_disconnect";
      v101 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v99 = __nwlog_obj();
      v100 = type;
      if (!os_log_type_enabled(v99, type))
      {
        goto LABEL_329;
      }

      *buf = 136446210;
      v170 = "nw_protocol_plugins_disconnect";
      v101 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_328;
  }

  v2 = a1;
  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v170 = "nw_protocol_plugins_disconnect";
    v98 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v167 = 0;
    if (!__nwlog_fault(v98, &type, &v167))
    {
      goto LABEL_329;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v167 != 1)
      {
        v99 = __nwlog_obj();
        v100 = type;
        if (!os_log_type_enabled(v99, type))
        {
          goto LABEL_329;
        }

        *buf = 136446210;
        v170 = "nw_protocol_plugins_disconnect";
        v101 = "%{public}s called with null protocol->handle, backtrace limit exceeded";
        goto LABEL_328;
      }

      v125 = __nw_create_backtrace_string();
      v99 = __nwlog_obj();
      v100 = type;
      v126 = os_log_type_enabled(v99, type);
      if (!v125)
      {
        if (!v126)
        {
          goto LABEL_329;
        }

        *buf = 136446210;
        v170 = "nw_protocol_plugins_disconnect";
        v101 = "%{public}s called with null protocol->handle, no backtrace";
        goto LABEL_328;
      }

      if (v126)
      {
        *buf = 136446466;
        v170 = "nw_protocol_plugins_disconnect";
        v171 = 2082;
        v172 = v125;
        v127 = "%{public}s called with null protocol->handle, dumping backtrace:%{public}s";
LABEL_253:
        _os_log_impl(&dword_181A37000, v99, v100, v127, buf, 0x16u);
      }

LABEL_254:
      free(v125);
      if (!v98)
      {
        return;
      }

LABEL_330:
      v77 = v98;
LABEL_196:
      free(v77);
      return;
    }

    v99 = __nwlog_obj();
    v100 = type;
    if (!os_log_type_enabled(v99, type))
    {
      goto LABEL_329;
    }

    *buf = 136446210;
    v170 = "nw_protocol_plugins_disconnect";
    v101 = "%{public}s called with null protocol->handle";
LABEL_328:
    _os_log_impl(&dword_181A37000, v99, v100, v101, buf, 0xCu);
    goto LABEL_329;
  }

  v4 = a2;
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v170 = "nw_protocol_plugins_handle_disconnect";
    v98 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v167 = 0;
    if (!__nwlog_fault(v98, &type, &v167))
    {
      goto LABEL_329;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v99 = __nwlog_obj();
      v100 = type;
      if (!os_log_type_enabled(v99, type))
      {
        goto LABEL_329;
      }

      *buf = 136446210;
      v170 = "nw_protocol_plugins_handle_disconnect";
      v101 = "%{public}s called with null other_protocol";
      goto LABEL_328;
    }

    if (v167 != 1)
    {
      v99 = __nwlog_obj();
      v100 = type;
      if (!os_log_type_enabled(v99, type))
      {
        goto LABEL_329;
      }

      *buf = 136446210;
      v170 = "nw_protocol_plugins_handle_disconnect";
      v101 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_328;
    }

    v125 = __nw_create_backtrace_string();
    v99 = __nwlog_obj();
    v100 = type;
    v128 = os_log_type_enabled(v99, type);
    if (!v125)
    {
      if (!v128)
      {
        goto LABEL_329;
      }

      *buf = 136446210;
      v170 = "nw_protocol_plugins_handle_disconnect";
      v101 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_328;
    }

    if (v128)
    {
      *buf = 136446466;
      v170 = "nw_protocol_plugins_handle_disconnect";
      v171 = 2082;
      v172 = v125;
      v127 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_253;
    }

    goto LABEL_254;
  }

  if (gLogDatapath == 1)
  {
    v102 = __nwlog_obj();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
    {
      name = v2->identifier->name;
      if (!name)
      {
        name = "invalid";
      }

      *buf = 136446722;
      v170 = "nw_protocol_plugins_handle_disconnect";
      v171 = 2080;
      v172 = name;
      v173 = 2048;
      v174 = v2;
      _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_DEBUG, "%{public}s called for %s:%p", buf, 0x20u);
    }
  }

  v5 = handle[11];
  if (!v5)
  {
    goto LABEL_9;
  }

  if (gLogDatapath == 1)
  {
    v116 = __nwlog_obj();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v170 = "nw_protocol_plugin_retry_disconnect";
      v171 = 2048;
      v172 = v2;
      _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_DEBUG, "%{public}s called %p", buf, 0x16u);
    }
  }

  v6 = *(v5 + 108);
  *(v5 + 108) = v6 | 0x80;
  if ((v6 & 0x20) != 0)
  {
    if (gLogDatapath == 1)
    {
      v143 = __nwlog_obj();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v170 = "nw_protocol_plugin_retry_disconnect";
        v171 = 2048;
        v172 = v2;
        v173 = 2048;
        v174 = v4;
        _os_log_impl(&dword_181A37000, v143, OS_LOG_TYPE_DEBUG, "%{public}s %p sending disconnected immediately to %p as async reissue is pending", buf, 0x20u);
      }
    }

    v13 = v4->handle;
    v14 = v4;
    if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v14 = *v4[1].flow_id) != 0)
    {
      callbacks = v14[1].callbacks;
      v15 = 0;
      if (callbacks)
      {
        v14[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v15 = 1;
    }

    v20 = v2->handle;
    v21 = v2;
    if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v21 = *v2[1].flow_id) != 0)
    {
      v24 = v21[1].callbacks;
      if (v24)
      {
        v22 = 0;
        v21[1].callbacks = (&v24->add_input_handler + 1);
        v23 = v4->callbacks;
        if (!v23)
        {
          goto LABEL_232;
        }
      }

      else
      {
        v22 = 0;
        v23 = v4->callbacks;
        if (!v23)
        {
          goto LABEL_232;
        }
      }
    }

    else
    {
      v22 = 1;
      v23 = v4->callbacks;
      if (!v23)
      {
        goto LABEL_232;
      }
    }

    disconnected = v23->disconnected;
    if (disconnected)
    {
      disconnected(v4, v2);
LABEL_41:
      if ((v22 & 1) == 0)
      {
        v26 = v2->handle;
        if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
        {
          v27 = v2[1].callbacks;
          if (v27)
          {
            v28 = (v27 - 1);
            v2[1].callbacks = v28;
            if (!v28)
            {
              v29 = *v2[1].flow_id;
              if (v29)
              {
                *v2[1].flow_id = 0;
                v29[2](v29);
                _Block_release(v29);
              }

              if (v2[1].flow_id[8])
              {
                v30 = *v2[1].flow_id;
                if (v30)
                {
                  _Block_release(v30);
                }
              }

              free(v2);
            }
          }
        }
      }

      if (v15)
      {
        return;
      }

      v31 = v4->handle;
      if (v31 == &nw_protocol_ref_counted_handle)
      {
        goto LABEL_188;
      }

      if (v31 != &nw_protocol_ref_counted_additional_handle)
      {
        return;
      }

      goto LABEL_187;
    }

LABEL_232:
    __nwlog_obj();
    v117 = v4->identifier->name;
    *buf = 136446722;
    v170 = "__nw_protocol_disconnected";
    if (!v117)
    {
      v117 = "invalid";
    }

    v171 = 2082;
    v172 = v117;
    v173 = 2048;
    v174 = v4;
    v118 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v167 = 0;
    if (!__nwlog_fault(v118, &type, &v167))
    {
      goto LABEL_364;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v119 = __nwlog_obj();
      v120 = type;
      if (!os_log_type_enabled(v119, type))
      {
        goto LABEL_364;
      }

      v121 = v4->identifier->name;
      if (!v121)
      {
        v121 = "invalid";
      }

      *buf = 136446722;
      v170 = "__nw_protocol_disconnected";
      v171 = 2082;
      v172 = v121;
      v173 = 2048;
      v174 = v4;
      v122 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback";
    }

    else if (v167 == 1)
    {
      log = v22;
      v144 = __nw_create_backtrace_string();
      v119 = __nwlog_obj();
      v120 = type;
      v145 = os_log_type_enabled(v119, type);
      if (v144)
      {
        if (v145)
        {
          v146 = v4->identifier->name;
          if (!v146)
          {
            v146 = "invalid";
          }

          *buf = 136446978;
          v170 = "__nw_protocol_disconnected";
          v171 = 2082;
          v172 = v146;
          v173 = 2048;
          v174 = v4;
          v175 = 2082;
          v176 = v144;
          _os_log_impl(&dword_181A37000, v119, v120, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v144);
        v22 = log;
        goto LABEL_364;
      }

      v22 = log;
      if (!v145)
      {
LABEL_364:
        if (v118)
        {
          free(v118);
        }

        goto LABEL_41;
      }

      v163 = v4->identifier->name;
      if (!v163)
      {
        v163 = "invalid";
      }

      *buf = 136446722;
      v170 = "__nw_protocol_disconnected";
      v171 = 2082;
      v172 = v163;
      v173 = 2048;
      v174 = v4;
      v122 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace";
    }

    else
    {
      v119 = __nwlog_obj();
      v120 = type;
      if (!os_log_type_enabled(v119, type))
      {
        goto LABEL_364;
      }

      v156 = v4->identifier->name;
      if (!v156)
      {
        v156 = "invalid";
      }

      *buf = 136446722;
      v170 = "__nw_protocol_disconnected";
      v171 = 2082;
      v172 = v156;
      v173 = 2048;
      v174 = v4;
      v122 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v119, v120, v122, buf, 0x20u);
    goto LABEL_364;
  }

  if (((*(v5 + 40))(v2, v4) & 1) == 0)
  {
    if (gLogDatapath == 1)
    {
      v155 = __nwlog_obj();
      if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v170 = "nw_protocol_plugin_retry_disconnect";
        v171 = 2048;
        v172 = v2;
        v173 = 2048;
        v174 = v4;
        _os_log_impl(&dword_181A37000, v155, OS_LOG_TYPE_DEBUG, "%{public}s %p sending disconnected immediately to %p without disconnect", buf, 0x20u);
      }
    }

    v16 = v4->handle;
    v17 = v4;
    if (v16 == &nw_protocol_ref_counted_handle || v16 == &nw_protocol_ref_counted_additional_handle && (v17 = *v4[1].flow_id) != 0)
    {
      v38 = v17[1].callbacks;
      v18 = 0;
      if (v38)
      {
        v17[1].callbacks = (&v38->add_input_handler + 1);
      }
    }

    else
    {
      v18 = 1;
    }

    v84 = v2->handle;
    v85 = v2;
    if (v84 == &nw_protocol_ref_counted_handle || v84 == &nw_protocol_ref_counted_additional_handle && (v85 = *v2[1].flow_id) != 0)
    {
      v86 = v85[1].callbacks;
      if (v86)
      {
        v81 = 0;
        v85[1].callbacks = (&v86->add_input_handler + 1);
        v82 = v4->callbacks;
        if (!v82)
        {
          goto LABEL_214;
        }
      }

      else
      {
        v81 = 0;
        v82 = v4->callbacks;
        if (!v82)
        {
          goto LABEL_214;
        }
      }
    }

    else
    {
      v81 = 1;
      v82 = v4->callbacks;
      if (!v82)
      {
        goto LABEL_214;
      }
    }

LABEL_170:
    v87 = v82->disconnected;
    if (v87)
    {
      v87(v4, v2);
LABEL_172:
      if ((v81 & 1) == 0)
      {
        v88 = v2->handle;
        if (v88 == &nw_protocol_ref_counted_handle || v88 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
        {
          v89 = v2[1].callbacks;
          if (v89)
          {
            v90 = (v89 - 1);
            v2[1].callbacks = v90;
            if (!v90)
            {
              v91 = *v2[1].flow_id;
              if (v91)
              {
                *v2[1].flow_id = 0;
                v91[2](v91);
                _Block_release(v91);
              }

              if (v2[1].flow_id[8])
              {
                v92 = *v2[1].flow_id;
                if (v92)
                {
                  _Block_release(v92);
                }
              }

              free(v2);
            }
          }
        }
      }

      if (v18)
      {
        return;
      }

      v93 = v4->handle;
      if (v93 == &nw_protocol_ref_counted_handle)
      {
        goto LABEL_188;
      }

      if (v93 != &nw_protocol_ref_counted_additional_handle)
      {
        return;
      }

LABEL_187:
      v4 = *v4[1].flow_id;
      if (!v4)
      {
        return;
      }

LABEL_188:
      v94 = v4[1].callbacks;
      if (v94)
      {
        v95 = (v94 - 1);
        v4[1].callbacks = v95;
        if (!v95)
        {
          v96 = *v4[1].flow_id;
          if (v96)
          {
            *v4[1].flow_id = 0;
            v96[2](v96);
            _Block_release(v96);
          }

          if (v4[1].flow_id[8])
          {
            v97 = *v4[1].flow_id;
            if (v97)
            {
              _Block_release(v97);
            }
          }

          v77 = v4;
          goto LABEL_196;
        }
      }

      return;
    }

LABEL_214:
    __nwlog_obj();
    v104 = v4->identifier->name;
    *buf = 136446722;
    v170 = "__nw_protocol_disconnected";
    if (!v104)
    {
      v104 = "invalid";
    }

    v171 = 2082;
    v172 = v104;
    v173 = 2048;
    v174 = v4;
    v105 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v167 = 0;
    if (!__nwlog_fault(v105, &type, &v167))
    {
      goto LABEL_350;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v106 = __nwlog_obj();
      v107 = type;
      if (!os_log_type_enabled(v106, type))
      {
        goto LABEL_350;
      }

      v108 = v4->identifier->name;
      if (!v108)
      {
        v108 = "invalid";
      }

      *buf = 136446722;
      v170 = "__nw_protocol_disconnected";
      v171 = 2082;
      v172 = v108;
      v173 = 2048;
      v174 = v4;
      v109 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback";
    }

    else if (v167 == 1)
    {
      v129 = __nw_create_backtrace_string();
      v106 = __nwlog_obj();
      v107 = type;
      v130 = os_log_type_enabled(v106, type);
      if (v129)
      {
        if (v130)
        {
          v131 = v4->identifier->name;
          if (!v131)
          {
            v131 = "invalid";
          }

          *buf = 136446978;
          v170 = "__nw_protocol_disconnected";
          v171 = 2082;
          v172 = v131;
          v173 = 2048;
          v174 = v4;
          v175 = 2082;
          v176 = v129;
          _os_log_impl(&dword_181A37000, v106, v107, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v129);
        goto LABEL_350;
      }

      if (!v130)
      {
LABEL_350:
        if (v105)
        {
          free(v105);
        }

        goto LABEL_172;
      }

      v161 = v4->identifier->name;
      if (!v161)
      {
        v161 = "invalid";
      }

      *buf = 136446722;
      v170 = "__nw_protocol_disconnected";
      v171 = 2082;
      v172 = v161;
      v173 = 2048;
      v174 = v4;
      v109 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace";
    }

    else
    {
      v106 = __nwlog_obj();
      v107 = type;
      if (!os_log_type_enabled(v106, type))
      {
        goto LABEL_350;
      }

      v147 = v4->identifier->name;
      if (!v147)
      {
        v147 = "invalid";
      }

      *buf = 136446722;
      v170 = "__nw_protocol_disconnected";
      v171 = 2082;
      v172 = v147;
      v173 = 2048;
      v174 = v4;
      v109 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v106, v107, v109, buf, 0x20u);
    goto LABEL_350;
  }

LABEL_9:
  v7 = handle[9];
  if (v7)
  {
    if (gLogDatapath == 1)
    {
      v132 = __nwlog_obj();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
      {
        v133 = v2->identifier->name;
        if (!v133)
        {
          v133 = "invalid";
        }

        *buf = 136446722;
        v170 = "nw_protocol_plugin_metadata_disconnect";
        v171 = 2048;
        v172 = v2;
        v173 = 2080;
        v174 = v133;
        _os_log_impl(&dword_181A37000, v132, OS_LOG_TYPE_DEBUG, "%{public}s protocol %p:%s disconnect", buf, 0x20u);
      }
    }

    v8 = *(v7 + 142);
    if (v8)
    {
      *(v7 + 140) = 3;
    }

    *(v7 + 142) = v8 & 0xDE;
    if ((v8 & 8) != 0)
    {
      if (gLogDatapath == 1)
      {
        v148 = __nwlog_obj();
        if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
        {
          v149 = v2->identifier->name;
          if (!v149)
          {
            v149 = "invalid";
          }

          *buf = 136446722;
          v170 = "nw_protocol_plugin_metadata_disconnect";
          v171 = 2048;
          v172 = v2;
          v173 = 2080;
          v174 = v149;
          _os_log_impl(&dword_181A37000, v148, OS_LOG_TYPE_DEBUG, "%{public}s protocol %p:%s sending disconnected immediately as it had previously received disconnected", buf, 0x20u);
        }
      }

      *(v7 + 142) &= ~8u;
      output_handler = v2->output_handler;
      v9 = v2->handle;
      v11 = v2;
      if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v11 = *v2[1].flow_id) != 0)
      {
        v32 = v11[1].callbacks;
        if (v32)
        {
          v12 = 0;
          v11[1].callbacks = (&v32->add_input_handler + 1);
          if (output_handler)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v12 = 0;
          if (output_handler)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        v12 = 1;
        if (output_handler)
        {
LABEL_60:
          v33 = *(output_handler + 40);
          v34 = output_handler;
          if (v33 == &nw_protocol_ref_counted_handle || v33 == &nw_protocol_ref_counted_additional_handle && (v34 = *(output_handler + 64)) != 0)
          {
            v37 = *(v34 + 88);
            if (v37)
            {
              v35 = 0;
              *(v34 + 88) = v37 + 1;
              v36 = v2->callbacks;
              if (!v36)
              {
                goto LABEL_267;
              }
            }

            else
            {
              v35 = 0;
              v36 = v2->callbacks;
              if (!v36)
              {
                goto LABEL_267;
              }
            }
          }

          else
          {
            v35 = 1;
            v36 = v2->callbacks;
            if (!v36)
            {
              goto LABEL_267;
            }
          }

          v42 = v36->disconnected;
          if (v42)
          {
            v42(v2, output_handler);
            goto LABEL_79;
          }

LABEL_267:
          __nwlog_obj();
          v134 = v2->identifier->name;
          *buf = 136446722;
          v170 = "__nw_protocol_disconnected";
          if (!v134)
          {
            v134 = "invalid";
          }

          v171 = 2082;
          v172 = v134;
          v173 = 2048;
          v174 = v2;
          v135 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v167 = 0;
          if (!__nwlog_fault(v135, &type, &v167))
          {
            goto LABEL_343;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v136 = __nwlog_obj();
            v137 = type;
            if (!os_log_type_enabled(v136, type))
            {
              goto LABEL_343;
            }

            v138 = v2->identifier->name;
            if (!v138)
            {
              v138 = "invalid";
            }

            *buf = 136446722;
            v170 = "__nw_protocol_disconnected";
            v171 = 2082;
            v172 = v138;
            v173 = 2048;
            v174 = v2;
            v139 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback";
          }

          else
          {
            if (v167 == 1)
            {
              v151 = __nw_create_backtrace_string();
              v152 = __nwlog_obj();
              v137 = type;
              loga = v152;
              v153 = os_log_type_enabled(v152, type);
              if (v151)
              {
                if (v153)
                {
                  v154 = v2->identifier->name;
                  if (!v154)
                  {
                    v154 = "invalid";
                  }

                  *buf = 136446978;
                  v170 = "__nw_protocol_disconnected";
                  v171 = 2082;
                  v172 = v154;
                  v173 = 2048;
                  v174 = v2;
                  v175 = 2082;
                  v176 = v151;
                  _os_log_impl(&dword_181A37000, loga, v137, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v151);
                goto LABEL_343;
              }

              if (!v153)
              {
LABEL_343:
                if (v135)
                {
                  free(v135);
                }

LABEL_79:
                if ((v35 & 1) == 0)
                {
                  v43 = *(output_handler + 40);
                  if (v43 == &nw_protocol_ref_counted_handle || v43 == &nw_protocol_ref_counted_additional_handle && (output_handler = *(output_handler + 64)) != 0)
                  {
                    v44 = *(output_handler + 88);
                    if (v44)
                    {
                      v45 = v44 - 1;
                      *(output_handler + 88) = v45;
                      if (!v45)
                      {
                        v46 = *(output_handler + 64);
                        if (v46)
                        {
                          *(output_handler + 64) = 0;
                          v46[2](v46);
                          _Block_release(v46);
                        }

                        if (*(output_handler + 72))
                        {
                          v47 = *(output_handler + 64);
                          if (v47)
                          {
                            _Block_release(v47);
                          }
                        }

                        goto LABEL_90;
                      }
                    }
                  }
                }

                goto LABEL_91;
              }

              v164 = v2->identifier->name;
              if (!v164)
              {
                v164 = "invalid";
              }

              *buf = 136446722;
              v170 = "__nw_protocol_disconnected";
              v171 = 2082;
              v172 = v164;
              v173 = 2048;
              v174 = v2;
              v139 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace";
              v160 = loga;
LABEL_342:
              _os_log_impl(&dword_181A37000, v160, v137, v139, buf, 0x20u);
              goto LABEL_343;
            }

            v136 = __nwlog_obj();
            v137 = type;
            if (!os_log_type_enabled(v136, type))
            {
              goto LABEL_343;
            }

            v159 = v2->identifier->name;
            if (!v159)
            {
              v159 = "invalid";
            }

            *buf = 136446722;
            v170 = "__nw_protocol_disconnected";
            v171 = 2082;
            v172 = v159;
            v173 = 2048;
            v174 = v2;
            v139 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded";
          }

          v160 = v136;
          goto LABEL_342;
        }
      }

      __nwlog_obj();
      *buf = 136446210;
      v170 = "__nw_protocol_disconnected";
      output_handler = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v167 = 0;
      if (__nwlog_fault(output_handler, &type, &v167))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v39 = __nwlog_obj();
          v40 = type;
          if (!os_log_type_enabled(v39, type))
          {
            goto LABEL_375;
          }

          *buf = 136446210;
          v170 = "__nw_protocol_disconnected";
          v41 = "%{public}s called with null other_protocol";
          goto LABEL_374;
        }

        if (v167 != 1)
        {
          v39 = __nwlog_obj();
          v40 = type;
          if (!os_log_type_enabled(v39, type))
          {
            goto LABEL_375;
          }

          *buf = 136446210;
          v170 = "__nw_protocol_disconnected";
          v41 = "%{public}s called with null other_protocol, backtrace limit exceeded";
          goto LABEL_374;
        }

        v157 = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        v40 = type;
        v158 = os_log_type_enabled(v39, type);
        if (v157)
        {
          if (v158)
          {
            *buf = 136446466;
            v170 = "__nw_protocol_disconnected";
            v171 = 2082;
            v172 = v157;
            _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v157);
          if (!output_handler)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }

        if (v158)
        {
          *buf = 136446210;
          v170 = "__nw_protocol_disconnected";
          v41 = "%{public}s called with null other_protocol, no backtrace";
LABEL_374:
          _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0xCu);
        }
      }

LABEL_375:
      if (output_handler)
      {
LABEL_90:
        free(output_handler);
      }

LABEL_91:
      if ((v12 & 1) == 0)
      {
        v48 = v2->handle;
        v49 = v2;
        if (v48 == &nw_protocol_ref_counted_handle || v48 == &nw_protocol_ref_counted_additional_handle && (v49 = *v2[1].flow_id) != 0)
        {
          v50 = v49[1].callbacks;
          if (v50)
          {
            v51 = (v50 - 1);
            v49[1].callbacks = v51;
            if (!v51)
            {
              v52 = *v49[1].flow_id;
              if (v52)
              {
                *v49[1].flow_id = 0;
                v52[2](v52);
                _Block_release(v52);
              }

              if (v49[1].flow_id[8])
              {
                v53 = *v49[1].flow_id;
                if (v53)
                {
                  _Block_release(v53);
                }
              }

              free(v49);
            }
          }
        }
      }
    }
  }

  v54 = v2->output_handler;
  if (!v54)
  {
    v58 = v4->handle;
    v59 = v4;
    if (v58 == &nw_protocol_ref_counted_handle || v58 == &nw_protocol_ref_counted_additional_handle && (v59 = *v4[1].flow_id) != 0)
    {
      v78 = v59[1].callbacks;
      v18 = 0;
      if (v78)
      {
        v59[1].callbacks = (&v78->add_input_handler + 1);
      }
    }

    else
    {
      v18 = 1;
    }

    v79 = v2->handle;
    v80 = v2;
    if (v79 == &nw_protocol_ref_counted_handle || v79 == &nw_protocol_ref_counted_additional_handle && (v80 = *v2[1].flow_id) != 0)
    {
      v83 = v80[1].callbacks;
      if (v83)
      {
        v81 = 0;
        v80[1].callbacks = (&v83->add_input_handler + 1);
        v82 = v4->callbacks;
        if (!v82)
        {
          goto LABEL_214;
        }
      }

      else
      {
        v81 = 0;
        v82 = v4->callbacks;
        if (!v82)
        {
          goto LABEL_214;
        }
      }
    }

    else
    {
      v81 = 1;
      v82 = v4->callbacks;
      if (!v82)
      {
        goto LABEL_214;
      }
    }

    goto LABEL_170;
  }

  v55 = v54->handle;
  v56 = v2->output_handler;
  if (v55 == &nw_protocol_ref_counted_handle || v55 == &nw_protocol_ref_counted_additional_handle && (v56 = *v54[1].flow_id) != 0)
  {
    v60 = v56[1].callbacks;
    v57 = 0;
    if (v60)
    {
      v56[1].callbacks = (&v60->add_input_handler + 1);
    }
  }

  else
  {
    v57 = 1;
  }

  v61 = v2->handle;
  v62 = v2;
  if (v61 == &nw_protocol_ref_counted_handle || v61 == &nw_protocol_ref_counted_additional_handle && (v62 = *v2[1].flow_id) != 0)
  {
    v65 = v62[1].callbacks;
    if (v65)
    {
      v63 = 0;
      v62[1].callbacks = (&v65->add_input_handler + 1);
      v64 = v54->callbacks;
      if (!v64)
      {
        goto LABEL_222;
      }
    }

    else
    {
      v63 = 0;
      v64 = v54->callbacks;
      if (!v64)
      {
        goto LABEL_222;
      }
    }
  }

  else
  {
    v63 = 1;
    v64 = v54->callbacks;
    if (!v64)
    {
      goto LABEL_222;
    }
  }

  disconnect = v64->disconnect;
  if (disconnect)
  {
    disconnect(v54, v2);
    goto LABEL_124;
  }

LABEL_222:
  __nwlog_obj();
  v110 = v54->identifier->name;
  *buf = 136446722;
  v170 = "__nw_protocol_disconnect";
  if (!v110)
  {
    v110 = "invalid";
  }

  v171 = 2082;
  v172 = v110;
  v173 = 2048;
  v174 = v54;
  v111 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v167 = 0;
  if (!__nwlog_fault(v111, &type, &v167))
  {
    goto LABEL_357;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v112 = __nwlog_obj();
    v113 = type;
    if (!os_log_type_enabled(v112, type))
    {
      goto LABEL_357;
    }

    v114 = v54->identifier->name;
    if (!v114)
    {
      v114 = "invalid";
    }

    *buf = 136446722;
    v170 = "__nw_protocol_disconnect";
    v171 = 2082;
    v172 = v114;
    v173 = 2048;
    v174 = v54;
    v115 = "%{public}s protocol %{public}s (%p) has invalid disconnect callback";
    goto LABEL_356;
  }

  if (v167 != 1)
  {
    v112 = __nwlog_obj();
    v113 = type;
    if (!os_log_type_enabled(v112, type))
    {
      goto LABEL_357;
    }

    v150 = v54->identifier->name;
    if (!v150)
    {
      v150 = "invalid";
    }

    *buf = 136446722;
    v170 = "__nw_protocol_disconnect";
    v171 = 2082;
    v172 = v150;
    v173 = 2048;
    v174 = v54;
    v115 = "%{public}s protocol %{public}s (%p) has invalid disconnect callback, backtrace limit exceeded";
    goto LABEL_356;
  }

  v140 = __nw_create_backtrace_string();
  v112 = __nwlog_obj();
  v113 = type;
  v141 = os_log_type_enabled(v112, type);
  if (v140)
  {
    if (v141)
    {
      v142 = v54->identifier->name;
      if (!v142)
      {
        v142 = "invalid";
      }

      *buf = 136446978;
      v170 = "__nw_protocol_disconnect";
      v171 = 2082;
      v172 = v142;
      v173 = 2048;
      v174 = v54;
      v175 = 2082;
      v176 = v140;
      _os_log_impl(&dword_181A37000, v112, v113, "%{public}s protocol %{public}s (%p) has invalid disconnect callback, dumping backtrace:%{public}s", buf, 0x2Au);
    }

    free(v140);
    goto LABEL_357;
  }

  if (v141)
  {
    v162 = v54->identifier->name;
    if (!v162)
    {
      v162 = "invalid";
    }

    *buf = 136446722;
    v170 = "__nw_protocol_disconnect";
    v171 = 2082;
    v172 = v162;
    v173 = 2048;
    v174 = v54;
    v115 = "%{public}s protocol %{public}s (%p) has invalid disconnect callback, no backtrace";
LABEL_356:
    _os_log_impl(&dword_181A37000, v112, v113, v115, buf, 0x20u);
  }

LABEL_357:
  if (v111)
  {
    free(v111);
  }

LABEL_124:
  if ((v63 & 1) == 0)
  {
    v67 = v2->handle;
    if (v67 == &nw_protocol_ref_counted_handle || v67 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v68 = v2[1].callbacks;
      if (v68)
      {
        v69 = (v68 - 1);
        v2[1].callbacks = v69;
        if (!v69)
        {
          v70 = *v2[1].flow_id;
          if (v70)
          {
            *v2[1].flow_id = 0;
            v70[2](v70);
            _Block_release(v70);
          }

          if (v2[1].flow_id[8])
          {
            v71 = *v2[1].flow_id;
            if (v71)
            {
              _Block_release(v71);
            }
          }

          free(v2);
        }
      }
    }
  }

  if ((v57 & 1) == 0)
  {
    v72 = v54->handle;
    if (v72 == &nw_protocol_ref_counted_handle || v72 == &nw_protocol_ref_counted_additional_handle && (v54 = *v54[1].flow_id) != 0)
    {
      v73 = v54[1].callbacks;
      if (v73)
      {
        v74 = (v73 - 1);
        v54[1].callbacks = v74;
        if (!v74)
        {
          v75 = *v54[1].flow_id;
          if (v75)
          {
            *v54[1].flow_id = 0;
            v75[2](v75);
            _Block_release(v75);
          }

          if (v54[1].flow_id[8])
          {
            v76 = *v54[1].flow_id;
            if (v76)
            {
              _Block_release(v76);
            }
          }

          v77 = v54;
          goto LABEL_196;
        }
      }
    }
  }
}

uint64_t nw_protocol_http_client_create::$_4::__invoke(nw_protocol_http_client_create::$_4 *this, nw_protocol *a2, nw_protocol *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "operator()";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v7, &type, &v26))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v29 = "operator()";
      v10 = "%{public}s called with null protocol";
      goto LABEL_70;
    }

    if (v26 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v29 = "operator()";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_70;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v12 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v12)
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v29 = "operator()";
      v10 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_70;
    }

    if (!v12)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v29 = "operator()";
    v30 = 2082;
    v31 = backtrace_string;
    v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_37:
    _os_log_impl(&dword_181A37000, v8, v9, v13, buf, 0x16u);
    goto LABEL_38;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "operator()";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v7, &type, &v26))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v29 = "operator()";
      v10 = "%{public}s called with null http_client";
      goto LABEL_70;
    }

    if (v26 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v29 = "operator()";
      v10 = "%{public}s called with null http_client, backtrace limit exceeded";
      goto LABEL_70;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v14 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (!v14)
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v29 = "operator()";
      v10 = "%{public}s called with null http_client, no backtrace";
      goto LABEL_70;
    }

    if (!v14)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v29 = "operator()";
    v30 = 2082;
    v31 = backtrace_string;
    v13 = "%{public}s called with null http_client, dumping backtrace:%{public}s";
    goto LABEL_37;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "operator()";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v7, &type, &v26))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v29 = "operator()";
      v10 = "%{public}s called with null other_protocol";
      goto LABEL_70;
    }

    if (v26 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v29 = "operator()";
      v10 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_70;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v15 = os_log_type_enabled(v8, type);
    if (backtrace_string)
    {
      if (v15)
      {
        *buf = 136446466;
        v29 = "operator()";
        v30 = 2082;
        v31 = backtrace_string;
        v13 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
        goto LABEL_37;
      }

LABEL_38:
      free(backtrace_string);
      goto LABEL_71;
    }

    if (!v15)
    {
      goto LABEL_71;
    }

    *buf = 136446210;
    v29 = "operator()";
    v10 = "%{public}s called with null other_protocol, no backtrace";
LABEL_70:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
LABEL_71:
    if (v7)
    {
      free(v7);
    }

    return 0;
  }

  if (*(v3 + 48) != a2)
  {
    return 0;
  }

  v5 = *(v3 + 472);
  if (v5)
  {
    if (nw_protocol_copy_http_client_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
    }

    if (nw_protocol_metadata_matches_definition(v5, nw_protocol_copy_http_client_definition_definition))
    {
      handle = _nw_protocol_metadata_get_handle(v5);
      if (handle)
      {
        __nw_http_client_metadata_mark_end_block_invoke(&__block_literal_global_90, handle);
      }

      goto LABEL_12;
    }

    v21 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_http_client_metadata_mark_end";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v17, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v29 = "nw_http_client_metadata_mark_end";
          v20 = "%{public}s metadata must be http_client";
          goto LABEL_81;
        }
      }

      else
      {
        if (v26 == 1)
        {
          v24 = __nw_create_backtrace_string();
          v18 = __nwlog_obj();
          v19 = type;
          v25 = os_log_type_enabled(v18, type);
          if (v24)
          {
            if (v25)
            {
              *buf = 136446466;
              v29 = "nw_http_client_metadata_mark_end";
              v30 = 2082;
              v31 = v24;
              _os_log_impl(&dword_181A37000, v18, v19, "%{public}s metadata must be http_client, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v24);
            if (!v17)
            {
              goto LABEL_12;
            }

            goto LABEL_84;
          }

          if (!v25)
          {
            goto LABEL_82;
          }

          *buf = 136446210;
          v29 = "nw_http_client_metadata_mark_end";
          v20 = "%{public}s metadata must be http_client, no backtrace";
          goto LABEL_81;
        }

        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v29 = "nw_http_client_metadata_mark_end";
          v20 = "%{public}s metadata must be http_client, backtrace limit exceeded";
          goto LABEL_81;
        }
      }

      goto LABEL_82;
    }
  }

  else
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_http_client_metadata_mark_end";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v17, &type, &v26))
    {
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v29 = "nw_http_client_metadata_mark_end";
        v20 = "%{public}s called with null metadata";
LABEL_81:
        _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
      }

LABEL_82:

      goto LABEL_83;
    }

    if (v26 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v29 = "nw_http_client_metadata_mark_end";
        v20 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_81;
      }

      goto LABEL_82;
    }

    v22 = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v23 = os_log_type_enabled(v18, type);
    if (!v22)
    {
      if (v23)
      {
        *buf = 136446210;
        v29 = "nw_http_client_metadata_mark_end";
        v20 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_81;
      }

      goto LABEL_82;
    }

    if (v23)
    {
      *buf = 136446466;
      v29 = "nw_http_client_metadata_mark_end";
      v30 = 2082;
      v31 = v22;
      _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v22);
  }

LABEL_83:
  if (v17)
  {
LABEL_84:
    free(v17);
  }

LABEL_12:

  return 1;
}

BOOL __nw_http_client_metadata_mark_end_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2)
  {
    mach_get_times();
    *(a2 + 8) = 1;
    *(a2 + 16) = 0 - *MEMORY[0x1E695E468] + 0 * 0.000000001;
    v4 = *(a2 + 24);
    if (v4)
    {
      object = _nw_array_copy_last_object(v4);
      v6 = object;
      if (object)
      {
        nw_http_transaction_metadata_set_end_time(object, *(a2 + 8));
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v2 == 0;
}

void ___ZL23nw_http2_stream_connectP17nw_protocol_http2P12http2_streamP11nw_protocol_block_invoke(uint64_t a1, void *a2, int a3)
{
  v113[2] = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      outbound_body_size = nw_http_transaction_metadata_get_outbound_body_size(a2);
      v11 = *(a1 + 32);
      if (v11)
      {
        if ((*(v11 + 190) & 0x10) != 0)
        {
          return;
        }

        if (__nwlog_http_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
        }

        v12 = ghttpLogObj;
        if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
        {
          return;
        }

        v13 = *(a1 + 32);
        v14 = (v13 + 191);
        v15 = "";
        v16 = v13 == 0;
        if (!v13)
        {
          v14 = "";
        }

        v19 = v13 + 176;
        v17 = *(v13 + 176);
        v18 = *(v19 + 4);
        if (!v16)
        {
          v15 = " ";
        }

        *buf = 136447490;
        v105 = "nw_http2_stream_connect_block_invoke";
        v106 = 2082;
        v107 = v14;
        v108 = 2080;
        v109 = v15;
        v110 = 1024;
        v111 = v18;
        v112 = 1024;
        LODWORD(v113[0]) = v17;
        WORD2(v113[0]) = 2048;
        *(v113 + 6) = outbound_body_size;
        v20 = "%{public}s %{public}s%s<i%u:s%d> finished sending {body_bytes=%llu}";
LABEL_45:
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, v20, buf, 0x36u);
        return;
      }

      v74 = *(a1 + 40);
      if (v74 && (*(v74 + 379) & 1) != 0)
      {
        return;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v67 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v75 = *(a1 + 40);
      v76 = (v75 + 380);
      v77 = "";
      v78 = v75 == 0;
      v79 = *(v75 + 360);
      v105 = "nw_http2_stream_connect_block_invoke";
      if (v78)
      {
        v76 = "";
      }

      v106 = 2082;
      *buf = 136447234;
      if (!v78)
      {
        v77 = " ";
      }

      v107 = v76;
      v108 = 2080;
      v109 = v77;
      v110 = 1024;
      v111 = v79;
      v112 = 2048;
      v113[0] = outbound_body_size;
      v73 = "%{public}s %{public}s%s<i%u> finished sending {body_bytes=%llu}";
LABEL_107:
      _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_INFO, v73, buf, 0x30u);
      return;
    }

    outbound_message = nw_http_transaction_metadata_get_outbound_message(a2);
    v22 = nw_http_metadata_copy_request(outbound_message);
    v47 = nw_http_metadata_copy_response(outbound_message);
    if (v22)
    {
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 0x40000000;
      v102[2] = ___ZL23nw_http2_stream_connectP17nw_protocol_http2P12http2_streamP11nw_protocol_block_invoke_2;
      v102[3] = &__block_descriptor_tmp_39_88117;
      v103 = *(a1 + 32);
      v48 = v22;
      v49 = v102;
      _nw_http_request_access_method(v48, v49);
    }

    if (v47)
    {
      v26 = v47;
      status_code = _nw_http_response_get_status_code(v26);

      v51 = *(a1 + 32);
      if (v51)
      {
        if ((*(v51 + 190) & 0x10) != 0)
        {
          goto LABEL_61;
        }

        if (__nwlog_http_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
        }

        v29 = ghttpLogObj;
        if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
        {
          goto LABEL_61;
        }

        v52 = *(a1 + 32);
        v53 = (v52 + 191);
        v54 = "";
        v55 = v52 == 0;
        if (!v52)
        {
          v53 = "";
        }

        v58 = v52 + 176;
        v56 = *(v52 + 176);
        v57 = *(v58 + 4);
        if (!v55)
        {
          v54 = " ";
        }

        *buf = 136447490;
        v105 = "nw_http2_stream_connect_block_invoke";
        v106 = 2082;
        v107 = v53;
        v108 = 2080;
        v109 = v54;
        v110 = 1024;
        v111 = v57;
        v112 = 1024;
        LODWORD(v113[0]) = v56;
        WORD2(v113[0]) = 1024;
        *(v113 + 6) = status_code;
        v37 = "%{public}s %{public}s%s<i%u:s%d> sending response header {status=%hu}";
LABEL_59:
        v59 = v29;
        v60 = 50;
LABEL_60:
        _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_INFO, v37, buf, v60);
LABEL_61:
        os_release(v26);
        goto LABEL_62;
      }

      v87 = *(a1 + 40);
      if (v87 && (*(v87 + 379) & 1) != 0)
      {
        goto LABEL_61;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v81 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      v88 = *(a1 + 40);
      v89 = "";
      v90 = v88 == 0;
      v91 = *(v88 + 360);
      v92 = (v88 + 380);
      v105 = "nw_http2_stream_connect_block_invoke";
      v106 = 2082;
      if (v90)
      {
        v92 = "";
      }

      *buf = 136447234;
      if (!v90)
      {
        v89 = " ";
      }

      v107 = v92;
      v108 = 2080;
      v109 = v89;
      v110 = 1024;
      v111 = v91;
      v112 = 1024;
      LODWORD(v113[0]) = status_code;
      v37 = "%{public}s %{public}s%s<i%u> sending response header {status=%hu}";
LABEL_128:
      v59 = v81;
      v60 = 44;
      goto LABEL_60;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          return;
        }

        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 0x40000000;
        v96 = ___ZL23nw_http2_stream_connectP17nw_protocol_http2P12http2_streamP11nw_protocol_block_invoke_42;
        v97 = &__block_descriptor_tmp_44_88127;
        v98 = a2;
        v99 = *(a1 + 32);
        v5 = nw_http_transaction_metadata_get_outbound_message(a2);
        v6 = v5;
        if (v5)
        {
          v7 = nw_http_metadata_copy_request(v5);
          v8 = nw_http_metadata_copy_response(v6);
          inbound_message = nw_http_transaction_metadata_get_inbound_message(a2);
          if (!inbound_message)
          {
            goto LABEL_70;
          }

          if (v7)
          {
            if (v8)
            {
              goto LABEL_71;
            }

LABEL_69:
            v8 = nw_http_metadata_copy_response(inbound_message);
LABEL_70:
            if (!v8)
            {
              v63 = 0;
              if (!v7)
              {
                goto LABEL_85;
              }

              goto LABEL_74;
            }

LABEL_71:
            v8 = v8;
            v63 = _nw_http_response_get_status_code(v8);

            if (!v7)
            {
LABEL_85:
              v96(v95, "", v63);
              v64 = 0;
              if (!inbound_message)
              {
LABEL_76:
                if (v6)
                {
                  os_release(v6);
                }

                if (v8)
                {
                  os_release(v8);
                }

                if (v64)
                {
                  v61 = v64;
                  goto LABEL_82;
                }

                return;
              }

LABEL_75:
              os_release(inbound_message);
              goto LABEL_76;
            }

LABEL_74:
            v93[0] = MEMORY[0x1E69E9820];
            v93[1] = 0x40000000;
            v93[2] = ___ZL23nw_http2_stream_connectP17nw_protocol_http2P12http2_streamP11nw_protocol_block_invoke_45;
            v93[3] = &unk_1E6A3C428;
            v93[4] = v95;
            v94 = v63;
            v64 = v7;
            v65 = v93;
            _nw_http_request_access_method(v64, v65);

            if (!inbound_message)
            {
              goto LABEL_76;
            }

            goto LABEL_75;
          }
        }

        else
        {
          v62 = nw_http_transaction_metadata_get_inbound_message(a2);
          v8 = 0;
          if (!v62)
          {
            v63 = 0;
            inbound_message = 0;
            goto LABEL_85;
          }

          inbound_message = v62;
        }

        v7 = nw_http_metadata_copy_request(inbound_message);
        if (v8)
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      inbound_body_size = nw_http_transaction_metadata_get_inbound_body_size(a2);
      v39 = *(a1 + 32);
      if (v39)
      {
        if ((*(v39 + 190) & 0x10) != 0)
        {
          return;
        }

        if (__nwlog_http_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
        }

        v12 = ghttpLogObj;
        if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
        {
          return;
        }

        v40 = *(a1 + 32);
        v41 = (v40 + 191);
        v42 = "";
        v43 = v40 == 0;
        if (!v40)
        {
          v41 = "";
        }

        v46 = v40 + 176;
        v44 = *(v40 + 176);
        v45 = *(v46 + 4);
        if (!v43)
        {
          v42 = " ";
        }

        *buf = 136447490;
        v105 = "nw_http2_stream_connect_block_invoke";
        v106 = 2082;
        v107 = v41;
        v108 = 2080;
        v109 = v42;
        v110 = 1024;
        v111 = v45;
        v112 = 1024;
        LODWORD(v113[0]) = v44;
        WORD2(v113[0]) = 2048;
        *(v113 + 6) = inbound_body_size;
        v20 = "%{public}s %{public}s%s<i%u:s%d> finished receiving {body_bytes=%llu}";
        goto LABEL_45;
      }

      v66 = *(a1 + 40);
      if (v66 && (*(v66 + 379) & 1) != 0)
      {
        return;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v67 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v68 = *(a1 + 40);
      v69 = (v68 + 380);
      v70 = "";
      v71 = v68 == 0;
      v72 = *(v68 + 360);
      v105 = "nw_http2_stream_connect_block_invoke";
      if (v71)
      {
        v69 = "";
      }

      v106 = 2082;
      *buf = 136447234;
      if (!v71)
      {
        v70 = " ";
      }

      v107 = v69;
      v108 = 2080;
      v109 = v70;
      v110 = 1024;
      v111 = v72;
      v112 = 2048;
      v113[0] = inbound_body_size;
      v73 = "%{public}s %{public}s%s<i%u> finished receiving {body_bytes=%llu}";
      goto LABEL_107;
    }

    outbound_message = nw_http_transaction_metadata_get_inbound_message(a2);
    v22 = nw_http_metadata_copy_request(outbound_message);
    v23 = nw_http_metadata_copy_response(outbound_message);
    if (v22)
    {
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 0x40000000;
      v100[2] = ___ZL23nw_http2_stream_connectP17nw_protocol_http2P12http2_streamP11nw_protocol_block_invoke_40;
      v100[3] = &__block_descriptor_tmp_41_88122;
      v101 = *(a1 + 32);
      v24 = v22;
      v25 = v100;
      _nw_http_request_access_method(v24, v25);
    }

    if (v23)
    {
      v26 = v23;
      v27 = _nw_http_response_get_status_code(v26);

      v28 = *(a1 + 32);
      if (v28)
      {
        if ((*(v28 + 190) & 0x10) != 0)
        {
          goto LABEL_61;
        }

        if (__nwlog_http_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
        }

        v29 = ghttpLogObj;
        if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
        {
          goto LABEL_61;
        }

        v30 = *(a1 + 32);
        v31 = (v30 + 191);
        v32 = "";
        v33 = v30 == 0;
        if (!v30)
        {
          v31 = "";
        }

        v36 = v30 + 176;
        v34 = *(v30 + 176);
        v35 = *(v36 + 4);
        if (!v33)
        {
          v32 = " ";
        }

        *buf = 136447490;
        v105 = "nw_http2_stream_connect_block_invoke";
        v106 = 2082;
        v107 = v31;
        v108 = 2080;
        v109 = v32;
        v110 = 1024;
        v111 = v35;
        v112 = 1024;
        LODWORD(v113[0]) = v34;
        WORD2(v113[0]) = 1024;
        *(v113 + 6) = v27;
        v37 = "%{public}s %{public}s%s<i%u:s%d> receiving response header {status=%hu}";
        goto LABEL_59;
      }

      v80 = *(a1 + 40);
      if (v80 && (*(v80 + 379) & 1) != 0)
      {
        goto LABEL_61;
      }

      if (__nwlog_http_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_log::onceToken, &__block_literal_global_36);
      }

      v81 = ghttpLogObj;
      if (!os_log_type_enabled(ghttpLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      v82 = *(a1 + 40);
      v83 = "";
      v84 = v82 == 0;
      v85 = *(v82 + 360);
      v86 = (v82 + 380);
      v105 = "nw_http2_stream_connect_block_invoke";
      v106 = 2082;
      if (v84)
      {
        v86 = "";
      }

      *buf = 136447234;
      if (!v84)
      {
        v83 = " ";
      }

      v107 = v86;
      v108 = 2080;
      v109 = v83;
      v110 = 1024;
      v111 = v85;
      v112 = 1024;
      LODWORD(v113[0]) = v27;
      v37 = "%{public}s %{public}s%s<i%u> receiving response header {status=%hu}";
      goto LABEL_128;
    }
  }

LABEL_62:
  if (v22)
  {
    os_release(v22);
  }

  if (outbound_message)
  {
    v61 = outbound_message;
LABEL_82:
    os_release(v61);
  }
}
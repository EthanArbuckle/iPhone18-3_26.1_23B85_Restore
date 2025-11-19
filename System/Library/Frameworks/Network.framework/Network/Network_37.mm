void sub_181CC22EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);

  _Unwind_Resume(a1);
}

uint64_t nw_endpoint_proxy_has_unresolved_proxies(NWConcrete_nw_endpoint_handler *a1, BOOL *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v4 = nw_endpoint_handler_copy_proxy(v3);
  v5 = *(v4 + 7);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL40nw_endpoint_proxy_has_unresolved_proxiesP30NWConcrete_nw_endpoint_handlerPb_block_invoke;
  aBlock[3] = &unk_1E6A39C00;
  aBlock[4] = &v42;
  aBlock[5] = &v38;
  if (v5)
  {
    _nw_array_apply(v5, aBlock);
  }

  if ((v43[3] & 1) == 0 && (v39[3] & 1) == 0)
  {
    if (*(v4 + 96) & 0x40) == 0 || (*(v4 + 97))
    {
      if (a2)
      {
        if ((nw_endpoint_handler_get_logging_disabled(v3) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v14 = gconnectionLogObj;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            id_string = nw_endpoint_handler_get_id_string(v3);
            v16 = nw_endpoint_handler_dry_run_string(v3);
            v17 = nw_endpoint_handler_copy_endpoint(v3);
            v18 = v17;
            if (v17)
            {
              logging_description = _nw_endpoint_get_logging_description(v17);
            }

            else
            {
              logging_description = "<NULL>";
            }

            v36 = logging_description;
            v20 = id_string;

            v21 = nw_endpoint_handler_state_string(v3);
            v22 = nw_endpoint_handler_mode_string(v3);
            v23 = nw_endpoint_handler_copy_current_path(v3);
            *buf = 136447746;
            v47 = "nw_endpoint_proxy_has_unresolved_proxies";
            v48 = 2082;
            v49 = v20;
            v50 = 2082;
            v51 = v16;
            v52 = 2082;
            v53 = v36;
            v54 = 2082;
            v55 = v21;
            v56 = 2082;
            v57 = v22;
            v58 = 2114;
            v59 = v23;
            _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no resolved proxies or missing url, recommending direct attempt", buf, 0x48u);
          }
        }

        *a2 = 1;
      }
    }

    else
    {
      minimize_logging = nw_endpoint_handler_get_minimize_logging(v3);
      logging_disabled = nw_endpoint_handler_get_logging_disabled(v3);
      if (minimize_logging)
      {
        if (logging_disabled)
        {
          goto LABEL_28;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v8 = gconnectionLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v29 = nw_endpoint_handler_get_id_string(v3);
          v30 = nw_endpoint_handler_dry_run_string(v3);
          v31 = nw_endpoint_handler_copy_endpoint(v3);
          v32 = nw_endpoint_get_logging_description(v31);
          v33 = nw_endpoint_handler_state_string(v3);
          v34 = nw_endpoint_handler_mode_string(v3);
          v35 = nw_endpoint_handler_copy_current_path(v3);
          *buf = 136447746;
          v47 = "nw_endpoint_proxy_has_unresolved_proxies";
          v48 = 2082;
          v49 = v29;
          v50 = 2082;
          v51 = v30;
          v52 = 2082;
          v53 = v32;
          v54 = 2082;
          v55 = v33;
          v56 = 2082;
          v57 = v34;
          v58 = 2114;
          v59 = v35;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] direct attempts prohibited, not recommending", buf, 0x48u);
        }

        goto LABEL_27;
      }

      if ((logging_disabled & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v8 = gconnectionLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = nw_endpoint_handler_get_id_string(v3);
          v10 = nw_endpoint_handler_dry_run_string(v3);
          v11 = nw_endpoint_handler_copy_endpoint(v3);
          v12 = v11;
          if (v11)
          {
            v13 = _nw_endpoint_get_logging_description(v11);
          }

          else
          {
            v13 = "<NULL>";
          }

          v24 = nw_endpoint_handler_state_string(v3);
          v25 = nw_endpoint_handler_mode_string(v3);
          v26 = nw_endpoint_handler_copy_current_path(v3);
          *buf = 136447746;
          v47 = "nw_endpoint_proxy_has_unresolved_proxies";
          v48 = 2082;
          v49 = v9;
          v50 = 2082;
          v51 = v10;
          v52 = 2082;
          v53 = v13;
          v54 = 2082;
          v55 = v24;
          v56 = 2082;
          v57 = v25;
          v58 = 2114;
          v59 = v26;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] direct attempts prohibited, not recommending", buf, 0x48u);
        }

LABEL_27:
      }
    }
  }

LABEL_28:
  v27 = *(v43 + 24);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  return v27 & 1;
}

void sub_181CC29AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

BOOL __nw_proxy_config_supports_listeners_block_invoke(uint64_t a1, const char *a2)
{
  v3 = strncmp("LISTEN-", a2, 7uLL);
  if (!v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v3 != 0;
}

void *nw_proxy_config_copy_protocol_stack(void *a1, void *a2, _DWORD *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_proxy_config_copy_protocol_stack";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v16, &type, &v42))
    {
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v45 = "nw_proxy_config_copy_protocol_stack";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null config", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (v42 != 1)
    {
      v17 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v45 = "nw_proxy_config_copy_protocol_stack";
        _os_log_impl(&dword_181A37000, v17, v37, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v28 = type;
    v29 = os_log_type_enabled(v17, type);
    if (!backtrace_string)
    {
      if (v29)
      {
        *buf = 136446210;
        v45 = "nw_proxy_config_copy_protocol_stack";
        _os_log_impl(&dword_181A37000, v17, v28, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (v29)
    {
      *buf = 136446466;
      v45 = "nw_proxy_config_copy_protocol_stack";
      v46 = 2082;
      v47 = backtrace_string;
      _os_log_impl(&dword_181A37000, v17, v28, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_55;
  }

  if (!v6)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_proxy_config_copy_protocol_stack";
    v20 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (__nwlog_fault(v20, &type, &v42))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v45 = "nw_proxy_config_copy_protocol_stack";
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null transport_protocol", buf, 0xCu);
        }
      }

      else if (v42 == 1)
      {
        v30 = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v31 = type;
        v32 = os_log_type_enabled(v21, type);
        if (v30)
        {
          if (v32)
          {
            *buf = 136446466;
            v45 = "nw_proxy_config_copy_protocol_stack";
            v46 = 2082;
            v47 = v30;
            _os_log_impl(&dword_181A37000, v21, v31, "%{public}s called with null transport_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v30);
          goto LABEL_74;
        }

        if (v32)
        {
          *buf = 136446210;
          v45 = "nw_proxy_config_copy_protocol_stack";
          _os_log_impl(&dword_181A37000, v21, v31, "%{public}s called with null transport_protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v21 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v45 = "nw_proxy_config_copy_protocol_stack";
          _os_log_impl(&dword_181A37000, v21, v38, "%{public}s called with null transport_protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_74:
    if (v20)
    {
      free(v20);
    }

    v7 = 0;
    goto LABEL_85;
  }

  if (!a3)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_proxy_config_copy_protocol_stack";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v16, &type, &v42))
    {
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v45 = "nw_proxy_config_copy_protocol_stack";
        _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null proxy_protocol_level", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (v42 != 1)
    {
      v17 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v45 = "nw_proxy_config_copy_protocol_stack";
        _os_log_impl(&dword_181A37000, v17, v39, "%{public}s called with null proxy_protocol_level, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v33 = type;
    v34 = os_log_type_enabled(v17, type);
    if (!backtrace_string)
    {
      if (v34)
      {
        *buf = 136446210;
        v45 = "nw_proxy_config_copy_protocol_stack";
        _os_log_impl(&dword_181A37000, v17, v33, "%{public}s called with null proxy_protocol_level, no backtrace", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (v34)
    {
      *buf = 136446466;
      v45 = "nw_proxy_config_copy_protocol_stack";
      v46 = 2082;
      v47 = backtrace_string;
      _os_log_impl(&dword_181A37000, v17, v33, "%{public}s called with null proxy_protocol_level, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_55;
  }

  if (!*(v5 + 1))
  {
LABEL_85:
    v14 = 0;
    goto LABEL_86;
  }

  if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
  }

  v8 = nw_protocol_copy_quic_connection_definition_quic_definition;
  is_equal_unsafe = nw_protocol_definition_is_equal_unsafe(v7, v8);

  if (is_equal_unsafe)
  {
    if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
    }

    v10 = nw_protocol_copy_quic_stream_definition_quic_definition;

    v7 = v10;
  }

  identifier = nw_protocol_definition_get_identifier(v7);
  if (!identifier)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v45 = "nw_proxy_config_copy_protocol_stack";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v16, &type, &v42))
    {
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v45 = "nw_proxy_config_copy_protocol_stack";
        _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null transport_identifier", buf, 0xCu);
      }

LABEL_82:

LABEL_83:
      if (v16)
      {
        free(v16);
      }

      goto LABEL_85;
    }

    if (v42 != 1)
    {
      v17 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v45 = "nw_proxy_config_copy_protocol_stack";
        _os_log_impl(&dword_181A37000, v17, v40, "%{public}s called with null transport_identifier, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v35 = type;
    v36 = os_log_type_enabled(v17, type);
    if (!backtrace_string)
    {
      if (v36)
      {
        *buf = 136446210;
        v45 = "nw_proxy_config_copy_protocol_stack";
        _os_log_impl(&dword_181A37000, v17, v35, "%{public}s called with null transport_identifier, no backtrace", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (v36)
    {
      *buf = 136446466;
      v45 = "nw_proxy_config_copy_protocol_stack";
      v46 = 2082;
      v47 = backtrace_string;
      _os_log_impl(&dword_181A37000, v17, v35, "%{public}s called with null transport_identifier, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_55:

    free(backtrace_string);
    goto LABEL_83;
  }

  v12 = identifier;
  buf[0] = 0;
  *a3 = nw_proxy_config_should_proxy_transport_at_level(v5, identifier, buf);
  if (buf[0])
  {
    v13 = "proxy-wildcard";
  }

  else
  {
    v13 = v12;
  }

  v14 = nw_dictionary_copy_value(*(v5 + 1), v13);
LABEL_86:

  return v14;
}

void ___ZL38nw_endpoint_proxy_add_child_for_configP30NWConcrete_nw_endpoint_handlerPU29objcproto18OS_nw_proxy_config8NSObjectS3__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (nw_protocol_options_is_serializable_tls(v3))
  {
    v9 = 0;
    v12 = 0uLL;
    nw_proxy_config_get_identifier(*(a1 + 32), &v12);
    v4 = nw_tls_create_options_from_serializable(*(a1 + 40), v3, &v12, &v9);

    if ((v9 & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v11 = "nw_endpoint_proxy_add_child_for_config_block_invoke";
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s Failed to serialize tls options", buf, 0xCu);
      }
    }

    v3 = v4;
  }

  if (nw_protocol_options_is_tls(v3) && nw_parameters_get_should_trust_invalid_certificates(*(a1 + 48)))
  {
    v6 = v3;
    sec_protocol_options_set_peer_authentication_required(v6, 0);
  }

  if (nw_protocol_options_is_quic(v3))
  {
    nw_endpoint_proxy_update_quic_identity(*(a1 + 40), *(a1 + 32), v3);
  }

  v7 = *(a1 + 56);
  v8 = nw_protocol_options_copy(v3);
  nw_protocol_stack_append_application_protocol(v7, v8);
}

uint64_t nw_protocol_options_is_serializable_tls(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (nw_protocol_copy_serializable_tls_definition::onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_serializable_tls_definition::onceToken, &__block_literal_global_75577);
    }

    v2 = nw_protocol_options_matches_definition(v1, nw_protocol_copy_serializable_tls_definition::tls_definition);
    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_options_is_serializable_tls";
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
        v15 = "nw_protocol_options_is_serializable_tls";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options", buf, 0xCu);
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
          v15 = "nw_protocol_options_is_serializable_tls";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_serializable_tls";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_options_is_serializable_tls";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_5:

  return v2;
}

uint64_t nw_protocol_options_is_tls(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = nw_protocol_boringssl_copy_definition();
    v3 = nw_protocol_options_matches_definition(v1, v2);

    if (v3)
    {
      inited = 1;
    }

    else
    {
      Helper_x8__nwswifttlsrecord_copy_definition = gotLoadHelper_x8__nwswifttlsrecord_copy_definition(v4);
      if (*(v7 + 2232))
      {
        inited = nwswifttlsrecord_copy_definition_delayInitStub(Helper_x8__nwswifttlsrecord_copy_definition);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v23 = "nw_protocol_copy_swift_tls_record_definition_if_present";
          v24 = 2048;
          v25 = inited;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s SwiftTLS record protocol definition %p", buf, 0x16u);
        }

        if (inited)
        {
          v9 = v1;
          v10 = inited;
          inited = _nw_protocol_options_matches_definition(v9, v10);
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
        inited = 0;
      }
    }

    goto LABEL_12;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_protocol_options_is_tls";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v13, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "nw_protocol_options_is_tls";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v23 = "nw_protocol_options_is_tls";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (v18)
      {
        *buf = 136446210;
        v23 = "nw_protocol_options_is_tls";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "nw_protocol_options_is_tls";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_29:
  if (v13)
  {
    free(v13);
  }

  inited = 0;
LABEL_12:

  return inited;
}

void *nw_masque_copy_options(nw_protocol_definition *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_masque_copy_options";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v9, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v20 = "nw_masque_copy_options";
          v12 = "%{public}s called with null existing_handle";
LABEL_24:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
        }
      }

      else if (v17 == 1)
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
            v20 = "nw_masque_copy_options";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (v14)
        {
          *buf = 136446210;
          v20 = "nw_masque_copy_options";
          v12 = "%{public}s called with null existing_handle, no backtrace";
          goto LABEL_24;
        }
      }

      else
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v20 = "nw_masque_copy_options";
          v12 = "%{public}s called with null existing_handle, backtrace limit exceeded";
          goto LABEL_24;
        }
      }
    }

LABEL_25:
    if (v9)
    {
      free(v9);
    }

    return 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x28uLL, 0x6D0AD118uLL);
  if (v3)
  {
    v4 = v3;
    v5 = *a2;
    if (*a2)
    {
      v5 = os_retain(v5);
    }

    *v4 = v5;
    v6 = a2[1];
    if (v6)
    {
      v4[1] = xpc_copy(v6);
    }

    v7 = a2[2];
    if (v7)
    {
      v4[2] = xpc_copy(v7);
    }

    v4[3] = a2[3];
    *(v4 + 16) = *(a2 + 16);
    return v4;
  }

  v15 = __nwlog_obj();
  os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v20 = "nw_masque_copy_options";
  v21 = 2048;
  v22 = 1;
  v23 = 2048;
  v24 = 40;
  v16 = _os_log_send_and_compose_impl();
  if (__nwlog_should_abort(v16))
  {
    __break(1u);
  }

  free(v16);
  result = nw_retain(*a2);
  __break(1u);
  return result;
}

void *sub_181CC402C(void *result)
{
  v3 = result + 2;
  v4 = (result + 5);
  v5 = result[3];
  v6 = result[4];
  v7 = v5 + v6;
  if (result[2] < v5 + v6)
  {
    if (v5 <= 0)
    {
      return result;
    }

    v2 = result;
    result = *v1;
    v8 = *(*v1 + 24);
    v9 = v8 + v5;
    if (__OFADD__(v8, v5))
    {
      goto LABEL_83;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    if (*(*v1 + 16) < v9 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181B2C3FC(isUniquelyReferenced_nonNull_native, v9);
      v11 = *v1;
    }

    sub_18207F3A0((v11 + 16), v11 + 40, v59);
    result = sub_181F65B18(v5, &v60);
    v12 = v60;
    v1 = v61;
    if (v64)
    {
      v13 = *(v2 + 32);
      v14 = *(v2 + 24) + v13;
      if (*(v2 + 16) < v14)
      {
        v15 = sub_1820807B8(v3, v4, v60, v61, v2);
        v58 = v16;
        if (v16 == v17)
        {
          v18 = v15;
          if ((sub_181AC81FC(v15) & 1) == 0)
          {
            v36 = 0;
            v2 = 0xF000000000000007;
            goto LABEL_44;
          }

          v16 = v58;
        }

        else
        {
          v18 = v15;
        }

        v35 = v18 + 16 * v16;
        v36 = *(v35 + 40);
        v2 = *(v35 + 48);
        sub_181B2C3E0(v36, v2);
LABEL_44:

        v1 = ~v2 & 0xF000000000000007;
        result = sub_181A52FE0(v36, v2);
        if (!v1)
        {
          goto LABEL_72;
        }

        __break(1u);
        goto LABEL_46;
      }
    }

    else
    {
      if (v61 < 0)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (*(v2 + 24) < v61)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v56 = v63;
      v57 = v62;
      MEMORY[0x1EEE9AC00](result);
      MEMORY[0x1EEE9AC00](v23);

      v24 = sub_181F66144(v3, v4, sub_181F676E0);
      if ((v25 & 1) == 0)
      {

        goto LABEL_49;
      }

      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v26);

      result = sub_181F661CC(v3, v4, sub_181F676F8);
      if ((v28 & 1) == 0)
      {
        if (v27 != v1)
        {
          goto LABEL_95;
        }

        goto LABEL_48;
      }

      if (!v12)
      {
        if (v1)
        {
LABEL_94:
          v27 = 0;
LABEL_95:
          if (v27 >= v1)
          {
LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

          if (v27 >= *(v2 + 24))
          {
LABEL_101:
            __break(1u);
            return result;
          }

          __break(1u);
          goto LABEL_98;
        }

        goto LABEL_48;
      }

      if (!v1)
      {
LABEL_48:

LABEL_49:
        v37 = *(v2 + 24);
        if (v37 < v1)
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        MEMORY[0x1EEE9AC00](result);
        v1 = v56;
        v55 = v38;
        MEMORY[0x1EEE9AC00](v39);

        v40 = sub_181F66144(v3, v4, sub_181F676E0);
        if ((v41 & 1) == 0)
        {

          goto LABEL_72;
        }

        MEMORY[0x1EEE9AC00](v40);
        MEMORY[0x1EEE9AC00](v42);

        result = sub_181F661CC(v3, v4, sub_181F676F8);
        if (v44)
        {
          v1 = v55;
          v45 = v57;
          if (v57 && v56)
          {
            if (v56 < 0)
            {
LABEL_93:
              __break(1u);
              goto LABEL_94;
            }

            if (v55 != v37)
            {
              v46 = v56 - 1;
              v47 = v55;
              while (v37 != v47)
              {
                if (v47 >= *(v2 + 24))
                {
                  goto LABEL_89;
                }

                v48 = *(v2 + 32);
                if (v47 + v48 >= *(v2 + 16))
                {
                  v49 = *(v2 + 16);
                }

                else
                {
                  v49 = 0;
                }

                v50 = v47 + v48 - v49;
                ++v47;
                v51 = *(v4 + 16 * v50);
                *v45 = v51;
                if (!v46)
                {
                  result = sub_181B2C3E0(v51, *(&v51 + 1));
                  if (v47 == v37)
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_76;
                }

                ++v45;
                result = sub_181B2C3E0(v51, *(&v51 + 1));
                --v46;
                if (v37 == v47)
                {
                  goto LABEL_71;
                }
              }

              goto LABEL_88;
            }

            goto LABEL_71;
          }
        }

        else
        {
          v1 = v55;
          v47 = v55 + v43;
          if (!__OFADD__(v55, v43))
          {
            goto LABEL_70;
          }

          __break(1u);
        }

        v47 = v1;
LABEL_70:
        if (v47 == v37)
        {
LABEL_71:

          goto LABEL_72;
        }

LABEL_76:
        if (v47 < v1 || v47 >= v37)
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        if (v47 >= *(v2 + 24))
        {
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        __break(1u);
        goto LABEL_80;
      }

      v13 = *(v2 + 24);
      if (v13 >= 1)
      {
        v29 = 0;
        while (1)
        {
          v30 = *(v2 + 32);
          v31 = v29 + v30 >= *(v2 + 16) ? *(v2 + 16) : 0;
          v32 = *(v4 + 16 * (v29 + v30 - v31));
          *(v12 + 16 * v29) = v32;
          v33 = *(&v32 + 1);
          result = v32;
          if (v1 - 1 == v29)
          {
            break;
          }

          result = sub_181B2C3E0(v32, *(&v32 + 1));
          v13 = *(v2 + 24);
          if (++v29 >= v13)
          {
            goto LABEL_32;
          }
        }

LABEL_46:
        sub_181B2C3E0(result, v33);
        goto LABEL_48;
      }

LABEL_32:
      __break(1u);
    }

    v34 = v14 - v13;
    if (v14 < v13)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (__OFSUB__(v14, v13))
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    if (v34)
    {
      if (v1 < v34)
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      result = swift_arrayInitWithCopy();
    }

LABEL_72:
    v52 = *(v11 + 24);
    v53 = __OFADD__(v52, v5);
    v54 = v52 + v5;
    if (!v53)
    {
      *(v11 + 24) = v54;
      return result;
    }

    goto LABEL_84;
  }

  if (v7 < v6)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (__OFSUB__(v7, v6))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  result = *v1;
  v19 = *(*v1 + 24);
  v20 = v19 + v5;
  if (__OFADD__(v19, v5))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v1;
  if (*(*v1 + 16) < v20 || (v21 & 1) == 0)
  {
    sub_181B2C3FC(v21, v20);
    v22 = *v1;
  }

  return sub_181CC4734(v22 + 16, v22 + 40, v4 + 16 * v6, v5, sub_181B64818, sub_181B64890);
}

uint64_t sub_181CC4734(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *__return_ptr), uint64_t (*a6)(uint64_t, uint64_t))
{
  if (a4 < 1)
  {
    return result;
  }

  v8 = result;
  result = *(result + 8);
  v9 = result + a4;
  if (__OFADD__(result, a4))
  {
    __break(1u);
    goto LABEL_14;
  }

  *(v8 + 8) = v9;
  if (v9 < result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  a5(&v14);
  v11 = v15;
  v12 = v16;
  if (v16)
  {
    v13 = v17;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v11 = 0;
  }

  if (v17)
  {
    v12 = 0;
  }

  v18 = v14;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  return a6(a3, a4);
}

void nw_proxy_config_get_identifier(void *a1, _OWORD *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    *a2 = *(v3 + 56);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_get_identifier";
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
        v15 = "nw_proxy_config_get_identifier";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_get_identifier";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_identifier";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_identifier";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

uint64_t nw_quic_stream_copy_shared_connection_options(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_stream(v1))
  {
    v2 = _nw_quic_stream_copy_shared_connection_options(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_copy_shared_connection_options";
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
        v14 = "nw_quic_stream_copy_shared_connection_options";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(stream_options)";
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
            v14 = "nw_quic_stream_copy_shared_connection_options";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_stream(stream_options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_copy_shared_connection_options";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(stream_options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_copy_shared_connection_options";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(stream_options), backtrace limit exceeded";
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

uint64_t _nw_quic_stream_copy_shared_connection_options_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  result = sub_181CB38E8(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      swift_beginAccess();
      v6 = *(v5 + 48);
      v7 = qword_1ED4100E8;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = qword_1ED411CB8;
      v9 = qword_1ED411CC0;
      v10 = byte_1ED411CC8;
      v11 = word_1ED411CB0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
      swift_allocObject();
      v12 = sub_181AA94EC(v11, v8, v9, v10, v6);
      sub_181F49A24(v8, v9, v10);

      return v12;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_fetch_client_identity_reference(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, __SecIdentity *a4)
{
  v7 = swift_unknownObjectRetain();
  LOBYTE(a4) = sub_181CB3D5C(v7, a2, a3, a4);
  swift_unknownObjectRelease();
  return a4 & 1;
}

uint64_t sub_181CC4EF0(uint64_t a1, int a2)
{
  v3 = v2;
  v47 = a2;
  v5 = sub_182AD2738();
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46[-v15];
  v17 = *(*v2 + 136);
  swift_beginAccess();
  v18 = *(v3 + v17);
  v19 = *(*a1 + 136);
  swift_beginAccess();
  v20 = *(a1 + v19);
  if (v18)
  {
    if (!v20)
    {
      goto LABEL_7;
    }

    type metadata accessor for Endpoint(0);
    v21 = v20;
    v22 = v18;
    v23 = sub_182AD3978();

    if ((v23 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v24 = *(*v3 + 176);
    swift_beginAccess();
    LODWORD(v24) = *(v3 + v24);
    v25 = *(*a1 + 176);
    swift_beginAccess();
    if (v24 != *(a1 + v25))
    {
      goto LABEL_7;
    }

    v28 = qword_1ED411A90;
    swift_beginAccess();
    sub_181AACF84(v3 + v28, v16);
    v29 = qword_1ED411A90;
    swift_beginAccess();
    v30 = *(v8 + 48);
    sub_181AACF84(v16, v10);
    sub_181AACF84(a1 + v29, &v10[v30]);
    v31 = v49;
    v32 = *(v50 + 48);
    if (v32(v10, 1, v49) == 1)
    {
      sub_181F49A88(v16, &qword_1EA838E00);
      if (v32(&v10[v30], 1, v31) == 1)
      {
        sub_181F49A88(v10, &qword_1EA838E00);
        goto LABEL_16;
      }
    }

    else
    {
      sub_181AACF84(v10, v13);
      if (v32(&v10[v30], 1, v31) != 1)
      {
        v33 = v50;
        (*(v50 + 32))(v48, &v10[v30], v31);
        sub_181F675A4(&qword_1EA836620, 255, MEMORY[0x1E69E84D0]);
        v34 = sub_182AD2F48();
        v35 = *(v33 + 8);
        v35(v48, v31);
        sub_181F49A88(v16, &qword_1EA838E00);
        v35(v13, v31);
        sub_181F49A88(v10, &qword_1EA838E00);
        if ((v34 & 1) == 0)
        {
          goto LABEL_7;
        }

LABEL_16:
        swift_beginAccess();
        v36 = *(v3 + 24);
        v37 = *(v3 + 32);
        v38 = *(v3 + 40);
        *v56 = *(v3 + 16);
        v57 = v36;
        v58 = v37;
        v59 = v38;
        swift_beginAccess();
        v39 = *(a1 + 24);
        v40 = *(a1 + 32);
        v41 = *(a1 + 40);
        *v52 = *(a1 + 16);
        v53 = v39;
        v54 = v40;
        v55 = v41;
        LODWORD(v50) = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v56, v52);
        v42 = v53;
        v49 = v54;
        LODWORD(v48) = v55;
        sub_181F49A24(v36, v37, v38);
        sub_181F49A24(v39, v40, v41);
        sub_181F48350(v42, v49, v48);
        sub_181F48350(v57, v58, v59);
        if (v50)
        {
          v43 = *(*v3 + 128);
          swift_beginAccess();
          v44 = *(*a1 + 128);
          if (*(v3 + v43))
          {
            swift_beginAccess();
            if (*(a1 + v44))
            {
              v51 = v47;

              v26 = QUICStreamProtocol.QUICStreamOptions.isEqual(to:for:)(v45, &v51);

              return v26 & 1;
            }
          }

          else
          {
            swift_beginAccess();
            if (!*(a1 + v44))
            {
              v26 = 1;
              return v26 & 1;
            }
          }
        }

        goto LABEL_7;
      }

      sub_181F49A88(v16, &qword_1EA838E00);
      (*(v50 + 8))(v13, v31);
    }

    sub_181F49A88(v10, &qword_1EA838AF0);
    v26 = 0;
    return v26 & 1;
  }

  if (!v20)
  {
    goto LABEL_6;
  }

LABEL_7:
  v26 = 0;
  return v26 & 1;
}

uint64_t QUICStreamProtocol.QUICStreamOptions.isEqual(to:for:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + 48);
  swift_beginAccess();
  if (v4 == 1)
  {
    v6 = 1;
  }

  else if (*(v5 + 112) && (v7 = *(a1 + 48), *(v7 + 112)))
  {
    v8 = *(v7 + 120);
    v9 = *(v5 + 120);
    ObjectType = swift_getObjectType();
    v14 = v4;
    v11 = *(v9 + 24);

    swift_unknownObjectRetain();
    v12 = swift_unknownObjectRetain();
    v6 = v11(v12, v8, &v14, ObjectType, v9);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t _nw_ip_options_get_local_address_preference(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = (v2 + *(*v2 + 128));
  result = swift_beginAccess();
  if (*v3 != 3)
  {
    v5 = BYTE1(*v3);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t _nw_ip_options_get_version(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = (v2 + *(*v2 + 128));
  result = swift_beginAccess();
  if (*v3 != 3)
  {
    v5 = dword_182AF2DE4[*v3];

    return v5;
  }

  __break(1u);
  return result;
}

char *_nw_endpoint_copy_without_proxy_parent(void *a1)
{
  v1 = a1;
  v2 = sub_181CC5804();

  return v2;
}

char *sub_181CC5804()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v50 - v5;
  v6 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_181B440D4();
  v10 = *&v9[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint];
  *&v9[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint] = 0;

  v11 = *&v0[OBJC_IVAR____TtC7Network8Endpoint_flags];
  v12 = v0;
  v13 = v9;
  v51 = v13;
  if ((v11 & 0x20) == 0)
  {
    v14 = v13;
    while (1)
    {
      v27 = *&v12[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint];
      if (!v27)
      {
        v24 = v14;
        goto LABEL_19;
      }

      v28 = OBJC_IVAR____TtC7Network8Endpoint_type;
      swift_beginAccess();
      sub_181ACC828(v27 + v28, v8, type metadata accessor for Endpoint.EndpointType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v15 = *(v8 + 2);
          v16 = *(v8 + 3);
          v17 = *(v8 + 8);
          v18 = *(v8 + 18);
          v54 = *v8;
          *&v55 = v15;
          *(&v55 + 1) = v16;
          LODWORD(v56[0]) = v17;
          WORD2(v56[0]) = v18;
          v19 = objc_allocWithZone(ObjectType);
          v20 = v27;
          v21 = Endpoint.init(_:)(&v54);
        }

        else
        {
          if (EnumCaseMultiPayload != 4)
          {
            v41 = ObjectType;
            v42 = v52;
            sub_181AA91BC(v8, v52, type metadata accessor for URLEndpoint);
            v43 = v6;
            v44 = v53;
            sub_181ACC828(v42, v53, type metadata accessor for URLEndpoint);
            v45 = objc_allocWithZone(v41);
            v46 = v27;
            v47 = v44;
            v6 = v43;
            v22 = Endpoint.init(_:)(v47);
            v48 = v42;
            ObjectType = v41;
            sub_181A5513C(v48, type metadata accessor for URLEndpoint);
            goto LABEL_5;
          }

          v32 = *(v8 + 2);
          v33 = *(v8 + 3);
          v54 = *v8;
          *&v55 = v32;
          *(&v55 + 1) = v33;
          v34 = objc_allocWithZone(ObjectType);
          v35 = v27;
          v21 = Endpoint.init(_:)(&v54);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        *&v54 = *v8;
        if (EnumCaseMultiPayload == 1)
        {
          v30 = objc_allocWithZone(ObjectType);
          v31 = v27;
          v21 = Endpoint.init(_:)(&v54);
        }

        else
        {
          v39 = objc_allocWithZone(ObjectType);
          v40 = v27;
          v21 = Endpoint.init(_:)(&v54);
        }
      }

      else
      {
        v36 = *(v8 + 1);
        v54 = *v8;
        v55 = v36;
        v56[0] = *(v8 + 2);
        *(v56 + 12) = *(v8 + 44);
        v37 = objc_allocWithZone(ObjectType);
        v38 = v27;
        v21 = Endpoint.init(_:)(&v54);
      }

      v22 = v21;
LABEL_5:
      sub_181B2B254(v27);

      v23 = *&v14[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint];
      *&v14[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint] = v22;
      v24 = v22;

      v25 = *&v24[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint];
      *&v24[OBJC_IVAR____TtC7Network8Endpoint_parentEndpoint] = 0;
      v12 = v27;

      v26 = *&v12[OBJC_IVAR____TtC7Network8Endpoint_flags];
      v14 = v24;
      if ((v26 & 0x20) != 0)
      {
        goto LABEL_19;
      }
    }
  }

  v24 = v13;
LABEL_19:

  return v51;
}

char *nw_endpoint_edge_get_identifier(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1 + 8;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_edge_get_identifier";
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
        v15 = "nw_endpoint_edge_get_identifier";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null edge", buf, 0xCu);
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
          v15 = "nw_endpoint_edge_get_identifier";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null edge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_edge_get_identifier";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null edge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_edge_get_identifier";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null edge, backtrace limit exceeded", buf, 0xCu);
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

id nw_endpoint_edge_get_endpoint(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_endpoint_edge_get_endpoint";
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
          v17 = "nw_endpoint_edge_get_endpoint";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null edge", buf, 0xCu);
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
            v17 = "nw_endpoint_edge_get_endpoint";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null edge, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v11)
        {
          *buf = 136446210;
          v17 = "nw_endpoint_edge_get_endpoint";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null edge, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v7 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v17 = "nw_endpoint_edge_get_endpoint";
          _os_log_impl(&dword_181A37000, v7, v13, "%{public}s called with null edge, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_27:
    if (v6)
    {
      free(v6);
    }

    goto LABEL_4;
  }

  WeakRetained = objc_loadWeakRetained(v1 + 6);
  if (WeakRetained)
  {
    goto LABEL_5;
  }

  if (gLogDatapath == 1)
  {
    v12 = __nwlog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v17 = "nw_endpoint_edge_get_endpoint";
      v18 = 2112;
      v19 = v2;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s edge %@ has seen its endpoint be deallocated", buf, 0x16u);
    }
  }

LABEL_4:
  WeakRetained = 0;
LABEL_5:

  return WeakRetained;
}

uint64_t nw_protocol_masque_create(const nw_protocol_identifier *a1, nw_object *a2, nw_endpoint *a3, nw_parameters *a4)
{
  if (nw_protocol_masque_identifier(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_identifier(void)::onceToken, &__block_literal_global_204);
  }

  if (nw_protocol_masque_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_get_callbacks(void)::onceToken, &__block_literal_global_44);
  }

  v6 = nw_protocol_new(600, a4, nw_protocol_masque_identifier(void)::g_masque_protocol_identifier, &nw_protocol_masque_get_callbacks(void)::g_masque_protocol_callbacks);
  v7 = v6;
  v8 = v6 - 96;
  if (v6)
  {
    v9 = (v6 - 96);
  }

  else
  {
    v9 = 0;
  }

  v10 = nw_protocol_ref_counted::additional::additional(v6, v9);
  nw_protocol_ref_counted::additional::additional(v10 + 80, v9);
  nw_protocol_ref_counted::additional::additional(v7 + 160, v9);
  if (nw_protocol_masque_identifier(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_identifier(void)::onceToken, &__block_literal_global_204);
  }

  *(v7 + 96) = nw_protocol_masque_identifier(void)::g_masque_protocol_identifier;
  if (nw_protocol_masque_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_get_callbacks(void)::onceToken, &__block_literal_global_44);
  }

  *(v7 + 104) = &nw_protocol_masque_get_callbacks(void)::g_masque_protocol_callbacks;
  if (nw_protocol_masque_identifier(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_identifier(void)::onceToken, &__block_literal_global_204);
  }

  *(v7 + 176) = nw_protocol_masque_identifier(void)::g_masque_protocol_identifier;
  if (nw_protocol_masque_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_get_callbacks(void)::onceToken, &__block_literal_global_44);
  }

  *(v7 + 184) = &nw_protocol_masque_get_callbacks(void)::g_masque_protocol_callbacks;
  if (nw_protocol_masque_identifier(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_identifier(void)::onceToken, &__block_literal_global_204);
  }

  *(v7 + 16) = nw_protocol_masque_identifier(void)::g_masque_protocol_identifier;
  if (nw_protocol_masque_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_get_callbacks(void)::onceToken, &__block_literal_global_44);
  }

  *(v7 + 240) = 0;
  *(v7 + 24) = &nw_protocol_masque_get_callbacks(void)::g_masque_protocol_callbacks;
  *(v7 + 248) = v7 + 240;
  if (a3)
  {
    v11 = os_retain(a3);
  }

  else
  {
    v11 = 0;
  }

  *(v7 + 288) = v11;
  *(v7 + 480) = 1;
  *(v7 + 488) = 0;
  if (nw_parameters_get_logging_disabled(a4))
  {
    v12 = 0x10000;
  }

  else
  {
    v12 = 0;
  }

  *(v7 + 503) = *(v7 + 503) & 0xFFFEFFFF | v12;
  if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
  }

  if (nw_protocol_masque_get_definition(void)::definition)
  {
    os_retain(nw_protocol_masque_get_definition(void)::definition);
  }

  singleton = _nw_protocol_metadata_create_singleton();
  *(v7 + 456) = singleton;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZL23nw_masque_set_callbacksP20nw_protocol_metadataPv_block_invoke;
  v15[3] = &__block_descriptor_tmp_189;
  v15[4] = v7;
  nw_protocol_metadata_access_handle(singleton, v15);
  return v8;
}

uint64_t ___ZL23nw_masque_set_callbacksP20nw_protocol_metadataPv_block_invoke(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 8));
  *a2 = *(a1 + 32);
  os_unfair_lock_unlock((a2 + 8));
  return 1;
}

uint64_t nw_protocol_masque_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v170 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_masque_add_input_handler";
    v58 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v156) = 0;
    if (__nwlog_fault(v58, type, &v156))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v59 = __nwlog_obj();
        v60 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_add_input_handler";
          v61 = "%{public}s called with null protocol";
LABEL_125:
          _os_log_impl(&dword_181A37000, v59, v60, v61, buf, 0xCu);
        }
      }

      else if (v156 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v59 = __nwlog_obj();
        v60 = type[0];
        v63 = os_log_type_enabled(v59, type[0]);
        if (backtrace_string)
        {
          if (v63)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_masque_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v59, v60, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_126;
        }

        if (v63)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_add_input_handler";
          v61 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_125;
        }
      }

      else
      {
        v59 = __nwlog_obj();
        v60 = type[0];
        if (os_log_type_enabled(v59, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_add_input_handler";
          v61 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_125;
        }
      }
    }

LABEL_126:
    if (v58)
    {
      free(v58);
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
      *&buf[4] = "nw_protocol_masque_add_input_handler";
      v9 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v156) = 0;
      if (!__nwlog_fault(v9, type, &v156))
      {
        goto LABEL_55;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_55;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_add_input_handler";
        v12 = "%{public}s called with null masque";
      }

      else
      {
        if (v156 == 1)
        {
          v26 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          v28 = type[0];
          v29 = os_log_type_enabled(gLogObj, type[0]);
          if (v26)
          {
            if (v29)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_masque_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = v26;
              _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v26);
            goto LABEL_55;
          }

          if (!v29)
          {
LABEL_55:
            if (v9)
            {
              free(v9);
            }

LABEL_57:
            result = 0;
            if (v6)
            {
              return result;
            }

            goto LABEL_237;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_masque_add_input_handler";
          v12 = "%{public}s called with null masque, no backtrace";
          v34 = v27;
          v35 = v28;
LABEL_54:
          _os_log_impl(&dword_181A37000, v34, v35, v12, buf, 0xCu);
          goto LABEL_55;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_55;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_masque_add_input_handler";
        v12 = "%{public}s called with null masque, backtrace limit exceeded";
      }

      v34 = v10;
      v35 = v11;
      goto LABEL_54;
    }

    v8 = *a1[1].flow_id;
  }

  if (!a1->default_input_handler)
  {
    if (a2)
    {
      a1->default_input_handler = a2;
      v18 = a2->handle;
      v19 = a2;
      if (v18 == &nw_protocol_ref_counted_handle || v18 == &nw_protocol_ref_counted_additional_handle && (v19 = *a2[1].flow_id) != 0)
      {
        v20 = v19[1].callbacks;
        if (v20)
        {
          v19[1].callbacks = (&v20->add_input_handler + 1);
        }
      }

      *a1->flow_id = *a2->flow_id;
      if (!a2->output_handler)
      {
        a2->output_handler = a1;
        v39 = a1;
        if (handle == &nw_protocol_ref_counted_handle || handle == &nw_protocol_ref_counted_additional_handle && (v39 = *a1[1].flow_id) != 0)
        {
          v40 = v39[1].callbacks;
          if (v40)
          {
            v39[1].callbacks = (&v40->add_input_handler + 1);
          }
        }
      }

      v21 = a2->callbacks;
      if (v21)
      {
        get_parameters = v21->get_parameters;
        if (!get_parameters || ((v23 = get_parameters(a2)) == 0 ? (v25 = 0) : (v24 = v23, v25 = os_retain(v23), v23 = v24), v8[6].identifier = v25, v8[6].callbacks = nw_parameters_copy_context(v23), (v21 = a2->callbacks) != 0))
        {
          get_path = v21->get_path;
          if (get_path)
          {
            v42 = get_path(a2);
            if (v42)
            {
              v42 = os_retain(v42);
            }

            v8[6].output_handler = v42;
          }
        }
      }
    }

    identifier = v8[6].identifier;
    if (!identifier)
    {
LABEL_229:
      if (!a2)
      {
        goto LABEL_236;
      }

      goto LABEL_230;
    }

    v44 = identifier;
    v45 = _nw_parameters_copy_protocol_options_with_level(v44, v8);

    v8[6].handle = v45;
    nw_protocol_options_get_log_id_str(v45, &v8[9].callbacks + 3, 84);
    *v8[9].flow_id = nw_masque_options_get_version(v8[6].handle);
    v46 = v8[6].handle;
    if (v46)
    {
      if (nw_protocol_options_access_handle(v46, &__block_literal_global_47_28049))
      {
        v47 = 0;
      }

      else
      {
        v47 = 4;
      }

      goto LABEL_85;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_options_has_target_endpoint";
    v64 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v156) = 0;
    if (__nwlog_fault(v64, type, &v156))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v65 = __nwlog_obj();
        v66 = type[0];
        if (os_log_type_enabled(v65, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_options_has_target_endpoint";
          v67 = "%{public}s called with null options";
LABEL_136:
          v73 = v65;
LABEL_137:
          _os_log_impl(&dword_181A37000, v73, v66, v67, buf, 0xCu);
        }
      }

      else if (v156 == 1)
      {
        v69 = __nw_create_backtrace_string();
        v70 = __nwlog_obj();
        v66 = type[0];
        v71 = v70;
        v72 = os_log_type_enabled(v70, type[0]);
        if (v69)
        {
          if (v72)
          {
            *buf = 136446466;
            *&buf[4] = "nw_masque_options_has_target_endpoint";
            *&buf[12] = 2082;
            *&buf[14] = v69;
            _os_log_impl(&dword_181A37000, v71, v66, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v69);
          goto LABEL_138;
        }

        if (v72)
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_options_has_target_endpoint";
          v67 = "%{public}s called with null options, no backtrace";
          v73 = v71;
          goto LABEL_137;
        }
      }

      else
      {
        v65 = __nwlog_obj();
        v66 = type[0];
        if (os_log_type_enabled(v65, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_options_has_target_endpoint";
          v67 = "%{public}s called with null options, backtrace limit exceeded";
          goto LABEL_136;
        }
      }
    }

LABEL_138:
    if (v64)
    {
      free(v64);
    }

    v47 = 4;
LABEL_85:
    v48 = (&v8[9].identifier + 7);
    *(&v8[9].identifier + 7) = *(&v8[9].identifier + 7) & 0xFFFFFFFB | v47;
    v49 = v8[6].identifier;
    if (nw_protocol_http_messaging_identifier::onceToken != -1)
    {
      v68 = v8[6].identifier;
      dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
      v49 = v68;
    }

    if (nw_parameters_has_protocol_in_stack(v49, &nw_protocol_http_messaging_identifier::protocol_identifier))
    {
      v50 = 0x1000000;
    }

    else
    {
      v50 = 0;
    }

    *v48 = *v48 & 0xFEFFFFFF | v50;
    if (nw_masque_options_get_forced_protocol(v8[6].handle) == 2)
    {
      goto LABEL_91;
    }

    if (nw_masque_options_get_forced_protocol(v8[6].handle) == 1)
    {
      *v48 &= ~8u;
      goto LABEL_173;
    }

    if (!a2)
    {
      goto LABEL_166;
    }

    v51 = v8[6].handle;
    if (v51)
    {
      if (nw_protocol_options_access_handle(v51, &__block_literal_global_51))
      {
        v52 = a2->identifier;
        if (nw_protocol_ip_identifier::onceToken != -1)
        {
          v78 = a2->identifier;
          dispatch_once(&nw_protocol_ip_identifier::onceToken, &__block_literal_global_90960);
          v52 = v78;
        }

        if (nw_protocols_are_equal(v52, &nw_protocol_ip_identifier::identifier))
        {
          *v48 |= 0x20u;
          v53 = nw_parameters_copy_default_protocol_stack(v8[6].identifier);
          if (!v53)
          {
            goto LABEL_173;
          }

          v55 = v53;
          v56 = _nw_protocol_stack_copy_original_proxied_transport_protocol(v53, v54);
          if (!v56)
          {
            goto LABEL_172;
          }

          v57 = v56;
          if (nw_protocol_options_is_custom_ip(v56))
          {
            BYTE6(v8[9].identifier) = nw_custom_ip_options_get_protocol(v57);
          }

          goto LABEL_171;
        }
      }

      goto LABEL_158;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_options_get_allow_connect_ip";
    v74 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v156) = 0;
    if (__nwlog_fault(v74, type, &v156))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v75 = __nwlog_obj();
        v76 = type[0];
        if (!os_log_type_enabled(v75, type[0]))
        {
          goto LABEL_156;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_options_get_allow_connect_ip";
        v77 = "%{public}s called with null options";
LABEL_154:
        v82 = v75;
LABEL_155:
        _os_log_impl(&dword_181A37000, v82, v76, v77, buf, 0xCu);
        goto LABEL_156;
      }

      if (v156 != 1)
      {
        v75 = __nwlog_obj();
        v76 = type[0];
        if (!os_log_type_enabled(v75, type[0]))
        {
          goto LABEL_156;
        }

        *buf = 136446210;
        *&buf[4] = "nw_masque_options_get_allow_connect_ip";
        v77 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_154;
      }

      v79 = __nw_create_backtrace_string();
      v80 = __nwlog_obj();
      v76 = type[0];
      log = v80;
      v81 = os_log_type_enabled(v80, type[0]);
      if (v79)
      {
        if (v81)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_options_get_allow_connect_ip";
          *&buf[12] = 2082;
          *&buf[14] = v79;
          _os_log_impl(&dword_181A37000, log, v76, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v79);
        goto LABEL_156;
      }

      if (v81)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_options_get_allow_connect_ip";
        v77 = "%{public}s called with null options, no backtrace";
        v82 = log;
        goto LABEL_155;
      }
    }

LABEL_156:
    if (v74)
    {
      free(v74);
    }

LABEL_158:
    v83 = a2->identifier;
    quic_stream_protocol_identifier = nw_protocol_get_quic_stream_protocol_identifier();
    if (nw_protocols_are_equal(v83, quic_stream_protocol_identifier))
    {
      goto LABEL_91;
    }

    v85 = a2->identifier;
    quic_connection_protocol_identifier = nw_protocol_get_quic_connection_protocol_identifier();
    if (nw_protocols_are_equal(v85, quic_connection_protocol_identifier))
    {
      goto LABEL_91;
    }

    v87 = a2->identifier;
    if (nw_protocol_demux_identifier::onceToken != -1)
    {
      v144 = a2->identifier;
      dispatch_once(&nw_protocol_demux_identifier::onceToken, &__block_literal_global_26036);
      v87 = v144;
    }

    if (nw_protocols_are_equal(v87, &nw_protocol_demux_identifier::identifier))
    {
      default_input_handler = a2->default_input_handler;
      if (default_input_handler)
      {
        v89 = default_input_handler->identifier;
        v90 = nw_protocol_get_quic_stream_protocol_identifier();
        if (nw_protocols_are_equal(v89, v90) || (v91 = a2->default_input_handler->identifier, v92 = nw_protocol_get_quic_connection_protocol_identifier(), nw_protocols_are_equal(v91, v92)))
        {
LABEL_91:
          *v48 |= 8u;
          goto LABEL_173;
        }
      }
    }

LABEL_166:
    v93 = nw_parameters_copy_default_protocol_stack(v8[6].identifier);
    if (!v93)
    {
      goto LABEL_173;
    }

    v55 = v93;
    v95 = _nw_protocol_stack_copy_original_proxied_transport_protocol(v93, v94);
    if (!v95)
    {
LABEL_172:
      os_release(v55);
LABEL_173:
      v96 = nw_parameters_copy_effective_proxy_config(v8[6].identifier->name);
      if (!v96)
      {
LABEL_189:
        account_id = nw_parameters_get_account_id(v8[6].identifier->name);
        if (!account_id || strncmp(account_id, "FT-P2P", 7uLL))
        {
          goto LABEL_229;
        }

        v104 = v8[6].identifier;
        if (v104)
        {
          v156 = 0;
          v157 = &v156;
          v158 = 0x2000000000;
          v159 = 0;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3802000000;
          v167 = __Block_byref_object_copy__28072;
          *&v168 = __Block_byref_object_dispose__28073;
          *(&v168 + 1) = 0;
          v169 = -1;
          v105 = _nw_parameters_copy_default_protocol_stack(v104);
          *type = MEMORY[0x1E69E9820];
          v150 = 0x40000000;
          v151 = ___ZL46nw_masque_enable_spin_bit_for_ft_p2p_if_neededP9nw_masque_block_invoke;
          v152 = &unk_1E6A2F7E8;
          v154 = buf;
          p_output_handler = &v8[1].output_handler;
          v153 = &v156;
          nw_protocol_stack_iterate_application_protocols(v105, type);
          if (v157[3])
          {
            if (*(*&buf[8] + 40))
            {
              v106 = 0;
            }

            else
            {
              v108 = nw_protocol_stack_copy_transport_protocol(v105);
              v106 = v108;
              if (v108 && (nw_protocol_options_is_quic(v108) || (_nw_protocol_options_is_quic_connection(v106) & 1) != 0 || _nw_protocol_options_is_quic_stream(v106)))
              {
                v109 = os_retain(v106);
                v110 = *&buf[8];
                v111 = *(*&buf[8] + 48);
                if ((v111 & 1) != 0 && *(*&buf[8] + 40))
                {
                  v112 = v109;
                  os_release(*(*&buf[8] + 40));
                  v109 = v112;
                  v111 = *(v110 + 48);
                }

                *(v110 + 40) = v109;
                *(v110 + 48) = v111 | 1;
                if ((BYTE1(v8[9].callbacks) & 1) == 0 && gLogDatapath == 1)
                {
                  if (__nwlog_privacy_proxy_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                  }

                  v145 = gprivacy_proxyLogObj;
                  if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                  {
                    *v160 = 136446722;
                    v161 = "nw_masque_enable_spin_bit_for_ft_p2p_if_needed";
                    v162 = 2082;
                    v163 = &v8[9].callbacks + 3;
                    v164 = 2080;
                    v165 = " ";
                    _os_log_impl(&dword_181A37000, v145, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sfound quic as transport protocol", v160, 0x20u);
                  }
                }
              }
            }

            v113 = *v48;
            if (*(*&buf[8] + 40))
            {
              if ((v113 & 0x10000) == 0)
              {
                if (__nwlog_privacy_proxy_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                }

                v114 = gprivacy_proxyLogObj;
                if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
                {
                  *v160 = 136446466;
                  v161 = &v8[9].callbacks + 3;
                  v162 = 2080;
                  v163 = " ";
                  _os_log_impl(&dword_181A37000, v114, OS_LOG_TYPE_INFO, "%{public}s%soverriding spin bit for quic below masque", v160, 0x16u);
                }
              }

              nw_quic_set_disable_spin_bit(*(*&buf[8] + 40), 1);
              nw_quic_set_spin_bit_value(*(*&buf[8] + 40), 1);
            }

            else if ((v113 & 0x10000) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v115 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
              {
                *v160 = 136446466;
                v161 = &v8[9].callbacks + 3;
                v162 = 2080;
                v163 = " ";
                _os_log_impl(&dword_181A37000, v115, OS_LOG_TYPE_ERROR, "%{public}s%scould not find quic options below masque", v160, 0x16u);
              }
            }

            if (v106)
            {
              os_release(v106);
            }
          }

          else if ((BYTE1(v8[9].callbacks) & 1) == 0)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v107 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
            {
              *v160 = 136446466;
              v161 = &v8[9].callbacks + 3;
              v162 = 2080;
              v163 = " ";
              _os_log_impl(&dword_181A37000, v107, OS_LOG_TYPE_ERROR, "%{public}s%sdid not find self in protocol stack", v160, 0x16u);
            }
          }

          if (v105)
          {
            os_release(v105);
          }

          _Block_object_dispose(buf, 8);
          if ((v169 & 1) != 0 && *(&v168 + 1))
          {
            os_release(*(&v168 + 1));
          }

          _Block_object_dispose(&v156, 8);
          goto LABEL_229;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_masque_enable_spin_bit_for_ft_p2p_if_needed";
        v131 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v156) = 0;
        if (__nwlog_fault(v131, type, &v156))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v132 = __nwlog_obj();
            v133 = type[0];
            if (!os_log_type_enabled(v132, type[0]))
            {
              goto LABEL_300;
            }

            *buf = 136446210;
            *&buf[4] = "nw_masque_enable_spin_bit_for_ft_p2p_if_needed";
            v134 = "%{public}s called with null masque->parameters";
LABEL_299:
            _os_log_impl(&dword_181A37000, v132, v133, v134, buf, 0xCu);
            goto LABEL_300;
          }

          if (v156 != 1)
          {
            v132 = __nwlog_obj();
            v133 = type[0];
            if (!os_log_type_enabled(v132, type[0]))
            {
              goto LABEL_300;
            }

            *buf = 136446210;
            *&buf[4] = "nw_masque_enable_spin_bit_for_ft_p2p_if_needed";
            v134 = "%{public}s called with null masque->parameters, backtrace limit exceeded";
            goto LABEL_299;
          }

          v140 = __nw_create_backtrace_string();
          v132 = __nwlog_obj();
          v133 = type[0];
          v141 = os_log_type_enabled(v132, type[0]);
          if (!v140)
          {
            if (!v141)
            {
              goto LABEL_300;
            }

            *buf = 136446210;
            *&buf[4] = "nw_masque_enable_spin_bit_for_ft_p2p_if_needed";
            v134 = "%{public}s called with null masque->parameters, no backtrace";
            goto LABEL_299;
          }

          if (v141)
          {
            *buf = 136446466;
            *&buf[4] = "nw_masque_enable_spin_bit_for_ft_p2p_if_needed";
            *&buf[12] = 2082;
            *&buf[14] = v140;
            _os_log_impl(&dword_181A37000, v132, v133, "%{public}s called with null masque->parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v140);
        }

LABEL_300:
        if (v131)
        {
          free(v131);
        }

        if (!a2)
        {
LABEL_236:
          result = 1;
          if (v6)
          {
            return result;
          }

          goto LABEL_237;
        }

LABEL_230:
        v116 = a2->callbacks;
        if (v116)
        {
          supports_external_data = v116->supports_external_data;
          if (supports_external_data)
          {
            if (supports_external_data(a2))
            {
              v118 = 64;
            }

            else
            {
              v118 = 0;
            }

            *(&v8[9].identifier + 7) = *(&v8[9].identifier + 7) & 0xFFFFFFBF | v118;
          }
        }

        goto LABEL_236;
      }

      v97 = v96;
      v98 = v97[84];

      if (!v98)
      {
LABEL_188:
        os_release(v97);
        goto LABEL_189;
      }

      WORD2(v8[9].identifier) = v98;
      v99 = v8[6].callbacks;
      if (v99)
      {
        if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
        {
          dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
        }

        if (nw_protocol_masque_get_definition(void)::definition)
        {
          v100 = os_retain(nw_protocol_masque_get_definition(void)::definition);
        }

        else
        {
          v100 = 0;
        }

        globals_for_protocol = nw_context_get_globals_for_protocol(v99, v100);
        if (globals_for_protocol)
        {
          if (*globals_for_protocol != v98)
          {
            *globals_for_protocol = v98;
            globals_for_protocol[1] = 0;
            if ((BYTE1(v8[9].callbacks) & 1) == 0)
            {
              if (__nwlog_privacy_proxy_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
              }

              v102 = gprivacy_proxyLogObj;
              if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
              {
                *buf = 136446722;
                *&buf[4] = v8 + 603;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                *&buf[22] = 1024;
                LODWORD(v167) = v98;
                _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_INFO, "%{public}s%sSaving config epoch value: %u", buf, 0x1Cu);
              }
            }
          }

          goto LABEL_188;
        }

        v148 = v6;
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_masque_set_config_epoch_value";
        v130 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v156) = 0;
        v126 = v130;
        if (__nwlog_fault(v130, type, &v156))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v127 = __nwlog_obj();
            v128 = type[0];
            if (!os_log_type_enabled(v127, type[0]))
            {
              goto LABEL_283;
            }

            *buf = 136446210;
            *&buf[4] = "nw_masque_set_config_epoch_value";
            v129 = "%{public}s called with null globals";
            goto LABEL_281;
          }

          if (v156 != 1)
          {
            v127 = __nwlog_obj();
            v128 = type[0];
            if (!os_log_type_enabled(v127, type[0]))
            {
              goto LABEL_283;
            }

            *buf = 136446210;
            *&buf[4] = "nw_masque_set_config_epoch_value";
            v129 = "%{public}s called with null globals, backtrace limit exceeded";
            goto LABEL_281;
          }

          v138 = __nw_create_backtrace_string();
          v136 = __nwlog_obj();
          loga = type[0];
          v139 = os_log_type_enabled(v136, type[0]);
          if (v138)
          {
            if (v139)
            {
              *buf = 136446466;
              *&buf[4] = "nw_masque_set_config_epoch_value";
              *&buf[12] = 2082;
              *&buf[14] = v138;
              _os_log_impl(&dword_181A37000, v136, loga, "%{public}s called with null globals, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v138);
            if (!v126)
            {
              goto LABEL_285;
            }

            goto LABEL_284;
          }

          if (v139)
          {
            *buf = 136446210;
            *&buf[4] = "nw_masque_set_config_epoch_value";
            v129 = "%{public}s called with null globals, no backtrace";
            goto LABEL_292;
          }
        }
      }

      else
      {
        v148 = v6;
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_masque_set_config_epoch_value";
        v125 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v156) = 0;
        v126 = v125;
        if (!__nwlog_fault(v125, type, &v156))
        {
          goto LABEL_283;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v127 = __nwlog_obj();
          v128 = type[0];
          if (!os_log_type_enabled(v127, type[0]))
          {
            goto LABEL_283;
          }

          *buf = 136446210;
          *&buf[4] = "nw_masque_set_config_epoch_value";
          v129 = "%{public}s called with null masque->context";
LABEL_281:
          v142 = v127;
          v143 = v128;
LABEL_282:
          _os_log_impl(&dword_181A37000, v142, v143, v129, buf, 0xCu);
          goto LABEL_283;
        }

        if (v156 != 1)
        {
          v127 = __nwlog_obj();
          v128 = type[0];
          if (!os_log_type_enabled(v127, type[0]))
          {
            goto LABEL_283;
          }

          *buf = 136446210;
          *&buf[4] = "nw_masque_set_config_epoch_value";
          v129 = "%{public}s called with null masque->context, backtrace limit exceeded";
          goto LABEL_281;
        }

        v135 = __nw_create_backtrace_string();
        v136 = __nwlog_obj();
        loga = type[0];
        v137 = os_log_type_enabled(v136, type[0]);
        if (v135)
        {
          if (v137)
          {
            *buf = 136446466;
            *&buf[4] = "nw_masque_set_config_epoch_value";
            *&buf[12] = 2082;
            *&buf[14] = v135;
            _os_log_impl(&dword_181A37000, v136, loga, "%{public}s called with null masque->context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v135);
        }

        else if (v137)
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_set_config_epoch_value";
          v129 = "%{public}s called with null masque->context, no backtrace";
LABEL_292:
          v142 = v136;
          v143 = loga;
          goto LABEL_282;
        }
      }

LABEL_283:
      if (!v126)
      {
LABEL_285:
        v6 = v148;
        goto LABEL_188;
      }

LABEL_284:
      free(v126);
      goto LABEL_285;
    }

    v57 = v95;
    if (nw_protocol_options_is_quic(v95) || _nw_protocol_options_is_udp(v57))
    {
      *v48 |= 8u;
    }

LABEL_171:
    os_release(v57);
    goto LABEL_172;
  }

  if (BYTE1(v8[9].callbacks))
  {
    goto LABEL_57;
  }

  if (__nwlog_privacy_proxy_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
  }

  v13 = &v8[9].callbacks + 3;
  *buf = 136446722;
  *&buf[4] = "nw_protocol_masque_add_input_handler";
  *&buf[12] = 2082;
  *&buf[14] = v8 + 603;
  *&buf[22] = 2080;
  v167 = " ";
  v14 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v156) = 0;
  if (!__nwlog_fault(v14, type, &v156))
  {
    goto LABEL_65;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v15 = gprivacy_proxyLogObj;
    v16 = type[0];
    if (os_log_type_enabled(gprivacy_proxyLogObj, type[0]))
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_masque_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = v13;
      *&buf[22] = 2080;
      v167 = " ";
      v17 = "%{public}s %{public}s%sProtocol instance already has default input handler";
LABEL_63:
      v37 = v15;
      v38 = v16;
LABEL_64:
      _os_log_impl(&dword_181A37000, v37, v38, v17, buf, 0x20u);
    }
  }

  else if (v156 == 1)
  {
    v30 = __nw_create_backtrace_string();
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v31 = gprivacy_proxyLogObj;
    v32 = type[0];
    v33 = os_log_type_enabled(gprivacy_proxyLogObj, type[0]);
    if (v30)
    {
      if (v33)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_masque_add_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = v13;
        *&buf[22] = 2080;
        v167 = " ";
        LOWORD(v168) = 2082;
        *(&v168 + 2) = v30;
        _os_log_impl(&dword_181A37000, v31, v32, "%{public}s %{public}s%sProtocol instance already has default input handler, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v30);
    }

    else if (v33)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_masque_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = v13;
      *&buf[22] = 2080;
      v167 = " ";
      v17 = "%{public}s %{public}s%sProtocol instance already has default input handler, no backtrace";
      v37 = v31;
      v38 = v32;
      goto LABEL_64;
    }
  }

  else
  {
    if (__nwlog_privacy_proxy_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
    }

    v15 = gprivacy_proxyLogObj;
    v16 = type[0];
    if (os_log_type_enabled(gprivacy_proxyLogObj, type[0]))
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_masque_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = v13;
      *&buf[22] = 2080;
      v167 = " ";
      v17 = "%{public}s %{public}s%sProtocol instance already has default input handler, backtrace limit exceeded";
      goto LABEL_63;
    }
  }

LABEL_65:
  if (v14)
  {
    free(v14);
  }

  result = 0;
  if ((v6 & 1) == 0)
  {
LABEL_237:
    v119 = v3->handle;
    if (v119 == &nw_protocol_ref_counted_handle || v119 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v120 = v3[1].callbacks;
      if (v120)
      {
        v121 = (v120 - 1);
        v3[1].callbacks = v121;
        if (!v121)
        {
          v122 = result;
          v123 = *v3[1].flow_id;
          if (v123)
          {
            *v3[1].flow_id = 0;
            v123[2](v123);
            _Block_release(v123);
          }

          if (v3[1].flow_id[8])
          {
            v124 = *v3[1].flow_id;
            if (v124)
            {
              _Block_release(v124);
            }
          }

          free(v3);
          return v122;
        }
      }
    }
  }

  return result;
}

uint64_t nw_masque_options_get_version(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v13 = 1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __nw_masque_options_get_version_block_invoke;
    v9[3] = &unk_1E6A2F610;
    v9[4] = buf;
    nw_protocol_options_access_handle(a1, v9);
    v1 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    return v1;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_options_get_version";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v3, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_options_get_version";
        v6 = "%{public}s called with null options";
LABEL_17:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else if (v10 == 1)
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
          *&buf[4] = "nw_masque_options_get_version";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v8)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_options_get_version";
        v6 = "%{public}s called with null options, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_options_get_version";
        v6 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  return 1;
}

uint64_t nw_protocol_masque_connect(nw_protocol *a1, nw_protocol *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  if (a1)
  {
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
        *out = 136446210;
        *&out[4] = "nw_protocol_masque_connect";
        v9 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v77 = 0;
        if (!__nwlog_fault(v9, type, &v77))
        {
          goto LABEL_54;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_54;
          }

          *out = 136446210;
          *&out[4] = "nw_protocol_masque_connect";
          v12 = "%{public}s called with null masque";
        }

        else
        {
          if (v77 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v25 = gLogObj;
            v26 = type[0];
            v27 = os_log_type_enabled(gLogObj, type[0]);
            if (backtrace_string)
            {
              if (v27)
              {
                *out = 136446466;
                *&out[4] = "nw_protocol_masque_connect";
                *&out[12] = 2082;
                *&out[14] = backtrace_string;
                _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null masque, dumping backtrace:%{public}s", out, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_54;
            }

            if (!v27)
            {
LABEL_54:
              if (v9)
              {
                free(v9);
              }

LABEL_56:
              result = 0;
              if (v6)
              {
                return result;
              }

              goto LABEL_57;
            }

            *out = 136446210;
            *&out[4] = "nw_protocol_masque_connect";
            v12 = "%{public}s called with null masque, no backtrace";
            v31 = v25;
            v32 = v26;
LABEL_53:
            _os_log_impl(&dword_181A37000, v31, v32, v12, out, 0xCu);
            goto LABEL_54;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_54;
          }

          *out = 136446210;
          *&out[4] = "nw_protocol_masque_connect";
          v12 = "%{public}s called with null masque, backtrace limit exceeded";
        }

        v31 = v10;
        v32 = v11;
        goto LABEL_53;
      }

      v8 = *a1[1].flow_id;
    }

    if (*&v8[9].flow_id[4] != 4)
    {
      output_handler = a1->output_handler;
      if (output_handler)
      {
        v22 = output_handler->callbacks;
        if (!v22 || !v22->connect)
        {
          goto LABEL_56;
        }

        *(&v8[9].identifier + 7) |= 1u;
        result = (a1->output_handler->callbacks->connect)();
        *(&v8[9].identifier + 7) &= ~1u;
        if (v6)
        {
          return result;
        }

LABEL_57:
        v33 = v3->handle;
        if (v33 == &nw_protocol_ref_counted_handle || v33 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
        {
          v34 = v3[1].callbacks;
          if (v34)
          {
            v35 = (v34 - 1);
            v3[1].callbacks = v35;
            if (!v35)
            {
              v36 = result;
              v37 = *v3[1].flow_id;
              if (v37)
              {
                *v3[1].flow_id = 0;
                v37[2](v37);
                _Block_release(v37);
              }

              if (v3[1].flow_id[8])
              {
                v38 = *v3[1].flow_id;
                if (v38)
                {
                  _Block_release(v38);
                }
              }

              free(v3);
              return v36;
            }
          }
        }

        return result;
      }

      goto LABEL_48;
    }

    if (v8[8].default_input_handler)
    {
      if (!v8[8].output_handler_context)
      {
        v8[8].output_handler_context = nw_dictionary_create();
      }

      if (a2)
      {
        v13 = a2->callbacks;
        if (v13)
        {
          connected = v13->connected;
          if (connected)
          {
            connected(a2, v3);
            *type = 0;
            v80 = 0;
            goto LABEL_26;
          }
        }

        __nwlog_obj();
        identifier = a2->identifier;
        if (!identifier)
        {
          identifier = "invalid";
        }
      }

      else
      {
        __nwlog_obj();
        identifier = "invalid";
      }

      *out = 136446466;
      *&out[4] = "nw_protocol_masque_connect";
      *&out[12] = 2082;
      *&out[14] = identifier;
      v56 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v77 = 0;
      if (!__nwlog_fault(v56, type, &v77))
      {
        goto LABEL_143;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v57 = __nwlog_obj();
        v58 = type[0];
        if (!os_log_type_enabled(v57, type[0]))
        {
          goto LABEL_143;
        }

        v59 = "invalid";
        if (a2 && a2->identifier)
        {
          v59 = a2->identifier;
        }

        *out = 136446466;
        *&out[4] = "nw_protocol_masque_connect";
        *&out[12] = 2082;
        *&out[14] = v59;
        v60 = "%{public}s protocol %{public}s has invalid connected callback";
      }

      else if (v77 == 1)
      {
        v61 = __nw_create_backtrace_string();
        v57 = __nwlog_obj();
        v58 = type[0];
        v62 = os_log_type_enabled(v57, type[0]);
        if (v61)
        {
          if (v62)
          {
            v63 = "invalid";
            if (a2 && a2->identifier)
            {
              v63 = a2->identifier;
            }

            *out = 136446722;
            *&out[4] = "nw_protocol_masque_connect";
            *&out[12] = 2082;
            *&out[14] = v63;
            *&out[22] = 2082;
            *&out[24] = v61;
            _os_log_impl(&dword_181A37000, v57, v58, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", out, 0x20u);
          }

          free(v61);
LABEL_143:
          if (v56)
          {
            free(v56);
          }

          *type = 0;
          v80 = 0;
          if (a2)
          {
LABEL_26:
            v15 = a2->callbacks;
            if (!v15)
            {
              goto LABEL_48;
            }

            get_remote_endpoint = v15->get_remote_endpoint;
            if (get_remote_endpoint)
            {
              v17 = get_remote_endpoint(a2);
              v18 = a2->callbacks;
              if (!v18 || (get_path = v18->get_path) == 0)
              {
LABEL_31:
                if (v17 && !uuid_is_null(type))
                {
                  memset(out, 0, sizeof(out));
                  uuid_unparse(type, out);
                  nw_dictionary_set_value(v8[8].output_handler_context, out, v17);
                }

                goto LABEL_48;
              }
            }

            else
            {
              v17 = 0;
              get_path = v15->get_path;
              if (!get_path)
              {
                goto LABEL_31;
              }
            }

            v20 = get_path(a2);
            nw_path_get_client_id(v20, type);
            goto LABEL_31;
          }

LABEL_48:
          result = 1;
          if (v6)
          {
            return result;
          }

          goto LABEL_57;
        }

        if (!v62)
        {
          goto LABEL_143;
        }

        v73 = "invalid";
        if (a2 && a2->identifier)
        {
          v73 = a2->identifier;
        }

        *out = 136446466;
        *&out[4] = "nw_protocol_masque_connect";
        *&out[12] = 2082;
        *&out[14] = v73;
        v60 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
      }

      else
      {
        v57 = __nwlog_obj();
        v58 = type[0];
        if (!os_log_type_enabled(v57, type[0]))
        {
          goto LABEL_143;
        }

        v69 = "invalid";
        if (a2 && a2->identifier)
        {
          v69 = a2->identifier;
        }

        *out = 136446466;
        *&out[4] = "nw_protocol_masque_connect";
        *&out[12] = 2082;
        *&out[14] = v69;
        v60 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v57, v58, v60, out, 0x16u);
      goto LABEL_143;
    }

    default_input_handler = a1->default_input_handler;
    if (default_input_handler)
    {
      v29 = default_input_handler->callbacks;
      if (v29)
      {
        v30 = v29->connected;
        if (v30)
        {
          v30();
          goto LABEL_48;
        }
      }
    }

    __nwlog_obj();
    v46 = v3->default_input_handler;
    v47 = "invalid";
    if (v46)
    {
      name = v46->identifier->name;
      if (name)
      {
        v47 = name;
      }
    }

    *out = 136446466;
    *&out[4] = "nw_protocol_masque_connect";
    *&out[12] = 2082;
    *&out[14] = v47;
    v49 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v77 = 0;
    if (__nwlog_fault(v49, type, &v77))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v50 = __nwlog_obj();
        v51 = type[0];
        if (!os_log_type_enabled(v50, type[0]))
        {
          goto LABEL_153;
        }

        v52 = v3->default_input_handler;
        v53 = "invalid";
        if (v52)
        {
          v54 = v52->identifier->name;
          if (v54)
          {
            v53 = v54;
          }
        }

        *out = 136446466;
        *&out[4] = "nw_protocol_masque_connect";
        *&out[12] = 2082;
        *&out[14] = v53;
        v55 = "%{public}s protocol %{public}s has invalid connected callback";
        goto LABEL_152;
      }

      if (v77 != 1)
      {
        v50 = __nwlog_obj();
        v51 = type[0];
        if (!os_log_type_enabled(v50, type[0]))
        {
          goto LABEL_153;
        }

        v70 = v3->default_input_handler;
        v71 = "invalid";
        if (v70)
        {
          v72 = v70->identifier->name;
          if (v72)
          {
            v71 = v72;
          }
        }

        *out = 136446466;
        *&out[4] = "nw_protocol_masque_connect";
        *&out[12] = 2082;
        *&out[14] = v71;
        v55 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
        goto LABEL_152;
      }

      v64 = __nw_create_backtrace_string();
      v50 = __nwlog_obj();
      v51 = type[0];
      v65 = os_log_type_enabled(v50, type[0]);
      if (v64)
      {
        if (v65)
        {
          v66 = v3->default_input_handler;
          v67 = "invalid";
          if (v66)
          {
            v68 = v66->identifier->name;
            if (v68)
            {
              v67 = v68;
            }
          }

          *out = 136446722;
          *&out[4] = "nw_protocol_masque_connect";
          *&out[12] = 2082;
          *&out[14] = v67;
          *&out[22] = 2082;
          *&out[24] = v64;
          _os_log_impl(&dword_181A37000, v50, v51, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", out, 0x20u);
        }

        free(v64);
        goto LABEL_153;
      }

      if (v65)
      {
        v74 = v3->default_input_handler;
        v75 = "invalid";
        if (v74)
        {
          v76 = v74->identifier->name;
          if (v76)
          {
            v75 = v76;
          }
        }

        *out = 136446466;
        *&out[4] = "nw_protocol_masque_connect";
        *&out[12] = 2082;
        *&out[14] = v75;
        v55 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
LABEL_152:
        _os_log_impl(&dword_181A37000, v50, v51, v55, out, 0x16u);
      }
    }

LABEL_153:
    if (v49)
    {
      free(v49);
    }

    goto LABEL_48;
  }

  __nwlog_obj();
  *out = 136446210;
  *&out[4] = "nw_protocol_masque_connect";
  v39 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v77 = 0;
  if (__nwlog_fault(v39, type, &v77))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v40 = __nwlog_obj();
      v41 = type[0];
      if (os_log_type_enabled(v40, type[0]))
      {
        *out = 136446210;
        *&out[4] = "nw_protocol_masque_connect";
        v42 = "%{public}s called with null protocol";
LABEL_128:
        _os_log_impl(&dword_181A37000, v40, v41, v42, out, 0xCu);
      }
    }

    else if (v77 == 1)
    {
      v43 = __nw_create_backtrace_string();
      v40 = __nwlog_obj();
      v41 = type[0];
      v44 = os_log_type_enabled(v40, type[0]);
      if (v43)
      {
        if (v44)
        {
          *out = 136446466;
          *&out[4] = "nw_protocol_masque_connect";
          *&out[12] = 2082;
          *&out[14] = v43;
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null protocol, dumping backtrace:%{public}s", out, 0x16u);
        }

        free(v43);
        goto LABEL_129;
      }

      if (v44)
      {
        *out = 136446210;
        *&out[4] = "nw_protocol_masque_connect";
        v42 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_128;
      }
    }

    else
    {
      v40 = __nwlog_obj();
      v41 = type[0];
      if (os_log_type_enabled(v40, type[0]))
      {
        *out = 136446210;
        *&out[4] = "nw_protocol_masque_connect";
        v42 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_128;
      }
    }
  }

LABEL_129:
  if (v39)
  {
    free(v39);
  }

  return 0;
}

nw_protocol *nw_protocol_masque_get_remote_endpoint(nw_protocol *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    handle = a1->handle;
    v3 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v4 = 1;
      goto LABEL_11;
    }

    v3 = *a1[1].flow_id;
    if (v3)
    {
LABEL_6:
      callbacks = v3[1].callbacks;
      v4 = 0;
      if (callbacks)
      {
        v3[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v4 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v6 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v39 = "nw_protocol_masque_get_remote_endpoint";
        v7 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v36 = 0;
        if (!__nwlog_fault(v7, &type, &v36))
        {
          goto LABEL_42;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_42;
          }

          *buf = 136446210;
          v39 = "nw_protocol_masque_get_remote_endpoint";
          v10 = "%{public}s called with null masque";
        }

        else
        {
          if (v36 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v20 = type;
            v21 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v21)
              {
                *buf = 136446466;
                v39 = "nw_protocol_masque_get_remote_endpoint";
                v40 = 2082;
                v41 = backtrace_string;
                _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_42;
            }

            if (!v21)
            {
LABEL_42:
              if (v7)
              {
                free(v7);
              }

LABEL_44:
              result = 0;
              if (v4)
              {
                return result;
              }

              goto LABEL_45;
            }

            *buf = 136446210;
            v39 = "nw_protocol_masque_get_remote_endpoint";
            v10 = "%{public}s called with null masque, no backtrace";
            v22 = v19;
            v23 = v20;
LABEL_41:
            _os_log_impl(&dword_181A37000, v22, v23, v10, buf, 0xCu);
            goto LABEL_42;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_42;
          }

          *buf = 136446210;
          v39 = "nw_protocol_masque_get_remote_endpoint";
          v10 = "%{public}s called with null masque, backtrace limit exceeded";
        }

        v22 = v8;
        v23 = v9;
        goto LABEL_41;
      }

      v6 = *a1[1].flow_id;
    }

    v11 = v6[6].handle;
    if (!v11)
    {
      goto LABEL_78;
    }

    if (_nw_protocol_options_proxy_endpoint_should_override_stack(v11))
    {
      v12 = nw_protocol_options_copy_proxy_endpoint_for_stack(v6[6].handle);
      if (v12)
      {
        v13 = v12;
        v14 = *v6[6].flow_id;
        if (v14 != v13)
        {
          if (v14)
          {
            os_release(v14);
            *v6[6].flow_id = 0;
          }

          *v6[6].flow_id = os_retain(v13);
        }

        os_release(v13);
      }
    }

    result = *v6[6].flow_id;
    if (!result)
    {
LABEL_78:
      result = v1->default_input_handler;
      if (result)
      {
        v16 = result->callbacks;
        if (!v16)
        {
          goto LABEL_44;
        }

        get_remote_endpoint = v16->get_remote_endpoint;
        if (!get_remote_endpoint)
        {
          goto LABEL_44;
        }

        result = get_remote_endpoint();
      }
    }

    if (v4)
    {
      return result;
    }

LABEL_45:
    v24 = v1->handle;
    if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
    {
      v25 = v1[1].callbacks;
      if (v25)
      {
        v26 = (v25 - 1);
        v1[1].callbacks = v26;
        if (!v26)
        {
          v27 = result;
          v28 = *v1[1].flow_id;
          if (v28)
          {
            *v1[1].flow_id = 0;
            v28[2](v28);
            _Block_release(v28);
          }

          if (v1[1].flow_id[8])
          {
            v29 = *v1[1].flow_id;
            if (v29)
            {
              _Block_release(v29);
            }
          }

          free(v1);
          return v27;
        }
      }
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v39 = "nw_protocol_masque_get_remote_endpoint";
  v30 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v36 = 0;
  if (__nwlog_fault(v30, &type, &v36))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v39 = "nw_protocol_masque_get_remote_endpoint";
        v33 = "%{public}s called with null protocol";
LABEL_72:
        _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
      }
    }

    else if (v36 == 1)
    {
      v34 = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      v32 = type;
      v35 = os_log_type_enabled(v31, type);
      if (v34)
      {
        if (v35)
        {
          *buf = 136446466;
          v39 = "nw_protocol_masque_get_remote_endpoint";
          v40 = 2082;
          v41 = v34;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v34);
        goto LABEL_73;
      }

      if (v35)
      {
        *buf = 136446210;
        v39 = "nw_protocol_masque_get_remote_endpoint";
        v33 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_72;
      }
    }

    else
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v39 = "nw_protocol_masque_get_remote_endpoint";
        v33 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_72;
      }
    }
  }

LABEL_73:
  if (v30)
  {
    free(v30);
  }

  return 0;
}

void *nw_protocol_masque_get_parameters(nw_protocol *a1)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    handle = a1->handle;
    v3 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v4 = 1;
      goto LABEL_11;
    }

    v3 = *a1[1].flow_id;
    if (v3)
    {
LABEL_6:
      callbacks = v3[1].callbacks;
      v4 = 0;
      if (callbacks)
      {
        v3[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v4 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v6 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v66 = "nw_protocol_masque_get_parameters";
        v7 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v63 = 0;
        if (!__nwlog_fault(v7, &type, &v63))
        {
          goto LABEL_44;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_44;
          }

          *buf = 136446210;
          v66 = "nw_protocol_masque_get_parameters";
          v10 = "%{public}s called with null masque";
          goto LABEL_42;
        }

        if (v63 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_44;
          }

          *buf = 136446210;
          v66 = "nw_protocol_masque_get_parameters";
          v10 = "%{public}s called with null masque, backtrace limit exceeded";
          goto LABEL_42;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type;
        v18 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            v66 = "nw_protocol_masque_get_parameters";
            v67 = 2082;
            v68 = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_44;
        }

        if (v18)
        {
          *buf = 136446210;
          v66 = "nw_protocol_masque_get_parameters";
          v10 = "%{public}s called with null masque, no backtrace";
          v21 = v16;
          v22 = v17;
          goto LABEL_43;
        }

LABEL_44:
        if (v7)
        {
          free(v7);
        }

LABEL_46:
        result = 0;
        if (v4)
        {
          return result;
        }

        goto LABEL_135;
      }

      v6 = *a1[1].flow_id;
    }

    if (&v6[2].default_input_handler != a1)
    {
      if (&v6[4] != a1)
      {
        default_input_handler = v6->default_input_handler;
        if (&v6[1].output_handler != a1 || (result = v6[7].default_input_handler) == 0)
        {
          if (!default_input_handler)
          {
            goto LABEL_46;
          }

          v12 = default_input_handler->callbacks;
          if (!v12)
          {
            goto LABEL_46;
          }

          get_parameters = v12->get_parameters;
          if (!get_parameters)
          {
            goto LABEL_46;
          }

          result = get_parameters(v6->default_input_handler);
          if (v4)
          {
            return result;
          }

LABEL_135:
          v55 = v1->handle;
          if (v55 == &nw_protocol_ref_counted_handle || v55 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
          {
            v56 = v1[1].callbacks;
            if (v56)
            {
              v57 = (v56 - 1);
              v1[1].callbacks = v57;
              if (!v57)
              {
                v58 = result;
                v59 = *v1[1].flow_id;
                if (v59)
                {
                  *v1[1].flow_id = 0;
                  v59[2](v59);
                  _Block_release(v59);
                }

                if (v1[1].flow_id[8])
                {
                  v60 = *v1[1].flow_id;
                  if (v60)
                  {
                    _Block_release(v60);
                  }
                }

                free(v1);
                return v58;
              }
            }
          }

          return result;
        }

LABEL_134:
        if (v4)
        {
          return result;
        }

        goto LABEL_135;
      }

      if ((BYTE1(v6[9].callbacks) & 2) != 0 || (v19 = *v6[8].flow_id) == 0)
      {
LABEL_133:
        result = v6[6].identifier;
        goto LABEL_134;
      }

      if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
      {
        dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
      }

      if (nw_protocol_demux_copy_definition::definition)
      {
        v20 = os_retain(nw_protocol_demux_copy_definition::definition);
      }

      else
      {
        v20 = 0;
      }

      v33 = nw_parameters_copy_protocol_options_legacy(v6[6].identifier, v19);
      v34 = v33;
      if (!v33)
      {
        v34 = nw_parameters_copy_protocol_options_for_definition(v6[6].identifier, v20);
        if (!v34)
        {
LABEL_131:
          if (v20)
          {
            os_release(v20);
          }

          goto LABEL_133;
        }
      }

      if (nw_protocol_demux_copy_definition::onceToken[0] == -1)
      {
        v35 = nw_protocol_demux_copy_definition::definition;
        if (nw_protocol_demux_copy_definition::definition)
        {
          goto LABEL_73;
        }
      }

      else
      {
        dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
        v35 = nw_protocol_demux_copy_definition::definition;
        if (nw_protocol_demux_copy_definition::definition)
        {
LABEL_73:
          v36 = os_retain(v35);
          v37 = nw_protocol_options_matches_definition(v34, v36);
          v38 = v37;
          if (v36)
          {
            os_release(v36);
            if ((v38 & 1) == 0)
            {
              goto LABEL_130;
            }
          }

          else if (!v37)
          {
            goto LABEL_130;
          }

          goto LABEL_123;
        }
      }

      if ((nw_protocol_options_matches_definition(v34, 0) & 1) == 0)
      {
LABEL_130:
        os_release(v34);
        goto LABEL_131;
      }

LABEL_123:
      v51 = _nw_protocol_options_copy(v34);
      nw_parameters_set_protocol_instance(v51, v52, v19);
      nw_protocol_options_inherit_log_id(v34, v51);
      v53 = nw_parameters_copy_default_protocol_stack(v6[6].identifier);
      v54 = v53;
      if (v33)
      {
        nw_protocol_stack_replace_protocol_with_handle(v53, v19, v51);
      }

      else
      {
        nw_protocol_stack_replace_protocol(v53, v20, v51);
      }

      *(&v6[9].identifier + 7) |= 0x20000u;
      if (v54)
      {
        os_release(v54);
      }

      if (v51)
      {
        os_release(v51);
      }

      goto LABEL_130;
    }

    if (v6[7].output_handler_context)
    {
      goto LABEL_27;
    }

    if (!v6[7].identifier && !v6[8].identifier)
    {
      goto LABEL_46;
    }

    identifier = v6[6].identifier;
    if (!identifier)
    {
      __nwlog_obj();
      *buf = 136446210;
      v66 = "nw_protocol_masque_get_parameters";
      v7 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v63 = 0;
      if (!__nwlog_fault(v7, &type, &v63))
      {
        goto LABEL_44;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_44;
        }

        *buf = 136446210;
        v66 = "nw_protocol_masque_get_parameters";
        v10 = "%{public}s called with null masque->parameters";
      }

      else if (v63 == 1)
      {
        v61 = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v62 = os_log_type_enabled(v8, type);
        if (v61)
        {
          if (v62)
          {
            *buf = 136446466;
            v66 = "nw_protocol_masque_get_parameters";
            v67 = 2082;
            v68 = v61;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null masque->parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v61);
          goto LABEL_44;
        }

        if (!v62)
        {
          goto LABEL_44;
        }

        *buf = 136446210;
        v66 = "nw_protocol_masque_get_parameters";
        v10 = "%{public}s called with null masque->parameters, no backtrace";
      }

      else
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_44;
        }

        *buf = 136446210;
        v66 = "nw_protocol_masque_get_parameters";
        v10 = "%{public}s called with null masque->parameters, backtrace limit exceeded";
      }

LABEL_42:
      v21 = v8;
      v22 = v9;
LABEL_43:
      _os_log_impl(&dword_181A37000, v21, v22, v10, buf, 0xCu);
      goto LABEL_44;
    }

    v6[7].output_handler_context = _nw_parameters_shallow_copy(identifier, 1);
    v24 = *v6[8].flow_id;
    if (!v24)
    {
LABEL_27:
      result = v6[7].output_handler_context;
      if (v4)
      {
        return result;
      }

      goto LABEL_135;
    }

    if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
    {
      dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
    }

    if (nw_protocol_demux_copy_definition::definition)
    {
      v25 = os_retain(nw_protocol_demux_copy_definition::definition);
    }

    else
    {
      v25 = 0;
    }

    v26 = nw_parameters_copy_protocol_options_legacy(v6[7].output_handler_context, v24);
    v27 = v26;
    if (!v26)
    {
      v27 = nw_parameters_copy_protocol_options_for_definition(v6[7].output_handler_context, v25);
      if (!v27)
      {
LABEL_119:
        if (v25)
        {
          os_release(v25);
        }

        goto LABEL_27;
      }
    }

    if (nw_protocol_demux_copy_definition::onceToken[0] == -1)
    {
      v28 = nw_protocol_demux_copy_definition::definition;
      if (nw_protocol_demux_copy_definition::definition)
      {
        goto LABEL_65;
      }
    }

    else
    {
      dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
      v28 = nw_protocol_demux_copy_definition::definition;
      if (nw_protocol_demux_copy_definition::definition)
      {
LABEL_65:
        v29 = os_retain(v28);
        v30 = nw_protocol_options_matches_definition(v27, v29);
        v32 = v30;
        if (v29)
        {
          os_release(v29);
          if ((v32 & 1) == 0)
          {
            goto LABEL_118;
          }
        }

        else if (!v30)
        {
          goto LABEL_118;
        }

        goto LABEL_103;
      }
    }

    if ((nw_protocol_options_matches_definition(v27, 0) & 1) == 0)
    {
LABEL_118:
      os_release(v27);
      goto LABEL_119;
    }

LABEL_103:
    if (v6[7].identifier)
    {
      v45 = _nw_protocol_options_copy(v27);
      v46 = v45;
      if (v6[7].output_handler)
      {
        output_handler = v6[7].output_handler;
      }

      else
      {
        output_handler = v6[7].identifier;
      }

      nw_demux_options_add_pattern_data(v45, 1, output_handler);
    }

    else
    {
      name = v6[8].identifier->name;
      if (name)
      {
        v46 = _nw_protocol_options_copy(name);
      }

      else
      {
        v46 = 0;
      }
    }

    nw_parameters_set_protocol_instance(v46, v31, v24);
    nw_protocol_options_inherit_log_id(v27, v46);
    v49 = nw_parameters_copy_default_protocol_stack(v6[7].output_handler_context);
    v50 = v49;
    if (v26)
    {
      nw_protocol_stack_replace_protocol_with_handle(v49, v24, v46);
    }

    else
    {
      nw_protocol_stack_replace_protocol(v49, v25, v46);
    }

    if (v50)
    {
      os_release(v50);
    }

    if (v46)
    {
      os_release(v46);
    }

    goto LABEL_118;
  }

  __nwlog_obj();
  *buf = 136446210;
  v66 = "nw_protocol_masque_get_parameters";
  v39 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v63 = 0;
  if (__nwlog_fault(v39, &type, &v63))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v40, type))
      {
        *buf = 136446210;
        v66 = "nw_protocol_masque_get_parameters";
        v42 = "%{public}s called with null protocol";
LABEL_93:
        _os_log_impl(&dword_181A37000, v40, v41, v42, buf, 0xCu);
      }
    }

    else if (v63 == 1)
    {
      v43 = __nw_create_backtrace_string();
      v40 = __nwlog_obj();
      v41 = type;
      v44 = os_log_type_enabled(v40, type);
      if (v43)
      {
        if (v44)
        {
          *buf = 136446466;
          v66 = "nw_protocol_masque_get_parameters";
          v67 = 2082;
          v68 = v43;
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v43);
        goto LABEL_94;
      }

      if (v44)
      {
        *buf = 136446210;
        v66 = "nw_protocol_masque_get_parameters";
        v42 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_93;
      }
    }

    else
    {
      v40 = __nwlog_obj();
      v41 = type;
      if (os_log_type_enabled(v40, type))
      {
        *buf = 136446210;
        v66 = "nw_protocol_masque_get_parameters";
        v42 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_93;
      }
    }
  }

LABEL_94:
  if (v39)
  {
    free(v39);
  }

  return 0;
}

NWConcrete_nw_endpoint_mode_handler *nw_endpoint_handler_copy_proxy(NWConcrete_nw_endpoint_handler *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_endpoint_handler_copy_proxy";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v25, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_copy_proxy";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v36 = "nw_endpoint_handler_copy_proxy";
            v37 = 2082;
            id_str = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_65;
        }

        if (v30)
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_copy_proxy";
          _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v36 = "nw_endpoint_handler_copy_proxy";
          _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_65:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_47;
  }

  if (v1->mode != 3)
  {
    if ((*(v1 + 284) & 0x40) != 0)
    {
LABEL_47:
      v3 = 0;
      goto LABEL_48;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_46:

      goto LABEL_47;
    }

    if (*(v2 + 284))
    {
      v5 = "dry-run ";
    }

    else
    {
      v5 = "";
    }

    v6 = nw_endpoint_handler_copy_endpoint(v2);
    v7 = v6;
    if (v6)
    {
      logging_description = _nw_endpoint_get_logging_description(v6);
    }

    else
    {
      logging_description = "<NULL>";
    }

    state = v2->state;
    if (state > 5)
    {
      v10 = "unknown-state";
    }

    else
    {
      v10 = off_1E6A31048[state];
    }

    v11 = v2;
    v12 = v11;
    mode = v2->mode;
    v32 = v10;
    if (mode > 2)
    {
      if (mode == 3)
      {
        v14 = logging_description;
        v15 = "proxy";
        goto LABEL_31;
      }

      if (mode != 4)
      {
        if (mode == 5)
        {
          v14 = logging_description;
          v15 = "transform";
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v14 = logging_description;
      v15 = "fallback";
    }

    else
    {
      if (!mode)
      {
        v14 = logging_description;
        v15 = "path";
        goto LABEL_31;
      }

      if (mode != 1)
      {
        if (mode == 2)
        {
          v14 = logging_description;
          v15 = nw_endpoint_flow_mode_string(v11->mode_handler);
          goto LABEL_31;
        }

LABEL_28:
        v14 = logging_description;
        v15 = "unknown-mode";
        goto LABEL_31;
      }

      v14 = logging_description;
      v15 = "resolver";
    }

LABEL_31:

    v16 = v12;
    os_unfair_lock_lock(v12 + 28);
    v17 = v16[8];
    os_unfair_lock_unlock(v12 + 28);

    v18 = v17;
    v19 = v16;
    v20 = v2->mode;
    if (v20 > 2)
    {
      switch(v20)
      {
        case 3:
          v22 = "proxy";
          goto LABEL_45;
        case 4:
          v22 = "fallback";
          goto LABEL_45;
        case 5:
          v22 = "transform";
          goto LABEL_45;
      }
    }

    else
    {
      switch(v20)
      {
        case 0:
          v22 = "path";
          goto LABEL_45;
        case 1:
          v22 = "resolver";
          goto LABEL_45;
        case 2:
          v21 = v19;
          v22 = nw_endpoint_flow_mode_string(v19[33]);
          v19 = v21;
LABEL_45:

          *buf = 136448002;
          v36 = "nw_endpoint_handler_copy_proxy";
          v37 = 2082;
          id_str = v2->id_str;
          v39 = 2082;
          v40 = v5;
          v41 = 2082;
          v42 = v14;
          v43 = 2082;
          v44 = v32;
          v45 = 2082;
          v46 = v15;
          v47 = 2114;
          v48 = v18;
          v49 = 2082;
          v50 = v22;
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Endpoint handler is %{public}s, not a proxy", buf, 0x52u);

          goto LABEL_46;
      }
    }

    v22 = "unknown-mode";
    goto LABEL_45;
  }

  v3 = v1->mode_handler;
LABEL_48:

  return v3;
}

uint64_t nw_proxy_config_is_privacy_proxy(void *a1, BOOL *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      *a2 = (v3[170] & 2) != 0;
    }

    v4 = v3[170] & 1;
    goto LABEL_5;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_proxy_config_is_privacy_proxy";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v7, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_proxy_config_is_privacy_proxy";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v17 = "nw_proxy_config_is_privacy_proxy";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_proxy_config_is_privacy_proxy";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_proxy_config_is_privacy_proxy";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
  v3 = 0;
LABEL_5:

  return v4;
}

uint64_t ___ZL32nw_endpoint_proxy_process_configP30NWConcrete_nw_endpoint_handler_block_invoke_3(void **a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((nw_proxy_config_is_privacy_proxy(v4, 0) & 1) == 0)
  {
    nw_endpoint_proxy_add_config_if_applicable(a1[4], a1[5], v4, a1[6], a1[7], 0);
  }

  return 1;
}

uint64_t sub_181CCAAA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_182AD2738();
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  v16 = *(*v1 + 136);
  swift_beginAccess();
  v17 = *(v2 + v16);
  v18 = *(*a1 + 136);
  swift_beginAccess();
  v19 = *(a1 + v18);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_7;
    }

    type metadata accessor for Endpoint(0);
    v20 = v19;
    v21 = v17;
    v22 = sub_182AD3978();

    if ((v22 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v23 = *(*v2 + 176);
    swift_beginAccess();
    LODWORD(v23) = *(v2 + v23);
    v24 = *(*a1 + 176);
    swift_beginAccess();
    if (v23 != *(a1 + v24))
    {
      goto LABEL_7;
    }

    v27 = qword_1ED411A90;
    swift_beginAccess();
    sub_181AACF84(v2 + v27, v15);
    v28 = qword_1ED411A90;
    swift_beginAccess();
    v29 = *(v7 + 48);
    sub_181AACF84(v15, v9);
    sub_181AACF84(a1 + v28, &v9[v29]);
    v30 = v53;
    v31 = *(v54 + 48);
    if (v31(v9, 1, v53) == 1)
    {
      sub_181F49A88(v15, &qword_1EA838E00);
      if (v31(&v9[v29], 1, v30) == 1)
      {
        sub_181F49A88(v9, &qword_1EA838E00);
        goto LABEL_16;
      }
    }

    else
    {
      sub_181AACF84(v9, v12);
      if (v31(&v9[v29], 1, v30) != 1)
      {
        v32 = v54;
        (*(v54 + 32))(v52, &v9[v29], v30);
        sub_181F675A4(&qword_1EA836620, 255, MEMORY[0x1E69E84D0]);
        v33 = sub_182AD2F48();
        v34 = *(v32 + 8);
        v34(v52, v30);
        sub_181F49A88(v15, &qword_1EA838E00);
        v34(v12, v30);
        sub_181F49A88(v9, &qword_1EA838E00);
        if ((v33 & 1) == 0)
        {
          goto LABEL_7;
        }

LABEL_16:
        swift_beginAccess();
        v35 = *(v2 + 24);
        v36 = *(v2 + 32);
        v37 = *(v2 + 40);
        *v61 = *(v2 + 16);
        v62 = v35;
        v63 = v36;
        v64 = v37;
        swift_beginAccess();
        v38 = *(a1 + 24);
        v39 = *(a1 + 32);
        v40 = *(a1 + 40);
        *v57 = *(a1 + 16);
        v58 = v38;
        v59 = v39;
        v60 = v40;
        LODWORD(v54) = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v61, v57);
        v41 = v58;
        v53 = v59;
        LODWORD(v52) = v60;
        sub_181F49A24(v35, v36, v37);
        sub_181F49A24(v38, v39, v40);
        sub_181F48350(v41, v53, v52);
        sub_181F48350(v62, v63, v64);
        if (v54)
        {
          v42 = (v2 + *(*v2 + 128));
          swift_beginAccess();
          v43 = *v42;
          v44 = v43 | (*(v42 + 4) << 32);
          if (v43 != 3)
          {
            v45 = (a1 + *(*a1 + 128));
            swift_beginAccess();
            v46 = *v45 | (*(v45 + 4) << 32);
            if (*v45 != 3)
            {
              v48 = vdupq_n_s64(v44);
              v49 = vshlq_u64(v48, xmmword_182AE69D0);
              v50 = vdupq_n_s64(v46);
              v51 = vshlq_u64(v50, xmmword_182AE69D0);
              v57[0] = v44;
              *v48.i8 = vmovn_s64(vshlq_u64(v48, xmmword_182AE69E0));
              *v49.i8 = vmovn_s64(v49);
              v49.i16[1] = v49.i16[2];
              v49.i16[2] = v48.i16[0];
              v49.i16[3] = v48.i16[2];
              *&v57[1] = vmovn_s16(v49).u32[0];
              v55 = v46;
              *v48.i8 = vmovn_s64(vshlq_u64(v50, xmmword_182AE69E0));
              *v51.i8 = vmovn_s64(v51);
              v51.i16[1] = v51.i16[2];
              v51.i16[2] = v48.i16[0];
              v51.i16[3] = v48.i16[2];
              *v48.i8 = vmovn_s16(v51);
              v56 = v48.i32[0];
              v25 = _s7Network10IPProtocolV9IPOptionsV2eeoiySbAE_AEtFZ_0(v57, &v55, *v48.i8, *v51.i8);
              return v25 & 1;
            }

            LODWORD(v44) = *v42;
          }

          if (v44 == 3)
          {
            v47 = *(*a1 + 128);
            swift_beginAccess();
            if (*(a1 + v47) == 3)
            {
              v25 = 1;
              return v25 & 1;
            }
          }
        }

        goto LABEL_7;
      }

      sub_181F49A88(v15, &qword_1EA838E00);
      (*(v54 + 8))(v12, v30);
    }

    sub_181F49A88(v9, &qword_1EA838AF0);
    v25 = 0;
    return v25 & 1;
  }

  if (!v19)
  {
    goto LABEL_6;
  }

LABEL_7:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s7Network10IPProtocolV9IPOptionsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  a3.i32[0] = *(a1 + 1);
  a4.i32[0] = *(a2 + 1);
  return (((0x60400u >> (8 * *a1)) & 6) == ((0x60400u >> (8 * *a2)) & 6)) & vminv_u16(vceq_s16((vmovl_u8(a3).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(a4).u64[0] & 0xFF00FF00FF00FFLL)));
}

uint64_t nw_protocol_options_proxy_endpoint_should_override_stack(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_options_proxy_endpoint_should_override_stack(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_options_proxy_endpoint_should_override_stack";
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
        v12 = "nw_protocol_options_proxy_endpoint_should_override_stack";
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
            v12 = "nw_protocol_options_proxy_endpoint_should_override_stack";
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
        v12 = "nw_protocol_options_proxy_endpoint_should_override_stack";
        v6 = "%{public}s called with null options, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_options_proxy_endpoint_should_override_stack";
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

char *nw_endpoint_copy_without_proxy_parent(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_copy_without_proxy_parent(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_copy_without_proxy_parent";
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
        v16 = "nw_endpoint_copy_without_proxy_parent";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null endpoint", buf, 0xCu);
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
          v16 = "nw_endpoint_copy_without_proxy_parent";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_copy_without_proxy_parent";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_copy_without_proxy_parent";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_masque_allocate_metadata(nw_protocol_definition *a1)
{
  result = malloc_type_calloc(1uLL, 0x10uLL, 0xA39729FDuLL);
  if (!result)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    v2 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v2);
    if (result)
    {
      __break(1u);
    }

    else
    {
      free(v2);
      return 0;
    }
  }

  return result;
}

uint64_t __nw_masque_options_get_version_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) = v2;
  }

  return 1;
}

void nw_protocol_set_input_handler(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2 != a2)
    {
      if (v2)
      {
        v3 = *(v2 + 40);
        if (v3 == &nw_protocol_ref_counted_handle || v3 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
        {
          v4 = *(v2 + 88);
          if (v4)
          {
            v5 = v4 - 1;
            *(v2 + 88) = v5;
            if (!v5)
            {
              v6 = a1;
              v7 = a2;
              v8 = *(v2 + 64);
              if (v8)
              {
                *(v2 + 64) = 0;
                v8[2](v8);
                _Block_release(v8);
              }

              if (*(v2 + 72))
              {
                v9 = *(v2 + 64);
                if (v9)
                {
                  _Block_release(v9);
                }
              }

              free(v2);
              a2 = v7;
              a1 = v6;
            }
          }
        }
      }

      *(a1 + 48) = a2;
      if (a2)
      {
        v10 = a2[5];
        if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (a2 = a2[8]) != 0)
        {
          v11 = a2[11];
          if (v11)
          {
            a2[11] = v11 + 1;
          }
        }
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v21 = "__nw_protocol_set_input_handler";
  v12 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v12, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v21 = "__nw_protocol_set_input_handler";
      v15 = "%{public}s called with null protocol";
      goto LABEL_35;
    }

    if (v18 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v21 = "__nw_protocol_set_input_handler";
      v15 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v17 = os_log_type_enabled(v13, type);
    if (backtrace_string)
    {
      if (v17)
      {
        *buf = 136446466;
        v21 = "__nw_protocol_set_input_handler";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_36;
    }

    if (v17)
    {
      *buf = 136446210;
      v21 = "__nw_protocol_set_input_handler";
      v15 = "%{public}s called with null protocol, no backtrace";
LABEL_35:
      _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    }
  }

LABEL_36:
  if (v12)
  {
    free(v12);
  }
}

void nw_protocol_set_output_handler(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2 != a2)
    {
      if (v2)
      {
        v3 = *(v2 + 40);
        if (v3 == &nw_protocol_ref_counted_handle || v3 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
        {
          v4 = *(v2 + 88);
          if (v4)
          {
            v5 = v4 - 1;
            *(v2 + 88) = v5;
            if (!v5)
            {
              v6 = a1;
              v7 = a2;
              v8 = *(v2 + 64);
              if (v8)
              {
                *(v2 + 64) = 0;
                v8[2](v8);
                _Block_release(v8);
              }

              if (*(v2 + 72))
              {
                v9 = *(v2 + 64);
                if (v9)
                {
                  _Block_release(v9);
                }
              }

              free(v2);
              a2 = v7;
              a1 = v6;
            }
          }
        }
      }

      *(a1 + 32) = a2;
      if (a2)
      {
        v10 = a2[5];
        if (v10 == &nw_protocol_ref_counted_handle || v10 == &nw_protocol_ref_counted_additional_handle && (a2 = a2[8]) != 0)
        {
          v11 = a2[11];
          if (v11)
          {
            a2[11] = v11 + 1;
          }
        }
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v21 = "__nw_protocol_set_output_handler";
  v12 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v12, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v21 = "__nw_protocol_set_output_handler";
      v15 = "%{public}s called with null protocol";
      goto LABEL_35;
    }

    if (v18 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v21 = "__nw_protocol_set_output_handler";
      v15 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v17 = os_log_type_enabled(v13, type);
    if (backtrace_string)
    {
      if (v17)
      {
        *buf = 136446466;
        v21 = "__nw_protocol_set_output_handler";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_36;
    }

    if (v17)
    {
      *buf = 136446210;
      v21 = "__nw_protocol_set_output_handler";
      v15 = "%{public}s called with null protocol, no backtrace";
LABEL_35:
      _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    }
  }

LABEL_36:
  if (v12)
  {
    free(v12);
  }
}

BOOL nw_protocols_are_equal(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      return *a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4];
    }

    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocols_are_equal";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v7, &type, &v15))
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
        v18 = "nw_protocols_are_equal";
        v10 = "%{public}s called with null identifier2";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (v15 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "nw_protocols_are_equal";
        v10 = "%{public}s called with null identifier2, backtrace limit exceeded";
        goto LABEL_45;
      }

      goto LABEL_46;
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
        v18 = "nw_protocols_are_equal";
        v10 = "%{public}s called with null identifier2, no backtrace";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (v14)
    {
      *buf = 136446466;
      v18 = "nw_protocols_are_equal";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null identifier2, dumping backtrace:%{public}s";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocols_are_equal";
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v7, &type, &v15))
  {
    goto LABEL_46;
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
        v18 = "nw_protocols_are_equal";
        v10 = "%{public}s called with null identifier1, backtrace limit exceeded";
        goto LABEL_45;
      }

      goto LABEL_46;
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
        v18 = "nw_protocols_are_equal";
        v10 = "%{public}s called with null identifier1, no backtrace";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (v12)
    {
      *buf = 136446466;
      v18 = "nw_protocols_are_equal";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null identifier1, dumping backtrace:%{public}s";
LABEL_35:
      _os_log_impl(&dword_181A37000, v8, v9, v13, buf, 0x16u);
    }

LABEL_36:
    free(backtrace_string);
    goto LABEL_46;
  }

  v8 = __nwlog_obj();
  v9 = type;
  if (os_log_type_enabled(v8, type))
  {
    *buf = 136446210;
    v18 = "nw_protocols_are_equal";
    v10 = "%{public}s called with null identifier1";
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

uint64_t sub_181CCC278(uint64_t a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 116);
  v7 = *(v1 + 117);
  if (*v1)
  {
    v8 = *(*v1 + 185);
    if (v8 != 5)
    {
LABEL_3:
      if (v2 == 5 || qword_182AEE058[v8] != qword_182AEE058[v2])
      {
        goto LABEL_18;
      }

      return 1;
    }

LABEL_17:
    if (v2 != 5)
    {
      goto LABEL_18;
    }

    return 1;
  }

  v9 = *(v1 + 200);
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[4];
  v11 = v9[2];
  if (v11 >= v9[3] + v10)
  {
    v11 = v9[3] + v10;
  }

  v32 = *(v1 + 200);
  v33 = v10;
  v34 = v11;
  v12 = v9;
  while (v10 != v11)
  {
LABEL_14:
    v13 = v10 + 1;
    v33 = v10 + 1;
    v14 = &v12[26 * v10];
    v15 = *(v14 + 9);
    v16 = *(v14 + 13);
    v17 = *(v14 + 7);
    v30[3] = *(v14 + 11);
    v30[4] = v16;
    v30[1] = v17;
    v30[2] = v15;
    v18 = *(v14 + 17);
    v19 = *(v14 + 21);
    v20 = *(v14 + 15);
    v30[7] = *(v14 + 19);
    v30[8] = v19;
    v30[5] = v20;
    v30[6] = v18;
    v21 = *(v14 + 25);
    v22 = *(v14 + 27);
    v23 = *(v14 + 23);
    *&v31[10] = *(v14 + 226);
    v30[10] = v21;
    *v31 = v22;
    v30[9] = v23;
    v30[0] = *(v14 + 5);
    v24 = *(&v30[0] + 1);
    if (*(&v30[0] + 1) && (v31[24] & 1) != 0)
    {

      sub_181AFE6F4(v30, &v29);

      sub_181AFE6A0(v30);
      v8 = *(v24 + 185);

      if (v8 != 5)
      {
        goto LABEL_3;
      }

      goto LABEL_17;
    }

    v11 = v34;
    v10 = v13;
  }

  a1 = sub_181AC81FC(a1);
  if (a1)
  {
    v12 = v32;
    v10 = v33;
    goto LABEL_14;
  }

  if (v2 == 5)
  {
    return 1;
  }

LABEL_18:
  if (v6 == 1 || (result = 0, v7 != 4) && v7 != 29)
  {
    if (v3 && (v26 = *(v3 + 185), v26 != 5))
    {
      if (v2 != 5 && qword_182AEE058[v26] == qword_182AEE058[v2])
      {
        return 1;
      }

LABEL_27:
      if (v5 && (v27 = *(v5 + 185), v27 != 5))
      {
        if (v2 != 5 && qword_182AEE058[v27] == qword_182AEE058[v2])
        {
          return 1;
        }
      }

      else if (v2 == 5)
      {
        return 1;
      }

      if (v4 && (v28 = *(v4 + 185), v28 != 5))
      {
        if (v2 != 5 && qword_182AEE058[v28] == qword_182AEE058[v2])
        {
          return 1;
        }
      }

      else if (v2 == 5)
      {
        return 1;
      }

      return 0;
    }

    else
    {
      if (v2 != 5)
      {
        goto LABEL_27;
      }

      return 1;
    }
  }

  return result;
}

void nw_connection_async_client(void *a1, dispatch_qos_class_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (nw_parameters_is_persona_set(v5[2]))
  {
    v7 = _nw_parameters_copy(v5[2]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __nw_connection_async_client_block_invoke;
    v8[3] = &unk_1E6A3D908;
    v9 = v5;
    v11 = a2;
    v10 = v6;
    nw_utilities_execute_block_as_persona_from_parameters(v7, v8);
  }

  else
  {
    __nw_connection_async_client(v5, a2, v6);
  }
}

uint64_t nw_path_uses_companion(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (_nw_path_uses_interface_subtype(v1, 5001))
    {
      v3 = 1;
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v20 = 0;
      v4 = _nw_path_copy_proxy_configs(v2);
      v5 = v4;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_path_uses_companion_block_invoke;
      aBlock[3] = &unk_1E6A39B60;
      aBlock[4] = buf;
      if (v4)
      {
        _nw_array_apply(v4, aBlock);
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __nw_path_uses_companion_block_invoke_2;
      v15[3] = &unk_1E6A39B88;
      v15[4] = buf;
      _nw_path_enumerate_network_agents(v2, v15);
      v3 = *(*&buf[8] + 24);

      _Block_object_dispose(buf, 8);
    }

    goto LABEL_7;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_path_uses_companion";
  v8 = _os_log_send_and_compose_impl();

  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v8, &v18, &v17))
  {
    if (v18 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v18;
      if (os_log_type_enabled(v9, v18))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_uses_companion";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v12 = v18;
      v13 = os_log_type_enabled(v9, v18);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          *&buf[4] = "nw_path_uses_companion";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_uses_companion";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = v18;
      if (os_log_type_enabled(v9, v18))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_uses_companion";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v8)
  {
    free(v8);
  }

  v3 = 0;
LABEL_7:

  return v3 & 1;
}

void sub_181CCC9C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 112), 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZL38nw_connection_add_activity_on_nw_queueP24NWConcrete_nw_connectionPU25objcproto14OS_nw_activity8NSObjectb_block_invoke(uint64_t a1, __int16 a2, void *a3)
{
  is_equal = nw_activity_is_equal(*(a1 + 32), a3);
  if (is_equal)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  return is_equal ^ 1u;
}

void *nw_context_8k_buffer_manager(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = nw_context_copy_globals_context(v1);

    v4 = *(*(v3 + 4) + 180);
    if (!v4)
    {
      v4 = nw_mem_buffer_manager_initialize(*(v3 + 1), aNwcontextbuffe_0, dword_1EA83C290, word_1EA83C294);
      *(*(v3 + 4) + 180) = v4;
    }

    goto LABEL_4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_context_8k_buffer_manager";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v7, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_context_8k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v17 = "nw_context_8k_buffer_manager";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_context_8k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_context_8k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
  v4 = 0;
LABEL_4:

  return v4;
}

uint64_t nw_protocol_default_get_output_local(nw_protocol *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_default_get_output_local";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v6, &type, &v12))
    {
      goto LABEL_24;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_get_output_local";
      v9 = "%{public}s called with null protocol";
    }

    else if (v12 == 1)
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
          v15 = "nw_protocol_default_get_output_local";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (!v11)
      {
LABEL_24:
        if (v6)
        {
          free(v6);
        }

        return 0;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_get_output_local";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_get_output_local";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_24;
  }

  output_handler = a1->output_handler;
  if (output_handler)
  {
    callbacks = output_handler->callbacks;
    if (callbacks)
    {
      get_output_local_endpoint = callbacks->get_output_local_endpoint;
      if (get_output_local_endpoint)
      {
        result = get_output_local_endpoint();
        if (result)
        {
          return result;
        }
      }
    }
  }

  if (!a1->default_input_handler)
  {
    return 0;
  }

  return nw_protocol_default_get_local(a1);
}

BOOL _nw_parameters_has_initial_data_payload(void *a1)
{
  v1 = a1;
  v2 = sub_1821F833C();

  return v2;
}

void *nw_endpoint_handler_copy_protocol_metadata(void *a1, void *a2, int a3, int a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      os_unfair_lock_lock(v7 + 28);
      if (*(v7 + 29) == 2)
      {
        v10 = nw_endpoint_flow_copy_protocol_metadata(v7, *(v7 + 33), v9, a3, a4);
      }

      else
      {
        v10 = 0;
      }

      os_unfair_lock_unlock(v7 + 28);
      goto LABEL_7;
    }

    v16 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_endpoint_handler_copy_protocol_metadata";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v13, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v28 = "nw_endpoint_handler_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null definition", buf, 0xCu);
        }

LABEL_39:

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v14 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v28 = "nw_endpoint_handler_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v22)
        {
          *buf = 136446210;
          v28 = "nw_endpoint_handler_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v22)
      {
        *buf = 136446466;
        v28 = "nw_endpoint_handler_copy_protocol_metadata";
        v29 = 2082;
        v30 = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_27;
    }
  }

  else
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_endpoint_handler_copy_protocol_metadata";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v13, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v28 = "nw_endpoint_handler_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v25 != 1)
      {
        v14 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v28 = "nw_endpoint_handler_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v14, v23, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v28 = "nw_endpoint_handler_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v20)
      {
        *buf = 136446466;
        v28 = "nw_endpoint_handler_copy_protocol_metadata";
        v29 = 2082;
        v30 = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_27:

      free(backtrace_string);
    }
  }

LABEL_40:
  if (v13)
  {
    free(v13);
  }

  v10 = 0;
LABEL_7:

  return v10;
}

void *nw_endpoint_flow_copy_protocol_metadata(void *a1, void *a2, void *a3, int a4, int a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  if (!v10)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v46 = "nw_endpoint_flow_copy_protocol_metadata";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v19, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v46 = "nw_endpoint_flow_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else if (v43 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v23 = type;
        v24 = os_log_type_enabled(v20, type);
        if (backtrace_string)
        {
          if (v24)
          {
            *buf = 136446466;
            v46 = "nw_endpoint_flow_copy_protocol_metadata";
            v47 = 2082;
            v48 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_47;
        }

        if (v24)
        {
          *buf = 136446210;
          v46 = "nw_endpoint_flow_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v46 = "nw_endpoint_flow_copy_protocol_metadata";
          _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_47:
    if (v19)
    {
      free(v19);
    }

    v16 = 0;
    goto LABEL_70;
  }

  if (a4)
  {
    nw_endpoint_flow_update_connected_metadata(v9, a5);
  }

  os_unfair_lock_lock(v10 + 220);
  v12 = 262;
  if (a5)
  {
    v12 = 264;
  }

  v13 = *&v10[v12]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v10 + 220);
  if (!v13)
  {
    goto LABEL_68;
  }

  count = _nw_array_get_count(v13);
  if (count - 1 < 0)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v15 = _nw_array_copy_object_at_index(v13, --count);
    v16 = v15;
    if (!v15)
    {
      break;
    }

    if (v11)
    {
      if (_nw_protocol_metadata_matches_definition(v15, v11))
      {
        goto LABEL_69;
      }

      goto LABEL_11;
    }

    logb = __nwlog_obj();
    *buf = 136446210;
    v46 = "nw_protocol_metadata_matches_definition";
    v42 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v42, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        log = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(log, type))
        {
          *buf = 136446210;
          v46 = "nw_protocol_metadata_matches_definition";
          _os_log_impl(&dword_181A37000, log, v36, "%{public}s called with null definition", buf, 0xCu);
        }
      }

      else
      {
        if (v43 == 1)
        {
          loga = __nw_create_backtrace_string();
          v37 = __nwlog_obj();
          v35 = type;
          v17 = os_log_type_enabled(v37, type);
          if (loga)
          {
            if (v17)
            {
              *buf = 136446466;
              v46 = "nw_protocol_metadata_matches_definition";
              v47 = 2082;
              v48 = loga;
              _os_log_impl(&dword_181A37000, v37, v35, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(loga);
          }

          else
          {
            if (v17)
            {
              *buf = 136446210;
              v46 = "nw_protocol_metadata_matches_definition";
              _os_log_impl(&dword_181A37000, v37, v35, "%{public}s called with null definition, no backtrace", buf, 0xCu);
            }
          }

          goto LABEL_29;
        }

        log = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(log, type))
        {
          *buf = 136446210;
          v46 = "nw_protocol_metadata_matches_definition";
          _os_log_impl(&dword_181A37000, log, v38, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_29:
    if (v42)
    {
      free(v42);
    }

LABEL_11:

    if (count <= 0)
    {
      goto LABEL_68;
    }
  }

  v26 = __nwlog_obj();
  *buf = 136446210;
  v46 = "nw_endpoint_flow_copy_protocol_metadata";
  v27 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v43 = 0;
  if (!__nwlog_fault(v27, &type, &v43))
  {
    goto LABEL_66;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v28 = __nwlog_obj();
    v29 = type;
    if (os_log_type_enabled(v28, type))
    {
      *buf = 136446210;
      v46 = "nw_endpoint_flow_copy_protocol_metadata";
      _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null match_metadata", buf, 0xCu);
    }

    goto LABEL_65;
  }

  if (v43 != 1)
  {
    v28 = __nwlog_obj();
    v33 = type;
    if (os_log_type_enabled(v28, type))
    {
      *buf = 136446210;
      v46 = "nw_endpoint_flow_copy_protocol_metadata";
      _os_log_impl(&dword_181A37000, v28, v33, "%{public}s called with null match_metadata, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_65;
  }

  v30 = __nw_create_backtrace_string();
  v28 = __nwlog_obj();
  v31 = type;
  v32 = os_log_type_enabled(v28, type);
  if (!v30)
  {
    if (v32)
    {
      *buf = 136446210;
      v46 = "nw_endpoint_flow_copy_protocol_metadata";
      _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null match_metadata, no backtrace", buf, 0xCu);
    }

LABEL_65:

    goto LABEL_66;
  }

  if (v32)
  {
    *buf = 136446466;
    v46 = "nw_endpoint_flow_copy_protocol_metadata";
    v47 = 2082;
    v48 = v30;
    _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null match_metadata, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v30);
LABEL_66:
  if (v27)
  {
    free(v27);
  }

LABEL_68:
  v16 = 0;
LABEL_69:

LABEL_70:
  return v16;
}

void *nw_connection_copy_protocol_metadata_locked(uint64_t a1, void *a2, int a3, int a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (a1)
  {
    v8 = nw_endpoint_handler_copy_protocol_metadata(*(a1 + 144), v7, a3, a4);
    goto LABEL_3;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_connection_copy_protocol_metadata_locked";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v11, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_connection_copy_protocol_metadata_locked";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v21 = "nw_connection_copy_protocol_metadata_locked";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v16)
      {
        *buf = 136446210;
        v21 = "nw_connection_copy_protocol_metadata_locked";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_connection_copy_protocol_metadata_locked";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_3:

  return v8;
}

void nw_endpoint_flow_update_connected_metadata(NWConcrete_nw_endpoint_handler *a1, int a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_get_mode";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v24, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v28 = type;
        v29 = os_log_type_enabled(v25, type);
        if (backtrace_string)
        {
          if (v29)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_handler_get_mode";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_38;
        }

        if (v29)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v25, v30, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_38:
    if (v24)
    {
      free(v24);
    }

    mode = 0;
    goto LABEL_41;
  }

  mode = v3->mode;

  if (mode != 2)
  {
LABEL_41:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (mode > 5)
      {
        v31 = "unknown-mode";
      }

      else
      {
        v31 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      *&buf[4] = "nw_endpoint_flow_update_connected_metadata";
      v35 = 2082;
      v36 = v31;
      v37 = 2082;
      v38 = "flow";
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

    goto LABEL_46;
  }

  v6 = v4;
  v7 = v6->parameters;

  v8 = nw_parameters_copy_context(v7);
  nw_context_assert_queue(v8);

  v9 = nw_endpoint_handler_copy_flow(v6);
  v10 = *(v9 + 51);
  if (v10)
  {
    v11 = v10[3];
    if (!v11)
    {
      goto LABEL_46;
    }

    v12 = *(v11 + 224);
    if (!v12)
    {
      goto LABEL_46;
    }

    v13 = v10[5];
    v14 = *(v9 + 51);
    if (v13 != &nw_protocol_ref_counted_handle)
    {
      if (v13 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v14) = 0;
        v15 = 1;
LABEL_16:
        *buf = v10;
        buf[8] = v14;
        v20 = v12();
        if ((v15 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(buf);
        }

        os_unfair_lock_lock(v9 + 220);
        v21 = 1048;
        if (a2)
        {
          v21 = 1056;
        }

        v22 = *(v9 + v21);
        *(v9 + v21) = v20;

        os_unfair_lock_unlock(v9 + 220);
        goto LABEL_46;
      }

      v14 = v10[8];
      if (!v14)
      {
        v15 = 1;
        goto LABEL_16;
      }
    }

    v19 = *(v14 + 88);
    v15 = 0;
    if (v19)
    {
      *(v14 + 88) = v19 + 1;
    }

    LOBYTE(v14) = -1;
    goto LABEL_16;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = v6;
    id_str = v17->id_str;

    *buf = 136446466;
    *&buf[4] = "nw_endpoint_flow_update_connected_metadata";
    v35 = 2082;
    v36 = id_str;
    _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s] could not find valid output protocol", buf, 0x16u);
  }

LABEL_46:
}

void sub_181CCE4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if ((v9 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  _Unwind_Resume(a1);
}

uint64_t nw_array_append(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return _nw_array_append(a1, a2);
    }
  }

  return a1;
}

unint64_t nw_connection_get_event_milliseconds(void *a1, int a2, int a3, _WORD *a4, uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = v9;
  if (!v9)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_connection_get_event_milliseconds";
    v20 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v20, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v31 = "nw_connection_get_event_milliseconds";
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v28 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v24 = type;
        v25 = os_log_type_enabled(v21, type);
        if (backtrace_string)
        {
          if (v25)
          {
            *buf = 136446466;
            v31 = "nw_connection_get_event_milliseconds";
            v32 = 2082;
            v33 = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_38;
        }

        if (v25)
        {
          *buf = 136446210;
          v31 = "nw_connection_get_event_milliseconds";
          _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v21 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446210;
          v31 = "nw_connection_get_event_milliseconds";
          _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_38:
    if (v20)
    {
      free(v20);
    }

    goto LABEL_40;
  }

  v11 = v9[161];
  if (v9[161])
  {
    v12 = 0;
    if (a4)
    {
      v13 = 0;
      v14 = 0xFFFFFFFFLL;
      while (1)
      {
        v16 = v10[39];
        if (*(v16 + v12 + 10) == a3 && *(v16 + v12 + 8) == a2 && (!*a4 || *(v16 + v12 + 12) == *a4))
        {
          v15 = (a5 - 1);
          if (v15 >= 0xFFFFFFFE)
          {
            *a4 = *(v16 + v12 + 12);
            v14 = nw_delta_nanos(v10[9], *(v16 + v12)) / 0xF4240uLL;
            if (a5 != -1)
            {
              goto LABEL_41;
            }

            v11 = *(v10 + 161);
            v15 = 0xFFFFFFFFLL;
          }
        }

        else
        {
          v15 = a5;
        }

        ++v13;
        v12 += 16;
        a5 = v15;
        if (v13 >= v11)
        {
          goto LABEL_41;
        }
      }
    }

    v14 = 0xFFFFFFFFLL;
    while (1)
    {
      v18 = a4 + v10[39];
      if (*(v18 + 5) == a3 && *(v18 + 4) == a2)
      {
        v17 = (a5 - 1);
        if (v17 >= 0xFFFFFFFE)
        {
          v14 = nw_delta_nanos(v10[9], *v18) / 0xF4240uLL;
          if (a5 != -1)
          {
            goto LABEL_41;
          }

          v11 = *(v10 + 161);
          v17 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v17 = a5;
      }

      ++v12;
      a4 += 8;
      a5 = v17;
      if (v12 >= v11)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_40:
  v14 = 0xFFFFFFFFLL;
LABEL_41:

  return v14;
}

uint64_t nw_endpoint_handler_get_resolved_endpoint_count(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_endpoint_handler_get_mode";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v8, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v27 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v12 = type;
        v13 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v27 = "nw_endpoint_handler_get_mode";
            v28 = 2082;
            v29 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (v13)
        {
          *buf = 136446210;
          v27 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v27 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_23:
    if (v8)
    {
      free(v8);
    }

LABEL_25:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    *buf = 136446210;
    v27 = "nw_endpoint_handler_get_resolved_endpoint_count";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v16, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v27 = "nw_endpoint_handler_get_resolved_endpoint_count";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s Endpoint handler is not a resolver", buf, 0xCu);
        }
      }

      else if (v24 == 1)
      {
        v19 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v20 = type;
        v21 = os_log_type_enabled(v17, type);
        if (v19)
        {
          if (v21)
          {
            *buf = 136446466;
            v27 = "nw_endpoint_handler_get_resolved_endpoint_count";
            v28 = 2082;
            v29 = v19;
            _os_log_impl(&dword_181A37000, v17, v20, "%{public}s Endpoint handler is not a resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          if (!v16)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

        if (v21)
        {
          *buf = 136446210;
          v27 = "nw_endpoint_handler_get_resolved_endpoint_count";
          _os_log_impl(&dword_181A37000, v17, v20, "%{public}s Endpoint handler is not a resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v22 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v27 = "nw_endpoint_handler_get_resolved_endpoint_count";
          _os_log_impl(&dword_181A37000, v17, v22, "%{public}s Endpoint handler is not a resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v16)
    {
LABEL_44:
      count = 0;
      goto LABEL_45;
    }

LABEL_43:
    free(v16);
    goto LABEL_44;
  }

  mode = v1->mode;

  if (mode != 1)
  {
    goto LABEL_25;
  }

  v4 = nw_endpoint_handler_copy_resolver(v2);
  v5 = *(v4 + 5);
  if (v5)
  {
    count = _nw_array_get_count(v5);
  }

  else
  {
    count = 0;
  }

LABEL_45:
  return count;
}

uint64_t nw_endpoint_handler_get_resolution_source(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_endpoint_handler_get_mode";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v8, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v16 = type;
        v17 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v35 = "nw_endpoint_handler_get_mode";
            v36 = 2082;
            v37 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_39;
        }

        if (v17)
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_39:
    if (v8)
    {
      free(v8);
    }

LABEL_41:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    *buf = 136446210;
    v35 = "nw_endpoint_handler_get_resolution_source";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v24, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_get_resolution_source";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Endpoint handler is not a resolver", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        v28 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v29 = type;
        v30 = os_log_type_enabled(v25, type);
        if (v28)
        {
          if (v30)
          {
            *buf = 136446466;
            v35 = "nw_endpoint_handler_get_resolution_source";
            v36 = 2082;
            v37 = v28;
            _os_log_impl(&dword_181A37000, v25, v29, "%{public}s Endpoint handler is not a resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v28);
          if (!v24)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        if (v30)
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_get_resolution_source";
          _os_log_impl(&dword_181A37000, v25, v29, "%{public}s Endpoint handler is not a resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v31 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_get_resolution_source";
          _os_log_impl(&dword_181A37000, v25, v31, "%{public}s Endpoint handler is not a resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v24)
    {
LABEL_48:
      v6 = 1;
      goto LABEL_49;
    }

LABEL_47:
    free(v24);
    goto LABEL_48;
  }

  mode = v1->mode;

  if (mode != 1)
  {
    goto LABEL_41;
  }

  v4 = nw_endpoint_handler_copy_resolver(v2);
  v5 = v4[1];
  if (!v5)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_resolver_get_resolution_source";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v12, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v35 = "nw_resolver_get_resolution_source";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null resolver", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        v19 = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v20 = type;
        v21 = os_log_type_enabled(v13, type);
        if (v19)
        {
          if (v21)
          {
            *buf = 136446466;
            v35 = "nw_resolver_get_resolution_source";
            v36 = 2082;
            v37 = v19;
            _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          goto LABEL_65;
        }

        if (v21)
        {
          *buf = 136446210;
          v35 = "nw_resolver_get_resolution_source";
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v35 = "nw_resolver_get_resolution_source";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_65:
    if (v12)
    {
      free(v12);
    }

    v6 = 1;
    v5 = 0;
    goto LABEL_9;
  }

  if ((*(v5 + 44) & 0x60) != 0)
  {
    v6 = 3;
  }

  else if ((v5[370] & 0xE) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

LABEL_9:

LABEL_49:
  return v6;
}

uint64_t nw_endpoint_handler_get_resolution_protocol(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_endpoint_handler_get_mode";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v8, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v16 = type;
        v17 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v35 = "nw_endpoint_handler_get_mode";
            v36 = 2082;
            v37 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_35;
        }

        if (v17)
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_35:
    if (v8)
    {
      free(v8);
    }

LABEL_37:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    *buf = 136446210;
    v35 = "nw_endpoint_handler_get_resolution_protocol";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v24, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_get_resolution_protocol";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Endpoint handler is not a resolver", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        v28 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v29 = type;
        v30 = os_log_type_enabled(v25, type);
        if (v28)
        {
          if (v30)
          {
            *buf = 136446466;
            v35 = "nw_endpoint_handler_get_resolution_protocol";
            v36 = 2082;
            v37 = v28;
            _os_log_impl(&dword_181A37000, v25, v29, "%{public}s Endpoint handler is not a resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v28);
          if (!v24)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

        if (v30)
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_get_resolution_protocol";
          _os_log_impl(&dword_181A37000, v25, v29, "%{public}s Endpoint handler is not a resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v31 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_get_resolution_protocol";
          _os_log_impl(&dword_181A37000, v25, v31, "%{public}s Endpoint handler is not a resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v24)
    {
LABEL_44:
      v6 = 0;
      goto LABEL_45;
    }

LABEL_43:
    free(v24);
    goto LABEL_44;
  }

  mode = v1->mode;

  if (mode != 1)
  {
    goto LABEL_37;
  }

  v4 = nw_endpoint_handler_copy_resolver(v2);
  v5 = v4[1];
  if (!v5)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_resolver_get_resolution_protocol";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v12, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v35 = "nw_resolver_get_resolution_protocol";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null resolver", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        v19 = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v20 = type;
        v21 = os_log_type_enabled(v13, type);
        if (v19)
        {
          if (v21)
          {
            *buf = 136446466;
            v35 = "nw_resolver_get_resolution_protocol";
            v36 = 2082;
            v37 = v19;
            _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          goto LABEL_61;
        }

        if (v21)
        {
          *buf = 136446210;
          v35 = "nw_resolver_get_resolution_protocol";
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v35 = "nw_resolver_get_resolution_protocol";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_61:
    if (v12)
    {
      free(v12);
    }

    v6 = 0;
    v5 = 0;
    goto LABEL_5;
  }

  v6 = v5[68];
LABEL_5:

LABEL_45:
  return v6;
}

id nw_endpoint_handler_copy_preferred_resolved_endpoint(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_endpoint_handler_get_mode";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v11, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v30 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v15 = type;
        v16 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v30 = "nw_endpoint_handler_get_mode";
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (v16)
        {
          *buf = 136446210;
          v30 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v30 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_26:
    if (v11)
    {
      free(v11);
    }

LABEL_28:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    *buf = 136446210;
    v30 = "nw_endpoint_handler_copy_preferred_resolved_endpoint";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v19, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v30 = "nw_endpoint_handler_copy_preferred_resolved_endpoint";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s Endpoint handler is not a resolver", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        v22 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v23 = type;
        v24 = os_log_type_enabled(v20, type);
        if (v22)
        {
          if (v24)
          {
            *buf = 136446466;
            v30 = "nw_endpoint_handler_copy_preferred_resolved_endpoint";
            v31 = 2082;
            v32 = v22;
            _os_log_impl(&dword_181A37000, v20, v23, "%{public}s Endpoint handler is not a resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v22);
          if (!v19)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

        if (v24)
        {
          *buf = 136446210;
          v30 = "nw_endpoint_handler_copy_preferred_resolved_endpoint";
          _os_log_impl(&dword_181A37000, v20, v23, "%{public}s Endpoint handler is not a resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v30 = "nw_endpoint_handler_copy_preferred_resolved_endpoint";
          _os_log_impl(&dword_181A37000, v20, v25, "%{public}s Endpoint handler is not a resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v19)
    {
LABEL_47:
      v9 = 0;
      goto LABEL_48;
    }

LABEL_46:
    free(v19);
    goto LABEL_47;
  }

  mode = v1->mode;

  if (mode != 1)
  {
    goto LABEL_28;
  }

  v4 = nw_endpoint_handler_copy_resolver(v2);
  v5 = *(v4 + 5);
  if (v5 && !_nw_array_is_empty(v5) && (v6 = *(v4 + 5)) != 0 && (_nw_array_get_object_at_index(v6, 0), v7 = objc_claimAutoreleasedReturnValue(), (v8 = v7) != 0))
  {
    v9 = nw_endpoint_handler_copy_endpoint(v7);
  }

  else
  {
    v9 = 0;
  }

LABEL_48:
  return v9;
}

id nw_endpoint_handler_copy_resolved_endpoints(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_endpoint_handler_get_mode";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v15, &type, &v31))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v34 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v19 = type;
        v20 = os_log_type_enabled(v16, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v34 = "nw_endpoint_handler_get_mode";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_35;
        }

        if (v20)
        {
          *buf = 136446210;
          v34 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v34 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_35:
    if (v15)
    {
      free(v15);
    }

LABEL_37:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    *buf = 136446210;
    v34 = "nw_endpoint_handler_copy_resolved_endpoints";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v23, &type, &v31))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v34 = "nw_endpoint_handler_copy_resolved_endpoints";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Endpoint handler is not a resolver", buf, 0xCu);
        }
      }

      else if (v31 == 1)
      {
        v26 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v27 = type;
        v28 = os_log_type_enabled(v24, type);
        if (v26)
        {
          if (v28)
          {
            *buf = 136446466;
            v34 = "nw_endpoint_handler_copy_resolved_endpoints";
            v35 = 2082;
            v36 = v26;
            _os_log_impl(&dword_181A37000, v24, v27, "%{public}s Endpoint handler is not a resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v26);
          if (!v23)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

        if (v28)
        {
          *buf = 136446210;
          v34 = "nw_endpoint_handler_copy_resolved_endpoints";
          _os_log_impl(&dword_181A37000, v24, v27, "%{public}s Endpoint handler is not a resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v29 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v34 = "nw_endpoint_handler_copy_resolved_endpoints";
          _os_log_impl(&dword_181A37000, v24, v29, "%{public}s Endpoint handler is not a resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v23)
    {
LABEL_56:
      v6 = 0;
      goto LABEL_57;
    }

LABEL_55:
    free(v23);
    goto LABEL_56;
  }

  mode = v1->mode;

  if (mode != 1)
  {
    goto LABEL_37;
  }

  v4 = nw_endpoint_handler_copy_resolver(v2);
  v5 = *(v4 + 5);
  if (v5 && _nw_array_get_count(v5))
  {
    v6 = _nw_array_create();
    for (i = 0; ; ++i)
    {
      count = *(v4 + 5);
      if (count)
      {
        count = _nw_array_get_count(count);
      }

      if (i >= count)
      {
        break;
      }

      v10 = *(v4 + 5);
      if (v10)
      {
        v11 = _nw_array_copy_object_at_index(v10, i);
        v8 = v11;
        if (v11)
        {
          v12 = nw_endpoint_handler_copy_endpoint(v11);
          v13 = v12;
          if (v6)
          {
            if (v12)
            {
              _nw_array_append(v6, v12);
            }
          }
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_57:
  return v6;
}

void nw_endpoint_handler_get_svcb_report(void *a1, BOOL *a2, BOOL *a3, BOOL *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_endpoint_handler_get_mode";
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
          *buf = 136446210;
          v30 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v16 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v30 = "nw_endpoint_handler_get_mode";
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (v17)
        {
          *buf = 136446210;
          v30 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v30 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_20:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_22;
  }

  mode = v7->mode;

  if (mode == 1)
  {
    v10 = nw_endpoint_handler_copy_resolver(v8);
    nw_resolver_get_svcb_report(v10[1], a2, a3, a4);

    goto LABEL_29;
  }

LABEL_22:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  *buf = 136446210;
  v30 = "nw_endpoint_handler_get_svcb_report";
  v20 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (!__nwlog_fault(v20, &type, &v27))
  {
    goto LABEL_27;
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
      v30 = "nw_endpoint_handler_get_svcb_report";
      _os_log_impl(&dword_181A37000, v21, v22, "%{public}s Endpoint handler is not a resolver", buf, 0xCu);
    }

LABEL_26:

LABEL_27:
    if (!v20)
    {
      goto LABEL_29;
    }

LABEL_28:
    free(v20);
    goto LABEL_29;
  }

  if (v27 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    v26 = type;
    if (os_log_type_enabled(v21, type))
    {
      *buf = 136446210;
      v30 = "nw_endpoint_handler_get_svcb_report";
      _os_log_impl(&dword_181A37000, v21, v26, "%{public}s Endpoint handler is not a resolver, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_26;
  }

  v23 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  v24 = type;
  v25 = os_log_type_enabled(v21, type);
  if (!v23)
  {
    if (v25)
    {
      *buf = 136446210;
      v30 = "nw_endpoint_handler_get_svcb_report";
      _os_log_impl(&dword_181A37000, v21, v24, "%{public}s Endpoint handler is not a resolver, no backtrace", buf, 0xCu);
    }

    goto LABEL_26;
  }

  if (v25)
  {
    *buf = 136446466;
    v30 = "nw_endpoint_handler_get_svcb_report";
    v31 = 2082;
    v32 = v23;
    _os_log_impl(&dword_181A37000, v21, v24, "%{public}s Endpoint handler is not a resolver, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v23);
  if (v20)
  {
    goto LABEL_28;
  }

LABEL_29:
}

void nw_resolver_get_svcb_report(void *a1, BOOL *a2, BOOL *a3, BOOL *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a1;
  if (v7)
  {
    if (a2)
    {
      *a2 = (v7[371] & 2) != 0;
    }

    if (a3)
    {
      *a3 = (v7[371] & 4) != 0;
    }

    if (a4)
    {
      *a4 = (v7[371] & 8) != 0;
    }

    goto LABEL_8;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_resolver_get_svcb_report";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v9, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_resolver_get_svcb_report";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null resolver", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v19 = "nw_resolver_get_svcb_report";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_resolver_get_svcb_report";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_resolver_get_svcb_report";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v9)
  {
    free(v9);
  }

  v7 = 0;
LABEL_8:
}

void nw_endpoint_handler_get_extended_dns_error(void *a1, _WORD *a2, char **a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_endpoint_handler_get_mode";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v14, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v42 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v22 = type;
        v23 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            v42 = "nw_endpoint_handler_get_mode";
            v43 = 2082;
            v44 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_42;
        }

        if (v23)
        {
          *buf = 136446210;
          v42 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v15 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v42 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v15, v24, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_42:
    if (v14)
    {
      free(v14);
    }

LABEL_44:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v31 = gLogObj;
    *buf = 136446210;
    v42 = "nw_endpoint_handler_get_extended_dns_error";
    v32 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v32, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        v34 = type;
        if (os_log_type_enabled(v33, type))
        {
          *buf = 136446210;
          v42 = "nw_endpoint_handler_get_extended_dns_error";
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s Endpoint handler is not a resolver", buf, 0xCu);
        }
      }

      else if (v39 == 1)
      {
        v35 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        v36 = type;
        v37 = os_log_type_enabled(v33, type);
        if (v35)
        {
          if (v37)
          {
            *buf = 136446466;
            v42 = "nw_endpoint_handler_get_extended_dns_error";
            v43 = 2082;
            v44 = v35;
            _os_log_impl(&dword_181A37000, v33, v36, "%{public}s Endpoint handler is not a resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v35);
          if (!v32)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        if (v37)
        {
          *buf = 136446210;
          v42 = "nw_endpoint_handler_get_extended_dns_error";
          _os_log_impl(&dword_181A37000, v33, v36, "%{public}s Endpoint handler is not a resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        v38 = type;
        if (os_log_type_enabled(v33, type))
        {
          *buf = 136446210;
          v42 = "nw_endpoint_handler_get_extended_dns_error";
          _os_log_impl(&dword_181A37000, v33, v38, "%{public}s Endpoint handler is not a resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v32)
    {
      goto LABEL_51;
    }

LABEL_50:
    free(v32);
    goto LABEL_51;
  }

  mode = v5->mode;

  if (mode != 1)
  {
    goto LABEL_44;
  }

  v8 = nw_endpoint_handler_copy_resolver(v6);
  v9 = v8[1];
  v10 = v9;
  if (!v9)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_resolver_get_extended_dns_error";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v18, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v42 = "nw_resolver_get_extended_dns_error";
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null resolver", buf, 0xCu);
        }
      }

      else if (v39 == 1)
      {
        v25 = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v19, type);
        if (v25)
        {
          if (v27)
          {
            *buf = 136446466;
            v42 = "nw_resolver_get_extended_dns_error";
            v43 = 2082;
            v44 = v25;
            _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v25);
          goto LABEL_67;
        }

        if (v27)
        {
          *buf = 136446210;
          v42 = "nw_resolver_get_extended_dns_error";
          _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v19 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v42 = "nw_resolver_get_extended_dns_error";
          _os_log_impl(&dword_181A37000, v19, v30, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_67:
    if (v18)
    {
      free(v18);
    }

    goto LABEL_10;
  }

  if (a2)
  {
    *a2 = *(v9 + 184);
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  v11 = v9[31];
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = strdup(v11);
  if (v12)
  {
LABEL_9:
    *a3 = v12;
LABEL_10:

LABEL_51:
    return;
  }

  v28 = __nwlog_obj();
  os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v42 = "strict_strdup";
  v29 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v29))
  {
    free(v29);
    v12 = 0;
    goto LABEL_9;
  }

  __break(1u);
}
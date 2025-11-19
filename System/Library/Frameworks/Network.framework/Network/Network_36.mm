uint64_t nw_parameters_get_privacy_proxy_fail_closed(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_privacy_proxy_fail_closed(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_privacy_proxy_fail_closed";
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
        v12 = "nw_parameters_get_privacy_proxy_fail_closed";
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
            v12 = "nw_parameters_get_privacy_proxy_fail_closed";
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
        v12 = "nw_parameters_get_privacy_proxy_fail_closed";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_privacy_proxy_fail_closed";
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

BOOL nw_proxy_config_has_fallback_proxy_agent(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = uuid_is_null(v1 + 72) == 0;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_proxy_config_has_fallback_proxy_agent";
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
        v16 = "nw_proxy_config_has_fallback_proxy_agent";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
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
          v16 = "nw_proxy_config_has_fallback_proxy_agent";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_has_fallback_proxy_agent";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_has_fallback_proxy_agent";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void nw_proxy_config_copy_fallback_proxy_agent(void *a1, _OWORD *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      *a2 = *(v3 + 72);
      goto LABEL_4;
    }

    v4 = v3;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_proxy_config_copy_fallback_proxy_agent";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v6, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_copy_fallback_proxy_agent";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null out_fallback_proxy_agent_uuid", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_copy_fallback_proxy_agent";
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null out_fallback_proxy_agent_uuid, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_copy_fallback_proxy_agent";
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null out_fallback_proxy_agent_uuid, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "nw_proxy_config_copy_fallback_proxy_agent";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null out_fallback_proxy_agent_uuid, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_proxy_config_copy_fallback_proxy_agent";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v6, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_copy_fallback_proxy_agent";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_copy_fallback_proxy_agent";
          _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v13)
        {
          *buf = 136446210;
          v21 = "nw_proxy_config_copy_fallback_proxy_agent";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v13)
      {
        *buf = 136446466;
        v21 = "nw_proxy_config_copy_fallback_proxy_agent";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v6)
  {
    free(v6);
  }

  v3 = v4;
LABEL_4:
}

BOOL ___ZL31nw_endpoint_proxy_check_for_pacP30NWConcrete_nw_endpoint_handlerPU22objcproto11OS_nw_array8NSObject_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = nw_proxy_config_get_mode(a3) & 0xFFFFFFFE;
  if (v4 == 2)
  {
    *(*(a1 + 32) + 97) |= 4u;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v4 != 2;
}

uint64_t ___ZL32nw_endpoint_proxy_process_configP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (nw_proxy_config_is_privacy_proxy(v4, 0))
  {
    if (!nw_proxy_config_use_over_privacy_proxy(v4))
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        if (v4)
        {
          _nw_array_append(v5, v4);
        }
      }
    }
  }

  return 1;
}

uint64_t ___ZL32nw_endpoint_proxy_process_configP30NWConcrete_nw_endpoint_handler_block_invoke_2(void **a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (nw_proxy_config_is_privacy_proxy(v4, 0))
  {
    nw_endpoint_proxy_add_config_if_applicable(a1[4], a1[5], v4, a1[6], a1[7], 0);
  }

  return 1;
}

uint64_t nw_proxy_config_get_type(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[38];
    if (v2 <= 1)
    {
      if (v2 == 1)
      {
        v3 = v1[39];
        goto LABEL_12;
      }
    }

    else
    {
      switch(v2)
      {
        case 2:
          v3 = 1002;
          goto LABEL_12;
        case 4:
          v3 = 1;
          goto LABEL_12;
        case 3:
          v3 = 1001;
          goto LABEL_12;
      }
    }

    v3 = 0;
    goto LABEL_12;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_proxy_config_get_type";
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
        v16 = "nw_proxy_config_get_type";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
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
          v16 = "nw_proxy_config_get_type";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_get_type";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_get_type";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_29:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
  v1 = 0;
LABEL_12:

  return v3;
}

uint64_t nw_proxy_config_prohibits_direct(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[170] >> 3) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_prohibits_direct";
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
        v15 = "nw_proxy_config_prohibits_direct";
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
          v15 = "nw_proxy_config_prohibits_direct";
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
        v15 = "nw_proxy_config_prohibits_direct";
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
        v15 = "nw_proxy_config_prohibits_direct";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

uint64_t ___ZL32nw_endpoint_proxy_process_configP30NWConcrete_nw_endpoint_handler_block_invoke_4(void **a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((nw_proxy_config_is_privacy_proxy(v4, 0) & 1) == 0)
  {
    nw_endpoint_proxy_add_config_if_applicable(a1[4], a1[5], v4, a1[6], a1[7], 1);
  }

  return 1;
}

uint64_t ___ZL32nw_endpoint_proxy_resolve_configP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v150 = *MEMORY[0x1E69E9840];
  v4 = a3;
  mode = nw_proxy_config_get_mode(v4);
  if ((mode & 0xFFFFFFFE) == 2)
  {
    v6 = mode;
    v130 = nw_endpoint_handler_copy_context(*(a1 + 32));
    if (v6 == 2)
    {
      v7 = nw_proxy_config_copy_endpoint(v4);
      v8 = v7;
      if (v7)
      {
        v9 = v7;
        v10 = _nw_endpoint_copy_cfurl(v9);

        if (v10)
        {
          v127 = v9;
          v11 = *(a1 + 32);
          if (*(*(a1 + 40) + 64))
          {
            v12 = nw_endpoint_handler_copy_parameters(v11);
            memset(bytes, 0, sizeof(bytes));
            effective_audit_token = nw_parameters_get_effective_audit_token(v12, bytes);
            v14 = MEMORY[0x1E695E480];
            if (effective_audit_token)
            {
              v15 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 32);
            }

            else
            {
              v15 = 0;
            }

            effective_bundle_id = nw_parameters_get_effective_bundle_id(v12);
            if (effective_bundle_id)
            {
              v72 = CFStringCreateWithCString(*v14, effective_bundle_id, 0x8000100u);
            }

            else
            {
              v72 = 0;
            }

            loga = *(*(a1 + 40) + 64);
            is_opaque = nw_parameters_get_https_proxy_is_opaque(v12);
            https_proxy_over_tls = nw_parameters_get_https_proxy_over_tls(v12);
            should_trust_invalid_certificates = nw_parameters_get_should_trust_invalid_certificates(v12);
            is_dry_run = nw_endpoint_handler_is_dry_run(*(a1 + 32));
            id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
            v137[0] = MEMORY[0x1E69E9820];
            v137[1] = 3221225472;
            v137[2] = ___ZL32nw_endpoint_proxy_resolve_configP30NWConcrete_nw_endpoint_handler_block_invoke_154;
            v137[3] = &unk_1E6A2F280;
            v138 = *(a1 + 32);
            v139 = *(a1 + 40);
            v140 = v4;
            v79 = nw_pac_resolver_create_with_url(v10, loga, v15, v72, v130, is_opaque, https_proxy_over_tls, should_trust_invalid_certificates, is_dry_run, id_string, v137);
            if (v15)
            {
              CFRelease(v15);
            }

            if (v72)
            {
              CFRelease(v72);
            }

            v54 = v127;
LABEL_85:
            CFRelease(v10);
            goto LABEL_90;
          }

          minimize_logging = nw_endpoint_handler_get_minimize_logging(v11);
          logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 32));
          if (minimize_logging)
          {
            if (logging_disabled)
            {
              goto LABEL_38;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v45 = gconnectionLogObj;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              v125 = nw_endpoint_handler_get_id_string(*(a1 + 32));
              logb = nw_endpoint_handler_dry_run_string(*(a1 + 32));
              v105 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
              logging_description = nw_endpoint_get_logging_description(v105);
              v107 = nw_endpoint_handler_state_string(*(a1 + 32));
              v108 = nw_endpoint_handler_mode_string(*(a1 + 32));
              v109 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
              bytes[0].i32[0] = 136447746;
              *(bytes[0].i64 + 4) = "nw_endpoint_proxy_resolve_config_block_invoke_3";
              bytes[0].i16[6] = 2082;
              *(&bytes[0].i64[1] + 6) = v125;
              bytes[1].i16[3] = 2082;
              bytes[1].i64[1] = logb;
              v142 = 2082;
              v143 = logging_description;
              v144 = 2082;
              v145 = v107;
              v146 = 2082;
              v147 = v108;
              v148 = 2114;
              v149 = v109;
              _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No URL, treating proxy as resolved", bytes, 0x48u);
            }
          }

          else
          {
            if (logging_disabled)
            {
LABEL_38:
              v53 = *(*(*(a1 + 48) + 8) + 40);
              v54 = v127;
              if (!v53)
              {
                v55 = *(*(a1 + 40) + 56);
                if (v55)
                {
                  v56 = _nw_array_copy(v55);
                }

                else
                {
                  v56 = _nw_array_create();
                }

                v87 = *(*(a1 + 48) + 8);
                v88 = *(v87 + 40);
                *(v87 + 40) = v56;

                v53 = *(*(*(a1 + 48) + 8) + 40);
                v54 = v127;
              }

              nw_array_remove_object(v53, v4);
              v79 = 0;
              *(*(a1 + 40) + 97) |= 1u;
              goto LABEL_85;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v45 = gconnectionLogObj;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              log = v45;
              v123 = v10;
              v46 = nw_endpoint_handler_get_id_string(*(a1 + 32));
              v47 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
              v48 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
              v49 = nw_endpoint_get_logging_description(v48);
              v50 = nw_endpoint_handler_state_string(*(a1 + 32));
              v51 = nw_endpoint_handler_mode_string(*(a1 + 32));
              v52 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
              bytes[0].i32[0] = 136447746;
              *(bytes[0].i64 + 4) = "nw_endpoint_proxy_resolve_config_block_invoke";
              bytes[0].i16[6] = 2082;
              *(&bytes[0].i64[1] + 6) = v46;
              bytes[1].i16[3] = 2082;
              bytes[1].i64[1] = v47;
              v142 = 2082;
              v143 = v49;
              v144 = 2082;
              v145 = v50;
              v146 = 2082;
              v147 = v51;
              v148 = 2114;
              v149 = v52;
              v45 = log;
              _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No URL, treating proxy as resolved", bytes, 0x48u);

              v10 = v123;
            }
          }

          goto LABEL_38;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v27 = gLogObj;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          bytes[0].i32[0] = 136446466;
          *(bytes[0].i64 + 4) = "nw_endpoint_proxy_resolve_config_block_invoke";
          bytes[0].i16[6] = 2112;
          *(&bytes[0].i64[1] + 6) = v9;
          _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s nw_endpoint_copy_cfurl(%@) failed", bytes, 0x16u);
        }

LABEL_68:

        goto LABEL_103;
      }

      if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v27 = gconnectionLogObj;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v29 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v30 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v31 = v30;
          if (v30)
          {
            v32 = _nw_endpoint_get_logging_description(v30);
          }

          else
          {
            v32 = "<NULL>";
          }

          v80 = nw_endpoint_handler_state_string(*(a1 + 32));
          v81 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v82 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          bytes[0].i32[0] = 136447746;
          *(bytes[0].i64 + 4) = "nw_endpoint_proxy_resolve_config_block_invoke";
          bytes[0].i16[6] = 2082;
          *(&bytes[0].i64[1] + 6) = v28;
          bytes[1].i16[3] = 2082;
          bytes[1].i64[1] = v29;
          v142 = 2082;
          v143 = v32;
          v144 = 2082;
          v145 = v80;
          v146 = 2082;
          v147 = v81;
          v148 = 2114;
          v149 = v82;
          _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] PAC URL missing", bytes, 0x48u);
        }

        goto LABEL_68;
      }

LABEL_72:
      v8 = 0;
      goto LABEL_103;
    }

    v16 = nw_proxy_config_copy_pac_script(v4);
    if (!v16)
    {
      if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v33 = gconnectionLogObj;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v35 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v36 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v37 = v36;
          if (v36)
          {
            v38 = _nw_endpoint_get_logging_description(v36);
          }

          else
          {
            v38 = "<NULL>";
          }

          v83 = nw_endpoint_handler_state_string(*(a1 + 32));
          v84 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v85 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          bytes[0].i32[0] = 136447746;
          *(bytes[0].i64 + 4) = "nw_endpoint_proxy_resolve_config_block_invoke";
          bytes[0].i16[6] = 2082;
          *(&bytes[0].i64[1] + 6) = v34;
          bytes[1].i16[3] = 2082;
          bytes[1].i64[1] = v35;
          v142 = 2082;
          v143 = v38;
          v144 = 2082;
          v145 = v83;
          v146 = 2082;
          v147 = v84;
          v148 = 2114;
          v149 = v85;
          _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] PAC script missing", bytes, 0x48u);
        }
      }

      goto LABEL_72;
    }

    v17 = _CFXPCCreateCFObjectFromXPCObject();
    if (v17)
    {
      v18 = *(a1 + 32);
      v128 = v16;
      if (*(*(a1 + 40) + 64))
      {
        v19 = v17;
        v20 = nw_endpoint_handler_copy_parameters(v18);
        v122 = *(*(a1 + 40) + 64);
        v21 = nw_parameters_get_https_proxy_is_opaque(v20);
        v22 = nw_parameters_get_https_proxy_over_tls(v20);
        v23 = nw_parameters_get_should_trust_invalid_certificates(v20);
        v24 = nw_endpoint_handler_is_dry_run(*(a1 + 32));
        v25 = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v131[0] = MEMORY[0x1E69E9820];
        v131[1] = 3221225472;
        v131[2] = ___ZL32nw_endpoint_proxy_resolve_configP30NWConcrete_nw_endpoint_handler_block_invoke_158;
        v131[3] = &unk_1E6A2F280;
        v132 = *(a1 + 32);
        v133 = *(a1 + 40);
        v134 = v4;
        v26 = nw_pac_resolver_create_with_script(v19, v122, v130, v21, v22, v23, v24, v25, v131);

        v17 = v19;
        v16 = v128;
LABEL_89:
        CFRelease(v17);
        v54 = v16;
        v79 = v26;
LABEL_90:

        v91 = v79;
        if (v79)
        {
          v92 = *(*(a1 + 40) + 72);
          if (v92 || (v93 = _nw_array_create(), v94 = *(a1 + 40), v95 = *(v94 + 72), *(v94 + 72) = v93, v95, v92 = *(*(a1 + 40) + 72), v91 = v79, v92))
          {
            _nw_array_append(v92, v91);
          }

          nw_pac_resolver_start(v91);
          v8 = v130;
          v130 = v91;
        }

        else
        {
          if (nw_endpoint_handler_get_logging_disabled(*(a1 + 32)))
          {
LABEL_104:

            goto LABEL_105;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v8 = gconnectionLogObj;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v129 = v8;
            v96 = nw_endpoint_handler_get_id_string(*(a1 + 32));
            v97 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
            v98 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
            v99 = v98;
            if (v98)
            {
              v100 = _nw_endpoint_get_logging_description(v98);
            }

            else
            {
              v100 = "<NULL>";
            }

            v101 = nw_endpoint_handler_state_string(*(a1 + 32));
            v102 = nw_endpoint_handler_mode_string(*(a1 + 32));
            v103 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
            bytes[0].i32[0] = 136447746;
            *(bytes[0].i64 + 4) = "nw_endpoint_proxy_resolve_config_block_invoke";
            bytes[0].i16[6] = 2082;
            *(&bytes[0].i64[1] + 6) = v96;
            bytes[1].i16[3] = 2082;
            bytes[1].i64[1] = v97;
            v142 = 2082;
            v143 = v100;
            v144 = 2082;
            v145 = v101;
            v146 = 2082;
            v147 = v102;
            v148 = 2114;
            v149 = v103;
            _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] nw_pac_resolver_create returned nil", bytes, 0x48u);

            v8 = v129;
          }
        }

LABEL_103:

        goto LABEL_104;
      }

      v57 = nw_endpoint_handler_get_minimize_logging(v18);
      v58 = nw_endpoint_handler_get_logging_disabled(*(a1 + 32));
      if (v57)
      {
        if (v58)
        {
          goto LABEL_48;
        }

        v110 = v17;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v59 = gconnectionLogObj;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          v126 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v111 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v112 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v113 = nw_endpoint_get_logging_description(v112);
          v114 = nw_endpoint_handler_state_string(*(a1 + 32));
          v115 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v116 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          bytes[0].i32[0] = 136447746;
          *(bytes[0].i64 + 4) = "nw_endpoint_proxy_resolve_config_block_invoke_3";
          bytes[0].i16[6] = 2082;
          *(&bytes[0].i64[1] + 6) = v126;
          bytes[1].i16[3] = 2082;
          bytes[1].i64[1] = v111;
          v142 = 2082;
          v143 = v113;
          v144 = 2082;
          v145 = v114;
          v146 = 2082;
          v147 = v115;
          v148 = 2114;
          v149 = v116;
          _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No URL, treating proxy as resolved", bytes, 0x48u);

          v17 = v110;
        }
      }

      else
      {
        if (v58)
        {
LABEL_48:
          v68 = *(*(*(a1 + 48) + 8) + 40);
          if (!v68)
          {
            v69 = *(*(a1 + 40) + 56);
            if (v69)
            {
              v70 = _nw_array_copy(v69);
            }

            else
            {
              v70 = _nw_array_create();
            }

            v89 = *(*(a1 + 48) + 8);
            v90 = *(v89 + 40);
            *(v89 + 40) = v70;

            v68 = *(*(*(a1 + 48) + 8) + 40);
          }

          nw_array_remove_object(v68, v4);
          v26 = 0;
          *(*(a1 + 40) + 97) |= 1u;
          goto LABEL_89;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v59 = gconnectionLogObj;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v60 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v61 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v124 = v59;
          v62 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v63 = v17;
          v64 = nw_endpoint_get_logging_description(v62);
          v65 = nw_endpoint_handler_state_string(*(a1 + 32));
          v66 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v67 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          bytes[0].i32[0] = 136447746;
          *(bytes[0].i64 + 4) = "nw_endpoint_proxy_resolve_config_block_invoke";
          bytes[0].i16[6] = 2082;
          *(&bytes[0].i64[1] + 6) = v60;
          bytes[1].i16[3] = 2082;
          bytes[1].i64[1] = v61;
          v142 = 2082;
          v143 = v64;
          v144 = 2082;
          v145 = v65;
          v146 = 2082;
          v147 = v66;
          v148 = 2114;
          v149 = v67;
          v59 = v124;
          _os_log_impl(&dword_181A37000, v124, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No URL, treating proxy as resolved", bytes, 0x48u);

          v17 = v63;
        }
      }

      v16 = v128;
      goto LABEL_48;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v39 = gLogObj;
    bytes[0].i32[0] = 136446210;
    *(bytes[0].i64 + 4) = "nw_endpoint_proxy_resolve_config_block_invoke";
    v40 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v135 = 0;
    if (__nwlog_fault(v40, &type, &v135))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v41 = gLogObj;
        v42 = type;
        if (os_log_type_enabled(v41, type))
        {
          bytes[0].i32[0] = 136446210;
          *(bytes[0].i64 + 4) = "nw_endpoint_proxy_resolve_config_block_invoke";
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s _CFXPCCreateCFObjectFromXPCObject failed", bytes, 0xCu);
        }
      }

      else if (v135 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v74 = type;
        v75 = os_log_type_enabled(v41, type);
        if (backtrace_string)
        {
          if (v75)
          {
            bytes[0].i32[0] = 136446466;
            *(bytes[0].i64 + 4) = "nw_endpoint_proxy_resolve_config_block_invoke";
            bytes[0].i16[6] = 2082;
            *(&bytes[0].i64[1] + 6) = backtrace_string;
            _os_log_impl(&dword_181A37000, v41, v74, "%{public}s _CFXPCCreateCFObjectFromXPCObject failed, dumping backtrace:%{public}s", bytes, 0x16u);
          }

          free(backtrace_string);
          if (!v40)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        }

        if (v75)
        {
          bytes[0].i32[0] = 136446210;
          *(bytes[0].i64 + 4) = "nw_endpoint_proxy_resolve_config_block_invoke";
          _os_log_impl(&dword_181A37000, v41, v74, "%{public}s _CFXPCCreateCFObjectFromXPCObject failed, no backtrace", bytes, 0xCu);
        }
      }

      else
      {
        v41 = __nwlog_obj();
        v86 = type;
        if (os_log_type_enabled(v41, type))
        {
          bytes[0].i32[0] = 136446210;
          *(bytes[0].i64 + 4) = "nw_endpoint_proxy_resolve_config_block_invoke";
          _os_log_impl(&dword_181A37000, v41, v86, "%{public}s _CFXPCCreateCFObjectFromXPCObject failed, backtrace limit exceeded", bytes, 0xCu);
        }
      }
    }

    if (!v40)
    {
LABEL_81:
      v8 = v16;
      goto LABEL_103;
    }

LABEL_80:
    free(v40);
    goto LABEL_81;
  }

LABEL_105:

  return 1;
}

void nw_parameters_set_effective_proxy_config(char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_effective_proxy_config(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_effective_proxy_config";
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
        v12 = "nw_parameters_set_effective_proxy_config";
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
            v12 = "nw_parameters_set_effective_proxy_config";
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
        v12 = "nw_parameters_set_effective_proxy_config";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_effective_proxy_config";
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
}

uint64_t sub_181CB249C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 360);
    if (!v3)
    {
      v5 = a2;
      type metadata accessor for Parameters.ProxyValues.ProxyValuesBacking();
      v3 = swift_allocObject();
      a2 = v5;
      *(v3 + 16) = 0u;
      *(v3 + 32) = 0u;
      *(a1 + 360) = v3;
    }

    *(v3 + 32) = a2;
    swift_unknownObjectRetain();
  }

  else
  {
    v4 = *(a1 + 360);
    if (!v4)
    {
      type metadata accessor for Parameters.ProxyValues.ProxyValuesBacking();
      v4 = swift_allocObject();
      *(v4 + 16) = 0u;
      *(v4 + 32) = 0u;
      *(a1 + 360) = v4;
    }

    *(v4 + 32) = 0;
  }

  return swift_unknownObjectRelease();
}

uint64_t _nw_parameters_set_effective_proxy_configTm(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  sub_182205BD0(a1, a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t nw_proxy_config_supports_listeners(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_proxy_config_supports_listeners";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v6, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_proxy_config_supports_listeners";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
        }
      }

      else if (v15 == 1)
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
            *&buf[4] = "nw_proxy_config_supports_listeners";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (v11)
        {
          *buf = 136446210;
          *&buf[4] = "nw_proxy_config_supports_listeners";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v7 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_proxy_config_supports_listeners";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_20:
    if (v6)
    {
      free(v6);
    }

    goto LABEL_22;
  }

  v3 = v1[1];
  if (!v3)
  {
LABEL_22:
    v4 = 0;
    goto LABEL_23;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __nw_proxy_config_supports_listeners_block_invoke;
  v14[3] = &unk_1E6A323E0;
  v14[4] = buf;
  nw_dictionary_apply(v3, v14);
  v4 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
LABEL_23:

  return v4 & 1;
}

void nw_proxy_config_remove_protocols_from_stack(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_proxy_config_remove_protocols_from_stack";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v8, &type, &v23))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_remove_protocols_from_stack";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v26 = "nw_proxy_config_remove_protocols_from_stack";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v8)
        {
          goto LABEL_5;
        }

LABEL_40:
        free(v8);
        goto LABEL_5;
      }

      if (v15)
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_remove_protocols_from_stack";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_remove_protocols_from_stack";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v4)
  {
    v6 = v3[4];
    if (v6)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_proxy_config_remove_protocols_from_stack_block_invoke;
      applier[3] = &unk_1E6A3D300;
      v22 = v4;
      xpc_array_apply(v6, applier);
    }

    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_proxy_config_remove_protocols_from_stack";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v8, &type, &v23))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_remove_protocols_from_stack";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null stack", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v23 != 1)
  {
    v9 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_remove_protocols_from_stack";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null stack, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v17 = type;
  v18 = os_log_type_enabled(v9, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_remove_protocols_from_stack";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null stack, no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v18)
  {
    *buf = 136446466;
    v26 = "nw_proxy_config_remove_protocols_from_stack";
    v27 = 2082;
    v28 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_5:
}

void nw_protocol_stack_append_application_protocol(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_stack_append_application_protocol";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_stack_append_application_protocol";
        v10 = "%{public}s called with null stack";
LABEL_32:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_protocol_stack_append_application_protocol";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v7);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v19 = "nw_protocol_stack_append_application_protocol";
        v10 = "%{public}s called with null stack, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_stack_append_application_protocol";
        v10 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    _nw_protocol_stack_append_application_protocol(v3, v4);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_stack_append_application_protocol";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_protocol_stack_append_application_protocol";
      v10 = "%{public}s called with null protocol";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_protocol_stack_append_application_protocol";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (v15)
    {
      *buf = 136446210;
      v19 = "nw_protocol_stack_append_application_protocol";
      v10 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_protocol_stack_append_application_protocol";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

uint64_t _nw_protocol_stack_append_application_protocol(uint64_t a1, uint64_t a2)
{

  v4 = sub_181AA847C(a2);
  v6 = v5;
  ObjectType = swift_getObjectType();
  sub_181CB32CC(v4, a1, ObjectType, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_181CB32CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  v6 = swift_dynamicCastClass();
  v7 = a4 | 0x4000000000000000;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = a1;
  }

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  v11[0] = v8;
  v11[1] = v9;
  swift_unknownObjectRetain();
  sub_181B2A5BC(v11);
  return sub_181AAD084(v8, v9);
}

uint64_t nw_http3_copy_options(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http3_copy_options";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v14, &type, &v20))
    {
LABEL_22:
      if (v14)
      {
        free(v14);
      }

      v4 = 0;
      goto LABEL_6;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v23 = "nw_http3_copy_options";
        v17 = "%{public}s called with null existing_handle";
LABEL_20:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }
    }

    else
    {
      if (v20 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v16 = type;
        v19 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v23 = "nw_http3_copy_options";
            v24 = 2082;
            v25 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v19)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v23 = "nw_http3_copy_options";
        v17 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_20;
      }

      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v23 = "nw_http3_copy_options";
        v17 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v4 = malloc_type_calloc(1uLL, 0x70uLL, 0x8D368B63uLL);
  if (v4)
  {
LABEL_5:
    *(v4 + 24) = *(a2 + 96);
    *(v4 + 26) = *(a2 + 104);
    *(v4 + 1) = *(a2 + 16);
    *(v4 + 4) = *(a2 + 32);
    v8 = *(v4 + 109) & 0xFE | *(a2 + 109) & 1;
    *(v4 + 109) = v8;
    *(v4 + 109) = v8 & 0xFD | *(a2 + 109) & 2;
    *(v4 + 108) = *(a2 + 108);
    v9 = _Block_copy(*(a2 + 56));
    v10 = *(v4 + 7);
    *(v4 + 7) = v9;

    objc_storeStrong(v4 + 8, *(a2 + 64));
    objc_storeStrong(v4 + 9, *(a2 + 72));
    v11 = _Block_copy(*(a2 + 80));
    v12 = *(v4 + 10);
    *(v4 + 10) = v11;

    objc_storeStrong(v4 + 11, *(a2 + 88));
    *(v4 + 25) = *(a2 + 100);
    *v4 = *a2;
    *(v4 + 5) = *(a2 + 40);
LABEL_6:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v23 = "nw_http3_copy_options";
  v24 = 2048;
  v25 = 1;
  v26 = 2048;
  v27 = 112;
  v6 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void nw_endpoint_proxy_update_quic_identity(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  uu = 0uLL;
  nw_proxy_config_get_identifier(v6, &uu);
  if (!uuid_is_null(&uu))
  {
    v8 = nw_quic_stream_copy_shared_connection_options(v7);
    if (nw_proxy_config_get_is_companion_proxy(v6))
    {
      v9 = "com.apple.networkrelay";
    }

    else
    {
      v9 = 0;
    }

    if ((nw_quic_connection_fetch_client_identity_reference(v5, v8, &uu, v9) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 136446210;
        v12 = "nw_endpoint_proxy_update_quic_identity";
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s Unable to fetch QUIC identity reference", &v11, 0xCu);
      }
    }
  }
}

uint64_t nw_quic_connection_fetch_client_identity_reference(void *a1, void *a2, const unsigned __int8 *a3, __SecIdentity *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  if (nw_protocol_options_is_quic_connection(v8))
  {
    if (!uuid_is_null(a3))
    {
      client_identity_reference = _nw_quic_connection_fetch_client_identity_reference(v7, v8, a3, a4);
      goto LABEL_4;
    }

    v16 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_quic_connection_fetch_client_identity_reference";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v12, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v24 = "nw_quic_connection_fetch_client_identity_reference";
          v15 = "%{public}s called with null !uuid_is_null(proxy_uuid)";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v21 != 1)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v24 = "nw_quic_connection_fetch_client_identity_reference";
          v15 = "%{public}s called with null !uuid_is_null(proxy_uuid), backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v20 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v24 = "nw_quic_connection_fetch_client_identity_reference";
          v15 = "%{public}s called with null !uuid_is_null(proxy_uuid), no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v20)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v24 = "nw_quic_connection_fetch_client_identity_reference";
      v25 = 2082;
      v26 = backtrace_string;
      v19 = "%{public}s called with null !uuid_is_null(proxy_uuid), dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v13, v14, v19, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_quic_connection_fetch_client_identity_reference";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v12, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v24 = "nw_quic_connection_fetch_client_identity_reference";
          v15 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_31:
          _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v21 != 1)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v24 = "nw_quic_connection_fetch_client_identity_reference";
          v15 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v18 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v24 = "nw_quic_connection_fetch_client_identity_reference";
          v15 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v18)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v24 = "nw_quic_connection_fetch_client_identity_reference";
      v25 = 2082;
      v26 = backtrace_string;
      v19 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v12)
  {
    free(v12);
  }

  client_identity_reference = 0;
LABEL_4:

  return client_identity_reference;
}

uint64_t sub_181CB3D5C(void *a1, uint64_t a2, const unsigned __int8 *a3, __SecIdentity *a4)
{
  v80 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v9 = sub_181AA8420(a2);
  if (!v9)
  {
    return 0;
  }

  v10 = *(*v9 + 128);
  v11 = v9;
  swift_beginAccess();
  v12 = *(v11 + v10);

  if (!v12)
  {
    return 0;
  }

  v13 = *(v12 + 112);
  if (!v13)
  {

    return 0;
  }

  if (!*(v12 + 136))
  {

    return 1;
  }

  v14 = *(v12 + 120);
  swift_unknownObjectRetain();
  if (uuid_is_null(a3) == 1)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v16 = *a3;
  v17 = *(a3 + 1);
  v18 = *a3 >> 8;
  v19 = *a3 >> 16;
  v78[0] = *a3;
  v78[1] = v18;
  v78[2] = v19;
  v78[3] = BYTE3(v16);
  v78[4] = BYTE4(v16);
  v78[5] = BYTE5(v16);
  v78[6] = BYTE6(v16);
  v78[7] = HIBYTE(v16);
  v79 = v17;
  BytePtr = CFDataGetBytePtr(*(v12 + 136));
  Length = CFDataGetLength(*(v12 + 136));
  if (!BytePtr)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v29 = sub_182AD2698();
    __swift_project_value_buffer(v29, qword_1EA843348);
    v30 = sub_182AD2678();
    v31 = sub_182AD38B8();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_23;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Unable to unwrap newly created identity bytes";
    goto LABEL_22;
  }

  v22 = Length;
  v23 = nw_path_globals_copy_sec_identity(a1, BytePtr, Length);
  if (v23)
  {
    v24 = v23;
    ObjectType = swift_getObjectType();
    v26 = MEMORY[0x1EEE9AC00](ObjectType);
    (*(v14 + 344))(sub_1820D24C0, v26);
    if ((*(v12 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags + 1) & 0x20) != 0)
    {
      v27 = sec_identity_copy_ref(v24);
      if (!v27)
      {
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v49 = sub_182AD2698();
        __swift_project_value_buffer(v49, qword_1EA843418);
        v50 = sub_182AD2678();
        v51 = sub_182AD38B8();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_181A37000, v50, v51, "Unable to copy identity ref from cached sec_identity", v52, 2u);
          MEMORY[0x1865DF520](v52, -1, -1);
        }

        swift_unknownObjectRelease();

        goto LABEL_17;
      }

      v28 = v27;
      sub_1820CE278(v13, v14, v28);
    }

    swift_unknownObjectRelease();
LABEL_17:
    swift_unknownObjectRelease();
    return 1;
  }

  v75 = v13;
  v34 = MEMORY[0x1E69E7CC0];
  v77 = MEMORY[0x1E69E7CC0];
  v35 = *(v12 + 144);
  v74 = v22;
  if (!v35)
  {
    v4 = 1;
LABEL_61:
    proxy_endpoint_from_nehelper = nw_quic_connection_fetch_proxy_endpoint_from_nehelper(v78, BytePtr, v22, a4);
    if (proxy_endpoint_from_nehelper)
    {
      a4 = proxy_endpoint_from_nehelper;
      if (!(v34 >> 62))
      {
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_64:
          v66 = sub_182AD33B8();

          v67 = sec_identity_create_with_certificates(a4, v66);

LABEL_72:
          v69 = *(v12 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
          swift_unknownObjectRetain();
          if ((v69 & 0x2000) != 0)
          {
            sub_1820CE278(v75, v14, a4);
          }

          if (v67)
          {
            nw_path_globals_set_sec_identity(a1, BytePtr, v74, v67);
            v70 = swift_getObjectType();
            v71 = MEMORY[0x1EEE9AC00](v70);
            (*(v14 + 344))(sub_1820D24C0, v71);

            swift_unknownObjectRelease();

            swift_unknownObjectRelease_n();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          return v4;
        }

LABEL_71:

        v67 = sec_identity_create(a4);
        goto LABEL_72;
      }

LABEL_70:
      if (sub_182AD3EB8())
      {
        goto LABEL_64;
      }

      goto LABEL_71;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v68 = sub_182AD2698();
    __swift_project_value_buffer(v68, qword_1EA843418);
    v30 = sub_182AD2678();
    v31 = sub_182AD38B8();
    if (!os_log_type_enabled(v30, v31))
    {
LABEL_23:

      swift_unknownObjectRelease();

      return 0;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Failed to get the retained instance from SecIdentity";
LABEL_22:
    _os_log_impl(&dword_181A37000, v30, v31, v33, v32, 2u);
    MEMORY[0x1865DF520](v32, -1, -1);
    goto LABEL_23;
  }

  v36 = v35;
  Count = CFArrayGetCount(v36);
  if (Count < 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  v38 = Count;
  v73 = BytePtr;
  if (!Count)
  {
    v4 = 1;
    v41 = v36;
LABEL_60:

    BytePtr = v73;
    goto LABEL_61;
  }

  v72 = v14;
  v39 = 0;
  v40 = v36;
  v76 = v36;
  while (1)
  {
    result = CFArrayGetValueAtIndex(v40, v39);
    if (!result)
    {
      break;
    }

    v41 = result;
    v42 = CFDataGetBytePtr(v41);
    v43 = CFDataGetLength(v41);

    if (!v42)
    {

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v53 = sub_182AD2698();
      __swift_project_value_buffer(v53, qword_1EA843418);
      v54 = sub_182AD2678();
      v55 = sub_182AD38B8();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_181A37000, v54, v55, "Failed to create certificate bytes", v56, 2u);
        MEMORY[0x1865DF520](v56, -1, -1);
      }

LABEL_58:
      v4 = 0;
LABEL_59:
      v14 = v72;
      v22 = v74;
      v36 = v76;
      goto LABEL_60;
    }

    v44 = v38;
    certificate_data_nehelper = nw_quic_connection_fetch_certificate_data_nehelper(v78, v42, v43);
    if (!certificate_data_nehelper)
    {

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v57 = sub_182AD2698();
      __swift_project_value_buffer(v57, qword_1EA843418);
      v58 = sub_182AD2678();
      v59 = sub_182AD38B8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_181A37000, v58, v59, "Failed to fetch certificate data from NEHelper", v60, 2u);
        MEMORY[0x1865DF520](v60, -1, -1);
      }

      v4 = 1;
      goto LABEL_59;
    }

    v46 = certificate_data_nehelper;
    xpc_data_get_bytes_ptr(certificate_data_nehelper);
    xpc_data_get_length(v46);
    v47 = SecCertificateCreateWithBytes();
    if (!v47)
    {

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v61 = sub_182AD2698();
      __swift_project_value_buffer(v61, qword_1EA843418);
      v62 = sub_182AD2678();
      v63 = sub_182AD38B8();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_181A37000, v62, v63, "Failed to create certificate from data", v64, 2u);
        MEMORY[0x1865DF520](v64, -1, -1);
      }

      swift_unknownObjectRelease();
      goto LABEL_58;
    }

    v48 = v47;
    MEMORY[0x1865D9F10]();
    if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    ++v39;
    sub_182AD3448();

    swift_unknownObjectRelease();
    v40 = v76;
    v34 = v77;
    v38 = v44;
    if (v44 == v39)
    {
      v4 = 1;
      v36 = v76;
      v41 = v76;
      v14 = v72;
      v22 = v74;
      goto LABEL_60;
    }
  }

  __break(1u);
  return result;
}

uint64_t nw_http2_copy_options(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_http2_copy_options";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v10, &type, &v16))
    {
LABEL_22:
      if (v10)
      {
        free(v10);
      }

      v4 = 0;
      goto LABEL_6;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http2_copy_options";
        v13 = "%{public}s called with null existing_handle";
LABEL_20:
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
            v19 = "nw_http2_copy_options";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v15)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v19 = "nw_http2_copy_options";
        v13 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_20;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_http2_copy_options";
        v13 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v4 = malloc_type_calloc(1uLL, 0x14uLL, 0x3D80555uLL);
  if (v4)
  {
LABEL_5:
    *v4 = *a2;
    v8 = v4[16] & 0xFE | *(a2 + 16) & 1;
    v4[16] = v8;
    v4[16] = v8 & 0xFD | *(a2 + 16) & 2;
LABEL_6:

    return v4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v19 = "nw_http2_copy_options";
  v20 = 2048;
  v21 = 1;
  v22 = 2048;
  v23 = 20;
  v6 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id nw_tls_create_options_from_serializable(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  if (nw_protocol_options_is_serializable_tls(v8))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v30 = __Block_byref_object_copy__75629;
    v31 = __Block_byref_object_dispose__75630;
    v32 = 0;
    *type = 0;
    v25 = type;
    v26 = 0x2020000000;
    v27 = 1;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __nw_tls_create_options_from_serializable_block_invoke;
    v19[3] = &unk_1E6A3A738;
    v21 = buf;
    v22 = type;
    v23 = a3;
    v20 = v7;
    nw_protocol_options_access_handle(v8, v19);
    if (a4)
    {
      *a4 = *(v25 + 24);
    }

    v9 = *(*&buf[8] + 40);

    _Block_object_dispose(type, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_tls_create_options_from_serializable";
  v12 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (__nwlog_fault(v12, type, &v28))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_tls_create_options_from_serializable";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null nw_protocol_options_is_serializable_tls(serializable_options)", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v16 = type[0];
      v17 = os_log_type_enabled(v13, type[0]);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          *&buf[4] = "nw_tls_create_options_from_serializable";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null nw_protocol_options_is_serializable_tls(serializable_options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v17)
      {
        *buf = 136446210;
        *&buf[4] = "nw_tls_create_options_from_serializable";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null nw_protocol_options_is_serializable_tls(serializable_options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_tls_create_options_from_serializable";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null nw_protocol_options_is_serializable_tls(serializable_options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v12)
  {
    free(v12);
  }

  v9 = 0;
LABEL_5:

  return v9;
}

void sub_181CB4EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 128), 8);

  _Unwind_Resume(a1);
}

uint64_t __nw_tls_create_options_from_serializable_block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 48);
  if (v5 == 2)
  {
    Helper_x8__nwswifttlsrecord_copy_definition = gotLoadHelper_x8__nwswifttlsrecord_copy_definition(a3);
    if (*(v12 + 2232))
    {
      inited = nwswifttlsrecord_copy_definition_delayInitStub(Helper_x8__nwswifttlsrecord_copy_definition);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v56 = "nw_protocol_copy_swift_tls_record_definition_if_present";
        v57 = 2048;
        v58 = inited;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s SwiftTLS record protocol definition %p", buf, 0x16u);
      }
    }

    else
    {
      inited = 0;
    }

    goto LABEL_14;
  }

  if (v5 == 1)
  {
    Helper_x8__nwswifttls_copy_definition = gotLoadHelper_x8__nwswifttls_copy_definition(a3);
    if (*(v9 + 2224))
    {
      inited = nwswifttls_copy_definition_delayInitStub(Helper_x8__nwswifttls_copy_definition);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v56 = "nw_protocol_copy_swift_tls_definition_if_present";
        v57 = 2048;
        v58 = inited;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s SwiftTLS protocol definition %p", buf, 0x16u);
      }
    }

    else
    {
      inited = 0;
    }

LABEL_14:
    options = nw_protocol_create_options(inited);
    goto LABEL_15;
  }

  if (!*(a2 + 48))
  {
    inited = nw_protocol_boringssl_copy_definition();
    options = nw_protocol_create_options(inited);
LABEL_15:
    v14 = options;

    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = *(*(*(a1 + 40) + 8) + 40);
  if ((*(a2 + 50) & 1) != 0 && os_variant_allows_internal_security_policies())
  {
    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v18 = nw_context_copy_implicit_context::implicit_context;
    v19 = nw_context_copy_workloop(v18);
    sec_protocol_options_set_verify_block(v17, &__block_literal_global_5_75632, v19);
  }

  sec_protocol_options_set_pqtls_mode();
  v20 = *(a2 + 50);
  if ((v20 & 2) != 0)
  {
    sec_protocol_options_add_tls_application_protocol(v17, "h2");
    v20 = *(a2 + 50);
  }

  if ((v20 & 4) != 0)
  {
    sec_protocol_options_set_min_tls_protocol_version(v17, tls_protocol_version_TLSv13);
  }

  if (*a2 && CFArrayGetCount(*a2) >= 1)
  {
    sec_protocol_options_set_server_raw_public_key_certificates();
  }

  v21 = *(a2 + 8);
  if (!v21 || !*(a1 + 32))
  {
    goto LABEL_74;
  }

  BytePtr = CFDataGetBytePtr(v21);
  Length = CFDataGetLength(*(a2 + 8));
  v24 = nw_path_globals_copy_sec_identity(*(a1 + 32), BytePtr, Length);
  if (v24)
  {
    sec_protocol_options_set_local_identity(v17, v24);

    goto LABEL_80;
  }

  v52 = Length;
  v53 = BytePtr;
  v25 = *(a2 + 16);
  if (v25 && (Count = CFArrayGetCount(v25), Count >= 1))
  {
    Mutable = 0;
    v28 = 0;
    v29 = *MEMORY[0x1E695E480];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 16), v28);
      CFDataGetBytePtr(ValueAtIndex);
      CFDataGetLength(ValueAtIndex);
      v31 = NEHelperCopyDataForCertificate();
      v32 = v31;
      if (!v31)
      {
        break;
      }

      xpc_data_get_bytes_ptr(v31);
      xpc_data_get_length(v32);
      v33 = SecCertificateCreateWithBytes();
      if (!v33)
      {
        v35 = __nwlog_obj();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v56 = "nw_tls_create_options_from_serializable_block_invoke";
          _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s Failed to create certificate from data", buf, 0xCu);
        }

        goto LABEL_49;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v56 = "nw_tls_create_options_from_serializable_block_invoke";
        v57 = 2112;
        v58 = v33;
        _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s Fetched certificate %@ from NEHelper", buf, 0x16u);
      }

      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(v29, 0, MEMORY[0x1E695E9C0]);
      }

      CFArrayAppendValue(Mutable, v33);
      CFRelease(v33);

      if (Count == ++v28)
      {
        goto LABEL_50;
      }
    }

    v35 = __nwlog_obj();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v56 = "nw_tls_create_options_from_serializable_block_invoke";
      _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s Failed to fetch certificate from NEHelper", buf, 0xCu);
    }

    v32 = 0;
LABEL_49:

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    Mutable = 0;
  }

LABEL_50:
  v36 = NEHelperCopyXPCEndpointForIdentityProxy();
  if (v36)
  {
    v37 = objc_alloc_init(MEMORY[0x1E696B0E0]);
    [v37 _setEndpoint:v36];
    v54 = 0;
    v38 = [MEMORY[0x1E697AAB0] createIdentityFromEndpoint:v37 error:&v54];
    v39 = v54;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v40 = gLogObj;
    v41 = v40;
    if (v39)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v56 = "nw_tls_create_options_from_serializable_block_invoke";
        v57 = 2112;
        v58 = v39;
        _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_ERROR, "%{public}s Failed to fetch identity from NEHelper: %@", buf, 0x16u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    else
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v56 = "nw_tls_create_options_from_serializable_block_invoke";
        v57 = 2112;
        v58 = v38;
        _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s Fetched identity %@ from NEHelper", buf, 0x16u);
      }
    }

    if (v38)
    {
      if (Mutable)
      {
        v44 = sec_identity_create_with_certificates(v38, Mutable);
      }

      else
      {
        v44 = sec_identity_create(v38);
      }

      v45 = v44;
      if (v44)
      {
        nw_path_globals_set_sec_identity(*(a1 + 32), v53, v52, v44);
        sec_protocol_options_set_local_identity(v17, v45);
      }

      CFRelease(v38);
    }

    else
    {
      v45 = 0;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

LABEL_74:
    v46 = *(a2 + 24);
    if (v46 && *(a2 + 32) && *(a2 + 40))
    {
      v47 = v46;
      v48 = *(a2 + 32);
      v49 = *(a2 + 40);
      v50 = [objc_alloc(MEMORY[0x1E697AAA8]) initWithExternalIdentity:v48 :v47 :v49];
      sec_protocol_options_add_external_pre_shared_key();
      if ((*(a2 + 50) & 8) != 0)
      {
        sec_protocol_options_set_use_raw_external_pre_shared_keys();
      }
    }

    goto LABEL_80;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v42 = gLogObj;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v43 = *(a2 + 8);
    *buf = 136446466;
    v56 = "nw_tls_create_options_from_serializable_block_invoke";
    v57 = 2112;
    v58 = v43;
    _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s Unable to copy xpc endpoint for client identity %@", buf, 0x16u);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_80:

  return 1;
}

uint64_t nw_parameters_get_should_trust_invalid_certificates(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_should_trust_invalid_certificates(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_should_trust_invalid_certificates";
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
        v12 = "nw_parameters_get_should_trust_invalid_certificates";
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
            v12 = "nw_parameters_get_should_trust_invalid_certificates";
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
        v12 = "nw_parameters_get_should_trust_invalid_certificates";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_should_trust_invalid_certificates";
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

void nw_endpoint_proxy_start_next_child(NWConcrete_nw_endpoint_handler *a1)
{
  v186 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v79 = __nwlog_obj();
    *buf = 136446210;
    v171 = "nw_endpoint_proxy_start_next_child";
    v80 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v168 = 0;
    if (__nwlog_fault(v80, &type, &v168))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v81 = __nwlog_obj();
        v82 = type;
        if (os_log_type_enabled(v81, type))
        {
          *buf = 136446210;
          v171 = "nw_endpoint_proxy_start_next_child";
          _os_log_impl(&dword_181A37000, v81, v82, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v168 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v81 = __nwlog_obj();
        v84 = type;
        v85 = os_log_type_enabled(v81, type);
        if (backtrace_string)
        {
          if (v85)
          {
            *buf = 136446466;
            v171 = "nw_endpoint_proxy_start_next_child";
            v172 = 2082;
            v173 = backtrace_string;
            _os_log_impl(&dword_181A37000, v81, v84, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_143;
        }

        if (v85)
        {
          *buf = 136446210;
          v171 = "nw_endpoint_proxy_start_next_child";
          _os_log_impl(&dword_181A37000, v81, v84, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v81 = __nwlog_obj();
        v97 = type;
        if (os_log_type_enabled(v81, type))
        {
          *buf = 136446210;
          v171 = "nw_endpoint_proxy_start_next_child";
          _os_log_impl(&dword_181A37000, v81, v97, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_143:
    if (v80)
    {
      free(v80);
    }

    goto LABEL_109;
  }

  v3 = v1;
  v4 = v3[29];

  if (v4 != 3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (v4 > 5)
      {
        v19 = "unknown-mode";
      }

      else
      {
        v19 = off_1E6A31018[v4];
      }

      *buf = 136446722;
      v171 = "nw_endpoint_proxy_start_next_child";
      v172 = 2082;
      v173 = v19;
      v174 = 2082;
      v175 = "proxy";
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

    goto LABEL_125;
  }

  v5 = v3;
  v6 = v5->state & 0xFFFFFFFE;

  if (v6 != 4)
  {
    v20 = nw_endpoint_handler_copy_proxy(v5);
    v21 = v20;
    if (v20)
    {
      v22 = *(v20 + 1);
      if (v22 && _nw_array_get_count(v22))
      {
        v23 = *(v21 + 6);
        v24 = *(v21 + 1);
        if (v24 && _nw_array_get_count(v24) > v23)
        {
          v26 = *(v21 + 11);
          if (v26)
          {
            nw_queue_cancel_source(v26, v25);
            *(v21 + 11) = 0;
          }

          ++*(v21 + 6);
          v27 = *(v21 + 1);
          if (v27)
          {
            v28 = _nw_array_get_object_at_index(v27, v23);
          }

          else
          {
            v28 = 0;
          }

          v59 = nw_endpoint_handler_copy_parameters(v28);
          v60 = v59;
          if (v59)
          {
            v61 = _nw_parameters_copy_effective_proxy_config(v59);
            v62 = v61;
            if (v61)
            {
              is_privacy_proxy = nw_proxy_config_is_privacy_proxy(v61, 0);
              v64 = nw_proxy_config_has_fallback_proxy_agent(v62) || nw_proxy_config_has_fallback_proxy_config(v62);
              v66 = nw_proxy_config_use_fast_fallback(v62);
              v65 = v64 | v66;
            }

            else
            {
              is_privacy_proxy = 0;
              v65 = 0;
              v66 = 0;
            }
          }

          else
          {
            is_privacy_proxy = 0;
            v65 = 0;
            v66 = 0;
          }

          if (*(v21 + 96))
          {
            if (((is_privacy_proxy | ((*(v21 + 96) & 0x10) >> 4)) & 1) == 0)
            {
              goto LABEL_90;
            }

            v68 = (*(v21 + 96) & 0x30) != 0 ? is_privacy_proxy : 0;
            if (v68)
            {
              goto LABEL_90;
            }
          }

          else if ((*(v21 + 96) & 6) != 0)
          {
            v67 = v5;
            v67->privacy_stance = 3;

LABEL_90:
            nw_endpoint_handler_cancel(v28, 0, 1);
LABEL_91:

            goto LABEL_108;
          }

          v69 = *(v21 + 10);
          *(v21 + 10) = 0;

          *(v21 + 97) &= 0xE7u;
          nw_endpoint_handler_start(v28);
          if (((nw_endpoint_handler_get_mode(v5) == 3) & v65) != 1)
          {
            goto LABEL_91;
          }

          if ((*(v21 + 97) & 0x10) != 0)
          {
            goto LABEL_91;
          }

          if (*(v21 + 4))
          {
            goto LABEL_91;
          }

          v70 = *(v21 + 1);
          if (!v70)
          {
            goto LABEL_91;
          }

          v71 = *(v21 + 6);
          if (_nw_array_get_count(v70) <= v71)
          {
            goto LABEL_91;
          }

          v72 = nw_array_get_object_at_index(*(v21 + 1), *(v21 + 6));
          if (!v72)
          {
            goto LABEL_91;
          }

          v162 = v72;
          v73 = nw_endpoint_handler_copy_parameters(v72);
          v160 = v73;
          if (v73)
          {
            v74 = _nw_parameters_copy_effective_proxy_config(v73);
            v75 = v74;
            if (v74)
            {
              v76 = nw_proxy_config_get_mode(v74) == 4;
            }

            else
            {
              v76 = 1;
            }
          }

          else
          {
            v76 = 0;
          }

          if ((*(v21 + 97) & 8) == 0)
          {
            v101 = &nw_setting_proxy_fast_failure_threshold;
            if (v66)
            {
              v102 = 2;
            }

            else
            {
              v101 = &nw_setting_proxy_failure_threshold;
              v102 = 5;
            }

            if ((int64_with_default = networkd_settings_get_int64_with_default(*v101, v102), nw_endpoint_proxy_get_success_count(v162)) && (!nw_endpoint_proxy_get_success_count(v28) || int64_with_default < nw_endpoint_proxy_get_failure_count(v28)) || (v66 & v76 & 1) != 0 && int64_with_default < nw_endpoint_proxy_get_failure_count(v28))
            {
              minimize_logging = nw_endpoint_handler_get_minimize_logging(v5);
              logging_disabled = nw_endpoint_handler_get_logging_disabled(v5);
              if (minimize_logging)
              {
                if (logging_disabled)
                {
                  goto LABEL_163;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                log = gconnectionLogObj;
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                {
                  id_string = nw_endpoint_handler_get_id_string(v5);
                  v151 = nw_endpoint_handler_dry_run_string(v5);
                  v141 = nw_endpoint_handler_copy_endpoint(v5);
                  logging_description = nw_endpoint_get_logging_description(v141);
                  v143 = nw_endpoint_handler_state_string(v5);
                  v144 = nw_endpoint_handler_mode_string(v5);
                  v145 = nw_endpoint_handler_copy_current_path(v5);
                  *buf = 136447746;
                  v171 = "nw_endpoint_proxy_start_next_child";
                  v172 = 2082;
                  v173 = id_string;
                  v174 = 2082;
                  v175 = v151;
                  v176 = 2082;
                  v177 = logging_description;
                  v178 = 2082;
                  v179 = v143;
                  v180 = 2082;
                  v181 = v144;
                  v182 = 2114;
                  v183 = v145;
                  _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting next child endpoint immediately", buf, 0x48u);
                }
              }

              else
              {
                if (logging_disabled)
                {
LABEL_163:
                  v111 = nw_endpoint_handler_copy_context(v5);
                  v166[0] = MEMORY[0x1E69E9820];
                  v166[1] = 3221225472;
                  v166[2] = ___ZL34nw_endpoint_proxy_start_next_childP30NWConcrete_nw_endpoint_handler_block_invoke;
                  v166[3] = &unk_1E6A3D868;
                  v167 = v5;
                  nw_queue_context_async(v111, v166);
                  v112 = &v167;
LABEL_200:

                  goto LABEL_91;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                log = gconnectionLogObj;
                if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
                {
                  v152 = nw_endpoint_handler_get_id_string(v5);
                  v148 = nw_endpoint_handler_dry_run_string(v5);
                  v106 = nw_endpoint_handler_copy_endpoint(v5);
                  v107 = nw_endpoint_get_logging_description(v106);
                  v108 = nw_endpoint_handler_state_string(v5);
                  v109 = nw_endpoint_handler_mode_string(v5);
                  v110 = nw_endpoint_handler_copy_current_path(v5);
                  *buf = 136447746;
                  v171 = "nw_endpoint_proxy_start_next_child";
                  v172 = 2082;
                  v173 = v152;
                  v174 = 2082;
                  v175 = v148;
                  v176 = 2082;
                  v177 = v107;
                  v178 = 2082;
                  v179 = v108;
                  v180 = 2082;
                  v181 = v109;
                  v182 = 2114;
                  v183 = v110;
                  _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting next child endpoint immediately", buf, 0x48u);
                }
              }

              goto LABEL_163;
            }
          }

          timeout_nanos = nw_endpoint_proxy_get_timeout_nanos(v28, ((*(v21 + 97) & 8) == 0) & v66);
          v114 = nw_endpoint_handler_get_minimize_logging(v5);
          v115 = nw_endpoint_handler_get_logging_disabled(v5);
          if (v114)
          {
            if (v115)
            {
LABEL_171:
              v122 = nw_endpoint_handler_copy_context(v5);
              v163[0] = MEMORY[0x1E69E9820];
              v163[1] = 3221225472;
              v163[2] = ___ZL34nw_endpoint_proxy_start_next_childP30NWConcrete_nw_endpoint_handler_block_invoke_168;
              v163[3] = &unk_1E6A3D760;
              v164 = v21;
              v165 = v5;
              *(v21 + 11) = nw_queue_context_create_source(v122, 2, 3, 0, v163, 0);

              v123 = *(v21 + 11);
              if (v123)
              {
                v124 = dispatch_time(0x8000000000000000, timeout_nanos);
                nw_queue_set_timer_values(v123, v124, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
                nw_queue_activate_source(*(v21 + 11), v125);
LABEL_199:
                v112 = &v164;
                v111 = v165;
                goto LABEL_200;
              }

              v126 = __nwlog_obj();
              *buf = 136446210;
              v171 = "nw_endpoint_proxy_start_next_child";
              v127 = _os_log_send_and_compose_impl();

              type = OS_LOG_TYPE_ERROR;
              v168 = 0;
              if (__nwlog_fault(v127, &type, &v168))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  v128 = __nwlog_obj();
                  v129 = type;
                  if (os_log_type_enabled(v128, type))
                  {
                    *buf = 136446210;
                    v171 = "nw_endpoint_proxy_start_next_child";
                    _os_log_impl(&dword_181A37000, v128, v129, "%{public}s nw_queue_context_create_source(timer) failed", buf, 0xCu);
                  }
                }

                else
                {
                  if (v168 == 1)
                  {
                    v131 = __nw_create_backtrace_string();
                    v132 = __nwlog_obj();
                    v133 = type;
                    v134 = os_log_type_enabled(v132, type);
                    if (v131)
                    {
                      if (v134)
                      {
                        *buf = 136446466;
                        v171 = "nw_endpoint_proxy_start_next_child";
                        v172 = 2082;
                        v173 = v131;
                        _os_log_impl(&dword_181A37000, v132, v133, "%{public}s nw_queue_context_create_source(timer) failed, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v131);
                    }

                    else
                    {
                      if (v134)
                      {
                        *buf = 136446210;
                        v171 = "nw_endpoint_proxy_start_next_child";
                        _os_log_impl(&dword_181A37000, v132, v133, "%{public}s nw_queue_context_create_source(timer) failed, no backtrace", buf, 0xCu);
                      }
                    }

                    goto LABEL_197;
                  }

                  v128 = __nwlog_obj();
                  v135 = type;
                  if (os_log_type_enabled(v128, type))
                  {
                    *buf = 136446210;
                    v171 = "nw_endpoint_proxy_start_next_child";
                    _os_log_impl(&dword_181A37000, v128, v135, "%{public}s nw_queue_context_create_source(timer) failed, backtrace limit exceeded", buf, 0xCu);
                  }
                }
              }

LABEL_197:
              if (v127)
              {
                free(v127);
              }

              goto LABEL_199;
            }

            v136 = timeout_nanos;
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            loga = gconnectionLogObj;
            if (os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG))
            {
              v150 = nw_endpoint_handler_get_id_string(v5);
              v147 = nw_endpoint_handler_dry_run_string(v5);
              v154 = nw_endpoint_handler_copy_endpoint(v5);
              v137 = nw_endpoint_get_logging_description(v154);
              v138 = nw_endpoint_handler_state_string(v5);
              v139 = nw_endpoint_handler_mode_string(v5);
              v140 = nw_endpoint_handler_copy_current_path(v5);
              *buf = 136448002;
              v171 = "nw_endpoint_proxy_start_next_child";
              v172 = 2082;
              v173 = v150;
              v174 = 2082;
              v175 = v147;
              v176 = 2082;
              v177 = v137;
              v178 = 2082;
              v179 = v138;
              v180 = 2082;
              v181 = v139;
              timeout_nanos = v136;
              v182 = 2114;
              v183 = v140;
              v184 = 2048;
              v185 = v136 / 0xF4240;
              v116 = loga;
              _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting next child endpoint in %llums", buf, 0x52u);
            }

            else
            {
              v116 = loga;
            }
          }

          else
          {
            if (v115)
            {
              goto LABEL_171;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v116 = gconnectionLogObj;
            if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
            {
              v153 = timeout_nanos;
              logb = v116;
              v149 = nw_endpoint_handler_get_id_string(v5);
              v146 = nw_endpoint_handler_dry_run_string(v5);
              v117 = nw_endpoint_handler_copy_endpoint(v5);
              v118 = nw_endpoint_get_logging_description(v117);
              v119 = nw_endpoint_handler_state_string(v5);
              v120 = nw_endpoint_handler_mode_string(v5);
              v121 = nw_endpoint_handler_copy_current_path(v5);
              *buf = 136448002;
              v171 = "nw_endpoint_proxy_start_next_child";
              v172 = 2082;
              v173 = v149;
              v174 = 2082;
              v175 = v146;
              v176 = 2082;
              v177 = v118;
              v178 = 2082;
              v179 = v119;
              timeout_nanos = v153;
              v180 = 2082;
              v181 = v120;
              v182 = 2114;
              v183 = v121;
              v184 = 2048;
              v185 = v153 / 0xF4240;
              v116 = logb;
              _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting next child endpoint in %llums", buf, 0x52u);
            }
          }

          goto LABEL_171;
        }

        v30 = v5;
        v31 = *(v30 + 284);

        if ((v31 & 0x40) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v32 = gconnectionLogObj;
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_107;
          }

          v33 = v30;

          v34 = v33;
          v35 = *(v30 + 284);

          if (v35)
          {
            v36 = "dry-run ";
          }

          else
          {
            v36 = "";
          }

          v37 = nw_endpoint_handler_copy_endpoint(v34);
          v38 = v37;
          v161 = v36;
          if (v37)
          {
            v159 = _nw_endpoint_get_logging_description(v37);
          }

          else
          {
            v159 = "<NULL>";
          }

          id_str = v33->id_str;

          v51 = v34;
          v52 = v51;
          state = v5->state;
          if (state > 5)
          {
            v54 = "unknown-state";
          }

          else
          {
            v54 = off_1E6A31048[state];
          }

          v55 = v52;
          v56 = v55;
          v57 = v3[29];
          if (v57 > 2)
          {
            switch(v57)
            {
              case 3:
                v58 = "proxy";
                goto LABEL_106;
              case 4:
                v58 = "fallback";
                goto LABEL_106;
              case 5:
                v58 = "transform";
                goto LABEL_106;
            }
          }

          else
          {
            switch(v57)
            {
              case 0:
                v58 = "path";
                goto LABEL_106;
              case 1:
                v58 = "resolver";
                goto LABEL_106;
              case 2:
                v58 = nw_endpoint_flow_mode_string(v55[33]);
LABEL_106:

                v77 = v56;
                os_unfair_lock_lock(v77 + 28);
                v78 = v77[8];
                os_unfair_lock_unlock(v77 + 28);

                *buf = 136448002;
                v171 = "nw_endpoint_proxy_start_next_child";
                v172 = 2082;
                v173 = id_str;
                v174 = 2082;
                v175 = v161;
                v176 = 2082;
                v177 = v159;
                v178 = 2082;
                v179 = v54;
                v180 = 2082;
                v181 = v58;
                v182 = 2114;
                v183 = v78;
                v184 = 1024;
                LODWORD(v185) = v23;
                _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no child at index %u", buf, 0x4Eu);

LABEL_107:
                goto LABEL_108;
            }
          }

          v58 = "unknown-mode";
          goto LABEL_106;
        }
      }

      else
      {
        nw_endpoint_handler_handle_failure(v5);
        v29 = [[NWConcrete_nw_error alloc] initWithDomain:50 code:?];
        v5->event = 327684;
        nw_endpoint_handler_report(v5, 0, &v5->event.domain, v29);
      }

LABEL_108:

      goto LABEL_109;
    }

    v93 = __nwlog_obj();
    *buf = 136446210;
    v171 = "nw_endpoint_proxy_start_next_child";
    v94 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v168 = 0;
    if (__nwlog_fault(v94, &type, &v168))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v95 = __nwlog_obj();
        v96 = type;
        if (os_log_type_enabled(v95, type))
        {
          *buf = 136446210;
          v171 = "nw_endpoint_proxy_start_next_child";
          _os_log_impl(&dword_181A37000, v95, v96, "%{public}s called with null endpoint_proxy", buf, 0xCu);
        }
      }

      else if (v168 == 1)
      {
        v98 = __nw_create_backtrace_string();
        v95 = __nwlog_obj();
        v99 = type;
        v100 = os_log_type_enabled(v95, type);
        if (v98)
        {
          if (v100)
          {
            *buf = 136446466;
            v171 = "nw_endpoint_proxy_start_next_child";
            v172 = 2082;
            v173 = v98;
            _os_log_impl(&dword_181A37000, v95, v99, "%{public}s called with null endpoint_proxy, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v98);
          goto LABEL_189;
        }

        if (v100)
        {
          *buf = 136446210;
          v171 = "nw_endpoint_proxy_start_next_child";
          _os_log_impl(&dword_181A37000, v95, v99, "%{public}s called with null endpoint_proxy, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v95 = __nwlog_obj();
        v130 = type;
        if (os_log_type_enabled(v95, type))
        {
          *buf = 136446210;
          v171 = "nw_endpoint_proxy_start_next_child";
          _os_log_impl(&dword_181A37000, v95, v130, "%{public}s called with null endpoint_proxy, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_189:
    if (v94)
    {
      free(v94);
    }

    goto LABEL_108;
  }

  v7 = v5;
  v8 = *(v7 + 284);

  if ((v8 & 0x20) != 0)
  {
    if ((nw_endpoint_handler_get_logging_disabled(v7) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v11 = gconnectionLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v86 = nw_endpoint_handler_get_id_string(v7);
        v87 = nw_endpoint_handler_dry_run_string(v7);
        v88 = nw_endpoint_handler_copy_endpoint(v7);
        v89 = nw_endpoint_get_logging_description(v88);
        v90 = nw_endpoint_handler_state_string(v7);
        v91 = nw_endpoint_handler_mode_string(v7);
        v92 = nw_endpoint_handler_copy_current_path(v7);
        *buf = 136447746;
        v171 = "nw_endpoint_proxy_start_next_child";
        v172 = 2082;
        v173 = v86;
        v174 = 2082;
        v175 = v87;
        v176 = 2082;
        v177 = v89;
        v178 = 2082;
        v179 = v90;
        v180 = 2082;
        v181 = v91;
        v182 = 2114;
        v183 = v92;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] not starting next child", buf, 0x48u);
      }

      goto LABEL_125;
    }
  }

  else
  {
    v9 = v7;
    v10 = *(v7 + 284);

    if ((v10 & 0x40) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v11 = gconnectionLogObj;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        goto LABEL_125;
      }

      v12 = v9;

      v13 = v12;
      v14 = *(v7 + 284);

      if (v14)
      {
        v15 = "dry-run ";
      }

      else
      {
        v15 = "";
      }

      v16 = nw_endpoint_handler_copy_endpoint(v13);
      v17 = v16;
      if (v16)
      {
        v18 = _nw_endpoint_get_logging_description(v16);
      }

      else
      {
        v18 = "<NULL>";
      }

      v39 = v12 + 184;

      v40 = v13;
      v41 = v40;
      v42 = v5->state;
      if (v42 > 5)
      {
        v43 = "unknown-state";
      }

      else
      {
        v43 = off_1E6A31048[v42];
      }

      v44 = v41;
      v45 = v44;
      v46 = v3[29];
      if (v46 > 2)
      {
        switch(v46)
        {
          case 3:
            v47 = "proxy";
            goto LABEL_57;
          case 4:
            v47 = "fallback";
            goto LABEL_57;
          case 5:
            v47 = "transform";
            goto LABEL_57;
        }
      }

      else
      {
        switch(v46)
        {
          case 0:
            v47 = "path";
            goto LABEL_57;
          case 1:
            v47 = "resolver";
            goto LABEL_57;
          case 2:
            v47 = nw_endpoint_flow_mode_string(v44[33]);
LABEL_57:

            v48 = v45;
            os_unfair_lock_lock(v48 + 28);
            v49 = v48[8];
            os_unfair_lock_unlock(v48 + 28);

            *buf = 136447746;
            v171 = "nw_endpoint_proxy_start_next_child";
            v172 = 2082;
            v173 = v39;
            v174 = 2082;
            v175 = v15;
            v176 = 2082;
            v177 = v18;
            v178 = 2082;
            v179 = v43;
            v180 = 2082;
            v181 = v47;
            v182 = 2114;
            v183 = v49;
            _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] not starting next child", buf, 0x48u);

LABEL_125:
            goto LABEL_109;
        }
      }

      v47 = "unknown-mode";
      goto LABEL_57;
    }
  }

LABEL_109:
}

uint64_t nw_proxy_config_use_fast_fallback(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[171] >> 6) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_use_fast_fallback";
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
        v15 = "nw_proxy_config_use_fast_fallback";
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
          v15 = "nw_proxy_config_use_fast_fallback";
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
        v15 = "nw_proxy_config_use_fast_fallback";
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
        v15 = "nw_proxy_config_use_fast_fallback";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_endpoint_proxy_receive_report(void *a1, uint64_t a2, int a3, _WORD *a4, void *a5, void *a6)
{
  v533 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v505 = a5;
  v10 = a6;
  v506 = v10;
  v507 = v9;
  if (!v10)
  {
    v338 = __nwlog_obj();
    *buf = 136446210;
    v514 = "nw_endpoint_proxy_receive_report";
    v339 = _os_log_send_and_compose_impl();

    uu[0] = 16;
    v511 = 0;
    if (__nwlog_fault(v339, uu, &v511))
    {
      if (uu[0] == 17)
      {
        v340 = __nwlog_obj();
        v341 = uu[0];
        if (os_log_type_enabled(v340, uu[0]))
        {
          *buf = 136446210;
          v514 = "nw_endpoint_proxy_receive_report";
          _os_log_impl(&dword_181A37000, v340, v341, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v511 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v340 = __nwlog_obj();
        v343 = uu[0];
        v344 = os_log_type_enabled(v340, uu[0]);
        if (backtrace_string)
        {
          if (v344)
          {
            *buf = 136446466;
            v514 = "nw_endpoint_proxy_receive_report";
            v515 = 2082;
            v516 = backtrace_string;
            _os_log_impl(&dword_181A37000, v340, v343, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_396;
        }

        if (v344)
        {
          *buf = 136446210;
          v514 = "nw_endpoint_proxy_receive_report";
          _os_log_impl(&dword_181A37000, v340, v343, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v340 = __nwlog_obj();
        v345 = uu[0];
        if (os_log_type_enabled(v340, uu[0]))
        {
          *buf = 136446210;
          v514 = "nw_endpoint_proxy_receive_report";
          _os_log_impl(&dword_181A37000, v340, v345, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_396:
    if (v339)
    {
      free(v339);
    }

    goto LABEL_18;
  }

  v497 = a3;
  v11 = v10;
  v12 = v11[29];

  if (v12 == 3)
  {
    delta = v11;
    v13 = v11;
    v14 = *(v13 + 284);
    v504 = v13;

    if ((v14 & 0x40) != 0)
    {
      goto LABEL_43;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v15 = gconnectionLogObj;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
LABEL_42:

      v9 = v507;
LABEL_43:
      v46 = v497;
      v47 = nw_endpoint_handler_copy_proxy(v504);
      v48 = (v47 + 32);
      loga = v47;
      if (*(v47 + 4) == v9)
      {
        nw_endpoint_handler_report(v504, v9, a4, v505);
        v53 = v504;
        v53->state = v497;

        nw_endpoint_handler_report(v53, 0, a4, 0);
LABEL_258:

        v25 = 1;
        goto LABEL_259;
      }

      if (a4 && v505 && (*a4 & 0xFFFE) == 2)
      {
        v49 = v505;
        v50 = v49[2] == 2;

        if (v50)
        {
          v51 = nw_endpoint_handler_copy_current_path(v507);
          v52 = v51;
          if (v51 && nw_path_has_dns(v51) && (nw_path_has_ipv4(v52) || nw_path_is_eligible_for_CrazyIvan46(v52) && nw_path_has_nat64_prefixes(v52)))
          {
            objc_storeStrong(v47 + 10, a5);
          }
        }

        else
        {
          v54 = v49;
          v52 = *(v47 + 10);
          *(v47 + 10) = v54;
        }

        v9 = v507;
        v46 = v497;
      }

      memset(uu, 0, sizeof(uu));
      v55 = nw_endpoint_handler_copy_parameters(v9);
      v485 = v55;
      if (!v55)
      {
        v479 = 0;
        v489 = 0;
        v483 = 0;
        v487 = 0;
        v481 = 0;
        if (v46 == 3)
        {
          goto LABEL_95;
        }

        goto LABEL_60;
      }

      v56 = _nw_parameters_copy_effective_proxy_config(v55);
      if (!v56)
      {
        v479 = 0;
        v483 = 0;
        v487 = 0;
        v481 = 0;
        goto LABEL_94;
      }

      v57 = v56;
      v58 = v56;
      v60 = v58 + 170;
      v59 = v58[170];

      v61 = v58;
      v62 = *v60;

      v63 = v61;
      *uu = *(v63 + 56);

      if ((v59 & 2) != 0)
      {
        v64 = (*(v47 + 96) & 6) == 0;
      }

      else
      {
        v64 = (v59 >> 1) & 1;
      }

      LODWORD(v479) = v64;
      v73 = v63;
      v74 = v73[171];

      v75 = v73;
      v76 = *(v75 + 38);
      if (v76 <= 1)
      {
        if (v76 != 1)
        {
LABEL_90:
          v483 = 0;
LABEL_93:

          v487 = v59 & 1;
          HIDWORD(v479) = (v62 >> 2) & 1;
          v481 = (v74 >> 6) & 1;
          v56 = v57;
LABEL_94:
          v489 = v56;

          v9 = v507;
          v46 = v497;
          if (v497 == 3)
          {
LABEL_95:
            if ((v481 | v487))
            {
              nw_endpoint_proxy_record_result(v9, 1);
            }

            if (v483)
            {
              if ((*(v47 + 100) & 2) != 0)
              {
                *(v47 + 99) = 2;
              }

              else if (*(v47 + 100))
              {
                if ((*(v47 + 100) & 4) != 0)
                {
                  v78 = 4;
                }

                else
                {
                  v78 = 3;
                }

                *(v47 + 99) = v78;
                v79 = *(v47 + 97);
                if ((v79 & 8) != 0)
                {
LABEL_153:
                  if (v487)
                  {
                    v117 = v504;
                    v118 = v117->privacy_stance == 2;

                    v9 = v507;
                    v47 = loga;
                    if (v118)
                    {
                      goto LABEL_206;
                    }

                    v119 = v117;
                    v120 = (*(v504 + 284) & 0x20) == 0;
                    deltaa = v119;

                    if (v120)
                    {
                      v121 = deltaa;
                      v122 = (*(v504 + 284) & 0x40) == 0;

                      if (!v122)
                      {
                        goto LABEL_162;
                      }

                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v123 = gconnectionLogObj;
                      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                      {
                        id_string = nw_endpoint_handler_get_id_string(v121);
                        v125 = nw_endpoint_handler_dry_run_string(v121);
                        v126 = nw_endpoint_handler_copy_endpoint(v121);
                        logging_description = nw_endpoint_get_logging_description(v126);
                        v128 = nw_endpoint_handler_state_string(v121);
                        v129 = nw_endpoint_handler_mode_string(v121);
                        v130 = nw_endpoint_handler_copy_current_path(v121);
                        v131 = nw_endpoint_handler_get_id_string(v507);
                        *buf = 136448258;
                        v514 = "nw_endpoint_proxy_receive_report";
                        v515 = 2082;
                        v516 = id_string;
                        v517 = 2082;
                        v518 = v125;
                        v519 = 2082;
                        v520 = logging_description;
                        v521 = 2082;
                        v522 = v128;
                        v523 = 2082;
                        v524 = v129;
                        v525 = 2114;
                        v526 = v130;
                        v527 = 2082;
                        *v528 = v131;
                        *&v528[8] = 2114;
                        *&v528[10] = v489;
                        _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Privacy proxy used ([C%{public}s] %{public}@)", buf, 0x5Cu);
                      }
                    }

                    else
                    {
                      if (nw_endpoint_handler_get_logging_disabled(deltaa))
                      {
LABEL_162:
                        if ((v479 & 0x100000000) == 0)
                        {
                          v132 = deltaa;
                          v117->privacy_stance = 2;
                        }

                        v9 = v507;
                        v47 = loga;
                        if (!uuid_is_null(uu))
                        {
                          v133 = nw_endpoint_handler_copy_current_path(deltaa);
                          nw_path_report_error_to_agent(v133, uu, 0);

LABEL_205:
                          v9 = v507;
                          v47 = loga;
                          goto LABEL_206;
                        }

                        goto LABEL_206;
                      }

                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v123 = gconnectionLogObj;
                      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
                      {
                        v477 = nw_endpoint_handler_get_id_string(deltaa);
                        v354 = nw_endpoint_handler_dry_run_string(deltaa);
                        v355 = nw_endpoint_handler_copy_endpoint(deltaa);
                        v356 = nw_endpoint_get_logging_description(v355);
                        v357 = nw_endpoint_handler_state_string(deltaa);
                        v358 = nw_endpoint_handler_mode_string(deltaa);
                        v359 = nw_endpoint_handler_copy_current_path(deltaa);
                        v360 = nw_endpoint_handler_get_id_string(v507);
                        *buf = 136448258;
                        v514 = "nw_endpoint_proxy_receive_report";
                        v515 = 2082;
                        v516 = v477;
                        v517 = 2082;
                        v518 = v354;
                        v519 = 2082;
                        v520 = v356;
                        v521 = 2082;
                        v522 = v357;
                        v523 = 2082;
                        v524 = v358;
                        v525 = 2114;
                        v526 = v359;
                        v527 = 2082;
                        *v528 = v360;
                        *&v528[8] = 2114;
                        *&v528[10] = v489;
                        _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Privacy proxy used ([C%{public}s] %{public}@)", buf, 0x5Cu);
                      }
                    }

                    goto LABEL_162;
                  }

                  if ((*(v47 + 96) & 1) == 0)
                  {
                    if ((v479 & 0x100000000) == 0)
                    {
                      v134 = v504;
                      v134->privacy_stance = 1;

                      goto LABEL_205;
                    }

LABEL_206:
                    v178 = *(v47 + 1);
                    if (v178 && v9 && _nw_array_contains_object(v178, v9))
                    {
                      if (v497 == 3)
                      {
                        objc_storeStrong(v48, a1);
                        v179 = nw_endpoint_handler_copy_endpoint(v504);
                        v180 = v507;
                        if (!v179 || !v489)
                        {
                          goto LABEL_230;
                        }

                        v181 = v489;
                        v182 = *(v181 + 18);
                        if (!v182)
                        {
                          goto LABEL_229;
                        }

                        v183 = xpc_array_get_count(v182) == 0;

                        v180 = v507;
                        if (v183)
                        {
LABEL_230:
                          nw_endpoint_handler_report(v504, v180, a4, v505);
                          v199 = v504;
                          v199->state = 3;

                          isa = loga[11].isa;
                          if (isa)
                          {
                            nw_queue_cancel_source(isa, v200);
                            loga[11].isa = 0;
                          }

                          nw_endpoint_handler_report(v199, 0, a4, 0);
                          v202 = loga[1].isa;
                          aBlock[0] = MEMORY[0x1E69E9820];
                          aBlock[1] = 3221225472;
                          aBlock[2] = ___ZL32nw_endpoint_proxy_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke;
                          aBlock[3] = &unk_1E6A35E80;
                          v509 = loga;
                          v203 = v507;
                          v510 = v203;
                          if (v202)
                          {
                            _nw_array_apply(v202, aBlock);
                            v203 = v510;
                          }

LABEL_235:
LABEL_257:

                          goto LABEL_258;
                        }

                        v184 = nw_endpoint_copy_cname_array(v179);
                        v181 = v184;
                        if (!v184 || !_nw_array_get_count(v184))
                        {
LABEL_229:

                          v180 = v507;
                          goto LABEL_230;
                        }

                        v185 = nw_endpoint_handler_copy_association(v504, 0);
                        if (!v185)
                        {
LABEL_228:

                          goto LABEL_229;
                        }

                        v186 = nw_protocol_copy_proxy_definition();
                        cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v185, v186);

                        if (cached_content_for_protocol || (cached_content_for_protocol = malloc_type_calloc(1uLL, 8uLL, 0xA6B1A539uLL)) != 0)
                        {
LABEL_221:
                          v498 = (4 * networkd_settings_get_int64_with_default(nw_setting_proxy_fallback_cache_seconds, 1800));
                          if ((nw_endpoint_handler_get_logging_disabled(v504) & 1) == 0)
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v190 = gconnectionLogObj;
                            if (os_log_type_enabled(v190, OS_LOG_TYPE_DEBUG))
                            {
                              v191 = nw_endpoint_handler_get_id_string(v504);
                              deltac = nw_endpoint_handler_dry_run_string(v504);
                              obja = nw_endpoint_handler_copy_endpoint(v504);
                              v192 = v191;
                              v193 = nw_endpoint_get_logging_description(obja);
                              v194 = nw_endpoint_handler_state_string(v504);
                              v195 = nw_endpoint_handler_mode_string(v504);
                              v196 = nw_endpoint_handler_copy_current_path(v504);
                              *buf = 136448002;
                              v514 = "nw_endpoint_proxy_receive_report";
                              v515 = 2082;
                              v516 = v192;
                              v517 = 2082;
                              v518 = deltac;
                              v519 = 2082;
                              v520 = v193;
                              v521 = 2082;
                              v522 = v194;
                              v523 = 2082;
                              v524 = v195;
                              v525 = 2114;
                              v526 = v196;
                              v527 = 2048;
                              *v528 = v498;
                              _os_log_impl(&dword_181A37000, v190, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Endpoint has alias array, extending cache for %lld seconds", buf, 0x52u);
                            }
                          }

                          v197 = nw_protocol_copy_proxy_definition();
                          v198 = time(0);
                          nw_association_set_cached_content_for_protocol(v185, v197, cached_content_for_protocol, v498 + v198);

                          goto LABEL_228;
                        }

                        v188 = __nwlog_obj();
                        os_log_type_enabled(v188, OS_LOG_TYPE_ERROR);
                        *buf = 136446722;
                        v514 = "nw_endpoint_proxy_receive_report";
                        v515 = 2048;
                        v516 = 1;
                        v517 = 2048;
                        v518 = 8;
                        v189 = _os_log_send_and_compose_impl();

                        if (!__nwlog_should_abort(v189))
                        {
                          free(v189);
                          cached_content_for_protocol = 0;
                          goto LABEL_221;
                        }

                        __break(1u);
                        goto LABEL_494;
                      }

                      if (v497 == 4)
                      {
                        if ((v487 | v481))
                        {
                          nw_endpoint_proxy_record_result(v9, 0);
                        }

                        if (!v483)
                        {
                          *(v47 + 100) |= 2u;
                        }

                        v204 = *(v47 + 2);
                        if (v204)
                        {
                          if (_nw_array_contains_object(v204, v9))
                          {
                            goto LABEL_269;
                          }

                          v205 = *(v47 + 2);
                          if (v205)
                          {
                            goto LABEL_245;
                          }
                        }

                        v206 = _nw_array_create();
                        v208 = *(v47 + 2);
                        v207 = (v47 + 16);
                        *v207 = v206;

                        v205 = *v207;
                        v9 = v507;
                        v47 = loga;
                        if (v205)
                        {
LABEL_245:
                          _nw_array_append(v205, v9);
                        }

                        if (v487)
                        {
                          v209 = *(v47 + 10);
                          if (v209)
                          {
                            LODWORD(v48) = nw_error_get_error_code(v209);
                            error_domain = nw_error_get_error_domain(*(v47 + 10));
                            if (v48 == 65)
                            {
                              v211 = (*(v47 + 97) >> 3) & 1;
                            }

                            else
                            {
                              v211 = 0;
                            }

                            if (v48 == 64 || error_domain == nw_error_domain_tls)
                            {
                              v285 = (BYTE1(loga[12].isa) >> 3) & 1;
                            }

                            else
                            {
                              v285 = 0;
                            }

                            if (v211)
                            {
                              v286 = loga[12].isa;
                              LOBYTE(loga[12].isa) = v286 | 0x20;
                              if (BYTE1(loga[12].isa) & 0x20 | v286 & 0xE)
                              {
                                v70 = (v286 & 6) == 0;
                                v287 = HIDWORD(v479);
                                if (!v70)
                                {
                                  v287 = 0;
                                }

                                if (v287 != 1)
                                {
LABEL_324:
                                  minimize_logging = nw_endpoint_handler_get_minimize_logging(v504);
                                  logging_disabled = nw_endpoint_handler_get_logging_disabled(v504);
                                  if (v285)
                                  {
                                    if (!minimize_logging)
                                    {
                                      if (logging_disabled)
                                      {
LABEL_334:
                                        if ((v479 & 0x100000000) == 0)
                                        {
                                          v301 = v504;
                                          v301->privacy_stance = 2;
                                        }

                                        v234 = 0;
                                        v235 = 1;
LABEL_388:
                                        v9 = v507;
                                        v47 = loga;
LABEL_389:
                                        if (!v48 || (*(v47 + 97) & 8) != 0 || uuid_is_null(uu))
                                        {
                                          goto LABEL_270;
                                        }

                                        v225 = nw_endpoint_handler_copy_current_path(v504);
                                        nw_path_report_error_to_agent(v225, uu, v48);
                                        goto LABEL_267;
                                      }

                                      if (__nwlog_connection_log::onceToken[0] != -1)
                                      {
                                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                      }

                                      v290 = gconnectionLogObj;
                                      if (os_log_type_enabled(v290, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v291 = nw_endpoint_handler_get_id_string(v504);
                                        v292 = nw_endpoint_handler_dry_run_string(v504);
                                        v293 = nw_endpoint_handler_copy_endpoint(v504);
                                        v294 = nw_endpoint_get_logging_description(v293);
                                        v295 = nw_endpoint_handler_state_string(v504);
                                        v296 = nw_endpoint_handler_mode_string(v504);
                                        v297 = nw_endpoint_handler_copy_current_path(v504);
                                        v298 = BYTE1(loga[12].isa);
                                        v299 = nw_endpoint_handler_get_id_string(v507);
                                        *buf = 136448770;
                                        v514 = "nw_endpoint_proxy_receive_report";
                                        v300 = "";
                                        v516 = v291;
                                        v515 = 2082;
                                        if ((v298 & 8) == 0)
                                        {
                                          v300 = " during establishment";
                                        }

                                        v517 = 2082;
                                        v518 = v292;
                                        v519 = 2082;
                                        v520 = v294;
                                        v521 = 2082;
                                        v522 = v295;
                                        v523 = 2082;
                                        v524 = v296;
                                        v525 = 2114;
                                        v526 = v297;
                                        v527 = 1024;
                                        *v528 = v48;
                                        *&v528[4] = 2082;
                                        *&v528[6] = v300;
                                        *&v528[14] = 2082;
                                        *&v528[16] = v299;
                                        *&v528[24] = 2114;
                                        *&v528[26] = v489;
                                        _os_log_impl(&dword_181A37000, v290, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Privacy proxy detected origin server failure with error %d%{public}s ([C%{public}s] %{public}@)", buf, 0x6Cu);
                                      }

LABEL_333:

                                      goto LABEL_334;
                                    }

                                    if (logging_disabled)
                                    {
                                      goto LABEL_334;
                                    }

                                    if (__nwlog_connection_log::onceToken[0] == -1)
                                    {
LABEL_481:
                                      v290 = gconnectionLogObj;
                                      if (os_log_type_enabled(v290, OS_LOG_TYPE_DEBUG))
                                      {
                                        v458 = nw_endpoint_handler_get_id_string(v504);
                                        v459 = nw_endpoint_handler_dry_run_string(v504);
                                        v460 = nw_endpoint_handler_copy_endpoint(v504);
                                        v461 = nw_endpoint_get_logging_description(v460);
                                        v462 = nw_endpoint_handler_state_string(v504);
                                        v463 = nw_endpoint_handler_mode_string(v504);
                                        v464 = nw_endpoint_handler_copy_current_path(v504);
                                        v465 = BYTE1(loga[12].isa);
                                        v466 = nw_endpoint_handler_get_id_string(v507);
                                        *buf = 136448770;
                                        v514 = "nw_endpoint_proxy_receive_report";
                                        v467 = "";
                                        v516 = v458;
                                        v515 = 2082;
                                        if ((v465 & 8) == 0)
                                        {
                                          v467 = " during establishment";
                                        }

                                        v517 = 2082;
                                        v518 = v459;
                                        v519 = 2082;
                                        v520 = v461;
                                        v521 = 2082;
                                        v522 = v462;
                                        v523 = 2082;
                                        v524 = v463;
                                        v525 = 2114;
                                        v526 = v464;
                                        v527 = 1024;
                                        *v528 = v48;
                                        *&v528[4] = 2082;
                                        *&v528[6] = v467;
                                        *&v528[14] = 2082;
                                        *&v528[16] = v466;
                                        *&v528[24] = 2114;
                                        *&v528[26] = v489;
                                        _os_log_impl(&dword_181A37000, v290, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Privacy proxy detected origin server failure with error %d%{public}s ([C%{public}s] %{public}@)", buf, 0x6Cu);
                                      }

                                      goto LABEL_333;
                                    }

LABEL_494:
                                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                    goto LABEL_481;
                                  }

                                  if (minimize_logging)
                                  {
                                    if (logging_disabled)
                                    {
                                      goto LABEL_368;
                                    }

                                    if (__nwlog_connection_log::onceToken[0] != -1)
                                    {
                                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                    }

                                    v326 = gconnectionLogObj;
                                    if (os_log_type_enabled(v326, OS_LOG_TYPE_DEBUG))
                                    {
                                      objb = nw_endpoint_handler_get_id_string(v504);
                                      v500 = nw_endpoint_handler_dry_run_string(v504);
                                      v468 = nw_endpoint_handler_copy_endpoint(v504);
                                      v469 = nw_endpoint_get_logging_description(v468);
                                      v470 = nw_endpoint_handler_state_string(v504);
                                      v471 = nw_endpoint_handler_mode_string(v504);
                                      v472 = nw_endpoint_handler_copy_current_path(v504);
                                      v473 = BYTE1(loga[12].isa);
                                      v474 = nw_endpoint_handler_get_id_string(v507);
                                      *buf = 136448770;
                                      v514 = "nw_endpoint_proxy_receive_report";
                                      v475 = "";
                                      v516 = objb;
                                      v515 = 2082;
                                      if ((v473 & 8) == 0)
                                      {
                                        v475 = " during establishment";
                                      }

                                      v517 = 2082;
                                      v518 = v500;
                                      v519 = 2082;
                                      v520 = v469;
                                      v521 = 2082;
                                      v522 = v470;
                                      v523 = 2082;
                                      v524 = v471;
                                      v525 = 2114;
                                      v526 = v472;
                                      v527 = 1024;
                                      *v528 = v48;
                                      *&v528[4] = 2082;
                                      *&v528[6] = v475;
                                      *&v528[14] = 2082;
                                      *&v528[16] = v474;
                                      *&v528[24] = 2114;
                                      *&v528[26] = v489;
                                      _os_log_impl(&dword_181A37000, v326, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Privacy proxy failed with error %d%{public}s ([C%{public}s] %{public}@)", buf, 0x6Cu);
                                    }
                                  }

                                  else
                                  {
                                    if (logging_disabled)
                                    {
LABEL_368:
                                      if ((v479 & 0x100000000) == 0)
                                      {
                                        if (v211 && (loga[12].isa & 8) != 0)
                                        {
                                          v337 = 5;
                                        }

                                        else
                                        {
                                          v337 = 3;
                                        }

                                        v346 = v504;
                                        v346->privacy_stance = v337;
                                      }

                                      v234 = 0;
                                      v235 = 0;
                                      goto LABEL_388;
                                    }

                                    if (__nwlog_connection_log::onceToken[0] != -1)
                                    {
                                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                    }

                                    v326 = gconnectionLogObj;
                                    if (os_log_type_enabled(v326, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v499 = v326;
                                      v327 = nw_endpoint_handler_get_id_string(v504);
                                      v328 = nw_endpoint_handler_dry_run_string(v504);
                                      v329 = nw_endpoint_handler_copy_endpoint(v504);
                                      v330 = nw_endpoint_get_logging_description(v329);
                                      v331 = nw_endpoint_handler_state_string(v504);
                                      v332 = nw_endpoint_handler_mode_string(v504);
                                      v333 = nw_endpoint_handler_copy_current_path(v504);
                                      v334 = BYTE1(loga[12].isa);
                                      v335 = nw_endpoint_handler_get_id_string(v507);
                                      *buf = 136448770;
                                      v514 = "nw_endpoint_proxy_receive_report";
                                      v336 = "";
                                      v516 = v327;
                                      v515 = 2082;
                                      if ((v334 & 8) == 0)
                                      {
                                        v336 = " during establishment";
                                      }

                                      v517 = 2082;
                                      v518 = v328;
                                      v519 = 2082;
                                      v520 = v330;
                                      v521 = 2082;
                                      v522 = v331;
                                      v523 = 2082;
                                      v524 = v332;
                                      v525 = 2114;
                                      v526 = v333;
                                      v527 = 1024;
                                      *v528 = v48;
                                      *&v528[4] = 2082;
                                      *&v528[6] = v336;
                                      *&v528[14] = 2082;
                                      *&v528[16] = v335;
                                      *&v528[24] = 2114;
                                      *&v528[26] = v489;
                                      _os_log_impl(&dword_181A37000, v499, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Privacy proxy failed with error %d%{public}s ([C%{public}s] %{public}@)", buf, 0x6Cu);

                                      v326 = v499;
                                    }
                                  }

                                  goto LABEL_368;
                                }
                              }
                            }

                            else if ((v479 & 1) == 0)
                            {
                              goto LABEL_324;
                            }

                            v302 = nw_endpoint_handler_get_minimize_logging(v504);
                            v303 = nw_endpoint_handler_get_logging_disabled(v504);
                            if (v479)
                            {
                              v47 = loga;
                              if (v302)
                              {
                                if (v303)
                                {
                                  goto LABEL_356;
                                }

                                if (__nwlog_connection_log::onceToken[0] != -1)
                                {
                                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                }

                                v304 = gconnectionLogObj;
                                if (os_log_type_enabled(v304, OS_LOG_TYPE_DEBUG))
                                {
                                  v431 = nw_endpoint_handler_get_id_string(v504);
                                  v432 = nw_endpoint_handler_dry_run_string(v504);
                                  v433 = nw_endpoint_handler_copy_endpoint(v504);
                                  v434 = nw_endpoint_get_logging_description(v433);
                                  v435 = nw_endpoint_handler_state_string(v504);
                                  v436 = nw_endpoint_handler_mode_string(v504);
                                  v437 = nw_endpoint_handler_copy_current_path(v504);
                                  v438 = BYTE1(loga[12].isa);
                                  v439 = nw_endpoint_handler_get_id_string(v507);
                                  *buf = 136448770;
                                  v514 = "nw_endpoint_proxy_receive_report";
                                  v440 = "";
                                  v516 = v431;
                                  v515 = 2082;
                                  if ((v438 & 8) == 0)
                                  {
                                    v440 = " during establishment";
                                  }

                                  v517 = 2082;
                                  v518 = v432;
                                  v519 = 2082;
                                  v520 = v434;
                                  v521 = 2082;
                                  v522 = v435;
                                  v523 = 2082;
                                  v524 = v436;
                                  v525 = 2114;
                                  v526 = v437;
                                  v527 = 1024;
                                  *v528 = v48;
                                  *&v528[4] = 2082;
                                  *&v528[6] = v440;
                                  *&v528[14] = 2082;
                                  *&v528[16] = v439;
                                  *&v528[24] = 2114;
                                  *&v528[26] = v489;
                                  _os_log_impl(&dword_181A37000, v304, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Privacy proxy failed with error %d%{public}s, allowed to fail open ([C%{public}s] %{public}@)", buf, 0x6Cu);
                                }

                                goto LABEL_355;
                              }

                              if ((v303 & 1) == 0)
                              {
                                if (__nwlog_connection_log::onceToken[0] != -1)
                                {
                                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                }

                                v304 = gconnectionLogObj;
                                if (os_log_type_enabled(v304, OS_LOG_TYPE_INFO))
                                {
                                  v305 = nw_endpoint_handler_get_id_string(v504);
                                  v306 = nw_endpoint_handler_dry_run_string(v504);
                                  v307 = nw_endpoint_handler_copy_endpoint(v504);
                                  v308 = nw_endpoint_get_logging_description(v307);
                                  v309 = nw_endpoint_handler_state_string(v504);
                                  v310 = nw_endpoint_handler_mode_string(v504);
                                  v311 = nw_endpoint_handler_copy_current_path(v504);
                                  v312 = BYTE1(loga[12].isa);
                                  v313 = nw_endpoint_handler_get_id_string(v507);
                                  *buf = 136448770;
                                  v514 = "nw_endpoint_proxy_receive_report";
                                  v314 = "";
                                  v516 = v305;
                                  v515 = 2082;
                                  if ((v312 & 8) == 0)
                                  {
                                    v314 = " during establishment";
                                  }

                                  v517 = 2082;
                                  v518 = v306;
                                  v519 = 2082;
                                  v520 = v308;
                                  v521 = 2082;
                                  v522 = v309;
                                  v523 = 2082;
                                  v524 = v310;
                                  v525 = 2114;
                                  v526 = v311;
                                  v527 = 1024;
                                  *v528 = v48;
                                  *&v528[4] = 2082;
                                  *&v528[6] = v314;
                                  *&v528[14] = 2082;
                                  *&v528[16] = v313;
                                  *&v528[24] = 2114;
                                  *&v528[26] = v489;
                                  _os_log_impl(&dword_181A37000, v304, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Privacy proxy failed with error %d%{public}s, allowed to fail open ([C%{public}s] %{public}@)", buf, 0x6Cu);
                                }

LABEL_355:

                                v47 = loga;
                              }
                            }

                            else
                            {
                              v47 = loga;
                              if (v302)
                              {
                                if (v303)
                                {
                                  goto LABEL_356;
                                }

                                if (__nwlog_connection_log::onceToken[0] != -1)
                                {
                                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                }

                                v304 = gconnectionLogObj;
                                if (os_log_type_enabled(v304, OS_LOG_TYPE_DEBUG))
                                {
                                  v441 = nw_endpoint_handler_get_id_string(v504);
                                  v442 = nw_endpoint_handler_dry_run_string(v504);
                                  v443 = nw_endpoint_handler_copy_endpoint(v504);
                                  v444 = nw_endpoint_get_logging_description(v443);
                                  v445 = nw_endpoint_handler_state_string(v504);
                                  v446 = nw_endpoint_handler_mode_string(v504);
                                  v447 = nw_endpoint_handler_copy_current_path(v504);
                                  v448 = BYTE1(loga[12].isa);
                                  v449 = nw_endpoint_handler_get_id_string(v507);
                                  *buf = 136448770;
                                  v514 = "nw_endpoint_proxy_receive_report";
                                  v450 = "";
                                  v516 = v441;
                                  v515 = 2082;
                                  if ((v448 & 8) == 0)
                                  {
                                    v450 = " during establishment";
                                  }

                                  v517 = 2082;
                                  v518 = v442;
                                  v519 = 2082;
                                  v520 = v444;
                                  v521 = 2082;
                                  v522 = v445;
                                  v523 = 2082;
                                  v524 = v446;
                                  v525 = 2114;
                                  v526 = v447;
                                  v527 = 1024;
                                  *v528 = v48;
                                  *&v528[4] = 2082;
                                  *&v528[6] = v450;
                                  *&v528[14] = 2082;
                                  *&v528[16] = v449;
                                  *&v528[24] = 2114;
                                  *&v528[26] = v489;
                                  _os_log_impl(&dword_181A37000, v304, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Privacy proxy failed with error %d%{public}s, failing open ([C%{public}s] %{public}@)", buf, 0x6Cu);
                                }

                                goto LABEL_355;
                              }

                              if ((v303 & 1) == 0)
                              {
                                if (__nwlog_connection_log::onceToken[0] != -1)
                                {
                                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                                }

                                v304 = gconnectionLogObj;
                                if (os_log_type_enabled(v304, OS_LOG_TYPE_INFO))
                                {
                                  v315 = nw_endpoint_handler_get_id_string(v504);
                                  v316 = nw_endpoint_handler_dry_run_string(v504);
                                  v317 = nw_endpoint_handler_copy_endpoint(v504);
                                  v318 = nw_endpoint_get_logging_description(v317);
                                  v319 = nw_endpoint_handler_state_string(v504);
                                  v320 = nw_endpoint_handler_mode_string(v504);
                                  v321 = nw_endpoint_handler_copy_current_path(v504);
                                  v322 = BYTE1(loga[12].isa);
                                  v323 = nw_endpoint_handler_get_id_string(v507);
                                  *buf = 136448770;
                                  v514 = "nw_endpoint_proxy_receive_report";
                                  v324 = "";
                                  v516 = v315;
                                  v515 = 2082;
                                  if ((v322 & 8) == 0)
                                  {
                                    v324 = " during establishment";
                                  }

                                  v517 = 2082;
                                  v518 = v316;
                                  v519 = 2082;
                                  v520 = v318;
                                  v521 = 2082;
                                  v522 = v319;
                                  v523 = 2082;
                                  v524 = v320;
                                  v525 = 2114;
                                  v526 = v321;
                                  v527 = 1024;
                                  *v528 = v48;
                                  *&v528[4] = 2082;
                                  *&v528[6] = v324;
                                  *&v528[14] = 2082;
                                  *&v528[16] = v323;
                                  *&v528[24] = 2114;
                                  *&v528[26] = v489;
                                  _os_log_impl(&dword_181A37000, v304, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Privacy proxy failed with error %d%{public}s, failing open ([C%{public}s] %{public}@)", buf, 0x6Cu);
                                }

                                goto LABEL_355;
                              }
                            }

LABEL_356:
                            if ((v479 & 0x100000000) == 0)
                            {
                              v325 = v504;
                              v325->privacy_stance = 4;

                              v47 = loga;
                            }

                            v235 = 0;
                            *(v47 + 96) |= 0x10u;
                            v234 = 1;
                            v9 = v507;
                            goto LABEL_389;
                          }

                          v223 = nw_endpoint_handler_get_minimize_logging(v504);
                          v224 = nw_endpoint_handler_get_logging_disabled(v504);
                          if (v223)
                          {
                            if (v224)
                            {
                              v234 = 0;
                              v235 = 0;
                              goto LABEL_268;
                            }

                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v225 = gconnectionLogObj;
                            if (os_log_type_enabled(v225, OS_LOG_TYPE_DEBUG))
                            {
                              v416 = nw_endpoint_handler_get_id_string(v504);
                              v417 = nw_endpoint_handler_dry_run_string(v504);
                              v418 = nw_endpoint_handler_copy_endpoint(v504);
                              v419 = nw_endpoint_get_logging_description(v418);
                              v420 = nw_endpoint_handler_state_string(v504);
                              v421 = nw_endpoint_handler_mode_string(v504);
                              v422 = nw_endpoint_handler_copy_current_path(v504);
                              v423 = nw_endpoint_handler_get_id_string(v507);
                              *buf = 136448258;
                              v514 = "nw_endpoint_proxy_receive_report";
                              v515 = 2082;
                              v516 = v416;
                              v517 = 2082;
                              v518 = v417;
                              v519 = 2082;
                              v520 = v419;
                              v521 = 2082;
                              v522 = v420;
                              v523 = 2082;
                              v524 = v421;
                              v525 = 2114;
                              v526 = v422;
                              v527 = 2082;
                              *v528 = v423;
                              *&v528[8] = 2114;
                              *&v528[10] = v489;
                              _os_log_impl(&dword_181A37000, v225, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Privacy proxy failed, not reporting error ([C%{public}s] %{public}@)", buf, 0x5Cu);
                            }

                            goto LABEL_266;
                          }

                          if ((v224 & 1) == 0)
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v225 = gconnectionLogObj;
                            if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
                            {
                              v226 = nw_endpoint_handler_get_id_string(v504);
                              v227 = nw_endpoint_handler_dry_run_string(v504);
                              v228 = nw_endpoint_handler_copy_endpoint(v504);
                              v229 = nw_endpoint_get_logging_description(v228);
                              v230 = nw_endpoint_handler_state_string(v504);
                              v231 = nw_endpoint_handler_mode_string(v504);
                              v232 = nw_endpoint_handler_copy_current_path(v504);
                              v233 = nw_endpoint_handler_get_id_string(v507);
                              *buf = 136448258;
                              v514 = "nw_endpoint_proxy_receive_report";
                              v515 = 2082;
                              v516 = v226;
                              v517 = 2082;
                              v518 = v227;
                              v519 = 2082;
                              v520 = v229;
                              v521 = 2082;
                              v522 = v230;
                              v523 = 2082;
                              v524 = v231;
                              v525 = 2114;
                              v526 = v232;
                              v527 = 2082;
                              *v528 = v233;
                              *&v528[8] = 2114;
                              *&v528[10] = v489;
                              _os_log_impl(&dword_181A37000, v225, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Privacy proxy failed, not reporting error ([C%{public}s] %{public}@)", buf, 0x5Cu);
                            }

LABEL_266:
                            v234 = 0;
                            v235 = 0;
LABEL_267:

LABEL_268:
                            v9 = v507;
                            v47 = loga;
                            goto LABEL_270;
                          }
                        }

LABEL_269:
                        v234 = 0;
                        v235 = 0;
LABEL_270:
                        nw_endpoint_handler_report(v504, v9, a4, v505);
                        v236 = *(v47 + 2);
                        if (v236)
                        {
                          count = _nw_array_get_count(v236);
                        }

                        else
                        {
                          count = 0;
                        }

                        v238 = *(v47 + 1);
                        if (v238)
                        {
                          v238 = _nw_array_get_count(v238);
                        }

                        if (count == v238)
                        {
                          has_unresolved_proxies = nw_endpoint_proxy_has_unresolved_proxies(v504, 0);
                          v240 = nw_endpoint_handler_get_minimize_logging(v504);
                          v241 = nw_endpoint_handler_get_logging_disabled(v504);
                          if (has_unresolved_proxies)
                          {
                            if (v240)
                            {
                              if (v241)
                              {
                                goto LABEL_257;
                              }

                              if (__nwlog_connection_log::onceToken[0] != -1)
                              {
                                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                              }

                              v179 = gconnectionLogObj;
                              if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
                              {
                                v389 = nw_endpoint_handler_get_id_string(v504);
                                v390 = nw_endpoint_handler_dry_run_string(v504);
                                v391 = nw_endpoint_handler_copy_endpoint(v504);
                                v392 = nw_endpoint_get_logging_description(v391);
                                v393 = nw_endpoint_handler_state_string(v504);
                                v394 = nw_endpoint_handler_mode_string(v504);
                                v395 = nw_endpoint_handler_copy_current_path(v504);
                                *buf = 136447746;
                                v514 = "nw_endpoint_proxy_receive_report";
                                v515 = 2082;
                                v516 = v389;
                                v517 = 2082;
                                v518 = v390;
                                v519 = 2082;
                                v520 = v392;
                                v521 = 2082;
                                v522 = v393;
                                v523 = 2082;
                                v524 = v394;
                                v525 = 2114;
                                v526 = v395;
                                _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed, but still waiting on resolution", buf, 0x48u);
                              }
                            }

                            else
                            {
                              if (v241)
                              {
                                goto LABEL_257;
                              }

                              if (__nwlog_connection_log::onceToken[0] != -1)
                              {
                                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                              }

                              v179 = gconnectionLogObj;
                              if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
                              {
                                v242 = nw_endpoint_handler_get_id_string(v504);
                                v243 = nw_endpoint_handler_dry_run_string(v504);
                                v244 = nw_endpoint_handler_copy_endpoint(v504);
                                v245 = nw_endpoint_get_logging_description(v244);
                                v246 = nw_endpoint_handler_state_string(v504);
                                v247 = nw_endpoint_handler_mode_string(v504);
                                v248 = nw_endpoint_handler_copy_current_path(v504);
                                *buf = 136447746;
                                v514 = "nw_endpoint_proxy_receive_report";
                                v515 = 2082;
                                v516 = v242;
                                v517 = 2082;
                                v518 = v243;
                                v519 = 2082;
                                v520 = v245;
                                v521 = 2082;
                                v522 = v246;
                                v523 = 2082;
                                v524 = v247;
                                v525 = 2114;
                                v526 = v248;
                                _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed, but still waiting on resolution", buf, 0x48u);
                              }
                            }

                            goto LABEL_235;
                          }

                          if (v240)
                          {
                            if (v241)
                            {
                              goto LABEL_304;
                            }

                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v251 = gconnectionLogObj;
                            if (os_log_type_enabled(v251, OS_LOG_TYPE_DEBUG))
                            {
                              v396 = nw_endpoint_handler_get_id_string(v504);
                              v397 = nw_endpoint_handler_dry_run_string(v504);
                              v398 = nw_endpoint_handler_copy_endpoint(v504);
                              v399 = nw_endpoint_get_logging_description(v398);
                              v400 = nw_endpoint_handler_state_string(v504);
                              v401 = nw_endpoint_handler_mode_string(v504);
                              v402 = nw_endpoint_handler_copy_current_path(v504);
                              *buf = 136447746;
                              v514 = "nw_endpoint_proxy_receive_report";
                              v515 = 2082;
                              v516 = v396;
                              v517 = 2082;
                              v518 = v397;
                              v519 = 2082;
                              v520 = v399;
                              v521 = 2082;
                              v522 = v400;
                              v523 = 2082;
                              v524 = v401;
                              v525 = 2114;
                              v526 = v402;
                              _os_log_impl(&dword_181A37000, v251, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed", buf, 0x48u);
                            }

                            goto LABEL_303;
                          }

                          if ((v241 & 1) == 0)
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v251 = gconnectionLogObj;
                            if (os_log_type_enabled(v251, OS_LOG_TYPE_INFO))
                            {
                              v269 = nw_endpoint_handler_get_id_string(v504);
                              v270 = nw_endpoint_handler_dry_run_string(v504);
                              v271 = nw_endpoint_handler_copy_endpoint(v504);
                              v272 = nw_endpoint_get_logging_description(v271);
                              v273 = nw_endpoint_handler_state_string(v504);
                              v274 = nw_endpoint_handler_mode_string(v504);
                              v275 = nw_endpoint_handler_copy_current_path(v504);
                              *buf = 136447746;
                              v514 = "nw_endpoint_proxy_receive_report";
                              v515 = 2082;
                              v516 = v269;
                              v517 = 2082;
                              v518 = v270;
                              v519 = 2082;
                              v520 = v272;
                              v521 = 2082;
                              v522 = v273;
                              v523 = 2082;
                              v524 = v274;
                              v525 = 2114;
                              v526 = v275;
                              _os_log_impl(&dword_181A37000, v251, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all children failed", buf, 0x48u);
                            }

LABEL_303:

                            goto LABEL_304;
                          }

                          goto LABEL_304;
                        }

                        if (v235)
                        {
                          v249 = nw_endpoint_handler_get_minimize_logging(v504);
                          v250 = nw_endpoint_handler_get_logging_disabled(v504);
                          if (v249)
                          {
                            if (v250)
                            {
                              goto LABEL_304;
                            }

                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v251 = gconnectionLogObj;
                            if (os_log_type_enabled(v251, OS_LOG_TYPE_DEBUG))
                            {
                              v382 = nw_endpoint_handler_get_id_string(v504);
                              v383 = nw_endpoint_handler_dry_run_string(v504);
                              v384 = nw_endpoint_handler_copy_endpoint(v504);
                              v385 = nw_endpoint_get_logging_description(v384);
                              v386 = nw_endpoint_handler_state_string(v504);
                              v387 = nw_endpoint_handler_mode_string(v504);
                              v388 = nw_endpoint_handler_copy_current_path(v504);
                              *buf = 136447746;
                              v514 = "nw_endpoint_proxy_receive_report";
                              v515 = 2082;
                              v516 = v382;
                              v517 = 2082;
                              v518 = v383;
                              v519 = 2082;
                              v520 = v385;
                              v521 = 2082;
                              v522 = v386;
                              v523 = 2082;
                              v524 = v387;
                              v525 = 2114;
                              v526 = v388;
                              _os_log_impl(&dword_181A37000, v251, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] children failed, detected origin error", buf, 0x48u);
                            }

                            goto LABEL_303;
                          }

                          if ((v250 & 1) == 0)
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v251 = gconnectionLogObj;
                            if (os_log_type_enabled(v251, OS_LOG_TYPE_INFO))
                            {
                              v252 = nw_endpoint_handler_get_id_string(v504);
                              v253 = nw_endpoint_handler_dry_run_string(v504);
                              v254 = nw_endpoint_handler_copy_endpoint(v504);
                              v255 = nw_endpoint_get_logging_description(v254);
                              v256 = nw_endpoint_handler_state_string(v504);
                              v257 = nw_endpoint_handler_mode_string(v504);
                              v258 = nw_endpoint_handler_copy_current_path(v504);
                              *buf = 136447746;
                              v514 = "nw_endpoint_proxy_receive_report";
                              v515 = 2082;
                              v516 = v252;
                              v517 = 2082;
                              v518 = v253;
                              v519 = 2082;
                              v520 = v255;
                              v521 = 2082;
                              v522 = v256;
                              v523 = 2082;
                              v524 = v257;
                              v525 = 2114;
                              v526 = v258;
                              _os_log_impl(&dword_181A37000, v251, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] children failed, detected origin error", buf, 0x48u);
                            }

                            goto LABEL_303;
                          }

LABEL_304:
                          nw_endpoint_handler_handle_failure(v504);
                          v504->event = 327684;
                          nw_endpoint_handler_report(v504, 0, &v504->event.domain, 0);
                          goto LABEL_257;
                        }

                        if (count == *(v47 + 6))
                        {
                          v259 = nw_endpoint_handler_get_minimize_logging(v504);
                          v260 = nw_endpoint_handler_get_logging_disabled(v504);
                          if (v259)
                          {
                            if (v260)
                            {
                              goto LABEL_313;
                            }

                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v261 = gconnectionLogObj;
                            if (os_log_type_enabled(v261, OS_LOG_TYPE_DEBUG))
                            {
                              v424 = nw_endpoint_handler_get_id_string(v504);
                              v425 = nw_endpoint_handler_dry_run_string(v504);
                              v426 = nw_endpoint_handler_copy_endpoint(v504);
                              v427 = nw_endpoint_get_logging_description(v426);
                              v428 = nw_endpoint_handler_state_string(v504);
                              v429 = nw_endpoint_handler_mode_string(v504);
                              v430 = nw_endpoint_handler_copy_current_path(v504);
                              *buf = 136447746;
                              v514 = "nw_endpoint_proxy_receive_report";
                              v515 = 2082;
                              v516 = v424;
                              v517 = 2082;
                              v518 = v425;
                              v519 = 2082;
                              v520 = v427;
                              v521 = 2082;
                              v522 = v428;
                              v523 = 2082;
                              v524 = v429;
                              v525 = 2114;
                              v526 = v430;
                              _os_log_impl(&dword_181A37000, v261, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all started children failed, start next child.", buf, 0x48u);
                            }

                            goto LABEL_312;
                          }

                          if ((v260 & 1) == 0)
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v261 = gconnectionLogObj;
                            if (os_log_type_enabled(v261, OS_LOG_TYPE_INFO))
                            {
                              v262 = nw_endpoint_handler_get_id_string(v504);
                              v263 = nw_endpoint_handler_dry_run_string(v504);
                              v264 = nw_endpoint_handler_copy_endpoint(v504);
                              v265 = nw_endpoint_get_logging_description(v264);
                              v266 = nw_endpoint_handler_state_string(v504);
                              v267 = nw_endpoint_handler_mode_string(v504);
                              v268 = nw_endpoint_handler_copy_current_path(v504);
                              *buf = 136447746;
                              v514 = "nw_endpoint_proxy_receive_report";
                              v515 = 2082;
                              v516 = v262;
                              v517 = 2082;
                              v518 = v263;
                              v519 = 2082;
                              v520 = v265;
                              v521 = 2082;
                              v522 = v266;
                              v523 = 2082;
                              v524 = v267;
                              v525 = 2114;
                              v526 = v268;
                              _os_log_impl(&dword_181A37000, v261, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all started children failed, start next child.", buf, 0x48u);
                            }

LABEL_312:
                          }
                        }

                        else
                        {
                          if (!v234)
                          {
                            goto LABEL_257;
                          }

                          v276 = nw_endpoint_handler_get_minimize_logging(v504);
                          v277 = nw_endpoint_handler_get_logging_disabled(v504);
                          if (v276)
                          {
                            if (v277)
                            {
                              goto LABEL_313;
                            }

                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v261 = gconnectionLogObj;
                            if (os_log_type_enabled(v261, OS_LOG_TYPE_DEBUG))
                            {
                              v451 = nw_endpoint_handler_get_id_string(v504);
                              v452 = nw_endpoint_handler_dry_run_string(v504);
                              v453 = nw_endpoint_handler_copy_endpoint(v504);
                              v454 = nw_endpoint_get_logging_description(v453);
                              v455 = nw_endpoint_handler_state_string(v504);
                              v456 = nw_endpoint_handler_mode_string(v504);
                              v457 = nw_endpoint_handler_copy_current_path(v504);
                              *buf = 136447746;
                              v514 = "nw_endpoint_proxy_receive_report";
                              v515 = 2082;
                              v516 = v451;
                              v517 = 2082;
                              v518 = v452;
                              v519 = 2082;
                              v520 = v454;
                              v521 = 2082;
                              v522 = v455;
                              v523 = 2082;
                              v524 = v456;
                              v525 = 2114;
                              v526 = v457;
                              _os_log_impl(&dword_181A37000, v261, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] failing open, start next child.", buf, 0x48u);
                            }

                            goto LABEL_312;
                          }

                          if ((v277 & 1) == 0)
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v261 = gconnectionLogObj;
                            if (os_log_type_enabled(v261, OS_LOG_TYPE_INFO))
                            {
                              v278 = nw_endpoint_handler_get_id_string(v504);
                              v279 = nw_endpoint_handler_dry_run_string(v504);
                              v280 = nw_endpoint_handler_copy_endpoint(v504);
                              v281 = nw_endpoint_get_logging_description(v280);
                              v282 = nw_endpoint_handler_state_string(v504);
                              v283 = nw_endpoint_handler_mode_string(v504);
                              v284 = nw_endpoint_handler_copy_current_path(v504);
                              *buf = 136447746;
                              v514 = "nw_endpoint_proxy_receive_report";
                              v515 = 2082;
                              v516 = v278;
                              v517 = 2082;
                              v518 = v279;
                              v519 = 2082;
                              v520 = v281;
                              v521 = 2082;
                              v522 = v282;
                              v523 = 2082;
                              v524 = v283;
                              v525 = 2114;
                              v526 = v284;
                              _os_log_impl(&dword_181A37000, v261, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] failing open, start next child.", buf, 0x48u);
                            }

                            goto LABEL_312;
                          }
                        }

LABEL_313:
                        nw_endpoint_proxy_start_next_child(v504);
                        goto LABEL_257;
                      }

                      v212 = v504;
                      v213 = (*(v504 + 284) & 0x40) == 0;

                      v9 = v507;
                      if (v213)
                      {
                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v214 = gconnectionLogObj;
                        if (os_log_type_enabled(v214, OS_LOG_TYPE_DEBUG))
                        {
                          v215 = nw_endpoint_handler_get_id_string(v212);
                          v216 = nw_endpoint_handler_dry_run_string(v212);
                          v217 = nw_endpoint_handler_copy_endpoint(v212);
                          v218 = nw_endpoint_get_logging_description(v217);
                          v219 = nw_endpoint_handler_state_string(v212);
                          v220 = nw_endpoint_handler_mode_string(v212);
                          v221 = nw_endpoint_handler_copy_current_path(v212);
                          *buf = 136447746;
                          v514 = "nw_endpoint_proxy_receive_report";
                          v515 = 2082;
                          v516 = v215;
                          v517 = 2082;
                          v518 = v216;
                          v519 = 2082;
                          v520 = v218;
                          v521 = 2082;
                          v522 = v219;
                          v523 = 2082;
                          v524 = v220;
                          v525 = 2114;
                          v526 = v221;
                          _os_log_impl(&dword_181A37000, v214, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Passing up other child report", buf, 0x48u);
                        }

                        v9 = v507;
                      }
                    }

                    nw_endpoint_handler_report(v504, v9, a4, v505);
                    goto LABEL_257;
                  }

                  v135 = v504;
                  v136 = v135->privacy_stance == 4;

                  v9 = v507;
                  v47 = loga;
                  if (v136)
                  {
                    goto LABEL_206;
                  }

                  v137 = nw_endpoint_handler_get_minimize_logging(v135);
                  v138 = nw_endpoint_handler_get_logging_disabled(v135);
                  if (v137)
                  {
                    if (v138)
                    {
LABEL_177:
                      if ((v479 & 0x100000000) == 0)
                      {
                        v147 = v135;
                        v135->privacy_stance = 4;

                        v9 = v507;
                        v47 = loga;
                      }

                      if (!uuid_is_null(uu))
                      {
                        v148 = nw_endpoint_handler_copy_current_path(v135);
                        nw_path_report_error_to_agent(v148, uu, 1300);

                        goto LABEL_205;
                      }

                      goto LABEL_206;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v139 = gconnectionLogObj;
                    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
                    {
                      v361 = nw_endpoint_handler_get_id_string(v135);
                      v362 = nw_endpoint_handler_dry_run_string(v135);
                      v363 = nw_endpoint_handler_copy_endpoint(v135);
                      v364 = nw_endpoint_get_logging_description(v363);
                      v365 = nw_endpoint_handler_state_string(v135);
                      v366 = nw_endpoint_handler_mode_string(v135);
                      v367 = nw_endpoint_handler_copy_current_path(v135);
                      *buf = 136447746;
                      v514 = "nw_endpoint_proxy_receive_report";
                      v515 = 2082;
                      v516 = v361;
                      v517 = 2082;
                      v518 = v362;
                      v519 = 2082;
                      v520 = v364;
                      v521 = 2082;
                      v522 = v365;
                      v523 = 2082;
                      v524 = v366;
                      v525 = 2114;
                      v526 = v367;
                      _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Privacy proxy not used, connected directly", buf, 0x48u);
                    }
                  }

                  else
                  {
                    if (v138)
                    {
                      goto LABEL_177;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v139 = gconnectionLogObj;
                    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
                    {
                      v140 = nw_endpoint_handler_get_id_string(v135);
                      v141 = nw_endpoint_handler_dry_run_string(v135);
                      v142 = nw_endpoint_handler_copy_endpoint(v135);
                      v143 = nw_endpoint_get_logging_description(v142);
                      v144 = nw_endpoint_handler_state_string(v135);
                      v145 = nw_endpoint_handler_mode_string(v135);
                      v146 = nw_endpoint_handler_copy_current_path(v135);
                      *buf = 136447746;
                      v514 = "nw_endpoint_proxy_receive_report";
                      v515 = 2082;
                      v516 = v140;
                      v517 = 2082;
                      v518 = v141;
                      v519 = 2082;
                      v520 = v143;
                      v521 = 2082;
                      v522 = v144;
                      v523 = 2082;
                      v524 = v145;
                      v525 = 2114;
                      v526 = v146;
                      _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Privacy proxy not used, connected directly", buf, 0x48u);
                    }
                  }

                  v9 = v507;
                  v47 = loga;
                  goto LABEL_177;
                }

LABEL_107:
                *(v47 + 97) = v79 | 8;
                v80 = v504;
                v81 = (*(v504 + 284) & 0x20) == 0;

                if (!v81)
                {
                  v9 = v507;
                  if (nw_endpoint_handler_get_logging_disabled(v80))
                  {
                    goto LABEL_153;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v84 = gconnectionLogObj;
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
                  {
                    v347 = nw_endpoint_handler_get_id_string(v80);
                    v348 = nw_endpoint_handler_dry_run_string(v80);
                    v349 = nw_endpoint_handler_copy_endpoint(v80);
                    v350 = nw_endpoint_get_logging_description(v349);
                    v351 = nw_endpoint_handler_state_string(v80);
                    v352 = nw_endpoint_handler_mode_string(v80);
                    v353 = nw_endpoint_handler_copy_current_path(v80);
                    *buf = 136447746;
                    v514 = "nw_endpoint_proxy_receive_report";
                    v515 = 2082;
                    v516 = v347;
                    v517 = 2082;
                    v518 = v348;
                    v519 = 2082;
                    v520 = v350;
                    v521 = 2082;
                    v522 = v351;
                    v523 = 2082;
                    v524 = v352;
                    v525 = 2114;
                    v526 = v353;
                    _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] transport finished due to ready state", buf, 0x48u);
                  }

LABEL_152:

                  v9 = v507;
                  v47 = loga;
                  goto LABEL_153;
                }

                v82 = v80;
                v83 = (*(v504 + 284) & 0x40) == 0;

                v9 = v507;
                if (!v83)
                {
                  goto LABEL_153;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v84 = gconnectionLogObj;
                if (!os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_152;
                }

                v85 = v82;

                v86 = v85;
                v87 = (*(v504 + 284) & 1) == 0;

                if (v87)
                {
                  v88 = "";
                }

                else
                {
                  v88 = "dry-run ";
                }

                v89 = nw_endpoint_handler_copy_endpoint(v86);
                v90 = v89;
                if (v89)
                {
                  v91 = _nw_endpoint_get_logging_description(v89);
                }

                else
                {
                  v91 = "<NULL>";
                }

                v92 = v86;
                v93 = v92;
                v94 = v92[30];
                if (v94 > 5)
                {
                  v95 = "unknown-state";
                }

                else
                {
                  v95 = off_1E6A31048[v94];
                }

                v96 = v93;
                v97 = v96;
                v98 = *(delta + 116);
                if (v98 > 2)
                {
                  switch(v98)
                  {
                    case 3:
                      v99 = "proxy";
                      goto LABEL_151;
                    case 4:
                      v99 = "fallback";
                      goto LABEL_151;
                    case 5:
                      v99 = "transform";
                      goto LABEL_151;
                  }
                }

                else
                {
                  switch(v98)
                  {
                    case 0:
                      v99 = "path";
                      goto LABEL_151;
                    case 1:
                      v99 = "resolver";
                      goto LABEL_151;
                    case 2:
                      v99 = nw_endpoint_flow_mode_string(v96[33]);
LABEL_151:

                      v113 = v97;
                      os_unfair_lock_lock(v113 + 28);
                      v114 = v113[8];
                      os_unfair_lock_unlock(v113 + 28);

                      v115 = v85 + 184;
                      v116 = v114;
                      *buf = 136447746;
                      v514 = "nw_endpoint_proxy_receive_report";
                      v515 = 2082;
                      v516 = v115;
                      v517 = 2082;
                      v518 = v88;
                      v519 = 2082;
                      v520 = v91;
                      v521 = 2082;
                      v522 = v95;
                      v523 = 2082;
                      v524 = v99;
                      v525 = 2114;
                      v526 = v116;
                      _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] transport finished due to ready state", buf, 0x48u);

                      goto LABEL_152;
                  }
                }

                v99 = "unknown-mode";
                goto LABEL_151;
              }
            }

            else
            {
              *(v47 + 99) = 1;
              if ((*(v47 + 100) & 4) == 0)
              {
                *(v47 + 100) |= 4u;
                v79 = *(v47 + 97);
                if ((v79 & 8) != 0)
                {
                  goto LABEL_153;
                }

                goto LABEL_107;
              }
            }

            v79 = *(v47 + 97);
            if ((v79 & 8) != 0)
            {
              goto LABEL_153;
            }

            goto LABEL_107;
          }

LABEL_60:
          if (v46 != 2 || !a4 || *a4 != 3)
          {
            goto LABEL_206;
          }

          v65 = a4[1];
          if (v65 == 5)
          {
            goto LABEL_66;
          }

          if (v65 != 14)
          {
            if (v65 != 13)
            {
              goto LABEL_206;
            }

LABEL_66:
            if (!v483)
            {
              *(v47 + 100) |= 4u;
            }

            if ((*(v47 + 97) & 8) != 0)
            {
              goto LABEL_206;
            }

            *(v47 + 97) |= 8u;
            if (((*(v47 + 11) != 0) & v481) == 1)
            {
              v66 = v9;
              v67 = v66;
              if (v66)
              {
                v68 = v66;
                if (v66 != v504)
                {
                  while (1)
                  {
                    v69 = *(v47 + 1);
                    v70 = !v69 || v68 == 0;
                    if (!v70 && _nw_array_contains_object(v69, v68))
                    {
                      break;
                    }

                    v71 = v68;
                    v68 = v71[9];

                    if (v68)
                    {
                      v72 = v68 == v504;
                    }

                    else
                    {
                      v72 = 1;
                    }

                    v47 = loga;
                    if (v72)
                    {
                      goto LABEL_197;
                    }
                  }

                  v68 = v68;

                  v67 = v68;
                  v47 = loga;
                }
              }

              else
              {
                v68 = 0;
              }

LABEL_197:
              deltab = nw_endpoint_proxy_get_timeout_nanos(v67, 0);
              v166 = nw_endpoint_handler_get_minimize_logging(v504);
              v167 = nw_endpoint_handler_get_logging_disabled(v504);
              if (v166)
              {
                if (v167)
                {
                  goto LABEL_204;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v168 = gconnectionLogObj;
                if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
                {
                  v478 = nw_endpoint_handler_get_id_string(v504);
                  v403 = nw_endpoint_handler_dry_run_string(v504);
                  v404 = nw_endpoint_handler_copy_endpoint(v504);
                  v405 = nw_endpoint_get_logging_description(v404);
                  v406 = nw_endpoint_handler_state_string(v504);
                  v407 = nw_endpoint_handler_mode_string(v504);
                  v408 = nw_endpoint_handler_copy_current_path(v504);
                  *buf = 136448002;
                  v514 = "nw_endpoint_proxy_receive_report";
                  v515 = 2082;
                  v516 = v478;
                  v517 = 2082;
                  v518 = v403;
                  v519 = 2082;
                  v520 = v405;
                  v521 = 2082;
                  v522 = v406;
                  v523 = 2082;
                  v524 = v407;
                  v525 = 2114;
                  v526 = v408;
                  v527 = 2048;
                  *v528 = deltab / 0xF4240;
                  _os_log_impl(&dword_181A37000, v168, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] transport finished, pushing out endpoint race by %llums", buf, 0x52u);
                }
              }

              else
              {
                if (v167)
                {
LABEL_204:
                  v176 = *(v47 + 11);
                  v177 = dispatch_time(0x8000000000000000, deltab);
                  nw_queue_set_timer_values(v176, v177, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);

                  goto LABEL_205;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v168 = gconnectionLogObj;
                if (os_log_type_enabled(v168, OS_LOG_TYPE_INFO))
                {
                  v169 = nw_endpoint_handler_get_id_string(v504);
                  v170 = nw_endpoint_handler_dry_run_string(v504);
                  v476 = v168;
                  v171 = nw_endpoint_handler_copy_endpoint(v504);
                  v172 = nw_endpoint_get_logging_description(v171);
                  v173 = nw_endpoint_handler_state_string(v504);
                  v174 = nw_endpoint_handler_mode_string(v504);
                  v175 = nw_endpoint_handler_copy_current_path(v504);
                  *buf = 136448002;
                  v514 = "nw_endpoint_proxy_receive_report";
                  v515 = 2082;
                  v516 = v169;
                  v517 = 2082;
                  v518 = v170;
                  v519 = 2082;
                  v520 = v172;
                  v521 = 2082;
                  v522 = v173;
                  v523 = 2082;
                  v524 = v174;
                  v525 = 2114;
                  v526 = v175;
                  v527 = 2048;
                  *v528 = deltab / 0xF4240;
                  _os_log_impl(&dword_181A37000, v476, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] transport finished, pushing out endpoint race by %llums", buf, 0x52u);

                  v168 = v476;
                }
              }

              v47 = loga;
              goto LABEL_204;
            }

            v149 = nw_endpoint_handler_get_minimize_logging(v504);
            v150 = nw_endpoint_handler_get_logging_disabled(v504);
            if (v149)
            {
              if (v150)
              {
                goto LABEL_206;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v151 = gconnectionLogObj;
              if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
              {
                v375 = nw_endpoint_handler_get_id_string(v504);
                v376 = nw_endpoint_handler_dry_run_string(v504);
                v377 = nw_endpoint_handler_copy_endpoint(v504);
                v378 = nw_endpoint_get_logging_description(v377);
                v379 = nw_endpoint_handler_state_string(v504);
                v380 = nw_endpoint_handler_mode_string(v504);
                v381 = nw_endpoint_handler_copy_current_path(v504);
                *buf = 136447746;
                v514 = "nw_endpoint_proxy_receive_report";
                v515 = 2082;
                v516 = v375;
                v517 = 2082;
                v518 = v376;
                v519 = 2082;
                v520 = v378;
                v521 = 2082;
                v522 = v379;
                v523 = 2082;
                v524 = v380;
                v525 = 2114;
                v526 = v381;
                _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] transport finished", buf, 0x48u);
              }
            }

            else
            {
              if (v150)
              {
                goto LABEL_206;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v151 = gconnectionLogObj;
              if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
              {
                v152 = nw_endpoint_handler_get_id_string(v504);
                v153 = nw_endpoint_handler_dry_run_string(v504);
                v154 = nw_endpoint_handler_copy_endpoint(v504);
                v155 = nw_endpoint_get_logging_description(v154);
                v156 = nw_endpoint_handler_state_string(v504);
                v157 = nw_endpoint_handler_mode_string(v504);
                v158 = nw_endpoint_handler_copy_current_path(v504);
                *buf = 136447746;
                v514 = "nw_endpoint_proxy_receive_report";
                v515 = 2082;
                v516 = v152;
                v517 = 2082;
                v518 = v153;
                v519 = 2082;
                v520 = v155;
                v521 = 2082;
                v522 = v156;
                v523 = 2082;
                v524 = v157;
                v525 = 2114;
                v526 = v158;
                _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] transport finished", buf, 0x48u);
              }
            }

LABEL_449:

            goto LABEL_205;
          }

          *(v47 + 97) |= 0x10u;
          v100 = *(v47 + 11);
          v101 = nw_endpoint_handler_get_minimize_logging(v504);
          v102 = nw_endpoint_handler_get_logging_disabled(v504);
          if (!v100)
          {
            if (v101)
            {
              if (v102)
              {
                goto LABEL_206;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v151 = gconnectionLogObj;
              if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
              {
                v409 = nw_endpoint_handler_get_id_string(v504);
                v410 = nw_endpoint_handler_dry_run_string(v504);
                v411 = nw_endpoint_handler_copy_endpoint(v504);
                v412 = nw_endpoint_get_logging_description(v411);
                v413 = nw_endpoint_handler_state_string(v504);
                v414 = nw_endpoint_handler_mode_string(v504);
                v415 = nw_endpoint_handler_copy_current_path(v504);
                *buf = 136447746;
                v514 = "nw_endpoint_proxy_receive_report";
                v515 = 2082;
                v516 = v409;
                v517 = 2082;
                v518 = v410;
                v519 = 2082;
                v520 = v412;
                v521 = 2082;
                v522 = v413;
                v523 = 2082;
                v524 = v414;
                v525 = 2114;
                v526 = v415;
                _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] proxy flow finished", buf, 0x48u);
              }
            }

            else
            {
              if (v102)
              {
                goto LABEL_206;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v151 = gconnectionLogObj;
              if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
              {
                v159 = nw_endpoint_handler_get_id_string(v504);
                v160 = nw_endpoint_handler_dry_run_string(v504);
                v161 = nw_endpoint_handler_copy_endpoint(v504);
                v162 = nw_endpoint_get_logging_description(v161);
                v163 = nw_endpoint_handler_state_string(v504);
                v164 = nw_endpoint_handler_mode_string(v504);
                v165 = nw_endpoint_handler_copy_current_path(v504);
                *buf = 136447746;
                v514 = "nw_endpoint_proxy_receive_report";
                v515 = 2082;
                v516 = v159;
                v517 = 2082;
                v518 = v160;
                v519 = 2082;
                v520 = v162;
                v521 = 2082;
                v522 = v163;
                v523 = 2082;
                v524 = v164;
                v525 = 2114;
                v526 = v165;
                _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] proxy flow finished", buf, 0x48u);
              }
            }

            goto LABEL_449;
          }

          if (v101)
          {
            if (v102)
            {
LABEL_138:
              v112 = *(v47 + 11);
              if (v112)
              {
                nw_queue_cancel_source(v112, v103);
                *(v47 + 11) = 0;
              }

              goto LABEL_206;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v104 = gconnectionLogObj;
            if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
            {
              v368 = nw_endpoint_handler_get_id_string(v504);
              v369 = nw_endpoint_handler_dry_run_string(v504);
              v370 = nw_endpoint_handler_copy_endpoint(v504);
              v371 = nw_endpoint_get_logging_description(v370);
              v372 = nw_endpoint_handler_state_string(v504);
              v373 = nw_endpoint_handler_mode_string(v504);
              v374 = nw_endpoint_handler_copy_current_path(v504);
              *buf = 136447746;
              v514 = "nw_endpoint_proxy_receive_report";
              v515 = 2082;
              v516 = v368;
              v517 = 2082;
              v518 = v369;
              v519 = 2082;
              v520 = v371;
              v521 = 2082;
              v522 = v372;
              v523 = 2082;
              v524 = v373;
              v525 = 2114;
              v526 = v374;
              _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] proxy flow finished, cancelling timer for fallback attempt", buf, 0x48u);
            }
          }

          else
          {
            if (v102)
            {
              goto LABEL_138;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v104 = gconnectionLogObj;
            if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
            {
              v105 = nw_endpoint_handler_get_id_string(v504);
              v106 = nw_endpoint_handler_dry_run_string(v504);
              v107 = nw_endpoint_handler_copy_endpoint(v504);
              v108 = nw_endpoint_get_logging_description(v107);
              v109 = nw_endpoint_handler_state_string(v504);
              v110 = nw_endpoint_handler_mode_string(v504);
              v111 = nw_endpoint_handler_copy_current_path(v504);
              *buf = 136447746;
              v514 = "nw_endpoint_proxy_receive_report";
              v515 = 2082;
              v516 = v105;
              v517 = 2082;
              v518 = v106;
              v519 = 2082;
              v520 = v108;
              v521 = 2082;
              v522 = v109;
              v523 = 2082;
              v524 = v110;
              v525 = 2114;
              v526 = v111;
              _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] proxy flow finished, cancelling timer for fallback attempt", buf, 0x48u);
            }
          }

          v9 = v507;
          v47 = loga;
          goto LABEL_138;
        }

        v77 = *(v75 + 39) == 1;
      }

      else
      {
        if (v76 != 4)
        {
          goto LABEL_90;
        }

        v77 = 1;
      }

      v483 = v77;
      goto LABEL_93;
    }

    v16 = v504;

    v17 = v16;
    v18 = *(v504 + 284);

    if (v18)
    {
      v19 = "dry-run ";
    }

    else
    {
      v19 = "";
    }

    log = v15;
    v20 = nw_endpoint_handler_copy_endpoint(v17);
    v21 = v20;
    v482 = v20;
    if (v20)
    {
      v22 = _nw_endpoint_get_logging_description(v20);
    }

    else
    {
      v22 = "<NULL>";
    }

    v26 = v17;
    v27 = v26;
    v28 = v26[30];
    if (v28 > 5)
    {
      v29 = "unknown-state";
    }

    else
    {
      v29 = off_1E6A31048[v28];
    }

    v30 = v27;
    v31 = v30;
    v32 = *(delta + 116);
    if (v32 > 2)
    {
      switch(v32)
      {
        case 3:
          v33 = "proxy";
          break;
        case 4:
          v33 = "fallback";
          break;
        case 5:
          v33 = "transform";
          break;
        default:
LABEL_34:
          v33 = "unknown-mode";
          break;
      }
    }

    else
    {
      if (v32)
      {
        if (v32 == 1)
        {
          v33 = "resolver";
          goto LABEL_37;
        }

        if (v32 == 2)
        {
          v486 = nw_endpoint_flow_mode_string(v30[33]);
LABEL_38:

          v34 = v31;
          os_unfair_lock_lock(v34 + 28);
          v35 = v34[8];
          os_unfair_lock_unlock(v34 + 28);

          v488 = v35;
          v484 = nw_endpoint_handler_get_id_string(v507);
          v36 = nw_endpoint_handler_dry_run_string(v507);
          v37 = nw_endpoint_handler_copy_endpoint(v507);
          v38 = v37;
          v480 = a5;
          v39 = v29;
          if (v37)
          {
            v40 = _nw_endpoint_get_logging_description(v37);
            v41 = v22;
          }

          else
          {
            v41 = v22;
            v40 = "<NULL>";
          }

          id_str = v16->id_str;

          v43 = nw_endpoint_handler_state_string(v507);
          v44 = nw_endpoint_handler_mode_string(v507);
          v45 = nw_endpoint_handler_copy_current_path(v507);
          *buf = 136449282;
          v514 = "nw_endpoint_proxy_receive_report";
          v515 = 2082;
          v516 = id_str;
          v517 = 2082;
          v518 = v19;
          v519 = 2082;
          v520 = v41;
          v521 = 2082;
          v522 = v39;
          v523 = 2082;
          v524 = v486;
          v525 = 2114;
          v526 = v488;
          v527 = 2082;
          *v528 = v484;
          *&v528[8] = 2082;
          *&v528[10] = v36;
          *&v528[18] = 2082;
          *&v528[20] = v40;
          *&v528[28] = 2082;
          *&v528[30] = v43;
          v529 = 2082;
          v530 = v44;
          v531 = 2114;
          v532 = v45;
          v15 = log;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received child report: [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x84u);

          a5 = v480;
          goto LABEL_42;
        }

        goto LABEL_34;
      }

      v33 = "path";
    }

LABEL_37:
    v486 = v33;
    goto LABEL_38;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v23 = gLogObj;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    if (v12 > 5)
    {
      v24 = "unknown-mode";
    }

    else
    {
      v24 = off_1E6A31018[v12];
    }

    *buf = 136446722;
    v514 = "nw_endpoint_proxy_receive_report";
    v515 = 2082;
    v516 = v24;
    v517 = 2082;
    v518 = "proxy";
    _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_18:
  v25 = 0;
LABEL_259:

  return v25;
}

uint64_t QUICStreamProtocol.QUICStreamOptions.deepCopy()()
{
  v1 = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
  swift_allocObject();
  *(v2 + 48) = sub_181AACB6C();
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  if (qword_1ED40FF40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(v0 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  swift_beginAccess();

  v5 = QUICConnectionProtocol.QUICConnectionOptions.deepCopy()();

  swift_beginAccess();
  *(v2 + 48) = v5;

  v6 = *(v1 + 40);
  *(v2 + 32) = *(v1 + 32);
  *(v2 + 40) = v6;
  *(v2 + 64) = *(v1 + 64);
  return v2;
}

uint64_t _nw_protocol_options_proxy_endpoint_should_override_stack(uint64_t a1)
{
  v2 = *(*a1 + 136);

  swift_beginAccess();
  if (*(a1 + v2))
  {
    v3 = *(*a1 + 176);
    swift_beginAccess();
    v4 = *(a1 + v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t ___ZL70nw_protocol_instance_registrar_search_edges_for_instance_to_join_innerPK22nw_protocol_identifiermPU25objcproto14OS_nw_endpoint8NSObjectS4_S4_PU27objcproto16OS_nw_parametersS2_bb_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 64) & 1;
    goto LABEL_3;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v28 = "nw_endpoint_edge_is_wildcard";
  v14 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (__nwlog_fault(v14, &type, &v25))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v28 = "nw_endpoint_edge_is_wildcard";
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null edge", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v28 = "nw_endpoint_edge_is_wildcard";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null edge, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_33;
      }

      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_endpoint_edge_is_wildcard";
        _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null edge, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v28 = "nw_endpoint_edge_is_wildcard";
        _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null edge, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_33:
  if (v14)
  {
    free(v14);
  }

  v6 = 0;
LABEL_3:

  if (*(a1 + 80) != v6)
  {
LABEL_12:
    v11 = 1;
    goto LABEL_13;
  }

  v7 = nw_endpoint_edge_get_endpoint(v5);
  v8 = v7;
  if (!v7)
  {
LABEL_11:

    goto LABEL_12;
  }

  v9 = nw_endpoint_copy_registrar_for_identifier(v7, *(a1 + 64), 0);
  if (v9)
  {
    accept_function_for_identifier = nw_protocol_registrar_get_accept_function_for_identifier(*(a1 + 64));
    *(*(*(a1 + 56) + 8) + 24) = nw_protocol_instance_registrar_find_instance_to_join(v9, *(a1 + 64), *(a1 + 72), *(a1 + 81), 1, *(a1 + 80), *(a1 + 32), *(a1 + 40), *(a1 + 48), accept_function_for_identifier);
  }

  if (!*(*(*(a1 + 56) + 8) + 24))
  {

    goto LABEL_11;
  }

  if (gLogDatapath == 1)
  {
    v21 = __nwlog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 40);
      v23 = *(*(*(a1 + 56) + 8) + 24);
      v24 = *(v23 + 16);
      *buf = 136447234;
      v28 = "nw_protocol_instance_registrar_search_edges_for_instance_to_join_inner_block_invoke";
      v29 = 2112;
      v30 = v22;
      v31 = 2080;
      v32 = v24;
      v33 = 2048;
      v34 = v23;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s destination %@ found protocol to join %s (%p) in endpoint %@", buf, 0x34u);
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

uint64_t nw_endpoint_copy_registrar_for_identifier(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    if (a2)
    {
      v7 = _nw_endpoint_copy_registrar_for_identifier(v5, a2, a3);
      goto LABEL_4;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_endpoint_copy_registrar_for_identifier";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v10, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v25 = "nw_endpoint_copy_registrar_for_identifier";
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null identifier", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v22 != 1)
      {
        v11 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v25 = "nw_endpoint_copy_registrar_for_identifier";
          _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null identifier, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v25 = "nw_endpoint_copy_registrar_for_identifier";
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null identifier, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v19)
      {
        *buf = 136446466;
        v25 = "nw_endpoint_copy_registrar_for_identifier";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_endpoint_copy_registrar_for_identifier";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v10, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v25 = "nw_endpoint_copy_registrar_for_identifier";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null endpoint", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v22 != 1)
      {
        v11 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v25 = "nw_endpoint_copy_registrar_for_identifier";
          _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v25 = "nw_endpoint_copy_registrar_for_identifier";
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v17)
      {
        *buf = 136446466;
        v25 = "nw_endpoint_copy_registrar_for_identifier";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_4:

  return v7;
}

void nw_frame_set_compression_generation_count(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_frame_set_compression_generation_count";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v2, &type, &v14))
    {
      goto LABEL_18;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v17 = "nw_frame_set_compression_generation_count";
      v5 = "%{public}s called with null frame";
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v13 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v17 = "nw_frame_set_compression_generation_count";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (!v13)
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v17 = "nw_frame_set_compression_generation_count";
      v5 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v17 = "nw_frame_set_compression_generation_count";
      v5 = "%{public}s called with null frame, backtrace limit exceeded";
    }

LABEL_16:
    v10 = v3;
    v11 = v4;
LABEL_17:
    _os_log_impl(&dword_181A37000, v10, v11, v5, buf, 0xCu);
    goto LABEL_18;
  }

  if ((*(a1 + 204) & 0x40) == 0)
  {
    *(a1 + 192) = a2;
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v17 = "__nw_frame_set_compression_generation_count";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v2, &type, &v14))
  {
LABEL_18:
    if (!v2)
    {
      return;
    }

    goto LABEL_19;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    v4 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_18;
    }

    *buf = 136446210;
    v17 = "__nw_frame_set_compression_generation_count";
    v5 = "%{public}s Attempt to set generation-count on a chain-member";
    goto LABEL_16;
  }

  if (v14 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    v4 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_18;
    }

    *buf = 136446210;
    v17 = "__nw_frame_set_compression_generation_count";
    v5 = "%{public}s Attempt to set generation-count on a chain-member, backtrace limit exceeded";
    goto LABEL_16;
  }

  v6 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  v8 = type;
  v9 = os_log_type_enabled(gLogObj, type);
  if (!v6)
  {
    if (v9)
    {
      *buf = 136446210;
      v17 = "__nw_frame_set_compression_generation_count";
      v5 = "%{public}s Attempt to set generation-count on a chain-member, no backtrace";
      v10 = v7;
      v11 = v8;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v9)
  {
    *buf = 136446466;
    v17 = "__nw_frame_set_compression_generation_count";
    v18 = 2082;
    v19 = v6;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s Attempt to set generation-count on a chain-member, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v6);
  if (v2)
  {
LABEL_19:
    free(v2);
  }
}

void nw_protocol_instance_process_external_input(void *a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_instance_process_external_input";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v17, &type, &v30))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_instance_process_external_input";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v23 = type;
      v24 = os_log_type_enabled(v18, type);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          v33 = "nw_protocol_instance_process_external_input";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_62:
        if (!v17)
        {
          goto LABEL_28;
        }

LABEL_63:
        free(v17);
        goto LABEL_28;
      }

      if (v24)
      {
        *buf = 136446210;
        v33 = "nw_protocol_instance_process_external_input";
        _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_instance_process_external_input";
        _os_log_impl(&dword_181A37000, v18, v28, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_61:

    goto LABEL_62;
  }

  if (v4)
  {
    v6 = v3[411];
    if ((v6 & 0x10) == 0 || v3[413] < 0)
    {
      goto LABEL_25;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446722;
    v33 = "nw_protocol_instance_process_external_input";
    v34 = 2082;
    v35 = v3 + 415;
    v36 = 2080;
    v37 = " ";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v8, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446722;
          v33 = "nw_protocol_instance_process_external_input";
          v34 = 2082;
          v35 = v3 + 415;
          v36 = 2080;
          v37 = " ";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s %{public}s%snested nw_protocol_instance_process_external_input", buf, 0x20u);
        }
      }

      else if (v30 == 1)
      {
        v11 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v12 = type;
        v13 = os_log_type_enabled(v9, type);
        if (v11)
        {
          if (v13)
          {
            *buf = 136446978;
            v33 = "nw_protocol_instance_process_external_input";
            v34 = 2082;
            v35 = v3 + 415;
            v36 = 2080;
            v37 = " ";
            v38 = 2082;
            v39 = v11;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s %{public}s%snested nw_protocol_instance_process_external_input, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v11);
          if (!v8)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        if (v13)
        {
          *buf = 136446722;
          v33 = "nw_protocol_instance_process_external_input";
          v34 = 2082;
          v35 = v3 + 415;
          v36 = 2080;
          v37 = " ";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s %{public}s%snested nw_protocol_instance_process_external_input, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v14 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446722;
          v33 = "nw_protocol_instance_process_external_input";
          v34 = 2082;
          v35 = v3 + 415;
          v36 = 2080;
          v37 = " ";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s %{public}s%snested nw_protocol_instance_process_external_input, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v8)
    {
LABEL_24:
      v6 = v3[411];
LABEL_25:
      v3[411] = v6 | 0x10;
      v15 = *(*(*(v3 + 1) + 80) + 80);
      if (v15)
      {
        v15(v3);
      }

      v5[2](v5);
      nw_protocol_instance_flush_batched_input_internal(v3);
      goto LABEL_28;
    }

LABEL_23:
    free(v8);
    goto LABEL_24;
  }

  v20 = __nwlog_obj();
  *buf = 136446210;
  v33 = "nw_protocol_instance_process_external_input";
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (!__nwlog_fault(v17, &type, &v30))
  {
    goto LABEL_62;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v18 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v18, type))
    {
      *buf = 136446210;
      v33 = "nw_protocol_instance_process_external_input";
      _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null block", buf, 0xCu);
    }

    goto LABEL_61;
  }

  if (v30 != 1)
  {
    v18 = __nwlog_obj();
    v29 = type;
    if (os_log_type_enabled(v18, type))
    {
      *buf = 136446210;
      v33 = "nw_protocol_instance_process_external_input";
      _os_log_impl(&dword_181A37000, v18, v29, "%{public}s called with null block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_61;
  }

  v25 = __nw_create_backtrace_string();
  v18 = __nwlog_obj();
  v26 = type;
  v27 = os_log_type_enabled(v18, type);
  if (!v25)
  {
    if (v27)
    {
      *buf = 136446210;
      v33 = "nw_protocol_instance_process_external_input";
      _os_log_impl(&dword_181A37000, v18, v26, "%{public}s called with null block, no backtrace", buf, 0xCu);
    }

    goto LABEL_61;
  }

  if (v27)
  {
    *buf = 136446466;
    v33 = "nw_protocol_instance_process_external_input";
    v34 = 2082;
    v35 = v25;
    _os_log_impl(&dword_181A37000, v18, v26, "%{public}s called with null block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v25);
  if (v17)
  {
    goto LABEL_63;
  }

LABEL_28:
}

uint64_t sub_181CBD830()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A060);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t nw_http_field_name_find_well_known(unint64_t a1)
{
  if (a1)
  {
    v1 = (a1 - ":method") >> 5;
    if (((a1 - ":method") & 0x1F) != 0)
    {
      LODWORD(v1) = -1;
    }

    if (a1 <= "Multipath")
    {
      v2 = v1;
    }

    else
    {
      v2 = -1;
    }

    if (a1 >= ":method")
    {
      return v2;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v4 = __nwlog_obj();
    os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    v5 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v5);
    if (result)
    {
      __break(1u);
    }

    else
    {
      free(v5);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_181CBD984(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = sub_182AD31C8();
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = sub_182AD3CF8();
      }

      v4 = *v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 8);
}

uint64_t sub_181CBDA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_182AD44E8();
  sub_182AD30E8();
  v5 = sub_182AD4558();

  return a3(a1, a2, v5);
}

uint64_t sub_181CBDA98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5B8);
  v36 = a2;
  result = sub_182AD3ED8();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 4 * v21);
      v26 = *v25;
      v37 = v25[1];
      if ((v36 & 1) == 0)
      {
      }

      sub_182AD44E8();
      sub_182AD30E8();
      result = sub_182AD4558();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 4 * v15);
      *v17 = v26;
      v17[1] = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_181CBDD50(unint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 4 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void nw_http_request_set_header_fields(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
LABEL_3:
      _nw_http_request_set_header_fields(v3, v5);

      return;
    }
  }

  else
  {
    v6 = __nwlog_obj();
    os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v7 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v7))
    {
      goto LABEL_8;
    }

    free(v7);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v8 = __nwlog_obj();
  os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  v9 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v9))
  {
    free(v9);
    goto LABEL_3;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_181CBDF64(void (*a1)(uint64_t *))
{
  swift_beginAccess();
  v4 = *(v1 + 16);

  a1(&v4);
}

void *nw_http_create_metadata_for_request(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  singleton = _nw_protocol_metadata_create_singleton();
  if (singleton)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = __nw_http_create_metadata_for_request_block_invoke;
    v15 = &unk_1E6A3A950;
    v16 = v1;
    handle = _nw_protocol_metadata_get_handle(singleton);
    if (handle)
    {
      v14(v13, handle);
    }

    v4 = singleton;

    goto LABEL_7;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_http_create_metadata_for_request";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v7, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v20 = "nw_http_create_metadata_for_request";
        v10 = "%{public}s called with null metadata";
LABEL_21:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v17 == 1)
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
            v20 = "nw_http_create_metadata_for_request";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (!v12)
        {
          goto LABEL_22;
        }

        *buf = 136446210;
        v20 = "nw_http_create_metadata_for_request";
        v10 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_21;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v20 = "nw_http_create_metadata_for_request";
        v10 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_22:
  }

LABEL_23:
  if (v7)
  {
    free(v7);
  }

LABEL_7:

  return singleton;
}

NWConcrete_nw_write_request *nw_write_request_create_clone(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ((v1[16] & 4) != 0)
  {
    v6 = objc_alloc_init(NWConcrete_nw_write_request);
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->data, v1[7]);
      objc_storeStrong(&v7->context, v1[8]);
      v8 = v1[16] & 1 | *(v7 + 128) & 0xFE | 4;
      *(v7 + 128) = v8;
      *&v7->relative_priority = v1[15];
      *(v7 + 128) = v1[16] & 8 | v8 & 0xF7;
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_35515);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        data = v7->data;
        if (data)
        {
          dispatch_data_get_size(data);
        }

        context = v7->context;
        if (context)
        {
          nw_content_context_get_is_final(context);
        }

        kdebug_trace();
      }

      v9 = v7;
      goto LABEL_47;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    *buf = 136446210;
    v30 = "nw_write_request_create_clone";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v14, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v30 = "nw_write_request_create_clone";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed", buf, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v19 = backtrace_string;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = gLogObj;
          v21 = type;
          if (os_log_type_enabled(v20, type))
          {
            *buf = 136446466;
            v30 = "nw_write_request_create_clone";
            v31 = 2082;
            v32 = v19;
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          if (!v14)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

        v15 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v30 = "nw_write_request_create_clone";
          _os_log_impl(&dword_181A37000, v15, v23, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v22 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v30 = "nw_write_request_create_clone";
          _os_log_impl(&dword_181A37000, v15, v22, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v14)
    {
LABEL_47:

      goto LABEL_48;
    }

LABEL_46:
    free(v14);
    goto LABEL_47;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  *buf = 136446210;
  v30 = "nw_write_request_create_clone";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (__nwlog_fault(v3, &type, &v27))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v30 = "nw_write_request_create_clone";
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s Only idempotent write requests may be cloned", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      v10 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v4, type);
      if (v10)
      {
        if (v12)
        {
          *buf = 136446466;
          v30 = "nw_write_request_create_clone";
          v31 = 2082;
          v32 = v10;
          _os_log_impl(&dword_181A37000, v4, v11, "%{public}s Only idempotent write requests may be cloned, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v10);
        if (!v3)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (v12)
      {
        *buf = 136446210;
        v30 = "nw_write_request_create_clone";
        _os_log_impl(&dword_181A37000, v4, v11, "%{public}s Only idempotent write requests may be cloned, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v30 = "nw_write_request_create_clone";
        _os_log_impl(&dword_181A37000, v4, v17, "%{public}s Only idempotent write requests may be cloned, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v3)
  {
LABEL_37:
    free(v3);
  }

LABEL_38:
  v7 = 0;
LABEL_48:

  return v7;
}

id nw_path_copy_proxy_config_for_agent_uuid(const unsigned __int8 *a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!uuid_is_null(a1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v21 = __Block_byref_object_copy__71486;
    v22 = __Block_byref_object_dispose__71487;
    v23 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __nw_path_copy_proxy_config_for_agent_uuid_block_invoke;
    v16[3] = &unk_1E6A39BB0;
    v17 = a2;
    v16[4] = buf;
    v16[5] = a1;
    nw_path_access_agent_cache(v5, v16);
    v6 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_path_copy_proxy_config_for_agent_uuid";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v9, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_copy_proxy_config_for_agent_uuid";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null (!uuid_is_null(agent_uuid))", buf, 0xCu);
      }
    }

    else if (v18 == 1)
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
          *&buf[4] = "nw_path_copy_proxy_config_for_agent_uuid";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null (!uuid_is_null(agent_uuid)), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v14)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_copy_proxy_config_for_agent_uuid";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null (!uuid_is_null(agent_uuid)), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_copy_proxy_config_for_agent_uuid";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null (!uuid_is_null(agent_uuid)), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_3:

  return v6;
}

void sub_181CBED64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZL43nw_endpoint_proxy_check_for_companion_proxyPU22objcproto11OS_nw_array8NSObject_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!nw_proxy_config_get_is_companion_proxy(v5))
  {
    goto LABEL_7;
  }

  v6 = *(*(a1 + 32) + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    objc_storeStrong(v7, a3);
LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *(*(*(a1 + 32) + 8) + 40);
    v13 = 136446722;
    v14 = "nw_endpoint_proxy_check_for_companion_proxy_block_invoke";
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Can only have a single companion proxy, got %@ and %@", &v13, 0x20u);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

void nw_endpoint_proxy_add_config_if_applicable(void *a1, void *a2, void *a3, void *a4, void *a5, int a6)
{
  v181 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v149 = a4;
  v150 = a5;
  v148 = v11;
  if (v12)
  {
    *type = 0;
    v158 = type;
    v159 = 0x3032000000;
    v160 = __Block_byref_object_copy__26627;
    v161 = __Block_byref_object_dispose__26628;
    v162 = v12;
    v151 = nw_endpoint_handler_copy_proxy(v10);
    if (*(v151 + 7))
    {
      v146 = nw_endpoint_handler_copy_endpoint(v10);
      v147 = nw_endpoint_handler_copy_current_path(v10);
      if ((nw_proxy_config_supports_connection(*(v158 + 5), v146, v11, v147) & 1) == 0)
      {
        if ((nw_endpoint_handler_get_logging_disabled(v10) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v24 = gconnectionLogObj;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            id_string = nw_endpoint_handler_get_id_string(v10);
            v26 = nw_endpoint_handler_dry_run_string(v10);
            v27 = nw_endpoint_handler_copy_endpoint(v10);
            v28 = v27;
            if (v27)
            {
              logging_description = _nw_endpoint_get_logging_description(v27);
            }

            else
            {
              logging_description = "<NULL>";
            }

            v40 = nw_endpoint_handler_state_string(v10);
            v41 = nw_endpoint_handler_mode_string(v10);
            v42 = nw_endpoint_handler_copy_current_path(v10);
            v43 = *(v158 + 5);
            *buf = 136448002;
            v166 = "nw_endpoint_proxy_add_config_if_applicable";
            v167 = 2082;
            v168 = id_string;
            v169 = 2082;
            v170 = v26;
            v171 = 2082;
            v172 = logging_description;
            v173 = 2082;
            v174 = v40;
            v175 = 2082;
            v176 = v41;
            v177 = 2114;
            v178 = v42;
            v179 = 2114;
            v180 = v43;
            _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Skipping proxy %{public}@, not eligible", buf, 0x52u);
          }
        }

        goto LABEL_162;
      }

      v13 = nw_proxy_config_get_type(*(v158 + 5));
      is_opaque = nw_parameters_get_https_proxy_is_opaque(v11);
      if (v13 == 4001)
      {
        v15 = is_opaque;
        if (nw_parameters_get_https_proxy_over_tls(v11))
        {
          minimize_logging = nw_endpoint_handler_get_minimize_logging(v10);
          logging_disabled = nw_endpoint_handler_get_logging_disabled(v10);
          if (minimize_logging)
          {
            if (logging_disabled)
            {
LABEL_44:
              v56 = nw_proxy_config_copy(*(v158 + 5));
              v57 = *(v158 + 5);
              *(v158 + 5) = v56;

              nw_proxy_config_set_type(*(v158 + 5), 4002);
              *v156 = 4;
              v58 = *(v158 + 5);
              if (nw_protocol_setup_tcp_definition_onceToken != -1)
              {
                dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
              }

              v59 = g_tcp_definition;
              v60 = nw_proxy_config_copy_protocol_stack(v58, v59, v156);

              v61 = v148;
              if (v61)
              {
                v62 = nw_protocol_boringssl_copy_definition();
                options = nw_protocol_create_options(v62);

                if (_nw_parameters_get_should_trust_invalid_certificates(v61))
                {
                  v64 = options;
                  sec_protocol_options_set_peer_authentication_required(v64, 0);
                }

                else
                {
                  v64 = options;
                }

LABEL_50:

                nw_protocol_stack_append_application_protocol(v60, v64);
LABEL_128:
                if ((a6 & 1) == 0)
                {
                  goto LABEL_129;
                }

                goto LABEL_162;
              }

              v93 = __nwlog_obj();
              *buf = 136446210;
              v166 = "nw_endpoint_proxy_copy_tls_proxy_options";
              v94 = _os_log_send_and_compose_impl();

              v164 = OS_LOG_TYPE_ERROR;
              v163 = 0;
              if (__nwlog_fault(v94, &v164, &v163))
              {
                if (v164 == OS_LOG_TYPE_FAULT)
                {
                  v95 = __nwlog_obj();
                  v96 = v164;
                  if (os_log_type_enabled(v95, v164))
                  {
                    *buf = 136446210;
                    v166 = "nw_endpoint_proxy_copy_tls_proxy_options";
                    _os_log_impl(&dword_181A37000, v95, v96, "%{public}s called with null parameters", buf, 0xCu);
                  }
                }

                else
                {
                  if (v163 == 1)
                  {
                    backtrace_string = __nw_create_backtrace_string();
                    v106 = __nwlog_obj();
                    v107 = v164;
                    v108 = os_log_type_enabled(v106, v164);
                    if (backtrace_string)
                    {
                      if (v108)
                      {
                        *buf = 136446466;
                        v166 = "nw_endpoint_proxy_copy_tls_proxy_options";
                        v167 = 2082;
                        v168 = backtrace_string;
                        _os_log_impl(&dword_181A37000, v106, v107, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(backtrace_string);
                    }

                    else
                    {
                      if (v108)
                      {
                        *buf = 136446210;
                        v166 = "nw_endpoint_proxy_copy_tls_proxy_options";
                        _os_log_impl(&dword_181A37000, v106, v107, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
                      }
                    }

                    goto LABEL_171;
                  }

                  v95 = __nwlog_obj();
                  v139 = v164;
                  if (os_log_type_enabled(v95, v164))
                  {
                    *buf = 136446210;
                    v166 = "nw_endpoint_proxy_copy_tls_proxy_options";
                    _os_log_impl(&dword_181A37000, v95, v139, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
                  }
                }
              }

LABEL_171:
              if (v94)
              {
                free(v94);
              }

              v64 = 0;
              goto LABEL_50;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v18 = gconnectionLogObj;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v86 = nw_endpoint_handler_get_id_string(v10);
              v87 = nw_endpoint_handler_dry_run_string(v10);
              v88 = nw_endpoint_handler_copy_endpoint(v10);
              v89 = nw_endpoint_get_logging_description(v88);
              v90 = nw_endpoint_handler_state_string(v10);
              v91 = nw_endpoint_handler_mode_string(v10);
              v92 = nw_endpoint_handler_copy_current_path(v10);
              *buf = 136447746;
              v166 = "nw_endpoint_proxy_add_config_if_applicable";
              v167 = 2082;
              v168 = v86;
              v169 = 2082;
              v170 = v87;
              v171 = 2082;
              v172 = v89;
              v173 = 2082;
              v174 = v90;
              v175 = 2082;
              v176 = v91;
              v177 = 2114;
              v178 = v92;
              _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Running HTTP Connect proxy over TLS", buf, 0x48u);
            }
          }

          else
          {
            if (logging_disabled)
            {
              goto LABEL_44;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v18 = gconnectionLogObj;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = nw_endpoint_handler_get_id_string(v10);
              v20 = nw_endpoint_handler_dry_run_string(v10);
              v21 = nw_endpoint_handler_copy_endpoint(v10);
              v22 = v21;
              if (v21)
              {
                v23 = _nw_endpoint_get_logging_description(v21);
              }

              else
              {
                v23 = "<NULL>";
              }

              v53 = nw_endpoint_handler_state_string(v10);
              v54 = nw_endpoint_handler_mode_string(v10);
              v55 = nw_endpoint_handler_copy_current_path(v10);
              *buf = 136447746;
              v166 = "nw_endpoint_proxy_add_config_if_applicable";
              v167 = 2082;
              v168 = v19;
              v169 = 2082;
              v170 = v20;
              v171 = 2082;
              v172 = v23;
              v173 = 2082;
              v174 = v53;
              v175 = 2082;
              v176 = v54;
              v177 = 2114;
              v178 = v55;
              _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Running HTTP Connect proxy over TLS", buf, 0x48u);
            }
          }

          goto LABEL_44;
        }

        if (v15)
        {
          if (nw_proxy_config_override_opaque_https(*(v158 + 5)))
          {
            v30 = nw_endpoint_handler_get_minimize_logging(v10);
            v31 = nw_endpoint_handler_get_logging_disabled(v10);
            if (v30)
            {
              if (v31)
              {
                goto LABEL_125;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v32 = gconnectionLogObj;
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                v109 = nw_endpoint_handler_get_id_string(v10);
                v110 = nw_endpoint_handler_dry_run_string(v10);
                v111 = nw_endpoint_handler_copy_endpoint(v10);
                v112 = nw_endpoint_get_logging_description(v111);
                v113 = nw_endpoint_handler_state_string(v10);
                v114 = nw_endpoint_handler_mode_string(v10);
                v115 = nw_endpoint_handler_copy_current_path(v10);
                *buf = 136447746;
                v166 = "nw_endpoint_proxy_add_config_if_applicable";
                v167 = 2082;
                v168 = v109;
                v169 = 2082;
                v170 = v110;
                v171 = 2082;
                v172 = v112;
                v173 = 2082;
                v174 = v113;
                v175 = 2082;
                v176 = v114;
                v177 = 2114;
                v178 = v115;
                _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Client overrode HTTP Connect proxies to be transparent", buf, 0x48u);
              }

              goto LABEL_27;
            }

            if ((v31 & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v32 = gconnectionLogObj;
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                v33 = nw_endpoint_handler_get_id_string(v10);
                v34 = nw_endpoint_handler_dry_run_string(v10);
                v35 = nw_endpoint_handler_copy_endpoint(v10);
                v36 = nw_endpoint_get_logging_description(v35);
                v37 = nw_endpoint_handler_state_string(v10);
                v38 = nw_endpoint_handler_mode_string(v10);
                v39 = nw_endpoint_handler_copy_current_path(v10);
                *buf = 136447746;
                v166 = "nw_endpoint_proxy_add_config_if_applicable";
                v167 = 2082;
                v168 = v33;
                v169 = 2082;
                v170 = v34;
                v171 = 2082;
                v172 = v36;
                v173 = 2082;
                v174 = v37;
                v175 = 2082;
                v176 = v38;
                v177 = 2114;
                v178 = v39;
                _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Client overrode HTTP Connect proxies to be transparent", buf, 0x48u);
              }

LABEL_27:
            }

LABEL_125:
            if ((*(v151 + 98) & 2) != 0 && ((*(v151 + 97) & 2) == 0) != a6)
            {
LABEL_129:
              if (nw_proxy_config_get_mode(*(v158 + 5)) == 1 && (v116 = nw_proxy_config_use_over_privacy_proxy(*(v158 + 5)), v149) && v116 && !_nw_array_is_empty(v149))
              {
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 3221225472;
                aBlock[2] = ___ZL42nw_endpoint_proxy_add_config_if_applicableP30NWConcrete_nw_endpoint_handlerPU27objcproto16OS_nw_parameters8NSObjectPU29objcproto18OS_nw_proxy_configS1_PU22objcproto11OS_nw_arrayS1_S5_b_block_invoke;
                aBlock[3] = &unk_1E6A35E30;
                v155 = type;
                v153 = v151;
                v154 = v10;
                _nw_array_apply(v149, aBlock);

                merged = v153;
              }

              else if (v150 && nw_proxy_config_is_privacy_proxy(*(v158 + 5), 0))
              {
                merged = nw_proxy_config_create_merged(*(v158 + 5), v150);
                v118 = *(v151 + 7);
                if (v118 && merged)
                {
                  _nw_array_append(v118, merged);
                }

                if ((nw_endpoint_handler_get_logging_disabled(v10) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v119 = gconnectionLogObj;
                  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
                  {
                    v120 = nw_endpoint_handler_get_id_string(v10);
                    v121 = nw_endpoint_handler_dry_run_string(v10);
                    v122 = nw_endpoint_handler_copy_endpoint(v10);
                    v123 = v122;
                    if (v122)
                    {
                      v145 = _nw_endpoint_get_logging_description(v122);
                    }

                    else
                    {
                      v145 = "<NULL>";
                    }

                    v135 = nw_endpoint_handler_state_string(v10);
                    v136 = nw_endpoint_handler_mode_string(v10);
                    v137 = nw_endpoint_handler_copy_current_path(v10);
                    v138 = *(v158 + 5);
                    *buf = 136448002;
                    v166 = "nw_endpoint_proxy_add_config_if_applicable";
                    v167 = 2082;
                    v168 = v120;
                    v169 = 2082;
                    v170 = v121;
                    v171 = 2082;
                    v172 = v145;
                    v173 = 2082;
                    v174 = v135;
                    v175 = 2082;
                    v176 = v136;
                    v177 = 2114;
                    v178 = v137;
                    v179 = 2114;
                    v180 = v138;
                    _os_log_impl(&dword_181A37000, v119, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Adding proxy merged with companion %{public}@", buf, 0x52u);
                  }
                }
              }

              else
              {
                v124 = *(v151 + 7);
                if (v124)
                {
                  v125 = *(v158 + 5);
                  if (v125)
                  {
                    _nw_array_append(v124, v125);
                  }
                }

                if (nw_endpoint_handler_get_logging_disabled(v10))
                {
                  goto LABEL_160;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                merged = gconnectionLogObj;
                if (os_log_type_enabled(&merged->super, OS_LOG_TYPE_DEBUG))
                {
                  v126 = nw_endpoint_handler_get_id_string(v10);
                  v127 = nw_endpoint_handler_dry_run_string(v10);
                  v128 = nw_endpoint_handler_copy_endpoint(v10);
                  v129 = v128;
                  if (v128)
                  {
                    v130 = _nw_endpoint_get_logging_description(v128);
                  }

                  else
                  {
                    v130 = "<NULL>";
                  }

                  v131 = nw_endpoint_handler_state_string(v10);
                  v132 = nw_endpoint_handler_mode_string(v10);
                  v133 = nw_endpoint_handler_copy_current_path(v10);
                  v134 = *(v158 + 5);
                  *buf = 136448002;
                  v166 = "nw_endpoint_proxy_add_config_if_applicable";
                  v167 = 2082;
                  v168 = v126;
                  v169 = 2082;
                  v170 = v127;
                  v171 = 2082;
                  v172 = v130;
                  v173 = 2082;
                  v174 = v131;
                  v175 = 2082;
                  v176 = v132;
                  v177 = 2114;
                  v178 = v133;
                  v179 = 2114;
                  v180 = v134;
                  _os_log_impl(&dword_181A37000, &merged->super, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Adding proxy %{public}@", buf, 0x52u);
                }
              }

LABEL_160:
              if (nw_proxy_config_prohibits_direct(*(v158 + 5)))
              {
                *(v151 + 96) |= 0x40u;
              }
            }

LABEL_162:

LABEL_163:
            _Block_object_dispose(type, 8);

            goto LABEL_164;
          }

          v44 = nw_proxy_config_copy(*(v158 + 5));
          v45 = *(v158 + 5);
          *(v158 + 5) = v44;

          v13 = 2002;
          nw_proxy_config_set_type(*(v158 + 5), 2002);
        }

        else
        {
          v13 = 4001;
        }

        v46 = nw_endpoint_handler_get_minimize_logging(v10);
        v47 = nw_endpoint_handler_get_logging_disabled(v10);
        if (v46)
        {
          if (v47)
          {
            goto LABEL_56;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v97 = gconnectionLogObj;
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
          {
            v141 = nw_endpoint_handler_get_id_string(v10);
            v143 = nw_endpoint_handler_dry_run_string(v10);
            v98 = nw_endpoint_handler_copy_endpoint(v10);
            v99 = nw_endpoint_get_logging_description(v98);
            v100 = nw_endpoint_handler_state_string(v10);
            v101 = nw_endpoint_handler_mode_string(v10);
            v102 = nw_endpoint_handler_copy_current_path(v10);
            v103 = v102;
            *buf = 136448002;
            v166 = "nw_endpoint_proxy_add_config_if_applicable";
            v104 = "not ";
            v168 = v141;
            v167 = 2082;
            if (v15)
            {
              v104 = "";
            }

            v169 = 2082;
            v170 = v143;
            v171 = 2082;
            v172 = v99;
            v173 = 2082;
            v174 = v100;
            v175 = 2082;
            v176 = v101;
            v177 = 2114;
            v178 = v102;
            v179 = 2082;
            v180 = v104;
            v48 = v97;
            _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] HTTP Connect proxies are %{public}sopaque", buf, 0x52u);
          }

          else
          {
            v48 = v97;
          }

          goto LABEL_55;
        }

        if ((v47 & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v48 = gconnectionLogObj;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v49 = nw_endpoint_handler_get_id_string(v10);
            v50 = nw_endpoint_handler_dry_run_string(v10);
            v51 = nw_endpoint_handler_copy_endpoint(v10);
            v52 = v51;
            v142 = v50;
            if (v51)
            {
              v140 = _nw_endpoint_get_logging_description(v51);
            }

            else
            {
              v140 = "<NULL>";
            }

            v65 = nw_endpoint_handler_state_string(v10);
            v66 = nw_endpoint_handler_mode_string(v10);
            v67 = nw_endpoint_handler_copy_current_path(v10);
            v68 = v67;
            *buf = 136448002;
            v166 = "nw_endpoint_proxy_add_config_if_applicable";
            v69 = "not ";
            v168 = v49;
            v167 = 2082;
            if (v15)
            {
              v69 = "";
            }

            v169 = 2082;
            v170 = v142;
            v171 = 2082;
            v172 = v140;
            v173 = 2082;
            v174 = v65;
            v175 = 2082;
            v176 = v66;
            v177 = 2114;
            v178 = v67;
            v179 = 2082;
            v180 = v69;
            _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] HTTP Connect proxies are %{public}sopaque", buf, 0x52u);
          }

LABEL_55:
        }
      }

LABEL_56:
      if (v13 != 4001 && v13 != 2002)
      {
        if (v13 == 2001 && (*(v151 + 98) & 1) == 0)
        {
          goto LABEL_162;
        }

        goto LABEL_128;
      }

      goto LABEL_125;
    }

    v74 = __nwlog_obj();
    *buf = 136446210;
    v166 = "nw_endpoint_proxy_add_config_if_applicable";
    v75 = _os_log_send_and_compose_impl();

    v156[0] = OS_LOG_TYPE_ERROR;
    v164 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v75, v156, &v164))
    {
      if (v156[0] == OS_LOG_TYPE_FAULT)
      {
        v76 = __nwlog_obj();
        v77 = v156[0];
        if (os_log_type_enabled(v76, v156[0]))
        {
          *buf = 136446210;
          v166 = "nw_endpoint_proxy_add_config_if_applicable";
          _os_log_impl(&dword_181A37000, v76, v77, "%{public}s called with null endpoint_proxy->parsed_proxy_configs", buf, 0xCu);
        }
      }

      else if (v164 == OS_LOG_TYPE_INFO)
      {
        v81 = __nw_create_backtrace_string();
        v76 = __nwlog_obj();
        v82 = v156[0];
        v83 = os_log_type_enabled(v76, v156[0]);
        if (v81)
        {
          if (v83)
          {
            *buf = 136446466;
            v166 = "nw_endpoint_proxy_add_config_if_applicable";
            v167 = 2082;
            v168 = v81;
            _os_log_impl(&dword_181A37000, v76, v82, "%{public}s called with null endpoint_proxy->parsed_proxy_configs, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v81);
          goto LABEL_105;
        }

        if (v83)
        {
          *buf = 136446210;
          v166 = "nw_endpoint_proxy_add_config_if_applicable";
          _os_log_impl(&dword_181A37000, v76, v82, "%{public}s called with null endpoint_proxy->parsed_proxy_configs, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v76 = __nwlog_obj();
        v85 = v156[0];
        if (os_log_type_enabled(v76, v156[0]))
        {
          *buf = 136446210;
          v166 = "nw_endpoint_proxy_add_config_if_applicable";
          _os_log_impl(&dword_181A37000, v76, v85, "%{public}s called with null endpoint_proxy->parsed_proxy_configs, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_105:
    if (v75)
    {
      free(v75);
    }

    goto LABEL_163;
  }

  v70 = __nwlog_obj();
  *buf = 136446210;
  v166 = "nw_endpoint_proxy_add_config_if_applicable";
  v71 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v156[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v71, type, v156))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = type[0];
      if (os_log_type_enabled(v72, type[0]))
      {
        *buf = 136446210;
        v166 = "nw_endpoint_proxy_add_config_if_applicable";
        _os_log_impl(&dword_181A37000, v72, v73, "%{public}s called with null original_config", buf, 0xCu);
      }
    }

    else if (v156[0] == OS_LOG_TYPE_INFO)
    {
      v78 = __nw_create_backtrace_string();
      v72 = __nwlog_obj();
      v79 = type[0];
      v80 = os_log_type_enabled(v72, type[0]);
      if (v78)
      {
        if (v80)
        {
          *buf = 136446466;
          v166 = "nw_endpoint_proxy_add_config_if_applicable";
          v167 = 2082;
          v168 = v78;
          _os_log_impl(&dword_181A37000, v72, v79, "%{public}s called with null original_config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v78);
        goto LABEL_100;
      }

      if (v80)
      {
        *buf = 136446210;
        v166 = "nw_endpoint_proxy_add_config_if_applicable";
        _os_log_impl(&dword_181A37000, v72, v79, "%{public}s called with null original_config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v72 = __nwlog_obj();
      v84 = type[0];
      if (os_log_type_enabled(v72, type[0]))
      {
        *buf = 136446210;
        v166 = "nw_endpoint_proxy_add_config_if_applicable";
        _os_log_impl(&dword_181A37000, v72, v84, "%{public}s called with null original_config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_100:
  if (v71)
  {
    free(v71);
  }

LABEL_164:
}

void sub_181CC0588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  _Block_object_dispose(&a36, 8);

  _Unwind_Resume(a1);
}

BOOL nw_proxy_config_use_over_privacy_proxy(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[171] < 0;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_use_over_privacy_proxy";
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
        v15 = "nw_proxy_config_use_over_privacy_proxy";
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
          v15 = "nw_proxy_config_use_over_privacy_proxy";
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
        v15 = "nw_proxy_config_use_over_privacy_proxy";
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
        v15 = "nw_proxy_config_use_over_privacy_proxy";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void nw_endpoint_proxy_complete_resolve(NWConcrete_nw_endpoint_handler *a1)
{
  v211 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v151 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_proxy_complete_resolve";
    v152 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v203 = 0;
    if (__nwlog_fault(v152, type, &v203))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v153 = __nwlog_obj();
        v154 = type[0];
        if (os_log_type_enabled(v153, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_proxy_complete_resolve";
          _os_log_impl(&dword_181A37000, v153, v154, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v203)
      {
        backtrace_string = __nw_create_backtrace_string();
        v153 = __nwlog_obj();
        v156 = type[0];
        v157 = os_log_type_enabled(v153, type[0]);
        if (backtrace_string)
        {
          if (v157)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_proxy_complete_resolve";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v153, v156, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_237;
        }

        if (v157)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_proxy_complete_resolve";
          _os_log_impl(&dword_181A37000, v153, v156, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v153 = __nwlog_obj();
        v158 = type[0];
        if (os_log_type_enabled(v153, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_proxy_complete_resolve";
          _os_log_impl(&dword_181A37000, v153, v158, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_237:
    if (v152)
    {
      free(v152);
    }

    goto LABEL_210;
  }

  v3 = v1;
  mode = v3->mode;

  if (mode == 3)
  {
    v191 = nw_endpoint_handler_copy_proxy(v3);
    v203 = 0;
    has_unresolved_proxies = nw_endpoint_proxy_has_unresolved_proxies(v3, &v203);
    if (has_unresolved_proxies)
    {
      v5 = v3;
      parameters = v5[4];

      if (nw_parameters_get_prefer_no_proxy(parameters))
      {
        *type = 0;
        v200 = type;
        v201 = 0x2020000000;
        v202 = 0;
        v6 = *(v191 + 7);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = ___ZL34nw_endpoint_proxy_complete_resolveP30NWConcrete_nw_endpoint_handler_block_invoke;
        aBlock[3] = &unk_1E6A39B60;
        aBlock[4] = type;
        if (v6)
        {
          _nw_array_apply(v6, aBlock);
          v7 = *(v200 + 24);
          v8 = v5;
          v9 = *(v8 + 284);

          v10 = v8 + 284;
          if (v7)
          {
            if ((v9 & 0x20) != 0)
            {
              if (nw_endpoint_handler_get_logging_disabled(v8))
              {
                goto LABEL_133;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v13 = gconnectionLogObj;
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                id_string = nw_endpoint_handler_get_id_string(v8);
                v181 = nw_endpoint_handler_dry_run_string(v8);
                v182 = nw_endpoint_handler_copy_endpoint(v8);
                logging_description = nw_endpoint_get_logging_description(v182);
                v184 = nw_endpoint_handler_state_string(v8);
                v185 = nw_endpoint_handler_mode_string(v8);
                v186 = nw_endpoint_handler_copy_current_path(v8);
                *buf = 136447746;
                *&buf[4] = "nw_endpoint_proxy_complete_resolve";
                *&buf[12] = 2082;
                *&buf[14] = id_string;
                *&buf[22] = 2082;
                v205 = v181;
                *v206 = 2082;
                *&v206[2] = logging_description;
                *&v206[10] = 2082;
                *&v206[12] = v184;
                v207 = 2082;
                v208 = v185;
                v209 = 2114;
                v210 = v186;
                _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] unresolved proxies, but will add direct due to prefer no proxy", buf, 0x48u);
              }

              goto LABEL_132;
            }

            v11 = v8;
            v12 = (*(v8 + 284) & 0x40) == 0;

            if (!v12)
            {
LABEL_133:
              _Block_object_dispose(type, 8);
              goto LABEL_134;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v13 = gconnectionLogObj;
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
LABEL_132:

              goto LABEL_133;
            }

            v14 = v11;

            v15 = v14;
            v16 = (*v10 & 1) == 0;

            if (v16)
            {
              v17 = "";
            }

            else
            {
              v17 = "dry-run ";
            }

            v18 = nw_endpoint_handler_copy_endpoint(v15);
            v19 = v18;
            if (v18)
            {
              v187 = _nw_endpoint_get_logging_description(v18);
            }

            else
            {
              v187 = "<NULL>";
            }

            v80 = v15;
            v81 = v80;
            v82 = v80[30];
            if (v82 > 5)
            {
              v83 = "unknown-state";
            }

            else
            {
              v83 = off_1E6A31048[v82];
            }

            v84 = v81;
            v85 = v84;
            v86 = v3->mode;
            if (v86 > 2)
            {
              switch(v86)
              {
                case 3:
                  v87 = "proxy";
                  goto LABEL_131;
                case 4:
                  v87 = "fallback";
                  goto LABEL_131;
                case 5:
                  v87 = "transform";
                  goto LABEL_131;
              }
            }

            else
            {
              switch(v86)
              {
                case 0:
                  v87 = "path";
                  goto LABEL_131;
                case 1:
                  v87 = "resolver";
                  goto LABEL_131;
                case 2:
                  v87 = nw_endpoint_flow_mode_string(v84[33]);
LABEL_131:

                  v90 = v85;
                  os_unfair_lock_lock(v90 + 28);
                  v91 = v90[8];
                  os_unfair_lock_unlock(v90 + 28);

                  *buf = 136447746;
                  *&buf[4] = "nw_endpoint_proxy_complete_resolve";
                  *&buf[12] = 2082;
                  *&buf[14] = v14 + 23;
                  *&buf[22] = 2082;
                  v205 = v17;
                  *v206 = 2082;
                  *&v206[2] = v187;
                  *&v206[10] = 2082;
                  *&v206[12] = v83;
                  v207 = 2082;
                  v208 = v87;
                  v209 = 2114;
                  v210 = v91;
                  _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] unresolved proxies, but will add direct due to prefer no proxy", buf, 0x48u);

                  goto LABEL_132;
              }
            }

            v87 = "unknown-mode";
            goto LABEL_131;
          }
        }

        else
        {
          v43 = v5;
          v9 = *(v43 + 284);

          v10 = v43 + 284;
        }

        if ((v9 & 0x40) != 0)
        {
LABEL_125:
          _Block_object_dispose(type, 8);

          goto LABEL_209;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v44 = gconnectionLogObj;
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
LABEL_124:

          goto LABEL_125;
        }

        v45 = v5;

        v46 = v45;
        v47 = (*v10 & 1) == 0;

        if (v47)
        {
          v48 = "";
        }

        else
        {
          v48 = "dry-run ";
        }

        v49 = nw_endpoint_handler_copy_endpoint(v46);
        v50 = v49;
        if (v49)
        {
          v51 = _nw_endpoint_get_logging_description(v49);
        }

        else
        {
          v51 = "<NULL>";
        }

        v70 = v46;
        v71 = v70;
        v72 = v70[30];
        if (v72 > 5)
        {
          v73 = "unknown-state";
        }

        else
        {
          v73 = off_1E6A31048[v72];
        }

        v74 = v71;
        v75 = v74;
        v76 = v3->mode;
        if (v76 > 2)
        {
          switch(v76)
          {
            case 3:
              v77 = "proxy";
              goto LABEL_123;
            case 4:
              v77 = "fallback";
              goto LABEL_123;
            case 5:
              v77 = "transform";
              goto LABEL_123;
          }
        }

        else
        {
          switch(v76)
          {
            case 0:
              v77 = "path";
              goto LABEL_123;
            case 1:
              v77 = "resolver";
              goto LABEL_123;
            case 2:
              v77 = nw_endpoint_flow_mode_string(v74[33]);
LABEL_123:

              v88 = v75;
              os_unfair_lock_lock(v88 + 28);
              v89 = v88[8];
              os_unfair_lock_unlock(v88 + 28);

              *buf = 136447746;
              *&buf[4] = "nw_endpoint_proxy_complete_resolve";
              *&buf[12] = 2082;
              *&buf[14] = v45 + 23;
              *&buf[22] = 2082;
              v205 = v48;
              *v206 = 2082;
              *&v206[2] = v51;
              *&v206[10] = 2082;
              *&v206[12] = v73;
              v207 = 2082;
              v208 = v77;
              v209 = 2114;
              v210 = v89;
              _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] unresolved proxies and prefer no proxy, but no direct config found", buf, 0x48u);

              goto LABEL_124;
          }
        }

        v77 = "unknown-mode";
        goto LABEL_123;
      }

      v31 = v5;
      v32 = (*(v31 + 284) & 0x20) == 0;

      if (!v32)
      {
        if (nw_endpoint_handler_get_logging_disabled(v31))
        {
          goto LABEL_104;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v35 = gconnectionLogObj;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v166 = nw_endpoint_handler_get_id_string(v31);
          v167 = nw_endpoint_handler_dry_run_string(v31);
          v168 = nw_endpoint_handler_copy_endpoint(v31);
          v169 = nw_endpoint_get_logging_description(v168);
          v170 = nw_endpoint_handler_state_string(v31);
          v171 = nw_endpoint_handler_mode_string(v31);
          v172 = nw_endpoint_handler_copy_current_path(v31);
          *buf = 136447746;
          *&buf[4] = "nw_endpoint_proxy_complete_resolve";
          *&buf[12] = 2082;
          *&buf[14] = v166;
          *&buf[22] = 2082;
          v205 = v167;
          *v206 = 2082;
          *&v206[2] = v169;
          *&v206[10] = 2082;
          *&v206[12] = v170;
          v207 = 2082;
          v208 = v171;
          v209 = 2114;
          v210 = v172;
          _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] unresolved proxies, waiting for resolution", buf, 0x48u);
        }

        goto LABEL_103;
      }

      v33 = v31;
      v34 = (*(v31 + 284) & 0x40) == 0;

      if (!v34)
      {
LABEL_104:

        goto LABEL_209;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v35 = gconnectionLogObj;
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
LABEL_103:

        goto LABEL_104;
      }

      v36 = v33;

      v37 = v36;
      v38 = (*(v31 + 284) & 1) == 0;

      if (v38)
      {
        v39 = "";
      }

      else
      {
        v39 = "dry-run ";
      }

      v40 = nw_endpoint_handler_copy_endpoint(v37);
      v41 = v40;
      if (v40)
      {
        v42 = _nw_endpoint_get_logging_description(v40);
      }

      else
      {
        v42 = "<NULL>";
      }

      v60 = v37;
      v61 = v60;
      v62 = v60[30];
      if (v62 > 5)
      {
        v63 = "unknown-state";
      }

      else
      {
        v63 = off_1E6A31048[v62];
      }

      v64 = v61;
      v65 = v64;
      v66 = v3->mode;
      if (v66 > 2)
      {
        switch(v66)
        {
          case 3:
            v67 = "proxy";
            goto LABEL_102;
          case 4:
            v67 = "fallback";
            goto LABEL_102;
          case 5:
            v67 = "transform";
            goto LABEL_102;
        }
      }

      else
      {
        switch(v66)
        {
          case 0:
            v67 = "path";
            goto LABEL_102;
          case 1:
            v67 = "resolver";
            goto LABEL_102;
          case 2:
            v67 = nw_endpoint_flow_mode_string(v64[33]);
LABEL_102:

            v78 = v65;
            os_unfair_lock_lock(v78 + 28);
            v79 = v78[8];
            os_unfair_lock_unlock(v78 + 28);

            *buf = 136447746;
            *&buf[4] = "nw_endpoint_proxy_complete_resolve";
            *&buf[12] = 2082;
            *&buf[14] = v36 + 23;
            *&buf[22] = 2082;
            v205 = v39;
            *v206 = 2082;
            *&v206[2] = v42;
            *&v206[10] = 2082;
            *&v206[12] = v63;
            v207 = 2082;
            v208 = v67;
            v209 = 2114;
            v210 = v79;
            _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] unresolved proxies, waiting for resolution", buf, 0x48u);

            goto LABEL_103;
        }
      }

      v67 = "unknown-mode";
      goto LABEL_102;
    }

    v3->event = 262148;
    nw_endpoint_handler_report(v3, 0, &v3->event.domain, 0);
    v22 = v3;
    v23 = (*(v22 + 284) & 0x40) == 0;

    if (!v23)
    {
      goto LABEL_135;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    parameters = gconnectionLogObj;
    if (!os_log_type_enabled(parameters, OS_LOG_TYPE_DEBUG))
    {
LABEL_134:

LABEL_135:
      if (!v203)
      {
        goto LABEL_171;
      }

      v92 = v3;
      v93 = (*(v92 + 284) & 0x20) == 0;

      if (!v93)
      {
        if (nw_endpoint_handler_get_logging_disabled(v92))
        {
LABEL_167:
          direct = nw_proxy_config_create_direct();
          if (direct)
          {
            v122 = *(v191 + 7);
            if (v122)
            {
              _nw_array_append(v122, direct);
            }
          }

LABEL_171:
          v123 = *(v191 + 1);
          if (v123)
          {
            count = _nw_array_get_count(v123);
            v125 = count != 0;
            v126 = has_unresolved_proxies;
            if (!count)
            {
              v126 = 0;
            }

            if (v126 == 1)
            {
              v127 = v3;
              v128 = (*(v127 + 284) & 0x20) == 0;

              if (!v128)
              {
                if (nw_endpoint_handler_get_logging_disabled(v127))
                {
                  goto LABEL_209;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v131 = gconnectionLogObj;
                if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
                {
                  v173 = nw_endpoint_handler_get_id_string(v127);
                  v174 = nw_endpoint_handler_dry_run_string(v127);
                  v175 = nw_endpoint_handler_copy_endpoint(v127);
                  v176 = nw_endpoint_get_logging_description(v175);
                  v177 = nw_endpoint_handler_state_string(v127);
                  v178 = nw_endpoint_handler_mode_string(v127);
                  v179 = nw_endpoint_handler_copy_current_path(v127);
                  *buf = 136447746;
                  *&buf[4] = "nw_endpoint_proxy_complete_resolve";
                  *&buf[12] = 2082;
                  *&buf[14] = v173;
                  *&buf[22] = 2082;
                  v205 = v174;
                  *v206 = 2082;
                  *&v206[2] = v176;
                  *&v206[10] = 2082;
                  *&v206[12] = v177;
                  v207 = 2082;
                  v208 = v178;
                  v209 = 2114;
                  v210 = v179;
                  _os_log_impl(&dword_181A37000, v131, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] direct already adding, still waiting for proxy resolution", buf, 0x48u);
                }

                goto LABEL_208;
              }

              v129 = v127;
              v130 = (*(v127 + 284) & 0x40) == 0;

              if (v130)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v131 = gconnectionLogObj;
                if (!os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_208;
                }

                v132 = v129;

                v133 = v132;
                v134 = (*(v127 + 284) & 1) == 0;

                if (v134)
                {
                  v135 = "";
                }

                else
                {
                  v135 = "dry-run ";
                }

                v136 = nw_endpoint_handler_copy_endpoint(v133);
                v137 = v136;
                if (v136)
                {
                  v138 = _nw_endpoint_get_logging_description(v136);
                }

                else
                {
                  v138 = "<NULL>";
                }

                v141 = v133;
                v142 = v141;
                v143 = v141[30];
                if (v143 > 5)
                {
                  v144 = "unknown-state";
                }

                else
                {
                  v144 = off_1E6A31048[v143];
                }

                v145 = v142;
                v146 = v145;
                v147 = v3->mode;
                if (v147 > 2)
                {
                  switch(v147)
                  {
                    case 3:
                      v148 = "proxy";
                      goto LABEL_207;
                    case 4:
                      v148 = "fallback";
                      goto LABEL_207;
                    case 5:
                      v148 = "transform";
                      goto LABEL_207;
                  }
                }

                else
                {
                  switch(v147)
                  {
                    case 0:
                      v148 = "path";
                      goto LABEL_207;
                    case 1:
                      v148 = "resolver";
                      goto LABEL_207;
                    case 2:
                      v148 = nw_endpoint_flow_mode_string(v145[33]);
LABEL_207:

                      v149 = v146;
                      os_unfair_lock_lock(v149 + 28);
                      v150 = v149[8];
                      os_unfair_lock_unlock(v149 + 28);

                      *buf = 136447746;
                      *&buf[4] = "nw_endpoint_proxy_complete_resolve";
                      *&buf[12] = 2082;
                      *&buf[14] = v132->id_str;
                      *&buf[22] = 2082;
                      v205 = v135;
                      *v206 = 2082;
                      *&v206[2] = v138;
                      *&v206[10] = 2082;
                      *&v206[12] = v144;
                      v207 = 2082;
                      v208 = v148;
                      v209 = 2114;
                      v210 = v150;
                      _os_log_impl(&dword_181A37000, v131, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] direct already adding, still waiting for proxy resolution", buf, 0x48u);

LABEL_208:
                      goto LABEL_209;
                  }
                }

                v148 = "unknown-mode";
                goto LABEL_207;
              }

LABEL_209:

              goto LABEL_210;
            }
          }

          else
          {
            v125 = 0;
          }

          *type = 0;
          v200 = type;
          v201 = 0x2020000000;
          v202 = 0;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v205 = __Block_byref_object_copy__26627;
          *v206 = __Block_byref_object_dispose__26628;
          *&v206[8] = 0;
          v139 = *(v191 + 7);
          v192[0] = MEMORY[0x1E69E9820];
          v192[1] = 3221225472;
          v192[2] = ___ZL34nw_endpoint_proxy_complete_resolveP30NWConcrete_nw_endpoint_handler_block_invoke_161;
          v192[3] = &unk_1E6A2F2A8;
          v196 = v125;
          v194 = type;
          v140 = v3;
          v193 = v140;
          v195 = buf;
          v197 = has_unresolved_proxies;
          if (v139)
          {
            _nw_array_apply(v139, v192);
          }

          nw_endpoint_proxy_start_next_child(v140);

          _Block_object_dispose(buf, 8);
          _Block_object_dispose(type, 8);
          goto LABEL_209;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v96 = gconnectionLogObj;
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
        {
          v159 = nw_endpoint_handler_get_id_string(v92);
          v160 = nw_endpoint_handler_dry_run_string(v92);
          v161 = nw_endpoint_handler_copy_endpoint(v92);
          v162 = nw_endpoint_get_logging_description(v161);
          v163 = nw_endpoint_handler_state_string(v92);
          v164 = nw_endpoint_handler_mode_string(v92);
          v165 = nw_endpoint_handler_copy_current_path(v92);
          *buf = 136447746;
          *&buf[4] = "nw_endpoint_proxy_complete_resolve";
          *&buf[12] = 2082;
          *&buf[14] = v159;
          *&buf[22] = 2082;
          v205 = v160;
          *v206 = 2082;
          *&v206[2] = v162;
          *&v206[10] = 2082;
          *&v206[12] = v163;
          v207 = 2082;
          v208 = v164;
          v209 = 2114;
          v210 = v165;
          _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no resolved proxies, adding direct attempt", buf, 0x48u);
        }

LABEL_166:

        goto LABEL_167;
      }

      v94 = v92;
      v95 = (*(v92 + 284) & 0x40) == 0;

      if (!v95)
      {
        goto LABEL_167;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v96 = gconnectionLogObj;
      if (!os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_166;
      }

      v97 = v94;

      v98 = v97;
      v99 = (*(v92 + 284) & 1) == 0;

      if (v99)
      {
        v100 = "";
      }

      else
      {
        v100 = "dry-run ";
      }

      v101 = nw_endpoint_handler_copy_endpoint(v98);
      v102 = v101;
      if (v101)
      {
        v103 = _nw_endpoint_get_logging_description(v101);
      }

      else
      {
        v103 = "<NULL>";
      }

      v104 = v98;
      v105 = v104;
      v106 = v104[30];
      if (v106 > 5)
      {
        v107 = "unknown-state";
      }

      else
      {
        v107 = off_1E6A31048[v106];
      }

      v108 = v105;
      v109 = v108;
      v110 = v3->mode;
      if (v110 > 2)
      {
        switch(v110)
        {
          case 3:
            v111 = "proxy";
            break;
          case 4:
            v111 = "fallback";
            break;
          case 5:
            v111 = "transform";
            break;
          default:
LABEL_161:
            v111 = "unknown-mode";
            break;
        }
      }

      else
      {
        if (v110)
        {
          if (v110 == 1)
          {
            v111 = "resolver";
            goto LABEL_164;
          }

          if (v110 == 2)
          {
            parametersa = nw_endpoint_flow_mode_string(v108[33]);
LABEL_165:

            v112 = v97;
            v113 = v2;
            v114 = v96;
            v115 = v107;
            v116 = v103;
            v117 = v100;
            v118 = v109;
            os_unfair_lock_lock(v118 + 28);
            v119 = v118[8];
            os_unfair_lock_unlock(v118 + 28);

            v120 = v115;
            v96 = v114;
            v2 = v113;
            *buf = 136447746;
            *&buf[4] = "nw_endpoint_proxy_complete_resolve";
            *&buf[12] = 2082;
            *&buf[14] = v112->id_str;
            *&buf[22] = 2082;
            v205 = v117;
            *v206 = 2082;
            *&v206[2] = v116;
            *&v206[10] = 2082;
            *&v206[12] = v120;
            v207 = 2082;
            v208 = parametersa;
            v209 = 2114;
            v210 = v119;
            _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no resolved proxies, adding direct attempt", buf, 0x48u);

            goto LABEL_166;
          }

          goto LABEL_161;
        }

        v111 = "path";
      }

LABEL_164:
      parametersa = v111;
      goto LABEL_165;
    }

    v24 = v22;

    v25 = v24;
    v26 = (*(v22 + 284) & 1) == 0;

    if (v26)
    {
      v27 = "";
    }

    else
    {
      v27 = "dry-run ";
    }

    v28 = nw_endpoint_handler_copy_endpoint(v25);
    v29 = v28;
    if (v28)
    {
      v30 = _nw_endpoint_get_logging_description(v28);
    }

    else
    {
      v30 = "<NULL>";
    }

    v52 = v25;
    v53 = v52;
    v54 = v52[30];
    if (v54 > 5)
    {
      v55 = "unknown-state";
    }

    else
    {
      v55 = off_1E6A31048[v54];
    }

    v56 = v53;
    v57 = v56;
    v58 = v3->mode;
    if (v58 > 2)
    {
      switch(v58)
      {
        case 3:
          v59 = "proxy";
          goto LABEL_83;
        case 4:
          v59 = "fallback";
          goto LABEL_83;
        case 5:
          v59 = "transform";
          goto LABEL_83;
      }
    }

    else
    {
      switch(v58)
      {
        case 0:
          v59 = "path";
          goto LABEL_83;
        case 1:
          v59 = "resolver";
          goto LABEL_83;
        case 2:
          v59 = nw_endpoint_flow_mode_string(v56[33]);
LABEL_83:

          v68 = v57;
          os_unfair_lock_lock(v68 + 28);
          v69 = v68[8];
          os_unfair_lock_unlock(v68 + 28);

          *buf = 136447746;
          *&buf[4] = "nw_endpoint_proxy_complete_resolve";
          *&buf[12] = 2082;
          *&buf[14] = v24->id_str;
          *&buf[22] = 2082;
          v205 = v27;
          *v206 = 2082;
          *&v206[2] = v30;
          *&v206[10] = 2082;
          *&v206[12] = v55;
          v207 = 2082;
          v208 = v59;
          v209 = 2114;
          v210 = v69;
          _os_log_impl(&dword_181A37000, parameters, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] resolved all proxies", buf, 0x48u);

          goto LABEL_134;
      }
    }

    v59 = "unknown-mode";
    goto LABEL_83;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v20 = gLogObj;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (mode > 5)
    {
      v21 = "unknown-mode";
    }

    else
    {
      v21 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    *&buf[4] = "nw_endpoint_proxy_complete_resolve";
    *&buf[12] = 2082;
    *&buf[14] = v21;
    *&buf[22] = 2082;
    v205 = "proxy";
    _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_210:
}
void ___ZL42nw_http_authentication_apply_authorizationP11nw_protocolP21_CFHTTPAuthenticationP28nw_authentication_credential24nw_authentication_type_tbbbU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke(uint64_t a1, const char *a2)
{
  v2 = 672;
  if (*(a1 + 40))
  {
    v2 = 1984;
  }

  nw_http_fields_set_value_by_name(*(*(a1 + 32) + 840), &nw_http_well_known_field_names[v2], a2);
}

void ___ZL40nw_http_authentication_ask_pat_for_credsP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke(void *a1, const __CFDictionary *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (nw_protocol_plugin_retry_end_async(a1[7] + 344))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(a1[5] + 8) + 40);
      *buf = 136446978;
      v18 = "nw_http_authentication_ask_pat_for_creds_block_invoke";
      v19 = 2114;
      v20 = v7;
      v21 = 2112;
      v22 = a2;
      v23 = 2112;
      v24 = a3;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}@ received PAT headers %@ error %@", buf, 0x2Au);
    }

    if (!a2 || a3)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v18 = "nw_http_authentication_ask_pat_for_creds_block_invoke";
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s PAT default delivering response", buf, 0xCu);
      }

      (*(a1[4] + 16))();
      *(*(a1[6] + 8) + 24) = 1;
    }

    else
    {
      Value = CFDictionaryGetValue(a2, @"Authorization");
      if (Value)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 0x40000000;
        v16[2] = ___ZL40nw_http_authentication_ask_pat_for_credsP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_76;
        v16[3] = &__block_descriptor_tmp_77;
        v16[4] = a1[7];
        nw_utilities_get_c_string_from_cfstring(Value, 0x201u, v16);
        *(a1[7] + 940) = 8;
        (*(a1[4] + 16))();
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v18 = "nw_http_authentication_ask_pat_for_creds_block_invoke_2";
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s Unable to find authorization", buf, 0xCu);
        }

        client_metadata_in_parameters = nw_http_messaging_options_find_or_create_client_metadata_in_parameters(*(a1[7] + 712), a1[7]);
        v13 = client_metadata_in_parameters;
        if (client_metadata_in_parameters)
        {
          nw_http_client_metadata_set_client_error(client_metadata_in_parameters, 1);
        }

        (*(a1[4] + 16))();
        *(*(a1[6] + 8) + 24) = 1;
        if (v13)
        {
          os_release(v13);
        }
      }
    }
  }

  else
  {
    v9 = a1[7];
    if ((*(v9 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v14 = __nwlog_obj();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      v9 = a1[7];
      if (v15)
      {
        *buf = 136446722;
        v18 = "nw_http_authentication_ask_pat_for_creds_block_invoke";
        v19 = 2082;
        v20 = v9 + 114;
        v21 = 2080;
        v22 = " ";
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalling destroy because defer_destroy was true", buf, 0x20u);
        v9 = a1[7];
      }
    }

    nw_http_authentication_destroy(v9);
  }
}

void ___ZL39nw_http_authentication_handle_challengeP11nw_protocolP21_CFHTTPAuthenticationP28nw_authentication_credential24nw_authentication_type_tbU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_40(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 958) & 0x10) != 0)
  {
    v4 = "Proxy-Authorization";
  }

  else
  {
    v4 = "Authorization";
  }

  nw_http_fields_set_value_by_name(*(v3 + 840), v4, a2);
}

void ___ZL39nw_http_authentication_handle_challengeP11nw_protocolP21_CFHTTPAuthenticationP28nw_authentication_credential24nw_authentication_type_tbU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (nw_protocol_plugin_retry_end_async(*(a1 + 40) + 344))
  {
    v2 = *(*(a1 + 32) + 16);

    v2();
  }

  else
  {
    v3 = *(a1 + 40);
    if ((*(v3 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v4 = __nwlog_obj();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
      v3 = *(a1 + 40);
      if (v5)
      {
        v6 = 136446722;
        v7 = "nw_http_authentication_handle_challenge_block_invoke_2";
        v8 = 2082;
        v9 = v3 + 114;
        v10 = 2080;
        v11 = " ";
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalling destroy because defer_destroy was true", &v6, 0x20u);
        v3 = *(a1 + 40);
      }
    }

    nw_http_authentication_destroy(v3);
  }
}

void ___ZL39nw_http_authentication_handle_challengeP11nw_protocolP21_CFHTTPAuthenticationP28nw_authentication_credential24nw_authentication_type_tbU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_43(uint64_t a1)
{
  v1 = a1;
  v35 = *MEMORY[0x1E69E9840];
  v28 = *(a1 + 32) + 114;
  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v2 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v30 = v28;
    v31 = 2080;
    v32 = " ";
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s%sCalling authentication challenge handler", buf, 0x16u);
    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }
  }

  v3 = ghttp_diagnosticsLogObj;
  v4 = &unk_182B08000;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*(v1 + 32) + 958) & 0x10) != 0 ? "true" : "false";
    *buf = 136446722;
    v30 = v28;
    v31 = 2080;
    v32 = " ";
    v33 = 2080;
    v34 = v5;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s%s├ Proxy: %s", buf, 0x20u);
    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }
  }

  v6 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v30 = v28;
    v31 = 2080;
    v32 = " ";
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s%s├ Authentication:", buf, 0x16u);
  }

  v7 = *(v1 + 32);
  v8 = *(v7 + 744);
  if (v8)
  {
    v27 = CFHTTPAuthenticationCopyRealm(*(v7 + 744));
    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }

    v9 = ghttp_diagnosticsLogObj;
    if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v30 = v28;
      v31 = 2080;
      v32 = " ";
      v33 = 2112;
      v34 = v27;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s%s├─ Realm: %@", buf, 0x20u);
    }

    v25 = v1;
    cf = CFHTTPAuthenticationCopyMethod(v8);
    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }

    v10 = ghttp_diagnosticsLogObj;
    if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v30 = v28;
      v31 = 2080;
      v32 = " ";
      v33 = 2112;
      v34 = cf;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s%s├─ Method: %@", buf, 0x20u);
      if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
      }
    }

    v11 = ghttp_diagnosticsLogObj;
    if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v30 = v28;
      v31 = 2080;
      v32 = " ";
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s%s├─ Domains:", buf, 0x16u);
    }

    v12 = CFHTTPAuthenticationCopyDomains(v8);
    if (v12)
    {
      for (i = 0; i < CFArrayGetCount(v12); ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
        if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
        }

        v15 = ghttp_diagnosticsLogObj;
        if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v30 = v28;
          v31 = 2080;
          v32 = " ";
          v33 = 2112;
          v34 = ValueAtIndex;
          _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s%s├── %@", buf, 0x20u);
        }
      }
    }

    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }

    v16 = ghttp_diagnosticsLogObj;
    if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v30 = v28;
      v31 = 2080;
      v32 = " ";
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s%s├─ Auth Schemes:", buf, 0x16u);
    }

    v17 = _CFHTTPAuthenticationCopySortedAuthSchemes();
    if (v17)
    {
      v18 = v17;
      for (j = 0; j < CFArrayGetCount(v18); ++j)
      {
        v20 = CFArrayGetValueAtIndex(v18, j);
        if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
        }

        v21 = ghttp_diagnosticsLogObj;
        if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v30 = v28;
          v31 = 2080;
          v32 = " ";
          v33 = 2112;
          v34 = v20;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s%s├── %@", buf, 0x20u);
        }
      }

      CFRelease(v18);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v4 = &unk_182B08000;
    if (cf)
    {
      CFRelease(cf);
    }

    v1 = v25;
    if (v27)
    {
      CFRelease(v27);
    }

    goto LABEL_57;
  }

  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v22 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v30 = v28;
    v31 = 2080;
    v32 = " ";
    _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s%s├─ NULL", buf, 0x16u);
LABEL_57:
    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }
  }

  v23 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(*(v1 + 32) + 940);
    *buf = v4[294];
    v30 = v28;
    v31 = 2080;
    v32 = " ";
    v33 = 1024;
    LODWORD(v34) = v24;
    _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s%s├─ Type: %d", buf, 0x1Cu);
  }
}

uint64_t nw_http_authentication_ask_authbroker_for_creds(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (v1)
  {
    if ((*(v1 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v20 = __nwlog_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v32 = "nw_http_authentication_ask_authbroker_for_creds";
        v33 = 2082;
        v34 = (v1 + 114);
        v35 = 2080;
        v36 = " ";
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    v2 = nw_authentication_challenge_copy_protection_space(*(v1 + 536));
    v3 = CFURLCopyHostName(*(v1 + 792));
    *(v1 + 944) = nw_authentication_protection_space_get_type(v2);
    v4 = v2;
    v5 = v4;
    if (v4)
    {
      v6 = v4[2];
LABEL_6:

      v7 = *MEMORY[0x1E695E480];
      v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v6, 0x201u);
      CFURLGetPortNumber(*(v1 + 792));
      v9 = CFURLProtectionSpaceCreate();
      v10 = CFStringCreateWithCString(v7, (v1 + 114), 0x8000100u);
      nw_protocol_plugin_retry_begin_async(v1 + 344);
      _CFHTTPAuthenticationFetchProxyCredentialFromAuthBroker();
      if (v10)
      {
        CFRelease(v10);
      }

      if (v9)
      {
        os_release(v9);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      if (v3)
      {
        CFRelease(v3);
      }

      if (v5)
      {
        os_release(v5);
      }

      return 2;
    }

    v16 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_authentication_protection_space_get_realm";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v17, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v32 = "nw_authentication_protection_space_get_realm";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null protection_space", buf, 0xCu);
        }
      }

      else
      {
        if (v29 == 1)
        {
          v28 = v1;
          backtrace_string = __nw_create_backtrace_string();
          v24 = __nwlog_obj();
          v25 = type;
          v26 = os_log_type_enabled(v24, type);
          if (backtrace_string)
          {
            if (v26)
            {
              *buf = 136446466;
              v32 = "nw_authentication_protection_space_get_realm";
              v33 = 2082;
              v34 = backtrace_string;
              _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null protection_space, dumping backtrace:%{public}s", buf, 0x16u);
            }

            v1 = v28;
            free(backtrace_string);
          }

          else
          {
            if (v26)
            {
              *buf = 136446210;
              v32 = "nw_authentication_protection_space_get_realm";
              _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null protection_space, no backtrace", buf, 0xCu);
            }

            v1 = v28;
          }

          goto LABEL_52;
        }

        v18 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v32 = "nw_authentication_protection_space_get_realm";
          _os_log_impl(&dword_181A37000, v18, v27, "%{public}s called with null protection_space, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_52:
    if (v17)
    {
      free(v17);
    }

    v6 = 0;
    goto LABEL_6;
  }

  __nwlog_obj();
  *buf = 136446210;
  v32 = "nw_http_authentication_ask_authbroker_for_creds";
  v12 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (__nwlog_fault(v12, &type, &v29))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v32 = "nw_http_authentication_ask_authbroker_for_creds";
        v15 = "%{public}s called with null http_authentication";
LABEL_45:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else if (v29 == 1)
    {
      v21 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v22 = os_log_type_enabled(v13, type);
      if (v21)
      {
        if (v22)
        {
          *buf = 136446466;
          v32 = "nw_http_authentication_ask_authbroker_for_creds";
          v33 = 2082;
          v34 = v21;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null http_authentication, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v21);
        goto LABEL_46;
      }

      if (v22)
      {
        *buf = 136446210;
        v32 = "nw_http_authentication_ask_authbroker_for_creds";
        v15 = "%{public}s called with null http_authentication, no backtrace";
        goto LABEL_45;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v32 = "nw_http_authentication_ask_authbroker_for_creds";
        v15 = "%{public}s called with null http_authentication, backtrace limit exceeded";
        goto LABEL_45;
      }
    }
  }

LABEL_46:
  if (v12)
  {
    free(v12);
  }

  return 1;
}

void ___ZL45nw_http_authentication_ask_accounts_for_credsP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke(uint64_t a1, CFTypeRef cf, const void *a3)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3802000000;
  v14[3] = __Block_byref_object_copy__62;
  v14[4] = __Block_byref_object_dispose__63;
  if (cf)
  {
    v5 = CFRetain(cf);
    v6 = v16 | 1;
  }

  else
  {
    v5 = 0;
    v6 = -1;
  }

  v15 = v5;
  v16 = v6;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3802000000;
  v11[3] = __Block_byref_object_copy__64;
  v11[4] = __Block_byref_object_dispose__65;
  if (a3)
  {
    v7 = CFRetain(a3);
    v8 = v13 | 1;
  }

  else
  {
    v7 = 0;
    v8 = -1;
  }

  cfa = v7;
  v13 = v8;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZL45nw_http_authentication_ask_accounts_for_credsP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_66;
  v9[3] = &unk_1E6A2D400;
  v9[5] = v14;
  v9[6] = v11;
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 40);
  nw_queue_context_async(*(v10 + 728), v9);
  _Block_object_dispose(v11, 8);
  if ((v13 & 1) != 0 && cfa)
  {
    CFRelease(cfa);
  }

  _Block_object_dispose(v14, 8);
  if (v16)
  {
    if (v15)
    {
      CFRelease(v15);
    }
  }
}

void ___ZL39nw_http_authentication_handle_challengeP11nw_protocolP21_CFHTTPAuthenticationP28nw_authentication_credential24nw_authentication_type_tbU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_48(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (nw_protocol_plugin_retry_end_async(*(a1 + 40) + 344))
  {
    v2 = *(*(a1 + 32) + 16);

    v2();
  }

  else
  {
    v3 = *(a1 + 40);
    if ((*(v3 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v4 = __nwlog_obj();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
      v3 = *(a1 + 40);
      if (v5)
      {
        v6 = 136446722;
        v7 = "nw_http_authentication_handle_challenge_block_invoke";
        v8 = 2082;
        v9 = v3 + 114;
        v10 = 2080;
        v11 = " ";
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalling destroy because defer_destroy was true", &v6, 0x20u);
        v3 = *(a1 + 40);
      }
    }

    nw_http_authentication_destroy(v3);
  }
}

uint64_t nw_http_authentication_send_challenge(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 40);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (v4)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v20 = "nw_http_authentication_send_challenge";
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s http authentication calling out to challenge handler", buf, 0xCu);
      }

      nw_authentication_challenge_set_attempt_count(*(v4 + 536), *(v4 + 948));
      ++*(v4 + 948);
      nw_protocol_plugin_retry_begin_async(v4 + 344);
      v6 = *(v4 + 664);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZL37nw_http_authentication_send_challengeP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke;
      block[3] = &unk_1E6A2D510;
      block[5] = v4;
      block[6] = a1;
      block[4] = a2;
      dispatch_async(v6, block);
      return 2;
    }

    *buf = 136446210;
    v20 = "nw_http_authentication_send_challenge";
    v8 = _os_log_send_and_compose_impl();
    v18 = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v8, &v18, &v17))
    {
      goto LABEL_34;
    }

    if (v18 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v18;
      if (os_log_type_enabled(v9, v18))
      {
        *buf = 136446210;
        v20 = "nw_http_authentication_send_challenge";
        v11 = "%{public}s called with null http_authentication";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = v18;
      if (os_log_type_enabled(v9, v18))
      {
        *buf = 136446210;
        v20 = "nw_http_authentication_send_challenge";
        v11 = "%{public}s called with null http_authentication, backtrace limit exceeded";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = v18;
    v15 = os_log_type_enabled(v9, v18);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_http_authentication_send_challenge";
        v11 = "%{public}s called with null http_authentication, no backtrace";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v15)
    {
      *buf = 136446466;
      v20 = "nw_http_authentication_send_challenge";
      v21 = 2082;
      v22 = backtrace_string;
      v14 = "%{public}s called with null http_authentication, dumping backtrace:%{public}s";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_http_authentication_send_challenge";
  v8 = _os_log_send_and_compose_impl();
  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v8, &v18, &v17))
  {
    goto LABEL_34;
  }

  if (v18 != OS_LOG_TYPE_FAULT)
  {
    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = v18;
      if (os_log_type_enabled(v9, v18))
      {
        *buf = 136446210;
        v20 = "nw_http_authentication_send_challenge";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = v18;
    v13 = os_log_type_enabled(v9, v18);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v20 = "nw_http_authentication_send_challenge";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v13)
    {
      *buf = 136446466;
      v20 = "nw_http_authentication_send_challenge";
      v21 = 2082;
      v22 = backtrace_string;
      v14 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_23:
      _os_log_impl(&dword_181A37000, v9, v10, v14, buf, 0x16u);
    }

LABEL_24:
    free(backtrace_string);
    goto LABEL_34;
  }

  v9 = __nwlog_obj();
  v10 = v18;
  if (os_log_type_enabled(v9, v18))
  {
    *buf = 136446210;
    v20 = "nw_http_authentication_send_challenge";
    v11 = "%{public}s called with null protocol";
LABEL_33:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
  }

LABEL_34:
  if (v8)
  {
    free(v8);
  }

  return 1;
}

uint64_t ___ZL37nw_http_authentication_send_challengeP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69E9820];
  v3 = 0x40000000;
  v4 = ___ZL37nw_http_authentication_send_challengeP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_2;
  v5 = &unk_1E6A2D4E8;
  v7 = *(a1 + 40);
  v6 = *(a1 + 32);
  return (*(*(v7 + 648) + 16))();
}

void ___ZL37nw_http_authentication_send_challengeP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v19 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "nw_http_authentication_send_challenge_block_invoke_2";
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s http authentication returned from challenge handler", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x3802000000;
  v15 = __Block_byref_object_copy__81;
  v16 = __Block_byref_object_dispose__82;
  if (a2)
  {
    v7 = os_retain(a2);
    v8 = v18 | 1;
  }

  else
  {
    v7 = 0;
    v8 = -1;
  }

  object = v7;
  v18 = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZL37nw_http_authentication_send_challengeP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_83;
  v10[3] = &unk_1E6A2D4C0;
  v12 = a3;
  v11 = *(a1 + 40);
  v9 = *(v11 + 728);
  v10[4] = *(a1 + 32);
  v10[5] = &buf;
  nw_queue_context_async_if_needed(v9, v10);
  _Block_object_dispose(&buf, 8);
  if (v18)
  {
    if (object)
    {
      os_release(object);
    }
  }
}

uint64_t __Block_byref_object_copy__81(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__82(uint64_t result)
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

void ___ZL37nw_http_authentication_send_challengeP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_83(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    *&buf[4] = "nw_http_authentication_send_challenge_block_invoke";
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s http authentication returned from challenge handler async", buf, 0xCu);
  }

  if (nw_protocol_plugin_retry_end_async(*(a1 + 48) + 344))
  {
    *(*(a1 + 48) + 958) = *(*(a1 + 48) + 958) & 0xFFFE | *(a1 + 64);
    type = nw_authentication_challenge_get_type(*(*(a1 + 48) + 536));
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 0x40000000;
    v27[2] = ___ZL37nw_http_authentication_send_challengeP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_84;
    v27[3] = &unk_1E6A2D498;
    v28 = *(a1 + 40);
    v29 = type;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __nw_http_diag_log_for_level_block_invoke;
    v31 = &unk_1E6A303F0;
    v33 = 1;
    v34 = 1;
    v32 = v27;
    os_unfair_lock_lock(&lock);
    (*&buf[16])(buf);
    os_unfair_lock_unlock(&lock);
    v4 = *(a1 + 48);
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (v5)
    {
      if (*(v4 + 536))
      {
        v6 = v5;
        v7 = v6[2] == 0;

        v4 = *(a1 + 48);
        if (!v7)
        {
          v8 = *(v4 + 584);
          if (v8)
          {
            nw_authentication_credential_storage_set_default_credential(v8, *(v4 + 536), *(*(*(a1 + 40) + 8) + 40));
            v4 = *(a1 + 48);
          }
        }
      }
    }

    v9 = *(v4 + 958);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
    if ((v9 & 0x10) != 0)
    {
      v22 = *(v4 + 576);
      if (v22)
      {
        v23 = *(v4 + 568);
        if (v23)
        {
          os_release(v23);
          v22 = *(v4 + 576);
        }
      }

      *(v4 + 568) = v11;
      *(v4 + 576) = v22 | 1;
      v24 = *(a1 + 48);
      *(v24 + 944) = type;
      v15 = *(a1 + 56);
      v16 = *(v24 + 760);
      v17 = *(v24 + 568);
      v18 = *(a1 + 32);
      v19 = type;
      v20 = 1;
    }

    else
    {
      v12 = *(v4 + 560);
      if (v12)
      {
        v13 = *(v4 + 552);
        if (v13)
        {
          os_release(v13);
          v12 = *(v4 + 560);
        }
      }

      *(v4 + 552) = v11;
      *(v4 + 560) = v12 | 1;
      v14 = *(a1 + 48);
      *(v14 + 940) = type;
      v15 = *(a1 + 56);
      v16 = *(v14 + 744);
      v17 = *(v14 + 552);
      v18 = *(a1 + 32);
      v19 = type;
      v20 = 0;
    }

    nw_http_authentication_apply_authorization(v15, v16, v17, v19, 1, v20, 1, v18);
    *(*(a1 + 48) + 958) &= ~0x200u;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v21 = *(a1 + 48);
    if ((*(v21 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v25 = __nwlog_obj();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
      v21 = *(a1 + 48);
      if (v26)
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_authentication_send_challenge_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v21 + 114;
        *&buf[22] = 2080;
        v31 = " ";
        _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalling destroy because defer_destroy was true", buf, 0x20u);
        v21 = *(a1 + 48);
      }
    }

    nw_http_authentication_destroy(v21);
  }
}

void ___ZL37nw_http_authentication_send_challengeP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_84(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40) + 114;
  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v3 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136446466;
    *&v17[4] = v2;
    *&v17[12] = 2080;
    *&v17[14] = " ";
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s%sChallenge handler responded:", v17, 0x16u);
    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }
  }

  v4 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136446466;
    *&v17[4] = v2;
    *&v17[12] = 2080;
    *&v17[14] = " ";
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s%s├ Credential:", v17, 0x16u);
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = v5 == 0;
    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }
  }

  else
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = v5 == 0;
  }

  v7 = ghttp_diagnosticsLogObj;
  v8 = os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 136446466;
      v21 = v2;
      v22 = 2080;
      v23 = " ";
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s%s├─ NULL", buf, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v9 = v5;
      v10 = v9[2];

      *buf = 136446722;
      v21 = v2;
      v22 = 2080;
      v23 = " ";
      v24 = 2080;
      v25 = v10;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s%s├─ Username: %s", buf, 0x20u);
      if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
      }
    }

    v11 = ghttp_diagnosticsLogObj;
    if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v5;
      v13 = v12[3];

      *buf = 136446722;
      v21 = v2;
      v22 = 2080;
      v23 = " ";
      v24 = 1024;
      LODWORD(v25) = v13;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s%s├─ Persistence: %d", buf, 0x1Cu);
      if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
      }
    }

    v14 = ghttp_diagnosticsLogObj;
    if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v21 = v2;
      v22 = 2080;
      v23 = " ";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s%s├─ Authentication Types:", buf, 0x16u);
    }

    *v17 = MEMORY[0x1E69E9820];
    *&v17[8] = 0x40000000;
    *&v17[16] = ___ZL38nw_http_diag_authentication_credentialPKcP28nw_authentication_credential_block_invoke;
    v18 = &__block_descriptor_tmp_91;
    v19 = v2;
    nw_authentication_credential_iterate_valid_authentication_types(v5, v17);
  }

  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v15 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 48);
    *v17 = 136446722;
    *&v17[4] = v2;
    *&v17[12] = 2080;
    *&v17[14] = " ";
    *&v17[22] = 1024;
    LODWORD(v18) = v16;
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s%s├ Chosen type: %d", v17, 0x1Cu);
  }
}

uint64_t ___ZL38nw_http_diag_authentication_credentialPKcP28nw_authentication_credential_block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
  }

  v4 = ghttp_diagnosticsLogObj;
  if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v5 == 0;
    if (!v5)
    {
      v5 = "";
    }

    v9 = 136446722;
    v10 = v5;
    if (v6)
    {
      v7 = "";
    }

    else
    {
      v7 = " ";
    }

    v11 = 2080;
    v12 = v7;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s%s├── %d", &v9, 0x1Cu);
  }

  return 1;
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__63(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    CFRelease(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

void ___ZL45nw_http_authentication_ask_accounts_for_credsP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_66(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (nw_protocol_plugin_retry_end_async(a1[7] + 344))
  {
    v2 = *(a1[5] + 8);
    v3 = *(v2 + 40);
    if (v3 && *(*(a1[6] + 8) + 40))
    {
      *(v2 + 40) = 0;
      v4 = a1[7];
      v5 = *(v4 + 880);
      if (v5)
      {
        v6 = *(v4 + 872);
        if (v6)
        {
          CFRelease(v6);
          v5 = *(v4 + 880);
        }
      }

      *(v4 + 872) = v3;
      *(v4 + 880) = v5 | 1;
      v7 = *(*(a1[6] + 8) + 40);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = ___ZL45nw_http_authentication_ask_accounts_for_credsP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_67;
      v16[3] = &__block_descriptor_tmp_68_14761;
      v16[4] = a1[7];
      nw_utilities_get_c_string_from_cfstring(v7, 0x201u, v16);
      *(a1[7] + 940) = 4;
      v8 = *(a1[4] + 16);
LABEL_18:
      v8();
      return;
    }

    if (!nw_authentication_challenge_try_next_protection_space(*(a1[7] + 536)))
    {
      if ((*(a1[7] + 198) & 1) == 0 && gLogDatapath == 1)
      {
        v14 = __nwlog_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = a1[7] + 114;
          *buf = 136446722;
          v18 = "nw_http_authentication_ask_accounts_for_creds_block_invoke_2";
          v19 = 2082;
          v20 = v15;
          v21 = 2080;
          v22 = " ";
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAccounts failed to return a credential, ran out of schemes to try", buf, 0x20u);
        }
      }

      v8 = *(a1[4] + 16);
      goto LABEL_18;
    }

    v10 = a1[8];
    v11 = a1[4];

    nw_http_authentication_send_challenge(v10, v11);
  }

  else
  {
    v9 = a1[7];
    if ((*(v9 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v12 = __nwlog_obj();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      v9 = a1[7];
      if (v13)
      {
        *buf = 136446722;
        v18 = "nw_http_authentication_ask_accounts_for_creds_block_invoke";
        v19 = 2082;
        v20 = v9 + 114;
        v21 = 2080;
        v22 = " ";
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalling destroy because defer_destroy was true", buf, 0x20u);
        v9 = a1[7];
      }
    }

    nw_http_authentication_destroy(v9);
  }
}

void ___ZL47nw_http_authentication_ask_authbroker_for_credsP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[5];
  v3 = *(v2 + 728);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZL47nw_http_authentication_ask_authbroker_for_credsP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_2;
  v5[3] = &unk_1E6A2D390;
  v4 = a1[6];
  v5[6] = a2;
  v5[7] = v4;
  v5[4] = a1[4];
  v5[5] = v2;
  nw_queue_context_async_if_needed(v3, v5);
}

void ___ZL47nw_http_authentication_ask_authbroker_for_credsP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (nw_protocol_plugin_retry_end_async(*(a1 + 40) + 344))
  {
    v2 = *(a1 + 40);
    if (*(a1 + 48))
    {
      if ((*(v2 + 198) & 1) == 0 && gLogDatapath == 1)
      {
        v18 = __nwlog_obj();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
        v2 = *(a1 + 40);
        if (v19)
        {
          *buf = 136446722;
          v27 = "nw_http_authentication_ask_authbroker_for_creds_block_invoke";
          v28 = 2082;
          v29 = (v2 + 114);
          v30 = 2080;
          v31 = " ";
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sapplying credential authbroker provided", buf, 0x20u);
          v2 = *(a1 + 40);
        }
      }

      v3 = *(v2 + 948) + 1;
      *(v2 + 948) = v3;
      if (v3 != v3 << 31 >> 31)
      {
        if (gLogDatapath == 1)
        {
          v22 = __nwlog_obj();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v23 = *(*(a1 + 40) + 948);
            *buf = 136446978;
            v27 = "nw_http_authentication_ask_authbroker_for_creds_block_invoke";
            v28 = 2082;
            v29 = "http_authentication->auth_challenge_count";
            v30 = 2048;
            v31 = 1;
            v32 = 2048;
            v33 = v23;
            _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
          }
        }

        *(*(a1 + 40) + 948) = -1;
      }

      v4 = *(a1 + 48);
      if (v4)
      {
        v5 = CFRetain(v4);
      }

      else
      {
        v5 = 0;
      }

      v7 = *(a1 + 40);
      v8 = *(v7 + 896);
      if (v8)
      {
        v9 = *(v7 + 888);
        if (v9)
        {
          CFRelease(v9);
          v8 = *(v7 + 896);
        }
      }

      *(v7 + 888) = v5;
      *(v7 + 896) = v8 | 1;
      v10 = [[NWConcrete_nw_authentication_credential alloc] initWithType:?];
      v11 = *(a1 + 40);
      v12 = *(v11 + 576);
      if (v12)
      {
        if (*(v11 + 568))
        {
          v13 = v10;
          os_release(*(v11 + 568));
          v10 = v13;
          v12 = *(v11 + 576);
        }
      }

      *(v11 + 568) = v10;
      *(v11 + 576) = v12 | 1;
      Username = CFURLCredentialGetUsername();
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 0x40000000;
      v25[2] = ___ZL47nw_http_authentication_ask_authbroker_for_credsP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_54;
      v25[3] = &__block_descriptor_tmp_55_14779;
      v25[4] = *(a1 + 40);
      nw_utilities_get_c_string_from_cfstring(Username, 0x201u, v25);
      v15 = CFURLCredentialCopyPassword();
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 0x40000000;
      v24[2] = ___ZL47nw_http_authentication_ask_authbroker_for_credsP11nw_protocolU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke_2_56;
      v24[3] = &__block_descriptor_tmp_57;
      v24[4] = *(a1 + 40);
      nw_utilities_get_c_string_from_cfstring(v15, 0x201u, v24);
      nw_authentication_credential_set_persistence(*(*(a1 + 40) + 568), 1);
      if (nw_http_authentication_apply_authorization(*(a1 + 56), *(*(a1 + 40) + 760), *(*(a1 + 40) + 568), *(*(a1 + 40) + 944), 1, 1, 0, *(a1 + 32)))
      {
        (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(a1 + 40) + 856), 0, (*(*(a1 + 40) + 944) & 0xFFFFFFFE) == 4);
        if (!v15)
        {
          return;
        }
      }

      else
      {
        (*(*(a1 + 32) + 16))();
        if (!v15)
        {
          return;
        }
      }

      CFRelease(v15);
    }

    else
    {
      if ((*(v2 + 198) & 1) == 0 && gLogDatapath == 1)
      {
        v20 = __nwlog_obj();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
        v2 = *(a1 + 40);
        if (v21)
        {
          *buf = 136446722;
          v27 = "nw_http_authentication_ask_authbroker_for_creds_block_invoke_3";
          v28 = 2082;
          v29 = (v2 + 114);
          v30 = 2080;
          v31 = " ";
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sauthbroker didn't return a cred, sending challenge", buf, 0x20u);
          v2 = *(a1 + 40);
        }
      }

      *(v2 + 958) |= 0x80u;
      nw_http_authentication_send_challenge(*(a1 + 56), *(a1 + 32));
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if ((v6[198] & 1) == 0 && gLogDatapath == 1)
    {
      v16 = __nwlog_obj();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
      v6 = *(a1 + 40);
      if (v17)
      {
        *buf = 136446722;
        v27 = "nw_http_authentication_ask_authbroker_for_creds_block_invoke_2";
        v28 = 2082;
        v29 = v6 + 114;
        v30 = 2080;
        v31 = " ";
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalling destroy because defer_destroy was true", buf, 0x20u);
        v6 = *(a1 + 40);
      }
    }

    nw_http_authentication_destroy(v6);
  }
}

BOOL ___ZL39nw_http_authentication_handle_challengeP11nw_protocolP21_CFHTTPAuthenticationP28nw_authentication_credential24nw_authentication_type_tbU13block_pointerFvP20nw_protocol_metadatabbE_block_invoke(uint64_t a1, void *a2)
{
  http_authentication = nw_authentication_credential_cache_entry_get_http_authentication(a2);
  IsValid = CFHTTPAuthenticationIsValid(http_authentication, 0);
  if (http_authentication)
  {
    os_release(http_authentication);
  }

  return IsValid == 0;
}

uint64_t __Block_byref_object_copy__14802(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__14803(uint64_t result)
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

uint64_t ___ZL45nw_http_authentication_copy_protocol_metadataP11nw_protocol_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (nw_protocol_metadata_is_http_connection(a3))
  {
    if (v3)
    {
      v3 = os_retain(v3);
    }

    v5 = *(*(a1 + 32) + 8);
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

    *(v5 + 40) = v3;
    *(v5 + 48) = v6 | 1;
  }

  return 1;
}

void ___ZL45nw_protocol_http_authentication_get_callbacksv_block_invoke()
{
  nw_protocol_http_authentication_get_callbacks(void)::protocol_callbacks = nw_protocol_common_add_input_handler;
  qword_1EA840638 = nw_protocol_common_replace_input_handler;
  qword_1EA840678 = nw_protocol_common_get_input_frames;
  qword_1EA840680 = nw_protocol_common_get_output_frames;
  qword_1EA840688 = nw_protocol_common_finalize_output_frames;
  qword_1EA840698 = nw_protocol_common_get_parameters;
  qword_1EA8406A0 = nw_protocol_common_get_path;
  qword_1EA8406B0 = nw_protocol_common_get_remote_endpoint;
  qword_1EA8406A8 = nw_protocol_common_get_local_endpoint;
  qword_1EA8406F0 = nw_protocol_common_get_output_local_endpoint;
  qword_1EA8406F8 = nw_protocol_common_get_output_interface;
  qword_1EA840640 = nw_protocol_common_connect;
  qword_1EA840650 = nw_protocol_common_connected;
  qword_1EA840648 = nw_protocol_common_disconnect;
  qword_1EA840658 = nw_protocol_common_disconnected;
  qword_1EA840668 = nw_protocol_common_input_available;
  qword_1EA840670 = nw_protocol_common_output_available;
  qword_1EA8406E0 = nw_protocol_common_input_finished;
  qword_1EA8406E8 = nw_protocol_common_output_finished;
  qword_1EA840730 = nw_protocol_common_input_flush;
  qword_1EA840660 = nw_protocol_common_error;
  qword_1EA840728 = nw_protocol_common_reset;
  qword_1EA840720 = nw_protocol_common_get_message_properties;
  qword_1EA840708 = nw_protocol_common_copy_info;
  qword_1EA8406D8 = nw_protocol_common_supports_external_data;
  qword_1EA840700 = nw_protocol_common_waiting_for_output;
  qword_1EA8406B8 = nw_protocol_common_register_notification;
  qword_1EA8406C0 = nw_protocol_common_unregister_notification;
  qword_1EA8406C8 = nw_protocol_common_notify;
  qword_1EA8406D0 = nw_protocol_common_updated_path;
  qword_1EA840690 = nw_protocol_common_link_state;
  qword_1EA840630 = nw_protocol_http_authentication_remove_input_handler;
}

double __nw_protocol_http_authentication_identifier_block_invoke()
{
  strcpy(&nw_protocol_http_authentication_identifier::protocol_identifier, "http_authentication");
  *&result = 0x100000005;
  qword_1EA840F28 = 0x100000005;
  return result;
}

void sub_18242D760(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

uint64_t nw_endpoint_construct_composite_bonjour_name(char *a1, unint64_t a2, char *service, char *regtype, char *domain, unsigned __int8 *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_endpoint_construct_composite_bonjour_name";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v19, &type, &v34))
    {
      goto LABEL_95;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v34 != 1)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v37 = "nw_endpoint_construct_composite_bonjour_name";
          v22 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v28 = os_log_type_enabled(v20, type);
      if (!backtrace_string)
      {
        if (v28)
        {
          *buf = 136446210;
          v37 = "nw_endpoint_construct_composite_bonjour_name";
          v22 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      if (!v28)
      {
        goto LABEL_72;
      }

      *buf = 136446466;
      v37 = "nw_endpoint_construct_composite_bonjour_name";
      v38 = 2082;
      v39 = backtrace_string;
      v29 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
      goto LABEL_71;
    }

    v20 = __nwlog_obj();
    v21 = type;
    if (!os_log_type_enabled(v20, type))
    {
      goto LABEL_94;
    }

    *buf = 136446210;
    v37 = "nw_endpoint_construct_composite_bonjour_name";
    v22 = "%{public}s called with null buffer";
LABEL_93:
    _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
    goto LABEL_94;
  }

  if (!a2)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_endpoint_construct_composite_bonjour_name";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v19, &type, &v34))
    {
      goto LABEL_95;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v34 != 1)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v37 = "nw_endpoint_construct_composite_bonjour_name";
          v22 = "%{public}s called with null buffer_len, backtrace limit exceeded";
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v30 = os_log_type_enabled(v20, type);
      if (!backtrace_string)
      {
        if (v30)
        {
          *buf = 136446210;
          v37 = "nw_endpoint_construct_composite_bonjour_name";
          v22 = "%{public}s called with null buffer_len, no backtrace";
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      if (!v30)
      {
        goto LABEL_72;
      }

      *buf = 136446466;
      v37 = "nw_endpoint_construct_composite_bonjour_name";
      v38 = 2082;
      v39 = backtrace_string;
      v29 = "%{public}s called with null buffer_len, dumping backtrace:%{public}s";
      goto LABEL_71;
    }

    v20 = __nwlog_obj();
    v21 = type;
    if (!os_log_type_enabled(v20, type))
    {
      goto LABEL_94;
    }

    *buf = 136446210;
    v37 = "nw_endpoint_construct_composite_bonjour_name";
    v22 = "%{public}s called with null buffer_len";
    goto LABEL_93;
  }

  if (!service)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_endpoint_construct_composite_bonjour_name";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v19, &type, &v34))
    {
      goto LABEL_95;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v34 != 1)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v37 = "nw_endpoint_construct_composite_bonjour_name";
          v22 = "%{public}s called with null name, backtrace limit exceeded";
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v31 = os_log_type_enabled(v20, type);
      if (!backtrace_string)
      {
        if (v31)
        {
          *buf = 136446210;
          v37 = "nw_endpoint_construct_composite_bonjour_name";
          v22 = "%{public}s called with null name, no backtrace";
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      if (!v31)
      {
        goto LABEL_72;
      }

      *buf = 136446466;
      v37 = "nw_endpoint_construct_composite_bonjour_name";
      v38 = 2082;
      v39 = backtrace_string;
      v29 = "%{public}s called with null name, dumping backtrace:%{public}s";
      goto LABEL_71;
    }

    v20 = __nwlog_obj();
    v21 = type;
    if (!os_log_type_enabled(v20, type))
    {
      goto LABEL_94;
    }

    *buf = 136446210;
    v37 = "nw_endpoint_construct_composite_bonjour_name";
    v22 = "%{public}s called with null name";
    goto LABEL_93;
  }

  if (!regtype)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_endpoint_construct_composite_bonjour_name";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v19, &type, &v34))
    {
      goto LABEL_95;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_94;
      }

      *buf = 136446210;
      v37 = "nw_endpoint_construct_composite_bonjour_name";
      v22 = "%{public}s called with null type";
      goto LABEL_93;
    }

    if (v34 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v37 = "nw_endpoint_construct_composite_bonjour_name";
        v22 = "%{public}s called with null type, backtrace limit exceeded";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type;
    v32 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (v32)
      {
        *buf = 136446210;
        v37 = "nw_endpoint_construct_composite_bonjour_name";
        v22 = "%{public}s called with null type, no backtrace";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    if (!v32)
    {
      goto LABEL_72;
    }

    *buf = 136446466;
    v37 = "nw_endpoint_construct_composite_bonjour_name";
    v38 = 2082;
    v39 = backtrace_string;
    v29 = "%{public}s called with null type, dumping backtrace:%{public}s";
LABEL_71:
    _os_log_impl(&dword_181A37000, v20, v21, v29, buf, 0x16u);
    goto LABEL_72;
  }

  if (!domain)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_endpoint_construct_composite_bonjour_name";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v19, &type, &v34))
    {
      goto LABEL_95;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v37 = "nw_endpoint_construct_composite_bonjour_name";
        v22 = "%{public}s called with null domain";
        goto LABEL_93;
      }

LABEL_94:

LABEL_95:
      if (v19)
      {
        free(v19);
      }

      return 0;
    }

    if (v34 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v37 = "nw_endpoint_construct_composite_bonjour_name";
        v22 = "%{public}s called with null domain, backtrace limit exceeded";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    backtrace_string = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type;
    v33 = os_log_type_enabled(v20, type);
    if (!backtrace_string)
    {
      if (v33)
      {
        *buf = 136446210;
        v37 = "nw_endpoint_construct_composite_bonjour_name";
        v22 = "%{public}s called with null domain, no backtrace";
        goto LABEL_93;
      }

      goto LABEL_94;
    }

    if (v33)
    {
      *buf = 136446466;
      v37 = "nw_endpoint_construct_composite_bonjour_name";
      v38 = 2082;
      v39 = backtrace_string;
      v29 = "%{public}s called with null domain, dumping backtrace:%{public}s";
      goto LABEL_71;
    }

LABEL_72:

    free(backtrace_string);
    goto LABEL_95;
  }

  *a1 = 0;
  if (a2 <= 0x401)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v37 = "nw_endpoint_construct_composite_bonjour_name";
      v7 = "%{public}s Insufficient buffer size";
LABEL_12:
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, v7, buf, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (DNSServiceConstructFullName(a1, service, regtype, domain))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v37 = "nw_endpoint_construct_composite_bonjour_name";
      v7 = "%{public}s Failed to construct composite";
      goto LABEL_12;
    }

LABEL_13:

    return 0;
  }

  if (a6)
  {
    v12 = a6;
    v13 = a1;
    v14 = a1;
    v15 = a2;
    v16 = a2;
    while (*v14)
    {
      ++v14;
      if (!--v16)
      {
        goto LABEL_23;
      }
    }

    if (v16 >= 2)
    {
      *v14++ = 64;
    }

    *v14 = 0;
LABEL_23:
    while (*v13)
    {
      ++v13;
      if (!--v15)
      {
        return 1;
      }
    }

    if (v15 < 2)
    {
LABEL_29:
      *v13 = 0;
    }

    else
    {
      while (1)
      {
        v17 = *v12;
        *v13 = v17;
        if (!v17)
        {
          break;
        }

        ++v13;
        ++v12;
        if (--v15 <= 1)
        {
          goto LABEL_29;
        }
      }
    }
  }

  return 1;
}

nw_endpoint_t nw_endpoint_create_bonjour_service(const char *name, const char *type, const char *domain)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!name)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_endpoint_create_bonjour_service";
    v9 = _os_log_send_and_compose_impl();

    typea = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v9, &typea, &v39))
    {
      if (typea == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v32 = typea;
        if (!os_log_type_enabled(v10, typea))
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        v42 = "nw_endpoint_create_bonjour_service";
        v12 = "%{public}s called with null name";
        goto LABEL_109;
      }

      if (v39 != 1)
      {
        v10 = __nwlog_obj();
        v32 = typea;
        if (!os_log_type_enabled(v10, typea))
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        v42 = "nw_endpoint_create_bonjour_service";
        v12 = "%{public}s called with null name, backtrace limit exceeded";
        goto LABEL_109;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v32 = typea;
      v34 = os_log_type_enabled(v10, typea);
      if (!backtrace_string)
      {
        if (!v34)
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        v42 = "nw_endpoint_create_bonjour_service";
        v12 = "%{public}s called with null name, no backtrace";
        goto LABEL_109;
      }

      if (v34)
      {
        *buf = 136446466;
        v42 = "nw_endpoint_create_bonjour_service";
        v43 = 2082;
        v44 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v32, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    goto LABEL_68;
  }

  v6 = strlen(name);
  if (!v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446466;
    v42 = "nw_endpoint_create_bonjour_service";
    v43 = 2082;
    v44 = "name";
    v9 = _os_log_send_and_compose_impl();

    typea = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v9, &typea, &v39))
    {
      goto LABEL_68;
    }

    if (typea == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = typea;
      if (!os_log_type_enabled(v10, typea))
      {
        goto LABEL_67;
      }

      *buf = 136446466;
      v42 = "nw_endpoint_create_bonjour_service";
      v43 = 2082;
      v44 = "name";
      v12 = "%{public}s invalid empty string %{public}s";
LABEL_64:
      v28 = v10;
      v29 = v11;
      goto LABEL_65;
    }

    if (v39 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = typea;
      if (!os_log_type_enabled(v10, typea))
      {
        goto LABEL_67;
      }

      *buf = 136446466;
      v42 = "nw_endpoint_create_bonjour_service";
      v43 = 2082;
      v44 = "name";
      v12 = "%{public}s invalid empty string %{public}s, backtrace limit exceeded";
      goto LABEL_64;
    }

    v14 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v15 = typea;
    v16 = os_log_type_enabled(v10, typea);
    if (v14)
    {
      if (!v16)
      {
        goto LABEL_37;
      }

      *buf = 136446722;
      v42 = "nw_endpoint_create_bonjour_service";
      v43 = 2082;
      v44 = "name";
      v45 = 2082;
      v46 = v14;
      goto LABEL_36;
    }

    if (!v16)
    {
      goto LABEL_67;
    }

    *buf = 136446466;
    v42 = "nw_endpoint_create_bonjour_service";
    v43 = 2082;
    v44 = "name";
    v12 = "%{public}s invalid empty string %{public}s, no backtrace";
LABEL_59:
    v28 = v10;
    v29 = v15;
LABEL_65:
    v30 = 22;
LABEL_66:
    _os_log_impl(&dword_181A37000, v28, v29, v12, buf, v30);
    goto LABEL_67;
  }

  if (v6 >= 0x400)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v42 = "nw_endpoint_create_bonjour_service";
      v43 = 2082;
      v44 = "name";
      v45 = 1024;
      LODWORD(v46) = 1024;
LABEL_28:
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s %{public}s is longer than %d", buf, 0x1Cu);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (!type)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_endpoint_create_bonjour_service";
    v9 = _os_log_send_and_compose_impl();

    typea = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v9, &typea, &v39))
    {
      if (typea == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v32 = typea;
        if (!os_log_type_enabled(v10, typea))
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        v42 = "nw_endpoint_create_bonjour_service";
        v12 = "%{public}s called with null type";
        goto LABEL_109;
      }

      if (v39 == 1)
      {
        v22 = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v32 = typea;
        v36 = os_log_type_enabled(v10, typea);
        if (v22)
        {
          if (!v36)
          {
            goto LABEL_55;
          }

          *buf = 136446466;
          v42 = "nw_endpoint_create_bonjour_service";
          v43 = 2082;
          v44 = v22;
          v24 = "%{public}s called with null type, dumping backtrace:%{public}s";
          goto LABEL_102;
        }

        if (!v36)
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        v42 = "nw_endpoint_create_bonjour_service";
        v12 = "%{public}s called with null type, no backtrace";
      }

      else
      {
        v10 = __nwlog_obj();
        v32 = typea;
        if (!os_log_type_enabled(v10, typea))
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        v42 = "nw_endpoint_create_bonjour_service";
        v12 = "%{public}s called with null type, backtrace limit exceeded";
      }

LABEL_109:
      v28 = v10;
      v29 = v32;
      v30 = 12;
      goto LABEL_66;
    }

LABEL_68:
    if (!v9)
    {
      return 0;
    }

LABEL_69:
    free(v9);
    return 0;
  }

  v13 = strlen(type);
  if (!v13)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    *buf = 136446466;
    v42 = "nw_endpoint_create_bonjour_service";
    v43 = 2082;
    v44 = "type";
    v9 = _os_log_send_and_compose_impl();

    typea = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v9, &typea, &v39))
    {
      goto LABEL_68;
    }

    if (typea == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = typea;
      if (!os_log_type_enabled(v10, typea))
      {
        goto LABEL_67;
      }

      *buf = 136446466;
      v42 = "nw_endpoint_create_bonjour_service";
      v43 = 2082;
      v44 = "type";
      v12 = "%{public}s invalid empty string %{public}s";
      goto LABEL_64;
    }

    if (v39 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = typea;
      if (os_log_type_enabled(v10, typea))
      {
        *buf = 136446466;
        v42 = "nw_endpoint_create_bonjour_service";
        v43 = 2082;
        v44 = "type";
        v12 = "%{public}s invalid empty string %{public}s, backtrace limit exceeded";
        goto LABEL_64;
      }

      goto LABEL_67;
    }

    v14 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v15 = typea;
    v19 = os_log_type_enabled(v10, typea);
    if (v14)
    {
      if (!v19)
      {
        goto LABEL_37;
      }

      *buf = 136446722;
      v42 = "nw_endpoint_create_bonjour_service";
      v43 = 2082;
      v44 = "type";
      v45 = 2082;
      v46 = v14;
LABEL_36:
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s invalid empty string %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
LABEL_37:

      free(v14);
      if (!v9)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (!v19)
    {
      goto LABEL_67;
    }

    *buf = 136446466;
    v42 = "nw_endpoint_create_bonjour_service";
    v43 = 2082;
    v44 = "type";
    v12 = "%{public}s invalid empty string %{public}s, no backtrace";
    goto LABEL_59;
  }

  if (v13 >= 0x400)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v42 = "nw_endpoint_create_bonjour_service";
      v43 = 2082;
      v44 = "type";
      v45 = 1024;
      LODWORD(v46) = 1024;
      goto LABEL_28;
    }

LABEL_29:

    return 0;
  }

  if (!domain)
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_endpoint_create_bonjour_service";
    v9 = _os_log_send_and_compose_impl();

    typea = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v9, &typea, &v39))
    {
      if (typea == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v32 = typea;
        if (!os_log_type_enabled(v10, typea))
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        v42 = "nw_endpoint_create_bonjour_service";
        v12 = "%{public}s called with null domain";
        goto LABEL_109;
      }

      if (v39 == 1)
      {
        v22 = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v32 = typea;
        v38 = os_log_type_enabled(v10, typea);
        if (v22)
        {
          if (!v38)
          {
            goto LABEL_55;
          }

          *buf = 136446466;
          v42 = "nw_endpoint_create_bonjour_service";
          v43 = 2082;
          v44 = v22;
          v24 = "%{public}s called with null domain, dumping backtrace:%{public}s";
LABEL_102:
          v25 = v10;
          v26 = v32;
          v27 = 22;
          goto LABEL_54;
        }

        if (!v38)
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        v42 = "nw_endpoint_create_bonjour_service";
        v12 = "%{public}s called with null domain, no backtrace";
      }

      else
      {
        v10 = __nwlog_obj();
        v32 = typea;
        if (!os_log_type_enabled(v10, typea))
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        v42 = "nw_endpoint_create_bonjour_service";
        v12 = "%{public}s called with null domain, backtrace limit exceeded";
      }

      goto LABEL_109;
    }

    goto LABEL_68;
  }

  v18 = strlen(domain);
  if (!v18)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    *buf = 136446466;
    v42 = "nw_endpoint_create_bonjour_service";
    v43 = 2082;
    v44 = "domain";
    v9 = _os_log_send_and_compose_impl();

    typea = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v9, &typea, &v39))
    {
      goto LABEL_68;
    }

    if (typea == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = typea;
      if (os_log_type_enabled(v10, typea))
      {
        *buf = 136446466;
        v42 = "nw_endpoint_create_bonjour_service";
        v43 = 2082;
        v44 = "domain";
        v12 = "%{public}s invalid empty string %{public}s";
        goto LABEL_64;
      }

LABEL_67:

      goto LABEL_68;
    }

    if (v39 != 1)
    {
      v10 = __nwlog_obj();
      v11 = typea;
      if (os_log_type_enabled(v10, typea))
      {
        *buf = 136446466;
        v42 = "nw_endpoint_create_bonjour_service";
        v43 = 2082;
        v44 = "domain";
        v12 = "%{public}s invalid empty string %{public}s, backtrace limit exceeded";
        goto LABEL_64;
      }

      goto LABEL_67;
    }

    v22 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = typea;
    v23 = os_log_type_enabled(v10, typea);
    if (!v22)
    {
      if (v23)
      {
        *buf = 136446466;
        v42 = "nw_endpoint_create_bonjour_service";
        v43 = 2082;
        v44 = "domain";
        v12 = "%{public}s invalid empty string %{public}s, no backtrace";
        goto LABEL_64;
      }

      goto LABEL_67;
    }

    if (v23)
    {
      *buf = 136446722;
      v42 = "nw_endpoint_create_bonjour_service";
      v43 = 2082;
      v44 = "domain";
      v45 = 2082;
      v46 = v22;
      v24 = "%{public}s invalid empty string %{public}s, dumping backtrace:%{public}s";
      v25 = v10;
      v26 = v11;
      v27 = 32;
LABEL_54:
      _os_log_impl(&dword_181A37000, v25, v26, v24, buf, v27);
    }

LABEL_55:

    free(v22);
    if (!v9)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v18 >= 0x400)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v42 = "nw_endpoint_create_bonjour_service";
      v43 = 2082;
      v44 = "domain";
      v45 = 1024;
      LODWORD(v46) = 1024;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  return _nw_endpoint_create_bonjour_service(name, type, domain);
}

const char *__cdecl nw_endpoint_get_bonjour_service_name(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    bonjour_service_name = _nw_endpoint_get_bonjour_service_name(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_bonjour_service_name";
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
        v16 = "nw_endpoint_get_bonjour_service_name";
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
          v16 = "nw_endpoint_get_bonjour_service_name";
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
        v16 = "nw_endpoint_get_bonjour_service_name";
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
        v16 = "nw_endpoint_get_bonjour_service_name";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  bonjour_service_name = 0;
LABEL_3:

  return bonjour_service_name;
}

const char *__cdecl nw_endpoint_get_bonjour_service_type(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    bonjour_service_type = _nw_endpoint_get_bonjour_service_type(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_bonjour_service_type";
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
        v16 = "nw_endpoint_get_bonjour_service_type";
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
          v16 = "nw_endpoint_get_bonjour_service_type";
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
        v16 = "nw_endpoint_get_bonjour_service_type";
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
        v16 = "nw_endpoint_get_bonjour_service_type";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  bonjour_service_type = 0;
LABEL_3:

  return bonjour_service_type;
}

const char *__cdecl nw_endpoint_get_bonjour_service_domain(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    bonjour_service_domain = _nw_endpoint_get_bonjour_service_domain(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_bonjour_service_domain";
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
        v16 = "nw_endpoint_get_bonjour_service_domain";
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
          v16 = "nw_endpoint_get_bonjour_service_domain";
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
        v16 = "nw_endpoint_get_bonjour_service_domain";
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
        v16 = "nw_endpoint_get_bonjour_service_domain";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  bonjour_service_domain = 0;
LABEL_3:

  return bonjour_service_domain;
}

uint64_t nw_endpoint_get_bonjour_fullname(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    bonjour_fullname = _nw_endpoint_get_bonjour_fullname(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_bonjour_fullname";
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
        v16 = "nw_endpoint_get_bonjour_fullname";
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
          v16 = "nw_endpoint_get_bonjour_fullname";
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
        v16 = "nw_endpoint_get_bonjour_fullname";
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
        v16 = "nw_endpoint_get_bonjour_fullname";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  bonjour_fullname = 0;
LABEL_3:

  return bonjour_fullname;
}

void *nw_ids_info_create(const char *a1, const char *a2, const char *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_ids_info_create";
    v15 = _os_log_send_and_compose_impl();

    LOBYTE(v45.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v15, &v45, &type))
    {
      goto LABEL_86;
    }

    if (LOBYTE(v45.receiver) == 17)
    {
      v16 = __nwlog_obj();
      receiver = v45.receiver;
      if (os_log_type_enabled(v16, v45.receiver))
      {
        *buf = 136446210;
        v47 = "nw_ids_info_create";
        _os_log_impl(&dword_181A37000, v16, receiver, "%{public}s called with null session_id", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v16 = __nwlog_obj();
      v39 = v45.receiver;
      if (os_log_type_enabled(v16, v45.receiver))
      {
        *buf = 136446210;
        v47 = "nw_ids_info_create";
        _os_log_impl(&dword_181A37000, v16, v39, "%{public}s called with null session_id, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v31 = v45.receiver;
    v32 = os_log_type_enabled(v16, v45.receiver);
    if (!backtrace_string)
    {
      if (v32)
      {
        *buf = 136446210;
        v47 = "nw_ids_info_create";
        _os_log_impl(&dword_181A37000, v16, v31, "%{public}s called with null session_id, no backtrace", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (v32)
    {
      *buf = 136446466;
      v47 = "nw_ids_info_create";
      v48 = 2082;
      v49 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v31, "%{public}s called with null session_id, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_55;
  }

  if (!a2)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_ids_info_create";
    v15 = _os_log_send_and_compose_impl();

    LOBYTE(v45.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v15, &v45, &type))
    {
      goto LABEL_86;
    }

    if (LOBYTE(v45.receiver) == 17)
    {
      v16 = __nwlog_obj();
      v19 = v45.receiver;
      if (os_log_type_enabled(v16, v45.receiver))
      {
        *buf = 136446210;
        v47 = "nw_ids_info_create";
        _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null pseudonym", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v16 = __nwlog_obj();
      v40 = v45.receiver;
      if (os_log_type_enabled(v16, v45.receiver))
      {
        *buf = 136446210;
        v47 = "nw_ids_info_create";
        _os_log_impl(&dword_181A37000, v16, v40, "%{public}s called with null pseudonym, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v33 = v45.receiver;
    v34 = os_log_type_enabled(v16, v45.receiver);
    if (!backtrace_string)
    {
      if (v34)
      {
        *buf = 136446210;
        v47 = "nw_ids_info_create";
        _os_log_impl(&dword_181A37000, v16, v33, "%{public}s called with null pseudonym, no backtrace", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (v34)
    {
      *buf = 136446466;
      v47 = "nw_ids_info_create";
      v48 = 2082;
      v49 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v33, "%{public}s called with null pseudonym, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_55;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  v7 = v6;
  if (!a3)
  {
    *buf = 136446210;
    v47 = "nw_ids_info_create";
    v15 = _os_log_send_and_compose_impl();

    LOBYTE(v45.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v15, &v45, &type))
    {
      goto LABEL_86;
    }

    if (LOBYTE(v45.receiver) == 17)
    {
      v16 = __nwlog_obj();
      v20 = v45.receiver;
      if (os_log_type_enabled(v16, v45.receiver))
      {
        *buf = 136446210;
        v47 = "nw_ids_info_create";
        _os_log_impl(&dword_181A37000, v16, v20, "%{public}s called with null push_token", buf, 0xCu);
      }

LABEL_82:

      goto LABEL_86;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v16 = __nwlog_obj();
      v41 = v45.receiver;
      if (os_log_type_enabled(v16, v45.receiver))
      {
        *buf = 136446210;
        v47 = "nw_ids_info_create";
        _os_log_impl(&dword_181A37000, v16, v41, "%{public}s called with null push_token, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v35 = v45.receiver;
    v36 = os_log_type_enabled(v16, v45.receiver);
    if (!backtrace_string)
    {
      if (v36)
      {
        *buf = 136446210;
        v47 = "nw_ids_info_create";
        _os_log_impl(&dword_181A37000, v16, v35, "%{public}s called with null push_token, no backtrace", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (v36)
    {
      *buf = 136446466;
      v47 = "nw_ids_info_create";
      v48 = 2082;
      v49 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v35, "%{public}s called with null push_token, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_55:

    goto LABEL_61;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136446978;
    v47 = "nw_ids_info_create";
    v48 = 2080;
    v49 = a1;
    v50 = 2080;
    v51 = a2;
    v52 = 2080;
    v53 = a3;
    _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s Creating IDS info with sessionId='%s', pseudonym='%s', push_token='%s'", buf, 0x2Au);
  }

  v8 = [NWConcrete_nw_ids_info alloc];
  if (!v8)
  {
    goto LABEL_88;
  }

  v45.receiver = v8;
  v45.super_class = NWConcrete_nw_ids_info;
  v9 = objc_msgSendSuper2(&v45, sel_init);
  if (!v9)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v47 = "[NWConcrete_nw_ids_info initWithSessionId:pseudonym:pushToken:]";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if ((__nwlog_fault(v15, &type, &v43) & 1) == 0)
    {
      goto LABEL_86;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v47 = "[NWConcrete_nw_ids_info initWithSessionId:pseudonym:pushToken:]";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s [super init] failed", buf, 0xCu);
      }

LABEL_85:

LABEL_86:
      if (v15)
      {
        free(v15);
      }

LABEL_88:
      v9 = 0;
      goto LABEL_12;
    }

    if (v43 != 1)
    {
      v22 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v47 = "[NWConcrete_nw_ids_info initWithSessionId:pseudonym:pushToken:]";
        _os_log_impl(&dword_181A37000, v22, v42, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_85;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v37 = type;
    v38 = os_log_type_enabled(v22, type);
    if (!backtrace_string)
    {
      if (v38)
      {
        *buf = 136446210;
        v47 = "[NWConcrete_nw_ids_info initWithSessionId:pseudonym:pushToken:]";
        _os_log_impl(&dword_181A37000, v22, v37, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_85;
    }

    if (v38)
    {
      *buf = 136446466;
      v47 = "[NWConcrete_nw_ids_info initWithSessionId:pseudonym:pushToken:]";
      v48 = 2082;
      v49 = backtrace_string;
      _os_log_impl(&dword_181A37000, v22, v37, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_61:
    free(backtrace_string);
    goto LABEL_86;
  }

  v10 = strdup(a1);
  if (!v10)
  {
    v24 = __nwlog_obj();
    os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v47 = "strict_strdup";
    v25 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v25);
    if (result)
    {
      goto LABEL_89;
    }

    free(v25);
    v10 = 0;
  }

  v9[1] = v10;
  v11 = strdup(a2);
  if (!v11)
  {
    v26 = __nwlog_obj();
    os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v47 = "strict_strdup";
    v27 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v27);
    if (result)
    {
      goto LABEL_89;
    }

    free(v27);
    v11 = 0;
  }

  v9[2] = v11;
  v12 = strdup(a3);
  if (!v12)
  {
    v28 = __nwlog_obj();
    os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v47 = "strict_strdup";
    v29 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v29);
    if (!result)
    {
      free(v29);
      v12 = 0;
      goto LABEL_11;
    }

LABEL_89:
    __break(1u);
    return result;
  }

LABEL_11:
  v9[3] = v12;
LABEL_12:

  return v9;
}

uint64_t nw_ids_info_get_session_id(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[1];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_ids_info_get_session_id";
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
        v15 = "nw_ids_info_get_session_id";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null info", buf, 0xCu);
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
          v15 = "nw_ids_info_get_session_id";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null info, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_ids_info_get_session_id";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null info, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_ids_info_get_session_id";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null info, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_ids_info_get_pseudonym(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[2];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_ids_info_get_pseudonym";
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
        v15 = "nw_ids_info_get_pseudonym";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null info", buf, 0xCu);
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
          v15 = "nw_ids_info_get_pseudonym";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null info, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_ids_info_get_pseudonym";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null info, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_ids_info_get_pseudonym";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null info, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_ids_info_get_push_token(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[3];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_ids_info_get_push_token";
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
        v15 = "nw_ids_info_get_push_token";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null info", buf, 0xCu);
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
          v15 = "nw_ids_info_get_push_token";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null info, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_ids_info_get_push_token";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null info, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_ids_info_get_push_token";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null info, backtrace limit exceeded", buf, 0xCu);
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

uint64_t __Block_byref_object_copy__15258(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

nw_advertise_descriptor_t nw_advertise_descriptor_create_bonjour_service(const char *name, const char *type, const char *domain)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!type)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_advertise_descriptor_create_bonjour_service";
    v14 = _os_log_send_and_compose_impl();

    LOBYTE(v35.receiver) = 16;
    typea = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v14, &v35, &typea))
    {
      goto LABEL_54;
    }

    if (LOBYTE(v35.receiver) == 17)
    {
      v15 = __nwlog_obj();
      receiver = v35.receiver;
      if (os_log_type_enabled(v15, v35.receiver))
      {
        *buf = 136446210;
        v37 = "nw_advertise_descriptor_create_bonjour_service";
        _os_log_impl(&dword_181A37000, v15, receiver, "%{public}s called with null type", buf, 0xCu);
      }
    }

    else if (typea == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v27 = v35.receiver;
      v28 = os_log_type_enabled(v15, v35.receiver);
      if (backtrace_string)
      {
        if (v28)
        {
          *buf = 136446466;
          v37 = "nw_advertise_descriptor_create_bonjour_service";
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v27, "%{public}s called with null type, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_41;
      }

      if (v28)
      {
        *buf = 136446210;
        v37 = "nw_advertise_descriptor_create_bonjour_service";
        _os_log_impl(&dword_181A37000, v15, v27, "%{public}s called with null type, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v31 = v35.receiver;
      if (os_log_type_enabled(v15, v35.receiver))
      {
        *buf = 136446210;
        v37 = "nw_advertise_descriptor_create_bonjour_service";
        _os_log_impl(&dword_181A37000, v15, v31, "%{public}s called with null type, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_54;
  }

  v6 = [NWConcrete_nw_advertise_descriptor alloc];
  if (!v6)
  {
    return 0;
  }

  v35.receiver = v6;
  v35.super_class = NWConcrete_nw_advertise_descriptor;
  v7 = objc_msgSendSuper2(&v35, sel_init);
  v8 = v7;
  if (!v7)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v37 = "[NWConcrete_nw_advertise_descriptor initWithName:type:domain:]";
    v14 = _os_log_send_and_compose_impl();

    typea = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if ((__nwlog_fault(v14, &typea, &v33) & 1) == 0)
    {
      goto LABEL_54;
    }

    if (typea == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = typea;
      if (os_log_type_enabled(v18, typea))
      {
        *buf = 136446210;
        v37 = "[NWConcrete_nw_advertise_descriptor initWithName:type:domain:]";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s [super init] failed", buf, 0xCu);
      }

LABEL_53:

LABEL_54:
      if (v14)
      {
        free(v14);
      }

      return 0;
    }

    if (v33 != 1)
    {
      v18 = __nwlog_obj();
      v32 = typea;
      if (os_log_type_enabled(v18, typea))
      {
        *buf = 136446210;
        v37 = "[NWConcrete_nw_advertise_descriptor initWithName:type:domain:]";
        _os_log_impl(&dword_181A37000, v18, v32, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v29 = typea;
    v30 = os_log_type_enabled(v18, typea);
    if (!backtrace_string)
    {
      if (v30)
      {
        *buf = 136446210;
        v37 = "[NWConcrete_nw_advertise_descriptor initWithName:type:domain:]";
        _os_log_impl(&dword_181A37000, v18, v29, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v30)
    {
      *buf = 136446466;
      v37 = "[NWConcrete_nw_advertise_descriptor initWithName:type:domain:]";
      v38 = 2082;
      v39 = backtrace_string;
      _os_log_impl(&dword_181A37000, v18, v29, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_41:
    free(backtrace_string);
    goto LABEL_54;
  }

  *(v7 + 2) = 1;
  if (name)
  {
    v9 = strdup(name);
    if (!v9)
    {
      v22 = __nwlog_obj();
      os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v37 = "strict_strdup";
      v23 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v23);
      if (result)
      {
        goto LABEL_57;
      }

      free(v23);
      v9 = 0;
    }

    v8[2].isa = v9;
  }

  v10 = strdup(type);
  if (!v10)
  {
    v20 = __nwlog_obj();
    os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v37 = "strict_strdup";
    v21 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v21);
    if (result)
    {
      goto LABEL_57;
    }

    free(v21);
  }

  v8[3].isa = v10;
  if (v10[strlen(v10) - 1] == 46)
  {
    v10[strlen(type) - 1] = 0;
  }

  if (!domain)
  {
    goto LABEL_13;
  }

  v11 = strdup(domain);
  if (v11)
  {
LABEL_12:
    v8[4].isa = v11;
LABEL_13:
    LOBYTE(v8[11].isa) &= ~1u;
    return v8;
  }

  v24 = __nwlog_obj();
  os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v37 = "strict_strdup";
  v25 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v25);
  if (!result)
  {
    free(v25);
    v11 = 0;
    goto LABEL_12;
  }

LABEL_57:
  __break(1u);
  return result;
}

void *nw_advertise_descriptor_create_application_service_with_bundle_id(const char *a1, const char *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_advertise_descriptor_create_application_service_with_bundle_id";
    v12 = _os_log_send_and_compose_impl();

    LOBYTE(v41.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v12, &v41, &type))
    {
      if (LOBYTE(v41.receiver) == 17)
      {
        v13 = __nwlog_obj();
        receiver = v41.receiver;
        if (os_log_type_enabled(v13, v41.receiver))
        {
          *buf = 136446210;
          v43 = "nw_advertise_descriptor_create_application_service_with_bundle_id";
          _os_log_impl(&dword_181A37000, v13, receiver, "%{public}s called with null application_service_name", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v24 = v41.receiver;
        v25 = os_log_type_enabled(v13, v41.receiver);
        if (backtrace_string)
        {
          if (v25)
          {
            *buf = 136446466;
            v43 = "nw_advertise_descriptor_create_application_service_with_bundle_id";
            v44 = 2082;
            v45 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null application_service_name, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_47;
        }

        if (v25)
        {
          *buf = 136446210;
          v43 = "nw_advertise_descriptor_create_application_service_with_bundle_id";
          _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null application_service_name, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v29 = v41.receiver;
        if (os_log_type_enabled(v13, v41.receiver))
        {
          *buf = 136446210;
          v43 = "nw_advertise_descriptor_create_application_service_with_bundle_id";
          _os_log_impl(&dword_181A37000, v13, v29, "%{public}s called with null application_service_name, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_47:
    if (v12)
    {
      free(v12);
    }

    v9 = 0;
    goto LABEL_10;
  }

  v4 = [NWConcrete_nw_advertise_descriptor alloc];
  if (!v4)
  {
    goto LABEL_55;
  }

  v41.receiver = v4;
  v41.super_class = NWConcrete_nw_advertise_descriptor;
  v5 = objc_msgSendSuper2(&v41, sel_init);
  v6 = v5;
  if (!v5)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v43 = "[NWConcrete_nw_advertise_descriptor initWithApplicationServiceName:bundleId:]";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v16, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v43 = "[NWConcrete_nw_advertise_descriptor initWithApplicationServiceName:bundleId:]";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v39 == 1)
      {
        v26 = __nw_create_backtrace_string();
        v17 = __nwlog_obj();
        v27 = type;
        v28 = os_log_type_enabled(v17, type);
        if (v26)
        {
          if (v28)
          {
            *buf = 136446466;
            v43 = "[NWConcrete_nw_advertise_descriptor initWithApplicationServiceName:bundleId:]";
            v44 = 2082;
            v45 = v26;
            _os_log_impl(&dword_181A37000, v17, v27, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v26);
          goto LABEL_53;
        }

        if (v28)
        {
          *buf = 136446210;
          v43 = "[NWConcrete_nw_advertise_descriptor initWithApplicationServiceName:bundleId:]";
          _os_log_impl(&dword_181A37000, v17, v27, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v17 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v43 = "[NWConcrete_nw_advertise_descriptor initWithApplicationServiceName:bundleId:]";
          _os_log_impl(&dword_181A37000, v17, v30, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_53:
    if (v16)
    {
      free(v16);
    }

LABEL_55:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v31 = gLogObj;
    *buf = 136446210;
    v43 = "nw_advertise_descriptor_create_application_service_with_bundle_id";
    v32 = _os_log_send_and_compose_impl();

    LOBYTE(v41.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v32, &v41, &type))
    {
      if (LOBYTE(v41.receiver) == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        v34 = v41.receiver;
        if (os_log_type_enabled(v33, v41.receiver))
        {
          *buf = 136446210;
          v43 = "nw_advertise_descriptor_create_application_service_with_bundle_id";
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s [nw_advertise_descriptor_t init] failed", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v35 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        v36 = v41.receiver;
        v37 = os_log_type_enabled(v33, v41.receiver);
        if (v35)
        {
          if (v37)
          {
            *buf = 136446466;
            v43 = "nw_advertise_descriptor_create_application_service_with_bundle_id";
            v44 = 2082;
            v45 = v35;
            _os_log_impl(&dword_181A37000, v33, v36, "%{public}s [nw_advertise_descriptor_t init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v35);
          goto LABEL_71;
        }

        if (v37)
        {
          *buf = 136446210;
          v43 = "nw_advertise_descriptor_create_application_service_with_bundle_id";
          _os_log_impl(&dword_181A37000, v33, v36, "%{public}s [nw_advertise_descriptor_t init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        v38 = v41.receiver;
        if (os_log_type_enabled(v33, v41.receiver))
        {
          *buf = 136446210;
          v43 = "nw_advertise_descriptor_create_application_service_with_bundle_id";
          _os_log_impl(&dword_181A37000, v33, v38, "%{public}s [nw_advertise_descriptor_t init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_71:
    if (v32)
    {
      free(v32);
    }

    v9 = 0;
    goto LABEL_9;
  }

  *(v5 + 2) = 2;
  v7 = strdup(a1);
  if (!v7)
  {
    v19 = __nwlog_obj();
    os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v43 = "strict_strdup";
    v20 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v20);
    if (result)
    {
      goto LABEL_74;
    }

    free(v20);
    v6[6] = 0;
    if (!a2)
    {
      goto LABEL_8;
    }

LABEL_6:
    v8 = strdup(a2);
    if (v8)
    {
LABEL_7:
      v6[7] = v8;
      goto LABEL_8;
    }

    v21 = __nwlog_obj();
    os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v43 = "strict_strdup";
    v22 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v22);
    if (!result)
    {
      free(v22);
      v8 = 0;
      goto LABEL_7;
    }

LABEL_74:
    __break(1u);
    return result;
  }

  v6[6] = v7;
  if (a2)
  {
    goto LABEL_6;
  }

LABEL_8:
  v9 = v6;
LABEL_9:

LABEL_10:

  return v9;
}

uint64_t nw_advertise_descriptor_get_invitation_scope(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_invitation_scope";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v5, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_advertise_descriptor_get_invitation_scope";
          _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null descriptor", buf, 0xCu);
        }

LABEL_20:

        goto LABEL_21;
      }

      if (v19 != 1)
      {
        v6 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_advertise_descriptor_get_invitation_scope";
          _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_advertise_descriptor_get_invitation_scope";
          _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v17)
      {
        *buf = 136446466;
        v22 = "nw_advertise_descriptor_get_invitation_scope";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v5)
    {
LABEL_23:
      v3 = 0;
      goto LABEL_24;
    }

LABEL_22:
    free(v5);
    goto LABEL_23;
  }

  if (v1[2] != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_invitation_scope";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_invitation_scope";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s Advertise descriptor not of type application service", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      v8 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (v8)
      {
        if (v10)
        {
          *buf = 136446466;
          v22 = "nw_advertise_descriptor_get_invitation_scope";
          v23 = 2082;
          v24 = v8;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Advertise descriptor not of type application service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v8);
        if (!v5)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_invitation_scope";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Advertise descriptor not of type application service, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_invitation_scope";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s Advertise descriptor not of type application service, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_20;
  }

  v3 = v1[16];
LABEL_24:

  return v3;
}

uint64_t nw_advertise_descriptor_get_invitation_route(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_invitation_route";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v5, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_advertise_descriptor_get_invitation_route";
          _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null descriptor", buf, 0xCu);
        }

LABEL_20:

        goto LABEL_21;
      }

      if (v19 != 1)
      {
        v6 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_advertise_descriptor_get_invitation_route";
          _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_advertise_descriptor_get_invitation_route";
          _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v17)
      {
        *buf = 136446466;
        v22 = "nw_advertise_descriptor_get_invitation_route";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v5)
    {
LABEL_23:
      v3 = 0;
      goto LABEL_24;
    }

LABEL_22:
    free(v5);
    goto LABEL_23;
  }

  if (v1[2] != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_invitation_route";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_invitation_route";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s Advertise descriptor not of type application service", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      v8 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (v8)
      {
        if (v10)
        {
          *buf = 136446466;
          v22 = "nw_advertise_descriptor_get_invitation_route";
          v23 = 2082;
          v24 = v8;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Advertise descriptor not of type application service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v8);
        if (!v5)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_invitation_route";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Advertise descriptor not of type application service, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_invitation_route";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s Advertise descriptor not of type application service, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_20;
  }

  v3 = v1[17];
LABEL_24:

  return v3;
}

BOOL nw_advertise_descriptor_is_equal(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  is_equal = v5 == v6;
  if (v5 != v6 && v5 && v6)
  {
    v9 = *(v5 + 2);
    v10 = *(v7 + 2);
    if (v9 && v10)
    {
      if (strcmp(v9, v10))
      {
        goto LABEL_38;
      }
    }

    else if (v9 != v10)
    {
      goto LABEL_38;
    }

    v11 = *(v5 + 3);
    v12 = *(v7 + 3);
    if (v11 && v12)
    {
      if (strcmp(v11, v12))
      {
        goto LABEL_38;
      }
    }

    else if (v11 != v12)
    {
      goto LABEL_38;
    }

    v13 = *(v5 + 4);
    v14 = *(v7 + 4);
    if (v13 && v14)
    {
      if (strcmp(v13, v14))
      {
        goto LABEL_38;
      }
    }

    else if (v13 != v14)
    {
      goto LABEL_38;
    }

    v15 = *(v5 + 6);
    v16 = *(v7 + 6);
    if (v15 && v16)
    {
      if (strcmp(v15, v16))
      {
        goto LABEL_38;
      }
    }

    else if (v15 != v16)
    {
      goto LABEL_38;
    }

    v17 = *(v5 + 7);
    v18 = *(v7 + 7);
    if (v17 && v18)
    {
      if (strcmp(v17, v18))
      {
        goto LABEL_38;
      }
    }

    else if (v17 != v18)
    {
      goto LABEL_38;
    }

    if (*(v5 + 16) == *(v7 + 16) && *(v5 + 17) == *(v7 + 17))
    {
      v19 = *(v5 + 9);
      if (v19 == *(v7 + 9))
      {
        if (v19 && (v20 = *(v5 + 10)) != 0 && (v21 = *(v7 + 10)) != 0)
        {
          v22 = memcmp(v20, v21, v19);
          is_equal = v22 == 0;
          if (v22 || (a3 & 1) != 0)
          {
            goto LABEL_39;
          }
        }

        else if (a3)
        {
          is_equal = 1;
          goto LABEL_39;
        }

        is_equal = nw_txt_record_is_equal(*(v5 + 5), *(v7 + 5));
        goto LABEL_39;
      }
    }

LABEL_38:
    is_equal = 0;
  }

LABEL_39:

  return is_equal;
}

uint64_t nw_advertise_descriptor_get_type(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[2];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_advertise_descriptor_get_type";
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
        v15 = "nw_advertise_descriptor_get_type";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null descriptor", buf, 0xCu);
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
          v15 = "nw_advertise_descriptor_get_type";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_advertise_descriptor_get_type";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_advertise_descriptor_get_type";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_advertise_descriptor_get_bonjour_name(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_bonjour_name";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_name";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null advertise_descriptor", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_advertise_descriptor_get_bonjour_name";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null advertise_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
LABEL_40:
          v2 = 0;
          v1 = v4;
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_40;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_name";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null advertise_descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_name";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null advertise_descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v1[2] != 1)
  {
    v4 = v1;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_bonjour_name";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_name";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s invalid advertise descriptor type", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      v14 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v7, type);
      if (v14)
      {
        if (v16)
        {
          *buf = 136446466;
          v22 = "nw_advertise_descriptor_get_bonjour_name";
          v23 = 2082;
          v24 = v14;
          _os_log_impl(&dword_181A37000, v7, v15, "%{public}s invalid advertise descriptor type, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v14);
        if (!v6)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (v16)
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_name";
        _os_log_impl(&dword_181A37000, v7, v15, "%{public}s invalid advertise descriptor type, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_name";
        _os_log_impl(&dword_181A37000, v7, v18, "%{public}s invalid advertise descriptor type, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_37;
  }

  v2 = *(v1 + 2);
LABEL_4:

  return v2;
}

uint64_t nw_advertise_descriptor_get_bonjour_type(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_bonjour_type";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_type";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null advertise_descriptor", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_advertise_descriptor_get_bonjour_type";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null advertise_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
LABEL_40:
          v2 = 0;
          v1 = v4;
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_40;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_type";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null advertise_descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_type";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null advertise_descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v1[2] != 1)
  {
    v4 = v1;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_bonjour_type";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_type";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s invalid advertise descriptor type", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      v14 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v7, type);
      if (v14)
      {
        if (v16)
        {
          *buf = 136446466;
          v22 = "nw_advertise_descriptor_get_bonjour_type";
          v23 = 2082;
          v24 = v14;
          _os_log_impl(&dword_181A37000, v7, v15, "%{public}s invalid advertise descriptor type, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v14);
        if (!v6)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (v16)
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_type";
        _os_log_impl(&dword_181A37000, v7, v15, "%{public}s invalid advertise descriptor type, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_type";
        _os_log_impl(&dword_181A37000, v7, v18, "%{public}s invalid advertise descriptor type, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_37;
  }

  v2 = *(v1 + 3);
LABEL_4:

  return v2;
}

uint64_t nw_advertise_descriptor_get_bonjour_domain(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_bonjour_domain";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_domain";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null advertise_descriptor", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_advertise_descriptor_get_bonjour_domain";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null advertise_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
LABEL_40:
          v2 = 0;
          v1 = v4;
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_40;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_domain";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null advertise_descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_domain";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null advertise_descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v1[2] != 1)
  {
    v4 = v1;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_bonjour_domain";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_domain";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s invalid advertise descriptor type", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      v14 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v7, type);
      if (v14)
      {
        if (v16)
        {
          *buf = 136446466;
          v22 = "nw_advertise_descriptor_get_bonjour_domain";
          v23 = 2082;
          v24 = v14;
          _os_log_impl(&dword_181A37000, v7, v15, "%{public}s invalid advertise descriptor type, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v14);
        if (!v6)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (v16)
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_domain";
        _os_log_impl(&dword_181A37000, v7, v15, "%{public}s invalid advertise descriptor type, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bonjour_domain";
        _os_log_impl(&dword_181A37000, v7, v18, "%{public}s invalid advertise descriptor type, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_37;
  }

  v2 = *(v1 + 4);
LABEL_4:

  return v2;
}

void nw_advertise_descriptor_set_no_auto_rename(nw_advertise_descriptor_t advertise_descriptor, BOOL no_auto_rename)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = advertise_descriptor;
  if (v3)
  {
    if (LODWORD(v3[1].isa) == 1)
    {
      LOBYTE(v3[11].isa) = v3[11].isa & 0xFE | no_auto_rename;
      goto LABEL_4;
    }

    v4 = v3;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_advertise_descriptor_set_no_auto_rename";
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
          v21 = "nw_advertise_descriptor_set_no_auto_rename";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s invalid advertise descriptor type", buf, 0xCu);
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
          v21 = "nw_advertise_descriptor_set_no_auto_rename";
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s invalid advertise descriptor type, backtrace limit exceeded", buf, 0xCu);
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
          v21 = "nw_advertise_descriptor_set_no_auto_rename";
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s invalid advertise descriptor type, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "nw_advertise_descriptor_set_no_auto_rename";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s invalid advertise descriptor type, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_advertise_descriptor_set_no_auto_rename";
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
          v21 = "nw_advertise_descriptor_set_no_auto_rename";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null advertise_descriptor", buf, 0xCu);
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
          v21 = "nw_advertise_descriptor_set_no_auto_rename";
          _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null advertise_descriptor, backtrace limit exceeded", buf, 0xCu);
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
          v21 = "nw_advertise_descriptor_set_no_auto_rename";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null advertise_descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v13)
      {
        *buf = 136446466;
        v21 = "nw_advertise_descriptor_set_no_auto_rename";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null advertise_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
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

BOOL nw_advertise_descriptor_get_no_auto_rename(nw_advertise_descriptor_t advertise_descriptor)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = advertise_descriptor;
  if (!v1)
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_no_auto_rename";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_no_auto_rename";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null advertise_descriptor", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_advertise_descriptor_get_no_auto_rename";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null advertise_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
LABEL_40:
          v2 = 0;
          v1 = v4;
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_40;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_no_auto_rename";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null advertise_descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_no_auto_rename";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null advertise_descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (LODWORD(v1[1].isa) != 1)
  {
    v4 = v1;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_no_auto_rename";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_no_auto_rename";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s invalid advertise descriptor type", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      v14 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v7, type);
      if (v14)
      {
        if (v16)
        {
          *buf = 136446466;
          v22 = "nw_advertise_descriptor_get_no_auto_rename";
          v23 = 2082;
          v24 = v14;
          _os_log_impl(&dword_181A37000, v7, v15, "%{public}s invalid advertise descriptor type, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v14);
        if (!v6)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (v16)
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_no_auto_rename";
        _os_log_impl(&dword_181A37000, v7, v15, "%{public}s invalid advertise descriptor type, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_no_auto_rename";
        _os_log_impl(&dword_181A37000, v7, v18, "%{public}s invalid advertise descriptor type, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_37;
  }

  v2 = v1[11].isa & 1;
LABEL_4:

  return v2;
}

void nw_advertise_descriptor_set_txt_record(nw_advertise_descriptor_t advertise_descriptor, const void *txt_record, size_t txt_length)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = advertise_descriptor;
  p_isa = &v5->isa;
  if (!v5)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_advertise_descriptor_set_txt_record";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_advertise_descriptor_set_txt_record";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null advertise_descriptor", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v26 = "nw_advertise_descriptor_set_txt_record";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null advertise_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v10)
        {
          goto LABEL_8;
        }

LABEL_43:
        free(v10);
        goto LABEL_8;
      }

      if (v17)
      {
        *buf = 136446210;
        v26 = "nw_advertise_descriptor_set_txt_record";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null advertise_descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_advertise_descriptor_set_txt_record";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null advertise_descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  if (LODWORD(v5[1].isa) == 1)
  {
    if (txt_record && txt_length)
    {
      v7 = nw_txt_record_create_with_bytes(txt_record, txt_length);
      isa = p_isa[5];
      p_isa[5] = v7;
    }

    else
    {
      isa = v5[5].isa;
      v5[5].isa = 0;
    }

    goto LABEL_8;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_advertise_descriptor_set_txt_record";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v10, &type, &v23))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v14 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v26 = "nw_advertise_descriptor_set_txt_record";
      _os_log_impl(&dword_181A37000, v11, v14, "%{public}s invalid advertise descriptor type", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v23 != 1)
  {
    v11 = __nwlog_obj();
    v22 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v26 = "nw_advertise_descriptor_set_txt_record";
      _os_log_impl(&dword_181A37000, v11, v22, "%{public}s invalid advertise descriptor type, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_41;
  }

  v18 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v19 = type;
  v20 = os_log_type_enabled(v11, type);
  if (!v18)
  {
    if (v20)
    {
      *buf = 136446210;
      v26 = "nw_advertise_descriptor_set_txt_record";
      _os_log_impl(&dword_181A37000, v11, v19, "%{public}s invalid advertise descriptor type, no backtrace", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v20)
  {
    *buf = 136446466;
    v26 = "nw_advertise_descriptor_set_txt_record";
    v27 = 2082;
    v28 = v18;
    _os_log_impl(&dword_181A37000, v11, v19, "%{public}s invalid advertise descriptor type, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v18);
  if (v10)
  {
    goto LABEL_43;
  }

LABEL_8:
}

uint64_t nw_advertise_descriptor_get_txt_record(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v8 = 0;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_advertise_descriptor_get_txt_record";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_advertise_descriptor_get_txt_record";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null advertise_descriptor", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v26 = "nw_advertise_descriptor_get_txt_record";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null advertise_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_44:
        if (!v10)
        {
LABEL_46:
          v6 = 0;
          v3 = v8;
          goto LABEL_10;
        }

LABEL_45:
        free(v10);
        goto LABEL_46;
      }

      if (v17)
      {
        *buf = 136446210;
        v26 = "nw_advertise_descriptor_get_txt_record";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null advertise_descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_advertise_descriptor_get_txt_record";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null advertise_descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  if (v3[2] != 1)
  {
    v8 = v3;
    v13 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_advertise_descriptor_get_txt_record";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_advertise_descriptor_get_txt_record";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s invalid advertise descriptor type", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      v18 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v11, type);
      if (v18)
      {
        if (v20)
        {
          *buf = 136446466;
          v26 = "nw_advertise_descriptor_get_txt_record";
          v27 = 2082;
          v28 = v18;
          _os_log_impl(&dword_181A37000, v11, v19, "%{public}s invalid advertise descriptor type, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
        if (!v10)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      if (v20)
      {
        *buf = 136446210;
        v26 = "nw_advertise_descriptor_get_txt_record";
        _os_log_impl(&dword_181A37000, v11, v19, "%{public}s invalid advertise descriptor type, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_advertise_descriptor_get_txt_record";
        _os_log_impl(&dword_181A37000, v11, v22, "%{public}s invalid advertise descriptor type, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_43;
  }

  if (a2)
  {
    v4 = *(v3 + 5);
    if (v4)
    {
      v4 = *(v4 + 16);
    }

    *a2 = v4;
  }

  v5 = *(v3 + 5);
  if (v5)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

LABEL_10:

  return v6;
}

void nw_advertise_descriptor_set_txt_record_object(nw_advertise_descriptor_t advertise_descriptor, nw_txt_record_t txt_record)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = advertise_descriptor;
  v4 = txt_record;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_set_txt_record_object";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_set_txt_record_object";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null advertise_descriptor", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_advertise_descriptor_set_txt_record_object";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null advertise_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_set_txt_record_object";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null advertise_descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_set_txt_record_object";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null advertise_descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (LODWORD(v3[1].isa) == 1)
  {
    objc_storeStrong(&v3[5].isa, txt_record);
    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_advertise_descriptor_set_txt_record_object";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_advertise_descriptor_set_txt_record_object";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s invalid advertise descriptor type", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v18 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_advertise_descriptor_set_txt_record_object";
      _os_log_impl(&dword_181A37000, v7, v18, "%{public}s invalid advertise descriptor type, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v14 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v15 = type;
  v16 = os_log_type_enabled(v7, type);
  if (!v14)
  {
    if (v16)
    {
      *buf = 136446210;
      v22 = "nw_advertise_descriptor_set_txt_record_object";
      _os_log_impl(&dword_181A37000, v7, v15, "%{public}s invalid advertise descriptor type, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v16)
  {
    *buf = 136446466;
    v22 = "nw_advertise_descriptor_set_txt_record_object";
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&dword_181A37000, v7, v15, "%{public}s invalid advertise descriptor type, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_4:
}

nw_txt_record_t nw_advertise_descriptor_copy_txt_record_object(nw_advertise_descriptor_t advertise_descriptor)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = advertise_descriptor;
  v2 = v1;
  if (v1)
  {
    if (LODWORD(v1[1].isa) == 1)
    {
      v3 = v1[5].isa;
      goto LABEL_4;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_advertise_descriptor_copy_txt_record_object";
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
          v21 = "nw_advertise_descriptor_copy_txt_record_object";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s invalid advertise descriptor type", buf, 0xCu);
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
          v21 = "nw_advertise_descriptor_copy_txt_record_object";
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s invalid advertise descriptor type, backtrace limit exceeded", buf, 0xCu);
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
          v21 = "nw_advertise_descriptor_copy_txt_record_object";
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s invalid advertise descriptor type, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "nw_advertise_descriptor_copy_txt_record_object";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s invalid advertise descriptor type, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_advertise_descriptor_copy_txt_record_object";
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
          v21 = "nw_advertise_descriptor_copy_txt_record_object";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null advertise_descriptor", buf, 0xCu);
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
          v21 = "nw_advertise_descriptor_copy_txt_record_object";
          _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null advertise_descriptor, backtrace limit exceeded", buf, 0xCu);
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
          v21 = "nw_advertise_descriptor_copy_txt_record_object";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null advertise_descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v13)
      {
        *buf = 136446466;
        v21 = "nw_advertise_descriptor_copy_txt_record_object";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null advertise_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
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

  v3 = 0;
LABEL_4:

  return v3;
}

nw_advertise_descriptor_t nw_advertise_descriptor_create_application_service(const char *application_service_name)
{
  if (nw_utilities_get_self_name::onceToken != -1)
  {
    v2 = application_service_name;
    dispatch_once(&nw_utilities_get_self_name::onceToken, &__block_literal_global_11_47232);
    application_service_name = v2;
  }

  nw_advertise_descriptor_create_application_service_with_bundle_id(application_service_name, nw_utilities_get_self_name::name);
  return objc_claimAutoreleasedReturnValue();
}

const char *__cdecl nw_advertise_descriptor_get_application_service_name(nw_advertise_descriptor_t advertise_descriptor)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = advertise_descriptor;
  if (!v1)
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_application_service_name";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_application_service_name";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null descriptor", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_advertise_descriptor_get_application_service_name";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
LABEL_40:
          isa = 0;
          v1 = v4;
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_40;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_application_service_name";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_application_service_name";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (LODWORD(v1[1].isa) != 2)
  {
    v4 = v1;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_application_service_name";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_application_service_name";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s invalid advertise descriptor type", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      v14 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v7, type);
      if (v14)
      {
        if (v16)
        {
          *buf = 136446466;
          v22 = "nw_advertise_descriptor_get_application_service_name";
          v23 = 2082;
          v24 = v14;
          _os_log_impl(&dword_181A37000, v7, v15, "%{public}s invalid advertise descriptor type, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v14);
        if (!v6)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (v16)
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_application_service_name";
        _os_log_impl(&dword_181A37000, v7, v15, "%{public}s invalid advertise descriptor type, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_application_service_name";
        _os_log_impl(&dword_181A37000, v7, v18, "%{public}s invalid advertise descriptor type, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_37;
  }

  isa = v1[6].isa;
LABEL_4:

  return isa;
}

uint64_t nw_advertise_descriptor_get_bundle_id(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_bundle_id";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bundle_id";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null descriptor", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_advertise_descriptor_get_bundle_id";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v6)
        {
LABEL_40:
          v2 = 0;
          v1 = v4;
          goto LABEL_4;
        }

LABEL_39:
        free(v6);
        goto LABEL_40;
      }

      if (v13)
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bundle_id";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bundle_id";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v1[2] != 2)
  {
    v4 = v1;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_advertise_descriptor_get_bundle_id";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bundle_id";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s invalid advertise descriptor type", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      v14 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v7, type);
      if (v14)
      {
        if (v16)
        {
          *buf = 136446466;
          v22 = "nw_advertise_descriptor_get_bundle_id";
          v23 = 2082;
          v24 = v14;
          _os_log_impl(&dword_181A37000, v7, v15, "%{public}s invalid advertise descriptor type, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v14);
        if (!v6)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (v16)
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bundle_id";
        _os_log_impl(&dword_181A37000, v7, v15, "%{public}s invalid advertise descriptor type, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_advertise_descriptor_get_bundle_id";
        _os_log_impl(&dword_181A37000, v7, v18, "%{public}s invalid advertise descriptor type, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_37;
  }

  v2 = *(v1 + 7);
LABEL_4:

  return v2;
}

void nw_advertise_descriptor_set_invitation(void *a1, int a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_advertise_descriptor_set_invitation";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v8, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v24 = "nw_advertise_descriptor_set_invitation";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null descriptor", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v21 != 1)
      {
        v9 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v24 = "nw_advertise_descriptor_set_invitation";
          _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v19)
        {
          *buf = 136446210;
          v24 = "nw_advertise_descriptor_set_invitation";
          _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v19)
      {
        *buf = 136446466;
        v24 = "nw_advertise_descriptor_set_invitation";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v8)
    {
      goto LABEL_23;
    }

LABEL_22:
    free(v8);
    goto LABEL_23;
  }

  if (v5[2] == 2)
  {
    v5[16] = a2;
    v5[17] = a3;
    goto LABEL_23;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446210;
  v24 = "nw_advertise_descriptor_set_invitation";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v8, &type, &v21))
  {
    goto LABEL_21;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v24 = "nw_advertise_descriptor_set_invitation";
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s Advertise descriptor not of type application service", buf, 0xCu);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (v21 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v14 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v24 = "nw_advertise_descriptor_set_invitation";
      _os_log_impl(&dword_181A37000, v9, v14, "%{public}s Advertise descriptor not of type application service, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v11 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v12 = type;
  v13 = os_log_type_enabled(v9, type);
  if (!v11)
  {
    if (v13)
    {
      *buf = 136446210;
      v24 = "nw_advertise_descriptor_set_invitation";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s Advertise descriptor not of type application service, no backtrace", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v13)
  {
    *buf = 136446466;
    v24 = "nw_advertise_descriptor_set_invitation";
    v25 = 2082;
    v26 = v11;
    _os_log_impl(&dword_181A37000, v9, v12, "%{public}s Advertise descriptor not of type application service, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v8)
  {
    goto LABEL_22;
  }

LABEL_23:
}

void nw_advertise_descriptor_set_custom_service(void *a1, const void *a2, size_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_advertise_descriptor_set_custom_service";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v13, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v25 = "nw_advertise_descriptor_set_custom_service";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null descriptor", buf, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v19 = type;
        v20 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v25 = "nw_advertise_descriptor_set_custom_service";
            v26 = 2082;
            v27 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_35;
        }

        if (v20)
        {
          *buf = 136446210;
          v25 = "nw_advertise_descriptor_set_custom_service";
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v25 = "nw_advertise_descriptor_set_custom_service";
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_35:
    if (v13)
    {
      free(v13);
    }

    goto LABEL_16;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v25 = "nw_advertise_descriptor_set_custom_service";
    v26 = 2048;
    v27 = a3;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s Setting advertise descriptor custom service (%zu bytes)", buf, 0x16u);
  }

  if (a3 >= 0x101)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "nw_advertise_descriptor_set_custom_service";
      v26 = 2048;
      v27 = a3;
      v28 = 1024;
      v29 = 256;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s Custom descriptor length (%zu) exceeds maximum (%d)", buf, 0x1Cu);
    }
  }

  v8 = v5[10];
  if (v8)
  {
    free(v8);
    v5[10] = 0;
  }

  v5[9] = a3;
  if (!a2)
  {
    goto LABEL_16;
  }

  if (!a3)
  {
    v16 = __nwlog_obj();
    os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v25 = "nw_advertise_descriptor_set_custom_service";
    v17 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v17))
    {
      goto LABEL_37;
    }

    free(v17);
  }

  v9 = malloc_type_malloc(a3, 0x1D4E3C02uLL);
  if (v9)
  {
LABEL_15:
    v5[10] = v9;
    memcpy(v9, a2, a3);
LABEL_16:

    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v25 = "nw_advertise_descriptor_set_custom_service";
  v11 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v11))
  {
    free(v11);
    v9 = 0;
    goto LABEL_15;
  }

LABEL_37:
  __break(1u);
}

uint64_t nw_advertise_descriptor_copy_custom_service(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_advertise_descriptor_copy_custom_service";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v13, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v30 = "nw_advertise_descriptor_copy_custom_service";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null descriptor", buf, 0xCu);
        }

        goto LABEL_47;
      }

      if (v27 != 1)
      {
        v14 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v30 = "nw_advertise_descriptor_copy_custom_service";
          _os_log_impl(&dword_181A37000, v14, v25, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_47;
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
          v30 = "nw_advertise_descriptor_copy_custom_service";
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_47;
      }

      if (v20)
      {
        *buf = 136446466;
        v30 = "nw_advertise_descriptor_copy_custom_service";
        v31 = 2082;
        v32 = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_33:

      free(backtrace_string);
    }

LABEL_48:
    if (v13)
    {
      free(v13);
    }

    v8 = 0;
    goto LABEL_13;
  }

  if (!a2)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_advertise_descriptor_copy_custom_service";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v13, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v30 = "nw_advertise_descriptor_copy_custom_service";
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null out_custom_service_length", buf, 0xCu);
        }

LABEL_47:

        goto LABEL_48;
      }

      if (v27 != 1)
      {
        v14 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v30 = "nw_advertise_descriptor_copy_custom_service";
          _os_log_impl(&dword_181A37000, v14, v26, "%{public}s called with null out_custom_service_length, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_47;
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
          v30 = "nw_advertise_descriptor_copy_custom_service";
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null out_custom_service_length, no backtrace", buf, 0xCu);
        }

        goto LABEL_47;
      }

      if (v22)
      {
        *buf = 136446466;
        v30 = "nw_advertise_descriptor_copy_custom_service";
        v31 = 2082;
        v32 = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null out_custom_service_length, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_33;
    }

    goto LABEL_48;
  }

  if (!v3[10] || !v3[9])
  {
    v8 = 0;
    *a2 = 0;
    goto LABEL_13;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(v4 + 9);
    *buf = 136446466;
    v30 = "nw_advertise_descriptor_copy_custom_service";
    v31 = 2048;
    v32 = v6;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s Copying custom service (%zu bytes)", buf, 0x16u);
  }

  v7 = *(v4 + 9);
  if (!v7)
  {
    v23 = __nwlog_obj();
    os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v30 = "nw_advertise_descriptor_copy_custom_service";
    v24 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v24);
    if (result)
    {
      goto LABEL_51;
    }

    free(v24);
    v7 = 0;
  }

  v8 = malloc_type_malloc(v7, 0x92E40B95uLL);
  if (v8)
  {
LABEL_11:
    memcpy(v8, *(v4 + 10), *(v4 + 9));
    *a2 = *(v4 + 9);
LABEL_13:

    return v8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v30 = "nw_advertise_descriptor_copy_custom_service";
  v10 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v10);
  if (!result)
  {
    free(v10);
    goto LABEL_11;
  }

LABEL_51:
  __break(1u);
  return result;
}

_DWORD *nw_error_create_tls_error(int a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [NWConcrete_nw_error alloc];

    return [(NWConcrete_nw_error *)v2 initWithDomain:a1 code:?];
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_error_create_tls_error";
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
        v14 = "nw_error_create_tls_error";
        v8 = "%{public}s called with null error_code";
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
            v14 = "nw_error_create_tls_error";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null error_code, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v10)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v14 = "nw_error_create_tls_error";
        v8 = "%{public}s called with null error_code, no backtrace";
        goto LABEL_18;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_error_create_tls_error";
        v8 = "%{public}s called with null error_code, backtrace limit exceeded";
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

  return 0;
}

_DWORD *nw_error_create_wifi_aware_error(int a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [NWConcrete_nw_error alloc];

    return [(NWConcrete_nw_error *)v2 initWithDomain:a1 code:?];
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_error_create_wifi_aware_error";
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
        v14 = "nw_error_create_wifi_aware_error";
        v8 = "%{public}s called with null error_code";
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
            v14 = "nw_error_create_wifi_aware_error";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null error_code, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v10)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v14 = "nw_error_create_wifi_aware_error";
        v8 = "%{public}s called with null error_code, no backtrace";
        goto LABEL_18;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_error_create_wifi_aware_error";
        v8 = "%{public}s called with null error_code, backtrace limit exceeded";
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

  return 0;
}

_DWORD *nw_error_create_error_with_inferred_domain(int a1)
{
  if (a1 >> 8 == 16776959)
  {
    return nw_error_create_dns_error(a1);
  }

  if ((a1 + 9899) <= 0x63)
  {
    return nw_error_create_tls_error(a1);
  }

  if ((a1 + 11999) > 0x1F3)
  {
    return nw_error_create_posix_error(a1);
  }

  return nw_error_create_wifi_aware_error(a1);
}

uint64_t nw_error_is_equal(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && v4)
  {
    if (v3[2] != v4[2])
    {
      v6 = 0;
      goto LABEL_10;
    }

    v5 = v3[3] == v4[3];
  }

  else
  {
    v5 = v3 == v4;
  }

  v6 = v5;
LABEL_10:

  return v6;
}

void *nw_nexus_create_with_options(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v58[13] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v56 = "nw_nexus_create_with_options";
    v21 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v21, &type, &v53))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v56 = "nw_nexus_create_with_options";
      v24 = "%{public}s called with null name";
    }

    else
    {
      if (v53 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        v30 = type;
        v31 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v31)
          {
            *buf = 136446466;
            v56 = "nw_nexus_create_with_options";
            v57 = 2082;
            *v58 = backtrace_string;
            _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_96;
        }

        if (!v31)
        {
          goto LABEL_96;
        }

        *buf = 136446210;
        v56 = "nw_nexus_create_with_options";
        v24 = "%{public}s called with null name, no backtrace";
        v39 = v29;
        v40 = v30;
LABEL_44:
        v41 = 12;
LABEL_95:
        _os_log_impl(&dword_181A37000, v39, v40, v24, buf, v41);
        goto LABEL_96;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      v56 = "nw_nexus_create_with_options";
      v24 = "%{public}s called with null name, backtrace limit exceeded";
    }

    v39 = v22;
    v40 = v23;
    goto LABEL_44;
  }

  v7 = a1;
  v8 = os_nexus_controller_create();
  if (!v8)
  {
    v25 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v56 = "nw_nexus_create_with_options";
    v57 = 1024;
    *v58 = v25;
    v21 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v21, &type, &v53))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_96;
      }

      *buf = 136446466;
      v56 = "nw_nexus_create_with_options";
      v57 = 1024;
      *v58 = v25;
      v24 = "%{public}s os_nexus_controller_create() %{darwin.errno}d";
LABEL_94:
      v39 = v26;
      v40 = v27;
      v41 = 18;
      goto LABEL_95;
    }

    if (v53 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_96;
      }

      *buf = 136446466;
      v56 = "nw_nexus_create_with_options";
      v57 = 1024;
      *v58 = v25;
      v24 = "%{public}s os_nexus_controller_create() %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_94;
    }

    v36 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    v27 = type;
    v37 = os_log_type_enabled(gLogObj, type);
    if (!v36)
    {
      if (!v37)
      {
        goto LABEL_96;
      }

      *buf = 136446466;
      v56 = "nw_nexus_create_with_options";
      v57 = 1024;
      *v58 = v25;
      v24 = "%{public}s os_nexus_controller_create() %{darwin.errno}d, no backtrace";
      goto LABEL_94;
    }

    if (v37)
    {
      *buf = 136446722;
      v56 = "nw_nexus_create_with_options";
      v57 = 1024;
      *v58 = v25;
      v58[2] = 2082;
      *&v58[3] = v36;
      v38 = "%{public}s os_nexus_controller_create() %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_66:
      _os_log_impl(&dword_181A37000, v26, v27, v38, buf, 0x1Cu);
    }

LABEL_67:
    free(v36);
    if (!v21)
    {
      return 0;
    }

    goto LABEL_97;
  }

  v9 = v8;
  objc_opt_class();
  v10 = _os_object_alloc();
  if (!v10)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v56 = "nw_nexus_create_with_options";
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (__nwlog_fault(v32, &type, &v53))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        v34 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446210;
          v56 = "nw_nexus_create_with_options";
          v35 = "%{public}s nw_nexus_obj_alloc failed";
LABEL_71:
          v51 = v33;
          v52 = v34;
LABEL_72:
          _os_log_impl(&dword_181A37000, v51, v52, v35, buf, 0xCu);
        }
      }

      else if (v53 == 1)
      {
        v43 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        v45 = type;
        v46 = os_log_type_enabled(gLogObj, type);
        if (v43)
        {
          if (v46)
          {
            *buf = 136446466;
            v56 = "nw_nexus_create_with_options";
            v57 = 2082;
            *v58 = v43;
            _os_log_impl(&dword_181A37000, v44, v45, "%{public}s nw_nexus_obj_alloc failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v43);
          goto LABEL_73;
        }

        if (v46)
        {
          *buf = 136446210;
          v56 = "nw_nexus_create_with_options";
          v35 = "%{public}s nw_nexus_obj_alloc failed, no backtrace";
          v51 = v44;
          v52 = v45;
          goto LABEL_72;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        v34 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136446210;
          v56 = "nw_nexus_create_with_options";
          v35 = "%{public}s nw_nexus_obj_alloc failed, backtrace limit exceeded";
          goto LABEL_71;
        }
      }
    }

LABEL_73:
    if (v32)
    {
      free(v32);
    }

    os_nexus_controller_destroy();
    return 0;
  }

  v11 = 64;
  v12 = (v10 + 24);
  while (1)
  {
    v13 = *v7;
    *v12 = v13;
    if (!v13)
    {
      break;
    }

    ++v12;
    ++v7;
    if (--v11 <= 1)
    {
      *v12 = 0;
      break;
    }
  }

  v14 = v10;
  *(v10 + 16) = v9;
  if (os_nexus_attr_create())
  {
    if (a2)
    {
      os_nexus_attr_set();
    }

    if (a3)
    {
      os_nexus_attr_set();
    }

    if (a4)
    {
      os_nexus_attr_set();
    }

    os_nexus_attr_set();
    v15 = os_nexus_controller_register_provider();
    os_nexus_attr_destroy();
    if (!v15)
    {
      return v14;
    }

    v16 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v56 = "nw_nexus_create_with_options";
    v57 = 1024;
    *v58 = v16;
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v17, &type, &v53))
    {
      goto LABEL_89;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v56 = "nw_nexus_create_with_options";
        v57 = 1024;
        *v58 = v16;
        v20 = "%{public}s os_nexus_controller_register_provider() %{darwin.errno}d";
LABEL_88:
        _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0x12u);
      }
    }

    else if (v53 == 1)
    {
      v48 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      v49 = os_log_type_enabled(gLogObj, type);
      if (v48)
      {
        if (v49)
        {
          *buf = 136446722;
          v56 = "nw_nexus_create_with_options";
          v57 = 1024;
          *v58 = v16;
          v58[2] = 2082;
          *&v58[3] = v48;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s os_nexus_controller_register_provider() %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v48);
        goto LABEL_89;
      }

      if (v49)
      {
        *buf = 136446466;
        v56 = "nw_nexus_create_with_options";
        v57 = 1024;
        *v58 = v16;
        v20 = "%{public}s os_nexus_controller_register_provider() %{darwin.errno}d, no backtrace";
        goto LABEL_88;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v56 = "nw_nexus_create_with_options";
        v57 = 1024;
        *v58 = v16;
        v20 = "%{public}s os_nexus_controller_register_provider() %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_88;
      }
    }

LABEL_89:
    if (v17)
    {
      free(v17);
    }

    os_release(v14);
    return 0;
  }

  v42 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446466;
  v56 = "nw_nexus_create_with_options";
  v57 = 1024;
  *v58 = v42;
  v21 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v53 = 0;
  if (__nwlog_fault(v21, &type, &v53))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_96;
      }

      *buf = 136446466;
      v56 = "nw_nexus_create_with_options";
      v57 = 1024;
      *v58 = v42;
      v24 = "%{public}s os_nexus_attr_create() %{darwin.errno}d";
      goto LABEL_94;
    }

    if (v53 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_96;
      }

      *buf = 136446466;
      v56 = "nw_nexus_create_with_options";
      v57 = 1024;
      *v58 = v42;
      v24 = "%{public}s os_nexus_attr_create() %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_94;
    }

    v36 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    v27 = type;
    v50 = os_log_type_enabled(gLogObj, type);
    if (!v36)
    {
      if (!v50)
      {
        goto LABEL_96;
      }

      *buf = 136446466;
      v56 = "nw_nexus_create_with_options";
      v57 = 1024;
      *v58 = v42;
      v24 = "%{public}s os_nexus_attr_create() %{darwin.errno}d, no backtrace";
      goto LABEL_94;
    }

    if (v50)
    {
      *buf = 136446722;
      v56 = "nw_nexus_create_with_options";
      v57 = 1024;
      *v58 = v42;
      v58[2] = 2082;
      *&v58[3] = v36;
      v38 = "%{public}s os_nexus_attr_create() %{darwin.errno}d, dumping backtrace:%{public}s";
      goto LABEL_66;
    }

    goto LABEL_67;
  }

LABEL_96:
  if (v21)
  {
LABEL_97:
    free(v21);
  }

  return 0;
}

void nw_nexus_remove_instance()
{
  v15 = *MEMORY[0x1E69E9840];
  if (os_nexus_controller_free_provider_instance())
  {
    v0 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v10 = "nw_nexus_remove_instance";
    v11 = 1024;
    v12 = v0;
    v1 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v7 = 0;
    if (!__nwlog_fault(v1, &type, &v7))
    {
      goto LABEL_16;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v2 = gLogObj;
      v3 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_16;
      }

      *buf = 136446466;
      v10 = "nw_nexus_remove_instance";
      v11 = 1024;
      v12 = v0;
      v4 = "%{public}s os_nexus_controller_free_provider_instance() %{darwin.errno}d";
    }

    else if (v7 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v2 = gLogObj;
      v3 = type;
      v6 = os_log_type_enabled(gLogObj, type);
      if (backtrace_string)
      {
        if (v6)
        {
          *buf = 136446722;
          v10 = "nw_nexus_remove_instance";
          v11 = 1024;
          v12 = v0;
          v13 = 2082;
          v14 = backtrace_string;
          _os_log_impl(&dword_181A37000, v2, v3, "%{public}s os_nexus_controller_free_provider_instance() %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(backtrace_string);
        goto LABEL_16;
      }

      if (!v6)
      {
LABEL_16:
        if (v1)
        {
          free(v1);
        }

        return;
      }

      *buf = 136446466;
      v10 = "nw_nexus_remove_instance";
      v11 = 1024;
      v12 = v0;
      v4 = "%{public}s os_nexus_controller_free_provider_instance() %{darwin.errno}d, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v2 = gLogObj;
      v3 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_16;
      }

      *buf = 136446466;
      v10 = "nw_nexus_remove_instance";
      v11 = 1024;
      v12 = v0;
      v4 = "%{public}s os_nexus_controller_free_provider_instance() %{darwin.errno}d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v2, v3, v4, buf, 0x12u);
    goto LABEL_16;
  }
}

char *nw_nexus_create_channel_to_new_instance_and_context(uint64_t a1, _DWORD *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_nexus_create_channel_to_new_instance_and_context";
    v4 = _os_log_send_and_compose_impl();
    LOBYTE(v33) = 16;
    out[0] = 0;
    if (!__nwlog_fault(v4, &v33, out))
    {
      goto LABEL_79;
    }

    if (v33 == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = v33;
      if (!os_log_type_enabled(gLogObj, v33))
      {
        goto LABEL_79;
      }

      *buf = 136446210;
      *&buf[4] = "nw_nexus_create_channel_to_new_instance_and_context";
      v7 = "%{public}s called with null nexus";
    }

    else
    {
      if (out[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = v33;
        v16 = os_log_type_enabled(gLogObj, v33);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            *&buf[4] = "nw_nexus_create_channel_to_new_instance_and_context";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null nexus, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_79;
        }

        if (!v16)
        {
          goto LABEL_79;
        }

        *buf = 136446210;
        *&buf[4] = "nw_nexus_create_channel_to_new_instance_and_context";
        v7 = "%{public}s called with null nexus, no backtrace";
        v17 = v14;
        v18 = v15;
LABEL_32:
        v19 = 12;
LABEL_78:
        _os_log_impl(&dword_181A37000, v17, v18, v7, buf, v19);
        goto LABEL_79;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = v33;
      if (!os_log_type_enabled(gLogObj, v33))
      {
        goto LABEL_79;
      }

      *buf = 136446210;
      *&buf[4] = "nw_nexus_create_channel_to_new_instance_and_context";
      v7 = "%{public}s called with null nexus, backtrace limit exceeded";
    }

    v17 = v8;
    v18 = v9;
    goto LABEL_32;
  }

  memset(out, 0, sizeof(out));
  uuid_generate_random(out);
  v33 = 0uLL;
  if (os_nexus_controller_alloc_provider_instance())
  {
    v3 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "nw_nexus_add_instance";
    *&buf[12] = 1024;
    *&buf[14] = v3;
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v4, &type, &v28))
    {
      goto LABEL_79;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_79;
      }

      *buf = 136446466;
      *&buf[4] = "nw_nexus_add_instance";
      *&buf[12] = 1024;
      *&buf[14] = v3;
      v7 = "%{public}s os_nexus_controller_alloc_provider_instance() %{darwin.errno}d";
      goto LABEL_77;
    }

    if (v28 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_79;
      }

      *buf = 136446466;
      *&buf[4] = "nw_nexus_add_instance";
      *&buf[12] = 1024;
      *&buf[14] = v3;
      v7 = "%{public}s os_nexus_controller_alloc_provider_instance() %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_77;
    }

    v11 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v12 = os_log_type_enabled(gLogObj, type);
    if (v11)
    {
      if (v12)
      {
        *buf = 136446722;
        *&buf[4] = "nw_nexus_add_instance";
        *&buf[12] = 1024;
        *&buf[14] = v3;
        *&buf[18] = 2082;
        *&buf[20] = v11;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s os_nexus_controller_alloc_provider_instance() %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v11);
      if (!v4)
      {
        return 0;
      }

      goto LABEL_80;
    }

    if (v12)
    {
      *buf = 136446466;
      *&buf[4] = "nw_nexus_add_instance";
      *&buf[12] = 1024;
      *&buf[14] = v3;
      v7 = "%{public}s os_nexus_controller_alloc_provider_instance() %{darwin.errno}d, no backtrace";
LABEL_77:
      v17 = v5;
      v18 = v6;
      v19 = 18;
      goto LABEL_78;
    }

LABEL_79:
    if (!v4)
    {
      return 0;
    }

LABEL_80:
    free(v4);
    return 0;
  }

  getpid();
  if (os_nexus_controller_bind_provider_instance())
  {
    v10 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "nw_nexus_add_instance";
    *&buf[12] = 1024;
    *&buf[14] = v10;
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v4, &type, &v28))
    {
      goto LABEL_79;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_79;
      }

      *buf = 136446466;
      *&buf[4] = "nw_nexus_add_instance";
      *&buf[12] = 1024;
      *&buf[14] = v10;
      v7 = "%{public}s os_nexus_controller_bind_provider_instance(SERVER) %{darwin.errno}d";
      goto LABEL_77;
    }

    if (v28 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_79;
      }

      *buf = 136446466;
      *&buf[4] = "nw_nexus_add_instance";
      *&buf[12] = 1024;
      *&buf[14] = v10;
      v7 = "%{public}s os_nexus_controller_bind_provider_instance(SERVER) %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_77;
    }

    v21 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    v22 = os_log_type_enabled(gLogObj, type);
    if (!v21)
    {
      if (!v22)
      {
        goto LABEL_79;
      }

      *buf = 136446466;
      *&buf[4] = "nw_nexus_add_instance";
      *&buf[12] = 1024;
      *&buf[14] = v10;
      v7 = "%{public}s os_nexus_controller_bind_provider_instance(SERVER) %{darwin.errno}d, no backtrace";
      goto LABEL_77;
    }

    if (v22)
    {
      *buf = 136446722;
      *&buf[4] = "nw_nexus_add_instance";
      *&buf[12] = 1024;
      *&buf[14] = v10;
      *&buf[18] = 2082;
      *&buf[20] = v21;
      v23 = "%{public}s os_nexus_controller_bind_provider_instance(SERVER) %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_43:
      _os_log_impl(&dword_181A37000, v5, v6, v23, buf, 0x1Cu);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  *uu = v33;
  *&v33 = 0;
  if (!os_nexus_attr_create())
  {
    v24 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "nw_nexus_create_channel_to_new_instance_and_context";
    *&buf[12] = 1024;
    *&buf[14] = v24;
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v4, &type, &v28))
    {
      goto LABEL_79;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_79;
      }

      *buf = 136446466;
      *&buf[4] = "nw_nexus_create_channel_to_new_instance_and_context";
      *&buf[12] = 1024;
      *&buf[14] = v24;
      v7 = "%{public}s os_nexus_attr_create() %{darwin.errno}d";
      goto LABEL_77;
    }

    if (v28 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_79;
      }

      *buf = 136446466;
      *&buf[4] = "nw_nexus_create_channel_to_new_instance_and_context";
      *&buf[12] = 1024;
      *&buf[14] = v24;
      v7 = "%{public}s os_nexus_attr_create() %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_77;
    }

    v21 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v27 = os_log_type_enabled(v5, type);
    if (!v21)
    {
      if (!v27)
      {
        goto LABEL_79;
      }

      *buf = 136446466;
      *&buf[4] = "nw_nexus_create_channel_to_new_instance_and_context";
      *&buf[12] = 1024;
      *&buf[14] = v24;
      v7 = "%{public}s os_nexus_attr_create() %{darwin.errno}d, no backtrace";
      goto LABEL_77;
    }

    if (v27)
    {
      *buf = 136446722;
      *&buf[4] = "nw_nexus_create_channel_to_new_instance_and_context";
      *&buf[12] = 1024;
      *&buf[14] = v24;
      *&buf[18] = 2082;
      *&buf[20] = v21;
      v23 = "%{public}s os_nexus_attr_create() %{darwin.errno}d, dumping backtrace:%{public}s";
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  if (os_nexus_controller_read_provider_attr())
  {
    v20 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "nw_nexus_create_channel_to_new_instance_and_context";
    *&buf[12] = 1024;
    *&buf[14] = v20;
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v4, &type, &v28))
    {
      goto LABEL_79;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_79;
      }

      *buf = 136446466;
      *&buf[4] = "nw_nexus_create_channel_to_new_instance_and_context";
      *&buf[12] = 1024;
      *&buf[14] = v20;
      v7 = "%{public}s os_nexus_controller_read_provider_attr() %{darwin.errno}d";
      goto LABEL_77;
    }

    if (v28 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_79;
      }

      *buf = 136446466;
      *&buf[4] = "nw_nexus_create_channel_to_new_instance_and_context";
      *&buf[12] = 1024;
      *&buf[14] = v20;
      v7 = "%{public}s os_nexus_controller_read_provider_attr() %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_77;
    }

    v21 = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v26 = os_log_type_enabled(v5, type);
    if (!v21)
    {
      if (!v26)
      {
        goto LABEL_79;
      }

      *buf = 136446466;
      *&buf[4] = "nw_nexus_create_channel_to_new_instance_and_context";
      *&buf[12] = 1024;
      *&buf[14] = v20;
      v7 = "%{public}s os_nexus_controller_read_provider_attr() %{darwin.errno}d, no backtrace";
      goto LABEL_77;
    }

    if (v26)
    {
      *buf = 136446722;
      *&buf[4] = "nw_nexus_create_channel_to_new_instance_and_context";
      *&buf[12] = 1024;
      *&buf[14] = v20;
      *&buf[18] = 2082;
      *&buf[20] = v21;
      v23 = "%{public}s os_nexus_controller_read_provider_attr() %{darwin.errno}d, dumping backtrace:%{public}s";
      goto LABEL_43;
    }

LABEL_44:
    free(v21);
    goto LABEL_79;
  }

  os_nexus_attr_get();
  os_nexus_attr_destroy();
  *&buf[8] = 16;
  if (v33)
  {
    buf[12] = 1;
  }

  *buf = out;
  result = nw_channel_create_with_attributes(a2, uu, 1u, buf);
  if (!result)
  {
    nw_nexus_remove_instance();
    return 0;
  }

  return result;
}

char *nw_nexus_create_channel_to_new_instance(uint64_t a1)
{
  if (nw_context_copy_implicit_context::onceToken[0] != -1)
  {
    dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
  }

  v2 = nw_context_copy_implicit_context::implicit_context;

  return nw_nexus_create_channel_to_new_instance_and_context(a1, v2);
}

void nw_nexus_close_channel_and_instance(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_nexus_close_channel_and_instance";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v2, &type, &v14))
    {
      goto LABEL_29;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      v4 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_nexus_close_channel_and_instance";
      v5 = "%{public}s called with null nexus";
LABEL_27:
      v12 = v3;
      v13 = v4;
LABEL_28:
      _os_log_impl(&dword_181A37000, v12, v13, v5, buf, 0xCu);
      goto LABEL_29;
    }

    if (v14 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      v4 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_29;
      }

      *buf = 136446210;
      *&buf[4] = "nw_nexus_close_channel_and_instance";
      v5 = "%{public}s called with null nexus, backtrace limit exceeded";
      goto LABEL_27;
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
        *&buf[4] = "nw_nexus_close_channel_and_instance";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nexus, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v9)
    {
      *buf = 136446210;
      *&buf[4] = "nw_nexus_close_channel_and_instance";
      v5 = "%{public}s called with null nexus, no backtrace";
LABEL_36:
      v12 = v7;
      v13 = v8;
      goto LABEL_28;
    }

LABEL_29:
    if (!v2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (a2)
  {
    *buf = *(a2 + 88);
    nw_channel_close(a2, a2);
    nw_nexus_remove_instance();
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  *&buf[4] = "nw_nexus_close_channel_and_instance";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v2, &type, &v14))
  {
    goto LABEL_29;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    v4 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    *&buf[4] = "nw_nexus_close_channel_and_instance";
    v5 = "%{public}s called with null channel";
    goto LABEL_27;
  }

  if (v14 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    v4 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    *&buf[4] = "nw_nexus_close_channel_and_instance";
    v5 = "%{public}s called with null channel, backtrace limit exceeded";
    goto LABEL_27;
  }

  v10 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  v8 = type;
  v11 = os_log_type_enabled(gLogObj, type);
  if (!v10)
  {
    if (v11)
    {
      *buf = 136446210;
      *&buf[4] = "nw_nexus_close_channel_and_instance";
      v5 = "%{public}s called with null channel, no backtrace";
      goto LABEL_36;
    }

    goto LABEL_29;
  }

  if (v11)
  {
    *buf = 136446466;
    *&buf[4] = "nw_nexus_close_channel_and_instance";
    *&buf[12] = 2082;
    *&buf[14] = v10;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null channel, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v10);
  if (v2)
  {
LABEL_30:
    free(v2);
  }
}

uint64_t nw_nexus_bind_client_port(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *&v30[13] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v28 = "nw_nexus_bind_client_port";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v7, &type, &v25))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v28 = "nw_nexus_bind_client_port";
      v10 = "%{public}s called with null nexus";
LABEL_41:
      v22 = v11;
      v23 = v12;
LABEL_42:
      v24 = 12;
LABEL_48:
      _os_log_impl(&dword_181A37000, v22, v23, v10, buf, v24);
      goto LABEL_49;
    }

    if (v25 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v28 = "nw_nexus_bind_client_port";
      v10 = "%{public}s called with null nexus, backtrace limit exceeded";
      goto LABEL_41;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v15 = type;
    v16 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (!v16)
      {
        goto LABEL_35;
      }

      *buf = 136446466;
      v28 = "nw_nexus_bind_client_port";
      v29 = 2082;
      *v30 = backtrace_string;
      v17 = "%{public}s called with null nexus, dumping backtrace:%{public}s";
      goto LABEL_34;
    }

    if (!v16)
    {
      goto LABEL_49;
    }

    *buf = 136446210;
    v28 = "nw_nexus_bind_client_port";
    v10 = "%{public}s called with null nexus, no backtrace";
LABEL_54:
    v22 = v14;
    v23 = v15;
    goto LABEL_42;
  }

  if (!(a3 | a4) && (!a5 || !a6))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v28 = "nw_nexus_bind_client_port";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v7, &type, &v25))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v28 = "nw_nexus_bind_client_port";
      v10 = "%{public}s called with null process_uuid_ptr, pid_ptr, key";
      goto LABEL_41;
    }

    if (v25 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v28 = "nw_nexus_bind_client_port";
      v10 = "%{public}s called with null process_uuid_ptr, pid_ptr, key, backtrace limit exceeded";
      goto LABEL_41;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v15 = type;
    v21 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (!v21)
      {
        goto LABEL_35;
      }

      *buf = 136446466;
      v28 = "nw_nexus_bind_client_port";
      v29 = 2082;
      *v30 = backtrace_string;
      v17 = "%{public}s called with null process_uuid_ptr, pid_ptr, key, dumping backtrace:%{public}s";
LABEL_34:
      _os_log_impl(&dword_181A37000, v14, v15, v17, buf, 0x16u);
LABEL_35:
      free(backtrace_string);
      if (!v7)
      {
        return 0;
      }

      goto LABEL_50;
    }

    if (!v21)
    {
      goto LABEL_49;
    }

    *buf = 136446210;
    v28 = "nw_nexus_bind_client_port";
    v10 = "%{public}s called with null process_uuid_ptr, pid_ptr, key, no backtrace";
    goto LABEL_54;
  }

  if (!os_nexus_controller_bind_provider_instance())
  {
    return 1;
  }

  v6 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446466;
  v28 = "nw_nexus_bind_client_port";
  v29 = 1024;
  *v30 = v6;
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (__nwlog_fault(v7, &type, &v25))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_49;
      }

      *buf = 136446466;
      v28 = "nw_nexus_bind_client_port";
      v29 = 1024;
      *v30 = v6;
      v10 = "%{public}s os_nexus_controller_bind_provider_instance(SERVER) %{darwin.errno}d";
LABEL_47:
      v22 = v8;
      v23 = v9;
      v24 = 18;
      goto LABEL_48;
    }

    if (v25 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_49;
      }

      *buf = 136446466;
      v28 = "nw_nexus_bind_client_port";
      v29 = 1024;
      *v30 = v6;
      v10 = "%{public}s os_nexus_controller_bind_provider_instance(SERVER) %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_47;
    }

    v19 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    v20 = os_log_type_enabled(gLogObj, type);
    if (!v19)
    {
      if (!v20)
      {
        goto LABEL_49;
      }

      *buf = 136446466;
      v28 = "nw_nexus_bind_client_port";
      v29 = 1024;
      *v30 = v6;
      v10 = "%{public}s os_nexus_controller_bind_provider_instance(SERVER) %{darwin.errno}d, no backtrace";
      goto LABEL_47;
    }

    if (v20)
    {
      *buf = 136446722;
      v28 = "nw_nexus_bind_client_port";
      v29 = 1024;
      *v30 = v6;
      v30[2] = 2082;
      *&v30[3] = v19;
      _os_log_impl(&dword_181A37000, v8, v9, "%{public}s os_nexus_controller_bind_provider_instance(SERVER) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
    }

    free(v19);
  }

LABEL_49:
  if (v7)
  {
LABEL_50:
    free(v7);
  }

  return 0;
}

void nw_nexus_close(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 16))
    {
      os_nexus_controller_destroy();
      *(a1 + 16) = 0;
    }

    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v15 = "nw_nexus_close";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v2, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      v4 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_17;
      }

      *buf = 136446210;
      v15 = "nw_nexus_close";
      v5 = "%{public}s called with null nexus";
LABEL_15:
      v10 = v3;
      v11 = v4;
LABEL_16:
      _os_log_impl(&dword_181A37000, v10, v11, v5, buf, 0xCu);
      goto LABEL_17;
    }

    if (v12 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      v4 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_17;
      }

      *buf = 136446210;
      v15 = "nw_nexus_close";
      v5 = "%{public}s called with null nexus, backtrace limit exceeded";
      goto LABEL_15;
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
        v15 = "nw_nexus_close";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nexus, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_17;
    }

    if (v9)
    {
      *buf = 136446210;
      v15 = "nw_nexus_close";
      v5 = "%{public}s called with null nexus, no backtrace";
      v10 = v7;
      v11 = v8;
      goto LABEL_16;
    }
  }

LABEL_17:
  if (v2)
  {
    free(v2);
  }
}

void *nw_protocol_set_default_one_to_one_callbacks(void *result)
{
  *result = nw_protocol_default_add_input_handler;
  result[2] = nw_protocol_default_replace_input_handler;
  result[1] = nw_protocol_default_remove_input_handler;
  result[8] = nw_protocol_default_input_available;
  result[9] = nw_protocol_default_output_available;
  result[23] = nw_protocol_default_input_finished;
  result[24] = nw_protocol_default_output_finished;
  result[33] = nw_protocol_default_input_flush;
  result[10] = nw_protocol_default_get_input_frames;
  result[11] = nw_protocol_default_get_output_frames;
  result[12] = nw_protocol_default_finalize_output_frames;
  result[31] = nw_protocol_default_get_message_properties;
  result[13] = nw_protocol_default_link_state;
  result[14] = nw_protocol_default_get_parameters;
  result[16] = nw_protocol_default_get_local;
  result[17] = nw_protocol_default_get_remote;
  result[15] = nw_protocol_default_get_path;
  result[21] = nw_protocol_default_updated_path;
  result[25] = nw_protocol_default_get_output_local;
  result[26] = nw_protocol_default_get_output_interface;
  result[3] = nw_protocol_default_connect;
  result[4] = nw_protocol_default_disconnect;
  result[5] = nw_protocol_default_connected;
  result[6] = nw_protocol_default_disconnected;
  result[7] = nw_protocol_default_error;
  result[32] = nw_protocol_default_reset;
  result[22] = nw_protocol_default_supports_external_data;
  result[27] = nw_protocol_default_waiting_for_output;
  result[28] = nw_protocol_default_copy_info;
  result[18] = nw_protocol_default_register_notification;
  result[19] = nw_protocol_default_unregister_notification;
  result[20] = nw_protocol_default_notify;
  result[29] = nw_protocol_default_add_listen_handler;
  result[30] = nw_protocol_default_remove_listen_handler;
  return result;
}

uint64_t nw_protocol_default_remove_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  if (a1)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      identifier = "invalid";
      if (a1->identifier)
      {
        identifier = a1->identifier;
      }

      *buf = 136446466;
      v15 = "nw_protocol_default_remove_listen_handler";
      v16 = 2082;
      v17 = identifier;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s Default protocol handler does not support remove_listen_handler for %{public}s", buf, 0x16u);
    }

    return 0;
  }

  *buf = 136446210;
  v15 = "nw_protocol_default_remove_listen_handler";
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_remove_listen_handler";
      v9 = "%{public}s called with null protocol";
      goto LABEL_20;
    }

    if (v12 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_remove_listen_handler";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446466;
        v15 = "nw_protocol_default_remove_listen_handler";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_21;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "nw_protocol_default_remove_listen_handler";
      v9 = "%{public}s called with null protocol, no backtrace";
LABEL_20:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    }
  }

LABEL_21:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_protocol_default_add_listen_handler(nw_protocol *a1, nw_listen_protocol *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  if (a1)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      identifier = "invalid";
      if (a1->identifier)
      {
        identifier = a1->identifier;
      }

      *buf = 136446466;
      v15 = "nw_protocol_default_add_listen_handler";
      v16 = 2082;
      v17 = identifier;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s Default protocol handler does not support add_listen_handler for %{public}s", buf, 0x16u);
    }

    return 0;
  }

  *buf = 136446210;
  v15 = "nw_protocol_default_add_listen_handler";
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_add_listen_handler";
      v9 = "%{public}s called with null protocol";
      goto LABEL_20;
    }

    if (v12 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v15 = "nw_protocol_default_add_listen_handler";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446466;
        v15 = "nw_protocol_default_add_listen_handler";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_21;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "nw_protocol_default_add_listen_handler";
      v9 = "%{public}s called with null protocol, no backtrace";
LABEL_20:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    }
  }

LABEL_21:
  if (v6)
  {
    free(v6);
  }

  return 0;
}
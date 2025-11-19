void sub_18239F5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, void *a43, uint64_t a44, void *a45)
{
  _Block_object_dispose((v47 - 240), 8);

  _Block_object_dispose(&STACK[0x2B8], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x290], 8);

  _Unwind_Resume(a1);
}

BOOL ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_219(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  uu1 = 0uLL;
  nw_resolver_config_get_identifier(v3, &uu1);
  v4 = uuid_compare(&uu1, (*(a1 + 32) + 256));
  if (!v4)
  {
    provider_name = nw_resolver_config_get_provider_name(v3);
    v7 = provider_name;
    if (provider_name)
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        if (strcmp(provider_name, v8))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v10 = *(a1 + 40);
            v11 = 136446722;
            v12 = "nw_resolver_create_dns_getaddrinfo_locked_block_invoke";
            v13 = 2080;
            v14 = v7;
            v15 = 2080;
            v16 = v10;
            _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s Provider changed from %s to %s, disabling failover", &v11, 0x20u);
          }

          *(*(a1 + 32) + 371) &= ~0x80u;
        }
      }
    }
  }

  return v4 != 0;
}

uint64_t ___ZL34nw_resolver_process_service_resultP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_servicePU38objcproto27OS_dnssd_getaddrinfo_result8NSObject_block_invoke(uint64_t a1, int a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  if (*(a1 + 48) == a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return 1;
}

uint64_t ___ZL25nw_resolver_apply_serviceP22NWConcrete_nw_resolverttbt_block_invoke_242(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  priority = nw_endpoint_get_priority(v4);
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && (!priority || *(a1 + 56) < priority))
  {
    combined_array = nw_array_create_combined_array(*(*(*(a1 + 48) + 8) + 40), *(a1 + 32));
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = combined_array;

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (nw_endpoint_get_priority(v4) || nw_endpoint_get_type(v4) != nw_endpoint_type_address || (*(a1 + 58) & 1) == 0)
  {
    v9 = *(*(*(a1 + 48) + 8) + 40);
    if (v9)
    {
      v10 = v4 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      _nw_array_append(v9, v4);
    }
  }

  return 1;
}

uint64_t ___ZL34nw_resolver_process_service_resultP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_servicePU38objcproto27OS_dnssd_getaddrinfo_result8NSObject_block_invoke_238(uint64_t a1, const sockaddr *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  memset(__dst, 0, sizeof(__dst));
  memcpy(__dst, a2, a2->sa_len);
  *__dst[0].sa_data = __rev16(nw_resolver_service_get_port(*(a1 + 32)));
  sa_family = __dst[0].sa_family;
  v5 = *(a1 + 40);
  if (__dst[0].sa_family == 30)
  {
    v6 = 1;
    if ((*(v5 + 370) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (__dst[0].sa_family != 2)
    {
      v6 = 0;
      goto LABEL_10;
    }

    if ((*(v5 + 370) & 0x40) == 0)
    {
      v6 = 1;
      goto LABEL_10;
    }

    v6 = 2;
  }

  v6 = *(v5 + 80) == v6;
LABEL_10:
  if (!nw_parameters_get_sensitive_redacted(*(v5 + 16)))
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      if ((*(v10 + 370) & 0x20) != 0)
      {
        goto LABEL_61;
      }

      if (*(v10 + 280))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v11 = gconnectionLogObj;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 40) + 280;
          v13 = "";
          v32 = "nw_resolver_process_service_result_block_invoke";
          v31 = 136447234;
          if (v6)
          {
            v13 = " (ignoring)";
          }

          v33 = 2082;
          *v34 = v12;
          *&v34[8] = 1040;
          *&v34[10] = __dst[0].sa_len;
          *&v34[14] = 2098;
          *&v34[16] = __dst;
          *&v34[24] = 2082;
          *&v34[26] = v13;
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s] Address hint: %{public,network:sockaddr}.*P%{public}s", &v31, 0x30u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v20 = *(*(a1 + 40) + 364);
          v21 = "";
          if (v6)
          {
            v21 = " (ignoring)";
          }

          v31 = 136447234;
          v32 = "nw_resolver_process_service_result_block_invoke";
          v33 = 1024;
          *v34 = v20;
          *&v34[4] = 1040;
          *&v34[6] = __dst[0].sa_len;
          *&v34[10] = 2098;
          *&v34[12] = __dst;
          *&v34[20] = 2082;
          *&v34[22] = v21;
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s [R%u] Address hint: %{public,network:sockaddr}.*P%{public}s", &v31, 0x2Cu);
        }
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = "";
        v32 = "nw_resolver_process_service_result_block_invoke";
        v33 = 1040;
        v31 = 136446978;
        if (v6)
        {
          v14 = " (ignoring)";
        }

        *v34 = __dst[0].sa_len;
        *&v34[4] = 2098;
        *&v34[6] = __dst;
        *&v34[14] = 2082;
        *&v34[16] = v14;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s Address hint: %{public,network:sockaddr}.*P%{public}s", &v31, 0x26u);
      }
    }

    goto LABEL_60;
  }

  v36 = 0;
  v35 = 0;
  if (sa_family != 30)
  {
    if (sa_family != 2)
    {
      v7 = "<NULL>";
      v8 = "";
      v9 = *(a1 + 40);
      if (!v9)
      {
        goto LABEL_55;
      }

      goto LABEL_35;
    }

    if (*&__dst[0].sa_data[2])
    {
      v7 = &v35;
      __nwlog_salted_hash(&__dst[0].sa_data[2], 4, &v35);
      v8 = "IPv4#";
      v9 = *(a1 + 40);
      if (!v9)
      {
        goto LABEL_55;
      }

      goto LABEL_35;
    }

    v7 = "INADDR_ANY";
LABEL_54:
    v8 = "";
    v9 = *(a1 + 40);
    if (!v9)
    {
      goto LABEL_55;
    }

    goto LABEL_35;
  }

  if ((vmaxv_u16(vmovn_s32(vtstq_s32(*&__dst[0].sa_data[6], *&__dst[0].sa_data[6]))) & 1) == 0)
  {
    v7 = "IN6ADDR_ANY";
    goto LABEL_54;
  }

  v7 = &v35;
  __nwlog_salted_hash(&__dst[0].sa_data[6], 16, &v35);
  v8 = "IPv6#";
  v9 = *(a1 + 40);
  if (!v9)
  {
LABEL_55:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v24 = " (ignoring)";
      v32 = "nw_resolver_process_service_result_block_invoke";
      v31 = 136446978;
      if (!v6)
      {
        v24 = "";
      }

      v33 = 2080;
      *v34 = v8;
      *&v34[8] = 2080;
      *&v34[10] = v7;
      *&v34[18] = 2082;
      *&v34[20] = v24;
      v17 = "%{public}s Address hint: %s%s%{public}s";
      v18 = v11;
      v19 = 42;
LABEL_59:
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, v17, &v31, v19);
      goto LABEL_60;
    }

    goto LABEL_60;
  }

LABEL_35:
  if ((*(v9 + 370) & 0x20) != 0)
  {
    goto LABEL_61;
  }

  if (*(v9 + 280))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v11 = gconnectionLogObj;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_60;
    }

    v15 = *(a1 + 40) + 280;
    v32 = "nw_resolver_process_service_result_block_invoke";
    v16 = " (ignoring)";
    v31 = 136447234;
    if (!v6)
    {
      v16 = "";
    }

    v33 = 2082;
    *v34 = v15;
    *&v34[8] = 2080;
    *&v34[10] = v8;
    *&v34[18] = 2080;
    *&v34[20] = v7;
    *&v34[28] = 2082;
    *&v34[30] = v16;
    v17 = "%{public}s [C%{public}s] Address hint: %s%s%{public}s";
    v18 = v11;
    v19 = 52;
    goto LABEL_59;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v22 = *(*(a1 + 40) + 364);
    v23 = " (ignoring)";
    if (!v6)
    {
      v23 = "";
    }

    v31 = 136447234;
    v32 = "nw_resolver_process_service_result_block_invoke";
    v33 = 1024;
    *v34 = v22;
    *&v34[4] = 2080;
    *&v34[6] = v8;
    *&v34[14] = 2080;
    *&v34[16] = v7;
    *&v34[24] = 2082;
    *&v34[26] = v23;
    v17 = "%{public}s [R%u] Address hint: %s%s%{public}s";
    v18 = v11;
    v19 = 48;
    goto LABEL_59;
  }

LABEL_60:

LABEL_61:
  if ((v6 & 1) == 0)
  {
    nw_resolver_update_flags_locked(*(a1 + 40), *(a1 + 32), 2, 0, a2, 1, 0);
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    priority = nw_resolver_service_get_priority(*(a1 + 32));
    weight = nw_resolver_service_get_weight(*(a1 + 32));
    v29 = nw_resolver_service_copy_ech_config(*(a1 + 32));
    nw_resolver_insert_address(v25, v26, __dst, priority, weight, v29);

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return 1;
}

uint64_t ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_223(void *a1, uint64_t a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_resolver_service_is_alias";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v25, &type, &v40))
    {
      goto LABEL_26;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v43 = "nw_resolver_service_is_alias";
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null service", buf, 0xCu);
      }
    }

    else if (v40 == 1)
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
          v43 = "nw_resolver_service_is_alias";
          v44 = 2082;
          v45 = backtrace_string;
          _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_26:
        if (v25)
        {
          free(v25);
        }

        v32 = __nwlog_obj();
        *buf = 136446210;
        v43 = "nw_resolver_service_host_matches_origin";
        v33 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v40 = 0;
        if (!__nwlog_fault(v33, &type, &v40))
        {
          goto LABEL_44;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v34 = __nwlog_obj();
          v35 = type;
          if (os_log_type_enabled(v34, type))
          {
            *buf = 136446210;
            v43 = "nw_resolver_service_host_matches_origin";
            _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null service", buf, 0xCu);
          }
        }

        else if (v40 == 1)
        {
          v36 = __nw_create_backtrace_string();
          v34 = __nwlog_obj();
          v37 = type;
          v38 = os_log_type_enabled(v34, type);
          if (v36)
          {
            if (v38)
            {
              *buf = 136446466;
              v43 = "nw_resolver_service_host_matches_origin";
              v44 = 2082;
              v45 = v36;
              _os_log_impl(&dword_181A37000, v34, v37, "%{public}s called with null service, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v36);
            goto LABEL_44;
          }

          if (v38)
          {
            *buf = 136446210;
            v43 = "nw_resolver_service_host_matches_origin";
            _os_log_impl(&dword_181A37000, v34, v37, "%{public}s called with null service, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v34 = __nwlog_obj();
          v39 = type;
          if (os_log_type_enabled(v34, type))
          {
            *buf = 136446210;
            v43 = "nw_resolver_service_host_matches_origin";
            _os_log_impl(&dword_181A37000, v34, v39, "%{public}s called with null service, backtrace limit exceeded", buf, 0xCu);
          }
        }

LABEL_44:
        if (v33)
        {
          free(v33);
        }

        goto LABEL_9;
      }

      if (v30)
      {
        *buf = 136446210;
        v43 = "nw_resolver_service_is_alias";
        _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null service, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v43 = "nw_resolver_service_is_alias";
        _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null service, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_26;
  }

  v6 = v4[16];

  if (v6)
  {
    v7 = v5;
    v8 = *(v7 + 48);

    if ((v8 & 2) != 0)
    {
      v9 = v7;
      v10 = *(v7 + 48);

      if ((v10 & 4) == 0)
      {
        port = nw_resolver_service_get_port(v9);
        v12 = a1[9];
        *(v12 + 2) = __rev16(port);
        v13 = a1[4];
        v14 = a1[5];
        priority = nw_resolver_service_get_priority(v9);
        weight = nw_resolver_service_get_weight(v9);
        v17 = nw_resolver_service_copy_ech_config(v9);
        nw_resolver_insert_address(v13, v14, v12, priority, weight, v17);
LABEL_8:

        goto LABEL_9;
      }

      v18 = nw_resolver_service_get_priority(v9);
      v19 = nw_resolver_service_get_weight(v9);
      v20 = *(a1[6] + 8);
      if ((*(v20 + 24) - 1) >= v18)
      {
        *(v20 + 24) = v18;
        *(*(a1[7] + 8) + 24) = v19;
        v21 = nw_resolver_service_copy_ech_config(v9);
        v22 = *(a1[8] + 8);
        v17 = *(v22 + 40);
        *(v22 + 40) = v21;
        goto LABEL_8;
      }
    }
  }

LABEL_9:

  return 1;
}

uint64_t ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_210(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *&v9.sa_len = 0;
  *&v9.sa_data[6] = 0;
  v11 = 0;
  v10 = 0;
  if (nw_endpoint_fillout_v4v6_address(v4, &v9))
  {
    nw_resolver_update_flags_locked(*(a1 + 32), *(a1 + 40), -2147483646, 0, &v9, 0, 0);
    v5 = *(a1 + 32);
    priority = nw_endpoint_get_priority(v4);
    weight = nw_endpoint_get_weight(v4);
    nw_resolver_insert_address(v5, 0, &v9, priority, weight, 0);
  }

  return 1;
}

uint64_t ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_resolver_config_get_protocol(v3) || nw_resolver_config_get_class(v3))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_3;
    v7[3] = &unk_1E6A2C378;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    nw_resolver_config_enumerate_name_servers(v3, v7);
  }

  return 1;
}

BOOL ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_3(uint64_t a1, char *hostname)
{
  host = nw_endpoint_create_host(hostname, "0");
  if (nw_endpoint_is_equal(host, *(a1 + 32), 0))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v4 = *(*(*(a1 + 40) + 8) + 24);

  return (v4 & 1) == 0;
}

BOOL ___ZL41nw_resolver_create_happy_eyeballs_variantP22NWConcrete_nw_resolverPU22objcproto11OS_nw_array8NSObject_block_invoke_184(void *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  type = nw_endpoint_get_type(v5);
  if (type != nw_endpoint_type_address)
  {
    *(*(a1[5] + 8) + 24) = 1;
    goto LABEL_13;
  }

  v7 = a1[7];
  if (v7 <= a2)
  {
    if (v7 == a2)
    {
      v10 = a1[4];
      v9 = a1 + 4;
      v8 = v10;
      if (v10)
      {
        v11 = *(*(v9[2] + 8) + 40);
        if (v11)
        {
          _nw_array_append(v8, v11);
        }
      }

      goto LABEL_10;
    }

    if (*(*(a1[6] + 8) + 40) == v5)
    {
      goto LABEL_13;
    }
  }

  v9 = a1 + 4;
LABEL_10:
  if (*v9 && v5)
  {
    _nw_array_append(*v9, v5);
  }

LABEL_13:

  return type == nw_endpoint_type_address;
}

uint64_t ___ZL43nw_resolver_create_prefer_connected_variantP22NWConcrete_nw_resolverPU24objcproto13OS_nw_context8NSObjectPU22objcproto11OS_nw_arrayS1__block_invoke_185(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(*(*(a1 + 40) + 8) + 40) != v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      _nw_array_append(v5, v4);
    }
  }

  return 1;
}

void ___ZL29nw_resolver_start_query_timerP22NWConcrete_nw_resolver_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(a1 + 32);
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(a1 + 32) + 24);
      v9 = v8;
      if (v8)
      {
        logging_description = _nw_endpoint_get_logging_description(v8);
      }

      else
      {
        logging_description = "<NULL>";
      }

      v19 = 136446466;
      v20 = "nw_resolver_start_query_timer_block_invoke";
      v21 = 2082;
      *v22 = logging_description;
      v16 = "%{public}s Query fired: did not receive all answers in time for %{public}s";
      v17 = v3;
      v18 = 22;
      goto LABEL_21;
    }

LABEL_22:

    v2 = *(a1 + 32);
    goto LABEL_23;
  }

  if ((*(v2 + 370) & 0x20) == 0)
  {
    if (*(v2 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v3 = gconnectionLogObj;
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v4 = *(a1 + 32);
      v5 = *(v4 + 24);
      v6 = v5;
      if (v5)
      {
        v7 = _nw_endpoint_get_logging_description(v5);
      }

      else
      {
        v7 = "<NULL>";
      }

      v19 = 136446722;
      v20 = "nw_resolver_start_query_timer_block_invoke";
      v21 = 2082;
      *v22 = v4 + 280;
      *&v22[8] = 2082;
      *&v22[10] = v7;
      v16 = "%{public}s [C%{public}s] Query fired: did not receive all answers in time for %{public}s";
      v17 = v3;
      v18 = 32;
      goto LABEL_21;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 364);
      v13 = *(v11 + 24);
      v14 = v13;
      if (v13)
      {
        v15 = _nw_endpoint_get_logging_description(v13);
      }

      else
      {
        v15 = "<NULL>";
      }

      v19 = 136446722;
      v20 = "nw_resolver_start_query_timer_block_invoke";
      v21 = 1024;
      *v22 = v12;
      *&v22[4] = 2082;
      *&v22[6] = v15;
      v16 = "%{public}s [R%u] Query fired: did not receive all answers in time for %{public}s";
      v17 = v3;
      v18 = 28;
LABEL_21:
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, v16, &v19, v18);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

LABEL_23:
  *(v2 + 84) = -65568;
  nw_resolver_update_status_locked(*(a1 + 32), 0);
  os_unfair_lock_unlock((*(a1 + 32) + 12));
}

void ___ZL29nw_resolver_start_query_timerP22NWConcrete_nw_resolver_block_invoke_191(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(a1 + 32);
  if (!*(v2 + 96))
  {
    nw_resolver_cancel_query_locked(v2, 0);
    v2 = *(a1 + 32);
  }

  v3 = (v2 + 12);

  os_unfair_lock_unlock(v3);
}

void ___ZL33nw_resolver_create_path_evaluatorP22NWConcrete_nw_resolver_block_invoke_182(uint64_t a1, _OWORD *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v24 = "nw_resolver_create_path_evaluator_block_invoke";
    v25 = 1040;
    *v26 = 16;
    *&v26[4] = 2096;
    *&v26[6] = a2;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s Resolve options got agent:%{uuid_t}.16P", buf, 0x1Cu);
  }

  flow_inner = nw_path_evaluator_create_flow_inner(*(*(a1 + 32) + 128), 0, 0, 0, 1, a2, 0, 0, 0, 0, 0);
  v6 = flow_inner;
  if (!flow_inner)
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      if ((*(v14 + 370) & 0x20) != 0)
      {
        goto LABEL_34;
      }

      if (*(v14 + 280))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v15 = gconnectionLogObj;
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          goto LABEL_33;
        }

        v16 = *(a1 + 32) + 280;
        *buf = 136446466;
        v24 = "nw_resolver_create_path_evaluator_block_invoke";
        v25 = 2082;
        *v26 = v16;
        v17 = "%{public}s [C%{public}s] Failed to add resolver flow ID";
        v18 = v15;
        v19 = 22;
        goto LABEL_32;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v22 = *(*(a1 + 32) + 364);
        *buf = 136446466;
        v24 = "nw_resolver_create_path_evaluator_block_invoke";
        v25 = 1024;
        *v26 = v22;
        v17 = "%{public}s [R%u] Failed to add resolver flow ID";
        v18 = v15;
        v19 = 18;
        goto LABEL_32;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v24 = "nw_resolver_create_path_evaluator_block_invoke";
        v17 = "%{public}s Failed to add resolver flow ID";
        v18 = v15;
        v19 = 12;
LABEL_32:
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, v17, buf, v19);
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  v27 = 0uLL;
  v7 = flow_inner;
  if (!uuid_is_null(v7 + 32))
  {
    v27 = *(v7 + 2);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    if ((*(v8 + 370) & 0x20) != 0)
    {
      goto LABEL_26;
    }

    if (*(v8 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v9 = gconnectionLogObj;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      v10 = *(a1 + 32) + 280;
      *buf = 136446978;
      v24 = "nw_resolver_create_path_evaluator_block_invoke";
      v25 = 2082;
      *v26 = v10;
      *&v26[8] = 1042;
      *&v26[10] = 16;
      *&v26[14] = 2098;
      *&v26[16] = &v27;
      v11 = "%{public}s [C%{public}s] Added resolver flow ID %{public,uuid_t}.16P";
      v12 = v9;
      v13 = 38;
      goto LABEL_24;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v20 = *(*(a1 + 32) + 364);
      *buf = 136446978;
      v24 = "nw_resolver_create_path_evaluator_block_invoke";
      v25 = 1024;
      *v26 = v20;
      *&v26[4] = 1042;
      *&v26[6] = 16;
      *&v26[10] = 2098;
      *&v26[12] = &v27;
      v11 = "%{public}s [R%u] Added resolver flow ID %{public,uuid_t}.16P";
      v12 = v9;
      v13 = 34;
      goto LABEL_24;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136446722;
      v24 = "nw_resolver_create_path_evaluator_block_invoke";
      v25 = 1042;
      *v26 = 16;
      *&v26[4] = 2098;
      *&v26[6] = &v27;
      v11 = "%{public}s Added resolver flow ID %{public,uuid_t}.16P";
      v12 = v9;
      v13 = 28;
LABEL_24:
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
    }
  }

LABEL_25:

  v8 = *(a1 + 32);
LABEL_26:
  v21 = *(v8 + 144);
  if (v21)
  {
    _nw_array_append(v21, v7);
  }

LABEL_34:
}

void nw_resolver_set_cancel_handler(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_resolver_set_cancel_handler";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_resolver_set_cancel_handler";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null resolver", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v25 = "nw_resolver_set_cancel_handler";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v9)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v9);
        goto LABEL_4;
      }

      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_resolver_set_cancel_handler";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_resolver_set_cancel_handler";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    os_unfair_lock_lock(v3 + 3);
    v6 = _Block_copy(v5);
    v7 = *&v3[26]._os_unfair_lock_opaque;
    *&v3[26]._os_unfair_lock_opaque = v6;

    os_unfair_lock_unlock(v3 + 3);
    goto LABEL_4;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_resolver_set_cancel_handler";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v9, &type, &v22))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_resolver_set_cancel_handler";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null cancel_handler", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v22 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_resolver_set_cancel_handler";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null cancel_handler, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v25 = "nw_resolver_set_cancel_handler";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null cancel_handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19)
  {
    *buf = 136446466;
    v25 = "nw_resolver_set_cancel_handler";
    v26 = 2082;
    v27 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null cancel_handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t nw_resolver_get_status(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 3);
    os_unfair_lock_opaque = v2[2]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v2 + 3);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_resolver_get_status";
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
        v16 = "nw_resolver_get_status";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null resolver", buf, 0xCu);
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
          v16 = "nw_resolver_get_status";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_resolver_get_status";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_resolver_get_status";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  os_unfair_lock_opaque = 0;
LABEL_3:

  return os_unfair_lock_opaque;
}

uint64_t __nw_resolver_get_resolution_provider_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  uu1 = 0uLL;
  nw_resolver_config_get_identifier(v3, &uu1);
  v4 = uuid_compare(&uu1, (*(a1 + 32) + 256));
  if (v4)
  {
    goto LABEL_6;
  }

  provider_description = nw_resolver_config_get_provider_description(v3);
  if (!provider_description)
  {
    provider_description = nw_resolver_config_get_provider_name(v3);
    if (!provider_description)
    {
      goto LABEL_6;
    }
  }

  v6 = strdup(provider_description);
  if (v6)
  {
LABEL_5:
    **(a1 + 40) = v6;
LABEL_6:

    return v4 != 0;
  }

  v8 = __nwlog_obj();
  os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  v11 = 136446210;
  v12 = "strict_strdup";
  v9 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v9);
  if (!result)
  {
    free(v9);
    v6 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void nw_resolver_inject_dns_service_error(void *a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3[4];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_resolver_inject_dns_service_error_block_invoke;
    v14[3] = &unk_1E6A3BD68;
    v15 = v3;
    v16 = a2;
    nw_queue_context_async_if_needed(v5, v14);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_resolver_inject_dns_service_error";
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
        v20 = "nw_resolver_inject_dns_service_error";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null resolver", buf, 0xCu);
      }
    }

    else if (v17 == 1)
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
          v20 = "nw_resolver_inject_dns_service_error";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_resolver_inject_dns_service_error";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v20 = "nw_resolver_inject_dns_service_error";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:
}

void __nw_resolver_inject_dns_service_error_block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 64))
  {
    v3 = *(v1 + 72);
    type = nw_endpoint_get_type(*(v1 + 24));
    v5 = *(a1 + 32);
    if (type == nw_endpoint_type_host)
    {
      if (v5)
      {
        if ((*(v5 + 370) & 0x20) != 0)
        {
LABEL_41:
          nw_resolver_host_resolve_callback(v3, 0, 0, *(a1 + 40), 0, 0, 0, v5);
          return;
        }

        if (*(v5 + 280))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v6 = gconnectionLogObj;
          if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            goto LABEL_40;
          }

          v7 = *(a1 + 32);
          string_for_dns_service_error = nwlog_get_string_for_dns_service_error(*(a1 + 40));
          *buf = 136446722;
          v48 = "nw_resolver_inject_dns_service_error_block_invoke";
          v49 = 2082;
          *v50 = v7 + 280;
          *&v50[8] = 2082;
          *&v50[10] = string_for_dns_service_error;
          v9 = "%{public}s [C%{public}s] Injecting error %{public}s";
          v10 = v6;
          v11 = 32;
          goto LABEL_39;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v36 = *(*(a1 + 32) + 364);
          v37 = nwlog_get_string_for_dns_service_error(*(a1 + 40));
          *buf = 136446722;
          v48 = "nw_resolver_inject_dns_service_error_block_invoke";
          v49 = 1024;
          *v50 = v36;
          *&v50[4] = 2082;
          *&v50[6] = v37;
          v9 = "%{public}s [R%u] Injecting error %{public}s";
          v10 = v6;
          v11 = 28;
          goto LABEL_39;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v28 = nwlog_get_string_for_dns_service_error(*(a1 + 40));
          *buf = 136446466;
          v48 = "nw_resolver_inject_dns_service_error_block_invoke";
          v49 = 2082;
          *v50 = v28;
          v9 = "%{public}s Injecting error %{public}s";
          v10 = v6;
          v11 = 22;
LABEL_39:
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
        }
      }

LABEL_40:

      v5 = *(a1 + 32);
      goto LABEL_41;
    }

    v12 = nw_endpoint_get_type(*(v5 + 24));
    v13 = *(a1 + 32);
    if (v12 == nw_endpoint_type_bonjour_service)
    {
      if (v13)
      {
        if ((*(v13 + 370) & 0x20) != 0)
        {
LABEL_48:
          nw_resolver_bonjour_resolve_callback(v3, 0, 0, *(a1 + 40), "", "", 0, 0, 0, v13);
          return;
        }

        if (*(v13 + 280))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v14 = gconnectionLogObj;
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            goto LABEL_47;
          }

          v15 = *(a1 + 32);
          v16 = nwlog_get_string_for_dns_service_error(*(a1 + 40));
          *buf = 136446722;
          v48 = "nw_resolver_inject_dns_service_error_block_invoke";
          v49 = 2082;
          *v50 = v15 + 280;
          *&v50[8] = 2082;
          *&v50[10] = v16;
          v17 = "%{public}s [C%{public}s] Injecting error %{public}s";
          v18 = v14;
          v19 = 32;
          goto LABEL_46;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v39 = *(*(a1 + 32) + 364);
          v40 = nwlog_get_string_for_dns_service_error(*(a1 + 40));
          *buf = 136446722;
          v48 = "nw_resolver_inject_dns_service_error_block_invoke";
          v49 = 1024;
          *v50 = v39;
          *&v50[4] = 2082;
          *&v50[6] = v40;
          v17 = "%{public}s [R%u] Injecting error %{public}s";
          v18 = v14;
          v19 = 28;
          goto LABEL_46;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v38 = nwlog_get_string_for_dns_service_error(*(a1 + 40));
          *buf = 136446466;
          v48 = "nw_resolver_inject_dns_service_error_block_invoke";
          v49 = 2082;
          *v50 = v38;
          v17 = "%{public}s Injecting error %{public}s";
          v18 = v14;
          v19 = 22;
LABEL_46:
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, v17, buf, v19);
        }
      }

LABEL_47:

      v13 = *(a1 + 32);
      goto LABEL_48;
    }

    if (nw_endpoint_get_type(*(v13 + 24)) == nw_endpoint_type_address && nw_parameters_get_resolve_ptr(*(*(a1 + 32) + 16)))
    {
      v21 = *(a1 + 32);
      if (v21)
      {
        if ((v21[370] & 0x20) != 0)
        {
LABEL_62:
          nw_resolver_ptr_resolve_callback(v3, 0, 0, *(a1 + 40), v20, 0, 0, 0, 0, 0, v21);
          return;
        }

        if (v21[280])
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v22 = gconnectionLogObj;
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            goto LABEL_61;
          }

          v23 = *(a1 + 32);
          v24 = nwlog_get_string_for_dns_service_error(*(a1 + 40));
          *buf = 136446722;
          v48 = "nw_resolver_inject_dns_service_error_block_invoke";
          v49 = 2082;
          *v50 = v23 + 280;
          *&v50[8] = 2082;
          *&v50[10] = v24;
          v25 = "%{public}s [C%{public}s] Injecting error %{public}s";
          v26 = v22;
          v27 = 32;
          goto LABEL_60;
        }

        v22 = __nwlog_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v45 = *(*(a1 + 32) + 364);
          v46 = nwlog_get_string_for_dns_service_error(*(a1 + 40));
          *buf = 136446722;
          v48 = "nw_resolver_inject_dns_service_error_block_invoke";
          v49 = 1024;
          *v50 = v45;
          *&v50[4] = 2082;
          *&v50[6] = v46;
          v25 = "%{public}s [R%u] Injecting error %{public}s";
          v26 = v22;
          v27 = 28;
          goto LABEL_60;
        }
      }

      else
      {
        v22 = __nwlog_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v42 = nwlog_get_string_for_dns_service_error(*(a1 + 40));
          *buf = 136446466;
          v48 = "nw_resolver_inject_dns_service_error_block_invoke";
          v49 = 2082;
          *v50 = v42;
          v25 = "%{public}s Injecting error %{public}s";
          v26 = v22;
          v27 = 22;
LABEL_60:
          _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_INFO, v25, buf, v27);
        }
      }

LABEL_61:

      v21 = *(a1 + 32);
      goto LABEL_62;
    }

    if (nw_endpoint_get_type(*(*(a1 + 32) + 24)) != (nw_endpoint_type_url|nw_endpoint_type_address))
    {
      return;
    }

    v29 = *(a1 + 32);
    if (v29)
    {
      if ((v29[370] & 0x20) != 0)
      {
LABEL_57:
        nw_resolver_srv_resolve_callback(v3, 0, 0, *(a1 + 40), 0, 0, 0, 0, 0, 0, v29);
        return;
      }

      if (v29[280])
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v30 = gconnectionLogObj;
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          goto LABEL_56;
        }

        v31 = *(a1 + 32);
        v32 = nwlog_get_string_for_dns_service_error(*(a1 + 40));
        *buf = 136446722;
        v48 = "nw_resolver_inject_dns_service_error_block_invoke";
        v49 = 2082;
        *v50 = v31 + 280;
        *&v50[8] = 2082;
        *&v50[10] = v32;
        v33 = "%{public}s [C%{public}s] Injecting error %{public}s";
        v34 = v30;
        v35 = 32;
        goto LABEL_55;
      }

      v30 = __nwlog_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v43 = *(*(a1 + 32) + 364);
        v44 = nwlog_get_string_for_dns_service_error(*(a1 + 40));
        *buf = 136446722;
        v48 = "nw_resolver_inject_dns_service_error_block_invoke";
        v49 = 1024;
        *v50 = v43;
        *&v50[4] = 2082;
        *&v50[6] = v44;
        v33 = "%{public}s [R%u] Injecting error %{public}s";
        v34 = v30;
        v35 = 28;
        goto LABEL_55;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v41 = nwlog_get_string_for_dns_service_error(*(a1 + 40));
        *buf = 136446466;
        v48 = "nw_resolver_inject_dns_service_error_block_invoke";
        v49 = 2082;
        *v50 = v41;
        v33 = "%{public}s Injecting error %{public}s";
        v34 = v30;
        v35 = 22;
LABEL_55:
        _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, v33, buf, v35);
      }
    }

LABEL_56:

    v29 = *(a1 + 32);
    goto LABEL_57;
  }
}

char *netcore_stats_tcp_report_copy_description(uint64_t a1)
{
  v23 = 0;
  if (a1)
  {
    v2 = netcore_stats_tcp_statistics_report_copy_description(a1);
    v25 = 0;
    LODWORD(v3) = *(a1 + 1660);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = (a1 + 384);
      v7 = (a1 + 220);
      do
      {
        v24 = 0;
        if (*v7)
        {
          if (v5)
          {
            v8 = v5;
          }

          else
          {
            v8 = "";
          }

          v9 = *(v7 - 1) - 1;
          v10 = "Unknown";
          if (v9 <= 9)
          {
            v10 = off_1E6A2C760[v9];
          }

          asprintf(&v24, "%s\n\t--- Event '%s' at %u ms since start -- bytes in/out: %llu/%llu", v8, v10, *v7, *(v6 - 1), *v6);
        }

        if (v5)
        {
          free(v5);
        }

        v5 = v24;
        ++v4;
        v3 = *(a1 + 1660);
        v6 += 8;
        v7 += 2;
      }

      while (v4 < v3);
    }

    else
    {
      v5 = 0;
    }

    v11 = "<NULL>";
    if (v5)
    {
      v11 = v5;
    }

    asprintf(&v25, "\n\tFell back:                 %d\n\tPolicy deny reason:        %d\n\tFallback timer:            %u ms\n\tNetwork event count/max:   %u/%d\n\tNetwork events:            %s\n", *(a1 + 1672), *(a1 + 1656), *(a1 + 1668), v3, 20, v11);
    if (v5)
    {
      free(v5);
    }

    v12 = v25;
    LODWORD(v13) = *(a1 + 3412);
    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = (a1 + 1680);
      do
      {
        v17 = netcore_stats_tcp_statistics_report_copy_description(v16);
        v18 = v17;
        v25 = 0;
        if (v15)
        {
          v19 = v15;
        }

        else
        {
          v19 = "";
        }

        asprintf(&v25, "%s\n\t--- Connection attempt #%u ---\n%s", v19, v14, v17);
        if (v18)
        {
          free(v18);
        }

        if (v15)
        {
          free(v15);
        }

        v15 = v25;
        ++v14;
        v13 = *(a1 + 3412);
        ++v16;
      }

      while (v14 < v13);
    }

    else
    {
      v15 = 0;
    }

    v20 = *(a1 + 3408) - 1;
    if (v20 > 4)
    {
      v21 = "Unknown";
    }

    else
    {
      v21 = off_1E6A2C7B0[v20];
    }

    asprintf(&v23, "\n\tDelegated:                                  %d\n\tReport reason:                              %s\n\tTCP statistics report:                      %s\n\tTCP cellular fallback statistics report:    %s\n\tConnection attempt count:                   %u\n\tConnection attempts:                        %s\n", *(a1 + 3416), v21, v2, v12, v13, v15);
    if (v2)
    {
      free(v2);
    }

    if (v12)
    {
      free(v12);
    }

    if (v15)
    {
      free(v15);
    }
  }

  else
  {
    asprintf(&v23, "<NULL>");
  }

  return v23;
}

char *netcore_stats_tcp_statistics_report_copy_description(const netcore_stats_tcp_statistics_report *a1)
{
  v3[0] = 0;
  if (a1)
  {
    v1 = *(a1 + 104);
    asprintf(v3, "\n\tTime to DNS start:                       %u ms\n\tTime to DNS resolved:                    %u ms\n\tDNS resolved time:                       %u ms\n\tDNS answers cached:                      %d\n\tInterface type:                          %d\n\tTime to TCP start:                       %u ms\n\tTime to TCP establishment:               %u ms\n\tConnection establishment:                %u ms\n\tFlow duration:                           %u ms\n\tConnected interface type:                %d\n\tConnected:                               %d\n\tTraffic class:                           %u\n\tCellular fallback:                       %d\n\tCellular RRC connected:                  %d\n\tKernel reported stalls:                  %d\n\tKernel reported connection stalls:       %d\n\tKernel reported read stalls:             %d\n\tKernel reported write stalls:            %d\n\tBytes/Packets in:                        %llu bytes/%llu packets\n\tBytes/Packets out:                       %llu bytes/%llu packets\n\tBytes/Packets duplicate:                 %llu bytes/%llu packets\n\tBytes/Packets ooo:                       %llu bytes/%llu packets\n\tBytes/Packets retransmitted:             %llu bytes/%llu packets\n\tCurrent RTT:                             %u ms\n\tSmoothed RTT:                            %u ms\n\tBest RTT:                                %u ms\n\tVariance of RTT:                         %u\n\tTCP SYN retransmissions:                 %u\n\tTCP Fast Open:                           %d\n\tBetter route count:                      %u\n\tConnection reuse count:                  %u\n\tApp data stall count:                    %u\n\tApp data stall timer:                    %u ms\n", a1->time_to_dns_start_msecs, a1->time_to_dns_resolved_msecs, a1->dns_resolved_time_msecs, v1 & 1, a1->interface_type, a1->time_to_connection_start_msecs, a1->time_to_connection_establishment_msecs, a1->connection_establishment_time_msecs, a1->flow_duration_msecs, a1->connected_interface_type, (v1 >> 1) & 1, a1->traffic_class, (v1 >> 2) & 1, (v1 >> 3) & 1, (v1 >> 5) & 1, (v1 >> 6) & 1, (v1 >> 7) & 1, (v1 >> 8) & 1, a1->bytes_in, a1->packets_in, a1->bytes_out);
  }

  else
  {
    asprintf(v3, "<NULL>");
  }

  return v3[0];
}

uint64_t network_config_set_opportunistic_blocked(const char *a1, _BOOL4 a2, void *a3, void *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  nw_allow_use_of_dispatch_internal();
  if (!a1)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "network_config_set_opportunistic_blocked";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v28, &type, &v53))
    {
      goto LABEL_94;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        *&buf[4] = "network_config_set_opportunistic_blocked";
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null ifname", buf, 0xCu);
      }

      goto LABEL_93;
    }

    if (v53 != 1)
    {
      v29 = __nwlog_obj();
      v49 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        *&buf[4] = "network_config_set_opportunistic_blocked";
        _os_log_impl(&dword_181A37000, v29, v49, "%{public}s called with null ifname, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_93;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v40 = type;
    v41 = os_log_type_enabled(v29, type);
    if (!backtrace_string)
    {
      if (v41)
      {
        *buf = 136446210;
        *&buf[4] = "network_config_set_opportunistic_blocked";
        _os_log_impl(&dword_181A37000, v29, v40, "%{public}s called with null ifname, no backtrace", buf, 0xCu);
      }

      goto LABEL_93;
    }

    if (v41)
    {
      *buf = 136446466;
      *&buf[4] = "network_config_set_opportunistic_blocked";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v29, v40, "%{public}s called with null ifname, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_67:

    free(backtrace_string);
    goto LABEL_94;
  }

  if (!v7)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "network_config_set_opportunistic_blocked";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v28, &type, &v53))
    {
      goto LABEL_94;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        *&buf[4] = "network_config_set_opportunistic_blocked";
        _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null queue", buf, 0xCu);
      }

      goto LABEL_93;
    }

    if (v53 != 1)
    {
      v29 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        *&buf[4] = "network_config_set_opportunistic_blocked";
        _os_log_impl(&dword_181A37000, v29, v50, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_93;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v42 = type;
    v43 = os_log_type_enabled(v29, type);
    if (!backtrace_string)
    {
      if (v43)
      {
        *buf = 136446210;
        *&buf[4] = "network_config_set_opportunistic_blocked";
        _os_log_impl(&dword_181A37000, v29, v42, "%{public}s called with null queue, no backtrace", buf, 0xCu);
      }

      goto LABEL_93;
    }

    if (v43)
    {
      *buf = 136446466;
      *&buf[4] = "network_config_set_opportunistic_blocked";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v29, v42, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_67;
  }

  if (v8)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "Unb";
      *buf = 136446722;
      *&buf[4] = "network_config_set_opportunistic_blocked";
      *&buf[12] = 2082;
      if (a2)
      {
        v10 = "B";
      }

      *&buf[14] = v10;
      *&buf[22] = 2082;
      v56 = a1;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}slocking opportunistic traffic on %{public}s", buf, 0x20u);
    }

    v11 = v7;
    v12 = v8;
    v13 = xpc_dictionary_create(0, 0, 0);
    v14 = v13;
    if (v13)
    {
      xpc_dictionary_set_uint64(v13, networkd_privileged_key_type, 2uLL);
      xpc_dictionary_set_BOOL(v14, networkd_privileged_key_opportunistic_disable, a2);
      v15 = xpc_string_create(a1);
      if (v15)
      {
        xpc_dictionary_set_value(v14, networkd_privileged_key_opportunistic_ifname, v15);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __networkd_privileged_set_opportunistic_async_block_invoke_42;
        v56 = &unk_1E6A2B5D0;
        v58 = v12;
        v59 = a2;
        v16 = v15;
        v57 = v16;
        networkd_privileged_send_async_inner("networkd_privileged_set_opportunistic_async", v14, v11, buf);

LABEL_31:
        v25 = 1;
        goto LABEL_32;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      *buf = 136446210;
      *&buf[4] = "networkd_privileged_set_opportunistic_async";
      v18 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v53 = 0;
      if (__nwlog_fault(v18, &type, &v53))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v19 = gLogObj;
          v20 = type;
          if (os_log_type_enabled(v19, type))
          {
            *buf = 136446210;
            *&buf[4] = "networkd_privileged_set_opportunistic_async";
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s xpc_string_create failed", buf, 0xCu);
          }
        }

        else if (v53 == 1)
        {
          v21 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v19 = gLogObj;
          v22 = type;
          v23 = os_log_type_enabled(v19, type);
          if (v21)
          {
            if (v23)
            {
              *buf = 136446466;
              *&buf[4] = "networkd_privileged_set_opportunistic_async";
              *&buf[12] = 2082;
              *&buf[14] = v21;
              _os_log_impl(&dword_181A37000, v19, v22, "%{public}s xpc_string_create failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v21);
            if (!v18)
            {
              goto LABEL_30;
            }

            goto LABEL_29;
          }

          if (v23)
          {
            *buf = 136446210;
            *&buf[4] = "networkd_privileged_set_opportunistic_async";
            _os_log_impl(&dword_181A37000, v19, v22, "%{public}s xpc_string_create failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v19 = gLogObj;
          v24 = type;
          if (os_log_type_enabled(v19, type))
          {
            *buf = 136446210;
            *&buf[4] = "networkd_privileged_set_opportunistic_async";
            _os_log_impl(&dword_181A37000, v19, v24, "%{public}s xpc_string_create failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v18)
      {
LABEL_30:
        v16 = 0;
        goto LABEL_31;
      }

LABEL_29:
      free(v18);
      goto LABEL_30;
    }

    v35 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "networkd_privileged_set_opportunistic_async";
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (__nwlog_fault(v36, &type, &v53))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v37, type))
        {
          *buf = 136446210;
          *&buf[4] = "networkd_privileged_set_opportunistic_async";
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
        }
      }

      else if (v53 == 1)
      {
        v46 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v47 = type;
        v48 = os_log_type_enabled(v37, type);
        if (v46)
        {
          if (v48)
          {
            *buf = 136446466;
            *&buf[4] = "networkd_privileged_set_opportunistic_async";
            *&buf[12] = 2082;
            *&buf[14] = v46;
            _os_log_impl(&dword_181A37000, v37, v47, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v46);
          goto LABEL_100;
        }

        if (v48)
        {
          *buf = 136446210;
          *&buf[4] = "networkd_privileged_set_opportunistic_async";
          _os_log_impl(&dword_181A37000, v37, v47, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v37 = __nwlog_obj();
        v52 = type;
        if (os_log_type_enabled(v37, type))
        {
          *buf = 136446210;
          *&buf[4] = "networkd_privileged_set_opportunistic_async";
          _os_log_impl(&dword_181A37000, v37, v52, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_100:
    if (v36)
    {
      free(v36);
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __networkd_privileged_set_opportunistic_async_block_invoke;
    v56 = &unk_1E6A3CE48;
    v57 = v12;
    dispatch_async(v11, buf);
    v16 = v57;
    goto LABEL_31;
  }

  v33 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "network_config_set_opportunistic_blocked";
  v28 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v53 = 0;
  if (__nwlog_fault(v28, &type, &v53))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        *&buf[4] = "network_config_set_opportunistic_blocked";
        _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null completion", buf, 0xCu);
      }

LABEL_93:

      goto LABEL_94;
    }

    if (v53 != 1)
    {
      v29 = __nwlog_obj();
      v51 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        *&buf[4] = "network_config_set_opportunistic_blocked";
        _os_log_impl(&dword_181A37000, v29, v51, "%{public}s called with null completion, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_93;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v44 = type;
    v45 = os_log_type_enabled(v29, type);
    if (!backtrace_string)
    {
      if (v45)
      {
        *buf = 136446210;
        *&buf[4] = "network_config_set_opportunistic_blocked";
        _os_log_impl(&dword_181A37000, v29, v44, "%{public}s called with null completion, no backtrace", buf, 0xCu);
      }

      goto LABEL_93;
    }

    if (v45)
    {
      *buf = 136446466;
      *&buf[4] = "network_config_set_opportunistic_blocked";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v29, v44, "%{public}s called with null completion, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_67;
  }

LABEL_94:
  if (v28)
  {
    free(v28);
  }

  v25 = 0;
LABEL_32:

  return v25;
}

void network_config_set_persistent_interface(const char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "NULL";
    if (a1)
    {
      v3 = a1;
    }

    if (kNetworkConfigPersistentInterfaceNoGuidance == a1)
    {
      v4 = "NoGuidance";
    }

    else
    {
      v4 = v3;
    }

    *buf = 136446466;
    v10 = "network_config_set_persistent_interface";
    v11 = 2082;
    v12 = v4;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s Setting persistent interface to %{public}s", buf, 0x16u);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __network_config_set_persistent_interface_block_invoke;
  v7 = &__block_descriptor_40_e5_v8__0l;
  v8 = a1;
  {
    nw_persistent_agent_synchronize(void({block_pointer})(void))::persistent_agent_lock = 0;
  }

  os_unfair_lock_lock(&nw_persistent_agent_synchronize(void({block_pointer})(void))::persistent_agent_lock);
  v6(v5);
  os_unfair_lock_unlock(&nw_persistent_agent_synchronize(void({block_pointer})(void))::persistent_agent_lock);
}

void __network_config_set_persistent_interface_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = _ZZZ39network_config_set_persistent_interfaceEUb_E16persistent_agent;
  if (_ZZZ39network_config_set_persistent_interfaceEUb_E16persistent_agent)
  {
    _ZZZ39network_config_set_persistent_interfaceEUb_E16persistent_agent = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3 == kNetworkConfigPersistentInterfaceNoGuidance;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && *v3)
  {
    v5 = _nw_interface_create_with_name(v3);
    if (v5)
    {
      if (nw_context_copy_implicit_context::onceToken[0] != -1)
      {
        dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
      }

      v6 = nw_context_copy_implicit_context::implicit_context;
      v7 = nw_context_copy_workloop(v6);
      v8 = nw_agent_create("Persistent", "Persistent", "Persistent interface guidance", v7);
      v9 = _ZZZ39network_config_set_persistent_interfaceEUb_E16persistent_agent;
      _ZZZ39network_config_set_persistent_interfaceEUb_E16persistent_agent = v8;

      nw_agent_change_state(_ZZZ39network_config_set_persistent_interfaceEUb_E16persistent_agent, 1, 0, 0);
      v10 = nw_agent_add_to_interface(_ZZZ39network_config_set_persistent_interfaceEUb_E16persistent_agent, v5);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v24 = "network_config_set_persistent_interface_block_invoke";
          v25 = 2114;
          v26 = v5;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s Added persistent agent to interface %{public}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v24 = "network_config_set_persistent_interface_block_invoke";
        v25 = 2114;
        v26 = v5;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s Failed to add persistent agent to %{public}@", buf, 0x16u);
      }

LABEL_18:
      return;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v24 = "network_config_set_persistent_interface_block_invoke";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v14, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v24 = "network_config_set_persistent_interface_block_invoke";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null interface", buf, 0xCu);
        }
      }

      else if (v21 == 1)
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
            v24 = "network_config_set_persistent_interface_block_invoke";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_36;
        }

        if (v19)
        {
          *buf = 136446210;
          v24 = "network_config_set_persistent_interface_block_invoke";
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null interface, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v15 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v24 = "network_config_set_persistent_interface_block_invoke";
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null interface, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_36:
    if (v14)
    {
      free(v14);
    }

    goto LABEL_18;
  }
}

uint64_t network_config_set_BOOL_setting(const char *a1, BOOL value)
{
  v3 = xpc_BOOL_create(value);
  v4 = networkd_privileged_set_settings(a1, v3, 0);

  return v4;
}

uint64_t network_config_set_int64_setting(const char *a1, int64_t value)
{
  v3 = xpc_int64_create(value);
  v4 = networkd_privileged_set_settings(a1, v3, 0);

  return v4;
}

uint64_t network_config_set_int_sysctl_setting(const char *a1, int a2)
{
  v3 = xpc_int64_create(a2);
  v4 = networkd_privileged_set_settings(a1, v3, "sysctl");

  return v4;
}

uint64_t network_config_set_BOOL_sysctl_setting(const char *a1, BOOL value)
{
  v3 = xpc_BOOL_create(value);
  v4 = networkd_privileged_set_settings(a1, v3, "sysctl");

  return v4;
}

BOOL network_config_get_BOOL_setting_with_default(const char *a1, _BOOL8 value)
{
  v3 = networkd_settings_copy_value_of_type(a1, 0);
  v4 = v3;
  if (v3 && object_getClass(v3) == MEMORY[0x1E69E9E58])
  {
    value = xpc_BOOL_get_value(v4);
  }

  return value;
}

BOOL network_config_get_BOOL_setting(const char *a1)
{
  v1 = networkd_settings_copy_value_of_type(a1, 0);
  v2 = v1;
  v3 = v1 && object_getClass(v1) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v2);

  return v3;
}

int64_t network_config_get_int64_setting_with_default(const char *a1, int64_t value)
{
  v3 = networkd_settings_copy_value_of_type(a1, 0);
  v4 = v3;
  if (v3 && object_getClass(v3) == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v4);
  }

  return value;
}

void network_config_get_string_setting(const char *a1, _BYTE *a2, size_t a3)
{
  v5 = networkd_settings_copy_value_of_type(a1, 0);
  bzero(a2, a3);
  if (!v5 || object_getClass(v5) != MEMORY[0x1E69E9F10])
  {
LABEL_3:

    return;
  }

  string_ptr = xpc_string_get_string_ptr(v5);
  if (a2)
  {
    if (string_ptr)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v14 = string_ptr;
    v10 = __nwlog_obj();
    os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    v11 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v11))
    {
      goto LABEL_19;
    }

    free(v11);
    string_ptr = v14;
    if (v14)
    {
LABEL_6:
      if (a3 >= 2)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  v15 = string_ptr;
  v12 = __nwlog_obj();
  os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  v13 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v13))
  {
    free(v13);
    string_ptr = v15;
    if (a3 >= 2)
    {
LABEL_7:
      v7 = 1;
      v8 = a3;
      while (1)
      {
        v9 = *string_ptr;
        *a2 = v9;
        if (!v9)
        {
          goto LABEL_3;
        }

        ++a2;
        ++string_ptr;
        if (--v8 <= 1)
        {
          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v7 = a3;
LABEL_16:
    if (a3)
    {
      if (v7)
      {
        *a2 = 0;
      }
    }

    goto LABEL_3;
  }

LABEL_19:
  __break(1u);
}

int64_t network_config_get_int64_setting(const char *a1)
{
  v1 = networkd_settings_copy_value_of_type(a1, 0);
  v2 = v1;
  if (v1 && object_getClass(v1) == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v2);
  }

  else
  {
    value = 0;
  }

  return value;
}

uint64_t network_config_open_kernel_network_advisory_socket()
{
  v13 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "network_config_open_kernel_network_advisory_socket";
    _os_log_impl(&dword_181A37000, v0, OS_LOG_TYPE_DEFAULT, "%{public}s Requesting kernel network advisory socket from helper", &v9, 0xCu);
  }

  kernel_socket_internal = networkd_privileged_get_kernel_socket_internal(0xDuLL);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v3 = v2;
  if ((kernel_socket_internal & 0x80000000) != 0)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446210;
      v10 = "network_config_open_kernel_network_advisory_socket";
      v4 = "%{public}s Failed to open kernel network advisory socket";
      v5 = v3;
      v6 = OS_LOG_TYPE_ERROR;
      v7 = 12;
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "network_config_open_kernel_network_advisory_socket";
    v11 = 1024;
    v12 = kernel_socket_internal;
    v4 = "%{public}s Received kernel network advisory socket fd=%d";
    v5 = v3;
    v6 = OS_LOG_TYPE_DEFAULT;
    v7 = 18;
LABEL_8:
    _os_log_impl(&dword_181A37000, v5, v6, v4, &v9, v7);
  }

  return kernel_socket_internal;
}

void network_config_check_interface_settings()
{
  nw_allow_use_of_dispatch_internal();
  network_config_check_mobile_asset();

  network_config_run_probes();
}

void network_config_check_mobile_asset()
{
  v17 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v14 = "network_config_check_mobile_asset";
    _os_log_impl(&dword_181A37000, v0, OS_LOG_TYPE_DEFAULT, "%{public}s Checking mobile asset", buf, 0xCu);
  }

  v1 = xpc_dictionary_create(0, 0, 0);
  v2 = v1;
  if (v1)
  {
    xpc_dictionary_set_uint64(v1, networkd_privileged_key_type, 0xBuLL);
    if (networkd_privileged_copy_queue(void)::onceToken != -1)
    {
      dispatch_once(&networkd_privileged_copy_queue(void)::onceToken, &__block_literal_global_56);
    }

    networkd_privileged_send_async_inner("networkd_privileged_check_mobile_asset", v2, networkd_privileged_copy_queue(void)::networkdPrivilegedQueue, &__block_literal_global_1129);
    goto LABEL_7;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "networkd_privileged_check_mobile_asset";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "networkd_privileged_check_mobile_asset";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v14 = "networkd_privileged_check_mobile_asset";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "networkd_privileged_check_mobile_asset";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "networkd_privileged_check_mobile_asset";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v4)
  {
    free(v4);
  }

LABEL_7:
}

void network_config_run_probes()
{
  v17 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v14 = "network_config_run_probes";
    _os_log_impl(&dword_181A37000, v0, OS_LOG_TYPE_DEFAULT, "%{public}s Running network probes", buf, 0xCu);
  }

  v1 = xpc_dictionary_create(0, 0, 0);
  v2 = v1;
  if (v1)
  {
    xpc_dictionary_set_uint64(v1, networkd_privileged_key_type, 0x15uLL);
    if (networkd_privileged_copy_queue(void)::onceToken != -1)
    {
      dispatch_once(&networkd_privileged_copy_queue(void)::onceToken, &__block_literal_global_56);
    }

    networkd_privileged_send_async_inner("networkd_privileged_run_probes", v2, networkd_privileged_copy_queue(void)::networkdPrivilegedQueue, &__block_literal_global_40_1142);
    goto LABEL_7;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "networkd_privileged_run_probes";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "networkd_privileged_run_probes";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s xpc_dictionary_create failed", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v14 = "networkd_privileged_run_probes";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "networkd_privileged_run_probes";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s xpc_dictionary_create failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "networkd_privileged_run_probes";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s xpc_dictionary_create failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v4)
  {
    free(v4);
  }

LABEL_7:
}

void network_config_set_default_multipath_service_type(int64_t value)
{
  v1 = value;
  v9 = *MEMORY[0x1E69E9840];
  if (value < 4)
  {
    v3 = nw_setting_multipath_service_type;
    v4 = xpc_int64_create(value);
    networkd_privileged_set_settings(v3, v4, 0);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v6 = "network_config_set_default_multipath_service_type";
      v7 = 1024;
      v8 = v1;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_ERROR, "%{public}s Invalid Multipath Service Type: %d", buf, 0x12u);
    }
  }
}

int64_t network_config_get_default_multipath_service_type()
{
  v0 = networkd_settings_copy_value_of_type(nw_setting_multipath_service_type, 0);
  v1 = v0;
  if (v0 && object_getClass(v0) == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v1);
  }

  else
  {
    value = 0;
  }

  return value;
}

void network_config_set_multipath_allow_aggregation(BOOL a1)
{
  v1 = xpc_BOOL_create(a1);
  networkd_privileged_set_settings("net.inet.mptcp.allow_aggregate", v1, "sysctl");
}

BOOL network_config_get_multipath_allow_aggregation()
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v15 = 4;
  if (sysctlbyname("net.inet.mptcp.allow_aggregate", &v16, &v15, 0, 0))
  {
    v0 = 0;
  }

  else
  {
    v0 = v15 == 4;
  }

  if (v0)
  {
    return v16 != 0;
  }

  v1 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  *buf = 136446722;
  v18 = "network_config_get_multipath_allow_aggregation";
  v19 = 2082;
  v20 = "net.inet.mptcp.allow_aggregate";
  v21 = 1024;
  v22 = v1;
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v3, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_22;
      }

      *buf = 136446722;
      v18 = "network_config_get_multipath_allow_aggregation";
      v19 = 2082;
      v20 = "net.inet.mptcp.allow_aggregate";
      v21 = 1024;
      v22 = v1;
      v6 = "%{public}s Error reading sysctl %{public}s %{darwin.errno}d";
LABEL_20:
      v11 = v4;
      v12 = v5;
      goto LABEL_21;
    }

    if (v13 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_22;
      }

      *buf = 136446722;
      v18 = "network_config_get_multipath_allow_aggregation";
      v19 = 2082;
      v20 = "net.inet.mptcp.allow_aggregate";
      v21 = 1024;
      v22 = v1;
      v6 = "%{public}s Error reading sysctl %{public}s %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v9 = type;
    v10 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (!v10)
      {
LABEL_22:

        if (!v3)
        {
          return 0;
        }

        goto LABEL_16;
      }

      *buf = 136446722;
      v18 = "network_config_get_multipath_allow_aggregation";
      v19 = 2082;
      v20 = "net.inet.mptcp.allow_aggregate";
      v21 = 1024;
      v22 = v1;
      v6 = "%{public}s Error reading sysctl %{public}s %{darwin.errno}d, no backtrace";
      v11 = v4;
      v12 = v9;
LABEL_21:
      _os_log_impl(&dword_181A37000, v11, v12, v6, buf, 0x1Cu);
      goto LABEL_22;
    }

    if (v10)
    {
      *buf = 136446978;
      v18 = "network_config_get_multipath_allow_aggregation";
      v19 = 2082;
      v20 = "net.inet.mptcp.allow_aggregate";
      v21 = 1024;
      v22 = v1;
      v23 = 2082;
      v24 = backtrace_string;
      _os_log_impl(&dword_181A37000, v4, v9, "%{public}s Error reading sysctl %{public}s %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
    }

    free(backtrace_string);
  }

  if (v3)
  {
LABEL_16:
    free(v3);
  }

  return 0;
}

BOOL network_config_register_quic_log_debug_updates(void *a1)
{
  v1 = a1;
  nw_allow_use_of_dispatch_internal();
  v2 = nw_settings_register_quic_log_debug_updates(v1);

  return v2;
}

BOOL network_config_register_swift_tls_log_debug_updates(void *a1)
{
  v1 = a1;
  nw_allow_use_of_dispatch_internal();
  v2 = nw_settings_register_swift_tls_log_debug_updates(v1);

  return v2;
}

void network_config_set_interface_constrained(const char *a1, BOOL a2)
{
  nw_allow_use_of_dispatch_internal();

  networkd_privileged_set_constrained(a1, a2);
}

void network_config_set_interface_ultra_constrained(const char *a1, BOOL a2)
{
  nw_allow_use_of_dispatch_internal();

  networkd_privileged_set_ultra_constrained(a1, a2);
}

void network_config_set_interface_expensive(const char *a1, BOOL a2)
{
  nw_allow_use_of_dispatch_internal();

  networkd_privileged_set_expensive(a1, a2);
}

void network_config_set_ultra_constrained_default_allowed(BOOL a1)
{
  nw_allow_use_of_dispatch_internal();
  v2 = nw_setting_ultra_constrained_default_allow[0];
  v3 = xpc_BOOL_create(a1);
  networkd_privileged_set_settings(v2, v3, 0);
}

BOOL network_config_get_ultra_constrained_default_allowed()
{
  v0 = networkd_settings_copy_value_of_type(nw_setting_ultra_constrained_default_allow[0], 0);
  v1 = v0;
  v2 = v0 && object_getClass(v0) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v1);

  return v2;
}

void network_config_set_l4s_enabled(int64_t value)
{
  v1 = value;
  v2 = nw_setting_enable_l4s;
  v3 = xpc_int64_create(value);
  networkd_privileged_set_settings(v2, v3, 0);

  v4 = xpc_int64_create(v1);
  networkd_privileged_set_settings("net.inet.tcp.l4s_developer", v4, "sysctl");
}

uint64_t network_config_get_tcp_l4s_enabled()
{
  if (l4s_enabled_by_developer())
  {
    return 1;
  }

  if (l4s_disabled_by_developer())
  {
    return 0;
  }

  v1 = networkd_settings_copy_value_of_type(nw_setting_enable_tcp_l4s, 0);
  v2 = v1;
  v3 = v1 && object_getClass(v1) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v2);

  return v3;
}

uint64_t network_config_register_boringssl_batching_size_updates(void *a1)
{
  v1 = a1;
  nw_allow_use_of_dispatch_internal();
  v2 = nw_settings_register_boringssl_batching_size_updates(v1);

  return v2;
}

void nw_endpoint_fault(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  *buf = 136446466;
  v15 = "nw_endpoint_fault";
  v16 = 2080;
  v17 = a1;
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v3, &type, &v12))
  {
    goto LABEL_10;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_17;
    }

    *buf = 136446466;
    v15 = "nw_endpoint_fault";
    v16 = 2080;
    v17 = a1;
    v6 = "%{public}s %s";
LABEL_15:
    v10 = v4;
    v11 = v5;
LABEL_16:
    _os_log_impl(&dword_181A37000, v10, v11, v6, buf, 0x16u);
    goto LABEL_17;
  }

  if (v12 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_17;
    }

    *buf = 136446466;
    v15 = "nw_endpoint_fault";
    v16 = 2080;
    v17 = a1;
    v6 = "%{public}s %s, backtrace limit exceeded";
    goto LABEL_15;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  v8 = type;
  v9 = os_log_type_enabled(v4, type);
  if (backtrace_string)
  {
    if (v9)
    {
      *buf = 136446722;
      v15 = "nw_endpoint_fault";
      v16 = 2080;
      v17 = a1;
      v18 = 2082;
      v19 = backtrace_string;
      _os_log_impl(&dword_181A37000, v4, v8, "%{public}s %s, dumping backtrace:%{public}s", buf, 0x20u);
    }

    free(backtrace_string);
LABEL_10:
    if (!v3)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v9)
  {
    *buf = 136446466;
    v15 = "nw_endpoint_fault";
    v16 = 2080;
    v17 = a1;
    v6 = "%{public}s %s, no backtrace";
    v10 = v4;
    v11 = v8;
    goto LABEL_16;
  }

LABEL_17:

  if (v3)
  {
LABEL_11:
    free(v3);
  }
}

void nw_endpoint_set_is_local_domain(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_is_local_domain(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_is_local_domain";
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
        v16 = "nw_endpoint_set_is_local_domain";
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
          v16 = "nw_endpoint_set_is_local_domain";
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
        v16 = "nw_endpoint_set_is_local_domain";
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
        v16 = "nw_endpoint_set_is_local_domain";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

uint64_t nw_endpoint_create_from_dictionary(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_create_from_dictionary(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_create_from_dictionary";
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
        v16 = "nw_endpoint_create_from_dictionary";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null dictionary", buf, 0xCu);
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
          v16 = "nw_endpoint_create_from_dictionary";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null dictionary, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_create_from_dictionary";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null dictionary, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_create_from_dictionary";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null dictionary, backtrace limit exceeded", buf, 0xCu);
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

xpc_object_t nw_endpoint_copy_dictionary(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_copy_dictionary(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

char *__cdecl nw_endpoint_copy_port_string(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_copy_port_string(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_copy_port_string";
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
        v16 = "nw_endpoint_copy_port_string";
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
          v16 = "nw_endpoint_copy_port_string";
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
        v16 = "nw_endpoint_copy_port_string";
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
        v16 = "nw_endpoint_copy_port_string";
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

void nw_endpoint_set_cname_array(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    _nw_endpoint_set_cname_array(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_cname_array";
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
        v16 = "nw_endpoint_set_cname_array";
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
          v16 = "nw_endpoint_set_cname_array";
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
        v16 = "nw_endpoint_set_cname_array";
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
        v16 = "nw_endpoint_set_cname_array";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

uint64_t nw_endpoint_copy_cname_array(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_copy_cname_array(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_copy_cname_array";
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
        v16 = "nw_endpoint_copy_cname_array";
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
          v16 = "nw_endpoint_copy_cname_array";
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
        v16 = "nw_endpoint_copy_cname_array";
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
        v16 = "nw_endpoint_copy_cname_array";
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

void nw_endpoint_set_remote_interface_type(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_remote_interface_type(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_remote_interface_type";
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
        v16 = "nw_endpoint_set_remote_interface_type";
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
          v16 = "nw_endpoint_set_remote_interface_type";
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
        v16 = "nw_endpoint_set_remote_interface_type";
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
        v16 = "nw_endpoint_set_remote_interface_type";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

uint64_t nw_endpoint_get_remote_interface_type(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    remote_interface_type = _nw_endpoint_get_remote_interface_type(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_remote_interface_type";
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
        v16 = "nw_endpoint_get_remote_interface_type";
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
          v16 = "nw_endpoint_get_remote_interface_type";
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
        v16 = "nw_endpoint_get_remote_interface_type";
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
        v16 = "nw_endpoint_get_remote_interface_type";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  remote_interface_type = 0;
LABEL_3:

  return remote_interface_type;
}

void nw_endpoint_set_preferred_agent_identifier(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_preferred_agent_identifier(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_preferred_agent_identifier";
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
        v16 = "nw_endpoint_set_preferred_agent_identifier";
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
          v16 = "nw_endpoint_set_preferred_agent_identifier";
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
        v16 = "nw_endpoint_set_preferred_agent_identifier";
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
        v16 = "nw_endpoint_set_preferred_agent_identifier";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_endpoint_get_preferred_agent_identifier(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_get_preferred_agent_identifier(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_preferred_agent_identifier";
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
        v16 = "nw_endpoint_get_preferred_agent_identifier";
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
          v16 = "nw_endpoint_get_preferred_agent_identifier";
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
        v16 = "nw_endpoint_get_preferred_agent_identifier";
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
        v16 = "nw_endpoint_get_preferred_agent_identifier";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

uint64_t nw_endpoint_get_hash(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    hash = _nw_endpoint_get_hash(v1);
  }

  else
  {
    hash = 0;
  }

  return hash;
}

uint64_t nw_endpoint_is_local_domain(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    is_local_domain = _nw_endpoint_is_local_domain(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_is_local_domain";
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
        v16 = "nw_endpoint_is_local_domain";
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
          v16 = "nw_endpoint_is_local_domain";
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
        v16 = "nw_endpoint_is_local_domain";
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
        v16 = "nw_endpoint_is_local_domain";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  is_local_domain = 0;
LABEL_3:

  return is_local_domain;
}

void nw_endpoint_set_custom_metadata_for_key(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_set_custom_metadata_for_key";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_set_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v28 == 1)
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
          v31 = "nw_endpoint_set_custom_metadata_for_key";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_56:
        if (!v10)
        {
          goto LABEL_6;
        }

LABEL_57:
        free(v10);
        goto LABEL_6;
      }

      if (v17)
      {
        *buf = 136446210;
        v31 = "nw_endpoint_set_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_set_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_55:

    goto LABEL_56;
  }

  if (!a2)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_set_custom_metadata_for_key";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_set_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null key", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (v28 != 1)
    {
      v11 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_set_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v11, v24, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_55;
    }

    v20 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v11, type);
    if (!v20)
    {
      if (v22)
      {
        *buf = 136446210;
        v31 = "nw_endpoint_set_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null key, no backtrace", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (v22)
    {
      *buf = 136446466;
      v31 = "nw_endpoint_set_custom_metadata_for_key";
      v32 = 2082;
      v33 = v20;
      _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_42;
  }

  if (a3 && !a4)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_set_custom_metadata_for_key";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_set_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null metadata_len", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (v28 != 1)
    {
      v11 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_set_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s called with null metadata_len, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_55;
    }

    v20 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v25 = type;
    v26 = os_log_type_enabled(v11, type);
    if (!v20)
    {
      if (v26)
      {
        *buf = 136446210;
        v31 = "nw_endpoint_set_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null metadata_len, no backtrace", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (v26)
    {
      *buf = 136446466;
      v31 = "nw_endpoint_set_custom_metadata_for_key";
      v32 = 2082;
      v33 = v20;
      _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null metadata_len, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_42:

    free(v20);
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_57;
  }

  _nw_endpoint_set_custom_metadata_for_key(v7, a2, a3, a4);
LABEL_6:
}

uint64_t nw_endpoint_access_custom_metadata_for_key(void *a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_access_custom_metadata_for_key";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v11, &type, &v28))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_access_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v28 != 1)
    {
      v12 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_access_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v12, v25, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v19 = type;
    v20 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v31 = "nw_endpoint_access_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v20)
    {
      *buf = 136446466;
      v31 = "nw_endpoint_access_custom_metadata_for_key";
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(backtrace_string);
    goto LABEL_54;
  }

  if (!a2)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_access_custom_metadata_for_key";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v11, &type, &v28))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_access_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null key", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v28 != 1)
    {
      v12 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_access_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v12, v26, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v31 = "nw_endpoint_access_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null key, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v22)
    {
      *buf = 136446466;
      v31 = "nw_endpoint_access_custom_metadata_for_key";
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (v6)
  {
    v8 = _nw_endpoint_access_custom_metadata_for_key(v5, a2, v6);
    goto LABEL_5;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v31 = "nw_endpoint_access_custom_metadata_for_key";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (__nwlog_fault(v11, &type, &v28))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_access_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null access_block", buf, 0xCu);
      }

LABEL_53:

      goto LABEL_54;
    }

    if (v28 != 1)
    {
      v12 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_access_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null access_block, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v23 = type;
    v24 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        v31 = "nw_endpoint_access_custom_metadata_for_key";
        _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null access_block, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v24)
    {
      *buf = 136446466;
      v31 = "nw_endpoint_access_custom_metadata_for_key";
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null access_block, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

LABEL_54:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_5:

  return v8;
}

void nw_endpoint_set_signature(void *a1, const void *a2, size_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_endpoint_set_signature";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v8, &type, &v26))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_endpoint_set_signature";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v26 == 1)
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
          v29 = "nw_endpoint_set_signature";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v8)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v8);
        goto LABEL_5;
      }

      if (v17)
      {
        *buf = 136446210;
        v29 = "nw_endpoint_set_signature";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_endpoint_set_signature";
        _os_log_impl(&dword_181A37000, v9, v23, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!a2)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_endpoint_set_signature";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v8, &type, &v26))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_endpoint_set_signature";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null signature", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v26 != 1)
    {
      v9 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_endpoint_set_signature";
        _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null signature, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v18 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v19 = type;
    v20 = os_log_type_enabled(v9, type);
    if (!v18)
    {
      if (v20)
      {
        *buf = 136446210;
        v29 = "nw_endpoint_set_signature";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null signature, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v20)
    {
      *buf = 136446466;
      v29 = "nw_endpoint_set_signature";
      v30 = 2082;
      v31 = v18;
      _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null signature, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!a3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_endpoint_set_signature";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v8, &type, &v26))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_endpoint_set_signature";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null signature_length", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v26 != 1)
    {
      v9 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v29 = "nw_endpoint_set_signature";
        _os_log_impl(&dword_181A37000, v9, v25, "%{public}s called with null signature_length, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v18 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v9, type);
    if (!v18)
    {
      if (v22)
      {
        *buf = 136446210;
        v29 = "nw_endpoint_set_signature";
        _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null signature_length, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v22)
    {
      *buf = 136446466;
      v29 = "nw_endpoint_set_signature";
      v30 = 2082;
      v31 = v18;
      _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null signature_length, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v18);
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  _nw_endpoint_set_signature(v5, a2, a3);
LABEL_5:
}

void nw_endpoint_set_ech_config(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    _nw_endpoint_set_ech_config(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_ech_config";
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
        v16 = "nw_endpoint_set_ech_config";
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
          v16 = "nw_endpoint_set_ech_config";
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
        v16 = "nw_endpoint_set_ech_config";
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
        v16 = "nw_endpoint_set_ech_config";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

id nw_endpoint_copy_ech_config(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_copy_ech_config(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_copy_ech_config";
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
        v16 = "nw_endpoint_copy_ech_config";
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
          v16 = "nw_endpoint_copy_ech_config";
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
        v16 = "nw_endpoint_copy_ech_config";
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
        v16 = "nw_endpoint_copy_ech_config";
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

void nw_endpoint_clear_alternatives(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    _nw_endpoint_clear_alternatives(v1);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_endpoint_clear_alternatives";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_endpoint_clear_alternatives";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v14 = "nw_endpoint_clear_alternatives";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_endpoint_clear_alternatives";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_endpoint_clear_alternatives";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

LABEL_3:
}

void nw_endpoint_set_known_tracker_name(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_known_tracker_name(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_known_tracker_name";
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
        v16 = "nw_endpoint_set_known_tracker_name";
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
          v16 = "nw_endpoint_set_known_tracker_name";
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
        v16 = "nw_endpoint_set_known_tracker_name";
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
        v16 = "nw_endpoint_set_known_tracker_name";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

uint64_t nw_endpoint_get_known_tracker_name(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    known_tracker_name = _nw_endpoint_get_known_tracker_name(v1);
  }

  else
  {
    known_tracker_name = 0;
  }

  return known_tracker_name;
}

void nw_endpoint_set_tracker_owner(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_tracker_owner(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_tracker_owner";
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
        v16 = "nw_endpoint_set_tracker_owner";
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
          v16 = "nw_endpoint_set_tracker_owner";
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
        v16 = "nw_endpoint_set_tracker_owner";
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
        v16 = "nw_endpoint_set_tracker_owner";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

uint64_t nw_endpoint_get_tracker_owner(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    tracker_owner = _nw_endpoint_get_tracker_owner(v1);
  }

  else
  {
    tracker_owner = 0;
  }

  return tracker_owner;
}

uint64_t nw_endpoint_hostname_matches_tracker(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_hostname_matches_tracker(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_hostname_matches_tracker";
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
        v16 = "nw_endpoint_hostname_matches_tracker";
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
          v16 = "nw_endpoint_hostname_matches_tracker";
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
        v16 = "nw_endpoint_hostname_matches_tracker";
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
        v16 = "nw_endpoint_hostname_matches_tracker";
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

void nw_endpoint_set_is_approved_app_domain(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_is_approved_app_domain(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_is_approved_app_domain";
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
        v16 = "nw_endpoint_set_is_approved_app_domain";
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
          v16 = "nw_endpoint_set_is_approved_app_domain";
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
        v16 = "nw_endpoint_set_is_approved_app_domain";
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
        v16 = "nw_endpoint_set_is_approved_app_domain";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_endpoint_set_can_block_request(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    _nw_endpoint_set_can_block_request(v3, a2);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_can_block_request";
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
        v16 = "nw_endpoint_set_can_block_request";
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
          v16 = "nw_endpoint_set_can_block_request";
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
        v16 = "nw_endpoint_set_can_block_request";
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
        v16 = "nw_endpoint_set_can_block_request";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

uint64_t nw_endpoint_get_can_block_request(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    can_block_request = _nw_endpoint_get_can_block_request(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_can_block_request";
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
        v16 = "nw_endpoint_get_can_block_request";
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
          v16 = "nw_endpoint_get_can_block_request";
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
        v16 = "nw_endpoint_get_can_block_request";
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
        v16 = "nw_endpoint_get_can_block_request";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  can_block_request = 0;
LABEL_3:

  return can_block_request;
}

void nw_endpoint_set_is_wildcard_host_from_san(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    _nw_endpoint_set_is_wildcard_host_from_san(v1, 1);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_endpoint_set_is_wildcard_host_from_san";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_endpoint_set_is_wildcard_host_from_san";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v14 = "nw_endpoint_set_is_wildcard_host_from_san";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_endpoint_set_is_wildcard_host_from_san";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_endpoint_set_is_wildcard_host_from_san";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

LABEL_3:
}

void nw_endpoint_clear_description(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    _nw_endpoint_clear_description(v1);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_endpoint_clear_description";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_endpoint_clear_description";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v14 = "nw_endpoint_clear_description";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_endpoint_clear_description";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_endpoint_clear_description";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

LABEL_3:
}

void nw_endpoint_set_public_keys(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    _nw_endpoint_set_public_keys(v3);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_set_public_keys";
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
        v16 = "nw_endpoint_set_public_keys";
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
          v16 = "nw_endpoint_set_public_keys";
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
        v16 = "nw_endpoint_set_public_keys";
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
        v16 = "nw_endpoint_set_public_keys";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void nw_endpoint_append_public_key(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_endpoint_append_public_key";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_endpoint_append_public_key";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v23 = "nw_endpoint_append_public_key";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v7);
        goto LABEL_4;
      }

      if (v14)
      {
        *buf = 136446210;
        v23 = "nw_endpoint_append_public_key";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_endpoint_append_public_key";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    _nw_endpoint_append_public_key(v3, v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_endpoint_append_public_key";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_endpoint_append_public_key";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null publicKey", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_endpoint_append_public_key";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null publicKey, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = type;
  v17 = os_log_type_enabled(v8, type);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v23 = "nw_endpoint_append_public_key";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null publicKey, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_endpoint_append_public_key";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null publicKey, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void *nw_endpoint_serialize_into_buffer(void *a1, size_t *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      v5 = _nw_endpoint_serialize_into_buffer(v3, a2);
      goto LABEL_4;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_endpoint_serialize_into_buffer";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (__nwlog_fault(v8, &type, &v20))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_endpoint_serialize_into_buffer";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null buffer_length", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v20 != 1)
      {
        v9 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_endpoint_serialize_into_buffer";
          _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null buffer_length, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v23 = "nw_endpoint_serialize_into_buffer";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null buffer_length, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v17)
      {
        *buf = 136446466;
        v23 = "nw_endpoint_serialize_into_buffer";
        v24 = 2082;
        v25 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null buffer_length, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_endpoint_serialize_into_buffer";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (__nwlog_fault(v8, &type, &v20))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_endpoint_serialize_into_buffer";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null endpoint", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v20 != 1)
      {
        v9 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_endpoint_serialize_into_buffer";
          _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v23 = "nw_endpoint_serialize_into_buffer";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        *buf = 136446466;
        v23 = "nw_endpoint_serialize_into_buffer";
        v24 = 2082;
        v25 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_4:

  return v5;
}

uint64_t nw_endpoint_deserialize_from_buffer(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_endpoint_deserialize_from_buffer();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_endpoint_deserialize_from_buffer";
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
        v12 = "nw_endpoint_deserialize_from_buffer";
        v6 = "%{public}s called with null buffer";
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
            v12 = "nw_endpoint_deserialize_from_buffer";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_endpoint_deserialize_from_buffer";
        v6 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_endpoint_deserialize_from_buffer";
        v6 = "%{public}s called with null buffer, backtrace limit exceeded";
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

BOOL nw_ws_request_enumerate_subprotocols(nw_ws_request_t request, nw_ws_subprotocol_enumerator_t enumerator)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = request;
  v4 = enumerator;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      isa = v3[2].isa;
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_ws_request_enumerate_subprotocols_block_invoke;
      applier[3] = &unk_1E6A35AD0;
      v23 = v4;
      v7 = xpc_array_apply(isa, applier);

      goto LABEL_4;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_ws_request_enumerate_subprotocols";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v10, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v27 = "nw_ws_request_enumerate_subprotocols";
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null enumerator", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v24 != 1)
      {
        v11 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v27 = "nw_ws_request_enumerate_subprotocols";
          _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null enumerator, backtrace limit exceeded", buf, 0xCu);
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
          v27 = "nw_ws_request_enumerate_subprotocols";
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v19)
      {
        *buf = 136446466;
        v27 = "nw_ws_request_enumerate_subprotocols";
        v28 = 2082;
        v29 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null enumerator, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_ws_request_enumerate_subprotocols";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v10, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v27 = "nw_ws_request_enumerate_subprotocols";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null request", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v24 != 1)
      {
        v11 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v27 = "nw_ws_request_enumerate_subprotocols";
          _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
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
          v27 = "nw_ws_request_enumerate_subprotocols";
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null request, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v17)
      {
        *buf = 136446466;
        v27 = "nw_ws_request_enumerate_subprotocols";
        v28 = 2082;
        v29 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
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

uint64_t __nw_ws_request_enumerate_subprotocols_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  xpc_string_get_string_ptr(v4);
  v5 = (*(*(a1 + 32) + 16))();

  return v5;
}

BOOL nw_ws_request_enumerate_additional_headers(nw_ws_request_t request, nw_ws_additional_header_enumerator_t enumerator)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = request;
  v4 = enumerator;
  v5 = v4;
  if (!v3)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_ws_request_enumerate_additional_headers";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v13, &type, &v26))
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
        v29 = "nw_ws_request_enumerate_additional_headers";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null request", buf, 0xCu);
      }
    }

    else if (v26 == 1)
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
          v29 = "nw_ws_request_enumerate_additional_headers";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v13)
        {
LABEL_6:
          v8 = 0;
          goto LABEL_7;
        }

LABEL_42:
        free(v13);
        goto LABEL_6;
      }

      if (v20)
      {
        *buf = 136446210;
        v29 = "nw_ws_request_enumerate_additional_headers";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null request, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "nw_ws_request_enumerate_additional_headers";
        _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  if (!v4)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_ws_request_enumerate_additional_headers";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v13, &type, &v26))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "nw_ws_request_enumerate_additional_headers";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null enumerator", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      v21 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v14, type);
      if (v21)
      {
        if (v23)
        {
          *buf = 136446466;
          v29 = "nw_ws_request_enumerate_additional_headers";
          v30 = 2082;
          v31 = v21;
          _os_log_impl(&dword_181A37000, v14, v22, "%{public}s called with null enumerator, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v21);
        if (!v13)
        {
          goto LABEL_6;
        }

        goto LABEL_42;
      }

      if (v23)
      {
        *buf = 136446210;
        v29 = "nw_ws_request_enumerate_additional_headers";
        _os_log_impl(&dword_181A37000, v14, v22, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "nw_ws_request_enumerate_additional_headers";
        _os_log_impl(&dword_181A37000, v14, v25, "%{public}s called with null enumerator, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_40;
  }

  v6 = 0;
  while (1)
  {
    count = xpc_array_get_count(v3[3].isa);
    v8 = v6 >= count;
    if (v6 >= count)
    {
      break;
    }

    string = xpc_array_get_string(v3[3].isa, v6);
    v10 = xpc_array_get_string(v3[4].isa, v6++);
    if (((v5)[2](v5, string, v10) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_7:

  return v8;
}

char *nw_ws_request_copy_path(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_6;
  }

  v3 = v1[1];
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = strdup(v3);
  if (!v4)
  {
    v5 = __nwlog_obj();
    os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v18 = "strict_strdup";
    v6 = _os_log_send_and_compose_impl();

    if (!__nwlog_should_abort(v6))
    {
      goto LABEL_24;
    }

    __break(1u);
LABEL_6:
    v7 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_ws_request_copy_path";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v6, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "nw_ws_request_copy_path";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null request", buf, 0xCu);
        }
      }

      else if (v15 == 1)
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
            v18 = "nw_ws_request_copy_path";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v6)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (v12)
        {
          *buf = 136446210;
          v18 = "nw_ws_request_copy_path";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null request, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "nw_ws_request_copy_path";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (v6)
    {
LABEL_24:
      free(v6);
    }

LABEL_25:
    v4 = 0;
  }

  return v4;
}

void sub_1823AD02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_establishment_report_enumerate_proxy_endpoints(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_establishment_report_enumerate_proxy_endpoints";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v9, &type, &v24))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_proxy_endpoints";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v27 = "nw_establishment_report_enumerate_proxy_endpoints";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v9);
        goto LABEL_6;
      }

      if (v16)
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_proxy_endpoints";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_proxy_endpoints";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    v6 = v3[5];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_establishment_report_enumerate_proxy_endpoints_block_invoke;
    aBlock[3] = &unk_1E6A3CD30;
    v7 = v4;
    v23 = v7;
    if (v6)
    {
      _nw_array_apply(v6, aBlock);
      v7 = v23;
    }

    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_establishment_report_enumerate_proxy_endpoints";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v9, &type, &v24))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_proxy_endpoints";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null enumerate_block", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v24 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_proxy_endpoints";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null enumerate_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_proxy_endpoints";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v27 = "nw_establishment_report_enumerate_proxy_endpoints";
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_41;
  }

LABEL_6:
}

uint64_t nw_data_transfer_report_get_transport_congestion_window(void *a1, unsigned int a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_transport_congestion_window";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v11, &type, &v31))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_transport_congestion_window";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v34 = "nw_data_transfer_report_get_transport_congestion_window";
          v35 = 2082;
          *v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_49;
      }

      if (v21)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_transport_congestion_window";
        _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_transport_congestion_window";
        _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_48;
  }

  if (nw_data_transfer_report_get_state(v3) != nw_data_transfer_report_state_collected)
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34 = "nw_data_transfer_report_get_transport_congestion_window";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_51;
  }

  if (a2 == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  if (v5 >= HIDWORD(v4[5].isa))
  {
    v15 = __nwlog_obj();
    isa_high = HIDWORD(v4[5].isa);
    *buf = 136446722;
    v34 = "nw_data_transfer_report_get_transport_congestion_window";
    v35 = 1024;
    *v36 = v5;
    *&v36[4] = 1024;
    *&v36[6] = isa_high;
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v11, &type, &v31))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        v18 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_transport_congestion_window";
        v35 = 1024;
        *v36 = v5;
        *&v36[4] = 1024;
        *&v36[6] = v18;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s path_index (%u) >= report->path_count (%u)", buf, 0x18u);
      }
    }

    else if (v31 == 1)
    {
      v22 = v5;
      v23 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v12, type);
      if (v23)
      {
        if (v25)
        {
          v26 = HIDWORD(v4[5].isa);
          *buf = 136446978;
          v34 = "nw_data_transfer_report_get_transport_congestion_window";
          v35 = 1024;
          *v36 = v22;
          *&v36[4] = 1024;
          *&v36[6] = v26;
          v37 = 2082;
          v38 = v23;
          _os_log_impl(&dword_181A37000, v12, v24, "%{public}s path_index (%u) >= report->path_count (%u), dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(v23);
        goto LABEL_49;
      }

      if (v25)
      {
        v30 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_transport_congestion_window";
        v35 = 1024;
        *v36 = v22;
        *&v36[4] = 1024;
        *&v36[6] = v30;
        _os_log_impl(&dword_181A37000, v12, v24, "%{public}s path_index (%u) >= report->path_count (%u), no backtrace", buf, 0x18u);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        v29 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_transport_congestion_window";
        v35 = 1024;
        *v36 = v5;
        *&v36[4] = 1024;
        *&v36[6] = v29;
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s path_index (%u) >= report->path_count (%u), backtrace limit exceeded", buf, 0x18u);
      }
    }

LABEL_48:

LABEL_49:
    if (v11)
    {
      free(v11);
    }

LABEL_51:
    v8 = 0;
    goto LABEL_13;
  }

  v6 = v4;
  if (HIDWORD(v4[5].isa) <= v5)
  {
    v7 = 0;
  }

  else if (v5)
  {
    v7 = v6[52].isa + 360 * v5 - 360;
  }

  else
  {
    v7 = &v6[7];
  }

  v8 = *(v7 + 144);
LABEL_13:

  return v8;
}

uint64_t nw_data_transfer_report_get_transport_slow_start_threshold(void *a1, unsigned int a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_transport_slow_start_threshold";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v11, &type, &v31))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_transport_slow_start_threshold";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v34 = "nw_data_transfer_report_get_transport_slow_start_threshold";
          v35 = 2082;
          *v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_49;
      }

      if (v21)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_transport_slow_start_threshold";
        _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_transport_slow_start_threshold";
        _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_48;
  }

  if (nw_data_transfer_report_get_state(v3) != nw_data_transfer_report_state_collected)
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34 = "nw_data_transfer_report_get_transport_slow_start_threshold";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_51;
  }

  if (a2 == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  if (v5 >= HIDWORD(v4[5].isa))
  {
    v15 = __nwlog_obj();
    isa_high = HIDWORD(v4[5].isa);
    *buf = 136446722;
    v34 = "nw_data_transfer_report_get_transport_slow_start_threshold";
    v35 = 1024;
    *v36 = v5;
    *&v36[4] = 1024;
    *&v36[6] = isa_high;
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v11, &type, &v31))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        v18 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_transport_slow_start_threshold";
        v35 = 1024;
        *v36 = v5;
        *&v36[4] = 1024;
        *&v36[6] = v18;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s path_index (%u) >= report->path_count (%u)", buf, 0x18u);
      }
    }

    else if (v31 == 1)
    {
      v22 = v5;
      v23 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v12, type);
      if (v23)
      {
        if (v25)
        {
          v26 = HIDWORD(v4[5].isa);
          *buf = 136446978;
          v34 = "nw_data_transfer_report_get_transport_slow_start_threshold";
          v35 = 1024;
          *v36 = v22;
          *&v36[4] = 1024;
          *&v36[6] = v26;
          v37 = 2082;
          v38 = v23;
          _os_log_impl(&dword_181A37000, v12, v24, "%{public}s path_index (%u) >= report->path_count (%u), dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(v23);
        goto LABEL_49;
      }

      if (v25)
      {
        v30 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_transport_slow_start_threshold";
        v35 = 1024;
        *v36 = v22;
        *&v36[4] = 1024;
        *&v36[6] = v30;
        _os_log_impl(&dword_181A37000, v12, v24, "%{public}s path_index (%u) >= report->path_count (%u), no backtrace", buf, 0x18u);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        v29 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_transport_slow_start_threshold";
        v35 = 1024;
        *v36 = v5;
        *&v36[4] = 1024;
        *&v36[6] = v29;
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s path_index (%u) >= report->path_count (%u), backtrace limit exceeded", buf, 0x18u);
      }
    }

LABEL_48:

LABEL_49:
    if (v11)
    {
      free(v11);
    }

LABEL_51:
    v8 = 0;
    goto LABEL_13;
  }

  v6 = v4;
  if (HIDWORD(v4[5].isa) <= v5)
  {
    v7 = 0;
  }

  else if (v5)
  {
    v7 = v6[52].isa + 360 * v5 - 360;
  }

  else
  {
    v7 = &v6[7];
  }

  v8 = *(v7 + 152);
LABEL_13:

  return v8;
}

void nw_resolution_report_enumerate_endpoints(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_resolution_report_enumerate_endpoints";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v9, &type, &v24))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_resolution_report_enumerate_endpoints";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null resolution_report", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v27 = "nw_resolution_report_enumerate_endpoints";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v9);
        goto LABEL_6;
      }

      if (v16)
      {
        *buf = 136446210;
        v27 = "nw_resolution_report_enumerate_endpoints";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_resolution_report_enumerate_endpoints";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    v6 = v3[6];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_resolution_report_enumerate_endpoints_block_invoke;
    aBlock[3] = &unk_1E6A3CD30;
    v7 = v4;
    v23 = v7;
    if (v6)
    {
      _nw_array_apply(v6, aBlock);
      v7 = v23;
    }

    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_resolution_report_enumerate_endpoints";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v9, &type, &v24))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_resolution_report_enumerate_endpoints";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null enumerate_block", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v24 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_resolution_report_enumerate_endpoints";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null enumerate_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v27 = "nw_resolution_report_enumerate_endpoints";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v27 = "nw_resolution_report_enumerate_endpoints";
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_41;
  }

LABEL_6:
}

uint64_t nw_resolution_report_received_svcb(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[70] & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolution_report_received_svcb";
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
        v15 = "nw_resolution_report_received_svcb";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null resolution_report", buf, 0xCu);
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
          v15 = "nw_resolution_report_received_svcb";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_received_svcb";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_received_svcb";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_resolution_report_get_dns_failure_reason(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_resolution_report_get_dns_failure_reason";
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
          v17 = "nw_resolution_report_get_dns_failure_reason";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null resolution_report", buf, 0xCu);
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
            v17 = "nw_resolution_report_get_dns_failure_reason";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_31;
        }

        if (v12)
        {
          *buf = 136446210;
          v17 = "nw_resolution_report_get_dns_failure_reason";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v17 = "nw_resolution_report_get_dns_failure_reason";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_31:
    if (v7)
    {
      free(v7);
    }

    v4 = 0;
    v1 = 0;
    goto LABEL_14;
  }

  v2 = v1[34];
  if (v2 > 0xF)
  {
    if (v2 == 17)
    {
      v4 = 3;
      goto LABEL_14;
    }

    if (v2 != 16)
    {
      goto LABEL_12;
    }

    v4 = 2;
  }

  else
  {
    if (v2 != 4 && v2 != 15)
    {
LABEL_12:
      v4 = 0;
      goto LABEL_14;
    }

    v4 = 1;
  }

LABEL_14:

  return v4;
}

uint64_t nw_resolution_report_get_extended_dns_error_code(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[34];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_resolution_report_get_extended_dns_error_code";
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
        v15 = "nw_resolution_report_get_extended_dns_error_code";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null resolution_report", buf, 0xCu);
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
          v15 = "nw_resolution_report_get_extended_dns_error_code";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_extended_dns_error_code";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_extended_dns_error_code";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_resolution_report_get_extended_dns_error_extra_text(void *a1)
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
  v15 = "nw_resolution_report_get_extended_dns_error_extra_text";
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
        v15 = "nw_resolution_report_get_extended_dns_error_extra_text";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null resolution_report", buf, 0xCu);
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
          v15 = "nw_resolution_report_get_extended_dns_error_extra_text";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_extended_dns_error_extra_text";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_extended_dns_error_extra_text";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_resolution_report_get_provider_name(void *a1)
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
  v15 = "nw_resolution_report_get_provider_name";
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
        v15 = "nw_resolution_report_get_provider_name";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null resolution_report", buf, 0xCu);
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
          v15 = "nw_resolution_report_get_provider_name";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_provider_name";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null resolution_report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_resolution_report_get_provider_name";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null resolution_report, backtrace limit exceeded", buf, 0xCu);
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

const char *nw_connection_client_accurate_ecn_state_to_string(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_1E6A2C8D0[a1];
  }
}

const char *nw_connection_server_accurate_ecn_state_to_string(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "Unknown";
  }

  else
  {
    return off_1E6A2C920[a1];
  }
}

void nw_protocol_establishment_report_set_quic_migration_supported(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    v3[40] = v3[40] & 0xFD | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_establishment_report_set_quic_migration_supported";
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
        v16 = "nw_protocol_establishment_report_set_quic_migration_supported";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null report", buf, 0xCu);
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
          v16 = "nw_protocol_establishment_report_set_quic_migration_supported";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_establishment_report_set_quic_migration_supported";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_establishment_report_set_quic_migration_supported";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_6:
}

const char *nw_connection_get_privacy_stance_string(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_1E6A2C978[a1 - 1];
  }
}

uint64_t __Block_byref_object_copy__8362(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t nw_establishment_report_get_resolution_started_after_milliseconds(void *a1)
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
  v15 = "nw_establishment_report_get_resolution_started_after_milliseconds";
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
        v15 = "nw_establishment_report_get_resolution_started_after_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
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
          v15 = "nw_establishment_report_get_resolution_started_after_milliseconds";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_resolution_started_after_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_resolution_started_after_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_establishment_report_get_flow_started_after_milliseconds(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[4];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_establishment_report_get_flow_started_after_milliseconds";
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
        v15 = "nw_establishment_report_get_flow_started_after_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
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
          v15 = "nw_establishment_report_get_flow_started_after_milliseconds";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_flow_started_after_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_establishment_report_get_flow_started_after_milliseconds";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
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

void nw_establishment_report_enumerate_resolutions(nw_establishment_report_t report, nw_report_resolution_enumerator_t enumerate_block)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = enumerate_block;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_establishment_report_enumerate_resolutions";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v9, &type, &v24))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_resolutions";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v27 = "nw_establishment_report_enumerate_resolutions";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v9);
        goto LABEL_6;
      }

      if (v16)
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_resolutions";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_resolutions";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    isa = v3[9].isa;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_establishment_report_enumerate_resolutions_block_invoke;
    aBlock[3] = &unk_1E6A3CD30;
    v7 = v4;
    v23 = v7;
    if (isa)
    {
      _nw_array_apply(isa, aBlock);
      v7 = v23;
    }

    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_establishment_report_enumerate_resolutions";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v9, &type, &v24))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_resolutions";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null enumerate_block", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v24 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_resolutions";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null enumerate_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_resolutions";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v27 = "nw_establishment_report_enumerate_resolutions";
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_41;
  }

LABEL_6:
}

void nw_establishment_report_enumerate_protocol_l4s_state(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_establishment_report_enumerate_protocol_l4s_state";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v9, &type, &v24))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_protocol_l4s_state";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v27 = "nw_establishment_report_enumerate_protocol_l4s_state";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v9);
        goto LABEL_6;
      }

      if (v16)
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_protocol_l4s_state";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_protocol_l4s_state";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    v6 = v3[8];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_establishment_report_enumerate_protocol_l4s_state_block_invoke;
    aBlock[3] = &unk_1E6A3CD30;
    v7 = v4;
    v23 = v7;
    if (v6)
    {
      _nw_array_apply(v6, aBlock);
      v7 = v23;
    }

    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_establishment_report_enumerate_protocol_l4s_state";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v9, &type, &v24))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_protocol_l4s_state";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null enumerate_block", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v24 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_protocol_l4s_state";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null enumerate_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_protocol_l4s_state";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v27 = "nw_establishment_report_enumerate_protocol_l4s_state";
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_41;
  }

LABEL_6:
}

void nw_establishment_report_enumerate_protocol_quic_state(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_establishment_report_enumerate_protocol_quic_state";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v9, &type, &v24))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_protocol_quic_state";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v27 = "nw_establishment_report_enumerate_protocol_quic_state";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v9);
        goto LABEL_6;
      }

      if (v16)
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_protocol_quic_state";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_protocol_quic_state";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    v6 = v3[8];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_establishment_report_enumerate_protocol_quic_state_block_invoke;
    aBlock[3] = &unk_1E6A3CD30;
    v7 = v4;
    v23 = v7;
    if (v6)
    {
      _nw_array_apply(v6, aBlock);
      v7 = v23;
    }

    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_establishment_report_enumerate_protocol_quic_state";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v9, &type, &v24))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_protocol_quic_state";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null enumerate_block", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v24 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_protocol_quic_state";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null enumerate_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_protocol_quic_state";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v27 = "nw_establishment_report_enumerate_protocol_quic_state";
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_41;
  }

LABEL_6:
}

void nw_establishment_report_enumerate_proxied_next_hop_endpoints(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_establishment_report_enumerate_proxied_next_hop_endpoints";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v9, &type, &v24))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_proxied_next_hop_endpoints";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v27 = "nw_establishment_report_enumerate_proxied_next_hop_endpoints";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v9);
        goto LABEL_6;
      }

      if (v16)
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_proxied_next_hop_endpoints";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_establishment_report_enumerate_proxied_next_hop_endpoints";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    v6 = v3[6];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_establishment_report_enumerate_proxied_next_hop_endpoints_block_invoke;
    aBlock[3] = &unk_1E6A3CD30;
    v7 = v4;
    v23 = v7;
    if (v6)
    {
      _nw_array_apply(v6, aBlock);
      v7 = v23;
    }

    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_establishment_report_enumerate_proxied_next_hop_endpoints";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v9, &type, &v24))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_proxied_next_hop_endpoints";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null enumerate_block", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v24 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_proxied_next_hop_endpoints";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null enumerate_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v27 = "nw_establishment_report_enumerate_proxied_next_hop_endpoints";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v27 = "nw_establishment_report_enumerate_proxied_next_hop_endpoints";
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_41;
  }

LABEL_6:
}

Class nw_data_transfer_report_get_sent_transport_ecn_capable_packet_count(void *a1, unsigned int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_packet_count";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_packet_count";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null report", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v31 != 1)
    {
      v19 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_packet_count";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v25 = type;
    v26 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_packet_count";
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v26)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_packet_count";
      v35 = 2082;
      v36 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_44;
  }

  if (nw_data_transfer_report_get_state(v3) != nw_data_transfer_report_state_collected)
  {
    v21 = __nwlog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_packet_count";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (a2 == -1)
  {
    isa = v4[17].isa;
    isa_high = HIDWORD(v4[5].isa);
    if (isa_high < 2)
    {
      goto LABEL_14;
    }

    if (isa_high == 2)
    {
      v9 = 1;
    }

    else
    {
      v11 = 0;
      v12 = isa_high - 1;
      v13 = v4[52].isa;
      v14 = (isa_high - 1) & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        isa = (isa + *(v13 + 10));
        v11 += *(v13 + 55);
        v13 = (v13 + 720);
        v14 -= 2;
      }

      while (v14);
      isa = (isa + v11);
      if (v12 == ((isa_high - 1) & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_14;
      }

      v9 = v12 | 1;
    }

    v15 = isa_high - v9;
    v16 = (v4[52].isa + 360 * v9 - 280);
    do
    {
      isa = (isa + *v16);
      v16 += 45;
      --v15;
    }

    while (v15);
    goto LABEL_14;
  }

  if (HIDWORD(v4[5].isa) <= a2)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_packet_count";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_packet_count";
        _os_log_impl(&dword_181A37000, v19, v23, "%{public}s called with null (path_index < report->path_count)", buf, 0xCu);
      }

LABEL_56:

LABEL_57:
      if (v18)
      {
        free(v18);
      }

LABEL_59:
      isa = 0;
      goto LABEL_14;
    }

    if (v31 != 1)
    {
      v19 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_packet_count";
        _os_log_impl(&dword_181A37000, v19, v30, "%{public}s called with null (path_index < report->path_count), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v27 = type;
    v28 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v28)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_packet_count";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v28)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_transport_ecn_capable_packet_count";
      v35 = 2082;
      v36 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_44:

    free(backtrace_string);
    goto LABEL_57;
  }

  v5 = v4;
  if (HIDWORD(v4[5].isa) <= a2)
  {
    v6 = 0;
  }

  else if (a2)
  {
    v6 = v5[52].isa + 360 * a2 - 360;
  }

  else
  {
    v6 = &v5[7];
  }

  isa = *(v6 + 80);
LABEL_14:

  return isa;
}
id nw_connection_copy_failed_resolution_report(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__8362;
    v20 = __Block_byref_object_dispose__8363;
    v21 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_copy_failed_resolution_report_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v15 = buf;
    v14 = v1;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_copy_failed_resolution_report_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_failed_resolution_report";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_failed_resolution_report";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          *&buf[4] = "nw_connection_copy_failed_resolution_report";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_failed_resolution_report";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_failed_resolution_report";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
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

void nw_connection_fillout_failed_resolution_report_on_nw_queue(void *a1, void *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    nw_context_assert_queue(v3[3]);
    v5 = v4;
    if (v5)
    {
      v6 = v5;
      v7 = v5[29];

      if (v7 == 1)
      {
        v8 = objc_alloc_init(NWConcrete_nw_resolution_report);
        v56 = WORD2(v6) ^ WORD1(v6) ^ HIWORD(v6) ^ v6;
        v9 = nw_endpoint_handler_copy_endpoint(v6);
        v10 = v9;
        if (v9 && (v11 = v9, v12 = _nw_endpoint_get_type(v11), v11, v12 == 3))
        {
          v13 = 4;
          v14 = 3;
        }

        else
        {
          v13 = 2;
          v14 = 1;
        }

        event_milliseconds = nw_connection_get_event_milliseconds(v3, 2, v14, &v56, 0);
        v8->milliseconds = nw_connection_get_event_milliseconds(v3, 2, v13, &v56, 0) - event_milliseconds;
        v8->endpoint_count = nw_endpoint_handler_get_resolved_endpoint_count(v6);
        v8->source = nw_endpoint_handler_get_resolution_source(v6);
        v8->protocol = nw_endpoint_handler_get_resolution_protocol(v6);
        v24 = nw_endpoint_handler_copy_preferred_resolved_endpoint(v6);
        preferred_endpoint = v8->preferred_endpoint;
        v8->preferred_endpoint = v24;

        v26 = nw_endpoint_handler_copy_resolved_endpoints(v6);
        resolved_endpoints = v8->resolved_endpoints;
        v8->resolved_endpoints = v26;

        v55 = 0;
        nw_endpoint_handler_get_svcb_report(v6, 0, &v55, 0);
        *(v8 + 70) = *(v8 + 70) & 0xFE | v55;
        *buf = 0;
        nw_endpoint_handler_get_resolution_provider(v6, buf);
        v8->provider_name = *buf;
        v54 = 0;
        *type = 0;
        nw_endpoint_handler_get_extended_dns_error(v6, &v54, type);
        v8->extended_dns_error_code = v54;
        v8->extended_dns_error_extra_text = *type;
        v28 = v3[54];
        v3[54] = v8;
      }

      else
      {
        v15 = v6;
        v16 = v6[29];

        if (v16 == 3 && !v3[54])
        {
          v17 = nw_endpoint_handler_copy_endpoint(v15);
          v18 = v17;
          if (v17)
          {
            v19 = v17;
            dns_failure_reason = _nw_endpoint_get_dns_failure_reason(v19);

            if (dns_failure_reason)
            {
              v21 = objc_alloc_init(NWConcrete_nw_resolution_report);
              if (dns_failure_reason < 4)
              {
                v21->extended_dns_error_code = dns_failure_reason + 14;
              }

              v22 = v3[54];
              v3[54] = v21;
            }
          }
        }
      }

      goto LABEL_17;
    }

    v33 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_get_mode";
    v34 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v56) = 0;
    if (__nwlog_fault(v34, type, &v56))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v36 = type[0];
        if (os_log_type_enabled(v35, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null handler", buf, 0xCu);
        }

LABEL_51:

        goto LABEL_52;
      }

      if (v56 != 1)
      {
        v35 = __nwlog_obj();
        v44 = type[0];
        if (os_log_type_enabled(v35, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v35, v44, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_51;
      }

      backtrace_string = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v41 = type[0];
      v42 = os_log_type_enabled(v35, type[0]);
      if (!backtrace_string)
      {
        if (v42)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v35, v41, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_51;
      }

      if (v42)
      {
        *buf = 136446466;
        *&buf[4] = "nw_endpoint_handler_get_mode";
        v58 = 2082;
        v59 = backtrace_string;
        _os_log_impl(&dword_181A37000, v35, v41, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_52:
    if (v34)
    {
      free(v34);
    }

    v45 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_get_mode";
    v46 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v56) = 0;
    if (!__nwlog_fault(v46, type, &v56))
    {
      goto LABEL_70;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (os_log_type_enabled(v47, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_get_mode";
        _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v56 == 1)
    {
      v49 = __nw_create_backtrace_string();
      v47 = __nwlog_obj();
      v50 = type[0];
      v51 = os_log_type_enabled(v47, type[0]);
      if (v49)
      {
        if (v51)
        {
          *buf = 136446466;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          v58 = 2082;
          v59 = v49;
          _os_log_impl(&dword_181A37000, v47, v50, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v49);
        goto LABEL_70;
      }

      if (v51)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_get_mode";
        _os_log_impl(&dword_181A37000, v47, v50, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v47 = __nwlog_obj();
      v52 = type[0];
      if (os_log_type_enabled(v47, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_get_mode";
        _os_log_impl(&dword_181A37000, v47, v52, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_70:
    if (v46)
    {
      free(v46);
    }

    goto LABEL_17;
  }

  v29 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_fillout_failed_resolution_report_on_nw_queue";
  v30 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v56) = 0;
  if (__nwlog_fault(v30, type, &v56))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type[0];
      if (os_log_type_enabled(v31, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_fillout_failed_resolution_report_on_nw_queue";
        _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v56 == 1)
    {
      v37 = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      v38 = type[0];
      v39 = os_log_type_enabled(v31, type[0]);
      if (v37)
      {
        if (v39)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_fillout_failed_resolution_report_on_nw_queue";
          v58 = 2082;
          v59 = v37;
          _os_log_impl(&dword_181A37000, v31, v38, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_47;
      }

      if (v39)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_fillout_failed_resolution_report_on_nw_queue";
        _os_log_impl(&dword_181A37000, v31, v38, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v31 = __nwlog_obj();
      v43 = type[0];
      if (os_log_type_enabled(v31, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_fillout_failed_resolution_report_on_nw_queue";
        _os_log_impl(&dword_181A37000, v31, v43, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_47:
  if (v30)
  {
    free(v30);
  }

LABEL_17:
}

uint64_t nw_endpoint_handler_get_resolution_provider(void *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_get_mode";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (__nwlog_fault(v12, &type, &v36))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v36 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v20 = type;
        v21 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v21)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_handler_get_mode";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_39;
        }

        if (v21)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_39:
    if (v12)
    {
      free(v12);
    }

LABEL_41:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_get_resolution_provider";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (__nwlog_fault(v28, &type, &v36))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_resolution_provider";
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s Endpoint handler is not a resolver", buf, 0xCu);
        }
      }

      else if (v36 == 1)
      {
        v32 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        v33 = type;
        v34 = os_log_type_enabled(v29, type);
        if (v32)
        {
          if (v34)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_handler_get_resolution_provider";
            *&buf[12] = 2082;
            *&buf[14] = v32;
            _os_log_impl(&dword_181A37000, v29, v33, "%{public}s Endpoint handler is not a resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v32);
          if (!v28)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        if (v34)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_resolution_provider";
          _os_log_impl(&dword_181A37000, v29, v33, "%{public}s Endpoint handler is not a resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        v35 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_resolution_provider";
          _os_log_impl(&dword_181A37000, v29, v35, "%{public}s Endpoint handler is not a resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v28)
    {
LABEL_48:
      v10 = 0;
      goto LABEL_49;
    }

LABEL_47:
    free(v28);
    goto LABEL_48;
  }

  mode = v3->mode;

  if (mode != 1)
  {
    goto LABEL_41;
  }

  v6 = nw_endpoint_handler_copy_resolver(v4);
  v7 = v6[1];
  v8 = v7;
  if (!v7)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_resolver_get_resolution_provider";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (__nwlog_fault(v16, &type, &v36))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_resolver_get_resolution_provider";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null resolver", buf, 0xCu);
        }
      }

      else if (v36 == 1)
      {
        v23 = __nw_create_backtrace_string();
        v17 = __nwlog_obj();
        v24 = type;
        v25 = os_log_type_enabled(v17, type);
        if (v23)
        {
          if (v25)
          {
            *buf = 136446466;
            *&buf[4] = "nw_resolver_get_resolution_provider";
            *&buf[12] = 2082;
            *&buf[14] = v23;
            _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v23);
          goto LABEL_65;
        }

        if (v25)
        {
          *buf = 136446210;
          *&buf[4] = "nw_resolver_get_resolution_provider";
          _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v17 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_resolver_get_resolution_provider";
          _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_65:
    if (v16)
    {
      free(v16);
    }

    v10 = 0;
    goto LABEL_9;
  }

  if (a2 && !uuid_is_null(v7 + 256) && (v8[372] & 1) == 0)
  {
    v9 = *(v8 + 28);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __nw_resolver_get_resolution_provider_block_invoke;
    v39 = &unk_1E6A2C288;
    v40 = v8;
    v41 = a2;
    nw_path_enumerate_resolver_configs(v9, buf);
  }

  v10 = *(v8 + 69);
LABEL_9:

LABEL_49:
  return v10;
}

uint64_t nw_endpoint_handler_get_has_better_path(NWConcrete_nw_endpoint_handler *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_endpoint_handler_get_has_better_path";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v12, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v22 = "nw_endpoint_handler_get_has_better_path";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v19 == 1)
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
            v22 = "nw_endpoint_handler_get_has_better_path";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_endpoint_handler_get_has_better_path";
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
          v22 = "nw_endpoint_handler_get_has_better_path";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_26:
    if (v12)
    {
      free(v12);
    }

    v6 = 0;
    goto LABEL_9;
  }

  v5 = *(v3 + 284);
  v6 = (v5 >> 3) & 1;
  if ((v5 & 8) != 0 && a2)
  {
    v7 = v3;
    while (1)
    {
      parent_handler = v7->parent_handler;
      if (!parent_handler)
      {
        break;
      }

      v9 = parent_handler;

      v7 = v9;
      if ((*(v9 + 284) & 8) == 0)
      {

        v6 = 0;
        goto LABEL_9;
      }
    }

    v6 = 1;
  }

LABEL_9:

  return v6;
}

void nw_endpoint_handler_handle_failure(void *a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (v1[9])
    {
LABEL_3:
      if (*(v2 + 29) == 2)
      {
        v3 = v2[33];
        [v3 cancelWithHandler:v2 forced:0];
      }

      *(v2 + 30) = 4;
      goto LABEL_40;
    }

    v4 = *(v1 + 284);
    if ((v4 & 8) != 0)
    {
      if ((v4 & 0x20) != 0)
      {
        if (nw_endpoint_handler_get_logging_disabled(v1))
        {
          goto LABEL_39;
        }

        v27 = v4;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v5 = gconnectionLogObj;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v28 = v5;
          id_string = nw_endpoint_handler_get_id_string(v2);
          v30 = nw_endpoint_handler_dry_run_string(v2);
          v31 = nw_endpoint_handler_copy_endpoint(v2);
          logging_description = nw_endpoint_get_logging_description(v31);
          v33 = nw_endpoint_handler_state_string(v2);
          v34 = nw_endpoint_handler_mode_string(v2);
          v35 = nw_endpoint_handler_copy_current_path(v2);
          *buf = 136447746;
          v41 = "nw_endpoint_handler_handle_failure";
          v42 = 2082;
          v43 = id_string;
          v44 = 2082;
          v45 = v30;
          v46 = 2082;
          v47 = logging_description;
          v48 = 2082;
          v49 = v33;
          v50 = 2082;
          v51 = v34;
          v52 = 2114;
          v53 = v35;
          v5 = v28;
          _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] detected better path on parent handler, restarting evaluation", buf, 0x48u);

          v4 = v27;
        }

        goto LABEL_38;
      }

      if ((v4 & 0x40) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v5 = gconnectionLogObj;
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          goto LABEL_38;
        }

        if (*(v2 + 284))
        {
          v6 = "dry-run ";
        }

        else
        {
          v6 = "";
        }

        v7 = nw_endpoint_handler_copy_endpoint(v2);
        v8 = v7;
        if (v7)
        {
          v9 = _nw_endpoint_get_logging_description(v7);
        }

        else
        {
          v9 = "<NULL>";
        }

        v10 = *(v2 + 30);
        if (v10 > 5)
        {
          v11 = "unknown-state";
        }

        else
        {
          v11 = off_1E6A31048[v10];
        }

        v12 = v2;
        v13 = v12;
        v14 = *(v12 + 29);
        v36 = v11;
        v37 = v5;
        if (v14 > 2)
        {
          switch(v14)
          {
            case 3:
              v15 = v9;
              v16 = "proxy";
              goto LABEL_37;
            case 4:
              v15 = v9;
              v16 = "fallback";
              goto LABEL_37;
            case 5:
              v15 = v9;
              v16 = "transform";
              goto LABEL_37;
          }
        }

        else
        {
          switch(v14)
          {
            case 0:
              v15 = v9;
              v16 = "path";
              goto LABEL_37;
            case 1:
              v15 = v9;
              v16 = "resolver";
              goto LABEL_37;
            case 2:
              v15 = v9;
              v16 = nw_endpoint_flow_mode_string(v12[33]);
LABEL_37:

              v17 = v13;
              os_unfair_lock_lock(v13 + 28);
              v18 = v17[8];
              os_unfair_lock_unlock(v13 + 28);

              *buf = 136447746;
              v41 = "nw_endpoint_handler_handle_failure";
              v42 = 2082;
              v43 = v2 + 23;
              v44 = 2082;
              v45 = v6;
              v46 = 2082;
              v47 = v15;
              v48 = 2082;
              v5 = v37;
              v49 = v36;
              v50 = 2082;
              v51 = v16;
              v52 = 2114;
              v53 = v18;
              _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] detected better path on parent handler, restarting evaluation", buf, 0x48u);

LABEL_38:
              goto LABEL_39;
          }
        }

        v15 = v9;
        v16 = "unknown-mode";
        goto LABEL_37;
      }
    }

    else if (!nw_parameters_get_indefinite(v1[4]))
    {
      goto LABEL_3;
    }

LABEL_39:
    nw_endpoint_handler_reset_mode(v2, (v4 >> 3) & 1);
    goto LABEL_40;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v41 = "nw_endpoint_handler_handle_failure";
  v20 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (__nwlog_fault(v20, &type, &v38))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v41 = "nw_endpoint_handler_handle_failure";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v38 == 1)
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
          v41 = "nw_endpoint_handler_handle_failure";
          v42 = 2082;
          v43 = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_62;
      }

      if (v25)
      {
        *buf = 136446210;
        v41 = "nw_endpoint_handler_handle_failure";
        _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v41 = "nw_endpoint_handler_handle_failure";
        _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_62:
  if (v20)
  {
    free(v20);
  }

LABEL_40:
}

uint64_t nw_parameters_get_indefinite(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_indefinite(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_indefinite";
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
        v12 = "nw_parameters_get_indefinite";
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
            v12 = "nw_parameters_get_indefinite";
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
        v12 = "nw_parameters_get_indefinite";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_indefinite";
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

char *nw_path_copy_inactive_agent_uuids(void *a1, char a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = _nw_path_copy_inactive_agent_uuids(v3, a2);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_path_copy_inactive_agent_uuids";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v8, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_path_copy_inactive_agent_uuids";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v15 == 1)
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
          v18 = "nw_path_copy_inactive_agent_uuids";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_path_copy_inactive_agent_uuids";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_path_copy_inactive_agent_uuids";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_3:

  return v5;
}

char *_nw_path_copy_inactive_agent_uuids(char *result, char a2)
{
  if (result)
  {
    v3 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v4 = result;
    v5 = result;
    swift_beginAccess();
    sub_182263EEC(&v4[v3], a2, &v6);
    swift_endAccess();

    return v6;
  }

  return result;
}

uint64_t sub_181C72A14(char a1)
{
  v2 = *(v1 + 264);
  if (v2)
  {
    v4 = 1 << *(v2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 64);
    v7 = (v4 + 63) >> 6;

    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (v6)
    {
LABEL_10:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = *(*(v2 + 56) + ((v9 << 9) | (8 * v12)));
      v14 = *(v13 + 80);
      if ((v14 & 2) == 0 && ((v14 & 0x10) != 0 || (a1 & 1) == 0))
      {
        v17 = *(v13 + 32);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_181C6CA4C(0, *(v10 + 2) + 1, 1, v10);
        }

        v16 = *(v10 + 2);
        v15 = *(v10 + 3);
        if (v16 >= v15 >> 1)
        {
          v10 = sub_181C6CA4C((v15 > 1), v16 + 1, 1, v10);
        }

        *(v10 + 2) = v16 + 1;
        *&v10[16 * v16 + 32] = v17;
      }
    }

    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        return v10;
      }

      v6 = *(v2 + 64 + 8 * v11);
      ++v9;
      if (v6)
      {
        v9 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t nw_path_trigger_inactive_cellular_agent_if_necessary(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_trigger_inactive_cellular_agent_if_necessary(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_trigger_inactive_cellular_agent_if_necessary";
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
        v16 = "nw_path_trigger_inactive_cellular_agent_if_necessary";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_trigger_inactive_cellular_agent_if_necessary";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_trigger_inactive_cellular_agent_if_necessary";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_trigger_inactive_cellular_agent_if_necessary";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

uint64_t _nw_path_trigger_inactive_cellular_agent_if_necessary(char *a1)
{
  if (a1)
  {
    v1 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v3 = a1;
    swift_beginAccess();
    memcpy(__dst, &a1[v1], 0x17AuLL);
    memcpy(__src, &a1[v1], sizeof(__src));
    sub_181A3DF5C(__dst, v8);
    v4 = sub_181E0F27C();
    memcpy(v8, __src, 0x17AuLL);
    sub_181A3DFB8(v8);
    swift_endAccess();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void nw_protocol_implementation_read(NWConcrete_nw_protocol_instance *a1, nw_protocol *a2)
{
  v110 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    v68 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_implementation_read";
    v69 = _os_log_send_and_compose_impl();

    v103[0] = 16;
    v97[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v69, v103, v97))
    {
      if (v103[0] == 17)
      {
        v70 = __nwlog_obj();
        v71 = v103[0];
        if (os_log_type_enabled(v70, v103[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_read";
          _os_log_impl(&dword_181A37000, v70, v71, "%{public}s called with null output_handler", buf, 0xCu);
        }
      }

      else if (v97[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v70 = __nwlog_obj();
        v73 = v103[0];
        v74 = os_log_type_enabled(v70, v103[0]);
        if (backtrace_string)
        {
          if (v74)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_implementation_read";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v70, v73, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_178;
        }

        if (v74)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_read";
          _os_log_impl(&dword_181A37000, v70, v73, "%{public}s called with null output_handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v70 = __nwlog_obj();
        v75 = v103[0];
        if (os_log_type_enabled(v70, v103[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_read";
          _os_log_impl(&dword_181A37000, v70, v75, "%{public}s called with null output_handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_178:
    if (v69)
    {
      free(v69);
    }

    goto LABEL_161;
  }

  if ((v3->flow_in_connected & 0x10000000) != 0)
  {
    goto LABEL_161;
  }

  v91 = 0;
  if (v3->flow_registration && !nw_protocol_implementation_lookup_path_by_protocol(v3, a2, &v91) && (SBYTE5(v4->flow_in_connected) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "nw_protocol_implementation_read";
      *&buf[12] = 2082;
      *&buf[14] = &v4->flow_in_connected + 7;
      *&buf[22] = 2080;
      v100 = " ";
      LOWORD(v101) = 2048;
      *(&v101 + 2) = a2;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCould not find path state for protocol %p", buf, 0x2Au);
    }
  }

  v6 = BYTE4(v4->flow_in_connected);
  while (1)
  {
    BYTE4(v4->flow_in_connected) = v6 & 0xDF;
    BYTE3(v4->flow_in_connected) |= 0x10u;
    var10 = v4->parent_definition->extended_state->var10;
    if (var10)
    {
      var10(v4);
    }

    v8 = v91;
    v9 = v4;
    if (v4->parent_definition->extended_state->var7)
    {
      v92[0] = 0;
      v92[1] = v92;
      handle = a2->handle;
      v11 = a2;
      if (handle == &nw_protocol_ref_counted_handle || handle == &nw_protocol_ref_counted_additional_handle && (v11 = *a2[1].flow_id) != 0)
      {
        callbacks = v11[1].callbacks;
        if (callbacks)
        {
          v11[1].callbacks = (&callbacks->add_input_handler + 1);
        }

        *v97 = a2;
        v12 = v98 | 1;
      }

      else
      {
        *v97 = a2;
        v12 = v98 & 0xFE;
      }

      v98 = v12;
      v14 = *&v4[-1].log_str[33];
      p_paths_log_id_num = &v4[-1].paths_log_id_num;
      if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (p_paths_log_id_num = *&v4[-1].log_str[57]) != 0)
      {
        v17 = *(p_paths_log_id_num + 11);
        if (v17)
        {
          *(p_paths_log_id_num + 11) = v17 + 1;
        }

        v95 = &v4[-1].paths_log_id_num;
        v16 = v96 | 1;
      }

      else
      {
        v95 = &v4[-1].paths_log_id_num;
        v16 = v96 & 0xFE;
      }

      v96 = v16;
      v18 = a2->callbacks;
      if (v18)
      {
        get_input_frames = v18->get_input_frames;
        if (get_input_frames)
        {
          v20 = get_input_frames(a2, &v4[-1].paths_log_id_num, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v92);
          if ((v16 & 1) == 0)
          {
LABEL_31:
            v21 = v20 == 0;
            if (v12)
            {
              nw::release_if_needed<nw_protocol *>(v97);
            }

            if (v20)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = ___ZL45nw_protocol_implementation_get_input_internalP31NWConcrete_nw_protocol_instanceP11nw_protocolmjjj_block_invoke;
              v100 = &unk_1E6A2CFF8;
              *(&v101 + 1) = v92;
              *&v101 = v9;
              v102 = v8;
              v22 = v92[0];
              do
              {
                if (!v22)
                {
                  break;
                }

                v23 = *(v22 + 32);
                v24 = (*&buf[16])(buf);
                v22 = v23;
              }

              while ((v24 & 1) != 0);
            }

            goto LABEL_38;
          }

LABEL_30:
          nw::release_if_needed<nw_protocol *>(&v95);
          goto LABEL_31;
        }
      }

      v33 = __nwlog_obj();
      identifier = a2->identifier;
      if (!identifier)
      {
        identifier = "invalid";
      }

      *v103 = 136446722;
      *&v103[4] = "__nw_protocol_get_input_frames";
      v104 = 2082;
      v105 = identifier;
      v106 = 2048;
      v107 = a2;
      log = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v93 = 0;
      v35 = log;
      if (!__nwlog_fault(log, &type, &v93))
      {
LABEL_134:
        if (v35)
        {
          free(v35);
        }

        v20 = 0;
        if ((v16 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v78 = type;
        if (os_log_type_enabled(v36, type))
        {
          v37 = a2->identifier;
          if (!v37)
          {
            v37 = "invalid";
          }

          *v103 = 136446722;
          *&v103[4] = "__nw_protocol_get_input_frames";
          v104 = 2082;
          v105 = v37;
          v106 = 2048;
          v107 = a2;
          _os_log_impl(&dword_181A37000, v36, v78, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback", v103, 0x20u);
        }
      }

      else
      {
        if (v93 == 1)
        {
          v45 = __nw_create_backtrace_string();
          v80 = __nwlog_obj();
          v76 = type;
          v46 = os_log_type_enabled(v80, type);
          if (v45)
          {
            if (v46)
            {
              v47 = a2->identifier;
              if (!v47)
              {
                v47 = "invalid";
              }

              *v103 = 136446978;
              *&v103[4] = "__nw_protocol_get_input_frames";
              v104 = 2082;
              v105 = v47;
              v106 = 2048;
              v107 = a2;
              v108 = 2082;
              v109 = v45;
              _os_log_impl(&dword_181A37000, v80, v76, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, dumping backtrace:%{public}s", v103, 0x2Au);
            }

            free(v45);
          }

          else
          {
            if (v46)
            {
              v64 = a2->identifier;
              if (!v64)
              {
                v64 = "invalid";
              }

              *v103 = 136446722;
              *&v103[4] = "__nw_protocol_get_input_frames";
              v104 = 2082;
              v105 = v64;
              v106 = 2048;
              v107 = a2;
              _os_log_impl(&dword_181A37000, v80, v76, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, no backtrace", v103, 0x20u);
            }
          }

          goto LABEL_133;
        }

        v36 = __nwlog_obj();
        v82 = type;
        if (os_log_type_enabled(v36, type))
        {
          v58 = a2->identifier;
          if (!v58)
          {
            v58 = "invalid";
          }

          *v103 = 136446722;
          *&v103[4] = "__nw_protocol_get_input_frames";
          v104 = 2082;
          v105 = v58;
          v106 = 2048;
          v107 = a2;
          _os_log_impl(&dword_181A37000, v36, v82, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, backtrace limit exceeded", v103, 0x20u);
        }
      }

LABEL_133:
      v35 = log;
      goto LABEL_134;
    }

    v41 = __nwlog_obj();
    *v103 = 136446210;
    *&v103[4] = "nw_protocol_implementation_get_input_internal";
    v42 = _os_log_send_and_compose_impl();

    v97[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v95) = 0;
    if (__nwlog_fault(v42, v97, &v95))
    {
      if (v97[0] == OS_LOG_TYPE_FAULT)
      {
        v43 = __nwlog_obj();
        v44 = v97[0];
        if (os_log_type_enabled(v43, v97[0]))
        {
          *v103 = 136446210;
          *&v103[4] = "nw_protocol_implementation_get_input_internal";
          _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null instance->parent_definition->extended_state->handle_inbound", v103, 0xCu);
        }
      }

      else
      {
        if (v95 != 1)
        {
          v62 = __nwlog_obj();
          v63 = v97[0];
          if (os_log_type_enabled(v62, v97[0]))
          {
            *v103 = 136446210;
            *&v103[4] = "nw_protocol_implementation_get_input_internal";
            _os_log_impl(&dword_181A37000, v62, v63, "%{public}s called with null instance->parent_definition->extended_state->handle_inbound, backtrace limit exceeded", v103, 0xCu);
          }

          goto LABEL_151;
        }

        v55 = __nw_create_backtrace_string();
        v43 = __nwlog_obj();
        v56 = v97[0];
        v57 = os_log_type_enabled(v43, v97[0]);
        if (v55)
        {
          if (v57)
          {
            *v103 = 136446466;
            *&v103[4] = "nw_protocol_implementation_get_input_internal";
            v104 = 2082;
            v105 = v55;
            _os_log_impl(&dword_181A37000, v43, v56, "%{public}s called with null instance->parent_definition->extended_state->handle_inbound, dumping backtrace:%{public}s", v103, 0x16u);
          }

          free(v55);
          goto LABEL_151;
        }

        if (v57)
        {
          *v103 = 136446210;
          *&v103[4] = "nw_protocol_implementation_get_input_internal";
          _os_log_impl(&dword_181A37000, v43, v56, "%{public}s called with null instance->parent_definition->extended_state->handle_inbound, no backtrace", v103, 0xCu);
        }
      }
    }

LABEL_151:
    if (v42)
    {
      free(v42);
    }

    v21 = 1;
LABEL_38:

    nw_protocol_instance_flush_batched_input_internal(v9);
    if (!v4->pending_inbound_frames.tqh_last)
    {
      goto LABEL_54;
    }

    if ((SBYTE5(v4->flow_in_connected) & 0x80000000) == 0 && gLogDatapath == 1)
    {
      v52 = __nwlog_obj();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_implementation_read";
        *&buf[12] = 2082;
        *&buf[14] = &v4->flow_in_connected + 7;
        *&buf[22] = 2080;
        v100 = " ";
        _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFinalizing pending outbound frames (one-off)", buf, 0x20u);
      }
    }

    v25 = *&v4[-1].log_str[25];
    if (v25)
    {
      v26 = *(v25 + 5);
      v27 = *&v4[-1].log_str[25];
      if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v27 = *(v25 + 8)) != 0)
      {
        v29 = *(v27 + 88);
        if (v29)
        {
          *(v27 + 88) = v29 + 1;
        }

        *v103 = v25;
        v28 = v103[8] | 1;
      }

      else
      {
        *v103 = *&v4[-1].log_str[25];
        v28 = v103[8] & 0xFE;
      }

      v103[8] = v28;
      v30 = *(v25 + 3);
      if (v30)
      {
        v31 = *(v30 + 96);
        if (v31)
        {
          v31(v25, &v4->pending_inbound_frames.tqh_last);
LABEL_52:
          if (v28)
          {
            nw::release_if_needed<nw_protocol *>(v103);
          }

          goto LABEL_54;
        }
      }

      loga = __nwlog_obj();
      v38 = *(v25 + 2);
      if (!v38)
      {
        v38 = "invalid";
      }

      *buf = 136446722;
      *&buf[4] = "__nw_protocol_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = v38;
      *&buf[22] = 2048;
      v100 = v25;
      v39 = _os_log_send_and_compose_impl();

      v97[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v95) = 0;
      if (__nwlog_fault(v39, v97, &v95))
      {
        if (v97[0] == OS_LOG_TYPE_FAULT)
        {
          logb = __nwlog_obj();
          v79 = v97[0];
          if (os_log_type_enabled(logb, v97[0]))
          {
            v40 = *(v25 + 2);
            if (!v40)
            {
              v40 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_finalize_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v40;
            *&buf[22] = 2048;
            v100 = v25;
            _os_log_impl(&dword_181A37000, logb, v79, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback", buf, 0x20u);
          }
        }

        else
        {
          if (v95 == 1)
          {
            logc = __nw_create_backtrace_string();
            v81 = __nwlog_obj();
            v77 = v97[0];
            v53 = os_log_type_enabled(v81, v97[0]);
            if (logc)
            {
              if (v53)
              {
                v54 = *(v25 + 2);
                if (!v54)
                {
                  v54 = "invalid";
                }

                *buf = 136446978;
                *&buf[4] = "__nw_protocol_finalize_output_frames";
                *&buf[12] = 2082;
                *&buf[14] = v54;
                *&buf[22] = 2048;
                v100 = v25;
                LOWORD(v101) = 2082;
                *(&v101 + 2) = logc;
                _os_log_impl(&dword_181A37000, v81, v77, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(logc);
            }

            else
            {
              if (v53)
              {
                v67 = *(v25 + 2);
                if (!v67)
                {
                  v67 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_finalize_output_frames";
                *&buf[12] = 2082;
                *&buf[14] = v67;
                *&buf[22] = 2048;
                v100 = v25;
                _os_log_impl(&dword_181A37000, v81, v77, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace", buf, 0x20u);
              }
            }

            goto LABEL_146;
          }

          logb = __nwlog_obj();
          v83 = v97[0];
          if (os_log_type_enabled(logb, v97[0]))
          {
            v61 = *(v25 + 2);
            if (!v61)
            {
              v61 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_finalize_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v61;
            *&buf[22] = 2048;
            v100 = v25;
            _os_log_impl(&dword_181A37000, logb, v83, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_146:
      if (v39)
      {
        free(v39);
      }

      goto LABEL_52;
    }

    v48 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_finalize_output_frames";
    v49 = _os_log_send_and_compose_impl();

    v103[0] = 16;
    v97[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v49, v103, v97))
    {
      if (v103[0] == 17)
      {
        v50 = __nwlog_obj();
        v51 = v103[0];
        if (os_log_type_enabled(v50, v103[0]))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else
      {
        if (v97[0] != OS_LOG_TYPE_INFO)
        {
          v65 = __nwlog_obj();
          v66 = v103[0];
          if (os_log_type_enabled(v65, v103[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_finalize_output_frames";
            _os_log_impl(&dword_181A37000, v65, v66, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_157;
        }

        v59 = __nw_create_backtrace_string();
        v50 = __nwlog_obj();
        logd = v103[0];
        v60 = os_log_type_enabled(v50, v103[0]);
        if (v59)
        {
          if (v60)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_finalize_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v59;
            _os_log_impl(&dword_181A37000, v50, logd, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v59);
          goto LABEL_157;
        }

        if (v60)
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v50, logd, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }
    }

LABEL_157:
    if (v49)
    {
      free(v49);
    }

LABEL_54:
    flow_registration = v4->flow_registration;
    if (flow_registration)
    {
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = ___ZL31nw_protocol_implementation_readP31NWConcrete_nw_protocol_instanceP11nw_protocol_block_invoke;
      v89[3] = &unk_1E6A3CDF8;
      v90 = v9;
      nw_hash_table_apply(flow_registration, v89);
    }

    v6 = BYTE4(v4->flow_in_connected);
    if ((v6 & 0x40) != 0 || ((v21 | ((v6 & 0x20) >> 5)) & 1) == 0)
    {
      break;
    }

    if (v21)
    {
      goto LABEL_160;
    }
  }

  BYTE4(v4->flow_in_connected) = v6 | 0x40;
LABEL_160:
  nw_protocol_implementation_deliver_output_available(v9);
LABEL_161:
}

uint64_t nw_protocol_instance_access_flow_state(void *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_instance_access_flow_state";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v14, &type, &v26))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_instance_access_flow_state";
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_44;
    }

    if (v26 != 1)
    {
      v15 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_instance_access_flow_state";
        _os_log_impl(&dword_181A37000, v15, v24, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v29 = "nw_protocol_instance_access_flow_state";
        _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_44;
    }

    if (v21)
    {
      *buf = 136446466;
      v29 = "nw_protocol_instance_access_flow_state";
      v30 = 2082;
      v31 = backtrace_string;
      _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_32;
  }

  if (!v6)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_instance_access_flow_state";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v14, &type, &v26))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_instance_access_flow_state";
        _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null access_block", buf, 0xCu);
      }

LABEL_44:

LABEL_45:
      if (v14)
      {
        free(v14);
      }

      goto LABEL_11;
    }

    if (v26 != 1)
    {
      v15 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_instance_access_flow_state";
        _os_log_impl(&dword_181A37000, v15, v25, "%{public}s called with null access_block, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v29 = "nw_protocol_instance_access_flow_state";
        _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null access_block, no backtrace", buf, 0xCu);
      }

      goto LABEL_44;
    }

    if (v23)
    {
      *buf = 136446466;
      v29 = "nw_protocol_instance_access_flow_state";
      v30 = 2082;
      v31 = backtrace_string;
      _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null access_block, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_32:

    free(backtrace_string);
    goto LABEL_45;
  }

  if (*(*(v5 + 1) + 64) != 3 || (v8 = *(v5 + 29)) == 0)
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  node = nw_hash_table_get_node(v8, a2, 8);
  if (!node)
  {
    if ((v5[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136446978;
        v29 = "nw_protocol_instance_access_flow_state";
        v30 = 2082;
        v31 = v5 + 415;
        v32 = 2080;
        v33 = " ";
        v34 = 2048;
        v35 = a2;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sFlow %llx not present, not getting state", buf, 0x2Au);
      }
    }

    goto LABEL_11;
  }

  v10 = v7[2](v7, *(node + 32));
LABEL_12:

  return v10;
}

uint64_t nw_protocol_instance_access_state(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_instance_access_state";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_instance_access_state";
        v9 = "%{public}s called with null instance";
LABEL_34:
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
          v18 = "nw_protocol_instance_access_state";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v6)
        {
          return 0;
        }

LABEL_37:
        free(v6);
        return 0;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "nw_protocol_instance_access_state";
        v9 = "%{public}s called with null instance, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_instance_access_state";
        v9 = "%{public}s called with null instance, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (!a2)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_instance_access_state";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_instance_access_state";
        v9 = "%{public}s called with null access_block";
        goto LABEL_34;
      }
    }

    else
    {
      if (v15 == 1)
      {
        v13 = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v8 = type;
        v14 = os_log_type_enabled(v7, type);
        if (v13)
        {
          if (v14)
          {
            *buf = 136446466;
            v18 = "nw_protocol_instance_access_state";
            v19 = 2082;
            v20 = v13;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null access_block, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v13);
          if (!v6)
          {
            return 0;
          }

          goto LABEL_37;
        }

        if (!v14)
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v18 = "nw_protocol_instance_access_state";
        v9 = "%{public}s called with null access_block, no backtrace";
        goto LABEL_34;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_instance_access_state";
        v9 = "%{public}s called with null access_block, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

    goto LABEL_35;
  }

  v2 = *(a1 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 16);

  return v3(a2, v2);
}

uint64_t nw_protocol_instance_get_stats_region(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_instance_get_stats_region";
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
          v20 = "nw_protocol_instance_get_stats_region";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
        }
      }

      else if (v17 == 1)
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
            v20 = "nw_protocol_instance_get_stats_region";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (v14)
        {
          *buf = 136446210;
          v20 = "nw_protocol_instance_get_stats_region";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null instance, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v10 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v20 = "nw_protocol_instance_get_stats_region";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_24:
    if (v9)
    {
      free(v9);
    }

    goto LABEL_26;
  }

  if (a2)
  {
    v5 = nw_protocol_implementation_lookup_path(v3, a2, 0);
    if (!v5)
    {
      goto LABEL_26;
    }

    wakeup = *(v5 + 24);
    if (!wakeup)
    {
      goto LABEL_26;
    }
  }

  else
  {
    wakeup = v3->wakeup;
    if (!wakeup)
    {
LABEL_26:
      stats_region = 0;
      goto LABEL_27;
    }
  }

  stats_region = nw_path_flow_registration_get_stats_region(wakeup, *&v4[-1].log_str[9]);
LABEL_27:

  return stats_region;
}

uint64_t nw_protocol_udp_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v161 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a1;
    handle = a1->handle;
    v8 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v9 = 1;
LABEL_11:
      v11 = a1;
      if (handle != &nw_protocol_ref_counted_handle)
      {
        if (handle != &nw_protocol_ref_counted_additional_handle)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          v154 = "nw_protocol_udp_get_input_frames";
          v12 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v149) = 0;
          if (!__nwlog_fault(v12, type, &v149))
          {
            goto LABEL_211;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v13 = gLogObj;
            v14 = type[0];
            if (!os_log_type_enabled(gLogObj, type[0]))
            {
              goto LABEL_211;
            }

            *buf = 136446210;
            v154 = "nw_protocol_udp_get_input_frames";
            v15 = "%{public}s called with null udp";
          }

          else if (v149 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v13 = gLogObj;
            v14 = type[0];
            v111 = os_log_type_enabled(gLogObj, type[0]);
            if (backtrace_string)
            {
              if (v111)
              {
                *buf = 136446466;
                v154 = "nw_protocol_udp_get_input_frames";
                v155 = 2082;
                v156 = backtrace_string;
                _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null udp, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
LABEL_211:
              if (v12)
              {
                free(v12);
              }

              v109 = 0;
              if (v9)
              {
                return v109;
              }

              goto LABEL_214;
            }

            if (!v111)
            {
              goto LABEL_211;
            }

            *buf = 136446210;
            v154 = "nw_protocol_udp_get_input_frames";
            v15 = "%{public}s called with null udp, no backtrace";
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v13 = gLogObj;
            v14 = type[0];
            if (!os_log_type_enabled(gLogObj, type[0]))
            {
              goto LABEL_211;
            }

            *buf = 136446210;
            v154 = "nw_protocol_udp_get_input_frames";
            v15 = "%{public}s called with null udp, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
          goto LABEL_211;
        }

        v11 = *a1[1].flow_id;
      }

      v133 = v9;
      if (a3 >= 0xFFFFFFF8)
      {
        v16 = -1;
      }

      else
      {
        v16 = a3 + 8;
      }

      v17 = a4 + 8;
      if (a4 >= 0xFFFFFFF8)
      {
        v17 = -1;
      }

      v134 = v17;
      v135 = v16;
      v149 = 0;
      v150 = &v149;
      *type = 0;
      v146 = type;
      v147 = 0x2000000000;
      v148 = 0;
      while (1)
      {
        output_handler = v6->output_handler;
        if (output_handler)
        {
          v19 = output_handler->handle;
          v20 = v6->output_handler;
          if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v20 = *output_handler[1].flow_id) != 0)
          {
            callbacks = v20[1].callbacks;
            v21 = 0;
            if (callbacks)
            {
              v20[1].callbacks = (&callbacks->add_input_handler + 1);
            }
          }

          else
          {
            v21 = 1;
          }

          v23 = v6->handle;
          v24 = v6;
          if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v24 = *v6[1].flow_id) != 0)
          {
            v27 = v24[1].callbacks;
            if (v27)
            {
              v25 = 0;
              v24[1].callbacks = (&v27->add_input_handler + 1);
              v26 = output_handler->callbacks;
              if (!v26)
              {
LABEL_122:
                __nwlog_obj();
                name = output_handler->identifier->name;
                if (!name)
                {
                  name = "invalid";
                }

                *buf = 136446722;
                v154 = "__nw_protocol_get_input_frames";
                v155 = 2082;
                v156 = name;
                v157 = 2048;
                v158 = output_handler;
                v72 = _os_log_send_and_compose_impl();
                v152 = OS_LOG_TYPE_ERROR;
                v151 = 0;
                if (__nwlog_fault(v72, &v152, &v151))
                {
                  if (v152 != OS_LOG_TYPE_FAULT)
                  {
                    if (v151 == 1)
                    {
                      v78 = __nw_create_backtrace_string();
                      loga = __nwlog_obj();
                      v125 = v152;
                      v79 = os_log_type_enabled(loga, v152);
                      if (v78)
                      {
                        if (v79)
                        {
                          v80 = output_handler->identifier->name;
                          if (!v80)
                          {
                            v80 = "invalid";
                          }

                          *buf = 136446978;
                          v154 = "__nw_protocol_get_input_frames";
                          v155 = 2082;
                          v156 = v80;
                          v157 = 2048;
                          v158 = output_handler;
                          v159 = 2082;
                          v160 = v78;
                          _os_log_impl(&dword_181A37000, loga, v125, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
                        }

                        free(v78);
                        goto LABEL_161;
                      }

                      if (!v79)
                      {
                        goto LABEL_161;
                      }

                      v93 = output_handler->identifier->name;
                      if (!v93)
                      {
                        v93 = "invalid";
                      }

                      *buf = 136446722;
                      v154 = "__nw_protocol_get_input_frames";
                      v155 = 2082;
                      v156 = v93;
                      v157 = 2048;
                      v158 = output_handler;
                      v75 = loga;
                      v76 = v125;
                      v77 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, no backtrace";
                    }

                    else
                    {
                      v88 = __nwlog_obj();
                      logc = v152;
                      if (!os_log_type_enabled(v88, v152))
                      {
                        goto LABEL_161;
                      }

                      v89 = output_handler->identifier->name;
                      if (!v89)
                      {
                        v89 = "invalid";
                      }

                      *buf = 136446722;
                      v154 = "__nw_protocol_get_input_frames";
                      v155 = 2082;
                      v156 = v89;
                      v157 = 2048;
                      v158 = output_handler;
                      v75 = v88;
                      v76 = logc;
                      v77 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, backtrace limit exceeded";
                    }

LABEL_160:
                    _os_log_impl(&dword_181A37000, v75, v76, v77, buf, 0x20u);
                    goto LABEL_161;
                  }

                  v73 = __nwlog_obj();
                  log = v152;
                  if (os_log_type_enabled(v73, v152))
                  {
                    v74 = output_handler->identifier->name;
                    if (!v74)
                    {
                      v74 = "invalid";
                    }

                    *buf = 136446722;
                    v154 = "__nw_protocol_get_input_frames";
                    v155 = 2082;
                    v156 = v74;
                    v157 = 2048;
                    v158 = output_handler;
                    v75 = v73;
                    v76 = log;
                    v77 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback";
                    goto LABEL_160;
                  }
                }

LABEL_161:
                if (v72)
                {
                  free(v72);
                }

                v29 = 0;
                if (v25)
                {
LABEL_53:
                  if ((v21 & 1) == 0 && ((v36 = output_handler->handle, v36 == &nw_protocol_ref_counted_handle) || v36 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0) && (v37 = output_handler[1].callbacks) != 0 && (v38 = (v37 - 1), (output_handler[1].callbacks = v38) == 0))
                  {
                    v46 = *output_handler[1].flow_id;
                    if (v46)
                    {
                      *output_handler[1].flow_id = 0;
                      v46[2](v46);
                      _Block_release(v46);
                    }

                    if (output_handler[1].flow_id[8])
                    {
                      v47 = *output_handler[1].flow_id;
                      if (v47)
                      {
                        _Block_release(v47);
                      }
                    }

                    free(output_handler);
                    output_handler_context_high = HIWORD(v11[2].output_handler_context);
                    if ((output_handler_context_high & 0x200) == 0)
                    {
                      goto LABEL_114;
                    }
                  }

                  else
                  {
                    output_handler_context_high = HIWORD(v11[2].output_handler_context);
                    if ((output_handler_context_high & 0x200) == 0)
                    {
                      goto LABEL_114;
                    }
                  }

                  goto LABEL_60;
                }

LABEL_42:
                v30 = v6->handle;
                v31 = v6;
                if (v30 == &nw_protocol_ref_counted_handle || v30 == &nw_protocol_ref_counted_additional_handle && (v31 = *v6[1].flow_id) != 0)
                {
                  v32 = v31[1].callbacks;
                  if (v32)
                  {
                    v33 = (v32 - 1);
                    v31[1].callbacks = v33;
                    if (!v33)
                    {
                      v34 = *v31[1].flow_id;
                      if (v34)
                      {
                        *v31[1].flow_id = 0;
                        v34[2](v34);
                        _Block_release(v34);
                      }

                      if (v31[1].flow_id[8])
                      {
                        v35 = *v31[1].flow_id;
                        if (v35)
                        {
                          _Block_release(v35);
                        }
                      }

                      free(v31);
                    }
                  }
                }

                goto LABEL_53;
              }
            }

            else
            {
              v25 = 0;
              v26 = output_handler->callbacks;
              if (!v26)
              {
                goto LABEL_122;
              }
            }
          }

          else
          {
            v25 = 1;
            v26 = output_handler->callbacks;
            if (!v26)
            {
              goto LABEL_122;
            }
          }

          get_input_frames = v26->get_input_frames;
          if (!get_input_frames)
          {
            goto LABEL_122;
          }

          v29 = get_input_frames(output_handler, v6, v135, v134, a5, &v149) != 0;
          if (v25)
          {
            goto LABEL_53;
          }

          goto LABEL_42;
        }

        __nwlog_obj();
        *buf = 136446210;
        v154 = "__nw_protocol_get_input_frames";
        v97 = _os_log_send_and_compose_impl();
        v152 = OS_LOG_TYPE_ERROR;
        v151 = 0;
        if (__nwlog_fault(v97, &v152, &v151))
        {
          if (v152 == OS_LOG_TYPE_FAULT)
          {
            v98 = __nwlog_obj();
            v99 = v152;
            if (!os_log_type_enabled(v98, v152))
            {
              goto LABEL_190;
            }

            *buf = 136446210;
            v154 = "__nw_protocol_get_input_frames";
            v100 = v98;
            v101 = v99;
            v102 = "%{public}s called with null protocol";
LABEL_189:
            _os_log_impl(&dword_181A37000, v100, v101, v102, buf, 0xCu);
            goto LABEL_190;
          }

          if (v151 != 1)
          {
            v107 = __nwlog_obj();
            v108 = v152;
            if (!os_log_type_enabled(v107, v152))
            {
              goto LABEL_190;
            }

            *buf = 136446210;
            v154 = "__nw_protocol_get_input_frames";
            v100 = v107;
            v101 = v108;
            v102 = "%{public}s called with null protocol, backtrace limit exceeded";
            goto LABEL_189;
          }

          v103 = __nw_create_backtrace_string();
          v104 = __nwlog_obj();
          v105 = v152;
          v106 = os_log_type_enabled(v104, v152);
          if (!v103)
          {
            if (!v106)
            {
              goto LABEL_190;
            }

            *buf = 136446210;
            v154 = "__nw_protocol_get_input_frames";
            v100 = v104;
            v101 = v105;
            v102 = "%{public}s called with null protocol, no backtrace";
            goto LABEL_189;
          }

          if (v106)
          {
            *buf = 136446466;
            v154 = "__nw_protocol_get_input_frames";
            v155 = 2082;
            v156 = v103;
            _os_log_impl(&dword_181A37000, v104, v105, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v103);
        }

LABEL_190:
        if (v97)
        {
          free(v97);
        }

        v29 = 0;
        output_handler_context_high = HIWORD(v11[2].output_handler_context);
        if ((output_handler_context_high & 0x200) == 0)
        {
          goto LABEL_114;
        }

LABEL_60:
        default_input_handler = v11->default_input_handler;
        if (!default_input_handler)
        {
          goto LABEL_114;
        }

        v41 = default_input_handler->callbacks;
        if (!v41 || !v41->error)
        {
          goto LABEL_114;
        }

        HIWORD(v11[2].output_handler_context) = output_handler_context_high & 0xFDFF;
        v42 = default_input_handler->handle;
        v43 = default_input_handler;
        if (v42 == &nw_protocol_ref_counted_handle || v42 == &nw_protocol_ref_counted_additional_handle && (v43 = *default_input_handler[1].flow_id) != 0)
        {
          v45 = v43[1].callbacks;
          v44 = 0;
          if (v45)
          {
            v43[1].callbacks = (&v45->add_input_handler + 1);
          }
        }

        else
        {
          v44 = 1;
        }

        v48 = v11->handle;
        v49 = v11;
        if (v48 == &nw_protocol_ref_counted_handle || v48 == &nw_protocol_ref_counted_additional_handle && (v49 = *v11[1].flow_id) != 0)
        {
          v52 = v49[1].callbacks;
          if (v52)
          {
            v50 = 0;
            v49[1].callbacks = (&v52->add_input_handler + 1);
            v51 = default_input_handler->callbacks;
            if (!v51)
            {
              goto LABEL_137;
            }
          }

          else
          {
            v50 = 0;
            v51 = default_input_handler->callbacks;
            if (!v51)
            {
              goto LABEL_137;
            }
          }
        }

        else
        {
          v50 = 1;
          v51 = default_input_handler->callbacks;
          if (!v51)
          {
            goto LABEL_137;
          }
        }

        error = v51->error;
        if (!error)
        {
LABEL_137:
          __nwlog_obj();
          v81 = default_input_handler->identifier->name;
          if (!v81)
          {
            v81 = "invalid";
          }

          *buf = 136446722;
          v154 = "__nw_protocol_error";
          v155 = 2082;
          v156 = v81;
          v157 = 2048;
          v158 = default_input_handler;
          v82 = _os_log_send_and_compose_impl();
          v152 = OS_LOG_TYPE_ERROR;
          v151 = 0;
          logb = v82;
          if (!__nwlog_fault(v82, &v152, &v151))
          {
            goto LABEL_174;
          }

          if (v152 == OS_LOG_TYPE_FAULT)
          {
            v83 = __nwlog_obj();
            v126 = v152;
            if (os_log_type_enabled(v83, v152))
            {
              v84 = default_input_handler->identifier->name;
              if (!v84)
              {
                v84 = "invalid";
              }

              *buf = 136446722;
              v154 = "__nw_protocol_error";
              v155 = 2082;
              v156 = v84;
              v157 = 2048;
              v158 = default_input_handler;
              v85 = v83;
              v86 = v126;
              v87 = "%{public}s protocol %{public}s (%p) has invalid error callback";
              goto LABEL_173;
            }

            goto LABEL_174;
          }

          if (v151 == 1)
          {
            v90 = __nw_create_backtrace_string();
            v127 = __nwlog_obj();
            v124 = v152;
            v91 = os_log_type_enabled(v127, v152);
            if (v90)
            {
              if (v91)
              {
                v92 = default_input_handler->identifier->name;
                if (!v92)
                {
                  v92 = "invalid";
                }

                *buf = 136446978;
                v154 = "__nw_protocol_error";
                v155 = 2082;
                v156 = v92;
                v157 = 2048;
                v158 = default_input_handler;
                v159 = 2082;
                v160 = v90;
                _os_log_impl(&dword_181A37000, v127, v124, "%{public}s protocol %{public}s (%p) has invalid error callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v90);
              goto LABEL_174;
            }

            if (!v91)
            {
LABEL_174:
              if (logb)
              {
                free(logb);
              }

              goto LABEL_87;
            }

            v96 = default_input_handler->identifier->name;
            if (!v96)
            {
              v96 = "invalid";
            }

            *buf = 136446722;
            v154 = "__nw_protocol_error";
            v155 = 2082;
            v156 = v96;
            v157 = 2048;
            v158 = default_input_handler;
            v85 = v127;
            v86 = v124;
            v87 = "%{public}s protocol %{public}s (%p) has invalid error callback, no backtrace";
          }

          else
          {
            v94 = __nwlog_obj();
            v128 = v152;
            if (!os_log_type_enabled(v94, v152))
            {
              goto LABEL_174;
            }

            v95 = default_input_handler->identifier->name;
            if (!v95)
            {
              v95 = "invalid";
            }

            *buf = 136446722;
            v154 = "__nw_protocol_error";
            v155 = 2082;
            v156 = v95;
            v157 = 2048;
            v158 = default_input_handler;
            v85 = v94;
            v86 = v128;
            v87 = "%{public}s protocol %{public}s (%p) has invalid error callback, backtrace limit exceeded";
          }

LABEL_173:
          _os_log_impl(&dword_181A37000, v85, v86, v87, buf, 0x20u);
          goto LABEL_174;
        }

        error(default_input_handler, v11, 0);
LABEL_87:
        if (v11)
        {
          v54 = v50;
        }

        else
        {
          v54 = 1;
        }

        if ((v54 & 1) != 0 || (v55 = v11->handle, v56 = v11, v55 != &nw_protocol_ref_counted_handle) && (v55 != &nw_protocol_ref_counted_additional_handle || (v56 = *v11[1].flow_id) == 0) || (v57 = v56[1].callbacks) == 0 || (v58 = (v57 - 1), (v56[1].callbacks = v58) != 0))
        {
          if (v44)
          {
            goto LABEL_114;
          }

LABEL_97:
          v59 = default_input_handler->handle;
          if (v59 == &nw_protocol_ref_counted_handle || v59 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = *default_input_handler[1].flow_id) != 0)
          {
            v60 = default_input_handler[1].callbacks;
            if (v60)
            {
              v61 = (v60 - 1);
              default_input_handler[1].callbacks = v61;
              if (!v61)
              {
                v62 = *default_input_handler[1].flow_id;
                if (v62)
                {
                  *default_input_handler[1].flow_id = 0;
                  v62[2](v62);
                  _Block_release(v62);
                }

                if (default_input_handler[1].flow_id[8])
                {
                  v63 = *default_input_handler[1].flow_id;
                  if (v63)
                  {
                    _Block_release(v63);
                  }
                }

                free(default_input_handler);
              }
            }
          }

          goto LABEL_114;
        }

        v64 = *v56[1].flow_id;
        if (v64)
        {
          *v56[1].flow_id = 0;
          v64[2](v64);
          _Block_release(v64);
        }

        if (v56[1].flow_id[8])
        {
          v65 = *v56[1].flow_id;
          if (v65)
          {
            _Block_release(v65);
          }
        }

        free(v56);
        if ((v44 & 1) == 0)
        {
          goto LABEL_97;
        }

LABEL_114:
        v138[0] = MEMORY[0x1E69E9820];
        v138[1] = 0x40000000;
        v139 = ___ZL32nw_protocol_udp_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
        v140 = &unk_1E6A2B200;
        v143 = v6;
        v144 = a6;
        v141 = type;
        p_output_handler = &v11[1].output_handler;
        do
        {
          v66 = v149;
          if (!v149)
          {
            break;
          }

          v67 = *(v149 + 32);
          v68 = *(v149 + 40);
          v69 = (v67 + 40);
          if (!v67)
          {
            v69 = &v150;
          }

          *v69 = v68;
          *v68 = v67;
          *(v66 + 32) = 0;
          *(v66 + 40) = 0;
        }

        while ((v139(v138) & 1) != 0);
        if (*(v146 + 6) != 0 || !v29)
        {
          if (_nw_signposts_once != -1)
          {
            dispatch_once(&_nw_signposts_once, &__block_literal_global_17);
          }

          if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
          {
            kdebug_trace();
          }

          v109 = *(v146 + 6);
          _Block_object_dispose(type, 8);
          if (v133)
          {
            return v109;
          }

LABEL_214:
          v112 = v6->handle;
          if (v112 == &nw_protocol_ref_counted_handle || v112 == &nw_protocol_ref_counted_additional_handle && (v6 = *v6[1].flow_id) != 0)
          {
            v113 = v6[1].callbacks;
            if (v113)
            {
              v114 = (v113 - 1);
              v6[1].callbacks = v114;
              if (!v114)
              {
                v115 = *v6[1].flow_id;
                if (v115)
                {
                  *v6[1].flow_id = 0;
                  v115[2](v115);
                  _Block_release(v115);
                }

                if (v6[1].flow_id[8])
                {
                  v116 = *v6[1].flow_id;
                  if (v116)
                  {
                    _Block_release(v116);
                  }
                }

                free(v6);
              }
            }
          }

          return v109;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v70 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v154 = "nw_protocol_udp_get_input_frames";
          v155 = 2082;
          v156 = v11 + 3;
          _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Dropped inbound packets, checking for more", buf, 0x16u);
        }
      }
    }

    v8 = *a1[1].flow_id;
    if (v8)
    {
LABEL_6:
      v10 = v8[1].callbacks;
      v9 = 0;
      if (v10)
      {
        v8[1].callbacks = (&v10->add_input_handler + 1);
      }
    }

    else
    {
      v9 = 1;
    }

    handle = a1->handle;
    goto LABEL_11;
  }

  __nwlog_obj();
  *buf = 136446210;
  v154 = "nw_protocol_udp_get_input_frames";
  v118 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v149) = 0;
  if (__nwlog_fault(v118, type, &v149))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v119 = __nwlog_obj();
      v120 = type[0];
      if (os_log_type_enabled(v119, type[0]))
      {
        *buf = 136446210;
        v154 = "nw_protocol_udp_get_input_frames";
        v121 = "%{public}s called with null protocol";
LABEL_239:
        _os_log_impl(&dword_181A37000, v119, v120, v121, buf, 0xCu);
      }
    }

    else if (v149 == 1)
    {
      v122 = __nw_create_backtrace_string();
      v119 = __nwlog_obj();
      v120 = type[0];
      v123 = os_log_type_enabled(v119, type[0]);
      if (v122)
      {
        if (v123)
        {
          *buf = 136446466;
          v154 = "nw_protocol_udp_get_input_frames";
          v155 = 2082;
          v156 = v122;
          _os_log_impl(&dword_181A37000, v119, v120, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v122);
        goto LABEL_240;
      }

      if (v123)
      {
        *buf = 136446210;
        v154 = "nw_protocol_udp_get_input_frames";
        v121 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_239;
      }
    }

    else
    {
      v119 = __nwlog_obj();
      v120 = type[0];
      if (os_log_type_enabled(v119, type[0]))
      {
        *buf = 136446210;
        v154 = "nw_protocol_udp_get_input_frames";
        v121 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_239;
      }
    }
  }

LABEL_240:
  if (v118)
  {
    free(v118);
  }

  return 0;
}

void nw_protocol_data_access_buffer(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_data_access_buffer";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v11, &type, &v24))
    {
      goto LABEL_47;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_protocol_data_access_buffer";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null data", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v27 = "nw_protocol_data_access_buffer";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_47:
        if (!v11)
        {
          goto LABEL_13;
        }

LABEL_48:
        free(v11);
        goto LABEL_13;
      }

      if (v18)
      {
        *buf = 136446210;
        v27 = "nw_protocol_data_access_buffer";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null data, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v27 = "nw_protocol_data_access_buffer";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_46:

    goto LABEL_47;
  }

  if (v4)
  {
    if (!*(v3 + 14) || (v3[51] & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v3, *(v3 + 11)))
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v7 = v3[13];
      v6 = v3[14];
      if (v7)
      {
        v8 = (v7 - (v6 + v3[15]));
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v3 + 14) + v6;
    }

    v5[2](v5, v9, v8);
    goto LABEL_13;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_protocol_data_access_buffer";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v11, &type, &v24))
  {
    goto LABEL_47;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v15 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v27 = "nw_protocol_data_access_buffer";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null access_block", buf, 0xCu);
    }

    goto LABEL_46;
  }

  if (v24 != 1)
  {
    v12 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v27 = "nw_protocol_data_access_buffer";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null access_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_46;
  }

  v19 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v20 = type;
  v21 = os_log_type_enabled(v12, type);
  if (!v19)
  {
    if (v21)
    {
      *buf = 136446210;
      v27 = "nw_protocol_data_access_buffer";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null access_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_46;
  }

  if (v21)
  {
    *buf = 136446466;
    v27 = "nw_protocol_data_access_buffer";
    v28 = 2082;
    v29 = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null access_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_48;
  }

LABEL_13:
}

uint64_t nw_protocol_custom_mapping_key_hash(uint8x8_t *a1, unsigned int a2, double a3, int32x4_t a4)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 3)
  {
    if (a2 >= 0x20)
    {
      v7 = 0uLL;
      v4 = a2 & 0xFFFFFFE0;
      v8 = 0uLL;
      v9 = a1 + 2;
      v10 = v4;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      do
      {
        v17 = *v9[-2].i8;
        v18 = vmovl_u8(*v17.i8);
        v19 = vmovl_high_u8(v17);
        v20 = vmovl_u8(*v9);
        v21 = vmovl_high_u8(*v9->i8);
        v12 = vaddw_high_u16(v12, v19);
        v11 = vaddw_u16(v11, *v19.i8);
        v8 = vaddw_high_u16(v8, v18);
        v7 = vaddw_u16(v7, *v18.i8);
        v16 = vaddw_high_u16(v16, v21);
        v15 = vaddw_u16(v15, *v21.i8);
        v14 = vaddw_high_u16(v14, v20);
        v13 = vaddw_u16(v13, *v20.i8);
        v9 += 4;
        v10 -= 32;
      }

      while (v10);
      a4 = vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12));
      v5 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v13, v7), vaddq_s32(v15, v11)), a4));
      if (v4 == a2)
      {
        return v5;
      }

      if ((a2 & 0x1C) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      LODWORD(v5) = 0;
      v4 = 0;
    }

    v22 = v4;
    v4 = a2 & 0xFFFFFFFC;
    v23 = v5;
    v24 = v22 - v4;
    v25 = (a1 + v22);
    do
    {
      v26 = *v25++;
      a4.i32[0] = v26;
      a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
      v23 = vaddw_u16(v23, *a4.i8);
      v24 += 4;
    }

    while (v24);
    v5 = vaddvq_s32(v23);
    if (v4 == a2)
    {
      return v5;
    }

    goto LABEL_14;
  }

  v4 = 0;
  LODWORD(v5) = 0;
LABEL_14:
  v27 = a2 - v4;
  v28 = a1 + v4;
  do
  {
    v29 = *v28++;
    v5 = (v5 + v29);
    --v27;
  }

  while (v27);
  return v5;
}

BOOL nw_protocol_custom_mapping_matches_key(char *a1, unsigned __int8 *a2, unsigned int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a1 == a3)
  {
    if (!a3)
    {
      return 1;
    }

    v3 = (a1 + 4);
    v4 = a3 - 1;
    do
    {
      v6 = *v3++;
      v5 = v6;
      v8 = *a2++;
      v7 = v8;
      v10 = v4-- != 0;
      result = v5 == v7;
    }

    while (v5 == v7 && v10);
    return result;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_custom_mapping_matches_key";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v13, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_custom_mapping_matches_key";
        v16 = "%{public}s Cannot have custom mapping keys with different lengths";
LABEL_25:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v18 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            v22 = "nw_protocol_custom_mapping_matches_key";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s Cannot have custom mapping keys with different lengths, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (!v18)
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v22 = "nw_protocol_custom_mapping_matches_key";
        v16 = "%{public}s Cannot have custom mapping keys with different lengths, no backtrace";
        goto LABEL_25;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_custom_mapping_matches_key";
        v16 = "%{public}s Cannot have custom mapping keys with different lengths, backtrace limit exceeded";
        goto LABEL_25;
      }
    }

LABEL_26:
  }

LABEL_27:
  if (v13)
  {
    free(v13);
  }

  return 0;
}

void nw_protocol_implementation_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v4 = __nwlog_obj();
        *buf = 136446210;
        v41 = "nw_protocol_implementation_input_available";
        v5 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v38 = 0;
        if (__nwlog_fault(v5, &type, &v38))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v6 = __nwlog_obj();
            v7 = type;
            if (os_log_type_enabled(v6, type))
            {
              *buf = 136446210;
              v41 = "nw_protocol_implementation_input_available";
              _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v38 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v6 = __nwlog_obj();
            v13 = type;
            v14 = os_log_type_enabled(v6, type);
            if (backtrace_string)
            {
              if (v14)
              {
                *buf = 136446466;
                v41 = "nw_protocol_implementation_input_available";
                v42 = 2082;
                v43 = backtrace_string;
                _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v5)
              {
                goto LABEL_27;
              }

              goto LABEL_26;
            }

            if (v14)
            {
              *buf = 136446210;
              v41 = "nw_protocol_implementation_input_available";
              _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v6 = __nwlog_obj();
            v15 = type;
            if (os_log_type_enabled(v6, type))
            {
              *buf = 136446210;
              v41 = "nw_protocol_implementation_input_available";
              _os_log_impl(&dword_181A37000, v6, v15, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v5)
        {
LABEL_27:
          v10 = 0;
          goto LABEL_28;
        }

LABEL_26:
        free(v5);
        goto LABEL_27;
      }

      a1 = *a1[1].flow_id;
    }

    v8 = a1;
    v9 = &a1[1].output_handler;
    v10 = v9;
    v11 = v8[1].handle;
    if (v11)
    {
      if (v11[10])
      {
        nw_protocol_implementation_read(v9, a2);
LABEL_28:

        return;
      }

      v24 = __nwlog_obj();
      *buf = 136446210;
      v41 = "nw_protocol_implementation_input_available";
      v21 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (!__nwlog_fault(v21, &type, &v38))
      {
        goto LABEL_81;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v41 = "nw_protocol_implementation_input_available";
          _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }
      }

      else if (v38 == 1)
      {
        v32 = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v33 = type;
        v34 = os_log_type_enabled(v22, type);
        if (v32)
        {
          if (v34)
          {
            *buf = 136446466;
            v41 = "nw_protocol_implementation_input_available";
            v42 = 2082;
            v43 = v32;
            _os_log_impl(&dword_181A37000, v22, v33, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v32);
          if (!v21)
          {
            goto LABEL_28;
          }

          goto LABEL_82;
        }

        if (v34)
        {
          *buf = 136446210;
          v41 = "nw_protocol_implementation_input_available";
          _os_log_impl(&dword_181A37000, v22, v33, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v22 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v41 = "nw_protocol_implementation_input_available";
          _os_log_impl(&dword_181A37000, v22, v37, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v20 = __nwlog_obj();
      *buf = 136446210;
      v41 = "nw_protocol_implementation_input_available";
      v21 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (!__nwlog_fault(v21, &type, &v38))
      {
        goto LABEL_81;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v41 = "nw_protocol_implementation_input_available";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }
      }

      else if (v38 == 1)
      {
        v29 = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v30 = type;
        v31 = os_log_type_enabled(v22, type);
        if (v29)
        {
          if (v31)
          {
            *buf = 136446466;
            v41 = "nw_protocol_implementation_input_available";
            v42 = 2082;
            v43 = v29;
            _os_log_impl(&dword_181A37000, v22, v30, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v29);
LABEL_81:
          if (!v21)
          {
            goto LABEL_28;
          }

LABEL_82:
          free(v21);
          goto LABEL_28;
        }

        if (v31)
        {
          *buf = 136446210;
          v41 = "nw_protocol_implementation_input_available";
          _os_log_impl(&dword_181A37000, v22, v30, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v22 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v41 = "nw_protocol_implementation_input_available";
          _os_log_impl(&dword_181A37000, v22, v36, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_81;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v41 = "nw_protocol_implementation_input_available";
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (__nwlog_fault(v17, &type, &v38))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v41 = "nw_protocol_implementation_input_available";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v38 == 1)
    {
      v26 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v27 = type;
      v28 = os_log_type_enabled(v18, type);
      if (v26)
      {
        if (v28)
        {
          *buf = 136446466;
          v41 = "nw_protocol_implementation_input_available";
          v42 = 2082;
          v43 = v26;
          _os_log_impl(&dword_181A37000, v18, v27, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v26);
        goto LABEL_73;
      }

      if (v28)
      {
        *buf = 136446210;
        v41 = "nw_protocol_implementation_input_available";
        _os_log_impl(&dword_181A37000, v18, v27, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v41 = "nw_protocol_implementation_input_available";
        _os_log_impl(&dword_181A37000, v18, v35, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_73:
  if (v17)
  {
    free(v17);
  }
}

uint64_t ___ZL32nw_protocol_udp_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(void *a1, uint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v56 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v56);
  if (!v4)
  {
    goto LABEL_87;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v60 = "__nw_frame_check_validity";
    v46 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (!__nwlog_fault(v46, &type, &v57))
    {
      goto LABEL_85;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v48 = type;
      if (!os_log_type_enabled(v47, type))
      {
        goto LABEL_85;
      }

      *buf = 136446210;
      v60 = "__nw_frame_check_validity";
      v49 = "%{public}s called with null frame";
    }

    else if (v57 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v47 = __nwlog_obj();
      v48 = type;
      v51 = os_log_type_enabled(v47, type);
      if (backtrace_string)
      {
        if (v51)
        {
          *buf = 136446466;
          v60 = "__nw_frame_check_validity";
          v61 = 2082;
          v62 = backtrace_string;
          _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_85;
      }

      if (!v51)
      {
LABEL_85:
        if (v46)
        {
          free(v46);
        }

        goto LABEL_87;
      }

      *buf = 136446210;
      v60 = "__nw_frame_check_validity";
      v49 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v47 = __nwlog_obj();
      v48 = type;
      if (!os_log_type_enabled(v47, type))
      {
        goto LABEL_85;
      }

      *buf = 136446210;
      v60 = "__nw_frame_check_validity";
      v49 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0xCu);
    goto LABEL_85;
  }

  v5 = v4;
  if (*(a2 + 204) & 0x100) == 0 || !g_channel_check_validity || (g_channel_check_validity(a2, *(a2 + 88)))
  {
    v6 = a1[5];
    v7 = *(v6 + 64);
    if (v7)
    {
      ++*v7;
    }

    v8 = v56 < 8;
    if (v56 <= 7)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v10 = a1[5];
        v11 = (v10 + 96);
        if (!v10)
        {
          v11 = "";
        }

        *buf = 136446722;
        v60 = "nw_protocol_udp_get_input_frames_block_invoke";
        v61 = 2082;
        v62 = v11;
        v63 = 1024;
        v64 = v56;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Received UDP packet shorter than header %u", buf, 0x1Cu);
      }

      v6 = a1[5];
      v12 = *(v6 + 64);
      if (v12)
      {
        ++*(v12 + 8);
      }
    }

    v13 = *v5;
    v14 = *(v6 + 90);
    if (v13 != v14)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      v6 = a1[5];
      if (v16)
      {
        v60 = "nw_protocol_udp_get_input_frames_block_invoke";
        v61 = 2082;
        *buf = 136446978;
        if (v6)
        {
          v17 = (v6 + 96);
        }

        else
        {
          v17 = "";
        }

        v62 = v17;
        v63 = 1024;
        v64 = __rev16(v13);
        v65 = 1024;
        v66 = __rev16(v14);
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Received remote port %u != %u", buf, 0x22u);
        v6 = a1[5];
      }

      v8 = 1;
    }

    v18 = v5[1];
    v19 = *(v6 + 88);
    if (v18 != v19)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v21 = __rev16(v19);
        v22 = __rev16(v18);
        v23 = a1[5];
        v60 = "nw_protocol_udp_get_input_frames_block_invoke";
        v61 = 2082;
        *buf = 136446978;
        if (v23)
        {
          v24 = (v23 + 96);
        }

        else
        {
          v24 = "";
        }

        v62 = v24;
        v63 = 1024;
        v64 = v22;
        v65 = 1024;
        v66 = v21;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Received local port %u != %u", buf, 0x22u);
      }

      v8 = 1;
    }

    v25 = bswap32(v5[2]) >> 16;
    if (v56 >= v25)
    {
      v29 = a1[5];
      if ((*(v29 + 94) & 4) != 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v27 = a1[5];
        v28 = "";
        if (v27)
        {
          v28 = (v27 + 96);
        }

        *buf = 136446978;
        v60 = "nw_protocol_udp_get_input_frames_block_invoke";
        v61 = 2082;
        v62 = v28;
        v63 = 1024;
        v64 = v25;
        v65 = 1024;
        v66 = v56;
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Received length %u > %u", buf, 0x22u);
      }

      v29 = a1[5];
      v30 = *(v29 + 64);
      if (v30)
      {
        ++*(v30 + 24);
      }

      v8 = 1;
      if ((*(v29 + 94) & 4) != 0)
      {
LABEL_48:
        v35 = *(v29 + 94);
        if ((v35 & 0x40) != 0 || !v5[3])
        {
          if (!v8)
          {
            goto LABEL_54;
          }
        }

        else if (((v8 | udp_validate_cksum_internal(a2, v56, (v29 + 48), (v29 + 32), (v35 & 4) == 0, v29) ^ 1) & 1) == 0)
        {
          v35 = *(a1[5] + 94);
LABEL_54:
          if ((v35 & 0x20) != 0)
          {
            nw_frame_set_metadata(a2, 0, 1, 1);
          }

          else
          {
            metadata = _nw_udp_create_metadata();
            if (metadata)
            {
              v38 = metadata;
              nw_frame_set_metadata(a2, metadata, 1, 1);
              os_release(v38);
            }
          }

          nw_frame_claim(a2, v37, 8, v56 - v25);
          v39 = a1[7];
          *(a2 + 32) = 0;
          v40 = *(v39 + 8);
          *(a2 + 40) = v40;
          *v40 = a2;
          *(v39 + 8) = a2 + 32;
          ++*(*(a1[4] + 8) + 24);
          v41 = a1[5];
          if (v41)
          {
            v42 = *(v41 + 72);
            if (v42)
            {
              ++*(v42 + 16);
              v43 = a1[5];
              if (v43)
              {
                v44 = *(v43 + 72);
                if (v44)
                {
                  *(v44 + 24) += *(a2 + 52);
                }
              }
            }
          }

          if (_nw_signposts_once != -1)
          {
            dispatch_once(&_nw_signposts_once, &__block_literal_global_17);
          }

          if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
          {
            kdebug_trace();
          }

          if (v56 >= 9)
          {
            *(a1[5] + 8) = v56 + *(a1[5] + 8) - 8;
          }

          return 1;
        }

        nw_frame_finalize(a2);
        return 1;
      }
    }

    if (!v5[3])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v32 = a1[5];
        if (v32)
        {
          v33 = (v32 + 96);
        }

        else
        {
          v33 = "";
        }

        *buf = 136446466;
        v60 = "nw_protocol_udp_get_input_frames_block_invoke";
        v61 = 2082;
        v62 = v33;
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Received an IPv6 packet with zero checksum", buf, 0x16u);
      }

      v29 = a1[5];
      v34 = *(v29 + 64);
      if (v34)
      {
        ++*(v34 + 16);
      }

      v8 = 1;
    }

    goto LABEL_48;
  }

LABEL_87:
  v52 = __nwlog_obj();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    v53 = a1[5];
    if (v53)
    {
      v54 = (v53 + 96);
    }

    else
    {
      v54 = "";
    }

    *buf = 136446466;
    v60 = "nw_protocol_udp_get_input_frames_block_invoke";
    v61 = 2082;
    v62 = v54;
    _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_INFO, "%{public}s %{public}s UDP frame is no longer valid", buf, 0x16u);
  }

  v55 = a1[5];
  if (v55)
  {
    *(v55 + 64) = 0;
    *(v55 + 72) = 0;
  }

  return 1;
}

uint64_t udp_validate_cksum_internal(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, int a5, uint64_t a6)
{
  v67 = *MEMORY[0x1E69E9840];
  v52 = 0;
  v51 = 0;
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v56 = "__nw_frame_get_internet_checksum";
    v37 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v54 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v37, type, &v54))
    {
      goto LABEL_93;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (!os_log_type_enabled(v38, type[0]))
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v56 = "__nw_frame_get_internet_checksum";
      v40 = "%{public}s called with null frame";
    }

    else if (v54 == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type[0];
      v46 = os_log_type_enabled(v38, type[0]);
      if (backtrace_string)
      {
        if (v46)
        {
          *buf = 136446466;
          v56 = "__nw_frame_get_internet_checksum";
          v57 = 2082;
          v58 = backtrace_string;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_93;
      }

      if (!v46)
      {
LABEL_93:
        if (v37)
        {
          free(v37);
        }

        goto LABEL_6;
      }

      *buf = 136446210;
      v56 = "__nw_frame_get_internet_checksum";
      v40 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (!os_log_type_enabled(v38, type[0]))
      {
        goto LABEL_93;
      }

      *buf = 136446210;
      v56 = "__nw_frame_get_internet_checksum";
      v40 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
    goto LABEL_93;
  }

  if ((*(a1 + 204) & 0x100) == 0 && (*(a1 + 204) & 0x200) == 0 || !g_channel_get_internet_checksum_handler || g_channel_get_internet_checksum_handler(a1, &v52, &v51 + 2, &v51))
  {
    goto LABEL_6;
  }

  v16 = *(a1 + 204);
  if ((~v16 & 0x3000) == 0)
  {
    v13 = v51;
    goto LABEL_45;
  }

  if (v52 != 1)
  {
LABEL_6:
    *type = 0;
    LOWORD(v51) = ~inet_cksum(a1, 0, a2, type);
    if (!*type)
    {
LABEL_11:
      v12 = a2;
      goto LABEL_12;
    }

    if (a1)
    {
      if (*(a1 + 204) & 0x100) == 0 || !g_channel_check_validity || (g_channel_check_validity(a1, *(a1 + 88)))
      {
        goto LABEL_11;
      }

LABEL_104:
      if (a6)
      {
        *(a6 + 64) = 0;
        *(a6 + 72) = 0;
      }

      return 0;
    }

    __nwlog_obj();
    *buf = 136446210;
    v56 = "__nw_frame_check_validity";
    v41 = _os_log_send_and_compose_impl();
    v54 = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (__nwlog_fault(v41, &v54, &v53))
    {
      if (v54 == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v43 = v54;
        if (!os_log_type_enabled(v42, v54))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        v56 = "__nw_frame_check_validity";
        v44 = "%{public}s called with null frame";
        goto LABEL_101;
      }

      if (v53 != 1)
      {
        v42 = __nwlog_obj();
        v43 = v54;
        if (!os_log_type_enabled(v42, v54))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        v56 = "__nw_frame_check_validity";
        v44 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_101;
      }

      v47 = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v43 = v54;
      v48 = os_log_type_enabled(v42, v54);
      if (v47)
      {
        if (v48)
        {
          *buf = 136446466;
          v56 = "__nw_frame_check_validity";
          v57 = 2082;
          v58 = v47;
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v47);
        goto LABEL_102;
      }

      if (v48)
      {
        *buf = 136446210;
        v56 = "__nw_frame_check_validity";
        v44 = "%{public}s called with null frame, no backtrace";
LABEL_101:
        _os_log_impl(&dword_181A37000, v42, v43, v44, buf, 0xCu);
      }
    }

LABEL_102:
    if (v41)
    {
      free(v41);
    }

    goto LABEL_104;
  }

  if ((v16 & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(a1, *(a1 + 88)) || (v17 = *(a1 + 112)) == 0 || (v18 = *(a1 + 48)) == 0)
  {
    v33 = __nwlog_obj();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      goto LABEL_63;
    }

    v49 = "";
    if (a6)
    {
      v49 = (a6 + 96);
    }

    *buf = 136446466;
    v56 = "udp_validate_cksum_internal";
    v57 = 2082;
    v58 = v49;
    v35 = "%{public}s %{public}s Frame buffer no longer valid";
    goto LABEL_62;
  }

  v19 = *(a1 + 112);
  if ((*(a1 + 204) & 0x100) == 0 || (v19 = *(a1 + 112), !g_channel_check_validity) || g_channel_check_validity(a1, *(a1 + 88)) && (v19 = *(a1 + 112)) != 0)
  {
    v20 = (v19 + *(a1 + 56) - v17);
    v21 = v20 + a2;
    if ((a5 & 1) != 0 || !HIWORD(v51) || HIWORD(v51) == v20)
    {
      if (a5)
      {
        if (HIWORD(v51) == v20 && v18 == v21)
        {
          v12 = 0;
          goto LABEL_13;
        }
      }

      else if (v18 == v21)
      {
        v12 = 0;
        goto LABEL_41;
      }
    }

    v22 = v18 - v21;
    LOWORD(v51) = in_adjust_cksum(v17, v18, HIWORD(v51), v20, a2, v51);
    if (v20 <= HIWORD(v51))
    {
      v12 = v22 - v20 + HIWORD(v51);
    }

    else
    {
      v12 = v22 + v20 - HIWORD(v51);
    }

LABEL_12:
    if (a5)
    {
LABEL_13:
      v13 = in6_pseudo(a3, a4, bswap32(a2 + 17) + v51);
      if (a6)
      {
        if (v12)
        {
          v14 = *(a6 + 64);
          if (v14)
          {
            v15.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v15.i64[1] = v12;
            *(v14 + 56) = vaddq_s64(*(v14 + 56), v15);
          }
        }
      }

      goto LABEL_45;
    }

LABEL_41:
    v23 = *a4 + *a3 + bswap32(a2 + 17) + v51;
    v24 = ((WORD1(v23) + v23 + HIDWORD(v23)) >> 16) + (WORD1(v23) + v23 + WORD2(v23));
    v13 = ((((v24 >> 16) + v24) >> 16) + WORD1(v24) + v24 + ((-65535 * (((v24 >> 16) + v24) >> 16) + (v24 >> 16) + v24) >> 16));
    if (a6)
    {
      if (v12)
      {
        v25 = *(a6 + 64);
        if (v25)
        {
          v26.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v26.i64[1] = v12;
          *(v25 + 40) = vaddq_s64(*(v25 + 40), v26);
        }
      }
    }

LABEL_45:
    LOWORD(v51) = ~v13;
    if (v13 == 0xFFFF)
    {
      return 1;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v29 = (a6 + 96);
      if (!a6)
      {
        v29 = "";
      }

      *buf = 136447490;
      v56 = "udp_validate_cksum_internal";
      v57 = 2082;
      v58 = v29;
      v30 = "IPv6";
      if (!a5)
      {
        v30 = "IPv4";
      }

      v59 = 2082;
      v60 = v30;
      v31 = "offload";
      v61 = 2082;
      if (!v52)
      {
        v31 = "non-offload";
      }

      v62 = v31;
      v63 = 1024;
      v64 = v51;
      v65 = 1024;
      v66 = a2;
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s %{public}s udp incorrect %{public}s-UDP %{public}s checksum 0x%x ulen %d", buf, 0x36u);
    }

    if (a6)
    {
      v32 = *(a6 + 64);
      if (v32)
      {
        result = 0;
        ++*(v32 + 16);
        return result;
      }
    }

    return 0;
  }

  v33 = __nwlog_obj();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = "";
    if (a6)
    {
      v34 = (a6 + 96);
    }

    *buf = 136446466;
    v56 = "udp_validate_cksum_internal";
    v57 = 2082;
    v58 = v34;
    v35 = "%{public}s %{public}s Frame buffer no longer valid for UDP";
LABEL_62:
    _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_INFO, v35, buf, 0x16u);
  }

LABEL_63:
  result = 0;
  if ((*(a1 + 204) & 0x100) != 0)
  {
    if (g_channel_check_validity)
    {
      v36 = g_channel_check_validity(a1, *(a1 + 88));
      result = 0;
      if (a6)
      {
        if ((v36 & 1) == 0)
        {
          result = 0;
          *(a6 + 64) = 0;
          *(a6 + 72) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t ___ZL45nw_protocol_implementation_get_input_internalP31NWConcrete_nw_protocol_instanceP11nw_protocolmjjj_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = (a1[5] + 8);
  v7 = v3 + 4;
  v6 = v3[4];
  v8 = v3[5];
  if (v6)
  {
    v5 = (v6 + 40);
  }

  *v5 = v8;
  *v8 = v6;
  *v7 = 0;
  v3[5] = 0;
  v9 = a1[4];
  v10 = *(v9 + 8);
  v11 = *(v10[10].isa + 7);
  v12 = a1[6];
  v13 = nw_frame_copy_metadata_for_protocol(v3, v10);
  v11(v9, v12, v4, v13, 0);

  if (!*v7 && !v4[5] && (v4[2] || v4[3]))
  {
    nw_frame_finalize(v4);
  }

  return 1;
}

uint64_t nw_protocol_request_outbound_data(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_request_outbound_data";
    v19 = _os_log_send_and_compose_impl();

    v42 = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v19, &v42, &v41))
    {
      goto LABEL_64;
    }

    if (v42 == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = v42;
      if (os_log_type_enabled(v20, v42))
      {
        *buf = 136446210;
        v44 = "nw_protocol_request_outbound_data";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v41 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v27 = v42;
      v28 = os_log_type_enabled(v20, v42);
      if (backtrace_string)
      {
        if (v28)
        {
          *buf = 136446466;
          v44 = "nw_protocol_request_outbound_data";
          v45 = 2082;
          v46 = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_64:
        if (!v19)
        {
LABEL_13:
          v10 = 0;
          goto LABEL_14;
        }

LABEL_65:
        free(v19);
        goto LABEL_13;
      }

      if (v28)
      {
        *buf = 136446210;
        v44 = "nw_protocol_request_outbound_data";
        _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v34 = v42;
      if (os_log_type_enabled(v20, v42))
      {
        *buf = 136446210;
        v44 = "nw_protocol_request_outbound_data";
        _os_log_impl(&dword_181A37000, v20, v34, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_63:

    goto LABEL_64;
  }

  if (!a3)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_request_outbound_data";
    v19 = _os_log_send_and_compose_impl();

    v42 = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v19, &v42, &v41))
    {
      goto LABEL_64;
    }

    if (v42 == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v23 = v42;
      if (os_log_type_enabled(v20, v42))
      {
        *buf = 136446210;
        v44 = "nw_protocol_request_outbound_data";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null data_size", buf, 0xCu);
      }

      goto LABEL_63;
    }

    if (v41 != 1)
    {
      v20 = __nwlog_obj();
      v35 = v42;
      if (os_log_type_enabled(v20, v42))
      {
        *buf = 136446210;
        v44 = "nw_protocol_request_outbound_data";
        _os_log_impl(&dword_181A37000, v20, v35, "%{public}s called with null data_size, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_63;
    }

    v29 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v30 = v42;
    v31 = os_log_type_enabled(v20, v42);
    if (!v29)
    {
      if (v31)
      {
        *buf = 136446210;
        v44 = "nw_protocol_request_outbound_data";
        _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null data_size, no backtrace", buf, 0xCu);
      }

      goto LABEL_63;
    }

    if (v31)
    {
      *buf = 136446466;
      v44 = "nw_protocol_request_outbound_data";
      v45 = 2082;
      v46 = v29;
      _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null data_size, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_44;
  }

  if (!v8)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_protocol_request_outbound_data";
    v19 = _os_log_send_and_compose_impl();

    v42 = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v19, &v42, &v41))
    {
      goto LABEL_64;
    }

    if (v42 == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v25 = v42;
      if (os_log_type_enabled(v20, v42))
      {
        *buf = 136446210;
        v44 = "nw_protocol_request_outbound_data";
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null available_outbound_data", buf, 0xCu);
      }

      goto LABEL_63;
    }

    if (v41 != 1)
    {
      v20 = __nwlog_obj();
      v36 = v42;
      if (os_log_type_enabled(v20, v42))
      {
        *buf = 136446210;
        v44 = "nw_protocol_request_outbound_data";
        _os_log_impl(&dword_181A37000, v20, v36, "%{public}s called with null available_outbound_data, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_63;
    }

    v29 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v32 = v42;
    v33 = os_log_type_enabled(v20, v42);
    if (!v29)
    {
      if (v33)
      {
        *buf = 136446210;
        v44 = "nw_protocol_request_outbound_data";
        _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null available_outbound_data, no backtrace", buf, 0xCu);
      }

      goto LABEL_63;
    }

    if (v33)
    {
      *buf = 136446466;
      v44 = "nw_protocol_request_outbound_data";
      v45 = 2082;
      v46 = v29;
      _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null available_outbound_data, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_44:

    free(v29);
    if (!v19)
    {
      goto LABEL_13;
    }

    goto LABEL_65;
  }

  if (!nw_protocol_service_outbound_requests(v7) || (nw_protocol_service_requested_outbound_data(v7, a2, a3, v9) & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_protocol_request_outbound_data_block_invoke;
    aBlock[3] = &unk_1E6A2CDF0;
    v38 = v9;
    v39 = a2;
    v40 = a3;
    v11 = _Block_copy(aBlock);
    tqh_first = v7->pending_outbound_frames.tqh_first;
    if (!tqh_first)
    {
      v13 = _nw_array_create();
      v14 = v7->pending_outbound_frames.tqh_first;
      v7->pending_outbound_frames.tqh_first = v13;

      tqh_first = v7->pending_outbound_frames.tqh_first;
    }

    v15 = _Block_copy(v11);
    v16 = v15;
    if (tqh_first && v15)
    {
      _nw_array_append(tqh_first, v15);
    }

    goto LABEL_13;
  }

  v10 = 1;
LABEL_14:

  return v10;
}

BOOL nw_protocol_service_outbound_requests(NWConcrete_nw_protocol_instance *a1)
{
  v1 = a1;
  v2 = v1;
  p_tqh_first = &v1->pending_outbound_frames.tqh_first;
  tqh_first = v1->pending_outbound_frames.tqh_first;
  if (tqh_first)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__12441;
    v14 = __Block_byref_object_dispose__12442;
    v15 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZL37nw_protocol_service_outbound_requestsP31NWConcrete_nw_protocol_instance_block_invoke;
    v7[3] = &unk_1E6A3BB28;
    v9 = &v10;
    v8 = v1;
    _nw_array_apply(tqh_first, v7);
    objc_storeStrong(p_tqh_first, v11[5]);
    v5 = v11[5] == 0;

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_181C79040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t nw_protocol_udp_get_output_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, uint64_t a4, uint64_t a5, nw_protocol **a6)
{
  v109 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a1;
    handle = a1->handle;
    v8 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v9 = 1;
      goto LABEL_11;
    }

    v8 = *a1[1].flow_id;
    if (v8)
    {
LABEL_6:
      callbacks = v8[1].callbacks;
      v9 = 0;
      if (callbacks)
      {
        v8[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v9 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v11 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v102 = "nw_protocol_udp_get_output_frames";
        v12 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v99 = 0;
        if (!__nwlog_fault(v12, &type, &v99))
        {
          goto LABEL_34;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_34;
          }

          *buf = 136446210;
          v102 = "nw_protocol_udp_get_output_frames";
          v15 = "%{public}s called with null udp";
        }

        else
        {
          if (v99 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v23 = gLogObj;
            v24 = type;
            v25 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v25)
              {
                *buf = 136446466;
                v102 = "nw_protocol_udp_get_output_frames";
                v103 = 2082;
                v104 = backtrace_string;
                _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null udp, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
            }

            else if (v25)
            {
              *buf = 136446210;
              v102 = "nw_protocol_udp_get_output_frames";
              v15 = "%{public}s called with null udp, no backtrace";
              v26 = v23;
              v27 = v24;
              goto LABEL_33;
            }

LABEL_34:
            if (v12)
            {
              free(v12);
            }

            result = 0;
            if (v9)
            {
              return result;
            }

LABEL_79:
            v49 = v6->handle;
            if (v49 == &nw_protocol_ref_counted_handle || v49 == &nw_protocol_ref_counted_additional_handle && (v6 = *v6[1].flow_id) != 0)
            {
              v50 = v6[1].callbacks;
              if (v50)
              {
                v51 = (v50 - 1);
                v6[1].callbacks = v51;
                if (!v51)
                {
                  v52 = result;
                  v53 = *v6[1].flow_id;
                  if (v53)
                  {
                    *v6[1].flow_id = 0;
                    (v53)[2](v53, a2, a3, a4, a5, a6);
                    _Block_release(v53);
                  }

                  if (v6[1].flow_id[8])
                  {
                    v54 = *v6[1].flow_id;
                    if (v54)
                    {
                      _Block_release(v54);
                    }
                  }

                  free(v6);
                  return v52;
                }
              }
            }

            return result;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_34;
          }

          *buf = 136446210;
          v102 = "nw_protocol_udp_get_output_frames";
          v15 = "%{public}s called with null udp, backtrace limit exceeded";
        }

        v26 = v13;
        v27 = v14;
LABEL_33:
        _os_log_impl(&dword_181A37000, v26, v27, v15, buf, 0xCu);
        goto LABEL_34;
      }

      v11 = *a1[1].flow_id;
    }

    output_handler_context_high = HIWORD(v11[2].output_handler_context);
    if (output_handler_context_high)
    {
      result = 0;
      HIWORD(v11[2].output_handler_context) = output_handler_context_high | 2;
      if (v9)
      {
        return result;
      }

      goto LABEL_79;
    }

    output_handler = a1->output_handler;
    if (output_handler)
    {
      v18 = output_handler->handle;
      v19 = a1->output_handler;
      if (v18 == &nw_protocol_ref_counted_handle || v18 == &nw_protocol_ref_counted_additional_handle && (v19 = *output_handler[1].flow_id) != 0)
      {
        v28 = v19[1].callbacks;
        v20 = 0;
        if (v28)
        {
          v19[1].callbacks = (&v28->add_input_handler + 1);
        }
      }

      else
      {
        v20 = 1;
      }

      v29 = a1;
      if (handle == &nw_protocol_ref_counted_handle || handle == &nw_protocol_ref_counted_additional_handle && (v29 = *a1[1].flow_id) != 0)
      {
        v55 = v29[1].callbacks;
        if (v55)
        {
          v30 = 0;
          v29[1].callbacks = (&v55->add_input_handler + 1);
          if (!a6)
          {
            goto LABEL_94;
          }
        }

        else
        {
          v30 = 0;
          if (!a6)
          {
            goto LABEL_94;
          }
        }
      }

      else
      {
        v30 = 1;
        if (!a6)
        {
LABEL_94:
          v33 = a6;
          __nwlog_obj();
          *buf = 136446210;
          v102 = "__nw_protocol_get_output_frames";
          type = OS_LOG_TYPE_ERROR;
          v99 = 0;
          v93 = _os_log_send_and_compose_impl();
          if (!__nwlog_fault(v93, &type, &v99))
          {
            goto LABEL_163;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v56 = __nwlog_obj();
            log = type;
            if (!os_log_type_enabled(v56, type))
            {
              goto LABEL_163;
            }

            *buf = 136446210;
            v102 = "__nw_protocol_get_output_frames";
            v57 = "%{public}s called with null return_array";
LABEL_160:
            v82 = v56;
            v83 = log;
LABEL_161:
            v84 = 12;
            goto LABEL_162;
          }

          if (v99 != 1)
          {
            v56 = __nwlog_obj();
            log = type;
            if (!os_log_type_enabled(v56, type))
            {
              goto LABEL_163;
            }

            *buf = 136446210;
            v102 = "__nw_protocol_get_output_frames";
            v57 = "%{public}s called with null return_array, backtrace limit exceeded";
            goto LABEL_160;
          }

          v71 = __nw_create_backtrace_string();
          logc = __nwlog_obj();
          v87 = type;
          v80 = os_log_type_enabled(logc, type);
          if (v71)
          {
            if (v80)
            {
              *buf = 136446466;
              v102 = "__nw_protocol_get_output_frames";
              v103 = 2082;
              v104 = v71;
              v74 = "%{public}s called with null return_array, dumping backtrace:%{public}s";
              v75 = logc;
              v76 = v87;
              v77 = 22;
LABEL_142:
              _os_log_impl(&dword_181A37000, v75, v76, v74, buf, v77);
              goto LABEL_143;
            }

            goto LABEL_143;
          }

          if (v80)
          {
            *buf = 136446210;
            v102 = "__nw_protocol_get_output_frames";
            v57 = "%{public}s called with null return_array, no backtrace";
            v82 = logc;
            v83 = v87;
            goto LABEL_161;
          }

          goto LABEL_163;
        }
      }

      v31 = output_handler->callbacks;
      if (v31)
      {
        get_output_frames = v31->get_output_frames;
        if (get_output_frames)
        {
          v33 = a6;
          v34 = get_output_frames(output_handler, a1);
          if (v30)
          {
LABEL_58:
            if ((v20 & 1) == 0 && ((v41 = output_handler->handle, v41 == &nw_protocol_ref_counted_handle) || v41 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0) && (v42 = output_handler[1].callbacks) != 0)
            {
              v43 = v34;
              v44 = (v42 - 1);
              output_handler[1].callbacks = v44;
              if (!v44)
              {
                v45 = *output_handler[1].flow_id;
                if (v45)
                {
                  *output_handler[1].flow_id = 0;
                  v45[2](v45);
                  _Block_release(v45);
                }

                if (output_handler[1].flow_id[8])
                {
                  v46 = *output_handler[1].flow_id;
                  if (v46)
                  {
                    _Block_release(v46);
                  }
                }

                free(output_handler);
              }
            }

            else
            {
              v43 = v34;
            }

            goto LABEL_71;
          }

LABEL_47:
          v35 = v6->handle;
          v36 = v6;
          if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v36 = *v6[1].flow_id) != 0)
          {
            v37 = v36[1].callbacks;
            if (v37)
            {
              v38 = (v37 - 1);
              v36[1].callbacks = v38;
              if (!v38)
              {
                v92 = v34;
                v39 = *v36[1].flow_id;
                if (v39)
                {
                  *v36[1].flow_id = 0;
                  v39[2](v39);
                  _Block_release(v39);
                }

                if (v36[1].flow_id[8])
                {
                  v40 = *v36[1].flow_id;
                  if (v40)
                  {
                    _Block_release(v40);
                  }
                }

                free(v36);
                v34 = v92;
              }
            }
          }

          goto LABEL_58;
        }
      }

      v33 = a6;
      __nwlog_obj();
      name = output_handler->identifier->name;
      *buf = 136446722;
      v102 = "__nw_protocol_get_output_frames";
      if (!name)
      {
        name = "invalid";
      }

      v103 = 2082;
      v104 = name;
      v105 = 2048;
      v106 = output_handler;
      type = OS_LOG_TYPE_ERROR;
      v99 = 0;
      v93 = _os_log_send_and_compose_impl();
      if (!__nwlog_fault(v93, &type, &v99))
      {
        goto LABEL_163;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v63 = __nwlog_obj();
        loga = type;
        if (!os_log_type_enabled(v63, type))
        {
          goto LABEL_163;
        }

        v64 = output_handler->identifier->name;
        if (!v64)
        {
          v64 = "invalid";
        }

        *buf = 136446722;
        v102 = "__nw_protocol_get_output_frames";
        v103 = 2082;
        v104 = v64;
        v105 = 2048;
        v106 = output_handler;
        v57 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback";
      }

      else
      {
        if (v99 == 1)
        {
          v71 = __nw_create_backtrace_string();
          logb = __nwlog_obj();
          v86 = type;
          v72 = os_log_type_enabled(logb, type);
          if (v71)
          {
            if (v72)
            {
              v73 = output_handler->identifier->name;
              if (!v73)
              {
                v73 = "invalid";
              }

              *buf = 136446978;
              v102 = "__nw_protocol_get_output_frames";
              v103 = 2082;
              v104 = v73;
              v105 = 2048;
              v106 = output_handler;
              v107 = 2082;
              v108 = v71;
              v74 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, dumping backtrace:%{public}s";
              v75 = logb;
              v76 = v86;
              v77 = 42;
              goto LABEL_142;
            }

LABEL_143:
            free(v71);
            goto LABEL_163;
          }

          if (!v72)
          {
LABEL_163:
            if (v93)
            {
              free(v93);
            }

            v34 = 0;
            if (v30)
            {
              goto LABEL_58;
            }

            goto LABEL_47;
          }

          v85 = output_handler->identifier->name;
          if (!v85)
          {
            v85 = "invalid";
          }

          *buf = 136446722;
          v102 = "__nw_protocol_get_output_frames";
          v103 = 2082;
          v104 = v85;
          v105 = 2048;
          v106 = output_handler;
          v57 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, no backtrace";
          v82 = logb;
          v83 = v86;
LABEL_149:
          v84 = 32;
LABEL_162:
          _os_log_impl(&dword_181A37000, v82, v83, v57, buf, v84);
          goto LABEL_163;
        }

        v63 = __nwlog_obj();
        loga = type;
        if (!os_log_type_enabled(v63, type))
        {
          goto LABEL_163;
        }

        v81 = output_handler->identifier->name;
        if (!v81)
        {
          v81 = "invalid";
        }

        *buf = 136446722;
        v102 = "__nw_protocol_get_output_frames";
        v103 = 2082;
        v104 = v81;
        v105 = 2048;
        v106 = output_handler;
        v57 = "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, backtrace limit exceeded";
      }

      v82 = v63;
      v83 = loga;
      goto LABEL_149;
    }

    __nwlog_obj();
    *buf = 136446210;
    v102 = "__nw_protocol_get_output_frames";
    v67 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v99 = 0;
    if (__nwlog_fault(v67, &type, &v99))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v68 = __nwlog_obj();
        v69 = type;
        if (os_log_type_enabled(v68, type))
        {
          *buf = 136446210;
          v102 = "__nw_protocol_get_output_frames";
          v70 = "%{public}s called with null protocol";
LABEL_173:
          _os_log_impl(&dword_181A37000, v68, v69, v70, buf, 0xCu);
        }
      }

      else if (v99 == 1)
      {
        v78 = __nw_create_backtrace_string();
        v68 = __nwlog_obj();
        v69 = type;
        v79 = os_log_type_enabled(v68, type);
        if (v78)
        {
          if (v79)
          {
            *buf = 136446466;
            v102 = "__nw_protocol_get_output_frames";
            v103 = 2082;
            v104 = v78;
            _os_log_impl(&dword_181A37000, v68, v69, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v78);
          goto LABEL_174;
        }

        if (v79)
        {
          *buf = 136446210;
          v102 = "__nw_protocol_get_output_frames";
          v70 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_173;
        }
      }

      else
      {
        v68 = __nwlog_obj();
        v69 = type;
        if (os_log_type_enabled(v68, type))
        {
          *buf = 136446210;
          v102 = "__nw_protocol_get_output_frames";
          v70 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_173;
        }
      }
    }

LABEL_174:
    if (v67)
    {
      free(v67);
    }

    v43 = 0;
    v33 = a6;
LABEL_71:
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 0x40000000;
    v96 = ___ZL33nw_protocol_udp_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
    v97 = &__block_descriptor_tmp_21;
    v98 = v6;
    a2 = *v33;
    do
    {
      if (!a2)
      {
        break;
      }

      v47 = a2->output_handler;
      v48 = (v96)(v95);
      a2 = v47;
    }

    while ((v48 & 1) != 0);
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_17);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
      result = v43;
      if (v9)
      {
        return result;
      }
    }

    else
    {
      result = v43;
      if (v9)
      {
        return result;
      }
    }

    goto LABEL_79;
  }

  __nwlog_obj();
  *buf = 136446210;
  v102 = "nw_protocol_udp_get_output_frames";
  v58 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v99 = 0;
  if (__nwlog_fault(v58, &type, &v99))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446210;
        v102 = "nw_protocol_udp_get_output_frames";
        v61 = "%{public}s called with null protocol";
LABEL_152:
        _os_log_impl(&dword_181A37000, v59, v60, v61, buf, 0xCu);
      }
    }

    else if (v99 == 1)
    {
      v65 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v60 = type;
      v66 = os_log_type_enabled(v59, type);
      if (v65)
      {
        if (v66)
        {
          *buf = 136446466;
          v102 = "nw_protocol_udp_get_output_frames";
          v103 = 2082;
          v104 = v65;
          _os_log_impl(&dword_181A37000, v59, v60, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v65);
        goto LABEL_153;
      }

      if (v66)
      {
        *buf = 136446210;
        v102 = "nw_protocol_udp_get_output_frames";
        v61 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_152;
      }
    }

    else
    {
      v59 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v59, type))
      {
        *buf = 136446210;
        v102 = "nw_protocol_udp_get_output_frames";
        v61 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_152;
      }
    }
  }

LABEL_153:
  if (v58)
  {
    free(v58);
  }

  return 0;
}

void nw_protocol_instance_flush_batched_input_internal(NWConcrete_nw_protocol_instance *a1)
{
  v94 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  parent_definition = v1->parent_definition;
  var11 = parent_definition->extended_state->var11;
  if (var11)
  {
    var11(v1);
    parent_definition = v2->parent_definition;
  }

  v5 = BYTE3(v2->flow_in_connected) & 0xEF;
  BYTE3(v2->flow_in_connected) = v5;
  if (parent_definition->variant == 3)
  {
    tqh_last = v2->pending_outbound_frames.tqh_last;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = ___ZL49nw_protocol_instance_flush_batched_input_internalP31NWConcrete_nw_protocol_instance_block_invoke;
    v78[3] = &unk_1E6A3CDF8;
    v79 = v2;
    nw_hash_table_apply(tqh_last, v78);

    goto LABEL_53;
  }

  if ((v2->flow_in_connected & 0x80000) == 0)
  {
    goto LABEL_53;
  }

  if (v2->empty_frame_pool.tqh_first)
  {
    v7 = *&v2[-1].log_str[41];
    if (v7)
    {
      v8 = v7[5];
      v9 = *&v2[-1].log_str[41];
      if (v8 != &nw_protocol_ref_counted_handle)
      {
        if (v8 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v9) = 0;
          v10 = 1;
          goto LABEL_15;
        }

        v9 = v7[8];
        if (!v9)
        {
          v10 = 1;
          goto LABEL_15;
        }
      }

      v11 = *(v9 + 88);
      v10 = 0;
      if (v11)
      {
        *(v9 + 88) = v11 + 1;
      }

      LOBYTE(v9) = -1;
LABEL_15:
      *v84 = v7;
      v85 = v9;
      v12 = *&v2[-1].log_str[33];
      p_paths_log_id_num = &v2[-1].paths_log_id_num;
      if (v12 == &nw_protocol_ref_counted_handle || v12 == &nw_protocol_ref_counted_additional_handle && (p_paths_log_id_num = *&v2[-1].log_str[57]) != 0)
      {
        v16 = *(p_paths_log_id_num + 11);
        v15 = 0;
        if (v16)
        {
          *(p_paths_log_id_num + 11) = v16 + 1;
        }

        v14 = -1;
      }

      else
      {
        v14 = 0;
        v15 = 1;
      }

      v82 = &v2[-1].paths_log_id_num;
      v83 = v14;
      v17 = v7[3];
      if (v17)
      {
        v18 = *(v17 + 64);
        if (v18)
        {
          v18();
LABEL_25:
          if ((v15 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(&v82);
          }

          if ((v10 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v84);
          }

LABEL_29:
          v5 = BYTE3(v2->flow_in_connected);
          goto LABEL_30;
        }
      }

      v30 = v7;
      v31 = __nwlog_obj();
      v32 = v30[2];
      v33 = "invalid";
      *buf = 136446722;
      v87 = "__nw_protocol_input_available";
      if (v32)
      {
        v33 = v32;
      }

      v88 = 2082;
      v89 = v33;
      v90 = 2048;
      v34 = v30;
      v91 = v30;
      v35 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v80 = 0;
      if (__nwlog_fault(v35, &type, &v80))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v36 = __nwlog_obj();
          v37 = type;
          if (os_log_type_enabled(v36, type))
          {
            v38 = v34[2];
            if (!v38)
            {
              v38 = "invalid";
            }

            *buf = 136446722;
            v87 = "__nw_protocol_input_available";
            v88 = 2082;
            v89 = v38;
            v90 = 2048;
            v91 = v34;
            _os_log_impl(&dword_181A37000, v36, v37, "%{public}s protocol %{public}s (%p) has invalid input_available callback", buf, 0x20u);
          }
        }

        else if (v80 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v36 = __nwlog_obj();
          v53 = type;
          v54 = os_log_type_enabled(v36, type);
          if (backtrace_string)
          {
            if (v54)
            {
              v55 = v34[2];
              if (!v55)
              {
                v55 = "invalid";
              }

              *buf = 136446978;
              v87 = "__nw_protocol_input_available";
              v88 = 2082;
              v89 = v55;
              v90 = 2048;
              v91 = v34;
              v92 = 2082;
              v93 = backtrace_string;
              _os_log_impl(&dword_181A37000, v36, v53, "%{public}s protocol %{public}s (%p) has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(backtrace_string);
            goto LABEL_130;
          }

          if (v54)
          {
            v76 = v34[2];
            if (!v76)
            {
              v76 = "invalid";
            }

            *buf = 136446722;
            v87 = "__nw_protocol_input_available";
            v88 = 2082;
            v89 = v76;
            v90 = 2048;
            v91 = v34;
            _os_log_impl(&dword_181A37000, v36, v53, "%{public}s protocol %{public}s (%p) has invalid input_available callback, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v36 = __nwlog_obj();
          v67 = type;
          if (os_log_type_enabled(v36, type))
          {
            v68 = v34[2];
            if (!v68)
            {
              v68 = "invalid";
            }

            *buf = 136446722;
            v87 = "__nw_protocol_input_available";
            v88 = 2082;
            v89 = v68;
            v90 = 2048;
            v91 = v34;
            _os_log_impl(&dword_181A37000, v36, v67, "%{public}s protocol %{public}s (%p) has invalid input_available callback, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_130:
      if (v35)
      {
        free(v35);
      }

      goto LABEL_25;
    }

    v48 = __nwlog_obj();
    *buf = 136446210;
    v87 = "__nw_protocol_input_available";
    v49 = _os_log_send_and_compose_impl();

    v84[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v82) = 0;
    if (__nwlog_fault(v49, v84, &v82))
    {
      if (v84[0] == OS_LOG_TYPE_FAULT)
      {
        v50 = __nwlog_obj();
        v51 = v84[0];
        if (os_log_type_enabled(v50, v84[0]))
        {
          *buf = 136446210;
          v87 = "__nw_protocol_input_available";
          _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (v82 == 1)
      {
        v64 = __nw_create_backtrace_string();
        v50 = __nwlog_obj();
        v65 = v84[0];
        v66 = os_log_type_enabled(v50, v84[0]);
        if (v64)
        {
          if (v66)
          {
            *buf = 136446466;
            v87 = "__nw_protocol_input_available";
            v88 = 2082;
            v89 = v64;
            _os_log_impl(&dword_181A37000, v50, v65, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v64);
          goto LABEL_142;
        }

        if (v66)
        {
          *buf = 136446210;
          v87 = "__nw_protocol_input_available";
          _os_log_impl(&dword_181A37000, v50, v65, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v50 = __nwlog_obj();
        v74 = v84[0];
        if (os_log_type_enabled(v50, v84[0]))
        {
          *buf = 136446210;
          v87 = "__nw_protocol_input_available";
          _os_log_impl(&dword_181A37000, v50, v74, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_142:
    if (v49)
    {
      free(v49);
    }

    goto LABEL_29;
  }

LABEL_30:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_53;
  }

  BYTE3(v2->flow_in_connected) = v5 & 0xBF;
  v19 = *&v2[-1].log_str[41];
  if (v19)
  {
    v20 = v19[5];
    v21 = *&v2[-1].log_str[41];
    if (v20 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_36;
    }

    if (v20 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v21) = 0;
      v22 = 1;
      goto LABEL_39;
    }

    v21 = v19[8];
    if (v21)
    {
LABEL_36:
      v23 = *(v21 + 88);
      v22 = 0;
      if (v23)
      {
        *(v21 + 88) = v23 + 1;
      }

      LOBYTE(v21) = -1;
    }

    else
    {
      v22 = 1;
    }

LABEL_39:
    *v84 = v19;
    v85 = v21;
    v24 = *&v2[-1].log_str[33];
    v25 = &v2[-1].paths_log_id_num;
    if (v24 != &nw_protocol_ref_counted_handle)
    {
      if (v24 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v25) = 0;
        v26 = 1;
        goto LABEL_46;
      }

      v25 = *&v2[-1].log_str[57];
      if (!v25)
      {
        v26 = 1;
        goto LABEL_46;
      }
    }

    v27 = *(v25 + 11);
    v26 = 0;
    if (v27)
    {
      *(v25 + 11) = v27 + 1;
    }

    LOBYTE(v25) = -1;
LABEL_46:
    v82 = &v2[-1].paths_log_id_num;
    v83 = v25;
    v28 = v19[3];
    if (v28)
    {
      v29 = *(v28 + 184);
      if (v29)
      {
        v29(v19, &v2[-1].paths_log_id_num);
LABEL_49:
        if ((v26 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(&v82);
        }

        if ((v22 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(v84);
        }

        goto LABEL_53;
      }
    }

    v39 = v19;
    v40 = __nwlog_obj();
    v41 = v39[2];
    *buf = 136446722;
    v87 = "__nw_protocol_input_finished";
    if (!v41)
    {
      v41 = "invalid";
    }

    v88 = 2082;
    v89 = v41;
    v90 = 2048;
    v42 = v39;
    v91 = v39;
    v43 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (__nwlog_fault(v43, &type, &v80))
    {
      v44 = v22;
      if (type == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v45, type))
        {
          v47 = v42[2];
          if (!v47)
          {
            v47 = "invalid";
          }

          *buf = 136446722;
          v87 = "__nw_protocol_input_finished";
          v88 = 2082;
          v89 = v47;
          v90 = 2048;
          v91 = v42;
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s protocol %{public}s (%p) has invalid input_finished callback", buf, 0x20u);
        }
      }

      else if (v80 == 1)
      {
        v60 = __nw_create_backtrace_string();
        v45 = __nwlog_obj();
        v61 = type;
        v62 = os_log_type_enabled(v45, type);
        if (v60)
        {
          if (v62)
          {
            v63 = "invalid";
            if (v42[2])
            {
              v63 = v42[2];
            }

            *buf = 136446978;
            v87 = "__nw_protocol_input_finished";
            v88 = 2082;
            v89 = v63;
            v90 = 2048;
            v91 = v42;
            v92 = 2082;
            v93 = v60;
            _os_log_impl(&dword_181A37000, v45, v61, "%{public}s protocol %{public}s (%p) has invalid input_finished callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          v22 = v44;
          free(v60);
          goto LABEL_137;
        }

        if (v62)
        {
          v77 = "invalid";
          if (v42[2])
          {
            v77 = v42[2];
          }

          *buf = 136446722;
          v87 = "__nw_protocol_input_finished";
          v88 = 2082;
          v89 = v77;
          v90 = 2048;
          v91 = v42;
          _os_log_impl(&dword_181A37000, v45, v61, "%{public}s protocol %{public}s (%p) has invalid input_finished callback, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        v45 = __nwlog_obj();
        v72 = type;
        if (os_log_type_enabled(v45, type))
        {
          v73 = "invalid";
          if (v42[2])
          {
            v73 = v42[2];
          }

          *buf = 136446722;
          v87 = "__nw_protocol_input_finished";
          v88 = 2082;
          v89 = v73;
          v90 = 2048;
          v91 = v42;
          _os_log_impl(&dword_181A37000, v45, v72, "%{public}s protocol %{public}s (%p) has invalid input_finished callback, backtrace limit exceeded", buf, 0x20u);
        }
      }

      v22 = v44;
    }

LABEL_137:
    if (v43)
    {
      free(v43);
    }

    goto LABEL_49;
  }

  v56 = __nwlog_obj();
  *buf = 136446210;
  v87 = "__nw_protocol_input_finished";
  v57 = _os_log_send_and_compose_impl();

  v84[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v82) = 0;
  if (__nwlog_fault(v57, v84, &v82))
  {
    if (v84[0] == OS_LOG_TYPE_FAULT)
    {
      v58 = __nwlog_obj();
      v59 = v84[0];
      if (os_log_type_enabled(v58, v84[0]))
      {
        *buf = 136446210;
        v87 = "__nw_protocol_input_finished";
        _os_log_impl(&dword_181A37000, v58, v59, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v82 == 1)
    {
      v69 = __nw_create_backtrace_string();
      v58 = __nwlog_obj();
      v70 = v84[0];
      v71 = os_log_type_enabled(v58, v84[0]);
      if (v69)
      {
        if (v71)
        {
          *buf = 136446466;
          v87 = "__nw_protocol_input_finished";
          v88 = 2082;
          v89 = v69;
          _os_log_impl(&dword_181A37000, v58, v70, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v69);
        goto LABEL_147;
      }

      if (v71)
      {
        *buf = 136446210;
        v87 = "__nw_protocol_input_finished";
        _os_log_impl(&dword_181A37000, v58, v70, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v58 = __nwlog_obj();
      v75 = v84[0];
      if (os_log_type_enabled(v58, v84[0]))
      {
        *buf = 136446210;
        v87 = "__nw_protocol_input_finished";
        _os_log_impl(&dword_181A37000, v58, v75, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_147:
  if (v57)
  {
    free(v57);
  }

LABEL_53:
}

void sub_181C7AC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  if ((v13 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  if ((v12 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va1);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZL49nw_protocol_instance_flush_batched_input_internalP31NWConcrete_nw_protocol_instance_block_invoke(uint64_t a1, uint64_t a2)
{
  v105 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  object = nw_hash_node_get_object(a2);
  v6 = *(extra + 52);
  if ((v6 & 0x10) == 0)
  {
    return 1;
  }

  v7 = object;
  if (*(extra + 16))
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = v8 - 96;
    }

    else
    {
      v9 = 0;
    }

    if (object)
    {
      v10 = object[5];
      v11 = object;
      if (v10 == &nw_protocol_ref_counted_handle)
      {
        goto LABEL_11;
      }

      if (v10 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v11) = 0;
        v12 = 1;
        goto LABEL_14;
      }

      v11 = object[8];
      if (v11)
      {
LABEL_11:
        v13 = v11[11];
        v12 = 0;
        if (v13)
        {
          v11[11] = v13 + 1;
        }

        LOBYTE(v11) = -1;
      }

      else
      {
        v12 = 1;
      }

LABEL_14:
      *v95 = object;
      v96 = v11;
      if (v8)
      {
        v14 = *(v9 + 40);
        v15 = v9;
        if (v14 != &nw_protocol_ref_counted_handle)
        {
          if (v14 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v15) = 0;
            v16 = 1;
            goto LABEL_22;
          }

          v15 = *(v9 + 64);
          if (!v15)
          {
            v16 = 1;
            goto LABEL_22;
          }
        }

        v17 = *(v15 + 88);
        v16 = 0;
        if (v17)
        {
          *(v15 + 88) = v17 + 1;
        }

        LOBYTE(v15) = -1;
LABEL_22:
        *v92 = v9;
        v93 = v15;
        v18 = object[3];
        if (v18)
        {
          v19 = *(v18 + 64);
          if (v19)
          {
            v19(object);
LABEL_25:
            if ((v16 & 1) == 0)
            {
              nw::release_if_needed<nw_protocol *>(v92);
            }

LABEL_27:
            if ((v12 & 1) == 0)
            {
              nw::release_if_needed<nw_protocol *>(v95);
            }

LABEL_29:
            v6 = *(extra + 52);
            goto LABEL_30;
          }
        }

        v33 = __nwlog_obj();
        v34 = v7[2];
        *buf = 136446722;
        v98 = "__nw_protocol_input_available";
        if (!v34)
        {
          v34 = "invalid";
        }

        v99 = 2082;
        v100 = v34;
        v101 = 2048;
        v102 = v7;
        v35 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v91 = 0;
        if (__nwlog_fault(v35, &type, &v91))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v36 = __nwlog_obj();
            v37 = type;
            if (os_log_type_enabled(v36, type))
            {
              v38 = v7[2];
              if (!v38)
              {
                v38 = "invalid";
              }

              *buf = 136446722;
              v98 = "__nw_protocol_input_available";
              v99 = 2082;
              v100 = v38;
              v101 = 2048;
              v102 = v7;
              _os_log_impl(&dword_181A37000, v36, v37, "%{public}s protocol %{public}s (%p) has invalid input_available callback", buf, 0x20u);
            }
          }

          else if (v91 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v36 = __nwlog_obj();
            v54 = type;
            v55 = os_log_type_enabled(v36, type);
            if (backtrace_string)
            {
              if (v55)
              {
                v56 = v7[2];
                if (!v56)
                {
                  v56 = "invalid";
                }

                *buf = 136446978;
                v98 = "__nw_protocol_input_available";
                v99 = 2082;
                v100 = v56;
                v101 = 2048;
                v102 = v7;
                v103 = 2082;
                v104 = backtrace_string;
                _os_log_impl(&dword_181A37000, v36, v54, "%{public}s protocol %{public}s (%p) has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(backtrace_string);
              goto LABEL_161;
            }

            if (v55)
            {
              v89 = v7[2];
              if (!v89)
              {
                v89 = "invalid";
              }

              *buf = 136446722;
              v98 = "__nw_protocol_input_available";
              v99 = 2082;
              v100 = v89;
              v101 = 2048;
              v102 = v7;
              _os_log_impl(&dword_181A37000, v36, v54, "%{public}s protocol %{public}s (%p) has invalid input_available callback, no backtrace", buf, 0x20u);
            }
          }

          else
          {
            v36 = __nwlog_obj();
            v75 = type;
            if (os_log_type_enabled(v36, type))
            {
              v76 = v7[2];
              if (!v76)
              {
                v76 = "invalid";
              }

              *buf = 136446722;
              v98 = "__nw_protocol_input_available";
              v99 = 2082;
              v100 = v76;
              v101 = 2048;
              v102 = v7;
              _os_log_impl(&dword_181A37000, v36, v75, "%{public}s protocol %{public}s (%p) has invalid input_available callback, backtrace limit exceeded", buf, 0x20u);
            }
          }
        }

LABEL_161:
        if (v35)
        {
          free(v35);
        }

        goto LABEL_25;
      }

      v49 = __nwlog_obj();
      *buf = 136446210;
      v98 = "__nw_protocol_input_available";
      v50 = _os_log_send_and_compose_impl();

      v92[0] = OS_LOG_TYPE_ERROR;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v50, v92, &type))
      {
        if (v92[0] == OS_LOG_TYPE_FAULT)
        {
          v51 = __nwlog_obj();
          v52 = v92[0];
          if (os_log_type_enabled(v51, v92[0]))
          {
            *buf = 136446210;
            v98 = "__nw_protocol_input_available";
            _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null other_protocol", buf, 0xCu);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v72 = __nw_create_backtrace_string();
          v51 = __nwlog_obj();
          v73 = v92[0];
          v74 = os_log_type_enabled(v51, v92[0]);
          if (v72)
          {
            if (v74)
            {
              *buf = 136446466;
              v98 = "__nw_protocol_input_available";
              v99 = 2082;
              v100 = v72;
              _os_log_impl(&dword_181A37000, v51, v73, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v72);
            goto LABEL_178;
          }

          if (v74)
          {
            *buf = 136446210;
            v98 = "__nw_protocol_input_available";
            _os_log_impl(&dword_181A37000, v51, v73, "%{public}s called with null other_protocol, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v51 = __nwlog_obj();
          v86 = v92[0];
          if (os_log_type_enabled(v51, v92[0]))
          {
            *buf = 136446210;
            v98 = "__nw_protocol_input_available";
            _os_log_impl(&dword_181A37000, v51, v86, "%{public}s called with null other_protocol, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_178:
      if (v50)
      {
        free(v50);
      }

      goto LABEL_27;
    }

    v45 = __nwlog_obj();
    *buf = 136446210;
    v98 = "__nw_protocol_input_available";
    v46 = _os_log_send_and_compose_impl();

    v95[0] = OS_LOG_TYPE_ERROR;
    v92[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v46, v95, v92))
    {
      if (v95[0] == OS_LOG_TYPE_FAULT)
      {
        v47 = __nwlog_obj();
        v48 = v95[0];
        if (os_log_type_enabled(v47, v95[0]))
        {
          *buf = 136446210;
          v98 = "__nw_protocol_input_available";
          _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (v92[0] == OS_LOG_TYPE_INFO)
      {
        v69 = __nw_create_backtrace_string();
        v47 = __nwlog_obj();
        v70 = v95[0];
        v71 = os_log_type_enabled(v47, v95[0]);
        if (v69)
        {
          if (v71)
          {
            *buf = 136446466;
            v98 = "__nw_protocol_input_available";
            v99 = 2082;
            v100 = v69;
            _os_log_impl(&dword_181A37000, v47, v70, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v69);
          goto LABEL_173;
        }

        if (v71)
        {
          *buf = 136446210;
          v98 = "__nw_protocol_input_available";
          _os_log_impl(&dword_181A37000, v47, v70, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v47 = __nwlog_obj();
        v85 = v95[0];
        if (os_log_type_enabled(v47, v95[0]))
        {
          *buf = 136446210;
          v98 = "__nw_protocol_input_available";
          _os_log_impl(&dword_181A37000, v47, v85, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_173:
    if (v46)
    {
      free(v46);
    }

    goto LABEL_29;
  }

LABEL_30:
  if ((v6 & 0x40404040) != 0x40)
  {
    return 1;
  }

  *(extra + 52) = v6 & 0xBFBF;
  v20 = *(a1 + 32);
  if (v20)
  {
    v21 = v20 - 96;
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v7[5];
    v23 = v7;
    if (v22 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_39;
    }

    if (v22 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v23) = 0;
      v24 = 1;
      goto LABEL_42;
    }

    v23 = v7[8];
    if (v23)
    {
LABEL_39:
      v25 = v23[11];
      v24 = 0;
      if (v25)
      {
        v23[11] = v25 + 1;
      }

      LOBYTE(v23) = -1;
    }

    else
    {
      v24 = 1;
    }

LABEL_42:
    *v95 = v7;
    v96 = v23;
    if (v20)
    {
      v26 = *(v21 + 40);
      v27 = v21;
      if (v26 != &nw_protocol_ref_counted_handle)
      {
        if (v26 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v27) = 0;
          v28 = 1;
          goto LABEL_50;
        }

        v27 = *(v21 + 64);
        if (!v27)
        {
          v28 = 1;
          goto LABEL_50;
        }
      }

      v29 = *(v27 + 88);
      v28 = 0;
      if (v29)
      {
        *(v27 + 88) = v29 + 1;
      }

      LOBYTE(v27) = -1;
LABEL_50:
      *v92 = v21;
      v93 = v27;
      v30 = v7[3];
      if (v30)
      {
        v31 = *(v30 + 184);
        if (v31)
        {
          v31(v7);
LABEL_53:
          if ((v28 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v92);
          }

LABEL_55:
          if ((v24 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v95);
          }

          return 1;
        }
      }

      v39 = __nwlog_obj();
      v40 = v7[2];
      *buf = 136446722;
      v98 = "__nw_protocol_input_finished";
      if (!v40)
      {
        v40 = "invalid";
      }

      v99 = 2082;
      v100 = v40;
      v101 = 2048;
      v102 = v7;
      v41 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v91 = 0;
      if (__nwlog_fault(v41, &type, &v91))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v42 = __nwlog_obj();
          v43 = type;
          if (os_log_type_enabled(v42, type))
          {
            v44 = v7[2];
            if (!v44)
            {
              v44 = "invalid";
            }

            *buf = 136446722;
            v98 = "__nw_protocol_input_finished";
            v99 = 2082;
            v100 = v44;
            v101 = 2048;
            v102 = v7;
            _os_log_impl(&dword_181A37000, v42, v43, "%{public}s protocol %{public}s (%p) has invalid input_finished callback", buf, 0x20u);
          }
        }

        else if (v91 == 1)
        {
          v65 = __nw_create_backtrace_string();
          v42 = __nwlog_obj();
          v66 = type;
          v67 = os_log_type_enabled(v42, type);
          if (v65)
          {
            if (v67)
            {
              v68 = v7[2];
              if (!v68)
              {
                v68 = "invalid";
              }

              *buf = 136446978;
              v98 = "__nw_protocol_input_finished";
              v99 = 2082;
              v100 = v68;
              v101 = 2048;
              v102 = v7;
              v103 = 2082;
              v104 = v65;
              _os_log_impl(&dword_181A37000, v42, v66, "%{public}s protocol %{public}s (%p) has invalid input_finished callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v65);
            goto LABEL_168;
          }

          if (v67)
          {
            v90 = v7[2];
            if (!v90)
            {
              v90 = "invalid";
            }

            *buf = 136446722;
            v98 = "__nw_protocol_input_finished";
            v99 = 2082;
            v100 = v90;
            v101 = 2048;
            v102 = v7;
            _os_log_impl(&dword_181A37000, v42, v66, "%{public}s protocol %{public}s (%p) has invalid input_finished callback, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v42 = __nwlog_obj();
          v83 = type;
          if (os_log_type_enabled(v42, type))
          {
            v84 = v7[2];
            if (!v84)
            {
              v84 = "invalid";
            }

            *buf = 136446722;
            v98 = "__nw_protocol_input_finished";
            v99 = 2082;
            v100 = v84;
            v101 = 2048;
            v102 = v7;
            _os_log_impl(&dword_181A37000, v42, v83, "%{public}s protocol %{public}s (%p) has invalid input_finished callback, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_168:
      if (v41)
      {
        free(v41);
      }

      goto LABEL_53;
    }

    v61 = __nwlog_obj();
    *buf = 136446210;
    v98 = "__nw_protocol_input_finished";
    v62 = _os_log_send_and_compose_impl();

    v92[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v62, v92, &type))
    {
      if (v92[0] == OS_LOG_TYPE_FAULT)
      {
        v63 = __nwlog_obj();
        v64 = v92[0];
        if (os_log_type_enabled(v63, v92[0]))
        {
          *buf = 136446210;
          v98 = "__nw_protocol_input_finished";
          _os_log_impl(&dword_181A37000, v63, v64, "%{public}s called with null other_protocol", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v80 = __nw_create_backtrace_string();
        v63 = __nwlog_obj();
        v81 = v92[0];
        v82 = os_log_type_enabled(v63, v92[0]);
        if (v80)
        {
          if (v82)
          {
            *buf = 136446466;
            v98 = "__nw_protocol_input_finished";
            v99 = 2082;
            v100 = v80;
            _os_log_impl(&dword_181A37000, v63, v81, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v80);
          goto LABEL_188;
        }

        if (v82)
        {
          *buf = 136446210;
          v98 = "__nw_protocol_input_finished";
          _os_log_impl(&dword_181A37000, v63, v81, "%{public}s called with null other_protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v63 = __nwlog_obj();
        v88 = v92[0];
        if (os_log_type_enabled(v63, v92[0]))
        {
          *buf = 136446210;
          v98 = "__nw_protocol_input_finished";
          _os_log_impl(&dword_181A37000, v63, v88, "%{public}s called with null other_protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_188:
    if (v62)
    {
      free(v62);
    }

    goto LABEL_55;
  }

  v57 = __nwlog_obj();
  *buf = 136446210;
  v98 = "__nw_protocol_input_finished";
  v58 = _os_log_send_and_compose_impl();

  v95[0] = OS_LOG_TYPE_ERROR;
  v92[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v58, v95, v92))
  {
    if (v95[0] == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = v95[0];
      if (os_log_type_enabled(v59, v95[0]))
      {
        *buf = 136446210;
        v98 = "__nw_protocol_input_finished";
        _os_log_impl(&dword_181A37000, v59, v60, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v92[0] == OS_LOG_TYPE_INFO)
    {
      v77 = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v78 = v95[0];
      v79 = os_log_type_enabled(v59, v95[0]);
      if (v77)
      {
        if (v79)
        {
          *buf = 136446466;
          v98 = "__nw_protocol_input_finished";
          v99 = 2082;
          v100 = v77;
          _os_log_impl(&dword_181A37000, v59, v78, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v77);
        goto LABEL_183;
      }

      if (v79)
      {
        *buf = 136446210;
        v98 = "__nw_protocol_input_finished";
        _os_log_impl(&dword_181A37000, v59, v78, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v59 = __nwlog_obj();
      v87 = v95[0];
      if (os_log_type_enabled(v59, v95[0]))
      {
        *buf = 136446210;
        v98 = "__nw_protocol_input_finished";
        _os_log_impl(&dword_181A37000, v59, v87, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_183:
  if (v58)
  {
    free(v58);
  }

  return 1;
}

void sub_181C7BD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((v18 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a14);
  }

  if ((v17 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a17);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void nw_protocol_implementation_deliver_output_available(NWConcrete_nw_protocol_instance *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  v3 = BYTE5(v1->flow_in_connected);
  if (v3)
  {
    if (v1->parent_definition->variant == 3)
    {
      BYTE5(v1->flow_in_connected) = v3 & 0xFE;
      tqh_last = v1->pending_outbound_frames.tqh_last;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = ___ZL51nw_protocol_implementation_deliver_output_availableP31NWConcrete_nw_protocol_instance_block_invoke;
      v23[3] = &unk_1E6A3CDF8;
      v24 = v1;
      nw_hash_table_apply(tqh_last, v23);

      goto LABEL_2;
    }

    v5 = *&v1[-1].log_str[41];
    if (v5)
    {
      v6 = *(v5 + 24);
      if (v6)
      {
        if (*(v6 + 72))
        {
          BYTE5(v1->flow_in_connected) = v3 & 0xFE;
          nw::share(&v29, v5);
          nw::share(&v27, v2 - 12);
          v7 = *(v5 + 24);
          if (v7)
          {
            v8 = *(v7 + 72);
            if (v8)
            {
              v8(v5, v2 - 12);
LABEL_11:
              if (v28)
              {
                nw::release_if_needed<nw_protocol *>(&v27);
              }

              if (v30)
              {
                nw::release_if_needed<nw_protocol *>(&v29);
              }

              goto LABEL_2;
            }
          }

          v9 = __nwlog_obj();
          v10 = *(v5 + 16);
          *buf = 136446722;
          v32 = "__nw_protocol_output_available";
          if (!v10)
          {
            v10 = "invalid";
          }

          v33 = 2082;
          v34 = v10;
          v35 = 2048;
          v11 = v5;
          v36 = v5;
          v12 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v25 = 0;
          if (__nwlog_fault(v12, &type, &v25))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v13 = __nwlog_obj();
              v14 = type;
              if (os_log_type_enabled(v13, type))
              {
                v15 = *(v11 + 16);
                if (!v15)
                {
                  v15 = "invalid";
                }

                *buf = 136446722;
                v32 = "__nw_protocol_output_available";
                v33 = 2082;
                v34 = v15;
                v35 = 2048;
                v36 = v11;
                _os_log_impl(&dword_181A37000, v13, v14, "%{public}s protocol %{public}s (%p) has invalid output_available callback", buf, 0x20u);
              }
            }

            else if (v25 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v13 = __nwlog_obj();
              v17 = type;
              v18 = os_log_type_enabled(v13, type);
              if (backtrace_string)
              {
                if (v18)
                {
                  v19 = *(v11 + 16);
                  if (!v19)
                  {
                    v19 = "invalid";
                  }

                  *buf = 136446978;
                  v32 = "__nw_protocol_output_available";
                  v33 = 2082;
                  v34 = v19;
                  v35 = 2048;
                  v36 = v11;
                  v37 = 2082;
                  v38 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v13, v17, "%{public}s protocol %{public}s (%p) has invalid output_available callback, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(backtrace_string);
                goto LABEL_41;
              }

              if (v18)
              {
                v22 = *(v11 + 16);
                if (!v22)
                {
                  v22 = "invalid";
                }

                *buf = 136446722;
                v32 = "__nw_protocol_output_available";
                v33 = 2082;
                v34 = v22;
                v35 = 2048;
                v36 = v11;
                _os_log_impl(&dword_181A37000, v13, v17, "%{public}s protocol %{public}s (%p) has invalid output_available callback, no backtrace", buf, 0x20u);
              }
            }

            else
            {
              v13 = __nwlog_obj();
              v20 = type;
              if (os_log_type_enabled(v13, type))
              {
                v21 = *(v11 + 16);
                if (!v21)
                {
                  v21 = "invalid";
                }

                *buf = 136446722;
                v32 = "__nw_protocol_output_available";
                v33 = 2082;
                v34 = v21;
                v35 = 2048;
                v36 = v11;
                _os_log_impl(&dword_181A37000, v13, v20, "%{public}s protocol %{public}s (%p) has invalid output_available callback, backtrace limit exceeded", buf, 0x20u);
              }
            }
          }

LABEL_41:
          if (v12)
          {
            free(v12);
          }

          goto LABEL_11;
        }
      }
    }
  }

LABEL_2:
}

void sub_181C7C1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  if (a20)
  {
    nw::release_if_needed<nw_protocol *>(&a19);
  }

  if (a22)
  {
    nw::release_if_needed<nw_protocol *>(&a21);
  }

  _Unwind_Resume(a1);
}

uint64_t nw_protocol_service_requested_outbound_data(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v108 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v94 = a2;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v50 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_service_requested_outbound_data";
    v51 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v97) = 0;
    if (!__nwlog_fault(v51, type, &v97))
    {
      goto LABEL_144;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v52 = __nwlog_obj();
      v53 = type[0];
      if (os_log_type_enabled(v52, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_service_requested_outbound_data";
        _os_log_impl(&dword_181A37000, v52, v53, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_143;
    }

    if (v97 != 1)
    {
      v52 = __nwlog_obj();
      v72 = type[0];
      if (os_log_type_enabled(v52, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_service_requested_outbound_data";
        _os_log_impl(&dword_181A37000, v52, v72, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_143;
    }

    backtrace_string = __nw_create_backtrace_string();
    v52 = __nwlog_obj();
    v59 = type[0];
    v60 = os_log_type_enabled(v52, type[0]);
    if (!backtrace_string)
    {
      if (v60)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_service_requested_outbound_data";
        _os_log_impl(&dword_181A37000, v52, v59, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_143;
    }

    if (v60)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_service_requested_outbound_data";
      v102 = 2082;
      v103 = backtrace_string;
      _os_log_impl(&dword_181A37000, v52, v59, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_104;
  }

  if (!a3)
  {
    v54 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_service_requested_outbound_data";
    v51 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v97) = 0;
    if (!__nwlog_fault(v51, type, &v97))
    {
      goto LABEL_144;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v52 = __nwlog_obj();
      v55 = type[0];
      if (os_log_type_enabled(v52, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_service_requested_outbound_data";
        _os_log_impl(&dword_181A37000, v52, v55, "%{public}s called with null data_size", buf, 0xCu);
      }

      goto LABEL_143;
    }

    if (v97 != 1)
    {
      v52 = __nwlog_obj();
      v73 = type[0];
      if (os_log_type_enabled(v52, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_service_requested_outbound_data";
        _os_log_impl(&dword_181A37000, v52, v73, "%{public}s called with null data_size, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_143;
    }

    backtrace_string = __nw_create_backtrace_string();
    v52 = __nwlog_obj();
    v61 = type[0];
    v62 = os_log_type_enabled(v52, type[0]);
    if (!backtrace_string)
    {
      if (v62)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_service_requested_outbound_data";
        _os_log_impl(&dword_181A37000, v52, v61, "%{public}s called with null data_size, no backtrace", buf, 0xCu);
      }

      goto LABEL_143;
    }

    if (v62)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_service_requested_outbound_data";
      v102 = 2082;
      v103 = backtrace_string;
      _os_log_impl(&dword_181A37000, v52, v61, "%{public}s called with null data_size, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_104;
  }

  if (!v8)
  {
    v56 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_service_requested_outbound_data";
    v51 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v97) = 0;
    if (!__nwlog_fault(v51, type, &v97))
    {
      goto LABEL_144;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v52 = __nwlog_obj();
      v57 = type[0];
      if (os_log_type_enabled(v52, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_service_requested_outbound_data";
        _os_log_impl(&dword_181A37000, v52, v57, "%{public}s called with null available_outbound_data", buf, 0xCu);
      }

LABEL_143:

LABEL_144:
      if (v51)
      {
        free(v51);
      }

LABEL_29:
      v23 = 0;
      goto LABEL_175;
    }

    if (v97 != 1)
    {
      v52 = __nwlog_obj();
      v74 = type[0];
      if (os_log_type_enabled(v52, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_service_requested_outbound_data";
        _os_log_impl(&dword_181A37000, v52, v74, "%{public}s called with null available_outbound_data, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_143;
    }

    backtrace_string = __nw_create_backtrace_string();
    v52 = __nwlog_obj();
    v63 = type[0];
    v64 = os_log_type_enabled(v52, type[0]);
    if (!backtrace_string)
    {
      if (v64)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_service_requested_outbound_data";
        _os_log_impl(&dword_181A37000, v52, v63, "%{public}s called with null available_outbound_data, no backtrace", buf, 0xCu);
      }

      goto LABEL_143;
    }

    if (v64)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_service_requested_outbound_data";
      v102 = 2082;
      v103 = backtrace_string;
      _os_log_impl(&dword_181A37000, v52, v63, "%{public}s called with null available_outbound_data, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_104:

    free(backtrace_string);
    goto LABEL_144;
  }

  if (!*(v7 + 37))
  {
    if ((v7[411] & 4) != 0)
    {
      v23 = 0;
      v7[411] |= 8u;
LABEL_174:
      v7[413] |= 2u;
      goto LABEL_175;
    }

    v92 = 0;
    v93 = &v92;
    v18 = *(v7 - 8);
    if (v18)
    {
      v19 = *(v18 + 5);
      v20 = *(v7 - 8);
      if (v19 != &nw_protocol_ref_counted_handle)
      {
        if (v19 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v20) = 0;
          v21 = 1;
          goto LABEL_34;
        }

        v20 = *(v18 + 8);
        if (!v20)
        {
          v21 = 1;
          goto LABEL_34;
        }
      }

      v25 = *(v20 + 88);
      v21 = 0;
      if (v25)
      {
        *(v20 + 88) = v25 + 1;
      }

      LOBYTE(v20) = -1;
LABEL_34:
      *type = v18;
      v100 = v20;
      v26 = *(v7 - 7);
      v27 = v7 - 96;
      if (v26 == &nw_protocol_ref_counted_handle || v26 == &nw_protocol_ref_counted_additional_handle && (v27 = *(v7 - 4)) != 0)
      {
        v30 = *(v27 + 11);
        v29 = 0;
        if (v30)
        {
          *(v27 + 11) = v30 + 1;
        }

        v28 = -1;
      }

      else
      {
        v28 = 0;
        v29 = 1;
      }

      v97 = v7 - 96;
      LOBYTE(v98) = v28;
      v31 = *(v18 + 3);
      if (v31)
      {
        v32 = *(v31 + 88);
        if (v32)
        {
          v33 = v32();
          if (v29)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }
      }

      v65 = v18;
      v66 = __nwlog_obj();
      v67 = *(v65 + 2);
      *buf = 136446722;
      *&buf[4] = "__nw_protocol_get_output_frames";
      if (!v67)
      {
        v67 = "invalid";
      }

      v102 = 2082;
      v103 = v67;
      v104 = 2048;
      v91 = v65;
      v105 = v65;
      v68 = _os_log_send_and_compose_impl();

      v96 = OS_LOG_TYPE_ERROR;
      v95 = 0;
      if (__nwlog_fault(v68, &v96, &v95))
      {
        if (v96 == OS_LOG_TYPE_FAULT)
        {
          v69 = __nwlog_obj();
          v70 = v96;
          if (os_log_type_enabled(v69, v96))
          {
            v71 = *(v91 + 2);
            if (!v71)
            {
              v71 = "invalid";
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_output_frames";
            v102 = 2082;
            v103 = v71;
            v104 = 2048;
            v105 = v91;
            _os_log_impl(&dword_181A37000, v69, v70, "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback", buf, 0x20u);
          }

LABEL_163:

          goto LABEL_164;
        }

        if (v95 != 1)
        {
          v69 = __nwlog_obj();
          v86 = v96;
          if (os_log_type_enabled(v69, v96))
          {
            v87 = "invalid";
            if (*(v91 + 2))
            {
              v87 = *(v91 + 2);
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_output_frames";
            v102 = 2082;
            v103 = v87;
            v104 = 2048;
            v105 = v91;
            _os_log_impl(&dword_181A37000, v69, v86, "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, backtrace limit exceeded", buf, 0x20u);
          }

          goto LABEL_163;
        }

        v79 = __nw_create_backtrace_string();
        v69 = __nwlog_obj();
        v80 = v96;
        v81 = os_log_type_enabled(v69, v96);
        if (!v79)
        {
          if (v81)
          {
            v89 = "invalid";
            if (*(v91 + 2))
            {
              v89 = *(v91 + 2);
            }

            *buf = 136446722;
            *&buf[4] = "__nw_protocol_get_output_frames";
            v102 = 2082;
            v103 = v89;
            v104 = 2048;
            v105 = v91;
            _os_log_impl(&dword_181A37000, v69, v80, "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, no backtrace", buf, 0x20u);
          }

          goto LABEL_163;
        }

        if (v81)
        {
          v82 = "invalid";
          if (*(v91 + 2))
          {
            v82 = *(v91 + 2);
          }

          *buf = 136446978;
          *&buf[4] = "__nw_protocol_get_output_frames";
          v102 = 2082;
          v103 = v82;
          v104 = 2048;
          v105 = v91;
          v106 = 2082;
          v107 = v79;
          _os_log_impl(&dword_181A37000, v69, v80, "%{public}s protocol %{public}s (%p) has invalid get_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v79);
      }

LABEL_164:
      if (v68)
      {
        free(v68);
      }

      v33 = 0;
      if (v29)
      {
LABEL_45:
        if (v21)
        {
          if (!v33)
          {
            goto LABEL_173;
          }
        }

        else
        {
          nw::release_if_needed<nw_protocol *>(type);
          if (!v33)
          {
LABEL_173:
            v23 = 0;
            goto LABEL_174;
          }
        }

        v34 = v92;
        v35 = v34;
        v36 = v34[4];
        v37 = v34[5];
        v38 = v36 + 5;
        if (!v36)
        {
          v38 = &v93;
        }

        *v38 = v37;
        *v37 = v36;
        v34[4] = 0;
        v34[5] = 0;
        (v9)[2](v9, v34);

        goto LABEL_69;
      }

LABEL_44:
      nw::release_if_needed<nw_protocol *>(&v97);
      goto LABEL_45;
    }

    v75 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_protocol_get_output_frames";
    v76 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v97) = 0;
    if (__nwlog_fault(v76, type, &v97))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v77 = __nwlog_obj();
        v78 = type[0];
        if (os_log_type_enabled(v77, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_output_frames";
          _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else if (v97 == 1)
      {
        v83 = __nw_create_backtrace_string();
        v77 = __nwlog_obj();
        v84 = type[0];
        v85 = os_log_type_enabled(v77, type[0]);
        if (v83)
        {
          if (v85)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_get_output_frames";
            v102 = 2082;
            v103 = v83;
            _os_log_impl(&dword_181A37000, v77, v84, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v83);
          goto LABEL_171;
        }

        if (v85)
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_output_frames";
          _os_log_impl(&dword_181A37000, v77, v84, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v77 = __nwlog_obj();
        v88 = type[0];
        if (os_log_type_enabled(v77, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_get_output_frames";
          _os_log_impl(&dword_181A37000, v77, v88, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_171:
    if (v76)
    {
      free(v76);
    }

    goto LABEL_173;
  }

  v10 = nw_protocol_implementation_lookup_path(v7, a2, &v94);
  if (!v10)
  {
    if ((v7[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_service_requested_outbound_data";
        v102 = 2082;
        v103 = v7 + 415;
        v104 = 2080;
        v105 = " ";
        v106 = 2048;
        v107 = v94;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sNo path found for %lx", buf, 0x2Au);
      }
    }

    v9[2](v9, 0);
    goto LABEL_69;
  }

  if ((*(v10 + 153) & 2) == 0)
  {
    v97 = 0;
    v98 = &v97;
    v11 = v10;
    v12 = *(v10 + 32);
    if (v12)
    {
      v13 = v12[3];
      if (v13)
      {
        v14 = *(v13 + 88);
        if (v14)
        {
          v15 = v12[5];
          v16 = v12;
          if (v15 != &nw_protocol_ref_counted_handle)
          {
            if (v15 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v16) = 0;
              v17 = 1;
              goto LABEL_56;
            }

            v16 = v12[8];
            if (!v16)
            {
              v17 = 1;
              goto LABEL_56;
            }
          }

          v39 = v16[11];
          v17 = 0;
          if (v39)
          {
            v16[11] = v39 + 1;
          }

          LOBYTE(v16) = -1;
LABEL_56:
          *buf = v12;
          buf[8] = v16;
          v40 = *(v7 - 7);
          v41 = v7 - 96;
          if (v40 == &nw_protocol_ref_counted_handle || v40 == &nw_protocol_ref_counted_additional_handle && (v41 = *(v7 - 4)) != 0)
          {
            v44 = *(v41 + 11);
            v43 = 0;
            if (v44)
            {
              *(v41 + 11) = v44 + 1;
            }

            v42 = -1;
          }

          else
          {
            v42 = 0;
            v43 = 1;
          }

          *type = v7 - 96;
          v100 = v42;
          v23 = v14();
          if (v43)
          {
            if (v17)
            {
              goto LABEL_65;
            }
          }

          else
          {
            nw::release_if_needed<nw_protocol *>(type);
            if (v17)
            {
LABEL_65:
              if (v23)
              {
LABEL_66:
                v45 = v97;
                v46 = v45;
                v47 = *(v45 + 4);
                v48 = *(v45 + 5);
                v49 = v47 + 5;
                if (!v47)
                {
                  v49 = &v98;
                }

                *v49 = v48;
                *v48 = v47;
                *(v45 + 4) = 0;
                *(v45 + 5) = 0;
                nw_frame_get_flow_id(v45, v11 + 64);
                *(v11 + 56) = nw_frame_get_finalizer_context(v46);
                (v9)[2](v9, v46);

LABEL_69:
                v23 = 1;
                goto LABEL_175;
              }

LABEL_72:
              *(v11 + 153) |= 1u;
              goto LABEL_175;
            }
          }

          nw::release_if_needed<nw_protocol *>(buf);
          if (v23)
          {
            goto LABEL_66;
          }

          goto LABEL_72;
        }
      }
    }

    if ((v7[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_service_requested_outbound_data";
        v102 = 2082;
        v103 = v7 + 415;
        v104 = 2080;
        v105 = " ";
        v106 = 2048;
        v107 = v94;
        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sOutput handler is torn down for path %lx", buf, 0x2Au);
      }
    }

    goto LABEL_29;
  }

  v23 = 0;
  *(v10 + 153) |= 5u;
LABEL_175:

  return v23;
}

void nw_protocol_data_trim(void *a1, unsigned int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    if (nw_frame_claim(v5, v6, a2, 0))
    {
      nw_frame_collapse(v5);
      nw_frame_unclaim(v5, v7, a2, 0);
    }

    goto LABEL_5;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_data_trim";
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
        v19 = "nw_protocol_data_trim";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null data", buf, 0xCu);
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
          v19 = "nw_protocol_data_trim";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_protocol_data_trim";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null data, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_data_trim";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v9)
  {
    free(v9);
  }

LABEL_5:
}

uint64_t nw_protocol_udp_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v85 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v78 = "nw_protocol_udp_finalize_output_frames";
    v47 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v76 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v47, type, &v76))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v48 = __nwlog_obj();
        v49 = type[0];
        if (os_log_type_enabled(v48, type[0]))
        {
          *buf = 136446210;
          v78 = "nw_protocol_udp_finalize_output_frames";
          v50 = "%{public}s called with null protocol";
LABEL_129:
          _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0xCu);
        }
      }

      else if (v76 == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v48 = __nwlog_obj();
        v49 = type[0];
        v55 = os_log_type_enabled(v48, type[0]);
        if (backtrace_string)
        {
          if (v55)
          {
            *buf = 136446466;
            v78 = "nw_protocol_udp_finalize_output_frames";
            v79 = 2082;
            v80 = backtrace_string;
            _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_130;
        }

        if (v55)
        {
          *buf = 136446210;
          v78 = "nw_protocol_udp_finalize_output_frames";
          v50 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_129;
        }
      }

      else
      {
        v48 = __nwlog_obj();
        v49 = type[0];
        if (os_log_type_enabled(v48, type[0]))
        {
          *buf = 136446210;
          v78 = "nw_protocol_udp_finalize_output_frames";
          v50 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_129;
        }
      }
    }

LABEL_130:
    if (v47)
    {
      free(v47);
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
  if (handle == &nw_protocol_ref_counted_handle)
  {
LABEL_18:
    *type = 0;
    v72 = type;
    v73 = 0x2000000000;
    v74 = 0;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 0x40000000;
    v66 = ___ZL38nw_protocol_udp_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
    v67 = &unk_1E6A2B248;
    v69 = a1;
    p_output_handler = &v8[1].output_handler;
    v68 = type;
    tqh_first = a2->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v14 = *(tqh_first + 4);
      v15 = (v66)(v65);
      tqh_first = v14;
    }

    while ((v15 & 1) != 0);
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_17);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
      output_handler = v8->output_handler;
      if (output_handler)
      {
        goto LABEL_26;
      }
    }

    else
    {
      output_handler = v8->output_handler;
      if (output_handler)
      {
LABEL_26:
        v17 = output_handler->handle;
        v18 = output_handler;
        if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v18 = *output_handler[1].flow_id) != 0)
        {
          v25 = v18[1].callbacks;
          if (v25)
          {
            v19 = 0;
            v18[1].callbacks = (&v25->add_input_handler + 1);
            v20 = output_handler->callbacks;
            if (!v20)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v19 = 0;
            v20 = output_handler->callbacks;
            if (!v20)
            {
              goto LABEL_76;
            }
          }
        }

        else
        {
          v19 = 1;
          v20 = output_handler->callbacks;
          if (!v20)
          {
            goto LABEL_76;
          }
        }

        finalize_output_frames = v20->finalize_output_frames;
        if (finalize_output_frames)
        {
          v27 = finalize_output_frames(output_handler, a2);
          if (v19)
          {
            goto LABEL_53;
          }

          goto LABEL_42;
        }

LABEL_76:
        __nwlog_obj();
        name = output_handler->identifier->name;
        *buf = 136446722;
        v78 = "__nw_protocol_finalize_output_frames";
        if (!name)
        {
          name = "invalid";
        }

        v79 = 2082;
        v80 = name;
        v81 = 2048;
        v82 = output_handler;
        v42 = _os_log_send_and_compose_impl();
        v76 = OS_LOG_TYPE_ERROR;
        v75 = 0;
        if (__nwlog_fault(v42, &v76, &v75))
        {
          if (v76 == OS_LOG_TYPE_FAULT)
          {
            v43 = __nwlog_obj();
            v44 = v76;
            if (!os_log_type_enabled(v43, v76))
            {
              goto LABEL_123;
            }

            v45 = output_handler->identifier->name;
            if (!v45)
            {
              v45 = "invalid";
            }

            *buf = 136446722;
            v78 = "__nw_protocol_finalize_output_frames";
            v79 = 2082;
            v80 = v45;
            v81 = 2048;
            v82 = output_handler;
            v46 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback";
LABEL_122:
            _os_log_impl(&dword_181A37000, v43, v44, v46, buf, 0x20u);
            goto LABEL_123;
          }

          if (v75 != 1)
          {
            v43 = __nwlog_obj();
            v44 = v76;
            if (!os_log_type_enabled(v43, v76))
            {
              goto LABEL_123;
            }

            v62 = output_handler->identifier->name;
            if (!v62)
            {
              v62 = "invalid";
            }

            *buf = 136446722;
            v78 = "__nw_protocol_finalize_output_frames";
            v79 = 2082;
            v80 = v62;
            v81 = 2048;
            v82 = output_handler;
            v46 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded";
            goto LABEL_122;
          }

          v64 = v19;
          v51 = __nw_create_backtrace_string();
          v43 = __nwlog_obj();
          v44 = v76;
          v52 = os_log_type_enabled(v43, v76);
          if (!v51)
          {
            v19 = v64;
            if (!v52)
            {
              goto LABEL_123;
            }

            v63 = output_handler->identifier->name;
            if (!v63)
            {
              v63 = "invalid";
            }

            *buf = 136446722;
            v78 = "__nw_protocol_finalize_output_frames";
            v79 = 2082;
            v80 = v63;
            v81 = 2048;
            v82 = output_handler;
            v46 = "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace";
            goto LABEL_122;
          }

          if (v52)
          {
            v53 = output_handler->identifier->name;
            if (!v53)
            {
              v53 = "invalid";
            }

            *buf = 136446978;
            v78 = "__nw_protocol_finalize_output_frames";
            v79 = 2082;
            v80 = v53;
            v81 = 2048;
            v82 = output_handler;
            v83 = 2082;
            v84 = v51;
            _os_log_impl(&dword_181A37000, v43, v44, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v51);
          v19 = v64;
        }

LABEL_123:
        if (v42)
        {
          free(v42);
        }

        v27 = 0;
        if (v19)
        {
          goto LABEL_53;
        }

LABEL_42:
        v28 = output_handler->handle;
        if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
        {
          v29 = output_handler[1].callbacks;
          if (v29)
          {
            v30 = (v29 - 1);
            output_handler[1].callbacks = v30;
            if (!v30)
            {
              v31 = *output_handler[1].flow_id;
              if (v31)
              {
                *output_handler[1].flow_id = 0;
                v31[2](v31);
                _Block_release(v31);
              }

              if (output_handler[1].flow_id[8])
              {
                v32 = *output_handler[1].flow_id;
                if (v32)
                {
                  _Block_release(v32);
                }
              }

              free(output_handler);
            }
          }
        }

        goto LABEL_53;
      }
    }

    __nwlog_obj();
    *buf = 136446210;
    v78 = "__nw_protocol_finalize_output_frames";
    v56 = _os_log_send_and_compose_impl();
    v76 = OS_LOG_TYPE_ERROR;
    v75 = 0;
    if (__nwlog_fault(v56, &v76, &v75))
    {
      if (v76 == OS_LOG_TYPE_FAULT)
      {
        v57 = __nwlog_obj();
        v58 = v76;
        if (os_log_type_enabled(v57, v76))
        {
          *buf = 136446210;
          v78 = "__nw_protocol_finalize_output_frames";
          v59 = "%{public}s called with null protocol";
LABEL_135:
          _os_log_impl(&dword_181A37000, v57, v58, v59, buf, 0xCu);
        }
      }

      else if (v75 == 1)
      {
        v60 = __nw_create_backtrace_string();
        v57 = __nwlog_obj();
        v58 = v76;
        v61 = os_log_type_enabled(v57, v76);
        if (v60)
        {
          if (v61)
          {
            *buf = 136446466;
            v78 = "__nw_protocol_finalize_output_frames";
            v79 = 2082;
            v80 = v60;
            _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v60);
          goto LABEL_136;
        }

        if (v61)
        {
          *buf = 136446210;
          v78 = "__nw_protocol_finalize_output_frames";
          v59 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_135;
        }
      }

      else
      {
        v57 = __nwlog_obj();
        v58 = v76;
        if (os_log_type_enabled(v57, v76))
        {
          *buf = 136446210;
          v78 = "__nw_protocol_finalize_output_frames";
          v59 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_135;
        }
      }
    }

LABEL_136:
    if (v56)
    {
      free(v56);
    }

    v27 = 0;
LABEL_53:
    _Block_object_dispose(type, 8);
    if (v6)
    {
      return v27;
    }

    goto LABEL_62;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v8 = *a1[1].flow_id;
    goto LABEL_18;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v78 = "nw_protocol_udp_finalize_output_frames";
  v9 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v76 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v9, type, &v76))
  {
    goto LABEL_59;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_59;
    }

    *buf = 136446210;
    v78 = "nw_protocol_udp_finalize_output_frames";
    v12 = "%{public}s called with null udp";
LABEL_57:
    v33 = v10;
    v34 = v11;
LABEL_58:
    _os_log_impl(&dword_181A37000, v33, v34, v12, buf, 0xCu);
    goto LABEL_59;
  }

  if (v76 != OS_LOG_TYPE_INFO)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_59;
    }

    *buf = 136446210;
    v78 = "nw_protocol_udp_finalize_output_frames";
    v12 = "%{public}s called with null udp, backtrace limit exceeded";
    goto LABEL_57;
  }

  v21 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v22 = gLogObj;
  v23 = type[0];
  v24 = os_log_type_enabled(gLogObj, type[0]);
  if (v21)
  {
    if (v24)
    {
      *buf = 136446466;
      v78 = "nw_protocol_udp_finalize_output_frames";
      v79 = 2082;
      v80 = v21;
      _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null udp, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v21);
  }

  else if (v24)
  {
    *buf = 136446210;
    v78 = "nw_protocol_udp_finalize_output_frames";
    v12 = "%{public}s called with null udp, no backtrace";
    v33 = v22;
    v34 = v23;
    goto LABEL_58;
  }

LABEL_59:
  if (v9)
  {
    free(v9);
  }

  v27 = 0;
  if ((v6 & 1) == 0)
  {
LABEL_62:
    v35 = v3->handle;
    if (v35 == &nw_protocol_ref_counted_handle || v35 == &nw_protocol_ref_counted_additional_handle && (v3 = *v3[1].flow_id) != 0)
    {
      v36 = v3[1].callbacks;
      if (v36)
      {
        v37 = (v36 - 1);
        v3[1].callbacks = v37;
        if (!v37)
        {
          v38 = *v3[1].flow_id;
          if (v38)
          {
            *v3[1].flow_id = 0;
            v38[2](v38);
            _Block_release(v38);
          }

          if (v3[1].flow_id[8])
          {
            v39 = *v3[1].flow_id;
            if (v39)
            {
              _Block_release(v39);
            }
          }

          free(v3);
        }
      }
    }
  }

  return v27;
}

uint64_t ___ZL38nw_protocol_udp_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v104 = *MEMORY[0x1E69E9840];
  nw_frame_unclaim(a2, a2, 8u, 0);
  v95 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v95);
  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = *(v5 + 64);
    if (v6)
    {
      ++*(v6 + 120);
    }

    *v4 = *(v5 + 88);
    *(v4 + 4) = bswap32(v95) >> 16;
    if (a2)
    {
      if (*(a2 + 176))
      {
        goto LABEL_30;
      }

      v7 = *(v5 + 80);
      if (v7 > 499)
      {
        if (v7 <= 699)
        {
          if (v7 == 500)
          {
            v7 = 2621728;
            goto LABEL_29;
          }

          if (v7 == 600)
          {
            v7 = 3146000;
            goto LABEL_29;
          }
        }

        else
        {
          switch(v7)
          {
            case 700:
              v7 = 3670272;
              goto LABEL_29;
            case 800:
              v7 = 4194688;
              goto LABEL_29;
            case 900:
              v7 = 4718992;
              goto LABEL_29;
          }
        }
      }

      else if (v7 <= 199)
      {
        if (!v7)
        {
          goto LABEL_29;
        }

        if (v7 == 100)
        {
          v7 = 524432;
          goto LABEL_29;
        }
      }

      else
      {
        switch(v7)
        {
          case 200:
            v7 = 1048704;
            goto LABEL_29;
          case 300:
            v7 = 1572880;
            goto LABEL_29;
          case 400:
            v7 = 2097184;
LABEL_29:
            *(a2 + 176) = v7;
            goto LABEL_30;
        }
      }

      v7 = 0;
      goto LABEL_29;
    }

    v41 = v4;
    __nwlog_obj();
    *buf = 136446210;
    v99 = "__nw_frame_get_service_class";
    v42 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (__nwlog_fault(v42, &type, &v96))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v43 = __nwlog_obj();
        v44 = type;
        if (!os_log_type_enabled(v43, type))
        {
          goto LABEL_141;
        }

        *buf = 136446210;
        v99 = "__nw_frame_get_service_class";
        v45 = "%{public}s called with null frame";
LABEL_140:
        _os_log_impl(&dword_181A37000, v43, v44, v45, buf, 0xCu);
        goto LABEL_141;
      }

      if (v96 != 1)
      {
        v43 = __nwlog_obj();
        v44 = type;
        if (!os_log_type_enabled(v43, type))
        {
          goto LABEL_141;
        }

        *buf = 136446210;
        v99 = "__nw_frame_get_service_class";
        v45 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_140;
      }

      backtrace_string = __nw_create_backtrace_string();
      v43 = __nwlog_obj();
      v44 = type;
      v47 = os_log_type_enabled(v43, type);
      if (!backtrace_string)
      {
        if (!v47)
        {
          goto LABEL_141;
        }

        *buf = 136446210;
        v99 = "__nw_frame_get_service_class";
        v45 = "%{public}s called with null frame, no backtrace";
        goto LABEL_140;
      }

      if (v47)
      {
        *buf = 136446466;
        v99 = "__nw_frame_get_service_class";
        v100 = 2082;
        v101 = backtrace_string;
        _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_141:
    if (v42)
    {
      free(v42);
    }

    __nwlog_obj();
    *buf = 136446210;
    v99 = "__nw_frame_set_traffic_class";
    v72 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (!__nwlog_fault(v72, &type, &v96))
    {
      goto LABEL_157;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v73 = __nwlog_obj();
      v74 = type;
      if (os_log_type_enabled(v73, type))
      {
        *buf = 136446210;
        v99 = "__nw_frame_set_traffic_class";
        v75 = "%{public}s called with null frame";
LABEL_156:
        _os_log_impl(&dword_181A37000, v73, v74, v75, buf, 0xCu);
      }
    }

    else if (v96 == 1)
    {
      v76 = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v74 = type;
      v77 = os_log_type_enabled(v73, type);
      if (v76)
      {
        if (v77)
        {
          *buf = 136446466;
          v99 = "__nw_frame_set_traffic_class";
          v100 = 2082;
          v101 = v76;
          _os_log_impl(&dword_181A37000, v73, v74, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v76);
        goto LABEL_157;
      }

      if (v77)
      {
        *buf = 136446210;
        v99 = "__nw_frame_set_traffic_class";
        v75 = "%{public}s called with null frame, no backtrace";
        goto LABEL_156;
      }
    }

    else
    {
      v73 = __nwlog_obj();
      v74 = type;
      if (os_log_type_enabled(v73, type))
      {
        *buf = 136446210;
        v99 = "__nw_frame_set_traffic_class";
        v75 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_156;
      }
    }

LABEL_157:
    if (v72)
    {
      free(v72);
    }

    v5 = *(a1 + 48);
    v4 = v41;
LABEL_30:
    v8 = *(v5 + 94);
    if ((~v8 & 0x14) == 0)
    {
      goto LABEL_31;
    }

    if ((v8 & 4) != 0)
    {
      v12 = *(v5 + 48) + *(v5 + 32) + bswap32(v95 + 17);
      v13 = ((WORD1(v12) + v12 + HIDWORD(v12)) >> 16) + (WORD1(v12) + v12 + WORD2(v12));
      v14 = -65535 * (((v13 >> 16) + v13) >> 16) + (v13 >> 16) + v13;
      v11 = WORD1(v14) + v14;
    }

    else
    {
      v10 = v4;
      v11 = in6_pseudo((v5 + 32), (v5 + 48), bswap32(v95 + 17));
      v4 = v10;
    }

    *(v4 + 6) = v11;
    v15 = *(v5 + 94);
    if ((v15 & 0x100) == 0)
    {
LABEL_44:
      v9 = *(a1 + 48);
      v17 = *(v9 + 94);
      if ((v17 & 0x100) != 0)
      {
        goto LABEL_52;
      }

      if ((v17 & 8) == 0)
      {
        goto LABEL_46;
      }

      if ((v17 & 4) != 0)
      {
        v25 = 20;
      }

      else
      {
        v25 = 40;
      }

      if ((v17 & 4) != 0)
      {
        v26 = 26;
      }

      else
      {
        v26 = 46;
      }

      if (a2)
      {
        if ((*(a2 + 204) & 0x100) == 0)
        {
          goto LABEL_46;
        }

        v27 = g_channel_set_internet_checksum_handler;
        if (!g_channel_set_internet_checksum_handler)
        {
          goto LABEL_46;
        }

        *(a2 + 203) |= 3u;
        v28 = v27(a2, 3, v25, v26);
        if (!v28)
        {
          goto LABEL_31;
        }

        if (v28 == 45)
        {
LABEL_46:
          v18 = *(a1 + 48);
          v19 = *(v18 + 94);
          if (in_finalize_cksum(a2, 6u, 1))
          {
            if (a2)
            {
              if ((*(a2 + 204) & 0x100) != 0 && g_channel_check_validity && (g_channel_check_validity(a2, *(a2 + 88)) & 1) == 0)
              {
LABEL_214:
                *(v18 + 64) = 0;
                *(v18 + 72) = 0;
                goto LABEL_31;
              }

LABEL_82:
              v33 = *(a2 + 52);
              if (v33)
              {
                v34 = (v33 - (*(a2 + 56) + *(a2 + 60)));
                v35 = *(v18 + 64);
                if ((v19 & 4) != 0)
                {
LABEL_201:
                  if (v35)
                  {
                    v87.i64[0] = vdupq_n_s64(1uLL).u64[0];
                    v87.i64[1] = v34;
                    v35[8] = vaddq_s64(v35[8], v87);
                  }

                  goto LABEL_31;
                }
              }

              else
              {
                v34 = 0;
                v35 = *(v18 + 64);
                if ((v19 & 4) != 0)
                {
                  goto LABEL_201;
                }
              }

LABEL_86:
              if (v35)
              {
                v36.i64[0] = vdupq_n_s64(1uLL).u64[0];
                v36.i64[1] = v34;
                v35[9] = vaddq_s64(v35[9], v36);
              }

LABEL_31:
              v9 = *(a1 + 48);
              if (!v9)
              {
                goto LABEL_58;
              }

LABEL_52:
              v20 = *(v9 + 72);
              if (!v20 || (++*(v20 + 32), (v21 = *(a1 + 48)) == 0) || (v22 = *(v21 + 72)) == 0)
              {
LABEL_58:
                ++*(*(*(a1 + 32) + 8) + 24);
                if (_nw_signposts_once != -1)
                {
                  dispatch_once(&_nw_signposts_once, &__block_literal_global_17);
                }

                if (_nw_signposts_enabled != 1 || !kdebug_is_enabled())
                {
                  goto LABEL_62;
                }

                if (a2)
                {
LABEL_100:
                  kdebug_trace();
LABEL_62:
                  if (v95 >= 9)
                  {
                    **(a1 + 48) = v95 + **(a1 + 48) - 8;
                  }

                  return 1;
                }

                __nwlog_obj();
                *buf = 136446210;
                v99 = "__nw_frame_effective_length";
                v88 = _os_log_send_and_compose_impl();
                type = OS_LOG_TYPE_ERROR;
                v96 = 0;
                if (__nwlog_fault(v88, &type, &v96))
                {
                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v89 = __nwlog_obj();
                    v90 = type;
                    if (!os_log_type_enabled(v89, type))
                    {
                      goto LABEL_235;
                    }

                    *buf = 136446210;
                    v99 = "__nw_frame_effective_length";
                    v91 = "%{public}s called with null frame";
                    goto LABEL_234;
                  }

                  if (v96 != 1)
                  {
                    v89 = __nwlog_obj();
                    v90 = type;
                    if (!os_log_type_enabled(v89, type))
                    {
                      goto LABEL_235;
                    }

                    *buf = 136446210;
                    v99 = "__nw_frame_effective_length";
                    v91 = "%{public}s called with null frame, backtrace limit exceeded";
                    goto LABEL_234;
                  }

                  v92 = __nw_create_backtrace_string();
                  v89 = __nwlog_obj();
                  v90 = type;
                  v93 = os_log_type_enabled(v89, type);
                  if (v92)
                  {
                    if (v93)
                    {
                      *buf = 136446466;
                      v99 = "__nw_frame_effective_length";
                      v100 = 2082;
                      v101 = v92;
                      _os_log_impl(&dword_181A37000, v89, v90, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v92);
                    goto LABEL_235;
                  }

                  if (v93)
                  {
                    *buf = 136446210;
                    v99 = "__nw_frame_effective_length";
                    v91 = "%{public}s called with null frame, no backtrace";
LABEL_234:
                    _os_log_impl(&dword_181A37000, v89, v90, v91, buf, 0xCu);
                  }
                }

LABEL_235:
                if (v88)
                {
                  free(v88);
                }

                goto LABEL_100;
              }

              if (a2)
              {
                v23 = *(a2 + 52);
LABEL_57:
                *(v22 + 40) += v23;
                goto LABEL_58;
              }

              __nwlog_obj();
              *buf = 136446210;
              v99 = "__nw_frame_effective_length";
              v56 = _os_log_send_and_compose_impl();
              type = OS_LOG_TYPE_ERROR;
              v96 = 0;
              if (__nwlog_fault(v56, &type, &v96))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  v57 = __nwlog_obj();
                  v58 = type;
                  if (os_log_type_enabled(v57, type))
                  {
                    *buf = 136446210;
                    v99 = "__nw_frame_effective_length";
                    v59 = "%{public}s called with null frame";
LABEL_205:
                    _os_log_impl(&dword_181A37000, v57, v58, v59, buf, 0xCu);
                  }
                }

                else if (v96 == 1)
                {
                  v78 = __nw_create_backtrace_string();
                  v57 = __nwlog_obj();
                  v58 = type;
                  v79 = os_log_type_enabled(v57, type);
                  if (v78)
                  {
                    if (v79)
                    {
                      *buf = 136446466;
                      v99 = "__nw_frame_effective_length";
                      v100 = 2082;
                      v101 = v78;
                      _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v78);
                    goto LABEL_206;
                  }

                  if (v79)
                  {
                    *buf = 136446210;
                    v99 = "__nw_frame_effective_length";
                    v59 = "%{public}s called with null frame, no backtrace";
                    goto LABEL_205;
                  }
                }

                else
                {
                  v57 = __nwlog_obj();
                  v58 = type;
                  if (os_log_type_enabled(v57, type))
                  {
                    *buf = 136446210;
                    v99 = "__nw_frame_effective_length";
                    v59 = "%{public}s called with null frame, backtrace limit exceeded";
                    goto LABEL_205;
                  }
                }
              }

LABEL_206:
              if (v56)
              {
                free(v56);
              }

              v23 = 0;
              v22 = *(*(a1 + 48) + 72);
              goto LABEL_57;
            }

            __nwlog_obj();
            *buf = 136446210;
            v99 = "__nw_frame_check_validity";
            v60 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v96 = 0;
            if (__nwlog_fault(v60, &type, &v96))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v61 = __nwlog_obj();
                v62 = type;
                if (!os_log_type_enabled(v61, type))
                {
                  goto LABEL_212;
                }

                *buf = 136446210;
                v99 = "__nw_frame_check_validity";
                v63 = "%{public}s called with null frame";
                goto LABEL_211;
              }

              if (v96 != 1)
              {
                v61 = __nwlog_obj();
                v62 = type;
                if (!os_log_type_enabled(v61, type))
                {
                  goto LABEL_212;
                }

                *buf = 136446210;
                v99 = "__nw_frame_check_validity";
                v63 = "%{public}s called with null frame, backtrace limit exceeded";
                goto LABEL_211;
              }

              v80 = __nw_create_backtrace_string();
              v61 = __nwlog_obj();
              v62 = type;
              v81 = os_log_type_enabled(v61, type);
              if (v80)
              {
                if (v81)
                {
                  *buf = 136446466;
                  v99 = "__nw_frame_check_validity";
                  v100 = 2082;
                  v101 = v80;
                  _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v80);
                goto LABEL_212;
              }

              if (v81)
              {
                *buf = 136446210;
                v99 = "__nw_frame_check_validity";
                v63 = "%{public}s called with null frame, no backtrace";
LABEL_211:
                _os_log_impl(&dword_181A37000, v61, v62, v63, buf, 0xCu);
              }
            }

LABEL_212:
            if (v60)
            {
              free(v60);
            }

            goto LABEL_214;
          }

          if (a2)
          {
            goto LABEL_82;
          }

          v94 = v19;
          __nwlog_obj();
          *buf = 136446210;
          v99 = "__nw_frame_unclaimed_length";
          v52 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v96 = 0;
          if (__nwlog_fault(v52, &type, &v96))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v53 = __nwlog_obj();
              v54 = type;
              if (!os_log_type_enabled(v53, type))
              {
                goto LABEL_198;
              }

              *buf = 136446210;
              v99 = "__nw_frame_unclaimed_length";
              v55 = "%{public}s called with null frame";
LABEL_197:
              _os_log_impl(&dword_181A37000, v53, v54, v55, buf, 0xCu);
              goto LABEL_198;
            }

            if (v96 != 1)
            {
              v53 = __nwlog_obj();
              v54 = type;
              if (!os_log_type_enabled(v53, type))
              {
                goto LABEL_198;
              }

              *buf = 136446210;
              v99 = "__nw_frame_unclaimed_length";
              v55 = "%{public}s called with null frame, backtrace limit exceeded";
              goto LABEL_197;
            }

            v70 = __nw_create_backtrace_string();
            v53 = __nwlog_obj();
            v54 = type;
            v71 = os_log_type_enabled(v53, type);
            if (!v70)
            {
              if (!v71)
              {
                goto LABEL_198;
              }

              *buf = 136446210;
              v99 = "__nw_frame_unclaimed_length";
              v55 = "%{public}s called with null frame, no backtrace";
              goto LABEL_197;
            }

            if (v71)
            {
              *buf = 136446466;
              v99 = "__nw_frame_unclaimed_length";
              v100 = 2082;
              v101 = v70;
              _os_log_impl(&dword_181A37000, v53, v54, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v70);
          }

LABEL_198:
          if (v52)
          {
            free(v52);
          }

          v34 = 0;
          v35 = *(v18 + 64);
          if ((v94 & 4) != 0)
          {
            goto LABEL_201;
          }

          goto LABEL_86;
        }

LABEL_76:
        v29 = v28;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v31 = *(a1 + 48);
          *buf = 136446722;
          v99 = "nw_protocol_udp_finalize_output_frames_block_invoke";
          if (v31)
          {
            v32 = (v31 + 96);
          }

          else
          {
            v32 = "";
          }

          v100 = 2082;
          v101 = v32;
          v102 = 1024;
          v103 = v29;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s %{public}s udp set internet checksum offload failed (err %d)", buf, 0x1Cu);
        }

        goto LABEL_46;
      }

      __nwlog_obj();
      *buf = 136446210;
      v99 = "__nw_frame_set_internet_checksum";
      v64 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v96 = 0;
      if (__nwlog_fault(v64, &type, &v96))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v65 = __nwlog_obj();
          v66 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446210;
            v99 = "__nw_frame_set_internet_checksum";
            v67 = "%{public}s called with null frame";
LABEL_217:
            _os_log_impl(&dword_181A37000, v65, v66, v67, buf, 0xCu);
          }
        }

        else if (v96 == 1)
        {
          v82 = __nw_create_backtrace_string();
          v65 = __nwlog_obj();
          v66 = type;
          v83 = os_log_type_enabled(v65, type);
          if (v82)
          {
            if (v83)
            {
              *buf = 136446466;
              v99 = "__nw_frame_set_internet_checksum";
              v100 = 2082;
              v101 = v82;
              _os_log_impl(&dword_181A37000, v65, v66, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v82);
            goto LABEL_218;
          }

          if (v83)
          {
            *buf = 136446210;
            v99 = "__nw_frame_set_internet_checksum";
            v67 = "%{public}s called with null frame, no backtrace";
            goto LABEL_217;
          }
        }

        else
        {
          v65 = __nwlog_obj();
          v66 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446210;
            v99 = "__nw_frame_set_internet_checksum";
            v67 = "%{public}s called with null frame, backtrace limit exceeded";
            goto LABEL_217;
          }
        }
      }

LABEL_218:
      if (v64)
      {
        free(v64);
      }

      v28 = 22;
      goto LABEL_76;
    }

    if ((v15 & 4) != 0)
    {
      v16 = 18;
    }

    else
    {
      v16 = 66;
    }

    if (a2)
    {
      if ((*(a2 + 204) & 0x100) != 0)
      {
        *(a2 + 203) |= v16;
      }

      else
      {
        *(v5 + 94) = v15 & 0xFEFF;
      }

      goto LABEL_44;
    }

    __nwlog_obj();
    *buf = 136446210;
    v99 = "__nw_frame_add_internet_csum_flags";
    v48 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (__nwlog_fault(v48, &type, &v96))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v49 = __nwlog_obj();
        v50 = type;
        if (os_log_type_enabled(v49, type))
        {
          *buf = 136446210;
          v99 = "__nw_frame_add_internet_csum_flags";
          v51 = "%{public}s called with null frame";
LABEL_187:
          _os_log_impl(&dword_181A37000, v49, v50, v51, buf, 0xCu);
        }
      }

      else if (v96 == 1)
      {
        v68 = __nw_create_backtrace_string();
        v49 = __nwlog_obj();
        v50 = type;
        v69 = os_log_type_enabled(v49, type);
        if (v68)
        {
          if (v69)
          {
            *buf = 136446466;
            v99 = "__nw_frame_add_internet_csum_flags";
            v100 = 2082;
            v101 = v68;
            _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v68);
          goto LABEL_188;
        }

        if (v69)
        {
          *buf = 136446210;
          v99 = "__nw_frame_add_internet_csum_flags";
          v51 = "%{public}s called with null frame, no backtrace";
          goto LABEL_187;
        }
      }

      else
      {
        v49 = __nwlog_obj();
        v50 = type;
        if (os_log_type_enabled(v49, type))
        {
          *buf = 136446210;
          v99 = "__nw_frame_add_internet_csum_flags";
          v51 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_187;
        }
      }
    }

LABEL_188:
    if (v48)
    {
      free(v48);
    }

    *(*(a1 + 48) + 94) &= ~0x100u;
    v84 = __nwlog_obj();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      v85 = *(a1 + 48);
      *buf = 136446722;
      v99 = "nw_protocol_udp_finalize_output_frames_block_invoke";
      if (v85)
      {
        v86 = (v85 + 96);
      }

      else
      {
        v86 = "";
      }

      v100 = 2082;
      v101 = v86;
      v102 = 1024;
      v103 = 22;
      _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_ERROR, "%{public}s %{public}s udp set internet checksum offload failed (err %d)", buf, 0x1Cu);
    }

    goto LABEL_44;
  }

  v37 = __nwlog_obj();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = *(a1 + 48);
    if (v38)
    {
      v39 = (v38 + 96);
    }

    else
    {
      v39 = "";
    }

    *buf = 136446466;
    v99 = "nw_protocol_udp_finalize_output_frames_block_invoke";
    v100 = 2082;
    v101 = v39;
    _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_INFO, "%{public}s %{public}s UDP frame is no longer valid", buf, 0x16u);
  }

  v40 = *(a1 + 48);
  if (v40)
  {
    *(v40 + 64) = 0;
    *(v40 + 72) = 0;
  }

  return 1;
}
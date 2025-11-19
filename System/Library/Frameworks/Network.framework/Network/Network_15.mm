void sub_181B590C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

BOOL nw_parameters_has_custom_proxy_configs(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_custom_proxy_configs(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_has_custom_proxy_configs";
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
        v12 = "nw_parameters_has_custom_proxy_configs";
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
            v12 = "nw_parameters_has_custom_proxy_configs";
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
        v12 = "nw_parameters_has_custom_proxy_configs";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_has_custom_proxy_configs";
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

uint64_t nw_path_should_fallback(void *a1, char a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    should_fallback = _nw_path_should_fallback(v3, a2);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_path_should_fallback";
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
        v18 = "nw_path_should_fallback";
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
          v18 = "nw_path_should_fallback";
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
        v18 = "nw_path_should_fallback";
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
        v18 = "nw_path_should_fallback";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  should_fallback = 0;
LABEL_3:

  return should_fallback;
}

BOOL nw_endpoint_handler_should_transform(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      has_transforms = _nw_parameters_has_transforms(v4);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_endpoint_handler_should_transform";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_endpoint_handler_should_transform";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null parameters", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_endpoint_handler_should_transform";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v24 = "nw_endpoint_handler_should_transform";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_endpoint_handler_should_transform";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_endpoint_handler_should_transform";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v9, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_endpoint_handler_should_transform";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null endpoint", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v21 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v24 = "nw_endpoint_handler_should_transform";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          v24 = "nw_endpoint_handler_should_transform";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_endpoint_handler_should_transform";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v9)
  {
    free(v9);
  }

  has_transforms = 0;
LABEL_4:

  return has_transforms;
}

uint64_t nw_parameters_internal_iterate_protocol_stack(void *a1, int a2, char a3, void *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = _nw_parameters_copy_default_protocol_stack(v7);
      v11 = v10;
      if (v10)
      {
        if (a2 > 2)
        {
          if (a2 != 3)
          {
            if (a2 == 4)
            {
              LODWORD(v22) = _nw_protocol_stack_get_persistent_application_protocol_count();
              application_protocol_count = _nw_protocol_stack_get_application_protocol_count();
              if (application_protocol_count)
              {
                if (v22 < application_protocol_count)
                {
                  v22 = v22;
                  v24 = application_protocol_count - 1;
                  do
                  {
                    v25 = _nw_protocol_stack_copy_application_protocol_at_index(v11, v22);
                    v26 = nw_protocol_options_copy_definition(v25);
                    v27 = (v9)[2](v9, v22, v26, v25);

                    if (v27)
                    {
                      v28 = v24 == v22;
                    }

                    else
                    {
                      v28 = 1;
                    }

                    ++v22;
                  }

                  while (!v28);
                }

                goto LABEL_110;
              }

              goto LABEL_40;
            }

            if (a2 == 5)
            {
              persistent_application_protocol_count = _nw_protocol_stack_get_persistent_application_protocol_count();
              if (persistent_application_protocol_count)
              {
                v13 = 0;
                v14 = persistent_application_protocol_count - 1;
                do
                {
                  v15 = _nw_protocol_stack_copy_application_protocol_at_index(v11, v13);
                  v16 = nw_protocol_options_copy_definition(v15);
                  v17 = (v9)[2](v9, v13, v16, v15);

                  if (v17)
                  {
                    v18 = v14 == v13;
                  }

                  else
                  {
                    v18 = 1;
                  }

                  ++v13;
                }

                while (!v18);
                goto LABEL_110;
              }

              goto LABEL_40;
            }

            goto LABEL_37;
          }

          v21 = _nw_protocol_stack_copy_transport_protocol(v10);
          v20 = v21;
          if (!v21)
          {
LABEL_111:

            goto LABEL_112;
          }

          if (_nw_protocol_options_is_tcp(v21))
          {
            if (a3)
            {
LABEL_109:

LABEL_110:
              v20 = 1;
              goto LABEL_111;
            }
          }

          else
          {
            is_udp = _nw_protocol_options_is_udp(v20);
            if (a3)
            {
              if (is_udp || !nw_protocol_options_is_quic(v20))
              {
                goto LABEL_109;
              }
            }

            else if (!is_udp && nw_protocol_options_is_quic(v20))
            {
              options = _nw_protocol_stack_copy_secondary_transport_protocol(v11);
              if (!options)
              {
                options = _nw_udp_create_options();
                _nw_udp_options_set_no_metadata(options, 1);
                _nw_protocol_stack_set_secondary_transport_protocol(v11, options);
              }

              v34 = nw_protocol_copy_udp_definition();
              (v9)[2](v9, 1, v34, options);

              goto LABEL_108;
            }
          }

          goto LABEL_50;
        }

        if (a2 != 1)
        {
          if (a2 != 2)
          {
LABEL_37:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v31 = gLogObj;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v57 = "nw_parameters_internal_iterate_protocol_stack";
              v58 = 1024;
              LODWORD(v59) = a2;
              _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s Unsupported protocol level %u", buf, 0x12u);
            }

            goto LABEL_40;
          }

          v19 = _nw_protocol_stack_copy_internet_protocol();
          if (!v19)
          {
LABEL_40:
            v20 = 0;
            goto LABEL_111;
          }

          v20 = v19;
LABEL_50:
          options = _nw_protocol_options_copy_definition();
          (v9)[2](v9, 0, options, v20);
LABEL_108:

          goto LABEL_109;
        }

        v20 = _nw_protocol_stack_copy_link_protocol(v10);
        if (v20)
        {
LABEL_102:
          if (nw_protocol_copy_ethernet_definition::onceToken == -1)
          {
            v52 = nw_protocol_copy_ethernet_definition::ethernet_definition;
            if (nw_protocol_copy_ethernet_definition::ethernet_definition)
            {
LABEL_104:
              options = os_retain(v52);
LABEL_107:
              (v9)[2](v9, 0, options, v20);
              goto LABEL_108;
            }
          }

          else
          {
            dispatch_once(&nw_protocol_copy_ethernet_definition::onceToken, &__block_literal_global_8_34215);
            v52 = nw_protocol_copy_ethernet_definition::ethernet_definition;
            if (nw_protocol_copy_ethernet_definition::ethernet_definition)
            {
              goto LABEL_104;
            }
          }

          options = 0;
          goto LABEL_107;
        }

        if (nw_protocol_copy_ethernet_definition::onceToken == -1)
        {
          v29 = nw_protocol_copy_ethernet_definition::ethernet_definition;
          if (nw_protocol_copy_ethernet_definition::ethernet_definition)
          {
LABEL_36:
            v30 = os_retain(v29);
LABEL_101:
            v20 = nw_protocol_create_options(v30);

            goto LABEL_102;
          }
        }

        else
        {
          dispatch_once(&nw_protocol_copy_ethernet_definition::onceToken, &__block_literal_global_8_34215);
          v29 = nw_protocol_copy_ethernet_definition::ethernet_definition;
          if (nw_protocol_copy_ethernet_definition::ethernet_definition)
          {
            goto LABEL_36;
          }
        }

        v30 = 0;
        goto LABEL_101;
      }

      v41 = __nwlog_obj();
      *buf = 136446210;
      v57 = "nw_parameters_internal_iterate_protocol_stack";
      v42 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v54 = 0;
      if (!__nwlog_fault(v42, &type, &v54))
      {
LABEL_97:
        if (v42)
        {
          free(v42);
        }

        goto LABEL_40;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v43 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v43, type))
        {
          *buf = 136446210;
          v57 = "nw_parameters_internal_iterate_protocol_stack";
          v45 = "%{public}s called with null stack";
LABEL_95:
          _os_log_impl(&dword_181A37000, v43, v44, v45, buf, 0xCu);
        }
      }

      else
      {
        if (v54 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v43 = __nwlog_obj();
          v44 = type;
          v51 = os_log_type_enabled(v43, type);
          if (backtrace_string)
          {
            if (v51)
            {
              *buf = 136446466;
              v57 = "nw_parameters_internal_iterate_protocol_stack";
              v58 = 2082;
              v59 = backtrace_string;
              _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_97;
          }

          if (!v51)
          {
            goto LABEL_96;
          }

          *buf = 136446210;
          v57 = "nw_parameters_internal_iterate_protocol_stack";
          v45 = "%{public}s called with null stack, no backtrace";
          goto LABEL_95;
        }

        v43 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v43, type))
        {
          *buf = 136446210;
          v57 = "nw_parameters_internal_iterate_protocol_stack";
          v45 = "%{public}s called with null stack, backtrace limit exceeded";
          goto LABEL_95;
        }
      }

LABEL_96:

      goto LABEL_97;
    }

    v40 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_parameters_internal_iterate_protocol_stack";
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v36, &type, &v54))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v37, type))
        {
          *buf = 136446210;
          v57 = "nw_parameters_internal_iterate_protocol_stack";
          v39 = "%{public}s called with null iterator";
          goto LABEL_88;
        }

        goto LABEL_89;
      }

      if (v54 != 1)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v37, type))
        {
          *buf = 136446210;
          v57 = "nw_parameters_internal_iterate_protocol_stack";
          v39 = "%{public}s called with null iterator, backtrace limit exceeded";
          goto LABEL_88;
        }

        goto LABEL_89;
      }

      v46 = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v38 = type;
      v49 = os_log_type_enabled(v37, type);
      if (!v46)
      {
        if (v49)
        {
          *buf = 136446210;
          v57 = "nw_parameters_internal_iterate_protocol_stack";
          v39 = "%{public}s called with null iterator, no backtrace";
          goto LABEL_88;
        }

        goto LABEL_89;
      }

      if (!v49)
      {
        goto LABEL_72;
      }

      *buf = 136446466;
      v57 = "nw_parameters_internal_iterate_protocol_stack";
      v58 = 2082;
      v59 = v46;
      v48 = "%{public}s called with null iterator, dumping backtrace:%{public}s";
LABEL_71:
      _os_log_impl(&dword_181A37000, v37, v38, v48, buf, 0x16u);
LABEL_72:

      free(v46);
    }
  }

  else
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v57 = "nw_parameters_internal_iterate_protocol_stack";
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v36, &type, &v54))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v37, type))
        {
          *buf = 136446210;
          v57 = "nw_parameters_internal_iterate_protocol_stack";
          v39 = "%{public}s called with null parameters";
LABEL_88:
          _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0xCu);
        }

LABEL_89:

        goto LABEL_90;
      }

      if (v54 != 1)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v37, type))
        {
          *buf = 136446210;
          v57 = "nw_parameters_internal_iterate_protocol_stack";
          v39 = "%{public}s called with null parameters, backtrace limit exceeded";
          goto LABEL_88;
        }

        goto LABEL_89;
      }

      v46 = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v38 = type;
      v47 = os_log_type_enabled(v37, type);
      if (!v46)
      {
        if (v47)
        {
          *buf = 136446210;
          v57 = "nw_parameters_internal_iterate_protocol_stack";
          v39 = "%{public}s called with null parameters, no backtrace";
          goto LABEL_88;
        }

        goto LABEL_89;
      }

      if (!v47)
      {
        goto LABEL_72;
      }

      *buf = 136446466;
      v57 = "nw_parameters_internal_iterate_protocol_stack";
      v58 = 2082;
      v59 = v46;
      v48 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_71;
    }
  }

LABEL_90:
  if (v36)
  {
    free(v36);
  }

  v20 = 0;
LABEL_112:

  return v20;
}

uint64_t nw_endpoint_proxy_handler_should_use_proxy(void *a1, void *a2, char a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = nw_endpoint_handler_copy_parameters(v5);
  if (v7)
  {
    v8 = nw_path_copy_endpoint(v6);
    if (_nw_path_should_use_proxy(v6, a3))
    {
      v9 = nw_parameters_copy_custom_proxy_configs(v7);
      if (!v9)
      {
        v9 = nw_path_copy_proxy_configs(v6);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v34 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_endpoint_proxy_handler_should_use_proxy_block_invoke;
      aBlock[3] = &unk_1E6A2F258;
      v27 = v8;
      v28 = v7;
      v10 = v6;
      v29 = v10;
      v30 = buf;
      if (v9)
      {
        _nw_array_apply(v9, aBlock);
        v10 = v29;
        v11 = *(*&buf[8] + 24);
      }

      else
      {
        v11 = 0;
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if ((_nw_parameters_get_proxy_applied(v7) & 1) == 0)
      {
        if ((_nw_parameters_get_privacy_proxy_strict_fail_closed(v7) & 1) != 0 || ((privacy_proxy_fail_closed = _nw_parameters_get_privacy_proxy_fail_closed(v7), v8) ? (v16 = privacy_proxy_fail_closed) : (v16 = 0), v16 == 1 && nw_path_can_support_endpoint(v6, v8)))
        {
          v12 = nw_path_copy_interface(v6);
          v13 = v12;
          if (v12 && (_nw_interface_get_type(v12) & 0xFFFFFFFB) != 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v14 = gLogObj;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_proxy_handler_should_use_proxy";
              _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_INFO, "%{public}s Proxies not present, but required to fail closed", buf, 0xCu);
            }

            v11 = 1;
            goto LABEL_24;
          }
        }
      }

      v11 = 0;
    }

LABEL_24:

    goto LABEL_25;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_endpoint_proxy_handler_should_use_proxy";
  v19 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (__nwlog_fault(v19, &type, &v31))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_proxy_handler_should_use_proxy";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v31 == 1)
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
          *&buf[4] = "nw_endpoint_proxy_handler_should_use_proxy";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_42;
      }

      if (v24)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_proxy_handler_should_use_proxy";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_proxy_handler_should_use_proxy";
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_42:
  if (v19)
  {
    free(v19);
  }

  v11 = 0;
LABEL_25:

  return v11 & 1;
}

uint64_t sub_181B5AEA8(char a1)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 156);
  v6 = *(v1 + 216);
  swift_beginAccess();
  if (a1)
  {
    goto LABEL_13;
  }

  v7 = 0;
  v8 = *(v3 + 236);
  v9 = (v8 >> 3) & 1;
  if ((v5 & 8) != 0)
  {
    LOBYTE(v9) = 0;
  }

  if ((v9 & 1) == 0 && (v8 & 0x20) == 0)
  {
LABEL_13:
    if (v4 || *(v6 + 16))
    {
      v7 = 1;
    }

    else
    {
      v11 = 0xCu >> *(v3 + 234);
      v7 = sub_181FD49D0() & v11;
    }
  }

  return v7 & 1;
}

uint64_t nw_protocol_options_copy_serialized_bytes(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    if (a2)
    {
      v7 = _nw_protocol_options_copy_serialized_bytes(v5, a2, a3);
      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_options_copy_serialized_bytes";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v10, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v22 = "nw_protocol_options_copy_serialized_bytes";
          v13 = "%{public}s called with null serialized_length";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v19 != 1)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v22 = "nw_protocol_options_copy_serialized_bytes";
          v13 = "%{public}s called with null serialized_length, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v18 = os_log_type_enabled(v11, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v22 = "nw_protocol_options_copy_serialized_bytes";
          v13 = "%{public}s called with null serialized_length, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v18)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v22 = "nw_protocol_options_copy_serialized_bytes";
      v23 = 2082;
      v24 = backtrace_string;
      v17 = "%{public}s called with null serialized_length, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v11, v12, v17, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_options_copy_serialized_bytes";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v10, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v22 = "nw_protocol_options_copy_serialized_bytes";
          v13 = "%{public}s called with null options";
LABEL_31:
          _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v19 != 1)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v22 = "nw_protocol_options_copy_serialized_bytes";
          v13 = "%{public}s called with null options, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v16 = os_log_type_enabled(v11, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v22 = "nw_protocol_options_copy_serialized_bytes";
          v13 = "%{public}s called with null options, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v16)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v22 = "nw_protocol_options_copy_serialized_bytes";
      v23 = 2082;
      v24 = backtrace_string;
      v17 = "%{public}s called with null options, dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_4:

  return v7;
}

void __nw_path_create_necp_parameters_block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  __n = 0;
  v4 = nw_protocol_options_copy_serialized_bytes(v3, &__n, 1);
  v5 = v4;
  if (!v4 || (v6 = __n) == 0)
  {
    if (!v4)
    {
LABEL_12:

      return;
    }

LABEL_11:
    free(v5);
    goto LABEL_12;
  }

  if (__n == -42)
  {
    v20 = __nwlog_obj();
    os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    v23 = 136446210;
    v24 = "nw_path_create_necp_parameters_block_invoke";
    v21 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v21))
    {
      goto LABEL_15;
    }

    free(v21);
  }

  v7 = malloc_type_malloc(v6 + 42, 0x6FD26DE1uLL);
  if (v7)
  {
LABEL_7:
    v10 = nw_protocol_options_copy_definition(v3);
    identifier = nw_protocol_definition_get_identifier(v10);
    v12 = *(identifier + 4);
    v13 = *(identifier + 1);
    *v7 = *identifier;
    v7[1] = v13;
    *(v7 + 4) = v12;
    v14 = __n;
    *(v7 + 20) = __n;
    memcpy(v7 + 42, v5, v14);
    v15 = xpc_data_create(v7, v6 + 42);
    v16 = *(*(*(a1 + 32) + 8) + 40);
    if (!v16)
    {
      v17 = xpc_array_create(0, 0);
      v18 = *(*(a1 + 32) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v16 = *(*(*(a1 + 32) + 8) + 40);
    }

    xpc_array_append_value(v16, v15);
    free(v7);
    *(*(*(a1 + 40) + 8) + 24) += v6 + 47;

    goto LABEL_11;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  v23 = 136446210;
  v24 = "nw_path_create_necp_parameters_block_invoke";
  v9 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v9))
  {
    free(v9);
    goto LABEL_7;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_181B5B750()
{
  if (nw_protocol_definition_get_serialize_in_parameters(*(v0 + 24)))
  {
    return 1;
  }

  result = nw_protocol_definition_get_should_serialize(*(v0 + 24));
  if (result)
  {
    if (*(v0 + 16))
    {
      return (result)(*(v0 + 24));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_definition_get_should_serialize(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[10];
    if (v2)
    {
      v3 = *(v2 + 256);
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_get_should_serialize";
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
        v16 = "nw_protocol_definition_get_should_serialize";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
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
          v16 = "nw_protocol_definition_get_should_serialize";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_get_should_serialize";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_get_should_serialize";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
  v1 = 0;
LABEL_5:

  return v3;
}

uint64_t sub_181B5BA58()
{
  v1 = *(v0 + 360);
  v2 = *(*(v0 + 280) + 16);

  v3 = nw_context_copy_proxy_configs(v2);
  if (!v3)
  {

    if (!v1)
    {
      return 0;
    }

    v4 = *(v1 + 24);

    return v4;
  }

  v4 = sub_1822C275C(v3);

  swift_unknownObjectRelease();
  if (!v1)
  {
    return v4;
  }

  v5 = *(v1 + 24);
  if (!v5)
  {
    return v4;
  }

  v7 = v5 + 16;
  v6 = *(v5 + 16);
  v71 = v4;
  v8 = v5 + 40;
  result = *(v1 + 24);
  v10 = *(v5 + 24);
  v11 = *(v7 + 16);
  v12 = v10 + v11;
  v63 = result;
  if (v6 >= v10 + v11)
  {
    v29 = v10;
    if (v12 < v11)
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    if (__OFSUB__(v12, v11))
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v30 = v4[3];
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v4[2] < v31 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181CA4444(isUniquelyReferenced_nonNull_native, v31);
    }

    sub_182080D5C((v4 + 2), (v4 + 5), v8 + 8 * v11, v29);

LABEL_105:

    return v4;
  }

  v13 = v4[3];
  v14 = v13 + v10;
  v15 = __OFADD__(v13, v10);

  if (v15)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v16 = swift_isUniquelyReferenced_nonNull_native();
  if (v4[2] < v14 || (v16 & 1) == 0)
  {
    sub_181CA4444(v16, v14);
  }

  result = sub_18207F44C(v4 + 2, (v4 + 5), &v72);
  v18 = v74;
  v17 = v75;
  v19 = v76;
  v20 = v73;
  if ((v76 & 1) != 0 || (v21 = v63[3], v73 >= v21))
  {
    result = sub_1820808FC(v7, v8, v72, v73, v63);
    v36 = result;
    v65 = result;
    v67 = v33;
    v69 = v34;
    if (v35 == v20)
    {
      v37 = v19;
    }

    else
    {
      v37 = 1;
    }

    if (v37)
    {
      v27 = v35;
    }

    else
    {
      if (v17 < 1)
      {
        v17 = 0;
      }

      else
      {
        v38 = 0;
        if (v33 != v34)
        {
          goto LABEL_52;
        }

LABEL_50:
        result = sub_181F47FDC();
        if (result)
        {
          v36 = v65;
          v33 = v67;
          while (1)
          {
LABEL_52:
            v39 = (v33 + 1);
            v67 = v33 + 1;
            if (!v18)
            {
              goto LABEL_125;
            }

            *(v18 + 8 * v38) = *(v36 + 8 * v33 + 40);
            if (v17 - 1 == v38)
            {
              break;
            }

            ++v38;
            result = swift_unknownObjectRetain();
            v33 = v39;
            if (v39 == v69)
            {
              goto LABEL_50;
            }
          }

          result = swift_unknownObjectRetain();
        }

        else
        {
          v17 = v38;
        }
      }

      v27 = v20 + v17;
      if (__OFADD__(v20, v17))
      {
        goto LABEL_122;
      }

      v36 = v65;
      v33 = v67;
      v34 = v69;
    }

    v77 = v36;
    v78 = v33;
    v79 = v34;
    goto LABEL_65;
  }

  v22 = 0;
  v23 = 0;
  v24 = v72;
  v25 = v63[4];
  v26 = (v25 + v21);
  if (v63[2] < v26)
  {
    v26 = v63[2];
  }

  v77 = v63;
  v78 = v25;
  v79 = v26;
  v27 = v73;
  if (!v73)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v25 != v79 || (result = sub_181F47FDC(), (result & 1) != 0))
  {
    while (1)
    {
      v28 = v78;
      v25 = ++v78;
      if (!v24)
      {
        goto LABEL_124;
      }

      result = v77[v28 + 5];
      *(v24 + 8 * v23) = result;
      v50 = __OFADD__(v23++, 1);
      if (v50)
      {
        break;
      }

      result = swift_unknownObjectRetain();
      if (v23 != v27)
      {
        goto LABEL_17;
      }

LABEL_20:
      result = v63;
      if (v22)
      {
        v23 = v27;
        goto LABEL_63;
      }

      if (v17 <= 0)
      {
        goto LABEL_64;
      }

      if (v25 == v79)
      {
        result = sub_181F47FDC();
        v23 = 0;
        if ((result & 1) == 0)
        {
          result = v63;
          goto LABEL_63;
        }
      }

      else
      {
        v23 = 0;
      }

      v22 = 1;
      v24 = v18;
      v27 = v17;
    }

LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  result = v63;
  if ((v22 & 1) == 0)
  {

    v27 = v23;
    goto LABEL_65;
  }

LABEL_63:
  v27 = v20 + v23;
  if (!__OFADD__(v20, v23))
  {
LABEL_64:

LABEL_65:
    v40 = v4[3];
    v50 = __OFADD__(v40, v27);
    v41 = v40 + v27;
    if (!v50)
    {
      v4[3] = v41;
      v42 = v78;
      v66 = v77;
      v68 = v78;
      v70 = v79;
      if (v78 != v79)
      {
        goto LABEL_69;
      }

LABEL_67:
      result = sub_181F47FDC();
      if ((result & 1) == 0)
      {

        goto LABEL_105;
      }

      v42 = v68;
      v41 = v4[3];
      while (1)
      {
LABEL_69:
        v43 = v42 + 1;
        v68 = (v42 + 1);
        v44 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_108;
        }

        v45 = v66[v42 + 5];
        swift_unknownObjectRetain();
        v4 = v71;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (v71[2] < v44 || (result & 1) == 0)
        {
          result = sub_181CA4444(result, v44);
          v4 = v71;
        }

        v46 = v4[3];
        v47 = v4[4];
        v50 = __OFADD__(v47, v46);
        v48 = v47 + v46;
        if (v50)
        {
          goto LABEL_109;
        }

        if (v46 < 0)
        {
          if (v48 < 0)
          {
            v52 = v4[2];
            v50 = __OFADD__(v48, v52);
            v48 += v52;
            if (v50)
            {
              goto LABEL_115;
            }
          }
        }

        else
        {
          v49 = v4[2];
          v50 = __OFSUB__(v48, v49);
          v51 = v48 - v49;
          if (v51 < 0 == v50)
          {
            v48 = v51;
            if (v50)
            {
              goto LABEL_113;
            }
          }
        }

        v4[v48 + 5] = v45;
        v50 = __OFADD__(v46, 1);
        v53 = v46 + 1;
        if (v50)
        {
          goto LABEL_110;
        }

        v4[3] = v53;
        result = sub_18207F44C(v4 + 2, (v4 + 5), &v77);
        v54 = 0;
        v55 = 0;
        v56 = v77;
        v57 = v78;
        v59 = v79;
        v58 = v80;
        v60 = v81 | (v80 < 1);
        v64 = v78;
        if (v78)
        {
          break;
        }

        while (1)
        {
          if (v54)
          {
            v55 = v57;
LABEL_98:
            v57 = v64 + v55;
            if (__OFADD__(v64, v55))
            {
              goto LABEL_112;
            }

            break;
          }

          if (v60)
          {
            break;
          }

          if (v43 == v70)
          {
            result = sub_181F47FDC();
            v55 = 0;
            if ((result & 1) == 0)
            {
              goto LABEL_98;
            }
          }

          else
          {
            v55 = 0;
          }

          v54 = 1;
          v56 = v59;
          v57 = v58;
LABEL_93:
          v61 = v68;
          v43 = v68 + 1;
          v68 = (v68 + 1);
          if (!v56)
          {
            goto LABEL_116;
          }

          result = v66[v61 + 5];
          v56[v55] = result;
          v50 = __OFADD__(v55++, 1);
          if (v50)
          {
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

          result = swift_unknownObjectRetain();
          if (v55 != v57)
          {
            goto LABEL_83;
          }
        }

LABEL_99:
        v62 = v4[3];
        v50 = __OFADD__(v62, v57);
        v41 = v62 + v57;
        if (v50)
        {
          goto LABEL_111;
        }

        v4[3] = v41;
        v42 = v68;
        if (v68 == v70)
        {
          goto LABEL_67;
        }
      }

LABEL_83:
      if (v43 == v70)
      {
        result = sub_181F47FDC();
        if ((result & 1) == 0)
        {
          v57 = v55;
          if (v54)
          {
            goto LABEL_98;
          }

          goto LABEL_99;
        }
      }

      goto LABEL_93;
    }

    goto LABEL_121;
  }

LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
  return result;
}

uint64_t nw_endpoint_is_equal(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (!(v5 | v6))
  {
    goto LABEL_2;
  }

  is_equal = 0;
  if (v5 && v6)
  {
    if (v5 == v6)
    {
LABEL_2:
      is_equal = 1;
      goto LABEL_3;
    }

    is_equal = 0;
    if (v5 != &__block_literal_global_7016 && v6 != &__block_literal_global_7016)
    {
      v9 = v6;
      is_equal = _nw_endpoint_is_equal(v5, v6, a3);
      v6 = v9;
    }
  }

LABEL_3:

  return is_equal;
}

uint64_t sub_181B5C0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_181B5C160(uint64_t a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t nw_path_get_dns_service_id(void *a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_get_dns_service_id";
    v12 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v12, type, &v21))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type[0];
        if (os_log_type_enabled(v13, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_get_dns_service_id";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null path", buf, 0xCu);
        }
      }

      else if (v21 == 1)
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
            *&buf[4] = "nw_path_get_dns_service_id";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (v17)
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_get_dns_service_id";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v18 = type[0];
        if (os_log_type_enabled(v13, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_get_dns_service_id";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_26:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_28;
  }

  v5 = _nw_path_copy_endpoint(v3);
  v6 = nw_endpoint_get_type(v5);

  if (v6 != nw_endpoint_type_host)
  {
    goto LABEL_28;
  }

  if (!_nw_path_get_flow_divert_unit(v4) || !a2)
  {
    v8 = _nw_path_copy_endpoint(v4);
    hostname = nw_endpoint_get_hostname(v8);

    if (!hostname)
    {
      goto LABEL_29;
    }

    *type = 0;
    *buf = 0;
    *&buf[8] = 0;
    if (nw_path_get_vpn_config_uuid(v4, buf, type, 1, 1))
    {
      v9 = _nw_path_copy_direct_interface(v4);
      v10 = v9;
      if (v9)
      {
        _nw_interface_get_name(v9);
        hostname = ne_session_service_get_dns_service_id_for_interface();

        goto LABEL_29;
      }
    }

LABEL_28:
    hostname = 0;
    goto LABEL_29;
  }

  hostname = _nw_path_get_flow_divert_unit(v4);
LABEL_29:

  return hostname;
}

uint64_t nw_path_get_vpn_config_uuid(NWConcrete_nw_path *a1, unsigned __int8 (*a2)[16], int *a3, char a4, char a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = v9;
  if (v9)
  {
    if (a2)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v33 = 0;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = ___ZL27nw_path_get_vpn_config_uuidP18NWConcrete_nw_pathPA16_hPibbb_block_invoke;
      v26[3] = &unk_1E6A39CE8;
      v27 = a5;
      v28 = 1;
      v29 = a4;
      v26[5] = a2;
      v26[6] = a3;
      v26[4] = buf;
      _nw_path_enumerate_network_agents(v9, v26);
      v11 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      goto LABEL_4;
    }

    v17 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_get_vpn_config_uuid";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v14, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_get_vpn_config_uuid";
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null out_uuid", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v30 != 1)
      {
        v15 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_get_vpn_config_uuid";
          _os_log_impl(&dword_181A37000, v15, v25, "%{public}s called with null out_uuid, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          *&buf[4] = "nw_path_get_vpn_config_uuid";
          _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null out_uuid, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v23)
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_get_vpn_config_uuid";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null out_uuid, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_get_vpn_config_uuid";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v14, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_get_vpn_config_uuid";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null path", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v30 != 1)
      {
        v15 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_get_vpn_config_uuid";
          _os_log_impl(&dword_181A37000, v15, v24, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
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
          *&buf[4] = "nw_path_get_vpn_config_uuid";
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v21)
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_get_vpn_config_uuid";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v14)
  {
    free(v14);
  }

  v11 = 0;
LABEL_4:

  return v11 & 1;
}

void sub_181B5CA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void _nw_path_enumerate_required_network_agent_uuidsTm(uint64_t a1, void *aBlock, void (*a3)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  a3(a1, v5);

  _Block_release(v5);
}

uint64_t sub_181B5CB34(char *a1, uint64x2_t *a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  v5 = v4;
  if ((v3 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v10 = *(v3 + 52);
    v11 = *(v3 + 68);
    v6 = *(v3 + 84);

    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v10 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x34);
  v11 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x44);
  v7 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x54);

  if (v7)
  {
    return 0;
  }

LABEL_5:
  v8.i64[0] = 0xFFFFFFFFLL;
  v8.i64[1] = 0xFFFFFFFFLL;
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_u64(v10, v8), vcgtq_u64(v11, v8)))) & 1) == 0 && !(v10.i32[2] | v11.i32[0] | v10.i32[0] | v11.i32[2]))
  {
    return 0;
  }

  *a2 = v10;
  a2[1] = v11;
  return 1;
}

NWConcrete_nw_endpoint_mode_handler *nw_endpoint_handler_copy_transform(NWConcrete_nw_endpoint_handler *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1->mode != 5)
  {
    if ((*(v1 + 284) & 0x40) != 0)
    {
LABEL_46:
      v3 = 0;
      goto LABEL_47;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_45:

      goto LABEL_46;
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
    v24 = v10;
    if (mode > 2)
    {
      if (mode == 3)
      {
        v14 = logging_description;
        v15 = "proxy";
        goto LABEL_30;
      }

      if (mode != 4)
      {
        if (mode == 5)
        {
          v14 = logging_description;
          v15 = "transform";
          goto LABEL_30;
        }

        goto LABEL_27;
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
        goto LABEL_30;
      }

      if (mode != 1)
      {
        if (mode == 2)
        {
          v14 = logging_description;
          v15 = nw_endpoint_flow_mode_string(v11->mode_handler);
          goto LABEL_30;
        }

LABEL_27:
        v14 = logging_description;
        v15 = "unknown-mode";
        goto LABEL_30;
      }

      v14 = logging_description;
      v15 = "resolver";
    }

LABEL_30:

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
          goto LABEL_44;
        case 4:
          v22 = "fallback";
          goto LABEL_44;
        case 5:
          v22 = "transform";
          goto LABEL_44;
      }
    }

    else
    {
      switch(v20)
      {
        case 0:
          v22 = "path";
          goto LABEL_44;
        case 1:
          v22 = "resolver";
          goto LABEL_44;
        case 2:
          v21 = v19;
          v22 = nw_endpoint_flow_mode_string(v19[33]);
          v19 = v21;
LABEL_44:

          *buf = 136448002;
          v26 = "nw_endpoint_handler_copy_transform";
          v27 = 2082;
          id_str = v2->id_str;
          v29 = 2082;
          v30 = v5;
          v31 = 2082;
          v32 = v14;
          v33 = 2082;
          v34 = v24;
          v35 = 2082;
          v36 = v15;
          v37 = 2114;
          v38 = v18;
          v39 = 2082;
          v40 = v22;
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Endpoint handler is %{public}s, not transform", buf, 0x52u);

          goto LABEL_45;
      }
    }

    v22 = "unknown-mode";
    goto LABEL_44;
  }

  v3 = v1->mode_handler;
LABEL_47:

  return v3;
}

uint64_t ___ZL34nw_endpoint_transform_add_childrenP30NWConcrete_nw_endpoint_handler_block_invoke_97(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7 && !*(*(*(a1 + 56) + 8) + 40) && nw_protocol_transform_contains_protocol(*(a1 + 32), v7))
  {
    if (v6 == &__block_literal_global_7016)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 40)) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v15 = gconnectionLogObj;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          id_string = nw_endpoint_handler_get_id_string(*(a1 + 40));
          v17 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
          v18 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
          v19 = v18;
          v36 = v17;
          v20 = id_string;
          if (v18)
          {
            logging_description = _nw_endpoint_get_logging_description(v18);
          }

          else
          {
            logging_description = "<NULL>";
          }

          v27 = nw_endpoint_handler_state_string(*(a1 + 40));
          v28 = nw_endpoint_handler_mode_string(*(a1 + 40));
          v29 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
          *buf = 136448002;
          v38 = "nw_endpoint_transform_add_children_block_invoke";
          v39 = 2082;
          v40 = v20;
          v41 = 2082;
          v42 = v36;
          v43 = 2082;
          v44 = logging_description;
          v45 = 2082;
          v46 = v27;
          v47 = 2082;
          v48 = v28;
          v49 = 2114;
          v50 = v29;
          v51 = 2112;
          v52 = v7;
          _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Transform including protocol %@ cannot be used, unknown endpoint", buf, 0x52u);
        }
      }

      v30 = *(a1 + 48);
      v25 = a1 + 48;
      v31 = *(v30 + 32);
      if (v31 || (v32 = _nw_array_create(), v33 = *(*v25 + 32), *(*v25 + 32) = v32, v33, (v31 = *(*v25 + 32)) != 0))
      {
        _nw_array_append(v31, v7);
      }

      v26 = 0;
    }

    else
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
      if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 40)) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v8 = gconnectionLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = nw_endpoint_handler_get_id_string(*(a1 + 40));
          v10 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
          v11 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
          v12 = v11;
          v35 = v10;
          v13 = v9;
          if (v11)
          {
            v14 = _nw_endpoint_get_logging_description(v11);
          }

          else
          {
            v14 = "<NULL>";
          }

          v22 = nw_endpoint_handler_state_string(*(a1 + 40));
          v23 = nw_endpoint_handler_mode_string(*(a1 + 40));
          v24 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
          *buf = 136448258;
          v38 = "nw_endpoint_transform_add_children_block_invoke";
          v39 = 2082;
          v40 = v13;
          v41 = 2082;
          v42 = v35;
          v43 = 2082;
          v44 = v14;
          v45 = 2082;
          v46 = v22;
          v47 = 2082;
          v48 = v23;
          v49 = 2114;
          v50 = v24;
          v51 = 2112;
          v52 = v7;
          v53 = 2112;
          v54 = v6;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Transform including protocol %@ using endpoint %@", buf, 0x5Cu);
        }
      }

      v25 = a1 + 48;
      v26 = 1;
    }

    *(*v25 + 95) = v26;
  }

  return 1;
}

BOOL nw_resolver_create_dns_getaddrinfo_locked(NWConcrete_nw_resolver *a1, NWConcrete_nw_resolver_service *a2)
{
  v156 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = dnssd_getaddrinfo_create();
    v124 = v5 != 0;
    if (v5)
    {
      if (v4)
      {
        v6 = v4->service_host;
      }

      else
      {
        v6 = *(v3 + 3);
      }

      v140 = nw_resolver_derive_service_flags(v3, v6, *(v3 + 2));
      nw_resolver_get_scoped_interface_index(v3, &v140);
      v7 = nw_context_copy_workloop(*(v3 + 4));
      dnssd_getaddrinfo_set_queue();

      dnssd_getaddrinfo_set_flags();
      dnssd_getaddrinfo_set_interface_index();
      nw_endpoint_get_hostname(v6);
      dnssd_getaddrinfo_set_hostname();
      dnssd_getaddrinfo_set_protocols();
      if (nw_parameters_get_sensitive_redacted(*(v3 + 2)))
      {
        dnssd_getaddrinfo_set_log_privacy_level();
      }

      v8 = *(v3 + 2);
      if (v8)
      {
        if (_nw_parameters_get_prohibit_encrypted_dns(v8))
        {
          dnssd_getaddrinfo_prohibit_encrypted_dns();
        }

        goto LABEL_11;
      }

      v108 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_parameters_get_prohibit_encrypted_dns";
      v109 = _os_log_send_and_compose_impl();

      v142[0] = 16;
      v134.i8[0] = 0;
      if (__nwlog_fault(v109, v142, &v134))
      {
        if (v142[0] == 17)
        {
          v110 = __nwlog_obj();
          v111 = v142[0];
          if (os_log_type_enabled(v110, v142[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_parameters_get_prohibit_encrypted_dns";
            _os_log_impl(&dword_181A37000, v110, v111, "%{public}s called with null parameters", buf, 0xCu);
          }
        }

        else if (v134.u8[0] == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v110 = __nwlog_obj();
          v119 = v142[0];
          v120 = os_log_type_enabled(v110, v142[0]);
          if (backtrace_string)
          {
            if (v120)
            {
              *buf = 136446466;
              *&buf[4] = "nw_parameters_get_prohibit_encrypted_dns";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v110, v119, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_240;
          }

          if (v120)
          {
            *buf = 136446210;
            *&buf[4] = "nw_parameters_get_prohibit_encrypted_dns";
            _os_log_impl(&dword_181A37000, v110, v119, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v110 = __nwlog_obj();
          v123 = v142[0];
          if (os_log_type_enabled(v110, v142[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_parameters_get_prohibit_encrypted_dns";
            _os_log_impl(&dword_181A37000, v110, v123, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_240:
      if (v109)
      {
        free(v109);
      }

LABEL_11:
      if ((*(v3 + 371) & 0x40) != 0 && (*(v3 + 372) & 1) == 0)
      {
        dnssd_getaddrinfo_set_use_cache_only();
      }

      out_signature_length = 0;
      if (nw_endpoint_get_signature(*(v3 + 3), &out_signature_length) && out_signature_length)
      {
        dnssd_getaddrinfo_set_validation_data();
      }

      if (nw_parameters_get_account_id(*(v3 + 2)))
      {
        dnssd_getaddrinfo_set_account_id();
      }

      if (networkd_settings_get_BOOL(nw_setting_disable_svcb))
      {
        if ((*(v3 + 370) & 0x20) != 0)
        {
          goto LABEL_76;
        }

        if (*(v3 + 280))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v9 = gconnectionLogObj;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
            *&buf[12] = 2082;
            *&buf[14] = v3 + 280;
            _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s] Requesting SVCB disabled", buf, 0x16u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v20 = *(v3 + 91);
            *buf = 136446466;
            *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
            *&buf[12] = 1024;
            *&buf[14] = v20;
            _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s [R%u] Requesting SVCB disabled", buf, 0x12u);
          }
        }

        goto LABEL_75;
      }

      v10 = networkd_settings_get_BOOL(nw_setting_disable_svcb_router);
      v11 = *(v3 + 28);
      if (v11)
      {
        v9 = nw_path_copy_interface(v11);

        if (v9)
        {
          v12 = v10;
        }

        else
        {
          v12 = 0;
        }

        if (v12 && (_nw_interface_get_type(v9) == 1 || _nw_interface_get_type(v9) == 3))
        {
          v13 = nw_path_copy_gateways(*(v3 + 28));
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          buf[24] = 0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke;
          aBlock[3] = &unk_1E6A3BB28;
          v14 = v3;
          v137 = v14;
          v138 = buf;
          if (v13)
          {
            v15 = v14;
            _nw_array_apply(v13, aBlock);
            if (*(*&buf[8] + 24))
            {
              if ((*(v15 + 370) & 0x20) != 0)
              {
LABEL_74:

                _Block_object_dispose(buf, 8);
                goto LABEL_75;
              }

              if (*(v15 + 280))
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v16 = gconnectionLogObj;
                if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_73;
                }

                *v142 = 136446466;
                *&v142[4] = "nw_resolver_create_dns_getaddrinfo_locked";
                *&v142[12] = 2082;
                *&v142[14] = v15 + 280;
                v17 = "%{public}s [C%{public}s] Requesting SVCB disabled due to local router mitigation";
                v18 = v16;
                v19 = 22;
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v16 = gLogObj;
                if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                {
LABEL_73:

                  goto LABEL_74;
                }

                v32 = *(v15 + 91);
                *v142 = 136446466;
                *&v142[4] = "nw_resolver_create_dns_getaddrinfo_locked";
                *&v142[12] = 1024;
                *&v142[14] = v32;
                v17 = "%{public}s [R%u] Requesting SVCB disabled due to local router mitigation";
                v18 = v16;
                v19 = 18;
              }

              _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, v17, v142, v19);
              goto LABEL_73;
            }
          }

          _Block_object_dispose(buf, 8);
        }
      }

      else
      {
        v9 = 0;
      }

      if (v4)
      {
        v21 = v4;
        v22 = v21->priority == 0;

        if (!v22)
        {
LABEL_76:
          if (uuid_is_null(v3 + 256))
          {
            goto LABEL_99;
          }

          if ((*(v3 + 372) & 1) == 0)
          {
            if ((*(v3 + 370) & 0x20) != 0)
            {
LABEL_94:
              dnssd_getaddrinfo_add_resolver_uuid();
              goto LABEL_99;
            }

            if (*(v3 + 280))
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v33 = gconnectionLogObj;
              if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_93;
              }

              *buf = 136446978;
              *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
              *&buf[12] = 2082;
              *&buf[14] = v3 + 280;
              *&buf[22] = 1042;
              *&buf[24] = 16;
              *&buf[28] = 2098;
              *&buf[30] = v3 + 256;
              v34 = "%{public}s [C%{public}s] Requesting resolver UUID %{public,uuid_t}.16P";
              v35 = v33;
              v36 = 38;
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v33 = gLogObj;
              if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
LABEL_93:

                goto LABEL_94;
              }

              v41 = *(v3 + 91);
              *buf = 136446978;
              *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
              *&buf[12] = 1024;
              *&buf[14] = v41;
              *&buf[18] = 1042;
              *&buf[20] = 16;
              *&buf[24] = 2098;
              *&buf[26] = v3 + 256;
              v34 = "%{public}s [R%u] Requesting resolver UUID %{public,uuid_t}.16P";
              v35 = v33;
              v36 = 34;
            }

            _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, v34, buf, v36);
            goto LABEL_93;
          }

          if ((*(v3 + 370) & 0x20) != 0)
          {
            goto LABEL_99;
          }

          if (*(v3 + 280))
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v37 = gconnectionLogObj;
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_98;
            }

            *buf = 136446978;
            *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
            *&buf[12] = 2082;
            *&buf[14] = v3 + 280;
            *&buf[22] = 1042;
            *&buf[24] = 16;
            *&buf[28] = 2098;
            *&buf[30] = v3 + 256;
            v38 = "%{public}s [C%{public}s] Requesting failover from UUID %{public,uuid_t}.16P";
            v39 = v37;
            v40 = 38;
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v37 = gLogObj;
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
LABEL_98:

LABEL_99:
              dnssd_getaddrinfo_set_use_failover();
              if (!nw_context_get_require_encrypted_name_resolution(*(v3 + 4)))
              {
LABEL_118:
                v53 = getpid();
                memset(v142, 0, sizeof(v142));
                v134 = 0u;
                v135 = 0u;
                v54 = nw_copy_current_audit_token(v142);
                if (v54 && nw_parameters_has_delegated_proc_audit_token(*(v3 + 2), v142))
                {
                  goto LABEL_244;
                }

                if (!nw_parameters_has_delegated_proc_pid(*(v3 + 2), v53) && !nw_parameters_has_delegated_proc_uuid(*(v3 + 2)))
                {
LABEL_160:
                  objc_initWeak(location, v3);
                  v130[1] = MEMORY[0x1E69E9820];
                  v130[2] = 3221225472;
                  v130[3] = ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_207;
                  v130[4] = &unk_1E6A2C3C8;
                  v73 = v3;
                  v131 = v73;
                  v74 = v4;
                  v132 = v74;
                  v133 = v5;
                  dnssd_getaddrinfo_set_event_handler();
                  if ((*(v73 + 372) & 4) != 0)
                  {
                    v75 = nw_storage_copy_shared();
                    v76 = *(v3 + 3);
                    v77 = *(v3 + 4);
                    v127[0] = MEMORY[0x1E69E9820];
                    v127[1] = 3221225472;
                    v127[2] = ___ZL41nw_resolver_create_dns_getaddrinfo_lockedP22NWConcrete_nw_resolverP30NWConcrete_nw_resolver_service_block_invoke_209;
                    v127[3] = &unk_1E6A2C3F0;
                    objc_copyWeak(v130, location);
                    v128 = v73;
                    v129 = v74;
                    nw_storage_lookup_dns_cache(v75, v76, v77, v127);

                    objc_destroyWeak(v130);
                  }

                  objc_copyWeak(&v126, location);
                  v78 = v73;
                  v79 = v74;
                  v125 = v79;
                  dnssd_getaddrinfo_set_result_handler();
                  if (v4)
                  {
                    v80 = v79;
                    v81 = v5;
                    if (v80->gai)
                    {
                      dnssd_getaddrinfo_invalidate();
                      gai = v80->gai;
                      v80->gai = 0;

                      v83 = v80->gai;
                    }

                    else
                    {
                      v83 = 0;
                    }

                    v80->gai = v81;
                  }

                  else
                  {
                    objc_storeStrong(v78 + 6, v5);
                  }

                  dnssd_getaddrinfo_activate();
                  if ((*(v78 + 370) & 0x20) != 0)
                  {
                    goto LABEL_184;
                  }

                  if (*(v78 + 280))
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v84 = gconnectionLogObj;
                    if (!os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
                    {
                      goto LABEL_183;
                    }

                    v85 = *(v3 + 3);
                    v86 = v85;
                    if (v85)
                    {
                      logging_description = _nw_endpoint_get_logging_description(v85);
                    }

                    else
                    {
                      logging_description = "<NULL>";
                    }

                    v92 = *(v3 + 20);
                    v93 = *(v78 + 6);
                    *buf = 136447491;
                    *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
                    *&buf[12] = 2082;
                    *&buf[14] = v78 + 280;
                    *&buf[22] = 2082;
                    *&buf[24] = logging_description;
                    *&buf[32] = 1024;
                    *&buf[34] = v140;
                    *&buf[38] = 1024;
                    *&buf[40] = v92;
                    *&buf[44] = 2117;
                    *&buf[46] = v93;
                    v94 = "%{public}s [C%{public}s] Starting host resolution %{public}s, flags %#x proto %u using %{sensitive}@";
                    v95 = v84;
                    v96 = 54;
                  }

                  else
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v84 = gLogObj;
                    if (!os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
                    {
LABEL_183:

LABEL_184:
                      objc_destroyWeak(&v126);

                      objc_destroyWeak(location);
LABEL_185:

                      goto LABEL_186;
                    }

                    v88 = *(v78 + 91);
                    v89 = *(v3 + 3);
                    v90 = v89;
                    if (v89)
                    {
                      v91 = _nw_endpoint_get_logging_description(v89);
                    }

                    else
                    {
                      v91 = "<NULL>";
                    }

                    v97 = *(v3 + 20);
                    v98 = *(v78 + 6);
                    *buf = 136447491;
                    *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
                    *&buf[12] = 1024;
                    *&buf[14] = v88;
                    *&buf[18] = 2082;
                    *&buf[20] = v91;
                    *&buf[28] = 1024;
                    *&buf[30] = v140;
                    *&buf[34] = 1024;
                    *&buf[36] = v97;
                    *&buf[40] = 2117;
                    *&buf[42] = v98;
                    v94 = "%{public}s [R%u] Starting host resolution %{public}s, flags %#x proto %u using %{sensitive}@";
                    v95 = v84;
                    v96 = 50;
                  }

                  _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_INFO, v94, buf, v96);
                  goto LABEL_183;
                }

                if (v54)
                {
LABEL_244:
                  if (nw_parameters_has_delegated_proc_audit_token(*(v3 + 2), v142) && nw_parameters_get_effective_audit_token(*(v3 + 2), &v134))
                  {
                    if ((*(v3 + 370) & 0x20) != 0)
                    {
LABEL_159:
                      *buf = v134;
                      *&buf[16] = v135;
                      dnssd_getaddrinfo_set_delegate_audit_token();
                      goto LABEL_160;
                    }

                    if (*(v3 + 280))
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v55 = gconnectionLogObj;
                      if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                      {
                        goto LABEL_158;
                      }

                      *buf = 136446722;
                      *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
                      *&buf[12] = 2082;
                      *&buf[14] = v3 + 280;
                      *&buf[22] = 1024;
                      *&buf[24] = DWORD1(v135);
                      v56 = "%{public}s [C%{public}s] Delegating DNS service to audit_token_t PID %d";
                      v57 = v55;
                      v58 = 28;
                    }

                    else
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v55 = gLogObj;
                      if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                      {
LABEL_158:

                        goto LABEL_159;
                      }

                      v72 = *(v3 + 91);
                      *buf = 136446722;
                      *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
                      *&buf[12] = 1024;
                      *&buf[14] = v72;
                      *&buf[18] = 1024;
                      *&buf[20] = DWORD1(v135);
                      v56 = "%{public}s [R%u] Delegating DNS service to audit_token_t PID %d";
                      v57 = v55;
                      v58 = 24;
                    }

                    _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, v56, buf, v58);
                    goto LABEL_158;
                  }
                }

                has_delegated_proc_pid = nw_parameters_has_delegated_proc_pid(*(v3 + 2), v53);
                v60 = *(v3 + 2);
                if (has_delegated_proc_pid)
                {
                  pid = nw_parameters_get_pid(v60);
                  if ((*(v3 + 370) & 0x20) != 0)
                  {
LABEL_149:
                    dnssd_getaddrinfo_set_delegate_pid();
                    goto LABEL_160;
                  }

                  if (*(v3 + 280))
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v62 = gconnectionLogObj;
                    if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_148;
                    }

                    *buf = 136446722;
                    *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
                    *&buf[12] = 2082;
                    *&buf[14] = v3 + 280;
                    *&buf[22] = 1024;
                    *&buf[24] = pid;
                    v63 = "%{public}s [C%{public}s] Delegating DNS service to PID %d";
                    v64 = v62;
                    v65 = 28;
                  }

                  else
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v62 = gLogObj;
                    if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                    {
LABEL_148:

                      goto LABEL_149;
                    }

                    v70 = *(v3 + 91);
                    *buf = 136446722;
                    *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
                    *&buf[12] = 1024;
                    *&buf[14] = v70;
                    *&buf[18] = 1024;
                    *&buf[20] = pid;
                    v63 = "%{public}s [R%u] Delegating DNS service to PID %d";
                    v64 = v62;
                    v65 = 24;
                  }

                  _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, v63, buf, v65);
                  goto LABEL_148;
                }

                if (!nw_parameters_has_delegated_proc_uuid(v60))
                {
                  goto LABEL_160;
                }

                location[0] = 0;
                location[1] = 0;
                nw_parameters_get_e_proc_uuid(*(v3 + 2));
                if ((*(v3 + 370) & 0x20) != 0)
                {
LABEL_154:
                  dnssd_getaddrinfo_set_delegate_uuid();
                  goto LABEL_160;
                }

                if (*(v3 + 280))
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v66 = gconnectionLogObj;
                  if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_153;
                  }

                  *buf = 136446978;
                  *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
                  *&buf[12] = 2082;
                  *&buf[14] = v3 + 280;
                  *&buf[22] = 1042;
                  *&buf[24] = 16;
                  *&buf[28] = 2098;
                  *&buf[30] = location;
                  v67 = "%{public}s [C%{public}s] Delegating DNS service to eUUID %{public,uuid_t}.16P";
                  v68 = v66;
                  v69 = 38;
                }

                else
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v66 = gLogObj;
                  if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                  {
LABEL_153:

                    goto LABEL_154;
                  }

                  v71 = *(v3 + 91);
                  *buf = 136446978;
                  *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
                  *&buf[12] = 1024;
                  *&buf[14] = v71;
                  *&buf[18] = 1042;
                  *&buf[20] = 16;
                  *&buf[24] = 2098;
                  *&buf[26] = location;
                  v67 = "%{public}s [R%u] Delegating DNS service to eUUID %{public,uuid_t}.16P";
                  v68 = v66;
                  v69 = 34;
                }

                _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_DEBUG, v67, buf, v69);
                goto LABEL_153;
              }

              v43 = nw_context_copy_fallback_resolver_config(*(v3 + 4));
              v44 = v43;
              if (v43)
              {
                v45 = nw_resolver_config_copy_dictionary(v43);
                if ((*(v3 + 370) & 0x20) != 0)
                {
                  goto LABEL_117;
                }
              }

              else
              {
                v45 = 0;
                if ((*(v3 + 370) & 0x20) != 0)
                {
LABEL_117:
                  dnssd_getaddrinfo_set_need_encrypted_query();

                  goto LABEL_118;
                }
              }

              if (*(v3 + 280))
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v46 = gconnectionLogObj;
                if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_116;
                }

                v47 = "";
                *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
                *buf = 136446722;
                if (!v45)
                {
                  v47 = "out";
                }

                *&buf[12] = 2082;
                *&buf[14] = v3 + 280;
                *&buf[22] = 2080;
                *&buf[24] = v47;
                v48 = "%{public}s [C%{public}s] Requiring encrypted resolution with%s fallback config";
                v49 = v46;
                v50 = 32;
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v46 = gLogObj;
                if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
LABEL_116:

                  goto LABEL_117;
                }

                v51 = *(v3 + 91);
                v52 = "";
                *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
                *buf = 136446722;
                if (!v45)
                {
                  v52 = "out";
                }

                *&buf[12] = 1024;
                *&buf[14] = v51;
                *&buf[18] = 2080;
                *&buf[20] = v52;
                v48 = "%{public}s [R%u] Requiring encrypted resolution with%s fallback config";
                v49 = v46;
                v50 = 28;
              }

              _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, v48, buf, v50);
              goto LABEL_116;
            }

            v42 = *(v3 + 91);
            *buf = 136446978;
            *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
            *&buf[12] = 1024;
            *&buf[14] = v42;
            *&buf[18] = 1042;
            *&buf[20] = 16;
            *&buf[24] = 2098;
            *&buf[26] = v3 + 256;
            v38 = "%{public}s [R%u] Requesting failover from UUID %{public,uuid_t}.16P";
            v39 = v37;
            v40 = 34;
          }

          _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, v38, buf, v40);
          goto LABEL_98;
        }
      }

      port = nw_endpoint_get_port(*(v3 + 3));
      if (port)
      {
        v25 = *(v3 + 2);
        if (v25)
        {
          v26 = _nw_parameters_copy_url_endpoint(v25, v23);

          if (v26)
          {
            v9 = v26;
            url_scheme = _nw_endpoint_get_url_scheme(v9);

            if (!url_scheme)
            {
              goto LABEL_75;
            }

LABEL_60:
            if (!strcmp(url_scheme, "https") || !strcmp(url_scheme, "http") || port == 80 || port == 443)
            {
              url_scheme = "https";
              port = 443;
            }

            v30 = _os_feature_enabled_impl();
            if (port == 443)
            {
              v31 = 1;
            }

            else
            {
              v31 = v30;
            }

            if (v31 == 1)
            {
              v154 = 0u;
              v155 = 0u;
              v152 = 0u;
              v153 = 0u;
              v150 = 0u;
              v151 = 0u;
              v148 = 0u;
              v149 = 0u;
              v146 = 0u;
              v147 = 0u;
              v144 = 0u;
              v145 = 0u;
              memset(buf, 0, sizeof(buf));
              snprintf(buf, 0x100uLL, "_%u._%s", port, url_scheme);
              dnssd_getaddrinfo_set_service_scheme();
              *(v3 + 371) |= 2u;
            }

            goto LABEL_75;
          }

          v25 = *(v3 + 2);
        }

        if (nw_parameters_get_ip_protocol(v25) == 6)
        {
          if (nw_parameters_get_ip_protocol(*(v3 + 2)) == 17)
          {
            goto LABEL_55;
          }

          v28 = "udp";
        }

        else
        {
          v28 = "tcp";
        }

        v29 = getservbyport(__rev16(port), v28);
        v9 = 0;
        if (!v29)
        {
          goto LABEL_75;
        }

        url_scheme = v29->s_name;
        if (!v29->s_name)
        {
          goto LABEL_75;
        }

        goto LABEL_60;
      }

LABEL_55:
      v9 = 0;
LABEL_75:

      goto LABEL_76;
    }

    v104 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
    v105 = _os_log_send_and_compose_impl();

    v142[0] = 16;
    v134.i8[0] = 0;
    if (__nwlog_fault(v105, v142, &v134))
    {
      if (v142[0] == 17)
      {
        v106 = __nwlog_obj();
        v107 = v142[0];
        if (os_log_type_enabled(v106, v142[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
          _os_log_impl(&dword_181A37000, v106, v107, "%{public}s called with null gai", buf, 0xCu);
        }
      }

      else if (v134.u8[0] == 1)
      {
        v115 = __nw_create_backtrace_string();
        v106 = __nwlog_obj();
        v116 = v142[0];
        v117 = os_log_type_enabled(v106, v142[0]);
        if (v115)
        {
          if (v117)
          {
            *buf = 136446466;
            *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
            *&buf[12] = 2082;
            *&buf[14] = v115;
            _os_log_impl(&dword_181A37000, v106, v116, "%{public}s called with null gai, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v115);
          goto LABEL_235;
        }

        if (v117)
        {
          *buf = 136446210;
          *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
          _os_log_impl(&dword_181A37000, v106, v116, "%{public}s called with null gai, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v106 = __nwlog_obj();
        v122 = v142[0];
        if (os_log_type_enabled(v106, v142[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
          _os_log_impl(&dword_181A37000, v106, v122, "%{public}s called with null gai, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_235:
    if (v105)
    {
      free(v105);
    }

    goto LABEL_185;
  }

  v100 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
  v101 = _os_log_send_and_compose_impl();

  v142[0] = 16;
  v134.i8[0] = 0;
  if (__nwlog_fault(v101, v142, &v134))
  {
    if (v142[0] == 17)
    {
      v102 = __nwlog_obj();
      v103 = v142[0];
      if (os_log_type_enabled(v102, v142[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
        _os_log_impl(&dword_181A37000, v102, v103, "%{public}s called with null resolver", buf, 0xCu);
      }
    }

    else if (v134.u8[0] == 1)
    {
      v112 = __nw_create_backtrace_string();
      v102 = __nwlog_obj();
      v113 = v142[0];
      v114 = os_log_type_enabled(v102, v142[0]);
      if (v112)
      {
        if (v114)
        {
          *buf = 136446466;
          *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
          *&buf[12] = 2082;
          *&buf[14] = v112;
          _os_log_impl(&dword_181A37000, v102, v113, "%{public}s called with null resolver, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v112);
        goto LABEL_229;
      }

      if (v114)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
        _os_log_impl(&dword_181A37000, v102, v113, "%{public}s called with null resolver, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v102 = __nwlog_obj();
      v121 = v142[0];
      if (os_log_type_enabled(v102, v142[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_create_dns_getaddrinfo_locked";
        _os_log_impl(&dword_181A37000, v102, v121, "%{public}s called with null resolver, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_229:
  if (v101)
  {
    free(v101);
  }

  v124 = 0;
LABEL_186:

  return v124;
}

BOOL nw_parameters_has_delegated_proc_pid(char *a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_has_delegated_proc_pid(a1, a2);
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_parameters_has_delegated_proc_pid";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_parameters_has_delegated_proc_pid";
        v7 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else
    {
      if (v10 == 1)
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
            v13 = "nw_parameters_has_delegated_proc_pid";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v9)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v13 = "nw_parameters_has_delegated_proc_pid";
        v7 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_parameters_has_delegated_proc_pid";
        v7 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

nw_parameters_expired_dns_behavior_t nw_parameters_get_expired_dns_behavior(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_get_expired_dns_behavior();
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_expired_dns_behavior";
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
        v12 = "nw_parameters_get_expired_dns_behavior";
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
            v12 = "nw_parameters_get_expired_dns_behavior";
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
        v12 = "nw_parameters_get_expired_dns_behavior";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_expired_dns_behavior";
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

uint64_t nw_resolver_set_update_handler(void *a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v6)
  {
    if (v8)
    {
      os_unfair_lock_lock(v6 + 3);
      if (*(v6 + 12))
      {
        os_unfair_lock_unlock(v6 + 3);
        v10 = 0;
      }

      else
      {
        v11 = _Block_copy(v9);
        v12 = *(v6 + 12);
        *(v6 + 12) = v11;

        objc_storeStrong(v6 + 14, a2);
        *(v6 + 44) = 0;
        objc_storeStrong(v6 + 30, a1);
        v13 = *(v6 + 372);
        os_unfair_lock_unlock(v6 + 3);
        if ((v13 & 8) != 0)
        {
          v15 = v6;
          os_unfair_lock_lock(v6 + 3);
          evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint(*(v15 + 3), *(v15 + 2));
          v17 = *(v15 + 16);
          *(v15 + 16) = evaluator_for_endpoint;

          v18 = *(v15 + 16);
          v19 = *(v6 + 14);
          *v56 = MEMORY[0x1E69E9820];
          *&v56[8] = 3221225472;
          *&v56[16] = ___ZL33nw_resolver_create_path_evaluatorP22NWConcrete_nw_resolver_block_invoke;
          v57 = &unk_1E6A3CD80;
          v20 = v15;
          v58 = v20;
          nw_path_evaluator_set_update_handler(v18, v19, v56);
          v21 = *(v15 + 16);
          if (v21)
          {
            v22 = v21;
            os_unfair_lock_lock(v21 + 24);
            v23 = v22[6];
            os_unfair_lock_unlock(v21 + 24);
          }

          else
          {
            v23 = 0;
          }

          v24 = v20[17];
          v20[17] = v23;

          v25 = _nw_array_create();
          v26 = v20[18];
          v20[18] = v25;

          v27 = nw_parameters_copy_context(*(v15 + 2));
          *type = MEMORY[0x1E69E9820];
          v48 = 3221225472;
          v49 = ___ZL33nw_resolver_create_path_evaluatorP22NWConcrete_nw_resolver_block_invoke_181;
          v50 = &unk_1E6A3D868;
          v28 = v20;
          v51 = v28;
          nw_queue_context_async(v27, type);

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = gLogObj;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v30 = v20[17];
            *buf = 136446466;
            v53 = "nw_resolver_create_path_evaluator";
            v54 = 2112;
            v55 = v30;
            _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s Calling nw_path_assert_required_agents on path:%@", buf, 0x16u);
          }

          nw_path_assert_required_agents(v20[17]);
          os_unfair_lock_unlock(v6 + 3);
        }

        else
        {
          v14 = *(v6 + 4);
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __nw_resolver_set_update_handler_block_invoke;
          v45[3] = &unk_1E6A3D868;
          v46 = v6;
          nw_queue_context_async_if_needed(v14, v45);
        }

        v10 = 1;
      }

      goto LABEL_14;
    }

    v36 = __nwlog_obj();
    *v56 = 136446210;
    *&v56[4] = "nw_resolver_set_update_handler";
    v33 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    buf[0] = 0;
    if (__nwlog_fault(v33, type, buf))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v34 = __nwlog_obj();
        v37 = type[0];
        if (os_log_type_enabled(v34, type[0]))
        {
          *v56 = 136446210;
          *&v56[4] = "nw_resolver_set_update_handler";
          _os_log_impl(&dword_181A37000, v34, v37, "%{public}s called with null handler", v56, 0xCu);
        }

LABEL_46:

        goto LABEL_47;
      }

      if (buf[0] != 1)
      {
        v34 = __nwlog_obj();
        v44 = type[0];
        if (os_log_type_enabled(v34, type[0]))
        {
          *v56 = 136446210;
          *&v56[4] = "nw_resolver_set_update_handler";
          _os_log_impl(&dword_181A37000, v34, v44, "%{public}s called with null handler, backtrace limit exceeded", v56, 0xCu);
        }

        goto LABEL_46;
      }

      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v41 = type[0];
      v42 = os_log_type_enabled(v34, type[0]);
      if (!backtrace_string)
      {
        if (v42)
        {
          *v56 = 136446210;
          *&v56[4] = "nw_resolver_set_update_handler";
          _os_log_impl(&dword_181A37000, v34, v41, "%{public}s called with null handler, no backtrace", v56, 0xCu);
        }

        goto LABEL_46;
      }

      if (v42)
      {
        *v56 = 136446466;
        *&v56[4] = "nw_resolver_set_update_handler";
        *&v56[12] = 2082;
        *&v56[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v34, v41, "%{public}s called with null handler, dumping backtrace:%{public}s", v56, 0x16u);
      }

      goto LABEL_34;
    }
  }

  else
  {
    v32 = __nwlog_obj();
    *v56 = 136446210;
    *&v56[4] = "nw_resolver_set_update_handler";
    v33 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    buf[0] = 0;
    if (__nwlog_fault(v33, type, buf))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v34 = __nwlog_obj();
        v35 = type[0];
        if (os_log_type_enabled(v34, type[0]))
        {
          *v56 = 136446210;
          *&v56[4] = "nw_resolver_set_update_handler";
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null resolver", v56, 0xCu);
        }

        goto LABEL_46;
      }

      if (buf[0] != 1)
      {
        v34 = __nwlog_obj();
        v43 = type[0];
        if (os_log_type_enabled(v34, type[0]))
        {
          *v56 = 136446210;
          *&v56[4] = "nw_resolver_set_update_handler";
          _os_log_impl(&dword_181A37000, v34, v43, "%{public}s called with null resolver, backtrace limit exceeded", v56, 0xCu);
        }

        goto LABEL_46;
      }

      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v39 = type[0];
      v40 = os_log_type_enabled(v34, type[0]);
      if (!backtrace_string)
      {
        if (v40)
        {
          *v56 = 136446210;
          *&v56[4] = "nw_resolver_set_update_handler";
          _os_log_impl(&dword_181A37000, v34, v39, "%{public}s called with null resolver, no backtrace", v56, 0xCu);
        }

        goto LABEL_46;
      }

      if (v40)
      {
        *v56 = 136446466;
        *&v56[4] = "nw_resolver_set_update_handler";
        *&v56[12] = 2082;
        *&v56[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v34, v39, "%{public}s called with null resolver, dumping backtrace:%{public}s", v56, 0x16u);
      }

LABEL_34:

      free(backtrace_string);
    }
  }

LABEL_47:
  if (v33)
  {
    free(v33);
  }

  v10 = 0;
LABEL_14:

  return v10;
}

void __nw_resolver_set_update_handler_block_invoke(uint64_t a1)
{
  v95 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(a1 + 32);
  if ((*(v2 + 371) & 0x10) != 0 && (*(v2 + 370) & 0x20) == 0)
  {
    if (*(v2 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v3 = gconnectionLogObj;
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 32) + 280;
      *buf = 136446466;
      *&buf[4] = "nw_resolver_set_update_handler_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v4;
      v5 = "%{public}s [C%{public}s] started";
      v6 = v3;
      v7 = 22;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:

        v2 = *(a1 + 32);
        goto LABEL_12;
      }

      v8 = *(*(a1 + 32) + 364);
      *buf = 136446466;
      *&buf[4] = "nw_resolver_set_update_handler_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = v8;
      v5 = "%{public}s [R%u] started";
      v6 = v3;
      v7 = 18;
    }

    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
    goto LABEL_11;
  }

LABEL_12:
  if (!*(v2 + 96))
  {
    goto LABEL_125;
  }

  type = nw_endpoint_get_type(*(v2 + 24));
  v10 = *(a1 + 32);
  if (type != nw_endpoint_type_host)
  {
    if (nw_resolver_create_dns_service_locked(v10))
    {
      goto LABEL_125;
    }

    goto LABEL_124;
  }

  required_address_family = nw_parameters_get_required_address_family(*(v10 + 16));
  if (required_address_family == 2 || (nw_parameters_get_desperate_ivan(*(*(a1 + 32) + 16)) & 1) != 0)
  {
    v12 = 1;
LABEL_17:
    v13 = *(a1 + 32);
LABEL_18:
    *(v13 + 80) = v12;
    goto LABEL_19;
  }

  v13 = *(a1 + 32);
  if (required_address_family == 30)
  {
    v12 = 2;
    goto LABEL_18;
  }

  if (nw_parameters_get_allow_unusable_addresses(*(v13 + 16)))
  {
    v12 = 3;
    goto LABEL_17;
  }

LABEL_19:
  v14 = *(*(a1 + 32) + 16);
  if (!v14)
  {
    v23 = 0;
    v24 = 0;
    goto LABEL_115;
  }

  v15 = _nw_parameters_copy_effective_proxy_config(v14);
  v16 = v15;
  if (!v15)
  {
    v24 = 0;
    goto LABEL_68;
  }

  v17 = v15;
  v18 = v17[5];

  if (v18)
  {
    v19 = v18;
    v20 = _nw_endpoint_get_type(v19);

    if (v20 == 2 && (nw_endpoint_is_equal(v19, *(*(a1 + 32) + 24), 0) & 1) != 0)
    {
      goto LABEL_36;
    }
  }

  v21 = v17;
  v22 = *(v21 + 38);
  if (v22 == 1)
  {
    v25 = *(v21 + 39) == 1;

    if (!v25)
    {
      goto LABEL_40;
    }

LABEL_36:
    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 0;
    *v94 = 0;
    *&v94[8] = v94;
    *&v94[16] = 0x2020000000;
    v94[24] = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v91 = __Block_byref_object_copy__6340;
    v92 = __Block_byref_object_dispose__6341;
    v93 = 0;
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __nw_resolver_set_update_handler_block_invoke_81;
    v76[3] = &unk_1E6A2C260;
    v81 = required_address_family;
    v78 = &v82;
    v79 = buf;
    v77 = *(a1 + 32);
    v80 = v94;
    nw_proxy_config_enumerate_resolved_endpoints(v17, v76);
    v75 = 0;
    scoped_interface_index = nw_resolver_get_scoped_interface_index(*(a1 + 32), &v75);
    v27 = *(*(a1 + 32) + 224);
    if (v27)
    {
      v28 = nw_path_copy_interface(v27);
      v29 = v28;
      if (v28)
      {
        v30 = _nw_interface_get_type(v28) == 4;
LABEL_43:
        v31 = *(*&buf[8] + 40);
        if (v31 && _nw_array_get_count(v31))
        {
          v32 = *(a1 + 32);
          if (scoped_interface_index == -1 || v30)
          {
            if (!v32)
            {
              v34 = __nwlog_obj();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                v42 = *(*&buf[8] + 40);
                *v86 = 136446466;
                v87 = "nw_resolver_set_update_handler_block_invoke_2";
                v88 = 2112;
                *v89 = v42;
                v37 = "%{public}s found proxy resolved endpoints %@";
                v38 = v34;
                v39 = 22;
                goto LABEL_63;
              }

LABEL_64:

              v32 = *(a1 + 32);
              goto LABEL_65;
            }

            v33 = *(v32 + 370);
LABEL_52:
            if ((v33 & 0x20) != 0)
            {
LABEL_65:
              objc_storeStrong((v32 + 168), *(*&buf[8] + 40));
              *(*(a1 + 32) + 370) |= 2u;
              nw_resolver_update_status_locked(*(a1 + 32), 0);
              v24 = 1;
              goto LABEL_66;
            }

            if (*(v32 + 280))
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v34 = gconnectionLogObj;
              if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                goto LABEL_64;
              }

              v35 = *(a1 + 32) + 280;
              v36 = *(*&buf[8] + 40);
              *v86 = 136446722;
              v87 = "nw_resolver_set_update_handler_block_invoke";
              v88 = 2082;
              *v89 = v35;
              *&v89[8] = 2112;
              *&v89[10] = v36;
              v37 = "%{public}s [C%{public}s] found proxy resolved endpoints %@";
              v38 = v34;
              v39 = 32;
              goto LABEL_63;
            }

            v34 = __nwlog_obj();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v40 = *(*(a1 + 32) + 364);
              v41 = *(*&buf[8] + 40);
              *v86 = 136446722;
              v87 = "nw_resolver_set_update_handler_block_invoke";
              v88 = 1024;
              *v89 = v40;
              *&v89[4] = 2112;
              *&v89[6] = v41;
              v37 = "%{public}s [R%u] found proxy resolved endpoints %@";
              v38 = v34;
              v39 = 28;
LABEL_63:
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_INFO, v37, v86, v39);
              goto LABEL_64;
            }

            goto LABEL_64;
          }

          v33 = *(v32 + 370);
          if (v33 & 0x40) != 0 && (v83[3] & 1) != 0 || (*(v32 + 370) & 0x80) != 0 && (*(*&v94[8] + 24))
          {
            goto LABEL_52;
          }
        }

        v24 = 0;
LABEL_66:

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(v94, 8);
        _Block_object_dispose(&v82, 8);
        goto LABEL_67;
      }
    }

    else
    {
      v29 = 0;
    }

    v30 = 0;
    goto LABEL_43;
  }

  if (v22 == 4)
  {

    goto LABEL_36;
  }

LABEL_40:
  v24 = 0;
LABEL_67:

LABEL_68:
  v23 = nw_endpoint_copy_association_with_evaluator(*(*(a1 + 32) + 24), *(*(a1 + 32) + 16), 0);

  if (v23 && (*(*(a1 + 32) + 370) & 2) == 0)
  {
    if (nw_protocol_copy_resolver_definition(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_resolver_definition(void)::onceToken, &__block_literal_global_196);
    }

    cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v23, nw_protocol_copy_resolver_definition(void)::resolver_definition);
    v44 = cached_content_for_protocol;
    if (cached_content_for_protocol)
    {
      if (*(cached_content_for_protocol + 24) == 1)
      {
        *(*(a1 + 32) + 372) |= 1u;
      }

      if (*cached_content_for_protocol)
      {
        v45 = *(cached_content_for_protocol + 8);
        if (v45 && *(v44 + 16))
        {
          count = _nw_array_get_count(v45);
          v47 = *(v44 + 16);
          if (v47)
          {
            v47 = _nw_array_get_count(v47);
          }

          if (count == v47)
          {
            v48 = *(v44 + 8);
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __nw_resolver_set_update_handler_block_invoke_84;
            aBlock[3] = &unk_1E6A34B00;
            v74 = v44;
            v49 = *(a1 + 32);
            v73 = v49;
            if (v48)
            {
              _nw_array_apply(v48, aBlock);
              v49 = v73;
            }
          }
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v91) = 0;
        v82 = 0;
        v83 = &v82;
        v84 = 0x2020000000;
        v85 = 0;
        v50 = *v44;
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __nw_resolver_set_update_handler_block_invoke_85;
        v71[3] = &unk_1E6A39C00;
        v71[4] = buf;
        v71[5] = &v82;
        if (v50)
        {
          _nw_array_apply(v50, v71);
        }

        *v86 = 0;
        v51 = nw_resolver_get_scoped_interface_index(*(a1 + 32), v86);
        v52 = *(a1 + 32);
        v53 = *(v52 + 224);
        if (v53)
        {
          v54 = nw_path_copy_interface(v53);
          v55 = v54;
          if (v54)
          {
            v56 = _nw_interface_get_type(v54) == 4;
          }

          else
          {
            v56 = 0;
          }

          v52 = *(a1 + 32);
        }

        else
        {
          v55 = 0;
          v56 = 0;
        }

        if (v51 == -1 || v56)
        {
          if (!v52)
          {
            v58 = __nwlog_obj();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v66 = *v44;
              *v94 = 136446466;
              *&v94[4] = "nw_resolver_set_update_handler_block_invoke_2";
              *&v94[12] = 2112;
              *&v94[14] = v66;
              v61 = "%{public}s found cached endpoints %@";
              v62 = v58;
              v63 = 22;
              goto LABEL_111;
            }

LABEL_112:

            v52 = *(a1 + 32);
            goto LABEL_113;
          }

          v57 = *(v52 + 370);
        }

        else
        {
          v57 = *(v52 + 370);
          if (((v57 & 0x40) == 0 || (*(*&buf[8] + 24) & 1) == 0) && ((*(v52 + 370) & 0x80) == 0 || (v83[3] & 1) == 0))
          {
            goto LABEL_114;
          }
        }

        if ((v57 & 0x20) != 0)
        {
LABEL_113:
          objc_storeStrong((v52 + 168), *v44);
          *(*(a1 + 32) + 370) |= 2u;
          nw_resolver_update_status_locked(*(a1 + 32), 0);
          v24 = 1;
LABEL_114:

          _Block_object_dispose(&v82, 8);
          _Block_object_dispose(buf, 8);
          goto LABEL_115;
        }

        if (*(v52 + 280))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v58 = gconnectionLogObj;
          if (!os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            goto LABEL_112;
          }

          v59 = *(a1 + 32) + 280;
          v60 = *v44;
          *v94 = 136446722;
          *&v94[4] = "nw_resolver_set_update_handler_block_invoke";
          *&v94[12] = 2082;
          *&v94[14] = v59;
          *&v94[22] = 2112;
          *&v94[24] = v60;
          v61 = "%{public}s [C%{public}s] found cached endpoints %@";
          v62 = v58;
          v63 = 32;
          goto LABEL_111;
        }

        v58 = __nwlog_obj();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          v64 = *(*(a1 + 32) + 364);
          v65 = *v44;
          *v94 = 136446722;
          *&v94[4] = "nw_resolver_set_update_handler_block_invoke";
          *&v94[12] = 1024;
          *&v94[14] = v64;
          *&v94[18] = 2112;
          *&v94[20] = v65;
          v61 = "%{public}s [R%u] found cached endpoints %@";
          v62 = v58;
          v63 = 28;
LABEL_111:
          _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_INFO, v61, v94, v63);
          goto LABEL_112;
        }

        goto LABEL_112;
      }
    }
  }

LABEL_115:
  if ((*(*(a1 + 32) + 370) & 2) == 0)
  {
    if (networkd_settings_get_BOOL(nw_setting_disable_dns_xpc))
    {
      goto LABEL_121;
    }

    if (nw_resolver_can_use_dns_xpc::onceToken != -1)
    {
      dispatch_once(&nw_resolver_can_use_dns_xpc::onceToken, &__block_literal_global_78);
    }

    if (nw_resolver_can_use_dns_xpc::can_use_dns_xpc != 1)
    {
LABEL_121:
      dns_service_locked = nw_resolver_create_dns_service_locked(*(a1 + 32));
    }

    else
    {
      dns_service_locked = nw_resolver_create_dns_getaddrinfo_locked(*(a1 + 32), 0);
    }

    v24 = dns_service_locked;
  }

  if ((v24 & 1) == 0)
  {
LABEL_124:
    v68 = *(a1 + 32);
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __nw_resolver_set_update_handler_block_invoke_86;
    v69[3] = &unk_1E6A3D868;
    v70 = v68;
    nw_resolver_update_status_locked(v70, v69);
  }

LABEL_125:
  os_unfair_lock_unlock((*(a1 + 32) + 12));
}

uint64_t nw_parameters_get_desperate_ivan(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_desperate_ivan(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_desperate_ivan";
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
        v12 = "nw_parameters_get_desperate_ivan";
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
            v12 = "nw_parameters_get_desperate_ivan";
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
        v12 = "nw_parameters_get_desperate_ivan";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_desperate_ivan";
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

uint64_t nw_parameters_get_allow_unusable_addresses(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_allow_unusable_addresses(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_allow_unusable_addresses";
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
        v12 = "nw_parameters_get_allow_unusable_addresses";
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
            v12 = "nw_parameters_get_allow_unusable_addresses";
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
        v12 = "nw_parameters_get_allow_unusable_addresses";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_allow_unusable_addresses";
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

uint64_t _nw_path_get_flow_divert_unit(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  if (*(v1 + 72) == 4)
  {
    v3 = *(v1 + 73);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t nw_path_has_unsatisfied_route(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    has_unsatisfied_route = _nw_path_has_unsatisfied_route(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_has_unsatisfied_route";
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
        v16 = "nw_path_has_unsatisfied_route";
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
          v16 = "nw_path_has_unsatisfied_route";
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
        v16 = "nw_path_has_unsatisfied_route";
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
        v16 = "nw_path_has_unsatisfied_route";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  has_unsatisfied_route = 0;
LABEL_3:

  return has_unsatisfied_route;
}

char *nw_path_has_nat64_prefixes(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_has_nat64_prefixes(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_has_nat64_prefixes";
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
        v16 = "nw_path_has_nat64_prefixes";
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
          v16 = "nw_path_has_nat64_prefixes";
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
        v16 = "nw_path_has_nat64_prefixes";
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
        v16 = "nw_path_has_nat64_prefixes";
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

char *_nw_path_has_nat64_prefixes(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 8) & 1);
  }

  return result;
}

void nw_path_enumerate_resolver_configs(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = _nw_path_copy_resolver_configs(v3, 0);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_path_enumerate_resolver_configs_block_invoke;
    aBlock[3] = &unk_1E6A3CD30;
    v6 = v4;
    v16 = v6;
    if (v5)
    {
      _nw_array_apply(v5, aBlock);
      v6 = v16;
    }

    goto LABEL_5;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_path_enumerate_resolver_configs";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v8, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_path_enumerate_resolver_configs";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v17 == 1)
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
          v20 = "nw_path_enumerate_resolver_configs";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        v20 = "nw_path_enumerate_resolver_configs";
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
        v20 = "nw_path_enumerate_resolver_configs";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

LABEL_5:
}

uint64_t nw_resolver_config_get_class(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_resolver_config_get_class_block_invoke;
    v14[3] = &unk_1E6A3D738;
    v16 = buf;
    v3 = v1;
    v15 = v3;
    os_unfair_lock_lock(v3 + 22);
    __nw_resolver_config_get_class_block_invoke(v14);
    os_unfair_lock_unlock(v3 + 22);
    v4 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_config_get_class";
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
        *&buf[4] = "nw_resolver_config_get_class";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null config", buf, 0xCu);
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
          *&buf[4] = "nw_resolver_config_get_class";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_class";
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
        *&buf[4] = "nw_resolver_config_get_class";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_3:

  return v4;
}

void sub_181B61CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_resolver_config_get_class_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_int64(v2, "Class");
}

uint64_t ___ZL27nw_path_get_vpn_config_uuidP18NWConcrete_nw_pathPA16_hPibbb_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && (*(a1 + 56) != 1 || (*(a2 + 208) & 2) == 0))
  {
    ne_session_get_config_id_from_network_agent();
  }

  return 1;
}

uint64_t _nw_path_has_unsatisfied_route(char *a1)
{
  if (a1)
  {
    v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = a1;
    swift_beginAccess();
    if (v1[116] == 2)
    {
      v3 = v1[117];
      if (v3 > 0x1D)
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        v4 = 0x1E0000E8u >> v3;
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

id _nw_protocol_transform_copy_endpoint(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 32);
  v3 = v2;

  if (!v2)
  {

    v3 = 0;
  }

  return v3;
}

uint64_t nw_protocol_transform_supports_endpoint(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = _nw_protocol_transform_supports_endpoint(v3, v4);
      goto LABEL_4;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_transform_supports_endpoint";
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
          v21 = "nw_protocol_transform_supports_endpoint";
          v12 = "%{public}s called with null endpoint";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_transform_supports_endpoint";
          v12 = "%{public}s called with null endpoint, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
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
          v21 = "nw_protocol_transform_supports_endpoint";
          v12 = "%{public}s called with null endpoint, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v17)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v21 = "nw_protocol_transform_supports_endpoint";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_transform_supports_endpoint";
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
          v21 = "nw_protocol_transform_supports_endpoint";
          v12 = "%{public}s called with null transform";
LABEL_31:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_transform_supports_endpoint";
          v12 = "%{public}s called with null transform, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v15 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v21 = "nw_protocol_transform_supports_endpoint";
          v12 = "%{public}s called with null transform, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v15)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v21 = "nw_protocol_transform_supports_endpoint";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null transform, dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_4:

  return v6;
}

uint64_t _nw_protocol_transform_supports_endpoint(uint64_t a1, void *a2)
{

  swift_beginAccess();
  v4 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v4;
  v8[2] = *(a1 + 48);
  v9 = *(a1 + 64);
  sub_181B29D44(v8, &v7);

  v5 = a2;
  LOBYTE(a1) = sub_181B62A40(v5);

  sub_181B29DA0(v8);
  return a1 & 1;
}

uint64_t _nw_protocol_transform_contains_protocol(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v4 = *(a1 + 32);
  v13[0] = *(a1 + 16);
  v13[1] = v4;
  v13[2] = *(a1 + 48);
  v14 = *(a1 + 64);
  sub_181B29D44(v13, v9);

  sub_181AAC800(a2, v9);
  v5 = v10;
  v6 = v11;
  v7 = v12;
  LOBYTE(a1) = sub_181B62C50(v9);
  sub_181B29DA0(v13);
  sub_181F48350(v5, v6, v7);
  return a1 & 1;
}

uint64_t nw_protocol_transform_contains_protocol(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = v4;

      v7 = _nw_protocol_transform_contains_protocol(v3, v6 + 8);
      goto LABEL_4;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_transform_contains_protocol";
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
          v25 = "nw_protocol_transform_contains_protocol";
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null definition", buf, 0xCu);
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
          v25 = "nw_protocol_transform_contains_protocol";
          _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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
          v25 = "nw_protocol_transform_contains_protocol";
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v19)
      {
        *buf = 136446466;
        v25 = "nw_protocol_transform_contains_protocol";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_transform_contains_protocol";
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
          v25 = "nw_protocol_transform_contains_protocol";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null transform", buf, 0xCu);
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
          v25 = "nw_protocol_transform_contains_protocol";
          _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null transform, backtrace limit exceeded", buf, 0xCu);
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
          v25 = "nw_protocol_transform_contains_protocol";
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null transform, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v17)
      {
        *buf = 136446466;
        v25 = "nw_protocol_transform_contains_protocol";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null transform, dumping backtrace:%{public}s", buf, 0x16u);
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

uint64_t _nw_protocol_transform_get_prohibit_direct(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(a1 + 64);

  return (v2 >> 4) & 1;
}

uint64_t sub_181B62A40(uint64_t a1)
{
  v3 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 40);
  if (!*(v9 + 16))
  {
    v13 = 1;
    return v13 & 1;
  }

  v10 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181B5C0FC(a1 + v10, v5);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    v14 = type metadata accessor for Endpoint.EndpointType;
    v15 = v5;
LABEL_8:
    sub_181AB7264(v15, v14);
    v13 = 0;
    return v13 & 1;
  }

  sub_181B2BEE4(v5, v8);
  v11 = sub_182AD2038();
  if (!v12)
  {
    v14 = type metadata accessor for URLEndpoint;
    v15 = v8;
    goto LABEL_8;
  }

  v18[0] = v11;
  v18[1] = v12;
  MEMORY[0x1EEE9AC00](v11);
  *(&v17 - 2) = v18;
  v13 = sub_181E5912C(sub_181E5959C, (&v17 - 4), v9);
  sub_181AB7264(v8, type metadata accessor for URLEndpoint);

  return v13 & 1;
}

uint64_t sub_181B62C50(unsigned __int8 *a1)
{
  v2 = *v1;
  if (!*v1)
  {
    goto LABEL_95;
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = a1[24];
  LOBYTE(v131) = *a1;
  BYTE1(v131) = v4;
  v110 = v6;
  v111 = v5;
  v132 = v5;
  v133 = v6;
  v114 = v7;
  v134 = v7;
  v8 = qword_1ED4100F8;
  v108 = v2;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED411CD8;
  v10 = qword_1ED411CE0;
  v11 = byte_1ED411CE8;
  LOWORD(v127) = word_1ED411CD0;
  v128 = qword_1ED411CD8;
  v129 = qword_1ED411CE0;
  v130 = byte_1ED411CE8;
  v12 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v131, &v127);
  v13 = v128;
  v14 = v129;
  v15 = v130;
  sub_181F49A24(v9, v10, v11);
  sub_181F48350(v13, v14, v15);
  if (v12)
  {
    v16 = 1;
  }

  else
  {
    LOBYTE(v131) = v3;
    BYTE1(v131) = v4;
    v132 = v111;
    v133 = v110;
    v134 = v114;
    if (qword_1ED4100E8 != -1)
    {
      swift_once();
    }

    v17 = qword_1ED411CB8;
    v18 = qword_1ED411CC0;
    v19 = byte_1ED411CC8;
    LOWORD(v127) = word_1ED411CB0;
    v128 = qword_1ED411CB8;
    v129 = qword_1ED411CC0;
    v130 = byte_1ED411CC8;
    v16 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v131, &v127);
    v20 = v128;
    v21 = v129;
    v22 = v130;
    sub_181F49A24(v17, v18, v19);
    sub_181F48350(v20, v21, v22);
  }

  v23 = sub_181AC9084();
  v24 = v23;
  v25 = *(v23 + 32);
  v26 = *(v23 + 24) + v25;
  if (*(v23 + 16) < v26)
  {
    v26 = *(v23 + 16);
  }

  v121 = v23;
  v123 = *(v23 + 32);
  v125 = v26;
  v109 = v3;
  while (1)
  {
    if (v25 != v26)
    {
      goto LABEL_19;
    }

    v23 = sub_181AC81FC(v23);
    if ((v23 & 1) == 0)
    {
      break;
    }

    v24 = v121;
    v25 = v123;
LABEL_19:
    v28 = v24 + 16 * v25++;
    v123 = v25;
    v29 = *(v28 + 40);
    v30 = *(v28 + 48);
    if (v16)
    {
      v37 = word_1ED411CD0;
      v38 = HIBYTE(word_1ED411CD0);
      v40 = qword_1ED411CD8;
      v39 = qword_1ED411CE0;
      v41 = v30 >> 62;
      v42 = byte_1ED411CE8;
      if (v30 >> 62)
      {
        if (v41 == 1)
        {
          ObjectType = swift_getObjectType();
          LOBYTE(v131) = v37;
          BYTE1(v131) = v38;
          v132 = v40;
          v133 = v39;
          v134 = v42;
          v43 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          swift_unknownObjectRetain();
          if (v43(&v131, ObjectType, v30 & 0x3FFFFFFFFFFFFFFFLL))
          {
            goto LABEL_79;
          }
        }
      }

      else
      {
        swift_beginAccess();
        v56 = *(v29 + 24);
        v116 = *(v29 + 32);
        v57 = *(v29 + 40);
        v112 = v57;
        LOWORD(v131) = *(v29 + 16);
        v132 = v56;
        v133 = v116;
        v134 = v57;
        LOBYTE(v127) = v37;
        BYTE1(v127) = v38;
        v128 = v40;
        v129 = v39;
        v130 = v42;
        v58 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v131, &v127);
        v59 = v132;
        v60 = v133;
        v61 = v134;
        sub_181B2C3E0(v29, v30);
        sub_181F49A24(v56, v116, v112);
        sub_181F48350(v59, v60, v61);
        if (v58)
        {
LABEL_79:

          sub_181AAD084(v29, v30);
          v55 = 1;
          return v55 & 1;
        }
      }

      if (qword_1ED4100E8 != -1)
      {
        swift_once();
      }

      v62 = word_1ED411CB0;
      v63 = HIBYTE(word_1ED411CB0);
      v65 = qword_1ED411CB8;
      v64 = qword_1ED411CC0;
      v66 = byte_1ED411CC8;
      if (!v41)
      {
        swift_beginAccess();
        v76 = *(v29 + 24);
        v77 = *(v29 + 32);
        v78 = *(v29 + 40);
        v118 = v78;
        LOWORD(v131) = *(v29 + 16);
        v132 = v76;
        v133 = v77;
        v134 = v78;
        LOBYTE(v127) = v62;
        BYTE1(v127) = v63;
        v128 = v65;
        v129 = v64;
        v130 = v66;
        v55 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v131, &v127);
        v79 = v76;
        v80 = v77;
        v81 = v118;
LABEL_100:
        sub_181F49A24(v79, v80, v81);

        sub_181AAD084(v29, v30);
        sub_181F48350(v132, v133, v134);
        goto LABEL_101;
      }

      if (v41 == 1)
      {
        v67 = v30 & 0x3FFFFFFFFFFFFFFFLL;
        v68 = swift_getObjectType();
        LOBYTE(v131) = v62;
        BYTE1(v131) = v63;
        v132 = v65;
        v133 = v64;
        goto LABEL_92;
      }

LABEL_93:

LABEL_94:

LABEL_95:
      v55 = 0;
      return v55 & 1;
    }

    if (v30 >> 62)
    {
      if (v30 >> 62 == 1)
      {
        v31 = swift_getObjectType();
        LOBYTE(v131) = v3;
        BYTE1(v131) = v4;
        v132 = v111;
        v133 = v110;
        v134 = v114;
        v32 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        swift_unknownObjectRetain();
        v33 = v32(&v131, v31, v30 & 0x3FFFFFFFFFFFFFFFLL);
        v3 = v109;
        v34 = v33;
        v23 = sub_181AAD084(v29, v30);
        if (v34)
        {
          goto LABEL_68;
        }
      }
    }

    else
    {
      v23 = swift_beginAccess();
      if (*(v29 + 16) == v3 && *(v29 + 17) == v4)
      {
        v23 = *(v29 + 24);
        if (*(v29 + 40))
        {
          if (v114)
          {
            if (v23 == v111 && *(v29 + 32) == v110)
            {
              goto LABEL_68;
            }

            v23 = sub_182AD4268();
            if (v23)
            {
              goto LABEL_68;
            }
          }
        }

        else
        {
          v27 = v114;
          if (v111 != v23)
          {
            v27 = 1;
          }

          if ((v27 & 1) == 0)
          {
LABEL_68:

LABEL_69:

            v55 = 1;
            return v55 & 1;
          }
        }
      }
    }

    v26 = v125;
  }

  v44 = sub_181A54748();
  v45 = v44;
  v46 = *(v44 + 32);
  v47 = *(v44 + 24) + v46;
  if (*(v44 + 16) < v47)
  {
    v47 = *(v44 + 16);
  }

  v122 = v44;
  v124 = *(v44 + 32);
  for (i = v47; ; v47 = i)
  {
    if (v46 != v47)
    {
      goto LABEL_51;
    }

    v44 = sub_181AC81FC(v44);
    if ((v44 & 1) == 0)
    {

      ProtocolStack.transport.getter(&v131);
      v82 = v132;
      if ((~v132 & 0xF000000000000007) != 0)
      {
        v83 = v131;
        if (v16)
        {
          v127 = v131;
          v128 = v132;
          LOWORD(v131) = word_1ED411CD0;
          v132 = qword_1ED411CD8;
          v133 = qword_1ED411CE0;
          v134 = byte_1ED411CE8;
          sub_181F49A24(qword_1ED411CD8, qword_1ED411CE0, byte_1ED411CE8);
          v97 = sub_181B37BFC(&v131);
          sub_181F48350(v132, v133, v134);
          if (v97)
          {

            sub_181A53008(v83, v82);
            v55 = 1;
            return v55 & 1;
          }

          goto LABEL_112;
        }

        v127 = v131;
        v128 = v132;
        LOBYTE(v131) = v109;
        BYTE1(v131) = v4;
        v132 = v111;
        v133 = v110;
        v134 = v114;
        v101 = sub_181B37BFC(&v131);
        sub_181A53008(v83, v82);
        if (v101)
        {
          goto LABEL_69;
        }

        v82 = v108[13];
        if ((~v82 & 0xF000000000000007) == 0)
        {
LABEL_107:
          swift_beginAccess();
          v102 = v108[7];
          if ((~v102 & 0xF000000000000007) == 0)
          {
            goto LABEL_94;
          }

          v103 = v108[6];
          if (v16)
          {
            v104 = qword_1ED411CD8;
            v105 = qword_1ED411CE0;
            v106 = byte_1ED411CE8;
            LOWORD(v131) = word_1ED411CD0;
            v132 = qword_1ED411CD8;
            v133 = qword_1ED411CE0;
            v134 = byte_1ED411CE8;
            sub_181B687F0(v103, v102);
            sub_181F49A24(v104, v105, v106);
            LOBYTE(v104) = sub_181ACC890(&v131);
            sub_181F48350(v132, v133, v134);
            if (v104)
            {
              sub_181A52FE0(v103, v102);
              goto LABEL_69;
            }

            if (qword_1ED4100E8 != -1)
            {
              swift_once();
            }

            LOWORD(v131) = word_1ED411CB0;
            v132 = qword_1ED411CB8;
            v133 = qword_1ED411CC0;
            v134 = byte_1ED411CC8;
            sub_181F49A24(qword_1ED411CB8, qword_1ED411CC0, byte_1ED411CC8);
            v55 = sub_181ACC890(&v131);

            sub_181F48350(v132, v133, v134);
            sub_181A52FE0(v103, v102);
          }

          else
          {
            LOBYTE(v131) = v109;
            BYTE1(v131) = v4;
            v132 = v111;
            v133 = v110;
            v134 = v114;
            sub_181B2C3E0(v103, v102);
            v107 = sub_181ACC890(&v131);

            sub_181A52FE0(v103, v102);
            if ((v107 & 1) == 0)
            {
              goto LABEL_95;
            }

            v55 = 1;
          }

          return v55 & 1;
        }

        v83 = v108[12];
      }

      else
      {
        v82 = v108[13];
        if ((~v82 & 0xF000000000000007) == 0)
        {
          goto LABEL_107;
        }

        v83 = v108[12];
        if (v16)
        {
          v127 = v108[12];
          v128 = v82;
          v84 = qword_1ED411CD8;
          v85 = qword_1ED411CE0;
          v86 = byte_1ED411CE8;
          LOWORD(v131) = word_1ED411CD0;
          v132 = qword_1ED411CD8;
          v133 = qword_1ED411CE0;
          v134 = byte_1ED411CE8;
          sub_181AC8268(v83, v82);
          sub_181F49A24(v84, v85, v86);
          LOBYTE(v84) = sub_181B37BFC(&v131);
          sub_181F48350(v132, v133, v134);
          if (v84)
          {
            sub_181A53008(v83, v82);
            goto LABEL_69;
          }

LABEL_112:
          v127 = v83;
          v128 = v82;
          if (qword_1ED4100E8 != -1)
          {
            swift_once();
          }

          LOWORD(v131) = word_1ED411CB0;
          v132 = qword_1ED411CB8;
          v133 = qword_1ED411CC0;
          v134 = byte_1ED411CC8;
          sub_181F49A24(qword_1ED411CB8, qword_1ED411CC0, byte_1ED411CC8);
          v55 = sub_181B37BFC(&v131);

          sub_181F48350(v132, v133, v134);
          sub_181A53008(v83, v82);
          return v55 & 1;
        }
      }

      v127 = v83;
      v128 = v82;
      LOBYTE(v131) = v109;
      BYTE1(v131) = v4;
      v132 = v111;
      v133 = v110;
      v134 = v114;
      if (sub_181B37BFC(&v131))
      {
        goto LABEL_69;
      }

      goto LABEL_107;
    }

    v45 = v122;
    v46 = v124;
LABEL_51:
    v49 = v45 + 16 * v46++;
    v124 = v46;
    v29 = *(v49 + 40);
    v30 = *(v49 + 48);
    if (v16)
    {
      break;
    }

    if (v30 >> 62)
    {
      if (v30 >> 62 == 1)
      {
        v50 = swift_getObjectType();
        LOBYTE(v131) = v3;
        BYTE1(v131) = v4;
        v132 = v111;
        v133 = v110;
        v134 = v114;
        v51 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        swift_unknownObjectRetain();
        v3 = v109;
        v52 = v51(&v131, v50, v30 & 0x3FFFFFFFFFFFFFFFLL);
        v44 = sub_181AAD084(v29, v30);
        if (v52)
        {
          goto LABEL_68;
        }
      }
    }

    else
    {
      v44 = swift_beginAccess();
      if (*(v29 + 16) == v3 && *(v29 + 17) == v4)
      {
        v44 = *(v29 + 24);
        if (*(v29 + 40))
        {
          if (v114)
          {
            if (v44 == v111 && *(v29 + 32) == v110)
            {
              goto LABEL_68;
            }

            v44 = sub_182AD4268();
            if (v44)
            {
              goto LABEL_68;
            }
          }
        }

        else
        {
          v48 = v114;
          if (v111 != v44)
          {
            v48 = 1;
          }

          if ((v48 & 1) == 0)
          {
            goto LABEL_68;
          }
        }
      }
    }
  }

  v69 = word_1ED411CD0;
  v70 = HIBYTE(word_1ED411CD0);
  v72 = qword_1ED411CD8;
  v71 = qword_1ED411CE0;
  v73 = v30 >> 62;
  v74 = byte_1ED411CE8;
  if (v30 >> 62)
  {
    if (v73 == 1)
    {
      v117 = swift_getObjectType();
      LOBYTE(v131) = v69;
      BYTE1(v131) = v70;
      v132 = v72;
      v133 = v71;
      v134 = v74;
      v75 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      swift_unknownObjectRetain();
      if (v75(&v131, v117, v30 & 0x3FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_79;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v87 = *(v29 + 24);
    v119 = *(v29 + 32);
    v88 = *(v29 + 40);
    v113 = v88;
    LOWORD(v131) = *(v29 + 16);
    v132 = v87;
    v133 = v119;
    v134 = v88;
    LOBYTE(v127) = v69;
    BYTE1(v127) = v70;
    v128 = v72;
    v129 = v71;
    v130 = v74;
    v89 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v131, &v127);
    v90 = v132;
    v91 = v133;
    v92 = v134;
    sub_181B2C3E0(v29, v30);
    sub_181F49A24(v87, v119, v113);
    sub_181F48350(v90, v91, v92);
    if (v89)
    {
      goto LABEL_79;
    }
  }

  if (qword_1ED4100E8 != -1)
  {
    swift_once();
  }

  v93 = word_1ED411CB0;
  v94 = HIBYTE(word_1ED411CB0);
  v96 = qword_1ED411CB8;
  v95 = qword_1ED411CC0;
  v66 = byte_1ED411CC8;
  if (!v73)
  {
    swift_beginAccess();
    v98 = *(v29 + 24);
    v120 = *(v29 + 32);
    v99 = *(v29 + 40);
    LOWORD(v131) = *(v29 + 16);
    v132 = v98;
    v133 = v120;
    v134 = v99;
    LOBYTE(v127) = v93;
    BYTE1(v127) = v94;
    v128 = v96;
    v129 = v95;
    v130 = v66;
    v55 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v131, &v127);
    v79 = v98;
    v80 = v120;
    v81 = v99;
    goto LABEL_100;
  }

  if (v73 != 1)
  {
    goto LABEL_93;
  }

  v67 = v30 & 0x3FFFFFFFFFFFFFFFLL;
  v68 = swift_getObjectType();
  LOBYTE(v131) = v93;
  BYTE1(v131) = v94;
  v132 = v96;
  v133 = v95;
LABEL_92:
  v134 = v66;
  v55 = (*(v67 + 40))(&v131, v68, v67);

  sub_181AAD084(v29, v30);
LABEL_101:

  return v55 & 1;
}

uint64_t nw_protocol_transform_get_prohibit_direct(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_transform_get_prohibit_direct(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_transform_get_prohibit_direct";
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
        v12 = "nw_protocol_transform_get_prohibit_direct";
        v6 = "%{public}s called with null protocol_transform";
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
            v12 = "nw_protocol_transform_get_prohibit_direct";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol_transform, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_transform_get_prohibit_direct";
        v6 = "%{public}s called with null protocol_transform, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_transform_get_prohibit_direct";
        v6 = "%{public}s called with null protocol_transform, backtrace limit exceeded";
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

uint64_t nw_protocol_transform_get_fallback_mode(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_transform_get_fallback_mode(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_transform_get_fallback_mode";
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
        v12 = "nw_protocol_transform_get_fallback_mode";
        v6 = "%{public}s called with null protocol_transform";
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
            v12 = "nw_protocol_transform_get_fallback_mode";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol_transform, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_transform_get_fallback_mode";
        v6 = "%{public}s called with null protocol_transform, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_transform_get_fallback_mode";
        v6 = "%{public}s called with null protocol_transform, backtrace limit exceeded";
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

uint64_t _nw_protocol_transform_modify_parameters(uint64_t a1, char *a2)
{

  swift_beginAccess();
  v4 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v4;
  v7[2] = *(a1 + 48);
  v8 = *(a1 + 64);
  sub_181B29D44(v7, &v6);

  sub_1821FB9E8(a2);
  return sub_181B29DA0(v7);
}

uint64_t sub_181B63E5C(uint64_t a1)
{
  v2 = v1;

  *(a1 + 352) = 0;
  result = *(v1 + 14);
  if (*(v1 + 14))
  {
    result = sub_181C2D380(result);
  }

  v5 = *(v1 + 48);
  if ((v5 & 8) != 0 && (*(a1 + 219) & 1) == 0)
  {
    *(a1 + 219) |= 1u;
  }

  v6 = *(v1 + 13);
  if (v6 == 6)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(a1 + 218) = v6;
    if ((v5 & 0x20) == 0)
    {
LABEL_8:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  result = sub_181E614F0(1);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = sub_181F3FDA4(1);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = sub_181F3FF68(1);
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  v7 = *(a1 + 220);
  if ((v7 & 8) == 0)
  {
    *(a1 + 220) = v7 | 8;
  }

LABEL_18:
  if (*(v1 + 12))
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *(a1 + 204) = *(v1 + 8);
    if ((v5 & 1) == 0)
    {
LABEL_20:
      if ((v5 & 2) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_56;
    }
  }

  v43 = *(a1 + 344);
  sub_181AC9084();

  v44 = sub_182AD2388();
  *(v43 + 16) = *v44;

  sub_181A54748();

  *(v43 + 24) = *v44;

  if ((v5 & 2) == 0)
  {
LABEL_21:
    if ((v5 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_56:
  v45 = *(a1 + 344);
  v46 = v45[4];
  v47 = v45[5];
  *(v45 + 2) = xmmword_182AE3CC0;
  sub_181A5301C(v46, v47);
  v48 = v45[12];
  v49 = v45[13];
  *(v45 + 6) = xmmword_182AE3CC0;
  result = sub_181A53008(v48, v49);
  if ((v5 & 4) != 0)
  {
LABEL_22:
    v8 = *(a1 + 344);
    swift_beginAccess();
    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    *(v8 + 48) = xmmword_182AE3CC0;
    result = sub_181A52FE0(v9, v10);
  }

LABEL_23:
  v11 = v2[4];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 32;
    do
    {
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      LOWORD(v113) = *v13;
      v114 = v14;
      v115 = v15;
      LOBYTE(v116) = v16;
      sub_181F49A24(v14, v15, v16);
      sub_181F633C8(&v113);
      result = sub_181F48350(v14, v15, v16);
      v13 += 32;
      --v12;
    }

    while (v12);
  }

  v17 = *v2;
  if (*v2)
  {
    v101 = a1;

    v18 = sub_181AC9084();
    result = sub_181A54748();
    v20 = (result + 16);
    v19 = *(result + 16);
    *&v104 = v18;
    v21 = result + 40;
    v22 = *(result + 24);
    v23 = *(result + 32);
    v99 = v17;
    v100 = result;
    v24 = v22 + v23;
    if (v19 < v22 + v23)
    {
      v25 = *(v18 + 24);
      v26 = v25 + v22;
      v27 = __OFADD__(v25, v22);

      if (v27)
      {
        goto LABEL_153;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (*(v18 + 16) < v26 || (v29 = v18, (isUniquelyReferenced_nonNull_native & 1) == 0))
      {
        sub_181B2C3FC(isUniquelyReferenced_nonNull_native, v26);
        v29 = v104;
      }

      result = sub_18207F3A0(v29 + 2, (v29 + 5), &v108);
      v31 = v110;
      v30 = v111;
      v32 = v112;
      v33 = v109;
      if ((v112 & 1) != 0 || (v34 = v100[3], v109 >= v34))
      {
        result = sub_1820807B8(v20, v21, v108, v109, v100);
        v59 = result;
        v105 = result;
        v106 = v56;
        v107 = v57;
        if (v58 == v33)
        {
          v60 = v32;
        }

        else
        {
          v60 = 1;
        }

        if (v60)
        {
          v40 = v58;
          v55 = v101;
        }

        else
        {
          v55 = v101;
          if (v30 < 1)
          {
            v30 = 0;
          }

          else
          {
            v61 = 0;
            if (v56 != v57)
            {
              goto LABEL_74;
            }

LABEL_72:
            result = sub_181AC81FC(result);
            if (result)
            {
              v59 = v105;
              v56 = v106;
              while (1)
              {
LABEL_74:
                v62 = v56 + 1;
                v106 = v56 + 1;
                if (!v31)
                {
                  goto LABEL_161;
                }

                v63 = *(v59 + 16 * v56 + 40);
                *(v31 + 16 * v61) = v63;
                if (v30 - 1 == v61)
                {
                  break;
                }

                ++v61;
                result = sub_181B2C3E0(v63, *(&v63 + 1));
                v56 = v62;
                if (v62 == v107)
                {
                  goto LABEL_72;
                }
              }

              result = sub_181B2C3E0(v63, *(&v63 + 1));
            }

            else
            {
              v30 = v61;
            }
          }

          v40 = v33 + v30;
          if (__OFADD__(v33, v30))
          {
            goto LABEL_158;
          }

          v59 = v105;
          v56 = v106;
          v57 = v107;
        }

        v113 = v59;
        v114 = v56;
        v115 = v57;
        goto LABEL_88;
      }

      v35 = 0;
      v36 = 0;
      v37 = v108;
      v38 = v100[4];
      v39 = v38 + v34;
      if (v100[2] < v39)
      {
        v39 = v100[2];
      }

      v113 = v100;
      v114 = v38;
      v115 = v39;
      v40 = v109;
      if (v109)
      {
        goto LABEL_45;
      }

LABEL_40:
      if (v35)
      {
        v36 = v40;
        goto LABEL_81;
      }

      if (v30 <= 0)
      {
        goto LABEL_82;
      }

      if (v38 == v115)
      {
        result = sub_181AC81FC(result);
        v36 = 0;
        if ((result & 1) == 0)
        {
LABEL_81:
          v40 = v33 + v36;
          if (__OFADD__(v33, v36))
          {
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
            return result;
          }

LABEL_82:

LABEL_83:
          v55 = v101;
LABEL_88:
          v64 = v29[3];
          v73 = __OFADD__(v64, v40);
          v65 = v64 + v40;
          if (!v73)
          {
            v29[3] = v65;
            v66 = v114;
            v105 = v113;
            v106 = v114;
            v107 = v115;
            if (v114 != v115)
            {
              goto LABEL_92;
            }

LABEL_90:
            result = sub_181AC81FC(result);
            if (result)
            {
              v66 = v106;
              v65 = v29[3];
              while (1)
              {
LABEL_92:
                v36 = v66 + 1;
                v106 = v66 + 1;
                v67 = v65 + 1;
                if (__OFADD__(v65, 1))
                {
                  __break(1u);
LABEL_145:
                  __break(1u);
LABEL_146:
                  __break(1u);
LABEL_147:
                  __break(1u);
LABEL_148:
                  __break(1u);
LABEL_149:
                  __break(1u);
LABEL_150:
                  __break(1u);
LABEL_151:
                  __break(1u);
LABEL_152:
                  __break(1u);
LABEL_153:
                  __break(1u);
LABEL_154:
                  __break(1u);
                  goto LABEL_155;
                }

                v68 = &v105[2 * v66];
                v102 = *(v68 + 5);
                sub_181B2C3E0(v68[5], v68[6]);
                v29 = v104;
                result = swift_isUniquelyReferenced_nonNull_native();
                if (*(v104 + 16) < v67 || (result & 1) == 0)
                {
                  result = sub_181B2C3FC(result, v67);
                  v29 = v104;
                }

                v69 = v29[3];
                v70 = v29[4];
                v73 = __OFADD__(v70, v69);
                v71 = v70 + v69;
                if (v73)
                {
                  goto LABEL_145;
                }

                if (v69 < 0)
                {
                  if (v71 < 0)
                  {
                    v75 = v29[2];
                    v73 = __OFADD__(v71, v75);
                    v71 += v75;
                    if (v73)
                    {
                      goto LABEL_151;
                    }
                  }
                }

                else
                {
                  v72 = v29[2];
                  v73 = __OFSUB__(v71, v72);
                  v74 = v71 - v72;
                  if (v74 < 0 == v73)
                  {
                    v71 = v74;
                    if (v73)
                    {
                      goto LABEL_149;
                    }
                  }
                }

                *&v29[2 * v71 + 5] = v102;
                v73 = __OFADD__(v69, 1);
                v76 = v69 + 1;
                if (v73)
                {
                  goto LABEL_146;
                }

                v29[3] = v76;
                result = sub_18207F3A0(v29 + 2, (v29 + 5), &v113);
                v35 = 0;
                v77 = 0;
                v78 = v113;
                v33 = v114;
                v80 = v115;
                v79 = v116;
                v81 = v117 | (v116 < 1);
                v103 = v114;
                if (v114)
                {
                  while (1)
                  {
                    if (v36 == v107)
                    {
                      result = sub_181AC81FC(result);
                      if ((result & 1) == 0)
                      {
                        break;
                      }
                    }

LABEL_116:
                    v82 = v106;
                    v36 = ++v106;
                    if (!v78)
                    {
                      goto LABEL_152;
                    }

                    v83 = *&v105[2 * v82 + 5];
                    *(v78 + 16 * v77) = v83;
                    v73 = __OFADD__(v77++, 1);
                    if (v73)
                    {
                      __break(1u);
LABEL_142:
                      if ((v35 & 1) == 0)
                      {

                        v40 = v36;
                        goto LABEL_83;
                      }

                      goto LABEL_81;
                    }

                    result = sub_181B2C3E0(v83, *(&v83 + 1));
                    if (v77 == v33)
                    {
                      goto LABEL_106;
                    }
                  }

                  v33 = v77;
                  if (v35)
                  {
                    goto LABEL_121;
                  }
                }

                else
                {
LABEL_106:
                  if (v35)
                  {
                    v77 = v33;
                  }

                  else
                  {
                    if (v81)
                    {
                      goto LABEL_122;
                    }

                    if (v36 != v107)
                    {
                      v77 = 0;
LABEL_115:
                      v35 = 1;
                      v78 = v80;
                      v33 = v79;
                      goto LABEL_116;
                    }

                    result = sub_181AC81FC(result);
                    v77 = 0;
                    if (result)
                    {
                      goto LABEL_115;
                    }
                  }

LABEL_121:
                  v33 = v103 + v77;
                  if (__OFADD__(v103, v77))
                  {
                    goto LABEL_148;
                  }
                }

LABEL_122:
                v84 = v29[3];
                v73 = __OFADD__(v84, v33);
                v65 = v84 + v33;
                if (v73)
                {
                  goto LABEL_147;
                }

                v29[3] = v65;
                v66 = v106;
                v55 = v101;
                if (v106 == v107)
                {
                  goto LABEL_90;
                }
              }
            }

LABEL_128:
            v85 = v29[4];
            if (v29[2] >= v29[3] + v85)
            {
              v86 = v29[3] + v85;
            }

            else
            {
              v86 = v29[2];
            }

            v105 = v29;
            v106 = v85;
            v107 = v86;
            while (1)
            {
              if (v85 == v86)
              {
                if ((sub_181AC81FC(v54) & 1) == 0)
                {

                  ProtocolStack.transport.getter(&v105);
                  v90 = v106;
                  if ((~v106 & 0xF000000000000007) != 0)
                  {
                    v91 = *(v55 + 344);
                    v92 = *(v91 + 32);
                    v93 = *(v91 + 40);
                    *(v91 + 32) = v105;
                    *(v91 + 40) = v90;
                    sub_181A5301C(v92, v93);
                  }

                  swift_beginAccess();
                  v94 = *(v99 + 48);
                  v95 = *(v99 + 56);
                  sub_181B687F0(v94, v95);

                  if ((~v95 & 0xF000000000000007) != 0)
                  {
                    v96 = *(v55 + 344);
                    swift_beginAccess();
                    v97 = *(v96 + 48);
                    v98 = *(v96 + 56);
                    *(v96 + 48) = v94;
                    *(v96 + 56) = v95;
                    return sub_181A52FE0(v97, v98);
                  }

                  return result;
                }

                v29 = v105;
                v85 = v106;
                v86 = v107;
              }

              v87 = v85 + 1;
              v106 = v85 + 1;
              v104 = *&v29[2 * v85 + 5];
              v88 = *(&v104 + 1);
              v89 = v104;
              sub_181B2C3E0(v104, *(&v104 + 1));
              sub_181B2A5BC(&v104);
              v54 = sub_181AAD084(v89, v88);
              v85 = v87;
            }
          }

          goto LABEL_157;
        }
      }

      else
      {
        v36 = 0;
      }

      v35 = 1;
      v37 = v31;
      v40 = v30;
      while (1)
      {
        v41 = v114;
        v38 = ++v114;
        if (!v37)
        {
          goto LABEL_160;
        }

        v42 = *(v113 + 16 * v41 + 40);
        *(v37 + 16 * v36) = v42;
        v73 = __OFADD__(v36++, 1);
        if (v73)
        {
          goto LABEL_150;
        }

        result = sub_181B2C3E0(v42, *(&v42 + 1));
        if (v36 == v40)
        {
          goto LABEL_40;
        }

LABEL_45:
        if (v38 == v115)
        {
          result = sub_181AC81FC(result);
          if ((result & 1) == 0)
          {
            goto LABEL_142;
          }
        }
      }
    }

    v50 = *(result + 24);
    if (v24 < v23)
    {
      goto LABEL_154;
    }

    if (__OFSUB__(v24, v23))
    {
LABEL_155:
      __break(1u);
    }

    else
    {
      v51 = *(v18 + 24);
      v52 = v51 + v50;
      if (!__OFADD__(v51, v50))
      {

        v53 = swift_isUniquelyReferenced_nonNull_native();
        if (*(v18 + 16) < v52 || (v29 = v18, (v53 & 1) == 0))
        {
          sub_181B2C3FC(v53, v52);
          v29 = v104;
        }

        sub_181B64710((v29 + 2), (v29 + 5), v21 + 16 * v23, v50);

        v55 = v101;
        goto LABEL_128;
      }
    }

    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  return result;
}

uint64_t sub_181B64750(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *__return_ptr), uint64_t (*a6)(uint64_t, uint64_t))
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

uint64_t sub_181B64818@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 16 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181B64890(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (*(v2 + 32))
  {
    if (!result || !a2)
    {
      return result;
    }

    if (*(v2 + 8) >= a2)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v5 = *(v2 + 8);
  if (v5 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(v2 + 24);
  if (result && v5)
  {
    result = swift_arrayInitWithCopy();
  }

  if (__OFADD__(v5, a2 - v5))
  {
    goto LABEL_20;
  }

  if (a2 < v5)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v4 || a2 == v5)
  {
    return result;
  }

  if (v6 < a2 - v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:

  return swift_arrayInitWithCopy();
}

uint64_t sub_181B649A0()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

char *nw_array_get_object_at_index(char *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = _nw_array_get_object_at_index(a1, a2);
    v2 = vars8;
  }

  return a1;
}

void nw_protocol_transform_modify_parameters(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_transform_modify_parameters";
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
        v19 = "nw_protocol_transform_modify_parameters";
        v10 = "%{public}s called with null transform";
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
          v19 = "nw_protocol_transform_modify_parameters";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null transform, dumping backtrace:%{public}s", buf, 0x16u);
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
        v19 = "nw_protocol_transform_modify_parameters";
        v10 = "%{public}s called with null transform, no backtrace";
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
        v19 = "nw_protocol_transform_modify_parameters";
        v10 = "%{public}s called with null transform, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    _nw_protocol_transform_modify_parameters(v3, v4);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_transform_modify_parameters";
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
      v19 = "nw_protocol_transform_modify_parameters";
      v10 = "%{public}s called with null parameters_to_modify";
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
      v19 = "nw_protocol_transform_modify_parameters";
      v10 = "%{public}s called with null parameters_to_modify, backtrace limit exceeded";
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
      v19 = "nw_protocol_transform_modify_parameters";
      v10 = "%{public}s called with null parameters_to_modify, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_protocol_transform_modify_parameters";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters_to_modify, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

void nw_parameters_set_parent_id_internal(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_parameters_set_parent_id_internal";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_parameters_set_parent_id_internal";
        v9 = "%{public}s called with null parameters";
LABEL_32:
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
          v18 = "nw_parameters_set_parent_id_internal";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v6)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v6);
        goto LABEL_4;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "nw_parameters_set_parent_id_internal";
        v9 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_parameters_set_parent_id_internal";
        v9 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (a2)
  {
    _nw_parameters_set_parent_id_inner(v3, a2, 0);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_parameters_set_parent_id_internal";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &type, &v15))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v18 = "nw_parameters_set_parent_id_internal";
      v9 = "%{public}s called with null parent_id";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v18 = "nw_parameters_set_parent_id_internal";
      v9 = "%{public}s called with null parent_id, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
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
      v18 = "nw_parameters_set_parent_id_internal";
      v9 = "%{public}s called with null parent_id, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v14)
  {
    *buf = 136446466;
    v18 = "nw_parameters_set_parent_id_internal";
    v19 = 2082;
    v20 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parent_id, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_35;
  }

LABEL_4:
}

void nw_endpoint_transform_start_next_child(NWConcrete_nw_endpoint_handler *a1)
{
  v264 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v94 = __nwlog_obj();
    *buf = 136446210;
    v247 = "nw_endpoint_transform_start_next_child";
    v95 = _os_log_send_and_compose_impl();

    v245 = OS_LOG_TYPE_ERROR;
    v244 = 0;
    if (__nwlog_fault(v95, &v245, &v244))
    {
      if (v245 == OS_LOG_TYPE_FAULT)
      {
        v96 = __nwlog_obj();
        v97 = v245;
        if (os_log_type_enabled(v96, v245))
        {
          *buf = 136446210;
          v247 = "nw_endpoint_transform_start_next_child";
          _os_log_impl(&dword_181A37000, v96, v97, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v244 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v96 = __nwlog_obj();
        v102 = v245;
        v103 = os_log_type_enabled(v96, v245);
        if (backtrace_string)
        {
          if (v103)
          {
            *buf = 136446466;
            v247 = "nw_endpoint_transform_start_next_child";
            v248 = 2082;
            id_str = backtrace_string;
            _os_log_impl(&dword_181A37000, v96, v102, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_198;
        }

        if (v103)
        {
          *buf = 136446210;
          v247 = "nw_endpoint_transform_start_next_child";
          _os_log_impl(&dword_181A37000, v96, v102, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v96 = __nwlog_obj();
        v110 = v245;
        if (os_log_type_enabled(v96, v245))
        {
          *buf = 136446210;
          v247 = "nw_endpoint_transform_start_next_child";
          _os_log_impl(&dword_181A37000, v96, v110, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_198:
    if (v95)
    {
      free(v95);
    }

    goto LABEL_102;
  }

  v3 = v1;
  mode = v3->mode;

  if (mode == 5)
  {
    v5 = nw_endpoint_handler_copy_transform(v3);
    v6 = *(v5 + 1);
    if (!v6 || !_nw_array_get_count(v6))
    {
      nw_endpoint_handler_handle_failure(v3);
      v15 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
      v3->event = 131079;
      nw_endpoint_handler_report(v3, 0, &v3->event.domain, v15);

LABEL_101:
      goto LABEL_102;
    }

    v7 = *(v5 + 10);
    v8 = v3;
    v9 = v3->mode;

    v236 = v5;
    if (v9 != 5)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if (v9 > 5)
        {
          v17 = "unknown-mode";
        }

        else
        {
          v17 = off_1E6A31018[v9];
        }

        *buf = 136446722;
        v247 = "nw_endpoint_transform_get_child_at_index";
        v248 = 2082;
        id_str = v17;
        v250 = 2082;
        v251 = "transform";
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }

      goto LABEL_62;
    }

    v10 = nw_endpoint_handler_copy_transform(v8);
    v11 = v10[1];
    if (v11 && _nw_array_get_count(v11))
    {
      v12 = v10[1];
      if (v12 && _nw_array_get_count(v12) > v7)
      {
        v237 = nw_array_get_object_at_index(v10[1], v7);
        goto LABEL_23;
      }

      if (gLogDatapath == 1)
      {
        v156 = v7;
        if (nw_endpoint_handler_get_logging_disabled(v8))
        {
          v237 = 0;
LABEL_23:

          if (v237)
          {
            v19 = *(v236 + 8);
            if (v19)
            {
              nw_queue_cancel_source(v19, v18);
              *(v236 + 8) = 0;
            }

            v20 = *(v236 + 3);
            if (v20 && xpc_array_get_count(v20) > v7)
            {
              int64 = xpc_array_get_int64(*(v236 + 3), v7);
              if (int64 == 2)
              {
                v22 = 2;
              }

              else
              {
                v22 = 1;
              }

              if (int64 == 3)
              {
                v23 = 3;
              }

              else
              {
                v23 = v22;
              }
            }

            else
            {
              v23 = 1;
            }

            ++*(v236 + 10);
            if (!v7)
            {
              v24 = v237;
              v25 = v24[4];

              if (v25)
              {
                upper_transport_protocol = nw_parameters_get_upper_transport_protocol(v25);
                if (upper_transport_protocol != 253)
                {
                  upper_transport_protocol = nw_parameters_get_ip_protocol(v25);
                }

                *(v236 + 20) = upper_transport_protocol;
              }
            }

            nw_endpoint_handler_start(v237);
            v27 = v8;
            v28 = (v27->state & 0xFFFFFFFE) == 4;

            v29 = v27;
            v30 = v29;
            if (v28)
            {
              v31 = (*(v29 + 284) & 0x20) == 0;

              if (!v31)
              {
                if (nw_endpoint_handler_get_logging_disabled(v30))
                {
                  goto LABEL_99;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v34 = gconnectionLogObj;
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                {
                  id_string = nw_endpoint_handler_get_id_string(v30);
                  v150 = nw_endpoint_handler_dry_run_string(v30);
                  v151 = nw_endpoint_handler_copy_endpoint(v30);
                  logging_description = nw_endpoint_get_logging_description(v151);
                  v153 = nw_endpoint_handler_state_string(v30);
                  v154 = nw_endpoint_handler_mode_string(v30);
                  v155 = nw_endpoint_handler_copy_current_path(v30);
                  *buf = 136447746;
                  v247 = "nw_endpoint_transform_start_next_child";
                  v248 = 2082;
                  id_str = id_string;
                  v250 = 2082;
                  v251 = v150;
                  v252 = 2082;
                  v253 = logging_description;
                  v254 = 2082;
                  v255 = v153;
                  v256 = 2082;
                  v257 = v154;
                  v258 = 2114;
                  v259 = v155;
                  _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting next child timer, handler cancelled or failed", buf, 0x48u);
                }

                goto LABEL_98;
              }

              v32 = v30;
              v33 = (*(v30 + 284) & 0x40) == 0;

              if (v33)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v34 = gconnectionLogObj;
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  v35 = nw_endpoint_handler_get_id_string(v32);
                  v36 = nw_endpoint_handler_dry_run_string(v32);
                  v37 = nw_endpoint_handler_copy_endpoint(v32);
                  v38 = nw_endpoint_get_logging_description(v37);
                  v39 = nw_endpoint_handler_state_string(v32);
                  v40 = nw_endpoint_handler_mode_string(v32);
                  v41 = nw_endpoint_handler_copy_current_path(v32);
                  *buf = 136447746;
                  v247 = "nw_endpoint_transform_start_next_child";
                  v248 = 2082;
                  id_str = v35;
                  v250 = 2082;
                  v251 = v36;
                  v252 = 2082;
                  v253 = v38;
                  v254 = 2082;
                  v255 = v39;
                  v256 = 2082;
                  v257 = v40;
                  v258 = 2114;
                  v259 = v41;
                  _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting next child timer, handler cancelled or failed", buf, 0x48u);
                }

                goto LABEL_98;
              }

LABEL_99:

LABEL_100:
              v5 = v236;
              goto LABEL_101;
            }

            v42 = v3->mode == 5;

            if (!v42)
            {
              minimize_logging = nw_endpoint_handler_get_minimize_logging(v30);
              logging_disabled = nw_endpoint_handler_get_logging_disabled(v30);
              if (minimize_logging)
              {
                if (logging_disabled)
                {
                  goto LABEL_99;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v34 = gconnectionLogObj;
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                {
                  v162 = nw_endpoint_handler_get_id_string(v30);
                  v163 = nw_endpoint_handler_dry_run_string(v30);
                  v164 = nw_endpoint_handler_copy_endpoint(v30);
                  v165 = nw_endpoint_get_logging_description(v164);
                  v166 = nw_endpoint_handler_state_string(v30);
                  v167 = nw_endpoint_handler_mode_string(v30);
                  v168 = nw_endpoint_handler_copy_current_path(v30);
                  *buf = 136447746;
                  v247 = "nw_endpoint_transform_start_next_child";
                  v248 = 2082;
                  id_str = v162;
                  v250 = 2082;
                  v251 = v163;
                  v252 = 2082;
                  v253 = v165;
                  v254 = 2082;
                  v255 = v166;
                  v256 = 2082;
                  v257 = v167;
                  v258 = 2114;
                  v259 = v168;
                  _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting next child timer, no longer transform mode", buf, 0x48u);
                }

                goto LABEL_98;
              }

              if ((logging_disabled & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v34 = gconnectionLogObj;
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  v73 = nw_endpoint_handler_get_id_string(v30);
                  v74 = nw_endpoint_handler_dry_run_string(v30);
                  v75 = nw_endpoint_handler_copy_endpoint(v30);
                  v76 = nw_endpoint_get_logging_description(v75);
                  v77 = nw_endpoint_handler_state_string(v30);
                  v78 = nw_endpoint_handler_mode_string(v30);
                  v79 = nw_endpoint_handler_copy_current_path(v30);
                  *buf = 136447746;
                  v247 = "nw_endpoint_transform_start_next_child";
                  v248 = 2082;
                  id_str = v73;
                  v250 = 2082;
                  v251 = v74;
                  v252 = 2082;
                  v253 = v76;
                  v254 = 2082;
                  v255 = v77;
                  v256 = 2082;
                  v257 = v78;
                  v258 = 2114;
                  v259 = v79;
                  _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting next child timer, no longer transform mode", buf, 0x48u);
                }

                goto LABEL_98;
              }

              goto LABEL_99;
            }

            if (*(v236 + 6))
            {
              goto LABEL_99;
            }

            if (v23 != 3)
            {
              if (v23 != 2)
              {
                goto LABEL_99;
              }

              v43 = v30;
              v237 = v237;
              v44 = 100 * networkd_settings_get_int64_with_default(nw_setting_transform_rtt_delay_factor, 2);
              v45 = nw_endpoint_handler_get_mode(v43);
              v234 = v43;
              if (v45 != 5)
              {
                v92 = v45;
                v46 = __nwlog_obj();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  if (v92 > 5)
                  {
                    v93 = "unknown-mode";
                  }

                  else
                  {
                    v93 = off_1E6A31018[v92];
                  }

                  *buf = 136446722;
                  v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                  v248 = 2082;
                  id_str = v93;
                  v250 = 2082;
                  v251 = "transform";
                  _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
                }

                goto LABEL_166;
              }

              v46 = nw_endpoint_handler_copy_transform(v43);
              v47 = *(v46 + 40);
              v48 = v43;
              v49 = nw_endpoint_handler_get_mode(v48);
              if (v49 != 5)
              {
                v98 = v49;
                v99 = __nwlog_obj();
                if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                {
                  if (v98 > 5)
                  {
                    v100 = "unknown-mode";
                  }

                  else
                  {
                    v100 = off_1E6A31018[v98];
                  }

                  *buf = 136446722;
                  v247 = "nw_endpoint_transform_get_child_at_index";
                  v248 = 2082;
                  id_str = v100;
                  v250 = 2082;
                  v251 = "transform";
                  _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
                }

LABEL_138:
                if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v48) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v53 = gconnectionLogObj;
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                  {
                    v223 = nw_endpoint_handler_get_id_string(v48);
                    v219 = nw_endpoint_handler_dry_run_string(v48);
                    v230 = nw_endpoint_handler_copy_endpoint(v48);
                    v111 = nw_endpoint_get_logging_description(v230);
                    v112 = nw_endpoint_handler_state_string(v48);
                    v113 = nw_endpoint_handler_mode_string(v48);
                    v114 = nw_endpoint_handler_copy_current_path(v48);
                    *buf = 136448002;
                    v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                    v248 = 2082;
                    id_str = v223;
                    v250 = 2082;
                    v251 = v219;
                    v252 = 2082;
                    v253 = v111;
                    v254 = 2082;
                    v255 = v112;
                    v256 = 2082;
                    v257 = v113;
                    v258 = 2114;
                    v259 = v114;
                    v260 = 1024;
                    LODWORD(v261) = v47;
                    _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no child at index %u", buf, 0x4Eu);
                  }

                  goto LABEL_165;
                }

LABEL_166:

                v231 = nw_endpoint_handler_get_child_timeout_nanos(v237) * v44;
                v125 = v234;
                v126 = nw_endpoint_handler_get_minimize_logging(v234);
                v127 = nw_endpoint_handler_get_logging_disabled(v234);
                v128 = v236;
                if (v126)
                {
                  if (v127)
                  {
LABEL_173:
                    *(v128 + 9) = v231 / 0x5F5E100;
                    v137 = nw_endpoint_handler_copy_context(v125);
                    v242[0] = MEMORY[0x1E69E9820];
                    v242[1] = 3221225472;
                    v242[2] = ___ZL38nw_endpoint_transform_start_next_childP30NWConcrete_nw_endpoint_handler_block_invoke;
                    v242[3] = &unk_1E6A3D868;
                    v243 = v125;
                    *(v128 + 8) = nw_queue_context_create_source(v137, 2, 3, 0, v242, 0);

                    v138 = *(v128 + 8);
                    if (v138)
                    {
                      v139 = dispatch_time(0x8000000000000000, v231 / 0x64);
                      nw_queue_set_timer_values(v138, v139, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
                      nw_queue_activate_source(*(v236 + 8), v140);
LABEL_175:
                      v34 = v243;
                      goto LABEL_98;
                    }

                    v141 = __nwlog_obj();
                    *buf = 136446210;
                    v247 = "nw_endpoint_transform_start_next_child";
                    v142 = _os_log_send_and_compose_impl();

                    v245 = OS_LOG_TYPE_ERROR;
                    v244 = 0;
                    if (__nwlog_fault(v142, &v245, &v244))
                    {
                      if (v245 == OS_LOG_TYPE_FAULT)
                      {
                        v143 = __nwlog_obj();
                        v144 = v245;
                        if (os_log_type_enabled(v143, v245))
                        {
                          *buf = 136446210;
                          v247 = "nw_endpoint_transform_start_next_child";
                          _os_log_impl(&dword_181A37000, v143, v144, "%{public}s nw_queue_context_create_source(timer) failed", buf, 0xCu);
                        }

LABEL_192:

                        goto LABEL_193;
                      }

                      if (v244 != 1)
                      {
                        v143 = __nwlog_obj();
                        v148 = v245;
                        if (os_log_type_enabled(v143, v245))
                        {
                          *buf = 136446210;
                          v247 = "nw_endpoint_transform_start_next_child";
                          _os_log_impl(&dword_181A37000, v143, v148, "%{public}s nw_queue_context_create_source(timer) failed, backtrace limit exceeded", buf, 0xCu);
                        }

                        goto LABEL_192;
                      }

                      v145 = __nw_create_backtrace_string();
                      v143 = __nwlog_obj();
                      v146 = v245;
                      v147 = os_log_type_enabled(v143, v245);
                      if (!v145)
                      {
                        if (v147)
                        {
                          *buf = 136446210;
                          v247 = "nw_endpoint_transform_start_next_child";
                          _os_log_impl(&dword_181A37000, v143, v146, "%{public}s nw_queue_context_create_source(timer) failed, no backtrace", buf, 0xCu);
                        }

                        goto LABEL_192;
                      }

                      if (v147)
                      {
                        *buf = 136446466;
                        v247 = "nw_endpoint_transform_start_next_child";
                        v248 = 2082;
                        id_str = v145;
                        _os_log_impl(&dword_181A37000, v143, v146, "%{public}s nw_queue_context_create_source(timer) failed, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v145);
                    }

LABEL_193:
                    if (v142)
                    {
                      free(v142);
                      v34 = v243;
                      goto LABEL_98;
                    }

                    goto LABEL_175;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v129 = gconnectionLogObj;
                  if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
                  {
                    v226 = nw_endpoint_handler_get_id_string(v234);
                    v169 = nw_endpoint_handler_dry_run_string(v234);
                    v170 = nw_endpoint_handler_copy_endpoint(v234);
                    v171 = nw_endpoint_get_logging_description(v170);
                    v172 = nw_endpoint_handler_state_string(v234);
                    v173 = nw_endpoint_handler_mode_string(v234);
                    v174 = nw_endpoint_handler_copy_current_path(v234);
                    *buf = 136448002;
                    v247 = "nw_endpoint_transform_start_next_child";
                    v248 = 2082;
                    id_str = v226;
                    v250 = 2082;
                    v251 = v169;
                    v252 = 2082;
                    v253 = v171;
                    v254 = 2082;
                    v255 = v172;
                    v256 = 2082;
                    v257 = v173;
                    v258 = 2114;
                    v259 = v174;
                    v260 = 2048;
                    v261 = v231 / 0x5F5E100;
                    _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting next child endpoint in %llums", buf, 0x52u);
                  }
                }

                else
                {
                  if (v127)
                  {
                    goto LABEL_173;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v129 = gconnectionLogObj;
                  if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
                  {
                    v130 = nw_endpoint_handler_get_id_string(v234);
                    v131 = nw_endpoint_handler_dry_run_string(v234);
                    v132 = nw_endpoint_handler_copy_endpoint(v234);
                    v133 = nw_endpoint_get_logging_description(v132);
                    v134 = nw_endpoint_handler_state_string(v234);
                    v135 = nw_endpoint_handler_mode_string(v234);
                    v136 = nw_endpoint_handler_copy_current_path(v234);
                    *buf = 136448002;
                    v247 = "nw_endpoint_transform_start_next_child";
                    v248 = 2082;
                    id_str = v130;
                    v250 = 2082;
                    v251 = v131;
                    v252 = 2082;
                    v253 = v133;
                    v254 = 2082;
                    v255 = v134;
                    v256 = 2082;
                    v257 = v135;
                    v258 = 2114;
                    v259 = v136;
                    v260 = 2048;
                    v261 = v231 / 0x5F5E100;
                    _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting next child endpoint in %llums", buf, 0x52u);
                  }
                }

                v128 = v236;
                v125 = v234;
                goto LABEL_173;
              }

              v50 = nw_endpoint_handler_copy_transform(v48);
              v51 = v50[1];
              if (v51 && _nw_array_get_count(v51))
              {
                v52 = v50[1];
                if (v52 && _nw_array_get_count(v52) > v47)
                {
                  v53 = nw_array_get_object_at_index(v50[1], v47);
                  goto LABEL_124;
                }

                if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v48) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v197 = gconnectionLogObj;
                  if (os_log_type_enabled(v197, OS_LOG_TYPE_DEBUG))
                  {
                    v228 = nw_endpoint_handler_get_id_string(v48);
                    v222 = nw_endpoint_handler_dry_run_string(v48);
                    v233 = nw_endpoint_handler_copy_endpoint(v48);
                    v218 = nw_endpoint_get_logging_description(v233);
                    v198 = nw_endpoint_handler_state_string(v48);
                    v199 = nw_endpoint_handler_mode_string(v48);
                    v200 = nw_endpoint_handler_copy_current_path(v48);
                    *buf = 136448002;
                    v247 = "nw_endpoint_transform_get_child_at_index";
                    v248 = 2082;
                    id_str = v228;
                    v250 = 2082;
                    v251 = v222;
                    v252 = 2082;
                    v253 = v218;
                    v254 = 2082;
                    v255 = v198;
                    v256 = 2082;
                    v257 = v199;
                    v258 = 2114;
                    v201 = v200;
                    v259 = v200;
                    v260 = 1024;
                    LODWORD(v261) = v47;
                    _os_log_impl(&dword_181A37000, v197, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no child at index %u", buf, 0x4Eu);
                  }
                }
              }

              v53 = 0;
LABEL_124:

              if (v53)
              {
                v104 = nw_endpoint_handler_copy_parameters(v237);
                v229 = v104;
                if (v104)
                {
                  v105 = v104;
                  v106 = nw_endpoint_handler_copy_parameters(v53);
                  if (v106)
                  {
                    if (nw_parameters_get_upper_transport_protocol(v105) != 253)
                    {
LABEL_163:

LABEL_164:
LABEL_165:

                      goto LABEL_166;
                    }

                    v107 = _nw_parameters_copy_upper_transport_protocol_options(v105);
                    v108 = v107;
                    if (v107)
                    {
                      if (nw_protocol_options_is_quic(v107))
                      {
                        if (_nw_protocol_options_is_quic_stream(v108))
                        {
                          is_speculative_attempt = nw_quic_get_is_speculative_attempt(v108);
                        }

                        else
                        {
                          if (!_nw_protocol_options_is_quic_connection(v108))
                          {
                            goto LABEL_154;
                          }

                          is_speculative_attempt = nw_quic_connection_get_is_speculative_attempt(v108);
                        }

                        if (is_speculative_attempt)
                        {
                          if ((nw_endpoint_handler_get_logging_disabled(v48) & 1) == 0)
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v115 = gconnectionLogObj;
                            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
                            {
                              v116 = nw_endpoint_handler_get_id_string(v48);
                              v224 = nw_endpoint_handler_dry_run_string(v48);
                              v117 = nw_endpoint_handler_copy_endpoint(v48);
                              v220 = nw_endpoint_get_logging_description(v117);
                              v216 = nw_endpoint_handler_state_string(v48);
                              v214 = nw_endpoint_handler_mode_string(v48);
                              v118 = nw_endpoint_handler_copy_current_path(v48);
                              v119 = nw_endpoint_handler_get_id_string(v237);
                              *buf = 136448002;
                              v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                              v248 = 2082;
                              id_str = v116;
                              v250 = 2082;
                              v251 = v224;
                              v252 = 2082;
                              v253 = v220;
                              v254 = 2082;
                              v255 = v216;
                              v256 = 2082;
                              v257 = v214;
                              v258 = 2114;
                              v259 = v118;
                              v260 = 2080;
                              v261 = v119;
                              _os_log_impl(&dword_181A37000, v115, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] quic [C%s] is speculative attempt, using shorter timeout percentage", buf, 0x52u);
                            }
                          }

                          *(v46 + 97) = 1;
                          v44 = 50;
LABEL_162:

                          goto LABEL_163;
                        }

LABEL_154:
                        if (nw_parameters_get_upper_transport_protocol(v106) != 253)
                        {
                          if ((nw_endpoint_handler_get_logging_disabled(v48) & 1) == 0)
                          {
                            if (__nwlog_connection_log::onceToken[0] != -1)
                            {
                              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                            }

                            v120 = gconnectionLogObj;
                            if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
                            {
                              v225 = nw_endpoint_handler_get_id_string(v48);
                              v221 = nw_endpoint_handler_dry_run_string(v48);
                              v121 = nw_endpoint_handler_copy_endpoint(v48);
                              v217 = nw_endpoint_get_logging_description(v121);
                              v215 = nw_endpoint_handler_state_string(v48);
                              v213 = nw_endpoint_handler_mode_string(v48);
                              v122 = nw_endpoint_handler_copy_current_path(v48);
                              v123 = nw_endpoint_handler_get_id_string(v237);
                              v124 = nw_endpoint_handler_get_id_string(v53);
                              *buf = 136448258;
                              v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                              v248 = 2082;
                              id_str = v225;
                              v250 = 2082;
                              v251 = v221;
                              v252 = 2082;
                              v253 = v217;
                              v254 = 2082;
                              v255 = v215;
                              v256 = 2082;
                              v257 = v213;
                              v258 = 2114;
                              v259 = v122;
                              v260 = 2080;
                              v261 = v123;
                              v262 = 2080;
                              v263 = v124;
                              _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] quic [C%s] is not speculative, using shorter timeout percentage for non-quic next child [C%s]", buf, 0x5Cu);
                            }
                          }

                          v44 = 100;
                        }

                        goto LABEL_162;
                      }

                      v227 = v106;
                      v195 = __nwlog_obj();
                      *buf = 136446210;
                      v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                      v192 = _os_log_send_and_compose_impl();

                      v245 = OS_LOG_TYPE_ERROR;
                      v244 = 0;
                      if (__nwlog_fault(v192, &v245, &v244))
                      {
                        if (v245 == OS_LOG_TYPE_FAULT)
                        {
                          v193 = __nwlog_obj();
                          v196 = v245;
                          if (os_log_type_enabled(v193, v245))
                          {
                            *buf = 136446210;
                            v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                            _os_log_impl(&dword_181A37000, v193, v196, "%{public}s called with null nw_protocol_options_is_quic(current_quic_options)", buf, 0xCu);
                          }

LABEL_279:

                          goto LABEL_296;
                        }

                        if (v244 != 1)
                        {
                          v193 = __nwlog_obj();
                          v212 = v245;
                          if (os_log_type_enabled(v193, v245))
                          {
                            *buf = 136446210;
                            v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                            _os_log_impl(&dword_181A37000, v193, v212, "%{public}s called with null nw_protocol_options_is_quic(current_quic_options), backtrace limit exceeded", buf, 0xCu);
                          }

                          goto LABEL_279;
                        }

                        v208 = __nw_create_backtrace_string();
                        v205 = __nwlog_obj();
                        v209 = v245;
                        v210 = os_log_type_enabled(v205, v245);
                        if (v208)
                        {
                          if (v210)
                          {
                            *buf = 136446466;
                            v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                            v248 = 2082;
                            id_str = v208;
                            _os_log_impl(&dword_181A37000, v205, v209, "%{public}s called with null nw_protocol_options_is_quic(current_quic_options), dumping backtrace:%{public}s", buf, 0x16u);
                          }

                          free(v208);
                          if (!v192)
                          {
                            goto LABEL_298;
                          }

                          goto LABEL_297;
                        }

                        if (v210)
                        {
                          *buf = 136446210;
                          v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                          _os_log_impl(&dword_181A37000, v205, v209, "%{public}s called with null nw_protocol_options_is_quic(current_quic_options), no backtrace", buf, 0xCu);
                        }

                        goto LABEL_295;
                      }
                    }

                    else
                    {
                      v227 = v106;
                      v191 = __nwlog_obj();
                      *buf = 136446210;
                      v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                      v192 = _os_log_send_and_compose_impl();

                      v245 = OS_LOG_TYPE_ERROR;
                      v244 = 0;
                      if (!__nwlog_fault(v192, &v245, &v244))
                      {
                        goto LABEL_296;
                      }

                      if (v245 == OS_LOG_TYPE_FAULT)
                      {
                        v193 = __nwlog_obj();
                        v194 = v245;
                        if (os_log_type_enabled(v193, v245))
                        {
                          *buf = 136446210;
                          v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                          _os_log_impl(&dword_181A37000, v193, v194, "%{public}s called with null current_quic_options", buf, 0xCu);
                        }

                        goto LABEL_279;
                      }

                      if (v244 != 1)
                      {
                        v193 = __nwlog_obj();
                        v211 = v245;
                        if (os_log_type_enabled(v193, v245))
                        {
                          *buf = 136446210;
                          v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                          _os_log_impl(&dword_181A37000, v193, v211, "%{public}s called with null current_quic_options, backtrace limit exceeded", buf, 0xCu);
                        }

                        goto LABEL_279;
                      }

                      v204 = __nw_create_backtrace_string();
                      v205 = __nwlog_obj();
                      v206 = v245;
                      v207 = os_log_type_enabled(v205, v245);
                      if (!v204)
                      {
                        if (v207)
                        {
                          *buf = 136446210;
                          v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                          _os_log_impl(&dword_181A37000, v205, v206, "%{public}s called with null current_quic_options, no backtrace", buf, 0xCu);
                        }

LABEL_295:

                        goto LABEL_296;
                      }

                      if (v207)
                      {
                        *buf = 136446466;
                        v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                        v248 = 2082;
                        id_str = v204;
                        _os_log_impl(&dword_181A37000, v205, v206, "%{public}s called with null current_quic_options, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v204);
                    }

LABEL_296:
                    if (!v192)
                    {
LABEL_298:

LABEL_299:
                      v106 = v227;
                      goto LABEL_163;
                    }

LABEL_297:
                    free(v192);
                    goto LABEL_298;
                  }

                  v227 = 0;
                  v179 = __nwlog_obj();
                  *buf = 136446210;
                  v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                  v180 = _os_log_send_and_compose_impl();

                  v245 = OS_LOG_TYPE_ERROR;
                  v244 = 0;
                  if (__nwlog_fault(v180, &v245, &v244))
                  {
                    if (v245 == OS_LOG_TYPE_FAULT)
                    {
                      v181 = __nwlog_obj();
                      v182 = v245;
                      if (os_log_type_enabled(v181, v245))
                      {
                        *buf = 136446210;
                        v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                        _os_log_impl(&dword_181A37000, v181, v182, "%{public}s called with null next_parameters", buf, 0xCu);
                      }
                    }

                    else
                    {
                      if (v244 == 1)
                      {
                        v187 = __nw_create_backtrace_string();
                        v188 = __nwlog_obj();
                        v189 = v245;
                        v190 = os_log_type_enabled(v188, v245);
                        if (v187)
                        {
                          if (v190)
                          {
                            *buf = 136446466;
                            v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                            v248 = 2082;
                            id_str = v187;
                            _os_log_impl(&dword_181A37000, v188, v189, "%{public}s called with null next_parameters, dumping backtrace:%{public}s", buf, 0x16u);
                          }

                          free(v187);
                        }

                        else
                        {
                          if (v190)
                          {
                            *buf = 136446210;
                            v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                            _os_log_impl(&dword_181A37000, v188, v189, "%{public}s called with null next_parameters, no backtrace", buf, 0xCu);
                          }
                        }

                        goto LABEL_288;
                      }

                      v181 = __nwlog_obj();
                      v203 = v245;
                      if (os_log_type_enabled(v181, v245))
                      {
                        *buf = 136446210;
                        v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                        _os_log_impl(&dword_181A37000, v181, v203, "%{public}s called with null next_parameters, backtrace limit exceeded", buf, 0xCu);
                      }
                    }
                  }

LABEL_288:
                  if (v180)
                  {
                    free(v180);
                  }

                  goto LABEL_299;
                }

                v175 = __nwlog_obj();
                *buf = 136446210;
                v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                v176 = _os_log_send_and_compose_impl();

                v245 = OS_LOG_TYPE_ERROR;
                v244 = 0;
                if (__nwlog_fault(v176, &v245, &v244))
                {
                  if (v245 == OS_LOG_TYPE_FAULT)
                  {
                    v177 = __nwlog_obj();
                    v178 = v245;
                    if (os_log_type_enabled(v177, v245))
                    {
                      *buf = 136446210;
                      v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                      _os_log_impl(&dword_181A37000, v177, v178, "%{public}s called with null current_parameters", buf, 0xCu);
                    }
                  }

                  else
                  {
                    if (v244 == 1)
                    {
                      v183 = __nw_create_backtrace_string();
                      v184 = __nwlog_obj();
                      v185 = v245;
                      v186 = os_log_type_enabled(v184, v245);
                      if (v183)
                      {
                        if (v186)
                        {
                          *buf = 136446466;
                          v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                          v248 = 2082;
                          id_str = v183;
                          _os_log_impl(&dword_181A37000, v184, v185, "%{public}s called with null current_parameters, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v183);
                      }

                      else
                      {
                        if (v186)
                        {
                          *buf = 136446210;
                          v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                          _os_log_impl(&dword_181A37000, v184, v185, "%{public}s called with null current_parameters, no backtrace", buf, 0xCu);
                        }
                      }

                      goto LABEL_283;
                    }

                    v177 = __nwlog_obj();
                    v202 = v245;
                    if (os_log_type_enabled(v177, v245))
                    {
                      *buf = 136446210;
                      v247 = "nw_endpoint_transform_get_next_child_scale_percentage";
                      _os_log_impl(&dword_181A37000, v177, v202, "%{public}s called with null current_parameters, backtrace limit exceeded", buf, 0xCu);
                    }
                  }
                }

LABEL_283:
                if (v176)
                {
                  free(v176);
                }

                goto LABEL_164;
              }

              goto LABEL_138;
            }

            v91 = nw_endpoint_handler_copy_context(v30);
            v240[0] = MEMORY[0x1E69E9820];
            v240[1] = 3221225472;
            v240[2] = ___ZL38nw_endpoint_transform_start_next_childP30NWConcrete_nw_endpoint_handler_block_invoke_105;
            v240[3] = &unk_1E6A3D868;
            v241 = v30;
            nw_queue_context_async(v91, v240);

            v34 = v241;
LABEL_98:

            goto LABEL_99;
          }

LABEL_62:
          v54 = v8;
          v55 = (*(v54 + 284) & 0x40) == 0;

          if (!v55)
          {

            goto LABEL_100;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v34 = gconnectionLogObj;
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_97;
          }

          v56 = v54;

          v57 = v56;
          v58 = (*(v54 + 284) & 1) == 0;

          if (v58)
          {
            v59 = "";
          }

          else
          {
            v59 = "dry-run ";
          }

          v60 = nw_endpoint_handler_copy_endpoint(v57);
          v61 = v60;
          if (v60)
          {
            v62 = _nw_endpoint_get_logging_description(v60);
          }

          else
          {
            v62 = "<NULL>";
          }

          v63 = v57;
          v64 = v63;
          v65 = v63[30];
          if (v65 > 5)
          {
            v66 = "unknown-state";
          }

          else
          {
            v66 = off_1E6A31048[v65];
          }

          v67 = v64;
          v68 = v67;
          v69 = v3->mode;
          if (v69 > 2)
          {
            switch(v69)
            {
              case 3:
                v70 = "proxy";
                break;
              case 4:
                v70 = "fallback";
                break;
              case 5:
                v70 = "transform";
                break;
              default:
LABEL_92:
                v70 = "unknown-mode";
                break;
            }
          }

          else
          {
            if (v69)
            {
              if (v69 == 1)
              {
                v70 = "resolver";
                goto LABEL_95;
              }

              if (v69 == 2)
              {
                v238 = nw_endpoint_flow_mode_string(v67[33]);
LABEL_96:

                v80 = v56;
                v81 = v2;
                v82 = v66;
                v83 = v34;
                v84 = v62;
                v85 = v59;
                v86 = v7;
                v87 = v68;
                os_unfair_lock_lock(v87 + 28);
                v88 = v87[8];
                os_unfair_lock_unlock(v87 + 28);

                v89 = v84;
                v34 = v83;
                v90 = v82;
                v2 = v81;
                *buf = 136448002;
                v247 = "nw_endpoint_transform_start_next_child";
                v248 = 2082;
                id_str = v80->id_str;
                v250 = 2082;
                v251 = v85;
                v252 = 2082;
                v253 = v89;
                v254 = 2082;
                v255 = v90;
                v256 = 2082;
                v257 = v238;
                v258 = 2114;
                v259 = v88;
                v260 = 1024;
                LODWORD(v261) = v86;
                _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no child at index %u", buf, 0x4Eu);

LABEL_97:
                v237 = 0;
                goto LABEL_98;
              }

              goto LABEL_92;
            }

            v70 = "path";
          }

LABEL_95:
          v238 = v70;
          goto LABEL_96;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v157 = gconnectionLogObj;
        if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
        {
          v239 = nw_endpoint_handler_get_id_string(v8);
          v235 = nw_endpoint_handler_dry_run_string(v8);
          v158 = nw_endpoint_handler_copy_endpoint(v8);
          v232 = nw_endpoint_get_logging_description(v158);
          v159 = nw_endpoint_handler_state_string(v8);
          v160 = nw_endpoint_handler_mode_string(v8);
          v161 = nw_endpoint_handler_copy_current_path(v8);
          *buf = 136448002;
          v247 = "nw_endpoint_transform_get_child_at_index";
          v248 = 2082;
          id_str = v239;
          v250 = 2082;
          v251 = v235;
          v252 = 2082;
          v253 = v232;
          v254 = 2082;
          v255 = v159;
          v256 = 2082;
          v257 = v160;
          v258 = 2114;
          v259 = v161;
          v260 = 1024;
          LODWORD(v261) = v156;
          _os_log_impl(&dword_181A37000, v157, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no child at index %u", buf, 0x4Eu);
        }

        v7 = v156;
      }
    }

    v237 = 0;
    goto LABEL_23;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (mode > 5)
    {
      v14 = "unknown-mode";
    }

    else
    {
      v14 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v247 = "nw_endpoint_transform_start_next_child";
    v248 = 2082;
    id_str = v14;
    v250 = 2082;
    v251 = "transform";
    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_102:
}

uint64_t nw_association_get_cached_content_for_protocol(void *a1, void *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v45 = __nwlog_obj();
    *buf = 136446210;
    v70 = "nw_association_get_cached_content_for_protocol";
    v46 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v67 = 0;
    if (!__nwlog_fault(v46, &type, &v67))
    {
      goto LABEL_108;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v48 = type;
      if (os_log_type_enabled(v47, type))
      {
        *buf = 136446210;
        v70 = "nw_association_get_cached_content_for_protocol";
        _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null association", buf, 0xCu);
      }
    }

    else if (v67 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v47 = __nwlog_obj();
      v52 = type;
      v53 = os_log_type_enabled(v47, type);
      if (backtrace_string)
      {
        if (v53)
        {
          *buf = 136446466;
          v70 = "nw_association_get_cached_content_for_protocol";
          v71 = 2082;
          v72 = backtrace_string;
          _os_log_impl(&dword_181A37000, v47, v52, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v46)
        {
          goto LABEL_110;
        }

        goto LABEL_109;
      }

      if (v53)
      {
        *buf = 136446210;
        v70 = "nw_association_get_cached_content_for_protocol";
        _os_log_impl(&dword_181A37000, v47, v52, "%{public}s called with null association, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v47 = __nwlog_obj();
      v57 = type;
      if (os_log_type_enabled(v47, type))
      {
        *buf = 136446210;
        v70 = "nw_association_get_cached_content_for_protocol";
        _os_log_impl(&dword_181A37000, v47, v57, "%{public}s called with null association, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_107;
  }

  if (!v4)
  {
    v49 = __nwlog_obj();
    *buf = 136446210;
    v70 = "nw_association_get_cached_content_for_protocol";
    v46 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v67 = 0;
    if (!__nwlog_fault(v46, &type, &v67))
    {
      goto LABEL_108;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v47, type))
      {
        *buf = 136446210;
        v70 = "nw_association_get_cached_content_for_protocol";
        _os_log_impl(&dword_181A37000, v47, v50, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v67 == 1)
    {
      v54 = __nw_create_backtrace_string();
      v47 = __nwlog_obj();
      v55 = type;
      v56 = os_log_type_enabled(v47, type);
      if (v54)
      {
        if (v56)
        {
          *buf = 136446466;
          v70 = "nw_association_get_cached_content_for_protocol";
          v71 = 2082;
          v72 = v54;
          _os_log_impl(&dword_181A37000, v47, v55, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v54);
LABEL_108:
        if (!v46)
        {
LABEL_110:
          v12 = 0;
          goto LABEL_59;
        }

LABEL_109:
        free(v46);
        goto LABEL_110;
      }

      if (v56)
      {
        *buf = 136446210;
        v70 = "nw_association_get_cached_content_for_protocol";
        _os_log_impl(&dword_181A37000, v47, v55, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v47 = __nwlog_obj();
      v58 = type;
      if (os_log_type_enabled(v47, type))
      {
        *buf = 136446210;
        v70 = "nw_association_get_cached_content_for_protocol";
        _os_log_impl(&dword_181A37000, v47, v58, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_107:

    goto LABEL_108;
  }

  v6 = nw_path_parameters_copy_context(*(v3 + 2));
  nw_context_assert_queue(v6);
  v7 = *(v3 + 7);
  if (v7)
  {
    node = nw_hash_table_get_node(v7, v5, 0);
    if (node)
    {
      v9 = node;
      v10 = time(0);
      v11 = v9 + 4;
      v12 = v9[9];
      if (v10 > v9[8])
      {
        if (v12)
        {
          nw_protocol_definition_deallocate_cache_entry(v5, v9[9]);
        }

        nw_context_remove_cache_entry(v6, v9 + 4);
        if (nw_hash_table_remove_node(*(v3 + 7), v9) & 1) != 0 || (nw_path_parameters_get_logging_disabled(*(v3 + 2)))
        {
          goto LABEL_57;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v13 = gconnectionLogObj;
        v14 = *(v3 + 1);
        v15 = v14;
        if (v14)
        {
          logging_description = _nw_endpoint_get_logging_description(v14);
        }

        else
        {
          logging_description = "<NULL>";
        }

        *buf = 136446722;
        v70 = "nw_association_get_cached_content_for_protocol";
        v71 = 2082;
        v72 = logging_description;
        v73 = 2048;
        v74 = v9;
        v29 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v67 = 0;
        if (!__nwlog_fault(v29, &type, &v67))
        {
          goto LABEL_55;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v30 = gconnectionLogObj;
          v31 = type;
          if (os_log_type_enabled(v30, type))
          {
            v32 = *(v3 + 1);
            v33 = v32;
            if (v32)
            {
              v34 = _nw_endpoint_get_logging_description(v32);
            }

            else
            {
              v34 = "<NULL>";
            }

            *buf = 136446722;
            v70 = "nw_association_get_cached_content_for_protocol";
            v71 = 2082;
            v72 = v34;
            v73 = 2048;
            v74 = v9;
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p", buf, 0x20u);
          }
        }

        else if (v67 == 1)
        {
          v35 = __nw_create_backtrace_string();
          if (v35)
          {
            v36 = v35;
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v37 = gconnectionLogObj;
            v38 = type;
            if (os_log_type_enabled(v37, type))
            {
              v39 = nw_endpoint_get_logging_description(*(v3 + 1));
              *buf = 136446978;
              v70 = "nw_association_get_cached_content_for_protocol";
              v71 = 2082;
              v72 = v39;
              v73 = 2048;
              v74 = v9;
              v75 = 2082;
              v76 = v36;
              _os_log_impl(&dword_181A37000, v37, v38, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v36);
            goto LABEL_55;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v30 = gconnectionLogObj;
          v43 = type;
          if (os_log_type_enabled(v30, type))
          {
            v44 = nw_endpoint_get_logging_description(*(v3 + 1));
            *buf = 136446722;
            v70 = "nw_association_get_cached_content_for_protocol";
            v71 = 2082;
            v72 = v44;
            v73 = 2048;
            v74 = v9;
            _os_log_impl(&dword_181A37000, v30, v43, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v30 = gconnectionLogObj;
          v40 = type;
          if (os_log_type_enabled(v30, type))
          {
            v41 = nw_endpoint_get_logging_description(*(v3 + 1));
            *buf = 136446722;
            v70 = "nw_association_get_cached_content_for_protocol";
            v71 = 2082;
            v72 = v41;
            v73 = 2048;
            v74 = v9;
            _os_log_impl(&dword_181A37000, v30, v40, "%{public}s <nw_association %{public}s> failed to remove cache entry for node %p, backtrace limit exceeded", buf, 0x20u);
          }
        }

LABEL_55:
        if (v29)
        {
          free(v29);
        }

        goto LABEL_57;
      }

      v17 = v6;
      if (v17)
      {
        v18 = v17;
        v19 = v18;
        if ((v18[19] & 8) == 0)
        {
          dispatch_assert_queue_V2(v18[1]);
        }

        v20 = nw_context_copy_cache_context(v19);
        v21 = v9[6];
        if (v21 || v9[7])
        {
          v22 = v20[3];
          v23 = *(v22 + 64);
          if (v23)
          {
            *(v22 + 64) = v23 - 1;
          }

          v24 = v9[7];
          if (v21)
          {
            *(v21 + 24) = v24;
          }

          else
          {
            *(v22 + 24) = v24;
          }

          *v24 = v21;
          v9[6] = 0;
          v9[7] = 0;
        }

        v25 = v9[4];
        v26 = v9[5];
        if (v25)
        {
          *(v25 + 8) = v26;
          v27 = v20[3];
        }

        else
        {
          v27 = v20[3];
          v27[1] = v26;
        }

        *v26 = v25;
        v28 = *v27;
        *v11 = *v27;
        if (v28)
        {
          *(v28 + 8) = v11;
        }

        else
        {
          v27[1] = v11;
        }

        *v27 = v11;
        v9[5] = v27;

        goto LABEL_58;
      }

      v59 = __nwlog_obj();
      *buf = 136446210;
      v70 = "nw_context_touch_cache_entry";
      v60 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v67 = 0;
      if (__nwlog_fault(v60, &type, &v67))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v61 = __nwlog_obj();
          v62 = type;
          if (os_log_type_enabled(v61, type))
          {
            *buf = 136446210;
            v70 = "nw_context_touch_cache_entry";
            _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null context", buf, 0xCu);
          }
        }

        else if (v67 == 1)
        {
          v63 = __nw_create_backtrace_string();
          v61 = __nwlog_obj();
          v64 = type;
          v65 = os_log_type_enabled(v61, type);
          if (v63)
          {
            if (v65)
            {
              *buf = 136446466;
              v70 = "nw_context_touch_cache_entry";
              v71 = 2082;
              v72 = v63;
              _os_log_impl(&dword_181A37000, v61, v64, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v63);
            goto LABEL_117;
          }

          if (v65)
          {
            *buf = 136446210;
            v70 = "nw_context_touch_cache_entry";
            _os_log_impl(&dword_181A37000, v61, v64, "%{public}s called with null context, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v61 = __nwlog_obj();
          v66 = type;
          if (os_log_type_enabled(v61, type))
          {
            *buf = 136446210;
            v70 = "nw_context_touch_cache_entry";
            _os_log_impl(&dword_181A37000, v61, v66, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_117:
      if (v60)
      {
        free(v60);
      }

      goto LABEL_58;
    }
  }

LABEL_57:
  v12 = 0;
LABEL_58:

LABEL_59:
  return v12;
}
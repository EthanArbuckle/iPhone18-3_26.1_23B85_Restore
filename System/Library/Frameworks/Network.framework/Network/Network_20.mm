char *nw_path_copy_for_flow_registration(void *a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_copy_for_flow_registration";
    v29 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v29, type, &v37))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v31 = type[0];
        if (os_log_type_enabled(v30, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_copy_for_flow_registration";
          _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null path", buf, 0xCu);
        }
      }

      else if (v37 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v30 = __nwlog_obj();
        v33 = type[0];
        v34 = os_log_type_enabled(v30, type[0]);
        if (backtrace_string)
        {
          if (v34)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_copy_for_flow_registration";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v30, v33, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_59;
        }

        if (v34)
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_copy_for_flow_registration";
          _os_log_impl(&dword_181A37000, v30, v33, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v30 = __nwlog_obj();
        v35 = type[0];
        if (os_log_type_enabled(v30, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_copy_for_flow_registration";
          _os_log_impl(&dword_181A37000, v30, v35, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_59:
    if (v29)
    {
      free(v29);
    }

    v6 = 0;
    goto LABEL_42;
  }

  if (v4)
  {
    v6 = _nw_path_copy(v3, 1);
    if (!v6)
    {
LABEL_41:

      goto LABEL_42;
    }

    v7 = _nw_path_copy_flows(v3);
    if (v7)
    {
      for (i = 0; i < _nw_array_get_count(v7); ++i)
      {
        *buf = 0;
        *&buf[8] = 0;
        v9 = _nw_array_copy_object_at_index(v7, i);
        v10 = v9;
        if (v9)
        {
          v11 = v9;
          _nw_path_flow_get_id(v11, buf);

          if (*buf == *(v5 + 4) && *&buf[8] == *(v5 + 5) && (v5[149] & 1) == 0)
          {
            _nw_path_append_flow(v6, v11);
          }

          else
          {
            count = *(v5 + 2);
            if (count)
            {
              for (j = 0; ; ++j)
              {
                if (count)
                {
                  count = _nw_array_get_count(count);
                }

                if (j >= count)
                {
                  break;
                }

                v14 = *(v5 + 2);
                if (v14)
                {
                  v15 = _nw_array_copy_object_at_index(v14, j);
                  if (v15)
                  {
                    *type = 0;
                    v39 = 0;
                    v16 = v11;
                    _nw_path_flow_get_id(v16, type);

                    if (*type == *(v15 + 32) && v39 == *(v15 + 40) && (*(v15 + 149) & 1) == 0)
                    {
                      _nw_path_append_flow(v6, v16);

                      break;
                    }
                  }
                }

                count = *(v5 + 2);
              }
            }
          }
        }
      }
    }

    _nw_path_set_flow_registration_id(v6, v5 + 32);
    if (*(v5 + 36) && !_nw_path_get_effective_traffic_class(v3))
    {
      _nw_path_set_effective_traffic_class(v6, *(v5 + 36));
    }

    v17 = *(v5 + 3);
    if (v17)
    {
      _nw_path_set_override_extra_interface_options(v6, v17);
    }

    _nw_path_set_is_override_expensive(v6, (v5[148] >> 3) & 1);
    _nw_path_set_is_override_constrained(v6, (v5[148] >> 4) & 1);
    _nw_path_set_override_uses_wifi(v6, (v5[148] >> 5) & 1);
    _nw_path_set_override_uses_cellular(v6, (v5[148] >> 6) & 1);
    _nw_path_set_override_reason(v6, v5[148] >> 7);
    v23 = v5[148];
    if (v23 < 0)
    {
      if ((v23 & 0x60) != 0)
      {
        v24 = "Proxy used prohibited interface type";
        v25 = 6;
LABEL_39:
        nw_path_set_reason(v6, v25, v24, v18, v19, v20, v21, v22, v36);
        goto LABEL_40;
      }

      if ((v23 & 8) != 0)
      {
        v24 = "Proxy used prohibited expensive path";
        v25 = 5;
        goto LABEL_39;
      }

      if ((v23 & 0x10) != 0)
      {
        v24 = "Proxy used prohibited constrained path";
        v25 = 26;
        goto LABEL_39;
      }
    }

LABEL_40:
    _nw_path_update_network_is_satisfied(v6);
    _nw_path_update_is_viable(v6);
    v26 = v6;

    goto LABEL_41;
  }

  v6 = v3;
LABEL_42:

  return v6;
}

void _nw_path_set_flow_registration_id(char *a1, const unsigned __int8 *a2)
{
  if (a1 && a2)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    is_null = uuid_is_null(a2);
    v6 = 0uLL;
    if (is_null != 1)
    {
      v6 = *a2;
    }

    *(v3 + 65) = v6;
    v3[81] = is_null == 1;
    swift_endAccess();
  }
}

BOOL nw_path_fillout_route_stats(void *a1, uint64_t a2, _DWORD *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v25 = __nwlog_obj();
    *v48 = 136446210;
    *&v48[4] = "nw_path_fillout_route_stats";
    v26 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    LOBYTE(v47[0]) = 0;
    if (!__nwlog_fault(v26, buf, v47))
    {
      goto LABEL_63;
    }

    if (buf[0] == 17)
    {
      v27 = __nwlog_obj();
      v28 = buf[0];
      if (os_log_type_enabled(v27, buf[0]))
      {
        *v48 = 136446210;
        *&v48[4] = "nw_path_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null path", v48, 0xCu);
      }

      goto LABEL_62;
    }

    if (LOBYTE(v47[0]) != 1)
    {
      v27 = __nwlog_obj();
      v36 = buf[0];
      if (os_log_type_enabled(v27, buf[0]))
      {
        *v48 = 136446210;
        *&v48[4] = "nw_path_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v27, v36, "%{public}s called with null path, backtrace limit exceeded", v48, 0xCu);
      }

      goto LABEL_62;
    }

    backtrace_string = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v32 = buf[0];
    v33 = os_log_type_enabled(v27, buf[0]);
    if (!backtrace_string)
    {
      if (v33)
      {
        *v48 = 136446210;
        *&v48[4] = "nw_path_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v27, v32, "%{public}s called with null path, no backtrace", v48, 0xCu);
      }

      goto LABEL_62;
    }

    if (v33)
    {
      *v48 = 136446466;
      *&v48[4] = "nw_path_fillout_route_stats";
      *&v48[12] = 2082;
      *&v48[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v27, v32, "%{public}s called with null path, dumping backtrace:%{public}s", v48, 0x16u);
    }

    goto LABEL_50;
  }

  if (!a2)
  {
    v29 = __nwlog_obj();
    *v48 = 136446210;
    *&v48[4] = "nw_path_fillout_route_stats";
    v26 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    LOBYTE(v47[0]) = 0;
    if (!__nwlog_fault(v26, buf, v47))
    {
      goto LABEL_63;
    }

    if (buf[0] == 17)
    {
      v27 = __nwlog_obj();
      v30 = buf[0];
      if (os_log_type_enabled(v27, buf[0]))
      {
        *v48 = 136446210;
        *&v48[4] = "nw_path_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null return_stats", v48, 0xCu);
      }

LABEL_62:

LABEL_63:
      if (v26)
      {
        free(v26);
      }

      goto LABEL_65;
    }

    if (LOBYTE(v47[0]) != 1)
    {
      v27 = __nwlog_obj();
      v37 = buf[0];
      if (os_log_type_enabled(v27, buf[0]))
      {
        *v48 = 136446210;
        *&v48[4] = "nw_path_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v27, v37, "%{public}s called with null return_stats, backtrace limit exceeded", v48, 0xCu);
      }

      goto LABEL_62;
    }

    backtrace_string = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v34 = buf[0];
    v35 = os_log_type_enabled(v27, buf[0]);
    if (!backtrace_string)
    {
      if (v35)
      {
        *v48 = 136446210;
        *&v48[4] = "nw_path_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v27, v34, "%{public}s called with null return_stats, no backtrace", v48, 0xCu);
      }

      goto LABEL_62;
    }

    if (v35)
    {
      *v48 = 136446466;
      *&v48[4] = "nw_path_fillout_route_stats";
      *&v48[12] = 2082;
      *&v48[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v27, v34, "%{public}s called with null return_stats, dumping backtrace:%{public}s", v48, 0x16u);
    }

LABEL_50:

    free(backtrace_string);
    goto LABEL_63;
  }

  v7 = _nw_path_copy_parameters(v5);
  v8 = nw_parameters_copy_context(v7);
  v9 = nw_path_shared_necp_fd(v8);

  if (v9 < 0)
  {
LABEL_65:
    v11 = 0;
    goto LABEL_66;
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  memset(v48, 0, sizeof(v48));
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  v47[0] = 0;
  v47[1] = 0;
  _nw_path_get_client_id(v6, v47);
  v10 = necp_client_action();
  v11 = v10 == 0;
  if (v10)
  {
    v12 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v12 == 45 || v12 == 2)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v42 = "nw_path_fillout_route_stats";
        v43 = 1024;
        v44 = v12;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s NECP_CLIENT_ACTION_COPY_ROUTE_STATISTICS %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_66;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    *buf = 136446466;
    v42 = "nw_path_fillout_route_stats";
    v43 = 1024;
    v44 = v12;
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v16, &type, &v39))
    {
      goto LABEL_29;
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
        v42 = "nw_path_fillout_route_stats";
        v43 = 1024;
        v44 = v12;
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s NECP_CLIENT_ACTION_COPY_ROUTE_STATISTICS %{darwin.errno}d", buf, 0x12u);
      }

LABEL_28:

LABEL_29:
      if (!v16)
      {
        goto LABEL_66;
      }

LABEL_30:
      free(v16);
      goto LABEL_66;
    }

    if (v39 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v23 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446466;
        v42 = "nw_path_fillout_route_stats";
        v43 = 1024;
        v44 = v12;
        _os_log_impl(&dword_181A37000, v17, v23, "%{public}s NECP_CLIENT_ACTION_COPY_ROUTE_STATISTICS %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
      }

      goto LABEL_28;
    }

    v19 = __nw_create_backtrace_string();
    if (!v19)
    {
      v17 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446466;
        v42 = "nw_path_fillout_route_stats";
        v43 = 1024;
        v44 = v12;
        _os_log_impl(&dword_181A37000, v17, v24, "%{public}s NECP_CLIENT_ACTION_COPY_ROUTE_STATISTICS %{darwin.errno}d, no backtrace", buf, 0x12u);
      }

      goto LABEL_28;
    }

    v20 = v19;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    v22 = type;
    if (os_log_type_enabled(v21, type))
    {
      *buf = 136446722;
      v42 = "nw_path_fillout_route_stats";
      v43 = 1024;
      v44 = v12;
      v45 = 2082;
      v46 = v20;
      _os_log_impl(&dword_181A37000, v21, v22, "%{public}s NECP_CLIENT_ACTION_COPY_ROUTE_STATISTICS %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
    }

    free(v20);
    if (v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v14 = *&v48[16];
    *a2 = *v48;
    *(a2 + 16) = v14;
    *(a2 + 100) = *(&v50 + 4);
    *(a2 + 108) = HIDWORD(v50);
    if (a3)
    {
      *a3 = v51;
    }
  }

LABEL_66:

  return v11;
}

id nw_parameters_copy_protocol_value(void *a1, uint64_t a2, const char *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_copy_protocol_value";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (!__nwlog_fault(v23, &type, &v50))
    {
      goto LABEL_79;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_protocol_value";
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null parameters", buf, 0xCu);
      }

      goto LABEL_78;
    }

    if (v50 != 1)
    {
      v24 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_protocol_value";
        _os_log_impl(&dword_181A37000, v24, v45, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_78;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v35 = type;
    v36 = os_log_type_enabled(v24, type);
    if (!backtrace_string)
    {
      if (v36)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_protocol_value";
        _os_log_impl(&dword_181A37000, v24, v35, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_78;
    }

    if (v36)
    {
      *buf = 136446466;
      *&buf[4] = "nw_parameters_copy_protocol_value";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v24, v35, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_copy_protocol_value";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (!__nwlog_fault(v23, &type, &v50))
    {
      goto LABEL_79;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_protocol_value";
        _os_log_impl(&dword_181A37000, v24, v27, "%{public}s called with null protocol_instance", buf, 0xCu);
      }

      goto LABEL_78;
    }

    if (v50 != 1)
    {
      v24 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_protocol_value";
        _os_log_impl(&dword_181A37000, v24, v46, "%{public}s called with null protocol_instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_78;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v37 = type;
    v38 = os_log_type_enabled(v24, type);
    if (!backtrace_string)
    {
      if (v38)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_protocol_value";
        _os_log_impl(&dword_181A37000, v24, v37, "%{public}s called with null protocol_instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_78;
    }

    if (v38)
    {
      *buf = 136446466;
      *&buf[4] = "nw_parameters_copy_protocol_value";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v24, v37, "%{public}s called with null protocol_instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_46:

    free(backtrace_string);
    if (!v23)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  if (!a3)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_copy_protocol_value";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (!__nwlog_fault(v23, &type, &v50))
    {
      goto LABEL_79;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_protocol_value";
        _os_log_impl(&dword_181A37000, v24, v29, "%{public}s called with null key", buf, 0xCu);
      }
    }

    else if (v50 == 1)
    {
      v39 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v40 = type;
      v41 = os_log_type_enabled(v24, type);
      if (v39)
      {
        if (v41)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_copy_protocol_value";
          *&buf[12] = 2082;
          *&buf[14] = v39;
          _os_log_impl(&dword_181A37000, v24, v40, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
LABEL_79:
        if (!v23)
        {
LABEL_81:
          v20 = 0;
          goto LABEL_16;
        }

LABEL_80:
        free(v23);
        goto LABEL_81;
      }

      if (v41)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_protocol_value";
        _os_log_impl(&dword_181A37000, v24, v40, "%{public}s called with null key, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v24 = __nwlog_obj();
      v47 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_protocol_value";
        _os_log_impl(&dword_181A37000, v24, v47, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_78:

    goto LABEL_79;
  }

  v7 = _nw_parameters_copy_default_protocol_stack(v5);
  v8 = v7;
  if (!v7)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_copy_protocol_value";
    v31 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v31, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_copy_protocol_value";
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null stack", buf, 0xCu);
        }
      }

      else if (v50 == 1)
      {
        v42 = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v43 = type;
        v44 = os_log_type_enabled(v32, type);
        if (v42)
        {
          if (v44)
          {
            *buf = 136446466;
            *&buf[4] = "nw_parameters_copy_protocol_value";
            *&buf[12] = 2082;
            *&buf[14] = v42;
            _os_log_impl(&dword_181A37000, v32, v43, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v42);
          goto LABEL_85;
        }

        if (v44)
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_copy_protocol_value";
          _os_log_impl(&dword_181A37000, v32, v43, "%{public}s called with null stack, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v48 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_copy_protocol_value";
          _os_log_impl(&dword_181A37000, v32, v48, "%{public}s called with null stack, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_85:
    if (v31)
    {
      free(v31);
    }

    v20 = 0;
    goto LABEL_15;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v53 = __Block_byref_object_copy__19817;
  v54 = __Block_byref_object_dispose__19818;
  v55 = 0;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __nw_parameters_copy_protocol_value_block_invoke;
  v49[3] = &unk_1E6A2E408;
  v49[4] = buf;
  v49[5] = a2;
  v49[6] = a3;
  v9 = v7;
  v10 = v49;
  _nw_protocol_stack_iterate_application_protocols(v9, v10);

  v11 = *(*&buf[8] + 40);
  if (!v11)
  {
    v12 = _nw_protocol_stack_copy_transport_protocol(v9);
    v13 = v12;
    if (v12 && _nw_protocol_options_get_protocol_handle(v12) == a2)
    {
      v14 = nw_parameters_copy_protocol_value_from_parameters(v13, a3);
      v15 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v14;
    }

    v11 = *(*&buf[8] + 40);
    if (!v11)
    {
      v16 = _nw_protocol_stack_copy_internet_protocol();
      v17 = v16;
      if (v16 && _nw_protocol_options_get_protocol_handle(v16) == a2)
      {
        v18 = nw_parameters_copy_protocol_value_from_parameters(v17, a3);
        v19 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v18;
      }

      v11 = *(*&buf[8] + 40);
    }
  }

  v20 = v11;
  _Block_object_dispose(buf, 8);

LABEL_15:
LABEL_16:

  return v20;
}

void sub_181BAB658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_options_get_protocol_handle(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_options_get_protocol_handle(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_options_get_protocol_handle";
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
        v12 = "nw_protocol_options_get_protocol_handle";
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
            v12 = "nw_protocol_options_get_protocol_handle";
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
        v12 = "nw_protocol_options_get_protocol_handle";
        v6 = "%{public}s called with null options, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_options_get_protocol_handle";
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

uint64_t __nw_parameters_copy_protocol_value_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v9 = v3;
    protocol_handle = nw_protocol_options_get_protocol_handle(v3);
    if (protocol_handle)
    {
      if (protocol_handle == *(a1 + 40))
      {
        v5 = nw_parameters_copy_protocol_value_from_parameters(v9, *(a1 + 48));
        v6 = *(*(a1 + 32) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;
      }
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

uint64_t _nw_protocol_options_get_protocol_handle(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);

  if ((~v2 & 0x1000000000000007) != 0)
  {
    return v1 & ((8 * v2) >> 63);
  }

  else
  {
    return 0;
  }
}

uint64_t nw_protocol_default_get_parameters(nw_protocol *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_default_get_parameters";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v9, &type, &v15))
    {
      goto LABEL_26;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v18 = "nw_protocol_default_get_parameters";
      v12 = "%{public}s called with null protocol";
    }

    else if (v15 == 1)
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
          v18 = "nw_protocol_default_get_parameters";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (!v14)
      {
LABEL_26:
        if (v9)
        {
          free(v9);
        }

        return 0;
      }

      *buf = 136446210;
      v18 = "nw_protocol_default_get_parameters";
      v12 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v18 = "nw_protocol_default_get_parameters";
      v12 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_26;
  }

  default_input_handler = a1->default_input_handler;
  if (!default_input_handler || (callbacks = default_input_handler->callbacks) == 0 || (get_parameters = callbacks->get_parameters) == 0)
  {
    v6 = a1;
    v7 = __nwlog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      name = "<null>";
      if (v6->identifier)
      {
        name = v6->identifier->name;
      }

      *buf = 136446466;
      v18 = "nw_protocol_default_get_parameters";
      v19 = 2082;
      v20 = name;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s Protocol %{public}s does not support get parameters", buf, 0x16u);
    }

    return 0;
  }

  return get_parameters();
}

uint64_t nw_protocol_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_new";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v11, &type, &v21))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v24 = "nw_protocol_new";
        v14 = "%{public}s called with null instance_size";
LABEL_37:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }

LABEL_38:
      if (v11)
      {
        free(v11);
      }

      return 0;
    }

    if (v21 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v24 = "nw_protocol_new";
        v14 = "%{public}s called with null instance_size, backtrace limit exceeded";
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type;
    v18 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v24 = "nw_protocol_new";
        v14 = "%{public}s called with null instance_size, no backtrace";
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (v18)
    {
      *buf = 136446466;
      v24 = "nw_protocol_new";
      v25 = 2082;
      v26 = backtrace_string;
      v19 = "%{public}s called with null instance_size, dumping backtrace:%{public}s";
LABEL_27:
      _os_log_impl(&dword_181A37000, v12, v13, v19, buf, 0x16u);
    }

LABEL_28:
    free(backtrace_string);
    goto LABEL_38;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_new";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v11, &type, &v21))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v24 = "nw_protocol_new";
        v14 = "%{public}s called with null parameters";
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (v21 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v24 = "nw_protocol_new";
        v14 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type;
    v20 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v24 = "nw_protocol_new";
        v14 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (v20)
    {
      *buf = 136446466;
      v24 = "nw_protocol_new";
      v25 = 2082;
      v26 = backtrace_string;
      v19 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v6 = a1 + 96;
  if (a1 == -96)
  {
    v15 = __nwlog_obj();
    os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v24 = "nw_protocol_new";
    v16 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v16);
    if (result)
    {
      goto LABEL_41;
    }

    free(v16);
  }

  v7 = malloc_type_calloc(1uLL, v6, 0x6D939021uLL);
  if (v7)
  {
    v7[3] = 0u;
    v7[4] = 0u;
    v7[1] = 0u;
    v7[2] = 0u;
    *v7 = 0u;
    *(v7 + 10) = 0;
    *(v7 + 11) = 1;
    *(v7 + 2) = a3;
    *(v7 + 3) = a4;
    v8 = (v7 + 6);
    *(v7 + 5) = &nw_protocol_ref_counted_handle;
    return v8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v24 = "nw_protocol_new";
  v25 = 2048;
  v26 = 1;
  v27 = 2048;
  v28 = v6;
  v9 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v9);
  if (!result)
  {
    free(v9);
    v8 = 0;
    MEMORY[0x50] = 0;
    MEMORY[0x40] = 0u;
    MEMORY[0x30] = 0u;
    MEMORY[0x20] = 0u;
    MEMORY[0x10] = 0u;
    MEMORY[0] = 0u;
    MEMORY[0x58] = 1;
    nw_protocol_set_identifier(0, a3);
    nw_protocol_set_callbacks(0, a4);
    nw_protocol_set_handle(0, &nw_protocol_ref_counted_handle);
    return v8;
  }

LABEL_41:
  __break(1u);
  return result;
}

void *nw_endpoint_flow_add_one_protocol(void *a1, char *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v80 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v60 = a6;
  v61 = v15;
  v58 = v14;
  v59 = v16;
  protocol_for_definition = nw_endpoint_handler_create_protocol_for_definition(a2, v15, v16, v60);
  if (protocol_for_definition)
  {
    if (v15)
    {
      if (!v14)
      {
LABEL_13:
        if (a7)
        {
          if (protocol_for_definition != a7)
          {
            v25 = protocol_for_definition[3];
            if (v25 && *v25)
            {
              if (nw_protocol_add_input_handler(protocol_for_definition, a7))
              {
                goto LABEL_47;
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v30 = gLogObj;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                v65 = "nw_protocol_utilities_add_input_handler";
                v66 = 2048;
                v67 = protocol_for_definition;
                _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s Unable to invoke add_input_handler on protocol %p because it is not valid", buf, 0x16u);
              }
            }

LABEL_29:
            if ((nw_endpoint_handler_get_logging_disabled(v13) & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v18 = gconnectionLogObj;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                id_string = nw_endpoint_handler_get_id_string(v13);
                v32 = nw_endpoint_handler_dry_run_string(v13);
                v33 = nw_endpoint_handler_copy_endpoint(v13);
                v34 = v33;
                if (v33)
                {
                  logging_description = _nw_endpoint_get_logging_description(v33);
                  v36 = a2;
                }

                else
                {
                  v36 = a2;
                  logging_description = "<NULL>";
                }

                v41 = nw_endpoint_handler_state_string(v13);
                v42 = nw_endpoint_handler_mode_string(v13);
                v43 = nw_endpoint_handler_copy_current_path(v13);
                *buf = 136448002;
                v65 = "nw_endpoint_flow_add_one_protocol";
                v66 = 2082;
                v67 = id_string;
                v68 = 2082;
                v69 = v32;
                v70 = 2082;
                v71 = logging_description;
                v72 = 2082;
                v73 = v41;
                v74 = 2082;
                v75 = v42;
                v76 = 2114;
                v77 = v43;
                v78 = 2082;
                v79 = v36;
                _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to attach protocol %{public}s", buf, 0x52u);
              }

LABEL_45:

              goto LABEL_46;
            }

            goto LABEL_46;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          *buf = 136446466;
          v65 = "nw_protocol_utilities_add_input_handler";
          v66 = 2048;
          v67 = a7;
          v27 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v62 = 0;
          if (!__nwlog_fault(v27, &type, &v62))
          {
            goto LABEL_24;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v28 = gLogObj;
            v29 = type;
            if (os_log_type_enabled(v28, type))
            {
              *buf = 136446466;
              v65 = "nw_protocol_utilities_add_input_handler";
              v66 = 2048;
              v67 = a7;
              _os_log_impl(&dword_181A37000, v28, v29, "%{public}s Cannot add input handler %p to itself", buf, 0x16u);
            }
          }

          else
          {
            if (v62 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v38 = gLogObj;
              v39 = type;
              v40 = os_log_type_enabled(v38, type);
              if (backtrace_string)
              {
                if (v40)
                {
                  *buf = 136446722;
                  v65 = "nw_protocol_utilities_add_input_handler";
                  v66 = 2048;
                  v67 = a7;
                  v68 = 2082;
                  v69 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v38, v39, "%{public}s Cannot add input handler %p to itself, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(backtrace_string);
                if (!v27)
                {
                  goto LABEL_29;
                }

LABEL_25:
                free(v27);
                goto LABEL_29;
              }

              if (v40)
              {
                *buf = 136446466;
                v65 = "nw_protocol_utilities_add_input_handler";
                v66 = 2048;
                v67 = a7;
                _os_log_impl(&dword_181A37000, v38, v39, "%{public}s Cannot add input handler %p to itself, no backtrace", buf, 0x16u);
              }

LABEL_24:
              if (!v27)
              {
                goto LABEL_29;
              }

              goto LABEL_25;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v28 = gLogObj;
            v48 = type;
            if (os_log_type_enabled(v28, type))
            {
              *buf = 136446466;
              v65 = "nw_protocol_utilities_add_input_handler";
              v66 = 2048;
              v67 = a7;
              _os_log_impl(&dword_181A37000, v28, v48, "%{public}s Cannot add input handler %p to itself, backtrace limit exceeded", buf, 0x16u);
            }
          }

          goto LABEL_24;
        }

        v49 = __nwlog_obj();
        *buf = 136446210;
        v65 = "nw_protocol_utilities_add_input_handler";
        v50 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v62 = 0;
        if (__nwlog_fault(v50, &type, &v62))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v51 = __nwlog_obj();
            v52 = type;
            if (os_log_type_enabled(v51, type))
            {
              *buf = 136446210;
              v65 = "nw_protocol_utilities_add_input_handler";
              _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null input_protocol", buf, 0xCu);
            }
          }

          else
          {
            if (v62 == 1)
            {
              v53 = __nw_create_backtrace_string();
              v54 = __nwlog_obj();
              v55 = type;
              v56 = os_log_type_enabled(v54, type);
              if (v53)
              {
                if (v56)
                {
                  *buf = 136446466;
                  v65 = "nw_protocol_utilities_add_input_handler";
                  v66 = 2082;
                  v67 = v53;
                  _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v53);
              }

              else
              {
                if (v56)
                {
                  *buf = 136446210;
                  v65 = "nw_protocol_utilities_add_input_handler";
                  _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
                }
              }

              goto LABEL_70;
            }

            v51 = __nwlog_obj();
            v57 = type;
            if (os_log_type_enabled(v51, type))
            {
              *buf = 136446210;
              v65 = "nw_protocol_utilities_add_input_handler";
              _os_log_impl(&dword_181A37000, v51, v57, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_70:
        if (v50)
        {
          free(v50);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v61 = nw_protocol_definition_create_with_identifier(a2);
      if (!v14)
      {
        goto LABEL_13;
      }
    }

    nw_endpoint_handler_set_protocol_instance(v13, v14, v61, protocol_for_definition);
    goto LABEL_13;
  }

  if ((nw_endpoint_handler_get_logging_disabled(v13) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v18 = gconnectionLogObj;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = nw_endpoint_handler_get_id_string(v13);
      v20 = nw_endpoint_handler_dry_run_string(v13);
      v21 = nw_endpoint_handler_copy_endpoint(v13);
      v22 = v21;
      if (v21)
      {
        v23 = _nw_endpoint_get_logging_description(v21);
        v24 = a2;
      }

      else
      {
        v24 = a2;
        v23 = "<NULL>";
      }

      v44 = nw_endpoint_handler_state_string(v13);
      v45 = nw_endpoint_handler_mode_string(v13);
      v46 = nw_endpoint_handler_copy_current_path(v13);
      *buf = 136448002;
      v65 = "nw_endpoint_flow_add_one_protocol";
      v66 = 2082;
      v67 = v19;
      v68 = 2082;
      v69 = v20;
      v70 = 2082;
      v71 = v23;
      v72 = 2082;
      v73 = v44;
      v74 = 2082;
      v75 = v45;
      v76 = 2114;
      v77 = v46;
      v78 = 2082;
      v79 = v24;
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to create protocol handler: %{public}s", buf, 0x52u);
    }

    goto LABEL_45;
  }

LABEL_46:
  protocol_for_definition = 0;
LABEL_47:

  return protocol_for_definition;
}

uint64_t _nw_protocol_options_get_log_id_str(uint64_t a1, void *a2)
{
  v3 = (a1 + *(*a1 + 168));

  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    swift_bridgeObjectRetain_n();
    sub_181BACD64(v5, v4, a2, v5, v4);
    v6 = sub_182AD30F8();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_181BACD64(uint64_t a1, uint64_t a2, void *__dst, uint64_t a4, unint64_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    __src[0] = a1;
    __src[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if ((a5 & 0x1000000000000000) != 0)
    {
      v9 = __dst;
      v10 = sub_182AD3168();
      __dst = v9;
      v6 = v10;
    }

    else
    {
      v6 = a4 & 0xFFFFFFFFFFFFLL;
      if ((a5 & 0x2000000000000000) != 0)
      {
        v6 = HIBYTE(a5) & 0xF;
      }
    }

    v7 = __src;
    goto LABEL_12;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_14:
    sub_182AD3B78();
  }

  v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
  if ((a5 & 0x1000000000000000) != 0)
  {
    v13 = __dst;
    v11 = sub_182AD3168();
    __dst = v13;
    v6 = v11;
    v7 = (v5 + 32);
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
    if ((a5 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a5) & 0xF;
    }

    v7 = (v5 + 32);
  }

LABEL_12:
  memcpy(__dst, v7, v6);
}

BOOL ProtocolOptions.matches(protocolHandle:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  if ((v3 & 0x1000000000000000) == 0 || (~v3 & 0x1000000000000007) == 0)
  {
    v2 = 0;
  }

  return v2 && v2 == a1;
}

BOOL sub_181BACEAC(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v2 >> 61;
  if ((v2 >> 61) > 2 && v4 > 4)
  {
    if (v4 == 5)
    {
      v10 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      ObjectType = swift_getObjectType();
      return (*(v10 + 56))(a1, ObjectType, v10) & 1;
    }
  }

  else
  {
    v5 = *(v3 + 56);
    v6 = ~v5 & 0x1000000000000007;
    v7 = v5 & 0x1000000000000000;
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      return *(v3 + 48) == a1;
    }
  }

  return 0;
}

void sub_181BACF88()
{
  v1 = v0;
  if ((*(v0 + 157) & 8) != 0 || (v2 = *(v0 + 176), v27[10] = *(v0 + 160), v27[11] = v2, v3 = *(v0 + 112), v27[6] = *(v0 + 96), v27[7] = v3, v4 = *(v0 + 144), v27[8] = *(v0 + 128), v27[9] = v4, v5 = *(v0 + 48), v27[2] = *(v0 + 32), v27[3] = v5, v6 = *(v0 + 80), v27[4] = *(v0 + 64), v27[5] = v6, v7 = *(v0 + 16), v27[0] = *v0, v27[1] = v7, v8 = *(v0 + 192), v9 = *(v0 + 200), *(v39 + 10) = *(v0 + 362), v10 = *(v0 + 352), v38 = *(v0 + 336), v39[0] = v10, v11 = *(v0 + 288), v34 = *(v0 + 272), v35 = v11, v12 = *(v0 + 320), v36 = *(v0 + 304), v37 = v12, v13 = *(v0 + 224), v30 = *(v0 + 208), v31 = v13, v14 = *(v0 + 256), v32 = *(v0 + 240), v33 = v14, v28 = v8, v29 = v9, (sub_181ADF260() | 2) != 2))
  {
LABEL_20:
    *(v1 + 377) = 1;
    return;
  }

  if (!v9)
  {
    goto LABEL_23;
  }

  v15 = v9[4];
  if (v9[2] >= v9[3] + v15)
  {
    v16 = v9[3] + v15;
  }

  else
  {
    v16 = v9[2];
  }

  v24 = v9;
  v25 = v15;
  v26 = v16;
  v17 = swift_retain_n();
  v18 = v9;
  while (v15 != v16)
  {
LABEL_12:
    v19 = v15 + 1;
    v25 = v15 + 1;
    v20 = &v18[26 * v15];
    if ((v20[30] & 1) != 0 || (v17 = v20[20]) != 0 && (v23 = v20[20], , sub_181AC23B8(&v23, v27), (v17 = *&v27[0]) != 0) && ((v21 = *(*&v27[0] + 80), v17 = sub_181AD1A40(*&v27[0]), (v21 & 0x13) != 1) ? (v22 = (v21 & 0x40) == 0) : (v22 = 1), !v22))
    {

      goto LABEL_20;
    }

    v16 = v26;
    v15 = v19;
  }

  if (sub_181AC81FC(v17))
  {
    v18 = v24;
    v15 = v25;
    goto LABEL_12;
  }

LABEL_23:
  *(v1 + 377) = 0;
}

uint64_t _nw_path_flow_can_use_nexus(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 11);
  v22 = *(v1 + 10);
  v23[0] = v3;
  *(v23 + 10) = *(v1 + 186);
  v4 = *(v1 + 7);
  v18 = *(v1 + 6);
  v19 = v4;
  v5 = *(v1 + 9);
  v20 = *(v1 + 8);
  v21 = v5;
  v6 = *(v1 + 3);
  v14 = *(v1 + 2);
  v15 = v6;
  v7 = *(v1 + 5);
  v16 = *(v1 + 4);
  v17 = v7;
  v8 = *(v1 + 1);
  v12 = *v1;
  v13 = v8;
  sub_181AFE6F4(&v12, v10);

  v10[10] = v22;
  v11[0] = v23[0];
  *(v11 + 10) = *(v23 + 10);
  v10[6] = v18;
  v10[7] = v19;
  v10[8] = v20;
  v10[9] = v21;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  v10[5] = v17;
  v10[0] = v12;
  v10[1] = v13;
  LOBYTE(v2) = sub_181BAD23C();
  sub_181AFE6A0(&v12);
  return v2 & 1;
}

uint64_t sub_181BAD23C()
{
  result = *(v0 + 120);
  if (result)
  {
    v2 = *(v0 + 200);
    v4 = *(v0 + 120);

    sub_181AC23B8(&v4, &v5);
    result = v5;
    if (v5)
    {
      v3 = *(v5 + 80);
      sub_181AD1A40(v5);
      if ((v2 & 0x800) != 0)
      {
        return (v3 >> 14) & 1;
      }

      else
      {
        return (v3 >> 7) & 1;
      }
    }
  }

  return result;
}

uint64_t ___ZL33nw_endpoint_flow_attach_protocolsP30NWConcrete_nw_endpoint_handlerP11nw_protocolS2__block_invoke(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v338 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v315 = v8;
  if (nw_protocol_options_is_custom_ip(v9))
  {
    minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 32));
    logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 32));
    v314 = v9;
    if (minimize_logging)
    {
      if ((logging_disabled & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v12 = gconnectionLogObj;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v211 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v212 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          logging_description = nw_endpoint_get_logging_description(v212);
          v214 = nw_endpoint_handler_state_string(*(a1 + 32));
          v215 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v216 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          *buf = 136448002;
          v321 = "nw_endpoint_flow_attach_protocols_block_invoke";
          v322 = 2082;
          v323 = id_string;
          v324 = 2082;
          v325 = v211;
          v326 = 2082;
          v327 = logging_description;
          v328 = 2082;
          v329 = v214;
          v330 = 2082;
          v331 = v215;
          v332 = 2114;
          v333 = v216;
          v334 = 1024;
          LODWORD(v335) = nw_custom_ip_options_get_protocol(v9);
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Using custom IP protocol %u as a proxied protocol, not attaching any proxied transport", buf, 0x4Eu);
        }

        goto LABEL_31;
      }
    }

    else if ((logging_disabled & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v12 = gconnectionLogObj;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v14 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v15 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v16 = v15;
        if (v15)
        {
          v17 = _nw_endpoint_get_logging_description(v15);
        }

        else
        {
          v17 = "<NULL>";
        }

        v35 = nw_endpoint_handler_state_string(*(a1 + 32));
        v36 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v37 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136448002;
        v321 = "nw_endpoint_flow_attach_protocols_block_invoke";
        v322 = 2082;
        v323 = v13;
        v324 = 2082;
        v325 = v14;
        v326 = 2082;
        v327 = v17;
        v328 = 2082;
        v329 = v35;
        v330 = 2082;
        v331 = v36;
        v332 = 2114;
        v333 = v37;
        v334 = 1024;
        LODWORD(v335) = nw_custom_ip_options_get_protocol(v9);
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Using custom IP protocol %u as a proxied protocol, not attaching any proxied transport", buf, 0x4Eu);
      }

LABEL_31:

LABEL_32:
      v38 = 1;
      v9 = v314;
      goto LABEL_216;
    }

LABEL_78:
    v38 = 1;
    goto LABEL_216;
  }

  if (*(*(*(a1 + 72) + 8) + 24))
  {
    protocol_handle = nw_protocol_options_get_protocol_handle(v9);
    v19 = *(*(*(a1 + 72) + 8) + 24);
    if (protocol_handle != v19)
    {
      goto LABEL_78;
    }

    *(*(*(a1 + 80) + 8) + 24) = v19;
    v20 = *(*(a1 + 72) + 8);
    v21 = *(v20 + 24);
    if (v21)
    {
      v22 = *(v21 + 5);
      v23 = *(v20 + 24);
      if (v22 != &nw_protocol_ref_counted_handle)
      {
        if (v22 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v23) = 0;
          v24 = 1;
          goto LABEL_71;
        }

        v23 = *(v21 + 8);
        if (!v23)
        {
          v24 = 1;
          goto LABEL_71;
        }
      }

      v66 = *(v23 + 88);
      v24 = 0;
      if (v66)
      {
        *(v23 + 88) = v66 + 1;
      }

      LOBYTE(v23) = -1;
LABEL_71:
      *type = v21;
      v319 = v23;
      v67 = *(v21 + 3);
      if (v67)
      {
        v68 = *(v67 + 136);
        if (v68)
        {
          v69 = v68();
          if (v24)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        }
      }

      v217 = v21;
      v218 = __nwlog_obj();
      v219 = *(v217 + 2);
      *buf = 136446722;
      v321 = "__nw_protocol_get_remote_endpoint";
      if (!v219)
      {
        v219 = "invalid";
      }

      v322 = 2082;
      v323 = v219;
      v324 = 2048;
      v220 = v217;
      v325 = v217;
      v221 = _os_log_send_and_compose_impl();

      v317 = OS_LOG_TYPE_ERROR;
      v316 = 0;
      if (__nwlog_fault(v221, &v317, &v316))
      {
        if (v317 == OS_LOG_TYPE_FAULT)
        {
          v222 = __nwlog_obj();
          v223 = v317;
          if (os_log_type_enabled(v222, v317))
          {
            v224 = *(v220 + 2);
            if (!v224)
            {
              v224 = "invalid";
            }

            *buf = 136446722;
            v321 = "__nw_protocol_get_remote_endpoint";
            v322 = 2082;
            v323 = v224;
            v324 = 2048;
            v325 = v220;
            _os_log_impl(&dword_181A37000, v222, v223, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback", buf, 0x20u);
          }

LABEL_276:

          goto LABEL_342;
        }

        if (v316 != 1)
        {
          v222 = __nwlog_obj();
          v244 = v317;
          if (os_log_type_enabled(v222, v317))
          {
            v245 = *(v220 + 2);
            if (!v245)
            {
              v245 = "invalid";
            }

            *buf = 136446722;
            v321 = "__nw_protocol_get_remote_endpoint";
            v322 = 2082;
            v323 = v245;
            v324 = 2048;
            v325 = v220;
            _os_log_impl(&dword_181A37000, v222, v244, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, backtrace limit exceeded", buf, 0x20u);
          }

          goto LABEL_276;
        }

        backtrace_string = __nw_create_backtrace_string();
        v230 = __nwlog_obj();
        v231 = v317;
        v232 = os_log_type_enabled(v230, v317);
        if (backtrace_string)
        {
          if (v232)
          {
            v233 = *(v220 + 2);
            if (!v233)
            {
              v233 = "invalid";
            }

            *buf = 136446978;
            v321 = "__nw_protocol_get_remote_endpoint";
            v322 = 2082;
            v323 = v233;
            v324 = 2048;
            v325 = v220;
            v326 = 2082;
            v327 = backtrace_string;
            _os_log_impl(&dword_181A37000, v230, v231, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
        }

        else
        {
          if (v232)
          {
            v261 = *(v220 + 2);
            if (!v261)
            {
              v261 = "invalid";
            }

            *buf = 136446722;
            v321 = "__nw_protocol_get_remote_endpoint";
            v322 = 2082;
            v323 = v261;
            v324 = 2048;
            v325 = v220;
            _os_log_impl(&dword_181A37000, v230, v231, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, no backtrace", buf, 0x20u);
          }
        }
      }

LABEL_342:
      if (v221)
      {
        free(v221);
      }

      v69 = 0;
      if (v24)
      {
        goto LABEL_75;
      }

LABEL_74:
      nw::release_if_needed<nw_protocol *>(type);
LABEL_75:
      if (v69)
      {
        objc_storeStrong((*(*(a1 + 88) + 8) + 40), v69);
      }

LABEL_77:
      *(*(*(a1 + 72) + 8) + 24) = 0;

      goto LABEL_78;
    }

    v225 = __nwlog_obj();
    *buf = 136446210;
    v321 = "__nw_protocol_get_remote_endpoint";
    v226 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v317 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v226, type, &v317))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v227 = __nwlog_obj();
        v228 = type[0];
        if (os_log_type_enabled(v227, type[0]))
        {
          *buf = 136446210;
          v321 = "__nw_protocol_get_remote_endpoint";
          _os_log_impl(&dword_181A37000, v227, v228, "%{public}s called with null protocol", buf, 0xCu);
        }
      }

      else
      {
        if (v317 == OS_LOG_TYPE_INFO)
        {
          v240 = __nw_create_backtrace_string();
          v241 = __nwlog_obj();
          v242 = type[0];
          v243 = os_log_type_enabled(v241, type[0]);
          if (v240)
          {
            if (v243)
            {
              *buf = 136446466;
              v321 = "__nw_protocol_get_remote_endpoint";
              v322 = 2082;
              v323 = v240;
              _os_log_impl(&dword_181A37000, v241, v242, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v240);
          }

          else
          {
            if (v243)
            {
              *buf = 136446210;
              v321 = "__nw_protocol_get_remote_endpoint";
              _os_log_impl(&dword_181A37000, v241, v242, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }
          }

          goto LABEL_371;
        }

        v227 = __nwlog_obj();
        v260 = type[0];
        if (os_log_type_enabled(v227, type[0]))
        {
          *buf = 136446210;
          v321 = "__nw_protocol_get_remote_endpoint";
          _os_log_impl(&dword_181A37000, v227, v260, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_371:
    if (v226)
    {
      free(v226);
    }

    v69 = 0;
    goto LABEL_77;
  }

  v314 = v9;
  if (nw_protocol_definition_is_proxy(v8))
  {
    if (a2 && *(a1 + 136) == 1 && (*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
    {
      v25 = nw_endpoint_flow_add_one_protocol(*(a1 + 32), *(a1 + 120), 0, 0, *(*(*(a1 + 88) + 8) + 40), *(a1 + 40), *(*(*(a1 + 80) + 8) + 24));
      if (!v25)
      {
        if (nw_endpoint_handler_get_logging_disabled(*(a1 + 32)))
        {
          goto LABEL_215;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v85 = gconnectionLogObj;
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          v86 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v87 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v88 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v89 = nw_endpoint_get_logging_description(v88);
          v90 = nw_endpoint_handler_state_string(*(a1 + 32));
          v91 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v92 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          v93 = *(a1 + 120);
          *buf = 136448002;
          v321 = "nw_endpoint_flow_attach_protocols_block_invoke";
          v322 = 2082;
          v323 = v86;
          v324 = 2082;
          v325 = v87;
          v326 = 2082;
          v327 = v89;
          v328 = 2082;
          v329 = v90;
          v330 = 2082;
          v331 = v91;
          v332 = 2114;
          v333 = v92;
          v334 = 2082;
          v335 = v93;
          _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to attach filter protocol %{public}s", buf, 0x52u);
        }

LABEL_214:
        v9 = v314;
        goto LABEL_215;
      }

      *(*(*(a1 + 80) + 8) + 24) = v25;
      if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v26 = gconnectionLogObj;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v28 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v310 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v29 = nw_endpoint_get_logging_description(v310);
          v30 = nw_endpoint_handler_state_string(*(a1 + 32));
          v31 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v32 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          v33 = *(a1 + 120);
          *buf = 136448002;
          v321 = "nw_endpoint_flow_attach_protocols_block_invoke";
          v322 = 2082;
          v323 = v27;
          v324 = 2082;
          v325 = v28;
          v326 = 2082;
          v327 = v29;
          v328 = 2082;
          v329 = v30;
          v330 = 2082;
          v331 = v31;
          v332 = 2114;
          v333 = v32;
          v334 = 2082;
          v335 = v33;
          _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Attached filter protocol: %{public}s", buf, 0x52u);
        }

        v9 = v314;
      }

      *(*(*(a1 + 96) + 8) + 24) = 1;
    }

    if (nw_protocol_options_proxy_endpoint_should_override_stack(v9))
    {
      v34 = nw_protocol_options_copy_proxy_endpoint_for_stack(v9);
    }

    else
    {
      v34 = nw_endpoint_copy_without_proxy_parent(*(a1 + 48));
    }

    v39 = *(*(a1 + 88) + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = v34;

    v41 = nw_endpoint_handler_copy_context(*(a1 + 32));
    v42 = *(*(*(a1 + 88) + 8) + 40);
    if (*(*(*(a1 + 112) + 8) + 24))
    {
      v43 = 1;
    }

    else
    {
      v43 = nw_parameters_get_use_enhanced_privacy_mode(*(a1 + 40)) ^ 1;
    }

    v44 = nw_context_copy_registered_endpoint_internal(v41, v42, v43);
    v45 = *(*(a1 + 88) + 8);
    v46 = *(v45 + 40);
    *(v45 + 40) = v44;

    *(*(*(a1 + 112) + 8) + 24) = 1;
    *(*(a1 + 56) + 35) |= 0x20u;

    v9 = v314;
    v8 = v315;
  }

  identifier = nw_protocol_definition_get_identifier(v8);
  registered_endpoint = *(a1 + 128);
  if (registered_endpoint)
  {
    goto LABEL_130;
  }

  v49 = *(*(*(a1 + 112) + 8) + 24);
  v51 = *(a1 + 40);
  v50 = *(a1 + 48);
  v52 = *(*(*(a1 + 88) + 8) + 40);
  v53 = *(a1 + 32);
  log = v50;
  v303 = v52;
  v311 = v51;
  v302 = v53;
  if (!v53)
  {
    v234 = __nwlog_obj();
    *buf = 136446210;
    v321 = "nw_endpoint_flow_find_protocol_to_join";
    v235 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v317 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v235, type, &v317))
    {
      goto LABEL_406;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v236 = __nwlog_obj();
      v237 = type[0];
      if (os_log_type_enabled(v236, type[0]))
      {
        *buf = 136446210;
        v321 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v236, v237, "%{public}s called with null handler", buf, 0xCu);
      }

      goto LABEL_382;
    }

    if (v317 != OS_LOG_TYPE_INFO)
    {
      v236 = __nwlog_obj();
      v262 = type[0];
      if (os_log_type_enabled(v236, type[0]))
      {
        *buf = 136446210;
        v321 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v236, v262, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_382;
    }

    v248 = __nw_create_backtrace_string();
    v249 = __nwlog_obj();
    v250 = type[0];
    v251 = os_log_type_enabled(v249, type[0]);
    if (v248)
    {
      if (v251)
      {
        *buf = 136446466;
        v321 = "nw_endpoint_flow_find_protocol_to_join";
        v322 = 2082;
        v323 = v248;
        _os_log_impl(&dword_181A37000, v249, v250, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v248);
LABEL_406:
      if (!v235)
      {
        goto LABEL_128;
      }

      goto LABEL_407;
    }

    if (v251)
    {
      *buf = 136446210;
      v321 = "nw_endpoint_flow_find_protocol_to_join";
      _os_log_impl(&dword_181A37000, v249, v250, "%{public}s called with null handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_405;
  }

  v54 = v53;
  v55 = v54[29];

  if (v55 != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v64 = gLogObj;
    if (v55 > 5)
    {
      v65 = "unknown-mode";
    }

    else
    {
      v65 = off_1E6A31018[v55];
    }

    *buf = 136446722;
    v321 = "nw_endpoint_flow_find_protocol_to_join";
    v322 = 2082;
    v323 = v65;
    v324 = 2082;
    v325 = "flow";
    v75 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v317 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v75, type, &v317))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v76 = __nwlog_obj();
        v77 = type[0];
        if (os_log_type_enabled(v76, type[0]))
        {
          if (v55 > 5)
          {
            v78 = "unknown-mode";
          }

          else
          {
            v78 = off_1E6A31018[v55];
          }

          *buf = 136446722;
          v321 = "nw_endpoint_flow_find_protocol_to_join";
          v322 = 2082;
          v323 = v78;
          v324 = 2082;
          v325 = "flow";
          _os_log_impl(&dword_181A37000, v76, v77, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v317 == OS_LOG_TYPE_INFO)
      {
        v79 = __nw_create_backtrace_string();
        v76 = __nwlog_obj();
        v80 = type[0];
        v81 = os_log_type_enabled(v76, type[0]);
        if (v79)
        {
          if (v81)
          {
            if (v55 > 5)
            {
              v82 = "unknown-mode";
            }

            else
            {
              v82 = off_1E6A31018[v55];
            }

            *buf = 136446978;
            v321 = "nw_endpoint_flow_find_protocol_to_join";
            v322 = 2082;
            v323 = v82;
            v324 = 2082;
            v325 = "flow";
            v326 = 2082;
            v327 = v79;
            _os_log_impl(&dword_181A37000, v76, v80, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v79);
          goto LABEL_125;
        }

        if (v81)
        {
          if (v55 > 5)
          {
            v94 = "unknown-mode";
          }

          else
          {
            v94 = off_1E6A31018[v55];
          }

          *buf = 136446722;
          v321 = "nw_endpoint_flow_find_protocol_to_join";
          v322 = 2082;
          v323 = v94;
          v324 = 2082;
          v325 = "flow";
          _os_log_impl(&dword_181A37000, v76, v80, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        v76 = __nwlog_obj();
        v83 = type[0];
        if (os_log_type_enabled(v76, type[0]))
        {
          if (v55 > 5)
          {
            v84 = "unknown-mode";
          }

          else
          {
            v84 = off_1E6A31018[v55];
          }

          *buf = 136446722;
          v321 = "nw_endpoint_flow_find_protocol_to_join";
          v322 = 2082;
          v323 = v84;
          v324 = 2082;
          v325 = "flow";
          _os_log_impl(&dword_181A37000, v76, v83, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

LABEL_125:
    if (!v75)
    {
LABEL_128:
      registered_endpoint = 0;
      goto LABEL_129;
    }

    v95 = v75;
LABEL_127:
    free(v95);
    goto LABEL_128;
  }

  if (!identifier)
  {
    v246 = __nwlog_obj();
    *buf = 136446210;
    v321 = "nw_endpoint_flow_find_protocol_to_join";
    v235 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v317 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v235, type, &v317))
    {
      goto LABEL_406;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v236 = __nwlog_obj();
      v247 = type[0];
      if (os_log_type_enabled(v236, type[0]))
      {
        *buf = 136446210;
        v321 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v236, v247, "%{public}s called with null identifier", buf, 0xCu);
      }

      goto LABEL_382;
    }

    if (v317 != OS_LOG_TYPE_INFO)
    {
      v236 = __nwlog_obj();
      v271 = type[0];
      if (os_log_type_enabled(v236, type[0]))
      {
        *buf = 136446210;
        v321 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v236, v271, "%{public}s called with null identifier, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_382;
    }

    v263 = __nw_create_backtrace_string();
    v249 = __nwlog_obj();
    v264 = type[0];
    v265 = os_log_type_enabled(v249, type[0]);
    if (v263)
    {
      if (v265)
      {
        *buf = 136446466;
        v321 = "nw_endpoint_flow_find_protocol_to_join";
        v322 = 2082;
        v323 = v263;
        _os_log_impl(&dword_181A37000, v249, v264, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_363:

      free(v263);
      if (!v235)
      {
        goto LABEL_128;
      }

LABEL_407:
      v95 = v235;
      goto LABEL_127;
    }

    if (v265)
    {
      *buf = 136446210;
      v321 = "nw_endpoint_flow_find_protocol_to_join";
      _os_log_impl(&dword_181A37000, v249, v264, "%{public}s called with null identifier, no backtrace", buf, 0xCu);
    }

LABEL_405:

    goto LABEL_406;
  }

  if (!v303)
  {
    v252 = __nwlog_obj();
    *buf = 136446210;
    v321 = "nw_endpoint_flow_find_protocol_to_join";
    v235 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v317 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v235, type, &v317))
    {
      goto LABEL_406;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v236 = __nwlog_obj();
      v253 = type[0];
      if (os_log_type_enabled(v236, type[0]))
      {
        *buf = 136446210;
        v321 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v236, v253, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_382;
    }

    if (v317 != OS_LOG_TYPE_INFO)
    {
      v236 = __nwlog_obj();
      v272 = type[0];
      if (os_log_type_enabled(v236, type[0]))
      {
        *buf = 136446210;
        v321 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v236, v272, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_382;
    }

    v263 = __nw_create_backtrace_string();
    v249 = __nwlog_obj();
    v266 = type[0];
    v267 = os_log_type_enabled(v249, type[0]);
    if (v263)
    {
      if (v267)
      {
        *buf = 136446466;
        v321 = "nw_endpoint_flow_find_protocol_to_join";
        v322 = 2082;
        v323 = v263;
        _os_log_impl(&dword_181A37000, v249, v266, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_363;
    }

    if (v267)
    {
      *buf = 136446210;
      v321 = "nw_endpoint_flow_find_protocol_to_join";
      _os_log_impl(&dword_181A37000, v249, v266, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
    }

    goto LABEL_405;
  }

  if (!v311)
  {
    v254 = __nwlog_obj();
    *buf = 136446210;
    v321 = "nw_endpoint_flow_find_protocol_to_join";
    v235 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v317 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v235, type, &v317))
    {
      goto LABEL_406;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v236 = __nwlog_obj();
      v255 = type[0];
      if (os_log_type_enabled(v236, type[0]))
      {
        *buf = 136446210;
        v321 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v236, v255, "%{public}s called with null parameters", buf, 0xCu);
      }

LABEL_382:

      goto LABEL_406;
    }

    if (v317 != OS_LOG_TYPE_INFO)
    {
      v236 = __nwlog_obj();
      v273 = type[0];
      if (os_log_type_enabled(v236, type[0]))
      {
        *buf = 136446210;
        v321 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v236, v273, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_382;
    }

    v263 = __nw_create_backtrace_string();
    v249 = __nwlog_obj();
    v268 = type[0];
    v269 = os_log_type_enabled(v249, type[0]);
    if (v263)
    {
      if (v269)
      {
        *buf = 136446466;
        v321 = "nw_endpoint_flow_find_protocol_to_join";
        v322 = 2082;
        v323 = v263;
        _os_log_impl(&dword_181A37000, v249, v268, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_363;
    }

    if (v269)
    {
      *buf = 136446210;
      v321 = "nw_endpoint_flow_find_protocol_to_join";
      _os_log_impl(&dword_181A37000, v249, v268, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
    }

    goto LABEL_405;
  }

  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v56 = &g_registration_list;
  do
  {
    v56 = *v56;
    if (!v56)
    {
      os_unfair_lock_unlock(&nw_protocol_registrar_lock);
      goto LABEL_80;
    }
  }

  while (*identifier != v56[4] || *(identifier + 1) != v56[5] || *(identifier + 2) != v56[6] || *(identifier + 3) != v56[7] || *(identifier + 4) != v56[8]);
  v61 = v56[13];
  os_unfair_lock_unlock(&nw_protocol_registrar_lock);
  if (!v61)
  {
LABEL_80:
    if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v54) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v70 = gconnectionLogObj;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        v71 = nw_endpoint_handler_get_id_string(v54);
        v298 = nw_endpoint_handler_dry_run_string(v54);
        v300 = nw_endpoint_handler_copy_endpoint(v54);
        v296 = nw_endpoint_get_logging_description(v300);
        v72 = nw_endpoint_handler_state_string(v54);
        v73 = nw_endpoint_handler_mode_string(v54);
        v74 = nw_endpoint_handler_copy_current_path(v54);
        *buf = 136448258;
        v321 = "nw_endpoint_flow_find_protocol_to_join";
        v322 = 2082;
        v323 = v71;
        v324 = 2082;
        v325 = v298;
        v326 = 2082;
        v327 = v296;
        v328 = 2082;
        v329 = v72;
        v330 = 2082;
        v331 = v73;
        v332 = 2114;
        v333 = v74;
        v334 = 2080;
        v335 = identifier;
        v336 = 2048;
        v337 = identifier;
        _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] protocol %s (%p) does not have accept function, cannot search for protocol to join", buf, 0x5Cu);
      }
    }

    goto LABEL_128;
  }

  v62 = v303;
  v63 = v62;
  while (1)
  {
    registered_endpoint = nw_protocol_instance_registrar_search_for_instance_to_join(identifier, a2, log, v63, v62, v311, v49);
    if (registered_endpoint)
    {
      break;
    }

    registered_endpoint = nw_protocol_instance_registrar_copy_next_registered_endpoint(v63, v49);

    v63 = registered_endpoint;
    if (!registered_endpoint)
    {
      goto LABEL_109;
    }
  }

  if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v54) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v274 = gconnectionLogObj;
    if (os_log_type_enabled(v274, OS_LOG_TYPE_DEBUG))
    {
      v275 = nw_endpoint_handler_get_id_string(v54);
      v299 = nw_endpoint_handler_dry_run_string(v54);
      v301 = nw_endpoint_handler_copy_endpoint(v54);
      v297 = nw_endpoint_get_logging_description(v301);
      v295 = nw_endpoint_handler_state_string(v54);
      v276 = nw_endpoint_handler_mode_string(v54);
      v277 = nw_endpoint_handler_copy_current_path(v54);
      v278 = v277;
      v321 = "nw_endpoint_flow_find_protocol_to_join";
      v279 = "invalid";
      v280 = *(registered_endpoint + 16);
      *buf = 136448258;
      if (v280)
      {
        v279 = v280;
      }

      v322 = 2082;
      v323 = v275;
      v324 = 2082;
      v325 = v299;
      v326 = 2082;
      v327 = v297;
      v328 = 2082;
      v329 = v295;
      v330 = 2082;
      v331 = v276;
      v332 = 2114;
      v333 = v277;
      v334 = 2080;
      v335 = v279;
      v336 = 2048;
      v337 = registered_endpoint;
      _os_log_impl(&dword_181A37000, v274, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] returning protocol to join %s (%p)", buf, 0x5Cu);
    }
  }

LABEL_109:

LABEL_129:
  v9 = v314;
  if (!registered_endpoint)
  {
LABEL_139:
    protocol_for_definition = nw_endpoint_handler_create_protocol_for_definition(identifier, v315, *(*(*(a1 + 88) + 8) + 40), *(a1 + 40));
    v98 = *(a1 + 32);
    if (!protocol_for_definition)
    {
      if (nw_endpoint_handler_get_logging_disabled(v98))
      {
        goto LABEL_215;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v105 = gconnectionLogObj;
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        v106 = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v107 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v108 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v109 = nw_endpoint_get_logging_description(v108);
        v110 = nw_endpoint_handler_state_string(*(a1 + 32));
        v111 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v112 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136448002;
        v321 = "nw_endpoint_flow_attach_protocols_block_invoke";
        v322 = 2082;
        v323 = v106;
        v324 = 2082;
        v325 = v107;
        v326 = 2082;
        v327 = v109;
        v328 = 2082;
        v329 = v110;
        v330 = 2082;
        v331 = v111;
        v332 = 2114;
        v333 = v112;
        v334 = 2082;
        v335 = identifier;
        _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to create application protocol handler: %{public}s", buf, 0x52u);
      }

      goto LABEL_213;
    }

    nw_endpoint_handler_set_protocol_instance(v98, v9, v315, protocol_for_definition);
    v99 = *(*(*(a1 + 80) + 8) + 24);
    if (v99)
    {
      if (protocol_for_definition != v99)
      {
        v100 = *(protocol_for_definition + 24);
        if (v100 && *v100)
        {
          if (nw_protocol_add_input_handler(protocol_for_definition, v99))
          {
            if (!nw_protocol_definition_get_message_is_stream(v315))
            {
              goto LABEL_147;
            }

            v101 = *(a1 + 56);
            if (*(v101 + 768))
            {
              goto LABEL_147;
            }

            objc_storeStrong((v101 + 768), a3);
            nw::share(buf, protocol_for_definition);
            nw::retained_ptr<nw_protocol *>::operator=(*(a1 + 56) + 776, buf);
            v9 = v314;
            if (BYTE4(v321))
            {
              nw::release_if_needed<nw_protocol *>(buf);
            }

            v123 = *(protocol_for_definition + 24);
            if (!v123 || !*(v123 + 232))
            {
LABEL_147:
              if (*(identifier + 9) == 2 && nw_protocol_registrar_get_accept_function_for_identifier(identifier))
              {
                *(*(a1 + 56) + 736) = *(*(*(*(a1 + 80) + 8) + 24) + 32);
              }

              v102 = *(a1 + 56);
              if (!*(v102 + 744) && *(*(*(a1 + 112) + 8) + 24) == 1)
              {
                *(v102 + 744) = *(*(*(*(a1 + 80) + 8) + 24) + 32);
              }

              v103 = *(a1 + 64);
              if (v103 && nw_protocol_option_is_equal(v103, v9, 0))
              {
                os_unfair_lock_lock((*(a1 + 56) + 880));
                v104 = *(a1 + 56);
                if (*(v104 + 720))
                {
                  os_unfair_lock_unlock((v104 + 880));
                }

                else
                {
                  nw::share(buf, protocol_for_definition);
                  nw::retained_ptr<nw_protocol *>::operator=(*(a1 + 56) + 720, buf);
                  if (BYTE4(v321))
                  {
                    nw::release_if_needed<nw_protocol *>(buf);
                  }

                  os_unfair_lock_unlock((*(a1 + 56) + 880));
                  if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v147 = gconnectionLogObj;
                    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
                    {
                      v148 = nw_endpoint_handler_get_id_string(*(a1 + 32));
                      v149 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
                      v150 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
                      v151 = nw_endpoint_get_logging_description(v150);
                      v152 = nw_endpoint_handler_state_string(*(a1 + 32));
                      v153 = nw_endpoint_handler_mode_string(*(a1 + 32));
                      v154 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
                      *buf = 136448002;
                      v321 = "nw_endpoint_flow_attach_protocols_block_invoke";
                      v322 = 2082;
                      v323 = v148;
                      v324 = 2082;
                      v325 = v149;
                      v326 = 2082;
                      v327 = v151;
                      v328 = 2082;
                      v329 = v152;
                      v330 = 2082;
                      v331 = v153;
                      v332 = 2114;
                      v333 = v154;
                      v334 = 2082;
                      v335 = identifier;
                      _os_log_impl(&dword_181A37000, v147, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Saved effective transport protocol: %{public}s", buf, 0x52u);
                    }

                    v9 = v314;
                  }
                }
              }

              *(*(*(a1 + 80) + 8) + 24) = *(*(*(*(a1 + 80) + 8) + 24) + 32);
              v155 = *(*(*(a1 + 80) + 8) + 24);
              v156 = nw_endpoint_handler_get_logging_disabled(*(a1 + 32));
              if (v155)
              {
                if ((v156 & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v157 = gconnectionLogObj;
                  if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
                  {
                    v158 = nw_endpoint_handler_get_id_string(*(a1 + 32));
                    v159 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
                    v160 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
                    v161 = nw_endpoint_get_logging_description(v160);
                    v162 = nw_endpoint_handler_state_string(*(a1 + 32));
                    v163 = nw_endpoint_handler_mode_string(*(a1 + 32));
                    v164 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
                    *buf = 136448002;
                    v321 = "nw_endpoint_flow_attach_protocols_block_invoke";
                    v322 = 2082;
                    v323 = v158;
                    v324 = 2082;
                    v325 = v159;
                    v326 = 2082;
                    v327 = v161;
                    v328 = 2082;
                    v329 = v162;
                    v330 = 2082;
                    v331 = v163;
                    v332 = 2114;
                    v333 = v164;
                    v334 = 2082;
                    v335 = identifier;
                    _os_log_impl(&dword_181A37000, v157, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Attached application protocol: %{public}s", buf, 0x52u);
                  }

                  goto LABEL_32;
                }

                goto LABEL_78;
              }

              if ((v156 & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v165 = gconnectionLogObj;
                v166 = nw_endpoint_handler_get_id_string(*(a1 + 32));
                v167 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
                v168 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
                v169 = nw_endpoint_get_logging_description(v168);
                v170 = nw_endpoint_handler_state_string(*(a1 + 32));
                v171 = nw_endpoint_handler_mode_string(*(a1 + 32));
                v172 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
                *buf = 136447746;
                v321 = "nw_endpoint_flow_attach_protocols_block_invoke";
                v322 = 2082;
                v323 = v166;
                v324 = 2082;
                v325 = v167;
                v326 = 2082;
                v327 = v169;
                v328 = 2082;
                v329 = v170;
                v330 = 2082;
                v331 = v171;
                v332 = 2114;
                v333 = v172;
                v313 = _os_log_send_and_compose_impl();

                type[0] = OS_LOG_TYPE_ERROR;
                v317 = OS_LOG_TYPE_DEFAULT;
                v173 = v313;
                if ((__nwlog_fault(v313, type, &v317) & 1) == 0)
                {
                  goto LABEL_260;
                }

                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v174 = gconnectionLogObj;
                  v175 = type[0];
                  if (os_log_type_enabled(v174, type[0]))
                  {
                    v176 = nw_endpoint_handler_get_id_string(*(a1 + 32));
                    v177 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
                    logb = v174;
                    v178 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
                    v179 = nw_endpoint_get_logging_description(v178);
                    v180 = nw_endpoint_handler_state_string(*(a1 + 32));
                    v181 = nw_endpoint_handler_mode_string(*(a1 + 32));
                    v182 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
                    *buf = 136447746;
                    v321 = "nw_endpoint_flow_attach_protocols_block_invoke";
                    v322 = 2082;
                    v323 = v176;
                    v324 = 2082;
                    v325 = v177;
                    v326 = 2082;
                    v327 = v179;
                    v328 = 2082;
                    v329 = v180;
                    v330 = 2082;
                    v331 = v181;
                    v332 = 2114;
                    v333 = v182;
                    _os_log_impl(&dword_181A37000, logb, v175, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Next protocol is NULL", buf, 0x48u);

                    v174 = logb;
                  }
                }

                else if (v317 == OS_LOG_TYPE_INFO)
                {
                  v183 = __nw_create_backtrace_string();
                  if (v183)
                  {
                    v184 = v183;
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v185 = gconnectionLogObj;
                    v186 = type[0];
                    if (os_log_type_enabled(v185, type[0]))
                    {
                      v187 = nw_endpoint_handler_get_id_string(*(a1 + 32));
                      v188 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
                      logc = v185;
                      v189 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
                      v190 = nw_endpoint_get_logging_description(v189);
                      v191 = nw_endpoint_handler_state_string(*(a1 + 32));
                      v192 = nw_endpoint_handler_mode_string(*(a1 + 32));
                      v193 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
                      *buf = 136448002;
                      v321 = "nw_endpoint_flow_attach_protocols_block_invoke";
                      v322 = 2082;
                      v323 = v187;
                      v324 = 2082;
                      v325 = v188;
                      v326 = 2082;
                      v327 = v190;
                      v328 = 2082;
                      v329 = v191;
                      v330 = 2082;
                      v331 = v192;
                      v332 = 2114;
                      v333 = v193;
                      v334 = 2082;
                      v335 = v184;
                      _os_log_impl(&dword_181A37000, logc, v186, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Next protocol is NULL, dumping backtrace:%{public}s", buf, 0x52u);

                      v185 = logc;
                    }

                    free(v184);
                    goto LABEL_259;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v174 = gconnectionLogObj;
                  v202 = type[0];
                  if (os_log_type_enabled(v174, type[0]))
                  {
                    v203 = nw_endpoint_handler_get_id_string(*(a1 + 32));
                    v204 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
                    loge = v174;
                    v205 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
                    v206 = nw_endpoint_get_logging_description(v205);
                    v207 = nw_endpoint_handler_state_string(*(a1 + 32));
                    v208 = nw_endpoint_handler_mode_string(*(a1 + 32));
                    v209 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
                    *buf = 136447746;
                    v321 = "nw_endpoint_flow_attach_protocols_block_invoke";
                    v322 = 2082;
                    v323 = v203;
                    v324 = 2082;
                    v325 = v204;
                    v326 = 2082;
                    v327 = v206;
                    v328 = 2082;
                    v329 = v207;
                    v330 = 2082;
                    v331 = v208;
                    v332 = 2114;
                    v333 = v209;
                    _os_log_impl(&dword_181A37000, loge, v202, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Next protocol is NULL, no backtrace", buf, 0x48u);

                    v174 = loge;
                  }
                }

                else
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v174 = gconnectionLogObj;
                  v194 = type[0];
                  if (os_log_type_enabled(v174, type[0]))
                  {
                    v195 = nw_endpoint_handler_get_id_string(*(a1 + 32));
                    v196 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
                    logd = v174;
                    v197 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
                    v198 = nw_endpoint_get_logging_description(v197);
                    v199 = nw_endpoint_handler_state_string(*(a1 + 32));
                    v200 = nw_endpoint_handler_mode_string(*(a1 + 32));
                    v201 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
                    *buf = 136447746;
                    v321 = "nw_endpoint_flow_attach_protocols_block_invoke";
                    v322 = 2082;
                    v323 = v195;
                    v324 = 2082;
                    v325 = v196;
                    v326 = 2082;
                    v327 = v198;
                    v328 = 2082;
                    v329 = v199;
                    v330 = 2082;
                    v331 = v200;
                    v332 = 2114;
                    v333 = v201;
                    _os_log_impl(&dword_181A37000, logd, v194, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Next protocol is NULL, backtrace limit exceeded", buf, 0x48u);

                    v174 = logd;
                  }
                }

LABEL_259:
                v173 = v313;
LABEL_260:
                v9 = v314;
                if (v173)
                {
                  free(v173);
                }
              }

LABEL_215:
              v38 = 0;
              *(*(*(a1 + 104) + 8) + 24) = 1;
              goto LABEL_216;
            }

            v124 = *(a1 + 56);
            nw::share(type, protocol_for_definition);
            v125 = *(protocol_for_definition + 24);
            if (v125)
            {
              v126 = *(v125 + 232);
              if (v126)
              {
                v127 = v126(protocol_for_definition, v124 + 440, 0);
                if ((v319 & 1) == 0)
                {
LABEL_189:
                  if ((v127 & 1) == 0 && (nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v128 = gconnectionLogObj;
                    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                    {
                      v129 = nw_endpoint_handler_get_id_string(*(a1 + 32));
                      loga = nw_endpoint_handler_dry_run_string(*(a1 + 32));
                      v312 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
                      v130 = v129;
                      v131 = nw_endpoint_get_logging_description(v312);
                      v132 = nw_endpoint_handler_state_string(*(a1 + 32));
                      v133 = nw_endpoint_handler_mode_string(*(a1 + 32));
                      v134 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
                      v135 = v134;
                      v136 = "invalid";
                      v137 = *(*(a1 + 56) + 392);
                      if (!v137)
                      {
                        v137 = "invalid";
                      }

                      if (*(protocol_for_definition + 16))
                      {
                        v136 = *(protocol_for_definition + 16);
                      }

                      *buf = 136448258;
                      v321 = "nw_endpoint_flow_attach_protocols_block_invoke";
                      v322 = 2082;
                      v323 = v130;
                      v324 = 2082;
                      v325 = loga;
                      v326 = 2082;
                      v327 = v131;
                      v328 = 2082;
                      v329 = v132;
                      v330 = 2082;
                      v331 = v133;
                      v332 = 2114;
                      v333 = v134;
                      v334 = 2082;
                      v335 = v137;
                      v336 = 2082;
                      v337 = v136;
                      _os_log_impl(&dword_181A37000, v128, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to add protocol %{public}s as a listener to %{public}s", buf, 0x5Cu);
                    }

                    v9 = v314;
                  }

                  goto LABEL_147;
                }

LABEL_188:
                nw::release_if_needed<nw_protocol *>(type);
                goto LABEL_189;
              }
            }

            v281 = __nwlog_obj();
            v282 = *(protocol_for_definition + 16);
            *buf = 136446722;
            v321 = "__nw_protocol_add_listen_handler";
            if (!v282)
            {
              v282 = "invalid";
            }

            v322 = 2082;
            v323 = v282;
            v324 = 2048;
            v325 = protocol_for_definition;
            v283 = _os_log_send_and_compose_impl();

            v317 = OS_LOG_TYPE_ERROR;
            v316 = 0;
            if (__nwlog_fault(v283, &v317, &v316))
            {
              if (v317 == OS_LOG_TYPE_FAULT)
              {
                v284 = __nwlog_obj();
                v285 = v317;
                if (os_log_type_enabled(v284, v317))
                {
                  v286 = *(protocol_for_definition + 16);
                  if (!v286)
                  {
                    v286 = "invalid";
                  }

                  *buf = 136446722;
                  v321 = "__nw_protocol_add_listen_handler";
                  v322 = 2082;
                  v323 = v286;
                  v324 = 2048;
                  v325 = protocol_for_definition;
                  _os_log_impl(&dword_181A37000, v284, v285, "%{public}s protocol %{public}s (%p) has invalid add_listen_handler callback", buf, 0x20u);
                }

LABEL_416:

                goto LABEL_434;
              }

              if (v316 != 1)
              {
                v284 = __nwlog_obj();
                v292 = v317;
                if (os_log_type_enabled(v284, v317))
                {
                  v293 = *(protocol_for_definition + 16);
                  if (!v293)
                  {
                    v293 = "invalid";
                  }

                  *buf = 136446722;
                  v321 = "__nw_protocol_add_listen_handler";
                  v322 = 2082;
                  v323 = v293;
                  v324 = 2048;
                  v325 = protocol_for_definition;
                  _os_log_impl(&dword_181A37000, v284, v292, "%{public}s protocol %{public}s (%p) has invalid add_listen_handler callback, backtrace limit exceeded", buf, 0x20u);
                }

                goto LABEL_416;
              }

              v287 = __nw_create_backtrace_string();
              v288 = __nwlog_obj();
              v289 = v317;
              v290 = os_log_type_enabled(v288, v317);
              if (v287)
              {
                if (v290)
                {
                  v291 = *(protocol_for_definition + 16);
                  if (!v291)
                  {
                    v291 = "invalid";
                  }

                  *buf = 136446978;
                  v321 = "__nw_protocol_add_listen_handler";
                  v322 = 2082;
                  v323 = v291;
                  v324 = 2048;
                  v325 = protocol_for_definition;
                  v326 = 2082;
                  v327 = v287;
                  _os_log_impl(&dword_181A37000, v288, v289, "%{public}s protocol %{public}s (%p) has invalid add_listen_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v287);
              }

              else
              {
                if (v290)
                {
                  v294 = *(protocol_for_definition + 16);
                  if (!v294)
                  {
                    v294 = "invalid";
                  }

                  *buf = 136446722;
                  v321 = "__nw_protocol_add_listen_handler";
                  v322 = 2082;
                  v323 = v294;
                  v324 = 2048;
                  v325 = protocol_for_definition;
                  _os_log_impl(&dword_181A37000, v288, v289, "%{public}s protocol %{public}s (%p) has invalid add_listen_handler callback, no backtrace", buf, 0x20u);
                }
              }
            }

LABEL_434:
            if (v283)
            {
              free(v283);
            }

            v127 = 0;
            v9 = v314;
            if ((v319 & 1) == 0)
            {
              goto LABEL_189;
            }

            goto LABEL_188;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v117 = gLogObj;
          if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v321 = "nw_protocol_utilities_add_input_handler";
            v322 = 2048;
            v323 = protocol_for_definition;
            _os_log_impl(&dword_181A37000, v117, OS_LOG_TYPE_ERROR, "%{public}s Unable to invoke add_input_handler on protocol %p because it is not valid", buf, 0x16u);
          }
        }

        goto LABEL_205;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v113 = gLogObj;
      *buf = 136446466;
      v321 = "nw_protocol_utilities_add_input_handler";
      v322 = 2048;
      v323 = protocol_for_definition;
      v114 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v317 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v114, type, &v317))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v115 = __nwlog_obj();
          v116 = type[0];
          if (os_log_type_enabled(v115, type[0]))
          {
            *buf = 136446466;
            v321 = "nw_protocol_utilities_add_input_handler";
            v322 = 2048;
            v323 = protocol_for_definition;
            _os_log_impl(&dword_181A37000, v115, v116, "%{public}s Cannot add input handler %p to itself", buf, 0x16u);
          }

LABEL_367:

          goto LABEL_203;
        }

        if (v317 != OS_LOG_TYPE_INFO)
        {
          v115 = __nwlog_obj();
          v122 = type[0];
          if (os_log_type_enabled(v115, type[0]))
          {
            *buf = 136446466;
            v321 = "nw_protocol_utilities_add_input_handler";
            v322 = 2048;
            v323 = protocol_for_definition;
            _os_log_impl(&dword_181A37000, v115, v122, "%{public}s Cannot add input handler %p to itself, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_367;
        }

        v118 = __nw_create_backtrace_string();
        v119 = __nwlog_obj();
        v120 = type[0];
        v121 = os_log_type_enabled(v119, type[0]);
        if (v118)
        {
          if (v121)
          {
            *buf = 136446722;
            v321 = "nw_protocol_utilities_add_input_handler";
            v322 = 2048;
            v323 = protocol_for_definition;
            v324 = 2082;
            v325 = v118;
            _os_log_impl(&dword_181A37000, v119, v120, "%{public}s Cannot add input handler %p to itself, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v118);
          if (!v114)
          {
            goto LABEL_205;
          }

          goto LABEL_204;
        }

        if (v121)
        {
          *buf = 136446466;
          v321 = "nw_protocol_utilities_add_input_handler";
          v322 = 2048;
          v323 = protocol_for_definition;
          _os_log_impl(&dword_181A37000, v119, v120, "%{public}s Cannot add input handler %p to itself, no backtrace", buf, 0x16u);
        }
      }
    }

    else
    {
      v238 = __nwlog_obj();
      *buf = 136446210;
      v321 = "nw_protocol_utilities_add_input_handler";
      v114 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v317 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v114, type, &v317))
      {
        goto LABEL_203;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v115 = __nwlog_obj();
        v239 = type[0];
        if (os_log_type_enabled(v115, type[0]))
        {
          *buf = 136446210;
          v321 = "nw_protocol_utilities_add_input_handler";
          _os_log_impl(&dword_181A37000, v115, v239, "%{public}s called with null input_protocol", buf, 0xCu);
        }

        goto LABEL_367;
      }

      if (v317 != OS_LOG_TYPE_INFO)
      {
        v115 = __nwlog_obj();
        v270 = type[0];
        if (os_log_type_enabled(v115, type[0]))
        {
          *buf = 136446210;
          v321 = "nw_protocol_utilities_add_input_handler";
          _os_log_impl(&dword_181A37000, v115, v270, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_367;
      }

      v256 = __nw_create_backtrace_string();
      v257 = __nwlog_obj();
      v258 = type[0];
      v259 = os_log_type_enabled(v257, type[0]);
      if (v256)
      {
        if (v259)
        {
          *buf = 136446466;
          v321 = "nw_protocol_utilities_add_input_handler";
          v322 = 2082;
          v323 = v256;
          _os_log_impl(&dword_181A37000, v257, v258, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v256);
      }

      else
      {
        if (v259)
        {
          *buf = 136446210;
          v321 = "nw_protocol_utilities_add_input_handler";
          _os_log_impl(&dword_181A37000, v257, v258, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
        }
      }
    }

LABEL_203:
    if (!v114)
    {
LABEL_205:
      if (nw_endpoint_handler_get_logging_disabled(*(a1 + 32)))
      {
        goto LABEL_215;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v105 = gconnectionLogObj;
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        v138 = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v139 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v140 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v141 = v140;
        if (v140)
        {
          v142 = _nw_endpoint_get_logging_description(v140);
        }

        else
        {
          v142 = "<NULL>";
        }

        v143 = nw_endpoint_handler_state_string(*(a1 + 32));
        v144 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v145 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136448002;
        v321 = "nw_endpoint_flow_attach_protocols_block_invoke";
        v322 = 2082;
        v323 = v138;
        v324 = 2082;
        v325 = v139;
        v326 = 2082;
        v327 = v142;
        v328 = 2082;
        v329 = v143;
        v330 = 2082;
        v331 = v144;
        v332 = 2114;
        v333 = v145;
        v334 = 2082;
        v335 = identifier;
        _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to attach application protocol %{public}s", buf, 0x52u);
      }

LABEL_213:

      goto LABEL_214;
    }

LABEL_204:
    free(v114);
    goto LABEL_205;
  }

LABEL_130:
  if (!nw_endpoint_flow_join_protocol(*(a1 + 32), *(a1 + 40), v9, v315, identifier, a2, registered_endpoint, *(*(*(a1 + 80) + 8) + 24), *(*(*(a1 + 112) + 8) + 24), (*(*(a1 + 104) + 8) + 24)))
  {
    goto LABEL_139;
  }

  *(*(a1 + 56) + 736) = *(*(*(*(a1 + 80) + 8) + 24) + 32);
  *(*(a1 + 56) + 33) |= 1u;
  do
  {
    registered_endpoint = *(registered_endpoint + 32);
    if (!registered_endpoint)
    {
      v38 = 0;
      goto LABEL_216;
    }
  }

  while (*(*(registered_endpoint + 16) + 32) != 3);
  os_unfair_lock_lock((*(a1 + 56) + 880));
  v96 = *(a1 + 56);
  if (!*(v96 + 720))
  {
    nw::share(buf, registered_endpoint);
    nw::retained_ptr<nw_protocol *>::operator=(*(a1 + 56) + 720, buf);
    if (BYTE4(v321))
    {
      nw::release_if_needed<nw_protocol *>(buf);
    }

    v96 = *(a1 + 56);
  }

  os_unfair_lock_unlock((v96 + 880));
  v38 = 0;
LABEL_216:

  return v38;
}

uint64_t nw_protocol_options_is_custom_ip(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (nw_protocol_copy_custom_ip_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_custom_ip_definition_onceToken, &__block_literal_global_55930);
    }

    v2 = nw_protocol_options_matches_definition(v1, nw_protocol_copy_custom_ip_definition_definition);
    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_options_is_custom_ip";
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
        v14 = "nw_protocol_options_is_custom_ip";
        v8 = "%{public}s called with null options";
LABEL_19:
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
            v14 = "nw_protocol_options_is_custom_ip";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v10)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v14 = "nw_protocol_options_is_custom_ip";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_19;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_options_is_custom_ip";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_5:

  return v2;
}

uint64_t nw_endpoint_handler_create_protocol_for_definition(char *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && (v10 = v7, v11 = v10[192], v10, (v11 & 1) != 0))
  {
    v13 = nw_protocol_definition_get_framer_create(v10);
    if (!v13)
    {
      v14 = 0;
      goto LABEL_7;
    }

    internal = v13(a1, v10, v8, v9);
  }

  else
  {
    internal = nw_protocol_create_internal(a1, v8, v9, 1);
  }

  v14 = internal;
LABEL_7:

  return v14;
}

uint64_t nw_protocol_create_internal(char *a1, void *a2, const char *a3, int a4)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v59 = "nw_protocol_create_internal";
    v42 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (__nwlog_fault(v42, &type, &v56))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v43 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v43, type))
        {
          *buf = 136446210;
          v59 = "nw_protocol_create_internal";
          v45 = "%{public}s called with null identifier";
LABEL_94:
          _os_log_impl(&dword_181A37000, v43, v44, v45, buf, 0xCu);
        }
      }

      else if (v56 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v43 = __nwlog_obj();
        v44 = type;
        v49 = os_log_type_enabled(v43, type);
        if (backtrace_string)
        {
          if (v49)
          {
            *buf = 136446466;
            v59 = "nw_protocol_create_internal";
            v60 = 2082;
            v61 = backtrace_string;
            _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_95;
        }

        if (v49)
        {
          *buf = 136446210;
          v59 = "nw_protocol_create_internal";
          v45 = "%{public}s called with null identifier, no backtrace";
          goto LABEL_94;
        }
      }

      else
      {
        v43 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v43, type))
        {
          *buf = 136446210;
          v59 = "nw_protocol_create_internal";
          v45 = "%{public}s called with null identifier, backtrace limit exceeded";
          goto LABEL_94;
        }
      }
    }

LABEL_95:
    if (v42)
    {
      free(v42);
    }

    return 0;
  }

  nw_allow_use_of_dispatch_internal();
  if (gLogDatapath == 1)
  {
    v46 = __nwlog_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v59 = "nw_protocol_create_internal";
      v60 = 2080;
      v61 = a1;
      v62 = 2080;
      logging_description = nw_endpoint_get_logging_description(a2);
      v64 = 2112;
      v65 = a3;
      _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s creating protocol %s (endpoint: %s, parameters: %@)", buf, 0x2Au);
    }
  }

  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v8 = &g_registration_list;
  do
  {
    v8 = *v8;
    if (!v8)
    {
      if (gLogDatapath == 1)
      {
        v47 = __nwlog_obj();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          v59 = "nw_protocol_create_internal";
          v60 = 2080;
          v61 = a1;
          v62 = 2048;
          logging_description = a1;
          _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s failed to find registration for identifier %s (%p)", buf, 0x20u);
        }
      }

      v14 = 0;
      goto LABEL_41;
    }
  }

  while (*a1 != v8[4] || *(a1 + 1) != v8[5] || *(a1 + 2) != v8[6] || *(a1 + 3) != v8[7] || *(a1 + 4) != v8[8]);
  v13 = v8[12];
  if (v13)
  {
    v14 = v13(a1, v8[14], a2, a3);
    if (!a3)
    {
      goto LABEL_40;
    }

LABEL_28:
    if (!a2 || !a4 || !v14 || !v8[13])
    {
      goto LABEL_40;
    }

    v16 = a2;
    is_registered = _nw_endpoint_is_registered(v16);

    if (is_registered)
    {
      if (gLogDatapath == 1)
      {
        v53 = __nwlog_obj();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v54 = v8[13];
          v55 = nw_endpoint_get_logging_description(v16);
          *buf = 136447234;
          v59 = "nw_protocol_create_internal";
          v60 = 2048;
          v61 = v14;
          v62 = 2080;
          logging_description = a1;
          v64 = 2048;
          v65 = v54;
          v66 = 2080;
          v67 = v55;
          _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s created protocol instance %p of %s with accept function %p to endpoint %s", buf, 0x34u);
        }
      }

      v18 = v8[9];
      if (v18)
      {
        if ((_nw_array_contains_object(v18, v16) & 1) == 0)
        {
          v19 = v8[9];
          if (v19)
          {
            _nw_array_append(v19, v16);
          }
        }
      }

      v20 = v16;
      v21 = _nw_endpoint_copy_registrar_for_identifier();

      if (v21)
      {
        nw_protocol_instance_registrar_add_instance(v21, v14);
        os_release(v21);
        goto LABEL_41;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v59 = "nw_protocol_create_internal";
      v25 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v56 = 0;
      if (!__nwlog_fault(v25, &type, &v56))
      {
        goto LABEL_73;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (os_log_type_enabled(v33, type))
        {
          *buf = 136446210;
          v59 = "nw_protocol_create_internal";
          v29 = "%{public}s nw_endpoint_get_registrar(endpoint, true) failed";
          goto LABEL_71;
        }

        goto LABEL_73;
      }

      if (v56 == 1)
      {
        v36 = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v34 = type;
        v37 = os_log_type_enabled(v33, type);
        if (v36)
        {
          if (v37)
          {
            *buf = 136446466;
            v59 = "nw_protocol_create_internal";
            v60 = 2082;
            v61 = v36;
            _os_log_impl(&dword_181A37000, v33, v34, "%{public}s nw_endpoint_get_registrar(endpoint, true) failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v36);
          if (!v25)
          {
            goto LABEL_41;
          }

LABEL_74:
          free(v25);
          goto LABEL_41;
        }

        if (!v37)
        {
          goto LABEL_73;
        }

        *buf = 136446210;
        v59 = "nw_protocol_create_internal";
        v29 = "%{public}s nw_endpoint_get_registrar(endpoint, true) failed, no backtrace";
      }

      else
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (!os_log_type_enabled(v33, type))
        {
          goto LABEL_73;
        }

        *buf = 136446210;
        v59 = "nw_protocol_create_internal";
        v29 = "%{public}s nw_endpoint_get_registrar(endpoint, true) failed, backtrace limit exceeded";
      }

LABEL_71:
      v39 = v33;
      v40 = v34;
      v41 = 12;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = v16;
      v24 = _nw_endpoint_get_logging_description(v23);

      *buf = 136446466;
      v59 = "nw_protocol_create_internal";
      v60 = 2080;
      v61 = v24;
      v25 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v56 = 0;
      if (!__nwlog_fault(v25, &type, &v56))
      {
        goto LABEL_73;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_73;
        }

        v28 = nw_endpoint_get_logging_description(v23);
        *buf = 136446466;
        v59 = "nw_protocol_create_internal";
        v60 = 2080;
        v61 = v28;
        v29 = "%{public}s endpoint %s is not registered, cannot add instance for joining";
      }

      else if (v56 == 1)
      {
        v30 = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v27 = type;
        v31 = os_log_type_enabled(v26, type);
        if (v30)
        {
          if (v31)
          {
            v32 = nw_endpoint_get_logging_description(v23);
            *buf = 136446722;
            v59 = "nw_protocol_create_internal";
            v60 = 2080;
            v61 = v32;
            v62 = 2082;
            logging_description = v30;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s endpoint %s is not registered, cannot add instance for joining, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v30);
          goto LABEL_73;
        }

        if (!v31)
        {
LABEL_73:
          if (!v25)
          {
            goto LABEL_41;
          }

          goto LABEL_74;
        }

        v38 = nw_endpoint_get_logging_description(v23);
        *buf = 136446466;
        v59 = "nw_protocol_create_internal";
        v60 = 2080;
        v61 = v38;
        v29 = "%{public}s endpoint %s is not registered, cannot add instance for joining, no backtrace";
      }

      else
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (!os_log_type_enabled(v26, type))
        {
          goto LABEL_73;
        }

        v35 = nw_endpoint_get_logging_description(v23);
        *buf = 136446466;
        v59 = "nw_protocol_create_internal";
        v60 = 2080;
        v61 = v35;
        v29 = "%{public}s endpoint %s is not registered, cannot add instance for joining, backtrace limit exceeded";
      }

      v39 = v26;
      v40 = v27;
      v41 = 22;
    }

    _os_log_impl(&dword_181A37000, v39, v40, v29, buf, v41);
    goto LABEL_73;
  }

  v15 = v8[11];
  if (!v15)
  {
    v14 = (v8[10])(a1);
    if (!a3)
    {
      goto LABEL_40;
    }

    goto LABEL_28;
  }

  v14 = v15(a1, a2, a3);
  if (a3)
  {
    goto LABEL_28;
  }

LABEL_40:
  if (gLogDatapath == 1)
  {
    v50 = __nwlog_obj();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v51 = nw_endpoint_get_logging_description(a2);
      v52 = v8[13];
      *buf = 136447490;
      v59 = "nw_protocol_create_internal";
      v60 = 2080;
      v61 = a1;
      v62 = 2048;
      logging_description = v14;
      v64 = 2080;
      v65 = v51;
      v66 = 2048;
      v67 = a3;
      v68 = 2048;
      v69 = v52;
      _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s protocol %s (%p) not eligible, endpoint %s, parameters %p, accept function %p", buf, 0x3Eu);
    }
  }

LABEL_41:
  os_unfair_lock_unlock(&nw_protocol_registrar_lock);
  return v14;
}

void nw_endpoint_handler_set_protocol_instance(void *a1, void *a2, void *a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (!v7)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_endpoint_handler_set_protocol_instance";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (__nwlog_fault(v24, &type, &v47))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v50 = "nw_endpoint_handler_set_protocol_instance";
          _os_log_impl(&dword_181A37000, v25, v36, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v47 != 1)
      {
        v25 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v50 = "nw_endpoint_handler_set_protocol_instance";
          _os_log_impl(&dword_181A37000, v25, v42, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
      }

      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v40 = type;
      v41 = os_log_type_enabled(v25, type);
      if (!backtrace_string)
      {
        if (v41)
        {
          *buf = 136446210;
          v50 = "nw_endpoint_handler_set_protocol_instance";
          _os_log_impl(&dword_181A37000, v25, v40, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v41)
      {
        *buf = 136446466;
        v50 = "nw_endpoint_handler_set_protocol_instance";
        v51 = 2082;
        v52 = backtrace_string;
        _os_log_impl(&dword_181A37000, v25, v40, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    goto LABEL_41;
  }

  v10 = v7;
  mode = v10->mode;

  if (mode != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    if (mode > 5)
    {
      v23 = "unknown-mode";
    }

    else
    {
      v23 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v50 = "nw_endpoint_handler_set_protocol_instance";
    v51 = 2082;
    v52 = v23;
    v53 = 2082;
    v54 = "flow";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (__nwlog_fault(v24, &type, &v47))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          if (mode > 5)
          {
            v27 = "unknown-mode";
          }

          else
          {
            v27 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v50 = "nw_endpoint_handler_set_protocol_instance";
          v51 = 2082;
          v52 = v27;
          v53 = 2082;
          v54 = "flow";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }

        goto LABEL_40;
      }

      if (v47 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v32 = type;
        if (os_log_type_enabled(v25, type))
        {
          if (mode > 5)
          {
            v33 = "unknown-mode";
          }

          else
          {
            v33 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v50 = "nw_endpoint_handler_set_protocol_instance";
          v51 = 2082;
          v52 = v33;
          v53 = 2082;
          v54 = "flow";
          _os_log_impl(&dword_181A37000, v25, v32, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }

        goto LABEL_40;
      }

      v28 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      v29 = type;
      v30 = os_log_type_enabled(v25, type);
      if (!v28)
      {
        if (v30)
        {
          if (mode > 5)
          {
            v34 = "unknown-mode";
          }

          else
          {
            v34 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v50 = "nw_endpoint_handler_set_protocol_instance";
          v51 = 2082;
          v52 = v34;
          v53 = 2082;
          v54 = "flow";
          _os_log_impl(&dword_181A37000, v25, v29, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }

        goto LABEL_40;
      }

      if (v30)
      {
        if (mode > 5)
        {
          v31 = "unknown-mode";
        }

        else
        {
          v31 = off_1E6A31018[mode];
        }

        *buf = 136446978;
        v50 = "nw_endpoint_handler_set_protocol_instance";
        v51 = 2082;
        v52 = v31;
        v53 = 2082;
        v54 = "flow";
        v55 = 2082;
        v56 = v28;
        _os_log_impl(&dword_181A37000, v25, v29, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v28);
      if (v24)
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

LABEL_41:
    if (!v24)
    {
      goto LABEL_43;
    }

LABEL_42:
    free(v24);
    goto LABEL_43;
  }

  if (v8)
  {
    v12 = nw_endpoint_handler_copy_flow(v10);
    v13 = v12;
    v14 = *(v12 + 488);
    if (v14 != 0xFFFF)
    {
      *(v12 + 488) = v14 + 1;
    }

    v15 = v10;

    v16 = *(v13 + 488);
    v17 = v8;
    v18 = v17;
    if (v15->id_str[0])
    {
      _nw_protocol_options_set_log_id(v17, 67, v15->id_str, v16);
    }

    v19 = v15;
    top_id = v19->top_id;

    _nw_protocol_options_set_top_id(v18, top_id);
    v21 = v18;
    _nw_protocol_options_set_instance(v21, a4);

    goto LABEL_43;
  }

  v37 = __nwlog_obj();
  *buf = 136446210;
  v50 = "nw_endpoint_handler_set_protocol_instance";
  v24 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v47 = 0;
  if (!__nwlog_fault(v24, &type, &v47))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v25 = __nwlog_obj();
    v38 = type;
    if (os_log_type_enabled(v25, type))
    {
      *buf = 136446210;
      v50 = "nw_endpoint_handler_set_protocol_instance";
      _os_log_impl(&dword_181A37000, v25, v38, "%{public}s called with null protocol_parameters", buf, 0xCu);
    }

LABEL_40:

    goto LABEL_41;
  }

  if (v47 != 1)
  {
    v25 = __nwlog_obj();
    v46 = type;
    if (os_log_type_enabled(v25, type))
    {
      *buf = 136446210;
      v50 = "nw_endpoint_handler_set_protocol_instance";
      _os_log_impl(&dword_181A37000, v25, v46, "%{public}s called with null protocol_parameters, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_40;
  }

  v43 = __nw_create_backtrace_string();
  v25 = __nwlog_obj();
  v44 = type;
  v45 = os_log_type_enabled(v25, type);
  if (!v43)
  {
    if (v45)
    {
      *buf = 136446210;
      v50 = "nw_endpoint_handler_set_protocol_instance";
      _os_log_impl(&dword_181A37000, v25, v44, "%{public}s called with null protocol_parameters, no backtrace", buf, 0xCu);
    }

    goto LABEL_40;
  }

  if (v45)
  {
    *buf = 136446466;
    v50 = "nw_endpoint_handler_set_protocol_instance";
    v51 = 2082;
    v52 = v43;
    _os_log_impl(&dword_181A37000, v25, v44, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v43);
  if (v24)
  {
    goto LABEL_42;
  }

LABEL_43:
}

uint64_t nw_parameters_copy_protocol_value_from_parameters(void *a1, const char *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = _nw_protocol_options_copy_legacy_parameters(v3);
    v6 = v5;
    if (v5 && object_getClass(v5) == MEMORY[0x1E69E9E80])
    {
      v7 = xpc_dictionary_get_value(v6, a2);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_7;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_parameters_copy_protocol_value_from_parameters";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v10, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_copy_protocol_value_from_parameters";
        v13 = "%{public}s called with null protocol_parameters";
LABEL_21:
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
            v19 = "nw_parameters_copy_protocol_value_from_parameters";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (!v15)
        {
          goto LABEL_22;
        }

        *buf = 136446210;
        v19 = "nw_parameters_copy_protocol_value_from_parameters";
        v13 = "%{public}s called with null protocol_parameters, no backtrace";
        goto LABEL_21;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v19 = "nw_parameters_copy_protocol_value_from_parameters";
        v13 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_22:
  }

LABEL_23:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_7:

  return v7;
}

void *nw_protocol_new_objc(Class cls, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!cls)
  {
    __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_protocol_new_objc";
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v19, &type, &v35))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v38 = "nw_protocol_new_objc";
      v22 = "%{public}s called with null cls";
    }

    else if (v35 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v28 = os_log_type_enabled(v20, type);
      if (backtrace_string)
      {
        if (v28)
        {
          *buf = 136446466;
          v38 = "nw_protocol_new_objc";
          v39 = 2082;
          v40 = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null cls, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_71:
        if (v19)
        {
          goto LABEL_72;
        }

        return 0;
      }

      if (!v28)
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v38 = "nw_protocol_new_objc";
      v22 = "%{public}s called with null cls, no backtrace";
    }

    else
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v38 = "nw_protocol_new_objc";
      v22 = "%{public}s called with null cls, backtrace limit exceeded";
    }

    goto LABEL_70;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_protocol_new_objc";
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v19, &type, &v35))
    {
      goto LABEL_71;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v35 != 1)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (!os_log_type_enabled(v20, type))
        {
          goto LABEL_71;
        }

        *buf = 136446210;
        v38 = "nw_protocol_new_objc";
        v22 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_70;
      }

      v29 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v30 = os_log_type_enabled(v20, type);
      if (!v29)
      {
        if (!v30)
        {
          goto LABEL_71;
        }

        *buf = 136446210;
        v38 = "nw_protocol_new_objc";
        v22 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_70;
      }

      if (v30)
      {
        *buf = 136446466;
        v38 = "nw_protocol_new_objc";
        v39 = 2082;
        v40 = v29;
        v31 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
LABEL_48:
        _os_log_impl(&dword_181A37000, v20, v21, v31, buf, 0x16u);
      }

LABEL_49:
      free(v29);
      if (v19)
      {
LABEL_72:
        free(v19);
        return 0;
      }

      return 0;
    }

    v20 = __nwlog_obj();
    v21 = type;
    if (!os_log_type_enabled(v20, type))
    {
      goto LABEL_71;
    }

    *buf = 136446210;
    v38 = "nw_protocol_new_objc";
    v22 = "%{public}s called with null parameters";
LABEL_70:
    _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
    goto LABEL_71;
  }

  {
    nw_protocol_new_objc::_objc_initiateDealloc = sel_registerName("_objc_initiateDealloc");
  }

  if (!class_getInstanceMethod(cls, nw_protocol_new_objc::_objc_initiateDealloc))
  {
    _class_setCustomDeallocInitiation();
    class_addMethod(cls, nw_protocol_new_objc::_objc_initiateDealloc, nw_protocol_new_objc::$_0::__invoke, 0);
  }

  InstanceSize = class_getInstanceSize(cls);
  v9 = nw_protocol_new(InstanceSize, a2, a3, a4);
  if (!v9)
  {
    __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_protocol_new_objc";
    v19 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v19, &type, &v35))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v38 = "nw_protocol_new_objc";
      v22 = "%{public}s called with null space";
      goto LABEL_70;
    }

    if (v35 != 1)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (!os_log_type_enabled(v20, type))
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v38 = "nw_protocol_new_objc";
      v22 = "%{public}s called with null space, backtrace limit exceeded";
      goto LABEL_70;
    }

    v29 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type;
    v32 = os_log_type_enabled(v20, type);
    if (!v29)
    {
      if (!v32)
      {
        goto LABEL_71;
      }

      *buf = 136446210;
      v38 = "nw_protocol_new_objc";
      v22 = "%{public}s called with null space, no backtrace";
      goto LABEL_70;
    }

    if (v32)
    {
      *buf = 136446466;
      v38 = "nw_protocol_new_objc";
      v39 = 2082;
      v40 = v29;
      v31 = "%{public}s called with null space, dumping backtrace:%{public}s";
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  v10 = v9;
  v11 = objc_constructInstance(cls, v9);
  if (!v11)
  {
    __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_protocol_new_objc";
    v23 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v23, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v38 = "nw_protocol_new_objc";
          v26 = "%{public}s called with null obj";
LABEL_75:
          _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
        }
      }

      else if (v35 == 1)
      {
        v33 = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v25 = type;
        v34 = os_log_type_enabled(v24, type);
        if (v33)
        {
          if (v34)
          {
            *buf = 136446466;
            v38 = "nw_protocol_new_objc";
            v39 = 2082;
            v40 = v33;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null obj, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v33);
          goto LABEL_76;
        }

        if (v34)
        {
          *buf = 136446210;
          v38 = "nw_protocol_new_objc";
          v26 = "%{public}s called with null obj, no backtrace";
          goto LABEL_75;
        }
      }

      else
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v38 = "nw_protocol_new_objc";
          v26 = "%{public}s called with null obj, backtrace limit exceeded";
          goto LABEL_75;
        }
      }
    }

LABEL_76:
    if (v23)
    {
      free(v23);
    }

    nw_protocol_destroy(v10, 0);
    return 0;
  }

  v12 = v11;
  v13 = *(v10 - 56);
  if (v13 != &nw_protocol_ref_counted_handle)
  {
    if (v13 != &nw_protocol_ref_counted_additional_handle)
    {
      goto LABEL_13;
    }

    v14 = *(v10 - 32);
    if (!v14)
    {
      goto LABEL_13;
    }

    v15 = *(v14 + 88);
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = v10 - 96;
  v15 = *(v10 - 8);
  if (v15)
  {
LABEL_12:
    *(v14 + 88) = v15 + 1;
  }

LABEL_13:
  {
    nw_protocol_new_objc::init = sel_registerName("init");
  }

  v16 = nw_protocol_new_objc::init;
  Class = object_getClass(v12);
  if (class_getInstanceMethod(Class, v16))
  {
    [v12 v16];
  }

  return v12;
}

uint64_t _nw_protocol_options_set_log_id_0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  v6 = sub_182AD3158();
  v8 = v7;
  v9 = a1 + *(*a1 + 160);

  swift_beginAccess();
  *v9 = a4;
  *(v9 + 8) = 0;
  MEMORY[0x1865D9CA0](91, 0xE100000000000000);
  sub_182AD4648();
  MEMORY[0x1865D9CA0](v6, v8);

  MEMORY[0x1865D9CA0](58, 0xE100000000000000);
  v10 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v10);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);
  v11 = (a1 + *(*a1 + 168));
  swift_beginAccess();
  *v11 = 0;
  v11[1] = 0xE000000000000000;
}

uint64_t _nw_protocol_options_set_top_id(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v3 = a1 + *(*a1 + 152);

  swift_beginAccess();
  *v3 = v2;
  *(v3 + 8) = 0;
}

uint64_t _nw_protocol_options_set_instance(uint64_t a1, uint64_t a2)
{

  v5 = 0x1000000000000000;
  v6 = *(v4 + 48);
  v7 = *(a1 + 56);
  if (!a2)
  {
    v5 = 0x1000000000000007;
  }

  *(a1 + 48) = a2;
  *(a1 + 56) = v5;
  sub_181AAD250(v6, v7);
}

uint64_t nw_protocol_add_input_handler(void *a1, uint64_t a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    v3 = a1;
    v4 = a1[5];
    v5 = a1;
    if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = a1[8]) != 0)
    {
      v11 = v5[11];
      if (v11)
      {
        v6 = 0;
        v5[11] = v11 + 1;
        if (!a2)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v6 = 0;
        if (!a2)
        {
LABEL_12:
          __nwlog_obj();
          *buf = 136446210;
          v53 = "__nw_protocol_add_input_handler";
          v12 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v50 = 0;
          if (__nwlog_fault(v12, &type, &v50))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v13 = __nwlog_obj();
              v14 = type;
              if (os_log_type_enabled(v13, type))
              {
                *buf = 136446210;
                v53 = "__nw_protocol_add_input_handler";
                v15 = "%{public}s called with null input_protocol";
LABEL_103:
                _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
              }
            }

            else if (v50 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              v13 = __nwlog_obj();
              v14 = type;
              v47 = os_log_type_enabled(v13, type);
              if (backtrace_string)
              {
                if (v47)
                {
                  *buf = 136446466;
                  v53 = "__nw_protocol_add_input_handler";
                  v54 = 2082;
                  v55 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                goto LABEL_104;
              }

              if (v47)
              {
                *buf = 136446210;
                v53 = "__nw_protocol_add_input_handler";
                v15 = "%{public}s called with null input_protocol, no backtrace";
                goto LABEL_103;
              }
            }

            else
            {
              v13 = __nwlog_obj();
              v14 = type;
              if (os_log_type_enabled(v13, type))
              {
                *buf = 136446210;
                v53 = "__nw_protocol_add_input_handler";
                v15 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                goto LABEL_103;
              }
            }
          }

LABEL_104:
          if (v12)
          {
            free(v12);
          }

          result = 0;
          goto LABEL_36;
        }
      }
    }

    else
    {
      v6 = 1;
      if (!a2)
      {
        goto LABEL_12;
      }
    }

    v7 = *(a2 + 40);
    v8 = a2;
    if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(a2 + 64)) != 0)
    {
      v16 = *(v8 + 88);
      if (v16)
      {
        v9 = 0;
        *(v8 + 88) = v16 + 1;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v9 = 0;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v9 = 1;
      v10 = a1[3];
      if (!v10)
      {
        goto LABEL_49;
      }
    }

    v17 = *v10;
    if (v17)
    {
      result = v17(a1, a2);
      if (v9)
      {
LABEL_36:
        if ((v6 & 1) == 0)
        {
          v25 = v3[5];
          if (v25 == &nw_protocol_ref_counted_handle || v25 == &nw_protocol_ref_counted_additional_handle && (v3 = v3[8]) != 0)
          {
            v26 = v3[11];
            if (v26)
            {
              v27 = v26 - 1;
              v3[11] = v27;
              if (!v27)
              {
                v28 = result;
                v29 = v3[8];
                if (v29)
                {
                  v3[8] = 0;
                  v29[2](v29);
                  _Block_release(v29);
                }

                if (v3[9])
                {
                  v30 = v3[8];
                  if (v30)
                  {
                    _Block_release(v30);
                  }
                }

                free(v3);
                return v28;
              }
            }
          }
        }

        return result;
      }

LABEL_25:
      v19 = *(v2 + 40);
      if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
      {
        v20 = *(v2 + 88);
        if (v20)
        {
          v21 = v20 - 1;
          *(v2 + 88) = v21;
          if (!v21)
          {
            v22 = result;
            v23 = *(v2 + 64);
            if (v23)
            {
              *(v2 + 64) = 0;
              v23[2](v23);
              _Block_release(v23);
            }

            if (*(v2 + 72))
            {
              v24 = *(v2 + 64);
              if (v24)
              {
                _Block_release(v24);
              }
            }

            free(v2);
            result = v22;
          }
        }
      }

      goto LABEL_36;
    }

LABEL_49:
    __nwlog_obj();
    v31 = v3[2];
    *buf = 136446722;
    v53 = "__nw_protocol_add_input_handler";
    if (!v31)
    {
      v31 = "invalid";
    }

    v54 = 2082;
    v55 = v31;
    v56 = 2048;
    v57 = v3;
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v32, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (!os_log_type_enabled(v33, type))
        {
          goto LABEL_91;
        }

        v35 = v3[2];
        if (!v35)
        {
          v35 = "invalid";
        }

        *buf = 136446722;
        v53 = "__nw_protocol_add_input_handler";
        v54 = 2082;
        v55 = v35;
        v56 = 2048;
        v57 = v3;
        v36 = "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback";
LABEL_90:
        _os_log_impl(&dword_181A37000, v33, v34, v36, buf, 0x20u);
        goto LABEL_91;
      }

      if (v50 != 1)
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (!os_log_type_enabled(v33, type))
        {
          goto LABEL_91;
        }

        v48 = v3[2];
        if (!v48)
        {
          v48 = "invalid";
        }

        *buf = 136446722;
        v53 = "__nw_protocol_add_input_handler";
        v54 = 2082;
        v55 = v48;
        v56 = 2048;
        v57 = v3;
        v36 = "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, backtrace limit exceeded";
        goto LABEL_90;
      }

      v41 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v34 = type;
      v42 = os_log_type_enabled(v33, type);
      if (!v41)
      {
        if (!v42)
        {
          goto LABEL_91;
        }

        v49 = v3[2];
        if (!v49)
        {
          v49 = "invalid";
        }

        *buf = 136446722;
        v53 = "__nw_protocol_add_input_handler";
        v54 = 2082;
        v55 = v49;
        v56 = 2048;
        v57 = v3;
        v36 = "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, no backtrace";
        goto LABEL_90;
      }

      if (v42)
      {
        v43 = v3[2];
        if (!v43)
        {
          v43 = "invalid";
        }

        *buf = 136446978;
        v53 = "__nw_protocol_add_input_handler";
        v54 = 2082;
        v55 = v43;
        v56 = 2048;
        v57 = v3;
        v58 = 2082;
        v59 = v41;
        _os_log_impl(&dword_181A37000, v33, v34, "%{public}s protocol %{public}s (%p) has invalid add_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v41);
    }

LABEL_91:
    if (v32)
    {
      free(v32);
    }

    result = 0;
    if (v9)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  __nwlog_obj();
  *buf = 136446210;
  v53 = "__nw_protocol_add_input_handler";
  v37 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v50 = 0;
  if (__nwlog_fault(v37, &type, &v50))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v53 = "__nw_protocol_add_input_handler";
        v40 = "%{public}s called with null protocol";
LABEL_97:
        _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
      }
    }

    else if (v50 == 1)
    {
      v44 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type;
      v45 = os_log_type_enabled(v38, type);
      if (v44)
      {
        if (v45)
        {
          *buf = 136446466;
          v53 = "__nw_protocol_add_input_handler";
          v54 = 2082;
          v55 = v44;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v44);
        goto LABEL_98;
      }

      if (v45)
      {
        *buf = 136446210;
        v53 = "__nw_protocol_add_input_handler";
        v40 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_97;
      }
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v53 = "__nw_protocol_add_input_handler";
        v40 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_97;
      }
    }
  }

LABEL_98:
  if (v37)
  {
    free(v37);
  }

  return 0;
}

uint64_t nw_protocol_definition_get_message_is_stream(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[192] >> 2) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_message_is_stream";
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
        v15 = "nw_protocol_definition_get_message_is_stream";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
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
          v15 = "nw_protocol_definition_get_message_is_stream";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_message_is_stream";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_message_is_stream";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_protocol_option_is_equal(void *a1, void *a2, unsigned int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5 == v6)
  {
    is_equal = 1;
  }

  else
  {
    is_equal = 0;
    if (v5 && v6)
    {
      is_equal = _nw_protocol_option_is_equal(v5, v6, a3);
    }
  }

  return is_equal;
}

uint64_t sub_181BB3914(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_181AA847C(a1);
  v6 = v5;
  v7 = sub_181AA847C(a2);
  v9 = v8;
  if (a3 >= 5)
  {
    LOBYTE(a3) = 0;
  }

  ObjectType = swift_getObjectType();
  v13 = a3;
  v11 = (*(v6 + 24))(v7, v9, &v13, ObjectType, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v11 & 1;
}

uint64_t _nw_endpoint_copy_address_string_0(void *a1)
{
  v1 = a1;
  sub_181BB5974();
  if (!v2)
  {

    return 0;
  }

  v3 = sub_182AD30F8();
  v4 = __OFADD__(v3, 1);
  result = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_slowAlloc();
    result = sub_182AD30F8();
    v7 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v8 = sub_182AD3048();

      memcpy(v6, (v8 + 32), v7);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_default_get_local(nw_protocol *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_default_get_local";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_get_local";
      v8 = "%{public}s called with null protocol";
      goto LABEL_35;
    }

    if (v13 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_get_local";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v10 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (!v10)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_get_local";
      v8 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_35;
    }

    if (v10)
    {
      *buf = 136446466;
      v16 = "nw_protocol_default_get_local";
      v17 = 2082;
      v18 = backtrace_string;
      _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_36:
    if (!v5)
    {
      return 0;
    }

LABEL_37:
    free(v5);
    return 0;
  }

  default_input_handler = a1->default_input_handler;
  if (!default_input_handler)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_default_get_local";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_get_local";
      v8 = "%{public}s called with null protocol->default_input_handler";
      goto LABEL_35;
    }

    if (v13 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_get_local";
      v8 = "%{public}s called with null protocol->default_input_handler, backtrace limit exceeded";
      goto LABEL_35;
    }

    v11 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v12 = os_log_type_enabled(v6, type);
    if (v11)
    {
      if (v12)
      {
        *buf = 136446466;
        v16 = "nw_protocol_default_get_local";
        v17 = 2082;
        v18 = v11;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol->default_input_handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v11);
      if (!v5)
      {
        return 0;
      }

      goto LABEL_37;
    }

    if (v12)
    {
      *buf = 136446210;
      v16 = "nw_protocol_default_get_local";
      v8 = "%{public}s called with null protocol->default_input_handler, no backtrace";
LABEL_35:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  callbacks = default_input_handler->callbacks;
  if (!callbacks)
  {
    return 0;
  }

  get_local_endpoint = callbacks->get_local_endpoint;
  if (!get_local_endpoint)
  {
    return 0;
  }

  return get_local_endpoint();
}

uint64_t nw_protocol_get_remote_endpoint(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = a1[5];
    v3 = a1;
    if (v2 == &nw_protocol_ref_counted_handle || v2 == &nw_protocol_ref_counted_additional_handle && (v3 = a1[8]) != 0)
    {
      v6 = v3[11];
      if (v6)
      {
        v4 = 0;
        v3[11] = v6 + 1;
        v5 = a1[3];
        if (!v5)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v4 = 0;
        v5 = a1[3];
        if (!v5)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v4 = 1;
      v5 = a1[3];
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    v7 = *(v5 + 136);
    if (v7)
    {
      result = v7(a1);
      if (v4)
      {
        return result;
      }

      goto LABEL_13;
    }

LABEL_25:
    __nwlog_obj();
    v15 = v1[2];
    *buf = 136446722;
    v35 = "__nw_protocol_get_remote_endpoint";
    if (!v15)
    {
      v15 = "invalid";
    }

    v36 = 2082;
    v37 = v15;
    v38 = 2048;
    v39 = v1;
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v16, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_60;
        }

        v19 = v1[2];
        if (!v19)
        {
          v19 = "invalid";
        }

        *buf = 136446722;
        v35 = "__nw_protocol_get_remote_endpoint";
        v36 = 2082;
        v37 = v19;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback";
LABEL_59:
        _os_log_impl(&dword_181A37000, v17, v18, v20, buf, 0x20u);
        goto LABEL_60;
      }

      if (v32 != 1)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_60;
        }

        v30 = v1[2];
        if (!v30)
        {
          v30 = "invalid";
        }

        *buf = 136446722;
        v35 = "__nw_protocol_get_remote_endpoint";
        v36 = 2082;
        v37 = v30;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, backtrace limit exceeded";
        goto LABEL_59;
      }

      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v26 = os_log_type_enabled(v17, type);
      if (!backtrace_string)
      {
        if (!v26)
        {
          goto LABEL_60;
        }

        v31 = v1[2];
        if (!v31)
        {
          v31 = "invalid";
        }

        *buf = 136446722;
        v35 = "__nw_protocol_get_remote_endpoint";
        v36 = 2082;
        v37 = v31;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, no backtrace";
        goto LABEL_59;
      }

      if (v26)
      {
        v27 = v1[2];
        if (!v27)
        {
          v27 = "invalid";
        }

        *buf = 136446978;
        v35 = "__nw_protocol_get_remote_endpoint";
        v36 = 2082;
        v37 = v27;
        v38 = 2048;
        v39 = v1;
        v40 = 2082;
        v41 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s protocol %{public}s (%p) has invalid get_remote_endpoint callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(backtrace_string);
    }

LABEL_60:
    if (v16)
    {
      free(v16);
    }

    result = 0;
    if (v4)
    {
      return result;
    }

LABEL_13:
    v9 = v1[5];
    if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
    {
      v10 = v1[11];
      if (v10)
      {
        v11 = v10 - 1;
        v1[11] = v11;
        if (!v11)
        {
          v12 = result;
          v13 = v1[8];
          if (v13)
          {
            v1[8] = 0;
            v13[2](v13);
            _Block_release(v13);
          }

          if (v1[9])
          {
            v14 = v1[8];
            if (v14)
            {
              _Block_release(v14);
            }
          }

          free(v1);
          return v12;
        }
      }
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v35 = "__nw_protocol_get_remote_endpoint";
  v21 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v21, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v35 = "__nw_protocol_get_remote_endpoint";
        v24 = "%{public}s called with null protocol";
LABEL_66:
        _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      v28 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v29 = os_log_type_enabled(v22, type);
      if (v28)
      {
        if (v29)
        {
          *buf = 136446466;
          v35 = "__nw_protocol_get_remote_endpoint";
          v36 = 2082;
          v37 = v28;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v28);
        goto LABEL_67;
      }

      if (v29)
      {
        *buf = 136446210;
        v35 = "__nw_protocol_get_remote_endpoint";
        v24 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_66;
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v35 = "__nw_protocol_get_remote_endpoint";
        v24 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_66;
      }
    }
  }

LABEL_67:
  if (v21)
  {
    free(v21);
  }

  return 0;
}

uint64_t nw_protocol_default_get_remote(nw_protocol *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_default_get_remote";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_get_remote";
      v8 = "%{public}s called with null protocol";
      goto LABEL_35;
    }

    if (v13 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_get_remote";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v10 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (!v10)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_get_remote";
      v8 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_35;
    }

    if (v10)
    {
      *buf = 136446466;
      v16 = "nw_protocol_default_get_remote";
      v17 = 2082;
      v18 = backtrace_string;
      _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_36:
    if (!v5)
    {
      return 0;
    }

LABEL_37:
    free(v5);
    return 0;
  }

  default_input_handler = a1->default_input_handler;
  if (!default_input_handler)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_default_get_remote";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_get_remote";
      v8 = "%{public}s called with null protocol->default_input_handler";
      goto LABEL_35;
    }

    if (v13 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_get_remote";
      v8 = "%{public}s called with null protocol->default_input_handler, backtrace limit exceeded";
      goto LABEL_35;
    }

    v11 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v12 = os_log_type_enabled(v6, type);
    if (v11)
    {
      if (v12)
      {
        *buf = 136446466;
        v16 = "nw_protocol_default_get_remote";
        v17 = 2082;
        v18 = v11;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol->default_input_handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v11);
      if (!v5)
      {
        return 0;
      }

      goto LABEL_37;
    }

    if (v12)
    {
      *buf = 136446210;
      v16 = "nw_protocol_default_get_remote";
      v8 = "%{public}s called with null protocol->default_input_handler, no backtrace";
LABEL_35:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  callbacks = default_input_handler->callbacks;
  if (!callbacks)
  {
    return 0;
  }

  get_remote_endpoint = callbacks->get_remote_endpoint;
  if (!get_remote_endpoint)
  {
    return 0;
  }

  return get_remote_endpoint();
}

uint64_t nw_protocol_get_parameters(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = a1[5];
    v3 = a1;
    if (v2 == &nw_protocol_ref_counted_handle || v2 == &nw_protocol_ref_counted_additional_handle && (v3 = a1[8]) != 0)
    {
      v6 = v3[11];
      if (v6)
      {
        v4 = 0;
        v3[11] = v6 + 1;
        v5 = a1[3];
        if (!v5)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v4 = 0;
        v5 = a1[3];
        if (!v5)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v4 = 1;
      v5 = a1[3];
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    v7 = *(v5 + 112);
    if (v7)
    {
      result = v7(a1);
      if (v4)
      {
        return result;
      }

      goto LABEL_13;
    }

LABEL_25:
    __nwlog_obj();
    v15 = v1[2];
    *buf = 136446722;
    v35 = "__nw_protocol_get_parameters";
    if (!v15)
    {
      v15 = "invalid";
    }

    v36 = 2082;
    v37 = v15;
    v38 = 2048;
    v39 = v1;
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v16, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_60;
        }

        v19 = v1[2];
        if (!v19)
        {
          v19 = "invalid";
        }

        *buf = 136446722;
        v35 = "__nw_protocol_get_parameters";
        v36 = 2082;
        v37 = v19;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback";
LABEL_59:
        _os_log_impl(&dword_181A37000, v17, v18, v20, buf, 0x20u);
        goto LABEL_60;
      }

      if (v32 != 1)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_60;
        }

        v30 = v1[2];
        if (!v30)
        {
          v30 = "invalid";
        }

        *buf = 136446722;
        v35 = "__nw_protocol_get_parameters";
        v36 = 2082;
        v37 = v30;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, backtrace limit exceeded";
        goto LABEL_59;
      }

      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v26 = os_log_type_enabled(v17, type);
      if (!backtrace_string)
      {
        if (!v26)
        {
          goto LABEL_60;
        }

        v31 = v1[2];
        if (!v31)
        {
          v31 = "invalid";
        }

        *buf = 136446722;
        v35 = "__nw_protocol_get_parameters";
        v36 = 2082;
        v37 = v31;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, no backtrace";
        goto LABEL_59;
      }

      if (v26)
      {
        v27 = v1[2];
        if (!v27)
        {
          v27 = "invalid";
        }

        *buf = 136446978;
        v35 = "__nw_protocol_get_parameters";
        v36 = 2082;
        v37 = v27;
        v38 = 2048;
        v39 = v1;
        v40 = 2082;
        v41 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s protocol %{public}s (%p) has invalid get_parameters callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(backtrace_string);
    }

LABEL_60:
    if (v16)
    {
      free(v16);
    }

    result = 0;
    if (v4)
    {
      return result;
    }

LABEL_13:
    v9 = v1[5];
    if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
    {
      v10 = v1[11];
      if (v10)
      {
        v11 = v10 - 1;
        v1[11] = v11;
        if (!v11)
        {
          v12 = result;
          v13 = v1[8];
          if (v13)
          {
            v1[8] = 0;
            v13[2](v13);
            _Block_release(v13);
          }

          if (v1[9])
          {
            v14 = v1[8];
            if (v14)
            {
              _Block_release(v14);
            }
          }

          free(v1);
          return v12;
        }
      }
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v35 = "__nw_protocol_get_parameters";
  v21 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v21, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v35 = "__nw_protocol_get_parameters";
        v24 = "%{public}s called with null protocol";
LABEL_66:
        _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      v28 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v29 = os_log_type_enabled(v22, type);
      if (v28)
      {
        if (v29)
        {
          *buf = 136446466;
          v35 = "__nw_protocol_get_parameters";
          v36 = 2082;
          v37 = v28;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v28);
        goto LABEL_67;
      }

      if (v29)
      {
        *buf = 136446210;
        v35 = "__nw_protocol_get_parameters";
        v24 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_66;
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v35 = "__nw_protocol_get_parameters";
        v24 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_66;
      }
    }
  }

LABEL_67:
  if (v21)
  {
    free(v21);
  }

  return 0;
}

uint64_t nw_protocol_supports_external_data(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = a1[5];
    v3 = a1;
    if (v2 == &nw_protocol_ref_counted_handle || v2 == &nw_protocol_ref_counted_additional_handle && (v3 = a1[8]) != 0)
    {
      v6 = v3[11];
      if (v6)
      {
        v4 = 0;
        v3[11] = v6 + 1;
        v5 = a1[3];
        if (!v5)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v4 = 0;
        v5 = a1[3];
        if (!v5)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v4 = 1;
      v5 = a1[3];
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    v7 = *(v5 + 176);
    if (v7)
    {
      result = v7(a1);
      if (v4)
      {
        return result;
      }

      goto LABEL_13;
    }

LABEL_25:
    __nwlog_obj();
    v15 = v1[2];
    *buf = 136446722;
    v35 = "__nw_protocol_supports_external_data";
    if (!v15)
    {
      v15 = "invalid";
    }

    v36 = 2082;
    v37 = v15;
    v38 = 2048;
    v39 = v1;
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v16, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_60;
        }

        v19 = v1[2];
        if (!v19)
        {
          v19 = "invalid";
        }

        *buf = 136446722;
        v35 = "__nw_protocol_supports_external_data";
        v36 = 2082;
        v37 = v19;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid supports_external_data callback";
LABEL_59:
        _os_log_impl(&dword_181A37000, v17, v18, v20, buf, 0x20u);
        goto LABEL_60;
      }

      if (v32 != 1)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_60;
        }

        v30 = v1[2];
        if (!v30)
        {
          v30 = "invalid";
        }

        *buf = 136446722;
        v35 = "__nw_protocol_supports_external_data";
        v36 = 2082;
        v37 = v30;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid supports_external_data callback, backtrace limit exceeded";
        goto LABEL_59;
      }

      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v26 = os_log_type_enabled(v17, type);
      if (!backtrace_string)
      {
        if (!v26)
        {
          goto LABEL_60;
        }

        v31 = v1[2];
        if (!v31)
        {
          v31 = "invalid";
        }

        *buf = 136446722;
        v35 = "__nw_protocol_supports_external_data";
        v36 = 2082;
        v37 = v31;
        v38 = 2048;
        v39 = v1;
        v20 = "%{public}s protocol %{public}s (%p) has invalid supports_external_data callback, no backtrace";
        goto LABEL_59;
      }

      if (v26)
      {
        v27 = v1[2];
        if (!v27)
        {
          v27 = "invalid";
        }

        *buf = 136446978;
        v35 = "__nw_protocol_supports_external_data";
        v36 = 2082;
        v37 = v27;
        v38 = 2048;
        v39 = v1;
        v40 = 2082;
        v41 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s protocol %{public}s (%p) has invalid supports_external_data callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(backtrace_string);
    }

LABEL_60:
    if (v16)
    {
      free(v16);
    }

    result = 0;
    if (v4)
    {
      return result;
    }

LABEL_13:
    v9 = v1[5];
    if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v1 = v1[8]) != 0)
    {
      v10 = v1[11];
      if (v10)
      {
        v11 = v10 - 1;
        v1[11] = v11;
        if (!v11)
        {
          v12 = result;
          v13 = v1[8];
          if (v13)
          {
            v1[8] = 0;
            v13[2](v13);
            _Block_release(v13);
          }

          if (v1[9])
          {
            v14 = v1[8];
            if (v14)
            {
              _Block_release(v14);
            }
          }

          free(v1);
          return v12;
        }
      }
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v35 = "__nw_protocol_supports_external_data";
  v21 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v21, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v35 = "__nw_protocol_supports_external_data";
        v24 = "%{public}s called with null protocol";
LABEL_66:
        _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      v28 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v29 = os_log_type_enabled(v22, type);
      if (v28)
      {
        if (v29)
        {
          *buf = 136446466;
          v35 = "__nw_protocol_supports_external_data";
          v36 = 2082;
          v37 = v28;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v28);
        goto LABEL_67;
      }

      if (v29)
      {
        *buf = 136446210;
        v35 = "__nw_protocol_supports_external_data";
        v24 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_66;
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v35 = "__nw_protocol_supports_external_data";
        v24 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_66;
      }
    }
  }

LABEL_67:
  if (v21)
  {
    free(v21);
  }

  return 0;
}

uint64_t nw_path_get_effective_traffic_class(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    effective_traffic_class = _nw_path_get_effective_traffic_class(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_get_effective_traffic_class";
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
        v16 = "nw_path_get_effective_traffic_class";
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
          v16 = "nw_path_get_effective_traffic_class";
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
        v16 = "nw_path_get_effective_traffic_class";
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
        v16 = "nw_path_get_effective_traffic_class";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  effective_traffic_class = 0;
LABEL_3:

  return effective_traffic_class;
}

char *__cdecl nw_endpoint_copy_address_string(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_copy_address_string(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_copy_address_string";
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
        v16 = "nw_endpoint_copy_address_string";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null any_endpoint", buf, 0xCu);
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
          v16 = "nw_endpoint_copy_address_string";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null any_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_copy_address_string";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null any_endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_copy_address_string";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null any_endpoint, backtrace limit exceeded", buf, 0xCu);
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

unint64_t sub_181BB5974()
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v0 + v4, v3, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_181A5513C(v3, type metadata accessor for Endpoint.EndpointType);
  }

  else
  {
    v6 = *(v3 + 2);
    v28 = *(v3 + 1);
    *v29 = v6;
    v27 = *v3;
    *&v29[6] = *(v3 + 44);
    if (BYTE10(v6) <= 1u)
    {
      if (BYTE10(v6))
      {
        v13 = *(v3 + 1);
        v21 = *v3;
        v22 = v13;
        v23[0] = *(v3 + 2);
        *(v23 + 12) = *(v3 + 44);
        result = sub_181C1EE60();
        if ((v16 & 0x100000000) != 0)
        {
          __break(1u);
          return result;
        }

        v17 = result;
        *&v24.sa_len = result;
        *&v24.sa_data[6] = v14;
        v25 = v15;
        v26 = v16;
        v18 = swift_slowAlloc();
        if (!getnameinfo(&v24, v17, v18, 0x64u, 0, 0, 2))
        {
          v20 = sub_182AD3158();
          MEMORY[0x1865DF520](v18, -1, -1);
          sub_181AA57B4(&v27);
          return v20;
        }

        v11 = v18;
      }

      else
      {
        *&v21.sa_len = 528;
        *v21.sa_data = bswap32(v29[0]) >> 16;
        *&v21.sa_data[2] = v28;
        *&v21.sa_data[6] = 0;
        v10 = swift_slowAlloc();
        if (!getnameinfo(&v21, 0x10u, v10, 0x64u, 0, 0, 2))
        {
          v19 = sub_182AD3158();
          MEMORY[0x1865DF520](v10, -1, -1);
          sub_181AA57B4(&v27);
          return v19;
        }

        v11 = v10;
      }

      MEMORY[0x1865DF520](v11, -1, -1);
      sub_181AA57B4(&v27);
      return 63;
    }

    if (BYTE10(v6) == 2)
    {
      v12 = v28;

      sub_181AA57B4(&v27);
      return v12;
    }

    if (BYTE10(v6) == 3)
    {
      v7 = DWORD1(v28);
      *&v21.sa_len = 1027885379;
      *&v21.sa_data[6] = 0xE400000000000000;
      *&v24.sa_len = DWORD2(v28);
      v8 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v8);

      MEMORY[0x1865D9CA0](0x3D54524F50202CLL, 0xE700000000000000);
      *&v24.sa_len = v7;
      v9 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v9);

      sub_181AA57B4(&v27);
      return *&v21.sa_len;
    }

    sub_181AA57B4(&v27);
  }

  return 0;
}

uint64_t sub_181BB5D08(unint64_t *a1)
{
  if (uuid_is_null(a1) == 1)
  {
    v3 = sub_181ADC1F8();
    v5 = v4;
  }

  else
  {
    v3 = *a1;
    v5 = a1[1];
  }

  v14[0] = *v1;
  *(v14 + 9) = *(v1 + 9);
  type metadata accessor for SystemLock._Storage();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AA80);
  v7 = swift_allocObject();
  *(v7 + 57) = 0;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0;
  *(v7 + 64) = 0u;
  *(v7 + 16) = *v1;
  *(v7 + 25) = *(v1 + 9);
  *(v7 + 41) = v3;
  *(v7 + 49) = v5;
  swift_beginAccess();
  v8 = *(v7 + 80);
  v9 = *(v7 + 112);
  v12[2] = *(v7 + 96);
  v12[3] = v9;
  v13 = *(v7 + 128);
  v12[0] = *(v7 + 64);
  v12[1] = v8;
  sub_181BBBFDC(v14, v11);
  *(v7 + 64) = v6;
  *(v7 + 72) = 1;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0;
  sub_181BBC910(v12);
  return v7;
}

BOOL nw_protocol_metadata_is_tcp(nw_protocol_metadata_t metadata)
{
  v15 = *MEMORY[0x1E69E9840];
  if (metadata)
  {

    return _nw_protocol_metadata_is_tcp(metadata);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_metadata_is_tcp";
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
        v12 = "nw_protocol_metadata_is_tcp";
        v6 = "%{public}s called with null metadata";
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
            v12 = "nw_protocol_metadata_is_tcp";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_protocol_metadata_is_tcp";
        v6 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_metadata_is_tcp";
        v6 = "%{public}s called with null metadata, backtrace limit exceeded";
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

void nw_tcp_set_callbacks(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (nw_protocol_metadata_is_tcp(v5))
  {
    _nw_tcp_set_callbacks(v5, a2, a3);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_tcp_set_callbacks";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_tcp_set_callbacks";
        v10 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
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
            v16 = "nw_tcp_set_callbacks";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v12)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v16 = "nw_tcp_set_callbacks";
        v10 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_tcp_set_callbacks";
        v10 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v7)
  {
    free(v7);
  }

LABEL_3:
}

uint64_t _nw_path_is_viable(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = v1[377];

  return v3;
}

uint64_t _nw_tcp_options_get_reduce_buffering(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = result + *(*result + 128);
    result = swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4 == 2)
    {
      __break(1u);
    }

    else
    {

      return HIDWORD(v4) & 1;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_get_no_optionsTm(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = result + *(*result + 128);
    result = swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4 == 2)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 36) & 1;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_get_enable_l4s_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 2;
  }

  v3 = v2 + *(*v2 + 128);
  result = swift_beginAccess();
  v5 = *(v3 + 40);
  if (v5 == 2)
  {
    __break(1u);
  }

  else
  {

    if (BYTE1(v5) == 2)
    {
      return 2;
    }

    else
    {
      return (v5 >> 8) & 1;
    }
  }

  return result;
}

uint64_t _nw_tcp_options_get_enable_fast_open(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = result + *(*result + 128);
    result = swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4 == 2)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 43) & 1;
    }
  }

  return result;
}

uint64_t sub_181BB663C()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1 & 0xF000000000000007;
  if ((v1 & 0xF000000000000007) != 0xF000000000000007 && (v1 & 0xC000000000000000) == 0x8000000000000000)
  {
    if (v1 != 0x8000000000000000 || *(v0 + 48) != 0)
    {
      goto LABEL_16;
    }

    v5 = v0;
    if (qword_1ED4102F0 != -1)
    {
      swift_once();
    }

    v6 = *(&xmmword_1ED411D60 + 1);
    v7 = unk_1ED411D70;
    v8 = byte_1ED411D78;
    v9 = xmmword_1ED411D60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
    swift_allocObject();
    v10 = sub_181BB68A0(v9, v6, v7, v8, 0);
    v0 = v5;
    v11 = *(v5 + 48);
    v12 = *(v0 + 56);
    *(v0 + 48) = v10;
    *(v0 + 56) = 0;
    sub_181F49A24(v6, v7, v8);
    sub_181A52FE0(v11, v12);
    v1 = *(v0 + 56);
    v2 = v1 & 0xF000000000000007;
  }

  if (v2 == 0xF000000000000007)
  {
    return 0;
  }

LABEL_16:
  v14 = *(v0 + 48);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v13 = *(v0 + 48);
    }

    else
    {
      if (qword_1ED4102F0 != -1)
      {
        swift_once();
      }

      v15 = *(&xmmword_1ED411D60 + 1);
      v16 = unk_1ED411D70;
      v17 = byte_1ED411D78;
      v18 = xmmword_1ED411D60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
      swift_allocObject();
      v13 = sub_181BB68A0(v18, v15, v16, v17, 0);
      sub_181AA8428(&qword_1ED410260, &qword_1EA838760);
      sub_181F49A24(v15, v16, v17);
    }
  }

  else
  {
    sub_181AA8428(&qword_1ED410260, &qword_1EA838760);
    v13 = v14;
  }

  sub_181B2C3E0(v14, v1);
  return v13;
}

uint64_t sub_181BB68A0(unsigned int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = a1;
  v11 = a1 >> 8;
  *(v5 + 48) = xmmword_182AE8E90;
  v12 = qword_1ED411A90;
  v13 = sub_182AD2738();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  *(v5 + qword_1ED411A88) = 0;
  v14 = v5 + *(*v5 + 128);
  *(v14 + 4) = 0;
  *v14 = 3;
  *(v5 + *(*v5 + 136)) = 0;
  *(v5 + *(*v5 + 144)) = 0;
  v15 = v5 + *(*v5 + 152);
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v5 + *(*v5 + 160);
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (v5 + *(*v5 + 168));
  *v17 = 0;
  v17[1] = 0;
  *(v5 + *(*v5 + 176)) = 0;
  *(v5 + *(*v5 + 184)) = 0;
  *(v5 + 16) = v10;
  *(v5 + 17) = v11;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4 & 1;
  swift_beginAccess();
  *(v14 + 4) = BYTE4(a5);
  *v14 = a5;
  return v5;
}

uint64_t ___ZL33nw_endpoint_flow_attach_protocolsP30NWConcrete_nw_endpoint_handlerP11nw_protocolS2__block_invoke_225(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v125 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  identifier = nw_protocol_definition_get_identifier(v6);
  registered_endpoint = *(a1 + 96);
  if (registered_endpoint)
  {
    goto LABEL_75;
  }

  v103 = v7;
  v10 = *(*(*(a1 + 64) + 8) + 24);
  v11 = *(a1 + 40);
  v12 = *(*(*(a1 + 72) + 8) + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v11;
  v16 = v14;
  v101 = v15;
  v102 = v12;
  v17 = v13;
  v100 = v16;
  if (!v16)
  {
    v61 = __nwlog_obj();
    *buf = 136446210;
    v108 = "nw_endpoint_flow_find_protocol_to_join";
    v62 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (!__nwlog_fault(v62, &type, &v105))
    {
      goto LABEL_163;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v63 = __nwlog_obj();
      v64 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v64, "%{public}s called with null handler", buf, 0xCu);
      }

      goto LABEL_142;
    }

    if (v105 != 1)
    {
      v63 = __nwlog_obj();
      v75 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v75, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_142;
    }

    backtrace_string = __nw_create_backtrace_string();
    v68 = __nwlog_obj();
    v69 = type;
    v70 = os_log_type_enabled(v68, type);
    if (backtrace_string)
    {
      if (v70)
      {
        *buf = 136446466;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        v109 = 2082;
        v110 = backtrace_string;
        _os_log_impl(&dword_181A37000, v68, v69, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
LABEL_163:
      if (!v62)
      {
        goto LABEL_73;
      }

      goto LABEL_164;
    }

    if (v70)
    {
      *buf = 136446210;
      v108 = "nw_endpoint_flow_find_protocol_to_join";
      _os_log_impl(&dword_181A37000, v68, v69, "%{public}s called with null handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_162;
  }

  v18 = v16;
  v19 = v18[29];

  if (v19 != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    if (v19 > 5)
    {
      v29 = "unknown-mode";
    }

    else
    {
      v29 = off_1E6A31018[v19];
    }

    *buf = 136446722;
    v108 = "nw_endpoint_flow_find_protocol_to_join";
    v109 = 2082;
    v110 = v29;
    v111 = 2082;
    v112 = "flow";
    v35 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (__nwlog_fault(v35, &type, &v105))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type;
        if (os_log_type_enabled(v36, type))
        {
          if (v19 > 5)
          {
            v38 = "unknown-mode";
          }

          else
          {
            v38 = off_1E6A31018[v19];
          }

          *buf = 136446722;
          v108 = "nw_endpoint_flow_find_protocol_to_join";
          v109 = 2082;
          v110 = v38;
          v111 = 2082;
          v112 = "flow";
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v105 == 1)
      {
        v39 = __nw_create_backtrace_string();
        if (v39)
        {
          v40 = v39;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v41 = gLogObj;
          v42 = type;
          if (os_log_type_enabled(v41, type))
          {
            if (v19 > 5)
            {
              v43 = "unknown-mode";
            }

            else
            {
              v43 = off_1E6A31018[v19];
            }

            *buf = 136446978;
            v108 = "nw_endpoint_flow_find_protocol_to_join";
            v109 = 2082;
            v110 = v43;
            v111 = 2082;
            v112 = "flow";
            v113 = 2082;
            v114 = v40;
            _os_log_impl(&dword_181A37000, v41, v42, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v40);
          if (!v35)
          {
            goto LABEL_73;
          }

LABEL_71:
          v48 = v35;
LABEL_72:
          free(v48);
          goto LABEL_73;
        }

        v36 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v36, type))
        {
          if (v19 > 5)
          {
            v47 = "unknown-mode";
          }

          else
          {
            v47 = off_1E6A31018[v19];
          }

          *buf = 136446722;
          v108 = "nw_endpoint_flow_find_protocol_to_join";
          v109 = 2082;
          v110 = v47;
          v111 = 2082;
          v112 = "flow";
          _os_log_impl(&dword_181A37000, v36, v46, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v44 = type;
        if (os_log_type_enabled(v36, type))
        {
          if (v19 > 5)
          {
            v45 = "unknown-mode";
          }

          else
          {
            v45 = off_1E6A31018[v19];
          }

          *buf = 136446722;
          v108 = "nw_endpoint_flow_find_protocol_to_join";
          v109 = 2082;
          v110 = v45;
          v111 = 2082;
          v112 = "flow";
          _os_log_impl(&dword_181A37000, v36, v44, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v35)
    {
LABEL_73:
      registered_endpoint = 0;
      goto LABEL_74;
    }

    goto LABEL_71;
  }

  if (!identifier)
  {
    v65 = __nwlog_obj();
    *buf = 136446210;
    v108 = "nw_endpoint_flow_find_protocol_to_join";
    v62 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (!__nwlog_fault(v62, &type, &v105))
    {
      goto LABEL_163;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v63 = __nwlog_obj();
      v66 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v66, "%{public}s called with null identifier", buf, 0xCu);
      }

      goto LABEL_142;
    }

    if (v105 != 1)
    {
      v63 = __nwlog_obj();
      v83 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v83, "%{public}s called with null identifier, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_142;
    }

    v76 = __nw_create_backtrace_string();
    v68 = __nwlog_obj();
    v77 = type;
    v78 = os_log_type_enabled(v68, type);
    if (v76)
    {
      if (v78)
      {
        *buf = 136446466;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        v109 = 2082;
        v110 = v76;
        _os_log_impl(&dword_181A37000, v68, v77, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_132:

      free(v76);
      if (!v62)
      {
        goto LABEL_73;
      }

LABEL_164:
      v48 = v62;
      goto LABEL_72;
    }

    if (v78)
    {
      *buf = 136446210;
      v108 = "nw_endpoint_flow_find_protocol_to_join";
      _os_log_impl(&dword_181A37000, v68, v77, "%{public}s called with null identifier, no backtrace", buf, 0xCu);
    }

LABEL_162:

    goto LABEL_163;
  }

  if (!v102)
  {
    v71 = __nwlog_obj();
    *buf = 136446210;
    v108 = "nw_endpoint_flow_find_protocol_to_join";
    v62 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (!__nwlog_fault(v62, &type, &v105))
    {
      goto LABEL_163;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v63 = __nwlog_obj();
      v72 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v72, "%{public}s called with null endpoint", buf, 0xCu);
      }

      goto LABEL_142;
    }

    if (v105 != 1)
    {
      v63 = __nwlog_obj();
      v84 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v84, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_142;
    }

    v76 = __nw_create_backtrace_string();
    v68 = __nwlog_obj();
    v79 = type;
    v80 = os_log_type_enabled(v68, type);
    if (v76)
    {
      if (v80)
      {
        *buf = 136446466;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        v109 = 2082;
        v110 = v76;
        _os_log_impl(&dword_181A37000, v68, v79, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_132;
    }

    if (v80)
    {
      *buf = 136446210;
      v108 = "nw_endpoint_flow_find_protocol_to_join";
      _os_log_impl(&dword_181A37000, v68, v79, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
    }

    goto LABEL_162;
  }

  if (!v17)
  {
    v73 = __nwlog_obj();
    *buf = 136446210;
    v108 = "nw_endpoint_flow_find_protocol_to_join";
    v62 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (!__nwlog_fault(v62, &type, &v105))
    {
      goto LABEL_163;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v63 = __nwlog_obj();
      v74 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v74, "%{public}s called with null parameters", buf, 0xCu);
      }

LABEL_142:

      goto LABEL_163;
    }

    if (v105 != 1)
    {
      v63 = __nwlog_obj();
      v85 = type;
      if (os_log_type_enabled(v63, type))
      {
        *buf = 136446210;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        _os_log_impl(&dword_181A37000, v63, v85, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_142;
    }

    v76 = __nw_create_backtrace_string();
    v68 = __nwlog_obj();
    v81 = type;
    v82 = os_log_type_enabled(v68, type);
    if (v76)
    {
      if (v82)
      {
        *buf = 136446466;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        v109 = 2082;
        v110 = v76;
        _os_log_impl(&dword_181A37000, v68, v81, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_132;
    }

    if (v82)
    {
      *buf = 136446210;
      v108 = "nw_endpoint_flow_find_protocol_to_join";
      _os_log_impl(&dword_181A37000, v68, v81, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
    }

    goto LABEL_162;
  }

  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v20 = &g_registration_list;
  do
  {
    v20 = *v20;
    if (!v20)
    {
      os_unfair_lock_unlock(&nw_protocol_registrar_lock);
      goto LABEL_31;
    }
  }

  while (*identifier != v20[4] || *(identifier + 1) != v20[5] || *(identifier + 2) != v20[6] || *(identifier + 3) != v20[7] || *(identifier + 4) != v20[8]);
  v25 = v20[13];
  os_unfair_lock_unlock(&nw_protocol_registrar_lock);
  if (!v25)
  {
LABEL_31:
    if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v18) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v30 = gconnectionLogObj;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v18);
        v96 = nw_endpoint_handler_dry_run_string(v18);
        v31 = nw_endpoint_handler_copy_endpoint(v18);
        logging_description = nw_endpoint_get_logging_description(v31);
        v32 = nw_endpoint_handler_state_string(v18);
        v33 = nw_endpoint_handler_mode_string(v18);
        v34 = nw_endpoint_handler_copy_current_path(v18);
        *buf = 136448258;
        v108 = "nw_endpoint_flow_find_protocol_to_join";
        v109 = 2082;
        v110 = id_string;
        v111 = 2082;
        v112 = v96;
        v113 = 2082;
        v114 = logging_description;
        v115 = 2082;
        v116 = v32;
        v117 = 2082;
        v118 = v33;
        v119 = 2114;
        v120 = v34;
        v121 = 2080;
        v122 = identifier;
        v123 = 2048;
        v124 = identifier;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] protocol %s (%p) does not have accept function, cannot search for protocol to join", buf, 0x5Cu);
      }
    }

    goto LABEL_73;
  }

  v26 = v102;
  v27 = v26;
  while (1)
  {
    registered_endpoint = nw_protocol_instance_registrar_search_for_instance_to_join(identifier, -1, v101, v27, v26, v17, v10);
    if (registered_endpoint)
    {
      break;
    }

    registered_endpoint = nw_protocol_instance_registrar_copy_next_registered_endpoint(v27, v10);

    v27 = registered_endpoint;
    if (!registered_endpoint)
    {
      goto LABEL_53;
    }
  }

  if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v18) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v86 = gconnectionLogObj;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
    {
      v99 = nw_endpoint_handler_get_id_string(v18);
      v97 = nw_endpoint_handler_dry_run_string(v18);
      v87 = nw_endpoint_handler_copy_endpoint(v18);
      v95 = nw_endpoint_get_logging_description(v87);
      v93 = nw_endpoint_handler_state_string(v18);
      v88 = nw_endpoint_handler_mode_string(v18);
      v89 = nw_endpoint_handler_copy_current_path(v18);
      v90 = v89;
      v108 = "nw_endpoint_flow_find_protocol_to_join";
      v91 = "invalid";
      v92 = *(registered_endpoint + 16);
      *buf = 136448258;
      if (v92)
      {
        v91 = v92;
      }

      v109 = 2082;
      v110 = v99;
      v111 = 2082;
      v112 = v97;
      v113 = 2082;
      v114 = v95;
      v115 = 2082;
      v116 = v93;
      v117 = 2082;
      v118 = v88;
      v119 = 2114;
      v120 = v89;
      v121 = 2080;
      v122 = v91;
      v123 = 2048;
      v124 = registered_endpoint;
      _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] returning protocol to join %s (%p)", buf, 0x5Cu);
    }
  }

LABEL_53:

LABEL_74:
  v7 = v103;
  if (registered_endpoint)
  {
LABEL_75:
    if (nw_endpoint_flow_join_protocol(*(a1 + 32), *(a1 + 48), v7, v6, identifier, 0xFFFFFFFFFFFFFFFFLL, registered_endpoint, *(*(*(a1 + 80) + 8) + 24), *(*(*(a1 + 64) + 8) + 24), (*(*(a1 + 88) + 8) + 24)))
    {
      v49 = 0;
      *(*(a1 + 56) + 33) |= 1u;
      goto LABEL_88;
    }
  }

  v50 = nw_endpoint_flow_add_one_protocol(*(a1 + 32), identifier, v7, v6, *(*(*(a1 + 72) + 8) + 40), *(a1 + 48), *(*(*(a1 + 80) + 8) + 24));
  if (v50)
  {
    *(*(*(a1 + 80) + 8) + 24) = v50;
    if (nw_endpoint_handler_get_logging_disabled(*(a1 + 32)))
    {
      v49 = 1;
    }

    else
    {
      v104 = v7;
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v51 = gconnectionLogObj;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        v52 = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v53 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v54 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v55 = v54;
        if (v54)
        {
          v56 = _nw_endpoint_get_logging_description(v54);
        }

        else
        {
          v56 = "<NULL>";
        }

        v57 = nw_endpoint_handler_state_string(*(a1 + 32));
        v58 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v59 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136448002;
        v108 = "nw_endpoint_flow_attach_protocols_block_invoke";
        v109 = 2082;
        v110 = v52;
        v111 = 2082;
        v112 = v53;
        v113 = 2082;
        v114 = v56;
        v115 = 2082;
        v116 = v57;
        v117 = 2082;
        v118 = v58;
        v119 = 2114;
        v120 = v59;
        v121 = 2082;
        v122 = identifier;
        _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Attached link-layer protocol: %{public}s", buf, 0x52u);
      }

      v49 = 1;
      v7 = v104;
    }
  }

  else
  {
    v49 = 0;
    *(*(*(a1 + 88) + 8) + 24) = 1;
  }

LABEL_88:

  return v49;
}

id nw_flow_get_local(nw_protocol *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(a1->handle + 20);
  v2 = v1;
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_flow_get_local";
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
          v24 = "nw_flow_get_local";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null handler", buf, 0xCu);
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
            v24 = "nw_flow_get_local";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_36;
        }

        if (v19)
        {
          *buf = 136446210;
          v24 = "nw_flow_get_local";
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v15 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v24 = "nw_flow_get_local";
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_36:
    if (v14)
    {
      free(v14);
    }

    goto LABEL_13;
  }

  v3 = v1;
  mode = v3->mode;

  if (mode != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (mode > 5)
      {
        v8 = "unknown-mode";
      }

      else
      {
        v8 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v24 = "nw_flow_get_local";
      v25 = 2082;
      v26 = v8;
      v27 = 2082;
      v28 = "flow";
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_13:
    v6 = 0;
    goto LABEL_17;
  }

  v5 = nw_endpoint_handler_copy_flow(v3);
  if (*(v5 + 120))
  {
    v6 = 0;
  }

  else
  {
    v9 = nw_endpoint_flow_copy_path(v3);
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      v6 = _nw_path_copy_effective_local_endpoint(v11);
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_17:

  return v6;
}

id nw_flow_get_path(nw_protocol *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(a1->handle + 20);
  v2 = v1;
  if (!v1)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_flow_get_path";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v10, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v20 = "nw_flow_get_path";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v17 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v14 = type;
        v15 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v20 = "nw_flow_get_path";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_30;
        }

        if (v15)
        {
          *buf = 136446210;
          v20 = "nw_flow_get_path";
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v11 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v20 = "nw_flow_get_path";
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_30:
    if (v10)
    {
      free(v10);
    }

    goto LABEL_10;
  }

  v3 = v1;
  v4 = v3[29];

  if (v4 == 2)
  {
    v5 = nw_endpoint_flow_copy_path(v3);
    goto LABEL_11;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v4 > 5)
    {
      v7 = "unknown-mode";
    }

    else
    {
      v7 = off_1E6A31018[v4];
    }

    *buf = 136446722;
    v20 = "nw_flow_get_path";
    v21 = 2082;
    v22 = v7;
    v23 = 2082;
    v24 = "flow";
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_10:
  v5 = 0;
LABEL_11:

  return v5;
}

uint64_t nw_protocol_options_get_log_id_str(void *a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_options_get_log_id_str";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v10, &type, &v21))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v24 = "nw_protocol_options_get_log_id_str";
      v13 = "%{public}s called with null options";
LABEL_44:
      _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      goto LABEL_45;
    }

    if (v21 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v24 = "nw_protocol_options_get_log_id_str";
        v13 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v17 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v24 = "nw_protocol_options_get_log_id_str";
        v13 = "%{public}s called with null options, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v17)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v24 = "nw_protocol_options_get_log_id_str";
    v25 = 2082;
    v26 = backtrace_string;
    v18 = "%{public}s called with null options, dumping backtrace:%{public}s";
LABEL_30:
    _os_log_impl(&dword_181A37000, v11, v12, v18, buf, 0x16u);
LABEL_31:

    free(backtrace_string);
    goto LABEL_46;
  }

  if (!a2)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_options_get_log_id_str";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v10, &type, &v21))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v24 = "nw_protocol_options_get_log_id_str";
      v13 = "%{public}s called with null log_id_str";
      goto LABEL_44;
    }

    if (v21 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v24 = "nw_protocol_options_get_log_id_str";
        v13 = "%{public}s called with null log_id_str, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v19 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v24 = "nw_protocol_options_get_log_id_str";
        v13 = "%{public}s called with null log_id_str, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v19)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v24 = "nw_protocol_options_get_log_id_str";
    v25 = 2082;
    v26 = backtrace_string;
    v18 = "%{public}s called with null log_id_str, dumping backtrace:%{public}s";
    goto LABEL_30;
  }

  if (a3)
  {
    log_id_str = _nw_protocol_options_get_log_id_str(v5, a2);
    goto LABEL_5;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_protocol_options_get_log_id_str";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v10, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v24 = "nw_protocol_options_get_log_id_str";
        v13 = "%{public}s called with null log_id_str_len";
        goto LABEL_44;
      }

LABEL_45:

      goto LABEL_46;
    }

    if (v21 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v24 = "nw_protocol_options_get_log_id_str";
        v13 = "%{public}s called with null log_id_str_len, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v20 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v24 = "nw_protocol_options_get_log_id_str";
        v13 = "%{public}s called with null log_id_str_len, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v20)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v24 = "nw_protocol_options_get_log_id_str";
    v25 = 2082;
    v26 = backtrace_string;
    v18 = "%{public}s called with null log_id_str_len, dumping backtrace:%{public}s";
    goto LABEL_30;
  }

LABEL_46:
  if (v10)
  {
    free(v10);
  }

  log_id_str = 0;
LABEL_5:

  return log_id_str;
}

void *networkd_settings_copy_value_of_type(const char *a1, objc_class *a2)
{
  networkd_settings_init();
  if (sCachedSettings)
  {
    pthread_mutex_lock(&sSettingsMutex);
    v4 = sCachedSettings;
    if (sCachedSettings)
    {
      Class = object_getClass(sCachedSettings);
      v6 = 0;
      if (!a1 || Class != MEMORY[0x1E69E9E80])
      {
        goto LABEL_12;
      }

      value = xpc_dictionary_get_value(v4, a1);
      v6 = value;
      if (a2 && value)
      {
        if (object_getClass(value) != a2)
        {
          goto LABEL_8;
        }
      }

      else if (!value)
      {
        goto LABEL_12;
      }

      xpc_retain(v6);
      goto LABEL_12;
    }

LABEL_8:
    v6 = 0;
LABEL_12:
    pthread_mutex_unlock(&sSettingsMutex);
    return v6;
  }

  return 0;
}

uint64_t nw_protocol_default_get_path(nw_protocol *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_default_get_path";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v9, &type, &v17))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "nw_protocol_default_get_path";
      v12 = "%{public}s called with null protocol";
      goto LABEL_39;
    }

    if (v17 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "nw_protocol_default_get_path";
      v12 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v14 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (!v14)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "nw_protocol_default_get_path";
      v12 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_39;
    }

    if (v14)
    {
      *buf = 136446466;
      v20 = "nw_protocol_default_get_path";
      v21 = 2082;
      v22 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_40:
    if (!v9)
    {
      return 0;
    }

LABEL_41:
    free(v9);
    return 0;
  }

  default_input_handler = a1->default_input_handler;
  if (!default_input_handler)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_default_get_path";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v9, &type, &v17))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "nw_protocol_default_get_path";
      v12 = "%{public}s called with null protocol->default_input_handler";
      goto LABEL_39;
    }

    if (v17 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "nw_protocol_default_get_path";
      v12 = "%{public}s called with null protocol->default_input_handler, backtrace limit exceeded";
      goto LABEL_39;
    }

    v15 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v16 = os_log_type_enabled(v10, type);
    if (v15)
    {
      if (v16)
      {
        *buf = 136446466;
        v20 = "nw_protocol_default_get_path";
        v21 = 2082;
        v22 = v15;
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol->default_input_handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v15);
      if (!v9)
      {
        return 0;
      }

      goto LABEL_41;
    }

    if (v16)
    {
      *buf = 136446210;
      v20 = "nw_protocol_default_get_path";
      v12 = "%{public}s called with null protocol->default_input_handler, no backtrace";
LABEL_39:
      _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  callbacks = default_input_handler->callbacks;
  if (!callbacks || (get_path = callbacks->get_path) == 0)
  {
    v6 = a1;
    v7 = __nwlog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      name = "<null>";
      if (v6->identifier)
      {
        name = v6->identifier->name;
      }

      *buf = 136446466;
      v20 = "nw_protocol_default_get_path";
      v21 = 2082;
      v22 = name;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s Protocol %{public}s does not support get path", buf, 0x16u);
    }

    return 0;
  }

  return get_path();
}

id nw_path_copy_flow_registration(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    globals_for_path = nw_context_get_globals_for_path(v3);
    os_unfair_lock_lock((globals_for_path + 116));
    v6 = *(globals_for_path + 40);
    if (v6 && (node = nw_hash_table_get_node(v6, a2, 16)) != 0)
    {
      v8 = *(node + 16);
    }

    else
    {
      v8 = 0;
    }

    os_unfair_lock_unlock((globals_for_path + 116));
    goto LABEL_7;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_path_copy_flow_registration";
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
        v21 = "nw_path_copy_flow_registration";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null context", buf, 0xCu);
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
          v21 = "nw_path_copy_flow_registration";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v16)
      {
        *buf = 136446210;
        v21 = "nw_path_copy_flow_registration";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_path_copy_flow_registration";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_7:

  return v8;
}
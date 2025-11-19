void nw_protocol_callbacks_set_get_local_endpoint(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 128) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_local_endpoint";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_local_endpoint";
        v5 = "%{public}s called with null get_local_endpoint";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_local_endpoint";
        v5 = "%{public}s called with null get_local_endpoint, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_get_local_endpoint";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null get_local_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_local_endpoint";
        v5 = "%{public}s called with null get_local_endpoint, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_local_endpoint";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_local_endpoint";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_local_endpoint";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_local_endpoint";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_get_local_endpoint";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

BOOL nw_settings_register_quic_log_debug_updates(void *a1)
{
  nw_allow_use_of_dispatch_internal();
  pthread_mutex_lock(&sSettingsMutex);
  v2 = sQUICUpdateBlock;
  if (sQUICUpdateBlock != a1)
  {
    if (a1)
    {
      a1 = _Block_copy(a1);
      v2 = sQUICUpdateBlock;
    }

    if (v2)
    {
      _Block_release(v2);
    }

    sQUICUpdateBlock = a1;
  }

  pthread_mutex_unlock(&sSettingsMutex);
  v3 = nw_setting_libnetcore_datapath_debug;
  networkd_settings_init();
  if (!sCachedSettings)
  {
    return 0;
  }

  pthread_mutex_lock(&sSettingsMutex);
  v4 = sCachedSettings;
  if (!sCachedSettings)
  {
    goto LABEL_13;
  }

  Class = object_getClass(sCachedSettings);
  v6 = 0;
  if (!v3 || Class != MEMORY[0x1E69E9E80])
  {
    goto LABEL_14;
  }

  value = xpc_dictionary_get_value(v4, v3);
  if (value && (v8 = value, object_getClass(value) == MEMORY[0x1E69E9E58]))
  {
    v6 = xpc_BOOL_get_value(v8);
  }

  else
  {
LABEL_13:
    v6 = 0;
  }

LABEL_14:
  pthread_mutex_unlock(&sSettingsMutex);
  return v6;
}

void nw_parameters_set_metadata(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (!v4 || object_getClass(v4) == MEMORY[0x1E69E9E70])
    {
      _nw_parameters_set_metadata(v3, v5);
      goto LABEL_22;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v22 = "nw_parameters_set_metadata";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v7, &type, &v19))
    {
      goto LABEL_20;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_set_metadata";
        v10 = "%{public}s called with null metadata - wrong type";
LABEL_17:
        v14 = v8;
        v15 = v9;
LABEL_18:
        _os_log_impl(&dword_181A37000, v14, v15, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v12 = type;
        v13 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v22 = "nw_parameters_set_metadata";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null metadata - wrong type, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (v7)
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        if (!v13)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v22 = "nw_parameters_set_metadata";
        v10 = "%{public}s called with null metadata - wrong type, no backtrace";
        v14 = v8;
        v15 = v12;
        goto LABEL_18;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_set_metadata";
        v10 = "%{public}s called with null metadata - wrong type, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_19:

    goto LABEL_20;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_parameters_set_metadata";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v7, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v22 = "nw_parameters_set_metadata";
      v10 = "%{public}s called with null parameters";
      goto LABEL_17;
    }

    if (v19 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v22 = "nw_parameters_set_metadata";
      v10 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_17;
    }

    v17 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v18 = os_log_type_enabled(v8, type);
    if (!v17)
    {
      if (!v18)
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v22 = "nw_parameters_set_metadata";
      v10 = "%{public}s called with null parameters, no backtrace";
      goto LABEL_17;
    }

    if (v18)
    {
      *buf = 136446466;
      v22 = "nw_parameters_set_metadata";
      v23 = 2082;
      v24 = v17;
      _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v17);
  }

LABEL_20:
  if (v7)
  {
LABEL_21:
    free(v7);
  }

LABEL_22:
}

uint64_t _nw_parameters_set_metadata(char *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  sub_182205820(a1, a2);

  return swift_unknownObjectRelease();
}

void nw_parameters_set_fast_open_enabled(nw_parameters_t parameters, BOOL fast_open_enabled)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    _nw_parameters_set_fast_open_enabled();
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_fast_open_enabled";
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
        v12 = "nw_parameters_set_fast_open_enabled";
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
            v12 = "nw_parameters_set_fast_open_enabled";
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
        v12 = "nw_parameters_set_fast_open_enabled";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_fast_open_enabled";
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

void nw_parameters_add_custom_proxy_config(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_parameters_add_custom_proxy_config";
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
        v19 = "nw_parameters_add_custom_proxy_config";
        v10 = "%{public}s called with null parameters";
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
          v19 = "nw_parameters_add_custom_proxy_config";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
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
        v19 = "nw_parameters_add_custom_proxy_config";
        v10 = "%{public}s called with null parameters, no backtrace";
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
        v19 = "nw_parameters_add_custom_proxy_config";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    _nw_parameters_add_custom_proxy_config(v3, v4);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_parameters_add_custom_proxy_config";
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
      v19 = "nw_parameters_add_custom_proxy_config";
      v10 = "%{public}s called with null config";
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
      v19 = "nw_parameters_add_custom_proxy_config";
      v10 = "%{public}s called with null config, backtrace limit exceeded";
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
      v19 = "nw_parameters_add_custom_proxy_config";
      v10 = "%{public}s called with null config, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_parameters_add_custom_proxy_config";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

uint64_t _nw_parameters_add_custom_proxy_config(char *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  sub_182205BD0(a1, a2, sub_1821F74FC);

  return swift_unknownObjectRelease();
}

void *nw_endpoint_copy_host_port_endpoint_for_url(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_endpoint_copy_host_port_endpoint_for_url(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_copy_host_port_endpoint_for_url";
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
        v16 = "nw_endpoint_copy_host_port_endpoint_for_url";
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
          v16 = "nw_endpoint_copy_host_port_endpoint_for_url";
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
        v16 = "nw_endpoint_copy_host_port_endpoint_for_url";
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
        v16 = "nw_endpoint_copy_host_port_endpoint_for_url";
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

void *sub_181C9FCB4()
{
  if (MEMORY[0x1E69E8310])
  {
    v0 = MEMORY[0x1E69E8308] == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    type metadata accessor for HTTPFields._StorageWithNIOLock();
    v2 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A070);
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    v2[4] = v1;
  }

  else
  {
    type metadata accessor for HTTPFields._StorageWithMutex();
    v2 = swift_allocObject();
    *(v2 + 8) = 0;
  }

  v3 = MEMORY[0x1E69E7CC0];
  v2[2] = MEMORY[0x1E69E7CC0];
  v2[3] = sub_181CAF7B4(v3);
  return v2;
}

uint64_t _nw_http_fields_create()
{
  v0 = sub_181C9FCB4();
  type metadata accessor for __NWHTTPFields();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

void nw_http_fields_set_value_by_name(void *a1, unint64_t a2, const char *a3)
{
  v5 = a1;
  if (!v5)
  {
    v6 = __nwlog_obj();
    os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v7 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v7))
    {
      goto LABEL_11;
    }

    free(v7);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = __nwlog_obj();
    os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    v9 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v9))
    {
      goto LABEL_11;
    }

    free(v9);
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (a3)
  {
LABEL_4:
    _nw_http_fields_set_value_by_name(v5, a2, a3);

    return;
  }

LABEL_9:
  v10 = __nwlog_obj();
  os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  v11 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v11))
  {
    free(v11);
    goto LABEL_4;
  }

LABEL_11:
  __break(1u);
}

double sub_181CA0008@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (a2 == -1)
  {
    well_known = nw_http_field_name_find_well_known(a1);
    v8 = 0x646F6874656D3ALL;
    v6 = 0xE700000000000000;
    v9 = 0x646F6874656D3ALL;
    v10 = 0xE700000000000000;
    switch(well_known)
    {
      case 0:
        goto LABEL_8;
      case 1:
        v8 = 0x656D656863733ALL;
        v9 = 0x656D656863733ALL;
        goto LABEL_8;
      case 2:
        v8 = 0x69726F687475613ALL;
        v6 = 0xEA00000000007974;
        goto LABEL_56;
      case 3:
        v6 = 0xE500000000000000;
        v8 = 0x687461703ALL;
        v9 = 0x687461703ALL;
        v10 = 0xE500000000000000;
        goto LABEL_8;
      case 4:
        v8 = 0x6F636F746F72703ALL;
        v6 = 0xE90000000000006CLL;
LABEL_56:
        v9 = v8;
        v10 = v6;
        goto LABEL_8;
      case 5:
        v8 = 0x7375746174733ALL;
        v9 = 0x7375746174733ALL;
        goto LABEL_8;
      case 6:
        v8 = 0x747065636341;
        goto LABEL_69;
      case 7:
        v6 = 0xEF676E69646F636ELL;
        v9 = 0x652D747065636361;
        v8 = 0x452D747065636341;
        v10 = 0xEF676E69646F636ELL;
        goto LABEL_8;
      case 8:
        v6 = 0xEF65676175676E61;
        v9 = 0x6C2D747065636361;
        v8 = 0x4C2D747065636341;
        v10 = 0xEF65676175676E61;
        goto LABEL_8;
      case 9:
        v6 = 0xED00007365676E61;
        v9 = 0x722D747065636361;
        v8 = 0x522D747065636341;
        v10 = 0xED00007365676E61;
        goto LABEL_8;
      case 10:
        v18 = "llow-credentials";
        v19 = "access-control-allow-headers";
        goto LABEL_58;
      case 11:
        v18 = "access-control-allow-headers";
        v19 = "access-control-allow-methods";
        goto LABEL_58;
      case 12:
        v6 = 0x8000000182BDD500;
        v10 = 0x8000000182BDD520;
        v20 = 11;
        goto LABEL_91;
      case 13:
        v6 = 0x8000000182BDD540;
        v16 = "access-control-expose-headers";
        goto LABEL_66;
      case 14:
        v23 = "access-control-expose-headers";
        v24 = "access-control-max-age";
LABEL_48:
        v6 = v23 | 0x8000000000000000;
        v10 = (v24 - 32) | 0x8000000000000000;
        v8 = 0xD000000000000016;
        v9 = 0xD000000000000016;
        goto LABEL_8;
      case 15:
        v6 = 0x8000000182BDD5C0;
        v10 = 0x8000000182BDD5E0;
        v8 = 0xD00000000000001ELL;
        v9 = 0xD00000000000001ELL;
        goto LABEL_8;
      case 16:
        v6 = 0x8000000182BDD600;
        v16 = "access-control-request-method";
LABEL_66:
        v10 = (v16 - 32) | 0x8000000000000000;
        v20 = 13;
        goto LABEL_91;
      case 17:
        v8 = 6645569;
LABEL_63:
        v9 = v8 | 0x20;
        v6 = 0xE300000000000000;
        v10 = 0xE300000000000000;
        goto LABEL_8;
      case 18:
        v8 = 0x776F6C6C41;
LABEL_23:
        v9 = v8 | 0x20;
        v6 = 0xE500000000000000;
        v10 = 0xE500000000000000;
        goto LABEL_8;
      case 19:
        v9 = 0x6376732D746C61;
        v8 = 0x6376532D746C41;
        goto LABEL_8;
      case 20:
        v13 = "access-control-request-method";
        v14 = "authentication-info";
        goto LABEL_85;
      case 21:
        v8 = 0x7A69726F68747541;
        v9 = 0x7A69726F68747561;
        v6 = 0xED00006E6F697461;
        v10 = 0xED00006E6F697461;
        goto LABEL_8;
      case 22:
        v6 = 0xED00006C6F72746ELL;
        v9 = 0x6F632D6568636163;
        v8 = 0x6F432D6568636143;
        v10 = 0xED00006C6F72746ELL;
        goto LABEL_8;
      case 23:
        v8 = 0xD000000000000010;
        v6 = 0x8000000182BE23D0;
        v15 = "capsule-protocol";
        goto LABEL_82;
      case 24:
        v21 = "connect-udp-bind";
        v22 = "client-connection-id";
LABEL_42:
        v6 = v21 | 0x8000000000000000;
        v10 = (v22 - 32) | 0x8000000000000000;
        v8 = 0xD000000000000014;
        v9 = 0xD000000000000014;
        goto LABEL_8;
      case 25:
        v6 = 0xEE00687361686F65;
        v9 = 0x672D746E65696C63;
        v17 = 0x746E65696C43;
LABEL_27:
        v8 = v17 & 0xFFFFFFFFFFFFLL | 0x472D000000000000;
        v10 = 0xEE00687361686F65;
        goto LABEL_8;
      case 26:
        v8 = 0x697463656E6E6F43;
        v9 = 0x697463656E6E6F63;
        v6 = 0xEA00000000006E6FLL;
        v10 = 0xEA00000000006E6FLL;
        goto LABEL_8;
      case 27:
        v8 = 0xD000000000000010;
        v6 = 0x8000000182BE2350;
        v15 = "connect-udp-bind";
        goto LABEL_82;
      case 29:
        v13 = "authentication-info";
        v14 = "content-disposition";
        goto LABEL_85;
      case 30:
        v8 = 0xD000000000000010;
        v6 = 0x8000000182BDD6C0;
        v15 = "content-encoding";
        goto LABEL_82;
      case 31:
        v8 = 0xD000000000000010;
        v6 = 0x8000000182BDD700;
        v15 = "content-language";
        goto LABEL_82;
      case 32:
        v8 = 0x2D746E65746E6F43;
        v9 = 0x2D746E65746E6F63;
        v6 = 0xEE006874676E654CLL;
        v10 = 0xEE006874676E656CLL;
        goto LABEL_8;
      case 33:
        v8 = 0xD000000000000010;
        v6 = 0x8000000182BDD740;
        v15 = "content-location";
        goto LABEL_82;
      case 34:
        v8 = 0x2D746E65746E6F43;
        v9 = 0x2D746E65746E6F63;
        v6 = 0xED000065676E6152;
        v10 = 0xED000065676E6172;
        goto LABEL_8;
      case 35:
        v6 = 0x8000000182BDD780;
        v10 = 0x8000000182BDD7A0;
        v8 = 0xD000000000000017;
        v9 = 0xD000000000000017;
        goto LABEL_8;
      case 36:
        v8 = 0x2D746E65746E6F43;
        v9 = 0x2D746E65746E6F63;
        v6 = 0xEC00000065707954;
        v10 = 0xEC00000065707974;
        goto LABEL_8;
      case 37:
        v8 = 0x65696B6F6F43;
        goto LABEL_69;
      case 38:
        v18 = "-policy-report-only";
        v19 = "cross-origin-resource-policy";
LABEL_58:
        v6 = v18 | 0x8000000000000000;
        v10 = (v19 - 32) | 0x8000000000000000;
        v8 = 0xD00000000000001CLL;
        v9 = 0xD00000000000001CLL;
        goto LABEL_8;
      case 39:
        v8 = 0xD000000000000010;
        v6 = 0x8000000182BE2310;
        v15 = "datagram-flow-id";
        goto LABEL_82;
      case 40:
        v8 = 1702125892;
        goto LABEL_21;
      case 41:
        v6 = 0xEA00000000006174;
        v9 = 0x61642D796C726165;
        v8 = 0x61442D796C726145;
        v10 = 0xEA00000000006174;
        goto LABEL_8;
      case 42:
        v6 = 0xE400000000000000;
        v9 = 1734440037;
        v8 = 1734431813;
        v10 = 0xE400000000000000;
        goto LABEL_8;
      case 43:
        v8 = 0x746365707845;
        goto LABEL_69;
      case 44:
        v8 = 0x73657269707845;
        v9 = 0x73657269707865;
        goto LABEL_8;
      case 45:
        v8 = 1836020294;
LABEL_21:
        v9 = v8 | 0x20;
        v6 = 0xE400000000000000;
        v10 = 0xE400000000000000;
        goto LABEL_8;
      case 47:
        v9 = 0x686374616D2D6669;
        v6 = 0xE800000000000000;
        v8 = 0x686374614D2D6649;
        v10 = 0xE800000000000000;
        goto LABEL_8;
      case 48:
        v25 = "cross-origin-resource-policy";
        v26 = "if-modified-since";
LABEL_54:
        v6 = v25 | 0x8000000000000000;
        v10 = (v26 - 32) | 0x8000000000000000;
        v8 = 0xD000000000000011;
        v9 = 0xD000000000000011;
        goto LABEL_8;
      case 49:
        v6 = 0xED0000686374614DLL;
        v10 = 0xED0000686374616DLL;
        v9 = 0x2D656E6F6E2D6669;
        v8 = 0x2D656E6F4E2D6649;
        goto LABEL_8;
      case 50:
        v9 = 0x65676E61722D6669;
        v6 = 0xE800000000000000;
        v8 = 0x65676E61522D6649;
        v10 = 0xE800000000000000;
        goto LABEL_8;
      case 51:
        v13 = "if-modified-since";
        v14 = "if-unmodified-since";
        goto LABEL_85;
      case 52:
        v6 = 0xEA00000000006576;
        v9 = 0x696C612D7065656BLL;
        v8 = 0x696C412D7065654BLL;
        v10 = 0xEA00000000006576;
        goto LABEL_8;
      case 53:
        v6 = 0xED00006465696669;
        v9 = 0x646F6D2D7473616CLL;
        v8 = 0x646F4D2D7473614CLL;
        v10 = 0xED00006465696669;
        goto LABEL_8;
      case 54:
        v8 = 0x6E6F697461636F4CLL;
        goto LABEL_79;
      case 55:
        v6 = 0xEC00000073647261;
        v9 = 0x77726F662D78616DLL;
        v8 = 0x77726F462D78614DLL;
        v10 = 0xEC00000073647261;
        goto LABEL_8;
      case 56:
        v8 = 0x6E696769724FLL;
        goto LABEL_69;
      case 57:
        v6 = 0xE300000000000000;
        v9 = 7353200;
        v8 = 5256016;
        v10 = 0xE300000000000000;
        goto LABEL_8;
      case 58:
        v8 = 0x616D67617250;
LABEL_69:
        v9 = v8 | 0x20;
        v6 = 0xE600000000000000;
        v10 = 0xE600000000000000;
        goto LABEL_8;
      case 59:
        v8 = 0x797469726F697250;
LABEL_79:
        v9 = v8 | 0x20;
        v6 = 0xE800000000000000;
        v10 = 0xE800000000000000;
        goto LABEL_8;
      case 60:
        v27 = "if-unmodified-since";
        v28 = "proxy-authenticate";
        goto LABEL_88;
      case 61:
        v6 = 0x8000000182BDD920;
        v30 = "proxy-authentication-info";
LABEL_90:
        v10 = (v30 - 32) | 0x8000000000000000;
        v20 = 9;
        goto LABEL_91;
      case 62:
        v13 = "proxy-authentication-info";
        v14 = "proxy-authorization";
LABEL_85:
        v6 = v13 | 0x8000000000000000;
        v10 = (v14 - 32) | 0x8000000000000000;
        v8 = 0xD000000000000013;
        v9 = 0xD000000000000013;
        goto LABEL_8;
      case 63:
        v27 = "proxy-connection";
        v28 = "proxy-config-epoch";
LABEL_88:
        v6 = v27 | 0x8000000000000000;
        v10 = (v28 - 32) | 0x8000000000000000;
        v8 = 0xD000000000000012;
        v9 = 0xD000000000000012;
        break;
      case 64:
        v8 = 0xD000000000000010;
        v6 = 0x8000000182BE2290;
        v15 = "proxy-connection";
LABEL_82:
        v10 = (v15 - 32) | 0x8000000000000000;
        v9 = 0xD000000000000010;
        break;
      case 65:
        v6 = 0x8000000182BE2250;
        v29 = "proxy-quic-forwarding";
LABEL_74:
        v10 = (v29 - 32) | 0x8000000000000000;
        v20 = 5;
LABEL_91:
        v8 = v20 | 0xD000000000000010;
        v9 = v20 | 0xD000000000000010;
        break;
      default:
        v6 = 0xEC00000073757461;
        v9 = 0x74732D79786F7270;
        v8 = 0x74532D79786F7250;
        v10 = 0xEC00000073757461;
        switch(well_known)
        {
          case 28:
            v21 = "20__NWHTTPParsedFields";
            v22 = "listener-association";
            goto LABEL_42;
          case 66:
            goto LABEL_8;
          case 67:
            v8 = 0x65676E6152;
            goto LABEL_23;
          case 68:
            v31 = 0x657265666552;
            goto LABEL_115;
          case 69:
            v6 = 0xEB00000000726574;
            v9 = 0x66612D7972746572;
            v8 = 0x66412D7972746552;
            v10 = 0xEB00000000726574;
            goto LABEL_8;
          case 70:
            v25 = "server-connection-id";
            v26 = "sec-ch-background";
            goto LABEL_54;
          case 71:
            v6 = 0xEE00687361686F65;
            v9 = 0x672D68632D636573;
            v17 = 0x48432D636553;
            goto LABEL_27;
          case 72:
            v6 = 0xEB0000000065736FLL;
            v9 = 0x707275702D636573;
            v8 = 0x707275502D636553;
            v10 = 0xEB0000000065736FLL;
            goto LABEL_8;
          case 73:
            v21 = "proxy-authorization";
            v22 = "sec-websocket-accept";
            goto LABEL_42;
          case 74:
            v6 = 0x8000000182BDD9E0;
            v10 = 0x8000000182BDDA00;
            v8 = 0xD000000000000018;
            v9 = 0xD000000000000018;
            goto LABEL_8;
          case 75:
            v25 = "sec-websocket-extensions";
            v26 = "sec-websocket-key";
            goto LABEL_54;
          case 76:
            v23 = "sec-websocket-key";
            v24 = "sec-websocket-protocol";
            goto LABEL_48;
          case 77:
            v6 = 0x8000000182BDDAA0;
            v29 = "sec-websocket-version";
            goto LABEL_74;
          case 78:
            v8 = 0x726576726553;
            goto LABEL_69;
          case 79:
            v21 = "timing-allow-origin";
            v22 = "server-connection-id";
            goto LABEL_42;
          case 80:
            v6 = 0xEA00000000006569;
            v9 = 0x6B6F6F632D746573;
            v8 = 0x6B6F6F432D746553;
            v10 = 0xEA00000000006569;
            goto LABEL_8;
          case 81:
            v6 = 0x8000000182BDDAE0;
            v30 = "strict-transport-security";
            goto LABEL_90;
          case 82:
            v6 = 0xE200000000000000;
            v9 = 25972;
            v8 = 17748;
            v10 = 0xE200000000000000;
            goto LABEL_8;
          case 83:
            v13 = "upgrade-insecure-requests";
            v14 = "timing-allow-origin";
            goto LABEL_85;
          case 84:
            v31 = 0x656C69617254;
LABEL_115:
            v8 = v31 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
            break;
          case 85:
            v25 = "strict-transport-security";
            v26 = "transfer-encoding";
            goto LABEL_54;
          case 86:
            v8 = 0x65646172677055;
            break;
          case 87:
            v6 = 0x8000000182BE2150;
            v30 = "upgrade-insecure-requests";
            goto LABEL_90;
          case 88:
            v6 = 0xEF6574656C706D6FLL;
            v9 = 0x632D64616F6C7075;
            v8 = 0x432D64616F6C7055;
            v10 = 0xEF6574656C706D6FLL;
            goto LABEL_8;
          case 89:
            v18 = "x-xss-protection";
            v19 = "upload-draft-interop-version";
            goto LABEL_58;
          case 90:
            v6 = 0xED00007465736666;
            v9 = 0x6F2D64616F6C7075;
            v8 = 0x4F2D64616F6C7055;
            v10 = 0xED00007465736666;
            goto LABEL_8;
          case 91:
            v6 = 0xEA0000000000746ELL;
            v9 = 0x6567612D72657375;
            v8 = 0x6567412D72657355;
            v10 = 0xEA0000000000746ELL;
            goto LABEL_8;
          case 92:
            v8 = 2037539158;
            goto LABEL_21;
          case 93:
            v8 = 6383958;
            goto LABEL_63;
          case 94:
            v8 = 0xD000000000000010;
            v6 = 0x8000000182BDDB60;
            v15 = "www-authenticate";
            goto LABEL_82;
          case 95:
            v23 = "www-authenticate";
            v24 = "x-content-type-options";
            goto LABEL_48;
          case 96:
            v6 = 0xEF736E6F6974704FLL;
            v10 = 0xEF736E6F6974706FLL;
            v9 = 0x2D656D6172662D78;
            v8 = 0x2D656D6172462D58;
            goto LABEL_8;
          case 97:
            v8 = 0xD000000000000010;
            v6 = 0x8000000182BE20D0;
            v15 = "x-xss-protection";
            goto LABEL_82;
          case 98:
            v25 = "prohibit-interface";
            v26 = "require-interface";
            goto LABEL_54;
          case 99:
            v27 = "client-application";
            v28 = "prohibit-interface";
            goto LABEL_88;
          case 100:
            v27 = "listener-association";
            v28 = "client-application";
            goto LABEL_88;
          case 101:
            v8 = 0x74617069746C754DLL;
            v9 = 0x74617069746C756DLL;
            v6 = 0xE900000000000068;
            v10 = 0xE900000000000068;
            goto LABEL_8;
          default:
            v4 = sub_182AD3158();
            goto LABEL_3;
        }

        v9 = v8 | 0x20;
        v6 = 0xE700000000000000;
        v10 = 0xE700000000000000;
        break;
    }

    goto LABEL_8;
  }

  v4 = sub_182AD30B8();
LABEL_3:
  v6 = v5;
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = v4;
    if (sub_181CA3274(v4, v5))
    {
      v9 = sub_182AD3028();
LABEL_8:
      *a3 = v8;
      a3[1] = v6;
      a3[2] = v9;
      a3[3] = v10;
      return result;
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

uint64_t _nw_http_fields_set_value_by_name_0(uint64_t a1, unint64_t a2, const char *a3)
{

  sub_181CA0008(a2, -1, &v13);
  v6 = v14;
  if (v14)
  {
    v7 = v13;
    v8 = strlen(a3);
    if (v8)
    {
      v9 = 0;
      while ((a3[v9] & 0x80000000) == 0)
      {
        if (v8 == ++v9)
        {
          goto LABEL_6;
        }
      }

      v13 = a3;
      v14 = v8;
      v15 = sub_1822876F4;
      v16 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
      sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
      sub_182AD30A8();
      v10 = 0;
    }

    else
    {
LABEL_6:
      v10 = sub_182AD30B8();
    }

    v11 = MEMORY[0x1EEE9AC00](v10);
    (*(*a1 + 88))(sub_181CA13B4, v11);

    sub_181CA2810(v7, v6);
  }

  else
  {
    result = sub_182AD3EA8();
    __break(1u);
  }

  return result;
}

uint64_t sub_181CA134C(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 16);
  return swift_endAccess();
}

uint64_t sub_181CA13C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;

  return sub_181CA1434(a6, a7, v10);
}

uint64_t sub_181CA1434(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v6 = a3[2];
  v5 = a3[3];
  if (a2)
  {
    if (v6 == 0x65696B6F6F63 && v5 == 0xE600000000000000)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v10 = sub_182AD4268();
      swift_bridgeObjectRelease_n();
      if ((v10 & 1) == 0)
      {
        v11 = sub_181CA1930(a1, a2);
        v13 = v12;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8388F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_182AE9730;
        *(inited + 32) = v4;
        *(inited + 64) = 0;
        *(inited + 40) = v3;
        *(inited + 48) = v6;
        *(inited + 56) = v5;
        *(inited + 72) = v11;
        *(inited + 80) = v13;

        sub_181CA1D20(inited, v4, v3, v6, v5);

        swift_setDeallocating();
        return sub_181CA27BC(inited + 32);
      }
    }

    *&v46 = a1;
    *(&v46 + 1) = a2;
    *&v39 = 8251;
    *(&v39 + 1) = 0xE200000000000000;
    sub_18208C2BC();
    v16 = sub_182AD37C8();

    v17 = *(v16 + 16);
    if (v17)
    {
      v34 = v4;
      v45 = MEMORY[0x1E69E7CC0];
      sub_181FB7830(0, v17, 0);
      v18 = v45;
      v19 = (v16 + 56);
      v32 = v6;
      v33 = v3;
      while (1)
      {
        v36 = v18;
        v20 = *(v19 - 3);
        v21 = *(v19 - 2);
        v22 = *(v19 - 1);
        v23 = *v19;

        v24 = MEMORY[0x1865D9BC0](v20, v21, v22, v23);
        v26 = v25;
        v35 = v17;
        if (_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(v24, v25))
        {
        }

        else
        {
          *&v46 = v24;
          *(&v46 + 1) = v26;
          v47 = sub_181FF27F8;
          v48 = 0;
          v49 = sub_181FF3C3C;
          v50 = 0;
          v51 = sub_181FF3C3C;
          v52 = 0;
          v39 = v46;
          v40 = sub_181FF27F8;
          v41 = sub_181FF3C3C;
          v42 = sub_181FF3C3C;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839B80);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C8);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v38 = 0;
            memset(v37, 0, sizeof(v37));
            sub_181F49A88(v37, &unk_1EA8394D0);
LABEL_21:
            v24 = sub_181FACAE4(&v46);
            v28 = v27;

            v26 = v28;
            goto LABEL_22;
          }

          sub_181F3CF20(v37, v43);
          __swift_project_boxed_opaque_existential_1(v43, v44);
          if ((sub_182AD3F18() & 1) == 0)
          {
            __swift_destroy_boxed_opaque_existential_1(v43);
            goto LABEL_21;
          }

          __swift_project_boxed_opaque_existential_1(v43, v44);
          sub_182AD3F08();

          v26 = *(&v39 + 1);
          v24 = v39;
          __swift_destroy_boxed_opaque_existential_1(v43);
        }

LABEL_22:
        v18 = v36;
        v45 = v36;
        v29 = *(v36 + 16);
        v30 = *(v36 + 24);
        v3 = v33;

        if (v29 >= v30 >> 1)
        {
          sub_181FB7830((v30 > 1), v29 + 1, 1);
          v18 = v45;
        }

        *(v18 + 16) = v29 + 1;
        v31 = v18 + 56 * v29;
        *(v31 + 32) = v34;
        *(v31 + 40) = v33;
        v6 = v32;
        *(v31 + 48) = v32;
        *(v31 + 56) = v5;
        *(v31 + 64) = 0;
        *(v31 + 72) = v24;
        *(v31 + 80) = v26;
        v19 += 4;
        v17 = v35 - 1;
        if (v35 == 1)
        {

          v4 = v34;
          goto LABEL_27;
        }
      }
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_27:
    sub_181CA1D20(v18, v4, v3, v6, v5);
  }

  else
  {
    sub_181CA1D20(MEMORY[0x1E69E7CC0], *a3, a3[1], v6, v5);
  }
}

uint64_t sub_181CA1930(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  if (!_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(a1, a2))
  {
    *&v13 = v3;
    *(&v13 + 1) = a2;
    v14 = sub_181FF27F8;
    v15 = 0;
    v16 = sub_181FF3C3C;
    v17 = 0;
    v18 = sub_181FF3C3C;
    v19 = 0;
    v7 = v13;
    v8 = sub_181FF27F8;
    v9 = sub_181FF3C3C;
    v10 = sub_181FF3C3C;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C8);
    if (swift_dynamicCast())
    {
      sub_181F3CF20(v5, v11);
      __swift_project_boxed_opaque_existential_1(v11, v12);
      if (sub_182AD3F18())
      {
        __swift_project_boxed_opaque_existential_1(v11, v12);
        sub_182AD3F08();
        v3 = v7;
        __swift_destroy_boxed_opaque_existential_1(v11);
        return v3;
      }

      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      sub_181FF3BD4(v5);
    }

    return sub_181FACAE4(&v13);
  }

  return v3;
}

BOOL _s7Network9HTTPFieldV12isValidValueySbSSFZ_0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  LOBYTE(v5) = (a2 & 0x1000000000000000) == 0 || (a1 & 0x800000000000000) != 0;
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_54:
    v7 = sub_182AD31C8();
    v9 = sub_182AD3178();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v7 = a1;
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v6 = sub_182AD3CF8();
      }

      v7 = *v6;
    }

    v9 = 65540;
  }

  result = 0;
  if (v7 != 9 && v7 != 32)
  {
    v5 = 4 << v5;
    while (1)
    {
      v10 = v7 == 32 || v7 == 9;
      if (!v10 && (v7 & 0x80) == 0 && (v7 - 127) < 0xA2u)
      {
        return 0;
      }

      if (4 * v2 == v9 >> 14)
      {
        return v7 != 9 && v7 != 32;
      }

      v11 = v9 & 0xC;
      v12 = v9;
      if (v11 == v5)
      {
        v12 = sub_18208A330(v9, a1, a2);
      }

      v13 = v12 >> 16;
      if (v12 >> 16 >= v2)
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = *(v16 + v13);
        if (v11 == v5)
        {
          goto LABEL_43;
        }

LABEL_36:
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_37;
        }

LABEL_19:
        v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
      }

      else
      {
        v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v14 = sub_182AD3CF8();
        }

        v7 = *(v14 + v13);
        if (v11 != v5)
        {
          goto LABEL_36;
        }

LABEL_43:
        v9 = sub_18208A330(v9, a1, a2);
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

LABEL_37:
        if (v2 <= v9 >> 16)
        {
          goto LABEL_53;
        }

        v9 = sub_182AD3178();
      }
    }

    v7 = sub_182AD31C8();
    if (v11 == v5)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  return result;
}

uint64_t sub_181CA1D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_181DAEBE0();

    *v5 = v9;
  }

  v10 = *(*v9 + 152);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FD0);
  v10(v44, sub_181D0482C, v9, v11);
  v12 = v44[0];
  if (*(v44[0] + 16) && (v13 = sub_181CA266C(a4, a5), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 4 * v13);

    if (v15 != 0xFFFF)
    {
      v16 = *(a1 + 16);
      result = swift_beginAccess();
      v18 = 0;
      v19 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v18 == v16)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_181F5A904(0, *(v19 + 16) + 1, 1, v19);
            v19 = result;
          }

          v21 = *(v19 + 16);
          v20 = *(v19 + 24);
          if (v21 >= v20 >> 1)
          {
            result = sub_181F5A904((v20 > 1), v21 + 1, 1, v19);
            v19 = result;
          }

          *(v19 + 16) = v21 + 1;
          *(v19 + 8 * v21 + 32) = v15;
          v18 = v16;
        }

        else
        {
          if (v18 >= v16)
          {
            goto LABEL_34;
          }

          v22 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_35;
          }

          v23 = a1 + 32 + 56 * v18;
          v25 = *v23;
          v24 = *(v23 + 8);
          v26 = *(v23 + 24);
          v43 = *(v23 + 16);
          v42 = *(v23 + 32);
          v27 = *(v23 + 48);
          v41 = *(v23 + 40);
          swift_beginAccess();
          v28 = v9[2];
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          result = swift_isUniquelyReferenced_nonNull_native();
          v9[2] = v28;
          if ((result & 1) == 0)
          {
            result = sub_182083520(v28);
            v28 = result;
            v9[2] = result;
          }

          if (v28[2] <= v15)
          {
            goto LABEL_36;
          }

          v29 = &v28[8 * v15];
          v29[4] = v25;
          v29[5] = v24;
          v29[6] = v43;
          v29[7] = v26;
          *(v29 + 64) = v42;
          v29[9] = v41;
          v29[10] = v27;
          v9[2] = v28;
          swift_endAccess();

          v18 = v22;
        }

        v30 = v9[2];
        if (*(v30 + 16) <= v15)
        {
          break;
        }

        v15 = *(v30 + (v15 << 6) + 88);
        if (v15 == 0xFFFF)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  else
  {
  }

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
LABEL_24:
  if (*(v19 + 16))
  {
    swift_beginAccess();
    sub_182087194(v19);
    swift_endAccess();

    swift_beginAccess();
    v9[3] = 0;
  }

  v31 = *(a1 + 16);
  v32 = v31 - v18;
  if (v31 != v18)
  {
    if (v31 <= v18)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (!v31)
    {
LABEL_39:
      __break(1u);
      return result;
    }

    v33 = (a1 + 56 * v18 + 80);
    do
    {
      v34 = *(v33 - 5);
      v35 = *(v33 - 4);
      v36 = *(v33 - 3);
      v37 = *(v33 - 16);
      v38 = *(v33 - 1);
      v39 = *v33;
      v44[0] = *(v33 - 6);
      v44[1] = v34;
      v44[2] = v35;
      v44[3] = v36;
      v45 = v37;
      v46 = v38;
      v47 = v39;

      sub_181CA21B0(v44);

      v33 += 7;
      --v32;
    }

    while (v32);
  }

  return result;
}

void sub_181CA2148(void (*a1)(void))
{
  os_unfair_lock_lock(v1 + 8);
  a1();
  os_unfair_lock_unlock(v1 + 8);
}

uint64_t sub_181CA21B0(uint64_t a1)
{
  v5 = v1;
  v6 = *a1;
  v7 = *(a1 + 24);
  v42 = *(a1 + 8);
  v43 = *(a1 + 16);
  LOBYTE(v8) = *(a1 + 32);
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  if ((sub_181CBD984(*a1, v42) & 0x1FF) == 0x3A)
  {
    goto LABEL_32;
  }

  v41 = v9;
  swift_beginAccess();
  v4 = *(*(v5 + 16) + 16);
  if (v4 >> 16)
  {
    __break(1u);
    goto LABEL_29;
  }

  swift_beginAccess();
  v11 = *(v5 + 24);
  if (v11)
  {
    v12 = *(v11 + 16);

    if (v12)
    {

      v13 = sub_181CA266C(v43, v7);
      if (v14)
      {
        v15 = *(*(v11 + 56) + 4 * v13 + 2);

        swift_beginAccess();
        v16 = *(v5 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v5 + 16) = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_182083520(v16);
        }

        if (v16[2] <= v15)
        {
          __break(1u);
          goto LABEL_35;
        }

        LOWORD(v16[8 * v15 + 11]) = v4;
        *(v5 + 16) = v16;
        swift_endAccess();
      }

      else
      {
      }
    }
  }

  else
  {
  }

  v38 = v8;
  v39 = v6;
  v40 = v10;
  v18 = sub_181CA261C();
  if (!*v19)
  {
    v29 = v18;

    (v29)(v45, 0);
    v2 = 0;
    v9 = 0;
    v3 = 0;
    goto LABEL_23;
  }

  v2 = v19;
  v37 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_181CBDD98;
  *(v3 + 24) = v20;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v2;
  v44 = *v2;
  *v2 = 0x8000000000000000;
  v10 = sub_181CA266C(v43, v7);
  v24 = v22[2];
  v25 = (v23 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    goto LABEL_31;
  }

  LOBYTE(v8) = v23;
  if (v22[3] >= v26)
  {
    if ((v21 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  sub_181CBDA98(v26, v21);
  v27 = sub_181CA266C(v43, v7);
  if ((v8 & 1) != (v28 & 1))
  {
LABEL_35:
    result = sub_182AD4408();
    __break(1u);
    return result;
  }

  v10 = v27;
  while (1)
  {
LABEL_19:
    *v2 = v44;

    v31 = *v2;
    if (v8)
    {
    }

    else
    {
      v32 = (*(v3 + 16))(v30);
      sub_181CBDD50(v10, v43, v7, v32, v31);
    }

    *(v31[7] + 4 * v10 + 2) = v4;
    (v37)(v45, 0);
    v9 = sub_18208CABC;
    v2 = sub_181CBDD98;
LABEL_23:
    swift_beginAccess();
    v10 = *(v5 + 16);

    v4 = v41;

    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v10;
    if ((v33 & 1) == 0)
    {
LABEL_29:
      v10 = sub_181CA2688(0, *(v10 + 16) + 1, 1, v10);
      *(v5 + 16) = v10;
    }

    v8 = *(v10 + 16);
    v34 = *(v10 + 24);
    if (v8 >= v34 >> 1)
    {
      v10 = sub_181CA2688((v34 > 1), v8 + 1, 1, v10);
    }

    *(v10 + 16) = v8 + 1;
    v35 = v10 + (v8 << 6);
    *(v35 + 32) = v39;
    *(v35 + 40) = v42;
    *(v35 + 48) = v43;
    *(v35 + 56) = v7;
    *(v35 + 64) = v38;
    *(v35 + 65) = v44;
    *(v35 + 68) = *(&v44 + 3);
    *(v35 + 72) = v40;
    *(v35 + 80) = v4;
    *(v35 + 88) = -1;
    *(v5 + 16) = v10;
    swift_endAccess();
    sub_181A554F4(v2);
    result = sub_181A554F4(v9);
    if (v8 <= 0xFFFD)
    {
      break;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    sub_182254E38();
  }

  return result;
}

void *sub_181CA2688(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8389E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839C10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_181CA2810(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

const char *__cdecl nw_endpoint_get_url(nw_endpoint_t endpoint)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = endpoint;
  v2 = v1;
  if (v1)
  {
    url = _nw_endpoint_get_url(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_url";
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
        v16 = "nw_endpoint_get_url";
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
          v16 = "nw_endpoint_get_url";
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
        v16 = "nw_endpoint_get_url";
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
        v16 = "nw_endpoint_get_url";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  url = 0;
LABEL_3:

  return url;
}

uint64_t _nw_endpoint_get_url_0(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v9 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v8, v4, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_181B2BEE4(v4, v7);
    v10 = sub_182AD1F98();
    v11 = CFURLGetBytes(v10, 0, 0);
    MEMORY[0x1EEE9AC00](v11);
    *(&v17 - 2) = v10;
    v12 = sub_182AD30D8();
    v14 = v13;

    v15 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
    os_unfair_lock_lock((*&v9[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
    sub_181AB2BF0(v9, 14, v12, v14, &v18);

    os_unfair_lock_unlock((*&v9[v15] + 16));
    sub_181A5513C(v7, type metadata accessor for URLEndpoint);

    return v18;
  }

  else
  {

    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }
}

uint64_t _nw_http_request_create_from_url_0(uint64_t a1, const char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_182AD2058();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = sub_182AD3158();
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = v13;
    v17 = v14;
    if (sub_181CA3274(v13, v14))
    {

      sub_181CA3044(a2, v5);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {

        (*(v7 + 32))(v12, v5, v6);
        v21[0] = v16;
        v21[1] = v17;
        (*(v7 + 16))(v9, v12, v6);
        HTTPFields.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], &v20);
        HTTPRequest.init(method:url:headerFields:)(v21, v9, &v20, v22);
        (*(v7 + 8))(v12, v6);
        type metadata accessor for __NWHTTPRequest();
        result = swift_allocObject();
        *(result + 16) = *v22;
        return result;
      }

      sub_181F49A88(v5, &unk_1EA838BB0);
    }
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_181CA3044@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = strlen(a1);
  v11 = *MEMORY[0x1E695E480];
  v12 = sub_182AD1F18();
  v13 = CFURLCreateAbsoluteURLWithBytes(v11, a1, v10, v12, 0, 0);
  if (v13)
  {
    v14 = v13;
    sub_182AD1FD8();

    v15 = sub_182AD2058();
    (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  }

  else
  {
    v15 = sub_182AD2058();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  sub_181B2BAC0(v6, v9);
  sub_182AD2058();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_181F49A88(v9, &unk_1EA838BB0);
    v17 = 1;
  }

  else
  {
    (*(v16 + 32))(a2, v9, v15);
    v17 = 0;
  }

  return (*(v16 + 56))(a2, v17, 1, v15);
}

unint64_t sub_181CA3274(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  v5 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  v7 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result & 0xC;
    v11 = result;
    if (v10 == v6)
    {
      v15 = result;
      v11 = sub_18208A330(result, a1, a2);
      result = v15;
    }

    v12 = v11 >> 16;
    if (v11 >> 16 >= v2)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v17 = result;
      v14 = sub_182AD31C8();
      result = v17;
      if (v10 != v6)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v18[0] = a1;
        v18[1] = v7;
        v13 = v18;
      }

      else
      {
        v13 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v16 = result;
          v13 = sub_182AD3CF8();
          result = v16;
        }
      }

      v14 = *(v13 + v12);
      if (v10 != v6)
      {
LABEL_21:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_22;
      }
    }

    result = sub_18208A330(result, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_8:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_9;
    }

LABEL_22:
    if (v2 <= result >> 16)
    {
      goto LABEL_36;
    }

    result = sub_182AD3178();
LABEL_9:
    if ((v14 - 33 > 0x3F || ((1 << (v14 - 33)) & 0xE00000000000367DLL) == 0) && v14 != 126 && v14 != 124 && (v14 - 58) <= 0xF5u && (v14 - 91) <= 0xE5u && (v14 - 123) < 0xE6u)
    {
      return 0;
    }

    if (4 * v2 == result >> 14)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

unint64_t HTTPFields.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_181C9FCB4();
  v33 = a1;
  v4 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_181DAEBE0();

    v3 = v5;
  }

  v6 = sub_181CA261C();
  if (*v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839FD0);
    sub_182AD2E78();
  }

  (v6)(&v39, 0);
  swift_beginAccess();
  v8 = v3[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[2] = v8;
  if (!isUniquelyReferenced_nonNull_native || v4 > v8[3] >> 1)
  {
    if (v8[2] <= v4)
    {
      v10 = v4;
    }

    else
    {
      v10 = v8[2];
    }

    v8 = sub_181CA2688(isUniquelyReferenced_nonNull_native, v10, 0, v8);
  }

  v3[2] = v8;
  swift_endAccess();
  v35 = *(v33 + 16);
  if (v35)
  {
    v11 = 0;
    v34 = v3;
    do
    {
      v17 = (v33 + 32 + 48 * v11);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      v23 = v17[4];
      v22 = v17[5];
      result = sub_181CBD984(*v17, v19);
      if ((result & 0x1FF) == 0x3A)
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v36 = v20;
      v37 = v18;
      v38 = v11 + 1;
      if ((v22 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v22) & 0xF;
      }

      else
      {
        v25 = v23 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v23 >> 59) & 1;
      if ((v22 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v28 = 15;
      do
      {
        while (1)
        {
          if (4 * v25 == v28 >> 14)
          {
            v12 = v19;

            v13 = v21;

            goto LABEL_14;
          }

          v29 = v28 & 0xC;
          result = v28;
          if (v29 == v27)
          {
            result = sub_18208A330(v28, v23, v22);
          }

          v30 = result >> 16;
          if (result >> 16 >= v25)
          {
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          if ((v22 & 0x1000000000000000) == 0)
          {
            break;
          }

          result = sub_182AD31C8();
          v31 = result;
          if (v29 == v27)
          {
            goto LABEL_39;
          }

LABEL_34:
          if ((v22 & 0x1000000000000000) != 0)
          {
            goto LABEL_35;
          }

LABEL_22:
          v28 = (v28 & 0xFFFFFFFFFFFF0000) + 65540;
          if (v31 < 0)
          {
            goto LABEL_41;
          }
        }

        if ((v22 & 0x2000000000000000) != 0)
        {
          v39 = v23;
          v40 = v22 & 0xFFFFFFFFFFFFFFLL;
          v31 = *(&v39 + v30);
          if (v29 == v27)
          {
            goto LABEL_39;
          }

          goto LABEL_34;
        }

        result = (v22 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v23 & 0x1000000000000000) == 0)
        {
          result = sub_182AD3CF8();
        }

        v31 = *(result + v30);
        if (v29 != v27)
        {
          goto LABEL_34;
        }

LABEL_39:
        result = sub_18208A330(v28, v23, v22);
        v28 = result;
        if ((v22 & 0x1000000000000000) == 0)
        {
          goto LABEL_22;
        }

LABEL_35:
        if (v25 <= v28 >> 16)
        {
          goto LABEL_45;
        }

        v28 = sub_182AD3178();
      }

      while ((v31 & 0x80) == 0);
LABEL_41:
      v39 = v23;
      v40 = v22;
      v41 = sub_1822876F4;
      v42 = 0;
      v46 = 0;
      v47 = 0xE000000000000000;
      v12 = v19;

      v13 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
      sub_181AB3DCC(&qword_1EA838EE0, &qword_1EA838ED8);
      sub_182AD30A8();

      v23 = v46;
      v22 = v47;
LABEL_14:
      v14 = sub_181CA1930(v23, v22);
      v16 = v15;

      v39 = v37;
      v40 = v12;
      v41 = v36;
      v42 = v13;
      v43 = 0;
      v44 = v14;
      v45 = v16;
      v3 = v34;
      sub_181CA21B0(&v39);

      v11 = v38;
    }

    while (v38 != v35);
  }

  if (*(v3[2] + 16) > 0xFFFEuLL)
  {
    goto LABEL_47;
  }

  *a2 = v3;
  return result;
}

uint64_t HTTPRequest.init(method:url:headerFields:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v39 = a1[1];
  v40 = *a1;
  v41 = *a3;
  sub_181CA3CAC();
  v6 = v5;
  v7 = sub_182AD30B8();
  v9 = v8;

  if (v6)
  {
    v10 = sub_182AD30B8();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = sub_182AD30B8();
  v15 = v14;

  if (sub_181CA4798(v7, v9))
  {

    v16 = v9;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
    sub_181F88C5C();
    sub_182AD30A8();
    v7 = 0;
    v16 = 0xE000000000000000;
  }

  v38 = sub_181CA1930(v7, v16);
  v18 = v17;

  if (v12)
  {
    if (sub_181CA4798(v10, v12))
    {

      v19 = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
      sub_181F88C5C();
      sub_182AD30A8();
      v10 = 0;
      v19 = 0xE000000000000000;
    }

    v20 = sub_181CA1930(v10, v19);
    v21 = v23;

    v22 = xmmword_182AE94A0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0uLL;
  }

  v37 = v22;
  if (sub_181CA4798(v13, v15))
  {

    v24 = v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
    sub_181F88C5C();
    sub_182AD30A8();
    v13 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = sub_181CA1930(v13, v24);
  v27 = v26;

  v28 = sub_182AD2058();
  (*(*(v28 - 8) + 8))(a2, v28);
  type metadata accessor for HTTPRequest.PseudoHeaderFields._Storage();
  v29 = swift_allocObject();
  *(v29 + 128) = 0u;
  *(v29 + 144) = 0u;
  *(v29 + 160) = 0u;
  *(v29 + 176) = 0u;
  *(v29 + 192) = 0u;
  *(v29 + 208) = 0u;
  *(v29 + 224) = 0u;
  *(v29 + 240) = 0u;
  *(v29 + 256) = 0u;
  *(v29 + 272) = 0u;
  *(v29 + 288) = 0;
  *(v29 + 16) = 0x646F6874656D3ALL;
  *(v29 + 24) = 0xE700000000000000;
  *(v29 + 32) = 0x646F6874656D3ALL;
  *(v29 + 40) = 0xE700000000000000;
  *(v29 + 48) = 0;
  *(v29 + 56) = v40;
  *(v29 + 64) = v39;
  *(v29 + 72) = xmmword_182AE94B0;
  *(v29 + 88) = xmmword_182AE94B0;
  *(v29 + 104) = 0;
  *(v29 + 112) = v38;
  *(v29 + 120) = v18;
  sub_181D04D28(0, 0);
  v30 = *(v29 + 128);
  v31 = *(v29 + 136);
  *(v29 + 128) = v37;
  *(v29 + 144) = v37;
  *(v29 + 160) = 0;
  *(v29 + 168) = v20;
  *(v29 + 176) = v21;
  sub_181D04D28(v30, v31);
  v32 = *(v29 + 184);
  v33 = *(v29 + 192);
  *(v29 + 184) = xmmword_182AE94C0;
  *(v29 + 200) = xmmword_182AE94C0;
  *(v29 + 216) = 0;
  *(v29 + 224) = v25;
  *(v29 + 232) = v27;
  sub_181D04D28(v32, v33);
  v34 = *(v29 + 240);
  v35 = *(v29 + 248);
  *(v29 + 240) = 0u;
  *(v29 + 256) = 0u;
  *(v29 + 272) = 0u;
  *(v29 + 288) = 0;
  result = sub_181D04D28(v34, v35);
  *a4 = v29;
  a4[1] = v41;
  return result;
}

uint64_t sub_181CA3CAC()
{
  v12[3] = *MEMORY[0x1E69E9840];
  v0 = sub_182AD2058();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_182AD1F58();
  v4 = sub_182AD1F98();
  (*(v1 + 8))(v3, v0);
  isStackAllocationSafe = CFURLGetBytes(v4, 0, 0);
  if (isStackAllocationSafe < 0)
  {
    __break(1u);
  }

  v6 = isStackAllocationSafe;
  if (isStackAllocationSafe <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_181CA3EC4(&v11[-v7], v6, v4, v12);
    v8 = v12[0];
  }

  else
  {
    v10 = swift_slowAlloc();
    sub_181CA3EC4(v10, v6, v4, v12);
    MEMORY[0x1865DF520](v10, -1, -1);

    return v12[0];
  }

  return v8;
}

uint64_t sub_181CA3EC4@<X0>(UInt8 *buffer@<X0>, CFIndex bufferLength@<X1>, CFURLRef url@<X2>, void *a4@<X8>)
{
  v6 = url;
  v7 = buffer;
  CFURLGetBytes(url, buffer, bufferLength);
  v9 = CFURLGetByteRangeForComponent(v6, kCFURLComponentScheme, 0);
  if (v9.location == -1)
  {
    __break(1u);
    goto LABEL_57;
  }

  v10 = v9.location + v9.length;
  if (__OFADD__(v9.location, v9.length))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v10 < v9.location)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  if (v10 != v9.location)
  {
    v12 = sub_181AC1BE8(v9.length, 0);
    v11 = v12;
    if (v7)
    {
      v13 = (v7 + v9.location);
    }

    else
    {
      v13 = 0;
    }

    memcpy(v12 + 4, v13, v9.length);
  }

  v14 = CFURLGetByteRangeForComponent(v6, kCFURLComponentHost, 0);
  if (v14.location == -1)
  {
    v20 = 0;
    goto LABEL_23;
  }

  length = v14.length;
  v16 = CFURLGetByteRangeForComponent(v6, kCFURLComponentPort, 0);
  if (v16.location != -1)
  {
    v17 = v16.location + v16.length;
    if (__OFADD__(v16.location, v16.length))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    length = v17 - v14.location;
    if (__OFSUB__(v17, v14.location))
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }
  }

  v18 = v14.location + length;
  if (__OFADD__(v14.location, length))
  {
    goto LABEL_59;
  }

  v19 = length;
  if (v18 < v14.location)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v18 == v14.location)
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v21 = sub_181AC1BE8(length, 0);
    v20 = v21;
    if (v7)
    {
      v22 = (v7 + v14.location);
    }

    else
    {
      v22 = 0;
    }

    memcpy(v21 + 4, v22, v19);
  }

LABEL_23:
  v23 = CFURLGetByteRangeForComponent(v6, kCFURLComponentPath, 0);
  location = v23.location;
  v27 = CFURLGetByteRangeForComponent(v6, kCFURLComponentQuery, 0);
  v26 = v27.length;
  result = v27.location;
  if (v23.location == -1)
  {
    goto LABEL_29;
  }

  if (v27.location != -1)
  {
    v28 = v27.location + v27.length;
    if (__OFADD__(v27.location, v27.length))
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v26 = v28 - v23.location;
    if (!__OFSUB__(v28, v23.location))
    {
LABEL_30:
      if (v23.length)
      {
        goto LABEL_31;
      }

      goto LABEL_41;
    }

    __break(1u);
LABEL_29:
    location = v27.location;
    goto LABEL_30;
  }

  v26 = v23.length;
  if (v23.length)
  {
LABEL_31:
    v29 = location + v26;
    if (!__OFADD__(location, v26))
    {
      v30 = v26;
      if (v29 >= location)
      {
        if (v29 == location)
        {
          v6 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v31 = sub_181AC1BE8(v26, 0);
          v6 = v31;
          if (v7)
          {
            v32 = (v7 + location);
          }

          else
          {
            v32 = 0;
          }

          result = memcpy(v31 + 4, v32, v30);
        }

        goto LABEL_55;
      }

      goto LABEL_62;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_41:
  if (!v26)
  {
    v6 = &unk_1EEF96E00;
    goto LABEL_55;
  }

  if (__OFADD__(location, v26))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v33 = v26;
  if (location + v26 < location)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v7)
  {
    v34 = (v7 + location);
  }

  else
  {
    v34 = 0;
  }

  v7 = v26 + 1;
  if (__OFADD__(v26, 1))
  {
    goto LABEL_68;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v26 != -1)
  {
    result = sub_182AD3428();
    v6 = result;
    *(result + 16) = v7;
    *(result + 32) = 47;
    if (v34)
    {
      result = memmove((result + 33), v34, v33);
    }

    if (v4)
    {
      goto LABEL_71;
    }

    *(v6 + 2) = v7;
LABEL_55:
    *a4 = v11;
    a4[1] = v20;
    a4[2] = v6;
    return result;
  }

LABEL_70:
  *(v5 + 32) = 47;
  __break(1u);
LABEL_71:
  *(v6 + 2) = v7;

  __break(1u);
  return result;
}

void nw_parameters_clear_custom_proxy_configs(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_clear_custom_proxy_configs(a1);
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_clear_custom_proxy_configs";
  v2 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_clear_custom_proxy_configs";
        v5 = "%{public}s called with null parameters";
LABEL_18:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else
    {
      if (v8 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v3 = __nwlog_obj();
        v4 = type;
        v7 = os_log_type_enabled(v3, type);
        if (backtrace_string)
        {
          if (v7)
          {
            *buf = 136446466;
            v11 = "nw_parameters_clear_custom_proxy_configs";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_parameters_clear_custom_proxy_configs";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_clear_custom_proxy_configs";
        v5 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }
}

uint64_t sub_181CA4444(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386B8);
    v8 = swift_allocObject();
    v11 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v11;
    if (v11 >= 1)
    {
      sub_1820E5348(v8 + 16, v8 + 40, v4, v3 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386B8);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 40;
      if (v9 < 40)
      {
        v10 = v9 - 33;
      }

      *(v8 + 16) = v10 >> 3;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181AB76EC(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386B8);
      v8 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v8);
      v13 = v12 - 40;
      if (v12 < 40)
      {
        v13 = v12 - 33;
      }

      v14 = *(v3 + 24);
      *(v8 + 16) = v13 >> 3;
      *(v8 + 24) = v14;
      *(v8 + 32) = 0;
      if (v14 >= 1)
      {
        sub_181F47450(v8 + 16, v8 + 40, v4, v3 + 40);
      }
    }
  }

  *v2 = v8;
  return result;
}

uint64_t nw_http_request_create_from_url(uint64_t a1, const char *a2)
{
  if (a1)
  {
    if (a2)
    {
      return _nw_http_request_create_from_url(a1, a2);
    }
  }

  else
  {
    v3 = a2;
    v4 = __nwlog_obj();
    os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    v5 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v5);
    if (result)
    {
      goto LABEL_8;
    }

    free(v5);
    a2 = v3;
    a1 = 0;
    if (v3)
    {
      return _nw_http_request_create_from_url(a1, a2);
    }
  }

  v6 = a1;
  v7 = a2;
  v8 = __nwlog_obj();
  os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  v9 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v9);
  if (!result)
  {
    free(v9);
    a2 = v7;
    a1 = v6;
    return _nw_http_request_create_from_url(a1, a2);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_181CA4798(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v20 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result >> 14;
    if (result >> 14 == v5)
    {
      return v10 == v5;
    }

    v11 = result & 0xC;
    v12 = result;
    if (v11 == v7)
    {
      v16 = result;
      v12 = sub_18208A330(result, a1, a2);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v18 = result;
      v15 = sub_182AD31C8();
      result = v18;
      if (v11 != v7)
      {
        goto LABEL_18;
      }

LABEL_23:
      result = sub_18208A330(result, a1, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_19;
      }

LABEL_7:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v15 < 0)
      {
        return v10 == v5;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v20;
        v14 = v19;
      }

      else
      {
        v14 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v17 = result;
          v14 = sub_182AD3CF8();
          result = v17;
        }
      }

      v15 = *(v14 + v13);
      if (v11 == v7)
      {
        goto LABEL_23;
      }

LABEL_18:
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_19:
      if (v4 <= result >> 16)
      {
        goto LABEL_27;
      }

      result = sub_182AD3178();
      if (v15 < 0)
      {
        return v10 == v5;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void ___ZL41nw_resolver_start_delayed_reporting_timerP22NWConcrete_nw_resolverbbb_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(a1 + 32);
  if (v2)
  {
    if ((*(v2 + 370) & 0x20) != 0)
    {
      goto LABEL_23;
    }

    if (*(v2 + 280))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v3 = gconnectionLogObj;
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      v4 = *(a1 + 32);
      v5 = *(v4 + 24);
      v6 = v5;
      if (v5)
      {
        logging_description = _nw_endpoint_get_logging_description(v5);
      }

      else
      {
        logging_description = "<NULL>";
      }

      v20 = 136446722;
      v21 = "nw_resolver_start_delayed_reporting_timer_block_invoke";
      v22 = 2082;
      *v23 = v4 + 280;
      *&v23[8] = 2082;
      *&v23[10] = logging_description;
      v16 = "%{public}s [C%{public}s] Delayed reporting timer fired: did not receive all results in time, reporting partial results for %{public}s";
      v17 = v3;
      v18 = 32;
      goto LABEL_21;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
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

      v20 = 136446722;
      v21 = "nw_resolver_start_delayed_reporting_timer_block_invoke";
      v22 = 1024;
      *v23 = v12;
      *&v23[4] = 2082;
      *&v23[6] = v15;
      v16 = "%{public}s [R%u] Delayed reporting timer fired: did not receive all results in time, reporting partial results for %{public}s";
      v17 = v3;
      v18 = 28;
LABEL_21:
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, v16, &v20, v18);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(*(a1 + 32) + 24);
      v9 = v8;
      if (v8)
      {
        v10 = _nw_endpoint_get_logging_description(v8);
      }

      else
      {
        v10 = "<NULL>";
      }

      v20 = 136446466;
      v21 = "nw_resolver_start_delayed_reporting_timer_block_invoke";
      v22 = 2082;
      *v23 = v10;
      v16 = "%{public}s Delayed reporting timer fired: did not receive all results in time, reporting partial results for %{public}s";
      v17 = v3;
      v18 = 22;
      goto LABEL_21;
    }
  }

LABEL_22:

  v2 = *(a1 + 32);
LABEL_23:
  nw_resolver_cancel_delayed_reporting_timer(v2);
  v19 = *(a1 + 32);
  if (*(v19 + 96))
  {
    nw_resolver_update_client(v19, 0);
    v19 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v19 + 12));
}

uint64_t nw_protocol_get_input_handler(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 48);
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_protocol_get_input_handler";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_input_handler";
        v5 = "%{public}s called with null protocol";
LABEL_17:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }

    else if (v8 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v7 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v7)
        {
          *buf = 136446466;
          v11 = "__nw_protocol_get_input_handler";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_input_handler";
        v5 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_protocol_get_input_handler";
        v5 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

BOOL nw_endpoint_flow_join_protocol(void *a1, void *a2, void *a3, void *a4, void *a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, _BYTE *a10)
{
  v111 = *MEMORY[0x1E69E9840];
  v17 = a1;
  v88 = a2;
  v89 = a3;
  v18 = a4;
  v87 = nw_protocols_are_equal(*(a7 + 16), a5);
  if (!v87)
  {
    goto LABEL_76;
  }

  v86 = v18;
  nw_endpoint_handler_set_protocol_instance(v17, v89, v18, a7);
  v19 = *(a7 + 24);
  if (v19)
  {
    v20 = *(v19 + 112);
    if (v20)
    {
      v21 = *(a7 + 40);
      v22 = a7;
      if (v21 != &nw_protocol_ref_counted_handle)
      {
        if (v21 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v22) = 0;
          v23 = 1;
LABEL_11:
          *buf = a7;
          buf[8] = v22;
          v25 = v20(a7);
          if ((v23 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(buf);
          }

          nw_parameters_inherit_protocol_instances(v88, a6, v25, a7, a9);

          goto LABEL_14;
        }

        v22 = *(a7 + 64);
        if (!v22)
        {
          v23 = 1;
          goto LABEL_11;
        }
      }

      v24 = *(v22 + 88);
      v23 = 0;
      if (v24)
      {
        *(v22 + 88) = v24 + 1;
      }

      LOBYTE(v22) = -1;
      goto LABEL_11;
    }
  }

LABEL_14:
  if (!a8)
  {
    v66 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_utilities_add_input_handler";
    v39 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (__nwlog_fault(v39, type, &v90))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v67 = type[0];
        if (os_log_type_enabled(v40, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_utilities_add_input_handler";
          _os_log_impl(&dword_181A37000, v40, v67, "%{public}s called with null input_protocol", buf, 0xCu);
        }

LABEL_60:

        goto LABEL_61;
      }

      if (v90 != 1)
      {
        v40 = __nwlog_obj();
        v72 = type[0];
        if (os_log_type_enabled(v40, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_utilities_add_input_handler";
          _os_log_impl(&dword_181A37000, v40, v72, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_60;
      }

      backtrace_string = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v70 = type[0];
      v71 = os_log_type_enabled(v69, type[0]);
      if (backtrace_string)
      {
        if (v71)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_utilities_add_input_handler";
          v93 = 2082;
          v94 = backtrace_string;
          _os_log_impl(&dword_181A37000, v69, v70, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
      }

      else
      {
        if (v71)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_utilities_add_input_handler";
          _os_log_impl(&dword_181A37000, v69, v70, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
        }
      }
    }

LABEL_61:
    if (!v39)
    {
      goto LABEL_63;
    }

LABEL_62:
    free(v39);
    goto LABEL_63;
  }

  if (a7 == a8)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v38 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "nw_protocol_utilities_add_input_handler";
    v93 = 2048;
    v94 = a7;
    v39 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (!__nwlog_fault(v39, type, &v90))
    {
      goto LABEL_61;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v40 = gLogObj;
      v41 = type[0];
      if (os_log_type_enabled(v40, type[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_utilities_add_input_handler";
        v93 = 2048;
        v94 = a7;
        _os_log_impl(&dword_181A37000, v40, v41, "%{public}s Cannot add input handler %p to itself", buf, 0x16u);
      }
    }

    else if (v90 == 1)
    {
      v43 = __nw_create_backtrace_string();
      if (v43)
      {
        v44 = v43;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v45 = gLogObj;
        v46 = type[0];
        if (os_log_type_enabled(v45, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_utilities_add_input_handler";
          v93 = 2048;
          v94 = a7;
          v95 = 2082;
          v96 = v44;
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s Cannot add input handler %p to itself, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v44);
        if (!v39)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      v40 = __nwlog_obj();
      v53 = type[0];
      if (os_log_type_enabled(v40, type[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_utilities_add_input_handler";
        v93 = 2048;
        v94 = a7;
        _os_log_impl(&dword_181A37000, v40, v53, "%{public}s Cannot add input handler %p to itself, no backtrace", buf, 0x16u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v40 = gLogObj;
      v47 = type[0];
      if (os_log_type_enabled(v40, type[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_utilities_add_input_handler";
        v93 = 2048;
        v94 = a7;
        _os_log_impl(&dword_181A37000, v40, v47, "%{public}s Cannot add input handler %p to itself, backtrace limit exceeded", buf, 0x16u);
      }
    }

    goto LABEL_60;
  }

  v26 = *(a7 + 24);
  if (v26 && *v26)
  {
    if (nw_protocol_add_input_handler(a7, a8))
    {
      v85 = nw_endpoint_handler_copy_flow(v17);
      v27 = nw_parameters_copy_context(v88);
      v28 = 0;
      v84 = v27;
      do
      {
        if (!uuid_is_null(a8))
        {
          v28 = a8;
        }

        a8 = *(a8 + 32);
      }

      while (a8);
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = a7;
      }

      v82 = v29;
      v83 = nw_path_copy_flow_registration(v27, v29);
      objc_storeStrong(v85 + 104, v83);
      minimize_logging = nw_endpoint_handler_get_minimize_logging(v17);
      logging_disabled = nw_endpoint_handler_get_logging_disabled(v17);
      if (minimize_logging)
      {
        if (logging_disabled)
        {
          goto LABEL_57;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v32 = gconnectionLogObj;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          id_string = nw_endpoint_handler_get_id_string(v17);
          v74 = nw_endpoint_handler_dry_run_string(v17);
          v75 = nw_endpoint_handler_copy_endpoint(v17);
          logging_description = nw_endpoint_get_logging_description(v75);
          v77 = nw_endpoint_handler_state_string(v17);
          v78 = nw_endpoint_handler_mode_string(v17);
          v79 = nw_endpoint_handler_copy_current_path(v17);
          v80 = v79;
          v81 = "invalid";
          if (a7 && *(a7 + 16))
          {
            v81 = *(a7 + 16);
          }

          *buf = 136448514;
          *&buf[4] = "nw_endpoint_flow_join_protocol";
          v93 = 2082;
          v94 = id_string;
          v95 = 2082;
          v96 = v74;
          v97 = 2082;
          v98 = logging_description;
          v99 = 2082;
          v100 = v77;
          v101 = 2082;
          v102 = v78;
          v103 = 2114;
          v104 = v79;
          v105 = 2082;
          v106 = v81;
          v107 = 1042;
          v108 = 16;
          v109 = 2098;
          v110 = v82;
          _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Joined protocol %{public}s, using flow id %{public,uuid_t}.16P", buf, 0x62u);
        }
      }

      else
      {
        if (logging_disabled)
        {
LABEL_57:

          v18 = v86;
          goto LABEL_76;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v32 = gconnectionLogObj;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = nw_endpoint_handler_get_id_string(v17);
          v34 = nw_endpoint_handler_dry_run_string(v17);
          v35 = nw_endpoint_handler_copy_endpoint(v17);
          v36 = v35;
          if (v35)
          {
            v37 = _nw_endpoint_get_logging_description(v35);
          }

          else
          {
            v37 = "<NULL>";
          }

          v48 = nw_endpoint_handler_state_string(v17);
          v49 = nw_endpoint_handler_mode_string(v17);
          v50 = nw_endpoint_handler_copy_current_path(v17);
          v51 = v50;
          v52 = "invalid";
          if (a7 && *(a7 + 16))
          {
            v52 = *(a7 + 16);
          }

          *buf = 136448514;
          *&buf[4] = "nw_endpoint_flow_join_protocol";
          v93 = 2082;
          v94 = v33;
          v95 = 2082;
          v96 = v34;
          v97 = 2082;
          v98 = v37;
          v99 = 2082;
          v100 = v48;
          v101 = 2082;
          v102 = v49;
          v103 = 2114;
          v104 = v50;
          v105 = 2082;
          v106 = v52;
          v107 = 1042;
          v108 = 16;
          v109 = 2098;
          v110 = v82;
          _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Joined protocol %{public}s, using flow id %{public,uuid_t}.16P", buf, 0x62u);
        }
      }

      goto LABEL_57;
    }

    goto LABEL_64;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v42 = gLogObj;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_utilities_add_input_handler";
    v93 = 2048;
    v94 = a7;
    _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s Unable to invoke add_input_handler on protocol %p because it is not valid", buf, 0x16u);
  }

LABEL_63:
  v18 = v86;
LABEL_64:
  if ((nw_endpoint_handler_get_logging_disabled(v17) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v54 = gconnectionLogObj;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = nw_endpoint_handler_get_id_string(v17);
      v56 = nw_endpoint_handler_dry_run_string(v17);
      v57 = nw_endpoint_handler_copy_endpoint(v17);
      v58 = v57;
      if (v57)
      {
        v59 = _nw_endpoint_get_logging_description(v57);
      }

      else
      {
        v59 = "<NULL>";
      }

      v60 = nw_endpoint_handler_state_string(v17);
      v61 = nw_endpoint_handler_mode_string(v17);
      v62 = nw_endpoint_handler_copy_current_path(v17);
      v63 = v62;
      v64 = *(a7 + 16);
      *&buf[4] = "nw_endpoint_flow_join_protocol";
      *buf = 136448002;
      if (!v64)
      {
        v64 = "invalid";
      }

      v93 = 2082;
      v94 = v55;
      v95 = 2082;
      v96 = v56;
      v97 = 2082;
      v98 = v59;
      v99 = 2082;
      v100 = v60;
      v101 = 2082;
      v102 = v61;
      v103 = 2114;
      v104 = v62;
      v105 = 2082;
      v106 = v64;
      _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to join protocol %{public}s", buf, 0x52u);
    }

    v18 = v86;
  }

  *a10 = 1;
LABEL_76:

  return v87;
}

BOOL sub_181CA5B7C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v7[0] = a3;
  v7[1] = a4;
  v8 = a5;
  v9 = BYTE2(a5);
  v5 = HIDWORD(a5);
  v10 = BYTE3(a5);
  if (BYTE4(a5))
  {
    if (a2)
    {
      *a2 = BYTE4(a5);
    }

    v11[0] = v7;
    v11[1] = v11;
    sub_181CA5CCC();
    sub_182AD1CD8();
  }

  return v5 != 0;
}

unint64_t sub_181CA5CCC()
{
  result = qword_1ED40FBD0;
  if (!qword_1ED40FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED40FBD0);
  }

  return result;
}

uint64_t nw_protocol_metadata_access_handle(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_metadata_access_handle";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_metadata_access_handle";
        v10 = "%{public}s called with null metadata";
LABEL_34:
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
          v19 = "nw_protocol_metadata_access_handle";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v7)
        {
          return 0;
        }

LABEL_37:
        free(v7);
        return 0;
      }

      if (v13)
      {
        *buf = 136446210;
        v19 = "nw_protocol_metadata_access_handle";
        v10 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_34;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_metadata_access_handle";
        v10 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  if (!a2)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_metadata_access_handle";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_metadata_access_handle";
        v10 = "%{public}s called with null access_block";
        goto LABEL_34;
      }
    }

    else
    {
      if (v16 == 1)
      {
        v14 = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v15 = os_log_type_enabled(v8, type);
        if (v14)
        {
          if (v15)
          {
            *buf = 136446466;
            v19 = "nw_protocol_metadata_access_handle";
            v20 = 2082;
            v21 = v14;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null access_block, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v14);
          if (!v7)
          {
            return 0;
          }

          goto LABEL_37;
        }

        if (!v15)
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v19 = "nw_protocol_metadata_access_handle";
        v10 = "%{public}s called with null access_block, no backtrace";
        goto LABEL_34;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_metadata_access_handle";
        v10 = "%{public}s called with null access_block, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

    goto LABEL_35;
  }

  handle = _nw_protocol_metadata_get_handle(a1);
  if (!handle)
  {
    return 0;
  }

  v4 = *(a2 + 16);

  return v4(a2, handle);
}

uint64_t nw_parameters_get_is_probe(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_is_probe(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_is_probe";
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
        v12 = "nw_parameters_get_is_probe";
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
            v12 = "nw_parameters_get_is_probe";
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
        v12 = "nw_parameters_get_is_probe";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_is_probe";
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

unint64_t nw_interface_get_l4s_mode(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_get_l4s_mode(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_get_l4s_mode";
  v13 = 2082;
  v14 = "Invalid interface object";
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
        *buf = 136446466;
        v12 = "nw_interface_get_l4s_mode";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0x16u);
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
            *buf = 136446722;
            v12 = "nw_interface_get_l4s_mode";
            v13 = 2082;
            v14 = "Invalid interface object";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v12 = "nw_interface_get_l4s_mode";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446466;
        v12 = "nw_interface_get_l4s_mode";
        v13 = 2082;
        v14 = "Invalid interface object";
        v6 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
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

unint64_t _nw_interface_get_l4s_mode(uint64_t a1)
{
  result = *(*(a1 + OBJC_IVAR____TtC7Network13__NWInterface_interface) + 128);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t nw_protocol_options_get_log_id_num(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_options_get_log_id_num(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_options_get_log_id_num";
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
        v12 = "nw_protocol_options_get_log_id_num";
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
            v12 = "nw_protocol_options_get_log_id_num";
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
        v12 = "nw_protocol_options_get_log_id_num";
        v6 = "%{public}s called with null options, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_options_get_log_id_num";
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

uint64_t _nw_protocol_options_get_log_id_num(uint64_t a1)
{
  v1 = a1 + *(*a1 + 160);

  swift_beginAccess();
  v2 = *v1;
  LOBYTE(v1) = *(v1 + 8);

  if (v1)
  {
    LOWORD(v2) = 0;
    return v2;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v2 >> 16))
  {
    return v2;
  }

  __break(1u);
  return result;
}

BOOL nw_parameters_get_fast_open_enabled(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_get_fast_open_enabled(parameters);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_fast_open_enabled";
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
        v12 = "nw_parameters_get_fast_open_enabled";
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
            v12 = "nw_parameters_get_fast_open_enabled";
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
        v12 = "nw_parameters_get_fast_open_enabled";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_fast_open_enabled";
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

uint64_t sub_181CA6CFC()
{
  swift_getAssociatedTypeWitness();
  result = sub_182AD39B8();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_181CA6DCC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_181CA6E08(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void ___ZL36nw_protocol_copy_resolver_definitionv_block_invoke()
{
  named = nw_protocol_definition_create_named(1, 0);
  v1 = nw_protocol_copy_resolver_definition(void)::resolver_definition;
  nw_protocol_copy_resolver_definition(void)::resolver_definition = named;

  nw_protocol_definition_set_cache_entry_deallocator(nw_protocol_copy_resolver_definition(void)::resolver_definition, nw_resolver_deallocate_cache_entry);
  v2 = nw_protocol_copy_resolver_definition(void)::resolver_definition;

  nw_protocol_definition_set_should_flush_cache_entry(v2, nw_resolver_should_flush_cache_entry);
}

uint64_t nw_protocol_definition_create_named(int a1, unsigned __int8 *a2)
{
  *&v65[13] = *MEMORY[0x1E69E9840];
  if ((a1 - 4) > 0xFFFFFFFC)
  {
    v9 = objc_alloc_init(NWConcrete_nw_protocol_definition);
    v7 = v9;
    if (v9)
    {
      uuid_generate_random(v9->unique_identifier);
      if (a2)
      {
        v10 = *a2;
        *(v7 + 8) = v10;
        if (v10)
        {
          v11 = a2[1];
          *(v7 + 9) = v11;
          if (v11)
          {
            v12 = a2[2];
            *(v7 + 10) = v12;
            if (v12)
            {
              v13 = a2[3];
              *(v7 + 11) = v13;
              if (v13)
              {
                v14 = a2[4];
                *(v7 + 12) = v14;
                if (v14)
                {
                  v15 = a2[5];
                  *(v7 + 13) = v15;
                  if (v15)
                  {
                    v16 = a2[6];
                    *(v7 + 14) = v16;
                    if (v16)
                    {
                      v17 = a2[7];
                      *(v7 + 15) = v17;
                      if (v17)
                      {
                        v18 = a2[8];
                        *(v7 + 16) = v18;
                        if (v18)
                        {
                          v19 = a2[9];
                          *(v7 + 17) = v19;
                          if (v19)
                          {
                            v20 = a2[10];
                            *(v7 + 18) = v20;
                            if (v20)
                            {
                              v21 = a2[11];
                              *(v7 + 19) = v21;
                              if (v21)
                              {
                                v22 = a2[12];
                                *(v7 + 20) = v22;
                                if (v22)
                                {
                                  v23 = a2[13];
                                  *(v7 + 21) = v23;
                                  if (v23)
                                  {
                                    v24 = a2[14];
                                    *(v7 + 22) = v24;
                                    if (v24)
                                    {
                                      v25 = a2[15];
                                      *(v7 + 23) = v25;
                                      if (v25)
                                      {
                                        v26 = a2[16];
                                        *(v7 + 24) = v26;
                                        if (v26)
                                        {
                                          v27 = a2[17];
                                          *(v7 + 25) = v27;
                                          if (v27)
                                          {
                                            v28 = a2[18];
                                            *(v7 + 26) = v28;
                                            if (v28)
                                            {
                                              v29 = a2[19];
                                              *(v7 + 27) = v29;
                                              if (v29)
                                              {
                                                v30 = a2[20];
                                                *(v7 + 28) = v30;
                                                if (v30)
                                                {
                                                  v31 = a2[21];
                                                  *(v7 + 29) = v31;
                                                  if (v31)
                                                  {
                                                    v32 = a2[22];
                                                    *(v7 + 30) = v32;
                                                    if (v32)
                                                    {
                                                      v33 = a2[23];
                                                      *(v7 + 31) = v33;
                                                      if (v33)
                                                      {
                                                        v34 = a2[24];
                                                        *(v7 + 32) = v34;
                                                        if (v34)
                                                        {
                                                          v35 = a2[25];
                                                          *(v7 + 33) = v35;
                                                          if (v35)
                                                          {
                                                            v36 = a2[26];
                                                            *(v7 + 34) = v36;
                                                            if (v36)
                                                            {
                                                              v37 = a2[27];
                                                              *(v7 + 35) = v37;
                                                              if (v37)
                                                              {
                                                                v38 = a2[28];
                                                                *(v7 + 36) = v38;
                                                                if (v38)
                                                                {
                                                                  v39 = a2[29];
                                                                  *(v7 + 37) = v39;
                                                                  if (v39)
                                                                  {
                                                                    v40 = a2[30];
                                                                    *(v7 + 38) = v40;
                                                                    if (v40)
                                                                    {
                                                                      *(v7 + 39) = 0;
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        uuid_unparse((v7 + 48), (v7 + 8));
      }

      if (a1 == 3)
      {
        v49 = 2;
      }

      else
      {
        v49 = 1;
      }

      *(v7 + 40) = 0;
      *(v7 + 44) = v49;
      *(v7 + 64) = a1;
      swift_identifier = _nw_protocol_identifier_create_swift_identifier(v7);
      v51 = *(v7 + 184);
      *(v7 + 184) = swift_identifier;

      v52 = v7;
      goto LABEL_65;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v44 = gLogObj;
    *buf = 136446210;
    v63 = "nw_protocol_definition_create_named";
    v45 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v60 = 0;
    if (__nwlog_fault(v45, &type, &v60))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v46 = gLogObj;
        v47 = type;
        if (os_log_type_enabled(v46, type))
        {
          *buf = 136446210;
          v63 = "nw_protocol_definition_create_named";
          _os_log_impl(&dword_181A37000, v46, v47, "%{public}s [nw_protocol_definition init] failed", buf, 0xCu);
        }
      }

      else if (v60 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v55 = backtrace_string;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v56 = gLogObj;
          v57 = type;
          if (os_log_type_enabled(v56, type))
          {
            *buf = 136446466;
            v63 = "nw_protocol_definition_create_named";
            v64 = 2082;
            *v65 = v55;
            _os_log_impl(&dword_181A37000, v56, v57, "%{public}s [nw_protocol_definition init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v55);
          if (!v45)
          {
            goto LABEL_65;
          }

          goto LABEL_56;
        }

        v46 = __nwlog_obj();
        v59 = type;
        if (os_log_type_enabled(v46, type))
        {
          *buf = 136446210;
          v63 = "nw_protocol_definition_create_named";
          _os_log_impl(&dword_181A37000, v46, v59, "%{public}s [nw_protocol_definition init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v46 = gLogObj;
        v58 = type;
        if (os_log_type_enabled(v46, type))
        {
          *buf = 136446210;
          v63 = "nw_protocol_definition_create_named";
          _os_log_impl(&dword_181A37000, v46, v58, "%{public}s [nw_protocol_definition init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v45)
    {
LABEL_65:

      return v7;
    }

LABEL_56:
    free(v45);
    goto LABEL_65;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  *buf = 136446466;
  v63 = "nw_protocol_definition_create_named";
  v64 = 1024;
  *v65 = a1;
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v60 = 0;
  if (__nwlog_fault(v4, &type, &v60))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446466;
        v63 = "nw_protocol_definition_create_named";
        v64 = 1024;
        *v65 = a1;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s Invalid protocol variant %u", buf, 0x12u);
      }
    }

    else if (v60 == 1)
    {
      v41 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v42 = type;
      v43 = os_log_type_enabled(v5, type);
      if (v41)
      {
        if (v43)
        {
          *buf = 136446722;
          v63 = "nw_protocol_definition_create_named";
          v64 = 1024;
          *v65 = a1;
          v65[2] = 2082;
          *&v65[3] = v41;
          _os_log_impl(&dword_181A37000, v5, v42, "%{public}s Invalid protocol variant %u, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v41);
        if (!v4)
        {
          return 0;
        }

        goto LABEL_8;
      }

      if (v43)
      {
        *buf = 136446466;
        v63 = "nw_protocol_definition_create_named";
        v64 = 1024;
        *v65 = a1;
        _os_log_impl(&dword_181A37000, v5, v42, "%{public}s Invalid protocol variant %u, no backtrace", buf, 0x12u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v48 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446466;
        v63 = "nw_protocol_definition_create_named";
        v64 = 1024;
        *v65 = a1;
        _os_log_impl(&dword_181A37000, v5, v48, "%{public}s Invalid protocol variant %u, backtrace limit exceeded", buf, 0x12u);
      }
    }
  }

  if (v4)
  {
LABEL_8:
    free(v4);
  }

  return 0;
}

void nw_protocol_callbacks_set_connected(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 40) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_connected";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_connected";
        v5 = "%{public}s called with null connected";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_connected";
        v5 = "%{public}s called with null connected, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_connected";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null connected, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_connected";
        v5 = "%{public}s called with null connected, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_connected";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_connected";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_connected";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_connected";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_connected";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

uint64_t sub_181CA7AF4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_181CA7B38(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t nw_path_get_sysctls_region()
{
  if (nw_path_get_sysctls_region::sSysctlsRegion != -1)
  {
    dispatch_once(&nw_path_get_sysctls_region::sSysctlsRegion, &__block_literal_global_180_72439);
  }

  return nw_path_get_sysctls_region::sysctls_region;
}

void ____nwlog_tcp_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    gtcpLogObj = os_log_create(nw_oslog_subsystem, "tcp");
  }
}

uint64_t nw_tcp_allocate_globals(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = malloc_type_calloc(1uLL, 0x154uLL, 0xFCC3CD0BuLL);
  if (v5)
  {
    goto LABEL_4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  v7 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
LABEL_4:
    nw_tcp_init_globals();

    return v5;
  }

  __break(1u);
  return result;
}

void __nw_path_get_sysctls_region_block_invoke()
{
  v114 = *MEMORY[0x1E69E9840];
  if (nw_context_copy_implicit_context::onceToken[0] != -1)
  {
    dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
  }

  v0 = nw_context_copy_implicit_context::implicit_context;
  v1 = nw_path_shared_necp_fd(v0);

  if (v1 < 0)
  {
    return;
  }

  v107 = 0;
  if (!necp_client_action())
  {
    nw_path_get_sysctls_region::sysctls_region = v107;
    goto LABEL_17;
  }

  v2 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  *buf = 136446978;
  v109 = "nw_path_get_sysctls_region_block_invoke";
  v110 = 1024;
  *v111 = v1;
  *&v111[4] = 2048;
  *&v111[6] = 8;
  *&v111[14] = 1024;
  *&v111[16] = v2;
  v4 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v106 = 0;
  if (!__nwlog_fault(v4, type, &v106))
  {
LABEL_10:
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type[0];
    if (os_log_type_enabled(v5, type[0]))
    {
      *buf = 136446978;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      v110 = 1024;
      *v111 = v1;
      *&v111[4] = 2048;
      *&v111[6] = 8;
      *&v111[14] = 1024;
      *&v111[16] = v2;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s necp_client_action(%d, NECP_CLIENT_ACTION_MAP_SYSCTLS, NULL, 0, &address, %zu) %{darwin.errno}d", buf, 0x22u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (v106 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v104 = type[0];
    if (os_log_type_enabled(v5, type[0]))
    {
      *buf = 136446978;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      v110 = 1024;
      *v111 = v1;
      *&v111[4] = 2048;
      *&v111[6] = 8;
      *&v111[14] = 1024;
      *&v111[16] = v2;
      _os_log_impl(&dword_181A37000, v5, v104, "%{public}s necp_client_action(%d, NECP_CLIENT_ACTION_MAP_SYSCTLS, NULL, 0, &address, %zu) %{darwin.errno}d, backtrace limit exceeded", buf, 0x22u);
    }

    goto LABEL_9;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  v102 = type[0];
  v103 = os_log_type_enabled(v5, type[0]);
  if (!backtrace_string)
  {
    if (v103)
    {
      *buf = 136446978;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      v110 = 1024;
      *v111 = v1;
      *&v111[4] = 2048;
      *&v111[6] = 8;
      *&v111[14] = 1024;
      *&v111[16] = v2;
      _os_log_impl(&dword_181A37000, v5, v102, "%{public}s necp_client_action(%d, NECP_CLIENT_ACTION_MAP_SYSCTLS, NULL, 0, &address, %zu) %{darwin.errno}d, no backtrace", buf, 0x22u);
    }

    goto LABEL_9;
  }

  if (v103)
  {
    *buf = 136447234;
    v109 = "nw_path_get_sysctls_region_block_invoke";
    v110 = 1024;
    *v111 = v1;
    *&v111[4] = 2048;
    *&v111[6] = 8;
    *&v111[14] = 1024;
    *&v111[16] = v2;
    v112 = 2082;
    v113 = backtrace_string;
    _os_log_impl(&dword_181A37000, v5, v102, "%{public}s necp_client_action(%d, NECP_CLIENT_ACTION_MAP_SYSCTLS, NULL, 0, &address, %zu) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x2Cu);
  }

  free(backtrace_string);
  if (v4)
  {
LABEL_11:
    free(v4);
  }

LABEL_12:
  if (nw_path_get_sysctls_region::sysctls_region)
  {
    if (*nw_path_get_sysctls_region::sysctls_region == 3)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v8 = *nw_path_get_sysctls_region::sysctls_region;
    *buf = 136446722;
    v109 = "nw_path_get_sysctls_region_block_invoke";
    v110 = 1024;
    *v111 = v8;
    *&v111[4] = 1024;
    *&v111[6] = 3;
    v9 = "%{public}s sysctls_region version: %u, expected: %d, synthesizing from sysctlbyname";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 24;
    goto LABEL_19;
  }

LABEL_17:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446210;
    v109 = "nw_path_get_sysctls_region_block_invoke";
    v9 = "%{public}s synthesizing sysctls_region from sysctlbyname";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEBUG;
    v12 = 12;
LABEL_19:
    _os_log_impl(&dword_181A37000, v10, v11, v9, buf, v12);
  }

LABEL_20:

  v13 = malloc_type_calloc(1uLL, 0x158uLL, 0x149130DBuLL);
  if (!v13)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v109 = "nw_path_get_sysctls_region_block_invoke";
    v110 = 2048;
    *v111 = 1;
    *&v111[8] = 2048;
    *&v111[10] = 344;
    v15 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v15))
    {
      __break(1u);
      return;
    }

    free(v15);
  }

  nw_path_get_sysctls_region::sysctls_region = v13;
  *v13 = 3;
  *type = 4;
  if (sysctlbyname("net.inet.tcp.bg_target_qdelay", v13 + 1, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.bg_target_qdelay failed. Using default value: 40", buf, 0xCu);
    }

    v13[1] = 40;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.bg_allowed_increase", v13 + 2, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.bg_allowed_increase failed. Using default value: 8", buf, 0xCu);
    }

    v13[2] = 8;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.bg_tether_shift", v13 + 3, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.bg_tether_shift failed. Using default value: 1", buf, 0xCu);
    }

    v13[3] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.bg_ss_fltsz", v13 + 4, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.bg_ss_fltsz failed. Using default value: 2", buf, 0xCu);
    }

    v13[4] = 2;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.use_newreno", v13 + 5, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.use_newreno failed. Using default value: 0", buf, 0xCu);
    }

    v13[5] = 0;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.cubic_tcp_friendliness", v13 + 6, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.cubic_tcp_friendliness failed. Using default value: 0", buf, 0xCu);
    }

    v13[6] = 0;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.cubic_fast_convergence", v13 + 7, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.cubic_fast_convergence failed. Using default value: 0", buf, 0xCu);
    }

    v13[7] = 0;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.cubic_use_minrtt", v13 + 8, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.cubic_use_minrtt failed. Using default value: 0", buf, 0xCu);
    }

    v13[8] = 0;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.delayed_ack", v13 + 9, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.delayed_ack failed. Using default value: 3", buf, 0xCu);
    }

    v13[9] = 3;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.recvbg", v13 + 10, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.recvbg failed. Using default value: 0", buf, 0xCu);
    }

    v13[10] = 0;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.drop_synfin", v13 + 11, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.drop_synfin failed. Using default value: 1", buf, 0xCu);
    }

    v13[11] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.slowlink_wsize", v13 + 12, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.slowlink_wsize failed. Using default value: 8192", buf, 0xCu);
    }

    v13[12] = 0x2000;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.maxseg_unacked", v13 + 13, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.maxseg_unacked failed. Using default value: 8", buf, 0xCu);
    }

    v13[13] = 8;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.rfc3465", v13 + 14, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v29 = gLogObj;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.rfc3465 failed. Using default value: 1", buf, 0xCu);
    }

    v13[14] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.rfc3465_lim2", v13 + 15, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.rfc3465_lim2 failed. Using default value: 1", buf, 0xCu);
    }

    v13[15] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.recv_allowed_iaj", v13 + 16, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v31 = gLogObj;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.recv_allowed_iaj failed. Using default value: 5", buf, 0xCu);
    }

    v13[16] = 5;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.doautorcvbuf", v13 + 17, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.doautorcvbuf failed. Using default value: 1", buf, 0xCu);
    }

    v13[17] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.autorcvbufmax", v13 + 18, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v33 = gLogObj;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.autorcvbufmax failed. Using default value: 2 * 1024 * 1024", buf, 0xCu);
    }

    v13[18] = 0x200000;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.rcvsspktcnt", v13 + 19, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = gLogObj;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.rcvsspktcnt failed. Using default value: 512", buf, 0xCu);
    }

    v13[19] = 512;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.path_mtu_discovery", v13 + 20, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v35 = gLogObj;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.path_mtu_discovery failed. Using default value: 1", buf, 0xCu);
    }

    v13[20] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.local_slowstart_flightsize", v13 + 21, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = gLogObj;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.local_slowstart_flightsize failed. Using default value: 8", buf, 0xCu);
    }

    v13[21] = 8;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.ecn_setup_percentage", v13 + 22, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v37 = gLogObj;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.ecn_setup_percentage failed. Using default value: 50", buf, 0xCu);
    }

    v13[22] = 50;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.ecn", v13 + 23, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v38 = gLogObj;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.ecn failed. Using default value: 1", buf, 0xCu);
    }

    v13[23] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.packetchain", v13 + 24, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v39 = gLogObj;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.packetchain failed. Using default value: 50", buf, 0xCu);
    }

    v13[24] = 50;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.socket_unlocked_on_output", v13 + 25, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v40 = gLogObj;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.socket_unlocked_on_output failed. Using default value: 1", buf, 0xCu);
    }

    v13[25] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.min_iaj_win", v13 + 26, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v41 = gLogObj;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.min_iaj_win failed. Using default value: 16", buf, 0xCu);
    }

    v13[26] = 16;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.acc_iaj_react_limit", v13 + 27, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v42 = gLogObj;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.acc_iaj_react_limit failed. Using default value: 200", buf, 0xCu);
    }

    v13[27] = 200;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.autosndbufinc", v13 + 28, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v43 = gLogObj;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.autosndbufinc failed. Using default value: 8 * 1024", buf, 0xCu);
    }

    v13[28] = 0x2000;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.autosndbufmax", v13 + 29, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v44 = gLogObj;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.autosndbufmax failed. Using default value: 2 * 1024 * 1024", buf, 0xCu);
    }

    v13[29] = 0x200000;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.rtt_recvbg", v13 + 30, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v45 = gLogObj;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.rtt_recvbg failed. Using default value: 1", buf, 0xCu);
    }

    v13[30] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.recv_throttle_minwin", v13 + 31, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v46 = gLogObj;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.recv_throttle_minwin failed. Using default value: 16 * 1024", buf, 0xCu);
    }

    v13[31] = 0x4000;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.enable_tlp", v13 + 32, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v47 = gLogObj;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.enable_tlp failed. Using default value: 1", buf, 0xCu);
    }

    v13[32] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.sack", v13 + 33, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v48 = gLogObj;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.sack failed. Using default value: 1", buf, 0xCu);
    }

    v13[33] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.sack_maxholes", v13 + 34, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v49 = gLogObj;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.sack_maxholes failed. Using default value: 128", buf, 0xCu);
    }

    v13[34] = 128;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.sack_globalmaxholes", v13 + 35, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v50 = gLogObj;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.sack_globalmaxholes failed. Using default value: 65536", buf, 0xCu);
    }

    v13[35] = 0x10000;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.mssdflt", v13 + 36, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v51 = gLogObj;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.mssdflt failed. Using default value: 512", buf, 0xCu);
    }

    v13[36] = 512;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.v6mssdflt", v13 + 37, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v52 = gLogObj;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.v6mssdflt failed. Using default value: 1024", buf, 0xCu);
    }

    v13[37] = 1024;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.fastopen_backlog", v13 + 38, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v53 = gLogObj;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.fastopen_backlog failed. Using default value: 10", buf, 0xCu);
    }

    v13[38] = 10;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.fastopen", v13 + 39, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v54 = gLogObj;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.fastopen failed. Using default value: 0x3", buf, 0xCu);
    }

    v13[39] = 3;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.minmss", v13 + 40, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v55 = gLogObj;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.minmss failed. Using default value: 216", buf, 0xCu);
    }

    v13[40] = 216;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.icmp_may_rst", v13 + 41, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v56 = gLogObj;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.icmp_may_rst failed. Using default value: 1", buf, 0xCu);
    }

    v13[41] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.rtt_min", v13 + 42, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v57 = gLogObj;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.rtt_min failed. Using default value: 100", buf, 0xCu);
    }

    v13[42] = 100;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.rexmt_slop", v13 + 43, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v58 = gLogObj;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.rexmt_slop failed. Using default value: 200", buf, 0xCu);
    }

    v13[43] = 200;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.randomize_ports", v13 + 44, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v59 = gLogObj;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.randomize_ports failed. Using default value: 0", buf, 0xCu);
    }

    v13[44] = 0;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.win_scale_factor", v13 + 45, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v60 = gLogObj;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.win_scale_factor failed. Using default value: 3", buf, 0xCu);
    }

    v13[45] = 3;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.keepinit", v13 + 46, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v61 = gLogObj;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.keepinit failed. Using default value: 75 * 1000", buf, 0xCu);
    }

    v13[46] = 75000;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.keepidle", v13 + 47, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v62 = gLogObj;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.keepidle failed. Using default value: 120 * 60 * 1000", buf, 0xCu);
    }

    v13[47] = 7200000;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.keepintvl", v13 + 48, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v63 = gLogObj;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.keepintvl failed. Using default value: 75 * 1000", buf, 0xCu);
    }

    v13[48] = 75000;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.keepcnt", v13 + 49, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v64 = gLogObj;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.keepcnt failed. Using default value: 8", buf, 0xCu);
    }

    v13[49] = 8;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.msl", v13 + 50, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v65 = gLogObj;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.msl failed. Using default value: 15 * 1000", buf, 0xCu);
    }

    v13[50] = 15000;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.max_persist_timeout", v13 + 51, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v66 = gLogObj;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.max_persist_timeout failed. Using default value: 0", buf, 0xCu);
    }

    v13[51] = 0;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.always_keepalive", v13 + 52, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v67 = gLogObj;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.always_keepalive failed. Using default value: 0", buf, 0xCu);
    }

    v13[52] = 0;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.timer_fastmode_idlemax", v13 + 53, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v68 = gLogObj;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.timer_fastmode_idlemax failed. Using default value: 10", buf, 0xCu);
    }

    v13[53] = 10;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.broken_peer_syn_rexmit_thres", v13 + 54, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v69 = gLogObj;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.broken_peer_syn_rexmit_thres failed. Using default value: 10", buf, 0xCu);
    }

    v13[54] = 10;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.pmtud_blackhole_detection", v13 + 55, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v70 = gLogObj;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.pmtud_blackhole_detection failed. Using default value: 1", buf, 0xCu);
    }

    v13[55] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.pmtud_blackhole_mss", v13 + 56, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v71 = gLogObj;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.pmtud_blackhole_mss failed. Using default value: 1200", buf, 0xCu);
    }

    v13[56] = 1200;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.sendspace", v13 + 57, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v72 = gLogObj;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.sendspace failed. Using default value: 1024*128", buf, 0xCu);
    }

    v13[57] = 0x20000;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.recvspace", v13 + 58, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v73 = gLogObj;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.recvspace failed. Using default value: 1024*128", buf, 0xCu);
    }

    v13[58] = 0x20000;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.microuptime_init", v13 + 59, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v74 = gLogObj;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.microuptime_init failed. Using default value: 0", buf, 0xCu);
    }

    v13[59] = 0;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.now_init", v13 + 60, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v75 = gLogObj;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.now_init failed. Using default value: 0", buf, 0xCu);
    }

    v13[60] = 0;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.challengeack_limit", v13 + 61, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v76 = gLogObj;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.challengeack_limit failed. Using default value: 10", buf, 0xCu);
    }

    v13[61] = 10;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.init_rtt_from_cache", v13 + 62, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v77 = gLogObj;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.init_rtt_from_cache failed. Using default value: 1", buf, 0xCu);
    }

    v13[62] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.autotunereorder", v13 + 63, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v78 = gLogObj;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.autotunereorder failed. Using default value: 1", buf, 0xCu);
    }

    v13[63] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.do_ack_compression", v13 + 64, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v79 = gLogObj;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.do_ack_compression failed. Using default value: 1", buf, 0xCu);
    }

    v13[64] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.ack_compression_rate", v13 + 65, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v80 = gLogObj;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.ack_compression_rate failed. Using default value: 5", buf, 0xCu);
    }

    v13[65] = 5;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.cubic_minor_fixes", v13 + 66, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v81 = gLogObj;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.cubic_minor_fixes failed. Using default value: 1", buf, 0xCu);
    }

    v13[66] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.cubic_rfc_compliant", v13 + 67, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v82 = gLogObj;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.cubic_rfc_compliant failed. Using default value: 1", buf, 0xCu);
    }

    v13[67] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.randomize_timestamps", v13 + 68, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v83 = gLogObj;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.randomize_timestamps failed. Using default value: 1", buf, 0xCu);
    }

    v13[68] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.ledbat_plus_plus", v13 + 69, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v84 = gLogObj;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.ledbat_plus_plus failed. Using default value: 1", buf, 0xCu);
    }

    v13[69] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.use_ledbat", v13 + 70, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v85 = gLogObj;
    if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.use_ledbat failed. Using default value: 0", buf, 0xCu);
    }

    v13[70] = 0;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.rledbat", v13 + 71, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v86 = gLogObj;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.rledbat failed. Using default value: 1", buf, 0xCu);
    }

    v13[71] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.use_min_curr_rtt", v13 + 72, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v87 = gLogObj;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v87, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.use_min_curr_rtt failed. Using default value: 1", buf, 0xCu);
    }

    v13[72] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.fin_timeout", v13 + 73, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v88 = gLogObj;
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.fin_timeout failed. Using default value: 30", buf, 0xCu);
    }

    v13[73] = 30;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.accurate_ecn", v13 + 74, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v89 = gLogObj;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.accurate_ecn failed. Using default value: 0", buf, 0xCu);
    }

    v13[74] = 0;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.tso", v13 + 75, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v90 = gLogObj;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.tso failed. Using default value: 1", buf, 0xCu);
    }

    v13[75] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.awdl_rtobase", v13 + 76, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v91 = gLogObj;
    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.awdl_rtobase failed. Using default value: 100", buf, 0xCu);
    }

    v13[76] = 100;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.rack", v13 + 77, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v92 = gLogObj;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.rack failed. Using default value: 1", buf, 0xCu);
    }

    v13[77] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.l4s", v13 + 78, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v93 = gLogObj;
    if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.l4s failed. Using default value: 0", buf, 0xCu);
    }

    v13[78] = 0;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.link_heuristics_flags", v13 + 79, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v94 = gLogObj;
    if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.link_heuristics_flags failed. Using default value: 0", buf, 0xCu);
    }

    v13[79] = 0;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.link_heuristics_rto_min", v13 + 80, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v95 = gLogObj;
    if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.link_heuristics_rto_min failed. Using default value: 0", buf, 0xCu);
    }

    v13[80] = 0;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.rst_rlc_enable", v13 + 81, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v96 = gLogObj;
    if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.rst_rlc_enable failed. Using default value: 1", buf, 0xCu);
    }

    v13[81] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.rst_rlc_bucket_ms", v13 + 82, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v97 = gLogObj;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.rst_rlc_bucket_ms failed. Using default value: 100", buf, 0xCu);
    }

    v13[82] = 100;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.rst_rlc_use_ts", v13 + 83, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v98 = gLogObj;
    if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.rst_rlc_use_ts failed. Using default value: 1", buf, 0xCu);
    }

    v13[83] = 1;
  }

  *type = 4;
  if (sysctlbyname("net.inet.tcp.rst_rlc_verbose", v13 + 84, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v99 = gLogObj;
    if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname net.inet.tcp.rst_rlc_verbose failed. Using default value: 0", buf, 0xCu);
    }

    v13[84] = 0;
  }

  *type = 4;
  if (sysctlbyname("kern.ipc.throttle_best_effort", v13 + 85, type, 0, 0) || *type != 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v100 = gLogObj;
    if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v109 = "nw_path_get_sysctls_region_block_invoke";
      _os_log_impl(&dword_181A37000, v100, OS_LOG_TYPE_INFO, "%{public}s sysctlbyname kern.ipc.throttle_best_effort failed. Using default value: 0", buf, 0xCu);
    }

    v13[85] = 0;
  }

  nw_path_get_sysctls_region::sysctls_region = v13;
}

void __nw_settings_get_l4s_enabled_internal_block_invoke()
{
  v0 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "network_enable_l4s", 18, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v0, @"Apple Global Domain", &keyExistsAndHasValidFormat);
  v2 = v0;
  v3 = keyExistsAndHasValidFormat;
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    v4 = AppIntegerValue;
  }

  else
  {
    v4 = 0;
  }

  nw_settings_get_l4s_enabled_internal::l4s_setting = v4;
}

void ___ZL26nw_protocol_ipv4_callbacksv_block_invoke()
{
  nw_protocol_ipv4_callbacks(void)::callbacks = nw_protocol_one_to_one_callbacks_new();
  nw_protocol_callbacks_set_add_input_handler(nw_protocol_ipv4_callbacks(void)::callbacks, nw_protocol_ipv4_add_input_handler);
  nw_protocol_callbacks_set_replace_input_handler(nw_protocol_ipv4_callbacks(void)::callbacks, nw_protocol_ipv4_replace_input_handler);
  nw_protocol_callbacks_set_remove_input_handler(nw_protocol_ipv4_callbacks(void)::callbacks, nw_protocol_ipv4_remove_input_handler);
  nw_protocol_callbacks_set_get_input_frames(nw_protocol_ipv4_callbacks(void)::callbacks, nw_protocol_ipv4_get_input_frames);
  nw_protocol_callbacks_set_get_output_frames(nw_protocol_ipv4_callbacks(void)::callbacks, nw_protocol_ipv4_get_output_frames);
  nw_protocol_callbacks_set_finalize_output_frames(nw_protocol_ipv4_callbacks(void)::callbacks, nw_protocol_ipv4_finalize_output_frames);
  nw_protocol_callbacks_set_connected(nw_protocol_ipv4_callbacks(void)::callbacks, nw_protocol_ipv4_connected);
  nw_protocol_callbacks_set_disconnected(nw_protocol_ipv4_callbacks(void)::callbacks, nw_protocol_ipv4_disconnected);
  nw_protocol_callbacks_set_get_message_properties(nw_protocol_ipv4_callbacks(void)::callbacks, nw_protocol_ipv4_get_message_properties);
  nw_protocol_callbacks_set_copy_info(nw_protocol_ipv4_callbacks(void)::callbacks, nw_protocol_ipv4_copy_info);
  nw_protocol_callbacks_set_updated_path(nw_protocol_ipv4_callbacks(void)::callbacks, nw_protocol_ipv4_updated_path);
  nw_protocol_callbacks_set_notify(nw_protocol_ipv4_callbacks(void)::callbacks, nw_protocol_ipv4_notify);
  v0 = nw_protocol_ipv4_callbacks(void)::callbacks;

  nw_protocol_callbacks_set_error(v0, nw_protocol_ipv4_error);
}

void *nw_mem_buffer_manager_get_global()
{
  if (nw_mem_buffer_manager_init(void)::onceToken != -1)
  {
    dispatch_once(&nw_mem_buffer_manager_init(void)::onceToken, &__block_literal_global_66862);
  }

  if (use_malloc_memory)
  {
    return &g_buffer_manager;
  }

  else
  {
    return 0;
  }
}

void nw_protocol_callbacks_set_add_input_handler(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *a1 = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_add_input_handler";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_add_input_handler";
        v5 = "%{public}s called with null add_input_handler";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_add_input_handler";
        v5 = "%{public}s called with null add_input_handler, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_add_input_handler";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null add_input_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_add_input_handler";
        v5 = "%{public}s called with null add_input_handler, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_add_input_handler";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_add_input_handler";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_add_input_handler";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_add_input_handler";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_add_input_handler";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_get_output_frames(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 88) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_output_frames";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_output_frames";
        v5 = "%{public}s called with null get_output_frames";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_output_frames";
        v5 = "%{public}s called with null get_output_frames, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_get_output_frames";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null get_output_frames, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_output_frames";
        v5 = "%{public}s called with null get_output_frames, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_output_frames";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_output_frames";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_output_frames";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_output_frames";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_get_output_frames";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_finalize_output_frames(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 96) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_finalize_output_frames";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_finalize_output_frames";
        v5 = "%{public}s called with null finalize_output_frames";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_finalize_output_frames";
        v5 = "%{public}s called with null finalize_output_frames, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_finalize_output_frames";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null finalize_output_frames, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_finalize_output_frames";
        v5 = "%{public}s called with null finalize_output_frames, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_finalize_output_frames";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_finalize_output_frames";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_finalize_output_frames";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_finalize_output_frames";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_finalize_output_frames";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_copy_info(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 224) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_copy_info";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_copy_info";
        v5 = "%{public}s called with null copy_info";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_copy_info";
        v5 = "%{public}s called with null copy_info, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_copy_info";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null copy_info, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_copy_info";
        v5 = "%{public}s called with null copy_info, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_copy_info";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_copy_info";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_copy_info";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_copy_info";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_copy_info";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_updated_path(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 168) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_updated_path";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_updated_path";
        v5 = "%{public}s called with null updated_path";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_updated_path";
        v5 = "%{public}s called with null updated_path, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_updated_path";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null updated_path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_updated_path";
        v5 = "%{public}s called with null updated_path, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_updated_path";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_updated_path";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_updated_path";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_updated_path";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_updated_path";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_notify(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 160) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_notify";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_notify";
        v5 = "%{public}s called with null notify";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_notify";
        v5 = "%{public}s called with null notify, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_notify";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null notify, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_notify";
        v5 = "%{public}s called with null notify, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_notify";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_notify";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_notify";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_notify";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_notify";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void *nw_protocol_one_to_one_callbacks_new()
{
  result = malloc_type_calloc(1uLL, 0x110uLL, 0x57802D0FuLL);
  if (result)
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
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    v1 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v1))
    {
      __break(1u);
    }

    free(v1);
    MEMORY[0x100] = 0u;
    MEMORY[0xF0] = 0u;
    MEMORY[0xE0] = 0u;
    MEMORY[0xD0] = 0u;
    MEMORY[0xC0] = 0u;
    MEMORY[0xB0] = 0u;
    MEMORY[0xA0] = 0u;
    MEMORY[0x90] = 0u;
    MEMORY[0x80] = 0u;
    MEMORY[0x70] = 0u;
    MEMORY[0x60] = 0u;
    MEMORY[0x50] = 0u;
    MEMORY[0x40] = 0u;
    MEMORY[0x30] = 0u;
    MEMORY[0x20] = 0u;
    MEMORY[0x10] = 0u;
    MEMORY[0] = 0u;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    v2 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v2);
    __break(1u);
  }

  return result;
}

void nw_protocol_callbacks_set_replace_input_handler(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 16) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_replace_input_handler";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_replace_input_handler";
        v5 = "%{public}s called with null replace_input_handler";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_replace_input_handler";
        v5 = "%{public}s called with null replace_input_handler, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_replace_input_handler";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null replace_input_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_replace_input_handler";
        v5 = "%{public}s called with null replace_input_handler, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_replace_input_handler";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_replace_input_handler";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_replace_input_handler";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_replace_input_handler";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_replace_input_handler";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_get_input_frames(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 80) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_input_frames";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_input_frames";
        v5 = "%{public}s called with null get_input_frames";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_input_frames";
        v5 = "%{public}s called with null get_input_frames, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_get_input_frames";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null get_input_frames, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_input_frames";
        v5 = "%{public}s called with null get_input_frames, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_input_frames";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_input_frames";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_input_frames";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_input_frames";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_get_input_frames";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_remove_input_handler(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 8) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_remove_input_handler";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_remove_input_handler";
        v5 = "%{public}s called with null remove_input_handler";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_remove_input_handler";
        v5 = "%{public}s called with null remove_input_handler, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_remove_input_handler";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null remove_input_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_remove_input_handler";
        v5 = "%{public}s called with null remove_input_handler, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_remove_input_handler";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_remove_input_handler";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_remove_input_handler";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_remove_input_handler";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_remove_input_handler";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_get_message_properties(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 248) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_message_properties";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_message_properties";
        v5 = "%{public}s called with null get_message_properties";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_message_properties";
        v5 = "%{public}s called with null get_message_properties, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_get_message_properties";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null get_message_properties, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_get_message_properties";
        v5 = "%{public}s called with null get_message_properties, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_get_message_properties";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_message_properties";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_message_properties";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_get_message_properties";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_get_message_properties";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_disconnected(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 48) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_disconnected";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_disconnected";
        v5 = "%{public}s called with null disconnected";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_disconnected";
        v5 = "%{public}s called with null disconnected, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_disconnected";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null disconnected, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_disconnected";
        v5 = "%{public}s called with null disconnected, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_disconnected";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_disconnected";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_disconnected";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_disconnected";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_disconnected";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

void nw_protocol_callbacks_set_error(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 56) = a2;
      return;
    }

    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_error";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (__nwlog_fault(v2, &type, &v10))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_error";
        v5 = "%{public}s called with null error";
        goto LABEL_32;
      }

      if (v10 != 1)
      {
        v3 = __nwlog_obj();
        v4 = type;
        if (!os_log_type_enabled(v3, type))
        {
          goto LABEL_33;
        }

        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_error";
        v5 = "%{public}s called with null error, backtrace limit exceeded";
        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v3 = __nwlog_obj();
      v4 = type;
      v9 = os_log_type_enabled(v3, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v13 = "nw_protocol_callbacks_set_error";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null error, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_34;
        }

        return;
      }

      if (v9)
      {
        *buf = 136446210;
        v13 = "nw_protocol_callbacks_set_error";
        v5 = "%{public}s called with null error, no backtrace";
LABEL_32:
        _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_callbacks_set_error";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_error";
      v5 = "%{public}s called with null callbacks";
      goto LABEL_32;
    }

    if (v10 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_error";
      v5 = "%{public}s called with null callbacks, backtrace limit exceeded";
      goto LABEL_32;
    }

    v6 = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v13 = "nw_protocol_callbacks_set_error";
      v5 = "%{public}s called with null callbacks, no backtrace";
      goto LABEL_32;
    }

    if (v7)
    {
      *buf = 136446466;
      v13 = "nw_protocol_callbacks_set_error";
      v14 = 2082;
      v15 = v6;
      _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null callbacks, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v6);
  }

LABEL_33:
  if (v2)
  {
LABEL_34:
    free(v2);
  }
}

uint64_t __nwlog_tcp_log()
{
  if (__nwlog_tcp_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_tcp_log::onceToken, &__block_literal_global_56_47463);
  }

  return gtcpLogObj;
}

void ___ZL26nw_mem_buffer_manager_initv_block_invoke()
{
  if (_os_feature_enabled_impl())
  {
    use_malloc_memory = 1;
  }

  else if (use_malloc_memory != 1)
  {
    return;
  }

  if (nw_mem_track_initialize(void)::onceToken != -1)
  {

    dispatch_once(&nw_mem_track_initialize(void)::onceToken, &__block_literal_global_70207);
  }
}

BOOL nw_protocol_supports_external_data_is_valid(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 24);
    return v1 && *(v1 + 176) != 0;
  }

  return result;
}

BOOL nw_protocol_get_parameters_is_valid(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 24);
    return v1 && *(v1 + 112) != 0;
  }

  return result;
}

unint64_t sub_181CAF7B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5B8);
    v3 = sub_182AD3EE8();

    for (i = (a1 + 50); ; i += 12)
    {
      v5 = *(i - 9);
      v6 = *(i - 5);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_181CBDA14(v5, v6, sub_181D04C70);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 4 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_181CAF8DC()
{

  return swift_deallocClassInstance();
}

uint64_t __nw_endpoint_proxy_handler_should_use_proxy_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = nw_proxy_config_supports_connection(a3, *(a1 + 32), *(a1 + 40), *(a1 + 48));
  if (v4)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return v4 ^ 1u;
}

uint64_t nw_proxy_config_should_proxy_transport_at_level(NWConcrete_nw_proxy_config *a1, const char *a2, BOOL *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a1;
  p_isa = &v5->super.isa;
  if (v5)
  {
    if (a2)
    {
      proxied_transports = v5->proxied_transports;
      if (!proxied_transports)
      {
        goto LABEL_11;
      }

      uint64 = xpc_dictionary_get_uint64(proxied_transports, a2);
      if (!uint64)
      {
        if (nw_proxy_config_default_transport(void)::onceToken[0] != -1)
        {
          dispatch_once(nw_proxy_config_default_transport(void)::onceToken, &__block_literal_global_268);
        }

        if (!strcmp(a2, nw_proxy_config_default_transport(void)::default_transport_string))
        {
          goto LABEL_11;
        }

        v9 = xpc_dictionary_get_uint64(p_isa[2], "proxy-wildcard");
        uint64 = v9;
        if (a3)
        {
          *a3 = 1;
        }

        if (!v9)
        {
LABEL_11:
          uint64 = 4;
        }
      }

      goto LABEL_12;
    }

    v15 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_proxy_config_should_proxy_transport_at_level";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v12, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v27 = "nw_proxy_config_should_proxy_transport_at_level";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null protocol_name", buf, 0xCu);
        }

LABEL_44:

        goto LABEL_45;
      }

      if (v24 != 1)
      {
        v13 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v27 = "nw_proxy_config_should_proxy_transport_at_level";
          _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null protocol_name, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_44;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          v27 = "nw_proxy_config_should_proxy_transport_at_level";
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null protocol_name, no backtrace", buf, 0xCu);
        }

        goto LABEL_44;
      }

      if (v21)
      {
        *buf = 136446466;
        v27 = "nw_proxy_config_should_proxy_transport_at_level";
        v28 = 2082;
        v29 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null protocol_name, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_32;
    }
  }

  else
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_proxy_config_should_proxy_transport_at_level";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v12, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v27 = "nw_proxy_config_should_proxy_transport_at_level";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null config", buf, 0xCu);
        }

        goto LABEL_44;
      }

      if (v24 != 1)
      {
        v13 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v27 = "nw_proxy_config_should_proxy_transport_at_level";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_44;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v19)
        {
          *buf = 136446210;
          v27 = "nw_proxy_config_should_proxy_transport_at_level";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }

        goto LABEL_44;
      }

      if (v19)
      {
        *buf = 136446466;
        v27 = "nw_proxy_config_should_proxy_transport_at_level";
        v28 = 2082;
        v29 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_32:

      free(backtrace_string);
    }
  }

LABEL_45:
  if (v12)
  {
    free(v12);
  }

  uint64 = 0;
LABEL_12:

  return uint64;
}
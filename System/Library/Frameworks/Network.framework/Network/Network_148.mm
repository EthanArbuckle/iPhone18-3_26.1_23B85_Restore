char *nw_listener_create_multicast(void *a1, void *a2, const char *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  nw_allow_use_of_dispatch_internal();
  if (!v5)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_listener_create_multicast";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v15, &type, &v28))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v31 = "nw_listener_create_multicast";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null multicast_descriptor", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v31 = "nw_listener_create_multicast";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null multicast_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v15)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      if (v22)
      {
        *buf = 136446210;
        v31 = "nw_listener_create_multicast";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null multicast_descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v31 = "nw_listener_create_multicast";
        _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null multicast_descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_47;
  }

  if (!v6)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_listener_create_multicast";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v15, &type, &v28))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v31 = "nw_listener_create_multicast";
        _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      v23 = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v16, type);
      if (v23)
      {
        if (v25)
        {
          *buf = 136446466;
          v31 = "nw_listener_create_multicast";
          v32 = 2082;
          v33 = v23;
          _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v23);
LABEL_48:
        if (!v15)
        {
LABEL_50:
          v11 = 0;
          goto LABEL_14;
        }

LABEL_49:
        free(v15);
        goto LABEL_50;
      }

      if (v25)
      {
        *buf = 136446210;
        v31 = "nw_listener_create_multicast";
        _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v31 = "nw_listener_create_multicast";
        _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_47:

    goto LABEL_48;
  }

  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = "0";
  }

  v8 = nw_listener_copy_parameters_with_port(v6, v7, 0);
  v9 = v8;
  if (v8)
  {
    if (_nw_parameters_get_data_mode(v8) != 2)
    {
      v12 = nw_group_descriptor_copy(v5);
      v11 = [[NWConcrete_nw_listener alloc] initWithParameters:v9 multicastDescriptor:v12];

      goto LABEL_13;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v31 = "nw_listener_create_multicast";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s Cannot create multicast listener with stream mode parameters", buf, 0xCu);
    }
  }

  v11 = 0;
LABEL_13:

LABEL_14:
  return v11;
}

nw_listener_t nw_listener_create_with_connection(nw_connection_t connection, nw_parameters_t parameters)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = connection;
  v5 = parameters;
  nw_allow_use_of_dispatch_internal();
  if (!v4)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_listener_create_with_connection";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v24, &type, &v39))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v42 = "nw_listener_create_with_connection";
        _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v30 = type;
      v31 = os_log_type_enabled(v25, type);
      if (backtrace_string)
      {
        if (v31)
        {
          *buf = 136446466;
          v42 = "nw_listener_create_with_connection";
          v43 = 2082;
          v44 = backtrace_string;
          _os_log_impl(&dword_181A37000, v25, v30, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v24)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      if (v31)
      {
        *buf = 136446210;
        v42 = "nw_listener_create_with_connection";
        _os_log_impl(&dword_181A37000, v25, v30, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v25 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v42 = "nw_listener_create_with_connection";
        _os_log_impl(&dword_181A37000, v25, v35, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_65;
  }

  if (!v5)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_listener_create_with_connection";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v24, &type, &v39))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v42 = "nw_listener_create_with_connection";
        _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
      v32 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v33 = type;
      v34 = os_log_type_enabled(v25, type);
      if (v32)
      {
        if (v34)
        {
          *buf = 136446466;
          v42 = "nw_listener_create_with_connection";
          v43 = 2082;
          v44 = v32;
          _os_log_impl(&dword_181A37000, v25, v33, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v32);
LABEL_66:
        if (!v24)
        {
LABEL_68:
          v8 = 0;
          goto LABEL_32;
        }

LABEL_67:
        free(v24);
        goto LABEL_68;
      }

      if (v34)
      {
        *buf = 136446210;
        v42 = "nw_listener_create_with_connection";
        _os_log_impl(&dword_181A37000, v25, v33, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v25 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v42 = "nw_listener_create_with_connection";
        _os_log_impl(&dword_181A37000, v25, v36, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_65:

    goto LABEL_66;
  }

  v6 = [NWConcrete_nw_listener alloc];
  v7 = _nw_parameters_copy(v5);
  v8 = [(NWConcrete_nw_listener *)v6 initWithParameters:v7 multicastDescriptor:0];

  if (v8)
  {
    objc_storeStrong(&v8[6].isa, connection);
    v9 = _nw_parameters_copy_context(v5);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __nw_listener_create_with_connection_block_invoke;
    v37[3] = &unk_1E6A3D868;
    v10 = v4;
    v38 = v10;
    nw_queue_context_async(v9, v37);

    isa = v8[2].isa;
    if (isa && !_nw_parameters_get_logging_disabled(isa))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v12 = glistenerLogObj;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v42 = "nw_listener_create_with_connection";
        v43 = 2082;
        v44 = &v8[5].isa + 2;
        v45 = 2114;
        v46 = v10;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] created from connection: %{public}@", buf, 0x20u);
      }
    }

    v13 = v8;

    goto LABEL_31;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  *buf = 136446210;
  v42 = "nw_listener_create_with_connection";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (__nwlog_fault(v15, &type, &v39))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v42 = "nw_listener_create_with_connection";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s [nw_listener initWithParameters:] failed", buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
      v18 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v19 = type;
      v20 = os_log_type_enabled(v16, type);
      if (v18)
      {
        if (v20)
        {
          *buf = 136446466;
          v42 = "nw_listener_create_with_connection";
          v43 = 2082;
          v44 = v18;
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s [nw_listener initWithParameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
        if (!v15)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v20)
      {
        *buf = 136446210;
        v42 = "nw_listener_create_with_connection";
        _os_log_impl(&dword_181A37000, v16, v19, "%{public}s [nw_listener initWithParameters:] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v21 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v42 = "nw_listener_create_with_connection";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s [nw_listener initWithParameters:] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v15)
  {
LABEL_30:
    free(v15);
  }

LABEL_31:

LABEL_32:
  return v8;
}

void __nw_listener_create_with_connection_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = v1;
  if (!v1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_connection_initialize_for_listener_protocol_on_nw_queue";
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
          v21 = "nw_connection_initialize_for_listener_protocol_on_nw_queue";
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
            v21 = "nw_connection_initialize_for_listener_protocol_on_nw_queue";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_39;
        }

        if (v16)
        {
          *buf = 136446210;
          v21 = "nw_connection_initialize_for_listener_protocol_on_nw_queue";
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
          v21 = "nw_connection_initialize_for_listener_protocol_on_nw_queue";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_39:
    if (v11)
    {
      free(v11);
    }

    goto LABEL_14;
  }

  nw_context_assert_queue(v1[3]);
  v3 = v2[18];
  if (v3)
  {
    v4 = nw_endpoint_handler_copy_connected_flow_handler(v3);
    if (!v4)
    {
      if (!nw_endpoint_handler_has_connected_flow(v2[18]))
      {
        v7 = v2[2];
        if (v7 && !_nw_parameters_get_logging_disabled(v7))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v8 = gconnectionLogObj;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = *(v2 + 112);
            *buf = 136446466;
            v21 = "nw_connection_initialize_for_listener_protocol_on_nw_queue";
            v22 = 1024;
            LODWORD(v23) = v9;
            _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Connection has no available handler", buf, 0x12u);
          }
        }

        v4 = 0;
        goto LABEL_13;
      }

      v4 = v2[18];
    }

    nw_endpoint_flow_pre_attach_protocols(v4, 0);
LABEL_13:

    goto LABEL_14;
  }

  v5 = v2[2];
  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      v6 = *(v2 + 112);
      *buf = 136446466;
      v21 = "nw_connection_initialize_for_listener_protocol_on_nw_queue";
      v22 = 1024;
      LODWORD(v23) = v6;
      _os_log_impl(&dword_181A37000, &v4->super, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Connection has no parent handler", buf, 0x12u);
    }

    goto LABEL_13;
  }

LABEL_14:
}

void nw_listener_allow_new_connection_inline(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_allow_new_connection_inline_block_invoke;
    aBlock[3] = &unk_1E6A3D868;
    v13 = v1;
    v3 = _Block_copy(aBlock);
    os_unfair_lock_lock(v2 + 2);
    v3[2](v3);
    os_unfair_lock_unlock(v2 + 2);

    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_listener_allow_new_connection_inline";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v5, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_listener_allow_new_connection_inline";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          v17 = "nw_listener_allow_new_connection_inline";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v17 = "nw_listener_allow_new_connection_inline";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_listener_allow_new_connection_inline";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void __nw_listener_allow_new_connection_inline_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 128))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "nw_listener_allow_new_connection_inline_block_invoke";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v16 = "nw_listener_allow_new_connection_inline_block_invoke";
        v7 = "%{public}s Error in client: nw_listener_allow_new_connection_inline called after nw_listener_start";
LABEL_17:
        v11 = v5;
        v12 = v6;
        goto LABEL_18;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v16 = "nw_listener_allow_new_connection_inline_block_invoke";
        v7 = "%{public}s Error in client: nw_listener_allow_new_connection_inline called after nw_listener_start, backtrace limit exceeded";
        goto LABEL_17;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v5, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
LABEL_19:

          if (!v4)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

        *buf = 136446210;
        v16 = "nw_listener_allow_new_connection_inline_block_invoke";
        v7 = "%{public}s Error in client: nw_listener_allow_new_connection_inline called after nw_listener_start, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_18:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_19;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "nw_listener_allow_new_connection_inline_block_invoke";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s Error in client: nw_listener_allow_new_connection_inline called after nw_listener_start, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
LABEL_13:
      v1 = *(a1 + 32);
      goto LABEL_14;
    }

LABEL_12:
    free(v4);
    goto LABEL_13;
  }

LABEL_14:
  *(v1 + 310) |= 4u;
}

void nw_listener_register_client_demux_options_if_needed(void *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v5)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_listener_register_client_demux_options_if_needed";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v11, &type, &v33))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v36 = "nw_listener_register_client_demux_options_if_needed";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v33 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          v36 = "nw_listener_register_client_demux_options_if_needed";
          v37 = 2082;
          v38 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v11)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v11);
        goto LABEL_5;
      }

      if (v20)
      {
        *buf = 136446210;
        v36 = "nw_listener_register_client_demux_options_if_needed";
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v36 = "nw_listener_register_client_demux_options_if_needed";
        _os_log_impl(&dword_181A37000, v12, v26, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!v6)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_listener_register_client_demux_options_if_needed";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v11, &type, &v33))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v36 = "nw_listener_register_client_demux_options_if_needed";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null demux_options", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v33 != 1)
    {
      v12 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v36 = "nw_listener_register_client_demux_options_if_needed";
        _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null demux_options, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v21 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v12, type);
    if (!v21)
    {
      if (v23)
      {
        *buf = 136446210;
        v36 = "nw_listener_register_client_demux_options_if_needed";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null demux_options, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v36 = "nw_listener_register_client_demux_options_if_needed";
      v37 = 2082;
      v38 = v21;
      _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null demux_options, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!v7)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_listener_register_client_demux_options_if_needed";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v11, &type, &v33))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v36 = "nw_listener_register_client_demux_options_if_needed";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null inbound_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v33 != 1)
    {
      v12 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v36 = "nw_listener_register_client_demux_options_if_needed";
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s called with null inbound_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v21 = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v24 = type;
    v25 = os_log_type_enabled(v12, type);
    if (!v21)
    {
      if (v25)
      {
        *buf = 136446210;
        v36 = "nw_listener_register_client_demux_options_if_needed";
        _os_log_impl(&dword_181A37000, v12, v24, "%{public}s called with null inbound_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25)
    {
      *buf = 136446466;
      v36 = "nw_listener_register_client_demux_options_if_needed";
      v37 = 2082;
      v38 = v21;
      _os_log_impl(&dword_181A37000, v12, v24, "%{public}s called with null inbound_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v21);
    if (!v11)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v9 = v5[3];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __nw_listener_register_client_demux_options_if_needed_block_invoke;
  v29[3] = &unk_1E6A3B4E0;
  v30 = v5;
  v31 = v8;
  v32 = v6;
  nw_queue_context_async_if_needed(v9, v29);

LABEL_5:
}

void __nw_listener_register_client_demux_options_if_needed_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 128) == 2)
  {
    *uu = 0uLL;
    v2 = nw_connection_copy_connected_path(*(a1 + 40));
    nw_path_get_client_id(v2, uu);
    if (!uuid_is_null(uu))
    {
      v3 = a1;
      v4 = *(*(a1 + 32) + 160);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __nw_listener_register_client_demux_options_if_needed_block_invoke_53;
      v7[3] = &unk_1E6A34B00;
      v5 = *(v3 + 48);
      v8 = v5;
      v9 = uu;
      if (v4)
      {
        _nw_array_apply(v4, v7);
        v5 = v8;
      }
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *uu = 136446210;
      *&uu[4] = "nw_listener_register_client_demux_options_if_needed_block_invoke";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s ignoring client demux options registration", uu, 0xCu);
    }
  }
}

uint64_t __nw_listener_register_client_demux_options_if_needed_block_invoke_53(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (nw_protocol_masque_listener_get_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_masque_listener_get_definition(void)::onceToken, &__block_literal_global_192);
  }

  if (nw_protocol_masque_listener_get_definition(void)::definition && (v5 = os_retain(nw_protocol_masque_listener_get_definition(void)::definition)) != 0)
  {
    v6 = os_retain(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = nw_connection_copy_protocol_metadata(v4, v6);

  if (v7)
  {
    nw_masque_listener_add_client_demux_pattern(v7, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 136446210;
      v11 = "nw_listener_register_client_demux_options_if_needed_block_invoke";
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s no metadata for masque listener", &v10, 0xCu);
    }
  }

  return 1;
}

void nw_listener_set_advertise_descriptor(nw_listener_t listener, nw_advertise_descriptor_t advertise_descriptor)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = listener;
  v4 = advertise_descriptor;
  if (v3)
  {
    isa = v3[3].isa;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_listener_set_advertise_descriptor_block_invoke;
    v14[3] = &unk_1E6A3D760;
    v15 = v3;
    v16 = v4;
    nw_queue_context_async(isa, v14);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_listener_set_advertise_descriptor";
  v7 = _os_log_send_and_compose_impl();

  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v7, &v18, &v17))
  {
    if (v18 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_listener_set_advertise_descriptor";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = v18;
      v12 = os_log_type_enabled(v8, v18);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v20 = "nw_listener_set_advertise_descriptor";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_listener_set_advertise_descriptor";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_listener_set_advertise_descriptor";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
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

void __nw_listener_set_advertise_descriptor_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 272);
  v3 = *(a1 + 32);
  if (v2 || !*(v3 + 280))
  {
LABEL_5:
    aBlock = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __nw_listener_set_advertise_descriptor_block_invoke_55;
    v25 = &unk_1E6A3D760;
    v26 = v3;
    v27 = *(a1 + 40);
    v6 = _Block_copy(&aBlock);
    os_unfair_lock_lock((v3 + 8));
    v6[2](v6);
    os_unfair_lock_unlock((v3 + 8));

    v7 = *(a1 + 32);
    if (*(v7 + 128) == 2 && (*(v7 + 310) & 1) == 0)
    {
      if (nw_advertise_descriptor_is_equal(v2, *(a1 + 40), 1))
      {
        if (!nw_advertise_descriptor_is_equal(v2, *(a1 + 40), 0))
        {
          v8 = *(*(a1 + 32) + 280);
          if (v8)
          {
            if ([v8 count] == 1)
            {
              v9 = [*(*(a1 + 32) + 280) objectAtIndexedSubscript:0];
              v10 = v9[8] == 0;

              if (!v10)
              {
                v11 = *(a1 + 40);
                if (v11)
                {
                  v12 = nw_advertise_descriptor_copy_txt_record_object(v11);
                  v13 = v12;
                  if (v12)
                  {
                    isa = v12[2].isa;
                    v15 = v12[1].isa;
LABEL_20:
                    v16 = [*(*(a1 + 32) + 280) objectAtIndexedSubscript:{0, v20, v21, aBlock, v23, v24, v25, v26}];
                    updated = DNSServiceUpdateRecord(v16[8], 0, 0, isa, v15, 0);

                    if (updated)
                    {
                      v18 = *(a1 + 32);
                      dns_error = nw_error_create_dns_error(updated);
                      nw_listener_set_state_on_queue(v18, 3, dns_error);
                    }

                    goto LABEL_16;
                  }

                  isa = 0;
                }

                else
                {
                  isa = 0;
                  v13 = 0;
                }

                v15 = 0;
                goto LABEL_20;
              }
            }
          }
        }
      }

      else
      {
        nw_listener_stop_advertising_on_queue(*(a1 + 32));
        nw_listener_start_advertising_on_queue(*(a1 + 32));
      }
    }

LABEL_16:

    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  v28 = 136446210;
  v29 = "nw_listener_set_advertise_descriptor_block_invoke";
  LODWORD(v21) = 12;
  v20 = &v28;
  v5 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v5))
  {
    free(v5);
    v3 = *(a1 + 32);
    goto LABEL_5;
  }

  __break(1u);
}

void __nw_listener_set_advertise_descriptor_block_invoke_55(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!v2)
  {
    v9 = 0;
    goto LABEL_50;
  }

  v3 = v2;
  v4 = v3;
  v5 = *(v3 + 2);
  if (v5 != 2)
  {
    if (v5 == 1)
    {
      bonjour_service = nw_advertise_descriptor_create_bonjour_service(v3[2], v3[3], v3[4]);
      if (bonjour_service)
      {
        v7 = v4[5];
        if (v7)
        {
          v8 = nw_txt_record_create_with_bytes(*(v7 + 1), *(v7 + 2));
        }

        else
        {
          v8 = 0;
        }

        v19 = *(bonjour_service + 40);
        *(bonjour_service + 40) = v8;

        *(bonjour_service + 88) = *(bonjour_service + 88) & 0xFE | v4[11] & 1;
        goto LABEL_35;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v40 = "nw_advertise_descriptor_copy";
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s Failed to allocate copy", buf, 0xCu);
      }

      goto LABEL_28;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    *buf = 136446210;
    v40 = "nw_advertise_descriptor_copy";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v11, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v40 = "nw_advertise_descriptor_copy";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s invalid advertise descriptor type", buf, 0xCu);
        }
      }

      else if (v37 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v15 = type;
        v16 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v40 = "nw_advertise_descriptor_copy";
            v41 = 2082;
            v42 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v15, "%{public}s invalid advertise descriptor type, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v11)
          {
            goto LABEL_29;
          }

          goto LABEL_16;
        }

        if (v16)
        {
          *buf = 136446210;
          v40 = "nw_advertise_descriptor_copy";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s invalid advertise descriptor type, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v18 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v40 = "nw_advertise_descriptor_copy";
          _os_log_impl(&dword_181A37000, v12, v18, "%{public}s invalid advertise descriptor type, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v11)
    {
LABEL_29:
      obj = 0;
      goto LABEL_49;
    }

LABEL_16:
    free(v11);
    goto LABEL_29;
  }

  bonjour_service = nw_advertise_descriptor_create_application_service_with_bundle_id(v3[6], v3[7]);
  if (!bonjour_service)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v40 = "nw_advertise_descriptor_copy";
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s Failed to allocate copy", buf, 0xCu);
    }

LABEL_28:

    goto LABEL_29;
  }

  *(bonjour_service + 64) = nw_advertise_descriptor_get_invitation_scope(v4);
  *(bonjour_service + 68) = nw_advertise_descriptor_get_invitation_route(v4);
LABEL_35:
  obj = bonjour_service;
  if (v4[10])
  {
    v20 = v4[9];
    if (v20)
    {
      v21 = malloc_type_malloc(v20, 0xDDA4E9A6uLL);
      if (!v21)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        v40 = "nw_advertise_descriptor_copy";
        v23 = _os_log_send_and_compose_impl();

        if (__nwlog_should_abort(v23))
        {
          __break(1u);
          return;
        }

        free(v23);
        v21 = 0;
      }

      obj[10] = v21;
      v24 = v4[9];
      obj[9] = v24;
      memcpy(v21, v4[10], v24);
    }
  }

  if (nw_advertise_descriptor_is_equal(v4, obj, 0))
  {
    goto LABEL_49;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  *buf = 136446210;
  v40 = "nw_advertise_descriptor_copy";
  v26 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v37 = 0;
  if (__nwlog_fault(v26, &type, &v37))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v40 = "nw_advertise_descriptor_copy";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s deep copy of advertise descriptor doesn't match original", buf, 0xCu);
      }
    }

    else if (v37 == 1)
    {
      v29 = __nw_create_backtrace_string();
      if (v29)
      {
        v30 = v29;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v32 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446466;
          v40 = "nw_advertise_descriptor_copy";
          v41 = 2082;
          v42 = v30;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s deep copy of advertise descriptor doesn't match original, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v30);
        if (!v26)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      v27 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v40 = "nw_advertise_descriptor_copy";
        _os_log_impl(&dword_181A37000, v27, v34, "%{public}s deep copy of advertise descriptor doesn't match original, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v33 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v40 = "nw_advertise_descriptor_copy";
        _os_log_impl(&dword_181A37000, v27, v33, "%{public}s deep copy of advertise descriptor doesn't match original, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v26)
  {
LABEL_48:
    free(v26);
  }

LABEL_49:

  v9 = obj;
LABEL_50:
  obja = v9;
  objc_storeStrong((*(a1 + 32) + 272), v9);
  if (v2)
  {
  }
}

void nw_listener_set_advertised_endpoint_changed_handler(nw_listener_t listener, nw_listener_advertised_endpoint_changed_handler_t handler)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = listener;
  v4 = handler;
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_set_advertised_endpoint_changed_handler_block_invoke;
    aBlock[3] = &unk_1E6A3D710;
    v15 = v3;
    v16 = v4;
    v5 = _Block_copy(aBlock);
    os_unfair_lock_lock(&v3[1]);
    v5[2](v5);
    os_unfair_lock_unlock(&v3[1]);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_listener_set_advertised_endpoint_changed_handler";
  v7 = _os_log_send_and_compose_impl();

  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v7, &v18, &v17))
  {
    if (v18 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_listener_set_advertised_endpoint_changed_handler";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = v18;
      v12 = os_log_type_enabled(v8, v18);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v20 = "nw_listener_set_advertised_endpoint_changed_handler";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_listener_set_advertised_endpoint_changed_handler";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_listener_set_advertised_endpoint_changed_handler";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
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

void __nw_listener_set_advertised_endpoint_changed_handler_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 128) == 4)
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v4 = glistenerLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        id_string = nw_listener_get_id_string(*(a1 + 32));
        v9 = 136446466;
        v10 = "nw_listener_set_advertised_endpoint_changed_handler_block_invoke";
        v11 = 2082;
        v12 = id_string;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Cannot set advertise handler after cancel", &v9, 0x16u);
      }
    }
  }

  else
  {
    v6 = _Block_copy(*(a1 + 40));
    v7 = *(a1 + 32);
    v8 = *(v7 + 120);
    *(v7 + 120) = v6;
  }
}

id nw_listener_copy_local_endpoint(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v20 = __Block_byref_object_copy__18668;
    v21 = __Block_byref_object_dispose__18669;
    v22 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_copy_local_endpoint_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v16 = buf;
    v15 = v1;
    v3 = _Block_copy(aBlock);
    os_unfair_lock_lock(v2 + 2);
    v3[2](v3);
    os_unfair_lock_unlock(v2 + 2);

    v4 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_listener_copy_local_endpoint";
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
        *&buf[4] = "nw_listener_copy_local_endpoint";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener", buf, 0xCu);
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
          *&buf[4] = "nw_listener_copy_local_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_copy_local_endpoint";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_copy_local_endpoint";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
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

void sub_1824698EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void __nw_listener_copy_local_endpoint_block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 288));
  v2 = *(*(a1 + 40) + 8);
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  if (!v4)
  {
    v5 = *(*(a1 + 32) + 296);

    objc_storeStrong(v3, v5);
  }
}

void nw_listener_set_new_connection_group_handler(nw_listener_t listener, nw_listener_new_connection_group_handler_t handler)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = listener;
  v4 = handler;
  if (nw_parameters_has_multiplexed_protocol_in_stack(v3[2].isa))
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __nw_listener_set_new_connection_group_handler_block_invoke;
    v10[3] = &unk_1E6A3D710;
    v11 = v3;
    v12 = v4;
    v5 = _Block_copy(v10);
    os_unfair_lock_lock(&v3[1]);
    v5[2](v5);
    os_unfair_lock_unlock(&v3[1]);

    v6 = v11;
LABEL_9:

    goto LABEL_10;
  }

  isa = v3[2].isa;
  if (isa && !_nw_parameters_get_logging_disabled(isa))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v6 = glistenerLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = v3;
      v9 = v8 + 42;

      *buf = 136446466;
      v14 = "nw_listener_set_new_connection_group_handler";
      v15 = 2082;
      v16 = v9;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Cannot set a connection group handler without a multiplex protocol", buf, 0x16u);
    }

    goto LABEL_9;
  }

LABEL_10:
}

void sub_182469B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void __nw_listener_set_new_connection_group_handler_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 128) == 4)
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v4 = glistenerLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        id_string = nw_listener_get_id_string(*(a1 + 32));
        v9 = 136446466;
        v10 = "nw_listener_set_new_connection_group_handler_block_invoke";
        v11 = 2082;
        v12 = id_string;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Cannot set new connection group handler after cancel", &v9, 0x16u);
      }
    }
  }

  else
  {
    v6 = _Block_copy(*(a1 + 40));
    v7 = *(a1 + 32);
    v8 = *(v7 + 96);
    *(v7 + 96) = v6;
  }
}

void nw_listener_set_new_packet_handler(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_set_new_packet_handler_block_invoke;
    aBlock[3] = &unk_1E6A3D710;
    v15 = v3;
    v16 = v4;
    v5 = _Block_copy(aBlock);
    os_unfair_lock_lock(v3 + 2);
    v5[2](v5);
    os_unfair_lock_unlock(v3 + 2);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_listener_set_new_packet_handler";
  v7 = _os_log_send_and_compose_impl();

  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v7, &v18, &v17))
  {
    if (v18 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_listener_set_new_packet_handler";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = v18;
      v12 = os_log_type_enabled(v8, v18);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v20 = "nw_listener_set_new_packet_handler";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_listener_set_new_packet_handler";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_listener_set_new_packet_handler";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
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

void __nw_listener_set_new_packet_handler_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 128) == 4)
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v4 = glistenerLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        id_string = nw_listener_get_id_string(*(a1 + 32));
        v9 = 136446466;
        v10 = "nw_listener_set_new_packet_handler_block_invoke";
        v11 = 2082;
        v12 = id_string;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Cannot set new packet handler after cancel", &v9, 0x16u);
      }
    }
  }

  else
  {
    v6 = _Block_copy(*(a1 + 40));
    v7 = *(a1 + 32);
    v8 = *(v7 + 112);
    *(v7 + 112) = v6;
  }
}

uint32_t nw_listener_get_new_connection_limit(nw_listener_t listener)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = listener;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_get_new_connection_limit_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v16 = buf;
    v15 = v1;
    v3 = _Block_copy(aBlock);
    os_unfair_lock_lock(v2 + 2);
    v3[2](v3);
    os_unfair_lock_unlock(v2 + 2);

    v4 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_listener_get_new_connection_limit";
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
        *&buf[4] = "nw_listener_get_new_connection_limit";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener", buf, 0xCu);
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
          *&buf[4] = "nw_listener_get_new_connection_limit";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_get_new_connection_limit";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_get_new_connection_limit";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
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

void sub_18246A4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_listener_set_new_connection_limit(nw_listener_t listener, uint32_t new_connection_limit)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = listener;
  v4 = v3;
  if (v3)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v25 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_set_new_connection_limit_block_invoke;
    aBlock[3] = &unk_1E6A3C060;
    v20 = buf;
    v5 = v3;
    v19 = v5;
    v21 = new_connection_limit;
    v6 = _Block_copy(aBlock);
    os_unfair_lock_lock(v4 + 2);
    v6[2](v6);
    os_unfair_lock_unlock(v4 + 2);

    if (*(*&buf[8] + 24) == 1)
    {
      isa = v5[3].isa;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __nw_listener_set_new_connection_limit_block_invoke_2;
      v16[3] = &unk_1E6A3D868;
      v17 = v5;
      nw_queue_context_async(isa, v16);
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_listener_set_new_connection_limit";
  v9 = _os_log_send_and_compose_impl();

  v23 = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v9, &v23, &v22))
  {
    if (v23 == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = v23;
      if (os_log_type_enabled(v10, v23))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_set_new_connection_limit";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v13 = v23;
      v14 = os_log_type_enabled(v10, v23);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          *&buf[4] = "nw_listener_set_new_connection_limit";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v14)
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_set_new_connection_limit";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = v23;
      if (os_log_type_enabled(v10, v23))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_set_new_connection_limit";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
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

void sub_18246A8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  _Block_object_dispose((v23 - 112), 8);

  _Unwind_Resume(a1);
}

uint64_t __nw_listener_set_new_connection_limit_block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 104) != v1;
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    *(*(result + 32) + 104) = v1;
  }

  return result;
}

void __nw_listener_start_block_invoke_56(uint64_t a1)
{
  v143 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  if (v3)
  {
    if (v3 == 4)
    {
      return;
    }

    v4 = *(v2 + 16);
    if (!v4 || _nw_parameters_get_logging_disabled(v4))
    {
      return;
    }

    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v5 = glistenerLogObj;
    id_string = nw_listener_get_id_string(*(a1 + 32));
    v7 = *(*(a1 + 32) + 128);
    *buf = 136446978;
    *&buf[4] = "nw_listener_start_block_invoke";
    *&buf[12] = 2082;
    *&buf[14] = id_string;
    *&buf[22] = 1024;
    *&buf[24] = 0;
    *&buf[28] = 1024;
    *&buf[30] = v7;
    v8 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v125) = 0;
    if (__nwlog_fault(v8, type, &v125))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v9 = glistenerLogObj;
        v10 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          v11 = nw_listener_get_id_string(*(a1 + 32));
          v12 = *(*(a1 + 32) + 128);
          *buf = 136446978;
          *&buf[4] = "nw_listener_start_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v11;
          *&buf[22] = 1024;
          *&buf[24] = 0;
          *&buf[28] = 1024;
          *&buf[30] = v12;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s [%{public}s] In wrong state for start. Expected %d, got %d.", buf, 0x22u);
        }
      }

      else if (v125 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v9 = glistenerLogObj;
        v22 = type[0];
        v23 = os_log_type_enabled(v9, type[0]);
        if (backtrace_string)
        {
          if (v23)
          {
            v24 = nw_listener_get_id_string(*(a1 + 32));
            v25 = *(*(a1 + 32) + 128);
            *buf = 136447234;
            *&buf[4] = "nw_listener_start_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v24;
            *&buf[22] = 1024;
            *&buf[24] = 0;
            *&buf[28] = 1024;
            *&buf[30] = v25;
            *&buf[34] = 2082;
            *&buf[36] = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v22, "%{public}s [%{public}s] In wrong state for start. Expected %d, got %d., dumping backtrace:%{public}s", buf, 0x2Cu);
          }

          free(backtrace_string);
          if (!v8)
          {
            return;
          }

LABEL_100:
          free(v8);
          return;
        }

        if (v23)
        {
          v65 = nw_listener_get_id_string(*(a1 + 32));
          v66 = *(*(a1 + 32) + 128);
          *buf = 136446978;
          *&buf[4] = "nw_listener_start_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v65;
          *&buf[22] = 1024;
          *&buf[24] = 0;
          *&buf[28] = 1024;
          *&buf[30] = v66;
          _os_log_impl(&dword_181A37000, v9, v22, "%{public}s [%{public}s] In wrong state for start. Expected %d, got %d., no backtrace", buf, 0x22u);
        }
      }

      else
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v9 = glistenerLogObj;
        v41 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          v42 = nw_listener_get_id_string(*(a1 + 32));
          v43 = *(*(a1 + 32) + 128);
          *buf = 136446978;
          *&buf[4] = "nw_listener_start_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v42;
          *&buf[22] = 1024;
          *&buf[24] = 0;
          *&buf[28] = 1024;
          *&buf[30] = v43;
          _os_log_impl(&dword_181A37000, v9, v41, "%{public}s [%{public}s] In wrong state for start. Expected %d, got %d., backtrace limit exceeded", buf, 0x22u);
        }
      }
    }

    if (!v8)
    {
      return;
    }

    goto LABEL_100;
  }

  *type = 0;
  v130 = type;
  v131 = 0x2020000000;
  v132 = 0;
  v125 = 0;
  v126 = &v125;
  v127 = 0x2020000000;
  v128 = 0;
  v121 = 0;
  v122 = &v121;
  v123 = 0x2020000000;
  v124 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __nw_listener_start_block_invoke_57;
  aBlock[3] = &unk_1E6A2EF68;
  v118 = type;
  v117 = v2;
  v119 = &v125;
  v120 = &v121;
  v13 = _Block_copy(aBlock);
  os_unfair_lock_lock((v2 + 8));
  v13[2](v13);
  os_unfair_lock_unlock((v2 + 8));

  if (*(v130 + 24) == 1)
  {
    v14 = *(a1 + 32);
    if (*(v126 + 24) == 1)
    {
      v15 = *(v14 + 16);
      if (v15 && !_nw_parameters_get_logging_disabled(v15))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v16 = glistenerLogObj;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = nw_listener_get_id_string(*(a1 + 32));
          *buf = 136446466;
          *&buf[4] = "nw_listener_start_block_invoke_2";
          *&buf[12] = 2082;
          *&buf[14] = v17;
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Started with setting both new connection handler and new connection group handler", buf, 0x16u);
        }
      }

LABEL_71:
      v47 = *(a1 + 32);
      v48 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
      nw_listener_set_state_on_queue(v47, 3, v48);

      goto LABEL_200;
    }

    if (!*(v14 + 32))
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v14 = *(a1 + 32);
  if (*(v14 + 32))
  {
LABEL_43:
    if ((v122[3] & 1) == 0)
    {
      v44 = *(v14 + 16);
      if (v44 && !_nw_parameters_get_logging_disabled(v44))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v45 = glistenerLogObj;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = nw_listener_get_id_string(*(a1 + 32));
          *buf = 136446466;
          *&buf[4] = "nw_listener_start_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = v46;
          _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Started without setting new packet handler", buf, 0x16u);
        }
      }

      goto LABEL_71;
    }

    goto LABEL_44;
  }

  if ((v126[3] & 1) == 0)
  {
    v18 = *(v14 + 16);
    if (v18 && !_nw_parameters_get_logging_disabled(v18))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v19 = glistenerLogObj;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = nw_listener_get_id_string(*(a1 + 32));
        *buf = 136446466;
        *&buf[4] = "nw_listener_start_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v20;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Started without setting either new connection handler or new connection group handler", buf, 0x16u);
      }
    }

    goto LABEL_71;
  }

LABEL_44:
  objc_storeStrong((v14 + 264), v14);
  if (*(v126 + 24) == 1)
  {
    nw_parameters_set_attach_protocol_listener(*(*(a1 + 32) + 16));
  }

  logging_disabled = nw_parameters_get_logging_disabled(*(*(a1 + 32) + 16));
  *(*(a1 + 32) + 72) = *(a1 + 40);
  v27 = _nw_parameters_copy_extended_description(*(*(a1 + 32) + 16));
  v28 = *(a1 + 32);
  if (v28[6])
  {
    if (!logging_disabled)
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v29 = glistenerLogObj;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 32);
        v31 = *(v30 + 40);
        v32 = *(v30 + 48);
        *buf = 67109634;
        *&buf[4] = v31;
        *&buf[8] = 2082;
        *&buf[10] = v27;
        *&buf[18] = 2112;
        *&buf[20] = v32;
        _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEFAULT, "[L%u %{public}s] start for connection %@", buf, 0x1Cu);
      }

      v28 = *(a1 + 32);
    }

    v33 = v28;
    nw_context_assert_queue(v33[3]);
    v34 = v33[6];
    v35 = v33[2];
    if (v34)
    {
      listener_protocol_on_nw_queue = nw_connection_get_listener_protocol_on_nw_queue(v34, v35, 0);
      if (listener_protocol_on_nw_queue)
      {
        v37 = [[nw_listener_inbox_protocol alloc] initWithProtocol:v33 delegate:?];
        if (v37)
        {
          v38 = _nw_array_create();
          v39 = v33[18];
          v33[18] = v38;

          v40 = v33[18];
          if (v40)
          {
            _nw_array_append(v40, v37);
          }

          nw_listener_set_state_on_queue(v33, 2, 0);
          goto LABEL_197;
        }

        v77 = v33[2];
        if (v77 && !_nw_parameters_get_logging_disabled(v77))
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v78 = glistenerLogObj;
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            v79 = nw_listener_get_id_string(v33);
            v80 = listener_protocol_on_nw_queue[2];
            *buf = 136446722;
            *&buf[4] = "nw_listener_start_connection_on_queue";
            *&buf[12] = 2082;
            *&buf[14] = v79;
            *&buf[22] = 2082;
            *&buf[24] = v80;
            _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Failed to create inbox for %{public}s", buf, 0x20u);
          }
        }

        v64 = v33;
        posix_error = nw_error_create_posix_error(12);
        nw_listener_set_state_on_queue(v64, 3, posix_error);
      }

      else
      {
        v67 = v33[2];
        if (v67 && !_nw_parameters_get_logging_disabled(v67))
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v68 = glistenerLogObj;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v69 = nw_listener_get_id_string(v33);
            *buf = 136446466;
            *&buf[4] = "nw_listener_start_connection_on_queue";
            *&buf[12] = 2082;
            *&buf[14] = v69;
            _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Listener could not find protocol to join in connection", buf, 0x16u);
          }
        }

        v37 = v33;
        v64 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
        nw_listener_set_state_on_queue(v37, 3, v64);
      }
    }

    else
    {
      if (v35 && !_nw_parameters_get_logging_disabled(v33[2]))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v62 = glistenerLogObj;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v63 = nw_listener_get_id_string(v33);
          *buf = 136446466;
          *&buf[4] = "nw_listener_start_connection_on_queue";
          *&buf[12] = 2082;
          *&buf[14] = v63;
          _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Listener no longer has connection to join", buf, 0x16u);
        }
      }

      v37 = v33;
      v64 = [[NWConcrete_nw_error alloc] initWithDomain:57 code:?];
      nw_listener_set_state_on_queue(v37, 3, v64);
    }

LABEL_197:
    goto LABEL_198;
  }

  if (!v28[7])
  {
    if (!logging_disabled)
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v70 = glistenerLogObj;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = *(*(a1 + 32) + 40);
        *buf = 67109378;
        *&buf[4] = v71;
        *&buf[8] = 2082;
        *&buf[10] = v27;
        _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEFAULT, "[L%u %{public}s] start", buf, 0x12u);
      }

      v28 = *(a1 + 32);
    }

    v33 = v28;
    nw_context_assert_queue(v33[3]);
    nw_listener_set_state_on_queue(v33, 1, 0);
    LODWORD(fds) = 12;
    evaluator_for_listener = nw_path_create_evaluator_for_listener(v33[2], &fds);
    v73 = v33[21];
    v33[21] = evaluator_for_listener;

    v74 = v33[21];
    if (v74)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL26nw_listener_start_on_queueP22NWConcrete_nw_listener_block_invoke;
      *&buf[24] = &unk_1E6A3CD80;
      v75 = v33;
      *&buf[32] = v75;
      nw_path_evaluator_set_update_handler(v74, 0, buf);
      v76 = nw_path_evaluator_copy_path(v33[21]);
      nw_listener_handle_new_path_on_queue(v75, v76);

      v37 = *&buf[32];
    }

    else
    {
      v111 = v33[2];
      if (v111 && !_nw_parameters_get_logging_disabled(v111))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v112 = glistenerLogObj;
        if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
        {
          v113 = nw_listener_get_id_string(v33);
          *buf = 136446466;
          *&buf[4] = "nw_listener_start_on_queue";
          *&buf[12] = 2082;
          *&buf[14] = v113;
          _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] nw_path_create_evaluator_for_listener failed", buf, 0x16u);
        }
      }

      v114 = fds;
      v37 = v33;
      v115 = nw_error_create_posix_error(v114);
      nw_listener_set_state_on_queue(v37, 3, v115);
    }

    goto LABEL_197;
  }

  if (!logging_disabled)
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v49 = glistenerLogObj;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(a1 + 32);
      v51 = *(v50 + 40);
      v52 = *(v50 + 56);
      *buf = 67109634;
      *&buf[4] = v51;
      *&buf[8] = 2082;
      *&buf[10] = v27;
      *&buf[18] = 2082;
      *&buf[20] = v52;
      _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEFAULT, "[L%u %{public}s] start for launchd key %{public}s", buf, 0x1Cu);
    }

    v28 = *(a1 + 32);
  }

  v53 = v28;
  nw_context_assert_queue(*(v53 + 3));
  v54 = _nw_array_create();
  v55 = *(v53 + 18);
  *(v53 + 18) = v54;

  cnt = 0;
  fds = 0;
  v56 = launch_activate_socket(*(v53 + 7), &fds, &cnt);
  if (v56)
  {
    v57 = *(v53 + 2);
    if (v57 && !_nw_parameters_get_logging_disabled(v57))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v58 = glistenerLogObj;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = nw_listener_get_id_string(v53);
        v60 = *(v53 + 7);
        *buf = 136446978;
        *&buf[4] = "nw_listener_start_launchd_on_queue";
        *&buf[12] = 2082;
        *&buf[14] = v59;
        *&buf[22] = 2082;
        *&buf[24] = v60;
        *&buf[32] = 1024;
        *&buf[34] = v56;
        _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] launch_activate_socket(%{public}s failed: %{darwin.errno}d", buf, 0x26u);
      }
    }

    v61 = nw_error_create_posix_error(v56);
  }

  else
  {
    v61 = 0;
  }

  v82 = fds;
  if (!fds)
  {
    goto LABEL_182;
  }

  if (!cnt)
  {
    goto LABEL_181;
  }

  for (i = 0; i < cnt; ++i)
  {
    if (v61)
    {
      close(fds[i]);
      continue;
    }

    v133 = 4;
    v134 = 0;
    if (getsockopt(fds[i], 0xFFFF, 4104, &v134, &v133))
    {
      v84 = 0;
    }

    else
    {
      v84 = v134 == 1;
    }

    if (v84)
    {
      v88 = [nw_listener_inbox_socket alloc];
      v89 = fds[i];
      v90 = *(v53 + 2);
      v91 = v53;
      if (v88 && (v92 = [(nw_listener_inbox_socket *)v88 initWithParameters:v90 delegate:v91], (v88 = v92) != 0) && (v89 & 0x80000000) == 0)
      {
        v92->_sockfd_from_client = v89;
        v88 = v92;
        v93 = v88;
      }

      else
      {
        v93 = 0;
      }

      if (!v93)
      {
        v61 = [[NWConcrete_nw_error alloc] initWithDomain:45 code:?];
        v100 = *(v53 + 2);
        if (v100 && !_nw_parameters_get_logging_disabled(v100))
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v101 = glistenerLogObj;
          if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
          {
            v102 = nw_listener_get_id_string(v91);
            v103 = *(v53 + 7);
            v104 = *(v53 + 2);
            *buf = 136447234;
            *&buf[4] = "nw_listener_start_launchd_on_queue";
            *&buf[12] = 2082;
            *&buf[14] = v102;
            *&buf[22] = 2082;
            *&buf[24] = v103;
            *&buf[32] = 2048;
            *&buf[34] = i;
            *&buf[42] = 2114;
            v138 = v104;
            _os_log_impl(&dword_181A37000, v101, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Failed to create inbox for %{public}s[%zu] with parameters %{public}@", buf, 0x34u);
          }
        }

        close(fds[i]);
        goto LABEL_179;
      }

      v94 = [(nw_listener_inbox_socket *)v93 start];
      v95 = *(v53 + 2);
      if (v94)
      {
        if (!v95 || _nw_parameters_get_logging_disabled(v95))
        {
          goto LABEL_178;
        }

        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v96 = glistenerLogObj;
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
        {
          v97 = nw_listener_get_id_string(v91);
          v98 = *(v53 + 7);
          v99 = *(v53 + 2);
          *buf = 136447746;
          *&buf[4] = "nw_listener_start_launchd_on_queue";
          *&buf[12] = 2082;
          *&buf[14] = v97;
          *&buf[22] = 2114;
          *&buf[24] = v94;
          *&buf[32] = 2114;
          *&buf[34] = v93;
          *&buf[42] = 2082;
          v138 = v98;
          v139 = 2048;
          v140 = i;
          v141 = 2114;
          v142 = v99;
          _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Error %{public}@ starting inbox %{public}@ for %{public}s[%zu] with parameters %{public}@", buf, 0x48u);
        }
      }

      else
      {
        if (v95 && !_nw_parameters_get_logging_disabled(v95))
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v105 = glistenerLogObj;
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            v106 = nw_listener_get_id_string(v91);
            v107 = *(v53 + 7);
            v108 = *(v53 + 2);
            *buf = 136447490;
            *&buf[4] = "nw_listener_start_launchd_on_queue";
            *&buf[12] = 2082;
            *&buf[14] = v106;
            *&buf[22] = 2114;
            *&buf[24] = v93;
            *&buf[32] = 2082;
            *&buf[34] = v107;
            *&buf[42] = 2048;
            v138 = i;
            v139 = 2114;
            v140 = v108;
            _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] Started inbox %{public}@ for %{public}s[%zu] with parameters %{public}@", buf, 0x3Eu);
          }
        }

        v96 = [(nw_listener_inbox *)v93 local_endpoint];
        if (v96)
        {
          nw_listener_set_local_endpoint_on_queue(v91, v96);
        }

        v109 = *(v53 + 18);
        if (v109)
        {
          _nw_array_append(v109, v93);
        }
      }

LABEL_178:
      v61 = v94;
LABEL_179:

      continue;
    }

    v85 = *(v53 + 2);
    if (v85 && !_nw_parameters_get_logging_disabled(v85))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v86 = glistenerLogObj;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        v87 = *(v53 + 7);
        *buf = 136446978;
        *&buf[4] = "nw_listener_start_launchd_on_queue";
        *&buf[12] = 2082;
        *&buf[14] = v53 + 42;
        *&buf[22] = 2082;
        *&buf[24] = v87;
        *&buf[32] = 2048;
        *&buf[34] = i;
        _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] socket %{public}s[%zu] not SOCK_STREAM - not supported", buf, 0x2Au);
      }
    }

    v61 = [[NWConcrete_nw_error alloc] initWithDomain:45 code:?];
    close(fds[i]);
  }

  v82 = fds;
  if (fds)
  {
LABEL_181:
    free(v82);
    fds = 0;
  }

LABEL_182:
  if (!v61)
  {
    v110 = *(v53 + 18);
    if (v110 && _nw_array_get_count(v110))
    {
      v61 = 0;
      nw_listener_set_state_on_queue(v53, 2, 0);
      goto LABEL_188;
    }

    v61 = nw_error_create_posix_error(22);
  }

  nw_listener_set_state_on_queue(v53, 3, v61);
LABEL_188:

LABEL_198:
  if (v27)
  {
    free(v27);
  }

LABEL_200:

  _Block_object_dispose(&v121, 8);
  _Block_object_dispose(&v125, 8);
  _Block_object_dispose(type, 8);
}

void sub_18246BF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL42nw_listener_update_trigger_agents_on_queueP22NWConcrete_nw_listener_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (object_getClass(v4) == MEMORY[0x1E69E9F20])
    {
      *buf = *xpc_uuid_get_bytes(v5);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___ZL42nw_listener_update_trigger_agents_on_queueP22NWConcrete_nw_listener_block_invoke_2;
      v13[3] = &unk_1E6A30FC8;
      v11 = *(a1 + 32);
      v14 = *(a1 + 40);
      v17 = buf;
      v15 = *(a1 + 48);
      v16 = v5;
      _nw_path_access_network_agent(v11, buf, v13);

      goto LABEL_17;
    }

    v6 = MEMORY[0x1865DFA50](v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(a1 + 56) + 16);
  if (v7 && !_nw_parameters_get_logging_disabled(v7))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v8 = glistenerLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      id_string = nw_listener_get_id_string(*(a1 + 56));
      v10 = "<NULL>";
      *buf = 136446722;
      *&buf[4] = "nw_listener_update_trigger_agents_on_queue_block_invoke";
      *&buf[12] = 2082;
      if (v6)
      {
        v10 = v6;
      }

      *&buf[14] = id_string;
      v19 = 2082;
      v20 = v10;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Invalid value: %{public}s", buf, 0x20u);
    }
  }

  if (v6)
  {
    free(v6);
  }

LABEL_17:

  return 1;
}

void ___ZL42nw_listener_update_trigger_agents_on_queueP22NWConcrete_nw_listener_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 56);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL42nw_listener_update_trigger_agents_on_queueP22NWConcrete_nw_listener_block_invoke_3;
  aBlock[3] = &unk_1E6A30FA0;
  v9 = a3;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  _nw_path_access_network_agent(v5, v4, aBlock);
}

void ___ZL42nw_listener_update_trigger_agents_on_queueP22NWConcrete_nw_listener_block_invoke_3(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 48) == a3)
  {
    xpc_array_append_value(*(a1 + 32), *(a1 + 40));
  }
}

void nw_listener_teardown_protocol_inboxes(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_parameters_copy_context(v1[2]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_listener_teardown_protocol_inboxes_block_invoke;
    v12[3] = &unk_1E6A3D868;
    v13 = v2;
    nw_queue_context_async(v3, v12);

    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_listener_teardown_protocol_inboxes";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v5, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_listener_teardown_protocol_inboxes";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          v17 = "nw_listener_teardown_protocol_inboxes";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v17 = "nw_listener_teardown_protocol_inboxes";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_listener_teardown_protocol_inboxes";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void __nw_listener_teardown_protocol_inboxes_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 128) != 2 || (*(v2 + 310) & 1) != 0)
  {
    v11 = *(v2 + 16);
    if (v11 && !_nw_parameters_get_logging_disabled(v11))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v10 = glistenerLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        id_string = nw_listener_get_id_string(*(a1 + 32));
        *buf = 136446466;
        v16 = "nw_listener_teardown_protocol_inboxes_block_invoke";
        v17 = 2082;
        v18 = id_string;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Listener is not ready, ignoring teardown protocol inboxes", buf, 0x16u);
      }

      goto LABEL_18;
    }
  }

  else
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v4 = glistenerLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = nw_listener_get_id_string(*(a1 + 32));
        *buf = 136446466;
        v16 = "nw_listener_teardown_protocol_inboxes_block_invoke";
        v17 = 2082;
        v18 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] tearing down protocol inboxes", buf, 0x16u);
      }
    }

    v6 = *(a1 + 32);
    v7 = v6[18];
    if (v7)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __nw_listener_teardown_protocol_inboxes_block_invoke_59;
      v13[3] = &unk_1E6A2E028;
      v14 = v6;
      v8 = v7;
      v9 = v13;
      _nw_array_remove_objects(v8, v9);

      v10 = v14;
LABEL_18:
    }
  }
}

uint64_t __nw_listener_teardown_protocol_inboxes_block_invoke_59(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = *(*(a1 + 32) + 16);
    if (v5 && !_nw_parameters_get_logging_disabled(v5))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v6 = glistenerLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        id_string = nw_listener_get_id_string(*(a1 + 32));
        v9 = 136446722;
        v10 = "nw_listener_teardown_protocol_inboxes_block_invoke";
        v11 = 2082;
        v12 = id_string;
        v13 = 2114;
        v14 = v3;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] cancelling protocol inbox: %{public}@", &v9, 0x20u);
      }
    }

    nw_listener_resume_inbox(*(a1 + 32), v3);
    nw_listener_cancel_inbox_on_queue(*(a1 + 32), v3);
  }

  return isKindOfClass & 1;
}

uint16_t nw_listener_get_port(nw_listener_t listener)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = listener;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_get_port_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v16 = buf;
    v15 = v1;
    v3 = _Block_copy(aBlock);
    os_unfair_lock_lock(v2 + 2);
    v3[2](v3);
    os_unfair_lock_unlock(v2 + 2);

    v4 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_listener_get_port";
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
        *&buf[4] = "nw_listener_get_port";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener", buf, 0xCu);
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
          *&buf[4] = "nw_listener_get_port";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_get_port";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_get_port";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
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

void sub_18246CE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_listener_copy_advertise_descriptor(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v20 = __Block_byref_object_copy__18668;
    v21 = __Block_byref_object_dispose__18669;
    v22 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_copy_advertise_descriptor_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v16 = buf;
    v15 = v1;
    v3 = _Block_copy(aBlock);
    os_unfair_lock_lock(v2 + 2);
    v3[2](v3);
    os_unfair_lock_unlock(v2 + 2);

    v4 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_listener_copy_advertise_descriptor";
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
        *&buf[4] = "nw_listener_copy_advertise_descriptor";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener", buf, 0xCu);
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
          *&buf[4] = "nw_listener_copy_advertise_descriptor";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_copy_advertise_descriptor";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_copy_advertise_descriptor";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
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

void sub_18246D254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

id nw_listener_copy_parameters(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[2];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_listener_copy_parameters";
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
        v16 = "nw_listener_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null listener", buf, 0xCu);
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
          v16 = "nw_listener_copy_parameters";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_listener_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_listener_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
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

void __nw_listener_get_path_uuid_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 176);
  if (v2)
  {
    v4 = v2;
    _nw_path_get_client_id(v4, v1);
  }

  else
  {
    v3 = *(a1 + 40);

    uuid_clear(v3);
  }
}

void nw_listener_set_require_authorized_keys_for_inbound(void *a1, char a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_set_require_authorized_keys_for_inbound_block_invoke;
    aBlock[3] = &unk_1E6A3A258;
    v15 = v3;
    v16 = a2;
    v5 = _Block_copy(aBlock);
    os_unfair_lock_lock(v4 + 2);
    v5[2](v5);
    os_unfair_lock_unlock(v4 + 2);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_listener_set_require_authorized_keys_for_inbound";
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
        v20 = "nw_listener_set_require_authorized_keys_for_inbound";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener", buf, 0xCu);
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
          v20 = "nw_listener_set_require_authorized_keys_for_inbound";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_listener_set_require_authorized_keys_for_inbound";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v20 = "nw_listener_set_require_authorized_keys_for_inbound";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
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

void __nw_listener_set_require_authorized_keys_for_inbound_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (((*(v1 + 310) >> 3) & 1) != *(a1 + 40))
  {
    v3 = *(v1 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v4 = glistenerLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        id_string = nw_listener_get_id_string(*(a1 + 32));
        v6 = *(a1 + 40);
        v7 = 136446722;
        v8 = "nw_listener_set_require_authorized_keys_for_inbound_block_invoke";
        v9 = 2082;
        v10 = id_string;
        v11 = 1024;
        v12 = v6;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Setting require authorized keys to %d", &v7, 0x1Cu);
      }
    }

    *(*(a1 + 32) + 310) = *(*(a1 + 32) + 310) & 0xF7 | (8 * *(a1 + 40));
  }
}

void nw_listener_simulate_mDNSResponder_crash(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_simulate_mDNSResponder_crash_block_invoke;
    aBlock[3] = &unk_1E6A3D868;
    v13 = v1;
    v3 = _Block_copy(aBlock);
    os_unfair_lock_lock(v2 + 2);
    v3[2](v3);
    os_unfair_lock_unlock(v2 + 2);

    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_listener_simulate_mDNSResponder_crash";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v5, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_listener_simulate_mDNSResponder_crash";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v14 == 1)
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
          v17 = "nw_listener_simulate_mDNSResponder_crash";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v17 = "nw_listener_simulate_mDNSResponder_crash";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v17 = "nw_listener_simulate_mDNSResponder_crash";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

void __nw_listener_simulate_mDNSResponder_crash_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 280);
  if (v2)
  {
    if ([v2 count] == 1)
    {
      v3 = [*(*(a1 + 32) + 280) objectAtIndexedSubscript:0];
      v4 = v3[8];

      if (v4)
      {
        v5 = [*(*(a1 + 32) + 280) objectAtIndexedSubscript:0];
        v6 = DNSServiceRefSockFD(v5[8]);

        shutdown(v6, 2);
      }
    }
  }
}

void nw_listener_set_advertise_endpoints(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = v3[3];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_listener_set_advertise_endpoints_block_invoke;
    v14[3] = &unk_1E6A3D760;
    v15 = v3;
    v16 = v4;
    nw_queue_context_async(v5, v14);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_listener_set_advertise_endpoints";
  v7 = _os_log_send_and_compose_impl();

  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v7, &v18, &v17))
  {
    if (v18 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_listener_set_advertise_endpoints";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = v18;
      v12 = os_log_type_enabled(v8, v18);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v20 = "nw_listener_set_advertise_endpoints";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_listener_set_advertise_endpoints";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_listener_set_advertise_endpoints";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
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

void __nw_listener_set_advertise_endpoints_block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  if (v3 == 2)
  {
    if (!*(v2 + 272))
    {
      v18 = nw_listener_reconcile_advertised_endpoints(v2, *(v2 + 280), *(a1 + 40), *(v2 + 176), 0);
      v19 = *(a1 + 32);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_listener_set_advertise_endpoints_block_invoke_64;
      aBlock[3] = &unk_1E6A3D760;
      v36 = v19;
      v20 = v18;
      v37 = v20;
      v21 = _Block_copy(aBlock);
      os_unfair_lock_lock(v19 + 2);
      v21[2](v21);
      os_unfair_lock_unlock(v19 + 2);

      return;
    }

    v4 = *(v2 + 16);
    if (!v4 || _nw_parameters_get_logging_disabled(v4))
    {
      return;
    }

    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v5 = glistenerLogObj;
    id_string = nw_listener_get_id_string(*(a1 + 32));
    *buf = 136446466;
    v41 = "nw_listener_set_advertise_endpoints_block_invoke";
    v42 = 2082;
    v43 = id_string;
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v7, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v8 = glistenerLogObj;
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          v10 = nw_listener_get_id_string(*(a1 + 32));
          *buf = 136446466;
          v41 = "nw_listener_set_advertise_endpoints_block_invoke";
          v42 = 2082;
          v43 = v10;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s [%{public}s] Called on listener with advertise descriptor set", buf, 0x16u);
        }

LABEL_64:

        goto LABEL_65;
      }

      if (v38 != 1)
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v8 = glistenerLogObj;
        v29 = type;
        if (os_log_type_enabled(v8, type))
        {
          v30 = nw_listener_get_id_string(*(a1 + 32));
          *buf = 136446466;
          v41 = "nw_listener_set_advertise_endpoints_block_invoke";
          v42 = 2082;
          v43 = v30;
          _os_log_impl(&dword_181A37000, v8, v29, "%{public}s [%{public}s] Called on listener with advertise descriptor set, backtrace limit exceeded", buf, 0x16u);
        }

        goto LABEL_64;
      }

      backtrace_string = __nw_create_backtrace_string();
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v8 = glistenerLogObj;
      v23 = type;
      v24 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v24)
        {
          v33 = nw_listener_get_id_string(*(a1 + 32));
          *buf = 136446466;
          v41 = "nw_listener_set_advertise_endpoints_block_invoke";
          v42 = 2082;
          v43 = v33;
          _os_log_impl(&dword_181A37000, v8, v23, "%{public}s [%{public}s] Called on listener with advertise descriptor set, no backtrace", buf, 0x16u);
        }

        goto LABEL_64;
      }

      if (v24)
      {
        v25 = nw_listener_get_id_string(*(a1 + 32));
        *buf = 136446722;
        v41 = "nw_listener_set_advertise_endpoints_block_invoke";
        v42 = 2082;
        v43 = v25;
        v44 = 2082;
        v45 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v23, "%{public}s [%{public}s] Called on listener with advertise descriptor set, dumping backtrace:%{public}s", buf, 0x20u);
      }

      goto LABEL_47;
    }

LABEL_65:
    if (!v7)
    {
      return;
    }

    goto LABEL_66;
  }

  v11 = *(v2 + 16);
  if (v3 > 1)
  {
    if (v11 && !_nw_parameters_get_logging_disabled(v11))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v16 = glistenerLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = nw_listener_get_id_string(*(a1 + 32));
        *buf = 136446466;
        v41 = "nw_listener_set_advertise_endpoints_block_invoke";
        v42 = 2082;
        v43 = v17;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Ignoring, listener is no longer ready", buf, 0x16u);
      }
    }

    return;
  }

  if (!v11 || _nw_parameters_get_logging_disabled(v11))
  {
    return;
  }

  if (__nwlog_listener_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
  }

  v12 = glistenerLogObj;
  v13 = nw_listener_get_id_string(*(a1 + 32));
  *buf = 136446466;
  v41 = "nw_listener_set_advertise_endpoints_block_invoke";
  v42 = 2082;
  v43 = v13;
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (!__nwlog_fault(v7, &type, &v38))
  {
    goto LABEL_65;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v8 = glistenerLogObj;
    v14 = type;
    if (os_log_type_enabled(v8, type))
    {
      v15 = nw_listener_get_id_string(*(a1 + 32));
      *buf = 136446466;
      v41 = "nw_listener_set_advertise_endpoints_block_invoke";
      v42 = 2082;
      v43 = v15;
      _os_log_impl(&dword_181A37000, v8, v14, "%{public}s [%{public}s] Called before listener was ready", buf, 0x16u);
    }

    goto LABEL_64;
  }

  if (v38 != 1)
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v8 = glistenerLogObj;
    v31 = type;
    if (os_log_type_enabled(v8, type))
    {
      v32 = nw_listener_get_id_string(*(a1 + 32));
      *buf = 136446466;
      v41 = "nw_listener_set_advertise_endpoints_block_invoke";
      v42 = 2082;
      v43 = v32;
      _os_log_impl(&dword_181A37000, v8, v31, "%{public}s [%{public}s] Called before listener was ready, backtrace limit exceeded", buf, 0x16u);
    }

    goto LABEL_64;
  }

  backtrace_string = __nw_create_backtrace_string();
  if (__nwlog_listener_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
  }

  v8 = glistenerLogObj;
  v26 = type;
  v27 = os_log_type_enabled(v8, type);
  if (!backtrace_string)
  {
    if (v27)
    {
      v34 = nw_listener_get_id_string(*(a1 + 32));
      *buf = 136446466;
      v41 = "nw_listener_set_advertise_endpoints_block_invoke";
      v42 = 2082;
      v43 = v34;
      _os_log_impl(&dword_181A37000, v8, v26, "%{public}s [%{public}s] Called before listener was ready, no backtrace", buf, 0x16u);
    }

    goto LABEL_64;
  }

  if (v27)
  {
    v28 = nw_listener_get_id_string(*(a1 + 32));
    *buf = 136446722;
    v41 = "nw_listener_set_advertise_endpoints_block_invoke";
    v42 = 2082;
    v43 = v28;
    v44 = 2082;
    v45 = backtrace_string;
    _os_log_impl(&dword_181A37000, v8, v26, "%{public}s [%{public}s] Called before listener was ready, dumping backtrace:%{public}s", buf, 0x20u);
  }

LABEL_47:

  free(backtrace_string);
  if (v7)
  {
LABEL_66:
    free(v7);
  }
}

void sub_18246F12C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t NWPBServiceBrowseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v19 = 0;
        v13 = [a2 position] + 1;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 1, v14 <= objc_msgSend(a2, "length")))
        {
          v15 = [a2 data];
          [v15 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v12 |= (v19 & 0x7F) << v10;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v17 = 0;
          goto LABEL_19;
        }
      }

      v17 = [a2 hasError] ? 0 : v12;
LABEL_19:
      if (([a2 hasError] & 1) != 0 || (v17 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v17 >> 3) == 1)
      {
        break;
      }

      if ((v17 >> 3) == 2)
      {
        v5 = &OBJC_IVAR___NWPBServiceBrowse__domain;
        goto LABEL_4;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_5:
      v9 = [a2 position];
      if (v9 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v5 = &OBJC_IVAR___NWPBServiceBrowse__type;
LABEL_4:
    v6 = PBReaderReadString();
    v7 = *v5;
    v8 = *(a1 + v7);
    *(a1 + v7) = v6;

    goto LABEL_5;
  }

  return [a2 hasError] ^ 1;
}

void _nw_parameters_configure_protocol_disable_block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  *buf = 136446210;
  v13 = "_nw_parameters_configure_protocol_disable_block_invoke";
  v1 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (!__nwlog_fault(v1, &type, &v10))
  {
    goto LABEL_10;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "_nw_parameters_configure_protocol_disable_block_invoke";
    v4 = "%{public}s _nw_parameters_configure_protocol_disable called directly";
LABEL_15:
    v8 = v2;
    v9 = v3;
LABEL_16:
    _os_log_impl(&dword_181A37000, v8, v9, v4, buf, 0xCu);
    goto LABEL_17;
  }

  if (v10 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "_nw_parameters_configure_protocol_disable_block_invoke";
    v4 = "%{public}s _nw_parameters_configure_protocol_disable called directly, backtrace limit exceeded";
    goto LABEL_15;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v6 = type;
  v7 = os_log_type_enabled(v2, type);
  if (backtrace_string)
  {
    if (v7)
    {
      *buf = 136446466;
      v13 = "_nw_parameters_configure_protocol_disable_block_invoke";
      v14 = 2082;
      v15 = backtrace_string;
      _os_log_impl(&dword_181A37000, v2, v6, "%{public}s _nw_parameters_configure_protocol_disable called directly, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_10:
    if (!v1)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    *buf = 136446210;
    v13 = "_nw_parameters_configure_protocol_disable_block_invoke";
    v4 = "%{public}s _nw_parameters_configure_protocol_disable called directly, no backtrace";
    v8 = v2;
    v9 = v6;
    goto LABEL_16;
  }

LABEL_17:

  if (v1)
  {
LABEL_11:
    free(v1);
  }
}

void _nw_parameters_configure_protocol_default_configuration_block_invoke_2()
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  *buf = 136446210;
  v13 = "_nw_parameters_configure_protocol_default_configuration_block_invoke_2";
  v1 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (!__nwlog_fault(v1, &type, &v10))
  {
    goto LABEL_10;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "_nw_parameters_configure_protocol_default_configuration_block_invoke_2";
    v4 = "%{public}s _nw_parameters_configure_protocol_default_configuration called directly";
LABEL_15:
    v8 = v2;
    v9 = v3;
LABEL_16:
    _os_log_impl(&dword_181A37000, v8, v9, v4, buf, 0xCu);
    goto LABEL_17;
  }

  if (v10 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "_nw_parameters_configure_protocol_default_configuration_block_invoke_2";
    v4 = "%{public}s _nw_parameters_configure_protocol_default_configuration called directly, backtrace limit exceeded";
    goto LABEL_15;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v6 = type;
  v7 = os_log_type_enabled(v2, type);
  if (backtrace_string)
  {
    if (v7)
    {
      *buf = 136446466;
      v13 = "_nw_parameters_configure_protocol_default_configuration_block_invoke_2";
      v14 = 2082;
      v15 = backtrace_string;
      _os_log_impl(&dword_181A37000, v2, v6, "%{public}s _nw_parameters_configure_protocol_default_configuration called directly, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_10:
    if (!v1)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    *buf = 136446210;
    v13 = "_nw_parameters_configure_protocol_default_configuration_block_invoke_2";
    v4 = "%{public}s _nw_parameters_configure_protocol_default_configuration called directly, no backtrace";
    v8 = v2;
    v9 = v6;
    goto LABEL_16;
  }

LABEL_17:

  if (v1)
  {
LABEL_11:
    free(v1);
  }
}

void _nw_parameters_configure_sec_protocol_default_configuration_block_invoke_3()
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  *buf = 136446210;
  v13 = "_nw_parameters_configure_sec_protocol_default_configuration_block_invoke_3";
  v1 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (!__nwlog_fault(v1, &type, &v10))
  {
    goto LABEL_10;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "_nw_parameters_configure_sec_protocol_default_configuration_block_invoke_3";
    v4 = "%{public}s _nw_parameters_configure_sec_protocol_default_configuration called directly";
LABEL_15:
    v8 = v2;
    v9 = v3;
LABEL_16:
    _os_log_impl(&dword_181A37000, v8, v9, v4, buf, 0xCu);
    goto LABEL_17;
  }

  if (v10 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "_nw_parameters_configure_sec_protocol_default_configuration_block_invoke_3";
    v4 = "%{public}s _nw_parameters_configure_sec_protocol_default_configuration called directly, backtrace limit exceeded";
    goto LABEL_15;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v6 = type;
  v7 = os_log_type_enabled(v2, type);
  if (backtrace_string)
  {
    if (v7)
    {
      *buf = 136446466;
      v13 = "_nw_parameters_configure_sec_protocol_default_configuration_block_invoke_3";
      v14 = 2082;
      v15 = backtrace_string;
      _os_log_impl(&dword_181A37000, v2, v6, "%{public}s _nw_parameters_configure_sec_protocol_default_configuration called directly, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_10:
    if (!v1)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    *buf = 136446210;
    v13 = "_nw_parameters_configure_sec_protocol_default_configuration_block_invoke_3";
    v4 = "%{public}s _nw_parameters_configure_sec_protocol_default_configuration called directly, no backtrace";
    v8 = v2;
    v9 = v6;
    goto LABEL_16;
  }

LABEL_17:

  if (v1)
  {
LABEL_11:
    free(v1);
  }
}

char *nw_parameters_create_offload_secure_tcp(void *a1, void *a2, void *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6)
  {
    v47 = __nwlog_obj();
    *buf = 136446210;
    v84 = "nw_parameters_create_offload_secure_tcp";
    v48 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (!__nwlog_fault(v48, &type, &v81))
    {
      goto LABEL_205;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null configure_offload", buf, 0xCu);
      }

      goto LABEL_204;
    }

    if (v81 != 1)
    {
      v49 = __nwlog_obj();
      v74 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v74, "%{public}s called with null configure_offload, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_204;
    }

    backtrace_string = __nw_create_backtrace_string();
    v49 = __nwlog_obj();
    v62 = type;
    v63 = os_log_type_enabled(v49, type);
    if (!backtrace_string)
    {
      if (v63)
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v62, "%{public}s called with null configure_offload, no backtrace", buf, 0xCu);
      }

      goto LABEL_204;
    }

    if (v63)
    {
      *buf = 136446466;
      v84 = "nw_parameters_create_offload_secure_tcp";
      v85 = 2082;
      v86 = backtrace_string;
      _os_log_impl(&dword_181A37000, v49, v62, "%{public}s called with null configure_offload, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_168:

    free(backtrace_string);
    goto LABEL_205;
  }

  if (!v5)
  {
    v51 = __nwlog_obj();
    *buf = 136446210;
    v84 = "nw_parameters_create_offload_secure_tcp";
    v48 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (!__nwlog_fault(v48, &type, &v81))
    {
      goto LABEL_205;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v52, "%{public}s called with null configure_tls", buf, 0xCu);
      }

      goto LABEL_204;
    }

    if (v81 != 1)
    {
      v49 = __nwlog_obj();
      v75 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v75, "%{public}s called with null configure_tls, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_204;
    }

    backtrace_string = __nw_create_backtrace_string();
    v49 = __nwlog_obj();
    v64 = type;
    v65 = os_log_type_enabled(v49, type);
    if (!backtrace_string)
    {
      if (v65)
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v64, "%{public}s called with null configure_tls, no backtrace", buf, 0xCu);
      }

      goto LABEL_204;
    }

    if (v65)
    {
      *buf = 136446466;
      v84 = "nw_parameters_create_offload_secure_tcp";
      v85 = 2082;
      v86 = backtrace_string;
      _os_log_impl(&dword_181A37000, v49, v64, "%{public}s called with null configure_tls, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_168;
  }

  if (!v7)
  {
    v53 = __nwlog_obj();
    *buf = 136446210;
    v84 = "nw_parameters_create_offload_secure_tcp";
    v48 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (!__nwlog_fault(v48, &type, &v81))
    {
      goto LABEL_205;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v54 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v54, "%{public}s called with null configure_tcp", buf, 0xCu);
      }

      goto LABEL_204;
    }

    if (v81 != 1)
    {
      v49 = __nwlog_obj();
      v76 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v76, "%{public}s called with null configure_tcp, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_204;
    }

    backtrace_string = __nw_create_backtrace_string();
    v49 = __nwlog_obj();
    v66 = type;
    v67 = os_log_type_enabled(v49, type);
    if (!backtrace_string)
    {
      if (v67)
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v66, "%{public}s called with null configure_tcp, no backtrace", buf, 0xCu);
      }

      goto LABEL_204;
    }

    if (v67)
    {
      *buf = 136446466;
      v84 = "nw_parameters_create_offload_secure_tcp";
      v85 = 2082;
      v86 = backtrace_string;
      _os_log_impl(&dword_181A37000, v49, v66, "%{public}s called with null configure_tcp, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_168;
  }

  if (v6 == &__block_literal_global_19409)
  {
    v55 = __nwlog_obj();
    *buf = 136446210;
    v84 = "nw_parameters_create_offload_secure_tcp";
    v48 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (!__nwlog_fault(v48, &type, &v81))
    {
      goto LABEL_205;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v56 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v56, "%{public}s called with null (configure_offload != (_nw_parameters_configure_protocol_disable))", buf, 0xCu);
      }

      goto LABEL_204;
    }

    if (v81 != 1)
    {
      v49 = __nwlog_obj();
      v77 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v77, "%{public}s called with null (configure_offload != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_204;
    }

    backtrace_string = __nw_create_backtrace_string();
    v49 = __nwlog_obj();
    v68 = type;
    v69 = os_log_type_enabled(v49, type);
    if (!backtrace_string)
    {
      if (v69)
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v68, "%{public}s called with null (configure_offload != (_nw_parameters_configure_protocol_disable)), no backtrace", buf, 0xCu);
      }

      goto LABEL_204;
    }

    if (v69)
    {
      *buf = 136446466;
      v84 = "nw_parameters_create_offload_secure_tcp";
      v85 = 2082;
      v86 = backtrace_string;
      _os_log_impl(&dword_181A37000, v49, v68, "%{public}s called with null (configure_offload != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_168;
  }

  if (v5 == &__block_literal_global_19409)
  {
    v57 = __nwlog_obj();
    *buf = 136446210;
    v84 = "nw_parameters_create_offload_secure_tcp";
    v48 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (!__nwlog_fault(v48, &type, &v81))
    {
      goto LABEL_205;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v58 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v58, "%{public}s called with null (configure_tls != (_nw_parameters_configure_protocol_disable))", buf, 0xCu);
      }

      goto LABEL_204;
    }

    if (v81 != 1)
    {
      v49 = __nwlog_obj();
      v78 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v78, "%{public}s called with null (configure_tls != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_204;
    }

    backtrace_string = __nw_create_backtrace_string();
    v49 = __nwlog_obj();
    v70 = type;
    v71 = os_log_type_enabled(v49, type);
    if (!backtrace_string)
    {
      if (v71)
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v70, "%{public}s called with null (configure_tls != (_nw_parameters_configure_protocol_disable)), no backtrace", buf, 0xCu);
      }

      goto LABEL_204;
    }

    if (v71)
    {
      *buf = 136446466;
      v84 = "nw_parameters_create_offload_secure_tcp";
      v85 = 2082;
      v86 = backtrace_string;
      _os_log_impl(&dword_181A37000, v49, v70, "%{public}s called with null (configure_tls != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_168;
  }

  if (v7 != &__block_literal_global_19409)
  {
    v9 = _nw_parameters_create();
    if (v9)
    {
      v10 = nw_protocol_boringssl_copy_definition();
      options = nw_protocol_create_options(v10);

      if (options)
      {
        if (nw_parameters_add_protocol_stack_member(v9, 4, 0, options))
        {
          if (v5 != &__block_literal_global_2)
          {
            v5[2](v5, options);
          }

          if (nw_protocol_setup_aop2_offload_definition(void)::onceToken != -1)
          {
            dispatch_once(&nw_protocol_setup_aop2_offload_definition(void)::onceToken, &__block_literal_global);
          }

          v12 = nw_protocol_create_options(g_aop2_offload_definition);
          if (v12)
          {
            if (nw_parameters_add_protocol_stack_member(v9, 4, 0, v12))
            {
              if (v6 != &__block_literal_global_2)
              {
                v6[2](v6, v12);
              }

              v13 = _nw_tcp_create_options();
              if (v13)
              {
                if (nw_parameters_add_protocol_stack_member(v9, 3, 0, v13))
                {
                  if (networkd_settings_get_BOOL(nw_setting_tcp_enable_auto_tfo[0]))
                  {
                    _nw_parameters_set_tfo(v9, 1);
                  }

                  if (v8 != &__block_literal_global_2)
                  {
                    v8[2](v8, v13);
                  }

                  _nw_parameters_set_use_aop2_offload(v9, 1);
                  _nw_parameters_set_data_mode(v9, 2);
                  v14 = v9;
                  goto LABEL_104;
                }

LABEL_103:
                v14 = 0;
LABEL_104:

                goto LABEL_105;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v38 = gLogObj;
              *buf = 136446210;
              v84 = "nw_parameters_create_offload_secure_tcp";
              v39 = _os_log_send_and_compose_impl();

              type = OS_LOG_TYPE_ERROR;
              v81 = 0;
              if (__nwlog_fault(v39, &type, &v81))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  v40 = __nwlog_obj();
                  v41 = type;
                  if (os_log_type_enabled(v40, type))
                  {
                    *buf = 136446210;
                    v84 = "nw_parameters_create_offload_secure_tcp";
                    _os_log_impl(&dword_181A37000, v40, v41, "%{public}s nw_tcp_create_options failed", buf, 0xCu);
                  }
                }

                else if (v81 == 1)
                {
                  v43 = __nw_create_backtrace_string();
                  v40 = __nwlog_obj();
                  v80 = type;
                  v44 = os_log_type_enabled(v40, type);
                  if (v43)
                  {
                    if (v44)
                    {
                      *buf = 136446466;
                      v84 = "nw_parameters_create_offload_secure_tcp";
                      v85 = 2082;
                      v86 = v43;
                      _os_log_impl(&dword_181A37000, v40, v80, "%{public}s nw_tcp_create_options failed, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v43);
                    goto LABEL_101;
                  }

                  if (v44)
                  {
                    *buf = 136446210;
                    v84 = "nw_parameters_create_offload_secure_tcp";
                    _os_log_impl(&dword_181A37000, v40, v80, "%{public}s nw_tcp_create_options failed, no backtrace", buf, 0xCu);
                  }
                }

                else
                {
                  v40 = __nwlog_obj();
                  v45 = type;
                  if (os_log_type_enabled(v40, type))
                  {
                    *buf = 136446210;
                    v84 = "nw_parameters_create_offload_secure_tcp";
                    _os_log_impl(&dword_181A37000, v40, v45, "%{public}s nw_tcp_create_options failed, backtrace limit exceeded", buf, 0xCu);
                  }
                }
              }

LABEL_101:
              if (v39)
              {
                free(v39);
              }

              goto LABEL_103;
            }

LABEL_94:
            v14 = 0;
LABEL_105:

            goto LABEL_106;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v30 = gLogObj;
          *buf = 136446210;
          v84 = "nw_parameters_create_offload_secure_tcp";
          v31 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v81 = 0;
          if (__nwlog_fault(v31, &type, &v81))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v32 = gLogObj;
              v33 = type;
              if (os_log_type_enabled(v32, type))
              {
                *buf = 136446210;
                v84 = "nw_parameters_create_offload_secure_tcp";
                _os_log_impl(&dword_181A37000, v32, v33, "%{public}s nw_aop2_offload_create_options failed", buf, 0xCu);
              }
            }

            else if (v81 == 1)
            {
              v35 = __nw_create_backtrace_string();
              v32 = __nwlog_obj();
              v36 = type;
              v37 = os_log_type_enabled(v32, type);
              if (v35)
              {
                if (v37)
                {
                  *buf = 136446466;
                  v84 = "nw_parameters_create_offload_secure_tcp";
                  v85 = 2082;
                  v86 = v35;
                  _os_log_impl(&dword_181A37000, v32, v36, "%{public}s nw_aop2_offload_create_options failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v35);
                if (!v31)
                {
                  goto LABEL_94;
                }

                goto LABEL_93;
              }

              if (v37)
              {
                *buf = 136446210;
                v84 = "nw_parameters_create_offload_secure_tcp";
                _os_log_impl(&dword_181A37000, v32, v36, "%{public}s nw_aop2_offload_create_options failed, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v32 = __nwlog_obj();
              v42 = type;
              if (os_log_type_enabled(v32, type))
              {
                *buf = 136446210;
                v84 = "nw_parameters_create_offload_secure_tcp";
                _os_log_impl(&dword_181A37000, v32, v42, "%{public}s nw_aop2_offload_create_options failed, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

          if (!v31)
          {
            goto LABEL_94;
          }

LABEL_93:
          free(v31);
          goto LABEL_94;
        }

LABEL_80:
        v14 = 0;
LABEL_106:

        goto LABEL_107;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      *buf = 136446210;
      v84 = "nw_parameters_create_offload_secure_tcp";
      v20 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v81 = 0;
      if (__nwlog_fault(v20, &type, &v81))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v22 = type;
          if (os_log_type_enabled(v21, type))
          {
            *buf = 136446210;
            v84 = "nw_parameters_create_offload_secure_tcp";
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s nw_tls_create_options failed", buf, 0xCu);
          }
        }

        else if (v81 == 1)
        {
          v26 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v27 = type;
          v28 = os_log_type_enabled(v21, type);
          if (v26)
          {
            if (v28)
            {
              *buf = 136446466;
              v84 = "nw_parameters_create_offload_secure_tcp";
              v85 = 2082;
              v86 = v26;
              _os_log_impl(&dword_181A37000, v21, v27, "%{public}s nw_tls_create_options failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v26);
            if (!v20)
            {
              goto LABEL_80;
            }

            goto LABEL_79;
          }

          if (v28)
          {
            *buf = 136446210;
            v84 = "nw_parameters_create_offload_secure_tcp";
            _os_log_impl(&dword_181A37000, v21, v27, "%{public}s nw_tls_create_options failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v34 = type;
          if (os_log_type_enabled(v21, type))
          {
            *buf = 136446210;
            v84 = "nw_parameters_create_offload_secure_tcp";
            _os_log_impl(&dword_181A37000, v21, v34, "%{public}s nw_tls_create_options failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v20)
      {
        goto LABEL_80;
      }

LABEL_79:
      free(v20);
      goto LABEL_80;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    *buf = 136446210;
    v84 = "nw_parameters_create_offload_secure_tcp";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v81 = 0;
    if (__nwlog_fault(v16, &type, &v81))
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
          v84 = "nw_parameters_create_offload_secure_tcp";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s nw_parameters_create failed", buf, 0xCu);
        }
      }

      else if (v81 == 1)
      {
        v23 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v24 = type;
        v25 = os_log_type_enabled(v17, type);
        if (v23)
        {
          if (v25)
          {
            *buf = 136446466;
            v84 = "nw_parameters_create_offload_secure_tcp";
            v85 = 2082;
            v86 = v23;
            _os_log_impl(&dword_181A37000, v17, v24, "%{public}s nw_parameters_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v23);
          if (!v16)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }

        if (v25)
        {
          *buf = 136446210;
          v84 = "nw_parameters_create_offload_secure_tcp";
          _os_log_impl(&dword_181A37000, v17, v24, "%{public}s nw_parameters_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v29 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v84 = "nw_parameters_create_offload_secure_tcp";
          _os_log_impl(&dword_181A37000, v17, v29, "%{public}s nw_parameters_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v16)
    {
LABEL_69:
      v14 = 0;
LABEL_107:

      goto LABEL_108;
    }

LABEL_68:
    free(v16);
    goto LABEL_69;
  }

  v59 = __nwlog_obj();
  *buf = 136446210;
  v84 = "nw_parameters_create_offload_secure_tcp";
  v48 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v81 = 0;
  if (__nwlog_fault(v48, &type, &v81))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v60, "%{public}s called with null (configure_tcp != (_nw_parameters_configure_protocol_disable))", buf, 0xCu);
      }

LABEL_204:

      goto LABEL_205;
    }

    if (v81 != 1)
    {
      v49 = __nwlog_obj();
      v79 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v79, "%{public}s called with null (configure_tcp != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_204;
    }

    backtrace_string = __nw_create_backtrace_string();
    v49 = __nwlog_obj();
    v72 = type;
    v73 = os_log_type_enabled(v49, type);
    if (!backtrace_string)
    {
      if (v73)
      {
        *buf = 136446210;
        v84 = "nw_parameters_create_offload_secure_tcp";
        _os_log_impl(&dword_181A37000, v49, v72, "%{public}s called with null (configure_tcp != (_nw_parameters_configure_protocol_disable)), no backtrace", buf, 0xCu);
      }

      goto LABEL_204;
    }

    if (v73)
    {
      *buf = 136446466;
      v84 = "nw_parameters_create_offload_secure_tcp";
      v85 = 2082;
      v86 = backtrace_string;
      _os_log_impl(&dword_181A37000, v49, v72, "%{public}s called with null (configure_tcp != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_168;
  }

LABEL_205:
  if (v48)
  {
    free(v48);
  }

  v14 = 0;
LABEL_108:

  return v14;
}

void nw_parameters_set_use_aop2_offload(char *a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_use_aop2_offload(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_use_aop2_offload";
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
        v12 = "nw_parameters_set_use_aop2_offload";
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
            v12 = "nw_parameters_set_use_aop2_offload";
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
        v12 = "nw_parameters_set_use_aop2_offload";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_use_aop2_offload";
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

id nw_parameters_create_quic_connection(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (v1 != &__block_literal_global_19409)
    {
      if (networkd_settings_get_BOOL(nw_setting_disable_quic))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v3 = gLogObj;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v20 = "nw_parameters_create_quic_connection";
          _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s QUIC is disabled, cannot create QUIC connection", buf, 0xCu);
        }

        quic_connection = 0;
      }

      else
      {
        if (v2 == &__block_literal_global_2)
        {
          v5 = 0;
        }

        else
        {
          v5 = v2;
        }

        quic_connection = _nw_parameters_create_quic_connection(v5);
      }

      goto LABEL_11;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_parameters_create_quic_connection";
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
          v20 = "nw_parameters_create_quic_connection";
          v11 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable))";
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (v17 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_create_quic_connection";
          v11 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v16 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v20 = "nw_parameters_create_quic_connection";
          v11 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable)), no backtrace";
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (!v16)
      {
        goto LABEL_29;
      }

      *buf = 136446466;
      v20 = "nw_parameters_create_quic_connection";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
LABEL_28:
      _os_log_impl(&dword_181A37000, v9, v10, v15, buf, 0x16u);
LABEL_29:

      free(backtrace_string);
    }
  }

  else
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_parameters_create_quic_connection";
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
          v20 = "nw_parameters_create_quic_connection";
          v11 = "%{public}s called with null configure_quic_connection";
LABEL_38:
          _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
        }

LABEL_39:

        goto LABEL_40;
      }

      if (v17 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_create_quic_connection";
          v11 = "%{public}s called with null configure_quic_connection, backtrace limit exceeded";
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v14 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v14)
        {
          *buf = 136446210;
          v20 = "nw_parameters_create_quic_connection";
          v11 = "%{public}s called with null configure_quic_connection, no backtrace";
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (!v14)
      {
        goto LABEL_29;
      }

      *buf = 136446466;
      v20 = "nw_parameters_create_quic_connection";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null configure_quic_connection, dumping backtrace:%{public}s";
      goto LABEL_28;
    }
  }

LABEL_40:
  if (v8)
  {
    free(v8);
  }

  quic_connection = 0;
LABEL_11:

  return quic_connection;
}

id nw_parameters_create_quic_stream(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_parameters_create_quic_stream";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v14, &type, &v27))
    {
      goto LABEL_67;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v27 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v30 = "nw_parameters_create_quic_stream";
          v17 = "%{public}s called with null configure_quic_stream, backtrace limit exceeded";
          goto LABEL_65;
        }

        goto LABEL_66;
      }

      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v22 = os_log_type_enabled(v15, type);
      if (!backtrace_string)
      {
        if (v22)
        {
          *buf = 136446210;
          v30 = "nw_parameters_create_quic_stream";
          v17 = "%{public}s called with null configure_quic_stream, no backtrace";
          goto LABEL_65;
        }

        goto LABEL_66;
      }

      if (!v22)
      {
        goto LABEL_48;
      }

      *buf = 136446466;
      v30 = "nw_parameters_create_quic_stream";
      v31 = 2082;
      v32 = backtrace_string;
      v23 = "%{public}s called with null configure_quic_stream, dumping backtrace:%{public}s";
      goto LABEL_47;
    }

    v15 = __nwlog_obj();
    v16 = type;
    if (!os_log_type_enabled(v15, type))
    {
      goto LABEL_66;
    }

    *buf = 136446210;
    v30 = "nw_parameters_create_quic_stream";
    v17 = "%{public}s called with null configure_quic_stream";
LABEL_65:
    _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
    goto LABEL_66;
  }

  if (!v4)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_parameters_create_quic_stream";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v14, &type, &v27))
    {
      goto LABEL_67;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v27 != 1)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v30 = "nw_parameters_create_quic_stream";
          v17 = "%{public}s called with null configure_quic_connection, backtrace limit exceeded";
          goto LABEL_65;
        }

        goto LABEL_66;
      }

      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v24 = os_log_type_enabled(v15, type);
      if (!backtrace_string)
      {
        if (v24)
        {
          *buf = 136446210;
          v30 = "nw_parameters_create_quic_stream";
          v17 = "%{public}s called with null configure_quic_connection, no backtrace";
          goto LABEL_65;
        }

        goto LABEL_66;
      }

      if (!v24)
      {
        goto LABEL_48;
      }

      *buf = 136446466;
      v30 = "nw_parameters_create_quic_stream";
      v31 = 2082;
      v32 = backtrace_string;
      v23 = "%{public}s called with null configure_quic_connection, dumping backtrace:%{public}s";
      goto LABEL_47;
    }

    v15 = __nwlog_obj();
    v16 = type;
    if (!os_log_type_enabled(v15, type))
    {
      goto LABEL_66;
    }

    *buf = 136446210;
    v30 = "nw_parameters_create_quic_stream";
    v17 = "%{public}s called with null configure_quic_connection";
    goto LABEL_65;
  }

  if (v3 == &__block_literal_global_19409)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_parameters_create_quic_stream";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v14, &type, &v27))
    {
      goto LABEL_67;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v30 = "nw_parameters_create_quic_stream";
      v17 = "%{public}s called with null (configure_quic_stream != (_nw_parameters_configure_protocol_disable))";
      goto LABEL_65;
    }

    if (v27 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v30 = "nw_parameters_create_quic_stream";
        v17 = "%{public}s called with null (configure_quic_stream != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v25 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446210;
        v30 = "nw_parameters_create_quic_stream";
        v17 = "%{public}s called with null (configure_quic_stream != (_nw_parameters_configure_protocol_disable)), no backtrace";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    if (!v25)
    {
      goto LABEL_48;
    }

    *buf = 136446466;
    v30 = "nw_parameters_create_quic_stream";
    v31 = 2082;
    v32 = backtrace_string;
    v23 = "%{public}s called with null (configure_quic_stream != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
LABEL_47:
    _os_log_impl(&dword_181A37000, v15, v16, v23, buf, 0x16u);
LABEL_48:

    free(backtrace_string);
    goto LABEL_67;
  }

  if (v4 != &__block_literal_global_19409)
  {
    if (networkd_settings_get_BOOL(nw_setting_disable_quic))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v30 = "nw_parameters_create_quic_stream";
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s QUIC is disabled, cannot create QUIC stream", buf, 0xCu);
      }

      quic_stream = 0;
    }

    else
    {
      v8 = _Block_copy(v3);
      v9 = v8;
      if (v3 == &__block_literal_global_2)
      {

        v9 = 0;
      }

      v10 = _Block_copy(v5);
      v11 = v10;
      if (v5 == &__block_literal_global_2)
      {

        v11 = 0;
      }

      quic_stream = _nw_parameters_create_quic_stream(v9, v11);
    }

    goto LABEL_14;
  }

  v20 = __nwlog_obj();
  *buf = 136446210;
  v30 = "nw_parameters_create_quic_stream";
  v14 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (__nwlog_fault(v14, &type, &v27))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v30 = "nw_parameters_create_quic_stream";
        v17 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable))";
        goto LABEL_65;
      }

LABEL_66:

      goto LABEL_67;
    }

    if (v27 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v30 = "nw_parameters_create_quic_stream";
        v17 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v26 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v30 = "nw_parameters_create_quic_stream";
        v17 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable)), no backtrace";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    if (!v26)
    {
      goto LABEL_48;
    }

    *buf = 136446466;
    v30 = "nw_parameters_create_quic_stream";
    v31 = 2082;
    v32 = backtrace_string;
    v23 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
    goto LABEL_47;
  }

LABEL_67:
  if (v14)
  {
    free(v14);
  }

  quic_stream = 0;
LABEL_14:

  return quic_stream;
}

nw_parameters_t nw_parameters_create_quic(nw_parameters_configure_protocol_block_t configure_quic)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = configure_quic;
  v2 = v1;
  if (!v1)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_parameters_create_quic";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v7, &type, &v18))
    {
      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v21 = "nw_parameters_create_quic";
      v10 = "%{public}s called with null configure_quic";
LABEL_48:
      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      goto LABEL_49;
    }

    if (v18 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v21 = "nw_parameters_create_quic";
        v10 = "%{public}s called with null configure_quic, backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
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
        v21 = "nw_parameters_create_quic";
        v10 = "%{public}s called with null configure_quic, no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (!v14)
    {
      goto LABEL_35;
    }

    *buf = 136446466;
    v21 = "nw_parameters_create_quic";
    v22 = 2082;
    v23 = backtrace_string;
    v15 = "%{public}s called with null configure_quic, dumping backtrace:%{public}s";
LABEL_34:
    _os_log_impl(&dword_181A37000, v8, v9, v15, buf, 0x16u);
LABEL_35:

    free(backtrace_string);
    goto LABEL_50;
  }

  if (v1 == &__block_literal_global_19409)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_parameters_create_quic";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v7, &type, &v18))
    {
      goto LABEL_50;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v21 = "nw_parameters_create_quic";
      v10 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_disable))";
      goto LABEL_48;
    }

    if (v18 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v21 = "nw_parameters_create_quic";
        v10 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v16 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v21 = "nw_parameters_create_quic";
        v10 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_disable)), no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (!v16)
    {
      goto LABEL_35;
    }

    *buf = 136446466;
    v21 = "nw_parameters_create_quic";
    v22 = 2082;
    v23 = backtrace_string;
    v15 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
    goto LABEL_34;
  }

  if (v1 != &__block_literal_global_2)
  {
    if (networkd_settings_get_BOOL(nw_setting_disable_quic))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v21 = "nw_parameters_create_quic";
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s QUIC is disabled, cannot create QUIC parameters", buf, 0xCu);
      }

      quic = 0;
    }

    else
    {
      quic = _nw_parameters_create_quic(v2);
    }

    goto LABEL_9;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_parameters_create_quic";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v7, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v21 = "nw_parameters_create_quic";
        v10 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_default_configuration))";
        goto LABEL_48;
      }

LABEL_49:

      goto LABEL_50;
    }

    if (v18 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v21 = "nw_parameters_create_quic";
        v10 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_default_configuration)), backtrace limit exceeded";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v17 = os_log_type_enabled(v8, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v21 = "nw_parameters_create_quic";
        v10 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_default_configuration)), no backtrace";
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    if (!v17)
    {
      goto LABEL_35;
    }

    *buf = 136446466;
    v21 = "nw_parameters_create_quic";
    v22 = 2082;
    v23 = backtrace_string;
    v15 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_default_configuration)), dumping backtrace:%{public}s";
    goto LABEL_34;
  }

LABEL_50:
  if (v7)
  {
    free(v7);
  }

  quic = 0;
LABEL_9:

  return quic;
}

void nw_parameters_set_migrating_peer_to_peer(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_migrating_peer_to_peer();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_set_migrating_peer_to_peer";
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
        v11 = "nw_parameters_set_migrating_peer_to_peer";
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
            v11 = "nw_parameters_set_migrating_peer_to_peer";
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
        v11 = "nw_parameters_set_migrating_peer_to_peer";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_migrating_peer_to_peer";
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

nw_parameters_t nw_parameters_create_peer_to_peer_migrating_quic(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_parameters_create_peer_to_peer_migrating_quic";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v6, &type, &v17))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v20 = "nw_parameters_create_peer_to_peer_migrating_quic";
      v9 = "%{public}s called with null configure_quic";
LABEL_44:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      goto LABEL_45;
    }

    if (v17 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_create_peer_to_peer_migrating_quic";
        v9 = "%{public}s called with null configure_quic, backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v13 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v20 = "nw_parameters_create_peer_to_peer_migrating_quic";
        v9 = "%{public}s called with null configure_quic, no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v13)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v20 = "nw_parameters_create_peer_to_peer_migrating_quic";
    v21 = 2082;
    v22 = backtrace_string;
    v14 = "%{public}s called with null configure_quic, dumping backtrace:%{public}s";
LABEL_30:
    _os_log_impl(&dword_181A37000, v7, v8, v14, buf, 0x16u);
LABEL_31:

    free(backtrace_string);
    goto LABEL_46;
  }

  if (v1 == &__block_literal_global_19409)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_parameters_create_peer_to_peer_migrating_quic";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v6, &type, &v17))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v20 = "nw_parameters_create_peer_to_peer_migrating_quic";
      v9 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_disable))";
      goto LABEL_44;
    }

    if (v17 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_create_peer_to_peer_migrating_quic";
        v9 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v15 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_parameters_create_peer_to_peer_migrating_quic";
        v9 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_disable)), no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v15)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v20 = "nw_parameters_create_peer_to_peer_migrating_quic";
    v21 = 2082;
    v22 = backtrace_string;
    v14 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
    goto LABEL_30;
  }

  if (v1 != &__block_literal_global_2)
  {
    quic = nw_parameters_create_quic(v1);
    nw_parameters_set_migrating_peer_to_peer(quic);
    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_parameters_create_peer_to_peer_migrating_quic";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v6, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_create_peer_to_peer_migrating_quic";
        v9 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_default_configuration))";
        goto LABEL_44;
      }

LABEL_45:

      goto LABEL_46;
    }

    if (v17 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v20 = "nw_parameters_create_peer_to_peer_migrating_quic";
        v9 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_default_configuration)), backtrace limit exceeded";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v16 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v20 = "nw_parameters_create_peer_to_peer_migrating_quic";
        v9 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_default_configuration)), no backtrace";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v16)
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v20 = "nw_parameters_create_peer_to_peer_migrating_quic";
    v21 = 2082;
    v22 = backtrace_string;
    v14 = "%{public}s called with null (configure_quic != (_nw_parameters_configure_protocol_default_configuration)), dumping backtrace:%{public}s";
    goto LABEL_30;
  }

LABEL_46:
  if (v6)
  {
    free(v6);
  }

  quic = 0;
LABEL_5:

  return quic;
}

id nw_parameters_create_quic_stream_with_tls_fallback(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (!v9)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
    v26 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v26, &type, &v45))
    {
      goto LABEL_106;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v45 != 1)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
          v29 = "%{public}s called with null configure_security, backtrace limit exceeded";
          goto LABEL_104;
        }

        goto LABEL_105;
      }

      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = type;
      v37 = os_log_type_enabled(v27, type);
      if (!backtrace_string)
      {
        if (v37)
        {
          *buf = 136446210;
          v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
          v29 = "%{public}s called with null configure_security, no backtrace";
          goto LABEL_104;
        }

        goto LABEL_105;
      }

      if (!v37)
      {
        goto LABEL_75;
      }

      *buf = 136446466;
      v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
      v49 = 2082;
      v50 = backtrace_string;
      v38 = "%{public}s called with null configure_security, dumping backtrace:%{public}s";
      goto LABEL_74;
    }

    v27 = __nwlog_obj();
    v28 = type;
    if (!os_log_type_enabled(v27, type))
    {
      goto LABEL_105;
    }

    *buf = 136446210;
    v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
    v29 = "%{public}s called with null configure_security";
LABEL_104:
    _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
    goto LABEL_105;
  }

  if (!v13)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
    v26 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v26, &type, &v45))
    {
      goto LABEL_106;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v45 != 1)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
          v29 = "%{public}s called with null configure_tcp_fallback, backtrace limit exceeded";
          goto LABEL_104;
        }

        goto LABEL_105;
      }

      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = type;
      v39 = os_log_type_enabled(v27, type);
      if (!backtrace_string)
      {
        if (v39)
        {
          *buf = 136446210;
          v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
          v29 = "%{public}s called with null configure_tcp_fallback, no backtrace";
          goto LABEL_104;
        }

        goto LABEL_105;
      }

      if (!v39)
      {
        goto LABEL_75;
      }

      *buf = 136446466;
      v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
      v49 = 2082;
      v50 = backtrace_string;
      v38 = "%{public}s called with null configure_tcp_fallback, dumping backtrace:%{public}s";
      goto LABEL_74;
    }

    v27 = __nwlog_obj();
    v28 = type;
    if (!os_log_type_enabled(v27, type))
    {
      goto LABEL_105;
    }

    *buf = 136446210;
    v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
    v29 = "%{public}s called with null configure_tcp_fallback";
    goto LABEL_104;
  }

  if (!v10)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
    v26 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v26, &type, &v45))
    {
      goto LABEL_106;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v45 != 1)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
          v29 = "%{public}s called with null configure_quic_stream, backtrace limit exceeded";
          goto LABEL_104;
        }

        goto LABEL_105;
      }

      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = type;
      v40 = os_log_type_enabled(v27, type);
      if (!backtrace_string)
      {
        if (v40)
        {
          *buf = 136446210;
          v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
          v29 = "%{public}s called with null configure_quic_stream, no backtrace";
          goto LABEL_104;
        }

        goto LABEL_105;
      }

      if (!v40)
      {
        goto LABEL_75;
      }

      *buf = 136446466;
      v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
      v49 = 2082;
      v50 = backtrace_string;
      v38 = "%{public}s called with null configure_quic_stream, dumping backtrace:%{public}s";
      goto LABEL_74;
    }

    v27 = __nwlog_obj();
    v28 = type;
    if (!os_log_type_enabled(v27, type))
    {
      goto LABEL_105;
    }

    *buf = 136446210;
    v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
    v29 = "%{public}s called with null configure_quic_stream";
    goto LABEL_104;
  }

  if (!v11)
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
    v26 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v26, &type, &v45))
    {
      goto LABEL_106;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v45 != 1)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
          v29 = "%{public}s called with null configure_quic_connection, backtrace limit exceeded";
          goto LABEL_104;
        }

        goto LABEL_105;
      }

      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = type;
      v41 = os_log_type_enabled(v27, type);
      if (!backtrace_string)
      {
        if (v41)
        {
          *buf = 136446210;
          v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
          v29 = "%{public}s called with null configure_quic_connection, no backtrace";
          goto LABEL_104;
        }

        goto LABEL_105;
      }

      if (!v41)
      {
        goto LABEL_75;
      }

      *buf = 136446466;
      v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
      v49 = 2082;
      v50 = backtrace_string;
      v38 = "%{public}s called with null configure_quic_connection, dumping backtrace:%{public}s";
      goto LABEL_74;
    }

    v27 = __nwlog_obj();
    v28 = type;
    if (!os_log_type_enabled(v27, type))
    {
      goto LABEL_105;
    }

    *buf = 136446210;
    v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
    v29 = "%{public}s called with null configure_quic_connection";
    goto LABEL_104;
  }

  if (v10 == &__block_literal_global_19409)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
    v26 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v26, &type, &v45))
    {
      goto LABEL_106;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v45 != 1)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
          v29 = "%{public}s called with null (configure_quic_stream != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
          goto LABEL_104;
        }

        goto LABEL_105;
      }

      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = type;
      v42 = os_log_type_enabled(v27, type);
      if (!backtrace_string)
      {
        if (v42)
        {
          *buf = 136446210;
          v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
          v29 = "%{public}s called with null (configure_quic_stream != (_nw_parameters_configure_protocol_disable)), no backtrace";
          goto LABEL_104;
        }

        goto LABEL_105;
      }

      if (!v42)
      {
        goto LABEL_75;
      }

      *buf = 136446466;
      v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
      v49 = 2082;
      v50 = backtrace_string;
      v38 = "%{public}s called with null (configure_quic_stream != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
      goto LABEL_74;
    }

    v27 = __nwlog_obj();
    v28 = type;
    if (!os_log_type_enabled(v27, type))
    {
      goto LABEL_105;
    }

    *buf = 136446210;
    v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
    v29 = "%{public}s called with null (configure_quic_stream != (_nw_parameters_configure_protocol_disable))";
    goto LABEL_104;
  }

  if (v11 == &__block_literal_global_19409)
  {
    v34 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
    v26 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v26, &type, &v45))
    {
      goto LABEL_106;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v27, type))
      {
        goto LABEL_105;
      }

      *buf = 136446210;
      v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
      v29 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable))";
      goto LABEL_104;
    }

    if (v45 != 1)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
        v29 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
        goto LABEL_104;
      }

      goto LABEL_105;
    }

    backtrace_string = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v28 = type;
    v43 = os_log_type_enabled(v27, type);
    if (!backtrace_string)
    {
      if (v43)
      {
        *buf = 136446210;
        v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
        v29 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable)), no backtrace";
        goto LABEL_104;
      }

      goto LABEL_105;
    }

    if (!v43)
    {
      goto LABEL_75;
    }

    *buf = 136446466;
    v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
    v49 = 2082;
    v50 = backtrace_string;
    v38 = "%{public}s called with null (configure_quic_connection != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
LABEL_74:
    _os_log_impl(&dword_181A37000, v27, v28, v38, buf, 0x16u);
LABEL_75:

    free(backtrace_string);
    goto LABEL_106;
  }

  if (v13 != &__block_literal_global_19409)
  {
    v15 = _Block_copy(v9);
    v16 = v15;
    if (v9 == &__block_literal_global_5)
    {

      v16 = 0;
    }

    v17 = _Block_copy(v10);
    v18 = v17;
    if (v10 == &__block_literal_global_2)
    {

      v18 = 0;
    }

    v19 = _Block_copy(v11);
    v20 = v19;
    if (v11 == &__block_literal_global_2)
    {

      v20 = 0;
    }

    v21 = _Block_copy(v14);
    v22 = v21;
    if (v14 == &__block_literal_global_2)
    {

      v22 = 0;
    }

    quic_stream_with_tls_fallback = _nw_parameters_create_quic_stream_with_tls_fallback(v16, v18, v20, v12, v22);

    goto LABEL_17;
  }

  v35 = __nwlog_obj();
  *buf = 136446210;
  v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
  v26 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v45 = 0;
  if (__nwlog_fault(v26, &type, &v45))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
        v29 = "%{public}s called with null (configure_tcp_fallback != (_nw_parameters_configure_protocol_disable))";
        goto LABEL_104;
      }

LABEL_105:

      goto LABEL_106;
    }

    if (v45 != 1)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
        v29 = "%{public}s called with null (configure_tcp_fallback != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
        goto LABEL_104;
      }

      goto LABEL_105;
    }

    backtrace_string = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v28 = type;
    v44 = os_log_type_enabled(v27, type);
    if (!backtrace_string)
    {
      if (v44)
      {
        *buf = 136446210;
        v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
        v29 = "%{public}s called with null (configure_tcp_fallback != (_nw_parameters_configure_protocol_disable)), no backtrace";
        goto LABEL_104;
      }

      goto LABEL_105;
    }

    if (!v44)
    {
      goto LABEL_75;
    }

    *buf = 136446466;
    v48 = "nw_parameters_create_quic_stream_with_tls_fallback";
    v49 = 2082;
    v50 = backtrace_string;
    v38 = "%{public}s called with null (configure_tcp_fallback != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
    goto LABEL_74;
  }

LABEL_106:
  if (v26)
  {
    free(v26);
  }

  quic_stream_with_tls_fallback = 0;
LABEL_17:

  return quic_stream_with_tls_fallback;
}

nw_parameters_t nw_parameters_create_custom_ip(uint8_t custom_ip_protocol_number, nw_parameters_configure_protocol_block_t configure_ip)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = configure_ip;
  v4 = v3;
  if (v3)
  {
    if (v3 != &__block_literal_global_19409)
    {
      v5 = _Block_copy(v3);
      v6 = v5;
      if (v4 == &__block_literal_global_2)
      {

        v6 = 0;
      }

      custom_ip = _nw_parameters_create_custom_ip(custom_ip_protocol_number, v6);

      goto LABEL_6;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_parameters_create_custom_ip";
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
          v22 = "nw_parameters_create_custom_ip";
          v13 = "%{public}s called with null (configure_ip != (_nw_parameters_configure_protocol_disable))";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (v19 != 1)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v22 = "nw_parameters_create_custom_ip";
          v13 = "%{public}s called with null (configure_ip != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
          goto LABEL_33;
        }

        goto LABEL_34;
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
          v22 = "nw_parameters_create_custom_ip";
          v13 = "%{public}s called with null (configure_ip != (_nw_parameters_configure_protocol_disable)), no backtrace";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (!v18)
      {
        goto LABEL_24;
      }

      *buf = 136446466;
      v22 = "nw_parameters_create_custom_ip";
      v23 = 2082;
      v24 = backtrace_string;
      v17 = "%{public}s called with null (configure_ip != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
LABEL_23:
      _os_log_impl(&dword_181A37000, v11, v12, v17, buf, 0x16u);
LABEL_24:

      free(backtrace_string);
    }
  }

  else
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_parameters_create_custom_ip";
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
          v22 = "nw_parameters_create_custom_ip";
          v13 = "%{public}s called with null configure_ip";
LABEL_33:
          _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
        }

LABEL_34:

        goto LABEL_35;
      }

      if (v19 != 1)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v22 = "nw_parameters_create_custom_ip";
          v13 = "%{public}s called with null configure_ip, backtrace limit exceeded";
          goto LABEL_33;
        }

        goto LABEL_34;
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
          v22 = "nw_parameters_create_custom_ip";
          v13 = "%{public}s called with null configure_ip, no backtrace";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (!v16)
      {
        goto LABEL_24;
      }

      *buf = 136446466;
      v22 = "nw_parameters_create_custom_ip";
      v23 = 2082;
      v24 = backtrace_string;
      v17 = "%{public}s called with null configure_ip, dumping backtrace:%{public}s";
      goto LABEL_23;
    }
  }

LABEL_35:
  if (v10)
  {
    free(v10);
  }

  custom_ip = 0;
LABEL_6:

  return custom_ip;
}

id nw_parameters_create_legacy_tcp_socket(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (v1 != &__block_literal_global_19409)
    {
      v3 = _Block_copy(v1);
      v4 = v3;
      if (v2 == &__block_literal_global_2)
      {

        v4 = 0;
      }

      legacy_tcp_socket = _nw_parameters_create_legacy_tcp_socket(v4);

      goto LABEL_6;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_parameters_create_legacy_tcp_socket";
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
          v20 = "nw_parameters_create_legacy_tcp_socket";
          v11 = "%{public}s called with null (configure_tcp != (_nw_parameters_configure_protocol_disable))";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (v17 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_create_legacy_tcp_socket";
          v11 = "%{public}s called with null (configure_tcp != (_nw_parameters_configure_protocol_disable)), backtrace limit exceeded";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v16 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v20 = "nw_parameters_create_legacy_tcp_socket";
          v11 = "%{public}s called with null (configure_tcp != (_nw_parameters_configure_protocol_disable)), no backtrace";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (!v16)
      {
        goto LABEL_24;
      }

      *buf = 136446466;
      v20 = "nw_parameters_create_legacy_tcp_socket";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null (configure_tcp != (_nw_parameters_configure_protocol_disable)), dumping backtrace:%{public}s";
LABEL_23:
      _os_log_impl(&dword_181A37000, v9, v10, v15, buf, 0x16u);
LABEL_24:

      free(backtrace_string);
    }
  }

  else
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_parameters_create_legacy_tcp_socket";
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
          v20 = "nw_parameters_create_legacy_tcp_socket";
          v11 = "%{public}s called with null configure_tcp";
LABEL_33:
          _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
        }

LABEL_34:

        goto LABEL_35;
      }

      if (v17 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_parameters_create_legacy_tcp_socket";
          v11 = "%{public}s called with null configure_tcp, backtrace limit exceeded";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v14 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v14)
        {
          *buf = 136446210;
          v20 = "nw_parameters_create_legacy_tcp_socket";
          v11 = "%{public}s called with null configure_tcp, no backtrace";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (!v14)
      {
        goto LABEL_24;
      }

      *buf = 136446466;
      v20 = "nw_parameters_create_legacy_tcp_socket";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null configure_tcp, dumping backtrace:%{public}s";
      goto LABEL_23;
    }
  }

LABEL_35:
  if (v8)
  {
    free(v8);
  }

  legacy_tcp_socket = 0;
LABEL_6:

  return legacy_tcp_socket;
}

id nw_parameters_create_from_dictionary(id result)
{
  if (result)
  {
    length = 0;
    data = xpc_dictionary_get_data(result, "swift-json", &length);
    result = 0;
    if (data)
    {
      if (length)
      {
        v2 = objc_alloc(MEMORY[0x1E695DEF0]);
        v3 = [v2 initWithBytes:data length:length];
        v4 = _nw_parameters_create_from_serialized_bytes(v3);

        return v4;
      }
    }
  }

  return result;
}

xpc_object_t nw_parameters_copy_dictionary(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = _nw_parameters_copy_serialized_bytes(a1);
  if (v1)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_data(v2, "swift-json", [v1 bytes], objc_msgSend(v1, "length"));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void nw_parameters_set_privacy_context(nw_parameters_t parameters, nw_privacy_context_t privacy_context)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = parameters;
  v4 = privacy_context;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_parameters_set_privacy_context";
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
        v19 = "nw_parameters_set_privacy_context";
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
          v19 = "nw_parameters_set_privacy_context";
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
        v19 = "nw_parameters_set_privacy_context";
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
        v19 = "nw_parameters_set_privacy_context";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    _nw_parameters_set_context(v3, v4);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_parameters_set_privacy_context";
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
      v19 = "nw_parameters_set_privacy_context";
      v10 = "%{public}s called with null privacy_context";
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
      v19 = "nw_parameters_set_privacy_context";
      v10 = "%{public}s called with null privacy_context, backtrace limit exceeded";
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
      v19 = "nw_parameters_set_privacy_context";
      v10 = "%{public}s called with null privacy_context, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_parameters_set_privacy_context";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null privacy_context, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

void nw_parameters_set_required_interface_subtype(char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_required_interface_subtype(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_required_interface_subtype";
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
        v12 = "nw_parameters_set_required_interface_subtype";
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
            v12 = "nw_parameters_set_required_interface_subtype";
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
        v12 = "nw_parameters_set_required_interface_subtype";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_required_interface_subtype";
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

void nw_parameters_set_proxy_configuration(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  objects = v4;
  if (v3)
  {
    if (v4 && object_getClass(v4) == MEMORY[0x1E69E9E80])
    {
      v6 = xpc_array_create(&objects, 1uLL);
      v7 = v6;
      if (v6)
      {
        v8 = nw_proxy_configs_create_with_schema_array(v6);
        if (v8)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __nw_parameters_set_proxy_configuration_block_invoke;
          aBlock[3] = &unk_1E6A3CCB8;
          v17 = v3;
          _nw_array_apply(v8, aBlock);
        }
      }

      v5 = objects;
    }

    else
    {
      _nw_parameters_clear_custom_proxy_configs(v3);
    }

    goto LABEL_10;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_parameters_set_proxy_configuration";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v10, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_set_proxy_configuration";
        v13 = "%{public}s called with null parameters";
LABEL_24:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v18 == 1)
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
            v22 = "nw_parameters_set_proxy_configuration";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (!v15)
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v22 = "nw_parameters_set_proxy_configuration";
        v13 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_24;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v22 = "nw_parameters_set_proxy_configuration";
        v13 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_24;
      }
    }

LABEL_25:
  }

LABEL_26:
  if (v10)
  {
    free(v10);
  }

LABEL_10:
}

uint64_t __Block_byref_object_copy__19817(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void nw_parameters_set_effective_audit_token(char *a1, _OWORD *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2[1];
    *buf = *a2;
    *&buf[16] = v2;
    _nw_parameters_set_effective_audit_token(a1, buf);
    return;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_set_effective_audit_token";
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
        *&buf[4] = "nw_parameters_set_effective_audit_token";
        v7 = "%{public}s called with null parameters";
LABEL_17:
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
            *&buf[4] = "nw_parameters_set_effective_audit_token";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v9)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        *&buf[4] = "nw_parameters_set_effective_audit_token";
        v7 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_17;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_set_effective_audit_token";
        v7 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v4)
  {
    free(v4);
  }
}

void nw_parameters_set_proxy_bundle_id(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v1 = __nwlog_obj();
    *buf = 136446210;
    v11 = "nw_parameters_set_proxy_bundle_id";
    v2 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v8 = 0;
    if (!__nwlog_fault(v2, &type, &v8))
    {
      goto LABEL_18;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_proxy_bundle_id";
        v5 = "%{public}s called with null parameters";
LABEL_16:
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
            v11 = "nw_parameters_set_proxy_bundle_id";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_18;
        }

        if (!v7)
        {
          goto LABEL_17;
        }

        *buf = 136446210;
        v11 = "nw_parameters_set_proxy_bundle_id";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_16;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_set_proxy_bundle_id";
        v5 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_16;
      }
    }

LABEL_17:

LABEL_18:
    if (v2)
    {
      free(v2);
    }
  }
}

uint64_t nw_parameters_get_proxy_bundle_id(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return 0;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_proxy_bundle_id";
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
        v12 = "nw_parameters_get_proxy_bundle_id";
        v6 = "%{public}s called with null parameters";
LABEL_16:
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
            v12 = "nw_parameters_get_proxy_bundle_id";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_18;
        }

        if (!v8)
        {
          goto LABEL_17;
        }

        *buf = 136446210;
        v12 = "nw_parameters_get_proxy_bundle_id";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_16;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_proxy_bundle_id";
        v6 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_16;
      }
    }

LABEL_17:
  }

LABEL_18:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

_BYTE *nw_parameters_get_effective_process_name(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    effective_bundle_id = _nw_parameters_get_effective_bundle_id(v1);
    if (!effective_bundle_id)
    {
      if (_nw_parameters_has_delegated_proc_uuid(v2))
      {
        *uu = 0;
        *&uu[8] = 0;
        _nw_parameters_get_e_proc_uuid(v2, uu);
        if (!uuid_is_null(uu))
        {
          v4 = nw_utilities_copy_bundle_id_for_uuid(uu);
          if (v4)
          {
            v5 = v4;
            _nw_parameters_set_effective_bundle_id(v2, v4);
            free(v5);
          }
        }
      }

      memset(uu, 0, 32);
      if (nw_copy_current_audit_token(uu))
      {
        if (nw_parameters_has_delegated_proc_audit_token(v2, uu))
        {
          *type = 0u;
          v23 = 0u;
          _nw_parameters_get_effective_audit_token(v2, type);
          v20 = *type;
          v21 = v23;
          if (*type | *&type[8] | v23 | *(&v23 + 1))
          {
            v20 = *type;
            v21 = v23;
            v6 = nw_utilities_copy_bundle_id_for_audit_token(&v20);
            if (v6)
            {
              v7 = v6;
              _nw_parameters_set_effective_bundle_id(v2, v6);
              free(v7);
            }
          }
        }
      }

      v8 = getpid();
      if (_nw_parameters_has_delegated_proc_pid(v2, v8))
      {
        pid = _nw_parameters_get_pid(v2);
        if (pid >= 1)
        {
          v10 = nw_utilities_copy_bundle_id_for_pid(pid);
          if (v10)
          {
            v11 = v10;
            _nw_parameters_set_effective_bundle_id(v2, v10);
            free(v11);
          }
        }
      }

      effective_bundle_id = _nw_parameters_get_effective_bundle_id(v2);
      if (!effective_bundle_id)
      {
        if (nw_utilities_get_self_name::onceToken != -1)
        {
          dispatch_once(&nw_utilities_get_self_name::onceToken, &__block_literal_global_11_47232);
        }

        effective_bundle_id = nw_utilities_get_self_name::name;
      }
    }

    goto LABEL_20;
  }

  v13 = __nwlog_obj();
  *uu = 136446210;
  *&uu[4] = "nw_parameters_get_effective_process_name";
  v14 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v20) = 0;
  if (__nwlog_fault(v14, type, &v20))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type[0];
      if (os_log_type_enabled(v15, type[0]))
      {
        *uu = 136446210;
        *&uu[4] = "nw_parameters_get_effective_process_name";
        v17 = "%{public}s called with null parameters";
LABEL_34:
        _os_log_impl(&dword_181A37000, v15, v16, v17, uu, 0xCu);
      }
    }

    else
    {
      if (v20 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v16 = type[0];
        v19 = os_log_type_enabled(v15, type[0]);
        if (backtrace_string)
        {
          if (v19)
          {
            *uu = 136446466;
            *&uu[4] = "nw_parameters_get_effective_process_name";
            *&uu[12] = 2082;
            *&uu[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null parameters, dumping backtrace:%{public}s", uu, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_36;
        }

        if (!v19)
        {
          goto LABEL_35;
        }

        *uu = 136446210;
        *&uu[4] = "nw_parameters_get_effective_process_name";
        v17 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_34;
      }

      v15 = __nwlog_obj();
      v16 = type[0];
      if (os_log_type_enabled(v15, type[0]))
      {
        *uu = 136446210;
        *&uu[4] = "nw_parameters_get_effective_process_name";
        v17 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:
  }

LABEL_36:
  if (v14)
  {
    free(v14);
  }

  effective_bundle_id = 0;
LABEL_20:

  return effective_bundle_id;
}

void nw_parameters_set_application_id(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_set_application_id";
    v10 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(uu) = 0;
    if (!__nwlog_fault(v10, type, &uu))
    {
      goto LABEL_49;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_set_application_id";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (uu == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v17 = type[0];
      v18 = os_log_type_enabled(v11, type[0]);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          *&buf[4] = "nw_parameters_set_application_id";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v17, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_49:
        if (!v10)
        {
          goto LABEL_12;
        }

LABEL_50:
        free(v10);
        goto LABEL_12;
      }

      if (v18)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_set_application_id";
        _os_log_impl(&dword_181A37000, v11, v17, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v22 = type[0];
      if (os_log_type_enabled(v11, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_set_application_id";
        _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_48:

    goto LABEL_49;
  }

  if (v4)
  {
    *type = 0u;
    v25 = 0u;
    nw_application_id_get_audit_token(v4, type);
    *buf = *type;
    *&buf[16] = v25;
    if (*type | *&type[8] | v25 | *(&v25 + 1))
    {
      *buf = *type;
      *&buf[16] = v25;
      _nw_parameters_set_effective_audit_token(v3, buf);
    }

    uu = 0uLL;
    nw_application_id_get_uuid(v5, &uu);
    if (!uuid_is_null(&uu))
    {
      _nw_parameters_set_e_proc_uuid(v3, &uu);
    }

    v6 = v5;
    v7 = v6[10];

    if (v7)
    {
      _nw_parameters_set_effective_bundle_id(v3, v7);
    }

    v8 = v6;
    *v26 = *(v8 + 88);

    if (!uuid_is_null(v26))
    {
      _nw_parameters_set_persona(v3, v26);
    }

    if (gLogDatapath == 1)
    {
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_parameters_set_application_id";
        *&buf[12] = 2112;
        *&buf[14] = v8;
        *&buf[22] = 2112;
        *&buf[24] = v3;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s set %@ on %@", buf, 0x20u);
      }
    }

    goto LABEL_12;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_set_application_id";
  v10 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(uu) = 0;
  if (!__nwlog_fault(v10, type, &uu))
  {
    goto LABEL_49;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v14 = type[0];
    if (os_log_type_enabled(v11, type[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_parameters_set_application_id";
      _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null application_id", buf, 0xCu);
    }

    goto LABEL_48;
  }

  if (uu != 1)
  {
    v11 = __nwlog_obj();
    v23 = type[0];
    if (os_log_type_enabled(v11, type[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_parameters_set_application_id";
      _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null application_id, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_48;
  }

  v19 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v20 = type[0];
  v21 = os_log_type_enabled(v11, type[0]);
  if (!v19)
  {
    if (v21)
    {
      *buf = 136446210;
      *&buf[4] = "nw_parameters_set_application_id";
      _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null application_id, no backtrace", buf, 0xCu);
    }

    goto LABEL_48;
  }

  if (v21)
  {
    *buf = 136446466;
    *&buf[4] = "nw_parameters_set_application_id";
    *&buf[12] = 2082;
    *&buf[14] = v19;
    _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null application_id, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v10)
  {
    goto LABEL_50;
  }

LABEL_12:
}

void nw_parameters_set_persona(char *a1, unsigned __int8 *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_persona(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_persona";
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
        v12 = "nw_parameters_set_persona";
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
            v12 = "nw_parameters_set_persona";
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
        v12 = "nw_parameters_set_persona";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_persona";
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

void nw_parameters_set_main_document_url(void *a1, _BYTE *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2 && *a2)
    {
      url = _nw_endpoint_create_url(a2);
      _nw_parameters_set_main_document_url_endpoint(v4, url);
    }

    else
    {
      _nw_parameters_set_main_document_url_endpoint(v3, 0);
    }

    goto LABEL_6;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_parameters_set_main_document_url";
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
        v16 = "nw_parameters_set_main_document_url";
        v10 = "%{public}s called with null parameters";
LABEL_20:
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
            v16 = "nw_parameters_set_main_document_url";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v12)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "nw_parameters_set_main_document_url";
        v10 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_20;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_set_main_document_url";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:
  }

LABEL_22:
  if (v7)
  {
    free(v7);
  }

LABEL_6:
}

void nw_parameters_set_main_document_cfurl(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      v5 = _nw_endpoint_create_with_cfurl(a2);
      _nw_parameters_set_main_document_url_endpoint(v4, v5);
    }

    else
    {
      _nw_parameters_set_main_document_url_endpoint(v3, 0);
    }

    goto LABEL_5;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_parameters_set_main_document_cfurl";
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
        v16 = "nw_parameters_set_main_document_cfurl";
        v10 = "%{public}s called with null parameters";
LABEL_19:
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
            v16 = "nw_parameters_set_main_document_cfurl";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v12)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v16 = "nw_parameters_set_main_document_cfurl";
        v10 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_19;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_set_main_document_cfurl";
        v10 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v7)
  {
    free(v7);
  }

LABEL_5:
}

uint64_t nw_parameters_get_main_document_url(char *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _nw_parameters_copy_main_document_url_endpoint(a1);
    v2 = v1;
    if (v1)
    {
      v3 = v1;
      url = _nw_endpoint_get_url(v3);
    }

    else
    {
      url = 0;
    }

    return url;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_parameters_get_main_document_url";
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
        v17 = "nw_parameters_get_main_document_url";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters", buf, 0xCu);
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
          v17 = "nw_parameters_get_main_document_url";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_parameters_get_main_document_url";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_get_main_document_url";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

uint64_t nw_parameters_copy_main_document_cfurl(char *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _nw_parameters_copy_main_document_url_endpoint(a1);
    v2 = v1;
    if (v1)
    {
      v3 = v1;
      v4 = _nw_endpoint_copy_cfurl(v3);
    }

    else
    {
      v4 = 0;
    }

    return v4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_parameters_copy_main_document_cfurl";
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
        v17 = "nw_parameters_copy_main_document_cfurl";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null parameters", buf, 0xCu);
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
          v17 = "nw_parameters_copy_main_document_cfurl";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_parameters_copy_main_document_cfurl";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_copy_main_document_cfurl";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v7)
  {
    free(v7);
  }

  return 0;
}
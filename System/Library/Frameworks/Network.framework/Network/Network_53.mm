void nw_connection_unregister_context(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_connection_unregister_context";
    v7 = _os_log_send_and_compose_impl();

    v24 = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v7, &v24, &v23))
    {
      goto LABEL_38;
    }

    if (v24 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_unregister_context";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = v24;
      v14 = os_log_type_enabled(v8, v24);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v26 = "nw_connection_unregister_context";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
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
        v26 = "nw_connection_unregister_context";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_unregister_context";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __nw_connection_unregister_context_block_invoke;
    v20[3] = &unk_1E6A3D760;
    v21 = v3;
    v22 = v5;
    nw_connection_async_if_needed(v21, v20);

    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_connection_unregister_context";
  v7 = _os_log_send_and_compose_impl();

  v24 = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v7, &v24, &v23))
  {
    goto LABEL_38;
  }

  if (v24 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_unregister_context";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null content_context", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v23 != 1)
  {
    v8 = __nwlog_obj();
    v19 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_unregister_context";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null content_context, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = v24;
  v17 = os_log_type_enabled(v8, v24);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v26 = "nw_connection_unregister_context";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null content_context, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v26 = "nw_connection_unregister_context";
    v27 = 2082;
    v28 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null content_context, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_http_transaction_metadata_set_used_early_data(void *a1, char a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_transaction_metadata_set_used_early_data";
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
        v22 = "nw_http_transaction_metadata_set_used_early_data";
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
          v22 = "nw_http_transaction_metadata_set_used_early_data";
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
        v22 = "nw_http_transaction_metadata_set_used_early_data";
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
        v22 = "nw_http_transaction_metadata_set_used_early_data";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_transaction_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __nw_http_transaction_metadata_set_used_early_data_block_invoke;
    v17 = &__block_descriptor_33_e9_B16__0_v8l;
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
  v22 = "nw_http_transaction_metadata_set_used_early_data";
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
      v22 = "nw_http_transaction_metadata_set_used_early_data";
      v9 = "%{public}s metadata must be http_transaction";
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
      v22 = "nw_http_transaction_metadata_set_used_early_data";
      v9 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
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
      v22 = "nw_http_transaction_metadata_set_used_early_data";
      v9 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_transaction_metadata_set_used_early_data";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_38;
  }

LABEL_7:
}

void __nw_connection_unregister_context_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 109) & 0x40) != 0)
  {
    v6 = *(a1 + 40);
    v7 = *(v1 + 144);

    nw_endpoint_handler_unregister_context(v7, v6);
  }

  else
  {
    v3 = *(v1 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(*(a1 + 32) + 448);
        v8 = 136446466;
        v9 = "nw_connection_unregister_context_block_invoke";
        v10 = 1024;
        v11 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Cannot unregister a context on a connection that is not ready", &v8, 0x12u);
      }
    }
  }
}

BOOL nw_flow_protocol_matches_key(char *a1, const void *a2, int a3)
{
  v3 = 240;
  if (!a3)
  {
    v3 = 248;
  }

  return *&a1[v3] == a2;
}

void nw_http_transaction_metadata_set_outbound_message(void *a1, void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_set_outbound_message";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v10, &type, &v27))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_transaction_metadata_set_outbound_message";
        v13 = "%{public}s called with null metadata";
LABEL_36:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v16 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_transaction_metadata_set_outbound_message";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v10)
        {
          goto LABEL_8;
        }

LABEL_39:
        free(v10);
        goto LABEL_8;
      }

      if (v16)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_transaction_metadata_set_outbound_message";
        v13 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_transaction_metadata_set_outbound_message";
        v13 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v5, nw_protocol_copy_http_transaction_definition_definition))
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v23 = __nw_http_transaction_metadata_set_outbound_message_block_invoke;
    v24 = &unk_1E6A3ACA8;
    v7 = v6;
    v25 = v7;
    v26 = v5;
    handle = _nw_protocol_metadata_get_handle(v26);
    if (handle)
    {
      v23(v22, handle);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __nw_http_transaction_metadata_set_outbound_message_block_invoke_2;
    v19[3] = &unk_1E6A3ACD0;
    v21 = a3;
    v20 = v7;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __nw_http_diag_log_for_level_block_invoke;
    v30 = &unk_1E6A303F0;
    v32 = 1;
    v33 = 0;
    v31 = v19;
    os_unfair_lock_lock(&lock);
    (*&buf[16])(buf);
    os_unfair_lock_unlock(&lock);

    goto LABEL_8;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http_transaction_metadata_set_outbound_message";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (!__nwlog_fault(v10, &type, &v27))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_transaction_metadata_set_outbound_message";
      v13 = "%{public}s metadata must be http_transaction";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v27 != 1)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_transaction_metadata_set_outbound_message";
      v13 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v17 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v12 = type;
  v18 = os_log_type_enabled(v11, type);
  if (!v17)
  {
    if (v18)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http_transaction_metadata_set_outbound_message";
      v13 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v18)
  {
    *buf = 136446466;
    *&buf[4] = "nw_http_transaction_metadata_set_outbound_message";
    *&buf[12] = 2082;
    *&buf[14] = v17;
    _os_log_impl(&dword_181A37000, v11, v12, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v10)
  {
    goto LABEL_39;
  }

LABEL_8:
}

uint64_t __nw_http_transaction_metadata_set_outbound_message_block_invoke(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a2 + 120), *(a1 + 32));
  v4 = mach_continuous_time();
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  *(a2 + 64) = v5;
  v6 = *(a2 + 136);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 40), 0);
  }

  return 1;
}

void nw_protocol_custom_mapping_release_object(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    free(a1);
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_protocol_custom_mapping_release_object";
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
        v11 = "nw_protocol_custom_mapping_release_object";
        v5 = "%{public}s called with null object";
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
            v11 = "nw_protocol_custom_mapping_release_object";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null object, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_protocol_custom_mapping_release_object";
        v5 = "%{public}s called with null object, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_protocol_custom_mapping_release_object";
        v5 = "%{public}s called with null object, backtrace limit exceeded";
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

id nw_http_transaction_metadata_get_outbound_message(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_transaction_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_transaction_definition_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v28 = __Block_byref_object_copy__75915;
      v29 = __Block_byref_object_dispose__75916;
      v30 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_transaction_metadata_get_outbound_message_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle(v4))
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_outbound_message";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http_transaction", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http_transaction, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_outbound_message";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_transaction_metadata_get_outbound_message";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_transaction_metadata_get_outbound_message";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_transaction_metadata_get_outbound_message";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181DB8E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nw_http_metadata_copy_response(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_copy_http_definition_onceToken;
    v4 = v1;
    if (v3 != -1)
    {
      dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
    }

    v5 = nw_protocol_metadata_matches_definition(v4, nw_protocol_copy_http_definition_http_definition);

    if (v5)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v28 = __Block_byref_object_copy__75915;
      v29 = __Block_byref_object_dispose__75916;
      v30 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v22 = __nw_http_metadata_copy_response_block_invoke;
      v23 = &unk_1E6A3A858;
      v24 = buf;
      if (_nw_protocol_metadata_get_handle(v4))
      {
        (v22)(v21);
      }

      v6 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      goto LABEL_8;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_metadata_copy_response";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_metadata_copy_response";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s metadata must be http", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_metadata_copy_response";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s metadata must be http, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_metadata_copy_response";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_metadata_copy_response";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s metadata must be http, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_metadata_copy_response";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_metadata_copy_response";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null metadata", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_metadata_copy_response";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_40;
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
          *&buf[4] = "nw_http_metadata_copy_response";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_metadata_copy_response";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_28:

      free(backtrace_string);
    }
  }

LABEL_41:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_181DB9434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181DB9468(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v4[0] = a1;
    v4[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    (a3)[2](a3, v4);
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_7:
    sub_182AD3B78();
    goto LABEL_6;
  }

  (a3[2])(a3, (a2 & 0xFFFFFFFFFFFFFFFLL) + 32, a1);
LABEL_6:
  _Block_release(a3);
}

void __nw_http_diag_log_for_level_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 44);
  v3 = *(a1 + 32);
  if (get_log_level(void)::onceToken != -1)
  {
    v5 = v3;
    dispatch_once(&get_log_level(void)::onceToken, &__block_literal_global_29345);
    v3 = v5;
  }

  if (get_log_level(void)::diag_level >= v1)
  {
    if (can_log_sensitive_content(void)::onceToken != -1)
    {
      v6 = v3;
      dispatch_once(&can_log_sensitive_content(void)::onceToken, &__block_literal_global_9);
      v3 = v6;
    }

    if (!v2 || can_log_sensitive_content(void)::ok)
    {
      if (v3)
      {
        v4 = *(v3 + 16);

        v4();
        return;
      }

      __nwlog_obj();
      *buf = 136446210;
      v16 = "_log_for_level";
      type = OS_LOG_TYPE_ERROR;
      v13 = 0;
      v7 = _os_log_send_and_compose_impl();
      if (!__nwlog_fault(v7, &type, &v13))
      {
        goto LABEL_27;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v16 = "_log_for_level";
        v10 = "%{public}s called with null action";
      }

      else if (v13 == 1)
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
            v16 = "_log_for_level";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null action, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (!v12)
        {
LABEL_27:
          if (v7)
          {
            free(v7);
          }

          return;
        }

        *buf = 136446210;
        v16 = "_log_for_level";
        v10 = "%{public}s called with null action, no backtrace";
      }

      else
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v16 = "_log_for_level";
        v10 = "%{public}s called with null action, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      goto LABEL_27;
    }
  }
}

void nw::http::content_length_manager::set_outbound_message(nw::http::content_length_manager *this, nw_protocol_metadata *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "set_outbound_message";
    v8 = _os_log_send_and_compose_impl();
    v19 = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v8, &v19, &v18))
    {
      goto LABEL_46;
    }

    if (v19 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v19;
      if (!os_log_type_enabled(v9, v19))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v21 = "set_outbound_message";
      v11 = "%{public}s called with null metadata";
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = v19;
      v13 = os_log_type_enabled(v9, v19);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v21 = "set_outbound_message";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_46:
        if (!v8)
        {
          return;
        }

LABEL_47:
        free(v8);
        return;
      }

      if (!v13)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v21 = "set_outbound_message";
      v11 = "%{public}s called with null metadata, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = v19;
      if (!os_log_type_enabled(v9, v19))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v21 = "set_outbound_message";
      v11 = "%{public}s called with null metadata, backtrace limit exceeded";
    }

LABEL_45:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_46;
  }

  v3 = a2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v4 = nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_definition_http_definition);

  if (v4)
  {
    if (*(this + 48) == 1)
    {
      v5 = nw_http_metadata_copy_response(v3);
      status_code = nw_http_response_get_status_code(v5);
      if ((*(this + 49) & 1) != 0 || status_code == 304 || status_code == 204)
      {
        if ((*(this + 8) & 1) == 0)
        {
          *(this + 8) = 1;
        }

        *this = 0;
        if (!v5)
        {
          return;
        }

LABEL_15:
        os_release(v5);
        return;
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = ___ZN2nw4http22content_length_manager20set_outbound_messageEP20nw_protocol_metadata_block_invoke;
      v17[3] = &__block_descriptor_tmp_141_43677;
      v17[4] = this;
      v7 = v17;
    }

    else
    {
      v5 = nw_http_metadata_copy_request(v3);
      *(this + 49) = nw_http_request_has_method(v5, "HEAD");
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = ___ZN2nw4http22content_length_manager20set_outbound_messageEP20nw_protocol_metadata_block_invoke_2;
      v16[3] = &__block_descriptor_tmp_142_43678;
      v16[4] = this;
      v7 = v16;
    }

    nw_http_fields_access_value_by_name(v5, "Content-Length", v7);
    if (!v5)
    {
      return;
    }

    goto LABEL_15;
  }

  __nwlog_obj();
  *buf = 136446210;
  v21 = "set_outbound_message";
  v8 = _os_log_send_and_compose_impl();
  v19 = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v8, &v19, &v18))
  {
    goto LABEL_46;
  }

  if (v19 == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v10 = v19;
    if (!os_log_type_enabled(v9, v19))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v21 = "set_outbound_message";
    v11 = "%{public}s called with null (nw_protocol_metadata_is_http(metadata))";
    goto LABEL_45;
  }

  if (v18 != 1)
  {
    v9 = __nwlog_obj();
    v10 = v19;
    if (!os_log_type_enabled(v9, v19))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v21 = "set_outbound_message";
    v11 = "%{public}s called with null (nw_protocol_metadata_is_http(metadata)), backtrace limit exceeded";
    goto LABEL_45;
  }

  v14 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v10 = v19;
  v15 = os_log_type_enabled(v9, v19);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v21 = "set_outbound_message";
    v11 = "%{public}s called with null (nw_protocol_metadata_is_http(metadata)), no backtrace";
    goto LABEL_45;
  }

  if (v15)
  {
    *buf = 136446466;
    v21 = "set_outbound_message";
    v22 = 2082;
    v23 = v14;
    _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null (nw_protocol_metadata_is_http(metadata)), dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v8)
  {
    goto LABEL_47;
  }
}

void nw_http_fields_access_value_by_name(void *a1, unint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    v7 = __nwlog_obj();
    os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    v8 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v8))
    {
      goto LABEL_11;
    }

    free(v8);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = __nwlog_obj();
    os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    v10 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v10))
    {
      goto LABEL_11;
    }

    free(v10);
    if (v6)
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
  if (v6)
  {
LABEL_4:
    _nw_http_fields_access_value_by_name(v5, a2, v6);

    return;
  }

LABEL_9:
  v11 = __nwlog_obj();
  os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  v12 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v12))
  {
    free(v12);
    goto LABEL_4;
  }

LABEL_11:
  __break(1u);
}

void sub_181DB9FD4(uint64_t a1, unint64_t a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);

  sub_181CA0008(a2, -1, &v10);
  v7 = v11;
  if (v11)
  {
    v8 = v10;
    v9 = MEMORY[0x1EEE9AC00](v6);
    (*(*a1 + 80))(sub_181DBA12C, v9);

    sub_181CA2810(v8, v7);
    _Block_release(v5);
  }

  else
  {
    sub_182AD3EA8();
    __break(1u);
  }
}

void ___ZN2nw4http22content_length_manager20set_outbound_messageEP20nw_protocol_metadata_block_invoke_2(uint64_t a1, char *__s)
{
  if (__s)
  {
    v3 = *(a1 + 32);
    v4 = strlen(__s);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v4;
    if (v4)
    {
      memcpy(&__dst, __s, v4);
    }

    __dst.__r_.__value_.__s.__data_[v5] = 0;
    *v3 = std::stoull(&__dst, 0, 10);
    *(v3 + 8) = 1;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t __nw_http_metadata_enumerate_modern_header_fields_combined_block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (!v3)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      goto LABEL_4;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_http_metadata_enumerate_modern_header_fields_combined_block_invoke";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v10, &type, &v18))
    {
LABEL_24:
      if (v10)
      {
        free(v10);
      }

      return 0;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v21 = "nw_http_metadata_enumerate_modern_header_fields_combined_block_invoke";
        v13 = "%{public}s called with null header_fields";
LABEL_22:
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
        v17 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v21 = "nw_http_metadata_enumerate_modern_header_fields_combined_block_invoke";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null header_fields, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (!v17)
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v21 = "nw_http_metadata_enumerate_modern_header_fields_combined_block_invoke";
        v13 = "%{public}s called with null header_fields, no backtrace";
        goto LABEL_22;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v21 = "nw_http_metadata_enumerate_modern_header_fields_combined_block_invoke";
        v13 = "%{public}s called with null header_fields, backtrace limit exceeded";
        goto LABEL_22;
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  v4 = v3;
LABEL_4:
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  if (!v7)
  {
    v14 = __nwlog_obj();
    os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v21 = "nw_http_fields_enumerate_modern_header_fields_combined";
    v15 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v15);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v15);
  }

  _nw_http_fields_enumerate_modern_header_fields_combined(v6, v7);

  return 1;
}

uint64_t _nw_http_fields_enumerate_modern_header_fieldsTm(uint64_t a1, void *aBlock, uint64_t a3, void (*a4)(uint64_t, void *, uint64_t, uint64_t))
{
  v7 = _Block_copy(aBlock);
  v8 = _Block_copy(v7);

  (*(*a1 + 96))(v14, v9);
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v13[2] = v8;
  a4(a3, v13, v10, v11);
  _Block_release(v7);

  _Block_release(v8);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_181DBA67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v7;
  a3[1] = v8;
}

uint64_t sub_181DBA6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a1;
  v6[3] = a2;
  return (*(a4 + 8))(a5, v6);
}

uint64_t sub_181DBA740(void (*a1)(uint64_t *))
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 48);
  v9 = *(*v1 + 56);
  v10 = *(*v1 + 64);
  v51 = *(*v1 + 16);
  v52 = v5;
  v53 = v6;
  v54 = v7;
  v55 = v8;
  v56 = v9;
  v57 = v10;

  a1(&v51);

  v11 = v4[10];
  if (v11)
  {
    v12 = v4[15];
    v48 = v4[14];
    v14 = v4[12];
    v13 = v4[13];
    v15 = v4[11];
    v51 = v4[9];
    v16 = v51;
    v52 = v11;
    v53 = v15;
    v54 = v14;
    v55 = v13;
    v56 = v48;
    v57 = v12;

    a1(&v51);
    sub_181D04D28(v16, v11);
  }

  v17 = v4[17];
  if (v17)
  {
    v18 = v4[22];
    v49 = v4[21];
    v20 = v4[19];
    v19 = v4[20];
    v21 = v4[18];
    v51 = v4[16];
    v22 = v51;
    v52 = v17;
    v53 = v21;
    v54 = v20;
    v55 = v19;
    v56 = v49;
    v57 = v18;

    a1(&v51);
    sub_181D04D28(v22, v17);
  }

  v23 = v4[24];
  if (v23)
  {
    v24 = v4[29];
    v50 = v4[28];
    v26 = v4[26];
    v25 = v4[27];
    v27 = v4[25];
    v51 = v4[23];
    v28 = v51;
    v52 = v23;
    v53 = v27;
    v54 = v26;
    v55 = v25;
    v56 = v50;
    v57 = v24;

    a1(&v51);
    sub_181D04D28(v28, v23);
  }

  v29 = v4[31];
  if (v29)
  {
    v30 = v4[35];
    v31 = v4[36];
    v33 = v4[33];
    v32 = v4[34];
    v34 = v4[32];
    v51 = v4[30];
    v35 = v51;
    v52 = v29;
    v53 = v34;
    v54 = v33;
    v55 = v32;
    v56 = v30;
    v57 = v31;

    a1(&v51);
    sub_181D04D28(v35, v29);
  }

  result = swift_beginAccess();
  v37 = *(v3 + 16);
  v38 = *(v37 + 16);
  if (!v38)
  {
  }

  v39 = 0;
  v40 = 0;
  while (v40 < v38)
  {
    ++v40;
    v41 = v37 + v39;
    v42 = *(v41 + 72);
    v43 = *(v41 + 80);
    v44 = *(v41 + 64);
    v45 = *(v41 + 48);
    v46 = *(v41 + 56);
    v47 = *(v41 + 40);
    v51 = *(v41 + 32);
    v52 = v47;
    v53 = v45;
    v54 = v46;
    v55 = v44;
    v56 = v42;
    v57 = v43;

    a1(&v51);

    v37 = *(v3 + 16);
    v38 = *(v37 + 16);
    v39 += 64;
    if (v40 == v38)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181DBAA9C(uint64_t a1, void (*a2)(uint64_t, unint64_t, uint64_t, void *))
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11[0] = v4;
  v11[1] = v3;

  MEMORY[0x1865D9CA0](v6, v7);
  v8 = v4;
  if ((v3 & 0x1000000000000000) != 0)
  {
    v9 = sub_182AD3168();
    v8 = v11[0];
  }

  else if ((v3 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  LOBYTE(v11[0]) = v5;
  a2(v8, v3, v9, v11);
}

uint64_t sub_181DBAB68(unint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v7 = *a4;
  v9[2] = a5;
  v9[3] = a3;
  v10 = v7;
  if ((sub_181CA4798(a1, a2) & 1) == 0)
  {
    return sub_18224A00C(sub_18224AA18, v9, a1, a2);
  }

  v11 = a1;
  v12 = a2;

  sub_182243630(sub_18224AA18);
}

void _nw_http_request_access_methodTm(uint64_t a1, void *aBlock, void (*a3)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  a3(a1, v5);

  _Block_release(v5);
}

void ___ZL32nw_http3_stream_serialize_fieldsP24nw_protocol_http3_streamP20nw_protocol_metadata_block_invoke(void *a1, char *a2, unint64_t a3, unint64_t a4, int a5)
{
  v7 = a1;
  v326 = *MEMORY[0x1E69E9840];
  v8 = a1[14];
  if ((!v8 || (*(v8 + 732) & 0x2000) == 0) && gLogDatapath == 1)
  {
    v253 = a5;
    v254 = a4;
    v255 = __nwlog_obj();
    v256 = os_log_type_enabled(v255, OS_LOG_TYPE_DEBUG);
    a4 = v254;
    a5 = v253;
    if (v256)
    {
      v257 = v7[14];
      v258 = (v257 + 632);
      v259 = "";
      v260 = v257 == 0;
      if (!v257)
      {
        v258 = "";
      }

      v261 = *(*(v257 + 344) + 1304);
      v262 = *(v257 + 240);
      if (!v260)
      {
        v259 = " ";
      }

      *buf = 136447746;
      *&buf[4] = "nw_http3_stream_serialize_fields_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v258;
      v316 = 2080;
      v317 = v259;
      v318 = 1024;
      v319 = v261;
      v320 = 2048;
      v321 = v262;
      v322 = 1040;
      v323 = a3;
      v324 = 2080;
      v325 = a2;
      _os_log_impl(&dword_181A37000, v255, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> encoding %.*s", buf, 0x40u);
      a4 = v254;
      a5 = v253;
    }
  }

  if (a4 + a3 >= 0x10000)
  {
    v9 = v7[14];
    if (!v9 || (*(v9 + 732) & 0x2000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v11 = v7[14];
        v12 = (v11 + 632);
        v13 = "";
        v14 = v11 == 0;
        if (!v11)
        {
          v12 = "";
        }

        v15 = *(*(v11 + 344) + 1304);
        v16 = *(v11 + 240);
        if (!v14)
        {
          v13 = " ";
        }

        *buf = 136447746;
        *&buf[4] = "nw_http3_stream_serialize_fields_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v12;
        v316 = 2080;
        v317 = v13;
        v318 = 1024;
        v319 = v15;
        v320 = 2048;
        v321 = v16;
        v322 = 1040;
        v323 = a3;
        v324 = 2080;
        v325 = a2;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> dropping oversized field %.*s", buf, 0x40u);
      }
    }

    return;
  }

  if (a3 >= 0x10000)
  {
    __assert_rtn("lsxpack_header_set_offset2", "lsxpack_header.h", 120, "name_len <= LSXPACK_MAX_STRLEN");
  }

  if (a4 >= 0x10000)
  {
    __assert_rtn("lsxpack_header_set_offset2", "lsxpack_header.h", 124, "val_len <= LSXPACK_MAX_STRLEN");
  }

  if (a5 == 3)
  {
    v17 = 2;
  }

  else
  {
    v17 = a5 == 2;
  }

  v288 = v7 + 4;
  v291 = v7 + 6;
  v285 = v7 + 7;
  v286 = v7 + 9;
  v18 = &a2[a3];
  v284 = a3 + 414139866;
  v275 = a3 & 0xF;
  v19 = &a2[a3 + a4];
  v273 = &a2[a3 + 1];
  v295 = v19;
  if (v19 <= v273)
  {
    v19 = (v18 + 1);
  }

  v281 = v19 - v18;
  v308 = &a2[a3];
  v277 = (v19 - v18) & 0xFFFFFFFFFFFFFFFELL;
  v272 = &v18[v277];
  v268 = (16 * v17) | 0x50;
  v264 = (16 * v17) | 0x5F;
  v266 = (32 * ((v17 & 2) != 0)) | 0x40;
  v263 = (32 * ((v17 & 2) != 0)) | 0x4F;
  v278 = v17;
  v269 = (4 * v17) & 8;
  v265 = (4 * v17) | 7;
  v267 = (16 * ((v17 & 2) != 0)) | 0x20;
  v283 = a4 + a3;
  v282 = (a4 + a3 + 32);
  if (a3)
  {
    v20 = a2;
  }

  else
  {
    v20 = 0;
  }

  v274 = &v20[a3 - 15];
  v271 = (v20 + 1);
  v302 = &v20[a3];
  if (&v20[a3] <= v20 + 1)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = &v20[a3];
  }

  v280 = v21 - v20;
  v309 = v20;
  v276 = (v21 - v20) & 0xFFFFFFFFFFFFFFFELL;
  v270 = &v20[v276];
  v300 = a4;
  v296 = v7;
  __n = a3;
  v289 = a3;
  v290 = a4;
LABEL_29:
  v22 = *(*(v7[4] + 8) + 24);
  v23 = *(*(v7[5] + 8) + 24);
  v24 = *(*(v7[6] + 8) + 24);
  v25 = *(*(v7[7] + 8) + 24);
  v26 = *(*(v7[8] + 8) + 24);
  v27 = *(*(v7[9] + 8) + 24);
  v28 = v7[15];
  v29 = *(*(v7[10] + 8) + 24);
  v30 = *(*(v7[11] + 8) + 24);
  *buf = 0;
  *&buf[8] = 0;
  v31 = *(v28 + 200);
  if (v31)
  {
    fwrite("qenc: debug: ", 0xDuLL, 1uLL, v31);
    fputc(10, *(v28 + 200));
  }

  v32 = v23 + v22;
  if (v32 == v24)
  {
    goto LABEL_32;
  }

  v39 = 414139866;
  if (v309)
  {
    v40 = __n;
    v39 = v284;
    v41 = v309;
    if (__n >= 0x10)
    {
      v42 = 645669457;
      v43 = -2008766304;
      v44 = 39378473;
      v45 = 1679910008;
      v41 = v309;
      do
      {
        HIDWORD(v46) = v42 - 2048144777 * *v41;
        LODWORD(v46) = HIDWORD(v46);
        v42 = -1640531535 * (v46 >> 19);
        HIDWORD(v46) = v43 - 2048144777 * v41[1];
        LODWORD(v46) = HIDWORD(v46);
        v43 = -1640531535 * (v46 >> 19);
        HIDWORD(v46) = v44 - 2048144777 * v41[2];
        LODWORD(v46) = HIDWORD(v46);
        v44 = -1640531535 * (v46 >> 19);
        HIDWORD(v46) = v45 - 2048144777 * v41[3];
        LODWORD(v46) = HIDWORD(v46);
        v45 = -1640531535 * (v46 >> 19);
        v41 += 4;
      }

      while (v41 < v274);
      HIDWORD(v48) = v42;
      LODWORD(v48) = v42;
      v47 = v48 >> 31;
      HIDWORD(v48) = v43;
      LODWORD(v48) = v43;
      v49 = v48 >> 25;
      HIDWORD(v48) = v44;
      LODWORD(v48) = v44;
      v50 = v48 >> 20;
      HIDWORD(v48) = v45;
      LODWORD(v48) = v45;
      v39 = v47 + __n + v49 + v50 + (v48 >> 14);
      v40 = v275;
    }

    if (v40 >= 4)
    {
      do
      {
        v51 = *v41++;
        HIDWORD(v52) = v39 - 1028477379 * v51;
        LODWORD(v52) = HIDWORD(v52);
        v39 = 668265263 * (v52 >> 15);
        v40 -= 4;
      }

      while (v40 > 3);
    }

    for (; v40; --v40)
    {
      v53 = *v41;
      v41 = (v41 + 1);
      HIDWORD(v54) = v39 + 374761393 * v53;
      LODWORD(v54) = HIDWORD(v54);
      v39 = -1640531535 * (v54 >> 21);
    }
  }

  v55 = -1028477379 * ((-2048144777 * (v39 ^ (v39 >> 15))) ^ ((-2048144777 * (v39 ^ (v39 >> 15))) >> 13));
  v56 = v55 ^ HIWORD(v55);
  v57 = XXH_INLINE_XXH32(v308, v300, v56);
  v58 = *(v28 + 200);
  v313 = v57;
  if (v58)
  {
    fwrite("qenc: debug: ", 0xDuLL, 1uLL, v58);
    fprintf(*(v28 + 200), "name hash: 0x%X; nameval hash: 0x%X", v56, v313);
    fputc(10, *(v28 + 200));
    v57 = v313;
  }

  v311 = v56;
  v298 = (v29 + v27 - v25);
  v299 = v26 + v25 - v27;
  v301 = &v298[v299];
  v293 = (v30 + v24 - v22);
  v294 = v32 - v24;
  v292 = v30 - v22 + v32;
  v59 = nameval2id_plus_one[v57 & 0x1FF];
  v60 = __n;
  v61 = v300;
  if (nameval2id_plus_one[v57 & 0x1FF])
  {
    v62 = v59 - 1;
    v63 = &(&static_table)[3 * (v59 - 1)];
    if (*(v63 + 4) == __n && *(v63 + 5) == v300)
    {
      v64 = memcmp(*v63, v309, __n);
      v57 = v313;
      if (!v64)
      {
        v65 = memcmp(v63[1], v308, v300);
        v57 = v313;
        if (!v65)
        {
          v305 = v62;
          v306 = 0;
          v287 = 0;
          v307 = 0;
          v68 = 0;
          v78 = 0;
          v303 = 0;
          v79 = 0;
          v76 = 0;
          v304 = 0xFFFFFFFFLL;
          v80 = 1;
          v66 = v295;
          v72 = v302;
          v73 = v311;
          goto LABEL_173;
        }
      }
    }
  }

  v66 = v295;
  if (!*(v28 + 28) || (v67 = *(v28 + 128)) == 0)
  {
    v71 = 0;
    v68 = 0;
    goto LABEL_61;
  }

  v68 = 0;
  v69 = *(v67 + 52);
  v70 = *(v28 + 20) >> 1;
  v71 = v69 < v70;
  if (v278)
  {
LABEL_61:
    v72 = v302;
    v73 = v56;
    goto LABEL_62;
  }

  v72 = v302;
  v73 = v56;
  if (v69 < v70)
  {
    v68 = *v28 != -1;
    v71 = 1;
  }

LABEL_62:
  HIDWORD(v304) = v71;
  if (*(v28 + 136) || *(v28 + 40) < *(v28 + 36))
  {
    v74 = 1;
  }

  else
  {
    v77 = *(v28 + 128);
    if (!v77)
    {
      v307 = 0;
      goto LABEL_66;
    }

    v74 = *(v77 + 60) > *(v28 + 4);
  }

  v307 = v74;
LABEL_66:
  v306 = 0;
  v75 = 0;
  v76 = 0;
  v287 = *(v28 + 216) != 0;
  LODWORD(v304) = -1;
  while (1)
  {
    while (1)
    {
      if (!HIDWORD(v304))
      {
        goto LABEL_104;
      }

      v76 = *(*(v28 + 72) + 32 * (v57 & ~(-1 << *(v28 + 52))) + 16);
      if (!v76)
      {
        v306 = 0;
        v76 = 0;
        goto LABEL_104;
      }

      v306 = 0;
      do
      {
        if (v57 == *(v76 + 10) && *(v76 + 12) == v60 && *(v76 + 13) == v61)
        {
          if (memcmp(v309, v76 + 7, v60) || memcmp(v308, v76 + v60 + 56, v61))
          {
            v73 = v311;
            v57 = v313;
            goto LABEL_75;
          }

          *&buf[8 * v306] = v76;
          v73 = v311;
          v57 = v313;
          if (!v306)
          {
            v306 = 1;
            goto LABEL_75;
          }

          v201 = *(*buf + 24);
          v305 = *(*&buf[8] + 24);
          if (v305 <= v201)
          {
            __assert_rtn("lsqpack_enc_encode", "lsqpack.c", 1803, "candidates[1]->ete_id > candidates[0]->ete_id");
          }

          v306 = 2;
          v78 = 2;
          if (v307)
          {
            HIDWORD(v304) = 1;
            v307 = 1;
LABEL_360:
            v80 = 2;
            v303 = 0;
            v79 = 0;
            v76 = *&buf[8];
            goto LABEL_173;
          }

          v209 = *(v28 + 4);
          v306 = 2;
          v78 = 2;
          if (v305 <= v209)
          {
            v307 = 0;
            HIDWORD(v304) = 1;
            goto LABEL_360;
          }

          if (v201 <= v209)
          {
            v306 = 2;
            if ((*(*buf + 32) + *(*buf + 28) + *(v28 + 20) - (*(v28 + 32) + *(v28 + 16))) >= *(v28 + 20) >> 2)
            {
              v78 = 2;
              v307 = 0;
              v305 = *(*buf + 24);
              HIDWORD(v304) = 1;
              v80 = 2;
              v303 = 0;
              v79 = 0;
              v76 = *buf;
              goto LABEL_173;
            }
          }

          else
          {
            v88 = 2;
LABEL_102:
            v306 = v88;
          }

LABEL_104:
          v89 = name2id_plus_one[v73 & 0x1FF];
          if (name2id_plus_one[v73 & 0x1FF])
          {
            v305 = v89 - 1;
            v90 = &(&static_table)[3 * (v89 - 1)];
            if (*(v90 + 4) == v60)
            {
              v91 = memcmp(*v90, v309, v60);
              v73 = v311;
              v57 = v313;
              if (!v91)
              {
                if (!v68)
                {
                  v78 = 0;
                  v68 = 0;
                  v80 = 3;
                  v303 = 0;
                  v79 = 0;
                  goto LABEL_173;
                }

                v68 = 1;
                if (qenc_has_or_can_evict_at_least(v28, v282))
                {
                  v110 = *(v28 + 216);
                  v111 = 1;
                  v73 = v311;
                  v57 = v313;
                  if (v110)
                  {
                    v112 = 228;
                    if (!*(v28 + 232))
                    {
                      v112 = 224;
                    }

                    v113 = v110 + 8 * *(v28 + v112);
                    *(v113 + 4) = v313;
                    v114 = v110 - 8;
                    do
                    {
                      v115 = *(v114 + 12);
                      v114 += 8;
                    }

                    while (v115 != v313);
                    v111 = v114 < v113;
                  }

                  LODWORD(v304) = v111;
                  if (HIDWORD(v304))
                  {
                    v116 = v306 == 0;
                  }

                  else
                  {
                    v116 = 1;
                  }

                  v117 = !v116;
                  v118 = (&lsqpack_enc_encode_programs + 64 * v111 + 32 * v307 + 16 * v117);
                  v79 = *v118;
                  v80 = v118[1];
                  v78 = v118[3];
                  v303 = v118[2];
                  v68 = 1;
                  goto LABEL_173;
                }

                v78 = 0;
                v80 = 3;
                v303 = 0;
                v79 = 0;
                goto LABEL_284;
              }
            }
          }

          v92 = -1;
          if (HIDWORD(v304))
          {
            v76 = 0;
            v93 = *(v28 + 72);
            if (*(v93 + 32 * (v73 & ~(-1 << *(v28 + 52)))))
            {
              v76 = *(v93 + 32 * (v73 & ~(-1 << *(v28 + 52))));
              while (1)
              {
                if (v73 != *(v76 + 11) || (*(v76 + 8) + *(v76 + 7) + *(v28 + 20) - (*(v28 + 32) + *(v28 + 16))) < *(v28 + 20) >> 2 || *(v76 + 12) != v60 || !v307 && *(v76 + 6) > *(v28 + 4))
                {
                  goto LABEL_115;
                }

                if (!v68)
                {
                  goto LABEL_112;
                }

                if ((v92 & 0x80000000) == 0)
                {
                  break;
                }

                if (qenc_has_or_can_evict_at_least(v28, v282))
                {
                  goto LABEL_111;
                }

                v92 = 0;
LABEL_113:
                v73 = v311;
LABEL_114:
                v57 = v313;
LABEL_115:
                v76 = v76[1];
                if (!v76)
                {
                  goto LABEL_126;
                }
              }

              if (!v92)
              {
                goto LABEL_114;
              }

LABEL_111:
              v92 = 1;
LABEL_112:
              if (!memcmp(v309, v76 + 7, v60))
              {
                v305 = *(v76 + 6);
                v57 = v313;
                if (!v307)
                {
                  v186 = v304;
                  v72 = v302;
                  v73 = v311;
                  goto LABEL_338;
                }

                v73 = v311;
                if (!v68 || !v92)
                {
                  v186 = v304;
                  v72 = v302;
                  goto LABEL_338;
                }

                if ((v304 & 0x80000000) != 0)
                {
                  v202 = *(v28 + 216);
                  v78 = 6;
                  v72 = v302;
                  if (v202)
                  {
                    v203 = 228;
                    if (!*(v28 + 232))
                    {
                      v203 = 224;
                    }

                    v204 = v202 + 8 * *(v28 + v203);
                    *(v204 + 4) = v313;
                    v205 = v202 - 8;
                    do
                    {
                      v206 = *(v205 + 12);
                      v205 += 8;
                    }

                    while (v206 != v313);
                    v186 = 0;
                    v78 = 6;
                    LODWORD(v304) = 1;
                    if (v205 >= v204)
                    {
                      goto LABEL_338;
                    }

                    v80 = 0;
                    v303 = 1;
                  }

                  else
                  {
                    v80 = 0;
                    v303 = 1;
                    LODWORD(v304) = 1;
                  }

                  HIDWORD(v304) = 1;
LABEL_358:
                  v307 = 1;
                  v68 = 1;
                  v79 = 3;
                }

                else
                {
                  v186 = 0;
                  v78 = 6;
                  HIDWORD(v304) = 1;
                  v72 = v302;
                  if (v304)
                  {
                    v80 = 0;
                    v303 = 1;
                    LODWORD(v304) = 1;
                    goto LABEL_358;
                  }

LABEL_338:
                  v303 = 0;
                  v78 = 2;
                  v304 = v186 | 0x100000000;
                  v79 = 0;
                  v80 = 4;
                }

                goto LABEL_173;
              }

              goto LABEL_113;
            }
          }

LABEL_126:
          if (!v68)
          {
            v78 = 0;
            v305 = v75;
            v68 = 0;
            v80 = 6;
            v303 = 0;
            v79 = 0;
            v72 = v302;
            goto LABEL_173;
          }

          if ((v304 & 0x80000000) != 0)
          {
            v95 = *(v28 + 216);
            if (v95)
            {
              v96 = 228;
              if (!*(v28 + 232))
              {
                v96 = 224;
              }

              v97 = v95 + 8 * *(v28 + v96);
              *(v97 + 4) = v57;
              v98 = v95 - 8;
              do
              {
                v99 = *(v98 + 12);
                v98 += 8;
              }

              while (v99 != v57);
              v94 = 0;
              if (v98 >= v97)
              {
                goto LABEL_147;
              }
            }
          }

          else
          {
            v94 = 0;
            if (!v304)
            {
LABEL_147:
              v105 = *(v28 + 216);
              v72 = v302;
              if (v105)
              {
                v106 = 228;
                if (!*(v28 + 232))
                {
                  v106 = 224;
                }

                v107 = (v105 + 8 * *(v28 + v106));
                *v107 = v73;
                v108 = v105 - 8;
                do
                {
                  v109 = *(v108 + 8);
                  v108 += 8;
                }

                while (v109 != v73);
                v68 = 1;
                if (v108 >= v107)
                {
                  v78 = 0;
                  v305 = v75;
                  LODWORD(v304) = v94;
                  v80 = 6;
                  v303 = 0;
                  v79 = 0;
                  goto LABEL_172;
                }
              }

              v68 = 1;
              if (qenc_has_or_can_evict_at_least(v28, v60 + 32))
              {
                v100 = v75;
                v103 = (&lsqpack_enc_encode_programs_21 + 16 * v307);
                v303 = 2;
                v79 = 5;
                v73 = v311;
                v57 = v313;
LABEL_155:
                v80 = v103[1];
                v78 = v103[3];
                v68 = 1;
                v305 = v100;
                LODWORD(v304) = v94;
LABEL_172:
                v66 = v295;
                goto LABEL_173;
              }

              v78 = 0;
              v305 = v75;
              LODWORD(v304) = v94;
              v80 = 6;
              v303 = 0;
              v79 = 0;
              v66 = v295;
LABEL_284:
              v73 = v311;
              v57 = v313;
              goto LABEL_173;
            }
          }

          if (v92 < 0)
          {
            can_evict_at_least = qenc_has_or_can_evict_at_least(v28, v282);
            v73 = v311;
            v57 = v313;
            v94 = 1;
            if (!can_evict_at_least)
            {
              goto LABEL_147;
            }
          }

          else
          {
            v94 = 1;
            if (!v92)
            {
              goto LABEL_147;
            }
          }

          v100 = v75;
          if (HIDWORD(v304))
          {
            v101 = v306 == 0;
          }

          else
          {
            v101 = 1;
          }

          v102 = !v101;
          v103 = (&lsqpack_enc_encode_programs_20 + 32 * v307 + 16 * v102);
          v79 = *v103;
          v303 = v103[2];
          v72 = v302;
          goto LABEL_155;
        }

LABEL_75:
        v76 = *v76;
      }

      while (v76);
      if (v306 != 1)
      {
        goto LABEL_104;
      }

      v76 = *buf;
      v75 = *(*buf + 24);
      if (v307)
      {
        if (!v68)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v81 = *(v28 + 4);
        v82 = v75 > v81 || !v68;
        v83 = *(*buf + 24);
        if (v82)
        {
          goto LABEL_100;
        }
      }

      if ((*(v28 + 12) & 2) == 0 || (v84 = (*(*buf + 48) + *(*buf + 52) + 32), v85 = *(v28 + 20), ((v84 + *(v28 + 16)) / v85) < 0.8) || ((*(*buf + 28) - *(v28 + 32) + *(*buf + 32)) / v85) >= 0.2 || (v86 = qenc_has_or_can_evict_at_least(v28, v84), v57 = v313, !v86))
      {
        v73 = v311;
        if (!v307)
        {
          v83 = *(v76 + 6);
          v81 = *(v28 + 4);
LABEL_100:
          if (v83 > v81)
          {
            v88 = 1;
            goto LABEL_102;
          }
        }

LABEL_103:
        v78 = 2;
        v306 = 1;
        if ((*(v76 + 8) + *(v76 + 7) + *(v28 + 20) - (*(v28 + 32) + *(v28 + 16))) >= *(v28 + 20) >> 2)
        {
          HIDWORD(v304) = 1;
          v305 = v75;
          v303 = 0;
          v79 = 0;
          v80 = 2;
          goto LABEL_173;
        }

        goto LABEL_104;
      }

      v87 = v75;
      v78 = 6;
      v306 = 1;
      if (v307)
      {
        v80 = 0;
        HIDWORD(v304) = 1;
        v305 = v87;
        v307 = 1;
        v303 = 1;
        v79 = 1;
        v73 = v311;
        goto LABEL_173;
      }

      v208 = *(v28 + 16);
      v207 = *(v28 + 20);
      v73 = v311;
      if (*(v76 + 8) + *(v76 + 7) + v207 - (*(v28 + 32) + v208) < v207 >> 2)
      {
        v306 = 1;
        goto LABEL_104;
      }

      v307 = 0;
      v210 = v208 + *(v76 + 12) + *(v76 + 13) + 32;
      v80 = 2;
      v306 = 1;
      HIDWORD(v304) = 1;
      if (v210 <= v207)
      {
        v78 = 2;
        v305 = v87;
      }

      else
      {
        v211 = *(v28 + 56);
        v78 = 2;
        if (v211 == v76)
        {
          v306 = 1;
          HIDWORD(v304) = 1;
          v305 = v87;
          v307 = 0;
          v303 = 0;
          v79 = 0;
          v80 = 2;
          goto LABEL_173;
        }

        while (1)
        {
          v210 = v210 - (*(v211 + 48) + *(v211 + 52)) - 32;
          if (v210 <= v207)
          {
            break;
          }

          v211 = *(v211 + 16);
          v78 = 2;
          if (v211 == v76)
          {
            v306 = 1;
            v307 = 0;
            v303 = 0;
            v79 = 0;
            HIDWORD(v304) = 1;
            v305 = v87;
            v80 = 2;
            goto LABEL_173;
          }
        }

        v307 = 0;
        v80 = 2;
        v306 = 1;
        HIDWORD(v304) = 1;
        v305 = v87;
        v78 = 2;
      }

      v303 = 1;
      v79 = 1;
LABEL_173:
      if (((1 << v79) & 0x3C) == 0 || ((1 << v80) & 0x78) == 0)
      {
        break;
      }

      v119 = 0;
      if (v60)
      {
        v119 = 0;
        v120 = v309;
        if (v280 < 2)
        {
          goto LABEL_473;
        }

        v121 = 0;
        v122 = 0;
        v123 = v271;
        v124 = v276;
        do
        {
          v125 = *(v123 - 1);
          v126 = *v123;
          v123 += 2;
          v121 += encode_table[2 * v125 + 1];
          v122 += encode_table[2 * v126 + 1];
          v124 -= 2;
        }

        while (v124);
        v119 = v122 + v121;
        v120 = v270;
        if (v280 != v276)
        {
LABEL_473:
          do
          {
            v127 = *v120++;
            v119 += encode_table[2 * v127 + 1];
          }

          while (v120 < v72);
        }
      }

      v128 = 0;
      v129 = v119 >> 3;
      v130 = (v119 & 7) != 0;
      if (v61)
      {
        v128 = 0;
        v131 = v308;
        if (v281 < 2)
        {
          goto LABEL_474;
        }

        v132 = 0;
        v133 = 0;
        v134 = v273;
        v135 = v277;
        do
        {
          v136 = *(v134 - 1);
          v137 = *v134;
          v134 += 2;
          v132 += encode_table[2 * v136 + 1];
          v133 += encode_table[2 * v137 + 1];
          v135 -= 2;
        }

        while (v135);
        v128 = v133 + v132;
        v131 = v272;
        if (v281 != v277)
        {
LABEL_474:
          do
          {
            v138 = *v131++;
            v128 += encode_table[2 * v138 + 1];
          }

          while (v131 < v66);
        }
      }

      v139 = v129 + *(v28 + 196) + v130 + (v128 >> 3);
      if ((v128 & 7) != 0)
      {
        ++v139;
      }

      if ((v139 / (v283 + *(v28 + 192))) <= 0.95)
      {
        break;
      }

      if (!v68)
      {
        __assert_rtn("lsqpack_enc_encode", "lsqpack.c", 1953, "index");
      }

      v140 = *(v28 + 200);
      if (v140)
      {
        fwrite("qenc: debug: ", 0xDuLL, 1uLL, v140);
        fwrite("double lit would result in ratio > 0.95, reset", 0x2EuLL, 1uLL, *(v28 + 200));
        fputc(10, *(v28 + 200));
        v73 = v311;
        v57 = v313;
      }

      v68 = 0;
      v75 = v305;
    }

    v141 = *(v28 + 200);
    if (v141)
    {
      v142 = v79;
      fwrite("qenc: debug: ", 0xDuLL, 1uLL, v141);
      fprintf(*(v28 + 200), "program: %s; %s; %s; flags: 0x%X", eea2str[v142], eha2str[v80], eta2str[v303], v78);
      fputc(10, *(v28 + 200));
      v79 = v142;
      v73 = v311;
      v57 = v313;
    }

    if (v79 > 2)
    {
      if ((v79 - 4) < 2)
      {
        if (v299 < 1)
        {
          goto LABEL_302;
        }

        v143 = v79;
        *v298 = 64;
        v144 = lsqpack_enc_enc_str(5, v298, v299, v309, v60);
        if ((v144 & 0x80000000) != 0)
        {
          goto LABEL_302;
        }

        v145 = &v298[v144];
        v146 = v299 - v144;
        if (v143 == 4)
        {
          v147 = v61;
        }

        else
        {
          v147 = 0;
        }

        v148 = &v298[v144];
        v149 = v308;
        goto LABEL_215;
      }

      if (v79 != 3)
      {
        __assert_rtn("lsqpack_enc_encode", "lsqpack.c", 2025, "EEA_NONE == prog.ep_enc_action");
      }

      if (v299 < 1)
      {
        goto LABEL_302;
      }

      *v298 = 0x80;
      v151 = *v28 - v305;
      if (v151 <= 0x3E)
      {
        v150 = (*v28 - v305) | 0x80;
        goto LABEL_213;
      }

      *v298 = -65;
      v168 = v298 + 1;
      v169 = v151 - 63;
      if ((v151 - 63) >= 0x80)
      {
        while (v168 < v301)
        {
          *v168++ = v169 | 0x80;
          v170 = v169 >> 7;
          v171 = v169 >> 14;
          v169 >>= 7;
          if (!v171)
          {
            goto LABEL_269;
          }
        }

        goto LABEL_302;
      }

      goto LABEL_271;
    }

    if (v79 != 1)
    {
      if (v79 != 2)
      {
        goto LABEL_220;
      }

      if (v299 < 1)
      {
        goto LABEL_302;
      }

      *v298 = -64;
      if (v305 <= 0x3E)
      {
        v150 = v305 | 0xC0;
LABEL_213:
        *v298 = v150;
        v145 = v298 + 1;
LABEL_214:
        v146 = v301 - v145;
        v148 = v145;
        v149 = v308;
        v147 = v61;
LABEL_215:
        v152 = lsqpack_enc_enc_str(7, v148, v146, v149, v147);
        v73 = v311;
        v57 = v313;
        if (v152 < 0)
        {
          goto LABEL_302;
        }

        v79 = &v145[v152] - v298;
        goto LABEL_220;
      }

      *v298 = -1;
      v168 = v298 + 1;
      v169 = v305 - 63;
      if (v169 >= 0x80)
      {
        while (v168 < v301)
        {
          *v168++ = v169 | 0x80;
          v170 = v169 >> 7;
          v176 = v169 >> 14;
          v169 >>= 7;
          if (!v176)
          {
LABEL_269:
            v177 = v168 - 1;
            if (v168 < v301)
            {
              goto LABEL_272;
            }

            goto LABEL_302;
          }
        }

        goto LABEL_302;
      }

LABEL_271:
      LOBYTE(v170) = v169;
      v177 = v298;
      if (v168 >= v301)
      {
        goto LABEL_302;
      }

LABEL_272:
      v145 = v177 + 2;
      *v168 = v170;
      if (v177 + 2 <= v298)
      {
        goto LABEL_302;
      }

      goto LABEL_214;
    }

    if (v299 < 1)
    {
      goto LABEL_302;
    }

    *v298 = 0;
    v153 = *v28 - v305;
    if (v153 <= 0x1E)
    {
      *v298 = *v28 - v305;
      v79 = 1;
      goto LABEL_220;
    }

    *v298 = 31;
    v172 = v298 + 1;
    v173 = v153 - 31;
    if (v153 - 31 >= 0x80)
    {
      while (v172 < v301)
      {
        *v172++ = v173 | 0x80;
        v153 = v173 >> 7;
        v174 = v173 >> 14;
        v173 >>= 7;
        if (!v174)
        {
          v175 = v172 - 1;
          if (v172 >= v301)
          {
            break;
          }

          goto LABEL_300;
        }
      }

LABEL_302:
      v7 = v296;
      v190 = *(*(v296[9] + 8) + 24);
      if (v190 < *(*(v296[8] + 8) + 24) + *(*(v296[7] + 8) + 24))
      {
        v191 = *(*(v296[12] + 8) + 24);
        *(*(v296[12] + 8) + 24) = dispatch_data_create_subrange(v191, 0, v190);
        if (v191)
        {
          dispatch_release(v191);
        }
      }

      *(*(v296[8] + 8) + 24) += 512;
      alloc = dispatch_data_create_alloc();
      v192 = *(*(v296[12] + 8) + 24);
      *(*(v296[12] + 8) + 24) = dispatch_data_create_concat(v192, alloc);
      if (v192)
      {
        dispatch_release(v192);
      }

      v38 = v285;
      v37 = v286;
      if (alloc)
      {
LABEL_27:
        dispatch_release(alloc);
      }

LABEL_28:
      *(*(*v38 + 8) + 24) = *(*(*v37 + 8) + 24);
      goto LABEL_29;
    }

    LOBYTE(v153) = v153 - 31;
    v175 = v298;
    if (v172 >= v301)
    {
      goto LABEL_302;
    }

LABEL_300:
    v189 = (v175 + 2);
    *v172 = v153;
    if (v189 <= v298)
    {
      goto LABEL_302;
    }

    v79 = v189 - v298;
LABEL_220:
    v154 = v305;
    v279 = v79;
    if (v80 > 2)
    {
      if (v80 > 4)
      {
        if (v80 != 5)
        {
          if (v80 != 6)
          {
            __assert_rtn("lsqpack_enc_encode", "lsqpack.c", 2111, "prog.ep_hea_action == EHA_LIT_WITH_NAME_STAT");
          }

          *v293 = v267;
          v155 = lsqpack_enc_enc_str(3, v293, v294, v309, v60);
          if ((v155 & 0x80000000) != 0)
          {
            goto LABEL_32;
          }

          v156 = &v293[v155];
          v157 = v294 - v155;
          goto LABEL_317;
        }

        v154 = *v28 + 1;
LABEL_240:
        v161 = v292;
        *v293 = v269;
        v164 = *(v28 + 156);
        if (v154 <= v164)
        {
          __assert_rtn("lsqpack_enc_encode", "lsqpack.c", 2081, "id > enc->qpe_cur_header.base_idx");
        }

        if (v294 <= 0)
        {
          goto LABEL_454;
        }

        v162 = v154 + ~v164;
        v305 = v154;
        if (v162 <= 6)
        {
          v163 = v269;
          goto LABEL_244;
        }

        *v293 = v265;
        v178 = v293 + 1;
        v179 = v162 - 7;
        if ((v162 - 7) >= 0x80)
        {
          while (v178 < v292)
          {
            *v178++ = v179 | 0x80;
            v180 = v179 >> 7;
            v181 = v179 >> 14;
            v179 >>= 7;
            if (!v181)
            {
              goto LABEL_312;
            }
          }

          goto LABEL_32;
        }

        goto LABEL_314;
      }

      if (v80 == 4)
      {
        if (v305 > *(v28 + 156))
        {
          goto LABEL_240;
        }

        *v293 = v266;
        v161 = v292;
        if (v294 <= 0)
        {
          goto LABEL_454;
        }

        v162 = *(v28 + 156) - v305;
        if (v162 <= 0xE)
        {
          v163 = v266;
LABEL_244:
          *v293 = v163 | v162;
          v156 = v293 + 1;
LABEL_316:
          v157 = v161 - v156;
LABEL_317:
          v195 = lsqpack_enc_enc_str(7, v156, v157, v308, v300);
          v73 = v311;
          v57 = v313;
          if (v195 < 0)
          {
            goto LABEL_32;
          }

          v167 = &v156[v195] - v293;
          goto LABEL_319;
        }

        *v293 = v263;
        v178 = v293 + 1;
        v179 = v162 - 15;
        if ((v162 - 15) >= 0x80)
        {
          while (v178 < v292)
          {
            *v178++ = v179 | 0x80;
            v180 = v179 >> 7;
            v193 = v179 >> 14;
            v179 >>= 7;
            if (!v193)
            {
              goto LABEL_312;
            }
          }

          goto LABEL_32;
        }
      }

      else
      {
        *v293 = v268;
        if (v294 <= 0)
        {
          goto LABEL_454;
        }

        if (v305 <= 0xE)
        {
          *v293 = v268 | v305;
          v156 = v293 + 1;
          v161 = v292;
          goto LABEL_316;
        }

        *v293 = v264;
        v178 = v293 + 1;
        v179 = v305 - 15;
        v161 = v292;
        if (v179 >= 0x80)
        {
          do
          {
            if (v178 >= v292)
            {
              goto LABEL_32;
            }

            *v178++ = v179 | 0x80;
            v180 = v179 >> 7;
            v188 = v179 >> 14;
            v179 >>= 7;
          }

          while (v188);
LABEL_312:
          v194 = v178 - 1;
          if (v178 >= v161)
          {
            goto LABEL_32;
          }

          goto LABEL_315;
        }
      }

LABEL_314:
      LOBYTE(v180) = v179;
      v194 = v293;
      if (v178 >= v161)
      {
        goto LABEL_32;
      }

LABEL_315:
      v156 = v194 + 2;
      *v178 = v180;
      if (v194 + 2 <= v293)
      {
        goto LABEL_32;
      }

      goto LABEL_316;
    }

    if (!v80)
    {
      v154 = *v28 + 1;
LABEL_246:
      v158 = v292;
      *v293 = 16;
      v165 = *(v28 + 156);
      if (v154 <= v165)
      {
        __assert_rtn("lsqpack_enc_encode", "lsqpack.c", 2044, "id > enc->qpe_cur_header.base_idx");
      }

      if (v294 <= 0)
      {
LABEL_454:
        __assert_rtn("lsqpack_enc_int", "lsqpack.c", 793, "dst < end");
      }

      v166 = v154 + ~v165;
      v305 = v154;
      if (v166 <= 0xE)
      {
        v160 = (v154 + ~v165) | 0x10;
        goto LABEL_253;
      }

      *v293 = 31;
      v182 = v293 + 1;
      v183 = v166 - 15;
      if ((v166 - 15) >= 0x80)
      {
        while (v182 < v292)
        {
          *v182++ = v183 | 0x80;
          v184 = v183 >> 7;
          v185 = v183 >> 14;
          v183 >>= 7;
          if (!v185)
          {
            goto LABEL_328;
          }
        }

LABEL_32:
        v7 = v296;
        v33 = *(*(v296[6] + 8) + 24);
        if (v33 < *(*(v296[5] + 8) + 24) + *(*(v296[4] + 8) + 24))
        {
          v34 = *(*(v296[13] + 8) + 24);
          *(*(v296[13] + 8) + 24) = dispatch_data_create_subrange(v34, 0, v33);
          if (v34)
          {
            dispatch_release(v34);
          }
        }

        *(*(v296[5] + 8) + 24) += 512;
        alloc = dispatch_data_create_alloc();
        v36 = *(*(v296[13] + 8) + 24);
        *(*(v296[13] + 8) + 24) = dispatch_data_create_concat(v36, alloc);
        if (v36)
        {
          dispatch_release(v36);
        }

        v37 = v291;
        v38 = v288;
        if (alloc)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      goto LABEL_330;
    }

    if (v80 == 1)
    {
      *v293 = -64;
      if (v294 <= 0)
      {
        goto LABEL_454;
      }

      if (v305 <= 0x3E)
      {
        v160 = v305 | 0xC0;
        goto LABEL_253;
      }

      *v293 = -1;
      v182 = v293 + 1;
      v183 = v305 - 63;
      v158 = v292;
      if (v183 >= 0x80)
      {
        do
        {
          if (v182 >= v292)
          {
            goto LABEL_32;
          }

          *v182++ = v183 | 0x80;
          v184 = v183 >> 7;
          v187 = v183 >> 14;
          v183 >>= 7;
        }

        while (v187);
LABEL_328:
        v199 = v182 - 1;
        if (v182 >= v158)
        {
          goto LABEL_32;
        }

        goto LABEL_331;
      }
    }

    else
    {
      if (v305 > *(v28 + 156))
      {
        goto LABEL_246;
      }

      *v293 = 0x80;
      v158 = v292;
      if (v294 <= 0)
      {
        goto LABEL_454;
      }

      v159 = *(v28 + 156) - v305;
      if (v159 <= 0x3E)
      {
        v160 = (*(v28 + 156) - v305) | 0x80;
LABEL_253:
        *v293 = v160;
        v167 = 1;
        goto LABEL_319;
      }

      *v293 = -65;
      v182 = v293 + 1;
      v183 = v159 - 63;
      if ((v159 - 63) >= 0x80)
      {
        while (v182 < v292)
        {
          *v182++ = v183 | 0x80;
          v184 = v183 >> 7;
          v198 = v183 >> 14;
          v183 >>= 7;
          if (!v198)
          {
            goto LABEL_328;
          }
        }

        goto LABEL_32;
      }
    }

LABEL_330:
    LOBYTE(v184) = v183;
    v199 = v293;
    if (v182 >= v158)
    {
      goto LABEL_32;
    }

LABEL_331:
    v200 = (v199 + 2);
    *v182 = v184;
    if (v200 <= v293)
    {
      goto LABEL_32;
    }

    v167 = v200 - v293;
LABEL_319:
    v72 = v302;
    v60 = __n;
    v61 = v300;
    v66 = v295;
    if ((v303 - 1) > 1)
    {
      v212 = &v298[v299];
      v213 = v299;
      if (v303)
      {
        __assert_rtn("lsqpack_enc_encode", "lsqpack.c", 2153, "prog.ep_tab_action == ETA_NOOP");
      }

LABEL_373:
      if ((v78 & 2) == 0)
      {
        goto LABEL_380;
      }

      goto LABEL_374;
    }

    v196 = v303 == 1 ? v300 : 0;
    v197 = lsqpack_enc_push_entry(v28, v73, v57, v309, __n, v308, v196);
    if (v197)
    {
      break;
    }

    v68 = 0;
    v75 = v305;
    v73 = v311;
    v57 = v313;
  }

  v214 = *(v28 + 128);
  v214[13] += v197[12] + v197[13] + 32;
  v212 = &v298[v299];
  v213 = v299;
  if ((v78 & 4) == 0)
  {
    goto LABEL_373;
  }

  ++v197[9];
  *(v28 + 152) |= 2u;
  v215 = v214[15];
  v216 = v197[6];
  if (v215)
  {
    if (v216 <= v215)
    {
      __assert_rtn("lsqpack_enc_encode", "lsqpack.c", 2147, "new_entry->ete_id > enc->qpe_cur_header.hinfo->qhi_max_id");
    }

    v214[15] = v216;
    goto LABEL_373;
  }

  v214[14] = v216;
  v214[15] = v216;
  if ((v78 & 2) == 0)
  {
    goto LABEL_380;
  }

LABEL_374:
  ++*(v76 + 9);
  v217 = *(v28 + 128);
  v218 = *(v76 + 6);
  v219 = *(v217 + 60);
  if (!v219)
  {
    *(v217 + 60) = v218;
LABEL_379:
    *(v217 + 56) = v218;
    goto LABEL_380;
  }

  if (v219 < v218)
  {
    *(v217 + 60) = v218;
    goto LABEL_380;
  }

  if (*(v217 + 56) > v218)
  {
    goto LABEL_379;
  }

LABEL_380:
  qenc_remove_overflow_entries(v28);
  v220 = v279;
  if (v287)
  {
    v221 = *(v28 + 216);
    if (!v221)
    {
      __assert_rtn("lsqpack_enc_encode", "lsqpack.c", 2168, "enc->qpe_hist_els");
    }

    v222 = *(v28 + 228);
    if (*(v28 + 144) < v222)
    {
LABEL_385:
      *(v221 + 8 * *(v28 + 224)) = v311;
      *(v221 + 8 * *(v28 + 224) + 4) = v313;
      v223 = (*(v28 + 224) + 1) % *(v28 + 228);
      *(v28 + 224) = v223;
      *(v28 + 232) |= v223 == 0;
    }

    else
    {
      qenc_hist_update_size(v28, v222 + 4);
      v220 = v279;
      if (*(v28 + 228))
      {
        v221 = *(v28 + 216);
        goto LABEL_385;
      }
    }

    ++*(v28 + 144);
  }

  v314 = v167;
  if (v213 != v220)
  {
    while (1)
    {
      if ((*(v28 + 12) & 2) == 0 || *v28 == -1 || ((v224 = *(v28 + 208), v224 != 0.0) || *(v28 + 136) || *(v28 + 40) < *(v28 + 36) || (v225 = *(v28 + 128)) != 0 && *(v225 + 60) > *(v28 + 4)) && v224 < *(v28 + 212) || (v226 = *(v28 + 56)) == 0)
      {
        v213 = v220;
        goto LABEL_441;
      }

      v227 = 0;
      v312 = &v298[v220];
      v310 = v299 - v220;
      v228 = v220;
      do
      {
        if ((*(v226 + 8) + *(v226 + 7) + *(v28 + 20) - (*(v28 + 32) + *(v28 + 16))) >= *(v28 + 20) >> 2)
        {
          break;
        }

        if (!v227 || *(v226 + 12) + *(v226 + 13) + 32 >= (v227[12] + v227[13] + 32))
        {
          v229 = *v226;
          v230 = *(v226 + 10);
          if (*v226)
          {
            while (1)
            {
              if (*(v229 + 10) == v230)
              {
                v231 = *(v229 + 12);
                if (v231 == *(v226 + 12))
                {
                  v232 = *(v229 + 13);
                  if (v232 == *(v226 + 13) && !memcmp(v229 + 7, v226 + 7, *(v229 + 12)) && !memcmp(v229 + v231 + 56, v226 + v231 + 56, v232))
                  {
                    break;
                  }
                }
              }

              v229 = *v229;
              if (!v229)
              {
                goto LABEL_414;
              }
            }

            v212 = &v298[v299];
          }

          else
          {
LABEL_414:
            v233 = *(v28 + 216);
            v212 = &v298[v299];
            if (!v233)
            {
              goto LABEL_475;
            }

            v234 = 228;
            if (!*(v28 + 232))
            {
              v234 = 224;
            }

            v235 = v233 + 8 * *(v28 + v234);
            *(v235 + 4) = v230;
            v236 = v233 - 8;
            do
            {
              v237 = *(v236 + 12);
              v236 += 8;
            }

            while (v237 != v230);
            if (v236 < v235)
            {
LABEL_475:
              if (qenc_has_or_can_evict_at_least(v28, (*(v226 + 12) + *(v226 + 13) + 32)))
              {
                v227 = v226;
              }
            }
          }

          v220 = v228;
        }

        v226 = v226[2];
      }

      while (v226);
      if (!v227)
      {
LABEL_438:
        v213 = v220;
LABEL_439:
        v167 = v314;
        goto LABEL_441;
      }

      v238 = *(v28 + 200);
      if (v238)
      {
        fwrite("qenc: debug: ", 0xDuLL, 1uLL, v238);
        fwrite("dup draining", 0xCuLL, 1uLL, *(v28 + 200));
        fputc(10, *(v28 + 200));
      }

      *v312 = 0;
      if (v310 <= 0)
      {
        goto LABEL_454;
      }

      v239 = (*v28 - v227[6]);
      if (v239 > 0x1E)
      {
        v220 = v228;
        *v312 = 31;
        v242 = v312 + 1;
        v243 = v239 - 31;
        if (v239 - 31 < 0x80)
        {
          LOBYTE(v239) = v239 - 31;
          v245 = v312;
        }

        else
        {
          do
          {
            if (v242 >= v212)
            {
              goto LABEL_438;
            }

            *v242++ = v243 | 0x80;
            v239 = v243 >> 7;
            v244 = v243 >> 14;
            v243 >>= 7;
          }

          while (v244);
          v245 = v242 - 1;
        }

        if (v242 >= v212)
        {
          goto LABEL_438;
        }

        v240 = v299;
        v241 = v245 + 2;
        *v242 = v239;
        if (v245 + 2 <= v312)
        {
          goto LABEL_438;
        }
      }

      else
      {
        v240 = v299;
        *v312 = *v28 - *(v227 + 24);
        v241 = v312 + 1;
      }

      if (!lsqpack_enc_push_entry(v28, v227[11], v227[10], v227 + 14, v227[12], v227 + v227[12] + 56, v227[13]))
      {
        v213 = v228;
        goto LABEL_439;
      }

      v167 = v314;
      if (v241 == v312)
      {
        break;
      }

      qenc_remove_overflow_entries(v28);
      v220 = (v241 - v312) + v228;
      if (v240 == v220)
      {
        v213 = v240;
        goto LABEL_441;
      }
    }

    v213 = v228;
  }

LABEL_441:
  v246 = v283 + *(v28 + 192);
  v247 = *(v28 + 196) + v213 + v167;
  *(v28 + 192) = v246;
  *(v28 + 196) = v247;
  if (v247 >= 0x80000001)
  {
    *(v28 + 192) = ((v246 / v247) * 1000.0);
    *(v28 + 196) = 1000;
    v248 = *(v28 + 200);
    if (v248)
    {
      v249 = v213;
      fwrite("qenc: debug: ", 0xDuLL, 1uLL, v248);
      v250 = *(v28 + 200);
      v251 = *(v28 + 192);
      if (v251)
      {
        v252 = *(v28 + 196) / v251;
        if (v250)
        {
          fwrite("qenc: debug: ", 0xDuLL, 1uLL, *(v28 + 200));
          fprintf(*(v28 + 200), "bytes out: %u; bytes in: %u, ratio: %.3f", *(v28 + 196), *(v28 + 192), v252);
          fputc(10, *(v28 + 200));
        }
      }

      else
      {
        v252 = 0.0;
      }

      fprintf(v250, "reset bytes in/out counters, ratio: %.3f", v252);
      fputc(10, *(v28 + 200));
      v213 = v249;
      v167 = v314;
    }
  }

  *(*(*v291 + 8) + 24) += v167;
  *(*(*v286 + 8) + 24) += v213;
}

uint64_t XXH_INLINE_XXH32(int *a1, unint64_t a2, int a3)
{
  if (!a1)
  {
    v12 = a3 + 374761393;
    goto LABEL_12;
  }

  if (a2 < 0x10)
  {
    v12 = a3 + 374761393 + a2;
    if (a2 < 4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = a3 + 606290984;
  v4 = a3 - 2048144777;
  v5 = a3 + 1640531535;
  v6 = a1 + a2 - 15;
  do
  {
    HIDWORD(v7) = v3 - 2048144777 * *a1;
    LODWORD(v7) = HIDWORD(v7);
    v3 = -1640531535 * (v7 >> 19);
    HIDWORD(v7) = v4 - 2048144777 * a1[1];
    LODWORD(v7) = HIDWORD(v7);
    v4 = -1640531535 * (v7 >> 19);
    HIDWORD(v7) = a3 - 2048144777 * a1[2];
    LODWORD(v7) = HIDWORD(v7);
    a3 = -1640531535 * (v7 >> 19);
    HIDWORD(v7) = v5 - 2048144777 * a1[3];
    LODWORD(v7) = HIDWORD(v7);
    v5 = -1640531535 * (v7 >> 19);
    a1 += 4;
  }

  while (a1 < v6);
  HIDWORD(v9) = v3;
  LODWORD(v9) = v3;
  v8 = v9 >> 31;
  HIDWORD(v9) = v4;
  LODWORD(v9) = v4;
  v10 = v9 >> 25;
  HIDWORD(v9) = a3;
  LODWORD(v9) = a3;
  v11 = v9 >> 20;
  HIDWORD(v9) = v5;
  LODWORD(v9) = v5;
  v12 = v8 + a2 + v10 + v11 + (v9 >> 14);
  a2 &= 0xFu;
  if (a2 >= 4)
  {
    do
    {
LABEL_9:
      v13 = *a1++;
      HIDWORD(v14) = v12 - 1028477379 * v13;
      LODWORD(v14) = HIDWORD(v14);
      v12 = 668265263 * (v14 >> 15);
      a2 -= 4;
    }

    while (a2 > 3);
  }

LABEL_10:
  while (a2)
  {
    v15 = *a1;
    a1 = (a1 + 1);
    HIDWORD(v16) = v12 + 374761393 * v15;
    LODWORD(v16) = HIDWORD(v16);
    v12 = -1640531535 * (v16 >> 21);
    --a2;
  }

LABEL_12:
  v17 = -1028477379 * ((-2048144777 * (v12 ^ (v12 >> 15))) ^ ((-2048144777 * (v12 ^ (v12 >> 15))) >> 13));
  return v17 ^ HIWORD(v17);
}

uint64_t sub_181DBD0CC(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);

  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(v4 + 56);
  v6 = *(v4 + 64);
  _Block_copy(v3);

  sub_181DB9468(v5, v6, v3);

  _Block_release(v3);
}

void qenc_remove_overflow_entries(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = v3;
  if (v2 > v3)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *v5;
      if (!*v5)
      {
        __assert_rtn("qenc_drop_oldest_entry", "lsqpack.c", 886, "entry");
      }

      v8 = *(a1 + 200);
      v9 = *v5;
      if (v8)
      {
        fwrite("qenc: debug: ", 0xDuLL, 1uLL, v8);
        fputc(10, *(a1 + 200));
        v9 = *(a1 + 56);
      }

      v10 = *(v9 + 16);
      *v5 = v10;
      if (!v10)
      {
        *(a1 + 64) = v5;
      }

      v11 = -1 << *(a1 + 52);
      v12 = *(a1 + 72);
      v13 = v12 + 32 * (*(v7 + 40) & ~v11);
      v16 = *(v13 + 16);
      v14 = (v13 + 16);
      v15 = v16;
      if (v7 != v16)
      {
        __assert_rtn("qenc_drop_oldest_entry", "lsqpack.c", 893, "entry == STAILQ_FIRST(&enc->qpe_buckets[buckno].by_nameval)");
      }

      v17 = *v15;
      *v14 = v17;
      if (!v17)
      {
        v14[1] = v14;
      }

      v18 = (v12 + 32 * (*(v7 + 44) & ~v11));
      if (v7 != *v18)
      {
        __assert_rtn("qenc_drop_oldest_entry", "lsqpack.c", 896, "entry == STAILQ_FIRST(&enc->qpe_buckets[buckno].by_name)");
      }

      v19 = *(*v18 + 8);
      *v18 = v19;
      if (!v19)
      {
        v18[1] = v18;
      }

      v6 = *(v7 + 48) + *(v7 + 52) + 32;
      *(a1 + 32) += v6;
      *(a1 + 16) -= v6;
      --*(a1 + 48);
      free(v7);
      v4 = *(a1 + 20);
    }

    while (*(a1 + 16) > v4);
  }

  v20 = *(a1 + 200);
  if (v4)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v22 = *(a1 + 12);
    fwrite("qenc: debug: ", 0xDuLL, 1uLL, v20);
    if ((v22 & 2) != 0)
    {
      if (!*(a1 + 20))
      {
        __assert_rtn("qenc_effective_fill", "lsqpack.c", 912, "enc->qpe_cur_max_capacity");
      }

      v23 = *(a1 + 56);
      v34 = *(a1 + 200);
      if (v23)
      {
        v24 = *(v23 + 16);
        if (v24)
        {
          v25 = 0;
          do
          {
            v26 = v23;
            v23 = v24;
            v27 = v26[12];
            v28 = v24;
            while (1)
            {
              if (*(v28 + 48) == v27)
              {
                v29 = *(v28 + 52);
                if (v29 == v26[13] && !memcmp((v28 + 56), v26 + 14, (v29 + v27)))
                {
                  break;
                }
              }

              v28 = *(v28 + 16);
              if (!v28)
              {
                goto LABEL_25;
              }
            }

            v25 += v27 + v29 + 32;
LABEL_25:
            v24 = *(v23 + 16);
          }

          while (v24);
        }
      }

      fprintf(v34, "fill: %.2f; effective fill: %.2f");
    }

    else
    {
      fprintf(*(a1 + 200), "fill: %.2f");
    }

    fputc(10, *(a1 + 200));
  }

  if (v2 > v3 && *(a1 + 216))
  {
    v30 = *(a1 + 208);
    v31 = *(a1 + 48);
    if (v30 != 0.0)
    {
      v31 = v30 + (v31 - v30) * 0.4;
    }

    *(a1 + 208) = v31;
    v32 = *(a1 + 200);
    if (v32)
    {
      fwrite("qenc: debug: ", 0xDuLL, 1uLL, v32);
      fprintf(*(a1 + 200), "table size actual: %u; exponential moving average: %.3f", *(a1 + 48), *(a1 + 208));
      v33 = *(a1 + 200);

      fputc(10, v33);
    }
  }
}

unint64_t lsqpack_enc_enc_str(char a1, _BYTE *a2, unint64_t a3, unsigned __int8 *__src, size_t __n)
{
  v6 = &__src[__n];
  if (__n)
  {
    v7 = __src + 1;
    if (v6 <= __src + 1)
    {
      v8 = (__src + 1);
    }

    else
    {
      v8 = &__src[__n];
    }

    v9 = v8 - __src;
    if ((v8 - __src) >= 2)
    {
      v12 = 0;
      v13 = 0;
      v14 = v9 & 0xFFFFFFFFFFFFFFFELL;
      v15 = v9 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v16 = *(v7 - 1);
        v17 = *v7;
        v7 += 2;
        v12 += encode_table[2 * v16 + 1];
        v13 += encode_table[2 * v17 + 1];
        v15 -= 2;
      }

      while (v15);
      v10 = v13 + v12;
      if (v9 == v14)
      {
        goto LABEL_13;
      }

      v11 = &__src[v14];
    }

    else
    {
      v10 = 0;
      v11 = __src;
    }

    do
    {
      v18 = *v11++;
      v10 += encode_table[2 * v18 + 1];
    }

    while (v11 < v6);
  }

  else
  {
    v10 = 0;
  }

LABEL_13:
  LODWORD(v19) = v10 >> 3;
  if ((v10 & 7) != 0)
  {
    v19 = (v19 + 1);
  }

  else
  {
    v19 = v19;
  }

  if (v19 < __n)
  {
    v20 = ~(-1 << a1);
    if (v20 > v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    v22 = vdupq_n_s64(-1 << a1);
    v23 = vdup_n_s32(v19);
    v24.i64[0] = v23.u32[0];
    v24.i64[1] = v23.u32[1];
    v25 = vandq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v24, vsubq_s64(xmmword_182B08E10, v22)), vcgeq_u64(v24, vsubq_s64(xmmword_182B08E20, v22))), vuzp1q_s32(vcgeq_u64(v24, vsubq_s64(xmmword_182B08E30, v22)), vcgeq_u64(v24, vsubq_s64(xmmword_182B08E40, v22)))), xmmword_182B08E50);
    v25.i32[0] = vaddvq_s16(v25);
    v26 = vcnt_s8(*v25.i8);
    v26.i16[0] = vaddlv_u8(v26);
    result = (v21 + v26.i32[0] + v19);
    if (result <= a3)
    {
      v28 = *a2 & (-2 << a1) | (1 << a1);
      if (v20 <= v19)
      {
        v37 = -1 << a1;
        v38 = ~v37;
        *a2 = v28 | ~v37;
        v39 = a2 + 1;
        v40 = v19 - v38;
        if (v19 - v38 < 0x80)
        {
          LOBYTE(v19) = v19 - v38;
        }

        else
        {
          do
          {
            *v39++ = v40 | 0x80;
            v19 = v40 >> 7;
            v41 = v40 >> 14;
            v40 >>= 7;
          }

          while (v41);
        }

        *v39 = v19;
      }

      else
      {
        *a2 = v28 | v19;
      }

      v47 = &a2[v21 + v26.i32[0]];
      if (__n < 0xF)
      {
        v49 = 0;
        v48 = 0;
        if (__src != v6)
        {
          do
          {
LABEL_47:
            v62 = v49;
            while (1)
            {
              v63 = *__src++;
              v64 = &encode_table[2 * v63];
              v49 = *v64;
              v65 = v64[1];
              v66 = v65 + v48;
              if (v65 + v48 > 0x3F)
              {
                break;
              }

              v62 = (v62 << v65) | v49;
              v48 += v65;
              if (__src == v6)
              {
                v68 = v47;
                v49 = v62;
                v48 = v66;
                goto LABEL_52;
              }
            }

            v67 = v62 << -v48;
            v48 = v65 - (64 - v48);
            *v47 = HIBYTE(v67);
            v47[1] = BYTE6(v67);
            v47[2] = BYTE5(v67);
            v47[3] = BYTE4(v67);
            LODWORD(v67) = v67 | (v49 >> v48);
            v47[4] = BYTE3(v67);
            v47[5] = BYTE2(v67);
            v47[6] = BYTE1(v67);
            v68 = v47 + 8;
            v47[7] = v67;
            v47 += 8;
          }

          while (__src != v6);
LABEL_52:
          if (!v48)
          {
            goto LABEL_79;
          }

          goto LABEL_56;
        }
      }

      else
      {
        v48 = 0;
        v49 = 0;
        v50 = &a2[v21 + v26.i32[0]];
        while (1)
        {
          v52 = __src + 2;
          v51 = *__src;
          v53 = hencs[2 * v51];
          v54 = v53 + v48;
          if (v53 + v48 > 0x3F)
          {
            v58 = __src;
          }

          else
          {
            do
            {
              v48 = v54;
              v55 = v49 << v53;
              v56 = hencs[2 * v51 + 1];
              v57 = *v52;
              v52 += 2;
              v51 = v57;
              v49 = v55 | v56;
              v53 = hencs[2 * v57];
              v54 += v53;
            }

            while (v54 < 0x40);
            v58 = (v52 - 2);
          }

          __src = v52;
          if (v53 > 0x3F)
          {
            break;
          }

          v59 = 64 - v48;
          v60 = v49 << -v48;
          v49 = hencs[2 * v51 + 1];
          v48 = v53 - (64 - v48);
          *v50 = HIBYTE(v60);
          v50[1] = BYTE6(v60);
          v50[2] = BYTE5(v60);
          v50[3] = BYTE4(v60);
          v61 = v60 | (v49 >> (v53 - v59));
          v50[4] = HIBYTE(v61);
          v50[5] = BYTE2(v61);
          v50[6] = BYTE1(v61);
          v47 = v50 + 8;
          v50[7] = v61;
          v50 += 8;
          if (__src + 14 >= v6)
          {
            if (__src == v6)
            {
              goto LABEL_55;
            }

            goto LABEL_47;
          }
        }

        v47 = v50;
        __src = v58;
        if (v58 != v6)
        {
          goto LABEL_47;
        }
      }

LABEL_55:
      v68 = v47;
      if (!v48)
      {
        goto LABEL_79;
      }

LABEL_56:
      v69 = v48 + 7;
      v70 = ((v48 + 7) & 0xF8) - v48;
      v71 = v49 << v70;
      v72 = (v49 << v70) | ~(-1 << v70);
      v73 = v69 >> 3;
      if (v73 <= 4)
      {
        if (v73 == 2)
        {
LABEL_77:
          *v68++ = BYTE1(v72);
          goto LABEL_78;
        }

        if (v73 == 3)
        {
LABEL_76:
          *v68++ = BYTE2(v72);
          goto LABEL_77;
        }

        if (v73 != 4)
        {
          goto LABEL_78;
        }

LABEL_75:
        *v68++ = HIBYTE(v72);
        goto LABEL_76;
      }

      if (v73 > 6)
      {
        if (v73 != 7)
        {
          if (v73 != 8)
          {
LABEL_78:
            *v68 = v72;
            LODWORD(v68) = v68 + 1;
LABEL_79:
            if (result != v68 - a2)
            {
              __assert_rtn("lsqpack_enc_enc_str", "lsqpack.c", 857, "(unsigned) (p - dst) == len_size + enc_size_bytes");
            }

            return result;
          }

          *v68++ = HIBYTE(v71);
        }

        *v68++ = BYTE6(v71);
      }

      else if (v73 == 5)
      {
LABEL_74:
        *v68++ = BYTE4(v71);
        goto LABEL_75;
      }

      *v68++ = BYTE5(v71);
      goto LABEL_74;
    }

    return 0xFFFFFFFFLL;
  }

  v29 = ~(-1 << a1);
  v30 = vdupq_n_s64(-1 << a1);
  if (v29 > __n)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  v32 = vdupq_n_s64(__n);
  v33 = vandq_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v32, vsubq_s64(xmmword_182B08E10, v30)), vcgeq_u64(v32, vsubq_s64(xmmword_182B08E20, v30))), vuzp1q_s32(vcgeq_u64(v32, vsubq_s64(xmmword_182B08E30, v30)), vcgeq_u64(v32, vsubq_s64(xmmword_182B08E40, v30)))), xmmword_182B08E50);
  v33.i32[0] = vaddvq_s16(v33);
  *v33.i8 = vcnt_s8(*v33.i8);
  v33.i16[0] = vaddlv_u8(*v33.i8);
  v34 = v31 + v33.i32[0];
  v35 = (v34 + __n);
  if (v35 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v36 = *a2 & (-2 << a1);
  if (v29 <= __n)
  {
    v42 = -1 << a1;
    v43 = ~v42;
    *a2 = v36 | ~v42;
    v44 = a2 + 1;
    v45 = __n - v43;
    if (v45 < 0x80)
    {
      LOBYTE(v43) = __n - v43;
    }

    else
    {
      do
      {
        *v44++ = v45 | 0x80;
        v43 = v45 >> 7;
        v46 = v45 >> 14;
        v45 >>= 7;
      }

      while (v46);
    }

    *v44 = v43;
  }

  else
  {
    *a2 = v36 | __n;
  }

  memcpy(&a2[v34], __src, __n);
  return v35;
}

void nw_http_transaction_metadata_increment_outbound_header_size(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_transaction_metadata_increment_outbound_header_size";
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
        v22 = "nw_http_transaction_metadata_increment_outbound_header_size";
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
          v22 = "nw_http_transaction_metadata_increment_outbound_header_size";
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
        v22 = "nw_http_transaction_metadata_increment_outbound_header_size";
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
        v22 = "nw_http_transaction_metadata_increment_outbound_header_size";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_transaction_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __nw_http_transaction_metadata_increment_outbound_header_size_block_invoke;
    v17 = &__block_descriptor_40_e9_B16__0_v8l;
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
  v22 = "nw_http_transaction_metadata_increment_outbound_header_size";
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
      v22 = "nw_http_transaction_metadata_increment_outbound_header_size";
      v9 = "%{public}s metadata must be http_transaction";
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
      v22 = "nw_http_transaction_metadata_increment_outbound_header_size";
      v9 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
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
      v22 = "nw_http_transaction_metadata_increment_outbound_header_size";
      v9 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_transaction_metadata_increment_outbound_header_size";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_38;
  }

LABEL_7:
}

void nw_masque_mark_connected(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_mark_connected";
    v22 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v22, type, &v28))
    {
      goto LABEL_73;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type[0];
      if (!os_log_type_enabled(v23, type[0]))
      {
        goto LABEL_73;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_mark_connected";
      v25 = "%{public}s called with null masque";
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type[0];
      v27 = os_log_type_enabled(v23, type[0]);
      if (backtrace_string)
      {
        if (v27)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_mark_connected";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_73;
      }

      if (!v27)
      {
LABEL_73:
        if (v22)
        {
          free(v22);
        }

        return;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_mark_connected";
      v25 = "%{public}s called with null masque, no backtrace";
    }

    else
    {
      v23 = __nwlog_obj();
      v24 = type[0];
      if (!os_log_type_enabled(v23, type[0]))
      {
        goto LABEL_73;
      }

      *buf = 136446210;
      *&buf[4] = "nw_masque_mark_connected";
      v25 = "%{public}s called with null masque, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
    goto LABEL_73;
  }

  v2 = *(a1 + 484);
  v3 = a1 + 503;
  v4 = *(a1 + 503);
  if (v2 == 5)
  {
    if ((v4 & 0x10000) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v6 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = a1 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s%sAlready in the disconnected state", buf, 0x16u);
      }
    }
  }

  else
  {
    if (v2 == 4)
    {
      if ((v4 & 0x10000) == 0 && gLogDatapath == 1)
      {
        if (__nwlog_privacy_proxy_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
        }

        v5 = gprivacy_proxyLogObj;
        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_masque_mark_connected";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 507;
          *&buf[22] = 2080;
          v32 = " ";
          _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAlready in the connected state", buf, 0x20u);
        }
      }

      return;
    }

    if ((v4 & 0x20) != 0 && (!*(a1 + 344) || !*(a1 + 352) || !*(a1 + 360)))
    {
      if ((v4 & 0x10000) != 0)
      {
        goto LABEL_57;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v19 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_57;
      }

      *buf = 136446466;
      *&buf[4] = a1 + 507;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v20 = "%{public}s%sCONNECT-IP waiting for addresses, not marking ready yet";
LABEL_56:
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_INFO, v20, buf, 0x16u);
LABEL_57:
      *(a1 + 484) = 3;
      return;
    }

    if ((v4 & 8) != 0 && (v4 & 0x200) == 0)
    {
      v21 = *(a1 + 432);
      if (v21)
      {
        if (nw_masque_send_demux_options(a1, v21, 1))
        {
          *v3 |= 0x200u;
        }

        goto LABEL_57;
      }
    }

    if ((v4 & 0x100000) != 0 && ((v4 & 0x8000080) == 0x8000000 || (v4 & 0x4000100) == 0x4000000))
    {
      if ((v4 & 0x10000) != 0)
      {
        goto LABEL_57;
      }

      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v19 = gprivacy_proxyLogObj;
      if (!os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        goto LABEL_57;
      }

      *buf = 136446466;
      *&buf[4] = a1 + 507;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v20 = "%{public}s%swaiting for ACK capsules, not marking ready yet";
      goto LABEL_56;
    }

    *(a1 + 484) = 4;
    if ((v4 & 0x10000) == 0)
    {
      if (__nwlog_privacy_proxy_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
      }

      v7 = gprivacy_proxyLogObj;
      if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        *&buf[4] = a1 + 507;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s%smarking connected", buf, 0x16u);
      }
    }

    if ((*(v3 + 2) & 0x40) != 0)
    {
      v8 = *(a1 + 240);
      if (v8)
      {
        *(v8 + 24) = type;
        v9 = *(a1 + 248);
        *type = v8;
        v30 = v9;
        *(a1 + 240) = 0;
        *(a1 + 248) = a1 + 240;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
        v32 = &__block_descriptor_tmp_21_49595;
        v33 = 0;
        do
        {
          v10 = *type;
          if (!*type)
          {
            break;
          }

          v11 = *(*type + 16);
          v12 = *(*type + 24);
          v13 = (v11 + 24);
          if (!v11)
          {
            v13 = &v30;
          }

          *v13 = v12;
          *v12 = v11;
          *(v10 + 16) = 0;
          *(v10 + 24) = 0;
        }

        while (((*&buf[16])(buf) & 1) != 0);
      }
    }

    v14 = *(a1 - 48);
    if (v14)
    {
      v15 = *(v14 + 24);
      if (v15)
      {
        v16 = *(v15 + 40);
        if (!v16 || (v16(), (v17 = *(a1 - 48)) != 0) && (v15 = *(v17 + 24)) != 0)
        {
          v18 = *(v15 + 72);
          if (v18)
          {
            v18();
          }
        }
      }
    }
  }
}

void *nw_protocol_masque_copy_info(unint64_t *a1, int a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_protocol_masque_copy_info";
    v38 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v38, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v40 = type;
        if (os_log_type_enabled(v39, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_masque_copy_info";
          v41 = "%{public}s called with null protocol";
LABEL_92:
          _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0xCu);
        }
      }

      else if (v44 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        v40 = type;
        v43 = os_log_type_enabled(v39, type);
        if (backtrace_string)
        {
          if (v43)
          {
            *buf = 136446466;
            v47 = "nw_protocol_masque_copy_info";
            v48 = 2082;
            v49 = backtrace_string;
            _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_93;
        }

        if (v43)
        {
          *buf = 136446210;
          v47 = "nw_protocol_masque_copy_info";
          v41 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_92;
        }
      }

      else
      {
        v39 = __nwlog_obj();
        v40 = type;
        if (os_log_type_enabled(v39, type))
        {
          *buf = 136446210;
          v47 = "nw_protocol_masque_copy_info";
          v41 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_92;
        }
      }
    }

LABEL_93:
    if (v38)
    {
      free(v38);
    }

    return 0;
  }

  v2 = a1;
  v3 = a1[5];
  v4 = a1;
  if (v3 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (v3 != &nw_protocol_ref_counted_additional_handle)
  {
    v5 = 1;
    goto LABEL_11;
  }

  v4 = a1[8];
  if (v4)
  {
LABEL_6:
    v6 = v4[11];
    v5 = 0;
    if (v6)
    {
      v4[11] = v6 + 1;
    }
  }

  else
  {
    v5 = 1;
  }

  v3 = a1[5];
LABEL_11:
  v7 = a1;
  if (v3 != &nw_protocol_ref_counted_handle)
  {
    if (v3 != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v47 = "nw_protocol_masque_copy_info";
      v8 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v44 = 0;
      if (!__nwlog_fault(v8, &type, &v44))
      {
        goto LABEL_52;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_52;
        }

        *buf = 136446210;
        v47 = "nw_protocol_masque_copy_info";
        v11 = "%{public}s called with null masque";
      }

      else
      {
        if (v44 == 1)
        {
          v24 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          v26 = type;
          v27 = os_log_type_enabled(gLogObj, type);
          if (v24)
          {
            if (v27)
            {
              *buf = 136446466;
              v47 = "nw_protocol_masque_copy_info";
              v48 = 2082;
              v49 = v24;
              _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v24);
            goto LABEL_52;
          }

          if (!v27)
          {
LABEL_52:
            if (v8)
            {
              free(v8);
            }

            goto LABEL_54;
          }

          *buf = 136446210;
          v47 = "nw_protocol_masque_copy_info";
          v11 = "%{public}s called with null masque, no backtrace";
          v28 = v25;
          v29 = v26;
LABEL_51:
          _os_log_impl(&dword_181A37000, v28, v29, v11, buf, 0xCu);
          goto LABEL_52;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_52;
        }

        *buf = 136446210;
        v47 = "nw_protocol_masque_copy_info";
        v11 = "%{public}s called with null masque, backtrace limit exceeded";
      }

      v28 = v9;
      v29 = v10;
      goto LABEL_51;
    }

    v7 = a1[8];
  }

  if (a2 != 254)
  {
    if (a2 == 255)
    {
      if (!v7[68] && !v7[69])
      {
LABEL_54:
        result = 0;
        goto LABEL_55;
      }

      result = _nw_array_create();
      v13 = v7[69];
      if (v13)
      {
        if (!result)
        {
          goto LABEL_55;
        }

        v14 = result;
        _nw_array_append(result, v13);
        result = v14;
      }

      v15 = v7[68];
      if (!v15 || !result)
      {
LABEL_55:
        if (v5)
        {
          return result;
        }

        goto LABEL_56;
      }

      v16 = result;
      _nw_array_append(result, v15);
      result = v16;
      if (v5)
      {
        return result;
      }

LABEL_56:
      v30 = v2[5];
      if (v30 == &nw_protocol_ref_counted_handle || v30 == &nw_protocol_ref_counted_additional_handle && (v2 = v2[8]) != 0)
      {
        v31 = v2[11];
        if (v31)
        {
          v32 = v31 - 1;
          v2[11] = v32;
          if (!v32)
          {
            v33 = result;
            v34 = v2[8];
            if (v34)
            {
              v2[8] = 0;
              v34[2](v34);
              _Block_release(v34);
            }

            if (v2[9])
            {
              v35 = v2[8];
              if (v35)
              {
                _Block_release(v35);
              }
            }

            free(v2);
            return v33;
          }
        }
      }

      return result;
    }

LABEL_39:
    result = a1[4];
    if (!result)
    {
      goto LABEL_55;
    }

    v23 = *(result[3] + 224);
    if (!v23)
    {
      goto LABEL_54;
    }

    result = v23();
    if (v5)
    {
      return result;
    }

    goto LABEL_56;
  }

  if (!v7[47])
  {
    goto LABEL_39;
  }

  v17 = a1[4];
  if (!v17 || (v18 = *(*(v17 + 24) + 224)) == 0 || (v19 = v18()) == 0)
  {
    v19 = _nw_array_create();
  }

  v20 = v19;
  if (nw_protocol_masque_get_definition(void)::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_masque_get_definition(void)::onceToken, &__block_literal_global_27637);
  }

  if (nw_protocol_masque_get_definition(void)::definition && (v21 = os_retain(nw_protocol_masque_get_definition(void)::definition)) != 0)
  {
    v22 = os_retain(v21);
  }

  else
  {
    v22 = 0;
  }

  v36 = nw_protocol_establishment_report_create(v22, v7[47], v7[47]);
  v37 = v36;
  if (v20 && v36)
  {
    _nw_array_append(v20, v36);
  }

  else if (!v36)
  {
    goto LABEL_73;
  }

  os_release(v37);
LABEL_73:
  if (v22)
  {
    os_release(v22);
  }

  result = v20;
  if ((v5 & 1) == 0)
  {
    goto LABEL_56;
  }

  return result;
}

void nw_flow_protocol_release(void *a1)
{
  nw_endpoint_flow_cleanup_protocol(0, a1, 1);
  v2 = a1[23];
  a1[23] = 0;

  free(a1);
}

uint64_t __nw_flow_replay_select_output_handler_block_invoke(void *a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  if (object == a1[5])
  {
    *(*(a1[4] + 8) + 24) = 1;
  }

  else
  {
    v5 = object;
    nw_hash_table_remove_node(*(a1[6] + 288), a2);
    if (v5)
    {
      v6 = *(v5 + 24);
      if (v6)
      {
        v7 = *(v6 + 8);
        if (v7)
        {
          v7(v5, a1[6] + 96, 1);
        }
      }
    }
  }

  return 1;
}

BOOL ___ZL32nw_endpoint_proxy_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(*(a1 + 32) + 24);
  if (v7 > a2 && *(a1 + 40) != v5)
  {
    nw_endpoint_handler_cancel(v5, 0, 0);
  }

  return v7 > a2;
}

void ___ZL41nw_connection_endpoint_report_on_nw_queuePU33objcproto22OS_nw_endpoint_handler8NSObject26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_errorS_PU23objcproto12OS_nw_objectS__block_invoke_223(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 504) = nw_endpoint_handler_get_proxy_privacy_stance(v3);
}

uint64_t nw_protocol_implementation_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v193 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v7 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v8 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_remove_input_handler";
        v9 = _os_log_send_and_compose_impl();

        LOBYTE(v186) = 16;
        LOBYTE(v184) = 0;
        if (__nwlog_fault(v9, &v186, &v184))
        {
          if (v186 == 17)
          {
            v10 = __nwlog_obj();
            v11 = v186;
            if (os_log_type_enabled(v10, v186))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_remove_input_handler";
              _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v184 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v10 = __nwlog_obj();
            v45 = v186;
            v46 = os_log_type_enabled(v10, v186);
            if (backtrace_string)
            {
              if (v46)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_implementation_remove_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = backtrace_string;
                _os_log_impl(&dword_181A37000, v10, v45, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v9)
              {
                goto LABEL_97;
              }

              goto LABEL_96;
            }

            if (v46)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_remove_input_handler";
              _os_log_impl(&dword_181A37000, v10, v45, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v10 = __nwlog_obj();
            v47 = v186;
            if (os_log_type_enabled(v10, v186))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_remove_input_handler";
              _os_log_impl(&dword_181A37000, v10, v47, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v9)
        {
LABEL_97:
          v12 = 0;
          goto LABEL_343;
        }

LABEL_96:
        free(v9);
        goto LABEL_97;
      }

      v7 = *a1[1].flow_id;
    }

    v12 = &v7[1].output_handler;
    v13 = v7[1].handle;
    if (v13)
    {
      if (*(v13 + 10))
      {
        if (a2)
        {
          output_handler = a2->output_handler;
          if (output_handler == a1)
          {
            v15 = output_handler->handle;
            if (v15 == &nw_protocol_ref_counted_handle || v15 == &nw_protocol_ref_counted_additional_handle && (output_handler = *output_handler[1].flow_id) != 0)
            {
              callbacks = output_handler[1].callbacks;
              if (callbacks)
              {
                v17 = (callbacks - 1);
                output_handler[1].callbacks = v17;
                if (!v17)
                {
                  v18 = *output_handler[1].flow_id;
                  if (v18)
                  {
                    *output_handler[1].flow_id = 0;
                    v18[2](v18);
                    _Block_release(v18);
                  }

                  if (output_handler[1].flow_id[8])
                  {
                    v19 = *output_handler[1].flow_id;
                    if (v19)
                    {
                      _Block_release(v19);
                    }
                  }

                  free(output_handler);
                }
              }
            }

            a2->output_handler = 0;
            v13 = v7[1].handle;
          }

          if (v13[16] == 3)
          {
            output_handler_context = a2->output_handler_context;
            if (output_handler_context)
            {
              if ((SBYTE5(v7[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
              {
                v91 = __nwlog_obj();
                if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_implementation_remove_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v7 + 511;
                  *&buf[22] = 2080;
                  v189 = " ";
                  *v190 = 2048;
                  *&v190[2] = nw_protocol_flow_for_protocol(v12, a2);
                  _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRemove input handler for flow %llx", buf, 0x2Au);
                }
              }

              if (output_handler_context == v7[7].output_handler)
              {
                v7[7].output_handler = 0;
              }

              if (gLogDatapath == 1)
              {
                v90 = __nwlog_obj();
                if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_finalize_temp_frame_array";
                  _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
                }
              }

              default_input_handler = output_handler_context->default_input_handler;
              if (default_input_handler)
              {
                default_input_handler->handle = &v186;
                v22 = output_handler_context->output_handler_context;
                v186 = default_input_handler;
                v187 = v22;
                output_handler_context->default_input_handler = 0;
                output_handler_context->output_handler_context = &output_handler_context->default_input_handler;
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 0x40000000;
                *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
                v189 = &__block_descriptor_tmp_21_49595;
                v190[0] = 0;
                do
                {
                  v23 = v186;
                  if (!v186)
                  {
                    break;
                  }

                  v24 = v186->output_handler;
                  v25 = v186->handle;
                  p_handle = &v24->handle;
                  if (!v24)
                  {
                    p_handle = &v187;
                  }

                  *p_handle = v25;
                  *v25 = v24;
                  v23->output_handler = 0;
                  v23->handle = 0;
                }

                while (((*&buf[16])(buf) & 1) != 0);
              }

              v27 = output_handler_context->handle;
              output_handler_context->output_handler = 0;
              output_handler_context->handle = 0;

              v29 = nw_hash_table_remove_node(*&v7[5].flow_id[8], output_handler_context);
              v30 = *(*(v7[1].handle + 10) + 24);
              if (v30)
              {
                v30();
              }

              if (v29)
              {
                a2->output_handler_context = 0;
                v31 = nw_hash_table_count(*&v7[5].flow_id[8], v28);
                if (v31 && (v32 = v31, *buf = 0, *&buf[8] = buf, *&buf[16] = 0x2020000000, LOBYTE(v189) = 1, v33 = *&v7[5].flow_id[8], v181[0] = MEMORY[0x1E69E9820], v181[1] = 3221225472, v181[2] = ___ZL47nw_protocol_implementation_remove_input_handlerP11nw_protocolS0_b_block_invoke, v181[3] = &unk_1E6A2CE68, v181[4] = buf, nw_hash_table_apply(v33, v181), v34 = *(*&buf[8] + 24), _Block_object_dispose(buf, 8), (v34 & 1) == 0))
                {
                  if ((SBYTE5(v7[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
                  {
                    v166 = __nwlog_obj();
                    if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136447234;
                      *&buf[4] = "nw_protocol_implementation_remove_input_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = v7 + 511;
                      *&buf[22] = 2080;
                      v189 = " ";
                      *v190 = 2048;
                      *&v190[2] = v12;
                      v191 = 1024;
                      LODWORD(v192) = v32;
                      _os_log_impl(&dword_181A37000, v166, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNot destroying instance %p, still have %u input handlers", buf, 0x30u);
                    }
                  }

                  if (a1->default_input_handler == a2)
                  {
                    v56 = *&v7[5].flow_id[8];
                    v176[0] = MEMORY[0x1E69E9820];
                    v176[1] = 3221225472;
                    v176[2] = ___ZL47nw_protocol_implementation_remove_input_handlerP11nw_protocolS0_b_block_invoke_269;
                    v176[3] = &unk_1E6A35D48;
                    v178 = a1;
                    v12 = v12;
                    v177 = v12;
                    nw_hash_table_apply(v56, v176);
                  }
                }

                else
                {
                  if ((SBYTE5(v7[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
                  {
                    v95 = __nwlog_obj();
                    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136446722;
                      *&buf[4] = "nw_protocol_implementation_remove_input_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = v7 + 511;
                      *&buf[22] = 2080;
                      v189 = " ";
                      _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNo more input handlers on multiplexing connections, scheduling destroy", buf, 0x20u);
                    }
                  }

                  v35 = a1->default_input_handler;
                  if (v35)
                  {
                    v36 = v35->handle;
                    if (v36 == &nw_protocol_ref_counted_handle || v36 == &nw_protocol_ref_counted_additional_handle && (v35 = *v35[1].flow_id) != 0)
                    {
                      v37 = v35[1].callbacks;
                      if (v37)
                      {
                        v38 = (v37 - 1);
                        v35[1].callbacks = v38;
                        if (!v38)
                        {
                          v39 = *v35[1].flow_id;
                          if (v39)
                          {
                            *v35[1].flow_id = 0;
                            v39[2](v39);
                            _Block_release(v39);
                          }

                          if (v35[1].flow_id[8])
                          {
                            v40 = *v35[1].flow_id;
                            if (v40)
                            {
                              _Block_release(v40);
                            }
                          }

                          free(v35);
                        }
                      }
                    }

                    a1->default_input_handler = 0;
                  }

                  if ((SBYTE5(v7[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
                  {
                    v96 = __nwlog_obj();
                    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
                    {
                      v97 = *v7[4].flow_id;
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_purge_frame_pool";
                      *&buf[12] = 2082;
                      *&buf[14] = v7 + 511;
                      *&buf[22] = 2080;
                      v189 = " ";
                      *v190 = 1024;
                      *&v190[2] = v97;
                      _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sPurging %u empty frames", buf, 0x26u);
                    }
                  }

                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&buf[16] = ___ZL28nw_protocol_purge_frame_poolP31NWConcrete_nw_protocol_instance_block_invoke;
                  v189 = &unk_1E6A3C100;
                  *v190 = v12;
                  v41 = *&v7[4].flow_id[8];
                  do
                  {
                    if (!v41)
                    {
                      break;
                    }

                    v42 = *(v41 + 16);
                    v43 = (*&buf[16])(buf);
                    v41 = v42;
                  }

                  while ((v43 & 1) != 0);
                  if ((BYTE4(v7[7].output_handler_context) & 8) != 0)
                  {
                    nw_protocol_implementation_destroy(v12);
                  }

                  else
                  {
                    if ((~BYTE2(v7[7].output_handler_context) & 0x18) == 0 && v7[1].output_handler_context || (BYTE5(v7[7].output_handler_context) & 8) != 0)
                    {
                      v58 = *v7[2].flow_id;
                      if (v58)
                      {
                        nw_queue_cancel_source(v58, v41);
                        *v7[2].flow_id = 0;
                      }

                      v59 = v7[3].callbacks;
                      v179[0] = MEMORY[0x1E69E9820];
                      v179[1] = 3221225472;
                      v179[2] = ___ZL47nw_protocol_implementation_remove_input_handlerP11nw_protocolS0_b_block_invoke_268;
                      v179[3] = &unk_1E6A3D868;
                      v60 = v12;
                      v180 = v60;
                      *v7[2].flow_id = nw_queue_context_create_source(v59, 2, 3, 0, v179, 0);
                      int64_with_default = networkd_settings_get_int64_with_default(nw_setting_multiplexing_teardown_delay, 10);
                      v62 = *v7[2].flow_id;
                      v63 = dispatch_time(0x8000000000000000, 1000000000 * int64_with_default);
                      nw_queue_set_timer_values(v62, v63, 0xFFFFFFFFFFFFFFFFLL, 1000000 * int64_with_default);
                      nw_queue_activate_source(*v7[2].flow_id, v64);
                      if ((SBYTE5(v7[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
                      {
                        v169 = __nwlog_obj();
                        if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 136447234;
                          *&buf[4] = "nw_protocol_implementation_remove_input_handler";
                          *&buf[12] = 2082;
                          *&buf[14] = v7 + 511;
                          *&buf[22] = 2080;
                          v189 = " ";
                          *v190 = 2048;
                          *&v190[2] = v60;
                          v191 = 2048;
                          v192 = int64_with_default;
                          _os_log_impl(&dword_181A37000, v169, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDestroying instance %p after delay of %lld seconds", buf, 0x34u);
                        }
                      }

                      v65 = 1;
                      v12 = v60;
                      goto LABEL_344;
                    }

                    if ((BYTE5(v7[7].output_handler_context) & 0x80) == 0 && gLogDatapath == 1)
                    {
                      v171 = __nwlog_obj();
                      if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 136446978;
                        *&buf[4] = "nw_protocol_implementation_remove_input_handler";
                        *&buf[12] = 2082;
                        *&buf[14] = v7 + 511;
                        *&buf[22] = 2080;
                        v189 = " ";
                        *v190 = 2048;
                        *&v190[2] = v12;
                        _os_log_impl(&dword_181A37000, v171, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDestroying instance %p immediately", buf, 0x2Au);
                      }
                    }

                    nw_protocol_implementation_teardown(v12);
                  }
                }

                goto LABEL_292;
              }

              if (SBYTE5(v7[7].output_handler_context) < 0)
              {
LABEL_343:
                v65 = 0;
                goto LABEL_344;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v48 = gLogObj;
              *buf = 136446978;
              *&buf[4] = "nw_protocol_implementation_remove_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = v7 + 511;
              *&buf[22] = 2080;
              v189 = " ";
              *v190 = 2048;
              *&v190[2] = a2;
              v49 = _os_log_send_and_compose_impl();

              LOBYTE(v186) = 16;
              LOBYTE(v184) = 0;
              if (!__nwlog_fault(v49, &v186, &v184))
              {
                goto LABEL_114;
              }

              if (v186 == 17)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v50 = gLogObj;
                v51 = v186;
                if (os_log_type_enabled(v50, v186))
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_implementation_remove_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v7 + 511;
                  *&buf[22] = 2080;
                  v189 = " ";
                  *v190 = 2048;
                  *&v190[2] = a2;
                  _os_log_impl(&dword_181A37000, v50, v51, "%{public}s %{public}s%sFailed to remove protocol node for protocol %p from table", buf, 0x2Au);
                }
              }

              else if (v184 == 1)
              {
                v52 = __nw_create_backtrace_string();
                if (v52)
                {
                  v53 = v52;
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v54 = gLogObj;
                  v55 = v186;
                  if (os_log_type_enabled(v54, v186))
                  {
                    *buf = 136447234;
                    *&buf[4] = "nw_protocol_implementation_remove_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = v7 + 511;
                    *&buf[22] = 2080;
                    v189 = " ";
                    *v190 = 2048;
                    *&v190[2] = a2;
                    v191 = 2082;
                    v192 = v53;
                    _os_log_impl(&dword_181A37000, v54, v55, "%{public}s %{public}s%sFailed to remove protocol node for protocol %p from table, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v53);
                  if (!v49)
                  {
                    goto LABEL_343;
                  }

                  goto LABEL_115;
                }

                v50 = __nwlog_obj();
                v66 = v186;
                if (os_log_type_enabled(v50, v186))
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_implementation_remove_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v7 + 511;
                  *&buf[22] = 2080;
                  v189 = " ";
                  *v190 = 2048;
                  *&v190[2] = a2;
                  _os_log_impl(&dword_181A37000, v50, v66, "%{public}s %{public}s%sFailed to remove protocol node for protocol %p from table, no backtrace", buf, 0x2Au);
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v50 = gLogObj;
                v57 = v186;
                if (os_log_type_enabled(v50, v186))
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_protocol_implementation_remove_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v7 + 511;
                  *&buf[22] = 2080;
                  v189 = " ";
                  *v190 = 2048;
                  *&v190[2] = a2;
                  _os_log_impl(&dword_181A37000, v50, v57, "%{public}s %{public}s%sFailed to remove protocol node for protocol %p from table, backtrace limit exceeded", buf, 0x2Au);
                }
              }

              goto LABEL_113;
            }

LABEL_339:
            if ((SBYTE5(v7[7].output_handler_context) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v167 = gLogObj;
              if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446978;
                *&buf[4] = "nw_protocol_implementation_remove_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v7 + 511;
                *&buf[22] = 2080;
                v189 = " ";
                *v190 = 2048;
                *&v190[2] = a2;
                _os_log_impl(&dword_181A37000, v167, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sOutput handler context doesn't exist on protocol %p", buf, 0x2Au);
              }
            }

            goto LABEL_343;
          }

          goto LABEL_203;
        }

        v75 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_output_handler";
        v76 = _os_log_send_and_compose_impl();

        LOBYTE(v186) = 16;
        LOBYTE(v184) = 0;
        if (__nwlog_fault(v76, &v186, &v184))
        {
          if (v186 == 17)
          {
            v77 = __nwlog_obj();
            v78 = v186;
            if (os_log_type_enabled(v77, v186))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_get_output_handler";
              _os_log_impl(&dword_181A37000, v77, v78, "%{public}s called with null protocol", buf, 0xCu);
            }

LABEL_194:

            goto LABEL_195;
          }

          if (v184 != 1)
          {
            v77 = __nwlog_obj();
            v94 = v186;
            if (os_log_type_enabled(v77, v186))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_get_output_handler";
              _os_log_impl(&dword_181A37000, v77, v94, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_194;
          }

          v87 = __nw_create_backtrace_string();
          v77 = __nwlog_obj();
          type = v186;
          v88 = os_log_type_enabled(v77, v186);
          if (!v87)
          {
            if (v88)
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_get_output_handler";
              _os_log_impl(&dword_181A37000, v77, type, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }

            goto LABEL_194;
          }

          if (v88)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_get_output_handler";
            *&buf[12] = 2082;
            *&buf[14] = v87;
            _os_log_impl(&dword_181A37000, v77, type, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v87);
        }

LABEL_195:
        if (v76)
        {
          free(v76);
        }

        if (*(v7[1].handle + 16) != 3)
        {
LABEL_203:
          if ((SBYTE5(v7[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
          {
            v147 = __nwlog_obj();
            if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              *&buf[4] = "nw_protocol_implementation_remove_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = v7 + 511;
              *&buf[22] = 2080;
              v189 = " ";
              _os_log_impl(&dword_181A37000, v147, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRemove input handler", buf, 0x20u);
            }
          }

          v102 = a1->default_input_handler;
          if (v102 != a2)
          {
            goto LABEL_343;
          }

          if (a2)
          {
            v103 = v102->handle;
            if (v103 == &nw_protocol_ref_counted_handle || v103 == &nw_protocol_ref_counted_additional_handle && (v102 = *v102[1].flow_id) != 0)
            {
              v104 = v102[1].callbacks;
              if (v104)
              {
                v105 = (v104 - 1);
                v102[1].callbacks = v105;
                if (!v105)
                {
                  v106 = *v102[1].flow_id;
                  if (v106)
                  {
                    *v102[1].flow_id = 0;
                    v106[2](v106);
                    _Block_release(v106);
                  }

                  if (v102[1].flow_id[8])
                  {
                    v107 = *v102[1].flow_id;
                    if (v107)
                    {
                      _Block_release(v107);
                    }
                  }

                  free(v102);
                }
              }
            }

            a1->default_input_handler = 0;
          }

          if (gLogDatapath == 1)
          {
            v157 = __nwlog_obj();
            if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_finalize_temp_frame_array";
              _os_log_impl(&dword_181A37000, v157, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
            }
          }

          v108 = v7[4].default_input_handler;
          if (v108)
          {
            v108->handle = &v186;
            v109 = v7[4].output_handler_context;
            v186 = v108;
            v187 = v109;
            v7[4].default_input_handler = 0;
            v7[4].output_handler_context = &v7[4].default_input_handler;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
            v189 = &__block_descriptor_tmp_21_49595;
            v190[0] = 0;
            do
            {
              v110 = v186;
              if (!v186)
              {
                break;
              }

              v111 = v186->output_handler;
              v112 = v186->handle;
              v113 = &v111->handle;
              if (!v111)
              {
                v113 = &v187;
              }

              *v113 = v112;
              *v112 = v111;
              v110->output_handler = 0;
              v110->handle = 0;
            }

            while (((*&buf[16])(buf) & 1) != 0);
          }

          if (gLogDatapath == 1)
          {
            v158 = __nwlog_obj();
            if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_finalize_temp_frame_array";
              _os_log_impl(&dword_181A37000, v158, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
            }
          }

          v114 = v7[4].callbacks;
          if (v114)
          {
            v114->connected = &v186;
            v115 = v7[4].output_handler;
            v186 = v114;
            v187 = v115;
            v7[4].callbacks = 0;
            v7[4].output_handler = (v7 + 280);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
            v189 = &__block_descriptor_tmp_21_49595;
            v190[0] = 0;
            do
            {
              v116 = v186;
              if (!v186)
              {
                break;
              }

              v117 = v186->output_handler;
              v118 = v186->handle;
              v119 = &v117->handle;
              if (!v117)
              {
                v119 = &v187;
              }

              *v119 = v118;
              *v118 = v117;
              v116->output_handler = 0;
              v116->handle = 0;
            }

            while (((*&buf[16])(buf) & 1) != 0);
          }

          v120 = a1->output_handler;
          if (!v120)
          {
            goto LABEL_290;
          }

          v121 = v120->handle;
          v122 = a1->output_handler;
          if (v121 == &nw_protocol_ref_counted_handle)
          {
            goto LABEL_238;
          }

          if (v121 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v122) = 0;
            v123 = 1;
            goto LABEL_241;
          }

          v122 = *v120[1].flow_id;
          if (v122)
          {
LABEL_238:
            v124 = v122[1].callbacks;
            v123 = 0;
            if (v124)
            {
              v122[1].callbacks = (&v124->add_input_handler + 1);
            }

            LOBYTE(v122) = -1;
          }

          else
          {
            v123 = 1;
          }

LABEL_241:
          v186 = v120;
          LOBYTE(v187) = v122;
          v125 = a1->handle;
          v126 = a1;
          if (v125 != &nw_protocol_ref_counted_handle)
          {
            if (v125 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v126) = 0;
              v127 = 1;
              goto LABEL_248;
            }

            v126 = *a1[1].flow_id;
            if (!v126)
            {
              v127 = 1;
              goto LABEL_248;
            }
          }

          v128 = v126[1].callbacks;
          v127 = 0;
          if (v128)
          {
            v126[1].callbacks = (&v128->add_input_handler + 1);
          }

          LOBYTE(v126) = -1;
LABEL_248:
          v184 = a1;
          v185 = v126;
          v129 = v120->callbacks;
          if (v129)
          {
            remove_input_handler = v129->remove_input_handler;
            if (remove_input_handler)
            {
              v131 = remove_input_handler(v120, a1);
              if (v127)
              {
                goto LABEL_252;
              }

              goto LABEL_251;
            }
          }

          v151 = v120;
          v152 = __nwlog_obj();
          name = v151->identifier->name;
          *buf = 136446722;
          *&buf[4] = "__nw_protocol_remove_input_handler";
          if (!name)
          {
            name = "invalid";
          }

          *&buf[12] = 2082;
          *&buf[14] = name;
          *&buf[22] = 2048;
          *typea = v151;
          v189 = v151;
          v175 = _os_log_send_and_compose_impl();

          v183 = OS_LOG_TYPE_ERROR;
          v182 = 0;
          if (__nwlog_fault(v175, &v183, &v182))
          {
            if (v183 == OS_LOG_TYPE_FAULT)
            {
              v154 = __nwlog_obj();
              v155 = v183;
              if (os_log_type_enabled(v154, v183))
              {
                v156 = *(*typea + 16);
                if (!v156)
                {
                  v156 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_remove_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v156;
                *&buf[22] = 2048;
                v189 = *typea;
                _os_log_impl(&dword_181A37000, v154, v155, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback", buf, 0x20u);
              }

LABEL_309:

              goto LABEL_354;
            }

            if (v182 != 1)
            {
              v154 = __nwlog_obj();
              v164 = v183;
              if (os_log_type_enabled(v154, v183))
              {
                v165 = *(*typea + 16);
                if (!v165)
                {
                  v165 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_remove_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v165;
                *&buf[22] = 2048;
                v189 = *typea;
                _os_log_impl(&dword_181A37000, v154, v164, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, backtrace limit exceeded", buf, 0x20u);
              }

              goto LABEL_309;
            }

            v160 = __nw_create_backtrace_string();
            v161 = __nwlog_obj();
            v172 = v183;
            v162 = os_log_type_enabled(v161, v183);
            if (v160)
            {
              if (v162)
              {
                v163 = *(*typea + 16);
                if (!v163)
                {
                  v163 = "invalid";
                }

                *buf = 136446978;
                *&buf[4] = "__nw_protocol_remove_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v163;
                *&buf[22] = 2048;
                v189 = *typea;
                *v190 = 2082;
                *&v190[2] = v160;
                _os_log_impl(&dword_181A37000, v161, v172, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v160);
            }

            else
            {
              if (v162)
              {
                v170 = *(*typea + 16);
                if (!v170)
                {
                  v170 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_remove_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v170;
                *&buf[22] = 2048;
                v189 = *typea;
                _os_log_impl(&dword_181A37000, v161, v172, "%{public}s protocol %{public}s (%p) has invalid remove_input_handler callback, no backtrace", buf, 0x20u);
              }
            }
          }

LABEL_354:
          if (v175)
          {
            free(v175);
          }

          v131 = 0;
          if (v127)
          {
LABEL_252:
            if (v123)
            {
              if (v131)
              {
LABEL_277:
                v141 = a1->output_handler;
                if (v141)
                {
                  v142 = v141->handle;
                  if (v142 == &nw_protocol_ref_counted_handle || v142 == &nw_protocol_ref_counted_additional_handle && (v141 = *v141[1].flow_id) != 0)
                  {
                    v143 = v141[1].callbacks;
                    if (v143)
                    {
                      v144 = (v143 - 1);
                      v141[1].callbacks = v144;
                      if (!v144)
                      {
                        v145 = *v141[1].flow_id;
                        if (v145)
                        {
                          *v141[1].flow_id = 0;
                          v145[2](v145);
                          _Block_release(v145);
                        }

                        if (v141[1].flow_id[8])
                        {
                          v146 = *v141[1].flow_id;
                          if (v146)
                          {
                            _Block_release(v146);
                          }
                        }

                        free(v141);
                      }
                    }
                  }

                  a1->output_handler = 0;
                }

LABEL_290:
                if (a3)
                {
                  nw_protocol_implementation_teardown(v12);
                }

LABEL_292:
                v65 = 1;
LABEL_344:

                return v65;
              }
            }

            else
            {
              nw::release_if_needed<nw_protocol *>(&v186);
              if (v131)
              {
                goto LABEL_277;
              }
            }

            if (SBYTE5(v7[7].output_handler_context) < 0)
            {
              goto LABEL_277;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v132 = gLogObj;
            v133 = &v7[7].output_handler_context + 7;
            *buf = 136446722;
            *&buf[4] = "nw_protocol_implementation_remove_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = v133;
            *&buf[22] = 2080;
            v189 = " ";
            v134 = _os_log_send_and_compose_impl();

            LOBYTE(v186) = 16;
            LOBYTE(v184) = 0;
            if (__nwlog_fault(v134, &v186, &v184))
            {
              if (v186 == 17)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v135 = gLogObj;
                v136 = v186;
                if (os_log_type_enabled(v135, v186))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_implementation_remove_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v133;
                  *&buf[22] = 2080;
                  v189 = " ";
                  _os_log_impl(&dword_181A37000, v135, v136, "%{public}s %{public}s%sUnable to remove output handler", buf, 0x20u);
                }
              }

              else if (v184 == 1)
              {
                v137 = __nw_create_backtrace_string();
                v135 = __nwlog_obj();
                v138 = v186;
                v139 = os_log_type_enabled(v135, v186);
                if (v137)
                {
                  if (v139)
                  {
                    *buf = 136446978;
                    *&buf[4] = "nw_protocol_implementation_remove_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = v133;
                    *&buf[22] = 2080;
                    v189 = " ";
                    *v190 = 2082;
                    *&v190[2] = v137;
                    _os_log_impl(&dword_181A37000, v135, v138, "%{public}s %{public}s%sUnable to remove output handler, dumping backtrace:%{public}s", buf, 0x2Au);
                  }

                  free(v137);
                  goto LABEL_275;
                }

                if (v139)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_implementation_remove_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v133;
                  *&buf[22] = 2080;
                  v189 = " ";
                  _os_log_impl(&dword_181A37000, v135, v138, "%{public}s %{public}s%sUnable to remove output handler, no backtrace", buf, 0x20u);
                }
              }

              else
              {
                v135 = __nwlog_obj();
                v140 = v186;
                if (os_log_type_enabled(v135, v186))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_implementation_remove_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v133;
                  *&buf[22] = 2080;
                  v189 = " ";
                  _os_log_impl(&dword_181A37000, v135, v140, "%{public}s %{public}s%sUnable to remove output handler, backtrace limit exceeded", buf, 0x20u);
                }
              }
            }

LABEL_275:
            if (v134)
            {
              free(v134);
            }

            goto LABEL_277;
          }

LABEL_251:
          nw::release_if_needed<nw_protocol *>(&v184);
          goto LABEL_252;
        }

        v98 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_get_output_handler_context";
        v99 = _os_log_send_and_compose_impl();

        LOBYTE(v186) = 16;
        LOBYTE(v184) = 0;
        if (__nwlog_fault(v99, &v186, &v184))
        {
          if (v186 == 17)
          {
            v100 = __nwlog_obj();
            v101 = v186;
            if (os_log_type_enabled(v100, v186))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_get_output_handler_context";
              _os_log_impl(&dword_181A37000, v100, v101, "%{public}s called with null protocol", buf, 0xCu);
            }
          }

          else if (v184 == 1)
          {
            v148 = __nw_create_backtrace_string();
            v100 = __nwlog_obj();
            v149 = v186;
            v150 = os_log_type_enabled(v100, v186);
            if (v148)
            {
              if (v150)
              {
                *buf = 136446466;
                *&buf[4] = "__nw_protocol_get_output_handler_context";
                *&buf[12] = 2082;
                *&buf[14] = v148;
                _os_log_impl(&dword_181A37000, v100, v149, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v148);
              goto LABEL_337;
            }

            if (v150)
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_get_output_handler_context";
              _os_log_impl(&dword_181A37000, v100, v149, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v100 = __nwlog_obj();
            v159 = v186;
            if (os_log_type_enabled(v100, v186))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_get_output_handler_context";
              _os_log_impl(&dword_181A37000, v100, v159, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_337:
        if (v99)
        {
          free(v99);
        }

        goto LABEL_339;
      }

      v73 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_remove_input_handler";
      v49 = _os_log_send_and_compose_impl();

      LOBYTE(v186) = 16;
      LOBYTE(v184) = 0;
      if (!__nwlog_fault(v49, &v186, &v184))
      {
LABEL_114:
        if (!v49)
        {
          goto LABEL_343;
        }

LABEL_115:
        free(v49);
        goto LABEL_343;
      }

      if (v186 == 17)
      {
        v50 = __nwlog_obj();
        v74 = v186;
        if (os_log_type_enabled(v50, v186))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_remove_input_handler";
          _os_log_impl(&dword_181A37000, v50, v74, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }

LABEL_113:

        goto LABEL_114;
      }

      if (v184 != 1)
      {
        v50 = __nwlog_obj();
        v93 = v186;
        if (os_log_type_enabled(v50, v186))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_remove_input_handler";
          _os_log_impl(&dword_181A37000, v50, v93, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_113;
      }

      v82 = __nw_create_backtrace_string();
      v50 = __nwlog_obj();
      v85 = v186;
      v86 = os_log_type_enabled(v50, v186);
      if (!v82)
      {
        if (v86)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_remove_input_handler";
          _os_log_impl(&dword_181A37000, v50, v85, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }

        goto LABEL_113;
      }

      if (v86)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_implementation_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = v82;
        _os_log_impl(&dword_181A37000, v50, v85, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      v71 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_remove_input_handler";
      v49 = _os_log_send_and_compose_impl();

      LOBYTE(v186) = 16;
      LOBYTE(v184) = 0;
      if (!__nwlog_fault(v49, &v186, &v184))
      {
        goto LABEL_114;
      }

      if (v186 == 17)
      {
        v50 = __nwlog_obj();
        v72 = v186;
        if (os_log_type_enabled(v50, v186))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_remove_input_handler";
          _os_log_impl(&dword_181A37000, v50, v72, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }

        goto LABEL_113;
      }

      if (v184 != 1)
      {
        v50 = __nwlog_obj();
        v92 = v186;
        if (os_log_type_enabled(v50, v186))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_remove_input_handler";
          _os_log_impl(&dword_181A37000, v50, v92, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_113;
      }

      v82 = __nw_create_backtrace_string();
      v50 = __nwlog_obj();
      v83 = v186;
      v84 = os_log_type_enabled(v50, v186);
      if (!v82)
      {
        if (v84)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_remove_input_handler";
          _os_log_impl(&dword_181A37000, v50, v83, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_113;
      }

      if (v84)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_implementation_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = v82;
        _os_log_impl(&dword_181A37000, v50, v83, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(v82);
    goto LABEL_114;
  }

  v67 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_remove_input_handler";
  v68 = _os_log_send_and_compose_impl();

  LOBYTE(v186) = 16;
  LOBYTE(v184) = 0;
  if (__nwlog_fault(v68, &v186, &v184))
  {
    if (v186 == 17)
    {
      v69 = __nwlog_obj();
      v70 = v186;
      if (os_log_type_enabled(v69, v186))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_remove_input_handler";
        _os_log_impl(&dword_181A37000, v69, v70, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v184 == 1)
    {
      v79 = __nw_create_backtrace_string();
      v69 = __nwlog_obj();
      v80 = v186;
      v81 = os_log_type_enabled(v69, v186);
      if (v79)
      {
        if (v81)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_remove_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v79;
          _os_log_impl(&dword_181A37000, v69, v80, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v79);
        goto LABEL_177;
      }

      if (v81)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_remove_input_handler";
        _os_log_impl(&dword_181A37000, v69, v80, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v69 = __nwlog_obj();
      v89 = v186;
      if (os_log_type_enabled(v69, v186))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_remove_input_handler";
        _os_log_impl(&dword_181A37000, v69, v89, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_177:
  if (v68)
  {
    free(v68);
  }

  return 0;
}

void nw_quic_stream_set_application_error_handler(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_stream(v3))
  {
    _nw_quic_stream_set_application_error_handler(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_stream_set_application_error_handler";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_stream_set_application_error_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
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
            v15 = "nw_quic_stream_set_application_error_handler";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_stream_set_application_error_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_stream_set_application_error_handler";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

void sub_181DC17AC(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  v4 = sub_181A93260(a1);
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      v7 = _Block_copy(v3);
      os_unfair_lock_lock((*(v6 + 72) + 16));
      v8 = *(v6 + 48);
      *(v6 + 48) = v7;
      _Block_release(v8);
      os_unfair_lock_unlock((*(v6 + 72) + 16));
      _Block_release(v3);

      return;
    }
  }

  _Block_release(v3);
}

void nw_proxy_config_enumerate_endpoints(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_proxy_config_enumerate_endpoints";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v9, &type, &v25))
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_enumerate_endpoints";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v25 == 1)
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
          *&buf[4] = "nw_proxy_config_enumerate_endpoints";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_44:
        if (!v9)
        {
          goto LABEL_10;
        }

LABEL_45:
        free(v9);
        goto LABEL_10;
      }

      if (v16)
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_enumerate_endpoints";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_proxy_config_enumerate_endpoints";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v28 = 0;
    v6 = v3[1];
    if (v6 && nw_dictionary_get_count(v6))
    {
      v7 = v3[1];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __nw_proxy_config_enumerate_endpoints_block_invoke;
      v22[3] = &unk_1E6A32430;
      v23 = v5;
      v24 = buf;
      nw_dictionary_apply(v7, v22);
    }

    if ((*(*&buf[8] + 24) & 1) == 0 && v3[5])
    {
      v5[2](v5);
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_10;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_proxy_config_enumerate_endpoints";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v9, &type, &v25))
  {
    goto LABEL_44;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_proxy_config_enumerate_endpoints";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null enumerator", buf, 0xCu);
    }

    goto LABEL_43;
  }

  if (v25 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_proxy_config_enumerate_endpoints";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null enumerator, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_43;
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
      *&buf[4] = "nw_proxy_config_enumerate_endpoints";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
    }

    goto LABEL_43;
  }

  if (v19)
  {
    *buf = 136446466;
    *&buf[4] = "nw_proxy_config_enumerate_endpoints";
    *&buf[12] = 2082;
    *&buf[14] = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_45;
  }

LABEL_10:
}

void sub_181DC1E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t __nw_proxy_config_enumerate_endpoints_block_invoke(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __nw_proxy_config_enumerate_endpoints_block_invoke_2;
  v8[3] = &unk_1E6A32408;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  nw_protocol_stack_iterate_application_protocols(a3, v8);

  return 0;
}

void __nw_proxy_config_enumerate_endpoints_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = nw_protocol_options_copy_proxy_endpoint(a2);
  if (v3)
  {
    v4 = v3;
    (*(*(a1 + 32) + 16))();
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3 = v4;
  }
}

id nw_protocol_options_copy_proxy_endpoint(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_protocol_options_copy_proxy_endpoint(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_options_copy_proxy_endpoint";
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
        v12 = "nw_protocol_options_copy_proxy_endpoint";
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
            v12 = "nw_protocol_options_copy_proxy_endpoint";
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
        v12 = "nw_protocol_options_copy_proxy_endpoint";
        v6 = "%{public}s called with null options, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_protocol_options_copy_proxy_endpoint";
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

uint64_t __nw_connection_fillout_establishment_report_on_nw_queue_block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    return _nw_array_append(result, a2);
  }

  return result;
}

void __nw_connection_fillout_establishment_report_on_nw_queue_block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nw_endpoint_handler_copy_endpoint(v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = _nw_endpoint_copy_cname_array(v6);

    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = v7;

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(a1 + 32) + 48);
      v12 = 136446467;
      v13 = "nw_connection_fillout_establishment_report_on_nw_queue_block_invoke_2";
      v14 = 2117;
      v15 = v11;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s Proxied next hops: %{sensitive}@\n", &v12, 0x16u);
    }
  }
}

uint64_t sub_181DC237C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_cnames);

  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_182AD3EB8())
    {
      v4 = [objc_allocWithZone(type metadata accessor for NWArray()) init];
      v5 = OBJC_IVAR____TtC7Network7NWArray_deque;
      v22 = v4;
      for (j = 0; ; ++j)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1865DA790](j, v1);
        }

        else
        {
          if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v7 = *(v1 + 8 * j + 32);
        }

        v8 = v7;
        v9 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        swift_beginAccess();
        v10 = *(*&v4[v5] + 24);
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_27;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = *&v4[v5];
        if (v13[2] < v11 || (isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_181ACC600(isUniquelyReferenced_nonNull_native, v11);
          v13 = *&v4[v5];
        }

        v14 = v13[3];
        v15 = v13[4];
        v18 = __OFADD__(v15, v14);
        v16 = v15 + v14;
        if (v18)
        {
          goto LABEL_28;
        }

        if (v14 < 0)
        {
          if (v16 < 0)
          {
            v20 = v13[2];
            v18 = __OFADD__(v16, v20);
            v16 += v20;
            if (v18)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
          v17 = v13[2];
          v18 = __OFSUB__(v16, v17);
          v19 = v16 - v17;
          if (v19 < 0 == v18)
          {
            v16 = v19;
            if (v18)
            {
              goto LABEL_30;
            }
          }
        }

        v13[v16 + 5] = v8;
        v18 = __OFADD__(v14, 1);
        v21 = v14 + 1;
        if (v18)
        {
          goto LABEL_29;
        }

        v13[3] = v21;
        swift_endAccess();
        if (v9 == i)
        {

          return v22;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

    return 0;
  }

  return result;
}

uint64_t nw_flow_replay_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_flow_replay_get_input_frames";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v12, &type, &v18))
    {
      goto LABEL_26;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v21 = "nw_flow_replay_get_input_frames";
        v15 = "%{public}s called with null protocol";
LABEL_24:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else
    {
      if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v21 = "nw_flow_replay_get_input_frames";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (!v17)
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v21 = "nw_flow_replay_get_input_frames";
        v15 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_24;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v21 = "nw_flow_replay_get_input_frames";
        v15 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_24;
      }
    }

LABEL_25:

LABEL_26:
    if (v12)
    {
      free(v12);
    }

    return 0;
  }

  output_handler = a1->output_handler;
  if (!output_handler)
  {
    return 0;
  }

  callbacks = output_handler->callbacks;
  if (!callbacks || (get_input_frames = callbacks->get_input_frames) == 0)
  {
    v10 = __nwlog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v21 = "nw_flow_replay_get_input_frames";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s Output protocol handler does not support get_input_frames", buf, 0xCu);
    }

    return 0;
  }

  return get_input_frames();
}

uint64_t nw_protocol_masque_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v147 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = a1;
    handle = a1->handle;
    v9 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v10 = 1;
      goto LABEL_11;
    }

    v9 = *a1[1].flow_id;
    if (v9)
    {
LABEL_6:
      callbacks = v9[1].callbacks;
      v10 = 0;
      if (callbacks)
      {
        v9[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v10 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v12 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v140 = "nw_protocol_masque_get_input_frames";
        v13 = _os_log_send_and_compose_impl();
        LOBYTE(v133) = 16;
        LOBYTE(v124) = 0;
        if (!__nwlog_fault(v13, &v133, &v124))
        {
          goto LABEL_61;
        }

        if (v133 == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v15 = v133;
          if (!os_log_type_enabled(gLogObj, v133))
          {
            goto LABEL_61;
          }

          *buf = 136446210;
          v140 = "nw_protocol_masque_get_input_frames";
          v16 = "%{public}s called with null masque";
        }

        else
        {
          if (v124 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v45 = gLogObj;
            v46 = v133;
            v47 = os_log_type_enabled(gLogObj, v133);
            if (backtrace_string)
            {
              if (v47)
              {
                *buf = 136446466;
                v140 = "nw_protocol_masque_get_input_frames";
                v141 = 2082;
                v142 = backtrace_string;
                _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null masque, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_61;
            }

            if (!v47)
            {
LABEL_61:
              if (v13)
              {
                free(v13);
              }

LABEL_63:
              result = 0;
              if (v10)
              {
                return result;
              }

LABEL_112:
              v75 = v7->handle;
              if (v75 == &nw_protocol_ref_counted_handle || v75 == &nw_protocol_ref_counted_additional_handle && (v7 = *v7[1].flow_id) != 0)
              {
                v76 = v7[1].callbacks;
                if (v76)
                {
                  v77 = (v76 - 1);
                  v7[1].callbacks = v77;
                  if (!v77)
                  {
                    v78 = result;
                    v79 = *v7[1].flow_id;
                    if (v79)
                    {
                      *v7[1].flow_id = 0;
                      v79[2](v79);
                      _Block_release(v79);
                    }

                    if (v7[1].flow_id[8])
                    {
                      v80 = *v7[1].flow_id;
                      if (v80)
                      {
                        _Block_release(v80);
                      }
                    }

                    free(v7);
                    return v78;
                  }
                }
              }

              return result;
            }

            *buf = 136446210;
            v140 = "nw_protocol_masque_get_input_frames";
            v16 = "%{public}s called with null masque, no backtrace";
            v48 = v45;
            v49 = v46;
LABEL_60:
            _os_log_impl(&dword_181A37000, v48, v49, v16, buf, 0xCu);
            goto LABEL_61;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v15 = v133;
          if (!os_log_type_enabled(gLogObj, v133))
          {
            goto LABEL_61;
          }

          *buf = 136446210;
          v140 = "nw_protocol_masque_get_input_frames";
          v16 = "%{public}s called with null masque, backtrace limit exceeded";
        }

        v48 = v14;
        v49 = v15;
        goto LABEL_60;
      }

      v12 = *a1[1].flow_id;
    }

    if (*&v12[9].flow_id[4] != 4)
    {
      goto LABEL_63;
    }

    p_output_handler = &v12[1].output_handler;
    output_handler = a1->output_handler;
    v133 = 0;
    v134 = &v133;
    v135 = 0x2000000000;
    v136 = (output_handler->callbacks->get_input_frames)();
    if (*(v134 + 6))
    {
      v19 = *(&v12[9].identifier + 7);
      if ((v19 & 0x9000) == 0x1000 || (v19 & 0x28) != 0)
      {
        if (nw_protocol_copy_http_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
        }

        v20 = nw_protocol_copy_http_definition_http_definition;
        v126[0] = MEMORY[0x1E69E9820];
        v126[1] = 0x40000000;
        v127 = ___ZL35nw_protocol_masque_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
        v128 = &unk_1E6A2FB40;
        v131 = &v12[1].output_handler;
        v132 = a6;
        v129 = &v133;
        v130 = v20;
        tqh_first = a6->tqh_first;
        do
        {
          if (!tqh_first)
          {
            break;
          }

          v22 = *(tqh_first + 4);
          v23 = (v127)(v126);
          tqh_first = v22;
        }

        while ((v23 & 1) != 0);
        if (v20)
        {
          os_release(v20);
        }
      }
    }

    v24 = *(v134 + 6);
    v25 = a4;
    v26 = a3;
    v27 = a5;
    if (v24)
    {
      v28 = (&v12[9].identifier + 7);
      if ((~*(&v12[9].identifier + 7) & 0x100008) == 0 && *v12[8].flow_id && !v12[7].callbacks)
      {
        v29 = a6->tqh_first;
        LODWORD(v124) = 0;
        v30 = nw_frame_unclaimed_bytes(v29, &v124);
        if (v124 >= 7)
        {
          v31 = *v30;
          if (v31 >= 0xC0 && (v31 & 0x30) == 0)
          {
            v33 = v30[5];
            if (v33 <= 0x14)
            {
              v34 = v33 + 7;
              if (v124 > (v33 + 7))
              {
                v35 = &v30[v33];
                v36 = v35[6];
                v37 = v36 + v34;
                if ((v36 - 1) <= 0x13 && v37 < v124)
                {
                  v12[7].callbacks = dispatch_data_create(v35 + 7, v35[6], 0, 0);
                  if ((BYTE1(v12[9].callbacks) & 1) == 0 && gLogDatapath == 1)
                  {
                    if (__nwlog_privacy_proxy_log::onceToken != -1)
                    {
                      dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                    }

                    v111 = gprivacy_proxyLogObj;
                    if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136446978;
                      v140 = "nw_protocol_masque_get_input_frames";
                      v141 = 2082;
                      v142 = &v12[9].callbacks + 3;
                      v143 = 2080;
                      v144 = " ";
                      v145 = 1024;
                      LODWORD(v146) = v36;
                      _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDetected a server CID of length %u", buf, 0x26u);
                    }
                  }

                  if (nw_masque_setup_demux(p_output_handler, 0))
                  {
                    v87 = *v12[9].flow_id;
                    if (v87 == 2)
                    {
                      connection_id_capsule = nw_masque_create_connection_id_capsule(v12[7].callbacks, v85, v86);
                      v99 = nw_masque_send_metadata(p_output_handler, connection_id_capsule, v12->output_handler);
                      v100 = *v28;
                      if (v99)
                      {
                        if ((v100 & 0x10000) == 0)
                        {
                          if (__nwlog_privacy_proxy_log::onceToken != -1)
                          {
                            dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                          }

                          v101 = gprivacy_proxyLogObj;
                          if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 136446722;
                            v140 = "nw_protocol_masque_get_input_frames";
                            v141 = 2082;
                            v142 = &v12[9].callbacks + 3;
                            v143 = 2080;
                            v144 = " ";
                            _os_log_impl(&dword_181A37000, v101, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSent REGISTER_TARGET_CID capsule", buf, 0x20u);
                          }
                        }

                        *v28 |= 0x4000000u;
                        *&v12[9].flow_id[4] = 3;
                      }

                      else if ((v100 & 0x10000) == 0)
                      {
                        if (__nwlog_privacy_proxy_log::onceToken != -1)
                        {
                          dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
                        }

                        v106 = gprivacy_proxyLogObj;
                        if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446466;
                          v140 = &v12[9].callbacks + 3;
                          v141 = 2080;
                          v142 = " ";
                          _os_log_impl(&dword_181A37000, v106, OS_LOG_TYPE_ERROR, "%{public}s%sFailed to send REGISTER_TARGET_CID capsule", buf, 0x16u);
                        }
                      }

                      if (connection_id_capsule)
                      {
                        os_release(connection_id_capsule);
                      }
                    }

                    else if (v87 == 1)
                    {
                      nw_masque_setup_server_connect(p_output_handler);
                    }
                  }
                }
              }
            }
          }
        }

        v24 = *(v134 + 6);
        v25 = a4;
        v26 = a3;
        v27 = a5;
      }
    }

    v39 = v27 - v24;
    if (v27 <= v24 || (identifier = v12[3].identifier) == 0)
    {
LABEL_111:
      v74 = v24;
      _Block_object_dispose(&v133, 8);
      result = v74;
      if (v10)
      {
        return result;
      }

      goto LABEL_112;
    }

    v41 = (v12 + 176);
    v124 = 0;
    v125 = &v124;
    v42 = *identifier[1].name;
    v43 = identifier;
    if (v42 == &nw_protocol_ref_counted_handle || v42 == &nw_protocol_ref_counted_additional_handle && (v43 = *&identifier[1].name[24]) != 0)
    {
      v51 = *&v43[2].name[8];
      v119 = 0;
      if (v51)
      {
        *&v43[2].name[8] = v51 + 1;
      }
    }

    else
    {
      v119 = 1;
    }

    v52 = v12[3].callbacks;
    default_input_handler = (v12 + 176);
    if (v52 == &nw_protocol_ref_counted_handle || v52 == &nw_protocol_ref_counted_additional_handle && (default_input_handler = v12[3].default_input_handler) != 0)
    {
      v55 = default_input_handler[1].callbacks;
      v54 = 0;
      if (v55)
      {
        default_input_handler[1].callbacks = (&v55->add_input_handler + 1);
      }
    }

    else
    {
      v54 = 1;
    }

    v56 = *&identifier->name[24];
    if (v56)
    {
      v57 = *(v56 + 80);
      if (v57)
      {
        v58 = v57(identifier, &v12[2].default_input_handler, v26, v25, v39, &v124);
        if (v54)
        {
LABEL_90:
          if ((v119 & 1) == 0)
          {
            v64 = *identifier[1].name;
            if (v64 == &nw_protocol_ref_counted_handle || v64 == &nw_protocol_ref_counted_additional_handle && (identifier = *&identifier[1].name[24]) != 0)
            {
              v65 = *&identifier[2].name[8];
              if (v65)
              {
                v66 = v65 - 1;
                *&identifier[2].name[8] = v66;
                if (!v66)
                {
                  v67 = *&identifier[1].name[24];
                  if (v67)
                  {
                    *&identifier[1].name[24] = 0;
                    v67[2](v67);
                    _Block_release(v67);
                  }

                  if (identifier[1].level)
                  {
                    v68 = *&identifier[1].name[24];
                    if (v68)
                    {
                      _Block_release(v68);
                    }
                  }

                  free(identifier);
                }
              }
            }
          }

          if (v58 && (BYTE1(v12[9].callbacks) & 1) == 0 && gLogDatapath == 1)
          {
            if (__nwlog_privacy_proxy_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_privacy_proxy_log::onceToken, &__block_literal_global_60);
            }

            v105 = gprivacy_proxyLogObj;
            if (os_log_type_enabled(gprivacy_proxyLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              v140 = "nw_protocol_masque_get_input_frames";
              v141 = 2082;
              v142 = &v12[9].callbacks + 3;
              v143 = 2080;
              v144 = " ";
              v145 = 1024;
              LODWORD(v146) = v58;
              _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sReceived %u frames directly from demux", buf, 0x26u);
            }
          }

          v120[0] = MEMORY[0x1E69E9820];
          v120[1] = 0x40000000;
          v121 = ___ZL35nw_protocol_masque_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_139;
          v122 = &__block_descriptor_tmp_140;
          v123 = &v12[1].output_handler;
          v69 = v124;
          do
          {
            if (!v69)
            {
              break;
            }

            v70 = *(v69 + 32);
            v71 = (v121)(v120);
            v69 = v70;
          }

          while ((v71 & 1) != 0);
          if (v124)
          {
            tqh_last = a6->tqh_last;
            *tqh_last = v124;
            v73 = v125;
            *(v124 + 40) = tqh_last;
            a6->tqh_last = v73;
          }

          v24 = (*(v134 + 6) + v58);
          *(v134 + 6) = v24;
          goto LABEL_111;
        }

LABEL_79:
        v59 = v12[3].callbacks;
        if (v59 == &nw_protocol_ref_counted_handle || v59 == &nw_protocol_ref_counted_additional_handle && (v41 = v12[3].default_input_handler) != 0)
        {
          v60 = v41[1].callbacks;
          if (v60)
          {
            v61 = (v60 - 1);
            v41[1].callbacks = v61;
            if (!v61)
            {
              v62 = *v41[1].flow_id;
              if (v62)
              {
                *v41[1].flow_id = 0;
                v62[2](v62);
                _Block_release(v62);
              }

              if (v41[1].flow_id[8])
              {
                v63 = *v41[1].flow_id;
                if (v63)
                {
                  _Block_release(v63);
                }
              }

              free(v41);
            }
          }
        }

        goto LABEL_90;
      }
    }

    v117 = a6;
    v114 = v10;
    __nwlog_obj();
    v90 = *&identifier->name[16];
    *buf = 136446722;
    v140 = "__nw_protocol_get_input_frames";
    if (!v90)
    {
      v90 = "invalid";
    }

    v141 = 2082;
    v142 = v90;
    v143 = 2048;
    v144 = identifier;
    v91 = _os_log_send_and_compose_impl();
    v138 = OS_LOG_TYPE_ERROR;
    v137 = 0;
    v92 = v91;
    if (__nwlog_fault(v91, &v138, &v137))
    {
      if (v138 == OS_LOG_TYPE_FAULT)
      {
        v93 = __nwlog_obj();
        v94 = v138;
        v95 = v93;
        if (!os_log_type_enabled(v93, v138))
        {
          goto LABEL_186;
        }

        v96 = *&identifier->name[16];
        if (!v96)
        {
          v96 = "invalid";
        }

        *buf = 136446722;
        v140 = "__nw_protocol_get_input_frames";
        v141 = 2082;
        v142 = v96;
        v143 = 2048;
        v144 = identifier;
        v97 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback";
LABEL_184:
        v108 = v95;
        v109 = v94;
LABEL_185:
        _os_log_impl(&dword_181A37000, v108, v109, v97, buf, 0x20u);
        goto LABEL_186;
      }

      if (v137 != 1)
      {
        v95 = __nwlog_obj();
        v94 = v138;
        if (!os_log_type_enabled(v95, v138))
        {
          goto LABEL_186;
        }

        v107 = *&identifier->name[16];
        if (!v107)
        {
          v107 = "invalid";
        }

        *buf = 136446722;
        v140 = "__nw_protocol_get_input_frames";
        v141 = 2082;
        v142 = v107;
        v143 = 2048;
        v144 = identifier;
        v97 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, backtrace limit exceeded";
        goto LABEL_184;
      }

      v102 = __nw_create_backtrace_string();
      log = __nwlog_obj();
      type = v138;
      v103 = os_log_type_enabled(log, v138);
      if (v102)
      {
        if (v103)
        {
          v104 = *&identifier->name[16];
          if (!v104)
          {
            v104 = "invalid";
          }

          *buf = 136446978;
          v140 = "__nw_protocol_get_input_frames";
          v141 = 2082;
          v142 = v104;
          v143 = 2048;
          v144 = identifier;
          v145 = 2082;
          v146 = v102;
          _os_log_impl(&dword_181A37000, log, type, "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v102);
      }

      else if (v103)
      {
        v110 = *&identifier->name[16];
        if (!v110)
        {
          v110 = "invalid";
        }

        *buf = 136446722;
        v140 = "__nw_protocol_get_input_frames";
        v141 = 2082;
        v142 = v110;
        v143 = 2048;
        v144 = identifier;
        v97 = "%{public}s protocol %{public}s (%p) has invalid get_input_frames callback, no backtrace";
        v108 = log;
        v109 = type;
        goto LABEL_185;
      }
    }

LABEL_186:
    if (v92)
    {
      free(v92);
    }

    v58 = 0;
    v10 = v114;
    a6 = v117;
    if (v54)
    {
      goto LABEL_90;
    }

    goto LABEL_79;
  }

  __nwlog_obj();
  *buf = 136446210;
  v140 = "nw_protocol_masque_get_input_frames";
  v81 = _os_log_send_and_compose_impl();
  LOBYTE(v133) = 16;
  LOBYTE(v124) = 0;
  if (__nwlog_fault(v81, &v133, &v124))
  {
    if (v133 == 17)
    {
      v82 = __nwlog_obj();
      v83 = v133;
      if (os_log_type_enabled(v82, v133))
      {
        *buf = 136446210;
        v140 = "nw_protocol_masque_get_input_frames";
        v84 = "%{public}s called with null protocol";
LABEL_165:
        _os_log_impl(&dword_181A37000, v82, v83, v84, buf, 0xCu);
      }
    }

    else if (v124 == 1)
    {
      v88 = __nw_create_backtrace_string();
      v82 = __nwlog_obj();
      v83 = v133;
      v89 = os_log_type_enabled(v82, v133);
      if (v88)
      {
        if (v89)
        {
          *buf = 136446466;
          v140 = "nw_protocol_masque_get_input_frames";
          v141 = 2082;
          v142 = v88;
          _os_log_impl(&dword_181A37000, v82, v83, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v88);
        goto LABEL_166;
      }

      if (v89)
      {
        *buf = 136446210;
        v140 = "nw_protocol_masque_get_input_frames";
        v84 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_165;
      }
    }

    else
    {
      v82 = __nwlog_obj();
      v83 = v133;
      if (os_log_type_enabled(v82, v133))
      {
        *buf = 136446210;
        v140 = "nw_protocol_masque_get_input_frames";
        v84 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_165;
      }
    }
  }

LABEL_166:
  if (v81)
  {
    free(v81);
  }

  return 0;
}

uint64_t nw_protocol_http3_stream_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v189[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v176 = "nw_protocol_http3_stream_get_input_frames";
    v80 = _os_log_send_and_compose_impl();
    v168[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v164) = 0;
    if (!__nwlog_fault(v80, v168, &v164))
    {
      goto LABEL_136;
    }

    if (v168[0] == OS_LOG_TYPE_FAULT)
    {
      v81 = __nwlog_obj();
      v82 = v168[0];
      if (os_log_type_enabled(v81, v168[0]))
      {
        *buf = 136446210;
        v176 = "nw_protocol_http3_stream_get_input_frames";
        v83 = "%{public}s called with null protocol";
LABEL_135:
        _os_log_impl(&dword_181A37000, v81, v82, v83, buf, 0xCu);
      }

LABEL_136:
      if (v80)
      {
        free(v80);
      }

      return 0;
    }

    if (v164 != 1)
    {
      v81 = __nwlog_obj();
      v82 = v168[0];
      if (os_log_type_enabled(v81, v168[0]))
      {
        *buf = 136446210;
        v176 = "nw_protocol_http3_stream_get_input_frames";
        v83 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_135;
      }

      goto LABEL_136;
    }

    backtrace_string = __nw_create_backtrace_string();
    v81 = __nwlog_obj();
    v82 = v168[0];
    v91 = os_log_type_enabled(v81, v168[0]);
    if (!backtrace_string)
    {
      if (v91)
      {
        *buf = 136446210;
        v176 = "nw_protocol_http3_stream_get_input_frames";
        v83 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_135;
      }

      goto LABEL_136;
    }

    if (v91)
    {
      *buf = 136446466;
      v176 = "nw_protocol_http3_stream_get_input_frames";
      v177 = 2082;
      v178 = backtrace_string;
      v92 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_123:
      _os_log_impl(&dword_181A37000, v81, v82, v92, buf, 0x16u);
    }

LABEL_124:
    free(backtrace_string);
    goto LABEL_136;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v176 = "nw_protocol_http3_stream_get_input_frames";
    v80 = _os_log_send_and_compose_impl();
    v168[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v164) = 0;
    if (!__nwlog_fault(v80, v168, &v164))
    {
      goto LABEL_136;
    }

    if (v168[0] == OS_LOG_TYPE_FAULT)
    {
      v81 = __nwlog_obj();
      v82 = v168[0];
      if (os_log_type_enabled(v81, v168[0]))
      {
        *buf = 136446210;
        v176 = "nw_protocol_http3_stream_get_input_frames";
        v83 = "%{public}s called with null http3_stream";
        goto LABEL_135;
      }

      goto LABEL_136;
    }

    if (v164 != 1)
    {
      v81 = __nwlog_obj();
      v82 = v168[0];
      if (os_log_type_enabled(v81, v168[0]))
      {
        *buf = 136446210;
        v176 = "nw_protocol_http3_stream_get_input_frames";
        v83 = "%{public}s called with null http3_stream, backtrace limit exceeded";
        goto LABEL_135;
      }

      goto LABEL_136;
    }

    backtrace_string = __nw_create_backtrace_string();
    v81 = __nwlog_obj();
    v82 = v168[0];
    v93 = os_log_type_enabled(v81, v168[0]);
    if (!backtrace_string)
    {
      if (v93)
      {
        *buf = 136446210;
        v176 = "nw_protocol_http3_stream_get_input_frames";
        v83 = "%{public}s called with null http3_stream, no backtrace";
        goto LABEL_135;
      }

      goto LABEL_136;
    }

    if (v93)
    {
      *buf = 136446466;
      v176 = "nw_protocol_http3_stream_get_input_frames";
      v177 = 2082;
      v178 = backtrace_string;
      v92 = "%{public}s called with null http3_stream, dumping backtrace:%{public}s";
      goto LABEL_123;
    }

    goto LABEL_124;
  }

  if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
  {
    v84 = a4;
    v85 = a3;
    v86 = __nwlog_obj();
    v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG);
    a3 = v85;
    a4 = v84;
    if (v87)
    {
      v88 = *(*(handle + 43) + 1304);
      v89 = *(handle + 30);
      *buf = 136447234;
      v176 = "nw_protocol_http3_stream_get_input_frames";
      v177 = 2082;
      v178 = handle + 632;
      v179 = 2080;
      v180 = " ";
      v181 = 1024;
      v182 = v88;
      v183 = 2048;
      v184 = v89;
      _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
      a3 = v85;
      a4 = v84;
    }
  }

  v107 = 0;
  v8 = *(handle + 95);
  if (v8 <= 4)
  {
    if (v8 >= 2)
    {
      if ((v8 - 2) < 2)
      {
        return v107;
      }

      v9 = 0;
      if (v8 == 4)
      {
        v107 = a4;
        v9 = a3;
      }

      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if ((v8 - 6) < 2)
  {
    return v107;
  }

  if (v8 != 8)
  {
    v9 = 0;
    if (v8 != 5)
    {
LABEL_19:
      *v168 = 0;
      v169 = v168;
      v170 = 0x2000000000;
      LODWORD(v171) = 0;
      v11 = *(handle + 48);
      if (v11)
      {
        *(v11 + 32) = 0;
        tqh_last = a6->tqh_last;
        *(v11 + 40) = tqh_last;
        *tqh_last = v11;
        a6->tqh_last = (v11 + 32);
        ++*(v169 + 6);
        *(handle + 48) = 0;
      }

      v164 = 0;
      v165 = &v164;
      v166 = 0x2000000000;
      v167 = 0;
      do
      {
        v163[0] = -1;
        v161[0] = 0;
        LOBYTE(v153) = 0;
        LODWORD(v157) = 0;
        input_frames = nw_http3_framer_get_input_frames(handle + 16, v9, v107, a5, v163, v161, &v153, &v157, (handle + 216));
        if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
        {
          v104 = input_frames;
          v17 = __nwlog_obj();
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
          input_frames = v104;
          if (v18)
          {
            v19 = *(*(handle + 43) + 1304);
            v20 = *(handle + 30);
            v21 = *(handle + 95);
            *buf = 136448514;
            v176 = "nw_protocol_http3_stream_get_input_frames";
            v177 = 2082;
            v178 = handle + 632;
            v179 = 2080;
            v180 = " ";
            v181 = 1024;
            v182 = v19;
            v183 = 2048;
            v184 = v20;
            v185 = 1024;
            *v186 = v104;
            *&v186[4] = 1024;
            *&v186[6] = v21;
            *&v186[10] = 2048;
            *&v186[12] = v163[0];
            *&v186[20] = 2048;
            *&v186[22] = v161[0];
            v187 = 1024;
            v188 = v153;
            _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> read %u input frames, state %u type %llx length %llu complete %u", buf, 0x56u);
            input_frames = v104;
          }
        }

        if (!input_frames)
        {
          break;
        }

        v109[0] = MEMORY[0x1E69E9820];
        v109[1] = 0x40000000;
        v110 = ___ZL41nw_protocol_http3_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_126;
        v111 = &unk_1E6A38FA8;
        v114 = handle;
        v115 = v163[0];
        v119 = v153;
        v118 = v157;
        v116 = v161[0];
        v117 = a6;
        v112 = &v164;
        v113 = v168;
        v14 = *(handle + 27);
        do
        {
          if (!v14)
          {
            break;
          }

          v15 = *(v14 + 32);
          v16 = (v110)(v109);
          v14 = v15;
        }

        while ((v16 & 1) != 0);
      }

      while (!*(v169 + 6) && !*(v165 + 6));
      if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
      {
        v94 = __nwlog_obj();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          v95 = *(*(handle + 43) + 1304);
          v96 = *(handle + 30);
          v97 = *(v169 + 6);
          *buf = 136447490;
          v176 = "nw_protocol_http3_stream_get_input_frames";
          v177 = 2082;
          v178 = handle + 632;
          v179 = 2080;
          v180 = " ";
          v181 = 1024;
          v182 = v95;
          v183 = 2048;
          v184 = v96;
          v185 = 1024;
          *v186 = v97;
          _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> returning %u input frames", buf, 0x36u);
        }
      }

      if ((*(handle + 366) & 0x400) != 0 && (*(handle + 95) | 4) != 6)
      {
        v22 = *(handle + 42);
        v23 = *(*(handle + 43) + 1272);
        v108[0] = MEMORY[0x1E69E9820];
        v108[1] = 0x40000000;
        v108[2] = ___ZL41nw_protocol_http3_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_128;
        v108[3] = &unk_1E6A38FD0;
        v108[4] = v22;
        v108[5] = handle;
        nw_queue_context_async(v23, v108);
      }

      v107 = *(v169 + 6);
      _Block_object_dispose(&v164, 8);
      _Block_object_dispose(v168, 8);
      return v107;
    }

LABEL_13:
    if (a3 + 1 == (a3 + 1) << 31 >> 31)
    {
      v9 = a3 + 1;
    }

    else
    {
      v9 = -1;
    }

    v10 = a4 + 0x20000;
    if (v10 != v10 << 31 >> 31)
    {
      LODWORD(v10) = -1;
    }

    v107 = v10;
    goto LABEL_19;
  }

  v25 = *(handle + 48);
  if (v25)
  {
    *(v25 + 32) = 0;
    v26 = a6->tqh_last;
    *(v25 + 40) = v26;
    *v26 = v25;
    a6->tqh_last = (v25 + 32);
    *(handle + 48) = 0;
    return 1;
  }

  v107 = 0;
  v28 = (handle + 216);
  while (1)
  {
    v173 = 0;
    v174 = -1;
    v172 = 0;
    v29 = nw_http3_framer_get_input_frames(handle + 16, 1u, 0xFFFFFFFF, 0xFFFFFFFF, &v174, &v173, &v172, 0, v28);
    if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
    {
      v68 = v29;
      v69 = __nwlog_obj();
      v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG);
      v29 = v68;
      if (v70)
      {
        v71 = *(*(handle + 43) + 1304);
        v72 = *(handle + 30);
        *buf = 136448258;
        v176 = "nw_protocol_http3_stream_get_input_frames";
        v177 = 2082;
        v178 = handle + 632;
        v179 = 2080;
        v180 = " ";
        v181 = 1024;
        v182 = v71;
        v183 = 2048;
        v184 = v72;
        v185 = 1024;
        *v186 = v68;
        *&v186[4] = 2048;
        *&v186[6] = v174;
        *&v186[14] = 2048;
        *&v186[16] = v173;
        *&v186[24] = 1024;
        *&v186[26] = v172;
        _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> read %u input frames on capsule stream, type %llx length %llu complete %u", buf, 0x50u);
        v29 = v68;
      }
    }

    if (!v29)
    {
      break;
    }

    if (v172 == 1)
    {
      *v168 = 0;
      v169 = v168;
      v170 = 0x2000000000;
      v171 = 0;
      v164 = 0;
      v165 = &v164;
      v166 = 0x2000000000;
      LOBYTE(v167) = 0;
      v189[0] = 0;
      v189[1] = 0;
      v163[0] = 0;
      v163[1] = v163;
      v163[2] = 0x2000000000;
      v163[3] = v189;
      v161[0] = 0;
      v161[1] = v161;
      v161[2] = 0x2000000000;
      v162 = 0;
      v157 = 0;
      v158 = &v157;
      v159 = 0x2000000000;
      v160 = 0;
      v153 = 0;
      v154 = &v153;
      v155 = 0x2000000000;
      v156 = -1;
      v149 = 0;
      v150 = &v149;
      v151 = 0x2000000000;
      v152 = 0;
      v136[0] = MEMORY[0x1E69E9820];
      v136[1] = 0x40000000;
      v137 = ___ZL41nw_protocol_http3_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
      v138 = &unk_1E6A38F58;
      v145 = handle;
      v146 = v174;
      v147 = v173;
      v148 = 1;
      v139 = &v164;
      v140 = v161;
      v141 = v163;
      v142 = &v153;
      v143 = &v157;
      v144 = &v149;
      v30 = *(handle + 27);
      do
      {
        if (!v30)
        {
          break;
        }

        v31 = *(v30 + 32);
        v32 = (v137)(v136);
        v30 = v31;
      }

      while ((v32 & 1) != 0);
      if (*(v165 + 24) == 1)
      {
        v33 = 0;
        v34 = *(v158 + 12);
        v35 = v150[3];
        v36 = v35 + v34;
        v37 = *v28;
        while (v37)
        {
          v41 = *(v37 + 52);
          if (v41)
          {
            v41 -= *(v37 + 56) + *(v37 + 60);
          }

          v37 = *(v37 + 32);
          v38 = __CFADD__(v33, v41);
          v39 = v33 + v41;
          v33 += v41;
          if (v38)
          {
            v40 = -1;
          }

          else
          {
            v40 = v39;
          }

          if (v40 >= v36)
          {
            goto LABEL_63;
          }
        }

        if (v33 < v36)
        {
          goto LABEL_89;
        }

LABEL_63:
        v134[0] = 0;
        v134[1] = v134;
        v134[2] = 0x2000000000;
        v135 = v34;
        v130 = 0;
        v131 = &v130;
        v132 = 0x2000000000;
        v133 = v35;
        if ((handle[733] & 0x20) == 0 && gLogDatapath == 1)
        {
          v73 = __nwlog_obj();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
          {
            v74 = *(*(handle + 43) + 1304);
            v75 = *(handle + 30);
            v76 = v154[3];
            v77 = v150[3];
            *buf = 136447746;
            v176 = "nw_protocol_http3_stream_get_input_frames";
            v177 = 2082;
            v178 = handle + 632;
            v179 = 2080;
            v180 = " ";
            v181 = 1024;
            v182 = v74;
            v183 = 2048;
            v184 = v75;
            v185 = 2048;
            *v186 = v76;
            *&v186[8] = 2048;
            *&v186[10] = v77;
            _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Receiving capsule type 0x%llx length %llu", buf, 0x44u);
          }
        }

        v122[0] = MEMORY[0x1E69E9820];
        v122[1] = 0x40000000;
        v123 = ___ZL41nw_protocol_http3_stream_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_124;
        v124 = &unk_1E6A38F80;
        v128 = handle;
        v129 = a1;
        v125 = v134;
        v126 = &v130;
        v127 = v168;
        v42 = *(handle + 27);
        do
        {
          if (!v42)
          {
            break;
          }

          v43 = *(v42 + 32);
          v44 = v123(v122);
          v42 = v43;
        }

        while ((v44 & 1) != 0);
        if (*(v169 + 3) && v131[3])
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v45 = v131[3];
          *buf = 136446466;
          v176 = "nw_protocol_http3_stream_get_input_frames";
          v177 = 2048;
          v178 = v45;
          v46 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v120 = 0;
          if (!__nwlog_fault(v46, &type, &v120))
          {
            goto LABEL_84;
          }

          if (type != OS_LOG_TYPE_FAULT)
          {
            if (v120 == 1)
            {
              v53 = __nw_create_backtrace_string();
              v54 = __nwlog_obj();
              v103 = type;
              v55 = os_log_type_enabled(v54, type);
              if (v53)
              {
                if (v55)
                {
                  v56 = v131[3];
                  *buf = 136446722;
                  v176 = "nw_protocol_http3_stream_get_input_frames";
                  v177 = 2048;
                  v178 = v56;
                  v179 = 2082;
                  v180 = v53;
                  _os_log_impl(&dword_181A37000, v54, v103, "%{public}s Read capsule data, but still have remaining length %llu, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v53);
                goto LABEL_84;
              }

              if (!v55)
              {
                goto LABEL_84;
              }

              v60 = v131[3];
              *buf = 136446466;
              v176 = "nw_protocol_http3_stream_get_input_frames";
              v177 = 2048;
              v178 = v60;
              v50 = v54;
              v51 = v103;
              v52 = "%{public}s Read capsule data, but still have remaining length %llu, no backtrace";
            }

            else
            {
              v57 = __nwlog_obj();
              v58 = type;
              if (!os_log_type_enabled(v57, type))
              {
                goto LABEL_84;
              }

              v59 = v131[3];
              *buf = 136446466;
              v176 = "nw_protocol_http3_stream_get_input_frames";
              v177 = 2048;
              v178 = v59;
              v50 = v57;
              v51 = v58;
              v52 = "%{public}s Read capsule data, but still have remaining length %llu, backtrace limit exceeded";
            }

LABEL_83:
            _os_log_impl(&dword_181A37000, v50, v51, v52, buf, 0x16u);
            goto LABEL_84;
          }

          v47 = __nwlog_obj();
          v48 = type;
          if (os_log_type_enabled(v47, type))
          {
            v49 = v131[3];
            *buf = 136446466;
            v176 = "nw_protocol_http3_stream_get_input_frames";
            v177 = 2048;
            v178 = v49;
            v50 = v47;
            v51 = v48;
            v52 = "%{public}s Read capsule data, but still have remaining length %llu";
            goto LABEL_83;
          }

LABEL_84:
          if (v46)
          {
            free(v46);
          }

          v61 = *(v169 + 3);
          v28 = (handle + 216);
          if (v61)
          {
            dispatch_release(v61);
            *(v169 + 3) = 0;
          }
        }

        _Block_object_dispose(&v130, 8);
        _Block_object_dispose(v134, 8);
      }

LABEL_89:
      if (*(v169 + 3))
      {
        v62 = nw_frame_create(0, 0, 0, nw_protocol_http3_capsule_frame_finalizer, 0);
        metadata_for_capsule = nw_http_create_metadata_for_capsule(v154[3], *(v169 + 3));
        nw_frame_set_metadata(v62, metadata_for_capsule, 1, 1);
        if (metadata_for_capsule)
        {
          os_release(metadata_for_capsule);
        }

        *(v62 + 32) = 0;
        v64 = a6->tqh_last;
        *(v62 + 40) = v64;
        *v64 = v62;
        a6->tqh_last = (v62 + 32);
        v65 = *(v169 + 3);
        if (v65)
        {
          dispatch_release(v65);
          *(v169 + 3) = 0;
        }

        ++v107;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v66 = gLogObj;
        v28 = (handle + 216);
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v67 = v154[3];
          *buf = 136446466;
          v176 = "nw_protocol_http3_stream_get_input_frames";
          v177 = 2048;
          v178 = v67;
          _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_INFO, "%{public}s Receiving capsule type 0x%llx", buf, 0x16u);
        }
      }

      _Block_object_dispose(&v149, 8);
      _Block_object_dispose(&v153, 8);
      _Block_object_dispose(&v157, 8);
      _Block_object_dispose(v161, 8);
      _Block_object_dispose(v163, 8);
      _Block_object_dispose(&v164, 8);
      _Block_object_dispose(v168, 8);
    }

    if (v107 >= a5)
    {
      return v107;
    }
  }

  if (a5 > v107)
  {
    v78 = *(handle + 12);
    if (v78)
    {
      v79 = (*(*(v78 + 24) + 80))();
      if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
      {
        v98 = v79;
        v99 = __nwlog_obj();
        v100 = os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG);
        v79 = v98;
        if (v100)
        {
          v101 = *(*(handle + 43) + 1304);
          v102 = *(handle + 30);
          *buf = 136447490;
          v176 = "nw_protocol_http3_stream_get_input_frames";
          v177 = 2082;
          v178 = handle + 632;
          v179 = 2080;
          v180 = " ";
          v181 = 1024;
          v182 = v101;
          v183 = 2048;
          v184 = v102;
          v185 = 1024;
          *v186 = v98;
          _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> read %u input datagrams", buf, 0x36u);
          v79 = v98;
        }
      }

      return v79 + v107;
    }
  }

  return v107;
}

uint64_t nw_http3_framer_get_input_frames(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, void *a5, void *a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  if (a1[2])
  {

    return nw_http3_framer_deliver_http3_frame_body(a1, a2, a3, a4, a5, a6, a7, a9);
  }

  else
  {
    v15 = a1[6];
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_8:
    v16 = a1[5];
    if (!v16)
    {
      return 0;
    }

    v17 = *(v16 + 24);
    if (!v17)
    {
      return 0;
    }

    v18 = *(v17 + 80);
    if (!v18)
    {
      return 0;
    }

    v33 = 0;
    v34 = &v33;
    if (!v18())
    {
      return 0;
    }

    if (v33)
    {
      v19 = a1[7];
      *v19 = v33;
      v20 = v34;
      *(v33 + 40) = v19;
      a1[7] = v20;
    }

    v15 = a1[6];
LABEL_15:
    while (1)
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x2000000000;
      v36 = 0;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 0x40000000;
      v28 = ___ZL32nw_http3_framer_get_input_framesP15nw_http3_framerjjjP21nw_http3_frame_type_tPyPbPjP16nw_frame_array_s_block_invoke;
      v29 = &unk_1E6A38FF8;
      v30 = &v33;
      v31 = a1;
      v32 = a8;
      do
      {
        if (!v15)
        {
          break;
        }

        v21 = *(v15 + 32);
        v22 = v28(v27);
        v15 = v21;
      }

      while ((v22 & 1) != 0);
      if (*(v34 + 24) == 1)
      {
        break;
      }

      _Block_object_dispose(&v33, 8);
      v15 = a1[6];
      if (!v15)
      {
        goto LABEL_8;
      }
    }

    v23 = nw_http3_framer_deliver_http3_frame_body(a1, a2, a3, a4, a5, a6, a7, a9);
    _Block_object_dispose(&v33, 8);
    return v23;
  }
}

void nw_flow_replay_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v4 = handle->handler;
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      mode = v6->mode;

      if (mode == 2)
      {
        nw_flow_replay_send_initial_data_to_candidates(v6, handle);
        default_input_handler = a1->default_input_handler;
        if (default_input_handler)
        {
          callbacks = default_input_handler->callbacks;
          if (callbacks)
          {
            output_available = callbacks->output_available;
            if (output_available)
            {
              output_available();
            }
          }
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          if (mode > 5)
          {
            v12 = "unknown-mode";
          }

          else
          {
            v12 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v32 = "nw_flow_replay_output_available";
          v33 = 2082;
          v34 = v12;
          v35 = 2082;
          v36 = "flow";
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

LABEL_14:

      return;
    }

    v17 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_flow_replay_output_available";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v18, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v32 = "nw_flow_replay_output_available";
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v29 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v25 = type;
        v26 = os_log_type_enabled(v19, type);
        if (backtrace_string)
        {
          if (v26)
          {
            *buf = 136446466;
            v32 = "nw_flow_replay_output_available";
            v33 = 2082;
            v34 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_50;
        }

        if (v26)
        {
          *buf = 136446210;
          v32 = "nw_flow_replay_output_available";
          _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v19 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v32 = "nw_flow_replay_output_available";
          _os_log_impl(&dword_181A37000, v19, v28, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_50:
    if (v18)
    {
      free(v18);
    }

    goto LABEL_14;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v32 = "nw_flow_replay_output_available";
  v14 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (__nwlog_fault(v14, &type, &v29))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v32 = "nw_flow_replay_output_available";
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v29 == 1)
    {
      v21 = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v15, type);
      if (v21)
      {
        if (v23)
        {
          *buf = 136446466;
          v32 = "nw_flow_replay_output_available";
          v33 = 2082;
          v34 = v21;
          _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v21);
        goto LABEL_45;
      }

      if (v23)
      {
        *buf = 136446210;
        v32 = "nw_flow_replay_output_available";
        _os_log_impl(&dword_181A37000, v15, v22, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v32 = "nw_flow_replay_output_available";
        _os_log_impl(&dword_181A37000, v15, v27, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_45:
  if (v14)
  {
    free(v14);
  }
}
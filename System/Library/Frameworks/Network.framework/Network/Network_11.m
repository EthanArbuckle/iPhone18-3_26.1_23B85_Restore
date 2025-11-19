void __nw_protocol_copy_quic_connection_definition_block_invoke()
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  _nw_protocol_get_quic_connection_protocol_identifier(v17);
  v0 = nw_protocol_definition_create_with_identifier(v17);
  v1 = &qword_1ED411000;
  v2 = nw_protocol_copy_quic_connection_definition_quic_definition;
  nw_protocol_copy_quic_connection_definition_quic_definition = v0;

  nw_protocol_definition_set_metadata_copy_reply(nw_protocol_copy_quic_connection_definition_quic_definition, nw_quic_metadata_create_reply, nw_quic_metadata_copy_original, nw_quic_metadata_set_original);
  nw_protocol_definition_set_metadata_copy_message_options(nw_protocol_copy_quic_connection_definition_quic_definition, nw_quic_metadata_copy_stream_options);
  v3 = nw_protocol_copy_quic_connection_definition_quic_definition;
  if (v3)
  {
    v3[192] |= 6u;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_definition_set_message_is_stream";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v7, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_definition_set_message_is_stream";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else
    {
      if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v13 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v20 = "nw_protocol_definition_set_message_is_stream";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          v1 = &qword_1ED411000;
          free(backtrace_string);
        }

        else
        {
          if (v13)
          {
            *buf = 136446210;
            v20 = "nw_protocol_definition_set_message_is_stream";
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
          }

          v1 = &qword_1ED411000;
        }

        goto LABEL_25;
      }

      v8 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_definition_set_message_is_stream";
        _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
LABEL_3:

  nw_protocol_definition_set_cache_entry_deallocator(v1[165], nw_quic_deallocate_cache_entry);
  nw_protocol_definition_set_should_flush_cache_entry(v1[165], nw_quic_should_flush_cache_entry);
  v4 = v1[165];
  v5 = v4;
  if (quic_fillout_definition_callbacks_override)
  {
    quic_fillout_definition_callbacks_override(v4);
LABEL_7:

    nw_protocol_definition_register(v1[165]);
    return;
  }

  if (MEMORY[0x1EEE98840])
  {
    quic_fillout_definition_callbacks();
    goto LABEL_7;
  }
}

uint64_t _nw_protocol_get_quic_connection_protocol_identifier(uint64_t a1)
{
  if (qword_1ED4100E8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_181B0D734(a1);
}

void nw_protocol_definition_set_metadata_copy_message_options(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_definition_set_metadata_copy_message_options";
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
        v22 = "nw_protocol_definition_set_metadata_copy_message_options";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
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
          v22 = "nw_protocol_definition_set_metadata_copy_message_options";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
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
        v22 = "nw_protocol_definition_set_metadata_copy_message_options";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_metadata_copy_message_options";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    nw_protocol_definition_initialize_common_state(v3);
    v4->common_state->var6 = a2;
    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_definition_set_metadata_copy_message_options";
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
      v22 = "nw_protocol_definition_set_metadata_copy_message_options";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null copy_message_options", buf, 0xCu);
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
      v22 = "nw_protocol_definition_set_metadata_copy_message_options";
      _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null copy_message_options, backtrace limit exceeded", buf, 0xCu);
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
      v22 = "nw_protocol_definition_set_metadata_copy_message_options";
      _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null copy_message_options, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v16)
  {
    *buf = 136446466;
    v22 = "nw_protocol_definition_set_metadata_copy_message_options";
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null copy_message_options, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_protocol_definition_set_should_flush_cache_entry(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_definition_set_should_flush_cache_entry";
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
        v22 = "nw_protocol_definition_set_should_flush_cache_entry";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
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
          v22 = "nw_protocol_definition_set_should_flush_cache_entry";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
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
        v22 = "nw_protocol_definition_set_should_flush_cache_entry";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_should_flush_cache_entry";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    nw_protocol_definition_initialize_common_state(v3);
    v4->common_state->var8 = a2;
    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_definition_set_should_flush_cache_entry";
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
      v22 = "nw_protocol_definition_set_should_flush_cache_entry";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null should_flush_cache_function", buf, 0xCu);
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
      v22 = "nw_protocol_definition_set_should_flush_cache_entry";
      _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null should_flush_cache_function, backtrace limit exceeded", buf, 0xCu);
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
      v22 = "nw_protocol_definition_set_should_flush_cache_entry";
      _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null should_flush_cache_function, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v16)
  {
    *buf = 136446466;
    v22 = "nw_protocol_definition_set_should_flush_cache_entry";
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null should_flush_cache_function, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_protocol_definition_set_instance_state_allocator(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_definition_set_instance_state_allocator";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_instance_state_allocator";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v30 = "nw_protocol_definition_set_instance_state_allocator";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v9)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v9);
        goto LABEL_5;
      }

      if (v18)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_instance_state_allocator";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_instance_state_allocator";
        _os_log_impl(&dword_181A37000, v10, v24, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_definition_set_instance_state_allocator";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_instance_state_allocator";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null allocate_function", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_instance_state_allocator";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null allocate_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v19 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v10, type);
    if (!v19)
    {
      if (v21)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_instance_state_allocator";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null allocate_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v30 = "nw_protocol_definition_set_instance_state_allocator";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null allocate_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!a3)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_protocol_definition_set_instance_state_allocator";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_instance_state_allocator";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null deallocate_function", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_instance_state_allocator";
        _os_log_impl(&dword_181A37000, v10, v26, "%{public}s called with null deallocate_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v19 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v10, type);
    if (!v19)
    {
      if (v23)
      {
        *buf = 136446210;
        v30 = "nw_protocol_definition_set_instance_state_allocator";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null deallocate_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v30 = "nw_protocol_definition_set_instance_state_allocator";
      v31 = 2082;
      v32 = v19;
      _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null deallocate_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v19);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  nw_protocol_definition_initialize_extended_state(v5);
  extended_state = v6->extended_state;
  extended_state->var0 = a2;
  extended_state->var1 = a3;
LABEL_5:
}

void nw_protocol_definition_set_link_state_update(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var17 = a2;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_link_state_update";
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
        v16 = "nw_protocol_definition_set_link_state_update";
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
          v16 = "nw_protocol_definition_set_link_state_update";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_link_state_update";
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
        v16 = "nw_protocol_definition_set_link_state_update";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

void nw_protocol_definition_set_copy_metadata(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var23 = a2;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_copy_metadata";
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
        v16 = "nw_protocol_definition_set_copy_metadata";
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
          v16 = "nw_protocol_definition_set_copy_metadata";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_copy_metadata";
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
        v16 = "nw_protocol_definition_set_copy_metadata";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

void nw_protocol_definition_set_path_changed_handler(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var27 = a2;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_path_changed_handler";
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
        v16 = "nw_protocol_definition_set_path_changed_handler";
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
          v16 = "nw_protocol_definition_set_path_changed_handler";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_path_changed_handler";
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
        v16 = "nw_protocol_definition_set_path_changed_handler";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

void nw_protocol_definition_set_fallback_changed_handler(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var28 = a2;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_fallback_changed_handler";
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
        v16 = "nw_protocol_definition_set_fallback_changed_handler";
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
          v16 = "nw_protocol_definition_set_fallback_changed_handler";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_fallback_changed_handler";
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
        v16 = "nw_protocol_definition_set_fallback_changed_handler";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

void nw_protocol_definition_set_message_size_handler(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var29 = a2;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_message_size_handler";
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
        v16 = "nw_protocol_definition_set_message_size_handler";
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
          v16 = "nw_protocol_definition_set_message_size_handler";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_message_size_handler";
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
        v16 = "nw_protocol_definition_set_message_size_handler";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

void nw_protocol_definition_set_copy_data_transfer_snapshot(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var25 = a2;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_copy_data_transfer_snapshot";
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
        v16 = "nw_protocol_definition_set_copy_data_transfer_snapshot";
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
          v16 = "nw_protocol_definition_set_copy_data_transfer_snapshot";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_copy_data_transfer_snapshot";
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
        v16 = "nw_protocol_definition_set_copy_data_transfer_snapshot";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

void nw_protocol_definition_set_copy_quic_info(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var26 = a2;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_copy_quic_info";
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
        v16 = "nw_protocol_definition_set_copy_quic_info";
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
          v16 = "nw_protocol_definition_set_copy_quic_info";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_copy_quic_info";
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
        v16 = "nw_protocol_definition_set_copy_quic_info";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

void nw_protocol_definition_set_probe_connectivity_update(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var21 = a2;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_probe_connectivity_update";
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
        v16 = "nw_protocol_definition_set_probe_connectivity_update";
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
          v16 = "nw_protocol_definition_set_probe_connectivity_update";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_probe_connectivity_update";
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
        v16 = "nw_protocol_definition_set_probe_connectivity_update";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_protocol_definition_register(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_protocol_register_handle(v1 + 8, v1, nw_protocol_implementation_create, nw_protocol_implementation_accept);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_register";
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
        v16 = "nw_protocol_definition_register";
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
          v16 = "nw_protocol_definition_register";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_register";
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
        v16 = "nw_protocol_definition_register";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_protocol_register_handle(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal();
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_protocol_register_handle";
    v29 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v29, &type, &v37))
    {
      goto LABEL_77;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v37 != 1)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (!os_log_type_enabled(v30, type))
        {
          goto LABEL_77;
        }

        *buf = 136446210;
        v40 = "nw_protocol_register_handle";
        v32 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_76;
      }

      backtrace_string = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v31 = type;
      v34 = os_log_type_enabled(v30, type);
      if (!backtrace_string)
      {
        if (!v34)
        {
          goto LABEL_77;
        }

        *buf = 136446210;
        v40 = "nw_protocol_register_handle";
        v32 = "%{public}s called with null handle, no backtrace";
        goto LABEL_76;
      }

      if (v34)
      {
        *buf = 136446466;
        v40 = "nw_protocol_register_handle";
        v41 = 2082;
        v42 = backtrace_string;
        v35 = "%{public}s called with null handle, dumping backtrace:%{public}s";
LABEL_66:
        _os_log_impl(&dword_181A37000, v30, v31, v35, buf, 0x16u);
      }

LABEL_67:
      free(backtrace_string);
      goto LABEL_77;
    }

    v30 = __nwlog_obj();
    v31 = type;
    if (!os_log_type_enabled(v30, type))
    {
      goto LABEL_77;
    }

    *buf = 136446210;
    v40 = "nw_protocol_register_handle";
    v32 = "%{public}s called with null handle";
LABEL_76:
    _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
LABEL_77:
    if (v29)
    {
      free(v29);
    }

    return 0;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v40 = "nw_protocol_register_handle";
    v29 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v29, &type, &v37))
    {
      goto LABEL_77;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      v40 = "nw_protocol_register_handle";
      v32 = "%{public}s called with null create_handle_function";
      goto LABEL_76;
    }

    if (v37 != 1)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      v40 = "nw_protocol_register_handle";
      v32 = "%{public}s called with null create_handle_function, backtrace limit exceeded";
      goto LABEL_76;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v31 = type;
    v36 = os_log_type_enabled(v30, type);
    if (backtrace_string)
    {
      if (v36)
      {
        *buf = 136446466;
        v40 = "nw_protocol_register_handle";
        v41 = 2082;
        v42 = backtrace_string;
        v35 = "%{public}s called with null create_handle_function, dumping backtrace:%{public}s";
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    if (!v36)
    {
      goto LABEL_77;
    }

    *buf = 136446210;
    v40 = "nw_protocol_register_handle";
    v32 = "%{public}s called with null create_handle_function, no backtrace";
    goto LABEL_76;
  }

  if (*(a1 + 36) == 2)
  {
    v8 = a4;
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v9 = &g_registration_list;
  while (1)
  {
    v9 = *v9;
    v10 = v9 == 0;
    if (!v9)
    {
      break;
    }

    if (*a1 == v9[4] && *(a1 + 8) == v9[5] && *(a1 + 16) == v9[6] && *(a1 + 24) == v9[7] && *(a1 + 32) == v9[8])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      v40 = "nw_protocol_register_handle";
      v41 = 2082;
      v42 = a1;
      v15 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v37 = 0;
      if (!__nwlog_fault(v15, &type, &v37))
      {
        goto LABEL_46;
      }

      if (type != OS_LOG_TYPE_FAULT)
      {
        if (v37 == 1)
        {
          v27 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          v17 = type;
          v28 = os_log_type_enabled(gLogObj, type);
          if (v27)
          {
            if (v28)
            {
              *buf = 136446722;
              v40 = "nw_protocol_register_handle";
              v41 = 2082;
              v42 = a1;
              v43 = 2082;
              v44 = v27;
              _os_log_impl(&dword_181A37000, v16, v17, "%{public}s Protocol identifier %{public}s is already registered, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v27);
            goto LABEL_46;
          }

          if (!v28)
          {
            goto LABEL_46;
          }

          *buf = 136446466;
          v40 = "nw_protocol_register_handle";
          v41 = 2082;
          v42 = a1;
          v18 = "%{public}s Protocol identifier %{public}s is already registered, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          v17 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_46;
          }

          *buf = 136446466;
          v40 = "nw_protocol_register_handle";
          v41 = 2082;
          v42 = a1;
          v18 = "%{public}s Protocol identifier %{public}s is already registered, backtrace limit exceeded";
        }

LABEL_45:
        _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0x16u);
        goto LABEL_46;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v40 = "nw_protocol_register_handle";
        v41 = 2082;
        v42 = a1;
        v18 = "%{public}s Protocol identifier %{public}s is already registered";
        goto LABEL_45;
      }

LABEL_46:
      if (v15)
      {
        free(v15);
      }

LABEL_48:
      os_unfair_lock_unlock(&nw_protocol_registrar_lock);
      return v10;
    }
  }

  v19 = malloc_type_calloc(1uLL, 0x78uLL, 0x311BF47EuLL);
  if (v19)
  {
LABEL_29:
    v22 = *a1;
    v23 = *(a1 + 16);
    v19[8] = *(a1 + 32);
    *(v19 + 2) = v22;
    *(v19 + 3) = v23;
    v19[12] = a3;
    v24 = os_retain(a2);
    v19[13] = v8;
    v19[14] = v24;
    v25 = g_registration_list;
    *v19 = g_registration_list;
    if (v25)
    {
      *(v25 + 8) = v19;
    }

    g_registration_list = v19;
    v19[1] = &g_registration_list;
    if (v8)
    {
      v26 = g_many_to_one_list;
      v19[2] = g_many_to_one_list;
      if (v26)
      {
        *(v26 + 24) = v19 + 2;
      }

      g_many_to_one_list = v19;
      v19[3] = &g_many_to_one_list;
    }

    v19[9] = _nw_array_create();
    goto LABEL_48;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v40 = "nw_protocol_register_handle";
  v41 = 2048;
  v42 = 1;
  v43 = 2048;
  v44 = 120;
  v20 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v20);
  if (!result)
  {
    free(v20);
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

void nw_protocol_definition_set_maximum_message_size_update(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var20 = a2;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_maximum_message_size_update";
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
        v16 = "nw_protocol_definition_set_maximum_message_size_update";
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
          v16 = "nw_protocol_definition_set_maximum_message_size_update";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_maximum_message_size_update";
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
        v16 = "nw_protocol_definition_set_maximum_message_size_update";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

void sub_181B15964()
{
  sub_181B15A8C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_181B15A8C()
{
  if (!qword_1ED4105A8[0])
  {
    sub_182AD2868();
    v0 = sub_182AD39B8();
    if (!v1)
    {
      atomic_store(v0, qword_1ED4105A8);
    }
  }
}

uint64_t __nw_proxy_copy_http_connect_definition_block_invoke()
{
  if (nw_protocol_http_connect_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_connect_identifier::onceToken, &__block_literal_global_38383);
  }

  v0 = nw_protocol_definition_create_with_identifier(&g_http_connect_protocol_identifier);
  v1 = nw_proxy_copy_http_connect_definition::proxy_definition;
  nw_proxy_copy_http_connect_definition::proxy_definition = v0;

  nw_protocol_definition_set_options_allocator(nw_proxy_copy_http_connect_definition::proxy_definition, nw_proxy_allocate_options, nw_proxy_copy_options, nw_proxy_deallocate_options);
  nw_protocol_definition_set_options_equality_check(nw_proxy_copy_http_connect_definition::proxy_definition, nw_proxy_option_is_equal);
  v2 = nw_proxy_copy_http_connect_definition::proxy_definition;

  return nw_protocol_register_handle(&g_http_connect_protocol_identifier, v2, nw_protocol_http_connect_create, 0);
}

void nw_protocol_definition_set_options_allocator(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a1;
  if (!v7)
  {
    v8 = 0;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_definition_set_options_allocator";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v10, &type, &v32))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_protocol_definition_set_options_allocator";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null definition", buf, 0xCu);
      }

      goto LABEL_70;
    }

    if (v32 != 1)
    {
      v11 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_protocol_definition_set_options_allocator";
        _os_log_impl(&dword_181A37000, v11, v28, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_70;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v35 = "nw_protocol_definition_set_options_allocator";
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }

      goto LABEL_70;
    }

    if (v21)
    {
      *buf = 136446466;
      v35 = "nw_protocol_definition_set_options_allocator";
      v36 = 2082;
      v37 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_46:

    free(backtrace_string);
    goto LABEL_71;
  }

  if (!a2)
  {
    v8 = v7;
    v13 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_definition_set_options_allocator";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v10, &type, &v32))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_protocol_definition_set_options_allocator";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null allocate_function", buf, 0xCu);
      }

      goto LABEL_70;
    }

    if (v32 != 1)
    {
      v11 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_protocol_definition_set_options_allocator";
        _os_log_impl(&dword_181A37000, v11, v29, "%{public}s called with null allocate_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_70;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v35 = "nw_protocol_definition_set_options_allocator";
        _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null allocate_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_70;
    }

    if (v23)
    {
      *buf = 136446466;
      v35 = "nw_protocol_definition_set_options_allocator";
      v36 = 2082;
      v37 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null allocate_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_46;
  }

  if (!a3)
  {
    v8 = v7;
    v15 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_definition_set_options_allocator";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v10, &type, &v32))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_protocol_definition_set_options_allocator";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null copy_function", buf, 0xCu);
      }

      goto LABEL_70;
    }

    if (v32 != 1)
    {
      v11 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_protocol_definition_set_options_allocator";
        _os_log_impl(&dword_181A37000, v11, v30, "%{public}s called with null copy_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_70;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v24 = type;
    v25 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446210;
        v35 = "nw_protocol_definition_set_options_allocator";
        _os_log_impl(&dword_181A37000, v11, v24, "%{public}s called with null copy_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_70;
    }

    if (v25)
    {
      *buf = 136446466;
      v35 = "nw_protocol_definition_set_options_allocator";
      v36 = 2082;
      v37 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v24, "%{public}s called with null copy_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_46;
  }

  if (a4)
  {
    v7[11] = a2;
    v7[12] = a3;
    v7[13] = a4;
    goto LABEL_6;
  }

  v8 = v7;
  v17 = __nwlog_obj();
  *buf = 136446210;
  v35 = "nw_protocol_definition_set_options_allocator";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v10, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_protocol_definition_set_options_allocator";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null deallocate_function", buf, 0xCu);
      }

LABEL_70:

      goto LABEL_71;
    }

    if (v32 != 1)
    {
      v11 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v35 = "nw_protocol_definition_set_options_allocator";
        _os_log_impl(&dword_181A37000, v11, v31, "%{public}s called with null deallocate_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_70;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v26 = type;
    v27 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v27)
      {
        *buf = 136446210;
        v35 = "nw_protocol_definition_set_options_allocator";
        _os_log_impl(&dword_181A37000, v11, v26, "%{public}s called with null deallocate_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_70;
    }

    if (v27)
    {
      *buf = 136446466;
      v35 = "nw_protocol_definition_set_options_allocator";
      v36 = 2082;
      v37 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v26, "%{public}s called with null deallocate_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_46;
  }

LABEL_71:
  if (v10)
  {
    free(v10);
  }

  v7 = v8;
LABEL_6:
}

uint64_t sub_181B1649C(uint64_t a1)
{
  result = sub_181CA7AF4(&qword_1ED40FE58, type metadata accessor for CProtocol.COptions);
  *(a1 + 8) = result;
  return result;
}

void ____nwlog_connection_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    gconnectionLogObj = os_log_create(nw_oslog_subsystem, "connection");
  }
}

void nw_protocol_definition_set_options_equality_check(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v3[14] = a2;
      goto LABEL_4;
    }

    v4 = v3;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_definition_set_options_equality_check";
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
          v21 = "nw_protocol_definition_set_options_equality_check";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null check_equality_function", buf, 0xCu);
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
          v21 = "nw_protocol_definition_set_options_equality_check";
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null check_equality_function, backtrace limit exceeded", buf, 0xCu);
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
          v21 = "nw_protocol_definition_set_options_equality_check";
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null check_equality_function, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "nw_protocol_definition_set_options_equality_check";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null check_equality_function, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_definition_set_options_equality_check";
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
          v21 = "nw_protocol_definition_set_options_equality_check";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
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
          v21 = "nw_protocol_definition_set_options_equality_check";
          _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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
          v21 = "nw_protocol_definition_set_options_equality_check";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v13)
      {
        *buf = 136446466;
        v21 = "nw_protocol_definition_set_options_equality_check";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
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

double __nw_protocol_http_connect_identifier_block_invoke()
{
  dword_1ED4115B4 = 0;
  unk_1ED4115A5 = 0u;
  strcpy(&g_http_connect_protocol_identifier, "http_connect");
  *&result = 0x100000004;
  qword_1ED4115B8 = 0x100000004;
  qword_1ED411420 = nw_protocol_default_replace_input_handler;
  qword_1ED411458 = nw_protocol_default_output_available;
  qword_1ED4114D0 = nw_protocol_default_output_finished;
  qword_1ED411518 = nw_protocol_default_input_flush;
  qword_1ED411508 = nw_protocol_default_get_message_properties;
  qword_1ED411478 = nw_protocol_default_link_state;
  qword_1ED4114B8 = nw_protocol_default_updated_path;
  qword_1ED4114D8 = nw_protocol_default_get_output_local;
  qword_1ED4114E0 = nw_protocol_default_get_output_interface;
  qword_1ED411428 = nw_protocol_default_connect;
  qword_1ED411430 = nw_protocol_default_disconnect;
  qword_1ED411510 = nw_protocol_default_reset;
  qword_1ED4114C0 = nw_protocol_default_supports_external_data;
  qword_1ED4114E8 = nw_protocol_default_waiting_for_output;
  qword_1ED4114A0 = nw_protocol_default_register_notification;
  qword_1ED4114A8 = nw_protocol_default_unregister_notification;
  qword_1ED4114B0 = nw_protocol_default_notify;
  qword_1ED4114F8 = nw_protocol_default_add_listen_handler;
  qword_1ED411500 = nw_protocol_default_remove_listen_handler;
  g_http_connect_protocol_callbacks = nw_protocol_http_connect_add_input_handler;
  qword_1ED411418 = nw_protocol_http_connect_remove_input_handler;
  qword_1ED411450 = nw_protocol_http_connect_input_available;
  qword_1ED4114C8 = nw_protocol_http_connect_input_finished;
  qword_1ED411460 = nw_protocol_http_connect_get_input_frames;
  qword_1ED411468 = nw_protocol_http_connect_get_output_frames;
  qword_1ED411470 = nw_protocol_http_connect_finalize_output_frames;
  qword_1ED411438 = nw_protocol_http_connect_connected;
  qword_1ED411440 = nw_protocol_http_connect_disconnected;
  qword_1ED411448 = nw_protocol_http_connect_error;
  qword_1ED4114F0 = nw_protocol_http_connect_copy_info;
  qword_1ED411480 = nw_protocol_http_connect_get_parameters;
  qword_1ED411488 = nw_protocol_http_connect_get_path;
  qword_1ED411490 = nw_protocol_http_connect_get_local_endpoint;
  qword_1ED411498 = nw_protocol_http_connect_get_remote_endpoint;
  return result;
}

uint64_t nw_protocol_register(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal();
  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v4 = &g_registration_list;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (*a1 == v4[4] && a1[1] == v4[5] && a1[2] == v4[6] && a1[3] == v4[7] && a1[4] == v4[8])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v17 = "nw_protocol_register";
        v18 = 2082;
        v19 = a1;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Protocol %{public}s is already registered", buf, 0x16u);
      }

LABEL_25:
      os_unfair_lock_unlock(&nw_protocol_registrar_lock);
      return v4 == 0;
    }
  }

  v10 = malloc_type_calloc(1uLL, 0x78uLL, 0x2DC2CA96uLL);
  if (v10)
  {
LABEL_22:
    v13 = *a1;
    v14 = *(a1 + 1);
    v10[8] = a1[4];
    *(v10 + 2) = v13;
    *(v10 + 3) = v14;
    v10[10] = a2;
    v15 = g_registration_list;
    *v10 = g_registration_list;
    if (v15)
    {
      *(v15 + 8) = v10;
    }

    g_registration_list = v10;
    v10[1] = &g_registration_list;
    goto LABEL_25;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v17 = "nw_protocol_register";
  v18 = 2048;
  v19 = 1;
  v20 = 2048;
  v21 = 120;
  v11 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v11);
  if (!result)
  {
    free(v11);
    v10 = 0;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_181B16F3C()
{
  v0 = nw_protocol_copy_udp_definition();
  if (qword_1ED410110 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = unk_1ED410158;
  v2 = byte_1ED410160;
  LOWORD(xmmword_1ED40FF68) = word_1ED410148;
  *(&xmmword_1ED40FF68 + 1) = qword_1ED410150;
  unk_1ED40FF78 = unk_1ED410158;
  byte_1ED40FF80 = byte_1ED410160;
  unk_1ED40FF89 = 0;
  *algn_1ED40FF81 = 0;
  byte_1ED40FF91 = 1;
  qword_1ED40FF98 = v0;
  v3 = qword_1ED410150;

  return sub_181F49A24(v3, v1, v2);
}

uint64_t __nw_protocol_setup_udp_definition_block_invoke()
{
  if (nw_protocol_udp_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
  }

  v0 = nw_protocol_definition_create_with_identifier(&nw_protocol_udp_identifier::identifier);
  v1 = g_udp_definition;
  g_udp_definition = v0;

  v2 = g_udp_definition;

  return nw_protocol_register_handle(&nw_protocol_udp_identifier::identifier, v2, nw_protocol_udp_create, 0);
}

double __nw_protocol_udp_identifier_block_invoke()
{
  dword_1ED41158C = 0;
  unk_1ED411584 = 0;
  unk_1ED411574 = 0u;
  nw_protocol_udp_identifier::identifier = 7365749;
  *&result = 0x100000003;
  qword_1ED411590 = 0x100000003;
  return result;
}

id nw_protocol_copy_swift_udp_definition()
{
  if (nw_protocol_setup_swift_udp_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_setup_swift_udp_definition_onceToken, &__block_literal_global_47871);
  }

  v1 = g_swift_udp_definition;

  return v1;
}

uint64_t sub_181B17114()
{
  v0 = nw_protocol_copy_swift_udp_definition();
  if (qword_1ED40FF48 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = unk_1ED411C90;
  v2 = byte_1ED411C98;
  LOWORD(xmmword_1ED411BB8) = word_1ED411C80;
  *(&xmmword_1ED411BB8 + 1) = qword_1ED411C88;
  unk_1ED411BC8 = unk_1ED411C90;
  byte_1ED411BD0 = byte_1ED411C98;
  unk_1ED411BD9 = 0;
  *algn_1ED411BD1 = 0;
  byte_1ED411BE1 = 1;
  qword_1ED411BE8 = v0;
  v3 = qword_1ED411C88;

  return sub_181F49A24(v3, v1, v2);
}

uint64_t __nw_protocol_setup_swift_udp_definition_block_invoke()
{
  if (nw_protocol_swift_udp_identifier_onceToken != -1)
  {
    dispatch_once(&nw_protocol_swift_udp_identifier_onceToken, &__block_literal_global_2_47873);
  }

  v0 = nw_protocol_definition_create_with_identifier(&nw_protocol_swift_udp_identifier_identifier);
  v1 = g_swift_udp_definition;
  g_swift_udp_definition = v0;

  v2 = g_swift_udp_definition;

  return nw_protocol_register_handle(&nw_protocol_swift_udp_identifier_identifier, v2, nw_protocol_swift_udp_create, 0);
}

double __nw_protocol_swift_udp_identifier_block_invoke()
{
  qword_1ED410F70 = 0;
  *algn_1ED410F62 = 0u;
  strcpy(&nw_protocol_swift_udp_identifier_identifier, "swift-udp");
  *&result = 0x100000003;
  qword_1ED410F78 = 0x100000003;
  return result;
}

uint64_t sub_181B172A0()
{
  v0 = nw_protocol_copy_ip_definition();
  if (qword_1ED410268 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = unk_1ED411D50;
  v2 = byte_1ED411D58;
  LOWORD(xmmword_1ED411D60) = word_1ED411D40;
  *(&xmmword_1ED411D60 + 1) = qword_1ED411D48;
  unk_1ED411D70 = unk_1ED411D50;
  byte_1ED411D78 = byte_1ED411D58;
  unk_1ED411D81 = 0;
  *algn_1ED411D79 = 0;
  byte_1ED411D89 = 1;
  qword_1ED411D90 = v0;
  v3 = qword_1ED411D48;

  return sub_181F49A24(v3, v1, v2);
}

nw_protocol_definition_t nw_protocol_copy_ip_definition(void)
{
  if (nw_protocol_setup_ip_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_setup_ip_definition_onceToken, &__block_literal_global_2_55810);
  }

  v1 = g_ip_definition;

  return v1;
}

void __nw_protocol_setup_ip_definition_block_invoke()
{
  if (nw_protocol_ip_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_ip_identifier::onceToken, &__block_literal_global_90960);
  }

  v0 = nw_protocol_definition_create_with_identifier(&nw_protocol_ip_identifier::identifier);
  v1 = g_ip_definition;
  g_ip_definition = v0;
}

uint64_t __nw_protocol_ip_identifier_block_invoke()
{
  qword_1ED4117F0 = 0;
  unk_1ED4117EB = 0;
  unk_1ED4117DB = 0u;
  strcpy(&nw_protocol_ip_identifier::identifier, "ip");
  qword_1ED4117F8 = 0x100000002;
  flowhash_seed = arc4random();

  return nw_protocol_register_extended(&nw_protocol_ip_identifier::identifier, nw_protocol_ip_create);
}

uint64_t sub_181B17494()
{
  v0 = nw_protocol_copy_quic_definition();
  if (qword_1ED4100F8 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = unk_1ED411CE0;
  v2 = byte_1ED411CE8;
  LOWORD(xmmword_1ED40FE68) = word_1ED411CD0;
  *(&xmmword_1ED40FE68 + 1) = qword_1ED411CD8;
  unk_1ED40FE78 = unk_1ED411CE0;
  byte_1ED40FE80 = byte_1ED411CE8;
  unk_1ED40FE89 = 0;
  *algn_1ED40FE81 = 0;
  byte_1ED40FE91 = 1;
  qword_1ED40FE98 = v0;
  v3 = qword_1ED411CD8;

  return sub_181F49A24(v3, v1, v2);
}

uint64_t _nw_protocol_get_quic_stream_protocol_identifier(uint64_t a1)
{
  if (qword_1ED4100F8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_181B0D734(a1);
}

void __nw_protocol_copy_quic_stream_definition_block_invoke()
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  _nw_protocol_get_quic_stream_protocol_identifier(v17);
  v0 = nw_protocol_definition_create_with_identifier(v17);
  v1 = &qword_1ED411000;
  v2 = nw_protocol_copy_quic_stream_definition_quic_definition;
  nw_protocol_copy_quic_stream_definition_quic_definition = v0;

  v3 = nw_protocol_copy_quic_stream_definition_quic_definition;
  if (v3)
  {
    v3[192] |= 8u;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_definition_set_receive_single_message";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v7, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_definition_set_receive_single_message";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null definition", buf, 0xCu);
      }
    }

    else
    {
      if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v13 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v20 = "nw_protocol_definition_set_receive_single_message";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          v1 = &qword_1ED411000;
          free(backtrace_string);
        }

        else
        {
          if (v13)
          {
            *buf = 136446210;
            v20 = "nw_protocol_definition_set_receive_single_message";
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
          }

          v1 = &qword_1ED411000;
        }

        goto LABEL_26;
      }

      v8 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_definition_set_receive_single_message";
        _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
LABEL_3:

  v4 = v1[167];
  v5 = v4;
  if (quic_fillout_definition_callbacks_override)
  {
    quic_fillout_definition_callbacks_override(v4);
  }

  else
  {
    if (!MEMORY[0x1EEE98840])
    {

      goto LABEL_8;
    }

    quic_fillout_definition_callbacks();
  }

  nw_protocol_definition_register(v1[167]);
LABEL_8:
  nw_protocol_definition_set_options_should_serialize(v1[167], nw_quic_stream_should_serialize_options);
}

void nw_protocol_definition_set_options_should_serialize(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_definition_set_options_should_serialize";
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
        v22 = "nw_protocol_definition_set_options_should_serialize";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
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
          v22 = "nw_protocol_definition_set_options_should_serialize";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
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
        v22 = "nw_protocol_definition_set_options_should_serialize";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_protocol_definition_set_options_should_serialize";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a2)
  {
    nw_protocol_definition_initialize_extended_state(v3);
    v4->extended_state->var32 = a2;
    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_definition_set_options_should_serialize";
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
      v22 = "nw_protocol_definition_set_options_should_serialize";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null should_serialize", buf, 0xCu);
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
      v22 = "nw_protocol_definition_set_options_should_serialize";
      _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null should_serialize, backtrace limit exceeded", buf, 0xCu);
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
      v22 = "nw_protocol_definition_set_options_should_serialize";
      _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null should_serialize, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v16)
  {
    *buf = 136446466;
    v22 = "nw_protocol_definition_set_options_should_serialize";
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null should_serialize, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_4:
}

id nw_protocol_copy_swift_quic_definition()
{
  if (nw_protocol_copy_swift_quic_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_swift_quic_definition_onceToken, &__block_literal_global_65);
  }

  v1 = nw_protocol_copy_swift_quic_definition_swift_quic_definition;

  return v1;
}

uint64_t sub_181B17E24()
{
  v0 = nw_protocol_copy_swift_quic_definition();
  if (qword_1ED40FDA0 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = unk_1ED40FDB8;
  v2 = byte_1ED40FDC0;
  LOWORD(xmmword_1ED40FDD0) = word_1ED40FDA8;
  *(&xmmword_1ED40FDD0 + 1) = qword_1ED40FDB0;
  unk_1ED40FDE0 = unk_1ED40FDB8;
  byte_1ED40FDE8 = byte_1ED40FDC0;
  unk_1ED40FDF1 = 0;
  *algn_1ED40FDE9 = 0;
  byte_1ED40FDF9 = 1;
  qword_1ED40FE00 = v0;
  v3 = qword_1ED40FDB0;

  return sub_181F49A24(v3, v1, v2);
}

uint64_t __nw_protocol_copy_swift_quic_definition_block_invoke()
{
  if (nw_protocol_swift_quic_identifier_onceToken != -1)
  {
    dispatch_once(&nw_protocol_swift_quic_identifier_onceToken, &__block_literal_global_100);
  }

  v0 = nw_protocol_definition_create_with_identifier(&nw_protocol_swift_quic_identifier_identifier);
  v1 = nw_protocol_copy_swift_quic_definition_swift_quic_definition;
  nw_protocol_copy_swift_quic_definition_swift_quic_definition = v0;

  v2 = nw_protocol_copy_swift_quic_definition_swift_quic_definition;

  return nw_protocol_register_handle(&nw_protocol_swift_quic_identifier_identifier, v2, nw_protocol_swift_quic_create, nw_protocol_swift_wrapper_accept);
}

double __nw_protocol_swift_quic_identifier_block_invoke()
{
  qword_1ED410FA0 = 0;
  *&algn_1ED410F90[3] = 0u;
  strcpy(&nw_protocol_swift_quic_identifier_identifier, "swift-quic");
  *&result = 0x200000003;
  qword_1ED410FA8 = 0x200000003;
  return result;
}

uint64_t sub_181B17FC0()
{
  word_1ED40FDA8 = 258;
  result = sub_181FB974C();
  v1 = result;
  if (result == 39)
  {
    v1 = 0x75712D7466697773;
    v2 = 0xEA00000000006369;
  }

  else
  {
    v2 = 0;
  }

  qword_1ED40FDB0 = v1;
  unk_1ED40FDB8 = v2;
  byte_1ED40FDC0 = result == 39;
  return result;
}

uint64_t sub_181B1803C()
{
  v0 = nw_protocol_copy_custom_ip_definition();
  if (qword_1ED40FCD8 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = unk_1ED411AF8;
  v2 = byte_1ED411B00;
  LOWORD(xmmword_1ED411A98) = word_1ED411AE8;
  *(&xmmword_1ED411A98 + 1) = qword_1ED411AF0;
  unk_1ED411AA8 = unk_1ED411AF8;
  byte_1ED411AB0 = byte_1ED411B00;
  unk_1ED411AB9 = 0;
  *algn_1ED411AB1 = 0;
  byte_1ED411AC1 = 1;
  qword_1ED411AC8 = v0;
  v3 = qword_1ED411AF0;

  return sub_181F49A24(v3, v1, v2);
}

id nw_protocol_copy_custom_ip_definition()
{
  if (nw_protocol_copy_custom_ip_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_custom_ip_definition_onceToken, &__block_literal_global_55930);
  }

  v1 = nw_protocol_copy_custom_ip_definition_definition;

  return v1;
}

uint64_t sub_181B1814C()
{
  word_1ED411AE8 = 2;
  result = sub_181FB974C();
  v1 = result;
  if (result == 39)
  {
    v1 = 0x692D6D6F74737563;
    v2 = 0xE900000000000070;
  }

  else
  {
    v2 = 0;
  }

  qword_1ED411AF0 = v1;
  unk_1ED411AF8 = v2;
  byte_1ED411B00 = result == 39;
  return result;
}

id nw_proxy_copy_http_connect_definition()
{
  if (nw_proxy_copy_http_connect_definition::onceToken != -1)
  {
    dispatch_once(&nw_proxy_copy_http_connect_definition::onceToken, &__block_literal_global_102);
  }

  v1 = nw_proxy_copy_http_connect_definition::proxy_definition;

  return v1;
}

void nw_connection_send_path_changed_on_nw_queue(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    nw_context_assert_queue(*(v3 + 3));
    v5 = *(v3 + 32);
    if (v5 && *(v3 + 20) != 5)
    {
      v6 = _Block_copy(v5);
      v7 = *(v3 + 48);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = ___ZL43nw_connection_send_path_changed_on_nw_queueP24NWConcrete_nw_connectionPU21objcproto10OS_nw_path8NSObject_block_invoke;
      v17[3] = &unk_1E6A3D710;
      v19 = v6;
      v18 = v4;
      v8 = v6;
      nw_connection_async_client(v3, v7, v17);
    }

    goto LABEL_5;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_connection_send_path_changed_on_nw_queue";
  v10 = _os_log_send_and_compose_impl();

  v21 = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v10, &v21, &v20))
  {
    if (v21 == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = v21;
      if (os_log_type_enabled(v11, v21))
      {
        *buf = 136446210;
        v23 = "nw_connection_send_path_changed_on_nw_queue";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = v21;
      v15 = os_log_type_enabled(v11, v21);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v23 = "nw_connection_send_path_changed_on_nw_queue";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v15)
      {
        *buf = 136446210;
        v23 = "nw_connection_send_path_changed_on_nw_queue";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = v21;
      if (os_log_type_enabled(v11, v21))
      {
        *buf = 136446210;
        v23 = "nw_connection_send_path_changed_on_nw_queue";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v10)
  {
    free(v10);
  }

LABEL_5:
}

uint64_t nw_endpoint_flow_get_is_leaf_handler(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[32] >> 1) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_flow_get_is_leaf_handler";
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
        v15 = "nw_endpoint_flow_get_is_leaf_handler";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null flow", buf, 0xCu);
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
          v15 = "nw_endpoint_flow_get_is_leaf_handler";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_flow_get_is_leaf_handler";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null flow, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_flow_get_is_leaf_handler";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null flow, backtrace limit exceeded", buf, 0xCu);
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

void nw_endpoint_flow_initialize_protocol(void *a1, uint64_t a2, char a3)
{
  v155 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = v6;
  if (!v6)
  {
    v90 = __nwlog_obj();
    *buf = 136446210;
    v140 = "nw_endpoint_handler_get_mode";
    v91 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v137 = 0;
    if (__nwlog_fault(v91, &type, &v137))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v92 = __nwlog_obj();
        v93 = type;
        if (os_log_type_enabled(v92, type))
        {
          *buf = 136446210;
          v140 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v92, v93, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v137 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v92 = __nwlog_obj();
        v95 = type;
        v96 = os_log_type_enabled(v92, type);
        if (backtrace_string)
        {
          if (v96)
          {
            *buf = 136446466;
            v140 = "nw_endpoint_handler_get_mode";
            v141 = 2082;
            v142 = backtrace_string;
            _os_log_impl(&dword_181A37000, v92, v95, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_120;
        }

        if (v96)
        {
          *buf = 136446210;
          v140 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v92, v95, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v92 = __nwlog_obj();
        v97 = type;
        if (os_log_type_enabled(v92, type))
        {
          *buf = 136446210;
          v140 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v92, v97, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_120:
    if (v91)
    {
      free(v91);
    }

    mode = 0;
    goto LABEL_123;
  }

  mode = v6->mode;

  if (mode == 2)
  {
    v9 = nw_endpoint_handler_copy_flow(v7);
    v10 = v9;
    if ((*(v9 + 32) & 8) == 0)
    {
      *(v9 + 32) |= 8u;
      strcpy(v9 + 48, "endpoint_flow");
      *(v9 + 10) = 0x100000004;
      v11 = nw_flow_supports_external_data;
      v12 = nw_flow_notify;
      v13 = nw_flow_disconnected;
      v14 = nw_flow_input_finished;
      v15 = nw_flow_input_available;
      v16 = nw_flow_output_available;
      if (a3)
      {
        v17 = 176;
        v18 = 160;
      }

      else
      {
        *(v9 + 13) = nw_protocol_default_replace_input_handler;
        *(v9 + 19) = nw_protocol_default_input_available;
        *(v9 + 20) = nw_protocol_default_output_available;
        *(v9 + 34) = nw_protocol_default_input_finished;
        *(v9 + 35) = nw_protocol_default_output_finished;
        *(v9 + 44) = nw_protocol_default_input_flush;
        *(v9 + 42) = nw_protocol_default_get_message_properties;
        *(v9 + 24) = nw_protocol_default_link_state;
        *(v9 + 25) = nw_protocol_default_get_parameters;
        *(v9 + 27) = nw_protocol_default_get_local;
        *(v9 + 28) = nw_protocol_default_get_remote;
        *(v9 + 26) = nw_protocol_default_get_path;
        *(v9 + 32) = nw_protocol_default_updated_path;
        *(v9 + 36) = nw_protocol_default_get_output_local;
        *(v9 + 37) = nw_protocol_default_get_output_interface;
        *(v9 + 14) = nw_protocol_default_connect;
        *(v9 + 15) = nw_protocol_default_disconnect;
        *(v9 + 16) = nw_protocol_default_connected;
        *(v9 + 17) = nw_protocol_default_disconnected;
        *(v9 + 18) = nw_protocol_default_error;
        *(v9 + 43) = nw_protocol_default_reset;
        *(v9 + 33) = nw_protocol_default_supports_external_data;
        *(v9 + 38) = nw_protocol_default_waiting_for_output;
        *(v9 + 39) = nw_protocol_default_copy_info;
        *(v9 + 29) = nw_protocol_default_register_notification;
        *(v9 + 30) = nw_protocol_default_unregister_notification;
        *(v9 + 31) = nw_protocol_default_notify;
        *(v9 + 40) = nw_protocol_default_add_listen_handler;
        *(v9 + 41) = nw_protocol_default_remove_listen_handler;
        *(v9 + 11) = nw_flow_passthrough_add_input_handler;
        *(v9 + 12) = nw_flow_passthrough_remove_input_handler;
        *(v9 + 21) = nw_flow_passthrough_get_input_frames;
        *(v9 + 22) = nw_flow_passthrough_get_output_frames;
        *(v9 + 23) = nw_flow_passthrough_finalize_output_frames;
        v11 = nw_flow_passthrough_notify;
        v12 = nw_flow_passthrough_supports_external_data;
        v13 = nw_flow_passthrough_disconnected;
        v14 = nw_flow_passthrough_input_finished;
        v15 = nw_flow_passthrough_input_available;
        v16 = nw_flow_passthrough_output_available;
        v17 = 160;
        v18 = 176;
      }

      *(v9 + 19) = v15;
      *(v9 + 20) = v16;
      *(v9 + 34) = v14;
      *(v9 + 17) = v13;
      v19 = v9 + 88;
      *&v19[v18] = v12;
      *&v19[v17] = v11;
      *(v9 + 18) = nw_flow_error;
      *(v9 + 14) = nw_flow_connect;
      *(v9 + 16) = nw_flow_connected;
      *(v9 + 25) = nw_flow_get_parameters;
      *(v9 + 26) = nw_flow_get_path;
      *(v9 + 32) = nw_flow_updated_path;
      *(v9 + 27) = nw_flow_get_local;
      *(v9 + 28) = nw_flow_get_remote;
      *(v9 + 45) = nw_flow_listener_new_flow;
      *(v9 + 46) = nw_flow_listener_disconnected;
      internal = nw_hash_table_create_internal(7u, 0, nw_flow_protocol_get_key, nw_flow_protocol_key_hash, nw_flow_protocol_matches_key, nw_flow_protocol_release, 0);
      if (internal)
      {
        *(internal + 56) &= ~2u;
      }

      *(v10 + 108) = internal;
    }

    v21 = *(a2 + 332);
    if (v21)
    {
      goto LABEL_93;
    }

    *(a2 + 332) = v21 | 1;
    objc_storeStrong((a2 + 160), a1);
    v22 = v7;
    v23 = v10;
    v24 = v23;
    v136 = v22;
    if ((*(v10 + 32) & 8) != 0)
    {
      v25 = v22;
      v26 = v25[4];

      v27 = *(a2 + 176);
      *(a2 + 176) = v26;

      v28 = nw_parameters_copy_context(*(a2 + 176));
      v29 = *(a2 + 184);
      *(a2 + 184) = v28;

      *(a2 + 16) = v24 + 48;
      *(a2 + 24) = v24 + 88;
      *(a2 + 88) = a2;
      *(a2 + 64) = v24 + 360;
      if (nw_flow_initialize_replay_protocol(void)::onceToken != -1)
      {
        dispatch_once(&nw_flow_initialize_replay_protocol(void)::onceToken, &__block_literal_global_101);
      }

      *(a2 + 136) = a2;
      *(a2 + 112) = &g_replay_protocol_identifier;
      *(a2 + 120) = &g_replay_protocol_callbacks;
      v30 = *(a2 + 40);
      if (v30)
      {
        if (v30 != a2)
        {
          v31 = v25;
          v32 = *(v31 + 284);

          if ((v32 & 0x40) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v125 = gconnectionLogObj;
            v33 = v31;

            v34 = v33;
            v35 = *(v31 + 284);

            if (v35)
            {
              v36 = "dry-run ";
            }

            else
            {
              v36 = "";
            }

            v124 = v24;
            v37 = nw_endpoint_handler_copy_endpoint(v34);
            v38 = v37;
            if (v37)
            {
              logging_description = _nw_endpoint_get_logging_description(v37);
            }

            else
            {
              logging_description = "<NULL>";
            }

            v121 = v36;
            v130 = (v33 + 23);

            v39 = v34;
            v40 = v39;
            v41 = v39[30];
            if (v41 > 5)
            {
              v42 = "unknown-state";
            }

            else
            {
              v42 = off_1E6A31048[v41];
            }

            v43 = v40;
            v44 = v43;
            v45 = v7->mode;
            if (v45 > 2)
            {
              if (v45 == 3)
              {
                v46 = "proxy";
                goto LABEL_43;
              }

              if (v45 != 4)
              {
                if (v45 == 5)
                {
                  v46 = "transform";
                  goto LABEL_43;
                }

                goto LABEL_40;
              }

              v46 = "fallback";
            }

            else
            {
              if (!v45)
              {
                v46 = "path";
                goto LABEL_43;
              }

              if (v45 != 1)
              {
                if (v45 == 2)
                {
                  v46 = nw_endpoint_flow_mode_string(*(v43 + 33));
                  goto LABEL_43;
                }

LABEL_40:
                v46 = "unknown-mode";
                goto LABEL_43;
              }

              v46 = "resolver";
            }

LABEL_43:

            v47 = v44;
            os_unfair_lock_lock(v47 + 28);
            v48 = *(v47 + 8);
            os_unfair_lock_unlock(v47 + 28);

            *buf = 136447746;
            v140 = "nw_flow_protocol_initialize";
            v141 = 2082;
            v142 = v130;
            v143 = 2082;
            v144 = v121;
            v145 = 2082;
            v146 = logging_description;
            v147 = 2082;
            v148 = v42;
            v149 = 2082;
            v150 = v46;
            v151 = 2114;
            v152 = v48;
            v135 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v137 = 0;
            if (!__nwlog_fault(v135, &type, &v137))
            {
              goto LABEL_90;
            }

            if (type != OS_LOG_TYPE_FAULT)
            {
              if (v137 == 1)
              {
                v57 = __nw_create_backtrace_string();
                if (v57)
                {
                  v58 = v57;
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v59 = gconnectionLogObj;
                  v60 = type;
                  if (os_log_type_enabled(v59, type))
                  {
                    id_string = nw_endpoint_handler_get_id_string(v47);
                    v123 = nw_endpoint_handler_dry_run_string(v47);
                    *v127 = id_string;
                    v131 = nw_endpoint_handler_copy_endpoint(v47);
                    v62 = nw_endpoint_get_logging_description(v131);
                    v63 = nw_endpoint_handler_state_string(v47);
                    v64 = nw_endpoint_handler_mode_string(v47);
                    v65 = nw_endpoint_handler_copy_current_path(v47);
                    *buf = 136448002;
                    v140 = "nw_flow_protocol_initialize";
                    v141 = 2082;
                    v142 = *v127;
                    v143 = 2082;
                    v144 = v123;
                    v145 = 2082;
                    v146 = v62;
                    v147 = 2082;
                    v148 = v63;
                    v149 = 2082;
                    v150 = v64;
                    v151 = 2114;
                    v152 = v65;
                    v153 = 2082;
                    v154 = v58;
                    _os_log_impl(&dword_181A37000, v59, v60, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Flow protocol handle non-NULL at initialization, dumping backtrace:%{public}s", buf, 0x52u);
                  }

                  free(v58);
                  goto LABEL_90;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v49 = gconnectionLogObj;
                v73 = type;
                if (os_log_type_enabled(v49, type))
                {
                  v74 = nw_endpoint_handler_get_id_string(v47);
                  v129 = nw_endpoint_handler_dry_run_string(v47);
                  v133 = nw_endpoint_handler_copy_endpoint(v47);
                  v75 = v74;
                  v76 = nw_endpoint_get_logging_description(v133);
                  v77 = nw_endpoint_handler_state_string(v47);
                  v78 = nw_endpoint_handler_mode_string(v47);
                  v79 = nw_endpoint_handler_copy_current_path(v47);
                  *buf = 136447746;
                  v140 = "nw_flow_protocol_initialize";
                  v141 = 2082;
                  v142 = v75;
                  v143 = 2082;
                  v144 = v129;
                  v145 = 2082;
                  v146 = v76;
                  v147 = 2082;
                  v148 = v77;
                  v149 = 2082;
                  v150 = v78;
                  v151 = 2114;
                  v152 = v79;
                  _os_log_impl(&dword_181A37000, v49, v73, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Flow protocol handle non-NULL at initialization, no backtrace", buf, 0x48u);
                }
              }

              else
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v49 = gconnectionLogObj;
                v66 = type;
                if (os_log_type_enabled(v49, type))
                {
                  v67 = nw_endpoint_handler_get_id_string(v47);
                  v128 = nw_endpoint_handler_dry_run_string(v47);
                  v132 = nw_endpoint_handler_copy_endpoint(v47);
                  v68 = v67;
                  v69 = nw_endpoint_get_logging_description(v132);
                  v70 = nw_endpoint_handler_state_string(v47);
                  v71 = nw_endpoint_handler_mode_string(v47);
                  v72 = nw_endpoint_handler_copy_current_path(v47);
                  *buf = 136447746;
                  v140 = "nw_flow_protocol_initialize";
                  v141 = 2082;
                  v142 = v68;
                  v143 = 2082;
                  v144 = v128;
                  v145 = 2082;
                  v146 = v69;
                  v147 = 2082;
                  v148 = v70;
                  v149 = 2082;
                  v150 = v71;
                  v151 = 2114;
                  v152 = v72;
                  _os_log_impl(&dword_181A37000, v49, v66, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Flow protocol handle non-NULL at initialization, backtrace limit exceeded", buf, 0x48u);
                }
              }

              goto LABEL_89;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v49 = gconnectionLogObj;
            v50 = type;
            if (!os_log_type_enabled(v49, type))
            {
LABEL_89:

LABEL_90:
              v24 = v124;
              if (v135)
              {
                free(v135);
              }

              goto LABEL_92;
            }

            v126 = v50;
            v51 = v47;

            v52 = v51;
            v53 = (*(v31 + 284) & 1) == 0;

            if (v53)
            {
              v54 = "";
            }

            else
            {
              v54 = "dry-run ";
            }

            v55 = nw_endpoint_handler_copy_endpoint(v52);
            v56 = v55;
            v122 = v54;
            if (v55)
            {
              v120 = _nw_endpoint_get_logging_description(v55);
            }

            else
            {
              v120 = "<NULL>";
            }

            v80 = v52;
            v81 = v80;
            v82 = v40[30];
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
            v86 = v7->mode;
            if (v86 > 2)
            {
              switch(v86)
              {
                case 3:
                  v87 = "proxy";
                  goto LABEL_88;
                case 4:
                  v87 = "fallback";
                  goto LABEL_88;
                case 5:
                  v87 = "transform";
                  goto LABEL_88;
              }
            }

            else
            {
              switch(v86)
              {
                case 0:
                  v87 = "path";
                  goto LABEL_88;
                case 1:
                  v87 = "resolver";
                  goto LABEL_88;
                case 2:
                  v87 = nw_endpoint_flow_mode_string(v84[33]);
LABEL_88:

                  v88 = v85;
                  os_unfair_lock_lock(v47 + 28);
                  v89 = *(v47 + 8);
                  os_unfair_lock_unlock(v47 + 28);

                  *buf = 136447746;
                  v140 = "nw_flow_protocol_initialize";
                  v141 = 2082;
                  v142 = v130;
                  v143 = 2082;
                  v144 = v122;
                  v145 = 2082;
                  v146 = v120;
                  v147 = 2082;
                  v148 = v83;
                  v149 = 2082;
                  v150 = v87;
                  v151 = 2114;
                  v152 = v89;
                  _os_log_impl(&dword_181A37000, v49, v126, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Flow protocol handle non-NULL at initialization", buf, 0x48u);

                  goto LABEL_89;
              }
            }

            v87 = "unknown-mode";
            goto LABEL_88;
          }
        }
      }

      else
      {
        *(a2 + 40) = a2;
      }

LABEL_92:

      *(a2 + 272) = 0;
      *(a2 + 280) = a2 + 272;
      *(a2 + 296) = 0;
      *(a2 + 304) = a2 + 296;
LABEL_93:

      goto LABEL_144;
    }

    v98 = v23;
    v99 = __nwlog_obj();
    *buf = 136446210;
    v140 = "nw_flow_protocol_initialize";
    v100 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v137 = 0;
    if (__nwlog_fault(v100, &type, &v137))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v101 = __nwlog_obj();
        v102 = type;
        if (os_log_type_enabled(v101, type))
        {
          *buf = 136446210;
          v140 = "nw_flow_protocol_initialize";
          _os_log_impl(&dword_181A37000, v101, v102, "%{public}s called with null endpoint_flow->initialized_protocol_callbacks", buf, 0xCu);
        }
      }

      else if (v137 == 1)
      {
        v103 = __nw_create_backtrace_string();
        v101 = __nwlog_obj();
        v104 = type;
        v105 = os_log_type_enabled(v101, type);
        if (v103)
        {
          if (v105)
          {
            *buf = 136446466;
            v140 = "nw_flow_protocol_initialize";
            v141 = 2082;
            v142 = v103;
            _os_log_impl(&dword_181A37000, v101, v104, "%{public}s called with null endpoint_flow->initialized_protocol_callbacks, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v103);
          goto LABEL_164;
        }

        if (v105)
        {
          *buf = 136446210;
          v140 = "nw_flow_protocol_initialize";
          _os_log_impl(&dword_181A37000, v101, v104, "%{public}s called with null endpoint_flow->initialized_protocol_callbacks, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v101 = __nwlog_obj();
        v119 = type;
        if (os_log_type_enabled(v101, type))
        {
          *buf = 136446210;
          v140 = "nw_flow_protocol_initialize";
          _os_log_impl(&dword_181A37000, v101, v119, "%{public}s called with null endpoint_flow->initialized_protocol_callbacks, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_164:
    if (v100)
    {
      free(v100);
    }

    v24 = v98;
    goto LABEL_92;
  }

LABEL_123:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v106 = gLogObj;
  if (mode > 5)
  {
    v107 = "unknown-mode";
  }

  else
  {
    v107 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v140 = "nw_endpoint_flow_initialize_protocol";
  v141 = 2082;
  v142 = v107;
  v143 = 2082;
  v144 = "flow";
  v108 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v137 = 0;
  if (!__nwlog_fault(v108, &type, &v137))
  {
LABEL_142:
    if (!v108)
    {
      goto LABEL_144;
    }

LABEL_143:
    free(v108);
    goto LABEL_144;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v109 = gLogObj;
    v110 = type;
    if (os_log_type_enabled(v109, type))
    {
      if (mode > 5)
      {
        v111 = "unknown-mode";
      }

      else
      {
        v111 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v140 = "nw_endpoint_flow_initialize_protocol";
      v141 = 2082;
      v142 = v111;
      v143 = 2082;
      v144 = "flow";
      _os_log_impl(&dword_181A37000, v109, v110, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_141:

    goto LABEL_142;
  }

  if (v137 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v109 = gLogObj;
    v116 = type;
    if (os_log_type_enabled(v109, type))
    {
      if (mode > 5)
      {
        v117 = "unknown-mode";
      }

      else
      {
        v117 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v140 = "nw_endpoint_flow_initialize_protocol";
      v141 = 2082;
      v142 = v117;
      v143 = 2082;
      v144 = "flow";
      _os_log_impl(&dword_181A37000, v109, v116, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_141;
  }

  v112 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v109 = gLogObj;
  v113 = type;
  v114 = os_log_type_enabled(v109, type);
  if (!v112)
  {
    if (v114)
    {
      if (mode > 5)
      {
        v118 = "unknown-mode";
      }

      else
      {
        v118 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v140 = "nw_endpoint_flow_initialize_protocol";
      v141 = 2082;
      v142 = v118;
      v143 = 2082;
      v144 = "flow";
      _os_log_impl(&dword_181A37000, v109, v113, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_141;
  }

  if (v114)
  {
    if (mode > 5)
    {
      v115 = "unknown-mode";
    }

    else
    {
      v115 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v140 = "nw_endpoint_flow_initialize_protocol";
    v141 = 2082;
    v142 = v115;
    v143 = 2082;
    v144 = "flow";
    v145 = 2082;
    v146 = v112;
    _os_log_impl(&dword_181A37000, v109, v113, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v112);
  if (v108)
  {
    goto LABEL_143;
  }

LABEL_144:
}

void nw_path_evaluator_force_update(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    os_unfair_lock_lock(v3 + 24);
    v5 = *(v3 + 25);
    os_unfair_lock_unlock(v3 + 24);
    v6 = nw_parameters_copy_context(*(v3 + 1));
    nw_path_necp_check_for_updates(v6, v3 + 5, v5);

    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_path_evaluator_force_update";
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
        v18 = "nw_path_evaluator_force_update";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null evaluator", buf, 0xCu);
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
          v18 = "nw_path_evaluator_force_update";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null evaluator, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_path_evaluator_force_update";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null evaluator, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_path_evaluator_force_update";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null evaluator, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

LABEL_3:
}

uint64_t _nw_path_get_interface_time_delta(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 27);

  return v3;
}

void nw_proxy_deallocate_options(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = 0;

  v4 = a2[1];
  if (v4)
  {
    free(v4);
  }

  free(a2);
}

void _nw_array_get_object_at_index_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network7NWArray_deque;
  v5 = a1;
  swift_beginAccess();
  v6 = *&a1[v4];
  if (*(v6 + 24) > a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {

      return;
    }

    __break(1u);
    goto LABEL_7;
  }

  should_abort = __nwlog_should_abort("array index out of range");

  if (should_abort)
  {
LABEL_7:
    __break(1u);
  }
}

void nw_parameters_to_ne_app_context(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *uu = 136446210;
    *&uu[4] = "nw_parameters_to_ne_app_context";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v9, &type, &v18))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *uu = 136446210;
        *&uu[4] = "nw_parameters_to_ne_app_context";
        v12 = "%{public}s called with null parameters";
LABEL_37:
        _os_log_impl(&dword_181A37000, v10, v11, v12, uu, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v15 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *uu = 136446466;
          *&uu[4] = "nw_parameters_to_ne_app_context";
          *&uu[12] = 2082;
          *&uu[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null parameters, dumping backtrace:%{public}s", uu, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v9)
        {
          goto LABEL_9;
        }

LABEL_40:
        free(v9);
        goto LABEL_9;
      }

      if (v15)
      {
        *uu = 136446210;
        *&uu[4] = "nw_parameters_to_ne_app_context";
        v12 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_37;
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *uu = 136446210;
        *&uu[4] = "nw_parameters_to_ne_app_context";
        v12 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_37;
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (a2)
  {
    if (_nw_parameters_get_effective_audit_token(v3, (a2 + 40)))
    {
      v5 = a2 + 40;
    }

    else
    {
      v5 = 0;
    }

    *(a2 + 8) = v5;
    *uu = 0;
    *&uu[8] = 0;
    _nw_parameters_get_e_proc_uuid(v4, uu);
    is_null = uuid_is_null(uu);
    v7 = 0;
    if (!is_null)
    {
      v7 = a2 + 72;
      *(a2 + 72) = *uu;
    }

    *(a2 + 16) = v7;
    *(a2 + 24) = _nw_parameters_get_pid(v4);
    *a2 = _nw_parameters_get_effective_bundle_id(v4);
    goto LABEL_9;
  }

  v13 = __nwlog_obj();
  *uu = 136446210;
  *&uu[4] = "nw_parameters_to_ne_app_context";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v9, &type, &v18))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      *uu = 136446210;
      *&uu[4] = "nw_parameters_to_ne_app_context";
      v12 = "%{public}s called with null storage";
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (v18 != 1)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      *uu = 136446210;
      *&uu[4] = "nw_parameters_to_ne_app_context";
      v12 = "%{public}s called with null storage, backtrace limit exceeded";
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  v16 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v11 = type;
  v17 = os_log_type_enabled(v10, type);
  if (!v16)
  {
    if (v17)
    {
      *uu = 136446210;
      *&uu[4] = "nw_parameters_to_ne_app_context";
      v12 = "%{public}s called with null storage, no backtrace";
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (v17)
  {
    *uu = 136446466;
    *&uu[4] = "nw_parameters_to_ne_app_context";
    *&uu[12] = 2082;
    *&uu[14] = v16;
    _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null storage, dumping backtrace:%{public}s", uu, 0x16u);
  }

  free(v16);
  if (v9)
  {
    goto LABEL_40;
  }

LABEL_9:
}

id nw_parameters_copy_transform_array(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__19817;
    v18 = __Block_byref_object_dispose__19818;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_parameters_copy_transform_array_block_invoke;
    v13[3] = &unk_1E6A2E430;
    v13[4] = buf;
    _nw_parameters_iterate_transforms(v1, v13);
    v3 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_parameters_copy_transform_array";
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
        *&buf[4] = "nw_parameters_copy_transform_array";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters", buf, 0xCu);
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
          *&buf[4] = "nw_parameters_copy_transform_array";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_transform_array";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_parameters_copy_transform_array";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
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

void sub_181B1AB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL33nw_endpoint_flow_attach_protocolsP30NWConcrete_nw_endpoint_handlerP11nw_protocolS2__block_invoke_222(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v158 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v138 = a4;
  identifier = nw_protocol_definition_get_identifier(v7);
  registered_endpoint = *(a1 + 96);
  if (registered_endpoint)
  {
    goto LABEL_74;
  }

  v10 = *(*(*(a1 + 64) + 8) + 24);
  v11 = *(a1 + 40);
  v12 = *(*(*(a1 + 72) + 8) + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v134 = v11;
  v15 = v12;
  v136 = v13;
  v130 = v14;
  v132 = v15;
  if (!v14)
  {
    v95 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
    v33 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v139 = 0;
    if (__nwlog_fault(v33, &type, &v139))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v34 = __nwlog_obj();
        v96 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          _os_log_impl(&dword_181A37000, v34, v96, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_69;
      }

      if (v139 != 1)
      {
        v34 = __nwlog_obj();
        v106 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          _os_log_impl(&dword_181A37000, v34, v106, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_69;
      }

      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v100 = type;
      v101 = os_log_type_enabled(v34, type);
      if (!backtrace_string)
      {
        if (v101)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          _os_log_impl(&dword_181A37000, v34, v100, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_69;
      }

      if (v101)
      {
        *buf = 136446466;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        v142 = 2082;
        v143 = backtrace_string;
        _os_log_impl(&dword_181A37000, v34, v100, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_186;
    }

    goto LABEL_70;
  }

  v16 = v14;
  v17 = v16[29];

  if (v17 != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    if (v17 > 5)
    {
      v27 = "unknown-mode";
    }

    else
    {
      v27 = off_1E6A31018[v17];
    }

    *buf = 136446722;
    *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
    v142 = 2082;
    v143 = v27;
    v144 = 2082;
    v145 = "flow";
    v33 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v139 = 0;
    if (__nwlog_fault(v33, &type, &v139))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v35 = type;
        if (os_log_type_enabled(v34, type))
        {
          if (v17 > 5)
          {
            v36 = "unknown-mode";
          }

          else
          {
            v36 = off_1E6A31018[v17];
          }

          *buf = 136446722;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          v142 = 2082;
          v143 = v36;
          v144 = 2082;
          v145 = "flow";
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v139 == 1)
      {
        v37 = __nw_create_backtrace_string();
        if (v37)
        {
          v38 = v37;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v39 = gLogObj;
          v40 = type;
          if (os_log_type_enabled(v39, type))
          {
            if (v17 > 5)
            {
              v41 = "unknown-mode";
            }

            else
            {
              v41 = off_1E6A31018[v17];
            }

            *buf = 136446978;
            *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
            v142 = 2082;
            v143 = v41;
            v144 = 2082;
            v145 = "flow";
            v146 = 2082;
            v147 = v38;
            _os_log_impl(&dword_181A37000, v39, v40, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v38);
          if (!v33)
          {
            goto LABEL_72;
          }

          goto LABEL_71;
        }

        v34 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v34, type))
        {
          if (v17 > 5)
          {
            v45 = "unknown-mode";
          }

          else
          {
            v45 = off_1E6A31018[v17];
          }

          *buf = 136446722;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          v142 = 2082;
          v143 = v45;
          v144 = 2082;
          v145 = "flow";
          _os_log_impl(&dword_181A37000, v34, v44, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v42 = type;
        if (os_log_type_enabled(v34, type))
        {
          if (v17 > 5)
          {
            v43 = "unknown-mode";
          }

          else
          {
            v43 = off_1E6A31018[v17];
          }

          *buf = 136446722;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          v142 = 2082;
          v143 = v43;
          v144 = 2082;
          v145 = "flow";
          _os_log_impl(&dword_181A37000, v34, v42, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_69;
    }

    goto LABEL_70;
  }

  if (!identifier)
  {
    v97 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
    v33 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v139 = 0;
    if (__nwlog_fault(v33, &type, &v139))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v34 = __nwlog_obj();
        v98 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          _os_log_impl(&dword_181A37000, v34, v98, "%{public}s called with null identifier", buf, 0xCu);
        }

        goto LABEL_69;
      }

      if (v139 != 1)
      {
        v34 = __nwlog_obj();
        v113 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          _os_log_impl(&dword_181A37000, v34, v113, "%{public}s called with null identifier, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_69;
      }

      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v107 = type;
      v108 = os_log_type_enabled(v34, type);
      if (!backtrace_string)
      {
        if (v108)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          _os_log_impl(&dword_181A37000, v34, v107, "%{public}s called with null identifier, no backtrace", buf, 0xCu);
        }

        goto LABEL_69;
      }

      if (v108)
      {
        *buf = 136446466;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        v142 = 2082;
        v143 = backtrace_string;
        _os_log_impl(&dword_181A37000, v34, v107, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_186;
    }

    goto LABEL_70;
  }

  if (!v15)
  {
    v102 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
    v33 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v139 = 0;
    if (__nwlog_fault(v33, &type, &v139))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v34 = __nwlog_obj();
        v103 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          _os_log_impl(&dword_181A37000, v34, v103, "%{public}s called with null endpoint", buf, 0xCu);
        }

        goto LABEL_69;
      }

      if (v139 != 1)
      {
        v34 = __nwlog_obj();
        v114 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          _os_log_impl(&dword_181A37000, v34, v114, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_69;
      }

      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v109 = type;
      v110 = os_log_type_enabled(v34, type);
      if (!backtrace_string)
      {
        if (v110)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          _os_log_impl(&dword_181A37000, v34, v109, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
        }

        goto LABEL_69;
      }

      if (v110)
      {
        *buf = 136446466;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        v142 = 2082;
        v143 = backtrace_string;
        _os_log_impl(&dword_181A37000, v34, v109, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_186;
    }

LABEL_70:
    if (!v33)
    {
LABEL_72:
      registered_endpoint = 0;
      goto LABEL_73;
    }

LABEL_71:
    free(v33);
    goto LABEL_72;
  }

  if (!v136)
  {
    v104 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
    v33 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v139 = 0;
    if (__nwlog_fault(v33, &type, &v139))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v34 = __nwlog_obj();
        v105 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          _os_log_impl(&dword_181A37000, v34, v105, "%{public}s called with null parameters", buf, 0xCu);
        }

LABEL_69:

        goto LABEL_70;
      }

      if (v139 != 1)
      {
        v34 = __nwlog_obj();
        v115 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          _os_log_impl(&dword_181A37000, v34, v115, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_69;
      }

      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v111 = type;
      v112 = os_log_type_enabled(v34, type);
      if (!backtrace_string)
      {
        if (v112)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
          _os_log_impl(&dword_181A37000, v34, v111, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }

        goto LABEL_69;
      }

      if (v112)
      {
        *buf = 136446466;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        v142 = 2082;
        v143 = backtrace_string;
        _os_log_impl(&dword_181A37000, v34, v111, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_186:

      free(backtrace_string);
      if (!v33)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    goto LABEL_70;
  }

  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v18 = &g_registration_list;
  do
  {
    v18 = *v18;
    if (!v18)
    {
      os_unfair_lock_unlock(&nw_protocol_registrar_lock);
      goto LABEL_31;
    }
  }

  while (*identifier != v18[4] || *(identifier + 1) != v18[5] || *(identifier + 2) != v18[6] || *(identifier + 3) != v18[7] || *(identifier + 4) != v18[8]);
  v23 = v18[13];
  os_unfair_lock_unlock(&nw_protocol_registrar_lock);
  if (!v23)
  {
LABEL_31:
    if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v16) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v28 = gconnectionLogObj;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v16);
        v126 = nw_endpoint_handler_dry_run_string(v16);
        v29 = nw_endpoint_handler_copy_endpoint(v16);
        logging_description = nw_endpoint_get_logging_description(v29);
        v30 = nw_endpoint_handler_state_string(v16);
        v31 = nw_endpoint_handler_mode_string(v16);
        v32 = nw_endpoint_handler_copy_current_path(v16);
        *buf = 136448258;
        *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
        v142 = 2082;
        v143 = id_string;
        v144 = 2082;
        v145 = v126;
        v146 = 2082;
        v147 = logging_description;
        v148 = 2082;
        v149 = v30;
        v150 = 2082;
        v151 = v31;
        v152 = 2114;
        v153 = v32;
        v154 = 2080;
        v155 = identifier;
        v156 = 2048;
        v157 = identifier;
        _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] protocol %s (%p) does not have accept function, cannot search for protocol to join", buf, 0x5Cu);
      }
    }

    goto LABEL_72;
  }

  v24 = v15;
  v25 = v24;
  while (1)
  {
    registered_endpoint = nw_protocol_instance_registrar_search_for_instance_to_join(identifier, -1, v134, v25, v24, v136, v10);
    if (registered_endpoint)
    {
      break;
    }

    registered_endpoint = nw_protocol_instance_registrar_copy_next_registered_endpoint(v25, v10);

    v25 = registered_endpoint;
    if (!registered_endpoint)
    {
      goto LABEL_53;
    }
  }

  if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v16) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v116 = gconnectionLogObj;
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
    {
      v129 = nw_endpoint_handler_get_id_string(v16);
      v127 = nw_endpoint_handler_dry_run_string(v16);
      v117 = nw_endpoint_handler_copy_endpoint(v16);
      v125 = nw_endpoint_get_logging_description(v117);
      v123 = nw_endpoint_handler_state_string(v16);
      v118 = nw_endpoint_handler_mode_string(v16);
      v119 = nw_endpoint_handler_copy_current_path(v16);
      v120 = v119;
      *&buf[4] = "nw_endpoint_flow_find_protocol_to_join";
      v121 = "invalid";
      v122 = registered_endpoint[2];
      *buf = 136448258;
      if (v122)
      {
        v121 = v122;
      }

      v142 = 2082;
      v143 = v129;
      v144 = 2082;
      v145 = v127;
      v146 = 2082;
      v147 = v125;
      v148 = 2082;
      v149 = v123;
      v150 = 2082;
      v151 = v118;
      v152 = 2114;
      v153 = v119;
      v154 = 2080;
      v155 = v121;
      v156 = 2048;
      v157 = registered_endpoint;
      _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] returning protocol to join %s (%p)", buf, 0x5Cu);
    }
  }

LABEL_53:

LABEL_73:
  if (registered_endpoint)
  {
LABEL_74:
    if (nw_endpoint_flow_join_protocol(*(a1 + 32), *(a1 + 48), v138, v7, identifier, 0xFFFFFFFFFFFFFFFFLL, registered_endpoint, *(*(*(a1 + 80) + 8) + 24), *(*(*(a1 + 64) + 8) + 24), (*(*(a1 + 88) + 8) + 24)))
    {
      *(*(a1 + 56) + 736) = *(*(*(*(a1 + 80) + 8) + 24) + 32);
      *(*(a1 + 56) + 33) |= 1u;
      os_unfair_lock_lock((*(a1 + 56) + 880));
      v46 = *(a1 + 56);
      if (!*(v46 + 720))
      {
        v47 = registered_endpoint[5];
        v48 = registered_endpoint;
        if (v47 == &nw_protocol_ref_counted_handle || v47 == &nw_protocol_ref_counted_additional_handle && (v48 = registered_endpoint[8]) != 0)
        {
          v60 = v48[11];
          if (v60)
          {
            v48[11] = v60 + 1;
            v46 = *(a1 + 56);
          }

          *buf = registered_endpoint;
          v49 = buf[8] | 1;
        }

        else
        {
          *buf = registered_endpoint;
          v49 = buf[8] & 0xFE;
        }

        buf[8] = v49;
        v61 = *(v46 + 728);
        if (v61)
        {
          nw::release_if_needed<nw_protocol *>((v46 + 720));
          v61 = *(v46 + 728);
          registered_endpoint = *buf;
          v49 = buf[8];
        }

        *(v46 + 720) = registered_endpoint;
        *(v46 + 728) = v61 & 0xFE | v49 & 1;
        v46 = *(a1 + 56);
      }

      os_unfair_lock_unlock((v46 + 880));
      v56 = 0;
      goto LABEL_115;
    }
  }

  v50 = nw_endpoint_flow_add_one_protocol(*(a1 + 32), identifier, v138, v7, *(*(*(a1 + 72) + 8) + 40), *(a1 + 48), *(*(*(a1 + 80) + 8) + 24));
  if (v50)
  {
    if (nw_protocol_definition_get_message_is_stream(v7))
    {
      v51 = *(a1 + 56);
      if (!*(v51 + 768))
      {
        objc_storeStrong((v51 + 768), a3);
        v57 = v50[5];
        v58 = v50;
        if (v57 == &nw_protocol_ref_counted_handle || v57 == &nw_protocol_ref_counted_additional_handle && (v58 = v50[8]) != 0)
        {
          v75 = v58[11];
          if (v75)
          {
            v58[11] = v75 + 1;
          }

          *buf = v50;
          buf[8] |= 1u;
          v59 = 1;
        }

        else
        {
          v59 = 0;
          *buf = v50;
          buf[8] &= ~1u;
        }

        v76 = *(a1 + 56);
        v77 = *(v76 + 784);
        if (v77)
        {
          nw::release_if_needed<nw_protocol *>((v76 + 776));
          v77 = *(v76 + 784);
        }

        *(v76 + 776) = v50;
        *(v76 + 784) = v59 | v77 & 0xFE;
        v78 = v50[3];
        if (v78)
        {
          v79 = *(v78 + 232);
          if (v79)
          {
            v80 = *(a1 + 56);
            v81 = v50[5];
            v82 = v50;
            if (v81 == &nw_protocol_ref_counted_handle || v81 == &nw_protocol_ref_counted_additional_handle && (v82 = v50[8]) != 0)
            {
              v84 = v82[11];
              if (v84)
              {
                v82[11] = v84 + 1;
              }

              v83 = 0;
              *buf = v50;
              buf[8] |= 1u;
            }

            else
            {
              *buf = v50;
              buf[8] &= ~1u;
              v83 = 1;
            }

            v85 = v79(v50, v80 + 440, 0);
            if ((v83 & 1) == 0)
            {
              nw::release_if_needed<nw_protocol *>(buf);
            }

            if ((v85 & 1) == 0 && (nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v86 = gconnectionLogObj;
              if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
              {
                v87 = nw_endpoint_handler_get_id_string(*(a1 + 32));
                v88 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
                v137 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
                v133 = nw_endpoint_get_logging_description(v137);
                v135 = v88;
                v89 = v87;
                v131 = nw_endpoint_handler_state_string(*(a1 + 32));
                v90 = nw_endpoint_handler_mode_string(*(a1 + 32));
                v91 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
                v92 = v91;
                v93 = "invalid";
                v94 = *(*(a1 + 56) + 392);
                if (!v94)
                {
                  v94 = "invalid";
                }

                if (v50[2])
                {
                  v93 = v50[2];
                }

                *buf = 136448258;
                *&buf[4] = "nw_endpoint_flow_attach_protocols_block_invoke";
                v142 = 2082;
                v143 = v89;
                v144 = 2082;
                v145 = v135;
                v146 = 2082;
                v147 = v133;
                v148 = 2082;
                v149 = v131;
                v150 = 2082;
                v151 = v90;
                v152 = 2114;
                v153 = v91;
                v154 = 2082;
                v155 = v94;
                v156 = 2082;
                v157 = v93;
                _os_log_impl(&dword_181A37000, v86, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to add protocol %{public}s as a listener to %{public}s", buf, 0x5Cu);
              }
            }
          }
        }
      }
    }

    os_unfair_lock_lock((*(a1 + 56) + 880));
    v52 = *(a1 + 56);
    if (!*(v52 + 720))
    {
      v53 = v50[5];
      v54 = v50;
      if (v53 == &nw_protocol_ref_counted_handle || v53 == &nw_protocol_ref_counted_additional_handle && (v54 = v50[8]) != 0)
      {
        v62 = v54[11];
        if (v62)
        {
          v54[11] = v62 + 1;
          v52 = *(a1 + 56);
        }

        *buf = v50;
        v55 = buf[8] | 1;
      }

      else
      {
        *buf = v50;
        v55 = buf[8] & 0xFE;
      }

      buf[8] = v55;
      v63 = *(v52 + 728);
      v64 = v50;
      if (v63)
      {
        nw::release_if_needed<nw_protocol *>((v52 + 720));
        v63 = *(v52 + 728);
        v64 = *buf;
        v55 = buf[8];
      }

      *(v52 + 720) = v64;
      *(v52 + 728) = v63 & 0xFE | v55 & 1;
      v52 = *(a1 + 56);
    }

    os_unfair_lock_unlock((v52 + 880));
    *(*(*(a1 + 80) + 8) + 24) = v50;
    if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v65 = gconnectionLogObj;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        v66 = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v67 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v68 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v69 = v68;
        if (v68)
        {
          v70 = _nw_endpoint_get_logging_description(v68);
        }

        else
        {
          v70 = "<NULL>";
        }

        v71 = nw_endpoint_handler_state_string(*(a1 + 32));
        v72 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v73 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136448002;
        *&buf[4] = "nw_endpoint_flow_attach_protocols_block_invoke";
        v142 = 2082;
        v143 = v66;
        v144 = 2082;
        v145 = v67;
        v146 = 2082;
        v147 = v70;
        v148 = 2082;
        v149 = v71;
        v150 = 2082;
        v151 = v72;
        v152 = 2114;
        v153 = v73;
        v154 = 2082;
        v155 = identifier;
        _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Attached transport protocol: %{public}s", buf, 0x52u);
      }
    }

    v56 = 1;
  }

  else
  {
    v56 = 0;
    *(*(*(a1 + 88) + 8) + 24) = 1;
  }

LABEL_115:

  return v56;
}

BOOL nw_parameters_clear_protocol_stack(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = _nw_parameters_copy_default_protocol_stack(a1);
    v4 = v3;
    v5 = v3 != 0;
    if (v3)
    {
      _nw_protocol_stack_clear_protocols_at_level(v3, a2);
LABEL_4:

      return v5;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_parameters_clear_protocol_stack";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
    {
LABEL_39:
      if (v13)
      {
        free(v13);
      }

      goto LABEL_4;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_parameters_clear_protocol_stack";
        v16 = "%{public}s called with null stack";
LABEL_37:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v20 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v24 = "nw_parameters_clear_protocol_stack";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_39;
        }

        if (!v20)
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v24 = "nw_parameters_clear_protocol_stack";
        v16 = "%{public}s called with null stack, no backtrace";
        goto LABEL_37;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v24 = "nw_parameters_clear_protocol_stack";
        v16 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_37;
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_parameters_clear_protocol_stack";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v8, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_parameters_clear_protocol_stack";
        v11 = "%{public}s called with null parameters";
LABEL_30:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        v17 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v18 = os_log_type_enabled(v9, type);
        if (v17)
        {
          if (v18)
          {
            *buf = 136446466;
            v24 = "nw_parameters_clear_protocol_stack";
            v25 = 2082;
            v26 = v17;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v17);
          goto LABEL_32;
        }

        if (!v18)
        {
          goto LABEL_31;
        }

        *buf = 136446210;
        v24 = "nw_parameters_clear_protocol_stack";
        v11 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_30;
      }

      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_parameters_clear_protocol_stack";
        v11 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_30;
      }
    }

LABEL_31:
  }

LABEL_32:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

uint64_t sub_181B1C7E4(uint64_t result, int a2)
{
  v2 = result;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v9 = *(result + 64);
      *(v2 + 64) = xmmword_182AE69F0;

      return sub_181AC3890(v9);
    }

    else if (a2 == 2)
    {
      swift_beginAccess();
      v3 = *(v2 + 48);
      v4 = *(v2 + 56);
      *(v2 + 48) = xmmword_182AE3CC0;
      return sub_181A52FE0(v3, v4);
    }
  }

  else if (a2 == 3)
  {
    v5 = *(result + 32);
    v6 = *(v2 + 40);
    *(v2 + 32) = xmmword_182AE3CC0;
    sub_181A5301C(v5, v6);
    v7 = *(v2 + 96);
    v8 = *(v2 + 104);
    *(v2 + 96) = xmmword_182AE3CC0;

    return sub_181A53008(v7, v8);
  }

  else
  {
    if (a2 == 4)
    {
      sub_181A54748();

      *(v2 + 24) = *sub_182AD2388();
    }

    else
    {
      if (a2 != 5)
      {
        return result;
      }

      sub_181AC9084();

      *(v2 + 16) = *sub_182AD2388();
    }
  }

  return result;
}

BOOL nw_endpoint_flow_setup_protocols(NWConcrete_nw_endpoint_handler *a1, NSObject *a2, nw_protocol *a3, int a4, int a5)
{
  v322 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = v8;
  if (!v8)
  {
    v240 = __nwlog_obj();
    *buf = 136446210;
    v306 = "nw_endpoint_handler_get_mode";
    v241 = _os_log_send_and_compose_impl();

    LOBYTE(v321) = 16;
    LOBYTE(v303) = 0;
    if (__nwlog_fault(v241, &v321, &v303))
    {
      if (v321 == 17)
      {
        v242 = __nwlog_obj();
        v243 = v321;
        if (os_log_type_enabled(v242, v321))
        {
          *buf = 136446210;
          v306 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v242, v243, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v303 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v242 = __nwlog_obj();
        v245 = v321;
        v246 = os_log_type_enabled(v242, v321);
        if (backtrace_string)
        {
          if (v246)
          {
            *buf = 136446466;
            v306 = "nw_endpoint_handler_get_mode";
            v307 = 2082;
            id_str = backtrace_string;
            _os_log_impl(&dword_181A37000, v242, v245, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_357;
        }

        if (v246)
        {
          *buf = 136446210;
          v306 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v242, v245, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v242 = __nwlog_obj();
        v247 = v321;
        if (os_log_type_enabled(v242, v321))
        {
          *buf = 136446210;
          v306 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v242, v247, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_357:
    if (v241)
    {
      free(v241);
    }

    mode = 0;
LABEL_360:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v260 = gLogObj;
    if (mode > 5)
    {
      v261 = "unknown-mode";
    }

    else
    {
      v261 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v306 = "nw_endpoint_flow_setup_protocols";
    v307 = 2082;
    id_str = v261;
    v309 = 2082;
    v310 = "flow";
    v262 = _os_log_send_and_compose_impl();

    LOBYTE(v321) = 16;
    LOBYTE(v303) = 0;
    if (__nwlog_fault(v262, &v321, &v303))
    {
      if (v321 == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v263 = gLogObj;
        v264 = v321;
        if (os_log_type_enabled(v263, v321))
        {
          if (mode > 5)
          {
            v265 = "unknown-mode";
          }

          else
          {
            v265 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v306 = "nw_endpoint_flow_setup_protocols";
          v307 = 2082;
          id_str = v265;
          v309 = 2082;
          v310 = "flow";
          _os_log_impl(&dword_181A37000, v263, v264, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v303 == 1)
      {
        v266 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v263 = gLogObj;
        v267 = v321;
        v268 = os_log_type_enabled(v263, v321);
        if (v266)
        {
          if (v268)
          {
            if (mode > 5)
            {
              v269 = "unknown-mode";
            }

            else
            {
              v269 = off_1E6A31018[mode];
            }

            *buf = 136446978;
            v306 = "nw_endpoint_flow_setup_protocols";
            v307 = 2082;
            id_str = v269;
            v309 = 2082;
            v310 = "flow";
            v311 = 2082;
            v312 = v266;
            _os_log_impl(&dword_181A37000, v263, v267, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v266);
          if (!v262)
          {
            goto LABEL_394;
          }

          goto LABEL_393;
        }

        if (v268)
        {
          if (mode > 5)
          {
            v272 = "unknown-mode";
          }

          else
          {
            v272 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v306 = "nw_endpoint_flow_setup_protocols";
          v307 = 2082;
          id_str = v272;
          v309 = 2082;
          v310 = "flow";
          _os_log_impl(&dword_181A37000, v263, v267, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v263 = gLogObj;
        v270 = v321;
        if (os_log_type_enabled(v263, v321))
        {
          if (mode > 5)
          {
            v271 = "unknown-mode";
          }

          else
          {
            v271 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v306 = "nw_endpoint_flow_setup_protocols";
          v307 = 2082;
          id_str = v271;
          v309 = 2082;
          v310 = "flow";
          _os_log_impl(&dword_181A37000, v263, v270, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v262)
    {
LABEL_394:
      v66 = 0;
      goto LABEL_395;
    }

LABEL_393:
    free(v262);
    goto LABEL_394;
  }

  mode = v8->mode;

  if (mode != 2)
  {
    goto LABEL_360;
  }

  v11 = nw_endpoint_handler_copy_flow(v9);
  v296 = a2;
  v300 = v11;
  if ((*(v11 + 35) & 1) == 0)
  {
    goto LABEL_56;
  }

  v12 = v9;
  v13 = *(v12 + 284);

  if (a2)
  {
    if ((v13 & 0x40) != 0)
    {
      goto LABEL_56;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v14 = gconnectionLogObj;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
LABEL_55:

      a2 = v296;
      v11 = v300;
LABEL_56:
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_85389);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      *(v11 + 35) |= 1u;
      if ((*(v11 + 32) & 0x40) == 0)
      {
        if ((*(v11 + 32) & 4) == 0 && (a5 & 1) == 0 && !*(v11 + 104))
        {
          v50 = v9;
          v51 = v50[4];

          upper_transport_protocol = nw_parameters_get_upper_transport_protocol(v51);
          v53 = v50;
          v54 = v53[7];

          LODWORD(v321) = 0;
          if (v54)
          {
            v55 = nw_association_create_flow(v54, upper_transport_protocol == 253, 0, 0, 0, 0, &v321);
            v56 = *(v300 + 104);
            *(v300 + 104) = v55;
          }

          if (!*(v300 + 104) && (*(v300 + 34) & 2) == 0)
          {
            if ((nw_endpoint_handler_get_logging_disabled(v53) & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v57 = gconnectionLogObj;
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                id_string = nw_endpoint_handler_get_id_string(v53);
                v59 = nw_endpoint_handler_dry_run_string(v53);
                v299 = nw_endpoint_handler_copy_endpoint(v53);
                logging_description = nw_endpoint_get_logging_description(v299);
                v61 = nw_endpoint_handler_state_string(v53);
                v62 = nw_endpoint_handler_mode_string(v53);
                v63 = nw_endpoint_handler_copy_current_path(v53);
                *buf = 136447746;
                v306 = "nw_endpoint_flow_setup_protocols";
                v307 = 2082;
                id_str = id_string;
                v309 = 2082;
                v310 = v59;
                v311 = 2082;
                v312 = logging_description;
                v313 = 2082;
                v314 = v61;
                v315 = 2082;
                v316 = v62;
                v317 = 2114;
                v318 = v63;
                _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] failed to request add flow", buf, 0x48u);
              }
            }

            if (v321 && !*(v300 + 109))
            {
              posix_error = nw_error_create_posix_error(v321);
              v65 = *(v300 + 109);
              *(v300 + 109) = posix_error;
            }

            nw_endpoint_flow_failed_with_error(v53, 1, 0);

            v66 = 0;
            v11 = v300;
            goto LABEL_314;
          }

          a2 = v296;
          v11 = v300;
        }

        v85 = *(v11 + 104);
        if (v85)
        {
          v321 = 0uLL;
          v86 = v85;
          if (!uuid_is_null(v86 + 32))
          {
            v321 = *(v86 + 2);
          }

          *(v300 + 376) = v321;
          if (v296)
          {
            *&v296->isa = v321;
          }

          v87 = v9;
          v88 = (*(v87 + 284) & 0x20) == 0;

          if (!v88)
          {
            if (nw_endpoint_handler_get_logging_disabled(v87))
            {
              goto LABEL_167;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v91 = gconnectionLogObj;
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              v248 = nw_endpoint_handler_get_id_string(v87);
              v290 = nw_endpoint_handler_dry_run_string(v87);
              v249 = nw_endpoint_handler_copy_endpoint(v87);
              v250 = nw_endpoint_get_logging_description(v249);
              v251 = nw_endpoint_handler_state_string(v87);
              v252 = nw_endpoint_handler_mode_string(v87);
              v253 = nw_endpoint_handler_copy_current_path(v87);
              *buf = 136448258;
              v306 = "nw_endpoint_flow_setup_protocols";
              v307 = 2082;
              id_str = v248;
              v309 = 2082;
              v310 = v290;
              v311 = 2082;
              v312 = v250;
              v313 = 2082;
              v314 = v251;
              v315 = 2082;
              v316 = v252;
              v317 = 2114;
              v318 = v253;
              v319 = 1042;
              LODWORD(v320[0]) = 16;
              WORD2(v320[0]) = 2098;
              *(v320 + 6) = v300 + 376;
              _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] setup flow id %{public,uuid_t}.16P", buf, 0x58u);
            }

            goto LABEL_166;
          }

          v89 = v87;
          v90 = (*(v87 + 284) & 0x40) == 0;

          if (!v90)
          {
LABEL_167:
            a2 = v296;
            goto LABEL_168;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v91 = gconnectionLogObj;
          if (!os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
          {
LABEL_166:

            goto LABEL_167;
          }

          v92 = v89;

          v93 = v92;
          v94 = (*(v87 + 284) & 1) == 0;

          if (v94)
          {
            v95 = "";
          }

          else
          {
            v95 = "dry-run ";
          }

          v96 = nw_endpoint_handler_copy_endpoint(v93);
          v97 = v96;
          if (v96)
          {
            v98 = _nw_endpoint_get_logging_description(v96);
          }

          else
          {
            v98 = "<NULL>";
          }

          v288 = v97;

          v99 = v93;
          v100 = v99;
          v101 = v99[30];
          if (v101 > 5)
          {
            v102 = "unknown-state";
          }

          else
          {
            v102 = off_1E6A31048[v101];
          }

          v103 = v100;
          v104 = v103;
          v105 = v9->mode;
          if (v105 > 2)
          {
            switch(v105)
            {
              case 3:
                v106 = "proxy";
                goto LABEL_150;
              case 4:
                v106 = "fallback";
                goto LABEL_150;
              case 5:
                v106 = "transform";
                goto LABEL_150;
            }
          }

          else
          {
            switch(v105)
            {
              case 0:
                v106 = "path";
                goto LABEL_150;
              case 1:
                v106 = "resolver";
                goto LABEL_150;
              case 2:
                v106 = nw_endpoint_flow_mode_string(v103[33]);
LABEL_150:

                v111 = v92;
                v112 = v98;
                v113 = v102;
                v114 = v95;
                v115 = v104;
                os_unfair_lock_lock(v115 + 28);
                v116 = v115[8];
                os_unfair_lock_unlock(v115 + 28);

                *buf = 136448258;
                v306 = "nw_endpoint_flow_setup_protocols";
                v307 = 2082;
                id_str = v111->id_str;
                v309 = 2082;
                v310 = v114;
                v311 = 2082;
                v312 = v112;
                v313 = 2082;
                v314 = v113;
                v315 = 2082;
                v316 = v106;
                v317 = 2114;
                v318 = v116;
                v319 = 1042;
                LODWORD(v320[0]) = 16;
                WORD2(v320[0]) = 2098;
                *(v320 + 6) = v300 + 376;
                _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] setup flow id %{public,uuid_t}.16P", buf, 0x58u);

                goto LABEL_166;
            }
          }

          v106 = "unknown-mode";
          goto LABEL_150;
        }

        if (!a5)
        {
LABEL_168:
          v11 = v300;
          if (!nw_endpoint_flow_attach_protocols(v9, a2, a3))
          {
            goto LABEL_268;
          }

          *(v300 + 32) |= 0x40u;
          if (!a4)
          {
            goto LABEL_313;
          }

LABEL_170:
          v129 = *(v11 + 32);
          v130 = v9;
          v131 = v130;
          if ((v129 & 2) == 0)
          {
            v132 = v130->endpoint;

            v133 = *(v300 + 121);
            *(v300 + 121) = v132;

            v11 = v300;
            if (!*(v300 + 117))
            {
              if (*(v300 + 33))
              {
                if (nw_endpoint_handler_get_logging_disabled(v131))
                {
                  goto LABEL_253;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v136 = gconnectionLogObj;
                if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
                {
                  v161 = nw_endpoint_handler_get_id_string(v131);
                  v162 = nw_endpoint_handler_dry_run_string(v131);
                  v163 = nw_endpoint_handler_copy_endpoint(v131);
                  v164 = nw_endpoint_get_logging_description(v163);
                  v165 = nw_endpoint_handler_state_string(v131);
                  v166 = nw_endpoint_handler_mode_string(v131);
                  v167 = nw_endpoint_handler_copy_current_path(v131);
                  *buf = 136447746;
                  v306 = "nw_endpoint_flow_setup_protocols";
                  v307 = 2082;
                  id_str = v161;
                  v309 = 2082;
                  v310 = v162;
                  v311 = 2082;
                  v312 = v164;
                  v313 = 2082;
                  v314 = v165;
                  v315 = 2082;
                  v316 = v166;
                  v317 = 2114;
                  v318 = v167;
                  _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] joined protocol stack, starting", buf, 0x48u);
                }

                goto LABEL_252;
              }

              if (*(v300 + 116))
              {
                v152 = *(v300 + 118);
                logging_disabled = nw_endpoint_handler_get_logging_disabled(v131);
                if (!v152)
                {
                  if (logging_disabled)
                  {
LABEL_309:
                    v232 = *(v11 + 35);
                    if ((v232 & 0x18) == 8)
                    {
                      *(v11 + 35) = v232 & 0xE7;
                      nw_endpoint_flow_start_child(v131);
                      v66 = *(v11 + 116) != 0;
                      if (!*(v11 + 116))
                      {
LABEL_311:
                        if (a4)
                        {
                          nw_endpoint_flow_failed_with_error(v9, 1, 0);
                          v66 = 0;
                        }
                      }

LABEL_314:
                      *(v11 + 35) &= ~1u;
                      if (_nw_signposts_once != -1)
                      {
                        dispatch_once(&_nw_signposts_once, &__block_literal_global_85389);
                      }

                      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
                      {
                        kdebug_trace();
                      }

                      goto LABEL_319;
                    }

LABEL_313:
                    v66 = 1;
                    goto LABEL_314;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v206 = gconnectionLogObj;
                  if (os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
                  {
                    v233 = nw_endpoint_handler_get_id_string(v131);
                    v234 = nw_endpoint_handler_dry_run_string(v131);
                    v235 = nw_endpoint_handler_copy_endpoint(v131);
                    v236 = nw_endpoint_get_logging_description(v235);
                    v237 = nw_endpoint_handler_state_string(v131);
                    v238 = nw_endpoint_handler_mode_string(v131);
                    v239 = nw_endpoint_handler_copy_current_path(v131);
                    *buf = 136447746;
                    v306 = "nw_endpoint_flow_setup_protocols";
                    v307 = 2082;
                    id_str = v233;
                    v309 = 2082;
                    v310 = v234;
                    v311 = 2082;
                    v312 = v236;
                    v313 = 2082;
                    v314 = v237;
                    v315 = 2082;
                    v316 = v238;
                    v317 = 2114;
                    v318 = v239;
                    _os_log_impl(&dword_181A37000, v206, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] not doing anything yet, no connected endpoint handler", buf, 0x48u);
                  }

LABEL_308:

                  v11 = v300;
                  goto LABEL_309;
                }

                if ((logging_disabled & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v136 = gconnectionLogObj;
                  if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
                  {
                    v154 = nw_endpoint_handler_get_id_string(v131);
                    v155 = nw_endpoint_handler_dry_run_string(v131);
                    v156 = nw_endpoint_handler_copy_endpoint(v131);
                    v157 = nw_endpoint_get_logging_description(v156);
                    v158 = nw_endpoint_handler_state_string(v131);
                    v159 = nw_endpoint_handler_mode_string(v131);
                    v160 = nw_endpoint_handler_copy_current_path(v131);
                    *buf = 136447746;
                    v306 = "nw_endpoint_flow_setup_protocols";
                    v307 = 2082;
                    id_str = v154;
                    v309 = 2082;
                    v310 = v155;
                    v311 = 2082;
                    v312 = v157;
                    v313 = 2082;
                    v314 = v158;
                    v315 = 2082;
                    v316 = v159;
                    v317 = 2114;
                    v318 = v160;
                    _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] has candidate children, starting", buf, 0x48u);
                  }

                  goto LABEL_252;
                }
              }

              else
              {
                if ((nw_endpoint_handler_get_logging_disabled(v131) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v191 = gconnectionLogObj;
                  if (os_log_type_enabled(v191, OS_LOG_TYPE_DEBUG))
                  {
                    v192 = nw_endpoint_handler_get_id_string(v131);
                    v193 = nw_endpoint_handler_dry_run_string(v131);
                    v194 = nw_endpoint_handler_copy_endpoint(v131);
                    v195 = nw_endpoint_get_logging_description(v194);
                    v196 = nw_endpoint_handler_state_string(v131);
                    v197 = nw_endpoint_handler_mode_string(v131);
                    v198 = nw_endpoint_handler_copy_current_path(v131);
                    *buf = 136447746;
                    v306 = "nw_endpoint_flow_setup_protocols";
                    v307 = 2082;
                    id_str = v192;
                    v309 = 2082;
                    v310 = v193;
                    v311 = 2082;
                    v312 = v195;
                    v313 = 2082;
                    v314 = v196;
                    v315 = 2082;
                    v316 = v197;
                    v317 = 2114;
                    v318 = v198;
                    _os_log_impl(&dword_181A37000, v191, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] persistent protocol stack, starting", buf, 0x48u);
                  }

                  v11 = v300;
                }

                *(v11 + 35) |= 8u;
              }

LABEL_253:
              if ((*(v11 + 32) & 0x80000000) == 0)
              {
                if (!v296)
                {
                  if (nw_endpoint_flow_connect(v131))
                  {
LABEL_286:
                    *(v11 + 32) |= 0x80u;
                    goto LABEL_309;
                  }

LABEL_268:
                  v66 = 0;
                  goto LABEL_311;
                }

                isa = v296[5].isa;
                p_isa = &v296->isa;
                if (isa == &nw_protocol_ref_counted_handle || isa == &nw_protocol_ref_counted_additional_handle && (p_isa = v296[8].isa) != 0)
                {
                  v214 = p_isa[11];
                  if (v214)
                  {
                    p_isa[11] = v214 + 1;
                  }

                  v203 = 0;
                  *&v321 = v296;
                  BYTE8(v321) |= 1u;
                }

                else
                {
                  *&v321 = v296;
                  BYTE8(v321) &= ~1u;
                  v203 = 1;
                }

                v215 = *(v11 + 52);
                v216 = v11 + 376;
                if (v215 == &nw_protocol_ref_counted_handle || v215 == &nw_protocol_ref_counted_additional_handle && (v216 = *(v11 + 55)) != 0)
                {
                  v218 = *(v216 + 11);
                  if (v218)
                  {
                    *(v216 + 11) = v218 + 1;
                  }

                  v217 = 0;
                  v303 = v11 + 376;
                  v304 |= 1u;
                }

                else
                {
                  v303 = v11 + 376;
                  v304 &= ~1u;
                  v217 = 1;
                }

                v219 = v296[3].isa;
                if (v219)
                {
                  v220 = *(v219 + 3);
                  if (v220)
                  {
                    v221 = v220(v296, v11 + 376);
                    if (v217)
                    {
                      goto LABEL_284;
                    }

                    goto LABEL_283;
                  }
                }

                v254 = __nwlog_obj();
                v255 = v296[2].isa;
                *buf = 136446722;
                v306 = "__nw_protocol_connect";
                if (!v255)
                {
                  v255 = "invalid";
                }

                v307 = 2082;
                id_str = v255;
                v309 = 2048;
                v310 = v296;
                v256 = _os_log_send_and_compose_impl();

                type = OS_LOG_TYPE_ERROR;
                v301 = 0;
                if (__nwlog_fault(v256, &type, &v301))
                {
                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    v257 = __nwlog_obj();
                    v258 = type;
                    if (os_log_type_enabled(v257, type))
                    {
                      v259 = v296[2].isa;
                      if (!v259)
                      {
                        v259 = "invalid";
                      }

                      *buf = 136446722;
                      v306 = "__nw_protocol_connect";
                      v307 = 2082;
                      id_str = v259;
                      v309 = 2048;
                      v310 = v296;
                      _os_log_impl(&dword_181A37000, v257, v258, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, 0x20u);
                    }

LABEL_352:

                    goto LABEL_420;
                  }

                  if (v301 != 1)
                  {
                    v257 = __nwlog_obj();
                    v285 = type;
                    if (os_log_type_enabled(v257, type))
                    {
                      v286 = v296[2].isa;
                      if (!v286)
                      {
                        v286 = "invalid";
                      }

                      *buf = 136446722;
                      v306 = "__nw_protocol_connect";
                      v307 = 2082;
                      id_str = v286;
                      v309 = 2048;
                      v310 = v296;
                      _os_log_impl(&dword_181A37000, v257, v285, "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded", buf, 0x20u);
                    }

                    goto LABEL_352;
                  }

                  v274 = __nw_create_backtrace_string();
                  v275 = __nwlog_obj();
                  v276 = type;
                  v277 = os_log_type_enabled(v275, type);
                  if (v274)
                  {
                    if (v277)
                    {
                      v278 = v296[2].isa;
                      if (!v278)
                      {
                        v278 = "invalid";
                      }

                      *buf = 136446978;
                      v306 = "__nw_protocol_connect";
                      v307 = 2082;
                      id_str = v278;
                      v309 = 2048;
                      v310 = v296;
                      v311 = 2082;
                      v312 = v274;
                      _os_log_impl(&dword_181A37000, v275, v276, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
                    }

                    free(v274);
                  }

                  else
                  {
                    if (v277)
                    {
                      v287 = v296[2].isa;
                      if (!v287)
                      {
                        v287 = "invalid";
                      }

                      *buf = 136446722;
                      v306 = "__nw_protocol_connect";
                      v307 = 2082;
                      id_str = v287;
                      v309 = 2048;
                      v310 = v296;
                      _os_log_impl(&dword_181A37000, v275, v276, "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace", buf, 0x20u);
                    }
                  }
                }

LABEL_420:
                if (v256)
                {
                  free(v256);
                }

                v221 = 0;
                v11 = v300;
                if (v217)
                {
LABEL_284:
                  if (v203)
                  {
                    if (v221)
                    {
                      goto LABEL_286;
                    }
                  }

                  else
                  {
                    nw::release_if_needed<nw_protocol *>(&v321);
                    if (v221)
                    {
                      goto LABEL_286;
                    }
                  }

                  goto LABEL_268;
                }

LABEL_283:
                nw::release_if_needed<nw_protocol *>(&v303);
                goto LABEL_284;
              }

              v204 = v131;
              v205 = (*(v204 + 284) & 0x40) == 0;

              v11 = v300;
              if (!v205)
              {
                goto LABEL_309;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v206 = gconnectionLogObj;
              if (!os_log_type_enabled(v206, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_308;
              }

              v207 = v204;

              v208 = v207;
              v209 = (*(v204 + 284) & 1) == 0;

              if (v209)
              {
                v210 = "";
              }

              else
              {
                v210 = "dry-run ";
              }

              v211 = nw_endpoint_handler_copy_endpoint(v208);
              v212 = v211;
              v297 = v210;
              if (v211)
              {
                v213 = _nw_endpoint_get_logging_description(v211);
              }

              else
              {
                v213 = "<NULL>";
              }

              v222 = v208;
              v223 = v222;
              v224 = v222[30];
              if (v224 > 5)
              {
                v225 = "unknown-state";
              }

              else
              {
                v225 = off_1E6A31048[v224];
              }

              v226 = v223;
              v227 = v226;
              v228 = v9->mode;
              if (v228 > 2)
              {
                switch(v228)
                {
                  case 3:
                    v229 = "proxy";
                    goto LABEL_307;
                  case 4:
                    v229 = "fallback";
                    goto LABEL_307;
                  case 5:
                    v229 = "transform";
                    goto LABEL_307;
                }
              }

              else
              {
                switch(v228)
                {
                  case 0:
                    v229 = "path";
                    goto LABEL_307;
                  case 1:
                    v229 = "resolver";
                    goto LABEL_307;
                  case 2:
                    v229 = nw_endpoint_flow_mode_string(v226[33]);
LABEL_307:

                    v230 = v227;
                    os_unfair_lock_lock(v230 + 28);
                    v231 = v230[8];
                    os_unfair_lock_unlock(v230 + 28);

                    *buf = 136447746;
                    v306 = "nw_endpoint_flow_setup_protocols";
                    v307 = 2082;
                    id_str = v207 + 184;
                    v309 = 2082;
                    v310 = v297;
                    v311 = 2082;
                    v312 = v213;
                    v313 = 2082;
                    v314 = v225;
                    v315 = 2082;
                    v316 = v229;
                    v317 = 2114;
                    v318 = v231;
                    _os_log_impl(&dword_181A37000, v206, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already started", buf, 0x48u);

                    goto LABEL_308;
                }
              }

              v229 = "unknown-mode";
              goto LABEL_307;
            }

            v134 = v131;
            v135 = (*(v134 + 284) & 0x40) == 0;

            v11 = v300;
            if (!v135)
            {
              goto LABEL_253;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v136 = gconnectionLogObj;
            if (!os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_252;
            }

            v137 = v134;

            v138 = v137;
            v139 = (*(v134 + 284) & 1) == 0;

            if (v139)
            {
              v140 = "";
            }

            else
            {
              v140 = "dry-run ";
            }

            v141 = nw_endpoint_handler_copy_endpoint(v138);
            v142 = v141;
            v294 = v140;
            if (v141)
            {
              v143 = _nw_endpoint_get_logging_description(v141);
            }

            else
            {
              v143 = "<NULL>";
            }

            v176 = v138;
            v177 = v176;
            v178 = v176[30];
            if (v178 > 5)
            {
              v179 = "unknown-state";
            }

            else
            {
              v179 = off_1E6A31048[v178];
            }

            v180 = v177;
            v181 = v180;
            v182 = v9->mode;
            if (v182 > 2)
            {
              switch(v182)
              {
                case 3:
                  v183 = "proxy";
                  goto LABEL_251;
                case 4:
                  v183 = "fallback";
                  goto LABEL_251;
                case 5:
                  v183 = "transform";
                  goto LABEL_251;
              }
            }

            else
            {
              switch(v182)
              {
                case 0:
                  v183 = "path";
                  goto LABEL_251;
                case 1:
                  v183 = "resolver";
                  goto LABEL_251;
                case 2:
                  v183 = nw_endpoint_flow_mode_string(v180[33]);
LABEL_251:

                  v199 = v181;
                  os_unfair_lock_lock(v199 + 28);
                  v200 = v199[8];
                  os_unfair_lock_unlock(v199 + 28);

                  *buf = 136447746;
                  v306 = "nw_endpoint_flow_setup_protocols";
                  v307 = 2082;
                  id_str = v137 + 184;
                  v309 = 2082;
                  v310 = v294;
                  v311 = 2082;
                  v312 = v143;
                  v313 = 2082;
                  v314 = v179;
                  v315 = 2082;
                  v316 = v183;
                  v317 = 2114;
                  v318 = v200;
                  _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] child flow connected, starting", buf, 0x48u);

LABEL_252:
                  v11 = v300;
                  goto LABEL_253;
              }
            }

            v183 = "unknown-mode";
            goto LABEL_251;
          }

          v144 = (*(v130 + 284) & 0x40) == 0;

          v11 = v300;
          if (!v144)
          {
            goto LABEL_253;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v136 = gconnectionLogObj;
          if (!os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_252;
          }

          v145 = v131;

          v146 = v145;
          v147 = (*(v131 + 284) & 1) == 0;

          if (v147)
          {
            v148 = "";
          }

          else
          {
            v148 = "dry-run ";
          }

          v149 = nw_endpoint_handler_copy_endpoint(v146);
          v150 = v149;
          if (v149)
          {
            v151 = _nw_endpoint_get_logging_description(v149);
          }

          else
          {
            v151 = "<NULL>";
          }

          v168 = v146;
          v169 = v168;
          v170 = v168[30];
          if (v170 > 5)
          {
            v171 = "unknown-state";
          }

          else
          {
            v171 = off_1E6A31048[v170];
          }

          v172 = v169;
          v173 = v172;
          v174 = v9->mode;
          if (v174 > 2)
          {
            switch(v174)
            {
              case 3:
                v175 = "proxy";
                break;
              case 4:
                v175 = "fallback";
                break;
              case 5:
                v175 = "transform";
                break;
              default:
LABEL_233:
                v175 = "unknown-mode";
                break;
            }
          }

          else
          {
            if (v174)
            {
              if (v174 == 1)
              {
                v175 = "resolver";
                goto LABEL_236;
              }

              if (v174 == 2)
              {
                v295 = nw_endpoint_flow_mode_string(v172[33]);
LABEL_237:

                v184 = v151;
                v185 = v171;
                v186 = v131;
                v187 = v148;
                v188 = v173;
                os_unfair_lock_lock(v188 + 28);
                v189 = v188[8];
                os_unfair_lock_unlock(v188 + 28);

                v190 = v187;
                v131 = v186;
                *buf = 136447746;
                v306 = "nw_endpoint_flow_setup_protocols";
                v307 = 2082;
                id_str = v145 + 184;
                v309 = 2082;
                v310 = v190;
                v311 = 2082;
                v312 = v184;
                v313 = 2082;
                v314 = v185;
                v315 = 2082;
                v316 = v295;
                v317 = 2114;
                v318 = v189;
                _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] leaf flow starting", buf, 0x48u);

                goto LABEL_252;
              }

              goto LABEL_233;
            }

            v175 = "path";
          }

LABEL_236:
          v295 = v175;
          goto LABEL_237;
        }

        os_unfair_lock_lock(&nw_uuid_generate_insecure(unsigned char *)::uuid_lock);
        if (uuid_is_null(&nw_uuid_generate_insecure(unsigned char *)::last_used_uuid))
        {
          goto LABEL_159;
        }

        if (nw_uuid_generate_insecure(unsigned char *)::last_used_uuid != -1)
        {
          *&nw_uuid_generate_insecure(unsigned char *)::last_used_uuid = nw_uuid_generate_insecure(unsigned char *)::last_used_uuid + 1;
          goto LABEL_160;
        }

        if (*(&nw_uuid_generate_insecure(unsigned char *)::last_used_uuid + 1) == -1)
        {
LABEL_159:
          uuid_generate_random(&nw_uuid_generate_insecure(unsigned char *)::last_used_uuid);
          BYTE9(nw_uuid_generate_insecure(unsigned char *)::last_used_uuid) = -1;
        }

        else
        {
          ++*(&nw_uuid_generate_insecure(unsigned char *)::last_used_uuid + 1);
        }

LABEL_160:
        *(v300 + 376) = nw_uuid_generate_insecure(unsigned char *)::last_used_uuid;
        os_unfair_lock_unlock(&nw_uuid_generate_insecure(unsigned char *)::uuid_lock);
        v119 = v9;
        v120 = (*(v119 + 284) & 0x20) == 0;

        if (!v120)
        {
          a2 = v296;
          if (nw_endpoint_handler_get_logging_disabled(v119))
          {
            goto LABEL_168;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v91 = gconnectionLogObj;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
          {
            v279 = nw_endpoint_handler_get_id_string(v119);
            v291 = nw_endpoint_handler_dry_run_string(v119);
            v280 = nw_endpoint_handler_copy_endpoint(v119);
            v281 = nw_endpoint_get_logging_description(v280);
            v282 = nw_endpoint_handler_state_string(v119);
            v283 = nw_endpoint_handler_mode_string(v119);
            v284 = nw_endpoint_handler_copy_current_path(v119);
            *buf = 136448258;
            v306 = "nw_endpoint_flow_setup_protocols";
            v307 = 2082;
            id_str = v279;
            v309 = 2082;
            v310 = v291;
            v311 = 2082;
            v312 = v281;
            v313 = 2082;
            v314 = v282;
            v315 = 2082;
            v316 = v283;
            v317 = 2114;
            v318 = v284;
            v319 = 1042;
            LODWORD(v320[0]) = 16;
            WORD2(v320[0]) = 2098;
            *(v320 + 6) = v300 + 376;
            _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] generated flow id %{public,uuid_t}.16P", buf, 0x58u);
          }

          goto LABEL_166;
        }

        v121 = v119;
        v122 = (*(v119 + 284) & 0x40) == 0;

        a2 = v296;
        if (v122)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v91 = gconnectionLogObj;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
          {
            v123 = nw_endpoint_handler_get_id_string(v121);
            v124 = nw_endpoint_handler_dry_run_string(v121);
            v289 = nw_endpoint_handler_copy_endpoint(v121);
            v125 = nw_endpoint_get_logging_description(v289);
            v126 = nw_endpoint_handler_state_string(v121);
            v127 = nw_endpoint_handler_mode_string(v121);
            v128 = nw_endpoint_handler_copy_current_path(v121);
            *buf = 136448258;
            v306 = "nw_endpoint_flow_setup_protocols";
            v307 = 2082;
            id_str = v123;
            v309 = 2082;
            v310 = v124;
            v311 = 2082;
            v312 = v125;
            v313 = 2082;
            v314 = v126;
            v315 = 2082;
            v316 = v127;
            v317 = 2114;
            v318 = v128;
            v319 = 1042;
            LODWORD(v320[0]) = 16;
            WORD2(v320[0]) = 2098;
            *(v320 + 6) = v300 + 376;
            _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] generated flow id %{public,uuid_t}.16P", buf, 0x58u);
          }

          goto LABEL_166;
        }

        goto LABEL_168;
      }

      v67 = v9;
      v68 = (*(v67 + 284) & 0x40) == 0;

      v11 = v300;
      if (!v68)
      {
LABEL_141:
        if (!a4)
        {
          goto LABEL_313;
        }

        goto LABEL_170;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v69 = gconnectionLogObj;
      if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
LABEL_140:

        v11 = v300;
        goto LABEL_141;
      }

      v70 = v67;

      v71 = v70;
      v72 = (*(v67 + 284) & 1) == 0;

      if (v72)
      {
        v73 = "";
      }

      else
      {
        v73 = "dry-run ";
      }

      v74 = nw_endpoint_handler_copy_endpoint(v71);
      v75 = v74;
      if (v74)
      {
        v76 = _nw_endpoint_get_logging_description(v74);
      }

      else
      {
        v76 = "<NULL>";
      }

      v77 = v71;
      v78 = v77;
      v79 = v77[30];
      if (v79 > 5)
      {
        v80 = "unknown-state";
      }

      else
      {
        v80 = off_1E6A31048[v79];
      }

      v81 = v78;
      v82 = v81;
      v83 = v9->mode;
      if (v83 > 2)
      {
        switch(v83)
        {
          case 3:
            v84 = "proxy";
            goto LABEL_139;
          case 4:
            v84 = "fallback";
            goto LABEL_139;
          case 5:
            v84 = "transform";
            goto LABEL_139;
        }
      }

      else
      {
        switch(v83)
        {
          case 0:
            v84 = "path";
            goto LABEL_139;
          case 1:
            v84 = "resolver";
            goto LABEL_139;
          case 2:
            v84 = nw_endpoint_flow_mode_string(v81[33]);
LABEL_139:

            v107 = v82;
            v108 = v73;
            v109 = v107;
            os_unfair_lock_lock(v107 + 28);
            v110 = *&v109[16]._os_unfair_lock_opaque;
            os_unfair_lock_unlock(v109 + 28);

            *buf = 136447746;
            v306 = "nw_endpoint_flow_setup_protocols";
            v307 = 2082;
            id_str = v70->id_str;
            v309 = 2082;
            v310 = v108;
            v311 = 2082;
            v312 = v76;
            v313 = 2082;
            v314 = v80;
            v315 = 2082;
            v316 = v84;
            v317 = 2114;
            v318 = v110;
            _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already set up", buf, 0x48u);

            goto LABEL_140;
        }
      }

      v84 = "unknown-mode";
      goto LABEL_139;
    }

    v15 = v12;

    v16 = v15;
    v17 = *(v12 + 284);

    if (v17)
    {
      v18 = "dry-run ";
    }

    else
    {
      v18 = "";
    }

    v19 = nw_endpoint_handler_copy_endpoint(v16);
    v20 = v19;
    v292 = a3;
    if (v19)
    {
      v293 = _nw_endpoint_get_logging_description(v19);
    }

    else
    {
      v293 = "<NULL>";
    }

    v29 = v15->id_str;

    v30 = v16;
    v31 = v30;
    v32 = v30[30];
    if (v32 > 5)
    {
      v33 = "unknown-state";
    }

    else
    {
      v33 = off_1E6A31048[v32];
    }

    v34 = v31;
    v35 = v34;
    v36 = v9->mode;
    if (v36 > 2)
    {
      switch(v36)
      {
        case 3:
          v37 = v18;
          v38 = "proxy";
          goto LABEL_54;
        case 4:
          v37 = v18;
          v38 = "fallback";
          goto LABEL_54;
        case 5:
          v37 = v18;
          v38 = "transform";
          goto LABEL_54;
      }
    }

    else
    {
      switch(v36)
      {
        case 0:
          v37 = v18;
          v38 = "path";
          goto LABEL_54;
        case 1:
          v37 = v18;
          v38 = "resolver";
          goto LABEL_54;
        case 2:
          v37 = v18;
          v38 = nw_endpoint_flow_mode_string(v34[33]);
LABEL_54:

          v48 = v35;
          os_unfair_lock_lock(v48 + 28);
          v49 = v48[8];
          os_unfair_lock_unlock(v48 + 28);

          *buf = 136448002;
          v306 = "nw_endpoint_flow_setup_protocols";
          v307 = 2082;
          id_str = v29;
          v309 = 2082;
          v310 = v37;
          v311 = 2082;
          v312 = v293;
          v313 = 2082;
          v314 = v33;
          v315 = 2082;
          v316 = v38;
          v317 = 2114;
          v318 = v49;
          v319 = 2048;
          v320[0] = v296;
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] re-entered with attach_protocol %p, continuing", buf, 0x52u);

          a3 = v292;
          goto LABEL_55;
      }
    }

    v37 = v18;
    v38 = "unknown-mode";
    goto LABEL_54;
  }

  if ((v13 & 0x40) != 0)
  {
    v66 = 1;
    goto LABEL_319;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v21 = gconnectionLogObj;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = v12;

    v23 = v22;
    v24 = *(v12 + 284);

    if (v24)
    {
      v25 = "dry-run ";
    }

    else
    {
      v25 = "";
    }

    v26 = nw_endpoint_handler_copy_endpoint(v23);
    v27 = v26;
    if (v26)
    {
      v28 = _nw_endpoint_get_logging_description(v26);
    }

    else
    {
      v28 = "<NULL>";
    }

    v39 = v22->id_str;

    v40 = v23;
    v41 = v40;
    v42 = v40[30];
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
    v46 = v9->mode;
    if (v46 > 2)
    {
      switch(v46)
      {
        case 3:
          v47 = "proxy";
          goto LABEL_157;
        case 4:
          v47 = "fallback";
          goto LABEL_157;
        case 5:
          v47 = "transform";
          goto LABEL_157;
      }
    }

    else
    {
      switch(v46)
      {
        case 0:
          v47 = "path";
          goto LABEL_157;
        case 1:
          v47 = "resolver";
          goto LABEL_157;
        case 2:
          v47 = nw_endpoint_flow_mode_string(v44[33]);
LABEL_157:

          v117 = v45;
          os_unfair_lock_lock(v117 + 28);
          v118 = v117[8];
          os_unfair_lock_unlock(v117 + 28);

          *buf = 136447746;
          v306 = "nw_endpoint_flow_setup_protocols";
          v307 = 2082;
          id_str = v39;
          v309 = 2082;
          v310 = v25;
          v311 = 2082;
          v312 = v28;
          v313 = 2082;
          v314 = v43;
          v315 = 2082;
          v316 = v47;
          v317 = 2114;
          v318 = v118;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already in setup protocols, skipping", buf, 0x48u);

          goto LABEL_158;
      }
    }

    v47 = "unknown-mode";
    goto LABEL_157;
  }

LABEL_158:

  v66 = 1;
  v11 = v300;
LABEL_319:

LABEL_395:
  return v66;
}

uint64_t nw_endpoint_flow_attach_protocols(NWConcrete_nw_endpoint_handler *a1, NSObject *a2, nw_protocol *a3)
{
  v416 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v302 = v4;
  if (!v4)
  {
    v65 = __nwlog_obj();
    *buf = 136446210;
    v401 = "nw_endpoint_handler_get_mode";
    v66 = _os_log_send_and_compose_impl();

    LOBYTE(v394) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v66, &v394, type))
    {
      if (v394 == 17)
      {
        v67 = __nwlog_obj();
        v68 = v394;
        if (os_log_type_enabled(v67, v394))
        {
          *buf = 136446210;
          v401 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v67, v68, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (type[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v67 = __nwlog_obj();
        v70 = v394;
        v71 = os_log_type_enabled(v67, v394);
        if (backtrace_string)
        {
          if (v71)
          {
            *buf = 136446466;
            v401 = "nw_endpoint_handler_get_mode";
            v402 = 2082;
            v403 = backtrace_string;
            _os_log_impl(&dword_181A37000, v67, v70, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_132;
        }

        if (v71)
        {
          *buf = 136446210;
          v401 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v67, v70, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v67 = __nwlog_obj();
        v80 = v394;
        if (os_log_type_enabled(v67, v394))
        {
          *buf = 136446210;
          v401 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v67, v80, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_132:
    if (v66)
    {
      free(v66);
    }

    mode = 0;
    goto LABEL_135;
  }

  mode = v4->mode;
  v6 = v4;

  if (mode == 2)
  {
    v287 = a2;
    v7 = v6;
    v8 = *(v7 + 284);

    v286 = v7;
    if ((v8 & 0x40) != 0)
    {
      goto LABEL_32;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v9 = gconnectionLogObj;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
LABEL_31:

      v7 = v286;
LABEL_32:
      v301 = nw_endpoint_handler_copy_flow(v7);
      v28 = v7;
      v29 = v28[3];

      v394 = 0;
      v395 = &v394;
      v396 = 0x3032000000;
      v397 = __Block_byref_object_copy__85552;
      v398 = __Block_byref_object_dispose__85553;
      v282 = v29;
      v399 = v282;
      v30 = v28;
      v294 = v30[4];

      v31 = v30;
      v32 = v302[29];

      if (v32 == 2)
      {
        v33 = nw_endpoint_handler_copy_flow(v31);
        if ((*(v33 + 33) & 0x40) != 0)
        {
          v40 = v31;
          os_unfair_lock_lock(&v40->lock);
          v41 = v40->current_path;
          os_unfair_lock_unlock(&v40->lock);

          nexus_protocol_level = nw_path_get_nexus_protocol_level(v41);
        }

        else
        {
          nexus_protocol_level = 4;
        }

        goto LABEL_72;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      if (v32 > 5)
      {
        v35 = "unknown-mode";
      }

      else
      {
        v35 = off_1E6A31018[v32];
      }

      *buf = 136446722;
      v401 = "nw_endpoint_handler_get_protocol_level";
      v402 = 2082;
      v403 = v35;
      v404 = 2082;
      v405 = "flow";
      v36 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v386) = 0;
      if (__nwlog_fault(v36, type, &v386))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v37 = gLogObj;
          v38 = type[0];
          if (os_log_type_enabled(v37, type[0]))
          {
            if (v32 > 5)
            {
              v39 = "unknown-mode";
            }

            else
            {
              v39 = off_1E6A31018[v32];
            }

            *buf = 136446722;
            v401 = "nw_endpoint_handler_get_protocol_level";
            v402 = 2082;
            v403 = v39;
            v404 = 2082;
            v405 = "flow";
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
          }

LABEL_55:

          goto LABEL_69;
        }

        if (v386 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v37 = gLogObj;
          v47 = type[0];
          if (os_log_type_enabled(v37, type[0]))
          {
            if (v32 > 5)
            {
              v48 = "unknown-mode";
            }

            else
            {
              v48 = off_1E6A31018[v32];
            }

            *buf = 136446722;
            v401 = "nw_endpoint_handler_get_protocol_level";
            v402 = 2082;
            v403 = v48;
            v404 = 2082;
            v405 = "flow";
            _os_log_impl(&dword_181A37000, v37, v47, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
          }

          goto LABEL_55;
        }

        v42 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v43 = gLogObj;
        v44 = type[0];
        v45 = os_log_type_enabled(v43, type[0]);
        if (v42)
        {
          if (v45)
          {
            if (v32 > 5)
            {
              v46 = "unknown-mode";
            }

            else
            {
              v46 = off_1E6A31018[v32];
            }

            *buf = 136446978;
            v401 = "nw_endpoint_handler_get_protocol_level";
            v402 = 2082;
            v403 = v46;
            v404 = 2082;
            v405 = "flow";
            v406 = 2082;
            v407 = v42;
            _os_log_impl(&dword_181A37000, v43, v44, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v42);
          if (!v36)
          {
            goto LABEL_71;
          }

          goto LABEL_70;
        }

        if (v45)
        {
          if (v32 > 5)
          {
            v49 = "unknown-mode";
          }

          else
          {
            v49 = off_1E6A31018[v32];
          }

          *buf = 136446722;
          v401 = "nw_endpoint_handler_get_protocol_level";
          v402 = 2082;
          v403 = v49;
          v404 = 2082;
          v405 = "flow";
          _os_log_impl(&dword_181A37000, v43, v44, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

LABEL_69:
      if (!v36)
      {
LABEL_71:
        nexus_protocol_level = 0;
LABEL_72:

        *type = 0;
        v391 = type;
        v392 = 0x2020000000;
        v393 = v301 + 376;
        v283 = nw_parameters_copy_upper_transport_protocol_options(v294);
        v284 = nw_endpoint_flow_copy_path(v31);
        if (nw_endpoint_flow_should_add_filter(v294, v284))
        {
          Helper_x8__ne_filter_protocol_identifier = gotLoadHelper_x8__ne_filter_protocol_identifier(v50);
          if (*(v52 + 2208))
          {
            inited = ne_filter_protocol_identifier_delayInitStub(Helper_x8__ne_filter_protocol_identifier);
          }

          else
          {
            inited = 0;
          }

          v54 = inited != 0;
        }

        else
        {
          v54 = 0;
          inited = 0;
        }

        v386 = 0;
        v387 = &v386;
        v388 = 0x2020000000;
        v389 = 0;
        if (v294)
        {
          v55 = _nw_parameters_copy_default_protocol_stack(v294);
          if (v55)
          {
            application_protocol_count = _nw_protocol_stack_get_application_protocol_count();
            if (application_protocol_count)
            {
              v57 = 0;
              v58 = application_protocol_count - 1;
              do
              {
                v59 = _nw_protocol_stack_copy_application_protocol_at_index(v55, v57);
                v60 = nw_protocol_options_copy_definition(v59);
                is_proxy = nw_protocol_definition_is_proxy(v60);

                v63 = v58 == v57++ || is_proxy;
              }

              while ((v63 & 1) == 0);

              if (is_proxy)
              {
                v64 = nw_endpoint_copy_proxy_original_endpoint(v395[5]);
                if (v64)
                {
                  objc_storeStrong(v301 + 121, v64);
                  objc_storeStrong(v395 + 5, v64);
                }
              }

              goto LABEL_181;
            }

LABEL_180:

LABEL_181:
            *(v301 + 33) &= ~1u;
            *v382 = 0;
            v383 = v382;
            v384 = 0x2020000000;
            if (*(v391 + 3) == v287)
            {
              v104 = 0;
            }

            else
            {
              v104 = v287;
            }

            v385 = v104;
            v378 = 0;
            v379 = &v378;
            v380 = 0x2020000000;
            v381 = 0;
            v376[0] = 0;
            v376[1] = v376;
            v376[2] = 0x2020000000;
            v377 = 0;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = ___ZL33nw_endpoint_flow_attach_protocolsP30NWConcrete_nw_endpoint_handlerP11nw_protocolS2__block_invoke;
            aBlock[3] = &unk_1E6A3C1C8;
            v105 = v31;
            v362 = v105;
            v367 = v382;
            v368 = type;
            v369 = &v394;
            v375 = v54;
            v370 = &v386;
            v373 = inited;
            v106 = v294;
            v363 = v106;
            v371 = &v378;
            v285 = v282;
            v364 = v285;
            v372 = v376;
            v107 = v301;
            v365 = v107;
            v374 = a3;
            v281 = v283;
            v366 = v281;
            v108 = _Block_copy(aBlock);
            nw_parameters_internal_iterate_protocol_stack(v106, 5, 0, v108);
            if (v379[3])
            {
              goto LABEL_185;
            }

            if (*(v301 + 33))
            {
              goto LABEL_213;
            }

            if ((*(v107 + 32) & 2) == 0)
            {
              if (v287 && (isa = v287[2].isa, *(isa + 8) == 4) && (isa ? (v110 = v287[2].isa) : (v110 = "invalid"), strcmp(v110, "endpoint_flow")))
              {
                if ((nw_endpoint_handler_get_logging_disabled(v105) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v111 = gconnectionLogObj;
                  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
                  {
                    id_string = nw_endpoint_handler_get_id_string(v105);
                    v113 = nw_endpoint_handler_dry_run_string(v105);
                    v269 = v108;
                    logb = nw_endpoint_handler_copy_endpoint(v105);
                    logging_description = nw_endpoint_get_logging_description(logb);
                    v115 = nw_endpoint_handler_state_string(v105);
                    v116 = nw_endpoint_handler_mode_string(v105);
                    v117 = nw_endpoint_handler_copy_current_path(v105);
                    *buf = 136447746;
                    v401 = "nw_endpoint_flow_attach_protocols";
                    v402 = 2082;
                    v403 = id_string;
                    v404 = 2082;
                    v405 = v113;
                    v406 = 2082;
                    v407 = logging_description;
                    v408 = 2082;
                    v409 = v115;
                    v410 = 2082;
                    v411 = v116;
                    v412 = 2114;
                    v413 = v117;
                    _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] attach protocol is at application level, skip joining the first non-persistent protocol", buf, 0x48u);

                    v108 = v269;
                  }
                }
              }

              else
              {
                v351[0] = MEMORY[0x1E69E9820];
                v351[1] = 3221225472;
                v351[2] = ___ZL33nw_endpoint_flow_attach_protocolsP30NWConcrete_nw_endpoint_handlerP11nw_protocolS2__block_invoke_221;
                v351[3] = &unk_1E6A3C1F0;
                v360 = a3;
                v122 = v105;
                v352 = v122;
                v356 = v376;
                v353 = v285;
                v357 = &v394;
                v354 = v106;
                v358 = type;
                v359 = &v378;
                v123 = v107;
                v355 = v123;
                nw_parameters_internal_iterate_protocol_stack(v354, 4, 0, v351);
                if ((*(v301 + 33) & 1) == 0)
                {
                  v124 = v122;
                  v125 = (*(v286 + 284) & 0x40) == 0;

                  if (v125)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v126 = gconnectionLogObj;
                    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
                    {
                      v127 = nw_endpoint_handler_get_id_string(v124);
                      v270 = v108;
                      v288 = nw_endpoint_handler_dry_run_string(v124);
                      logc = nw_endpoint_handler_copy_endpoint(v124);
                      v128 = nw_endpoint_get_logging_description(logc);
                      v129 = nw_endpoint_handler_state_string(v124);
                      v130 = nw_endpoint_handler_mode_string(v124);
                      v131 = nw_endpoint_handler_copy_current_path(v124);
                      *buf = 136447746;
                      v401 = "nw_endpoint_flow_attach_protocols";
                      v402 = 2082;
                      v403 = v127;
                      v404 = 2082;
                      v405 = v288;
                      v406 = 2082;
                      v407 = v128;
                      v408 = 2082;
                      v409 = v129;
                      v410 = 2082;
                      v411 = v130;
                      v412 = 2114;
                      v413 = v131;
                      _os_log_impl(&dword_181A37000, v126, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] stopping after adding persistent application protocols", buf, 0x48u);

                      v108 = v270;
                    }
                  }

                  *(v123 + 94) = *(v391 + 3);
                }
              }

              goto LABEL_213;
            }

            nw_parameters_internal_iterate_protocol_stack(v106, 4, 0, v108);
            if (v379[3])
            {
LABEL_185:
              LOBYTE(v103) = 0;
LABEL_214:

              _Block_object_dispose(v376, 8);
              _Block_object_dispose(&v378, 8);
              _Block_object_dispose(v382, 8);
              _Block_object_dispose(&v386, 8);

              _Block_object_dispose(type, 8);
              _Block_object_dispose(&v394, 8);

              goto LABEL_215;
            }

            if (*(v301 + 33))
            {
LABEL_213:
              LOBYTE(v103) = 1;
              goto LABEL_214;
            }

            v347 = 0;
            v348 = &v347;
            v349 = 0x2020000000;
            v350 = 0;
            v337[0] = MEMORY[0x1E69E9820];
            v337[1] = 3221225472;
            v337[2] = ___ZL33nw_endpoint_flow_attach_protocolsP30NWConcrete_nw_endpoint_handlerP11nw_protocolS2__block_invoke_222;
            v337[3] = &unk_1E6A3C1F0;
            v346 = a3;
            v118 = v105;
            v338 = v118;
            v342 = v376;
            v119 = v285;
            v339 = v119;
            v343 = &v394;
            v120 = v106;
            v340 = v120;
            v344 = type;
            v345 = &v347;
            v121 = v107;
            v341 = v121;
            nw_parameters_internal_iterate_protocol_stack(v120, 3, 1, v337);
            if (v348[3])
            {
              goto LABEL_203;
            }

            if (*(v301 + 33))
            {
              goto LABEL_256;
            }

            if (v54 && (v387[3] & 1) == 0 && (nw_parameters_has_proxy_protocol_in_effective_config(v120) & 1) == 0)
            {
              v133 = nw_endpoint_flow_add_one_protocol(v118, inited, 0, 0, v395[5], v120, *(v391 + 3));
              if (!v133)
              {
                if ((nw_endpoint_handler_get_logging_disabled(v118) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v150 = gconnectionLogObj;
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                  {
                    v196 = v150;
                    v275 = v108;
                    logd = nw_endpoint_handler_get_id_string(v118);
                    v293 = nw_endpoint_handler_dry_run_string(v118);
                    v197 = v118;
                    v198 = nw_endpoint_handler_copy_endpoint(v118);
                    v199 = nw_endpoint_get_logging_description(v198);
                    v200 = nw_endpoint_handler_state_string(v197);
                    v103 = nw_endpoint_handler_mode_string(v197);
                    v201 = nw_endpoint_handler_copy_current_path(v197);
                    *buf = 136448002;
                    v401 = "nw_endpoint_flow_attach_protocols";
                    v402 = 2082;
                    v403 = logd;
                    v404 = 2082;
                    v405 = v293;
                    v406 = 2082;
                    v407 = v199;
                    v408 = 2082;
                    v409 = v200;
                    v410 = 2082;
                    v411 = v103;
                    v412 = 2114;
                    v413 = v201;
                    v414 = 2082;
                    v415 = inited;
                    _os_log_impl(&dword_181A37000, v196, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to attach filter protocol %{public}s", buf, 0x52u);

                    v108 = v275;
                    LOBYTE(v103) = 0;
                    v150 = v196;
                    goto LABEL_305;
                  }

                  goto LABEL_287;
                }

LABEL_203:
                LOBYTE(v103) = 0;
LABEL_257:

                _Block_object_dispose(&v347, 8);
                goto LABEL_214;
              }

              *(v391 + 3) = v133;
              if ((nw_endpoint_handler_get_logging_disabled(v118) & 1) == 0)
              {
                v289 = v121;
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v266 = v120;
                v134 = gconnectionLogObj;
                if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
                {
                  v135 = nw_endpoint_handler_get_id_string(v118);
                  v257 = nw_endpoint_handler_dry_run_string(v118);
                  v271 = v108;
                  v253 = v135;
                  v261 = nw_endpoint_handler_copy_endpoint(v118);
                  v250 = nw_endpoint_get_logging_description(v261);
                  v136 = nw_endpoint_handler_state_string(v118);
                  v137 = nw_endpoint_handler_mode_string(v118);
                  v138 = nw_endpoint_handler_copy_current_path(v118);
                  *buf = 136448002;
                  v401 = "nw_endpoint_flow_attach_protocols";
                  v402 = 2082;
                  v403 = v253;
                  v404 = 2082;
                  v405 = v257;
                  v406 = 2082;
                  v407 = v250;
                  v408 = 2082;
                  v409 = v136;
                  v410 = 2082;
                  v411 = v137;
                  v412 = 2114;
                  v413 = v138;
                  v414 = 2082;
                  v415 = inited;
                  _os_log_impl(&dword_181A37000, v134, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Attached filter protocol: %{public}s", buf, 0x52u);

                  v108 = v271;
                }

                v120 = v266;
                v121 = v289;
              }

              *(v387 + 24) = 1;
            }

            if (*(v301 + 33))
            {
              goto LABEL_256;
            }

            v290 = v121;
            v267 = v120;
            if ((nexus_protocol_level - 1) <= 2)
            {
              v333 = 0;
              v334 = &v333;
              v335 = 0x2020000000;
              v336 = 0;
              v323[0] = MEMORY[0x1E69E9820];
              v323[1] = 3221225472;
              v323[2] = ___ZL33nw_endpoint_flow_attach_protocolsP30NWConcrete_nw_endpoint_handlerP11nw_protocolS2__block_invoke_223;
              v323[3] = &unk_1E6A3C1F0;
              v332 = a3;
              v262 = v118;
              v324 = v262;
              v328 = v376;
              v139 = v119;
              v325 = v139;
              v329 = &v394;
              v140 = v267;
              v326 = v140;
              v330 = type;
              v331 = &v333;
              v141 = v121;
              v327 = v141;
              v142 = nw_parameters_internal_iterate_protocol_stack(v140, 3, 0, v323);
              v254 = v141;
              v258 = v139;
              if (v334[3])
              {
                v143 = 0;
                LOBYTE(v103) = 0;
              }

              else
              {
                LODWORD(v103) = *(v301 + 33);
                v143 = (v103 & 1) == 0;
                if (((v103 | v142) & 1) == 0)
                {
                  if ((nw_endpoint_handler_get_logging_disabled(v262) & 1) == 0)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v144 = gconnectionLogObj;
                    if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                    {
                      v272 = v108;
                      v248 = nw_endpoint_handler_get_id_string(v262);
                      v246 = nw_endpoint_handler_dry_run_string(v262);
                      v251 = nw_endpoint_handler_copy_endpoint(v262);
                      v244 = nw_endpoint_get_logging_description(v251);
                      v145 = nw_endpoint_handler_state_string(v262);
                      v146 = nw_endpoint_handler_mode_string(v262);
                      v147 = nw_endpoint_handler_copy_current_path(v262);
                      *buf = 136447746;
                      v401 = "nw_endpoint_flow_attach_protocols";
                      v402 = 2082;
                      v403 = v248;
                      v404 = 2082;
                      v405 = v246;
                      v406 = 2082;
                      v407 = v244;
                      v408 = 2082;
                      v409 = v145;
                      v410 = 2082;
                      v411 = v146;
                      v412 = 2114;
                      v413 = v147;
                      _os_log_impl(&dword_181A37000, v144, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No transport protocols in protocol stack", buf, 0x48u);

                      v108 = v272;
                    }
                  }

                  LOBYTE(v103) = 0;
                  v143 = 1;
                }
              }

              _Block_object_dispose(&v333, 8);
              if (!v143)
              {
                goto LABEL_257;
              }

              if (nexus_protocol_level != 3)
              {
                v333 = 0;
                v334 = &v333;
                v335 = 0x2020000000;
                v336 = 0;
                v313[0] = MEMORY[0x1E69E9820];
                v313[1] = 3221225472;
                v313[2] = ___ZL33nw_endpoint_flow_attach_protocolsP30NWConcrete_nw_endpoint_handlerP11nw_protocolS2__block_invoke_224;
                v313[3] = &unk_1E6A3C1F0;
                v322 = a3;
                v190 = v262;
                v314 = v190;
                v318 = v376;
                v191 = v258;
                v315 = v191;
                v319 = &v394;
                v192 = v140;
                v316 = v192;
                v320 = type;
                v321 = &v333;
                v193 = v254;
                v317 = v193;
                v194 = nw_parameters_internal_iterate_protocol_stack(v192, 2, 0, v313);
                v256 = v193;
                v260 = v191;
                v264 = v190;
                if (v334[3])
                {
                  v195 = 0;
                  LOBYTE(v103) = 0;
                }

                else
                {
                  v219 = *(v301 + 33);
                  v195 = (v219 & 1) == 0;
                  if ((v219 | v194))
                  {
                    LOBYTE(v103) = v103 | v219;
                  }

                  else
                  {
                    v277 = v108;
                    if (nw_endpoint_handler_get_logging_disabled(v190))
                    {
                      v195 = 1;
                    }

                    else
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v229 = gconnectionLogObj;
                      if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
                      {
                        v249 = nw_endpoint_handler_get_id_string(v190);
                        v247 = nw_endpoint_handler_dry_run_string(v190);
                        v252 = nw_endpoint_handler_copy_endpoint(v190);
                        v245 = nw_endpoint_get_logging_description(v252);
                        v230 = nw_endpoint_handler_state_string(v190);
                        v231 = nw_endpoint_handler_mode_string(v264);
                        v232 = nw_endpoint_handler_copy_current_path(v264);
                        *buf = 136447746;
                        v401 = "nw_endpoint_flow_attach_protocols";
                        v402 = 2082;
                        v403 = v249;
                        v404 = 2082;
                        v405 = v247;
                        v406 = 2082;
                        v407 = v245;
                        v408 = 2082;
                        v409 = v230;
                        v410 = 2082;
                        v411 = v231;
                        v412 = 2114;
                        v413 = v232;
                        _os_log_impl(&dword_181A37000, v229, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No internet protocols in protocol stack", buf, 0x48u);
                      }

                      v108 = v277;
                      v195 = 1;
                    }
                  }
                }

                _Block_object_dispose(&v333, 8);
                if (!v195)
                {
                  goto LABEL_257;
                }

                if (nexus_protocol_level == 1)
                {
                  v233 = v118;
                  v278 = v108;
                  v333 = 0;
                  v334 = &v333;
                  v335 = 0x2020000000;
                  v336 = 0;
                  v303[0] = MEMORY[0x1E69E9820];
                  v303[1] = 3221225472;
                  v303[2] = ___ZL33nw_endpoint_flow_attach_protocolsP30NWConcrete_nw_endpoint_handlerP11nw_protocolS2__block_invoke_225;
                  v303[3] = &unk_1E6A3C1F0;
                  v312 = a3;
                  v234 = v264;
                  v304 = v234;
                  v308 = v376;
                  v305 = v260;
                  v309 = &v394;
                  v306 = v192;
                  v310 = type;
                  v311 = &v333;
                  v307 = v256;
                  v235 = nw_parameters_internal_iterate_protocol_stack(v306, 1, 0, v303);
                  if (v334[3])
                  {
                    v236 = 0;
                    LOBYTE(v103) = 0;
                  }

                  else
                  {
                    v237 = *(v301 + 33);
                    v236 = (v237 & 1) == 0;
                    if ((v237 | v235))
                    {
                      LOBYTE(v103) = v103 | v237;
                    }

                    else
                    {
                      if ((nw_endpoint_handler_get_logging_disabled(v234) & 1) == 0)
                      {
                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v238 = gconnectionLogObj;
                        if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
                        {
                          loge = nw_endpoint_handler_get_id_string(v234);
                          v265 = nw_endpoint_handler_dry_run_string(v234);
                          v239 = nw_endpoint_handler_copy_endpoint(v234);
                          v240 = nw_endpoint_get_logging_description(v239);
                          v241 = nw_endpoint_handler_state_string(v234);
                          v242 = nw_endpoint_handler_mode_string(v234);
                          v243 = nw_endpoint_handler_copy_current_path(v234);
                          *buf = 136447746;
                          v401 = "nw_endpoint_flow_attach_protocols";
                          v402 = 2082;
                          v403 = loge;
                          v404 = 2082;
                          v405 = v265;
                          v406 = 2082;
                          v407 = v240;
                          v408 = 2082;
                          v409 = v241;
                          v410 = 2082;
                          v411 = v242;
                          v412 = 2114;
                          v413 = v243;
                          _os_log_impl(&dword_181A37000, v238, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No link protocols in protocol stack", buf, 0x48u);
                        }
                      }

                      v236 = 1;
                    }
                  }

                  v108 = v278;
                  _Block_object_dispose(&v333, 8);
                  v118 = v233;
                  if (!v236)
                  {
                    goto LABEL_257;
                  }
                }
              }
            }

            if ((BYTE2(v290[4].isa) & 2) != 0)
            {
              if ((nw_endpoint_handler_get_logging_disabled(v118) & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v150 = gconnectionLogObj;
                if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
                {
                  v159 = nw_endpoint_handler_get_id_string(v118);
                  v160 = nw_endpoint_handler_dry_run_string(v118);
                  v161 = v118;
                  v274 = v108;
                  v162 = nw_endpoint_handler_copy_endpoint(v118);
                  v163 = nw_endpoint_get_logging_description(v162);
                  v164 = nw_endpoint_handler_state_string(v161);
                  v165 = nw_endpoint_handler_mode_string(v161);
                  v166 = nw_endpoint_handler_copy_current_path(v161);
                  *buf = 136447746;
                  v401 = "nw_endpoint_flow_attach_protocols";
                  v402 = 2082;
                  v403 = v159;
                  v404 = 2082;
                  v405 = v160;
                  v406 = 2082;
                  v407 = v163;
                  v408 = 2082;
                  v409 = v164;
                  v410 = 2082;
                  v411 = v165;
                  v412 = 2114;
                  v413 = v166;
                  _os_log_impl(&dword_181A37000, v150, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Custom protocols only is set, do not add a bottom level protocol", buf, 0x48u);

                  v108 = v274;
                }

LABEL_255:
                LOBYTE(v103) = 1;
LABEL_305:

                goto LABEL_257;
              }

LABEL_256:
              LOBYTE(v103) = 1;
              goto LABEL_257;
            }

            if ((*(v301 + 33) & 0x40) == 0)
            {
              v148 = nw_endpoint_flow_attach_socket_protocol(v118, *(v391 + 3));
              logging_disabled = nw_endpoint_handler_get_logging_disabled(v118);
              if (v148)
              {
                if ((logging_disabled & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v150 = gconnectionLogObj;
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
                  {
                    loga = v150;
                    v273 = v108;
                    v151 = nw_endpoint_handler_get_id_string(v118);
                    v152 = nw_endpoint_handler_dry_run_string(v118);
                    v153 = v118;
                    v154 = nw_endpoint_handler_copy_endpoint(v118);
                    v155 = nw_endpoint_get_logging_description(v154);
                    v156 = nw_endpoint_handler_state_string(v153);
                    v157 = nw_endpoint_handler_mode_string(v153);
                    v158 = nw_endpoint_handler_copy_current_path(v153);
                    *buf = 136447746;
                    v401 = "nw_endpoint_flow_attach_protocols";
                    v402 = 2082;
                    v403 = v151;
                    v404 = 2082;
                    v405 = v152;
                    v406 = 2082;
                    v407 = v155;
                    v408 = 2082;
                    v409 = v156;
                    v410 = 2082;
                    v411 = v157;
                    v412 = 2114;
                    v413 = v158;
                    _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Attached socket protocol", buf, 0x48u);

                    v108 = v273;
LABEL_274:
                    LOBYTE(v103) = 1;
LABEL_304:
                    v150 = loga;
                    goto LABEL_305;
                  }

                  goto LABEL_255;
                }

                goto LABEL_256;
              }

              if ((logging_disabled & 1) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v150 = gconnectionLogObj;
                if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                {
                  loga = v150;
                  v276 = v108;
                  v202 = nw_endpoint_handler_get_id_string(v118);
                  v203 = nw_endpoint_handler_dry_run_string(v118);
                  v204 = v118;
                  v205 = nw_endpoint_handler_copy_endpoint(v118);
                  v206 = nw_endpoint_get_logging_description(v205);
                  v207 = nw_endpoint_handler_state_string(v204);
                  v208 = nw_endpoint_handler_mode_string(v204);
                  v209 = nw_endpoint_handler_copy_current_path(v204);
                  *buf = 136447746;
                  v401 = "nw_endpoint_flow_attach_protocols";
                  v402 = 2082;
                  v403 = v202;
                  v404 = 2082;
                  v405 = v203;
                  v406 = 2082;
                  v407 = v206;
                  v408 = 2082;
                  v409 = v207;
                  v410 = 2082;
                  v411 = v208;
                  v412 = 2114;
                  v413 = v209;
                  _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to attach socket protocol", buf, 0x48u);

                  v108 = v276;
LABEL_303:
                  LOBYTE(v103) = 0;
                  goto LABEL_304;
                }

LABEL_287:
                LOBYTE(v103) = 0;
                goto LABEL_305;
              }

              goto LABEL_203;
            }

            v167 = nw_path_flow_registration_copy_assigned_protocol(v284, v290[104].isa);
            v168 = v167;
            loga = v167;
            if (v167)
            {
              v169 = _nw_protocol_options_copy_definition(v167);
              identifier = nw_protocol_definition_get_identifier(v169);
              v291 = v169;
              v171 = nw_endpoint_flow_add_one_protocol(v118, identifier, v168, v169, v395[5], v267, *(v391 + 3));
              if (!v171)
              {
                v180 = v108;
                v220 = v118;
                if ((nw_endpoint_handler_get_logging_disabled(v118) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v221 = gconnectionLogObj;
                  if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
                  {
                    v280 = nw_endpoint_handler_get_id_string(v220);
                    v222 = nw_endpoint_handler_dry_run_string(v220);
                    v223 = nw_endpoint_handler_copy_endpoint(v220);
                    v224 = nw_endpoint_get_logging_description(v223);
                    v225 = v220;
                    v226 = nw_endpoint_handler_state_string(v220);
                    v227 = nw_endpoint_handler_mode_string(v225);
                    v228 = nw_endpoint_handler_copy_current_path(v225);
                    *buf = 136447746;
                    v401 = "nw_endpoint_flow_attach_protocols";
                    v402 = 2082;
                    v403 = v280;
                    v404 = 2082;
                    v405 = v222;
                    v406 = 2082;
                    v407 = v224;
                    v408 = 2082;
                    v409 = v226;
                    v410 = 2082;
                    v411 = v227;
                    v412 = 2114;
                    v413 = v228;
                    _os_log_impl(&dword_181A37000, v221, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to attach flow-assigned protocol", buf, 0x48u);
                  }
                }

                goto LABEL_301;
              }

              *(v391 + 3) = v171;
              v172 = v118;
              if ((nw_endpoint_handler_get_logging_disabled(v118) & 1) == 0)
              {
                v173 = v108;
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v174 = gconnectionLogObj;
                if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
                {
                  v263 = nw_endpoint_handler_get_id_string(v172);
                  v259 = nw_endpoint_handler_dry_run_string(v172);
                  v268 = nw_endpoint_handler_copy_endpoint(v172);
                  v255 = nw_endpoint_get_logging_description(v268);
                  v175 = nw_endpoint_handler_state_string(v172);
                  v176 = nw_endpoint_handler_mode_string(v172);
                  v177 = nw_endpoint_handler_copy_current_path(v172);
                  *buf = 136448002;
                  v401 = "nw_endpoint_flow_attach_protocols";
                  v402 = 2082;
                  v403 = v263;
                  v404 = 2082;
                  v405 = v259;
                  v406 = 2082;
                  v407 = v255;
                  v408 = 2082;
                  v409 = v175;
                  v410 = 2082;
                  v411 = v176;
                  v412 = 2114;
                  v413 = v177;
                  v414 = 2082;
                  v415 = identifier;
                  _os_log_impl(&dword_181A37000, v174, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Attached flow-assigned protocol: %{public}s", buf, 0x52u);

                  v108 = v173;
                }
              }

              v118 = v172;
            }

            v178 = nw_endpoint_flow_attach_channel_protocol(v118, *(v391 + 3), nexus_protocol_level);
            v179 = nw_endpoint_handler_get_logging_disabled(v118);
            v180 = v108;
            if (v178)
            {
              if (v179)
              {
                LOBYTE(v103) = 1;
                goto LABEL_304;
              }

              v181 = v118;
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v182 = gconnectionLogObj;
              if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
              {
                v292 = nw_endpoint_handler_get_id_string(v181);
                v183 = nw_endpoint_handler_dry_run_string(v181);
                v184 = nw_endpoint_handler_copy_endpoint(v181);
                v185 = nw_endpoint_get_logging_description(v184);
                v186 = v181;
                v187 = nw_endpoint_handler_state_string(v181);
                v188 = nw_endpoint_handler_mode_string(v181);
                v189 = nw_endpoint_handler_copy_current_path(v186);
                *buf = 136447746;
                v401 = "nw_endpoint_flow_attach_protocols";
                v402 = 2082;
                v403 = v292;
                v404 = 2082;
                v405 = v183;
                v406 = 2082;
                v407 = v185;
                v408 = 2082;
                v409 = v187;
                v410 = 2082;
                v411 = v188;
                v412 = 2114;
                v413 = v189;
                _os_log_impl(&dword_181A37000, v182, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Attached channel protocol", buf, 0x48u);

                v108 = v180;
              }

              goto LABEL_274;
            }

            if (v179)
            {
              LOBYTE(v103) = 0;
              goto LABEL_304;
            }

            v210 = v118;
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v291 = gconnectionLogObj;
            if (os_log_type_enabled(v291, OS_LOG_TYPE_ERROR))
            {
              v211 = nw_endpoint_handler_get_id_string(v118);
              v212 = nw_endpoint_handler_dry_run_string(v118);
              v213 = nw_endpoint_handler_copy_endpoint(v118);
              v214 = nw_endpoint_get_logging_description(v213);
              v215 = v210;
              v216 = nw_endpoint_handler_state_string(v210);
              v217 = nw_endpoint_handler_mode_string(v210);
              v218 = nw_endpoint_handler_copy_current_path(v215);
              *buf = 136447746;
              v401 = "nw_endpoint_flow_attach_protocols";
              v402 = 2082;
              v403 = v211;
              v404 = 2082;
              v405 = v212;
              v406 = 2082;
              v407 = v214;
              v408 = 2082;
              v409 = v216;
              v410 = 2082;
              v411 = v217;
              v412 = 2114;
              v413 = v218;
              _os_log_impl(&dword_181A37000, v291, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to attach channel protocol", buf, 0x48u);

              v108 = v180;
LABEL_302:

              goto LABEL_303;
            }

LABEL_301:
            v108 = v180;
            goto LABEL_302;
          }

          v76 = __nwlog_obj();
          *buf = 136446210;
          v401 = "nw_parameters_has_proxy_protocol_in_stack";
          v77 = _os_log_send_and_compose_impl();

          v382[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v378) = 0;
          if (__nwlog_fault(v77, v382, &v378))
          {
            if (v382[0] == OS_LOG_TYPE_FAULT)
            {
              v78 = __nwlog_obj();
              v79 = v382[0];
              if (os_log_type_enabled(v78, v382[0]))
              {
                *buf = 136446210;
                v401 = "nw_parameters_has_proxy_protocol_in_stack";
                _os_log_impl(&dword_181A37000, v78, v79, "%{public}s called with null stack", buf, 0xCu);
              }
            }

            else
            {
              if (v378 == 1)
              {
                v84 = __nw_create_backtrace_string();
                v85 = __nwlog_obj();
                v86 = v382[0];
                v87 = os_log_type_enabled(v85, v382[0]);
                if (v84)
                {
                  if (v87)
                  {
                    *buf = 136446466;
                    v401 = "nw_parameters_has_proxy_protocol_in_stack";
                    v402 = 2082;
                    v403 = v84;
                    _os_log_impl(&dword_181A37000, v85, v86, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v84);
                }

                else
                {
                  if (v87)
                  {
                    *buf = 136446210;
                    v401 = "nw_parameters_has_proxy_protocol_in_stack";
                    _os_log_impl(&dword_181A37000, v85, v86, "%{public}s called with null stack, no backtrace", buf, 0xCu);
                  }
                }

                goto LABEL_178;
              }

              v78 = __nwlog_obj();
              v89 = v382[0];
              if (os_log_type_enabled(v78, v382[0]))
              {
                *buf = 136446210;
                v401 = "nw_parameters_has_proxy_protocol_in_stack";
                _os_log_impl(&dword_181A37000, v78, v89, "%{public}s called with null stack, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_178:
          if (v77)
          {
            free(v77);
          }

          goto LABEL_180;
        }

        v72 = __nwlog_obj();
        *buf = 136446210;
        v401 = "nw_parameters_has_proxy_protocol_in_stack";
        v73 = _os_log_send_and_compose_impl();

        v382[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v378) = 0;
        if (__nwlog_fault(v73, v382, &v378))
        {
          if (v382[0] == OS_LOG_TYPE_FAULT)
          {
            v74 = __nwlog_obj();
            v75 = v382[0];
            if (os_log_type_enabled(v74, v382[0]))
            {
              *buf = 136446210;
              v401 = "nw_parameters_has_proxy_protocol_in_stack";
              _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null parameters", buf, 0xCu);
            }
          }

          else if (v378 == 1)
          {
            v81 = __nw_create_backtrace_string();
            v74 = __nwlog_obj();
            v82 = v382[0];
            v83 = os_log_type_enabled(v74, v382[0]);
            if (v81)
            {
              if (v83)
              {
                *buf = 136446466;
                v401 = "nw_parameters_has_proxy_protocol_in_stack";
                v402 = 2082;
                v403 = v81;
                _os_log_impl(&dword_181A37000, v74, v82, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v81);
              goto LABEL_173;
            }

            if (v83)
            {
              *buf = 136446210;
              v401 = "nw_parameters_has_proxy_protocol_in_stack";
              _os_log_impl(&dword_181A37000, v74, v82, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v74 = __nwlog_obj();
            v88 = v382[0];
            if (os_log_type_enabled(v74, v382[0]))
            {
              *buf = 136446210;
              v401 = "nw_parameters_has_proxy_protocol_in_stack";
              _os_log_impl(&dword_181A37000, v74, v88, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_173:
        if (v73)
        {
          free(v73);
        }

        goto LABEL_181;
      }

LABEL_70:
      free(v36);
      goto LABEL_71;
    }

    v10 = v7;

    v11 = v10;
    v12 = *(v7 + 284);

    if (v12)
    {
      v13 = "dry-run ";
    }

    else
    {
      v13 = "";
    }

    v14 = nw_endpoint_handler_copy_endpoint(v11);
    v15 = v14;
    if (v14)
    {
      v16 = _nw_endpoint_get_logging_description(v14);
    }

    else
    {
      v16 = "<NULL>";
    }

    v17 = v10 + 184;

    v18 = v11;
    v19 = v18;
    v20 = v18[30];
    if (v20 > 5)
    {
      v21 = "unknown-state";
    }

    else
    {
      v21 = off_1E6A31048[v20];
    }

    v22 = v19;
    v23 = v22;
    v24 = v302[29];
    if (v24 > 2)
    {
      switch(v24)
      {
        case 3:
          v25 = "proxy";
          goto LABEL_30;
        case 4:
          v25 = "fallback";
          goto LABEL_30;
        case 5:
          v25 = "transform";
          goto LABEL_30;
      }
    }

    else
    {
      switch(v24)
      {
        case 0:
          v25 = "path";
          goto LABEL_30;
        case 1:
          v25 = "resolver";
          goto LABEL_30;
        case 2:
          v25 = nw_endpoint_flow_mode_string(v22[33]);
LABEL_30:

          v26 = v23;
          os_unfair_lock_lock(v26 + 28);
          v27 = v26[8];
          os_unfair_lock_unlock(v26 + 28);

          *buf = 136447746;
          v401 = "nw_endpoint_flow_attach_protocols";
          v402 = 2082;
          v403 = v17;
          v404 = 2082;
          v405 = v13;
          v406 = 2082;
          v407 = v16;
          v408 = 2082;
          v409 = v21;
          v410 = 2082;
          v411 = v25;
          v412 = 2114;
          v413 = v27;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ", buf, 0x48u);

          goto LABEL_31;
      }
    }

    v25 = "unknown-mode";
    goto LABEL_30;
  }

LABEL_135:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v90 = gLogObj;
  if (mode > 5)
  {
    v91 = "unknown-mode";
  }

  else
  {
    v91 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v401 = "nw_endpoint_flow_attach_protocols";
  v402 = 2082;
  v403 = v91;
  v404 = 2082;
  v405 = "flow";
  v92 = _os_log_send_and_compose_impl();

  LOBYTE(v394) = 16;
  type[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v92, &v394, type))
  {
    if (v394 == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v93 = gLogObj;
      v94 = v394;
      if (os_log_type_enabled(v93, v394))
      {
        if (mode > 5)
        {
          v95 = "unknown-mode";
        }

        else
        {
          v95 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v401 = "nw_endpoint_flow_attach_protocols";
        v402 = 2082;
        v403 = v95;
        v404 = 2082;
        v405 = "flow";
        _os_log_impl(&dword_181A37000, v93, v94, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      v96 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v93 = gLogObj;
      v97 = v394;
      v98 = os_log_type_enabled(v93, v394);
      if (v96)
      {
        if (v98)
        {
          if (mode > 5)
          {
            v99 = "unknown-mode";
          }

          else
          {
            v99 = off_1E6A31018[mode];
          }

          *buf = 136446978;
          v401 = "nw_endpoint_flow_attach_protocols";
          v402 = 2082;
          v403 = v99;
          v404 = 2082;
          v405 = "flow";
          v406 = 2082;
          v407 = v96;
          _os_log_impl(&dword_181A37000, v93, v97, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v96);
        if (!v92)
        {
          goto LABEL_169;
        }

        goto LABEL_168;
      }

      if (v98)
      {
        if (mode > 5)
        {
          v102 = "unknown-mode";
        }

        else
        {
          v102 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v401 = "nw_endpoint_flow_attach_protocols";
        v402 = 2082;
        v403 = v102;
        v404 = 2082;
        v405 = "flow";
        _os_log_impl(&dword_181A37000, v93, v97, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v93 = gLogObj;
      v100 = v394;
      if (os_log_type_enabled(v93, v394))
      {
        if (mode > 5)
        {
          v101 = "unknown-mode";
        }

        else
        {
          v101 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v401 = "nw_endpoint_flow_attach_protocols";
        v402 = 2082;
        v403 = v101;
        v404 = 2082;
        v405 = "flow";
        _os_log_impl(&dword_181A37000, v93, v100, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }
  }

  if (v92)
  {
LABEL_168:
    free(v92);
  }

LABEL_169:
  LOBYTE(v103) = 0;
LABEL_215:

  return v103 & 1;
}

void sub_181B22188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, void *a39, void *a40, void *a41)
{
  _Block_object_dispose(&STACK[0x200], 8);

  _Block_object_dispose(&STACK[0x288], 8);
  _Block_object_dispose(&STACK[0x3A0], 8);
  _Block_object_dispose(&STACK[0x3C0], 8);
  _Block_object_dispose(&STACK[0x3E0], 8);
  _Block_object_dispose(&STACK[0x400], 8);

  _Block_object_dispose(&STACK[0x420], 8);
  _Block_object_dispose((v43 - 256), 8);

  _Unwind_Resume(a1);
}

uint64_t nw_endpoint_flow_connect(void *a1)
{
  v175 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_endpoint_handler_copy_flow(v1);
  if (v2)
  {
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_85389);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    v1->event = 196611;
    nw_endpoint_handler_report(v1, 0, &v1->event.domain, 0);
    v3 = *(v2 + 51);
    if (v3)
    {
      v4 = *(v2 + 53);
      if (!v4)
      {
        goto LABEL_121;
      }

      v5 = v3[2];
      if (nw_protocol_udp_identifier::onceToken != -1)
      {
        v123 = v3[2];
        dispatch_once(&nw_protocol_udp_identifier::onceToken, &__block_literal_global_87);
        v5 = v123;
      }

      if (!nw_protocols_are_equal(v5, &nw_protocol_udp_identifier::identifier))
      {
        goto LABEL_121;
      }

      v6 = *(v4 + 16);
      if (nw_protocol_http1_identifier::onceToken != -1)
      {
        v134 = *(v4 + 16);
        dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
        v6 = v134;
      }

      if (!nw_protocols_are_equal(v6, &nw_protocol_http1_identifier::http1_protocol_identifier) || (v7 = v1, v8 = *(v7 + 284), v7, (v8 & 0x40) != 0))
      {
LABEL_121:
        v94 = v3[5];
        v95 = v3;
        if (v94 != &nw_protocol_ref_counted_handle)
        {
          if (v94 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v95) = 0;
            v96 = 1;
            goto LABEL_128;
          }

          v95 = v3[8];
          if (!v95)
          {
            v96 = 1;
            goto LABEL_128;
          }
        }

        v97 = v95[11];
        v96 = 0;
        if (v97)
        {
          v95[11] = v97 + 1;
        }

        LOBYTE(v95) = -1;
LABEL_128:
        *type = v3;
        v158 = v95;
        v98 = *(v2 + 52);
        v99 = v2 + 376;
        if (v98 == &nw_protocol_ref_counted_handle || v98 == &nw_protocol_ref_counted_additional_handle && (v99 = *(v2 + 55)) != 0)
        {
          v102 = *(v99 + 11);
          v101 = 0;
          if (v102)
          {
            *(v99 + 11) = v102 + 1;
          }

          v100 = -1;
        }

        else
        {
          v100 = 0;
          v101 = 1;
        }

        v155 = v2 + 376;
        v156 = v100;
        v103 = v3[3];
        if (v103)
        {
          v104 = *(v103 + 24);
          if (v104)
          {
            v49 = v104(v3, v2 + 376);
            if (v101)
            {
              goto LABEL_139;
            }

            goto LABEL_138;
          }
        }

        v106 = __nwlog_obj();
        v107 = v3[2];
        *buf = 136446722;
        v160 = "__nw_protocol_connect";
        if (!v107)
        {
          v107 = "invalid";
        }

        v161 = 2082;
        v162 = v107;
        v163 = 2048;
        v164 = v3;
        v108 = _os_log_send_and_compose_impl();

        v154 = OS_LOG_TYPE_ERROR;
        v153 = 0;
        if (__nwlog_fault(v108, &v154, &v153))
        {
          if (v154 == OS_LOG_TYPE_FAULT)
          {
            v109 = __nwlog_obj();
            v110 = v154;
            if (os_log_type_enabled(v109, v154))
            {
              v111 = v3[2];
              if (!v111)
              {
                v111 = "invalid";
              }

              *buf = 136446722;
              v160 = "__nw_protocol_connect";
              v161 = 2082;
              v162 = v111;
              v163 = 2048;
              v164 = v3;
              _os_log_impl(&dword_181A37000, v109, v110, "%{public}s protocol %{public}s (%p) has invalid connect callback", buf, 0x20u);
            }

LABEL_187:

            goto LABEL_188;
          }

          if (v153 != 1)
          {
            v109 = __nwlog_obj();
            v131 = v154;
            if (os_log_type_enabled(v109, v154))
            {
              v132 = v3[2];
              if (!v132)
              {
                v132 = "invalid";
              }

              *buf = 136446722;
              v160 = "__nw_protocol_connect";
              v161 = 2082;
              v162 = v132;
              v163 = 2048;
              v164 = v3;
              _os_log_impl(&dword_181A37000, v109, v131, "%{public}s protocol %{public}s (%p) has invalid connect callback, backtrace limit exceeded", buf, 0x20u);
            }

            goto LABEL_187;
          }

          backtrace_string = __nw_create_backtrace_string();
          v109 = __nwlog_obj();
          v117 = v154;
          v118 = os_log_type_enabled(v109, v154);
          if (!backtrace_string)
          {
            if (v118)
            {
              v135 = v3[2];
              if (!v135)
              {
                v135 = "invalid";
              }

              *buf = 136446722;
              v160 = "__nw_protocol_connect";
              v161 = 2082;
              v162 = v135;
              v163 = 2048;
              v164 = v3;
              _os_log_impl(&dword_181A37000, v109, v117, "%{public}s protocol %{public}s (%p) has invalid connect callback, no backtrace", buf, 0x20u);
            }

            goto LABEL_187;
          }

          if (v118)
          {
            v119 = v3[2];
            if (!v119)
            {
              v119 = "invalid";
            }

            *buf = 136446978;
            v160 = "__nw_protocol_connect";
            v161 = 2082;
            v162 = v119;
            v163 = 2048;
            v164 = v3;
            v165 = 2082;
            v166 = backtrace_string;
            _os_log_impl(&dword_181A37000, v109, v117, "%{public}s protocol %{public}s (%p) has invalid connect callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
        }

LABEL_188:
        if (v108)
        {
          free(v108);
        }

        v49 = 0;
        if (v101)
        {
          goto LABEL_139;
        }

LABEL_138:
        nw::release_if_needed<nw_protocol *>(&v155);
LABEL_139:
        if ((v96 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(type);
        }

        goto LABEL_141;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v9 = gconnectionLogObj;
      v10 = v7;

      v11 = v10;
      v12 = *(v7 + 284);

      if (v12)
      {
        v13 = "dry-run ";
      }

      else
      {
        v13 = "";
      }

      v14 = nw_endpoint_handler_copy_endpoint(v11);
      v15 = v14;
      if (v14)
      {
        logging_description = _nw_endpoint_get_logging_description(v14);
      }

      else
      {
        logging_description = "<NULL>";
      }

      v141 = v9;
      id_str = v10->id_str;

      v39 = v11;
      v40 = v39;
      v41 = v39[30];
      if (v41 > 5)
      {
        v42 = "unknown-state";
      }

      else
      {
        v42 = off_1E6A31048[v41];
      }

      v43 = v40;
      v44 = v43;
      v45 = v43[29];
      v137 = v40;
      if (v45 > 2)
      {
        if (v45 == 3)
        {
          v46 = "proxy";
          goto LABEL_72;
        }

        if (v45 != 4)
        {
          if (v45 == 5)
          {
            v46 = "transform";
            goto LABEL_72;
          }

          goto LABEL_69;
        }

        v46 = "fallback";
      }

      else
      {
        if (!v45)
        {
          v46 = "path";
          goto LABEL_72;
        }

        if (v45 != 1)
        {
          if (v45 == 2)
          {
            v46 = nw_endpoint_flow_mode_string(*(v43 + 33));
            goto LABEL_72;
          }

LABEL_69:
          v46 = "unknown-mode";
          goto LABEL_72;
        }

        v46 = "resolver";
      }

LABEL_72:

      v136 = v44;
      v50 = v44;
      os_unfair_lock_lock(v50 + 28);
      v51 = *(v50 + 8);
      os_unfair_lock_unlock(v50 + 28);
      v140 = v50;

      *buf = 136447746;
      v160 = "nw_endpoint_flow_connect";
      v161 = 2082;
      v162 = id_str;
      v163 = 2082;
      v164 = v13;
      v165 = 2082;
      v166 = logging_description;
      v167 = 2082;
      v168 = v42;
      v169 = 2082;
      v170 = v46;
      v171 = 2114;
      v172 = v51;
      v151 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v155) = 0;
      if (!__nwlog_fault(v151, type, &v155))
      {
        goto LABEL_119;
      }

      if (type[0] != OS_LOG_TYPE_FAULT)
      {
        if (v155 == 1)
        {
          v61 = __nw_create_backtrace_string();
          if (v61)
          {
            v62 = v61;
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v63 = gconnectionLogObj;
            v64 = type[0];
            if (os_log_type_enabled(v63, type[0]))
            {
              id_string = nw_endpoint_handler_get_id_string(v140);
              v139 = nw_endpoint_handler_dry_run_string(v140);
              v143 = id_string;
              v147 = nw_endpoint_handler_copy_endpoint(v140);
              v66 = nw_endpoint_get_logging_description(v147);
              v67 = nw_endpoint_handler_state_string(v140);
              v68 = nw_endpoint_handler_mode_string(v140);
              v69 = nw_endpoint_handler_copy_current_path(v140);
              *buf = 136448002;
              v160 = "nw_endpoint_flow_connect";
              v161 = 2082;
              v162 = v143;
              v163 = 2082;
              v164 = v139;
              v165 = 2082;
              v166 = v66;
              v167 = 2082;
              v168 = v67;
              v169 = 2082;
              v170 = v68;
              v171 = 2114;
              v172 = v69;
              v173 = 2082;
              v174 = v62;
              _os_log_impl(&dword_181A37000, v63, v64, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] invalid protocol stack (HTTP1 over UDP) detected, dumping backtrace:%{public}s", buf, 0x52u);
            }

            free(v62);
            goto LABEL_119;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v52 = gconnectionLogObj;
          v77 = type[0];
          if (os_log_type_enabled(v52, type[0]))
          {
            v78 = nw_endpoint_handler_get_id_string(v50);
            v145 = nw_endpoint_handler_dry_run_string(v50);
            v149 = nw_endpoint_handler_copy_endpoint(v50);
            v79 = v78;
            v80 = nw_endpoint_get_logging_description(v149);
            v81 = nw_endpoint_handler_state_string(v140);
            v82 = nw_endpoint_handler_mode_string(v140);
            v83 = nw_endpoint_handler_copy_current_path(v140);
            *buf = 136447746;
            v160 = "nw_endpoint_flow_connect";
            v161 = 2082;
            v162 = v79;
            v163 = 2082;
            v164 = v145;
            v165 = 2082;
            v166 = v80;
            v167 = 2082;
            v168 = v81;
            v169 = 2082;
            v170 = v82;
            v171 = 2114;
            v172 = v83;
            _os_log_impl(&dword_181A37000, v52, v77, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] invalid protocol stack (HTTP1 over UDP) detected, no backtrace", buf, 0x48u);
          }
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v52 = gconnectionLogObj;
          v70 = type[0];
          if (os_log_type_enabled(v52, type[0]))
          {
            v71 = nw_endpoint_handler_get_id_string(v50);
            v144 = nw_endpoint_handler_dry_run_string(v50);
            v148 = nw_endpoint_handler_copy_endpoint(v50);
            v72 = v71;
            v73 = nw_endpoint_get_logging_description(v148);
            v74 = nw_endpoint_handler_state_string(v140);
            v75 = nw_endpoint_handler_mode_string(v140);
            v76 = nw_endpoint_handler_copy_current_path(v140);
            *buf = 136447746;
            v160 = "nw_endpoint_flow_connect";
            v161 = 2082;
            v162 = v72;
            v163 = 2082;
            v164 = v144;
            v165 = 2082;
            v166 = v73;
            v167 = 2082;
            v168 = v74;
            v169 = 2082;
            v170 = v75;
            v171 = 2114;
            v172 = v76;
            _os_log_impl(&dword_181A37000, v52, v70, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] invalid protocol stack (HTTP1 over UDP) detected, backtrace limit exceeded", buf, 0x48u);
          }
        }

        goto LABEL_118;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v52 = gconnectionLogObj;
      v53 = type[0];
      if (!os_log_type_enabled(v52, type[0]))
      {
LABEL_118:

LABEL_119:
        if (v151)
        {
          free(v151);
        }

        goto LABEL_121;
      }

      v54 = v50;

      v55 = v54;
      v56 = (*(v7 + 284) & 1) == 0;

      v57 = "dry-run ";
      if (v56)
      {
        v57 = "";
      }

      v142 = v57;
      v58 = nw_endpoint_handler_copy_endpoint(v55);
      v59 = v58;
      if (v58)
      {
        v60 = _nw_endpoint_get_logging_description(v58);
      }

      else
      {
        v60 = "<NULL>";
      }

      v84 = v55;
      v85 = v84;
      v86 = v137[30];
      if (v86 > 5)
      {
        v87 = "unknown-state";
      }

      else
      {
        v87 = off_1E6A31048[v86];
      }

      v88 = v85;
      v89 = v88;
      v90 = v136[29];
      if (v90 > 2)
      {
        switch(v90)
        {
          case 3:
            v91 = "proxy";
            break;
          case 4:
            v91 = "fallback";
            break;
          case 5:
            v91 = "transform";
            break;
          default:
LABEL_113:
            v91 = "unknown-mode";
            break;
        }
      }

      else
      {
        if (v90)
        {
          if (v90 == 1)
          {
            v91 = "resolver";
            goto LABEL_116;
          }

          if (v90 == 2)
          {
            v138 = nw_endpoint_flow_mode_string(v88[33]);
LABEL_117:

            v92 = v89;
            os_unfair_lock_lock(v140 + 28);
            v93 = *(v140 + 8);
            os_unfair_lock_unlock(v140 + 28);

            *buf = 136447746;
            v160 = "nw_endpoint_flow_connect";
            v161 = 2082;
            v162 = id_str;
            v163 = 2082;
            v164 = v142;
            v165 = 2082;
            v166 = v60;
            v167 = 2082;
            v168 = v87;
            v169 = 2082;
            v170 = v138;
            v171 = 2114;
            v172 = v93;
            _os_log_impl(&dword_181A37000, v52, v53, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] invalid protocol stack (HTTP1 over UDP) detected", buf, 0x48u);

            goto LABEL_118;
          }

          goto LABEL_113;
        }

        v91 = "path";
      }

LABEL_116:
      v138 = v91;
      goto LABEL_117;
    }

    v16 = v1;
    v17 = v16[284];

    if ((v17 & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v16))
      {
        goto LABEL_66;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v20 = gconnectionLogObj;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v124 = nw_endpoint_handler_get_id_string(v16);
        v125 = nw_endpoint_handler_dry_run_string(v16);
        v126 = nw_endpoint_handler_copy_endpoint(v16);
        v127 = nw_endpoint_get_logging_description(v126);
        v128 = nw_endpoint_handler_state_string(v16);
        v129 = nw_endpoint_handler_mode_string(v16);
        v130 = nw_endpoint_handler_copy_current_path(v16);
        *buf = 136447746;
        v160 = "nw_endpoint_flow_connect";
        v161 = 2082;
        v162 = v124;
        v163 = 2082;
        v164 = v125;
        v165 = 2082;
        v166 = v127;
        v167 = 2082;
        v168 = v128;
        v169 = 2082;
        v170 = v129;
        v171 = 2114;
        v172 = v130;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] connect bottom protocol", buf, 0x48u);
      }

      goto LABEL_65;
    }

    v18 = v16;
    v19 = v16[284];

    if ((v19 & 0x40) != 0)
    {
LABEL_66:
      v49 = 1;
      goto LABEL_141;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v20 = gconnectionLogObj;
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
LABEL_65:

      goto LABEL_66;
    }

    v21 = v18;

    v22 = v21;
    v23 = v16[284];

    if (v23)
    {
      v24 = "dry-run ";
    }

    else
    {
      v24 = "";
    }

    v25 = nw_endpoint_handler_copy_endpoint(v22);
    v26 = v25;
    if (v25)
    {
      v27 = _nw_endpoint_get_logging_description(v25);
    }

    else
    {
      v27 = "<NULL>";
    }

    v28 = (v21 + 184);

    v29 = v22;
    v30 = v29;
    v31 = v29[30];
    if (v31 > 5)
    {
      v32 = "unknown-state";
    }

    else
    {
      v32 = off_1E6A31048[v31];
    }

    v33 = v30;
    v34 = v33;
    v35 = v33[29];
    v152 = v2;
    v36 = v1;
    if (v35 > 2)
    {
      switch(v35)
      {
        case 3:
          v37 = v24;
          v38 = "proxy";
          goto LABEL_64;
        case 4:
          v37 = v24;
          v38 = "fallback";
          goto LABEL_64;
        case 5:
          v37 = v24;
          v38 = "transform";
          goto LABEL_64;
      }
    }

    else
    {
      switch(v35)
      {
        case 0:
          v37 = v24;
          v38 = "path";
          goto LABEL_64;
        case 1:
          v37 = v24;
          v38 = "resolver";
          goto LABEL_64;
        case 2:
          v37 = v24;
          v38 = nw_endpoint_flow_mode_string(*(v33 + 33));
LABEL_64:

          v47 = v34;
          os_unfair_lock_lock(v47 + 28);
          v48 = *(v47 + 8);
          os_unfair_lock_unlock(v47 + 28);

          *buf = 136447746;
          v160 = "nw_endpoint_flow_connect";
          v161 = 2082;
          v162 = v28;
          v163 = 2082;
          v164 = v37;
          v165 = 2082;
          v166 = v27;
          v167 = 2082;
          v168 = v32;
          v169 = 2082;
          v170 = v38;
          v171 = 2114;
          v172 = v48;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] connect bottom protocol", buf, 0x48u);

          v1 = v36;
          v2 = v152;

          goto LABEL_65;
      }
    }

    v37 = v24;
    v38 = "unknown-mode";
    goto LABEL_64;
  }

  v112 = __nwlog_obj();
  *buf = 136446210;
  v160 = "nw_endpoint_flow_connect";
  v113 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v155) = 0;
  if (__nwlog_fault(v113, type, &v155))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v114 = __nwlog_obj();
      v115 = type[0];
      if (os_log_type_enabled(v114, type[0]))
      {
        *buf = 136446210;
        v160 = "nw_endpoint_flow_connect";
        _os_log_impl(&dword_181A37000, v114, v115, "%{public}s called with null endpoint_flow", buf, 0xCu);
      }
    }

    else if (v155 == 1)
    {
      v120 = __nw_create_backtrace_string();
      v114 = __nwlog_obj();
      v121 = type[0];
      v122 = os_log_type_enabled(v114, type[0]);
      if (v120)
      {
        if (v122)
        {
          *buf = 136446466;
          v160 = "nw_endpoint_flow_connect";
          v161 = 2082;
          v162 = v120;
          _os_log_impl(&dword_181A37000, v114, v121, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v120);
        goto LABEL_195;
      }

      if (v122)
      {
        *buf = 136446210;
        v160 = "nw_endpoint_flow_connect";
        _os_log_impl(&dword_181A37000, v114, v121, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v114 = __nwlog_obj();
      v133 = type[0];
      if (os_log_type_enabled(v114, type[0]))
      {
        *buf = 136446210;
        v160 = "nw_endpoint_flow_connect";
        _os_log_impl(&dword_181A37000, v114, v133, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_195:
  if (v113)
  {
    free(v113);
  }

  v49 = 0;
LABEL_141:

  return v49;
}
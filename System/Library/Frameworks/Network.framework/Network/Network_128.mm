uint64_t __nw_browse_result_get_changes_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nw_browse_result_copy_interfaces(*(a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __nw_browse_result_get_changes_block_invoke_2;
  aBlock[3] = &unk_1E6A3CCB8;
  v6 = v4;
  v7 = v6;
  v12 = v6;
  if (v5)
  {
    v8 = _nw_array_apply(v5, aBlock) ^ 1;
    v9 = v12;
  }

  else
  {
    v8 = 0;
    v9 = v6;
  }

  return v8;
}

void nw_browse_result_enumerate_interfaces(nw_browse_result_t result, nw_browse_result_enumerate_interface_t enumerator)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = result;
  v4 = enumerator;
  v5 = v4;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_browse_result_enumerate_interfaces";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v11, &type, &v26))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v29 = "nw_browse_result_enumerate_interfaces";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null result", buf, 0xCu);
      }
    }

    else if (v26 == 1)
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
          v29 = "nw_browse_result_enumerate_interfaces";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v11)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v11);
        goto LABEL_6;
      }

      if (v18)
      {
        *buf = 136446210;
        v29 = "nw_browse_result_enumerate_interfaces";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null result, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v29 = "nw_browse_result_enumerate_interfaces";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    isa = v3[2].isa;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_browse_result_enumerate_interfaces_block_invoke;
    aBlock[3] = &unk_1E6A3CD30;
    v7 = v4;
    v25 = v7;
    v8 = isa;
    v9 = v8;
    if (v8)
    {
      _nw_array_apply(v8, aBlock);
      v7 = v25;
    }

    goto LABEL_6;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_browse_result_enumerate_interfaces";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (!__nwlog_fault(v11, &type, &v26))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v15 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v29 = "nw_browse_result_enumerate_interfaces";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null enumerator", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v26 != 1)
  {
    v12 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      v29 = "nw_browse_result_enumerate_interfaces";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null enumerator, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
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
      v29 = "nw_browse_result_enumerate_interfaces";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v21)
  {
    *buf = 136446466;
    v29 = "nw_browse_result_enumerate_interfaces";
    v30 = 2082;
    v31 = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null enumerator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_41;
  }

LABEL_6:
}

uint64_t nw_browse_result_mark_immutable(uint64_t result)
{
  if (result)
  {
    *(result + 52) |= 1u;
  }

  return result;
}

void nw_browse_result_set_discovered_from_path(void *a1, int a2)
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

    v3[52] = v3[52] & 0xFD | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_browse_result_set_discovered_from_path";
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
        v16 = "nw_browse_result_set_discovered_from_path";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null result", buf, 0xCu);
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
          v16 = "nw_browse_result_set_discovered_from_path";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_browse_result_set_discovered_from_path";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null result, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_browse_result_set_discovered_from_path";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_browse_result_get_discovered_from_path(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[52] >> 1) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_browse_result_get_discovered_from_path";
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
        v15 = "nw_browse_result_get_discovered_from_path";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null result", buf, 0xCu);
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
          v15 = "nw_browse_result_get_discovered_from_path";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_browse_result_get_discovered_from_path";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null result, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_browse_result_get_discovered_from_path";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
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

void nw_tcp_deallocate_globals(uint64_t a1, void *a2)
{
  nw_tcp_destroy_globals();
  if (a2)
  {

    free(a2);
  }
}

uint32_t nw_tcp_get_available_receive_buffer(nw_protocol_metadata_t metadata)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = metadata;
  if (nw_protocol_metadata_is_tcp(v1))
  {
    available_receive_buffer = _nw_tcp_get_available_receive_buffer(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_tcp_get_available_receive_buffer";
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
        v14 = "nw_tcp_get_available_receive_buffer";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)";
LABEL_17:
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
            v14 = "nw_tcp_get_available_receive_buffer";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_tcp_get_available_receive_buffer";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_tcp_get_available_receive_buffer";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  available_receive_buffer = 0;
LABEL_3:

  return available_receive_buffer;
}

uint32_t nw_tcp_get_available_send_buffer(nw_protocol_metadata_t metadata)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = metadata;
  if (nw_protocol_metadata_is_tcp(v1))
  {
    available_send_buffer = _nw_tcp_get_available_send_buffer(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_tcp_get_available_send_buffer";
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
        v14 = "nw_tcp_get_available_send_buffer";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)";
LABEL_17:
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
            v14 = "nw_tcp_get_available_send_buffer";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_tcp_get_available_send_buffer";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_tcp_get_available_send_buffer";
        v8 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  available_send_buffer = 0;
LABEL_3:

  return available_send_buffer;
}

uint64_t nw_tcp_reset_keepalives(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a1;
  if (nw_protocol_metadata_is_tcp(v9))
  {
    v10 = _nw_tcp_reset_keepalives(v9, a2, a3, a4, a5);
    goto LABEL_3;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_tcp_reset_keepalives";
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
        v22 = "nw_tcp_reset_keepalives";
        v16 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)";
LABEL_17:
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
            v22 = "nw_tcp_reset_keepalives";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v18)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v22 = "nw_tcp_reset_keepalives";
        v16 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), no backtrace";
        goto LABEL_17;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v22 = "nw_tcp_reset_keepalives";
        v16 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v13)
  {
    free(v13);
  }

  v10 = 22;
LABEL_3:

  return v10;
}

uint64_t nw_tcp_set_no_delay(void *a1, char a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_tcp(v3))
  {
    v4 = _nw_tcp_set_no_delay(v3, a2);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_tcp_set_no_delay";
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
        v16 = "nw_tcp_set_no_delay";
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
            v16 = "nw_tcp_set_no_delay";
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
        v16 = "nw_tcp_set_no_delay";
        v10 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_tcp_set_no_delay";
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

  v4 = 22;
LABEL_3:

  return v4;
}

uint64_t nw_tcp_set_no_push(void *a1, char a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_tcp(v3))
  {
    v4 = _nw_tcp_set_no_push(v3, a2);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_tcp_set_no_push";
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
        v16 = "nw_tcp_set_no_push";
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
            v16 = "nw_tcp_set_no_push";
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
        v16 = "nw_tcp_set_no_push";
        v10 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_tcp_set_no_push";
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

  v4 = 22;
LABEL_3:

  return v4;
}

uint64_t nw_tcp_set_no_wake_from_sleep(void *a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  is_tcp = nw_protocol_metadata_is_tcp(v3);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  v6 = v5;
  if (is_tcp)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v18 = "nw_tcp_set_no_wake_from_sleep";
      v19 = 1024;
      LODWORD(v20) = a2;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s nw_tcp_set_no_wake_from_sleep do_not_wake %d", buf, 0x12u);
    }

    v7 = _nw_tcp_set_no_wake_from_sleep(v3, a2);
    goto LABEL_5;
  }

  *buf = 136446210;
  v18 = "nw_tcp_set_no_wake_from_sleep";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v9, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_tcp_set_no_wake_from_sleep";
        v12 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata)";
LABEL_19:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else
    {
      if (v15 == 1)
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
            v18 = "nw_tcp_set_no_wake_from_sleep";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v14)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v18 = "nw_tcp_set_no_wake_from_sleep";
        v12 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), no backtrace";
        goto LABEL_19;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_tcp_set_no_wake_from_sleep";
        v12 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v9)
  {
    free(v9);
  }

  v7 = 22;
LABEL_5:

  return v7;
}

uint64_t nw_tcp_set_max_pacing_rate(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_tcp(v3))
  {
    v4 = _nw_tcp_set_max_pacing_rate(v3, a2);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_tcp_set_max_pacing_rate";
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
        v16 = "nw_tcp_set_max_pacing_rate";
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
            v16 = "nw_tcp_set_max_pacing_rate";
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
        v16 = "nw_tcp_set_max_pacing_rate";
        v10 = "%{public}s called with null nw_protocol_metadata_is_tcp(metadata), no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_tcp_set_max_pacing_rate";
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

  v4 = 22;
LABEL_3:

  return v4;
}

NWConcrete_nw_ws_ping_request *nw_ws_ping_request_create(void *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v8 = a3;
  if (v6)
  {
    v9 = [NWConcrete_nw_ws_ping_request alloc];
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (!v9)
    {
LABEL_5:

      goto LABEL_6;
    }

    v35.receiver = v9;
    v35.super_class = NWConcrete_nw_ws_ping_request;
    v13 = objc_msgSendSuper2(&v35, sel_init);
    v9 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->contents, a1);
      objc_storeStrong(&v9->client_queue, a2);
      v14 = _Block_copy(v12);
      pong_handler = v9->pong_handler;
      v9->pong_handler = v14;

      goto LABEL_5;
    }

    v21 = __nwlog_obj();
    *buf = 136446210;
    v37 = "[NWConcrete_nw_ws_ping_request initWithContents:queue:handler:]";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v22, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_ws_ping_request initWithContents:queue:handler:]";
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v23, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v37 = "[NWConcrete_nw_ws_ping_request initWithContents:queue:handler:]";
            v38 = 2082;
            v39 = backtrace_string;
            _os_log_impl(&dword_181A37000, v23, v29, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_42;
        }

        if (v30)
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_ws_ping_request initWithContents:queue:handler:]";
          _os_log_impl(&dword_181A37000, v23, v29, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v23 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_ws_ping_request initWithContents:queue:handler:]";
          _os_log_impl(&dword_181A37000, v23, v32, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_42:
    if (v22)
    {
      free(v22);
    }

    v9 = 0;
    goto LABEL_5;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v37 = "nw_ws_ping_request_create";
  v18 = _os_log_send_and_compose_impl();

  LOBYTE(v35.receiver) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v18, &v35, &type))
  {
    if (LOBYTE(v35.receiver) == 17)
    {
      v19 = __nwlog_obj();
      receiver = v35.receiver;
      if (os_log_type_enabled(v19, v35.receiver))
      {
        *buf = 136446210;
        v37 = "nw_ws_ping_request_create";
        _os_log_impl(&dword_181A37000, v19, receiver, "%{public}s called with null contents", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v25 = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v26 = v35.receiver;
      v27 = os_log_type_enabled(v19, v35.receiver);
      if (v25)
      {
        if (v27)
        {
          *buf = 136446466;
          v37 = "nw_ws_ping_request_create";
          v38 = 2082;
          v39 = v25;
          _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null contents, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v25);
        goto LABEL_36;
      }

      if (v27)
      {
        *buf = 136446210;
        v37 = "nw_ws_ping_request_create";
        _os_log_impl(&dword_181A37000, v19, v26, "%{public}s called with null contents, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v31 = v35.receiver;
      if (os_log_type_enabled(v19, v35.receiver))
      {
        *buf = 136446210;
        v37 = "nw_ws_ping_request_create";
        _os_log_impl(&dword_181A37000, v19, v31, "%{public}s called with null contents, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_36:
  if (v18)
  {
    free(v18);
  }

  v9 = 0;
LABEL_6:

  return v9;
}

id nw_ws_ping_request_copy_client_queue(void *a1)
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
  v16 = "nw_ws_ping_request_copy_client_queue";
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
        v16 = "nw_ws_ping_request_copy_client_queue";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null ping_request", buf, 0xCu);
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
          v16 = "nw_ws_ping_request_copy_client_queue";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null ping_request, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_ws_ping_request_copy_client_queue";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null ping_request, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_ws_ping_request_copy_client_queue";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null ping_request, backtrace limit exceeded", buf, 0xCu);
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

void *nw_ws_ping_request_copy_pong_handler(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _Block_copy(v1[3]);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_ws_ping_request_copy_pong_handler";
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
        v16 = "nw_ws_ping_request_copy_pong_handler";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null ping_request", buf, 0xCu);
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
          v16 = "nw_ws_ping_request_copy_pong_handler";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null ping_request, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_ws_ping_request_copy_pong_handler";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null ping_request, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_ws_ping_request_copy_pong_handler";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null ping_request, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_shoes_metadata_copy_remote_endpoint(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
    }

    if (nw_protocol_metadata_matches_definition(a1, nw_protocol_shoes_get_definition(void)::proxy_definition))
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v20 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v14 = __nw_shoes_metadata_copy_remote_endpoint_block_invoke;
      v15 = &unk_1E6A2B298;
      v16 = buf;
      handle = _nw_protocol_metadata_get_handle(a1);
      if (handle)
      {
        v14(v13, handle);
      }

      v3 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      return v3;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v5, &type, &v17))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
        v8 = "%{public}s metadata must be shoes";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v17 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
        v8 = "%{public}s metadata must be shoes, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v12 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
        v8 = "%{public}s metadata must be shoes, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v12)
    {
      *buf = 136446466;
      *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v11 = "%{public}s metadata must be shoes, dumping backtrace:%{public}s";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v5, &type, &v17))
  {
    goto LABEL_36;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v17 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
        v8 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v10 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v10)
      {
        *buf = 136446210;
        *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
        v8 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v10)
    {
      *buf = 136446466;
      *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v11 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_25:
      _os_log_impl(&dword_181A37000, v6, v7, v11, buf, 0x16u);
    }

LABEL_26:
    free(backtrace_string);
    goto LABEL_36;
  }

  v6 = __nwlog_obj();
  v7 = type;
  if (os_log_type_enabled(v6, type))
  {
    *buf = 136446210;
    *&buf[4] = "nw_shoes_metadata_copy_remote_endpoint";
    v8 = "%{public}s called with null metadata";
LABEL_35:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_36:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

uint64_t __nw_shoes_metadata_copy_remote_endpoint_block_invoke(uint64_t a1, void **a2)
{
  if (*a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = os_retain(*a2);
  }

  return 1;
}

uint64_t ___ZL32nw_protocol_shoes_get_definitionv_block_invoke()
{
  if (nw_protocol_shoes_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_shoes_identifier::onceToken, &__block_literal_global_672);
  }

  nw_protocol_shoes_get_definition(void)::proxy_definition = nw_protocol_definition_create_with_identifier(&g_shoes_protocol_identifier);
  nw_protocol_definition_set_metadata_allocator(nw_protocol_shoes_get_definition(void)::proxy_definition, nw_shoes_allocate_metadata, nw_shoes_deallocate_metadata);
  nw_protocol_definition_set_metadata_comparator(nw_protocol_shoes_get_definition(void)::proxy_definition, nw_shoes_compare_metadata);
  nw_protocol_definition_set_is_proxy(nw_protocol_shoes_get_definition(void)::proxy_definition);
  v0 = nw_protocol_shoes_get_definition(void)::proxy_definition;

  return nw_protocol_register_handle(&g_shoes_protocol_identifier, v0, nw_protocol_shoes_create, 0);
}

void *nw_protocol_shoes_create(const nw_protocol_identifier *a1, nw_object *a2, nw_endpoint *a3, nw_parameters *a4)
{
  v5 = malloc_type_calloc(1uLL, 0xF8uLL, 0xF22E54EDuLL);
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    v6 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v6);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v6);
  }

  v5[2] = &g_shoes_protocol_identifier;
  v5[3] = &g_shoes_protocol_callbacks;
  v5[5] = v5;
  if (a3)
  {
    v8 = os_retain(a3);
  }

  else
  {
    v8 = 0;
  }

  v5[14] = v8;
  return v5;
}

uint64_t nw_shoes_compare_metadata(uint64_t a1, void **a2, void **a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_shoes_compare_metadata";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_shoes_compare_metadata";
      v9 = "%{public}s called with null handle1";
      goto LABEL_33;
    }

    if (v14 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_shoes_compare_metadata";
      v9 = "%{public}s called with null handle1, backtrace limit exceeded";
      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (!v11)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_shoes_compare_metadata";
      v9 = "%{public}s called with null handle1, no backtrace";
      goto LABEL_33;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_shoes_compare_metadata";
      v18 = 2082;
      v19 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null handle1, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_34:
    if (!v6)
    {
      return 0;
    }

LABEL_35:
    free(v6);
    return 0;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_shoes_compare_metadata";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_shoes_compare_metadata";
      v9 = "%{public}s called with null handle2";
      goto LABEL_33;
    }

    if (v14 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v17 = "nw_shoes_compare_metadata";
      v9 = "%{public}s called with null handle2, backtrace limit exceeded";
      goto LABEL_33;
    }

    v12 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v13 = os_log_type_enabled(v7, type);
    if (v12)
    {
      if (v13)
      {
        *buf = 136446466;
        v17 = "nw_shoes_compare_metadata";
        v18 = 2082;
        v19 = v12;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null handle2, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v12);
      if (!v6)
      {
        return 0;
      }

      goto LABEL_35;
    }

    if (v13)
    {
      *buf = 136446210;
      v17 = "nw_shoes_compare_metadata";
      v9 = "%{public}s called with null handle2, no backtrace";
LABEL_33:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  v3 = *a2;
  v4 = *a3;

  return nw_endpoint_is_equal(v3, v4, 31);
}

void nw_shoes_deallocate_metadata(nw_protocol_definition *a1, void **a2)
{
  if (*a2)
  {
    os_release(*a2);
    *a2 = 0;
  }

  v3 = a2[1];
  if (v3)
  {
    os_release(v3);
  }

  free(a2);
}

uint64_t nw_shoes_allocate_metadata(nw_protocol_definition *a1)
{
  result = malloc_type_calloc(1uLL, 0x10uLL, 0xF758114BuLL);
  if (!result)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    v2 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v2);
    if (result)
    {
      __break(1u);
    }

    else
    {
      free(v2);
      return 0;
    }
  }

  return result;
}

double __nw_protocol_shoes_identifier_block_invoke()
{
  word_1EA841596 = 0;
  unk_1EA84158E = 0;
  unk_1EA84157E = 0u;
  strcpy(&g_shoes_protocol_identifier, "shoes");
  *&result = 0x100000005;
  qword_1EA841598 = 0x100000005;
  qword_1EA8415B0 = nw_protocol_default_replace_input_handler;
  qword_1EA8415E8 = nw_protocol_default_output_available;
  qword_1EA841658 = nw_protocol_default_input_finished;
  qword_1EA841660 = nw_protocol_default_output_finished;
  qword_1EA8416A8 = nw_protocol_default_input_flush;
  qword_1EA841698 = nw_protocol_default_get_message_properties;
  qword_1EA841608 = nw_protocol_default_link_state;
  qword_1EA841648 = nw_protocol_default_updated_path;
  qword_1EA841668 = nw_protocol_default_get_output_local;
  qword_1EA841670 = nw_protocol_default_get_output_interface;
  qword_1EA8415C0 = nw_protocol_default_disconnect;
  qword_1EA8415D0 = nw_protocol_default_disconnected;
  qword_1EA8416A0 = nw_protocol_default_reset;
  qword_1EA841650 = nw_protocol_default_supports_external_data;
  qword_1EA841630 = nw_protocol_default_register_notification;
  qword_1EA841638 = nw_protocol_default_unregister_notification;
  qword_1EA841640 = nw_protocol_default_notify;
  qword_1EA841688 = nw_protocol_default_add_listen_handler;
  qword_1EA841690 = nw_protocol_default_remove_listen_handler;
  g_shoes_protocol_callbacks = nw_protocol_shoes_add_input_handler;
  qword_1EA8415A8 = nw_protocol_shoes_remove_input_handler;
  qword_1EA8415E0 = nw_protocol_shoes_input_available;
  qword_1EA8415F0 = nw_protocol_shoes_get_input_frames;
  qword_1EA8415F8 = nw_protocol_shoes_get_output_frames;
  qword_1EA841600 = nw_protocol_shoes_finalize_output_frames;
  qword_1EA841678 = nw_protocol_shoes_waiting_for_output;
  qword_1EA8415B8 = nw_protocol_shoes_connect;
  qword_1EA8415C8 = nw_protocol_shoes_connected;
  qword_1EA8415D8 = nw_protocol_shoes_error;
  qword_1EA841610 = nw_protocol_shoes_get_parameters;
  qword_1EA841618 = nw_protocol_shoes_get_path;
  qword_1EA841680 = nw_protocol_shoes_copy_info;
  qword_1EA841628 = nw_protocol_shoes_get_remote_endpoint;
  qword_1EA841620 = nw_protocol_shoes_get_local_endpoint;
  return result;
}

void *nw_protocol_shoes_get_local_endpoint(nw_protocol *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_shoes_get_local_endpoint";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v9, &type, &v17))
    {
      goto LABEL_47;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_shoes_get_local_endpoint";
        v12 = "%{public}s called with null protocol";
LABEL_46:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }

LABEL_47:
      if (v9)
      {
        free(v9);
      }

      return 0;
    }

    if (v17 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_shoes_get_local_endpoint";
        v12 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v14 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v20 = "nw_protocol_shoes_get_local_endpoint";
        v12 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v14)
    {
      *buf = 136446466;
      v20 = "nw_protocol_shoes_get_local_endpoint";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_36:
      _os_log_impl(&dword_181A37000, v10, v11, v15, buf, 0x16u);
    }

LABEL_37:
    free(backtrace_string);
    goto LABEL_47;
  }

  v1 = a1;
  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_shoes_get_local_endpoint";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v9, &type, &v17))
    {
      goto LABEL_47;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_shoes_get_local_endpoint";
        v12 = "%{public}s called with null shoes";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v17 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_shoes_get_local_endpoint";
        v12 = "%{public}s called with null shoes, backtrace limit exceeded";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v16 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v20 = "nw_protocol_shoes_get_local_endpoint";
        v12 = "%{public}s called with null shoes, no backtrace";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v16)
    {
      *buf = 136446466;
      v20 = "nw_protocol_shoes_get_local_endpoint";
      v21 = 2082;
      v22 = backtrace_string;
      v15 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v3 = handle[243];
  if ((v3 & 0x20) == 0)
  {
    handle[243] = v3 | 0x20;
    if (*(handle + 9))
    {
      output_handler = a1->output_handler;
      if (!output_handler || (get_output_local_endpoint = output_handler->callbacks->get_output_local_endpoint) == 0 || (v6 = v1, result = get_output_local_endpoint(), v1 = v6, !result))
      {
        result = v1->default_input_handler->flow_id;
        if (result)
        {
          v8 = *(result[3] + 128);
          if (v8)
          {
            result = v8();
          }

          else
          {
            result = 0;
          }
        }
      }

      goto LABEL_15;
    }
  }

  result = a1->default_input_handler->flow_id;
  if (!result)
  {
LABEL_14:
    if ((v3 & 0x20) != 0)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (*(result[3] + 128))
  {
    result = nw_protocol_get_local_endpoint(result);
    goto LABEL_14;
  }

  result = 0;
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    handle[243] &= ~0x20u;
  }

  return result;
}

uint64_t nw_protocol_shoes_get_remote_endpoint(nw_protocol *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[14];
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_shoes_get_remote_endpoint";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v3, &type, &v11))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_shoes_get_remote_endpoint";
        v6 = "%{public}s called with null shoes";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_shoes_get_remote_endpoint";
        v6 = "%{public}s called with null shoes, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v10 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (v10)
      {
        *buf = 136446210;
        v14 = "nw_protocol_shoes_get_remote_endpoint";
        v6 = "%{public}s called with null shoes, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_shoes_get_remote_endpoint";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_shoes_get_remote_endpoint";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (!__nwlog_fault(v3, &type, &v11))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_shoes_get_remote_endpoint";
        v6 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v8 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (v8)
      {
        *buf = 136446210;
        v14 = "nw_protocol_shoes_get_remote_endpoint";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_shoes_get_remote_endpoint";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v4, v5, v9, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v4 = __nwlog_obj();
  v5 = type;
  if (os_log_type_enabled(v4, type))
  {
    *buf = 136446210;
    v14 = "nw_protocol_shoes_get_remote_endpoint";
    v6 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
  }

LABEL_32:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void *nw_protocol_shoes_copy_info(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      result = *(a1 + 32);
      if (result)
      {
        v5 = result[3];
        if (!v5 || !*(v5 + 224))
        {
          result = 0;
          if (a2 != 255)
          {
            return result;
          }

          goto LABEL_8;
        }

        result = nw_protocol_copy_info(result);
      }

      if (a2 != 255)
      {
        return result;
      }

LABEL_8:
      v6 = *(v2 + 96);
      if (v6)
      {
        if (result || (result = _nw_array_create(), (v6 = *(v2 + 96)) != 0) && result)
        {
          v7 = result;
          _nw_array_append(result, v6);
          return v7;
        }
      }

      return result;
    }

    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_shoes_copy_info";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v8, &type, &v16))
    {
      goto LABEL_44;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_shoes_copy_info";
        v11 = "%{public}s called with null shoes";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (v16 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_shoes_copy_info";
        v11 = "%{public}s called with null shoes, backtrace limit exceeded";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v15 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v19 = "nw_protocol_shoes_copy_info";
        v11 = "%{public}s called with null shoes, no backtrace";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (v15)
    {
      *buf = 136446466;
      v19 = "nw_protocol_shoes_copy_info";
      v20 = 2082;
      v21 = backtrace_string;
      v14 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_shoes_copy_info";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v8, &type, &v16))
  {
    goto LABEL_44;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v16 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_shoes_copy_info";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v13 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v19 = "nw_protocol_shoes_copy_info";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    if (v13)
    {
      *buf = 136446466;
      v19 = "nw_protocol_shoes_copy_info";
      v20 = 2082;
      v21 = backtrace_string;
      v14 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_33:
      _os_log_impl(&dword_181A37000, v9, v10, v14, buf, 0x16u);
    }

LABEL_34:
    free(backtrace_string);
    goto LABEL_44;
  }

  v9 = __nwlog_obj();
  v10 = type;
  if (os_log_type_enabled(v9, type))
  {
    *buf = 136446210;
    v19 = "nw_protocol_shoes_copy_info";
    v11 = "%{public}s called with null protocol";
LABEL_43:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
  }

LABEL_44:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

void *nw_protocol_shoes_get_path(nw_protocol *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_shoes_get_path";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v8, &type, &v17))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v20 = "nw_protocol_shoes_get_path";
      v11 = "%{public}s called with null protocol";
LABEL_51:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      goto LABEL_52;
    }

    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_shoes_get_path";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v13 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v20 = "nw_protocol_shoes_get_path";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (!v13)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v20 = "nw_protocol_shoes_get_path";
    v21 = 2082;
    v22 = backtrace_string;
    v14 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_37:
    _os_log_impl(&dword_181A37000, v9, v10, v14, buf, 0x16u);
    goto LABEL_38;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_shoes_get_path";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v8, &type, &v17))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v20 = "nw_protocol_shoes_get_path";
      v11 = "%{public}s called with null shoes";
      goto LABEL_51;
    }

    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_shoes_get_path";
        v11 = "%{public}s called with null shoes, backtrace limit exceeded";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v15 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_protocol_shoes_get_path";
        v11 = "%{public}s called with null shoes, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (!v15)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v20 = "nw_protocol_shoes_get_path";
    v21 = 2082;
    v22 = backtrace_string;
    v14 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
    goto LABEL_37;
  }

  default_input_handler = a1->default_input_handler;
  if (default_input_handler)
  {
    v3 = (default_input_handler->callbacks->get_path)();
    v4 = nw_path_copy_parameters(v3);
    v5 = v4;
    if (handle[243])
    {
      if ((nw_parameters_get_tfo(v4) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v20 = "nw_protocol_shoes_get_path";
          v21 = 2082;
          v22 = handle + 159;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s SHOES enabling TFO on path parameters since we are using TLS", buf, 0x16u);
        }

        nw_parameters_set_tfo(v5, 1);
      }

      nw_parameters_set_fast_open_force_enable(v5, 1);
    }

    if (v5)
    {
      os_release(v5);
    }

    return v3;
  }

  __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_shoes_get_path";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v8, &type, &v17))
  {
    goto LABEL_52;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v17 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_shoes_get_path";
        v11 = "%{public}s called with null protocol->default_input_handler, backtrace limit exceeded";
        goto LABEL_51;
      }

      goto LABEL_52;
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
        v20 = "nw_protocol_shoes_get_path";
        v11 = "%{public}s called with null protocol->default_input_handler, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (v16)
    {
      *buf = 136446466;
      v20 = "nw_protocol_shoes_get_path";
      v21 = 2082;
      v22 = backtrace_string;
      v14 = "%{public}s called with null protocol->default_input_handler, dumping backtrace:%{public}s";
      goto LABEL_37;
    }

LABEL_38:
    free(backtrace_string);
    goto LABEL_52;
  }

  v9 = __nwlog_obj();
  v10 = type;
  if (os_log_type_enabled(v9, type))
  {
    *buf = 136446210;
    v20 = "nw_protocol_shoes_get_path";
    v11 = "%{public}s called with null protocol->default_input_handler";
    goto LABEL_51;
  }

LABEL_52:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

char *nw_protocol_shoes_get_parameters(nw_protocol *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_shoes_get_parameters";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v18 = "nw_protocol_shoes_get_parameters";
      v9 = "%{public}s called with null protocol";
LABEL_51:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      goto LABEL_52;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_shoes_get_parameters";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v11 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v18 = "nw_protocol_shoes_get_parameters";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (!v11)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v18 = "nw_protocol_shoes_get_parameters";
    v19 = 2082;
    v20 = backtrace_string;
    v12 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_37:
    _os_log_impl(&dword_181A37000, v7, v8, v12, buf, 0x16u);
    goto LABEL_38;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_shoes_get_parameters";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v18 = "nw_protocol_shoes_get_parameters";
      v9 = "%{public}s called with null shoes";
      goto LABEL_51;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_shoes_get_parameters";
        v9 = "%{public}s called with null shoes, backtrace limit exceeded";
        goto LABEL_51;
      }

      goto LABEL_52;
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
        v18 = "nw_protocol_shoes_get_parameters";
        v9 = "%{public}s called with null shoes, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (!v13)
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v18 = "nw_protocol_shoes_get_parameters";
    v19 = 2082;
    v20 = backtrace_string;
    v12 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
    goto LABEL_37;
  }

  default_input_handler = a1->default_input_handler;
  if (default_input_handler)
  {
    result = *(handle + 9);
    if (!result)
    {
      result = *(handle + 10);
      if (!result)
      {
        result = (default_input_handler->callbacks->get_parameters)(default_input_handler);
        if (handle[243])
        {
          v4 = result;
          *(handle + 10) = _nw_parameters_shallow_copy(result, 0);
          if ((nw_parameters_get_tfo(v4) & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v5 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v18 = "nw_protocol_shoes_get_parameters";
              v19 = 2082;
              v20 = handle + 159;
              _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s SHOES enabling TFO on parameters since we are using TLS", buf, 0x16u);
            }

            nw_parameters_set_tfo(*(handle + 10), 1);
          }

          nw_parameters_set_fast_open_force_enable(*(handle + 10), 1);
          return *(handle + 10);
        }
      }
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocol_shoes_get_parameters";
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (!__nwlog_fault(v6, &type, &v15))
  {
    goto LABEL_52;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_protocol_shoes_get_parameters";
        v9 = "%{public}s called with null protocol->default_input_handler, backtrace limit exceeded";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v14 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v18 = "nw_protocol_shoes_get_parameters";
        v9 = "%{public}s called with null protocol->default_input_handler, no backtrace";
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (v14)
    {
      *buf = 136446466;
      v18 = "nw_protocol_shoes_get_parameters";
      v19 = 2082;
      v20 = backtrace_string;
      v12 = "%{public}s called with null protocol->default_input_handler, dumping backtrace:%{public}s";
      goto LABEL_37;
    }

LABEL_38:
    free(backtrace_string);
    goto LABEL_52;
  }

  v7 = __nwlog_obj();
  v8 = type;
  if (os_log_type_enabled(v7, type))
  {
    *buf = 136446210;
    v18 = "nw_protocol_shoes_get_parameters";
    v9 = "%{public}s called with null protocol->default_input_handler";
    goto LABEL_51;
  }

LABEL_52:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

void nw_protocol_shoes_error(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_shoes_error";
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v11, &type, &v19))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v22 = "nw_protocol_shoes_error";
      v14 = "%{public}s called with null protocol";
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v16 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v22 = "nw_protocol_shoes_error";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v11)
        {
          return;
        }

LABEL_41:
        free(v11);
        return;
      }

      if (!v16)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v22 = "nw_protocol_shoes_error";
      v14 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v22 = "nw_protocol_shoes_error";
      v14 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_39:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
    goto LABEL_40;
  }

  handle = a1->handle;
  if (handle)
  {
    v6 = handle[243];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
    if ((v6 & 0x10) != 0)
    {
      if (v8)
      {
        *buf = 136446722;
        v22 = "nw_protocol_shoes_error";
        v23 = 2082;
        v24 = handle + 159;
        v25 = 1024;
        v26 = a3;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}s not sending error %d", buf, 0x1Cu);
      }
    }

    else
    {
      if (v8)
      {
        *buf = 136446722;
        v22 = "nw_protocol_shoes_error";
        v23 = 2082;
        v24 = handle + 159;
        v25 = 1024;
        v26 = a3;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}s sending error %d", buf, 0x1Cu);
      }

      default_input_handler = a1->default_input_handler;
      if (default_input_handler)
      {
        error = default_input_handler->callbacks->error;
        if (error)
        {
          error();
        }
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_protocol_shoes_error";
  v11 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v11, &type, &v19))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v22 = "nw_protocol_shoes_error";
    v14 = "%{public}s called with null shoes";
    goto LABEL_39;
  }

  if (v19 != 1)
  {
    v12 = __nwlog_obj();
    v13 = type;
    if (!os_log_type_enabled(v12, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v22 = "nw_protocol_shoes_error";
    v14 = "%{public}s called with null shoes, backtrace limit exceeded";
    goto LABEL_39;
  }

  v17 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v13 = type;
  v18 = os_log_type_enabled(v12, type);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v22 = "nw_protocol_shoes_error";
    v14 = "%{public}s called with null shoes, no backtrace";
    goto LABEL_39;
  }

  if (v18)
  {
    *buf = 136446466;
    v22 = "nw_protocol_shoes_error";
    v23 = 2082;
    v24 = v17;
    _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v11)
  {
    goto LABEL_41;
  }
}

void nw_protocol_shoes_connected(nw_protocol *a1, nw_protocol *a2)
{
  v103 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v91 = "nw_protocol_shoes_connected";
    v52 = _os_log_send_and_compose_impl();
    LOBYTE(v102) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v52, &v102, &type))
    {
      goto LABEL_104;
    }

    if (v102 == 17)
    {
      v53 = __nwlog_obj();
      v54 = v102;
      if (!os_log_type_enabled(v53, v102))
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v91 = "nw_protocol_shoes_connected";
      v55 = "%{public}s called with null protocol";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v53 = __nwlog_obj();
      v54 = v102;
      v57 = os_log_type_enabled(v53, v102);
      if (backtrace_string)
      {
        if (v57)
        {
          *buf = 136446466;
          v91 = "nw_protocol_shoes_connected";
          v92 = 2082;
          v93 = backtrace_string;
          _os_log_impl(&dword_181A37000, v53, v54, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_104:
        if (!v52)
        {
          return;
        }

LABEL_105:
        free(v52);
        return;
      }

      if (!v57)
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v91 = "nw_protocol_shoes_connected";
      v55 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v53 = __nwlog_obj();
      v54 = v102;
      if (!os_log_type_enabled(v53, v102))
      {
        goto LABEL_104;
      }

      *buf = 136446210;
      v91 = "nw_protocol_shoes_connected";
      v55 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_103:
    _os_log_impl(&dword_181A37000, v53, v54, v55, buf, 0xCu);
    goto LABEL_104;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[243] & 0xE) == 6 && handle[158] == 3)
    {
      if (*(handle + 8) != a2)
      {
        return;
      }

      output_handler = a1->output_handler;
      if (!output_handler)
      {
        return;
      }

      callbacks = output_handler->callbacks;
      if (!callbacks)
      {
        return;
      }

      get_output_local_endpoint = callbacks->get_output_local_endpoint;
      if (!get_output_local_endpoint)
      {
        return;
      }

      v8 = get_output_local_endpoint();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (v8)
      {
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v91 = "nw_protocol_shoes_connected";
          v92 = 2082;
          v93 = handle + 159;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s udp-associate tcp connected", buf, 0x16u);
        }

        v10 = v8;
        port = _nw_endpoint_get_port(v10);

        *(handle + 76) = port;
        v12 = a1->output_handler;
        nw_protocol_set_output_handler(a1, *(handle + 8));
        nw_protocol_set_output_handler(handle, *(handle + 8));
        *(handle + 8) = v12;
        nw_protocol_shoes_send_request_inner(a1);
        return;
      }

      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v91 = "nw_protocol_shoes_connected";
        v92 = 2082;
        v93 = handle + 159;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s %{public}s udp-associate no local endpoint for udp", buf, 0x16u);
      }

      nw_protocol_shoes_error(handle, handle, 57);
      handle[243] |= 0x10u;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      v31 = gLogObj;
      goto LABEL_72;
    }

    v13 = a1->output_handler;
    if (v13)
    {
      v14 = v13->callbacks;
      if (v14)
      {
        if (v14->get_output_local_endpoint)
        {
          v15 = (v14->get_remote_endpoint)();
          if (v15)
          {
            v16 = v15;
            v17 = _nw_endpoint_get_type(v16);

            if (v17 == 1 && nw_endpoint_get_type(*(handle + 14)) != nw_endpoint_type_address)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v18 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
              {
                v19 = *(handle + 14);
                *buf = 136446978;
                v91 = "nw_protocol_shoes_connected";
                v92 = 2082;
                v93 = handle + 159;
                v94 = 2112;
                v95 = v19;
                v96 = 2112;
                v97 = v16;
                _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Updating peer endpoint from %@ to %@", buf, 0x2Au);
              }

              v20 = *(handle + 14);
              *(handle + 14) = os_retain(v16);
              if (v20)
              {
                os_release(v20);
              }
            }
          }
        }
      }
    }

    (a1->default_input_handler->callbacks->connected)();
    v21 = a1->output_handler;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    if (v21 != a2)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        identifier = a2->identifier;
        v24 = a1->output_handler;
        v25 = a1->identifier;
        *buf = 136447490;
        v91 = "nw_protocol_shoes_connected";
        v92 = 2082;
        v93 = handle + 159;
        v94 = 2048;
        v95 = a2;
        v96 = 2080;
        v97 = identifier;
        v98 = 2048;
        v99 = v24;
        v100 = 2080;
        v101 = v25;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s connected protocol %p (%s) is not our output_handler %p (%s), ignoring", buf, 0x3Eu);
      }

      return;
    }

    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v26 = a1->output_handler;
      if (!v26 || (v27 = v26->callbacks->get_output_local_endpoint) == 0 || (default_input_handler = v27()) == 0)
      {
        default_input_handler = a1->default_input_handler;
        if (default_input_handler)
        {
          get_local_endpoint = default_input_handler->callbacks->get_local_endpoint;
          if (get_local_endpoint)
          {
            default_input_handler = get_local_endpoint();
          }

          else
          {
            default_input_handler = 0;
          }
        }
      }

      v32 = "with";
      v91 = "nw_protocol_shoes_connected";
      v33 = handle[243];
      *buf = 136446978;
      v92 = 2082;
      if ((v33 & 1) == 0)
      {
        v32 = "no";
      }

      v93 = handle + 159;
      v94 = 2114;
      v95 = default_input_handler;
      v96 = 2082;
      v97 = v32;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s local address %{public}@ %{public}s TFO", buf, 0x2Au);
    }

    v34 = handle[158];
    if (v34 != 6)
    {
      if (v34 != 1)
      {
        return;
      }

      *(handle + 36) = 0;
      v35 = handle[243];
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      v37 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
      if ((v35 & 1) == 0)
      {
        if (v37)
        {
          *buf = 136446466;
          v91 = "nw_protocol_shoes_connected";
          v92 = 2082;
          v93 = handle + 159;
          _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s send request without TFO data from above", buf, 0x16u);
        }

        v38 = a1->handle;
        if (v38)
        {
          if ((~v38[243] & 6) == 0)
          {
            if (gLogDatapath == 1)
            {
              v74 = __nwlog_obj();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446466;
                v91 = "nw_protocol_shoes_send_request";
                v92 = 2082;
                v93 = v38 + 159;
                _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s udp-associate creating output handler for udp", buf, 0x16u);
              }
            }

            v39 = (*(*(*(v38 + 6) + 24) + 112))();
            v40 = _nw_parameters_copy(v39);
            v41 = nw_parameters_copy_default_protocol_stack(v40);
            options = _nw_tcp_create_options();
            _nw_tcp_options_set_reset_local_port(options, 1);
            nw_protocol_options_set_log_id(options, "C", v38 + 159, 0x65u);
            nw_protocol_stack_set_transport_protocol(v41, options);
            if (v41)
            {
              os_release(v41);
            }

            if (options)
            {
              os_release(options);
            }

            v43 = nw_parameters_copy_context(v39);
            v44 = nw_path_copy_flow_registration(v43, v38);
            if (v43)
            {
              os_release(v43);
            }

            ip_protocol = nw_parameters_get_ip_protocol(v40);
            new_flow = nw_path_flow_registration_create_new_flow(v44, 1, 0, 0, 0, 0, 0, ip_protocol);
            *(v38 + 11) = new_flow;
            nw_path_flow_registration_set_specific_use_only(new_flow, 1);
            if (v44)
            {
              os_release(v44);
            }

            v102 = *v38;
            nw_path_flow_registration_get_id(*(v38 + 11), v38);
            v47 = nw_endpoint_copy_original_endpoint(*(v38 + 13), 1);
            if (nw_socket_protocol_identifier::onceToken[0] != -1)
            {
              dispatch_once(nw_socket_protocol_identifier::onceToken, &__block_literal_global_67171);
            }

            internal = nw_protocol_create_internal(&nw_socket_protocol_identifier::identifier, v47, v40, 1);
            if (v47)
            {
              os_release(v47);
            }

            *(v38 + 9) = v40;
            (**(internal + 24))(internal, a1);
            *(v38 + 8) = internal;
            v38[158] = 3;
            v49 = *(internal + 24);
            if (v49)
            {
              v50 = *(v49 + 24);
              if (v50)
              {
                v50(internal, a1);
LABEL_63:
                v51 = *(v38 + 9);
                if (v51)
                {
                  os_release(v51);
                  *(v38 + 9) = 0;
                }

                *v38 = v102;
                return;
              }
            }

            __nwlog_obj();
            v64 = *(v38 + 8);
            v65 = "invalid";
            if (v64)
            {
              v66 = *(v64 + 16);
              if (v66)
              {
                v65 = v66;
              }
            }

            *buf = 136446466;
            v91 = "nw_protocol_shoes_send_request";
            v92 = 2082;
            v93 = v65;
            v67 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v88 = 0;
            if (__nwlog_fault(v67, &type, &v88))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v68 = __nwlog_obj();
                v69 = type;
                if (!os_log_type_enabled(v68, type))
                {
                  goto LABEL_153;
                }

                v70 = *(v38 + 8);
                v71 = "invalid";
                if (v70)
                {
                  v72 = *(v70 + 16);
                  if (v72)
                  {
                    v71 = v72;
                  }
                }

                *buf = 136446466;
                v91 = "nw_protocol_shoes_send_request";
                v92 = 2082;
                v93 = v71;
                v73 = "%{public}s protocol %{public}s has invalid connect callback";
                goto LABEL_152;
              }

              if (v88 != 1)
              {
                v68 = __nwlog_obj();
                v69 = type;
                if (!os_log_type_enabled(v68, type))
                {
                  goto LABEL_153;
                }

                v82 = *(v38 + 8);
                v83 = "invalid";
                if (v82)
                {
                  v84 = *(v82 + 16);
                  if (v84)
                  {
                    v83 = v84;
                  }
                }

                *buf = 136446466;
                v91 = "nw_protocol_shoes_send_request";
                v92 = 2082;
                v93 = v83;
                v73 = "%{public}s protocol %{public}s has invalid connect callback, backtrace limit exceeded";
                goto LABEL_152;
              }

              v77 = __nw_create_backtrace_string();
              v68 = __nwlog_obj();
              v69 = type;
              v78 = os_log_type_enabled(v68, type);
              if (v77)
              {
                if (v78)
                {
                  v79 = *(v38 + 8);
                  v80 = "invalid";
                  if (v79)
                  {
                    v81 = *(v79 + 16);
                    if (v81)
                    {
                      v80 = v81;
                    }
                  }

                  *buf = 136446722;
                  v91 = "nw_protocol_shoes_send_request";
                  v92 = 2082;
                  v93 = v80;
                  v94 = 2082;
                  v95 = v77;
                  _os_log_impl(&dword_181A37000, v68, v69, "%{public}s protocol %{public}s has invalid connect callback, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v77);
                goto LABEL_153;
              }

              if (v78)
              {
                v85 = *(v38 + 8);
                v86 = "invalid";
                if (v85)
                {
                  v87 = *(v85 + 16);
                  if (v87)
                  {
                    v86 = v87;
                  }
                }

                *buf = 136446466;
                v91 = "nw_protocol_shoes_send_request";
                v92 = 2082;
                v93 = v86;
                v73 = "%{public}s protocol %{public}s has invalid connect callback, no backtrace";
LABEL_152:
                _os_log_impl(&dword_181A37000, v68, v69, v73, buf, 0x16u);
              }
            }

LABEL_153:
            if (v67)
            {
              free(v67);
            }

            goto LABEL_63;
          }

          if (nw_protocol_shoes_send_request_inner(a1))
          {
            return;
          }

LABEL_71:
          v31 = __nwlog_obj();
          v30 = v31;
LABEL_72:
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v91 = "nw_shoes_internal_disconnect";
            v92 = 2082;
            v93 = handle + 159;
            _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s ", buf, 0x16u);
          }

          handle[158] = 7;
          (*(*(handle + 3) + 48))(handle, 0);
          return;
        }

        __nwlog_obj();
        *buf = 136446210;
        v91 = "nw_protocol_shoes_send_request";
        v60 = _os_log_send_and_compose_impl();
        LOBYTE(v102) = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v60, &v102, &type))
        {
          if (v102 == 17)
          {
            v61 = __nwlog_obj();
            v62 = v102;
            if (!os_log_type_enabled(v61, v102))
            {
              goto LABEL_145;
            }

            *buf = 136446210;
            v91 = "nw_protocol_shoes_send_request";
            v63 = "%{public}s called with null shoes";
            goto LABEL_144;
          }

          if (type != OS_LOG_TYPE_INFO)
          {
            v61 = __nwlog_obj();
            v62 = v102;
            if (!os_log_type_enabled(v61, v102))
            {
              goto LABEL_145;
            }

            *buf = 136446210;
            v91 = "nw_protocol_shoes_send_request";
            v63 = "%{public}s called with null shoes, backtrace limit exceeded";
            goto LABEL_144;
          }

          v75 = __nw_create_backtrace_string();
          v61 = __nwlog_obj();
          v62 = v102;
          v76 = os_log_type_enabled(v61, v102);
          if (v75)
          {
            if (v76)
            {
              *buf = 136446466;
              v91 = "nw_protocol_shoes_send_request";
              v92 = 2082;
              v93 = v75;
              _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v75);
            goto LABEL_145;
          }

          if (v76)
          {
            *buf = 136446210;
            v91 = "nw_protocol_shoes_send_request";
            v63 = "%{public}s called with null shoes, no backtrace";
LABEL_144:
            _os_log_impl(&dword_181A37000, v61, v62, v63, buf, 0xCu);
          }
        }

LABEL_145:
        if (v60)
        {
          free(v60);
        }

        goto LABEL_71;
      }

      if (v37)
      {
        *buf = 136446466;
        v91 = "nw_protocol_shoes_connected";
        v92 = 2082;
        v93 = handle + 159;
        _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s start waiting for TFO", buf, 0x16u);
      }

      handle[158] = 2;
    }

    (a1->default_input_handler->callbacks->connected)(a1->default_input_handler, a1);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v91 = "nw_protocol_shoes_connected";
  v52 = _os_log_send_and_compose_impl();
  LOBYTE(v102) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v52, &v102, &type))
  {
    goto LABEL_104;
  }

  if (v102 == 17)
  {
    v53 = __nwlog_obj();
    v54 = v102;
    if (!os_log_type_enabled(v53, v102))
    {
      goto LABEL_104;
    }

    *buf = 136446210;
    v91 = "nw_protocol_shoes_connected";
    v55 = "%{public}s called with null shoes";
    goto LABEL_103;
  }

  if (type != OS_LOG_TYPE_INFO)
  {
    v53 = __nwlog_obj();
    v54 = v102;
    if (!os_log_type_enabled(v53, v102))
    {
      goto LABEL_104;
    }

    *buf = 136446210;
    v91 = "nw_protocol_shoes_connected";
    v55 = "%{public}s called with null shoes, backtrace limit exceeded";
    goto LABEL_103;
  }

  v58 = __nw_create_backtrace_string();
  v53 = __nwlog_obj();
  v54 = v102;
  v59 = os_log_type_enabled(v53, v102);
  if (!v58)
  {
    if (!v59)
    {
      goto LABEL_104;
    }

    *buf = 136446210;
    v91 = "nw_protocol_shoes_connected";
    v55 = "%{public}s called with null shoes, no backtrace";
    goto LABEL_103;
  }

  if (v59)
  {
    *buf = 136446466;
    v91 = "nw_protocol_shoes_connected";
    v92 = 2082;
    v93 = v58;
    _os_log_impl(&dword_181A37000, v53, v54, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v58);
  if (v52)
  {
    goto LABEL_105;
  }
}

uint64_t nw_protocol_shoes_send_request_inner(nw_protocol *a1)
{
  v68 = *MEMORY[0x1E69E9840];
  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *v57 = 136446210;
    *&v57[4] = "nw_protocol_shoes_send_request_inner";
    v38 = _os_log_send_and_compose_impl();
    buf[0] = 16;
    v60[0] = 0;
    if (__nwlog_fault(v38, buf, v60))
    {
      if (buf[0] == 17)
      {
        v39 = __nwlog_obj();
        v40 = buf[0];
        if (os_log_type_enabled(v39, buf[0]))
        {
          *v57 = 136446210;
          *&v57[4] = "nw_protocol_shoes_send_request_inner";
          v41 = "%{public}s called with null shoes";
LABEL_79:
          _os_log_impl(&dword_181A37000, v39, v40, v41, v57, 0xCu);
        }
      }

      else if (v60[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        v40 = buf[0];
        v47 = os_log_type_enabled(v39, buf[0]);
        if (backtrace_string)
        {
          if (v47)
          {
            *v57 = 136446466;
            *&v57[4] = "nw_protocol_shoes_send_request_inner";
            *&v57[12] = 2082;
            *&v57[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null shoes, dumping backtrace:%{public}s", v57, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_80;
        }

        if (v47)
        {
          *v57 = 136446210;
          *&v57[4] = "nw_protocol_shoes_send_request_inner";
          v41 = "%{public}s called with null shoes, no backtrace";
          goto LABEL_79;
        }
      }

      else
      {
        v39 = __nwlog_obj();
        v40 = buf[0];
        if (os_log_type_enabled(v39, buf[0]))
        {
          *v57 = 136446210;
          *&v57[4] = "nw_protocol_shoes_send_request_inner";
          v41 = "%{public}s called with null shoes, backtrace limit exceeded";
          goto LABEL_79;
        }
      }
    }

LABEL_80:
    if (v38)
    {
      free(v38);
    }

    return 0;
  }

  result = nw_shoes_create_request(a1->handle);
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = bswap32(*result) >> 16;
  v6 = a1->handle;
  if (!v6)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_shoes_send";
    v42 = _os_log_send_and_compose_impl();
    v60[0] = 16;
    LOBYTE(v55) = 0;
    if (!__nwlog_fault(v42, v60, &v55))
    {
      goto LABEL_86;
    }

    if (v60[0] == 17)
    {
      v43 = __nwlog_obj();
      v44 = v60[0];
      if (!os_log_type_enabled(v43, v60[0]))
      {
        goto LABEL_86;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_shoes_send";
      v45 = "%{public}s called with null shoes";
    }

    else if (v55 == 1)
    {
      v48 = v4;
      v49 = __nw_create_backtrace_string();
      v43 = __nwlog_obj();
      v44 = v60[0];
      v50 = os_log_type_enabled(v43, v60[0]);
      if (v49)
      {
        if (v50)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_shoes_send";
          *&buf[12] = 2082;
          *&buf[14] = v49;
          _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v49);
        v4 = v48;
        goto LABEL_86;
      }

      v4 = v48;
      if (!v50)
      {
LABEL_86:
        if (v42)
        {
          free(v42);
        }

        goto LABEL_31;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_shoes_send";
      v45 = "%{public}s called with null shoes, no backtrace";
    }

    else
    {
      v43 = __nwlog_obj();
      v44 = v60[0];
      if (!os_log_type_enabled(v43, v60[0]))
      {
        goto LABEL_86;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_shoes_send";
      v45 = "%{public}s called with null shoes, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v43, v44, v45, buf, 0xCu);
    goto LABEL_86;
  }

  v7 = v5 + 2;
  v55 = 0;
  v56 = &v55;
  v53 = 0;
  v54 = &v53;
  v8 = (a1->output_handler->callbacks->get_output_frames)();
  v9 = v55;
  if (!v55 || !v8)
  {
    if (v8)
    {
      v21 = v8;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_shoes_send";
        *&buf[12] = 2082;
        *&buf[14] = v6 + 159;
        *&buf[22] = 1024;
        v67 = v21;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Output handler reported %u frames to write, but array is empty", buf, 0x1Cu);
      }
    }

LABEL_31:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v24 = v4[2];
      *v57 = 136446978;
      *&v57[4] = "nw_protocol_shoes_send_request_inner";
      *&v57[12] = 2082;
      *&v57[14] = handle + 159;
      *&v57[22] = 1024;
      LODWORD(v58) = v24;
      WORD2(v58) = 1024;
      *(&v58 + 6) = v5;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Failed to send shoes request (type %u inner length %u)", v57, 0x22u);
      return 0;
    }

    return result;
  }

  v51 = v6;
  v52 = v4;
  while (1)
  {
    v10 = *(v9 + 32);
    if (v10 || *(v9 + 40))
    {
      v11 = *(v9 + 112);
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(v9 + 112);
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    if ((*(v9 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v9, *(v9 + 88)))
    {
      LODWORD(v11) = 0;
LABEL_17:
      v13 = 0;
      goto LABEL_18;
    }

    LODWORD(v11) = *(v9 + 52);
    v12 = *(v9 + 56);
    if (v11)
    {
      LODWORD(v11) = v11 - (v12 + *(v9 + 60));
    }

    v13 = (*(v9 + 112) + v12);
LABEL_18:
    v14 = v11 >= v7 ? v7 : v11;
    memcpy(v13, v4, v14);
    if (!nw_frame_claim(v9, v15, v14, 0))
    {
      break;
    }

    nw_frame_collapse(v9);
    nw_frame_unclaim(v9, v16, v14, 0);
    v17 = *(v9 + 32);
    v18 = *(v9 + 40);
    v19 = (v17 + 40);
    if (!v17)
    {
      v19 = &v56;
    }

    *v19 = v18;
    *v18 = v17;
    v20 = v54;
    *(v9 + 32) = 0;
    *(v9 + 40) = v20;
    *v20 = v9;
    v54 = (v9 + 32);
    if (v10)
    {
      v4 += v14;
      v9 = v10;
      v7 -= v14;
      if (v7)
      {
        continue;
      }
    }

    goto LABEL_35;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    *&buf[4] = "nw_protocol_shoes_send";
    *&buf[12] = 2082;
    *&buf[14] = v51 + 159;
    *&buf[22] = 1024;
    v67 = v14;
    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Claiming frame with %u bytes failed", buf, 0x1Cu);
  }

LABEL_35:
  (a1->output_handler->callbacks->finalize_output_frames)();
  if (v55)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v67 = 0;
    *v57 = MEMORY[0x1E69E9820];
    *&v57[8] = 0x40000000;
    *&v57[16] = ___ZL22nw_protocol_shoes_sendP11nw_protocolPhj_block_invoke;
    *&v58 = &unk_1E6A2B438;
    *(&v58 + 1) = buf;
    do
    {
      v26 = v55;
      if (!v55)
      {
        break;
      }

      v27 = *(v55 + 32);
      v28 = *(v55 + 40);
      v29 = (v27 + 40);
      if (!v27)
      {
        v29 = &v56;
      }

      *v29 = v28;
      *v28 = v27;
      *(v26 + 32) = 0;
      *(v26 + 40) = 0;
    }

    while (((*&v57[16])(v57) & 1) != 0);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v31 = *(*&buf[8] + 24);
      *v60 = 136446722;
      v61 = "nw_protocol_shoes_send";
      v62 = 2082;
      v63 = v51 + 159;
      v64 = 1024;
      v65 = v31;
      _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Failed to use %u frames, marking as failed", v60, 0x1Cu);
    }

    _Block_object_dispose(buf, 8);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v32 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    output_handler = a1->output_handler;
    if (!output_handler || (get_output_local_endpoint = output_handler->callbacks->get_output_local_endpoint) == 0 || (default_input_handler = get_output_local_endpoint()) == 0)
    {
      default_input_handler = a1->default_input_handler;
      if (default_input_handler)
      {
        get_local_endpoint = default_input_handler->callbacks->get_local_endpoint;
        if (get_local_endpoint)
        {
          default_input_handler = get_local_endpoint();
        }

        else
        {
          default_input_handler = 0;
        }
      }
    }

    v37 = v52[2];
    *v57 = 136447234;
    *&v57[4] = "nw_protocol_shoes_send_request_inner";
    *&v57[12] = 2082;
    *&v57[14] = handle + 159;
    *&v57[22] = 2114;
    *&v58 = default_input_handler;
    WORD4(v58) = 1024;
    *(&v58 + 10) = v37;
    HIWORD(v58) = 1024;
    v59 = v5;
    _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Sent shoes request: local address %{public}@ type %u inner length %u no TFO", v57, 0x2Cu);
  }

  handle[158] = 5;
  free(v52);
  return 1;
}

uint64_t nw_shoes_create_request(uint64_t a1)
{
  v84 = *MEMORY[0x1E69E9840];
  v2 = nw_endpoint_copy_proxy_original_endpoint(*(a1 + 104));
  if (!v2)
  {
    v2 = *(a1 + 104);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = &qword_1ED411000;
  v4 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "nw_shoes_create_request";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 159;
    *&buf[22] = 2112;
    v80 = v2;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Sending request for endpoint %@", buf, 0x20u);
  }

  type = nw_endpoint_get_type(v2);
  v75 = 0;
  v76 = &v75;
  v77 = 0x2000000000;
  v78 = 0;
  v74 = 0;
  v73 = 0;
  v6 = (*(*(*(a1 + 48) + 24) + 112))();
  if (!v6)
  {
    v10 = 0;
    v11 = *(a1 + 120);
    v12 = 1;
    v13 = 261;
    if (!v11)
    {
      string_ptr = 0;
      traffic_class = 0;
      alternate_port = 0;
      v66 = 0;
      v67 = 1;
      v70 = 0;
      goto LABEL_45;
    }

    v70 = 0;
    traffic_class = 0;
    alternate_port = 0;
    v66 = 0;
    goto LABEL_42;
  }

  v7 = v6;
  traffic_class = _nw_parameters_get_traffic_class(v6);
  if (traffic_class)
  {
    v9 = 268;
  }

  else
  {
    v9 = 261;
  }

  if (_nw_parameters_get_no_proxy_path_selection(v7))
  {
    v10 = 0;
    goto LABEL_24;
  }

  if (_nw_parameters_get_prohibit_expensive(v7))
  {
    *(v76 + 24) |= 0x80u;
  }

  if (_nw_parameters_get_prohibit_constrained(v7))
  {
    *(v76 + 24) |= 0x10u;
  }

  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 0x40000000;
  v72[2] = ___ZL23nw_shoes_create_requestP18_nw_protocol_shoes_block_invoke;
  v72[3] = &unk_1E6A2B3F0;
  v72[4] = &v75;
  _nw_parameters_iterate_prohibited_interface_types(v7, v72);
  v14 = *(a1 + 152);
  v10 = __rev16(v14);
  v73 = v10;
  if (v14)
  {
    *(v76 + 24) |= 6u;
  }

  if (!_nw_parameters_get_next_hop_required_interface_type(v7))
  {
    goto LABEL_24;
  }

  next_hop_required_interface_type = nw_parameters_get_next_hop_required_interface_type(v7);
  switch(next_hop_required_interface_type)
  {
    case 3:
      v16 = 4;
      v17 = 4;
      goto LABEL_30;
    case 2:
      v16 = 2;
      v17 = 2;
      goto LABEL_30;
    case 1:
      v16 = 1;
      v17 = 1;
LABEL_30:
      v70 = v17;
      v74 = v16;
      if (*(v76 + 24))
      {
        v19 = v9 + 4;
      }

      else
      {
        v19 = v9;
      }

      v13 = v19 + 7;
      goto LABEL_34;
  }

LABEL_24:
  v70 = 0;
  if (*(v76 + 24))
  {
    v13 = v9 + 4;
  }

  else
  {
    v13 = v9;
  }

LABEL_34:
  if (_nw_parameters_get_multipath(v7))
  {
    if (nw_shoes_is_multipath_allowed(void)::onceToken != -1)
    {
      dispatch_once(&nw_shoes_is_multipath_allowed(void)::onceToken, &__block_literal_global_50);
    }

    if (nw_shoes_is_multipath_allowed(void)::isAllowed == 1)
    {
      v12 = 0;
      v13 += 6;
      alternate_port = nw_endpoint_get_alternate_port(v2);
      v66 = 2;
      v11 = *(a1 + 120);
      if (!v11)
      {
        goto LABEL_39;
      }

LABEL_42:
      string_ptr = xpc_string_get_string_ptr(v11);
      if (!string_ptr)
      {
        goto LABEL_111;
      }

LABEL_43:
      v67 = 0;
      v13 += strlen(string_ptr) + 3;
      if (!v10)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }
  }

  alternate_port = 0;
  v66 = 0;
  v12 = 1;
  v11 = *(a1 + 120);
  if (v11)
  {
    goto LABEL_42;
  }

LABEL_39:
  effective_bundle_id = _nw_parameters_get_effective_bundle_id(v7);
  if (effective_bundle_id)
  {
    string_ptr = effective_bundle_id;
    goto LABEL_43;
  }

  if (nw_utilities_get_self_bundle_id::onceToken != -1)
  {
    dispatch_once(&nw_utilities_get_self_bundle_id::onceToken, &__block_literal_global_9_47228);
  }

  string_ptr = nw_utilities_get_self_bundle_id::bundle_identifier_string;
  if (nw_utilities_get_self_bundle_id::bundle_identifier_string)
  {
    goto LABEL_43;
  }

LABEL_111:
  v67 = 1;
  if (v10)
  {
LABEL_44:
    LOWORD(v13) = v13 + 5;
  }

LABEL_45:
  if (!v13)
  {
    v60 = __nwlog_obj();
    os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "nw_shoes_create_request";
    v61 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v61);
    if (result)
    {
      goto LABEL_152;
    }

    free(v61);
  }

  v68 = v12;
  v69 = traffic_class;
  __s = string_ptr;
  v21 = v13;
  v22 = malloc_type_calloc(1uLL, v13, 0xC0A7F11EuLL);
  if (v22)
  {
    if (type != nw_endpoint_type_address)
    {
      goto LABEL_48;
    }

    goto LABEL_59;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_shoes_create_request";
  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v80 = v13;
  v31 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v31);
  if (!result)
  {
    free(v31);
    if (type != nw_endpoint_type_address)
    {
LABEL_48:
      if (type != nw_endpoint_type_bonjour_service)
      {
        if (type != nw_endpoint_type_host)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v44 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            *&buf[4] = "nw_shoes_create_request";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 159;
            *&buf[22] = 1024;
            LODWORD(v80) = type;
            _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Invalid endpoint type %u", buf, 0x1Cu);
          }

          if (!v22)
          {
LABEL_105:
            if (!v2)
            {
LABEL_107:
              _Block_object_dispose(&v75, 8);
              return v22;
            }

LABEL_106:
            os_release(v2);
            goto LABEL_107;
          }

          goto LABEL_104;
        }

        if ((*(a1 + 243) & 2) != 0)
        {
          v23 = 4;
        }

        else
        {
          v23 = 1;
        }

        *(v22 + 2) = v23;
        hostname = nw_endpoint_get_hostname(v2);
        if (!hostname)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v50 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_shoes_create_request";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 159;
            v29 = "%{public}s %{public}s hostname is NULL";
            v30 = v50;
            v49 = 22;
            goto LABEL_103;
          }

          goto LABEL_104;
        }

        v25 = hostname;
        v26 = strlen(hostname);
        v27 = v26;
        if (v26 >= 0x100)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v28 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136447234;
            *&buf[4] = "nw_shoes_create_request";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 159;
            *&buf[22] = 2082;
            v80 = v25;
            v81 = 2048;
            *v82 = v27;
            *&v82[8] = 2048;
            v83 = 255;
            v29 = "%{public}s %{public}s Hostname too long: %{public}s %zu > %zu";
            v30 = v28;
LABEL_89:
            v49 = 52;
LABEL_103:
            _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, v29, buf, v49);
            goto LABEL_104;
          }

          goto LABEL_104;
        }

        *(v22 + 5) = v26;
        memcpy(v22 + 3, v25, v26);
        v35 = v27 + 4;
        v36 = v69;
        if (!v69)
        {
          goto LABEL_120;
        }

        goto LABEL_116;
      }

      v62 = v10;
      if ((*(a1 + 243) & 2) != 0)
      {
        v37 = 8;
      }

      else
      {
        v37 = 7;
      }

      *(v22 + 2) = v37;
      bonjour_service_name = nw_endpoint_get_bonjour_service_name(v2);
      bonjour_service_type = nw_endpoint_get_bonjour_service_type(v2);
      bonjour_service_domain = nw_endpoint_get_bonjour_service_domain(v2);
      if (bonjour_service_name)
      {
        v41 = strlen(bonjour_service_name) + 1;
        v63 = v2;
        if (bonjour_service_type)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v41 = 1;
        v63 = v2;
        if (bonjour_service_type)
        {
LABEL_71:
          v42 = strlen(bonjour_service_type) + 1;
          if (bonjour_service_domain)
          {
LABEL_72:
            v43 = strlen(bonjour_service_domain) + 1;
            goto LABEL_86;
          }

LABEL_85:
          v43 = 1;
LABEL_86:
          v46 = v42 + v41 + v43;
          if (v46 >= 0x100)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v47 = gLogObj;
            v2 = v63;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              bonjour_fullname = nw_endpoint_get_bonjour_fullname(v63);
              *buf = 136447234;
              *&buf[4] = "nw_shoes_create_request";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 159;
              *&buf[22] = 2082;
              v80 = bonjour_fullname;
              v81 = 2048;
              *v82 = v46;
              *&v82[8] = 2048;
              v83 = 255;
              v29 = "%{public}s %{public}s Bonjour service too long: %{public}s %zu > %zu";
              v30 = v47;
              goto LABEL_89;
            }

LABEL_104:
            free(v22);
            v22 = 0;
            goto LABEL_105;
          }

          *(v22 + 5) = v46;
          if (bonjour_service_name && v41)
          {
            memcpy(v22 + 3, bonjour_service_name, v41);
          }

          if (bonjour_service_type && v42)
          {
            memcpy(v22 + v41 + 6, bonjour_service_type, v42);
          }

          if (bonjour_service_domain && v43)
          {
            memcpy(v22 + v41 + v42 + 6, bonjour_service_domain, v43);
          }

          v35 = v46 + 4;
          v2 = v63;
          type = nw_endpoint_type_bonjour_service;
          v3 = &qword_1ED411000;
          v10 = v62;
          v36 = v69;
          if (!v69)
          {
LABEL_120:
            if (*(v76 + 24) && v21 > (v35 + 2))
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v52 = v3[275];
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                v53 = *(v76 + 24);
                *buf = 136446978;
                *&buf[4] = "nw_shoes_create_request";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 159;
                *&buf[22] = 2082;
                v80 = "flags";
                v81 = 1024;
                *v82 = v53;
                _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s sending tlv: %{public}s(%#x)", buf, 0x26u);
              }

              v35 += nw_shoes_add_tlv(v22 + (v35 + 2), (v21 - (v35 + 2)), 2u, 1uLL, v76 + 3);
            }

            if (v70 && v21 > (v35 + 2))
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v54 = v3[275];
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446978;
                *&buf[4] = "nw_shoes_create_request";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 159;
                *&buf[22] = 2082;
                v80 = "extended_flags";
                v81 = 1024;
                *v82 = v70;
                _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s sending tlv: %{public}s(%#x)", buf, 0x26u);
              }

              v35 += nw_shoes_add_tlv(v22 + (v35 + 2), (v21 - (v35 + 2)), 9u, 4uLL, &v74);
            }

            if ((v67 & 1) == 0 && v21 > (v35 + 2))
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v55 = v3[275];
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446978;
                *&buf[4] = "nw_shoes_create_request";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 159;
                *&buf[22] = 2082;
                v80 = "bundle_id";
                v81 = 2080;
                *v82 = __s;
                _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s sending tlv: %{public}s(%s)", buf, 0x2Au);
              }

              v56 = strlen(__s);
              v35 += nw_shoes_add_tlv(v22 + (v35 + 2), (v21 - (v35 + 2)), 3u, v56, __s);
            }

            if ((v68 & 1) == 0)
            {
              LOBYTE(__src) = v66;
              *(&__src + 1) = alternate_port;
              if (v21 > (v35 + 2))
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v57 = v3[275];
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136447234;
                  *&buf[4] = "nw_shoes_create_request";
                  *&buf[12] = 2082;
                  *&buf[14] = a1 + 159;
                  *&buf[22] = 2082;
                  v80 = "multipath";
                  v81 = 1024;
                  *v82 = v66;
                  *&v82[4] = 1024;
                  *&v82[6] = __rev16(alternate_port);
                  _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s sending tlv: %{public}s(%u/%u)", buf, 0x2Cu);
                }

                v35 += nw_shoes_add_tlv(v22 + (v35 + 2), (v21 - (v35 + 2)), 5u, 3uLL, &__src);
              }
            }

            if (v10 && v21 > (v35 + 2))
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v58 = v3[275];
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446978;
                *&buf[4] = "nw_shoes_create_request";
                *&buf[12] = 2082;
                *&buf[14] = a1 + 159;
                *&buf[22] = 2082;
                v80 = "udp_associate";
                v81 = 1024;
                *v82 = bswap32(v10) >> 16;
                _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s sending tlv: %{public}s(%u)", buf, 0x26u);
              }

              v35 += nw_shoes_add_tlv(v22 + (v35 + 2), (v21 - (v35 + 2)), 6u, 2uLL, &v73);
            }

            *v22 = bswap32(v35) >> 16;
            if (type == nw_endpoint_type_bonjour_service)
            {
              v59 = 0;
            }

            else
            {
              v59 = __rev16(nw_endpoint_get_port(v2));
            }

            *(v22 + 3) = v59;
            if (!v2)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          }

LABEL_116:
          __src = bswap32(v36);
          if (v21 > (v35 + 2))
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v51 = v3[275];
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446978;
              *&buf[4] = "nw_shoes_create_request";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 159;
              *&buf[22] = 2082;
              v80 = "traffic_class";
              v81 = 1024;
              *v82 = v69;
              _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s sending tlv: %{public}s(%u)", buf, 0x26u);
            }

            v35 += nw_shoes_add_tlv(v22 + (v35 + 2), (v21 - (v35 + 2)), 1u, 4uLL, &__src);
          }

          goto LABEL_120;
        }
      }

      v42 = 1;
      if (bonjour_service_domain)
      {
        goto LABEL_72;
      }

      goto LABEL_85;
    }

LABEL_59:
    memset(buf, 0, sizeof(buf));
    LODWORD(v80) = 0;
    v33 = nw_endpoint_fillout_v4v6_address(v2, buf);
    if (v33 && buf[1] == 30)
    {
      if ((*(a1 + 243) & 2) != 0)
      {
        v34 = 5;
      }

      else
      {
        v34 = 2;
      }

      *(v22 + 2) = v34;
      *(v22 + 5) = *&buf[8];
      v35 = 19;
      v36 = v69;
      if (!v69)
      {
        goto LABEL_120;
      }
    }

    else if (v33)
    {
      if ((*(a1 + 243) & 2) != 0)
      {
        v45 = 6;
      }

      else
      {
        v45 = 3;
      }

      *(v22 + 2) = v45;
      *(v22 + 5) = *&buf[4];
      v35 = 7;
      v36 = v69;
      if (!v69)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v35 = 0;
      v36 = v69;
      if (!v69)
      {
        goto LABEL_120;
      }
    }

    goto LABEL_116;
  }

LABEL_152:
  __break(1u);
  return result;
}

uint64_t ___ZL22nw_protocol_shoes_sendP11nw_protocolPhj_block_invoke(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  nw_frame_finalize(a2);
  return 1;
}

uint64_t ___ZL23nw_shoes_create_requestP18_nw_protocol_shoes_block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v2 = 32;
    goto LABEL_5;
  }

  if (a2 == 2)
  {
    v2 = 64;
LABEL_5:
    *(*(*(a1 + 32) + 8) + 24) |= v2;
  }

  return 1;
}

void ___ZL29nw_shoes_is_multipath_allowedv_block_invoke()
{
  v0 = nw_utilities_copy_local_entitlement_value("com.apple.developer.networking.multipath_extended");
  if (v0)
  {
    v1 = v0;
    if (object_getClass(v0) == MEMORY[0x1E69E9E58] && xpc_BOOL_get_value(v1))
    {
      nw_shoes_is_multipath_allowed(void)::isAllowed = 1;
    }

    xpc_release(v1);
  }
}

uint64_t nw_protocol_shoes_connect(nw_protocol *a1, nw_protocol *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_shoes_connect";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v17 = "nw_protocol_shoes_connect";
      v9 = "%{public}s called with null protocol";
    }

    else
    {
      if (v14 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v17 = "nw_protocol_shoes_connect";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_37;
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
          v17 = "nw_protocol_shoes_connect";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v6)
        {
          return 0;
        }

        goto LABEL_39;
      }

      if (!v11)
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v17 = "nw_protocol_shoes_connect";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

LABEL_37:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_38;
  }

  if (!a1->handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_shoes_connect";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v17 = "nw_protocol_shoes_connect";
      v9 = "%{public}s called with null shoes";
      goto LABEL_37;
    }

    if (v14 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v17 = "nw_protocol_shoes_connect";
      v9 = "%{public}s called with null shoes, backtrace limit exceeded";
      goto LABEL_37;
    }

    v12 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v13 = os_log_type_enabled(v7, type);
    if (!v12)
    {
      if (!v13)
      {
        goto LABEL_38;
      }

      *buf = 136446210;
      v17 = "nw_protocol_shoes_connect";
      v9 = "%{public}s called with null shoes, no backtrace";
      goto LABEL_37;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_protocol_shoes_connect";
      v18 = 2082;
      v19 = v12;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v12);
LABEL_38:
    if (!v6)
    {
      return 0;
    }

LABEL_39:
    free(v6);
    return 0;
  }

  output_handler = a1->output_handler;
  if (!output_handler)
  {
    return 1;
  }

  callbacks = output_handler->callbacks;
  if (!callbacks)
  {
    return 0;
  }

  connect = callbacks->connect;
  if (!connect)
  {
    return 0;
  }

  return connect();
}

BOOL nw_protocol_shoes_waiting_for_output(nw_protocol *a1, nw_protocol *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[158] == 2;
    }

    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_shoes_waiting_for_output";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_shoes_waiting_for_output";
        v7 = "%{public}s called with null shoes";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_shoes_waiting_for_output";
        v7 = "%{public}s called with null shoes, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v11 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v15 = "nw_protocol_shoes_waiting_for_output";
        v7 = "%{public}s called with null shoes, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v11)
    {
      *buf = 136446466;
      v15 = "nw_protocol_shoes_waiting_for_output";
      v16 = 2082;
      v17 = backtrace_string;
      v10 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_shoes_waiting_for_output";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v4, &type, &v12))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v12 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_shoes_waiting_for_output";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v9 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v9)
      {
        *buf = 136446210;
        v15 = "nw_protocol_shoes_waiting_for_output";
        v7 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v9)
    {
      *buf = 136446466;
      v15 = "nw_protocol_shoes_waiting_for_output";
      v16 = 2082;
      v17 = backtrace_string;
      v10 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v5, v6, v10, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v5 = __nwlog_obj();
  v6 = type;
  if (os_log_type_enabled(v5, type))
  {
    *buf = 136446210;
    v15 = "nw_protocol_shoes_waiting_for_output";
    v7 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
  }

LABEL_32:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

uint64_t nw_protocol_shoes_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_shoes_finalize_output_frames";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v24 = "nw_protocol_shoes_finalize_output_frames";
      v16 = "%{public}s called with null protocol";
      goto LABEL_53;
    }

    if (v21 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v24 = "nw_protocol_shoes_finalize_output_frames";
      v16 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v18 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (!v18)
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v24 = "nw_protocol_shoes_finalize_output_frames";
      v16 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_53;
    }

    if (v18)
    {
      *buf = 136446466;
      v24 = "nw_protocol_shoes_finalize_output_frames";
      v25 = 2082;
      v26 = backtrace_string;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_54:
    if (!v13)
    {
      return 0;
    }

LABEL_55:
    free(v13);
    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_shoes_finalize_output_frames";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v24 = "nw_protocol_shoes_finalize_output_frames";
      v16 = "%{public}s called with null shoes";
      goto LABEL_53;
    }

    if (v21 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v24 = "nw_protocol_shoes_finalize_output_frames";
      v16 = "%{public}s called with null shoes, backtrace limit exceeded";
      goto LABEL_53;
    }

    v19 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v20 = os_log_type_enabled(v14, type);
    if (v19)
    {
      if (v20)
      {
        *buf = 136446466;
        v24 = "nw_protocol_shoes_finalize_output_frames";
        v25 = 2082;
        v26 = v19;
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v19);
      if (!v13)
      {
        return 0;
      }

      goto LABEL_55;
    }

    if (v20)
    {
      *buf = 136446210;
      v24 = "nw_protocol_shoes_finalize_output_frames";
      v16 = "%{public}s called with null shoes, no backtrace";
LABEL_53:
      _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  v3 = *(handle + 158);
  if (v3 == 6)
  {
    goto LABEL_8;
  }

  if (v3 != 4)
  {
    return 0;
  }

  tqh_first = a2->tqh_first;
  v5 = handle[37];
  if (a2->tqh_first)
  {
    while (v5)
    {
      v9 = tqh_first;
      tqh_first = *(tqh_first + 4);
      if (!tqh_first && !*(v9 + 40))
      {
        tqh_first = 0;
      }

      v10 = *(v9 + 52);
      if (v10)
      {
        v11 = v10 - (*(v9 + 56) + *(v9 + 60));
        if (v11 < v5)
        {
          v8 = 0;
        }

        else
        {
          v8 = v5;
        }

        if (v11 < v5 && v10 != 0)
        {
          v8 = v10 - (*(v9 + 56) + *(v9 + 60));
        }
      }

      else
      {
        v8 = 0;
      }

      nw_frame_unclaim(v9, a2, v8, 0);
      v5 = handle[37] - v8;
      handle[37] = v5;
      if (!tqh_first)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_7;
  }

LABEL_6:
  if (!v5)
  {
LABEL_7:
    *(handle + 158) = 5;
  }

LABEL_8:
  v6 = *(*(*(handle + 4) + 24) + 96);

  return v6();
}

uint64_t nw_protocol_shoes_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_protocol_shoes_get_output_frames";
    v38 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v38, &type, &v52))
    {
      goto LABEL_89;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v52 != 1)
      {
        v39 = __nwlog_obj();
        v40 = type;
        if (!os_log_type_enabled(v39, type))
        {
          goto LABEL_89;
        }

        *buf = 136446210;
        v55 = "nw_protocol_shoes_get_output_frames";
        v41 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_88;
      }

      backtrace_string = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type;
      v43 = os_log_type_enabled(v39, type);
      if (!backtrace_string)
      {
        if (!v43)
        {
          goto LABEL_89;
        }

        *buf = 136446210;
        v55 = "nw_protocol_shoes_get_output_frames";
        v41 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_88;
      }

      if (v43)
      {
        *buf = 136446466;
        v55 = "nw_protocol_shoes_get_output_frames";
        v56 = 2082;
        v57 = backtrace_string;
        v44 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_69:
        _os_log_impl(&dword_181A37000, v39, v40, v44, buf, 0x16u);
      }

LABEL_70:
      free(backtrace_string);
      goto LABEL_89;
    }

    v39 = __nwlog_obj();
    v40 = type;
    if (!os_log_type_enabled(v39, type))
    {
      goto LABEL_89;
    }

    *buf = 136446210;
    v55 = "nw_protocol_shoes_get_output_frames";
    v41 = "%{public}s called with null protocol";
LABEL_88:
    _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0xCu);
LABEL_89:
    if (v38)
    {
      free(v38);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_protocol_shoes_get_output_frames";
    v38 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v38, &type, &v52))
    {
      goto LABEL_89;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (!os_log_type_enabled(v39, type))
      {
        goto LABEL_89;
      }

      *buf = 136446210;
      v55 = "nw_protocol_shoes_get_output_frames";
      v41 = "%{public}s called with null shoes";
      goto LABEL_88;
    }

    if (v52 != 1)
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (!os_log_type_enabled(v39, type))
      {
        goto LABEL_89;
      }

      *buf = 136446210;
      v55 = "nw_protocol_shoes_get_output_frames";
      v41 = "%{public}s called with null shoes, backtrace limit exceeded";
      goto LABEL_88;
    }

    backtrace_string = __nw_create_backtrace_string();
    v39 = __nwlog_obj();
    v40 = type;
    v45 = os_log_type_enabled(v39, type);
    if (backtrace_string)
    {
      if (v45)
      {
        *buf = 136446466;
        v55 = "nw_protocol_shoes_get_output_frames";
        v56 = 2082;
        v57 = backtrace_string;
        v44 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
        goto LABEL_69;
      }

      goto LABEL_70;
    }

    if (!v45)
    {
      goto LABEL_89;
    }

    *buf = 136446210;
    v55 = "nw_protocol_shoes_get_output_frames";
    v41 = "%{public}s called with null shoes, no backtrace";
    goto LABEL_88;
  }

  v8 = *(handle + 158);
  if (v8 == 6)
  {
    v24 = *(*(handle[4] + 24) + 88);

    return v24();
  }

  if (v8 != 2)
  {
    return 0;
  }

  request = nw_shoes_create_request(a1->handle);
  if (!request)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v55 = "nw_shoes_internal_disconnect";
      v56 = 2082;
      v57 = handle + 159;
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s ", buf, 0x16u);
    }

    *(handle + 158) = 7;
    (*(handle[3] + 48))(handle, 0);
    return 0;
  }

  v11 = request;
  v12 = bswap32(*request) >> 16;
  v13 = a1->handle;
  if (!v13)
  {
    __nwlog_obj();
    *buf = 136446210;
    v55 = "nw_protocol_add_buffer_to_output_frames";
    v46 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v46, &type, &v52))
    {
      goto LABEL_97;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v48 = type;
      if (!os_log_type_enabled(v47, type))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v55 = "nw_protocol_add_buffer_to_output_frames";
      v49 = "%{public}s called with null shoes";
    }

    else if (v52 == 1)
    {
      v50 = __nw_create_backtrace_string();
      v47 = __nwlog_obj();
      v48 = type;
      v51 = os_log_type_enabled(v47, type);
      if (v50)
      {
        if (v51)
        {
          *buf = 136446466;
          v55 = "nw_protocol_add_buffer_to_output_frames";
          v56 = 2082;
          v57 = v50;
          _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v50);
        goto LABEL_97;
      }

      if (!v51)
      {
LABEL_97:
        if (v46)
        {
          free(v46);
        }

        goto LABEL_38;
      }

      *buf = 136446210;
      v55 = "nw_protocol_add_buffer_to_output_frames";
      v49 = "%{public}s called with null shoes, no backtrace";
    }

    else
    {
      v47 = __nwlog_obj();
      v48 = type;
      if (!os_log_type_enabled(v47, type))
      {
        goto LABEL_97;
      }

      *buf = 136446210;
      v55 = "nw_protocol_add_buffer_to_output_frames";
      v49 = "%{public}s called with null shoes, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0xCu);
    goto LABEL_97;
  }

  v14 = v12 + 2;
  v15 = (a1->output_handler->callbacks->get_output_frames)();
  tqh_first = a6->tqh_first;
  if (!tqh_first || !v15)
  {
    if (v15)
    {
      v27 = v15;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v55 = "nw_protocol_add_buffer_to_output_frames";
        v56 = 2082;
        v57 = v13 + 159;
        v58 = 1024;
        *v59 = v27;
        _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Output handler reported %u frames to write, but array is empty", buf, 0x1Cu);
      }
    }

LABEL_38:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v29 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v30 = v11[2];
      *buf = 136446978;
      v55 = "nw_protocol_shoes_add_request_to_output_frames";
      v56 = 2082;
      v57 = handle + 159;
      v58 = 1024;
      *v59 = v30;
      *&v59[4] = 1024;
      *&v59[6] = v12;
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Failed to send shoes request (type %u inner length %u)", buf, 0x22u);
    }

    free(v11);
    return 0;
  }

  v17 = v11;
  while (1)
  {
    v18 = *(tqh_first + 4);
    if (v18 || *(tqh_first + 5))
    {
      v19 = *(tqh_first + 14);
      if (!v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = 0;
      v19 = *(tqh_first + 14);
      if (!v19)
      {
        goto LABEL_20;
      }
    }

    if ((*(tqh_first + 102) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(tqh_first, *(tqh_first + 11)))
    {
      LODWORD(v19) = 0;
LABEL_20:
      v21 = 0;
      goto LABEL_21;
    }

    LODWORD(v19) = *(tqh_first + 13);
    v20 = *(tqh_first + 14);
    if (v19)
    {
      LODWORD(v19) = v19 - (v20 + *(tqh_first + 15));
    }

    v21 = (*(tqh_first + 14) + v20);
LABEL_21:
    v22 = v19 >= v14 ? v14 : v19;
    memcpy(v21, v17, v22);
    if (!nw_frame_claim(tqh_first, v23, v22, 0))
    {
      break;
    }

    v13[37] += v22;
    if (v18)
    {
      v17 += v22;
      tqh_first = v18;
      v14 -= v22;
      if (v14)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v31 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v55 = "nw_protocol_add_buffer_to_output_frames";
    v56 = 2082;
    v57 = v13 + 159;
    v58 = 1024;
    *v59 = v22;
    _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Claiming frame with %u bytes failed", buf, 0x1Cu);
  }

LABEL_43:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v32 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    output_handler = a1->output_handler;
    if (!output_handler || (get_output_local_endpoint = output_handler->callbacks->get_output_local_endpoint) == 0 || (default_input_handler = get_output_local_endpoint()) == 0)
    {
      default_input_handler = a1->default_input_handler;
      if (default_input_handler)
      {
        get_local_endpoint = default_input_handler->callbacks->get_local_endpoint;
        if (get_local_endpoint)
        {
          default_input_handler = get_local_endpoint();
        }

        else
        {
          default_input_handler = 0;
        }
      }
    }

    v37 = v11[2];
    *buf = 136447234;
    v55 = "nw_protocol_shoes_add_request_to_output_frames";
    v56 = 2082;
    v57 = handle + 159;
    v58 = 2114;
    *v59 = default_input_handler;
    *&v59[8] = 1024;
    v60 = v37;
    v61 = 1024;
    v62 = v12;
    _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Sent shoes request: local address %{public}@ type %u inner length %u with TFO", buf, 0x2Cu);
  }

  free(v11);
  *(handle + 158) = 4;
  return 1;
}

uint64_t nw_protocol_shoes_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, uint64_t a5, nw_frame_array_s *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_shoes_get_input_frames";
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v16, &type, &v24))
    {
      goto LABEL_42;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v24 != 1)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_42;
        }

        *buf = 136446210;
        v27 = "nw_protocol_shoes_get_input_frames";
        v19 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_41;
      }

      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v21 = os_log_type_enabled(v17, type);
      if (!backtrace_string)
      {
        if (!v21)
        {
          goto LABEL_42;
        }

        *buf = 136446210;
        v27 = "nw_protocol_shoes_get_input_frames";
        v19 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_41;
      }

      if (v21)
      {
        *buf = 136446466;
        v27 = "nw_protocol_shoes_get_input_frames";
        v28 = 2082;
        v29 = backtrace_string;
        v22 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_31:
        _os_log_impl(&dword_181A37000, v17, v18, v22, buf, 0x16u);
      }

LABEL_32:
      free(backtrace_string);
      goto LABEL_42;
    }

    v17 = __nwlog_obj();
    v18 = type;
    if (!os_log_type_enabled(v17, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v27 = "nw_protocol_shoes_get_input_frames";
    v19 = "%{public}s called with null protocol";
LABEL_41:
    _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
LABEL_42:
    if (v16)
    {
      free(v16);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_shoes_get_input_frames";
    v16 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v16, &type, &v24))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v27 = "nw_protocol_shoes_get_input_frames";
      v19 = "%{public}s called with null shoes";
      goto LABEL_41;
    }

    if (v24 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v27 = "nw_protocol_shoes_get_input_frames";
      v19 = "%{public}s called with null shoes, backtrace limit exceeded";
      goto LABEL_41;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type;
    v23 = os_log_type_enabled(v17, type);
    if (backtrace_string)
    {
      if (v23)
      {
        *buf = 136446466;
        v27 = "nw_protocol_shoes_get_input_frames";
        v28 = 2082;
        v29 = backtrace_string;
        v22 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (!v23)
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v27 = "nw_protocol_shoes_get_input_frames";
    v19 = "%{public}s called with null shoes, no backtrace";
    goto LABEL_41;
  }

  if (handle[158] != 6)
  {
    return 0;
  }

  v7 = *(handle + 16);
  if (v7)
  {
    if (a5)
    {
      v8 = 1;
      while (1)
      {
        v9 = (v7 + 32);
        v10 = *(v7 + 32);
        v11 = *(v7 + 40);
        v12 = (v10 + 40);
        if (!v10)
        {
          v12 = handle + 136;
        }

        *v12 = v11;
        *v11 = v10;
        *(v7 + 40) = 0;
        *v9 = 0;
        tqh_last = a6->tqh_last;
        *(v7 + 40) = tqh_last;
        *tqh_last = v7;
        a6->tqh_last = v9;
        if (a5 == v8)
        {
          break;
        }

        v7 = *(handle + 16);
        ++v8;
        if (!v7)
        {
          return (v8 - 1);
        }
      }
    }

    return a5;
  }

  v14 = *(*(*(handle + 4) + 24) + 80);

  return v14();
}

void nw_protocol_shoes_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v90 = "nw_protocol_shoes_input_available";
    v74 = _os_log_send_and_compose_impl();
    v85[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v74, v85, &type))
    {
      goto LABEL_167;
    }

    if (v85[0] == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = v85[0];
      if (!os_log_type_enabled(v75, v85[0]))
      {
        goto LABEL_167;
      }

      *buf = 136446210;
      v90 = "nw_protocol_shoes_input_available";
      v77 = "%{public}s called with null protocol";
      goto LABEL_166;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v75 = __nwlog_obj();
      v76 = v85[0];
      if (!os_log_type_enabled(v75, v85[0]))
      {
        goto LABEL_167;
      }

      *buf = 136446210;
      v90 = "nw_protocol_shoes_input_available";
      v77 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_166;
    }

    backtrace_string = __nw_create_backtrace_string();
    v75 = __nwlog_obj();
    v76 = v85[0];
    v79 = os_log_type_enabled(v75, v85[0]);
    if (!backtrace_string)
    {
      if (!v79)
      {
        goto LABEL_167;
      }

      *buf = 136446210;
      v90 = "nw_protocol_shoes_input_available";
      v77 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_166;
    }

    if (v79)
    {
      *buf = 136446466;
      v90 = "nw_protocol_shoes_input_available";
      v91 = 2082;
      v92 = backtrace_string;
      _os_log_impl(&dword_181A37000, v75, v76, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_167:
    if (!v74)
    {
      return;
    }

    goto LABEL_168;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v90 = "nw_protocol_shoes_input_available";
    v74 = _os_log_send_and_compose_impl();
    v85[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v74, v85, &type))
    {
      goto LABEL_167;
    }

    if (v85[0] == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = v85[0];
      if (!os_log_type_enabled(v75, v85[0]))
      {
        goto LABEL_167;
      }

      *buf = 136446210;
      v90 = "nw_protocol_shoes_input_available";
      v77 = "%{public}s called with null shoes";
      goto LABEL_166;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v75 = __nwlog_obj();
      v76 = v85[0];
      if (!os_log_type_enabled(v75, v85[0]))
      {
        goto LABEL_167;
      }

      *buf = 136446210;
      v90 = "nw_protocol_shoes_input_available";
      v77 = "%{public}s called with null shoes, backtrace limit exceeded";
      goto LABEL_166;
    }

    v80 = __nw_create_backtrace_string();
    v75 = __nwlog_obj();
    v76 = v85[0];
    v81 = os_log_type_enabled(v75, v85[0]);
    if (v80)
    {
      if (v81)
      {
        *buf = 136446466;
        v90 = "nw_protocol_shoes_input_available";
        v91 = 2082;
        v92 = v80;
        _os_log_impl(&dword_181A37000, v75, v76, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v80);
      if (!v74)
      {
        return;
      }

LABEL_168:
      free(v74);
      return;
    }

    if (v81)
    {
      *buf = 136446210;
      v90 = "nw_protocol_shoes_input_available";
      v77 = "%{public}s called with null shoes, no backtrace";
LABEL_166:
      _os_log_impl(&dword_181A37000, v75, v76, v77, buf, 0xCu);
      goto LABEL_167;
    }

    goto LABEL_167;
  }

  default_input_handler = a1->default_input_handler;
  if (!default_input_handler)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446466;
    v90 = "nw_protocol_shoes_input_available";
    v91 = 2082;
    v92 = handle + 159;
    v7 = "%{public}s %{public}s No input handler";
    v8 = v6;
LABEL_97:
    v59 = OS_LOG_TYPE_ERROR;
LABEL_98:
    v60 = 22;
    goto LABEL_99;
  }

  if (handle[158] == 6)
  {
    input_available = default_input_handler->callbacks->input_available;

    input_available();
    return;
  }

  output_handler = a1->output_handler;
  *v85 = 0;
  v86 = v85;
  if ((output_handler->callbacks->get_input_frames)())
  {
    v10 = *v85;
    if (*v85)
    {
      do
      {
        v16 = (v10 + 32);
        v15 = *(v10 + 32);
        if (v15 || *(v10 + 40))
        {
          if (!*(v10 + 112))
          {
            goto LABEL_27;
          }
        }

        else
        {
          v15 = 0;
          if (!*(v10 + 112))
          {
            goto LABEL_27;
          }
        }

        if ((*(v10 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(v10, *(v10 + 88)))
        {
          v18 = *(v10 + 52);
          v17 = *(v10 + 56);
          if (v18)
          {
            v19 = v18 - (v17 + *(v10 + 60));
          }

          else
          {
            v19 = 0;
          }

          v20 = *(v10 + 112) + v17;
          goto LABEL_28;
        }

LABEL_27:
        v19 = 0;
        v20 = 0;
LABEL_28:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          v90 = "nw_protocol_shoes_input_available";
          v91 = 2082;
          v92 = handle + 159;
          v93 = 1024;
          v94 = v19;
          v95 = 2048;
          *v96 = v20;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Read frame has %u bytes (%p)", buf, 0x26u);
        }

        v11 = *(v10 + 32);
        v12 = *(v10 + 40);
        v13 = (v11 + 40);
        if (!v11)
        {
          v13 = &v86;
        }

        *v13 = v12;
        *v12 = v11;
        *v16 = 0;
        *(v10 + 40) = 0;
        v14 = *(handle + 17);
        *(v10 + 40) = v14;
        *v14 = v10;
        *(handle + 17) = v16;
        v10 = v15;
      }

      while (v15);
    }
  }

  else if (gLogDatapath == 1)
  {
    v82 = __nwlog_obj();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v90 = "nw_protocol_shoes_input_available";
      v91 = 2082;
      v92 = handle + 159;
      _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Got 0 input frames", buf, 0x16u);
    }
  }

  v22 = handle + 159;
  while (1)
  {
    if (!*(handle + 16))
    {
      return;
    }

    v23 = handle[158];
    if (v23 != 5)
    {
      if (handle[158] <= 2u)
      {
        if (v23 == 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v58 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            return;
          }

          *buf = 136446466;
          v90 = "nw_shoes_service_reads";
          v91 = 2082;
          v92 = v22;
          v7 = "%{public}s %{public}s Tried to read packets in initial state";
        }

        else
        {
          if (v23 != 2)
          {
LABEL_101:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v61 = gLogObj;
            if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            v62 = handle[158];
            *buf = 136446722;
            v90 = "nw_shoes_service_reads";
            v91 = 2082;
            v92 = handle + 159;
            v93 = 1024;
            v94 = v62;
            v7 = "%{public}s %{public}s Tried to read packets in unknown state %u";
            v8 = v61;
            v59 = OS_LOG_TYPE_ERROR;
            v60 = 28;
LABEL_99:
            _os_log_impl(&dword_181A37000, v8, v59, v7, buf, v60);
            return;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v58 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            return;
          }

          *buf = 136446466;
          v90 = "nw_shoes_service_reads";
          v91 = 2082;
          v92 = v22;
          v7 = "%{public}s %{public}s Tried to read packets in waiting for TFO state";
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v58 = gLogObj;
            if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            *buf = 136446466;
            v90 = "nw_shoes_service_reads";
            v91 = 2082;
            v92 = v22;
            v7 = "%{public}s %{public}s Tried to read packets in waiting for UDP associate state";
            break;
          case 7:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v58 = gLogObj;
            if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              return;
            }

            *buf = 136446466;
            v90 = "nw_shoes_service_reads";
            v91 = 2082;
            v92 = v22;
            v7 = "%{public}s %{public}s Tried to read packets in failed state";
            break;
          case 6:
            (*(*(*(handle + 6) + 24) + 64))(*(handle + 6), handle);
            return;
          default:
            goto LABEL_101;
        }
      }

      v8 = v58;
      goto LABEL_97;
    }

    v24 = *(handle + 36);
    if (v24 <= 1 && !nw_shoes_read_into_buffer(handle, (handle + 154), 2 - v24, v24))
    {
      break;
    }

    v25 = bswap32(*(handle + 77)) >> 16;
    if (v25)
    {
      if (v25 == 1)
      {
        v63 = __nwlog_obj();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v90 = "nw_shoes_read_reply";
          v91 = 2082;
          v92 = handle + 159;
          _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Received invalid shoes reply length one", buf, 0x16u);
        }

        nw_protocol_shoes_error(handle, handle, 422052353);
        handle[243] |= 0x10u;
        v64 = __nwlog_obj();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v90 = "nw_shoes_internal_disconnect";
          v91 = 2082;
          v92 = handle + 159;
          _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s ", buf, 0x16u);
        }

        handle[158] = 7;
        (*(*(handle + 3) + 48))(handle, 0);
        return;
      }

      v26 = *(handle + 36);
      if (v26 > 3)
      {
LABEL_43:
        v27 = v25 + 2;
        v28 = v25 + 2 - v26;
        if (v28)
        {
          v29 = nw_calloc_type<unsigned char>((v25 + 2 - v26));
          if (v27 <= *(handle + 36))
          {
            goto LABEL_50;
          }
        }

        else
        {
          v29 = 0;
          if (v27 <= v26)
          {
            goto LABEL_50;
          }
        }

        if (!nw_shoes_read_into_buffer(handle, v29, v28, 0))
        {
          if (gLogDatapath == 1)
          {
            v83 = __nwlog_obj();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v90 = "nw_shoes_read_reply";
              v91 = 2082;
              v92 = v22;
              _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Failed to read shoes rest of reply", buf, 0x16u);
            }
          }

          if (!v29)
          {
            return;
          }

LABEL_136:
          free(v29);
          return;
        }

LABEL_50:
        v31 = handle[156];
        if (!handle[156])
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v33 = handle[157];
            *buf = 136446978;
            v90 = "nw_shoes_read_reply";
            v91 = 2082;
            v92 = handle + 159;
            v93 = 1024;
            v94 = v25;
            v95 = 1024;
            *v96 = v33;
            _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_INFO, "%{public}s %{public}s Received successful shoes reply from server with inner length %u code %u", buf, 0x22u);
          }

          nw_shoes_read_reply_tlvs(handle, v29, v28, 1);
          if (v29)
          {
            free(v29);
          }

          goto LABEL_55;
        }

        v66 = handle[157];
        v67 = 422052352;
        if (handle[156] <= 2u)
        {
          v69 = v66 | 0x19280100;
          if (v31 != 2)
          {
            v66 = 422052352;
          }

          if (v31 == 1)
          {
            v67 = v69;
          }

          else
          {
            v67 = v66;
          }
        }

        else if (v31 == 3)
        {
          v67 = v66 | 0xFFFEFF00;
        }

        else
        {
          if (v31 == 4)
          {
            v68 = -10055;
          }

          else
          {
            if (v31 != 5)
            {
              goto LABEL_131;
            }

            v68 = -11999;
          }

          v67 = v66 + v68;
        }

LABEL_131:
        v70 = __nwlog_obj();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v71 = handle[156];
          v72 = handle[157];
          *buf = 136447490;
          v90 = "nw_shoes_read_reply";
          v91 = 2082;
          v92 = handle + 159;
          v93 = 1024;
          v94 = v67;
          v95 = 1024;
          *v96 = v71;
          *&v96[4] = 1024;
          *&v96[6] = v72;
          LOWORD(v97) = 1024;
          *(&v97 + 2) = v25;
          _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Received shoes error %d domain %u code %u inner length %u", buf, 0x2Eu);
        }

        nw_shoes_read_reply_tlvs(handle, v29, v28, 0);
        nw_protocol_shoes_error(handle, handle, v67);
        handle[243] |= 0x10u;
        v73 = __nwlog_obj();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v90 = "nw_shoes_internal_disconnect";
          v91 = 2082;
          v92 = handle + 159;
          _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s ", buf, 0x16u);
        }

        handle[158] = 7;
        (*(*(handle + 3) + 48))(handle, 0);
        if (!v29)
        {
          return;
        }

        goto LABEL_136;
      }

      if (nw_shoes_read_into_buffer(handle, (handle + 154), 4 - v26, v26))
      {
        v26 = *(handle + 36);
        goto LABEL_43;
      }

      if (gLogDatapath != 1)
      {
        return;
      }

      v65 = __nwlog_obj();
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      *buf = 136446466;
      v90 = "nw_shoes_read_reply";
      v91 = 2082;
      v92 = v22;
      v7 = "%{public}s %{public}s Failed to read shoes reply domain and error code";
LABEL_119:
      v8 = v65;
      v59 = OS_LOG_TYPE_DEBUG;
      goto LABEL_98;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v90 = "nw_shoes_read_reply";
      v91 = 2082;
      v92 = handle + 159;
      _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_INFO, "%{public}s %{public}s Received successful empty shoes reply from server", buf, 0x16u);
    }

LABEL_55:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v90 = "nw_shoes_internal_connect";
      v91 = 2082;
      v92 = handle + 159;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s %{public}s ", buf, 0x16u);
    }

    handle[158] = 6;
    v35 = *(handle + 6);
    if ((handle[243] & 2) == 0)
    {
      goto LABEL_33;
    }

    v36 = *(handle + 5);
    if (!v36)
    {
      __nwlog_obj();
      *buf = 136446210;
      v90 = "nw_protocol_shoes_process_udp_associate_completion";
      v47 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v87 = 0;
      if (!__nwlog_fault(v47, &type, &v87))
      {
        goto LABEL_79;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v48 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v48, type))
        {
          *buf = 136446210;
          v90 = "nw_protocol_shoes_process_udp_associate_completion";
          v50 = v48;
          v51 = v49;
          v52 = "%{public}s called with null shoes";
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      if (v87 == 1)
      {
        v53 = __nw_create_backtrace_string();
        v54 = __nwlog_obj();
        v84 = type;
        v55 = os_log_type_enabled(v54, type);
        if (v53)
        {
          if (v55)
          {
            *buf = 136446466;
            v90 = "nw_protocol_shoes_process_udp_associate_completion";
            v91 = 2082;
            v92 = v53;
            _os_log_impl(&dword_181A37000, v54, v84, "%{public}s called with null shoes, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v53);
          goto LABEL_79;
        }

        if (!v55)
        {
LABEL_79:
          if (v47)
          {
            free(v47);
          }

          goto LABEL_33;
        }

        *buf = 136446210;
        v90 = "nw_protocol_shoes_process_udp_associate_completion";
        v50 = v54;
        v51 = v84;
        v52 = "%{public}s called with null shoes, no backtrace";
      }

      else
      {
        v56 = __nwlog_obj();
        v57 = type;
        if (!os_log_type_enabled(v56, type))
        {
          goto LABEL_79;
        }

        *buf = 136446210;
        v90 = "nw_protocol_shoes_process_udp_associate_completion";
        v50 = v56;
        v51 = v57;
        v52 = "%{public}s called with null shoes, backtrace limit exceeded";
      }

LABEL_78:
      _os_log_impl(&dword_181A37000, v50, v51, v52, buf, 0xCu);
      goto LABEL_79;
    }

    if ((*(v36 + 243) & 0xE) == 6)
    {
      v37 = *(v36 + 64);
      if (v37)
      {
        *(v36 + 64) = *(v36 + 32);
        nw_protocol_set_output_handler(handle, v37);
        nw_protocol_set_output_handler(v36, v37);
        *(v36 + 243) |= 8u;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v38 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
        {
          v39 = *(v36 + 152);
          v41 = *(v36 + 104);
          v40 = *(v36 + 112);
          *buf = 136447234;
          v90 = "nw_protocol_shoes_process_udp_associate_completion";
          v91 = 2082;
          v92 = (v36 + 159);
          v93 = 1024;
          v94 = v39;
          v95 = 2112;
          *v96 = v40;
          *&v96[8] = 2112;
          v97 = v41;
          v42 = v38;
          v43 = OS_LOG_TYPE_DEFAULT;
          v44 = "%{public}s %{public}s udp-associate completed with port %d to %@ and remote %@";
          v45 = 48;
LABEL_32:
          _os_log_impl(&dword_181A37000, v42, v43, v44, buf, v45);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v46 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v90 = "nw_protocol_shoes_process_udp_associate_completion";
          v91 = 2082;
          v92 = (v36 + 159);
          v42 = v46;
          v43 = OS_LOG_TYPE_ERROR;
          v44 = "%{public}s %{public}s udp-associate no output handler";
          v45 = 22;
          goto LABEL_32;
        }
      }
    }

LABEL_33:
    (*(*(v35 + 24) + 40))(v35, handle);
  }

  if (gLogDatapath == 1)
  {
    v65 = __nwlog_obj();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v90 = "nw_shoes_read_reply";
      v91 = 2082;
      v92 = v22;
      v7 = "%{public}s %{public}s Failed to read shoes reply length";
      goto LABEL_119;
    }
  }
}

BOOL nw_shoes_read_into_buffer(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 128);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  if (a2)
  {
    v8 = a2 + a4;
    while (1)
    {
      if (!v4)
      {
        goto LABEL_47;
      }

      v10 = *(v4 + 32);
      if (v10 || *(v4 + 40))
      {
        if (*(v4 + 112))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v10 = 0;
        if (*(v4 + 112))
        {
LABEL_14:
          if ((*(v4 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(v4, *(v4 + 88)))
          {
            v11 = *(v4 + 52);
            if (v11)
            {
              v12 = *(v4 + 56);
              v13 = v11 - (v12 + *(v4 + 60));
              if (v13)
              {
                if (v13 >= a3 - v7)
                {
                  v14 = a3 - v7;
                }

                else
                {
                  v14 = v13;
                }

                memcpy((v8 + v7), (*(v4 + 112) + v12), v14);
                *(a1 + 144) += v14;
                v7 += v14;
                nw_frame_claim(v4, v15, v14, 0);
              }
            }
          }
        }
      }

      v9 = *(v4 + 52);
      if (v9)
      {
        if (v9 == *(v4 + 56) + *(v4 + 60))
        {
          v4 = v10;
        }

        if (v7 == a3)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v4 = v10;
        if (v7 == a3)
        {
          goto LABEL_46;
        }
      }
    }
  }

  while (v4)
  {
    v16 = *(v4 + 32);
    if (v16 || *(v4 + 40))
    {
      if (*(v4 + 112))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v16 = 0;
      if (*(v4 + 112))
      {
LABEL_32:
        if ((*(v4 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(v4, *(v4 + 88)))
        {
          v17 = *(v4 + 52);
          if (v17)
          {
            v18 = v17 - (*(v4 + 56) + *(v4 + 60));
            if (v18)
            {
              if (v18 >= a3 - v7)
              {
                v19 = a3 - v7;
              }

              else
              {
                v19 = v18;
              }

              *(a1 + 144) += v19;
              v7 += v19;
              nw_frame_claim(v4, a2, v19, 0);
            }
          }
        }
      }
    }

    v20 = *(v4 + 52);
    if (v20)
    {
      if (v20 == *(v4 + 56) + *(v4 + 60))
      {
        v4 = v16;
      }
    }

    else
    {
      v4 = v16;
    }

    if (v7 == a3)
    {
LABEL_46:
      v7 = a3;
      break;
    }
  }

LABEL_47:
  for (i = *(a1 + 128); v4 != i; i = *(a1 + 128))
  {
    if (gLogDatapath == 1)
    {
      v29 = i;
      log = __nwlog_obj();
      v25 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
      i = v29;
      if (v25)
      {
        *buf = 136446722;
        v31 = "nw_shoes_read_into_buffer";
        v32 = 2082;
        v33 = a1 + 159;
        v34 = 2048;
        v35[0] = v29;
        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Finished reading from frame %p", buf, 0x20u);
        i = v29;
      }
    }

    v22 = *(i + 32);
    v23 = *(i + 40);
    v24 = (v22 + 40);
    if (!v22)
    {
      v24 = (a1 + 136);
    }

    *v24 = v23;
    *v23 = v22;
    *(i + 32) = 0;
    *(i + 40) = 0;
    nw_frame_finalize(i);
  }

  if (v7 >= a3)
  {
    return 1;
  }

  if (gLogDatapath != 1)
  {
    return 0;
  }

  v27 = __nwlog_obj();
  result = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446978;
    v31 = "nw_shoes_read_into_buffer";
    v32 = 2082;
    v33 = a1 + 159;
    v34 = 1024;
    LODWORD(v35[0]) = v7;
    WORD2(v35[0]) = 1024;
    *(v35 + 6) = a3;
    _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Read incomplete (%u < %u)", buf, 0x22u);
    return 0;
  }

  return result;
}

void nw_shoes_read_reply_tlvs(uint64_t a1, unsigned __int8 *a2, unsigned int a3, char a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v12 = "nw_shoes_read_reply_tlvs";
      v13 = 2082;
      v14 = a1 + 159;
      v15 = 1024;
      v16 = a3;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s received shoes tlv(s) with total tlv buffer length %u", buf, 0x1Cu);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___ZL24nw_shoes_read_reply_tlvsP18_nw_protocol_shoesPhtb_block_invoke;
    v9[3] = &__block_descriptor_tmp_36;
    v9[4] = a1;
    v10 = a4;
    nw_shoes_tlv_parser(a2, a3, v9);
  }
}

void ___ZL24nw_shoes_read_reply_tlvsP18_nw_protocol_shoesPhtb_block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  v90 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = (v5 + 159);
    }

    else
    {
      v6 = "";
    }

    v7 = *a2;
    if (v7 > 9)
    {
      v8 = "unknown";
    }

    else
    {
      v8 = off_1E6A2B458[v7];
    }

    *buf = 136446722;
    *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
    *&buf[12] = 2082;
    *&buf[14] = v6;
    *&buf[22] = 2082;
    *&v85 = v8;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s processing shoes tlv: %{public}s", buf, 0x20u);
  }

  v9 = *a2;
  if (v9 == 8)
  {
    v45 = *(a2 + 1);
    v46 = __rev16(v45);
    v47 = a2[4];
    if (v47 == 2 && v45 != 4096)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v48 = *(a1 + 32);
      *buf = 136446978;
      *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
      if (v48)
      {
        v49 = (v48 + 159);
      }

      else
      {
        v49 = "";
      }

      *&buf[12] = 2082;
      *&buf[14] = v49;
      *&buf[22] = 1024;
      LODWORD(v85) = v46;
      WORD2(v85) = 2048;
      *(&v85 + 6) = 16;
      v44 = "%{public}s %{public}s Invalid TLV length (%u != %zu)";
      goto LABEL_89;
    }

    if (v47 == 30 && v45 != 7168)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v51 = *(a1 + 32);
      *buf = 136446978;
      *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
      if (v51)
      {
        v52 = (v51 + 159);
      }

      else
      {
        v52 = "";
      }

      *&buf[12] = 2082;
      *&buf[14] = v52;
      *&buf[22] = 1024;
      LODWORD(v85) = v46;
      WORD2(v85) = 2048;
      *(&v85 + 6) = 28;
      v44 = "%{public}s %{public}s Invalid TLV length (%u != %zu)";
      goto LABEL_89;
    }

    address = _nw_endpoint_create_address(a2 + 3);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v57 = gLogObj;
    if (address)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        v64 = *(a1 + 32);
        if (v64)
        {
          v65 = (v64 + 159);
        }

        else
        {
          v65 = "";
        }

        description = nw_endpoint_get_description(address);
        *buf = 136446722;
        *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v65;
        *&buf[22] = 2080;
        *&v85 = description;
        _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s detected resolved_endpoint endpoint for outer connection: %s", buf, 0x20u);
      }

      singleton = *(*(a1 + 32) + 96);
      if (singleton)
      {
        goto LABEL_114;
      }

      if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
      {
        dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
      }

      singleton = _nw_protocol_metadata_create_singleton();
      *(*(a1 + 32) + 96) = singleton;
      if (singleton)
      {
LABEL_114:
        if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
        {
          dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
        }

        if (nw_protocol_metadata_matches_definition(singleton, nw_protocol_shoes_get_definition(void)::proxy_definition))
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          v62 = ___ZL39nw_shoes_metadata_add_resolved_endpointP20nw_protocol_metadataP11nw_endpoint_block_invoke;
          v63 = &__block_descriptor_tmp_45;
LABEL_118:
          *&buf[16] = v62;
          *&v85 = v63;
          *(&v85 + 1) = address;
          handle = _nw_protocol_metadata_get_handle(singleton);
          if (handle)
          {
            (*&buf[16])(buf, handle);
          }

          goto LABEL_120;
        }

        __nwlog_obj();
        *v86 = 136446210;
        v87 = "nw_shoes_metadata_add_resolved_endpoint";
        v71 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v82 = 0;
        if (__nwlog_fault(v71, &type, &v82))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v72 = __nwlog_obj();
            v73 = type;
            if (!os_log_type_enabled(v72, type))
            {
              goto LABEL_185;
            }

            *v86 = 136446210;
            v87 = "nw_shoes_metadata_add_resolved_endpoint";
            v74 = "%{public}s metadata must be shoes";
            goto LABEL_184;
          }

          if (v82 != 1)
          {
            v72 = __nwlog_obj();
            v73 = type;
            if (!os_log_type_enabled(v72, type))
            {
              goto LABEL_185;
            }

            *v86 = 136446210;
            v87 = "nw_shoes_metadata_add_resolved_endpoint";
            v74 = "%{public}s metadata must be shoes, backtrace limit exceeded";
            goto LABEL_184;
          }

          backtrace_string = __nw_create_backtrace_string();
          v72 = __nwlog_obj();
          v73 = type;
          v81 = os_log_type_enabled(v72, type);
          if (!backtrace_string)
          {
            if (!v81)
            {
              goto LABEL_185;
            }

            *v86 = 136446210;
            v87 = "nw_shoes_metadata_add_resolved_endpoint";
            v74 = "%{public}s metadata must be shoes, no backtrace";
            goto LABEL_184;
          }

          if (v81)
          {
            *v86 = 136446466;
            v87 = "nw_shoes_metadata_add_resolved_endpoint";
            v88 = 2082;
            v89 = backtrace_string;
            v79 = "%{public}s metadata must be shoes, dumping backtrace:%{public}s";
            goto LABEL_165;
          }

          goto LABEL_166;
        }

        goto LABEL_185;
      }

      __nwlog_obj();
      *v86 = 136446210;
      v87 = "nw_shoes_metadata_add_resolved_endpoint";
      v71 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v82 = 0;
      if (!__nwlog_fault(v71, &type, &v82))
      {
        goto LABEL_185;
      }

      if (type != OS_LOG_TYPE_FAULT)
      {
        if (v82 != 1)
        {
          v72 = __nwlog_obj();
          v73 = type;
          if (!os_log_type_enabled(v72, type))
          {
            goto LABEL_185;
          }

          *v86 = 136446210;
          v87 = "nw_shoes_metadata_add_resolved_endpoint";
          v74 = "%{public}s called with null metadata, backtrace limit exceeded";
          goto LABEL_184;
        }

        backtrace_string = __nw_create_backtrace_string();
        v72 = __nwlog_obj();
        v73 = type;
        v78 = os_log_type_enabled(v72, type);
        if (!backtrace_string)
        {
          if (!v78)
          {
            goto LABEL_185;
          }

          *v86 = 136446210;
          v87 = "nw_shoes_metadata_add_resolved_endpoint";
          v74 = "%{public}s called with null metadata, no backtrace";
          goto LABEL_184;
        }

        if (v78)
        {
          *v86 = 136446466;
          v87 = "nw_shoes_metadata_add_resolved_endpoint";
          v88 = 2082;
          v89 = backtrace_string;
          v79 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_165:
          _os_log_impl(&dword_181A37000, v72, v73, v79, v86, 0x16u);
        }

LABEL_166:
        free(backtrace_string);
        if (!v71)
        {
          goto LABEL_120;
        }

        goto LABEL_186;
      }

      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_185;
      }

      *v86 = 136446210;
      v87 = "nw_shoes_metadata_add_resolved_endpoint";
      v74 = "%{public}s called with null metadata";
LABEL_184:
      _os_log_impl(&dword_181A37000, v72, v73, v74, v86, 0xCu);
      goto LABEL_185;
    }

    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v70 = *(a1 + 32);
    if (v70)
    {
      v69 = (v70 + 159);
    }

    else
    {
      v69 = "";
    }

LABEL_131:
    *buf = 136446466;
    *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
    *&buf[12] = 2082;
    *&buf[14] = v69;
    _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_ERROR, "%{public}s %{public}s failed to create endpoint", buf, 0x16u);
    return;
  }

  if (v9 == 7)
  {
    v38 = *(a2 + 1);
    v39 = __rev16(v38);
    v40 = a2[4];
    if (v40 == 2 && v38 != 4096)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v42 = *(a1 + 32);
      *buf = 136446978;
      *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
      if (v42)
      {
        v43 = (v42 + 159);
      }

      else
      {
        v43 = "";
      }

LABEL_63:
      *&buf[12] = 2082;
      *&buf[14] = v43;
      *&buf[22] = 1024;
      LODWORD(v85) = v39;
      WORD2(v85) = 2048;
      *(&v85 + 6) = 8;
      v44 = "%{public}s %{public}s Invalid TLV length (%u != %zu)";
      goto LABEL_89;
    }

    if (v40 == 30 && v38 != 7168)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v50 = *(a1 + 32);
      *buf = 136446978;
      *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
      if (v50)
      {
        v43 = (v50 + 159);
      }

      else
      {
        v43 = "";
      }

      goto LABEL_63;
    }

    address = _nw_endpoint_create_address(a2 + 3);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v57 = gLogObj;
    if (address)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
      {
        v58 = *(a1 + 32);
        if (v58)
        {
          v59 = (v58 + 159);
        }

        else
        {
          v59 = "";
        }

        v60 = nw_endpoint_get_description(address);
        *buf = 136446722;
        *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
        *&buf[12] = 2082;
        *&buf[14] = v59;
        *&buf[22] = 2080;
        *&v85 = v60;
        _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s detected remote endpoint from outer connection: %s", buf, 0x20u);
      }

      singleton = *(*(a1 + 32) + 96);
      if (singleton)
      {
        goto LABEL_100;
      }

      if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
      {
        dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
      }

      singleton = _nw_protocol_metadata_create_singleton();
      *(*(a1 + 32) + 96) = singleton;
      if (singleton)
      {
LABEL_100:
        if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
        {
          dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
        }

        if (nw_protocol_metadata_matches_definition(singleton, nw_protocol_shoes_get_definition(void)::proxy_definition))
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          v62 = ___ZL37nw_shoes_metadata_set_remote_endpointP20nw_protocol_metadataP11nw_endpoint_block_invoke;
          v63 = &__block_descriptor_tmp_44;
          goto LABEL_118;
        }

        __nwlog_obj();
        *v86 = 136446210;
        v87 = "nw_shoes_metadata_set_remote_endpoint";
        v71 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v82 = 0;
        if (__nwlog_fault(v71, &type, &v82))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v72 = __nwlog_obj();
            v73 = type;
            if (!os_log_type_enabled(v72, type))
            {
              goto LABEL_185;
            }

            *v86 = 136446210;
            v87 = "nw_shoes_metadata_set_remote_endpoint";
            v74 = "%{public}s metadata must be shoes";
            goto LABEL_184;
          }

          if (v82 != 1)
          {
            v72 = __nwlog_obj();
            v73 = type;
            if (!os_log_type_enabled(v72, type))
            {
              goto LABEL_185;
            }

            *v86 = 136446210;
            v87 = "nw_shoes_metadata_set_remote_endpoint";
            v74 = "%{public}s metadata must be shoes, backtrace limit exceeded";
            goto LABEL_184;
          }

          backtrace_string = __nw_create_backtrace_string();
          v72 = __nwlog_obj();
          v73 = type;
          v80 = os_log_type_enabled(v72, type);
          if (!backtrace_string)
          {
            if (!v80)
            {
              goto LABEL_185;
            }

            *v86 = 136446210;
            v87 = "nw_shoes_metadata_set_remote_endpoint";
            v74 = "%{public}s metadata must be shoes, no backtrace";
            goto LABEL_184;
          }

          if (v80)
          {
            *v86 = 136446466;
            v87 = "nw_shoes_metadata_set_remote_endpoint";
            v88 = 2082;
            v89 = backtrace_string;
            v79 = "%{public}s metadata must be shoes, dumping backtrace:%{public}s";
            goto LABEL_165;
          }

          goto LABEL_166;
        }

LABEL_185:
        if (!v71)
        {
LABEL_120:
          v37 = address;
LABEL_121:
          os_release(v37);
          return;
        }

LABEL_186:
        free(v71);
        goto LABEL_120;
      }

      __nwlog_obj();
      *v86 = 136446210;
      v87 = "nw_shoes_metadata_set_remote_endpoint";
      v71 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v82 = 0;
      if (!__nwlog_fault(v71, &type, &v82))
      {
        goto LABEL_185;
      }

      if (type != OS_LOG_TYPE_FAULT)
      {
        if (v82 != 1)
        {
          v72 = __nwlog_obj();
          v73 = type;
          if (!os_log_type_enabled(v72, type))
          {
            goto LABEL_185;
          }

          *v86 = 136446210;
          v87 = "nw_shoes_metadata_set_remote_endpoint";
          v74 = "%{public}s called with null metadata, backtrace limit exceeded";
          goto LABEL_184;
        }

        v75 = __nw_create_backtrace_string();
        v72 = __nwlog_obj();
        v73 = type;
        v76 = os_log_type_enabled(v72, type);
        if (!v75)
        {
          if (!v76)
          {
            goto LABEL_185;
          }

          *v86 = 136446210;
          v87 = "nw_shoes_metadata_set_remote_endpoint";
          v74 = "%{public}s called with null metadata, no backtrace";
          goto LABEL_184;
        }

        if (v76)
        {
          *v86 = 136446466;
          v87 = "nw_shoes_metadata_set_remote_endpoint";
          v88 = 2082;
          v89 = v75;
          _os_log_impl(&dword_181A37000, v72, v73, "%{public}s called with null metadata, dumping backtrace:%{public}s", v86, 0x16u);
        }

        free(v75);
        goto LABEL_185;
      }

      v72 = __nwlog_obj();
      v73 = type;
      if (!os_log_type_enabled(v72, type))
      {
        goto LABEL_185;
      }

      *v86 = 136446210;
      v87 = "nw_shoes_metadata_set_remote_endpoint";
      v74 = "%{public}s called with null metadata";
      goto LABEL_184;
    }

    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v68 = *(a1 + 32);
    if (v68)
    {
      v69 = (v68 + 159);
    }

    else
    {
      v69 = "";
    }

    goto LABEL_131;
  }

  if (v9 != 4)
  {
    return;
  }

  v10 = *(a2 + 1);
  if (!*(a2 + 1))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v41 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v53 = __rev16(v10);
    v54 = *(a1 + 32);
    *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
    *buf = 136446978;
    *&buf[12] = 2082;
    if (v54)
    {
      v55 = (v54 + 159);
    }

    else
    {
      v55 = "";
    }

    *&buf[14] = v55;
    *&buf[22] = 1024;
    LODWORD(v85) = v53;
    WORD2(v85) = 2048;
    *(&v85 + 6) = 1;
    v44 = "%{public}s %{public}s Invalid TLV length (%u < %zu)";
LABEL_89:
    _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_ERROR, v44, buf, 0x26u);
    return;
  }

  if (a2[3])
  {
    v11 = (*(*(*(*(a1 + 32) + 48) + 24) + 112))();
    if (v11)
    {
      v12 = v11;
      v13 = _nw_parameters_copy_context(v11);
      v14 = nw_path_copy_flow_registration(v13, *(a1 + 32));
      if (v13)
      {
        os_release(v13);
      }

      if (v14)
      {
        if (a2[3] < 0)
        {
          v15 = __nwlog_obj();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(a1 + 32);
            if (v16)
            {
              v17 = (v16 + 159);
            }

            else
            {
              v17 = "";
            }

            *buf = 136446466;
            *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v17;
            _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s detected expensive network from outer connection", buf, 0x16u);
          }
        }

        if ((a2[3] & 0x20) != 0)
        {
          v18 = __nwlog_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 32);
            if (v19)
            {
              v20 = (v19 + 159);
            }

            else
            {
              v20 = "";
            }

            *buf = 136446466;
            *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v20;
            _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s detected wifi network from outer connection", buf, 0x16u);
          }
        }

        if ((a2[3] & 0x40) != 0)
        {
          v21 = __nwlog_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *(a1 + 32);
            if (v22)
            {
              v23 = (v22 + 159);
            }

            else
            {
              v23 = "";
            }

            *buf = 136446466;
            *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v23;
            _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s detected cellular network from outer connection", buf, 0x16u);
          }
        }

        if ((a2[3] & 0x10) != 0)
        {
          v24 = __nwlog_obj();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a1 + 32);
            if (v25)
            {
              v26 = (v25 + 159);
            }

            else
            {
              v26 = "";
            }

            *buf = 136446466;
            *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v26;
            _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s detected constrained network from outer connection", buf, 0x16u);
          }
        }

        v27 = a2[3];
        if ((v27 & 8) != 0)
        {
          v28 = __nwlog_obj();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(a1 + 32);
            if (v29)
            {
              v30 = (v29 + 159);
            }

            else
            {
              v30 = "";
            }

            *buf = 136446466;
            *&buf[4] = "nw_shoes_read_reply_tlvs_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v30;
            _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s detected denied interface from outer connection", buf, 0x16u);
          }

          effective_bundle_id = _nw_parameters_get_effective_bundle_id(v12);
          if (!effective_bundle_id)
          {
            if (nw_utilities_get_self_bundle_id::onceToken != -1)
            {
              dispatch_once(&nw_utilities_get_self_bundle_id::onceToken, &__block_literal_global_9_47228);
            }

            effective_bundle_id = nw_utilities_get_self_bundle_id::bundle_identifier_string;
          }

          nw_shoes_notify_interface_denied(effective_bundle_id, v32);
          v27 = a2[3];
        }

        v33 = *(a1 + 40);
        v34 = v14;
        v35 = v34;
        if (v33)
        {
          v36 = 0;
        }

        else
        {
          v36 = 0x80;
        }

        v34[148] = v27 & 0x70 | (v27 >> 4) & 8 | v36 & 0xF8 | v34[148] & 7;

        v37 = v35;
        goto LABEL_121;
      }
    }
  }
}

void nw_shoes_notify_interface_denied(const char *a1, double a2)
{
  v22 = *MEMORY[0x1E69E9840];
  client = gotLoadHelper_x8__network_usage_policy_create_client(a2);
  if (!*(v3 + 1696))
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_shoes_notify_interface_denied";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v4, &type, &v16))
    {
      goto LABEL_20;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v19 = "nw_shoes_notify_interface_denied";
      v7 = "%{public}s called with null is_network_usage_policy_available()";
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v15 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v19 = "nw_shoes_notify_interface_denied";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null is_network_usage_policy_available(), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (!v15)
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v19 = "nw_shoes_notify_interface_denied";
      v7 = "%{public}s called with null is_network_usage_policy_available(), no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v19 = "nw_shoes_notify_interface_denied";
      v7 = "%{public}s called with null is_network_usage_policy_available(), backtrace limit exceeded";
    }

LABEL_18:
    v12 = v5;
    v13 = v6;
LABEL_19:
    _os_log_impl(&dword_181A37000, v12, v13, v7, buf, 0xCu);
    goto LABEL_20;
  }

  if (nw_shoes_get_network_usage_policy_client(void)::onceToken != -1)
  {
    dispatch_once(&nw_shoes_get_network_usage_policy_client(void)::onceToken, &__block_literal_global_43_781);
  }

  if (nw_shoes_get_network_usage_policy_client(void)::shared_policy_client)
  {
    perform_first_network_use_flow_delayInitStub(client);
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v19 = "nw_shoes_notify_interface_denied";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v4, &type, &v16))
  {
LABEL_20:
    if (!v4)
    {
      return;
    }

    goto LABEL_21;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_20;
    }

    *buf = 136446210;
    v19 = "nw_shoes_notify_interface_denied";
    v7 = "%{public}s network_usage_policy_create_client failed";
    goto LABEL_18;
  }

  if (v16 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_20;
    }

    *buf = 136446210;
    v19 = "nw_shoes_notify_interface_denied";
    v7 = "%{public}s network_usage_policy_create_client failed, backtrace limit exceeded";
    goto LABEL_18;
  }

  v8 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v10 = type;
  v11 = os_log_type_enabled(gLogObj, type);
  if (!v8)
  {
    if (v11)
    {
      *buf = 136446210;
      v19 = "nw_shoes_notify_interface_denied";
      v7 = "%{public}s network_usage_policy_create_client failed, no backtrace";
      v12 = v9;
      v13 = v10;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v11)
  {
    *buf = 136446466;
    v19 = "nw_shoes_notify_interface_denied";
    v20 = 2082;
    v21 = v8;
    _os_log_impl(&dword_181A37000, v9, v10, "%{public}s network_usage_policy_create_client failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v8);
  if (v4)
  {
LABEL_21:
    free(v4);
  }
}

uint64_t ___ZL37nw_shoes_metadata_set_remote_endpointP20nw_protocol_metadataP11nw_endpoint_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = os_retain(v3);
  }

  *a2 = v3;
  return 1;
}

uint64_t ___ZL39nw_shoes_metadata_add_resolved_endpointP20nw_protocol_metadataP11nw_endpoint_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    v3 = _nw_array_create();
    *(a2 + 8) = v3;
  }

  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    _nw_array_append(v3, v5);
  }

  return 1;
}

uint64_t ___ZL40nw_shoes_get_network_usage_policy_clientv_block_invoke(double a1)
{
  result = network_usage_policy_create_client_delayInitStub(a1);
  nw_shoes_get_network_usage_policy_client(void)::shared_policy_client = result;
  return result;
}

uint64_t nw_protocol_shoes_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_shoes_remove_input_handler";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v17, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v25 != 1)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (!os_log_type_enabled(v18, type))
        {
          goto LABEL_55;
        }

        *buf = 136446210;
        v28 = "nw_protocol_shoes_remove_input_handler";
        v20 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_54;
      }

      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v22 = os_log_type_enabled(v18, type);
      if (!backtrace_string)
      {
        if (!v22)
        {
          goto LABEL_55;
        }

        *buf = 136446210;
        v28 = "nw_protocol_shoes_remove_input_handler";
        v20 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_54;
      }

      if (v22)
      {
        *buf = 136446466;
        v28 = "nw_protocol_shoes_remove_input_handler";
        v29 = 2082;
        v30 = backtrace_string;
        v23 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_44:
        _os_log_impl(&dword_181A37000, v18, v19, v23, buf, 0x16u);
      }

LABEL_45:
      free(backtrace_string);
      goto LABEL_55;
    }

    v18 = __nwlog_obj();
    v19 = type;
    if (!os_log_type_enabled(v18, type))
    {
      goto LABEL_55;
    }

    *buf = 136446210;
    v28 = "nw_protocol_shoes_remove_input_handler";
    v20 = "%{public}s called with null protocol";
LABEL_54:
    _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
LABEL_55:
    if (v17)
    {
      free(v17);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_shoes_remove_input_handler";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v17, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_55;
      }

      *buf = 136446210;
      v28 = "nw_protocol_shoes_remove_input_handler";
      v20 = "%{public}s called with null shoes";
      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_55;
      }

      *buf = 136446210;
      v28 = "nw_protocol_shoes_remove_input_handler";
      v20 = "%{public}s called with null shoes, backtrace limit exceeded";
      goto LABEL_54;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v24 = os_log_type_enabled(v18, type);
    if (backtrace_string)
    {
      if (v24)
      {
        *buf = 136446466;
        v28 = "nw_protocol_shoes_remove_input_handler";
        v29 = 2082;
        v30 = backtrace_string;
        v23 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    if (!v24)
    {
      goto LABEL_55;
    }

    *buf = 136446210;
    v28 = "nw_protocol_shoes_remove_input_handler";
    v20 = "%{public}s called with null shoes, no backtrace";
    goto LABEL_54;
  }

  if (a2->output_handler == a1)
  {
    v6 = a2;
    nw_protocol_set_output_handler(a2, 0);
    a2 = v6;
  }

  if (a1->default_input_handler != a2)
  {
    return 0;
  }

  output_handler = a1->output_handler;
  if (output_handler)
  {
    (output_handler->callbacks->remove_input_handler)();
  }

  v9 = handle[8];
  if (v9)
  {
    (*(*(v9 + 24) + 8))();
    handle[8] = 0;
  }

  v10 = handle[11];
  if (v10)
  {
    nw_path_flow_registration_close(v10);
    v11 = handle[11];
    if (v11)
    {
      os_release(v11);
      handle[11] = 0;
    }
  }

  v12 = handle[9];
  if (v12)
  {
    os_release(v12);
    handle[9] = 0;
  }

  v13 = handle[10];
  if (v13)
  {
    os_release(v13);
    handle[10] = 0;
  }

  v14 = handle[12];
  if (v14)
  {
    os_release(v14);
    handle[12] = 0;
  }

  v15 = handle[14];
  if (v15)
  {
    os_release(v15);
    handle[14] = 0;
  }

  nw_protocol_set_input_handler(a1, 0);
  if (a3)
  {
    a1->handle = 0;
    v16 = handle[15];
    if (v16)
    {
      xpc_release(v16);
    }

    free(handle);
  }

  return 1;
}

BOOL nw_protocol_shoes_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_protocol_shoes_add_input_handler";
    v25 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v25, &type, &v33))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v36 = "nw_protocol_shoes_add_input_handler";
        v28 = "%{public}s called with null protocol";
LABEL_56:
        _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
      }

LABEL_57:
      if (v25)
      {
        free(v25);
      }

      return 0;
    }

    if (v33 != 1)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v36 = "nw_protocol_shoes_add_input_handler";
        v28 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    backtrace_string = __nw_create_backtrace_string();
    v26 = __nwlog_obj();
    v27 = type;
    v30 = os_log_type_enabled(v26, type);
    if (!backtrace_string)
    {
      if (v30)
      {
        *buf = 136446210;
        v36 = "nw_protocol_shoes_add_input_handler";
        v28 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (v30)
    {
      *buf = 136446466;
      v36 = "nw_protocol_shoes_add_input_handler";
      v37 = 2082;
      v38 = backtrace_string;
      v31 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_46:
      _os_log_impl(&dword_181A37000, v26, v27, v31, buf, 0x16u);
    }

LABEL_47:
    free(backtrace_string);
    goto LABEL_57;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_protocol_shoes_add_input_handler";
    v25 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v25, &type, &v33))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v36 = "nw_protocol_shoes_add_input_handler";
        v28 = "%{public}s called with null shoes";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (v33 != 1)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        v36 = "nw_protocol_shoes_add_input_handler";
        v28 = "%{public}s called with null shoes, backtrace limit exceeded";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    backtrace_string = __nw_create_backtrace_string();
    v26 = __nwlog_obj();
    v27 = type;
    v32 = os_log_type_enabled(v26, type);
    if (!backtrace_string)
    {
      if (v32)
      {
        *buf = 136446210;
        v36 = "nw_protocol_shoes_add_input_handler";
        v28 = "%{public}s called with null shoes, no backtrace";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (v32)
    {
      *buf = 136446466;
      v36 = "nw_protocol_shoes_add_input_handler";
      v37 = 2082;
      v38 = backtrace_string;
      v31 = "%{public}s called with null shoes, dumping backtrace:%{public}s";
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v5 = (a2->callbacks->get_remote_endpoint)(a2);
  v6 = nw_endpoint_get_type(v5);
  if (v6 - 1 < 2)
  {
    nw_protocol_set_input_handler(a1, a2);
    *handle = *a2->flow_id;
    if (a2->output_handler)
    {
      if (v5)
      {
LABEL_6:
        v7 = os_retain(v5);
LABEL_11:
        handle[16] = 0;
        handle[13] = v7;
        tls = 1;
        *(handle + 158) = 1;
        handle[17] = handle + 16;
        v12 = (a1->default_input_handler->callbacks->get_parameters)();
        if ((nw_parameters_get_tfo(v12) & 1) == 0)
        {
          tls = nw_parameters_get_tls(v12);
        }

        *(handle + 243) = *(handle + 243) & 0xFE | tls;
        v13 = nw_parameters_copy_protocol_value(v12, a1, "UDP");
        if (v13)
        {
          v14 = v13;
          value = xpc_BOOL_get_value(v13);
          xpc_release(v14);
          if (value)
          {
            v16 = 2;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        *(handle + 243) = *(handle + 243) & 0xFD | v16;
        v17 = nw_parameters_copy_protocol_value(v12, a1, "UDPAssociateSupported");
        if (v17)
        {
          v18 = v17;
          v19 = xpc_BOOL_get_value(v17);
          xpc_release(v18);
          if (v19)
          {
            v20 = 4;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        *(handle + 243) = *(handle + 243) & 0xFB | v20;
        v21 = nw_parameters_copy_protocol_value(v12, a1, "FixedBundleID");
        if (v21)
        {
          v22 = v21;
          string_ptr = xpc_string_get_string_ptr(v21);
          xpc_release(v22);
          if (string_ptr)
          {
            handle[15] = xpc_string_create(string_ptr);
          }
        }

        v24 = nw_parameters_copy_protocol_options_legacy(v12, a1);
        nw_protocol_options_get_log_id_str(v24, handle + 159, 84);
        if (v24)
        {
          os_release(v24);
        }

        return 1;
      }
    }

    else
    {
      nw_protocol_set_output_handler(a2, handle);
      if (v5)
      {
        goto LABEL_6;
      }
    }

    v7 = 0;
    goto LABEL_11;
  }

  v8 = v6;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446722;
    v36 = "nw_protocol_shoes_add_input_handler";
    v37 = 2082;
    v38 = handle + 159;
    v39 = 1024;
    v40 = v8;
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s %{public}s protocol_shoes does not support endpoint type %u", buf, 0x1Cu);
    return 0;
  }

  return result;
}

void nw_shoes_metadata_enumerate_resolved_endpoints(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
    v6 = _os_log_send_and_compose_impl();
    v20 = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &v20, &v19))
    {
      goto LABEL_39;
    }

    if (v20 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v20;
      if (!os_log_type_enabled(v7, v20))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
      v9 = "%{public}s called with null metadata";
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = v20;
      v11 = os_log_type_enabled(v7, v20);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v6)
        {
          return;
        }

LABEL_40:
        free(v6);
        return;
      }

      if (!v11)
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
      v9 = "%{public}s called with null metadata, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = v20;
      if (!os_log_type_enabled(v7, v20))
      {
        goto LABEL_39;
      }

      *buf = 136446210;
      *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
      v9 = "%{public}s called with null metadata, backtrace limit exceeded";
    }

LABEL_38:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_39;
  }

  if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
  }

  if (nw_protocol_metadata_matches_definition(a1, nw_protocol_shoes_get_definition(void)::proxy_definition))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v22 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v16 = __nw_shoes_metadata_enumerate_resolved_endpoints_block_invoke;
    v17 = &unk_1E6A2B2C0;
    v18 = buf;
    handle = _nw_protocol_metadata_get_handle(a1);
    if (handle)
    {
      v16(v15, handle);
    }

    v5 = *(*&buf[8] + 24);
    if (v5)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = __nw_shoes_metadata_enumerate_resolved_endpoints_block_invoke_2;
      aBlock[3] = &unk_1E6A2B2E8;
      aBlock[4] = a2;
      _nw_array_apply(v5, aBlock);
    }

    _Block_object_dispose(buf, 8);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
  v6 = _os_log_send_and_compose_impl();
  v20 = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &v20, &v19))
  {
    goto LABEL_39;
  }

  if (v20 == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = v20;
    if (!os_log_type_enabled(v7, v20))
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
    v9 = "%{public}s metadata must be shoes";
    goto LABEL_38;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v8 = v20;
    if (!os_log_type_enabled(v7, v20))
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
    v9 = "%{public}s metadata must be shoes, backtrace limit exceeded";
    goto LABEL_38;
  }

  v12 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = v20;
  v13 = os_log_type_enabled(v7, v20);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_39;
    }

    *buf = 136446210;
    *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
    v9 = "%{public}s metadata must be shoes, no backtrace";
    goto LABEL_38;
  }

  if (v13)
  {
    *buf = 136446466;
    *&buf[4] = "nw_shoes_metadata_enumerate_resolved_endpoints";
    *&buf[12] = 2082;
    *&buf[14] = v12;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be shoes, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v6)
  {
    goto LABEL_40;
  }
}

uint64_t __nw_shoes_metadata_enumerate_resolved_endpoints_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = os_retain(v3);
  }

  return 1;
}

void nw_protocol_shoes_parameters_set_udp(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = xpc_BOOL_create(1);
    nw_parameters_set_protocol_value(a1, "UDP", v2);
    if (v2)
    {

      xpc_release(v2);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_shoes_parameters_set_udp";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v12 = "nw_protocol_shoes_parameters_set_udp";
      v6 = "%{public}s called with null protocol_parameters";
      goto LABEL_19;
    }

    if (v9 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v12 = "nw_protocol_shoes_parameters_set_udp";
      v6 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
      goto LABEL_19;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v8 = os_log_type_enabled(v4, type);
    if (backtrace_string)
    {
      if (v8)
      {
        *buf = 136446466;
        v12 = "nw_protocol_shoes_parameters_set_udp";
        v13 = 2082;
        v14 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_20;
    }

    if (v8)
    {
      *buf = 136446210;
      v12 = "nw_protocol_shoes_parameters_set_udp";
      v6 = "%{public}s called with null protocol_parameters, no backtrace";
LABEL_19:
      _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    }
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_protocol_shoes_parameters_set_udp_associate_supported(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = xpc_BOOL_create(1);
    nw_parameters_set_protocol_value(a1, "UDPAssociateSupported", v2);
    if (v2)
    {

      xpc_release(v2);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_shoes_parameters_set_udp_associate_supported";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v12 = "nw_protocol_shoes_parameters_set_udp_associate_supported";
      v6 = "%{public}s called with null protocol_parameters";
      goto LABEL_19;
    }

    if (v9 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v12 = "nw_protocol_shoes_parameters_set_udp_associate_supported";
      v6 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
      goto LABEL_19;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v8 = os_log_type_enabled(v4, type);
    if (backtrace_string)
    {
      if (v8)
      {
        *buf = 136446466;
        v12 = "nw_protocol_shoes_parameters_set_udp_associate_supported";
        v13 = 2082;
        v14 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_20;
    }

    if (v8)
    {
      *buf = 136446210;
      v12 = "nw_protocol_shoes_parameters_set_udp_associate_supported";
      v6 = "%{public}s called with null protocol_parameters, no backtrace";
LABEL_19:
      _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    }
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }
}

void nw_protocol_shoes_parameters_set_fixed_bundle_id(void *a1, char *string)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = xpc_string_create(string);
    nw_parameters_set_protocol_value(a1, "FixedBundleID", v3);
    if (v3)
    {

      xpc_release(v3);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_protocol_shoes_parameters_set_fixed_bundle_id";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v4, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v13 = "nw_protocol_shoes_parameters_set_fixed_bundle_id";
      v7 = "%{public}s called with null protocol_parameters";
      goto LABEL_19;
    }

    if (v10 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v13 = "nw_protocol_shoes_parameters_set_fixed_bundle_id";
      v7 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
      goto LABEL_19;
    }

    backtrace_string = __nw_create_backtrace_string();
    v5 = __nwlog_obj();
    v6 = type;
    v9 = os_log_type_enabled(v5, type);
    if (backtrace_string)
    {
      if (v9)
      {
        *buf = 136446466;
        v13 = "nw_protocol_shoes_parameters_set_fixed_bundle_id";
        v14 = 2082;
        v15 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_20;
    }

    if (v9)
    {
      *buf = 136446210;
      v13 = "nw_protocol_shoes_parameters_set_fixed_bundle_id";
      v7 = "%{public}s called with null protocol_parameters, no backtrace";
LABEL_19:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    }
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }
}

void *nw_protocol_shoes_copy_definition()
{
  if (nw_protocol_shoes_get_definition(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_shoes_get_definition(void)::onceToken, &__block_literal_global_33);
  }

  result = nw_protocol_shoes_get_definition(void)::proxy_definition;
  if (nw_protocol_shoes_get_definition(void)::proxy_definition)
  {

    return os_retain(result);
  }

  return result;
}

uint64_t nw_protocol_http_sniffing_create::$_2::__invoke(nw_protocol_http_sniffing_create::$_2 *this, nw_protocol *a2, nw_protocol *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v3 = *(this + 5);
    if (v3)
    {
      result = 0;
      *(v3 + 460) |= 2u;
      return result;
    }

    __nwlog_obj();
    *buf = 136446210;
    v16 = "operator()";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v16 = "operator()";
        v8 = "%{public}s called with null http_sniffing";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v13 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v16 = "operator()";
        v8 = "%{public}s called with null http_sniffing, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v12 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v16 = "operator()";
        v8 = "%{public}s called with null http_sniffing, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v16 = "operator()";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null http_sniffing, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v16 = "operator()";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v5, &type, &v13))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v13 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v16 = "operator()";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v10 = os_log_type_enabled(v6, type);
    if (!backtrace_string)
    {
      if (v10)
      {
        *buf = 136446210;
        v16 = "operator()";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v16 = "operator()";
      v17 = 2082;
      v18 = backtrace_string;
      v11 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v6, v7, v11, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v6 = __nwlog_obj();
  v7 = type;
  if (os_log_type_enabled(v6, type))
  {
    *buf = 136446210;
    v16 = "operator()";
    v8 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_32:
  if (v5)
  {
    free(v5);
  }

  return 1;
}
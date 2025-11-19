void nw_quic_set_local_max_streams_bidirectional(nw_protocol_metadata_t metadata, uint64_t max_streams_bidirectional)
{
  v3 = nw_quic_stream_copy_connection_metadata(metadata);
  nw_quic_connection_set_local_max_streams_bidirectional(v3, max_streams_bidirectional);
}

void nw_quic_connection_set_remote_max_streams_unidirectional(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_remote_max_streams_unidirectional(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_remote_max_streams_unidirectional";
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
        v14 = "nw_quic_connection_set_remote_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_set_remote_max_streams_unidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_remote_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_remote_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_connection_set_remote_max_streams_bidirectional(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_remote_max_streams_bidirectional(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_remote_max_streams_bidirectional";
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
        v14 = "nw_quic_connection_set_remote_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_set_remote_max_streams_bidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_remote_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_remote_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_connection_set_link_flow_controlled(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_link_flow_controlled(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_link_flow_controlled";
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
        v14 = "nw_quic_connection_set_link_flow_controlled";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_set_link_flow_controlled";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_link_flow_controlled";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_link_flow_controlled";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_link_flow_controlled(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_link_flow_controlled(v3, a2);
}

void nw_quic_connection_close_with_error(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_close_with_error(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_close_with_error";
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
        v14 = "nw_quic_connection_close_with_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_close_with_error";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_close_with_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_close_with_error";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_connection_inject_packet(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (nw_protocol_metadata_is_quic_connection(v5))
  {
    _nw_quic_connection_inject_packet(v5, a2, a3);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_quic_connection_inject_packet";
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
        v16 = "nw_quic_connection_inject_packet";
        v10 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v16 = "nw_quic_connection_inject_packet";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v12)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v16 = "nw_quic_connection_inject_packet";
        v10 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_quic_connection_inject_packet";
        v10 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

void nw_quic_connection_get_application_result(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_get_application_result(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_get_application_result";
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
        v15 = "nw_quic_connection_get_application_result";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v15 = "nw_quic_connection_get_application_result";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_connection_get_application_result";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_get_application_result";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

void nw_quic_set_keepalive_interval(nw_protocol_metadata_t metadata, uint16_t keepalive_interval)
{
  v3 = nw_quic_stream_copy_connection_metadata(metadata);
  nw_quic_connection_set_keepalive(v3, keepalive_interval);
}

void nw_quic_stream_set_usable_datagram_frame_size(void *a1, __int16 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_stream(v3))
  {
    _nw_quic_stream_set_usable_datagram_frame_size(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_usable_datagram_frame_size";
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
        v14 = "nw_quic_stream_set_usable_datagram_frame_size";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
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
            v14 = "nw_quic_stream_set_usable_datagram_frame_size";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_usable_datagram_frame_size";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_usable_datagram_frame_size";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_stream_set_datagram_variant_flow_id(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_stream(v3))
  {
    _nw_quic_stream_set_datagram_variant_flow_id(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_datagram_variant_flow_id";
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
        v14 = "nw_quic_stream_set_datagram_variant_flow_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
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
            v14 = "nw_quic_stream_set_datagram_variant_flow_id";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_datagram_variant_flow_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_datagram_variant_flow_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_stream_set_application_error_internal(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_stream(v3))
  {
    _nw_quic_stream_set_application_error_internal(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_application_error_internal";
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
        v14 = "nw_quic_stream_set_application_error_internal";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
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
            v14 = "nw_quic_stream_set_application_error_internal";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_application_error_internal";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_application_error_internal";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_connection_set_application_error_internal(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_application_error_internal(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_application_error_internal";
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
        v14 = "nw_quic_connection_set_application_error_internal";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_set_application_error_internal";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_application_error_internal";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_application_error_internal";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

LABEL_3:
}

void nw_quic_set_application_error_internal(void *a1, uint64_t a2)
{
  v3 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_application_error_internal(v3, a2);
}

void nw_quic_set_is_early_data_accepted(void *a1, char a2)
{
  v3 = nw_quic_stream_copy_connection_metadata(a1);
  nw_quic_connection_set_is_early_data_accepted(v3, a2);
}

void nw_quic_set_stream_has_datagram_variant_flow_id()
{
  v3 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136446210;
    v2 = "nw_quic_set_stream_has_datagram_variant_flow_id";
    _os_log_impl(&dword_181A37000, v0, OS_LOG_TYPE_ERROR, "%{public}s nw_quic_set_stream_has_datagram_variant_flow_id not supported", &v1, 0xCu);
  }
}

uint64_t nw_quic_connection_get_local_max_streams_unidirectional(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    local_max_streams_unidirectional = _nw_quic_connection_get_local_max_streams_unidirectional(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_local_max_streams_unidirectional";
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
        v14 = "nw_quic_connection_get_local_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_get_local_max_streams_unidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_local_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_local_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

  local_max_streams_unidirectional = 0;
LABEL_3:

  return local_max_streams_unidirectional;
}

uint64_t nw_quic_get_local_max_streams_unidirectional(nw_protocol_metadata_t metadata)
{
  v1 = nw_quic_stream_copy_connection_metadata(metadata);
  local_max_streams_unidirectional = nw_quic_connection_get_local_max_streams_unidirectional(v1);

  return local_max_streams_unidirectional;
}

uint64_t nw_quic_connection_get_local_max_streams_bidirectional(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    local_max_streams_bidirectional = _nw_quic_connection_get_local_max_streams_bidirectional(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_local_max_streams_bidirectional";
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
        v14 = "nw_quic_connection_get_local_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_get_local_max_streams_bidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_local_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_local_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

  local_max_streams_bidirectional = 0;
LABEL_3:

  return local_max_streams_bidirectional;
}

uint64_t nw_quic_get_local_max_streams_bidirectional(nw_protocol_metadata_t metadata)
{
  v1 = nw_quic_stream_copy_connection_metadata(metadata);
  local_max_streams_bidirectional = nw_quic_connection_get_local_max_streams_bidirectional(v1);

  return local_max_streams_bidirectional;
}

uint64_t nw_quic_connection_get_remote_max_streams_unidirectional(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    remote_max_streams_unidirectional = _nw_quic_connection_get_remote_max_streams_unidirectional(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_remote_max_streams_unidirectional";
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
        v14 = "nw_quic_connection_get_remote_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_get_remote_max_streams_unidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_remote_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_remote_max_streams_unidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

  remote_max_streams_unidirectional = 0;
LABEL_3:

  return remote_max_streams_unidirectional;
}

uint64_t nw_quic_get_remote_max_streams_unidirectional(nw_protocol_metadata_t metadata)
{
  v1 = nw_quic_stream_copy_connection_metadata(metadata);
  remote_max_streams_unidirectional = nw_quic_connection_get_remote_max_streams_unidirectional(v1);

  return remote_max_streams_unidirectional;
}

uint64_t nw_quic_connection_get_remote_max_streams_bidirectional(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    remote_max_streams_bidirectional = _nw_quic_connection_get_remote_max_streams_bidirectional(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_remote_max_streams_bidirectional";
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
        v14 = "nw_quic_connection_get_remote_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_get_remote_max_streams_bidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_remote_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_remote_max_streams_bidirectional";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

  remote_max_streams_bidirectional = 0;
LABEL_3:

  return remote_max_streams_bidirectional;
}

uint64_t nw_quic_get_remote_max_streams_bidirectional(nw_protocol_metadata_t metadata)
{
  v1 = nw_quic_stream_copy_connection_metadata(metadata);
  remote_max_streams_bidirectional = nw_quic_connection_get_remote_max_streams_bidirectional(v1);

  return remote_max_streams_bidirectional;
}

uint64_t nw_quic_get_peer_idle_timeout(void *a1)
{
  v1 = nw_quic_stream_copy_connection_metadata(a1);
  peer_idle_timeout = nw_quic_connection_get_peer_idle_timeout(v1);

  return peer_idle_timeout;
}

uint64_t nw_quic_connection_get_keepalive(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    keepalive = _nw_quic_connection_get_keepalive(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_keepalive";
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
        v14 = "nw_quic_connection_get_keepalive";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_get_keepalive";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_keepalive";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_keepalive";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

  keepalive = 0;
LABEL_3:

  return keepalive;
}

uint64_t nw_quic_get_keepalive(void *a1)
{
  v1 = nw_quic_stream_copy_connection_metadata(a1);
  keepalive = nw_quic_connection_get_keepalive(v1);

  return keepalive;
}

uint64_t nw_quic_get_remote_idle_timeout(nw_protocol_metadata_t metadata)
{
  v1 = nw_quic_stream_copy_connection_metadata(metadata);
  peer_idle_timeout = nw_quic_connection_get_peer_idle_timeout(v1);

  return peer_idle_timeout;
}

uint64_t nw_quic_stream_get_usable_datagram_frame_size(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_stream(v1))
  {
    usable_datagram_frame_size = _nw_quic_stream_get_usable_datagram_frame_size(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_get_usable_datagram_frame_size";
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
        v14 = "nw_quic_stream_get_usable_datagram_frame_size";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
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
            v14 = "nw_quic_stream_get_usable_datagram_frame_size";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_get_usable_datagram_frame_size";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_get_usable_datagram_frame_size";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
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

  usable_datagram_frame_size = 0;
LABEL_3:

  return usable_datagram_frame_size;
}

uint64_t nw_quic_stream_get_datagram_variant_flow_id(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_stream(v1))
  {
    datagram_variant_flow_id = _nw_quic_stream_get_datagram_variant_flow_id(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_get_datagram_variant_flow_id";
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
        v14 = "nw_quic_stream_get_datagram_variant_flow_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
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
            v14 = "nw_quic_stream_get_datagram_variant_flow_id";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_get_datagram_variant_flow_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_get_datagram_variant_flow_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
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

  datagram_variant_flow_id = 0;
LABEL_3:

  return datagram_variant_flow_id;
}

uint64_t nw_quic_get_application_error(nw_protocol_metadata_t metadata)
{
  v1 = nw_quic_stream_copy_connection_metadata(metadata);
  application_error = nw_quic_connection_get_application_error(v1);

  return application_error;
}

uint64_t nw_quic_stream_get_type(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_stream(v1))
  {
    v2 = _nw_quic_stream_get_type(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_get_type";
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
        v14 = "nw_quic_stream_get_type";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
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
            v14 = "nw_quic_stream_get_type";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_get_type";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_get_type";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
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

  v2 = 0;
LABEL_3:

  return v2;
}

uint64_t nw_quic_connection_get_is_early_data_accepted(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    is_early_data_accepted = _nw_quic_connection_get_is_early_data_accepted(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_is_early_data_accepted";
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
        v14 = "nw_quic_connection_get_is_early_data_accepted";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
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
            v14 = "nw_quic_connection_get_is_early_data_accepted";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_is_early_data_accepted";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_is_early_data_accepted";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
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

  is_early_data_accepted = 0;
LABEL_3:

  return is_early_data_accepted;
}

uint64_t nw_quic_get_is_early_data_accepted(void *a1)
{
  v1 = nw_quic_stream_copy_connection_metadata(a1);
  is_early_data_accepted = nw_quic_connection_get_is_early_data_accepted(v1);

  return is_early_data_accepted;
}

void nw_quic_stream_execute_locked(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_stream(v3))
  {
    _nw_quic_stream_execute_locked(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_stream_execute_locked";
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
        v15 = "nw_quic_stream_execute_locked";
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
            v15 = "nw_quic_stream_execute_locked";
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
        v15 = "nw_quic_stream_execute_locked";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_stream_execute_locked";
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

void nw_quic_set_application_error(nw_protocol_metadata_t metadata, uint64_t application_error, const char *reason)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = nw_quic_stream_copy_connection_metadata(metadata);
  v5 = v4;
  if (v4)
  {
    nw_quic_connection_set_application_error_internal(v4, application_error);
    v6 = v5;
    if (_nw_protocol_metadata_is_quic_stream(v6))
    {
      v7 = nw_quic_stream_copy_connection_metadata(v6);

      v6 = v7;
    }

    _nw_quic_connection_set_application_error_reason(v6);

    goto LABEL_5;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_quic_set_application_error";
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
        v18 = "nw_quic_set_application_error";
        v12 = "%{public}s called with null connection_metadata";
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
            v18 = "nw_quic_set_application_error";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null connection_metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v14)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v18 = "nw_quic_set_application_error";
        v12 = "%{public}s called with null connection_metadata, no backtrace";
        goto LABEL_19;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_set_application_error";
        v12 = "%{public}s called with null connection_metadata, backtrace limit exceeded";
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

LABEL_5:
}

void nw_quic_connection_set_application_error_reason(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v11 = v1;
    if (_nw_protocol_metadata_is_quic_stream(v1))
    {
      v2 = nw_quic_stream_copy_connection_metadata(v11);

      v3 = v2;
    }

    else
    {
      v3 = v11;
    }

    v12 = v3;
    _nw_quic_connection_set_application_error_reason(v3);

    return;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_quic_connection_set_application_error_reason";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v5, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v16 = "nw_quic_connection_set_application_error_reason";
        v8 = "%{public}s called with null metadata";
LABEL_21:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
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
            v16 = "nw_quic_connection_set_application_error_reason";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (!v10)
        {
          goto LABEL_22;
        }

        *buf = 136446210;
        v16 = "nw_quic_connection_set_application_error_reason";
        v8 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_21;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v16 = "nw_quic_connection_set_application_error_reason";
        v8 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_22:
  }

LABEL_23:
  if (v5)
  {
    free(v5);
  }
}

const char *__cdecl nw_quic_get_application_error_reason(nw_protocol_metadata_t metadata)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = metadata;
  v2 = nw_quic_stream_copy_connection_metadata(v1);
  if (v2)
  {
    application_error_reason = _nw_quic_get_application_error_reason(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_get_application_error_reason";
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
        v15 = "nw_quic_get_application_error_reason";
        v9 = "%{public}s called with null connection_metadata";
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
            v15 = "nw_quic_get_application_error_reason";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection_metadata, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_get_application_error_reason";
        v9 = "%{public}s called with null connection_metadata, no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_get_application_error_reason";
        v9 = "%{public}s called with null connection_metadata, backtrace limit exceeded";
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

  application_error_reason = 0;
LABEL_3:

  return application_error_reason;
}

uint64_t nw_qpod_set_secrets(void *a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a3;
  v10 = a4;
  if (nw_protocol_options_is_qpod(v8))
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __nw_qpod_set_secrets_block_invoke;
    v20[3] = &unk_1E6A30B70;
    v21 = v9;
    v22 = v10;
    v23 = a5;
    v11 = nw_protocol_options_access_handle(v8, v20);

    goto LABEL_3;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_qpod_set_secrets";
  v14 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v14, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v27 = "nw_qpod_set_secrets";
        v17 = "%{public}s called with null nw_protocol_options_is_qpod(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }
    }

    else
    {
      if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v16 = type;
        v19 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v27 = "nw_qpod_set_secrets";
            v28 = 2082;
            v29 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null nw_protocol_options_is_qpod(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v19)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v27 = "nw_qpod_set_secrets";
        v17 = "%{public}s called with null nw_protocol_options_is_qpod(options), no backtrace";
        goto LABEL_17;
      }

      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v27 = "nw_qpod_set_secrets";
        v17 = "%{public}s called with null nw_protocol_options_is_qpod(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v14)
  {
    free(v14);
  }

  v11 = 0;
LABEL_3:

  return v11;
}

uint64_t nw_protocol_options_is_qpod(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (nw_protocol_copy_qpod_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_qpod_definition_onceToken, &__block_literal_global_75);
    }

    v2 = nw_protocol_options_matches_definition(v1, nw_protocol_copy_qpod_definition_definition);
    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_options_is_qpod";
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
        v14 = "nw_protocol_options_is_qpod";
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
            v14 = "nw_protocol_options_is_qpod";
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
        v14 = "nw_protocol_options_is_qpod";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_19;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_options_is_qpod";
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

uint64_t __nw_qpod_set_secrets_block_invoke(uint64_t a1, id *location)
{
  v12 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v7 = __nwlog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136446466;
      v9 = "nw_qpod_set_secrets_block_invoke";
      v10 = 2048;
      v11 = location;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s setting secrets for options %p", &v8, 0x16u);
    }
  }

  objc_storeStrong(location, *(a1 + 32));
  if (*location)
  {
    objc_storeStrong(location + 1, *(a1 + 40));
    if (location[1])
    {
      *(location + 32) = *(a1 + 48);
      return 1;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446210;
      v9 = "nw_qpod_set_secrets_block_invoke";
      v6 = "%{public}s failed to create server secret";
      goto LABEL_9;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446210;
      v9 = "nw_qpod_set_secrets_block_invoke";
      v6 = "%{public}s failed to create client secret";
LABEL_9:
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, v6, &v8, 0xCu);
    }
  }

  return 0;
}

uint64_t qpod_options_deserialize(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!a2)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v34 = "qpod_options_deserialize";
    v24 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v24, type, &v32))
    {
LABEL_42:
      if (v24)
      {
        free(v24);
      }

      v6 = 0;
      goto LABEL_26;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        v34 = "qpod_options_deserialize";
        v27 = "%{public}s called with null serialized_buffer";
LABEL_40:
        _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
      }
    }

    else
    {
      if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type[0];
        v29 = os_log_type_enabled(v25, type[0]);
        if (backtrace_string)
        {
          if (v29)
          {
            *buf = 136446466;
            v34 = "qpod_options_deserialize";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null serialized_buffer, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_42;
        }

        if (!v29)
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v34 = "qpod_options_deserialize";
        v27 = "%{public}s called with null serialized_buffer, no backtrace";
        goto LABEL_40;
      }

      v25 = __nwlog_obj();
      v26 = type[0];
      if (os_log_type_enabled(v25, type[0]))
      {
        *buf = 136446210;
        v34 = "qpod_options_deserialize";
        v27 = "%{public}s called with null serialized_buffer, backtrace limit exceeded";
        goto LABEL_40;
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x38FAFA03uLL);
  if (v6)
  {
    goto LABEL_5;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v34 = "qpod_options_deserialize";
  v35 = 2048;
  v36 = 1;
  v37 = 2048;
  v38 = 40;
  v8 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v8);
  if (!result)
  {
    free(v8);
LABEL_5:
    aBlock[4] = a2 + a3;
    *type = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __qpod_options_deserialize_block_invoke;
    aBlock[3] = &__block_descriptor_40_e37___NSObject_OS_dispatch_data__16__0__8l;
    v10 = _Block_copy(aBlock);
    v11 = v10[2](v10, type);
    v12 = *v6;
    *v6 = v11;

    v13 = MEMORY[0x1E69E9668];
    if (*v6 == MEMORY[0x1E69E9668])
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v34 = "qpod_options_deserialize";
        v22 = "%{public}s failed to deserialize client_secret in qpod options";
        goto LABEL_23;
      }
    }

    else
    {
      v14 = v10[2](v10, type);
      v15 = v6[1];
      v6[1] = v14;

      if (v6[1] == v13)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v34 = "qpod_options_deserialize";
          v22 = "%{public}s failed to deserialize server_secret in qpod options";
          goto LABEL_23;
        }
      }

      else
      {
        v16 = v10[2](v10, type);
        v17 = v6[2];
        v6[2] = v16;

        if (v6[2] == v13)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v34 = "qpod_options_deserialize";
            v22 = "%{public}s failed to deserialize scid in qpod options";
            goto LABEL_23;
          }
        }

        else
        {
          v18 = v10[2](v10, type);
          v19 = v6[3];
          v6[3] = v18;

          if (v6[3] == v13)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v21 = gLogObj;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v34 = "qpod_options_deserialize";
              v22 = "%{public}s failed to deserialize dcid in qpod options";
              goto LABEL_23;
            }
          }

          else
          {
            v20 = *type + 1;
            if (*type + 1 <= (a2 + a3))
            {
              *(v6 + 32) = **type;
              *type = v20;
              if (v20 - a2 == a3)
              {
LABEL_25:

LABEL_26:
                return v6;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v21 = gLogObj;
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446210;
                v34 = "qpod_options_deserialize";
                v22 = "%{public}s failed to deserialize qpod options";
                goto LABEL_23;
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v21 = gLogObj;
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446210;
                v34 = "qpod_options_deserialize";
                v22 = "%{public}s failed to deserialize is_server in qpod options";
LABEL_23:
                _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
              }
            }
          }
        }
      }
    }

    free(v6);
    v6 = 0;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

dispatch_data_t __qpod_options_deserialize_block_invoke(uint64_t a1, void *a2)
{
  v3 = (*a2 + 1);
  if (v3 <= *(a1 + 32) && (v4 = **a2, *a2 = v3, v3 + v4 <= *(a1 + 32)))
  {
    v5 = dispatch_data_create(v3, v4, 0, 0);
    *a2 += v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E9668];
    v6 = MEMORY[0x1E69E9668];
  }

  return v5;
}

uint64_t qpod_options_serialize(void *a1, uint64_t a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!a2)
  {
    v35 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "qpod_options_serialize";
    v15 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v46) = 0;
    if (!__nwlog_fault(v15, type, &v46))
    {
      goto LABEL_80;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v38 = "%{public}s called with null existing_handle";
LABEL_78:
        _os_log_impl(&dword_181A37000, v36, v37, v38, applier, 0xCu);
      }

LABEL_79:

LABEL_80:
      if (!v15)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    if (v46 != 1)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v38 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    backtrace_string = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v37 = type[0];
    v43 = os_log_type_enabled(v36, type[0]);
    if (!backtrace_string)
    {
      if (v43)
      {
        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v38 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (v43)
    {
      *applier = 136446466;
      *&applier[4] = "qpod_options_serialize";
      *&applier[12] = 2082;
      *&applier[14] = backtrace_string;
      v44 = "%{public}s called with null existing_handle, dumping backtrace:%{public}s";
LABEL_68:
      _os_log_impl(&dword_181A37000, v36, v37, v44, applier, 0x16u);
    }

LABEL_69:

    free(backtrace_string);
    goto LABEL_80;
  }

  if (!a3)
  {
    v39 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "qpod_options_serialize";
    v15 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v46) = 0;
    if (!__nwlog_fault(v15, type, &v46))
    {
      goto LABEL_80;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v38 = "%{public}s called with null out_length";
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (v46 != 1)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v38 = "%{public}s called with null out_length, backtrace limit exceeded";
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    backtrace_string = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v37 = type[0];
    v45 = os_log_type_enabled(v36, type[0]);
    if (!backtrace_string)
    {
      if (v45)
      {
        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v38 = "%{public}s called with null out_length, no backtrace";
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (v45)
    {
      *applier = 136446466;
      *&applier[4] = "qpod_options_serialize";
      *&applier[12] = 2082;
      *&applier[14] = backtrace_string;
      v44 = "%{public}s called with null out_length, dumping backtrace:%{public}s";
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  if (*a2)
  {
    size = dispatch_data_get_size(*a2);
    v7 = *(a2 + 8);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    size = 0;
    v7 = *(a2 + 8);
    if (v7)
    {
LABEL_5:
      v8 = dispatch_data_get_size(v7);
      v9 = *(a2 + 16);
      if (v9)
      {
        goto LABEL_6;
      }

LABEL_10:
      v10 = 0;
      v11 = *(a2 + 24);
      if (v11)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  v8 = 0;
  v9 = *(a2 + 16);
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_6:
  v10 = dispatch_data_get_size(v9);
  v11 = *(a2 + 24);
  if (v11)
  {
LABEL_7:
    v12 = dispatch_data_get_size(v11);
    goto LABEL_12;
  }

LABEL_11:
  v12 = 0;
LABEL_12:
  v13 = size + v8 + v10 + v12;
  v14 = v13 + 5;
  *a3 = v13 + 5;
  if (v13 == -5)
  {
    v40 = __nwlog_obj();
    os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    *applier = 136446210;
    *&applier[4] = "qpod_options_serialize";
    v41 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v41);
    if (result)
    {
      goto LABEL_82;
    }

    free(v41);
  }

  v15 = malloc_type_calloc(1uLL, v14, 0x16BCEDB6uLL);
  if (v15)
  {
    if (size > 0xFF)
    {
      goto LABEL_25;
    }

LABEL_18:
    v19 = *a2;
    *v15 = size;
    *type = 0;
    v51 = type;
    v52 = 0x2000000000;
    v53 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2000000000;
    v49 = v15 + 1;
    if (v19)
    {
      *applier = MEMORY[0x1E69E9820];
      *&applier[8] = 0x40000000;
      *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
      v55 = &unk_1E6A34348;
      v57 = &v46;
      v58 = size;
      v56 = type;
      dispatch_data_apply(v19, applier);
      v20 = *(v51 + 3);
    }

    else
    {
      v20 = 0;
    }

    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(type, 8);
    if (v20 != size)
    {
LABEL_25:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s failed to serialize client_secret in qpod options", applier, 0xCu);
      }

      if (!v15)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    if (v8 <= 0xFF && ((v21 = *(a2 + 8), v22 = &v15[size + 1], *v22 = v8, v23 = v22 + 1, *type = 0, v51 = type, v52 = 0x2000000000, v53 = 0, v46 = 0, v47 = &v46, v48 = 0x2000000000, v49 = v23, !v21) ? (v24 = 0) : (*applier = MEMORY[0x1E69E9820], *&applier[8] = 0x40000000, *&applier[16] = __nw_dispatch_data_copyout_block_invoke, v55 = &unk_1E6A34348, v57 = &v46, v58 = v8, v56 = type, dispatch_data_apply(v21, applier), v24 = *(v51 + 3)), _Block_object_dispose(&v46, 8), _Block_object_dispose(type, 8), v24 == v8))
    {
      if (v10 <= 0xFF && ((v26 = *(a2 + 16), v27 = &v23[v8], *v27 = v10, v28 = v27 + 1, *type = 0, v51 = type, v52 = 0x2000000000, v53 = 0, v46 = 0, v47 = &v46, v48 = 0x2000000000, v49 = v28, !v26) ? (v29 = 0) : (*applier = MEMORY[0x1E69E9820], *&applier[8] = 0x40000000, *&applier[16] = __nw_dispatch_data_copyout_block_invoke, v55 = &unk_1E6A34348, v57 = &v46, v58 = v10, v56 = type, dispatch_data_apply(v26, applier), v29 = *(v51 + 3)), _Block_object_dispose(&v46, 8), _Block_object_dispose(type, 8), v29 == v10))
      {
        if (v12 <= 0xFF)
        {
          v32 = *(a2 + 24);
          v33 = &v28[v10];
          *v33 = v12;
          v34 = (v33 + 1);
          if (nw_dispatch_data_copyout(v32, v34, v12) == v12)
          {
            *(v34 + v12) = *(a2 + 32);
            goto LABEL_40;
          }
        }

        v30 = __nwlog_obj();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v31 = "%{public}s failed to serialize dcid in qpod options";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

        *applier = 136446210;
        *&applier[4] = "qpod_options_serialize";
        v31 = "%{public}s failed to serialize scid in qpod options";
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
LABEL_37:

LABEL_38:
        free(v15);
LABEL_39:
        v15 = 0;
LABEL_40:

        return v15;
      }

      *applier = 136446210;
      *&applier[4] = "qpod_options_serialize";
      v31 = "%{public}s failed to serialize server_secret in qpod options";
    }

    _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, v31, applier, 0xCu);
    goto LABEL_37;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  *applier = 136446722;
  *&applier[4] = "qpod_options_serialize";
  *&applier[12] = 2048;
  *&applier[14] = 1;
  *&applier[22] = 2048;
  v55 = v14;
  v17 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v17);
  if (!result)
  {
    free(v17);
    if (size > 0xFF)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

LABEL_82:
  __break(1u);
  return result;
}

BOOL qpod_options_is_equal(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (a2 && a3)
  {
    v6 = nw_dispatch_data_is_equal(*a2, *a3) && nw_dispatch_data_is_equal(*(a2 + 8), *(a3 + 8)) && nw_dispatch_data_is_equal(*(a2 + 16), *(a3 + 16)) && nw_dispatch_data_is_equal(*(a2 + 24), *(a3 + 24)) && *(a2 + 32) == *(a3 + 32);
    if (gLogDatapath == 1)
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = 136446978;
        v10 = "qpod_options_is_equal";
        v11 = 2048;
        v12 = a2;
        v13 = 2048;
        v14 = a3;
        v15 = 1024;
        v16 = v6;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s comparing options %p and %p -> %i", &v9, 0x26u);
      }
    }
  }

  else
  {
    v6 = a2 == a3;
  }

  return v6;
}

void qpod_options_deallocate(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v7 = __nwlog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136446466;
      v9 = "qpod_options_deallocate";
      v10 = 2048;
      v11 = a2;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s deallocating options %p", &v8, 0x16u);
    }
  }

  v3 = *a2;
  *a2 = 0;

  v4 = a2[1];
  a2[1] = 0;

  v5 = a2[2];
  a2[2] = 0;

  v6 = a2[3];
  a2[3] = 0;

  free(a2);
}

uint64_t qpod_options_copy(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v19 = "qpod_options_copy";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v9, &type, &v16))
    {
LABEL_25:
      if (v9)
      {
        free(v9);
      }

      v4 = 0;
      goto LABEL_6;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "qpod_options_copy";
        v12 = "%{public}s called with null existing_handle";
LABEL_23:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else
    {
      if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type;
        v15 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v19 = "qpod_options_copy";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null existing_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v15)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v19 = "qpod_options_copy";
        v12 = "%{public}s called with null existing_handle, no backtrace";
        goto LABEL_23;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "qpod_options_copy";
        v12 = "%{public}s called with null existing_handle, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x5D4C3B3EuLL);
  if (v4)
  {
    goto LABEL_5;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v19 = "qpod_options_copy";
  v20 = 2048;
  v21 = 1;
  v22 = 2048;
  v23 = 40;
  v6 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v6);
  if (!result)
  {
    free(v6);
LABEL_5:
    objc_storeStrong(v4, *a2);
    objc_storeStrong(v4 + 1, *(a2 + 8));
    objc_storeStrong(v4 + 2, *(a2 + 16));
    objc_storeStrong(v4 + 3, *(a2 + 24));
    *(v4 + 32) = *(a2 + 32);
    if (gLogDatapath == 1)
    {
      v13 = __nwlog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v19 = "qpod_options_copy";
        v20 = 2048;
        v21 = a2;
        v22 = 2048;
        v23 = v4;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s copying options %p -> %p", buf, 0x20u);
      }
    }

LABEL_6:

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t qpod_options_allocate(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x3A383438uLL);
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v8 = "qpod_options_allocate";
    v9 = 2048;
    v10 = 1;
    v11 = 2048;
    v12 = 40;
    v4 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v4);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v4);
  }

  if (gLogDatapath == 1)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v8 = "qpod_options_allocate";
      v9 = 2048;
      v10 = v2;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s allocating options %p", buf, 0x16u);
    }
  }

  return v2;
}

uint64_t __nw_protocol_copy_qpod_definition_block_invoke_77(uint64_t a1, void *a2)
{
  v2 = a2;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v3 = nw_framer_copy_options(v2);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __nw_protocol_copy_qpod_definition_block_invoke_2;
  v15[3] = &unk_1E6A3A880;
  v4 = v2;
  v16 = v4;
  v17 = v18;
  nw_protocol_options_access_handle(v3, v15);
  input_handler[0] = MEMORY[0x1E69E9820];
  input_handler[1] = 3221225472;
  input_handler[2] = __nw_protocol_copy_qpod_definition_block_invoke_83;
  input_handler[3] = &unk_1E6A30C30;
  v5 = v4;
  v13 = v5;
  v14 = v18;
  nw_framer_set_input_handler(v5, input_handler);
  output_handler[0] = MEMORY[0x1E69E9820];
  output_handler[1] = 3221225472;
  output_handler[2] = __nw_protocol_copy_qpod_definition_block_invoke_4;
  output_handler[3] = &unk_1E6A30C80;
  v6 = v5;
  v10 = v6;
  v11 = v18;
  nw_framer_set_output_handler(v6, output_handler);
  cleanup_handler[0] = MEMORY[0x1E69E9820];
  cleanup_handler[1] = 3221225472;
  cleanup_handler[2] = __nw_protocol_copy_qpod_definition_block_invoke_3_92;
  cleanup_handler[3] = &unk_1E6A30CA8;
  cleanup_handler[4] = v18;
  nw_framer_set_cleanup_handler(v6, cleanup_handler);
  nw_framer_set_stop_handler(v6, &__block_literal_global_97);

  _Block_object_dispose(v18, 8);
  return 1;
}

uint64_t __nw_protocol_copy_qpod_definition_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v14 = a2;
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 32);
      if (*(v14 + 32))
      {
        v17 = "server";
      }

      else
      {
        v17 = "client";
      }

      v18 = 136446978;
      v19 = "nw_protocol_copy_qpod_definition_block_invoke_2";
      v20 = 2048;
      v21 = v16;
      v22 = 2080;
      v23 = v17;
      v24 = 2048;
      v25 = v14;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s created framer %p for %s with options %p", &v18, 0x2Au);
    }

    a2 = v14;
  }

  v3 = *(a2 + 24);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 32);
  v7 = *(a2 + 16);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (qpod_conn_create_override)
  {
    override = qpod_conn_create_override(v7, v8, v9, v10, v6);
  }

  else
  {
    if (!MEMORY[0x1EEE98820])
    {
      v12 = 0;
      goto LABEL_7;
    }

    override = qpod_conn_create();
  }

  v12 = override;
LABEL_7:

  *(*(*(a1 + 40) + 8) + 24) = v12;
  return 1;
}

uint64_t __nw_protocol_copy_qpod_definition_block_invoke_83(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (gLogDatapath == 1)
  {
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      *buf = 136446466;
      v12 = "nw_protocol_copy_qpod_definition_block_invoke";
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s handling input for framer %p", buf, 0x16u);
    }
  }

  parse[0] = MEMORY[0x1E69E9820];
  parse[1] = 3221225472;
  parse[2] = __nw_protocol_copy_qpod_definition_block_invoke_84;
  parse[3] = &unk_1E6A30C08;
  v8 = *(a1 + 32);
  v4 = v8;
  v10 = v8;
  nw_framer_parse_input(v3, 0, 0x7D0uLL, 0, parse);

  return 0;
}

void __nw_protocol_copy_qpod_definition_block_invoke_4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (gLogDatapath == 1)
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      *buf = 136446466;
      v11 = "nw_protocol_copy_qpod_definition_block_invoke_4";
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s handling output for framer %p", buf, 0x16u);
    }
  }

  parse[0] = MEMORY[0x1E69E9820];
  parse[1] = 3221225472;
  parse[2] = __nw_protocol_copy_qpod_definition_block_invoke_89;
  parse[3] = &unk_1E6A30C08;
  v7 = *(a1 + 32);
  v4 = v7;
  v9 = v7;
  nw_framer_parse_output(v3, 0, 0x7D0uLL, 0, parse);
}

void __nw_protocol_copy_qpod_definition_block_invoke_3_92(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (gLogDatapath == 1)
  {
    v4 = __nwlog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136446466;
      v6 = "nw_protocol_copy_qpod_definition_block_invoke_3";
      v7 = 2048;
      v8 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s cleaning up framer %p", &v5, 0x16u);
    }
  }

  if (qpod_conn_free_override)
  {
    qpod_conn_free_override(*(*(*(a1 + 32) + 8) + 24));
  }

  else if (MEMORY[0x1EEE98838])
  {
    qpod_conn_free();
  }
}

uint64_t __nw_protocol_copy_qpod_definition_block_invoke_94(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (gLogDatapath == 1)
  {
    v4 = v2;
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136446466;
      v7 = "nw_protocol_copy_qpod_definition_block_invoke";
      v8 = 2048;
      v9 = v4;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s stopping framer %p", &v6, 0x16u);
    }

    v2 = v4;
  }

  return 1;
}

uint64_t __nw_protocol_copy_qpod_definition_block_invoke_89(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __nw_protocol_copy_qpod_definition_block_invoke_2_90;
  v8[3] = &unk_1E6A30C58;
  v9 = *(a1 + 32);
  v6 = v8;
  if (qpod_conn_encode_datagram_override)
  {
    qpod_conn_encode_datagram_override(v5, a2, a3, v6);
  }

  else if (MEMORY[0x1EEE98830])
  {
    qpod_conn_encode_datagram();
  }

  return a3;
}

uint64_t __nw_protocol_copy_qpod_definition_block_invoke_84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __nw_protocol_copy_qpod_definition_block_invoke_2_85;
  v12[3] = &unk_1E6A30BE0;
  v15 = a2;
  v13 = *(a1 + 32);
  v14 = &v16;
  v7 = v12;
  if (qpod_conn_decode_datagram_override)
  {
    qpod_conn_decode_datagram_override(v6, a2, a3, v7);
  }

  else if (MEMORY[0x1EEE98828])
  {
    qpod_conn_decode_datagram();
  }

  if ((v17[3] & 1) == 0)
  {
    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __nw_protocol_copy_qpod_definition_block_invoke_3;
    v10[3] = &unk_1E6A3D868;
    v11 = v8;
    nw_framer_async(v11, v10);
  }

  _Block_object_dispose(&v16, 8);
  return a3;
}

void sub_18257A39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_protocol_copy_qpod_definition_block_invoke_2_85(uint64_t a1, const uint8_t *a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  if (a3 == 0xFFFF && *(a1 + 48) == a2)
  {
    v9 = *(a1 + 32);

    nw_framer_mark_failed_with_error(v9, 54);
  }

  else
  {
    v7 = a3;
    v8 = nw_framer_message_create(*(a1 + 32));
    nw_framer_deliver_input(v3, a2, v7, v8, 1);

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t nw_qpod_setup_secrets(void *a1, void *a2, uint64_t a3, char a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  if (nw_protocol_options_is_qpod(v7))
  {
    if (_nw_protocol_metadata_is_quic(v8))
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_qpod_setup_secrets_block_invoke;
      v21[3] = &unk_1E6A30B98;
      v23 = a3;
      v22 = v8;
      v24 = a4;
      v9 = nw_protocol_options_access_handle(v7, v21);

      goto LABEL_4;
    }

    v16 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_qpod_setup_secrets";
    v12 = _os_log_send_and_compose_impl();

    v26 = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v12, &v26, &v25))
    {
      if (v26 == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = v26;
        if (os_log_type_enabled(v13, v26))
        {
          *buf = 136446210;
          v28 = "nw_qpod_setup_secrets";
          v15 = "%{public}s called with null nw_protocol_metadata_is_quic(quic_metadata)";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v25 != 1)
      {
        v13 = __nwlog_obj();
        v14 = v26;
        if (os_log_type_enabled(v13, v26))
        {
          *buf = 136446210;
          v28 = "nw_qpod_setup_secrets";
          v15 = "%{public}s called with null nw_protocol_metadata_is_quic(quic_metadata), backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = v26;
      v20 = os_log_type_enabled(v13, v26);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v28 = "nw_qpod_setup_secrets";
          v15 = "%{public}s called with null nw_protocol_metadata_is_quic(quic_metadata), no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v20)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v28 = "nw_qpod_setup_secrets";
      v29 = 2082;
      v30 = backtrace_string;
      v19 = "%{public}s called with null nw_protocol_metadata_is_quic(quic_metadata), dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v13, v14, v19, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_qpod_setup_secrets";
    v12 = _os_log_send_and_compose_impl();

    v26 = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v12, &v26, &v25))
    {
      if (v26 == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = v26;
        if (os_log_type_enabled(v13, v26))
        {
          *buf = 136446210;
          v28 = "nw_qpod_setup_secrets";
          v15 = "%{public}s called with null nw_protocol_options_is_qpod(options)";
LABEL_31:
          _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v25 != 1)
      {
        v13 = __nwlog_obj();
        v14 = v26;
        if (os_log_type_enabled(v13, v26))
        {
          *buf = 136446210;
          v28 = "nw_qpod_setup_secrets";
          v15 = "%{public}s called with null nw_protocol_options_is_qpod(options), backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = v26;
      v18 = os_log_type_enabled(v13, v26);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v28 = "nw_qpod_setup_secrets";
          v15 = "%{public}s called with null nw_protocol_options_is_qpod(options), no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v18)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v28 = "nw_qpod_setup_secrets";
      v29 = 2082;
      v30 = backtrace_string;
      v19 = "%{public}s called with null nw_protocol_options_is_qpod(options), dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v12)
  {
    free(v12);
  }

  v9 = 0;
LABEL_4:

  return v9;
}

uint64_t __nw_qpod_setup_secrets_block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v17 = __nwlog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v23 = "nw_qpod_setup_secrets_block_invoke";
      v24 = 2048;
      v25 = a2;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s setting up secrets for options %p", buf, 0x16u);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
LABEL_3:
      v5 = snprintf(__str, 0x10uLL, "%s client", v4);
      v6 = snprintf(label, 0x10uLL, "%s server", *(a1 + 40));
      if ((v6 | v5) >= 0x10)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v14 = *(a1 + 40);
          *buf = 136446466;
          v23 = "nw_qpod_setup_secrets_block_invoke";
          v24 = 2080;
          v25 = v14;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s identifier %s is too long", buf, 0x16u);
        }

        goto LABEL_15;
      }

      v7 = v6;
      v8 = nw_quic_copy_sec_protocol_metadata(*(a1 + 32));
      secret = sec_protocol_metadata_create_secret(v8, v5, __str, 0x20uLL);
      v10 = *a2;
      *a2 = secret;

      if (*a2)
      {
        v11 = sec_protocol_metadata_create_secret(v8, v7, label, 0x20uLL);
        v12 = *(a2 + 8);
        *(a2 + 8) = v11;

        if (*(a2 + 8))
        {
          *(a2 + 32) = *(a1 + 48);
          v13 = 1;
LABEL_16:

          return v13;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        *buf = 136446210;
        v23 = "nw_qpod_setup_secrets_block_invoke";
        v16 = "%{public}s failed to create server secret";
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
LABEL_14:

LABEL_15:
          v13 = 0;
          goto LABEL_16;
        }

        *buf = 136446210;
        v23 = "nw_qpod_setup_secrets_block_invoke";
        v16 = "%{public}s failed to create client secret";
      }

      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
      goto LABEL_14;
    }
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v23 = "nw_qpod_setup_secrets_block_invoke";
    _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s missing identifier", buf, 0xCu);
  }

  return 0;
}

void nw_qpod_set_scid(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_options_is_qpod(v3))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_qpod_set_scid_block_invoke;
    v12[3] = &unk_1E6A3A950;
    v13 = v4;
    nw_protocol_options_access_handle(v3, v12);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_qpod_set_scid";
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
        v17 = "nw_qpod_set_scid";
        v9 = "%{public}s called with null nw_protocol_options_is_qpod(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
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
            v17 = "nw_qpod_set_scid";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_qpod(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v17 = "nw_qpod_set_scid";
        v9 = "%{public}s called with null nw_protocol_options_is_qpod(options), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_qpod_set_scid";
        v9 = "%{public}s called with null nw_protocol_options_is_qpod(options), backtrace limit exceeded";
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

void nw_qpod_set_dcid(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_options_is_qpod(v3))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __nw_qpod_set_dcid_block_invoke;
    v12[3] = &unk_1E6A3A950;
    v13 = v4;
    nw_protocol_options_access_handle(v3, v12);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_qpod_set_dcid";
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
        v17 = "nw_qpod_set_dcid";
        v9 = "%{public}s called with null nw_protocol_options_is_qpod(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v14 == 1)
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
            v17 = "nw_qpod_set_dcid";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_qpod(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v17 = "nw_qpod_set_dcid";
        v9 = "%{public}s called with null nw_protocol_options_is_qpod(options), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_qpod_set_dcid";
        v9 = "%{public}s called with null nw_protocol_options_is_qpod(options), backtrace limit exceeded";
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

id nw_protocol_copy_qpod_definition()
{
  if (nw_protocol_copy_qpod_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_qpod_definition_onceToken, &__block_literal_global_75);
  }

  v1 = nw_protocol_copy_qpod_definition_definition;

  return v1;
}

nw_protocol_options_t nw_qpod_create_options()
{
  if (nw_protocol_copy_qpod_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_qpod_definition_onceToken, &__block_literal_global_75);
  }

  v1 = nw_protocol_copy_qpod_definition_definition;

  return nw_framer_create_options(v1);
}

id nw_parameters_create_qpod(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = _nw_parameters_create();
    v3 = v2;
    if (v2)
    {
      _nw_parameters_set_data_mode(v2, 1);
      if (nw_protocol_copy_qpod_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_qpod_definition_onceToken, &__block_literal_global_75);
      }

      options = nw_framer_create_options(nw_protocol_copy_qpod_definition_definition);
      if (options)
      {
        v5 = _nw_parameters_copy_default_protocol_stack(v3);
        nw_protocol_stack_append_application_protocol(v5, options);
        if (v1 != &__block_literal_global_2)
        {
          v1[2](v1, options);
        }

        v6 = v3;

LABEL_44:
        goto LABEL_45;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      *buf = 136446210;
      v38 = "nw_parameters_create_qpod";
      v13 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v35 = 0;
      if (!__nwlog_fault(v13, &type, &v35))
      {
LABEL_41:
        if (v13)
        {
          free(v13);
        }

        v6 = 0;
        goto LABEL_44;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v38 = "nw_parameters_create_qpod";
          v16 = "%{public}s nw_framer_create_options failed";
LABEL_38:
          v25 = v14;
          v26 = v15;
LABEL_39:
          _os_log_impl(&dword_181A37000, v25, v26, v16, buf, 0xCu);
        }
      }

      else
      {
        if (v35 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v21 = type;
          v22 = os_log_type_enabled(v14, type);
          if (backtrace_string)
          {
            if (v22)
            {
              *buf = 136446466;
              v38 = "nw_parameters_create_qpod";
              v39 = 2082;
              v40 = backtrace_string;
              _os_log_impl(&dword_181A37000, v14, v21, "%{public}s nw_framer_create_options failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_41;
          }

          if (!v22)
          {
            goto LABEL_40;
          }

          *buf = 136446210;
          v38 = "nw_parameters_create_qpod";
          v16 = "%{public}s nw_framer_create_options failed, no backtrace";
          v25 = v14;
          v26 = v21;
          goto LABEL_39;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v38 = "nw_parameters_create_qpod";
          v16 = "%{public}s nw_framer_create_options failed, backtrace limit exceeded";
          goto LABEL_38;
        }
      }

LABEL_40:

      goto LABEL_41;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v38 = "nw_parameters_create_qpod";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v8, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v38 = "nw_parameters_create_qpod";
        v11 = "%{public}s nw_parameters_create failed";
LABEL_32:
        v23 = v9;
        v24 = v10;
        goto LABEL_33;
      }

      if (v35 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v38 = "nw_parameters_create_qpod";
        v11 = "%{public}s nw_parameters_create failed, backtrace limit exceeded";
        goto LABEL_32;
      }

      v17 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v18 = type;
      v19 = os_log_type_enabled(v9, type);
      if (!v17)
      {
        if (!v19)
        {
LABEL_34:

          if (!v8)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        *buf = 136446210;
        v38 = "nw_parameters_create_qpod";
        v11 = "%{public}s nw_parameters_create failed, no backtrace";
        v23 = v9;
        v24 = v18;
LABEL_33:
        _os_log_impl(&dword_181A37000, v23, v24, v11, buf, 0xCu);
        goto LABEL_34;
      }

      if (v19)
      {
        *buf = 136446466;
        v38 = "nw_parameters_create_qpod";
        v39 = 2082;
        v40 = v17;
        _os_log_impl(&dword_181A37000, v9, v18, "%{public}s nw_parameters_create failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v17);
    }

    if (!v8)
    {
LABEL_24:
      v6 = 0;
LABEL_45:

      goto LABEL_46;
    }

LABEL_23:
    free(v8);
    goto LABEL_24;
  }

  v28 = __nwlog_obj();
  *buf = 136446210;
  v38 = "nw_parameters_create_qpod";
  v29 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (__nwlog_fault(v29, &type, &v35))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v38 = "nw_parameters_create_qpod";
        v32 = "%{public}s called with null configure_qpod";
LABEL_64:
        _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0xCu);
      }
    }

    else
    {
      if (v35 == 1)
      {
        v33 = __nw_create_backtrace_string();
        v30 = __nwlog_obj();
        v31 = type;
        v34 = os_log_type_enabled(v30, type);
        if (v33)
        {
          if (v34)
          {
            *buf = 136446466;
            v38 = "nw_parameters_create_qpod";
            v39 = 2082;
            v40 = v33;
            _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null configure_qpod, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v33);
          goto LABEL_66;
        }

        if (!v34)
        {
          goto LABEL_65;
        }

        *buf = 136446210;
        v38 = "nw_parameters_create_qpod";
        v32 = "%{public}s called with null configure_qpod, no backtrace";
        goto LABEL_64;
      }

      v30 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v38 = "nw_parameters_create_qpod";
        v32 = "%{public}s called with null configure_qpod, backtrace limit exceeded";
        goto LABEL_64;
      }
    }

LABEL_65:
  }

LABEL_66:
  if (v29)
  {
    free(v29);
  }

  v6 = 0;
LABEL_46:

  return v6;
}

NWConcrete_nw_quic_migration_info *nw_quic_migration_info_create()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(NWConcrete_nw_quic_migration_info);
  v1 = v0;
  if (!v0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v17 = "nw_quic_migration_info_create";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v4, &type, &v14))
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
        v17 = "nw_quic_migration_info_create";
        v7 = "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_quic_migration_info) alloc] init] failed";
LABEL_17:
        v12 = v5;
        v13 = v6;
        goto LABEL_18;
      }

      if (v14 != 1)
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
        v17 = "nw_quic_migration_info_create";
        v7 = "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_quic_migration_info) alloc] init] failed, backtrace limit exceeded";
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
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v17 = "nw_quic_migration_info_create";
        v7 = "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_quic_migration_info) alloc] init] failed, no backtrace";
        v12 = v5;
        v13 = v9;
LABEL_18:
        _os_log_impl(&dword_181A37000, v12, v13, v7, buf, 0xCu);
        goto LABEL_19;
      }

      if (v10)
      {
        *buf = 136446466;
        v17 = "nw_quic_migration_info_create";
        v18 = 2082;
        v19 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_quic_migration_info) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      goto LABEL_14;
    }

LABEL_13:
    free(v4);
    goto LABEL_14;
  }

  v2 = v0;
LABEL_14:

  return v1;
}

id nw_quic_migration_info_get_remote_endpoint(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 16);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_quic_migration_info_get_remote_endpoint";
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
        v13 = "nw_quic_migration_info_get_remote_endpoint";
        v7 = "%{public}s called with null migration_info";
LABEL_19:
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
            v13 = "nw_quic_migration_info_get_remote_endpoint";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null migration_info, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v9)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v13 = "nw_quic_migration_info_get_remote_endpoint";
        v7 = "%{public}s called with null migration_info, no backtrace";
        goto LABEL_19;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_quic_migration_info_get_remote_endpoint";
        v7 = "%{public}s called with null migration_info, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }

  v1 = 0;
LABEL_3:

  return v1;
}

void nw_quic_migration_info_set_remote_endpoint(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_quic_migration_info_set_remote_endpoint";
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
        v19 = "nw_quic_migration_info_set_remote_endpoint";
        v10 = "%{public}s called with null migration_info";
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
          v19 = "nw_quic_migration_info_set_remote_endpoint";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null migration_info, dumping backtrace:%{public}s", buf, 0x16u);
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
        v19 = "nw_quic_migration_info_set_remote_endpoint";
        v10 = "%{public}s called with null migration_info, no backtrace";
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
        v19 = "nw_quic_migration_info_set_remote_endpoint";
        v10 = "%{public}s called with null migration_info, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    objc_storeStrong(v3 + 2, a2);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_quic_migration_info_set_remote_endpoint";
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
      v19 = "nw_quic_migration_info_set_remote_endpoint";
      v10 = "%{public}s called with null endpoint";
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
      v19 = "nw_quic_migration_info_set_remote_endpoint";
      v10 = "%{public}s called with null endpoint, backtrace limit exceeded";
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
      v19 = "nw_quic_migration_info_set_remote_endpoint";
      v10 = "%{public}s called with null endpoint, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_quic_migration_info_set_remote_endpoint";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

id nw_quic_migration_info_get_interface(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 8);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_quic_migration_info_get_interface";
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
        v13 = "nw_quic_migration_info_get_interface";
        v7 = "%{public}s called with null migration_info";
LABEL_19:
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
            v13 = "nw_quic_migration_info_get_interface";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null migration_info, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v9)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v13 = "nw_quic_migration_info_get_interface";
        v7 = "%{public}s called with null migration_info, no backtrace";
        goto LABEL_19;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_quic_migration_info_get_interface";
        v7 = "%{public}s called with null migration_info, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }

  v1 = 0;
LABEL_3:

  return v1;
}

void nw_quic_migration_info_set_interface(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_quic_migration_info_set_interface";
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
        v19 = "nw_quic_migration_info_set_interface";
        v10 = "%{public}s called with null migration_info";
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
          v19 = "nw_quic_migration_info_set_interface";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null migration_info, dumping backtrace:%{public}s", buf, 0x16u);
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
        v19 = "nw_quic_migration_info_set_interface";
        v10 = "%{public}s called with null migration_info, no backtrace";
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
        v19 = "nw_quic_migration_info_set_interface";
        v10 = "%{public}s called with null migration_info, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    objc_storeStrong(v3 + 1, a2);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_quic_migration_info_set_interface";
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
      v19 = "nw_quic_migration_info_set_interface";
      v10 = "%{public}s called with null interface";
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
      v19 = "nw_quic_migration_info_set_interface";
      v10 = "%{public}s called with null interface, backtrace limit exceeded";
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
      v19 = "nw_quic_migration_info_set_interface";
      v10 = "%{public}s called with null interface, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_quic_migration_info_set_interface";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

NWConcrete_nw_quic_migration_info *nw_quic_migration_info_create_from_data(uint64_t a1, unint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v54 = __nwlog_obj();
    *buf = 136446210;
    v68 = "nw_quic_migration_info_create_from_data";
    v55 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (__nwlog_fault(v55, &type, &v65))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v56 = __nwlog_obj();
        v57 = type;
        if (os_log_type_enabled(v56, type))
        {
          *buf = 136446210;
          v68 = "nw_quic_migration_info_create_from_data";
          v58 = "%{public}s called with null migration_info_data";
LABEL_130:
          _os_log_impl(&dword_181A37000, v56, v57, v58, buf, 0xCu);
        }

LABEL_131:

        goto LABEL_132;
      }

      if (v65 != 1)
      {
        v56 = __nwlog_obj();
        v57 = type;
        if (os_log_type_enabled(v56, type))
        {
          *buf = 136446210;
          v68 = "nw_quic_migration_info_create_from_data";
          v58 = "%{public}s called with null migration_info_data, backtrace limit exceeded";
          goto LABEL_130;
        }

        goto LABEL_131;
      }

      backtrace_string = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v57 = type;
      v61 = os_log_type_enabled(v56, type);
      if (!backtrace_string)
      {
        if (v61)
        {
          *buf = 136446210;
          v68 = "nw_quic_migration_info_create_from_data";
          v58 = "%{public}s called with null migration_info_data, no backtrace";
          goto LABEL_130;
        }

        goto LABEL_131;
      }

      if (!v61)
      {
        goto LABEL_121;
      }

      *buf = 136446466;
      v68 = "nw_quic_migration_info_create_from_data";
      v69 = 2082;
      *v70 = backtrace_string;
      v62 = "%{public}s called with null migration_info_data, dumping backtrace:%{public}s";
      goto LABEL_120;
    }

LABEL_132:
    if (v55)
    {
      free(v55);
    }

    v35 = 0;
    goto LABEL_76;
  }

  if (!a2)
  {
    v59 = __nwlog_obj();
    *buf = 136446210;
    v68 = "nw_quic_migration_info_create_from_data";
    v55 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (__nwlog_fault(v55, &type, &v65))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v56 = __nwlog_obj();
        v57 = type;
        if (os_log_type_enabled(v56, type))
        {
          *buf = 136446210;
          v68 = "nw_quic_migration_info_create_from_data";
          v58 = "%{public}s called with null (data_length > 0)";
          goto LABEL_130;
        }

        goto LABEL_131;
      }

      if (v65 != 1)
      {
        v56 = __nwlog_obj();
        v57 = type;
        if (os_log_type_enabled(v56, type))
        {
          *buf = 136446210;
          v68 = "nw_quic_migration_info_create_from_data";
          v58 = "%{public}s called with null (data_length > 0), backtrace limit exceeded";
          goto LABEL_130;
        }

        goto LABEL_131;
      }

      backtrace_string = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v57 = type;
      v63 = os_log_type_enabled(v56, type);
      if (!backtrace_string)
      {
        if (v63)
        {
          *buf = 136446210;
          v68 = "nw_quic_migration_info_create_from_data";
          v58 = "%{public}s called with null (data_length > 0), no backtrace";
          goto LABEL_130;
        }

        goto LABEL_131;
      }

      if (!v63)
      {
        goto LABEL_121;
      }

      *buf = 136446466;
      v68 = "nw_quic_migration_info_create_from_data";
      v69 = 2082;
      *v70 = backtrace_string;
      v62 = "%{public}s called with null (data_length > 0), dumping backtrace:%{public}s";
LABEL_120:
      _os_log_impl(&dword_181A37000, v56, v57, v62, buf, 0x16u);
LABEL_121:

      free(backtrace_string);
      goto LABEL_132;
    }

    goto LABEL_132;
  }

  v4 = objc_alloc_init(NWConcrete_nw_quic_migration_info);
  v5 = v4;
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v68 = "nw_quic_migration_info_create_from_data";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (__nwlog_fault(v9, &type, &v65))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_71;
        }

        *buf = 136446210;
        v68 = "nw_quic_migration_info_create_from_data";
        v12 = "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path) nw_quic_migration_info] init] failed";
LABEL_69:
        v39 = v10;
        v40 = v11;
        goto LABEL_70;
      }

      if (v65 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_71;
        }

        *buf = 136446210;
        v68 = "nw_quic_migration_info_create_from_data";
        v12 = "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path) nw_quic_migration_info] init] failed, backtrace limit exceeded";
        goto LABEL_69;
      }

      v36 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v37 = type;
      v38 = os_log_type_enabled(v10, type);
      if (!v36)
      {
        if (!v38)
        {
LABEL_71:

          if (!v9)
          {
            goto LABEL_74;
          }

          goto LABEL_72;
        }

        *buf = 136446210;
        v68 = "nw_quic_migration_info_create_from_data";
        v12 = "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path) nw_quic_migration_info] init] failed, no backtrace";
        v39 = v10;
        v40 = v37;
LABEL_70:
        _os_log_impl(&dword_181A37000, v39, v40, v12, buf, 0xCu);
        goto LABEL_71;
      }

      if (v38)
      {
        *buf = 136446466;
        v68 = "nw_quic_migration_info_create_from_data";
        v69 = 2082;
        *v70 = v36;
        _os_log_impl(&dword_181A37000, v10, v37, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path) nw_quic_migration_info] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v36);
    }

    if (!v9)
    {
      goto LABEL_74;
    }

LABEL_72:
    v41 = v9;
    goto LABEL_73;
  }

  v6 = a2 - 5;
  if (a2 < 5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v68 = "nw_quic_migration_info_create_from_data";
      v69 = 2048;
      *v70 = a2;
      *&v70[8] = 2048;
      *&v70[10] = 5;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s invalid length for migration info %zu != %zu", buf, 0x20u);
    }

    goto LABEL_74;
  }

  if (a2 == 5)
  {
LABEL_59:
    v35 = v5;
    goto LABEL_75;
  }

  v13 = 0;
  v14 = &qword_1ED411000;
  v64 = v4;
  while (1)
  {
    v17 = *(a1 + v13);
    v18 = *(a1 + 1 + v13);
    if (!v18)
    {
      v27 = 0;
      goto LABEL_42;
    }

    if (v18 <= 0xFFFFFFF9 && a2 >= v18 + 5 && a2 - (v18 + 5) >= v13)
    {
      v27 = (a1 + 5 + v13);
      goto LABEL_42;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = v14[275];
    *buf = 136446978;
    v68 = "nw_necp_buffer_get_tlv_value";
    v69 = 2048;
    *v70 = v13;
    *&v70[8] = 2048;
    *&v70[10] = a2;
    *&v70[18] = 1024;
    *&v70[20] = v18;
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v65 = 0;
    if (__nwlog_fault(v21, &type, &v65))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = v14[275];
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446978;
          v68 = "nw_necp_buffer_get_tlv_value";
          v69 = 2048;
          *v70 = v13;
          *&v70[8] = 2048;
          *&v70[10] = a2;
          *&v70[18] = 1024;
          *&v70[20] = v18;
          v24 = v22;
          v25 = v23;
          v26 = "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u";
LABEL_36:
          _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0x26u);
        }
      }

      else
      {
        if (v65 == 1)
        {
          v28 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = v14[275];
          v30 = type;
          v31 = os_log_type_enabled(v29, type);
          if (v28)
          {
            if (v31)
            {
              *buf = 136447234;
              v68 = "nw_necp_buffer_get_tlv_value";
              v69 = 2048;
              *v70 = v13;
              *&v70[8] = 2048;
              *&v70[10] = a2;
              *&v70[18] = 1024;
              *&v70[20] = v18;
              v71 = 2082;
              v72 = v28;
              _os_log_impl(&dword_181A37000, v29, v30, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, dumping backtrace:%{public}s", buf, 0x30u);
            }

            free(v28);
            v5 = v64;
          }

          else
          {
            if (v31)
            {
              *buf = 136446978;
              v68 = "nw_necp_buffer_get_tlv_value";
              v69 = 2048;
              *v70 = v13;
              *&v70[8] = 2048;
              *&v70[10] = a2;
              *&v70[18] = 1024;
              *&v70[20] = v18;
              _os_log_impl(&dword_181A37000, v29, v30, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, no backtrace", buf, 0x26u);
            }

            v5 = v64;
          }

          goto LABEL_38;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = v14[275];
        v32 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446978;
          v68 = "nw_necp_buffer_get_tlv_value";
          v69 = 2048;
          *v70 = v13;
          *&v70[8] = 2048;
          *&v70[10] = a2;
          *&v70[18] = 1024;
          *&v70[20] = v18;
          v24 = v22;
          v25 = v32;
          v26 = "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, backtrace limit exceeded";
          goto LABEL_36;
        }
      }

LABEL_38:
      v14 = &qword_1ED411000;
    }

    if (v21)
    {
      free(v21);
    }

    v27 = 0;
    v6 = a2 - 5;
LABEL_42:
    v13 += v18 + 5;
    if (v13 > a2)
    {
      break;
    }

    if (v18)
    {
      v33 = v27 == 0;
    }

    else
    {
      v33 = 1;
    }

    if (!v33)
    {
      if (v17 == 2)
      {
        if (v18 >= 0x11)
        {
          v52 = __nwlog_obj();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v68 = "nw_quic_migration_info_create_from_data";
            v69 = 1024;
            *v70 = v18;
            v51 = "%{public}s received invalid size for interface name (%u)";
            goto LABEL_102;
          }

LABEL_103:

          goto LABEL_74;
        }

        v34 = _nw_interface_create_with_name(v27);
        interface = v5->interface;
        v5->interface = v34;
      }

      else if (v17 == 1)
      {
        if (v18 != 16 && v18 != 28)
        {
          v52 = __nwlog_obj();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v68 = "nw_quic_migration_info_create_from_data";
            v69 = 1024;
            *v70 = v18;
            v51 = "%{public}s received invalid size for remote endpoint (%u)";
LABEL_102:
            _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, v51, buf, 0x12u);
          }

          goto LABEL_103;
        }

        address = _nw_endpoint_create_address(v27);
        interface = v5->remote_endpoint;
        v5->remote_endpoint = address;
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        interface = v14[275];
        if (os_log_type_enabled(interface, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v68 = "nw_quic_migration_info_create_from_data";
          v69 = 1024;
          *v70 = v17;
          _os_log_impl(&dword_181A37000, interface, OS_LOG_TYPE_ERROR, "%{public}s received unknown TLV (type %d)", buf, 0x12u);
        }
      }
    }

    if (v13 >= v6)
    {
      goto LABEL_59;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v43 = v14[275];
  *buf = 136446978;
  v68 = "nw_quic_migration_info_create_from_data";
  v69 = 1024;
  *v70 = v18;
  *&v70[4] = 2048;
  *&v70[6] = v13;
  *&v70[14] = 2048;
  *&v70[16] = a2;
  v44 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v65 = 0;
  if (!__nwlog_fault(v44, &type, &v65))
  {
    goto LABEL_98;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v65 == 1)
    {
      v48 = v14;
      v49 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v45 = v48[275];
      v46 = type;
      v50 = os_log_type_enabled(v45, type);
      if (v49)
      {
        if (v50)
        {
          *buf = 136447234;
          v68 = "nw_quic_migration_info_create_from_data";
          v69 = 1024;
          *v70 = v18;
          *&v70[4] = 2048;
          *&v70[6] = v13;
          *&v70[14] = 2048;
          *&v70[16] = a2;
          v71 = 2082;
          v72 = v49;
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), dumping backtrace:%{public}s", buf, 0x30u);
        }

        free(v49);
        goto LABEL_98;
      }

      if (!v50)
      {
        goto LABEL_97;
      }

      *buf = 136446978;
      v68 = "nw_quic_migration_info_create_from_data";
      v69 = 1024;
      *v70 = v18;
      *&v70[4] = 2048;
      *&v70[6] = v13;
      *&v70[14] = 2048;
      *&v70[16] = a2;
      v47 = "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v45 = v14[275];
      v46 = type;
      if (!os_log_type_enabled(v45, type))
      {
        goto LABEL_97;
      }

      *buf = 136446978;
      v68 = "nw_quic_migration_info_create_from_data";
      v69 = 1024;
      *v70 = v18;
      *&v70[4] = 2048;
      *&v70[6] = v13;
      *&v70[14] = 2048;
      *&v70[16] = a2;
      v47 = "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), backtrace limit exceeded";
    }

LABEL_96:
    _os_log_impl(&dword_181A37000, v45, v46, v47, buf, 0x26u);
    goto LABEL_97;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v45 = v14[275];
  v46 = type;
  if (os_log_type_enabled(v45, type))
  {
    *buf = 136446978;
    v68 = "nw_quic_migration_info_create_from_data";
    v69 = 1024;
    *v70 = v18;
    *&v70[4] = 2048;
    *&v70[6] = v13;
    *&v70[14] = 2048;
    *&v70[16] = a2;
    v47 = "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu)";
    goto LABEL_96;
  }

LABEL_97:

LABEL_98:
  if (!v44)
  {
    goto LABEL_74;
  }

  v41 = v44;
LABEL_73:
  free(v41);
LABEL_74:
  v35 = 0;
LABEL_75:

LABEL_76:

  return v35;
}

dispatch_data_t nw_quic_migration_info_copy_data(void *a1)
{
  v104 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v50 = __nwlog_obj();
    *buf = 136446210;
    v94 = "nw_quic_migration_info_copy_data";
    v9 = _os_log_send_and_compose_impl();

    LOBYTE(__src[0]) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v9, __src, &type))
    {
      goto LABEL_94;
    }

    if (LOBYTE(__src[0]) == 17)
    {
      v21 = __nwlog_obj();
      v51 = __src[0];
      if (os_log_type_enabled(v21, __src[0]))
      {
        *buf = 136446210;
        v94 = "nw_quic_migration_info_copy_data";
        _os_log_impl(&dword_181A37000, v21, v51, "%{public}s called with null migration_info", buf, 0xCu);
      }

      goto LABEL_204;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v21 = __nwlog_obj();
      v73 = __src[0];
      if (os_log_type_enabled(v21, __src[0]))
      {
        *buf = 136446210;
        v94 = "nw_quic_migration_info_copy_data";
        _os_log_impl(&dword_181A37000, v21, v73, "%{public}s called with null migration_info, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_204;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v52 = __src[0];
    v53 = os_log_type_enabled(v21, __src[0]);
    if (!backtrace_string)
    {
      if (v53)
      {
        *buf = 136446210;
        v94 = "nw_quic_migration_info_copy_data";
        _os_log_impl(&dword_181A37000, v21, v52, "%{public}s called with null migration_info, no backtrace", buf, 0xCu);
      }

      goto LABEL_204;
    }

    if (v53)
    {
      *buf = 136446466;
      v94 = "nw_quic_migration_info_copy_data";
      v95 = 2082;
      v96 = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v52, "%{public}s called with null migration_info, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_175;
  }

  v3 = v1[2];
  if (v3)
  {
    v4 = v3;
    address_family = _nw_endpoint_get_address_family(v4);

    if (address_family == 30)
    {
      v6 = 28;
    }

    else
    {
      v6 = 16 * (address_family == 2);
    }

    v7 = v6 + 5;
    v8 = v2 + 1;
    if (!v2[1])
    {
      goto LABEL_11;
    }

LABEL_10:
    v7 += 21;
    goto LABEL_11;
  }

  v8 = v1 + 1;
  if (v1[1])
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v43 = gLogObj;
  os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v94 = "nw_quic_migration_info_copy_data";
  v44 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v44);
  if (result)
  {
    goto LABEL_208;
  }

  free(v44);
  v6 = 0;
  v7 = 0;
LABEL_11:
  v9 = malloc_type_malloc(v7, 0x7E7845ACuLL);
  if (!v9)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v94 = "nw_quic_migration_info_copy_data";
    v11 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v11);
    if (result)
    {
      goto LABEL_208;
    }

    free(v11);
  }

  v13 = v2[2];
  v14 = v9;
  if (!v13)
  {
LABEL_40:
    if (!v14)
    {
      goto LABEL_94;
    }

    if (!*v8)
    {
      v42 = dispatch_data_create(v9, v7, 0, 0);
      if (!v9)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }

    name = _nw_interface_get_name(*v8);
    if (name)
    {
      v27 = *name;
      if (*name)
      {
        goto LABEL_44;
      }

      goto LABEL_120;
    }

    v58 = __nwlog_obj();
    os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v94 = "_strict_strlcpy";
    v59 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v59);
    if (!result)
    {
      free(v59);
      name = 0;
      v27 = MEMORY[0];
      if (MEMORY[0])
      {
LABEL_44:
        v28 = name[1];
        if (v28)
        {
          v29 = name[2];
          if (v29)
          {
            v30 = name[3];
            if (v30)
            {
              v31 = name[4];
              if (v31)
              {
                v32 = name[5];
                if (v32)
                {
                  v33 = name[6];
                  if (v33)
                  {
                    v34 = name[7];
                    if (v34)
                    {
                      v35 = name[8];
                      if (v35)
                      {
                        v36 = name[9];
                        if (v36)
                        {
                          v37 = name[10];
                          if (v37)
                          {
                            v38 = name[11];
                            if (v38)
                            {
                              v39 = name[12];
                              if (v39)
                              {
                                v40 = name[13];
                                if (v40)
                                {
                                  v41 = name[14];
                                }

                                else
                                {
                                  v41 = 0;
                                }

                                goto LABEL_121;
                              }

                              goto LABEL_82;
                            }

LABEL_81:
                            v39 = 0;
LABEL_82:
                            v40 = 0;
                            v41 = 0;
LABEL_121:
                            if (v9)
                            {
                              v60 = v9 + v7;
                              if (v14 < v9 + v7)
                              {
                                if (v60 - v14 <= 0x14)
                                {
                                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                  networkd_settings_init();
                                  v61 = gLogObj;
                                  *buf = 136447490;
                                  v94 = "nw_necp_append_tlv";
                                  v95 = 2048;
                                  v96 = v14;
                                  v97 = 2048;
                                  v98 = 21;
                                  v99 = 2048;
                                  *v100 = v9 + v7;
                                  *&v100[8] = 1024;
                                  *v101 = 2;
                                  *&v101[4] = 1024;
                                  *&v101[6] = 16;
                                  v62 = _os_log_send_and_compose_impl();

                                  LOBYTE(__src[0]) = 16;
                                  type = OS_LOG_TYPE_DEFAULT;
                                  if (!__nwlog_fault(v62, __src, &type))
                                  {
                                    goto LABEL_146;
                                  }

                                  if (LOBYTE(__src[0]) == 17)
                                  {
                                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                    networkd_settings_init();
                                    v63 = gLogObj;
                                    v64 = __src[0];
                                    if (os_log_type_enabled(v63, __src[0]))
                                    {
                                      *buf = 136447490;
                                      v94 = "nw_necp_append_tlv";
                                      v95 = 2048;
                                      v96 = v14;
                                      v97 = 2048;
                                      v98 = 21;
                                      v99 = 2048;
                                      *v100 = v60;
                                      *&v100[8] = 1024;
                                      *v101 = 2;
                                      *&v101[4] = 1024;
                                      *&v101[6] = 16;
                                      _os_log_impl(&dword_181A37000, v63, v64, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
                                    }
                                  }

                                  else if (type == OS_LOG_TYPE_INFO)
                                  {
                                    v65 = __nw_create_backtrace_string();
                                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                    networkd_settings_init();
                                    v63 = gLogObj;
                                    v66 = __src[0];
                                    v67 = os_log_type_enabled(v63, __src[0]);
                                    if (v65)
                                    {
                                      if (v67)
                                      {
                                        *buf = 136447746;
                                        v94 = "nw_necp_append_tlv";
                                        v95 = 2048;
                                        v96 = v14;
                                        v97 = 2048;
                                        v98 = 21;
                                        v99 = 2048;
                                        *v100 = v60;
                                        *&v100[8] = 1024;
                                        *v101 = 2;
                                        *&v101[4] = 1024;
                                        *&v101[6] = 16;
                                        v102 = 2082;
                                        v103 = v65;
                                        _os_log_impl(&dword_181A37000, v63, v66, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
                                      }

                                      free(v65);
                                      if (!v62)
                                      {
                                        goto LABEL_95;
                                      }

                                      goto LABEL_147;
                                    }

                                    if (v67)
                                    {
                                      *buf = 136447490;
                                      v94 = "nw_necp_append_tlv";
                                      v95 = 2048;
                                      v96 = v14;
                                      v97 = 2048;
                                      v98 = 21;
                                      v99 = 2048;
                                      *v100 = v60;
                                      *&v100[8] = 1024;
                                      *v101 = 2;
                                      *&v101[4] = 1024;
                                      *&v101[6] = 16;
                                      _os_log_impl(&dword_181A37000, v63, v66, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
                                    }
                                  }

                                  else
                                  {
                                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                    networkd_settings_init();
                                    v63 = gLogObj;
                                    v68 = __src[0];
                                    if (os_log_type_enabled(v63, __src[0]))
                                    {
                                      *buf = 136447490;
                                      v94 = "nw_necp_append_tlv";
                                      v95 = 2048;
                                      v96 = v14;
                                      v97 = 2048;
                                      v98 = 21;
                                      v99 = 2048;
                                      *v100 = v60;
                                      *&v100[8] = 1024;
                                      *v101 = 2;
                                      *&v101[4] = 1024;
                                      *&v101[6] = 16;
                                      _os_log_impl(&dword_181A37000, v63, v68, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
                                    }
                                  }

                                  goto LABEL_145;
                                }

                                *v14 = 2;
                                *(v14 + 1) = 16;
                                *(v14 + 5) = v27;
                                *(v14 + 6) = v28;
                                *(v14 + 7) = v29;
                                *(v14 + 8) = v30;
                                *(v14 + 9) = v31;
                                *(v14 + 10) = v32;
                                *(v14 + 11) = v33;
                                *(v14 + 12) = v34;
                                *(v14 + 13) = v35;
                                *(v14 + 14) = v36;
                                *(v14 + 15) = v37;
                                *(v14 + 16) = v38;
                                *(v14 + 17) = v39;
                                *(v14 + 18) = v40;
                                *(v14 + 19) = v41;
                                *(v14 + 20) = 0;
                                v42 = dispatch_data_create(v9, v7, 0, 0);
LABEL_130:
                                free(v9);
                                goto LABEL_131;
                              }

                              v71 = __nwlog_obj();
                              *buf = 136447234;
                              v94 = "nw_necp_append_tlv";
                              v95 = 2048;
                              v96 = v14;
                              v97 = 2048;
                              v98 = v9 + v7;
                              v99 = 1024;
                              *v100 = 2;
                              *&v100[4] = 1024;
                              *&v100[6] = 16;
                              v62 = _os_log_send_and_compose_impl();

                              LOBYTE(__src[0]) = 16;
                              type = OS_LOG_TYPE_DEFAULT;
                              if (__nwlog_fault(v62, __src, &type))
                              {
                                if (LOBYTE(__src[0]) == 17)
                                {
                                  v63 = __nwlog_obj();
                                  v72 = __src[0];
                                  if (os_log_type_enabled(v63, __src[0]))
                                  {
                                    *buf = 136447234;
                                    v94 = "nw_necp_append_tlv";
                                    v95 = 2048;
                                    v96 = v14;
                                    v97 = 2048;
                                    v98 = v60;
                                    v99 = 1024;
                                    *v100 = 2;
                                    *&v100[4] = 1024;
                                    *&v100[6] = 16;
                                    _os_log_impl(&dword_181A37000, v63, v72, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, 0x2Cu);
                                  }

LABEL_145:

                                  goto LABEL_146;
                                }

                                if (type != OS_LOG_TYPE_INFO)
                                {
                                  v63 = __nwlog_obj();
                                  v88 = __src[0];
                                  if (os_log_type_enabled(v63, __src[0]))
                                  {
                                    *buf = 136447234;
                                    v94 = "nw_necp_append_tlv";
                                    v95 = 2048;
                                    v96 = v14;
                                    v97 = 2048;
                                    v98 = v60;
                                    v99 = 1024;
                                    *v100 = 2;
                                    *&v100[4] = 1024;
                                    *&v100[6] = 16;
                                    _os_log_impl(&dword_181A37000, v63, v88, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", buf, 0x2Cu);
                                  }

                                  goto LABEL_145;
                                }

                                v82 = __nw_create_backtrace_string();
                                v63 = __nwlog_obj();
                                v83 = __src[0];
                                v84 = os_log_type_enabled(v63, __src[0]);
                                if (!v82)
                                {
                                  if (v84)
                                  {
                                    *buf = 136447234;
                                    v94 = "nw_necp_append_tlv";
                                    v95 = 2048;
                                    v96 = v14;
                                    v97 = 2048;
                                    v98 = v60;
                                    v99 = 1024;
                                    *v100 = 2;
                                    *&v100[4] = 1024;
                                    *&v100[6] = 16;
                                    _os_log_impl(&dword_181A37000, v63, v83, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", buf, 0x2Cu);
                                  }

                                  goto LABEL_145;
                                }

                                if (v84)
                                {
                                  *buf = 136447490;
                                  v94 = "nw_necp_append_tlv";
                                  v95 = 2048;
                                  v96 = v14;
                                  v97 = 2048;
                                  v98 = v60;
                                  v99 = 1024;
                                  *v100 = 2;
                                  *&v100[4] = 1024;
                                  *&v100[6] = 16;
                                  *v101 = 2082;
                                  *&v101[2] = v82;
                                  _os_log_impl(&dword_181A37000, v63, v83, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
                                }

                                free(v82);
                              }

LABEL_146:
                              if (!v62)
                              {
                                goto LABEL_95;
                              }

LABEL_147:
                              free(v62);
                              goto LABEL_95;
                            }

                            v69 = __nwlog_obj();
                            *buf = 136446210;
                            v94 = "nw_necp_append_tlv";
                            v9 = _os_log_send_and_compose_impl();

                            LOBYTE(__src[0]) = 16;
                            type = OS_LOG_TYPE_DEFAULT;
                            if (!__nwlog_fault(v9, __src, &type))
                            {
                              goto LABEL_94;
                            }

                            if (LOBYTE(__src[0]) == 17)
                            {
                              v21 = __nwlog_obj();
                              v70 = __src[0];
                              if (os_log_type_enabled(v21, __src[0]))
                              {
                                *buf = 136446210;
                                v94 = "nw_necp_append_tlv";
                                _os_log_impl(&dword_181A37000, v21, v70, "%{public}s called with null beyond", buf, 0xCu);
                              }

                              goto LABEL_204;
                            }

                            if (type != OS_LOG_TYPE_INFO)
                            {
                              v21 = __nwlog_obj();
                              v87 = __src[0];
                              if (os_log_type_enabled(v21, __src[0]))
                              {
                                *buf = 136446210;
                                v94 = "nw_necp_append_tlv";
                                _os_log_impl(&dword_181A37000, v21, v87, "%{public}s called with null beyond, backtrace limit exceeded", buf, 0xCu);
                              }

                              goto LABEL_204;
                            }

                            backtrace_string = __nw_create_backtrace_string();
                            v21 = __nwlog_obj();
                            v80 = __src[0];
                            v81 = os_log_type_enabled(v21, __src[0]);
                            if (!backtrace_string)
                            {
                              if (v81)
                              {
                                *buf = 136446210;
                                v94 = "nw_necp_append_tlv";
                                _os_log_impl(&dword_181A37000, v21, v80, "%{public}s called with null beyond, no backtrace", buf, 0xCu);
                              }

                              goto LABEL_204;
                            }

                            if (v81)
                            {
                              *buf = 136446466;
                              v94 = "nw_necp_append_tlv";
                              v95 = 2082;
                              v96 = backtrace_string;
                              _os_log_impl(&dword_181A37000, v21, v80, "%{public}s called with null beyond, dumping backtrace:%{public}s", buf, 0x16u);
                            }

LABEL_175:

                            goto LABEL_93;
                          }

LABEL_80:
                          v38 = 0;
                          goto LABEL_81;
                        }

LABEL_79:
                        v37 = 0;
                        goto LABEL_80;
                      }

LABEL_78:
                      v36 = 0;
                      goto LABEL_79;
                    }

LABEL_77:
                    v35 = 0;
                    goto LABEL_78;
                  }

LABEL_76:
                  v34 = 0;
                  goto LABEL_77;
                }

LABEL_75:
                v33 = 0;
                goto LABEL_76;
              }

LABEL_74:
              v32 = 0;
              goto LABEL_75;
            }

LABEL_73:
            v31 = 0;
            goto LABEL_74;
          }
        }

        else
        {
          v29 = 0;
        }

        v30 = 0;
        goto LABEL_73;
      }

LABEL_120:
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v28 = 0;
      goto LABEL_121;
    }

LABEL_208:
    __break(1u);
    return result;
  }

  memset(__src, 0, sizeof(__src));
  v90 = 0;
  if ((nw_endpoint_fillout_v4v6_address(v13, __src) & 1) == 0)
  {
    if (v9)
    {
      free(v9);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    *buf = 136446210;
    v94 = "nw_quic_migration_info_copy_data";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v91 = 0;
    if (!__nwlog_fault(v9, &type, &v91))
    {
      goto LABEL_94;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v94 = "nw_quic_migration_info_copy_data";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null success_tlv", buf, 0xCu);
      }
    }

    else if (v91 == 1)
    {
      v23 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v24 = type;
      v25 = os_log_type_enabled(v21, type);
      if (v23)
      {
        if (v25)
        {
          *buf = 136446466;
          v94 = "nw_quic_migration_info_copy_data";
          v95 = 2082;
          v96 = v23;
          _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null success_tlv, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v23);
        if (!v9)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      if (v25)
      {
        *buf = 136446210;
        v94 = "nw_quic_migration_info_copy_data";
        _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null success_tlv, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v45 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v94 = "nw_quic_migration_info_copy_data";
        _os_log_impl(&dword_181A37000, v21, v45, "%{public}s called with null success_tlv, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_204:

    goto LABEL_94;
  }

  if (!v9)
  {
    v54 = __nwlog_obj();
    *buf = 136446210;
    v94 = "nw_necp_append_tlv";
    backtrace_string = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v91 = 0;
    if (__nwlog_fault(backtrace_string, &type, &v91))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v55 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v94 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v18, v55, "%{public}s called with null tlv_start", buf, 0xCu);
        }

        goto LABEL_91;
      }

      if (v91 != 1)
      {
        v18 = __nwlog_obj();
        v85 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v94 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v18, v85, "%{public}s called with null tlv_start, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_91;
      }

      v74 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v75 = type;
      v76 = os_log_type_enabled(v18, type);
      if (!v74)
      {
        if (v76)
        {
          *buf = 136446210;
          v94 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v18, v75, "%{public}s called with null tlv_start, no backtrace", buf, 0xCu);
        }

        goto LABEL_91;
      }

      if (v76)
      {
        *buf = 136446466;
        v94 = "nw_necp_append_tlv";
        v95 = 2082;
        v96 = v74;
        _os_log_impl(&dword_181A37000, v18, v75, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v74);
    }

    goto LABEL_92;
  }

  if (!v7)
  {
    v56 = __nwlog_obj();
    *buf = 136447234;
    v94 = "nw_necp_append_tlv";
    v95 = 2048;
    v96 = v9;
    v97 = 2048;
    v98 = v9;
    v99 = 1024;
    *v100 = 1;
    *&v100[4] = 1024;
    *&v100[6] = v6;
    backtrace_string = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v91 = 0;
    if (__nwlog_fault(backtrace_string, &type, &v91))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v57 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136447234;
          v94 = "nw_necp_append_tlv";
          v95 = 2048;
          v96 = v9;
          v97 = 2048;
          v98 = v9;
          v99 = 1024;
          *v100 = 1;
          *&v100[4] = 1024;
          *&v100[6] = v6;
          _os_log_impl(&dword_181A37000, v18, v57, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, 0x2Cu);
        }

        goto LABEL_91;
      }

      if (v91 != 1)
      {
        v18 = __nwlog_obj();
        v86 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136447234;
          v94 = "nw_necp_append_tlv";
          v95 = 2048;
          v96 = v9;
          v97 = 2048;
          v98 = v9;
          v99 = 1024;
          *v100 = 1;
          *&v100[4] = 1024;
          *&v100[6] = v6;
          _os_log_impl(&dword_181A37000, v18, v86, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", buf, 0x2Cu);
        }

        goto LABEL_91;
      }

      v77 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v78 = type;
      v79 = os_log_type_enabled(v18, type);
      if (!v77)
      {
        if (v79)
        {
          *buf = 136447234;
          v94 = "nw_necp_append_tlv";
          v95 = 2048;
          v96 = v9;
          v97 = 2048;
          v98 = v9;
          v99 = 1024;
          *v100 = 1;
          *&v100[4] = 1024;
          *&v100[6] = v6;
          _os_log_impl(&dword_181A37000, v18, v78, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", buf, 0x2Cu);
        }

        goto LABEL_91;
      }

      if (v79)
      {
        *buf = 136447490;
        v94 = "nw_necp_append_tlv";
        v95 = 2048;
        v96 = v9;
        v97 = 2048;
        v98 = v9;
        v99 = 1024;
        *v100 = 1;
        *&v100[4] = 1024;
        *&v100[6] = v6;
        *v101 = 2082;
        *&v101[2] = v77;
        _os_log_impl(&dword_181A37000, v18, v78, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
      }

      free(v77);
    }

LABEL_92:
    if (!backtrace_string)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v15 = v6 + 5;
  if (v7 >= v15)
  {
    *v9 = 1;
    *(v9 + 1) = v6;
    if (v6)
    {
      memcpy((v9 + 5), __src, v6);
    }

    v14 = v9 + v15;
    goto LABEL_40;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  *buf = 136447490;
  v94 = "nw_necp_append_tlv";
  v95 = 2048;
  v96 = v9;
  v97 = 2048;
  v98 = v6 + 5;
  v99 = 2048;
  *v100 = v9 + v7;
  *&v100[8] = 1024;
  *v101 = 1;
  *&v101[4] = 1024;
  *&v101[6] = v6;
  backtrace_string = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v91 = 0;
  if (!__nwlog_fault(backtrace_string, &type, &v91))
  {
    goto LABEL_92;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v19 = type;
    if (os_log_type_enabled(v18, type))
    {
      *buf = 136447490;
      v94 = "nw_necp_append_tlv";
      v95 = 2048;
      v96 = v9;
      v97 = 2048;
      v98 = v6 + 5;
      v99 = 2048;
      *v100 = v9 + v7;
      *&v100[8] = 1024;
      *v101 = 1;
      *&v101[4] = 1024;
      *&v101[6] = v6;
      _os_log_impl(&dword_181A37000, v18, v19, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
    }

LABEL_91:

    goto LABEL_92;
  }

  if (v91 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    v49 = type;
    if (os_log_type_enabled(v18, type))
    {
      *buf = 136447490;
      v94 = "nw_necp_append_tlv";
      v95 = 2048;
      v96 = v9;
      v97 = 2048;
      v98 = v6 + 5;
      v99 = 2048;
      *v100 = v9 + v7;
      *&v100[8] = 1024;
      *v101 = 1;
      *&v101[4] = 1024;
      *&v101[6] = v6;
      _os_log_impl(&dword_181A37000, v18, v49, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
    }

    goto LABEL_91;
  }

  v46 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  v47 = type;
  v48 = os_log_type_enabled(v18, type);
  if (!v46)
  {
    if (v48)
    {
      *buf = 136447490;
      v94 = "nw_necp_append_tlv";
      v95 = 2048;
      v96 = v9;
      v97 = 2048;
      v98 = v6 + 5;
      v99 = 2048;
      *v100 = v9 + v7;
      *&v100[8] = 1024;
      *v101 = 1;
      *&v101[4] = 1024;
      *&v101[6] = v6;
      _os_log_impl(&dword_181A37000, v18, v47, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
    }

    goto LABEL_91;
  }

  if (v48)
  {
    *buf = 136447746;
    v94 = "nw_necp_append_tlv";
    v95 = 2048;
    v96 = v9;
    v97 = 2048;
    v98 = v6 + 5;
    v99 = 2048;
    *v100 = v9 + v7;
    *&v100[8] = 1024;
    *v101 = 1;
    *&v101[4] = 1024;
    *&v101[6] = v6;
    v102 = 2082;
    v103 = v46;
    _os_log_impl(&dword_181A37000, v18, v47, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
  }

  free(v46);
  if (backtrace_string)
  {
LABEL_93:
    free(backtrace_string);
  }

LABEL_94:
  if (v9)
  {
LABEL_95:
    free(v9);
  }

LABEL_96:
  v42 = 0;
LABEL_131:

  return v42;
}

void nw_tcp_respond_reset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = *MEMORY[0x1E69E9840];
  v68 = 0;
  v9 = nw_frame_unclaimed_bytes(a1, &v68);
  if (v68 <= 0x13)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    v70 = "nw_tcp_respond_reset";
    v71 = 1024;
    *v72 = v68;
    *&v72[4] = 2048;
    *&v72[6] = 20;
    v10 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v67 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v10, type, &v67))
    {
      goto LABEL_43;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_43;
      }

      *buf = 136446722;
      v70 = "nw_tcp_respond_reset";
      v71 = 1024;
      *v72 = v68;
      *&v72[4] = 2048;
      *&v72[6] = 20;
      v13 = "%{public}s Frame is invalid, only has %u bytes, required: %zu";
LABEL_41:
      v38 = v11;
      v39 = v12;
      v40 = 28;
LABEL_42:
      _os_log_impl(&dword_181A37000, v38, v39, v13, buf, v40);
      goto LABEL_43;
    }

    if (v67 != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_43;
      }

      *buf = 136446722;
      v70 = "nw_tcp_respond_reset";
      v71 = 1024;
      *v72 = v68;
      *&v72[4] = 2048;
      *&v72[6] = 20;
      v13 = "%{public}s Frame is invalid, only has %u bytes, required: %zu, backtrace limit exceeded";
      goto LABEL_41;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = type[0];
    v22 = os_log_type_enabled(gLogObj, type[0]);
    if (!backtrace_string)
    {
      if (!v22)
      {
        goto LABEL_43;
      }

      *buf = 136446722;
      v70 = "nw_tcp_respond_reset";
      v71 = 1024;
      *v72 = v68;
      *&v72[4] = 2048;
      *&v72[6] = 20;
      v13 = "%{public}s Frame is invalid, only has %u bytes, required: %zu, no backtrace";
      goto LABEL_41;
    }

    if (v22)
    {
      *buf = 136446978;
      v70 = "nw_tcp_respond_reset";
      v71 = 1024;
      *v72 = v68;
      *&v72[4] = 2048;
      *&v72[6] = 20;
      v73 = 2082;
      v74 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Frame is invalid, only has %u bytes, required: %zu, dumping backtrace:%{public}s", buf, 0x26u);
    }

    free(backtrace_string);
LABEL_43:
    if (!v10)
    {
      return;
    }

    goto LABEL_44;
  }

  if ((*(v9 + 13) & 4) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136446210;
    v70 = "nw_tcp_respond_reset";
    v18 = "%{public}s Attempting to send a RST in reply to a RST";
    v19 = v17;
    v20 = OS_LOG_TYPE_ERROR;
    goto LABEL_34;
  }

  v14 = 20;
  v68 = 20;
  v15 = *(a5 + 1);
  v16 = v9;
  if (v15 == 30)
  {
    v14 = 60;
  }

  else
  {
    if (v15 != 2)
    {
      goto LABEL_21;
    }

    v14 = 40;
  }

  v68 = v14;
LABEL_21:
  *type = 0;
  v66 = type;
  if ((*(*(a2 + 24) + 88))(a2, a3, v14, v14, 1, type) != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v35 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136446210;
    v70 = "nw_tcp_respond_reset";
    v18 = "%{public}s Failed to get output frame to send RST";
    v19 = v35;
    v20 = OS_LOG_TYPE_INFO;
LABEL_34:
    _os_log_impl(&dword_181A37000, v19, v20, v18, buf, 0xCu);
    return;
  }

  v23 = *type;
  if (*type)
  {
    v24 = *(a5 + 1);
    if (v24 != 30)
    {
      if (v24 != 2)
      {
        v45 = v16;
        v33 = 0;
LABEL_55:
        if (*(v23 + 112))
        {
          if ((*(v23 + 204) & 0x100) == 0 || !g_channel_check_validity || (v46 = g_channel_check_validity(v23, *(v23 + 88)), v45 = v16, v46))
          {
            v47 = *(v23 + 52);
            if (v47)
            {
              v48 = *(v23 + 112);
              if (v48)
              {
                v49 = *(v23 + 56);
                if ((v47 - (v49 + *(v23 + 60))) > 0x13)
                {
                  v50 = v48 + v49;
                  *(v50 + 16) = 0;
                  *v50 = 0;
                  *(v50 + 8) = 0;
                  *v50 = *(v45 + 2);
                  *(v50 + 2) = *v45;
                  *(v50 + 13) = 4;
                  *(v50 + 12) = 80;
                  *(v50 + 16) = v33;
                  v51 = *(v45 + 13);
                  if ((v51 & 0x10) != 0)
                  {
                    *(v50 + 4) = *(v45 + 8);
                  }

                  else
                  {
                    v52 = *(v45 + 4);
                    v53 = bswap32(bswap32(v52) + 1);
                    if ((v51 & 2) != 0)
                    {
                      v52 = v53;
                    }

                    *(v50 + 8) = v52;
                    *(v50 + 13) = 20;
                  }

                  v57 = 20;
                  v58 = MEMORY[0x1865DE4A0](v50, 20, 0);
                  if (v58 == -1)
                  {
                    v60 = -1;
                  }

                  else
                  {
                    v60 = ~v58;
                  }

                  *(v50 + 16) = v60;
                  nw_frame_claim(v23, v59, 20, 0);
                  nw_frame_collapse(v23);
                  nw_frame_unclaim(v23, v61, 0x14u, 0);
                  v63 = *(a5 + 1);
                  if (v63 != 2)
                  {
                    if (v63 != 30)
                    {
LABEL_95:
                      (*(*(a2 + 24) + 96))(a2, type);
                      return;
                    }

                    v57 = 40;
                  }

                  nw_frame_unclaim(v23, v62, v57, 0);
                  goto LABEL_95;
                }
              }
            }
          }
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v54 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v70 = "nw_tcp_respond_reset";
          v71 = 1024;
          *v72 = v68;
          *&v72[4] = 2048;
          *&v72[6] = 20;
LABEL_80:
          _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_ERROR, "%{public}s nw_frame_unclaimed_bytes reports %u, need at least %zu", buf, 0x1Cu);
          goto LABEL_81;
        }

        goto LABEL_81;
      }

      if (*(*type + 112) && ((*(*type + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(*type, *(*type + 88))) && (v25 = *(v23 + 52)) != 0)
      {
        v26 = *(v23 + 56);
        v27 = v25 - (v26 + *(v23 + 60));
        if (v27 > 0x13)
        {
          v28 = (*(v23 + 112) + v26);
          *v28 = 0;
          *(v28 + 1) = 0;
          *(v28 + 4) = 0;
          *v28 = 69;
          *(v28 + 3) = 117375040;
          v29 = *(a4 + 4);
          *(v28 + 3) = v29;
          v30 = *(a5 + 4);
          *(v28 + 4) = v30;
          v28[1] = 10240;
          v31 = *v28 + v29 + HIWORD(v29) + v30 + HIWORD(v30) + 12095;
          v28[5] = ~(HIWORD(v31) + v31 + ((HIWORD(v31) + v31) >> 16));
          v33 = in_pseudo(v30, v29, 0x1A000000u);
          v34 = 20;
LABEL_53:
          nw_frame_claim(v23, v32, v34, 0);
          v45 = v16;
          goto LABEL_55;
        }
      }

      else
      {
        v27 = 0;
      }

      v54 = __nwlog_obj();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v70 = "nw_tcp_respond_reset";
        v71 = 1024;
        *v72 = v27;
        *&v72[4] = 2048;
        *&v72[6] = 20;
        goto LABEL_80;
      }

LABEL_81:
      nw_frame_finalize(v23);
      return;
    }

    if (*(*type + 112) && ((*(*type + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(*type, *(*type + 88))) && (v41 = *(v23 + 52)) != 0)
    {
      v42 = *(v23 + 56);
      v43 = v41 - (v42 + *(v23 + 60));
      if (v43 > 0x27)
      {
        v44 = *(v23 + 112) + v42;
        *(v44 + 32) = 0;
        *v44 = 0u;
        *(v44 + 16) = 0u;
        *(v44 + 4) = -16378880;
        *(v44 + 8) = *(a4 + 8);
        *(v44 + 24) = *(a5 + 8);
        *v44 = 96;
        v33 = in6_pseudo((a4 + 8), (a5 + 8), 436207616);
        v34 = 40;
        goto LABEL_53;
      }
    }

    else
    {
      v43 = 0;
    }

    v54 = __nwlog_obj();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v70 = "nw_tcp_respond_reset";
      v71 = 1024;
      *v72 = v43;
      *&v72[4] = 2048;
      *&v72[6] = 40;
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v70 = "nw_tcp_respond_reset";
  v10 = _os_log_send_and_compose_impl();
  v67 = OS_LOG_TYPE_ERROR;
  v64 = 0;
  if (!__nwlog_fault(v10, &v67, &v64))
  {
    goto LABEL_43;
  }

  if (v67 == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v36 = gLogObj;
    v37 = v67;
    if (!os_log_type_enabled(gLogObj, v67))
    {
      goto LABEL_43;
    }

    *buf = 136446210;
    v70 = "nw_tcp_respond_reset";
    v13 = "%{public}s nw_frame_array_first failed";
    goto LABEL_86;
  }

  if (v64 != 1)
  {
    v36 = __nwlog_obj();
    v37 = v67;
    if (!os_log_type_enabled(v36, v67))
    {
      goto LABEL_43;
    }

    *buf = 136446210;
    v70 = "nw_tcp_respond_reset";
    v13 = "%{public}s nw_frame_array_first failed, backtrace limit exceeded";
    goto LABEL_86;
  }

  v55 = __nw_create_backtrace_string();
  v36 = __nwlog_obj();
  v37 = v67;
  v56 = os_log_type_enabled(v36, v67);
  if (!v55)
  {
    if (!v56)
    {
      goto LABEL_43;
    }

    *buf = 136446210;
    v70 = "nw_tcp_respond_reset";
    v13 = "%{public}s nw_frame_array_first failed, no backtrace";
LABEL_86:
    v38 = v36;
    v39 = v37;
    v40 = 12;
    goto LABEL_42;
  }

  if (v56)
  {
    *buf = 136446466;
    v70 = "nw_tcp_respond_reset";
    v71 = 2082;
    *v72 = v55;
    _os_log_impl(&dword_181A37000, v36, v37, "%{public}s nw_frame_array_first failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v55);
  if (v10)
  {
LABEL_44:
    free(v10);
  }
}

BOOL nw_quic_parse_dispatch(NSObject *a1, char a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __nw_quic_parse_dispatch_block_invoke;
  v4[3] = &__block_descriptor_tmp_32413;
  v5 = a2;
  v4[4] = a3;
  return dispatch_data_apply(a1, v4);
}

uint64_t __Block_byref_object_copy__32509(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL48nw_endpoint_resolver_update_path_resolver_lockedP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, unsigned __int8 *uu)
{
  v2 = uu;
  v96 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v4 = *(a1 + 32);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL48nw_endpoint_resolver_update_path_resolver_lockedP30NWConcrete_nw_endpoint_handler_block_invoke_2;
  aBlock[3] = &unk_1E6A30DD0;
  aBlock[4] = &v75;
  aBlock[5] = &v71;
  aBlock[6] = *(a1 + 64);
  _nw_path_access_network_agent(v4, v2, aBlock);
  if (*(v76 + 24) != 1)
  {
    goto LABEL_15;
  }

  minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 40));
  logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 40));
  if (minimize_logging)
  {
    if (logging_disabled)
    {
      goto LABEL_12;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      id_string = nw_endpoint_handler_get_id_string(*(a1 + 40));
      v52 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
      v53 = v7;
      v54 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
      logging_description = nw_endpoint_get_logging_description(v54);
      v56 = nw_endpoint_handler_state_string(*(a1 + 40));
      v57 = nw_endpoint_handler_mode_string(*(a1 + 40));
      v58 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
      *buf = 136447746;
      v80 = "nw_endpoint_resolver_update_path_resolver_locked_block_invoke";
      v81 = 2082;
      v82 = id_string;
      v83 = 2082;
      v84 = v52;
      v85 = 2082;
      v86 = logging_description;
      v87 = 2082;
      v88 = v56;
      v89 = 2082;
      v90 = v57;
      v91 = 2114;
      v92 = v58;
      v7 = v53;
      _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Resolver should be kept open until a child connects", buf, 0x48u);
    }

    goto LABEL_11;
  }

  if ((logging_disabled & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = nw_endpoint_handler_get_id_string(*(a1 + 40));
      v9 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
      v10 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
      v11 = v10;
      if (v10)
      {
        v12 = _nw_endpoint_get_logging_description(v10);
      }

      else
      {
        v12 = "<NULL>";
      }

      v67 = v12;

      v13 = v2;
      v14 = v7;
      v15 = nw_endpoint_handler_state_string(*(a1 + 40));
      v16 = nw_endpoint_handler_mode_string(*(a1 + 40));
      v17 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
      *buf = 136447746;
      v80 = "nw_endpoint_resolver_update_path_resolver_locked_block_invoke";
      v81 = 2082;
      v82 = v8;
      v83 = 2082;
      v84 = v9;
      v85 = 2082;
      v86 = v67;
      v87 = 2082;
      v88 = v15;
      v7 = v14;
      v2 = v13;
      v89 = 2082;
      v90 = v16;
      v91 = 2114;
      v92 = v17;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Resolver should be kept open until a child connects", buf, 0x48u);
    }

LABEL_11:
  }

LABEL_12:
  *(*(a1 + 48) + 24) |= 0x10u;
  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v18 = xpc_array_create(0, 0);
    v19 = *(*(a1 + 72) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  v21 = xpc_string_create(out);
  xpc_array_append_value(*(*(*(a1 + 72) + 8) + 40), v21);

LABEL_15:
  if (*(v72 + 24) == 1)
  {
    *(*(a1 + 48) + 24) |= 0x20u;
  }

  v22 = *(a1 + 48);
  if (*(v76 + 24) == 1)
  {
    v23 = *(v22 + 32);
    v24 = v23 == 0;
    v25 = *(v22 + 80);
    if (!v25)
    {
      if (!v23)
      {
        goto LABEL_27;
      }

      goto LABEL_48;
    }
  }

  else
  {
    v25 = *(v22 + 80);
    if (!v25)
    {
      goto LABEL_27;
    }

    v24 = 1;
  }

  v26 = nw_dictionary_copy_value(v25, out);
  v27 = v26;
  if (v24 && v26)
  {
    nw_dictionary_set_value(*(a1 + 56), out, v26);
LABEL_47:

    goto LABEL_48;
  }

  if (v24)
  {
LABEL_27:
    v27 = nw_endpoint_handler_copy_association(*(a1 + 40), 0);
    flow = nw_association_create_flow(v27, 0, 0, 0, 1, v2, 0);
    nw_dictionary_set_value(*(a1 + 56), out, flow);
    if (flow)
    {
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), flow);
      v29 = nw_endpoint_handler_get_minimize_logging(*(a1 + 40));
      v30 = nw_endpoint_handler_get_logging_disabled(*(a1 + 40));
      if (v29)
      {
        if (v30)
        {
          goto LABEL_46;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v31 = gconnectionLogObj;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v59 = v31;
          v60 = nw_endpoint_handler_get_id_string(*(a1 + 40));
          v61 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
          v62 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
          v63 = nw_endpoint_get_logging_description(v62);
          v64 = nw_endpoint_handler_state_string(*(a1 + 40));
          v65 = nw_endpoint_handler_mode_string(*(a1 + 40));
          v66 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
          *buf = 136448002;
          v80 = "nw_endpoint_resolver_update_path_resolver_locked_block_invoke";
          v81 = 2082;
          v82 = v60;
          v83 = 2082;
          v84 = v61;
          v85 = 2082;
          v86 = v63;
          v87 = 2082;
          v88 = v64;
          v89 = 2082;
          v90 = v65;
          v91 = 2114;
          v92 = v66;
          v93 = 2080;
          v94 = out;
          v31 = v59;
          _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Registered resolver flow with agent %s", buf, 0x52u);
        }

        goto LABEL_45;
      }

      if ((v30 & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v31 = gconnectionLogObj;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = nw_endpoint_handler_get_id_string(*(a1 + 40));
          v33 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
          v34 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
          v35 = v34;
          if (v34)
          {
            v36 = _nw_endpoint_get_logging_description(v34);
          }

          else
          {
            v36 = "<NULL>";
          }

          v68 = v36;

          v42 = flow;
          v43 = v31;
          v44 = nw_endpoint_handler_state_string(*(a1 + 40));
          v45 = nw_endpoint_handler_mode_string(*(a1 + 40));
          v46 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
          *buf = 136448002;
          v80 = "nw_endpoint_resolver_update_path_resolver_locked_block_invoke";
          v81 = 2082;
          v82 = v32;
          v83 = 2082;
          v84 = v33;
          v85 = 2082;
          v86 = v68;
          v87 = 2082;
          v88 = v44;
          v31 = v43;
          flow = v42;
          v89 = 2082;
          v90 = v45;
          v91 = 2114;
          v92 = v46;
          v93 = 2080;
          v94 = out;
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Registered resolver flow with agent %s", buf, 0x52u);
        }

LABEL_45:
      }
    }

    else if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 40)) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v31 = gconnectionLogObj;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v37 = nw_endpoint_handler_get_id_string(*(a1 + 40));
        v38 = nw_endpoint_handler_dry_run_string(*(a1 + 40));
        v39 = nw_endpoint_handler_copy_endpoint(*(a1 + 40));
        v40 = v39;
        if (v39)
        {
          v41 = _nw_endpoint_get_logging_description(v39);
        }

        else
        {
          v41 = "<NULL>";
        }

        v69 = v41;

        v47 = v31;
        v48 = nw_endpoint_handler_state_string(*(a1 + 40));
        v49 = nw_endpoint_handler_mode_string(*(a1 + 40));
        v50 = nw_endpoint_handler_copy_current_path(*(a1 + 40));
        *buf = 136448002;
        v80 = "nw_endpoint_resolver_update_path_resolver_locked_block_invoke";
        v81 = 2082;
        v82 = v37;
        v83 = 2082;
        v84 = v38;
        v85 = 2082;
        v86 = v69;
        v87 = 2082;
        v88 = v48;
        v31 = v47;
        flow = 0;
        v89 = 2082;
        v90 = v49;
        v91 = 2114;
        v92 = v50;
        v93 = 2080;
        v94 = out;
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to register resolver flow with agent %s", buf, 0x52u);
      }

      goto LABEL_45;
    }

LABEL_46:

    goto LABEL_47;
  }

LABEL_48:
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);
}

void sub_182581A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

BOOL ___ZL48nw_endpoint_resolver_update_path_resolver_lockedP30NWConcrete_nw_endpoint_handler_block_invoke_106(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nw_path_flow_copy_error(v4);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 32) + 8) + 40) == 0;
  return v8;
}

uint64_t ___ZL27nw_endpoint_resolver_updateP30NWConcrete_nw_endpoint_handlerPU25objcproto14OS_nw_resolver8NSObject20nw_resolver_status_t_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = nw_endpoint_handler_copy_endpoint(a3);
  v5 = *(*(a1 + 32) + 8);
  v8 = *(v5 + 24);
  v7 = (v5 + 24);
  v6 = v8;
  v9 = *(*(*(a1 + 40) + 8) + 24);
  v10 = v4;
  v11 = v10;
  if (v10)
  {
    logging_description = _nw_endpoint_get_logging_description(v10);
  }

  else
  {
    logging_description = "<NULL>";
  }

  v13 = ",";
  if (v9)
  {
    v13 = "";
  }

  asprintf(v7, "%s%s%s", v6, v13, logging_description);
  if (v6)
  {
    free(v6);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;

  return 1;
}

void nw_endpoint_resolver_check_desperate_ivan(NWConcrete_nw_endpoint_handler *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_endpoint_handler_copy_resolver(v1);
  v3 = v2;
  if ((*(v2 + 24) & 4) == 0)
  {
    if (*(v2 + 4))
    {
      *(v2 + 24) |= 4u;
      goto LABEL_8;
    }

    v4 = nw_endpoint_handler_copy_parameters(v1);
    if (nw_parameters_get_required_address_family(v4) || nw_parameters_get_desperate_ivan(v4))
    {
      *(v3 + 24) |= 4u;
LABEL_7:

      goto LABEL_8;
    }

    v5 = nw_endpoint_handler_copy_current_path(v1);
    if ((nw_path_is_eligible_for_CrazyIvan46(v5) & 1) == 0)
    {
LABEL_42:

      goto LABEL_7;
    }

    v41 = v5;
    v6 = nw_endpoint_handler_copy_endpoint(v1);
    if (nw_endpoint_get_type(v6) != nw_endpoint_type_host)
    {
LABEL_41:

      v5 = v41;
      goto LABEL_42;
    }

    *(v3 + 24) |= 0xCu;
    minimize_logging = nw_endpoint_handler_get_minimize_logging(v1);
    logging_disabled = nw_endpoint_handler_get_logging_disabled(v1);
    v40 = v6;
    if (minimize_logging)
    {
      if (logging_disabled)
      {
LABEL_18:
        v18 = *(v3 + 9);
        if (v18)
        {
          nw_queue_cancel_source(v18, v9);
          *(v3 + 9) = 0;
        }

        v19 = nw_endpoint_handler_copy_context(v1);
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = ___ZL41nw_endpoint_resolver_check_desperate_ivanP30NWConcrete_nw_endpoint_handler_block_invoke;
        v44[3] = &unk_1E6A3D868;
        v45 = v1;
        *(v3 + 9) = nw_queue_context_create_source(v19, 2, 3, 0, v44, 0);

        v20 = *(v3 + 9);
        if (v20)
        {
          v21 = dispatch_time(0x8000000000000000, 2000000000);
          nw_queue_set_timer_values(v20, v21, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
          nw_queue_activate_source(*(v3 + 9), v22);
LABEL_40:

          v6 = v40;
          goto LABEL_41;
        }

        v23 = __nwlog_obj();
        *buf = 136446210;
        v47 = "nw_endpoint_resolver_check_desperate_ivan";
        v24 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v42 = 0;
        if (__nwlog_fault(v24, &type, &v42))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v25 = __nwlog_obj();
            v26 = type;
            if (os_log_type_enabled(v25, type))
            {
              *buf = 136446210;
              v47 = "nw_endpoint_resolver_check_desperate_ivan";
              _os_log_impl(&dword_181A37000, v25, v26, "%{public}s nw_queue_context_create_source(timer) failed", buf, 0xCu);
            }
          }

          else if (v42 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v25 = __nwlog_obj();
            v28 = type;
            v29 = os_log_type_enabled(v25, type);
            if (backtrace_string)
            {
              if (v29)
              {
                *buf = 136446466;
                v47 = "nw_endpoint_resolver_check_desperate_ivan";
                v48 = 2082;
                v49 = backtrace_string;
                _os_log_impl(&dword_181A37000, v25, v28, "%{public}s nw_queue_context_create_source(timer) failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_38;
            }

            if (v29)
            {
              *buf = 136446210;
              v47 = "nw_endpoint_resolver_check_desperate_ivan";
              _os_log_impl(&dword_181A37000, v25, v28, "%{public}s nw_queue_context_create_source(timer) failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v25 = __nwlog_obj();
            v30 = type;
            if (os_log_type_enabled(v25, type))
            {
              *buf = 136446210;
              v47 = "nw_endpoint_resolver_check_desperate_ivan";
              _os_log_impl(&dword_181A37000, v25, v30, "%{public}s nw_queue_context_create_source(timer) failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_38:
        if (v24)
        {
          free(v24);
        }

        goto LABEL_40;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v31 = gconnectionLogObj;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        loga = nw_endpoint_handler_get_id_string(v1);
        v32 = nw_endpoint_handler_dry_run_string(v1);
        v33 = nw_endpoint_handler_copy_endpoint(v1);
        logging_description = nw_endpoint_get_logging_description(v33);
        v35 = nw_endpoint_handler_state_string(v1);
        v36 = nw_endpoint_handler_mode_string(v1);
        v37 = nw_endpoint_handler_copy_current_path(v1);
        *buf = 136447746;
        v47 = "nw_endpoint_resolver_check_desperate_ivan";
        v48 = 2082;
        v49 = loga;
        v50 = 2082;
        v51 = v32;
        v52 = 2082;
        v53 = logging_description;
        v54 = 2082;
        v55 = v35;
        v56 = 2082;
        v57 = v36;
        v58 = 2114;
        v59 = v37;
        v10 = v31;
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Connectivity seems slow, starting DesperateIvan timer", buf, 0x48u);
      }

      else
      {
        v10 = v31;
      }
    }

    else
    {
      if (logging_disabled)
      {
        goto LABEL_18;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        id_string = nw_endpoint_handler_get_id_string(v1);
        v12 = nw_endpoint_handler_dry_run_string(v1);
        log = v10;
        v13 = nw_endpoint_handler_copy_endpoint(v1);
        v14 = nw_endpoint_get_logging_description(v13);
        v15 = nw_endpoint_handler_state_string(v1);
        v16 = nw_endpoint_handler_mode_string(v1);
        v17 = nw_endpoint_handler_copy_current_path(v1);
        *buf = 136447746;
        v47 = "nw_endpoint_resolver_check_desperate_ivan";
        v48 = 2082;
        v49 = id_string;
        v50 = 2082;
        v51 = v12;
        v52 = 2082;
        v53 = v14;
        v54 = 2082;
        v55 = v15;
        v56 = 2082;
        v57 = v16;
        v58 = 2114;
        v59 = v17;
        v10 = log;
        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Connectivity seems slow, starting DesperateIvan timer", buf, 0x48u);
      }
    }

    goto LABEL_18;
  }

LABEL_8:
}

void nw_endpoint_resolver_setup_trigger_agent_timer(NWConcrete_nw_endpoint_handler *a1, char a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5 = nw_endpoint_handler_copy_resolver(v3);
  v6 = v5[8];
  if (v6)
  {
    nw_queue_cancel_source(v6, v4);
    v5[8] = 0;
  }

  v7 = nw_endpoint_handler_copy_context(v3);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___ZL46nw_endpoint_resolver_setup_trigger_agent_timerP30NWConcrete_nw_endpoint_handlerb_block_invoke;
  v23[3] = &unk_1E6A3A258;
  v8 = v3;
  v24 = v8;
  v25 = a2;
  v5[8] = nw_queue_context_create_source(v7, 2, 3, 0, v23, 0);

  if (v5[8])
  {
    int64_with_default = networkd_settings_get_int64_with_default(nw_setting_tcpconn_trigger_agent_delay, 2000);
    v10 = v5[8];
    v11 = dispatch_time(0x8000000000000000, 1000000 * int64_with_default);
    nw_queue_set_timer_values(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    nw_queue_activate_source(v5[8], v12);
    goto LABEL_12;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  *buf = 136446210;
  v27 = "nw_endpoint_resolver_setup_trigger_agent_timer";
  v14 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v14, &type, &v21))
  {
    goto LABEL_10;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    v16 = type;
    if (os_log_type_enabled(v15, type))
    {
      *buf = 136446210;
      v27 = "nw_endpoint_resolver_setup_trigger_agent_timer";
      _os_log_impl(&dword_181A37000, v15, v16, "%{public}s nw_queue_context_create_source(trigger_agent_timer) failed", buf, 0xCu);
    }

LABEL_9:

LABEL_10:
    if (!v14)
    {
      goto LABEL_12;
    }

LABEL_11:
    free(v14);
    goto LABEL_12;
  }

  if (v21 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    v20 = type;
    if (os_log_type_enabled(v15, type))
    {
      *buf = 136446210;
      v27 = "nw_endpoint_resolver_setup_trigger_agent_timer";
      _os_log_impl(&dword_181A37000, v15, v20, "%{public}s nw_queue_context_create_source(trigger_agent_timer) failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_9;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v15 = gLogObj;
  v18 = type;
  v19 = os_log_type_enabled(v15, type);
  if (!backtrace_string)
  {
    if (v19)
    {
      *buf = 136446210;
      v27 = "nw_endpoint_resolver_setup_trigger_agent_timer";
      _os_log_impl(&dword_181A37000, v15, v18, "%{public}s nw_queue_context_create_source(trigger_agent_timer) failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (v19)
  {
    *buf = 136446466;
    v27 = "nw_endpoint_resolver_setup_trigger_agent_timer";
    v28 = 2082;
    v29 = backtrace_string;
    _os_log_impl(&dword_181A37000, v15, v18, "%{public}s nw_queue_context_create_source(trigger_agent_timer) failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v14)
  {
    goto LABEL_11;
  }

LABEL_12:
}

void ___ZL46nw_endpoint_resolver_setup_trigger_agent_timerP30NWConcrete_nw_endpoint_handlerb_block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (nw_endpoint_handler_trigger_agents(*(a1 + 32), 1))
  {
    minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 32));
    logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 32));
    if (!minimize_logging)
    {
      if (logging_disabled)
      {
        return;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v6 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v7 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v8 = v7;
        if (v7)
        {
          logging_description = _nw_endpoint_get_logging_description(v7);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v10 = nw_endpoint_handler_state_string(*(a1 + 32));
        v11 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v12 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        v13 = v12;
        v14 = "resolution";
        v15 = *(a1 + 40) == 0;
        v26 = 136448002;
        v27 = "nw_endpoint_resolver_setup_trigger_agent_timer_block_invoke";
        v28 = 2082;
        if (!v15)
        {
          v14 = "child flow";
        }

        v29 = id_string;
        v30 = 2082;
        v31 = v6;
        v32 = 2082;
        v33 = logging_description;
        v34 = 2082;
        v35 = v10;
        v36 = 2082;
        v37 = v11;
        v38 = 2114;
        v39 = v12;
        v40 = 2082;
        v41 = v14;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] %{public}s timed out, triggering matching agent", &v26, 0x52u);
      }

      goto LABEL_13;
    }

    if ((logging_disabled & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v16 = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v17 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v18 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v19 = nw_endpoint_get_logging_description(v18);
        v20 = nw_endpoint_handler_state_string(*(a1 + 32));
        v21 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v22 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        v23 = *(a1 + 40);
        v24 = v22;
        v25 = "resolution";
        v26 = 136448002;
        v27 = "nw_endpoint_resolver_setup_trigger_agent_timer_block_invoke";
        v28 = 2082;
        if (v23)
        {
          v25 = "child flow";
        }

        v29 = v16;
        v30 = 2082;
        v31 = v17;
        v32 = 2082;
        v33 = v19;
        v34 = 2082;
        v35 = v20;
        v36 = 2082;
        v37 = v21;
        v38 = 2114;
        v39 = v22;
        v40 = 2082;
        v41 = v25;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] %{public}s timed out, triggering matching agent", &v26, 0x52u);
      }

LABEL_13:
    }
  }
}

void ___ZL41nw_endpoint_resolver_check_desperate_ivanP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!v1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v19, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v34 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v31 = type;
        v32 = os_log_type_enabled(v20, type);
        if (backtrace_string)
        {
          if (v32)
          {
            *buf = 136446466;
            v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
            v38 = 2082;
            v39 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_43;
        }

        if (v32)
        {
          *buf = 136446210;
          v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
          _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
          _os_log_impl(&dword_181A37000, v20, v33, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_43:
    if (v19)
    {
      free(v19);
    }

    return;
  }

  v3 = v1;
  v4 = v3[29];

  if (v4 == 1)
  {
    minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 32));
    logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 32));
    if (minimize_logging)
    {
      if (logging_disabled)
      {
LABEL_19:
        if (nw_endpoint_resolver_add_desperate_ivan(*(a1 + 32)))
        {
          nw_endpoint_resolver_start_next_child(*(a1 + 32));
        }

        return;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v23 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v24 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        logging_description = nw_endpoint_get_logging_description(v24);
        v26 = nw_endpoint_handler_state_string(*(a1 + 32));
        v27 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v28 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136447746;
        v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
        v38 = 2082;
        v39 = id_string;
        v29 = v28;
        v40 = 2082;
        v41 = v23;
        v42 = 2082;
        v43 = logging_description;
        v44 = 2082;
        v45 = v26;
        v46 = 2082;
        v47 = v27;
        v48 = 2114;
        v49 = v28;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Connectivity seems very slow, adding DesperateIvan endpoint handler", buf, 0x48u);
      }
    }

    else
    {
      if (logging_disabled)
      {
        goto LABEL_19;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v9 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v10 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v11 = v10;
        if (v10)
        {
          v12 = _nw_endpoint_get_logging_description(v10);
        }

        else
        {
          v12 = "<NULL>";
        }

        v15 = nw_endpoint_handler_state_string(*(a1 + 32));
        v16 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v17 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136447746;
        v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
        v38 = 2082;
        v39 = v8;
        v40 = 2082;
        v41 = v9;
        v42 = 2082;
        v43 = v12;
        v44 = 2082;
        v45 = v15;
        v46 = 2082;
        v47 = v16;
        v48 = 2114;
        v49 = v17;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Connectivity seems very slow, adding DesperateIvan endpoint handler", buf, 0x48u);
      }
    }

    goto LABEL_19;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (v4 > 5)
    {
      v14 = "unknown-mode";
    }

    else
    {
      v14 = off_1E6A31018[v4];
    }

    *buf = 136446722;
    v37 = "nw_endpoint_resolver_check_desperate_ivan_block_invoke";
    v38 = 2082;
    v39 = v14;
    v40 = 2082;
    v41 = "resolver";
    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }
}

BOOL nw_endpoint_resolver_add_desperate_ivan(NWConcrete_nw_endpoint_handler *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ((nw_endpoint_handler_get_state(v1) & 0xFFFFFFFE) != 4)
  {
    v3 = nw_endpoint_handler_copy_resolver(v1);
    v5 = v3;
    if ((*(v3 + 24) & 0xC) != 0)
    {
      if (!*(v3 + 4))
      {
        *(v3 + 24) &= ~8u;
        v14 = *(v3 + 9);
        if (v14)
        {
          nw_queue_cancel_source(v14, v4);
          *(v5 + 9) = 0;
        }

        v8 = nw_endpoint_handler_copy_endpoint(v1);
        child_parameters = nw_endpoint_resolver_create_child_parameters(v1);
        nw_parameters_set_desperate_ivan(child_parameters, 1);
        inner = nw_endpoint_handler_create_inner(v8, child_parameters, nw_endpoint_resolver_receive_report, v1, v1, 0, 0, 0);
        v2 = inner != 0;
        if (inner)
        {
          v17 = *(v5 + 5);
          if (v17)
          {
            _nw_array_append(v17, inner);
          }
        }

        else if ((nw_endpoint_handler_get_logging_disabled(v1) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v18 = gconnectionLogObj;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            id_string = nw_endpoint_handler_get_id_string(v1);
            v20 = nw_endpoint_handler_dry_run_string(v1);
            v21 = nw_endpoint_handler_copy_endpoint(v1);
            v22 = v21;
            v39 = id_string;
            log = v18;
            v38 = v20;
            if (v21)
            {
              logging_description = _nw_endpoint_get_logging_description(v21);
            }

            else
            {
              logging_description = "<NULL>";
            }

            v26 = nw_endpoint_handler_state_string(v1);
            v27 = nw_endpoint_handler_mode_string(v1);
            v28 = nw_endpoint_handler_copy_current_path(v1);
            *buf = 136447746;
            v42 = "nw_endpoint_resolver_add_desperate_ivan";
            v43 = 2082;
            v44 = v39;
            v45 = 2082;
            v46 = v38;
            v47 = 2082;
            v48 = logging_description;
            v49 = 2082;
            v50 = v26;
            v51 = 2082;
            v52 = v27;
            v53 = 2114;
            v54 = v28;
            v18 = log;
            _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to create DesperateIvan endpoint handler", buf, 0x48u);
          }
        }

        goto LABEL_30;
      }

      minimize_logging = nw_endpoint_handler_get_minimize_logging(v1);
      logging_disabled = nw_endpoint_handler_get_logging_disabled(v1);
      if (minimize_logging)
      {
        if ((logging_disabled & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v8 = gconnectionLogObj;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v29 = nw_endpoint_handler_get_id_string(v1);
            v30 = nw_endpoint_handler_dry_run_string(v1);
            v31 = nw_endpoint_handler_copy_endpoint(v1);
            v32 = nw_endpoint_get_logging_description(v31);
            v33 = nw_endpoint_handler_state_string(v1);
            v34 = nw_endpoint_handler_mode_string(v1);
            v35 = nw_endpoint_handler_copy_current_path(v1);
            *buf = 136447746;
            v42 = "nw_endpoint_resolver_add_desperate_ivan";
            v43 = 2082;
            v44 = v29;
            v45 = 2082;
            v46 = v30;
            v47 = 2082;
            v48 = v32;
            v49 = 2082;
            v50 = v33;
            v51 = 2082;
            v52 = v34;
            v53 = 2114;
            v54 = v35;
            _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Skipping DesperateIvan because already connected", buf, 0x48u);
          }

          goto LABEL_25;
        }
      }

      else if ((logging_disabled & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v8 = gconnectionLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = nw_endpoint_handler_get_id_string(v1);
          v10 = nw_endpoint_handler_dry_run_string(v1);
          v11 = nw_endpoint_handler_copy_endpoint(v1);
          v12 = v11;
          if (v11)
          {
            v13 = _nw_endpoint_get_logging_description(v11);
          }

          else
          {
            v13 = "<NULL>";
          }

          v23 = nw_endpoint_handler_state_string(v1);
          v24 = nw_endpoint_handler_mode_string(v1);
          v25 = nw_endpoint_handler_copy_current_path(v1);
          *buf = 136447746;
          v42 = "nw_endpoint_resolver_add_desperate_ivan";
          v43 = 2082;
          v44 = v9;
          v45 = 2082;
          v46 = v10;
          v47 = 2082;
          v48 = v13;
          v49 = 2082;
          v50 = v23;
          v51 = 2082;
          v52 = v24;
          v53 = 2114;
          v54 = v25;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Skipping DesperateIvan because already connected", buf, 0x48u);
        }

LABEL_25:
        v2 = 0;
LABEL_30:

LABEL_37:
        goto LABEL_38;
      }
    }

    v2 = 0;
    goto LABEL_37;
  }

  v2 = 0;
LABEL_38:

  return v2;
}

void ___ZL35nw_endpoint_resolver_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = v1;
    v4 = v3[29];

    if (v4 == 1)
    {
      if (nw_endpoint_handler_trigger_agents(*(a1 + 32), 1))
      {
        if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v5 = gconnectionLogObj;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
            v7 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
            v8 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
            v9 = v8;
            if (v8)
            {
              logging_description = _nw_endpoint_get_logging_description(v8);
            }

            else
            {
              logging_description = "<NULL>";
            }

            v13 = nw_endpoint_handler_state_string(*(a1 + 32));
            v14 = nw_endpoint_handler_mode_string(*(a1 + 32));
            v15 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
            *buf = 136447746;
            v27 = "nw_endpoint_resolver_receive_report_block_invoke";
            v28 = 2082;
            v29 = id_string;
            v30 = 2082;
            v31 = v7;
            v32 = 2082;
            v33 = logging_description;
            v34 = 2082;
            v35 = v13;
            v36 = 2082;
            v37 = v14;
            v38 = 2114;
            v39 = v15;
            _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Child flow failed, trying to trigger matching voluntary agents", buf, 0x48u);
          }
        }

        nw_endpoint_handler_reset_mode(*(a1 + 32), 0);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (v4 > 5)
        {
          v12 = "unknown-mode";
        }

        else
        {
          v12 = off_1E6A31018[v4];
        }

        *buf = 136446722;
        v27 = "nw_endpoint_resolver_receive_report_block_invoke";
        v28 = 2082;
        v29 = v12;
        v30 = 2082;
        v31 = "resolver";
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }
    }

    return;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_endpoint_resolver_receive_report_block_invoke";
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v17, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_resolver_receive_report_block_invoke";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v18, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v27 = "nw_endpoint_resolver_receive_report_block_invoke";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_37;
      }

      if (v22)
      {
        *buf = 136446210;
        v27 = "nw_endpoint_resolver_receive_report_block_invoke";
        _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v27 = "nw_endpoint_resolver_receive_report_block_invoke";
        _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_37:
  if (v17)
  {
    free(v17);
  }
}

void nw_endpoint_resolver_remove_agent_assertions(NWConcrete_nw_endpoint_handler *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_endpoint_handler_get_mode";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v14, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v41 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v38 == 1)
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
            v41 = "nw_endpoint_handler_get_mode";
            v42 = 2082;
            v43 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (v19)
        {
          *buf = 136446210;
          v41 = "nw_endpoint_handler_get_mode";
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
          v41 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_25:
    if (v14)
    {
      free(v14);
    }

    mode = 0;
    goto LABEL_28;
  }

  mode = v1->mode;

  if (mode == 1)
  {
    v4 = v2;
    v5 = *(v4 + 284);

    if ((v5 & 1) == 0)
    {
      v6 = nw_endpoint_handler_copy_resolver(v4);
      v7 = v4;
      os_unfair_lock_lock(&v7->lock);
      v8 = v7->current_path;
      os_unfair_lock_unlock(&v7->lock);

      v9 = *(v6 + 14);
      if (v9)
      {
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = ___ZL44nw_endpoint_resolver_remove_agent_assertionsP30NWConcrete_nw_endpoint_handler_block_invoke;
        applier[3] = &unk_1E6A3D300;
        v37 = v8;
        xpc_array_apply(v9, applier);
        v10 = *(v6 + 14);
        *(v6 + 14) = 0;
      }

      v11 = *(v6 + 15);
      if (v11)
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = ___ZL44nw_endpoint_resolver_remove_agent_assertionsP30NWConcrete_nw_endpoint_handler_block_invoke_2;
        v34[3] = &unk_1E6A3D300;
        v35 = v6;
        xpc_array_apply(v11, v34);
        v12 = *(v6 + 15);
        *(v6 + 15) = 0;
      }
    }

    goto LABEL_49;
  }

LABEL_28:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  if (mode > 5)
  {
    v22 = "unknown-mode";
  }

  else
  {
    v22 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v41 = "nw_endpoint_resolver_remove_agent_assertions";
  v42 = 2082;
  v43 = v22;
  v44 = 2082;
  v45 = "resolver";
  v23 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (!__nwlog_fault(v23, &type, &v38))
  {
LABEL_47:
    if (!v23)
    {
      goto LABEL_49;
    }

LABEL_48:
    free(v23);
    goto LABEL_49;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    v25 = type;
    if (os_log_type_enabled(v24, type))
    {
      if (mode > 5)
      {
        v26 = "unknown-mode";
      }

      else
      {
        v26 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v41 = "nw_endpoint_resolver_remove_agent_assertions";
      v42 = 2082;
      v43 = v26;
      v44 = 2082;
      v45 = "resolver";
      _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_46:

    goto LABEL_47;
  }

  if (v38 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    v31 = type;
    if (os_log_type_enabled(v24, type))
    {
      if (mode > 5)
      {
        v32 = "unknown-mode";
      }

      else
      {
        v32 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v41 = "nw_endpoint_resolver_remove_agent_assertions";
      v42 = 2082;
      v43 = v32;
      v44 = 2082;
      v45 = "resolver";
      _os_log_impl(&dword_181A37000, v24, v31, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_46;
  }

  v27 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v24 = gLogObj;
  v28 = type;
  v29 = os_log_type_enabled(v24, type);
  if (!v27)
  {
    if (v29)
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
      v41 = "nw_endpoint_resolver_remove_agent_assertions";
      v42 = 2082;
      v43 = v33;
      v44 = 2082;
      v45 = "resolver";
      _os_log_impl(&dword_181A37000, v24, v28, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_46;
  }

  if (v29)
  {
    if (mode > 5)
    {
      v30 = "unknown-mode";
    }

    else
    {
      v30 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v41 = "nw_endpoint_resolver_remove_agent_assertions";
    v42 = 2082;
    v43 = v30;
    v44 = 2082;
    v45 = "resolver";
    v46 = 2082;
    v47 = v27;
    _os_log_impl(&dword_181A37000, v24, v28, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v27);
  if (v23)
  {
    goto LABEL_48;
  }

LABEL_49:
}

uint64_t ___ZL35nw_endpoint_resolver_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke_119(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (*(a1 + 32) != v4)
  {
    nw_endpoint_handler_cancel(v4, 0, 0);
  }

  return 1;
}

uint64_t ___ZL44nw_endpoint_resolver_remove_agent_assertionsP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  bytes = xpc_uuid_get_bytes(v4);
  nw_path_agent_action(*(a1 + 32), bytes, 132);

  return 1;
}

uint64_t ___ZL44nw_endpoint_resolver_remove_agent_assertionsP30NWConcrete_nw_endpoint_handler_block_invoke_2(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (string_ptr)
  {
    v5 = string_ptr;
    v6 = nw_dictionary_copy_value(*(*(a1 + 32) + 80), string_ptr);
    v7 = v6;
    if (v6)
    {
      nw_path_flow_registration_close(v6);
      nw_dictionary_set_value(*(*(a1 + 32) + 80), v5, 0);
    }
  }

  return 1;
}

void *___ZL48nw_endpoint_resolver_update_path_resolver_lockedP30NWConcrete_nw_endpoint_handler_block_invoke_2(void *result, uint64_t a2)
{
  if (*(a2 + 212) == 204)
  {
    v2 = *(a2 + 416);
    if ((v2 & 8) != 0)
    {
      *(*(result[4] + 8) + 24) = 1;
      if ((v2 & 0x10) == 0)
      {
LABEL_4:
        if ((v2 & 0x20) == 0)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    *(*(result[5] + 8) + 24) = 1;
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_5:
    *(*(result[6] + 8) + 24) = 1;
  }

  return result;
}

uint64_t __nw_endpoint_resolver_get_details_block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = nw_endpoint_handler_copy_endpoint(v5);
  if (nw_endpoint_get_type(v6) != nw_endpoint_type_address)
  {
    goto LABEL_9;
  }

  address_family = nw_endpoint_get_address_family(v6);
  if (address_family == 2)
  {
    v8 = 40;
  }

  else
  {
    if (address_family != 30)
    {
      goto LABEL_7;
    }

    v8 = 48;
  }

  ++**(a1 + v8);
LABEL_7:
  v9 = *(a1 + 56);
  if (!*v9)
  {
    *v9 = address_family;
  }

LABEL_9:
  if (*(*(a1 + 32) + 32) == v5)
  {
    **(a1 + 64) = a2;
  }

  return 1;
}

void ___ZL32nw_endpoint_handler_create_innerPU25objcproto14OS_nw_endpoint8NSObjectPU27objcproto16OS_nw_parametersS_PFbP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_errorS_PU23objcproto12OS_nw_objectS_ESD_S5_jPhb_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (nw_protocol_options_is_quic(v6))
  {
    v3 = *(a1 + 32);
    v4 = nw_parameters_copy_context(*(a1 + 40));
    v5 = nw_context_copy_workloop(v4);
    nw_quic_connection_set_trusted_peer_keys(v6, v3, v5);
  }
}

id *nw_endpoint_handler_create_with_existing(void *a1, void *a2, void *a3, unsigned int a4, unsigned __int8 *a5)
{
  v159 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v139 = a3;
  v140 = v10;
  if (!v9)
  {
    v101 = __nwlog_obj();
    *buf = 136446210;
    v146 = "nw_endpoint_handler_create_with_existing";
    v102 = _os_log_send_and_compose_impl();

    v144 = OS_LOG_TYPE_ERROR;
    v143 = 0;
    if (!__nwlog_fault(v102, &v144, &v143))
    {
      goto LABEL_210;
    }

    if (v144 == OS_LOG_TYPE_FAULT)
    {
      v103 = __nwlog_obj();
      v104 = v144;
      if (os_log_type_enabled(v103, v144))
      {
        *buf = 136446210;
        v146 = "nw_endpoint_handler_create_with_existing";
        _os_log_impl(&dword_181A37000, v103, v104, "%{public}s called with null original_endpoint_handler", buf, 0xCu);
      }
    }

    else if (v143 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v103 = __nwlog_obj();
      v108 = v144;
      v109 = os_log_type_enabled(v103, v144);
      if (backtrace_string)
      {
        if (v109)
        {
          *buf = 136446466;
          v146 = "nw_endpoint_handler_create_with_existing";
          v147 = 2082;
          v148 = backtrace_string;
          _os_log_impl(&dword_181A37000, v103, v108, "%{public}s called with null original_endpoint_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_210:
        if (!v102)
        {
          goto LABEL_84;
        }

LABEL_211:
        free(v102);
        goto LABEL_84;
      }

      if (v109)
      {
        *buf = 136446210;
        v146 = "nw_endpoint_handler_create_with_existing";
        _os_log_impl(&dword_181A37000, v103, v108, "%{public}s called with null original_endpoint_handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v103 = __nwlog_obj();
      v113 = v144;
      if (os_log_type_enabled(v103, v144))
      {
        *buf = 136446210;
        v146 = "nw_endpoint_handler_create_with_existing";
        _os_log_impl(&dword_181A37000, v103, v113, "%{public}s called with null original_endpoint_handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_209:

    goto LABEL_210;
  }

  if (!v10)
  {
    v105 = __nwlog_obj();
    *buf = 136446210;
    v146 = "nw_endpoint_handler_create_with_existing";
    v102 = _os_log_send_and_compose_impl();

    v144 = OS_LOG_TYPE_ERROR;
    v143 = 0;
    if (!__nwlog_fault(v102, &v144, &v143))
    {
      goto LABEL_210;
    }

    if (v144 == OS_LOG_TYPE_FAULT)
    {
      v103 = __nwlog_obj();
      v106 = v144;
      if (os_log_type_enabled(v103, v144))
      {
        *buf = 136446210;
        v146 = "nw_endpoint_handler_create_with_existing";
        _os_log_impl(&dword_181A37000, v103, v106, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v143 == 1)
    {
      v110 = __nw_create_backtrace_string();
      v103 = __nwlog_obj();
      v111 = v144;
      v112 = os_log_type_enabled(v103, v144);
      if (v110)
      {
        if (v112)
        {
          *buf = 136446466;
          v146 = "nw_endpoint_handler_create_with_existing";
          v147 = 2082;
          v148 = v110;
          _os_log_impl(&dword_181A37000, v103, v111, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v110);
        if (!v102)
        {
          goto LABEL_84;
        }

        goto LABEL_211;
      }

      if (v112)
      {
        *buf = 136446210;
        v146 = "nw_endpoint_handler_create_with_existing";
        _os_log_impl(&dword_181A37000, v103, v111, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v103 = __nwlog_obj();
      v114 = v144;
      if (os_log_type_enabled(v103, v144))
      {
        *buf = 136446210;
        v146 = "nw_endpoint_handler_create_with_existing";
        _os_log_impl(&dword_181A37000, v103, v114, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_209;
  }

  if (v9[29] == 2)
  {
    v11 = nw_endpoint_flow_copy_joinable_clone_handler(v9, v10);
    p_isa = &v11->super.isa;
    if (v11 && v11->mode == 2)
    {
      obj = v11->mode_handler;
      log = obj;
      v13 = nw_endpoint_handler_copy_connected_flow_handler(v9);
      v133 = v13;
      if (v13)
      {
        v14 = v13->parameters;
        v134 = nw_parameters_copy_effective_proxy_config(v14);
        v15 = _nw_parameters_copy_effective_proxy_config(v10);
        v130 = v15;
        if (!v15 || (v16 = v15, v17 = v16[172], v16, (v17 & 2) != 0))
        {
          if (v134)
          {
            v18 = _nw_parameters_copy_default_protocol_stack(v140);
            options = nw_protocol_stack_copy_transport_protocol(v18);
            v19 = nw_protocol_stack_copy_internet_protocol(v18);
            v20 = v134;
            v21 = v20[38];

            if (v21 != 1)
            {
LABEL_124:

              goto LABEL_139;
            }

            *buf = 4;
            nw_proxy_config_remove_protocols_from_stack(v20, v18);
            v22 = nw_protocol_options_copy_definition(options);
            v23 = nw_proxy_config_copy_protocol_stack(v20, v22, buf);

            v24 = v23;
            if (!v23)
            {
LABEL_123:

              goto LABEL_124;
            }

            if (*buf == 2)
            {
              nw_protocol_stack_append_application_protocol(v18, options);
              v25 = v19;
            }

            else
            {
              v25 = options;
              if (*buf != 3)
              {
                goto LABEL_120;
              }
            }

            nw_protocol_stack_append_application_protocol(v18, v25);
LABEL_120:
            iterate_block[0] = MEMORY[0x1E69E9820];
            iterate_block[1] = 3221225472;
            iterate_block[2] = __nw_endpoint_handler_create_with_existing_block_invoke;
            iterate_block[3] = &unk_1E6A3A230;
            v76 = v18;
            v142 = v76;
            nw_protocol_stack_iterate_application_protocols(v23, iterate_block);
            v77 = _nw_protocol_stack_copy_transport_protocol(v23);
            if (v77)
            {
              nw_protocol_stack_set_original_proxied_transport_protocol(v76);
              nw_protocol_stack_set_transport_protocol(v76, v77);
            }

            v24 = v23;
            goto LABEL_123;
          }
        }

        if ((v9[71] & 0x40) != 0)
        {
LABEL_140:

          goto LABEL_141;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v18 = gconnectionLogObj;
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
LABEL_139:

          goto LABEL_140;
        }

        if (v9[71])
        {
          v53 = "dry-run ";
        }

        else
        {
          v53 = "";
        }

        v54 = nw_endpoint_handler_copy_endpoint(v9);
        v55 = v54;
        if (v54)
        {
          logging_description = _nw_endpoint_get_logging_description(v54);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v69 = v9[30];
        if (v69 > 5)
        {
          v70 = "unknown-state";
        }

        else
        {
          v70 = off_1E6A31048[v69];
        }

        v125 = v70;
        v71 = v9;
        v72 = v71;
        v73 = v9[29];
        v126 = v14;
        optionsb = v55;
        if (v73 > 2)
        {
          switch(v73)
          {
            case 3:
              v74 = p_isa;
              v75 = "proxy";
              break;
            case 4:
              v74 = p_isa;
              v75 = "fallback";
              break;
            case 5:
              v74 = p_isa;
              v75 = "transform";
              break;
            default:
LABEL_134:
              v74 = p_isa;
              v75 = "unknown-mode";
              break;
          }
        }

        else
        {
          if (v73)
          {
            if (v73 == 1)
            {
              v74 = p_isa;
              v75 = "resolver";
              goto LABEL_137;
            }

            if (v73 == 2)
            {
              v74 = p_isa;
              v124 = nw_endpoint_flow_mode_string(*(v71 + 33));
LABEL_138:

              v80 = v72;
              os_unfair_lock_lock(v72 + 28);
              v81 = v80[8];
              os_unfair_lock_unlock(v72 + 28);

              *buf = 136447746;
              v146 = "nw_endpoint_handler_create_with_existing";
              v147 = 2082;
              v148 = (v9 + 46);
              v149 = 2082;
              v150 = v53;
              v151 = 2082;
              v152 = logging_description;
              v153 = 2082;
              v154 = v125;
              v155 = 2082;
              v156 = v124;
              v157 = 2114;
              v158 = v81;
              _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] not applying effective proxy config", buf, 0x48u);

              p_isa = v74;
              v14 = v126;

              goto LABEL_139;
            }

            goto LABEL_134;
          }

          v74 = p_isa;
          v75 = "path";
        }

LABEL_137:
        v124 = v75;
        goto LABEL_138;
      }

      if ((v9[71] & 0x40) != 0)
      {
        goto LABEL_142;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v14 = gconnectionLogObj;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
LABEL_141:

        v10 = v140;
LABEL_142:
        v82 = [[NWConcrete_nw_endpoint_handler alloc] initWithEndpoint:v10 parameters:nw_connection_endpoint_report_on_nw_queue reportCallback:v139 context:0 parent:a4 identifier:a5 connection_uuid:?];
        v59 = v82;
        v83 = p_isa;
        if (v82)
        {
          *(v82 + 29) = 2;
          v84 = v82[9];
          v85 = *(log + 32);
          v86 = objc_alloc_init(NWConcrete_nw_endpoint_flow);
          v87 = v85 & 2;
          if (!v84)
          {
            ++v87;
          }

          *(v86 + 32) = v87 | *(v86 + 32) & 0xFC;
          *v86->connection_uuid = *(v59 + 148);
          v88 = v59[33];
          v59[33] = v86;

          p_isa = v83;
          v89 = v59[33];
          v90 = log;
          if (v89)
          {
            objc_storeStrong(v89 + 5, obj);
LABEL_147:

            v91 = v59;
LABEL_167:

            goto LABEL_168;
          }

          v115 = __nwlog_obj();
          *buf = 136446210;
          v146 = "nw_endpoint_flow_set_clone_flow";
          v116 = _os_log_send_and_compose_impl();

          v144 = OS_LOG_TYPE_ERROR;
          v143 = 0;
          if (__nwlog_fault(v116, &v144, &v143))
          {
            if (v144 == OS_LOG_TYPE_FAULT)
            {
              v117 = __nwlog_obj();
              v118 = v144;
              if (os_log_type_enabled(v117, v144))
              {
                *buf = 136446210;
                v146 = "nw_endpoint_flow_set_clone_flow";
                _os_log_impl(&dword_181A37000, v117, v118, "%{public}s called with null endpoint_flow", buf, 0xCu);
              }
            }

            else
            {
              if (v143 == 1)
              {
                v119 = __nw_create_backtrace_string();
                v120 = __nwlog_obj();
                v121 = v144;
                v122 = os_log_type_enabled(v120, v144);
                if (v119)
                {
                  if (v122)
                  {
                    *buf = 136446466;
                    v146 = "nw_endpoint_flow_set_clone_flow";
                    v147 = 2082;
                    v148 = v119;
                    _os_log_impl(&dword_181A37000, v120, v121, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v119);
                }

                else
                {
                  if (v122)
                  {
                    *buf = 136446210;
                    v146 = "nw_endpoint_flow_set_clone_flow";
                    _os_log_impl(&dword_181A37000, v120, v121, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
                  }
                }

                goto LABEL_223;
              }

              v117 = __nwlog_obj();
              v123 = v144;
              if (os_log_type_enabled(v117, v144))
              {
                *buf = 136446210;
                v146 = "nw_endpoint_flow_set_clone_flow";
                _os_log_impl(&dword_181A37000, v117, v123, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_223:
          if (v116)
          {
            free(v116);
          }

          p_isa = v83;
          goto LABEL_147;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v92 = gLogObj;
        *buf = 136446210;
        v146 = "nw_endpoint_handler_create_with_existing";
        v93 = _os_log_send_and_compose_impl();

        p_isa = v83;
        v144 = OS_LOG_TYPE_ERROR;
        v143 = 0;
        if (__nwlog_fault(v93, &v144, &v143))
        {
          if (v144 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v94 = gLogObj;
            v95 = v144;
            if (os_log_type_enabled(v94, v144))
            {
              *buf = 136446210;
              v146 = "nw_endpoint_handler_create_with_existing";
              _os_log_impl(&dword_181A37000, v94, v95, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed", buf, 0xCu);
            }
          }

          else if (v143 == 1)
          {
            v96 = __nw_create_backtrace_string();
            v94 = __nwlog_obj();
            v97 = v144;
            v98 = os_log_type_enabled(v94, v144);
            if (v96)
            {
              if (v98)
              {
                *buf = 136446466;
                v146 = "nw_endpoint_handler_create_with_existing";
                v147 = 2082;
                v148 = v96;
                _os_log_impl(&dword_181A37000, v94, v97, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v96);
              if (!v93)
              {
                goto LABEL_167;
              }

              goto LABEL_166;
            }

            if (v98)
            {
              *buf = 136446210;
              v146 = "nw_endpoint_handler_create_with_existing";
              _os_log_impl(&dword_181A37000, v94, v97, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v94 = __nwlog_obj();
            v99 = v144;
            if (os_log_type_enabled(v94, v144))
            {
              *buf = 136446210;
              v146 = "nw_endpoint_handler_create_with_existing";
              _os_log_impl(&dword_181A37000, v94, v99, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v93)
        {
          goto LABEL_167;
        }

LABEL_166:
        free(v93);
        goto LABEL_167;
      }

      if (v9[71])
      {
        v49 = "dry-run ";
      }

      else
      {
        v49 = "";
      }

      v50 = nw_endpoint_handler_copy_endpoint(v9);
      v51 = v50;
      if (v50)
      {
        v52 = _nw_endpoint_get_logging_description(v50);
      }

      else
      {
        v52 = "<NULL>";
      }

      v62 = v9[30];
      if (v62 > 5)
      {
        v63 = "unknown-state";
      }

      else
      {
        v63 = off_1E6A31048[v62];
      }

      v131 = v63;
      v64 = v9;
      v65 = v64;
      v66 = v9[29];
      v136 = p_isa;
      if (v66 > 2)
      {
        switch(v66)
        {
          case 3:
            v67 = v52;
            v68 = "proxy";
            break;
          case 4:
            v67 = v52;
            v68 = "fallback";
            break;
          case 5:
            v67 = v52;
            v68 = "transform";
            break;
          default:
LABEL_127:
            v67 = v52;
            v68 = "unknown-mode";
            break;
        }
      }

      else
      {
        if (v66)
        {
          if (v66 == 1)
          {
            v67 = v52;
            v68 = "resolver";
            goto LABEL_130;
          }

          if (v66 == 2)
          {
            v67 = v52;
            optionsa = nw_endpoint_flow_mode_string(*(v64 + 33));
LABEL_131:

            v78 = v65;
            os_unfair_lock_lock(v65 + 28);
            v79 = v78[8];
            os_unfair_lock_unlock(v65 + 28);

            *buf = 136447746;
            v146 = "nw_endpoint_handler_create_with_existing";
            v147 = 2082;
            v148 = (v9 + 46);
            v149 = 2082;
            v150 = v49;
            v151 = 2082;
            v152 = v67;
            v153 = 2082;
            v154 = v131;
            v155 = 2082;
            v156 = optionsa;
            v157 = 2114;
            v158 = v79;
            _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no connected handler, not checking for effective proxy config", buf, 0x48u);

            p_isa = v136;
            goto LABEL_141;
          }

          goto LABEL_127;
        }

        v67 = v52;
        v68 = "path";
      }

LABEL_130:
      optionsa = v68;
      goto LABEL_131;
    }

    if ((v9[71] & 0x40) != 0)
    {
      v59 = 0;
      goto LABEL_169;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    log = gconnectionLogObj;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
LABEL_91:
      v59 = 0;
LABEL_168:

LABEL_169:
      goto LABEL_170;
    }

    if (v9[71])
    {
      v31 = "dry-run ";
    }

    else
    {
      v31 = "";
    }

    v32 = nw_endpoint_handler_copy_endpoint(v9);
    v33 = v32;
    if (v32)
    {
      v34 = _nw_endpoint_get_logging_description(v32);
    }

    else
    {
      v34 = "<NULL>";
    }

    v43 = v9[30];
    if (v43 > 5)
    {
      v44 = "unknown-state";
    }

    else
    {
      v44 = off_1E6A31048[v43];
    }

    v45 = v9;
    v46 = v45;
    v47 = v9[29];
    v135 = p_isa;
    if (v47 > 2)
    {
      switch(v47)
      {
        case 3:
          v48 = "proxy";
          goto LABEL_90;
        case 4:
          v48 = "fallback";
          goto LABEL_90;
        case 5:
          v48 = "transform";
          goto LABEL_90;
      }
    }

    else
    {
      switch(v47)
      {
        case 0:
          v48 = "path";
          goto LABEL_90;
        case 1:
          v48 = "resolver";
          goto LABEL_90;
        case 2:
          v48 = nw_endpoint_flow_mode_string(*(v45 + 33));
LABEL_90:

          v60 = v46;
          os_unfair_lock_lock(v46 + 28);
          v61 = v60[8];
          os_unfair_lock_unlock(v46 + 28);

          *buf = 136447746;
          v146 = "nw_endpoint_handler_create_with_existing";
          v147 = 2082;
          v148 = (v9 + 46);
          v149 = 2082;
          v150 = v31;
          v151 = 2082;
          v152 = v34;
          v153 = 2082;
          v154 = v44;
          v155 = 2082;
          v156 = v48;
          v157 = 2114;
          v158 = v61;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Could not find joinable endpoint flow to clone from", buf, 0x48u);

          p_isa = v135;
          goto LABEL_91;
      }
    }

    v48 = "unknown-mode";
    goto LABEL_90;
  }

  if ((v9[71] & 0x40) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v26 = gconnectionLogObj;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    if (v9[71])
    {
      v27 = "dry-run ";
    }

    else
    {
      v27 = "";
    }

    v28 = nw_endpoint_handler_copy_endpoint(v9);
    v29 = v28;
    if (v28)
    {
      v30 = _nw_endpoint_get_logging_description(v28);
    }

    else
    {
      v30 = "<NULL>";
    }

    v35 = (v9 + 46);

    v36 = v9[30];
    if (v36 > 5)
    {
      v37 = "unknown-state";
    }

    else
    {
      v37 = off_1E6A31048[v36];
    }

    v38 = v9;
    v39 = v38;
    v40 = v9[29];
    v137 = v9;
    if (v40 > 2)
    {
      switch(v40)
      {
        case 3:
          v41 = v27;
          v42 = "proxy";
          goto LABEL_82;
        case 4:
          v41 = v27;
          v42 = "fallback";
          goto LABEL_82;
        case 5:
          v41 = v27;
          v42 = "transform";
          goto LABEL_82;
      }
    }

    else
    {
      switch(v40)
      {
        case 0:
          v41 = v27;
          v42 = "path";
          goto LABEL_82;
        case 1:
          v41 = v27;
          v42 = "resolver";
          goto LABEL_82;
        case 2:
          v41 = v27;
          v42 = nw_endpoint_flow_mode_string(*(v38 + 33));
LABEL_82:

          v57 = v39;
          os_unfair_lock_lock(v39 + 28);
          v58 = v57[8];
          os_unfair_lock_unlock(v39 + 28);

          *buf = 136447746;
          v146 = "nw_endpoint_handler_create_with_existing";
          v147 = 2082;
          v148 = v35;
          v149 = 2082;
          v150 = v41;
          v151 = 2082;
          v152 = v30;
          v153 = 2082;
          v154 = v37;
          v155 = 2082;
          v156 = v42;
          v157 = 2114;
          v158 = v58;
          _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Existing endpoint handler not eligible for peel-off", buf, 0x48u);

          v9 = v137;
LABEL_83:

          goto LABEL_84;
      }
    }

    v41 = v27;
    v42 = "unknown-mode";
    goto LABEL_82;
  }

LABEL_84:
  v59 = 0;
LABEL_170:

  return v59;
}
uint64_t nw_protocol_webtransport_session_get_remote_endpoint(nw_protocol *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[48];
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_webtransport_session_get_remote_endpoint";
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
        v14 = "nw_protocol_webtransport_session_get_remote_endpoint";
        v6 = "%{public}s called with null webtransport_session";
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
        v14 = "nw_protocol_webtransport_session_get_remote_endpoint";
        v6 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
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
        v14 = "nw_protocol_webtransport_session_get_remote_endpoint";
        v6 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_webtransport_session_get_remote_endpoint";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_webtransport_session_get_remote_endpoint";
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
        v14 = "nw_protocol_webtransport_session_get_remote_endpoint";
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
        v14 = "nw_protocol_webtransport_session_get_remote_endpoint";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_webtransport_session_get_remote_endpoint";
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
    v14 = "nw_protocol_webtransport_session_get_remote_endpoint";
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

uint64_t nw_protocol_webtransport_session_get_parameters(nw_protocol *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[46];
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_webtransport_session_get_parameters";
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
        v14 = "nw_protocol_webtransport_session_get_parameters";
        v6 = "%{public}s called with null webtransport_session";
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
        v14 = "nw_protocol_webtransport_session_get_parameters";
        v6 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
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
        v14 = "nw_protocol_webtransport_session_get_parameters";
        v6 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_webtransport_session_get_parameters";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_webtransport_session_get_parameters";
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
        v14 = "nw_protocol_webtransport_session_get_parameters";
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
        v14 = "nw_protocol_webtransport_session_get_parameters";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_webtransport_session_get_parameters";
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
    v14 = "nw_protocol_webtransport_session_get_parameters";
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

uint64_t nw_protocol_webtransport_session_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_webtransport_session_finalize_output_frames";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v17 = "nw_protocol_webtransport_session_finalize_output_frames";
      v9 = "%{public}s called with null protocol";
    }

    else if (v14 == 1)
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
          v17 = "nw_protocol_webtransport_session_finalize_output_frames";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_35:
        if (!v6)
        {
          return 0;
        }

LABEL_36:
        free(v6);
        return 0;
      }

      if (!v11)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v17 = "nw_protocol_webtransport_session_finalize_output_frames";
      v9 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v17 = "nw_protocol_webtransport_session_finalize_output_frames";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_34:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[145] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v4 = handle[123];
        *buf = 136446978;
        v17 = "nw_protocol_webtransport_session_finalize_output_frames";
        v18 = 2082;
        v19 = (handle + 124);
        v20 = 2080;
        v21 = " ";
        v22 = 1024;
        v23 = v4;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> called, ignoring", buf, 0x26u);
      }
    }

    return 0;
  }

  __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_webtransport_session_finalize_output_frames";
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v6, &type, &v14))
  {
    goto LABEL_35;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v17 = "nw_protocol_webtransport_session_finalize_output_frames";
    v9 = "%{public}s called with null webtransport_session";
    goto LABEL_34;
  }

  if (v14 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v17 = "nw_protocol_webtransport_session_finalize_output_frames";
    v9 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_34;
  }

  v12 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v13 = os_log_type_enabled(v7, type);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v17 = "nw_protocol_webtransport_session_finalize_output_frames";
    v9 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_34;
  }

  if (v13)
  {
    *buf = 136446466;
    v17 = "nw_protocol_webtransport_session_finalize_output_frames";
    v18 = 2082;
    v19 = v12;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v6)
  {
    goto LABEL_36;
  }

  return 0;
}

uint64_t nw_protocol_webtransport_session_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_webtransport_session_get_output_frames";
    v10 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v10, &type, &v18))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_session_get_output_frames";
      v13 = "%{public}s called with null protocol";
    }

    else if (v18 == 1)
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
          v21 = "nw_protocol_webtransport_session_get_output_frames";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_35:
        if (!v10)
        {
          return 0;
        }

LABEL_36:
        free(v10);
        return 0;
      }

      if (!v15)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_session_get_output_frames";
      v13 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_session_get_output_frames";
      v13 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_34:
    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[145] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v8 = handle[123];
        *buf = 136446978;
        v21 = "nw_protocol_webtransport_session_get_output_frames";
        v22 = 2082;
        v23 = (handle + 124);
        v24 = 2080;
        v25 = " ";
        v26 = 1024;
        v27 = v8;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> called, ignoring", buf, 0x26u);
      }
    }

    return 0;
  }

  __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_webtransport_session_get_output_frames";
  v10 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v10, &type, &v18))
  {
    goto LABEL_35;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_session_get_output_frames";
    v13 = "%{public}s called with null webtransport_session";
    goto LABEL_34;
  }

  if (v18 != 1)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_session_get_output_frames";
    v13 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_34;
  }

  v16 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v12 = type;
  v17 = os_log_type_enabled(v11, type);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_session_get_output_frames";
    v13 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_34;
  }

  if (v17)
  {
    *buf = 136446466;
    v21 = "nw_protocol_webtransport_session_get_output_frames";
    v22 = 2082;
    v23 = v16;
    _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v10)
  {
    goto LABEL_36;
  }

  return 0;
}

uint64_t nw_protocol_webtransport_session_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_webtransport_session_get_input_frames";
    v10 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v10, &type, &v18))
    {
      goto LABEL_35;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_session_get_input_frames";
      v13 = "%{public}s called with null protocol";
    }

    else if (v18 == 1)
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
          v21 = "nw_protocol_webtransport_session_get_input_frames";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_35:
        if (!v10)
        {
          return 0;
        }

LABEL_36:
        free(v10);
        return 0;
      }

      if (!v15)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_session_get_input_frames";
      v13 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v21 = "nw_protocol_webtransport_session_get_input_frames";
      v13 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_34:
    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
    goto LABEL_35;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[145] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v8 = handle[123];
        *buf = 136446978;
        v21 = "nw_protocol_webtransport_session_get_input_frames";
        v22 = 2082;
        v23 = (handle + 124);
        v24 = 2080;
        v25 = " ";
        v26 = 1024;
        v27 = v8;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> called, ignoring", buf, 0x26u);
      }
    }

    return 0;
  }

  __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_webtransport_session_get_input_frames";
  v10 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v10, &type, &v18))
  {
    goto LABEL_35;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_session_get_input_frames";
    v13 = "%{public}s called with null webtransport_session";
    goto LABEL_34;
  }

  if (v18 != 1)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_session_get_input_frames";
    v13 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_34;
  }

  v16 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v12 = type;
  v17 = os_log_type_enabled(v11, type);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    v21 = "nw_protocol_webtransport_session_get_input_frames";
    v13 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_34;
  }

  if (v17)
  {
    *buf = 136446466;
    v21 = "nw_protocol_webtransport_session_get_input_frames";
    v22 = 2082;
    v23 = v16;
    _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v10)
  {
    goto LABEL_36;
  }

  return 0;
}

void nw_protocol_webtransport_session_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_output_available";
    v16 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v16, type, &v28))
    {
      goto LABEL_54;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type[0];
      if (!os_log_type_enabled(v17, type[0]))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_output_available";
      v19 = "%{public}s called with null protocol";
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type[0];
      v23 = os_log_type_enabled(v17, type[0]);
      if (backtrace_string)
      {
        if (v23)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_webtransport_session_output_available";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_54:
        if (!v16)
        {
          return;
        }

LABEL_55:
        free(v16);
        return;
      }

      if (!v23)
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_output_available";
      v19 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v17 = __nwlog_obj();
      v18 = type[0];
      if (!os_log_type_enabled(v17, type[0]))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_output_available";
      v19 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_53:
    _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
    goto LABEL_54;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[580] & 2) == 0 && gLogDatapath == 1)
    {
      v20 = __nwlog_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(handle + 123);
        *buf = 136446978;
        *&buf[4] = "nw_protocol_webtransport_session_output_available";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v35 = " ";
        LOWORD(v36) = 1024;
        *(&v36 + 2) = v21;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    if (*(handle + 119) != 4 && (handle[580] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(handle + 123);
        v6 = *(handle + 119);
        *buf = 136447234;
        *&buf[4] = "nw_protocol_webtransport_session_output_available";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v35 = " ";
        LOWORD(v36) = 1024;
        *(&v36 + 2) = v5;
        HIWORD(v36) = 1024;
        LODWORD(v37) = v6;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> output_available called in state %d", buf, 0x2Cu);
      }
    }

    v7 = *(handle + 120);
    if (v7 == 1)
    {
      v15 = *(handle + 56);
      if (v15)
      {
        nw_protocol_output_available(v15, a1);
      }
    }

    else if (!v7)
    {
      v8 = *(handle + 25);
      if (v8 && !_nw_array_is_empty(v8))
      {
        v9 = _nw_array_create();
        v10 = *(handle + 25);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke;
        v35 = &__block_descriptor_tmp_50_36984;
        v36 = handle;
        v37 = v9;
        if (v10)
        {
          _nw_array_apply(v10, buf);
        }

        *type = MEMORY[0x1E69E9820];
        v30 = 0x40000000;
        v31 = ___ZL51nw_webtransport_http2_send_pending_control_capsulesP23nw_webtransport_session_block_invoke_51;
        v32 = &__block_descriptor_tmp_52;
        v33 = handle;
        if (v9)
        {
          _nw_array_apply(v9, type);
          os_release(v9);
        }
      }

      v11 = *(handle + 23);
      *(handle + 23) = -1;
      v12 = *(handle + 56);
      if (v12)
      {
        nw_protocol_output_available(v12, a1);
      }

      v13 = *(handle + 24);
      if (v13)
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 0x40000000;
        v27[2] = ___ZL49nw_protocol_webtransport_session_output_availableP11nw_protocolS0__block_invoke;
        v27[3] = &__block_descriptor_tmp_63_37284;
        v27[4] = v11;
        v27[5] = a1;
        nw_hash_table_apply(v13, v27);
        v14 = *(handle + 24);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 0x40000000;
        v26[2] = ___ZL49nw_protocol_webtransport_session_output_availableP11nw_protocolS0__block_invoke_2;
        v26[3] = &__block_descriptor_tmp_64_37285;
        v26[4] = v11;
        v26[5] = a1;
        nw_hash_table_apply(v14, v26);
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_webtransport_session_output_available";
  v16 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (!__nwlog_fault(v16, type, &v28))
  {
    goto LABEL_54;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    v17 = __nwlog_obj();
    v18 = type[0];
    if (!os_log_type_enabled(v17, type[0]))
    {
      goto LABEL_54;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_output_available";
    v19 = "%{public}s called with null webtransport_session";
    goto LABEL_53;
  }

  if (v28 != 1)
  {
    v17 = __nwlog_obj();
    v18 = type[0];
    if (!os_log_type_enabled(v17, type[0]))
    {
      goto LABEL_54;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_output_available";
    v19 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_53;
  }

  v24 = __nw_create_backtrace_string();
  v17 = __nwlog_obj();
  v18 = type[0];
  v25 = os_log_type_enabled(v17, type[0]);
  if (!v24)
  {
    if (!v25)
    {
      goto LABEL_54;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_output_available";
    v19 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_53;
  }

  if (v25)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_session_output_available";
    *&buf[12] = 2082;
    *&buf[14] = v24;
    _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v24);
  if (v16)
  {
    goto LABEL_55;
  }
}

uint64_t ___ZL49nw_protocol_webtransport_session_output_availableP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  if (object[8] > *(a1 + 32))
  {
    nw_protocol_output_available(object, *(a1 + 40));
  }

  return 1;
}

uint64_t ___ZL49nw_protocol_webtransport_session_output_availableP11nw_protocolS0__block_invoke_2(uint64_t a1, uint64_t a2)
{
  object = nw_hash_node_get_object(a2);
  if (object[8] <= *(a1 + 32))
  {
    nw_protocol_output_available(object, *(a1 + 40));
  }

  return 1;
}

void nw_protocol_webtransport_session_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v120 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_input_available";
    v72 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v102[0]) = 0;
    if (!__nwlog_fault(v72, type, v102))
    {
      goto LABEL_209;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v102[0]) != 1)
      {
        v73 = __nwlog_obj();
        v74 = type[0];
        if (!os_log_type_enabled(v73, type[0]))
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_input_available";
        v75 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_208;
      }

      backtrace_string = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v74 = type[0];
      v81 = os_log_type_enabled(v73, type[0]);
      if (!backtrace_string)
      {
        if (!v81)
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_input_available";
        v75 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_208;
      }

      if (v81)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_session_input_available";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v73, v74, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_209;
    }

    v73 = __nwlog_obj();
    v74 = type[0];
    if (!os_log_type_enabled(v73, type[0]))
    {
      goto LABEL_209;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_input_available";
    v75 = "%{public}s called with null protocol";
LABEL_208:
    _os_log_impl(&dword_181A37000, v73, v74, v75, buf, 0xCu);
    goto LABEL_209;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_input_available";
    v72 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v102[0]) = 0;
    if (!__nwlog_fault(v72, type, v102))
    {
      goto LABEL_209;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v102[0]) != 1)
      {
        v73 = __nwlog_obj();
        v74 = type[0];
        if (!os_log_type_enabled(v73, type[0]))
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_input_available";
        v75 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_208;
      }

      v82 = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v74 = type[0];
      v83 = os_log_type_enabled(v73, type[0]);
      if (!v82)
      {
        if (!v83)
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_input_available";
        v75 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_208;
      }

      if (v83)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_session_input_available";
        *&buf[12] = 2082;
        *&buf[14] = v82;
        v84 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
LABEL_191:
        _os_log_impl(&dword_181A37000, v73, v74, v84, buf, 0x16u);
      }

LABEL_192:
      free(v82);
      if (!v72)
      {
        return;
      }

LABEL_210:
      free(v72);
      return;
    }

    v73 = __nwlog_obj();
    v74 = type[0];
    if (!os_log_type_enabled(v73, type[0]))
    {
      goto LABEL_209;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_input_available";
    v75 = "%{public}s called with null webtransport_session";
    goto LABEL_208;
  }

  if ((handle[580] & 2) == 0 && gLogDatapath == 1)
  {
    v76 = __nwlog_obj();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      v77 = *(handle + 123);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_webtransport_session_input_available";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v111 = " ";
      LOWORD(v112) = 1024;
      *(&v112 + 2) = v77;
      _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  if (*(handle + 120) > 1u)
  {
    return;
  }

  v3 = *(handle + 4);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_http_get_input";
    v72 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v102[0]) = 0;
    if (!__nwlog_fault(v72, type, v102))
    {
      goto LABEL_209;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v73 = __nwlog_obj();
      v74 = type[0];
      if (!os_log_type_enabled(v73, type[0]))
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v75 = "%{public}s called with null output_handler";
      goto LABEL_208;
    }

    if (LOBYTE(v102[0]) != 1)
    {
      v73 = __nwlog_obj();
      v74 = type[0];
      if (!os_log_type_enabled(v73, type[0]))
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v75 = "%{public}s called with null output_handler, backtrace limit exceeded";
      goto LABEL_208;
    }

    v82 = __nw_create_backtrace_string();
    v73 = __nwlog_obj();
    v74 = type[0];
    v86 = os_log_type_enabled(v73, type[0]);
    if (!v82)
    {
      if (!v86)
      {
        goto LABEL_209;
      }

      *buf = 136446210;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      v75 = "%{public}s called with null output_handler, no backtrace";
      goto LABEL_208;
    }

    if (v86)
    {
      *buf = 136446466;
      *&buf[4] = "nw_webtransport_session_http_get_input";
      *&buf[12] = 2082;
      *&buf[14] = v82;
      v84 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
      goto LABEL_191;
    }

    goto LABEL_192;
  }

  v4 = v3[3];
  if (!v4 || !*(v4 + 80))
  {
    if ((handle[580] & 2) == 0)
    {
      v78 = __nwlog_obj();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        v79 = *(handle + 123);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v111 = " ";
        LOWORD(v112) = 1024;
        *(&v112 + 2) = v79;
        _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
      }
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_webtransport_session_http_get_input";
    v72 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v102[0]) = 0;
    if (__nwlog_fault(v72, type, v102))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v73 = __nwlog_obj();
        v74 = type[0];
        if (!os_log_type_enabled(v73, type[0]))
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        v75 = "%{public}s output handler has no get_input_frames callback";
        goto LABEL_208;
      }

      if (LOBYTE(v102[0]) != 1)
      {
        v73 = __nwlog_obj();
        v74 = type[0];
        if (!os_log_type_enabled(v73, type[0]))
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        v75 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
        goto LABEL_208;
      }

      v82 = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v74 = type[0];
      v85 = os_log_type_enabled(v73, type[0]);
      if (!v82)
      {
        if (!v85)
        {
          goto LABEL_209;
        }

        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        v75 = "%{public}s output handler has no get_input_frames callback, no backtrace";
        goto LABEL_208;
      }

      if (v85)
      {
        *buf = 136446466;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        *&buf[12] = 2082;
        *&buf[14] = v82;
        v84 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
        goto LABEL_191;
      }

      goto LABEL_192;
    }

LABEL_209:
    if (!v72)
    {
      return;
    }

    goto LABEL_210;
  }

  while ((*(handle + 119) | 2) == 3)
  {
    if (!nw_protocol_get_input_frames(v3, handle, 0, 0, 0xFFFFFFFFLL, (handle + 120)))
    {
      return;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    v111 = __Block_byref_object_copy__36471;
    v112 = __Block_byref_object_dispose__36472;
    if (nw_protocol_copy_http_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
    }

    v113 = nw_protocol_copy_http_definition_http_definition;
    LOBYTE(v114) = v114 | 1;
    *type = MEMORY[0x1E69E9820];
    v91 = 0x40000000;
    v92 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
    v93 = &unk_1E6A31940;
    v94 = buf;
    v95 = handle;
    v96 = handle + 120;
    v5 = *(handle + 15);
    do
    {
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 32);
      v7 = (v92)(type);
      v5 = v6;
    }

    while ((v7 & 1) != 0);
    _Block_object_dispose(buf, 8);
    if (v114)
    {
      if (v113)
      {
        os_release(v113);
      }
    }
  }

  v8 = *(handle + 120);
  if (v8 == 1)
  {
    nw_webtransport_http3_handle_input(handle);
    v11 = *(handle + 56);
    if (v11 && *(v11 + 72))
    {
      nw_protocol_input_available(*(v11 + 48), v11);
    }
  }

  else if (!v8)
  {
    if ((handle[580] & 2) == 0 && gLogDatapath == 1)
    {
      v87 = __nwlog_obj();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
      {
        v88 = *(handle + 123);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_http2_handle_capsules";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v111 = " ";
        LOWORD(v112) = 1024;
        *(&v112 + 2) = v88;
        _os_log_impl(&dword_181A37000, v87, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    if (*(handle + 119) == 4)
    {
      v9 = (handle + 96);
      v10 = (handle + 136);
      while (1)
      {
        capsule = nw_http_capsule_framer_read_capsule(handle + 12, handle);
        if (!capsule && !*v10)
        {
          return;
        }

        if (*(handle + 57))
        {
          goto LABEL_36;
        }

        v23 = *v9;
        if (*v9 == -1)
        {
LABEL_103:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v40 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
            *&buf[12] = 2048;
            *&buf[14] = v23;
            _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
          }

          goto LABEL_36;
        }

        v24 = *(handle + 13) != -1 && *(handle + 14) == 0;
        if (v23 <= 16770303)
        {
          if ((v23 - 16770048) < 6 || (v23 + 1) <= 4 && v23)
          {
            goto LABEL_103;
          }
        }

        else if ((v23 - 420171065) <= 9 && ((1 << (v23 - 57)) & 0x2EF) != 0)
        {
          v108 = -1;
          if (nw_http_capsule_framer_parse_vle_value(handle + 12, handle, &v108))
          {
            stream = nw_webtransport_session_get_stream(handle, v108);
            if (stream)
            {
              goto LABEL_96;
            }

            if ((v23 - 420171067) > 1)
            {
              goto LABEL_132;
            }

            v52 = v108;
            v53 = handle[580];
            if (v108 >> 60 || ((v108 ^ v53) & 1) == 0)
            {
              if ((v53 & 2) == 0)
              {
                v58 = __nwlog_obj();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  v59 = *(handle + 123);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = handle + 496;
                  *&buf[22] = 2080;
                  v111 = " ";
                  LOWORD(v112) = 1024;
                  *(&v112 + 2) = v59;
                  v60 = v58;
                  v61 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                  goto LABEL_131;
                }
              }

LABEL_132:
              if ((handle[580] & 2) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v62 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  v63 = *(handle + 123);
                  *buf = 136447490;
                  *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                  *&buf[12] = 2082;
                  *&buf[14] = handle + 496;
                  *&buf[22] = 2080;
                  v111 = " ";
                  LOWORD(v112) = 1024;
                  *(&v112 + 2) = v63;
                  HIWORD(v112) = 2048;
                  v113 = v108;
                  v114 = 2048;
                  v115 = v23;
                  _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                }
              }

              goto LABEL_36;
            }

            v54 = *(handle + 53);
            if (!v54 || (v55 = *v54) == 0 || !*v55)
            {
              if ((v53 & 2) == 0)
              {
                v64 = __nwlog_obj();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  v65 = *(handle + 123);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                  *&buf[12] = 2082;
                  *&buf[14] = handle + 496;
                  *&buf[22] = 2080;
                  v111 = " ";
                  LOWORD(v112) = 1024;
                  *(&v112 + 2) = v65;
                  v60 = v64;
                  v61 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_131:
                  _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_ERROR, v61, buf, 0x26u);
                }
              }

              goto LABEL_132;
            }

            v56 = _nw_parameters_copy(*(handle + 46));
            handle[580] |= 0x20u;
            *(handle + 22) = v52;
            object = v56;
            v57 = (***(handle + 53))(*(handle + 53), *(handle + 48));
            *(handle + 22) = -1;
            handle[580] &= ~0x20u;
            if (v57)
            {
              stream = nw_webtransport_session_get_stream(handle, v52);
            }

            else
            {
              stream = 0;
            }

            if (object)
            {
              v66 = stream;
              os_release(object);
              stream = v66;
            }

            if (!stream)
            {
              goto LABEL_132;
            }

            if (*(stream + 184) != 3)
            {
LABEL_96:
              *(handle + 57) = stream;
              goto LABEL_36;
            }

            if ((handle[580] & 2) != 0)
            {
              goto LABEL_36;
            }

            v67 = __nwlog_obj();
            if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_36;
            }

            v68 = *(handle + 123);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
            *&buf[12] = 2082;
            *&buf[14] = handle + 496;
            *&buf[22] = 2080;
            v111 = " ";
            LOWORD(v112) = 1024;
            *(&v112 + 2) = v68;
            HIWORD(v112) = 2048;
            v113 = v108;
            v43 = v67;
            v44 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
          }

          else
          {
            if (!v24)
            {
              goto LABEL_36;
            }

            if ((handle[580] & 2) != 0)
            {
              goto LABEL_36;
            }

            v41 = __nwlog_obj();
            if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_36;
            }

            v42 = *(handle + 123);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
            *&buf[12] = 2082;
            *&buf[14] = handle + 496;
            *&buf[22] = 2080;
            v111 = " ";
            LOWORD(v112) = 1024;
            *(&v112 + 2) = v42;
            HIWORD(v112) = 2048;
            v113 = v23;
            v43 = v41;
            v44 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
          }

          _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, v44, buf, 0x30u);
        }

        else if ((v23 - 16770304) < 4)
        {
          goto LABEL_103;
        }

LABEL_36:
        v16 = *(handle + 12);
        if ((handle[580] & 2) == 0 && gLogDatapath == 1)
        {
          v69 = __nwlog_obj();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            v70 = *(handle + 123);
            v71 = *(handle + 13);
            *buf = 136447490;
            *&buf[4] = "nw_webtransport_http2_handle_capsules";
            *&buf[12] = 2082;
            *&buf[14] = handle + 496;
            *&buf[22] = 2080;
            v111 = " ";
            LOWORD(v112) = 1024;
            *(&v112 + 2) = v70;
            HIWORD(v112) = 2048;
            v113 = v16;
            v114 = 2048;
            v115 = v71;
            _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
          }
        }

        if (v16 > 16770303)
        {
          if (v16 <= 420171064)
          {
            if ((v16 - 16770304) >= 4)
            {
              if (v16 == 420171064)
              {
                v17 = *v10;
                if (*v10)
                {
                  *(v17 + 40) = &v108;
                  v18 = *(handle + 18);
                  v108 = v17;
                  v109 = v18;
                  *(handle + 17) = 0;
                  *(handle + 18) = v10;
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 0x40000000;
                  *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
                  v111 = &__block_descriptor_tmp_21_49595;
                  LOBYTE(v112) = 1;
                  do
                  {
                    v19 = v108;
                    if (!v108)
                    {
                      break;
                    }

                    v20 = *(v108 + 32);
                    v21 = *(v108 + 40);
                    v22 = (v20 + 40);
                    if (!v20)
                    {
                      v22 = &v109;
                    }

                    *v22 = v21;
                    *v21 = v20;
                    *(v19 + 32) = 0;
                    *(v19 + 40) = 0;
                  }

                  while (((*&buf[16])(buf) & 1) != 0);
                }
              }

              goto LABEL_66;
            }

LABEL_64:
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v29 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "nw_webtransport_http2_handle_capsules";
              *&buf[12] = 2048;
              *&buf[14] = v16;
              _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
            }

            goto LABEL_66;
          }

          if ((v16 - 420171065) >= 2)
          {
            if ((v16 - 420171067) >= 2)
            {
              goto LABEL_66;
            }

            v25 = *(handle + 57);
            v30 = v16 == 420171068 && capsule;
            v102[0] = MEMORY[0x1E69E9820];
            v102[1] = 0x40000000;
            v103 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
            v104 = &__block_descriptor_tmp_34_36485;
            v107 = v30;
            v105 = handle + 96;
            v106 = v25;
            v31 = *(handle + 17);
            do
            {
              if (!v31)
              {
                break;
              }

              v32 = *(v31 + 32);
              v33 = (v103)(v102);
              v31 = v32;
            }

            while ((v33 & 1) != 0);
            if (v30)
            {
              nw_protocol_input_finished(v25, handle);
              goto LABEL_66;
            }

            goto LABEL_63;
          }

          if (capsule)
          {
            v34 = *(handle + 57);
            v108 = -1;
            if (nw_http_capsule_framer_parse_vle_value(handle + 12, handle, &v108))
            {
              if (!v34 || (*(v34 + 276) & 0x10) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v35 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  if (v34)
                  {
                    v36 = (v34 + 192);
                  }

                  else
                  {
                    v36 = "";
                  }

                  v37 = " ";
                  if (!v34)
                  {
                    v37 = "";
                  }

                  v38 = *(v34 + 88);
                  if (v38)
                  {
                    v12 = *(v38 + 492);
                  }

                  else
                  {
                    v12 = -1;
                  }

                  v13 = *(v34 + 64);
                  *buf = 136448002;
                  *&buf[4] = "nw_webtransport_http2_handle_capsules";
                  *&buf[12] = 2082;
                  *&buf[14] = v36;
                  *&buf[22] = 2080;
                  v111 = v37;
                  LOWORD(v112) = 1024;
                  *(&v112 + 2) = v12;
                  HIWORD(v112) = 2048;
                  v113 = v13;
                  v114 = 2048;
                  v115 = v16;
                  v116 = 2048;
                  v117 = v13;
                  v118 = 2048;
                  v119 = v108;
                  _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                }
              }

              nw_protocol_webtransport_stream_error(v34, handle);
              nw_protocol_webtransport_stream_disconnect(v34, v14);
            }

            else if ((handle[580] & 2) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v45 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                v46 = *(handle + 123);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                *&buf[12] = 2082;
                *&buf[14] = handle + 496;
                *&buf[22] = 2080;
                v111 = " ";
                LOWORD(v112) = 1024;
                *(&v112 + 2) = v46;
                HIWORD(v112) = 2048;
                v113 = v16;
                _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
              }
            }

LABEL_32:
            *(handle + 57) = 0;
            nw_http_capsule_complete_capsule((handle + 96));
          }
        }

        else
        {
          if (v16 <= 16770047)
          {
            if ((v16 - 1) < 3 || v16 == -1)
            {
              goto LABEL_64;
            }

            if (!v16)
            {
              v25 = *(handle + 56);
              if (!v25)
              {
                v26 = *v10;
LABEL_113:
                if (v26)
                {
                  *(v26 + 40) = &v108;
                  v47 = *(handle + 18);
                  v108 = v26;
                  v109 = v47;
                  *(handle + 17) = 0;
                  *(handle + 18) = v10;
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 0x40000000;
                  *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
                  v111 = &__block_descriptor_tmp_21_49595;
                  LOBYTE(v112) = 1;
                  do
                  {
                    v48 = v108;
                    if (!v108)
                    {
                      break;
                    }

                    v49 = *(v108 + 32);
                    v50 = *(v108 + 40);
                    v51 = (v49 + 40);
                    if (!v49)
                    {
                      v51 = &v109;
                    }

                    *v51 = v50;
                    *v50 = v49;
                    *(v48 + 32) = 0;
                    *(v48 + 40) = 0;
                  }

                  while (((*&buf[16])(buf) & 1) != 0);
                }

                goto LABEL_66;
              }

              v26 = *v10;
              if (*(v25 + 184) == 3)
              {
                goto LABEL_113;
              }

              v97[0] = MEMORY[0x1E69E9820];
              v97[1] = 0x40000000;
              v98 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
              v99 = &__block_descriptor_tmp_35_36486;
              v100 = handle + 96;
              v101 = v25;
              do
              {
                if (!v26)
                {
                  break;
                }

                v27 = *(v26 + 32);
                v28 = (v98)(v97);
                v26 = v27;
              }

              while ((v28 & 1) != 0);
LABEL_63:
              nw_protocol_input_available(v25, handle);
            }
          }

          else if ((v16 - 16770048) < 6)
          {
            goto LABEL_64;
          }

LABEL_66:
          if (capsule)
          {
            goto LABEL_32;
          }
        }
      }
    }
  }
}

void nw_protocol_webtransport_session_error(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_webtransport_session_error";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v4, &type, &v17))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v20 = "nw_protocol_webtransport_session_error";
      v7 = "%{public}s called with null protocol";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v14 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v20 = "nw_protocol_webtransport_session_error";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v4)
        {
          return;
        }

LABEL_38:
        free(v4);
        return;
      }

      if (!v14)
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v20 = "nw_protocol_webtransport_session_error";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v20 = "nw_protocol_webtransport_session_error";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_36:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_37;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[145] & 2) == 0 && gLogDatapath == 1)
    {
      v8 = a3;
      v10 = __nwlog_obj();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      a3 = v8;
      if (v11)
      {
        v12 = handle[123];
        *buf = 136447234;
        v20 = "nw_protocol_webtransport_session_error";
        v21 = 2082;
        v22 = (handle + 124);
        v23 = 2080;
        v24 = " ";
        v25 = 1024;
        v26 = v12;
        v27 = 2048;
        v28 = a2;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called, with other_protocol: %p", buf, 0x30u);
        a3 = v8;
      }
    }

    handle[121] = a3;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_webtransport_session_error";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v4, &type, &v17))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v20 = "nw_protocol_webtransport_session_error";
    v7 = "%{public}s called with null webtransport_session";
    goto LABEL_36;
  }

  if (v17 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v20 = "nw_protocol_webtransport_session_error";
    v7 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_36;
  }

  v15 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v16 = os_log_type_enabled(v5, type);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_37;
    }

    *buf = 136446210;
    v20 = "nw_protocol_webtransport_session_error";
    v7 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_36;
  }

  if (v16)
  {
    *buf = 136446466;
    v20 = "nw_protocol_webtransport_session_error";
    v21 = 2082;
    v22 = v15;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v4)
  {
    goto LABEL_38;
  }
}

void nw_protocol_webtransport_session_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v205 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_disconnected";
    v83 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v191[0]) = 0;
    if (!__nwlog_fault(v83, type, v191))
    {
      goto LABEL_180;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v84 = __nwlog_obj();
      v85 = type[0];
      if (!os_log_type_enabled(v84, type[0]))
      {
        goto LABEL_180;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      v86 = "%{public}s called with null protocol";
      goto LABEL_179;
    }

    if (LOBYTE(v191[0]) != 1)
    {
      v84 = __nwlog_obj();
      v85 = type[0];
      if (!os_log_type_enabled(v84, type[0]))
      {
        goto LABEL_180;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      v86 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_179;
    }

    backtrace_string = __nw_create_backtrace_string();
    v84 = __nwlog_obj();
    v85 = type[0];
    v91 = os_log_type_enabled(v84, type[0]);
    if (!backtrace_string)
    {
      if (!v91)
      {
        goto LABEL_180;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      v86 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_179;
    }

    if (v91)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v84, v85, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    goto LABEL_180;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_disconnected";
    v83 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v191[0]) = 0;
    if (!__nwlog_fault(v83, type, v191))
    {
      goto LABEL_180;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v84 = __nwlog_obj();
      v85 = type[0];
      if (!os_log_type_enabled(v84, type[0]))
      {
        goto LABEL_180;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      v86 = "%{public}s called with null webtransport_session";
      goto LABEL_179;
    }

    if (LOBYTE(v191[0]) != 1)
    {
      v84 = __nwlog_obj();
      v85 = type[0];
      if (!os_log_type_enabled(v84, type[0]))
      {
        goto LABEL_180;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      v86 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
      goto LABEL_179;
    }

    v92 = __nw_create_backtrace_string();
    v84 = __nwlog_obj();
    v85 = type[0];
    v93 = os_log_type_enabled(v84, type[0]);
    if (!v92)
    {
      if (!v93)
      {
        goto LABEL_180;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      v86 = "%{public}s called with null webtransport_session, no backtrace";
      goto LABEL_179;
    }

    if (v93)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      *&buf[12] = 2082;
      *&buf[14] = v92;
      v94 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
LABEL_161:
      _os_log_impl(&dword_181A37000, v84, v85, v94, buf, 0x16u);
    }

LABEL_162:
    free(v92);
    if (!v83)
    {
      return;
    }

LABEL_181:
    free(v83);
    return;
  }

  if ((handle[580] & 2) == 0 && gLogDatapath == 1)
  {
    v88 = __nwlog_obj();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      v89 = *(handle + 123);
      *buf = 136447234;
      *&buf[4] = "nw_protocol_webtransport_session_disconnected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v199 = " ";
      *v200 = 1024;
      *&v200[2] = v89;
      *&v200[6] = 2048;
      *&v200[8] = a2;
      _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called, with other_protocol: %p", buf, 0x30u);
    }
  }

  if (*(handle + 119) == 5)
  {
    if ((handle[580] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v4 = *(handle + 123);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v199 = " ";
        *v200 = 1024;
        *&v200[2] = v4;
        v5 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
        v6 = v3;
        v7 = OS_LOG_TYPE_INFO;
LABEL_9:
        _os_log_impl(&dword_181A37000, v6, v7, v5, buf, 0x26u);
        return;
      }
    }

    return;
  }

  v8 = *(handle + 121);
  if (v8)
  {
    if ((handle[580] & 2) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v10 = *(handle + 123);
        *buf = 136447234;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = handle + 496;
        *&buf[22] = 2080;
        v199 = " ";
        *v200 = 1024;
        *&v200[2] = v10;
        *&v200[6] = 1024;
        *&v200[8] = v8;
        v11 = "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d";
        v12 = v9;
        v13 = 44;
LABEL_17:
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
      }
    }
  }

  else if ((handle[580] & 2) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v15 = *(handle + 123);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_terminate";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v199 = " ";
      *v200 = 1024;
      *&v200[2] = v15;
      v11 = "%{public}s %{public}s%s<i%u> Closing webtransport session without error";
      v12 = v14;
      v13 = 38;
      goto LABEL_17;
    }
  }

  v16 = *(handle + 119);
  *(handle + 119) = 5;
  v17 = *(handle + 24);
  if (v17)
  {
    v176[0] = MEMORY[0x1E69E9820];
    v176[1] = 0x40000000;
    v176[2] = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
    v176[3] = &__block_descriptor_tmp_24_36439;
    v177 = v8;
    nw_hash_table_apply(v17, v176);
  }

  v18 = *(handle + 56);
  if (v18)
  {
    v19 = *(v18 + 88);
    if (v8)
    {
      nw_protocol_error(*(v18 + 48), *(handle + 56));
    }

    nw_protocol_disconnect(v18, v19);
  }

  v20 = *(handle + 42);
  if (v20)
  {
    if (v8)
    {
      do
      {
        v21 = *(v20 + 112);
        v22 = *(v20 + 88);
        nw_protocol_error(*(v20 + 48), v20);
        nw_protocol_disconnect(v20, v22);
        v20 = v21;
      }

      while (v21);
    }

    else
    {
      do
      {
        v23 = *(v20 + 112);
        nw_protocol_disconnect(v20, *(v20 + 88));
        v20 = v23;
      }

      while (v23);
    }
  }

  v24 = *(handle + 55);
  if (v24)
  {
    v25 = *(v24 + 88);
    if (v8)
    {
      nw_protocol_error(*(v24 + 48), *(handle + 55));
    }

    nw_protocol_disconnect(v24, v25);
  }

  if (*(handle + 4))
  {
    nw_protocol_remove_instance(handle);
    nw_protocol_disconnect(*(handle + 4), handle);
  }

  v26 = *(handle + 50);
  if (!v26)
  {
    return;
  }

  webtransport_state = nw_http_connection_metadata_get_webtransport_state(v26);
  if (!webtransport_state)
  {
    return;
  }

  v28 = webtransport_state;
  if (v16 != 4 && v16 != 1)
  {
    return;
  }

  v29 = *(webtransport_state + 16);
  *(webtransport_state + 16) = v29 - 1;
  if (!v29)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = v28[2];
    *buf = 136446978;
    *&buf[4] = "nw_webtransport_session_terminate";
    *&buf[12] = 2082;
    *&buf[14] = "connection_state->local_sessions";
    *&buf[22] = 2048;
    v199 = 1;
    *v200 = 2048;
    *&v200[2] = v30;
    v31 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v191[0]) = 0;
    if (__nwlog_fault(v31, type, v191))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        v33 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v34 = v28[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v199 = 1;
          *v200 = 2048;
          *&v200[2] = v34;
          v35 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_53:
          _os_log_impl(&dword_181A37000, v32, v33, v35, buf, 0x2Au);
        }
      }

      else if (LOBYTE(v191[0]) == 1)
      {
        v36 = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v33 = type[0];
        v37 = os_log_type_enabled(v32, type[0]);
        if (v36)
        {
          if (v37)
          {
            v38 = v28[2];
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = "connection_state->local_sessions";
            *&buf[22] = 2048;
            v199 = 1;
            *v200 = 2048;
            *&v200[2] = v38;
            *&v200[10] = 2082;
            *&v200[12] = v36;
            _os_log_impl(&dword_181A37000, v32, v33, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v36);
          goto LABEL_54;
        }

        if (v37)
        {
          v40 = v28[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v199 = 1;
          *v200 = 2048;
          *&v200[2] = v40;
          v35 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
          goto LABEL_53;
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v33 = type[0];
        if (os_log_type_enabled(v32, type[0]))
        {
          v39 = v28[2];
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = "connection_state->local_sessions";
          *&buf[22] = 2048;
          v199 = 1;
          *v200 = 2048;
          *&v200[2] = v39;
          v35 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
          goto LABEL_53;
        }
      }
    }

LABEL_54:
    if (v31)
    {
      free(v31);
    }

    v28[2] = 0;
  }

  if (handle[580])
  {
    return;
  }

  v41 = *v28;
  if (!*v28)
  {
    return;
  }

  v42 = *(v41 + 352);
  v43 = *(v41 + 360);
  v44 = (v42 + 360);
  if (!v42)
  {
    v44 = v28 + 1;
  }

  *v44 = v43;
  *v43 = v42;
  *(v41 + 352) = 0;
  *(v41 + 360) = 0;
  v45 = *(v41 + 32);
  if (v45 && *(v41 + 480) == 2)
  {
    v46 = v45[2];
    if (nw_protocol_http2_identifier::onceToken != -1)
    {
      v146 = v45[2];
      dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
      v46 = v146;
    }

    if (nw_protocols_are_equal(v46, &nw_protocol_http2_identifier::http2_protocol_identifier))
    {
      goto LABEL_72;
    }

    v47 = v45[2];
    if (nw_protocol_http3_identifier::onceToken != -1)
    {
      v148 = v45[2];
      dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
      v47 = v148;
    }

    if (nw_protocols_are_equal(v47, &nw_protocol_http3_identifier::http3_protocol_identifier))
    {
      goto LABEL_72;
    }

    v48 = v45[2];
    if (nw_protocol_http_messaging_identifier::onceToken != -1)
    {
      v149 = v45[2];
      dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
      v48 = v149;
    }

    if (nw_protocols_are_equal(v48, &nw_protocol_http_messaging_identifier::protocol_identifier))
    {
LABEL_72:
      v49 = nw_protocol_copy_info(v45);
      v50 = v49;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_27_36446;
      aBlock[4] = v41;
      if (v49)
      {
        _nw_array_apply(v49, aBlock);
        v51 = *(v41 + 400);
        if (!v51)
        {
          os_release(v50);
          return;
        }
      }

      else
      {
        v51 = *(v41 + 400);
        if (!v51)
        {
          return;
        }
      }

      version = nw_http_connection_metadata_get_version(v51);
      v53 = version;
      if (version == 4)
      {
        v54 = 0;
      }

      else
      {
        if (version != 5)
        {
LABEL_81:
          v55 = v45[2];
          if (nw_protocol_http_messaging_identifier::onceToken != -1)
          {
            v147 = v45[2];
            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
            v55 = v147;
          }

          v56 = nw_protocols_are_equal(v55, &nw_protocol_http_messaging_identifier::protocol_identifier);
          v57 = *(v41 + 580);
          if (v56)
          {
            v57 |= 0x40u;
            *(v41 + 580) = v57;
          }

          if ((v57 & 2) == 0)
          {
            v58 = __nwlog_obj();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v59 = *(v41 + 492);
              if (v53 == 4)
              {
                v60 = 2;
              }

              else
              {
                v60 = 3;
              }

              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_establish";
              *&buf[12] = 2082;
              *&buf[14] = v41 + 496;
              *&buf[22] = 2080;
              v199 = " ";
              *v200 = 1024;
              *&v200[2] = v59;
              *&v200[6] = 1024;
              *&v200[8] = v60;
              _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
            }
          }

          if (v50)
          {
            os_release(v50);
          }

          goto LABEL_93;
        }

        v54 = 1;
      }

      *(v41 + 480) = v54;
      goto LABEL_81;
    }
  }

LABEL_93:
  v61 = *(v41 + 480);
  if (v61 <= 1)
  {
    if ((*(v41 + 580) & 1) == 0)
    {
      if (!*(v41 + 476))
      {
        nw_webtransport_http_send_connect(v41);
      }

      return;
    }

    v64 = *(v41 + 476);
    if (v61 == 1)
    {
      if (v64 != 3)
      {
        if (v64)
        {
          return;
        }

        v65 = *(v41 + 48);
        if (v65)
        {
          v66 = *(v65 + 40);
          if (v66)
          {
            nw_protocol_replace_input_handler(*(v41 + 32), v41, *(v65 + 40));
            *(v41 + 440) = v66;
            nw_protocol_set_output_handler(v41, 0);
            nw_protocol_set_input_handler(v41, 0);
            if (*(v41 + 580))
            {
              v67 = *(*(v41 + 440) + 32);
              v68 = *(v67 + 16);
              if (nw_protocol_http_messaging_identifier::onceToken != -1)
              {
                v162 = *(v67 + 16);
                dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                v68 = v162;
              }

              if (nw_protocols_are_equal(v68, &nw_protocol_http_messaging_identifier::protocol_identifier))
              {
                goto LABEL_112;
              }

              v69 = *(v67 + 16);
              if (nw_protocol_http3_identifier::onceToken != -1)
              {
                v165 = *(v67 + 16);
                dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                v69 = v165;
              }

              if (nw_protocols_are_equal(v69, &nw_protocol_http3_identifier::http3_protocol_identifier))
              {
LABEL_112:
                v70 = *(v41 + 368);
                if (v70)
                {
                  v71 = nw_parameters_copy_protocol_options_legacy(v70, v67);
                  if (v71)
                  {
                    if ((*(v66 + 276) & 0x10) == 0 && gLogDatapath == 1)
                    {
                      v166 = v71;
                      v167 = __nwlog_obj();
                      v168 = os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG);
                      v71 = v166;
                      if (v168)
                      {
                        v169 = *(v66 + 88);
                        if (v169)
                        {
                          v170 = *(v169 + 492);
                        }

                        else
                        {
                          v170 = -1;
                        }

                        v175 = *(v66 + 64);
                        *buf = 136447490;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v66 + 192;
                        *&buf[22] = 2080;
                        v199 = " ";
                        *v200 = 1024;
                        *&v200[2] = v170;
                        *&v200[6] = 2048;
                        *&v200[8] = v175;
                        *&v200[16] = 2048;
                        *&v200[18] = v166;
                        _os_log_impl(&dword_181A37000, v167, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                        v71 = v166;
                      }
                    }

                    v72 = v71;
                    nw_http3_set_stream_mode(v71, 0);
                    os_release(v72);
                  }

                  else
                  {
                    if ((*(v41 + 580) & 2) == 0 && gLogDatapath == 1)
                    {
                      v173 = __nwlog_obj();
                      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
                      {
                        v174 = *(v41 + 492);
                        *buf = 136446978;
                        *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v41 + 496;
                        *&buf[22] = 2080;
                        v199 = " ";
                        *v200 = 1024;
                        *&v200[2] = v174;
                        _os_log_impl(&dword_181A37000, v173, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                      }
                    }

                    v96 = *(v66 + 88);
                    nw_protocol_error(*(v66 + 48), v66);
                    nw_protocol_disconnect(v66, v96);
                  }
                }
              }
            }

            goto LABEL_170;
          }

          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
          v152 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v191[0]) = 0;
          if (__nwlog_fault(v152, type, v191))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v153 = __nwlog_obj();
              v154 = type[0];
              if (!os_log_type_enabled(v153, type[0]))
              {
                goto LABEL_373;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v155 = "%{public}s called with null webtransport_stream";
              goto LABEL_372;
            }

            if (LOBYTE(v191[0]) != 1)
            {
              v153 = __nwlog_obj();
              v154 = type[0];
              if (!os_log_type_enabled(v153, type[0]))
              {
                goto LABEL_373;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v155 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
              goto LABEL_372;
            }

            v163 = __nw_create_backtrace_string();
            v153 = __nwlog_obj();
            v154 = type[0];
            v164 = os_log_type_enabled(v153, type[0]);
            if (v163)
            {
              if (v164)
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                *&buf[12] = 2082;
                *&buf[14] = v163;
                _os_log_impl(&dword_181A37000, v153, v154, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v163);
              if (!v152)
              {
                goto LABEL_170;
              }

              goto LABEL_374;
            }

            if (v164)
            {
              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v155 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_372:
              _os_log_impl(&dword_181A37000, v153, v154, v155, buf, 0xCu);
            }
          }
        }

        else
        {
          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
          v152 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v191[0]) = 0;
          if (!__nwlog_fault(v152, type, v191))
          {
            goto LABEL_373;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v153 = __nwlog_obj();
            v154 = type[0];
            if (!os_log_type_enabled(v153, type[0]))
            {
              goto LABEL_373;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v155 = "%{public}s called with null input_protocol";
            goto LABEL_372;
          }

          if (LOBYTE(v191[0]) != 1)
          {
            v153 = __nwlog_obj();
            v154 = type[0];
            if (!os_log_type_enabled(v153, type[0]))
            {
              goto LABEL_373;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v155 = "%{public}s called with null input_protocol, backtrace limit exceeded";
            goto LABEL_372;
          }

          v159 = __nw_create_backtrace_string();
          v153 = __nwlog_obj();
          v154 = type[0];
          v160 = os_log_type_enabled(v153, type[0]);
          if (!v159)
          {
            if (!v160)
            {
              goto LABEL_373;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v155 = "%{public}s called with null input_protocol, no backtrace";
            goto LABEL_372;
          }

          if (v160)
          {
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            *&buf[12] = 2082;
            *&buf[14] = v159;
            _os_log_impl(&dword_181A37000, v153, v154, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v159);
        }

LABEL_373:
        if (!v152)
        {
LABEL_170:
          *(v41 + 476) = 2;
          return;
        }

LABEL_374:
        free(v152);
        goto LABEL_170;
      }

      v75 = *(v41 + 32);
      if (v75)
      {
        v76 = v75[3];
        if (v76 && *(v76 + 80))
        {
          for (i = 3; (i | 2) == 3; i = *(v41 + 476))
          {
            if (!nw_protocol_get_input_frames(v75, v41, 0, 0, 0xFFFFFFFFLL, v41 + 120))
            {
              return;
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3802000000;
            v199 = __Block_byref_object_copy__36471;
            *v200 = __Block_byref_object_dispose__36472;
            if (nw_protocol_copy_http_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
            }

            *&v200[8] = nw_protocol_copy_http_definition_http_definition;
            v200[16] |= 1u;
            *type = MEMORY[0x1E69E9820];
            v180 = 0x40000000;
            v181 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
            v182 = &unk_1E6A31940;
            v183 = buf;
            v184 = v41;
            v185 = v41 + 120;
            v78 = *(v41 + 120);
            do
            {
              if (!v78)
              {
                break;
              }

              v79 = *(v78 + 32);
              v80 = (v181)(type);
              v78 = v79;
            }

            while ((v80 & 1) != 0);
            _Block_object_dispose(buf, 8);
            if ((v200[16] & 1) != 0 && *&v200[8])
            {
              os_release(*&v200[8]);
            }
          }

          v81 = *(v41 + 480);
          if (v81 == 1)
          {
            nw_webtransport_http3_handle_input(v41);
            v95 = *(v41 + 448);
            if (v95 && *(v95 + 72))
            {
              nw_protocol_input_available(*(v95 + 48), v95);
            }

            return;
          }

          if (v81)
          {
            return;
          }

          if ((*(v41 + 580) & 2) == 0 && gLogDatapath == 1)
          {
            v171 = __nwlog_obj();
            if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
            {
              v172 = *(v41 + 492);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_http2_handle_capsules";
              *&buf[12] = 2082;
              *&buf[14] = v41 + 496;
              *&buf[22] = 2080;
              v199 = " ";
              *v200 = 1024;
              *&v200[2] = v172;
              _os_log_impl(&dword_181A37000, v171, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
            }
          }

          if (*(v41 + 476) != 4)
          {
            return;
          }

          v82 = (v41 + 96);
          while (1)
          {
            capsule = nw_http_capsule_framer_read_capsule((v41 + 96), v41);
            if (!capsule && !*(v41 + 136))
            {
              return;
            }

            if (*(v41 + 456))
            {
              goto LABEL_190;
            }

            v102 = *v82;
            if (*v82 == -1)
            {
LABEL_247:
              v116 = __nwlog_obj();
              if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2048;
                *&buf[14] = v102;
                _os_log_impl(&dword_181A37000, v116, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
              }

              goto LABEL_190;
            }

            v103 = *(v41 + 104) != -1 && *(v41 + 112) == 0;
            if (v102 <= 16770303)
            {
              if ((v102 - 16770048) < 6 || (v102 + 1) <= 4 && v102)
              {
                goto LABEL_247;
              }
            }

            else if ((v102 - 420171065) <= 9 && ((1 << (v102 - 57)) & 0x2EF) != 0)
            {
              v197 = -1;
              if (nw_http_capsule_framer_parse_vle_value((v41 + 96), v41, &v197))
              {
                stream = nw_webtransport_session_get_stream(v41, v197);
                if (stream)
                {
                  goto LABEL_241;
                }

                if ((v102 - 420171067) > 1)
                {
                  goto LABEL_272;
                }

                v123 = v197;
                v124 = *(v41 + 580);
                if (v197 >> 60 || ((v197 ^ v124) & 1) == 0)
                {
                  if ((v124 & 2) == 0)
                  {
                    v133 = __nwlog_obj();
                    if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
                    {
                      v134 = *(v41 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v41 + 496;
                      *&buf[22] = 2080;
                      v199 = " ";
                      *v200 = 1024;
                      *&v200[2] = v134;
                      v135 = v133;
                      v136 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                      goto LABEL_271;
                    }
                  }

LABEL_272:
                  if ((*(v41 + 580) & 2) == 0)
                  {
                    v137 = __nwlog_obj();
                    if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                    {
                      v138 = *(v41 + 492);
                      *buf = 136447490;
                      *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                      *&buf[12] = 2082;
                      *&buf[14] = v41 + 496;
                      *&buf[22] = 2080;
                      v199 = " ";
                      *v200 = 1024;
                      *&v200[2] = v138;
                      *&v200[6] = 2048;
                      *&v200[8] = v197;
                      *&v200[16] = 2048;
                      *&v200[18] = v102;
                      _os_log_impl(&dword_181A37000, v137, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                    }
                  }

                  goto LABEL_190;
                }

                v125 = *(v41 + 424);
                if (!v125 || (v126 = *v125) == 0 || !*v126)
                {
                  if ((v124 & 2) == 0)
                  {
                    v139 = __nwlog_obj();
                    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
                    {
                      v140 = *(v41 + 492);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v41 + 496;
                      *&buf[22] = 2080;
                      v199 = " ";
                      *v200 = 1024;
                      *&v200[2] = v140;
                      v135 = v139;
                      v136 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_271:
                      _os_log_impl(&dword_181A37000, v135, OS_LOG_TYPE_ERROR, v136, buf, 0x26u);
                    }
                  }

                  goto LABEL_272;
                }

                v127 = _nw_parameters_copy(*(v41 + 368));
                *(v41 + 580) |= 0x20u;
                *(v41 + 176) = v123;
                v128 = (***(v41 + 424))(*(v41 + 424), *(v41 + 384), v127);
                *(v41 + 176) = -1;
                *(v41 + 580) &= ~0x20u;
                if (v128)
                {
                  v129 = nw_webtransport_session_get_stream(v41, v123);
                }

                else
                {
                  v129 = 0;
                }

                if (v127)
                {
                  os_release(v127);
                }

                if (!v129)
                {
                  goto LABEL_272;
                }

                stream = v129;
                if (*(v129 + 184) != 3)
                {
LABEL_241:
                  *(v41 + 456) = stream;
                  goto LABEL_190;
                }

                if ((*(v41 + 580) & 2) != 0)
                {
                  goto LABEL_190;
                }

                v141 = __nwlog_obj();
                if (!os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_190;
                }

                v142 = *(v41 + 492);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = v41 + 496;
                *&buf[22] = 2080;
                v199 = " ";
                *v200 = 1024;
                *&v200[2] = v142;
                *&v200[6] = 2048;
                *&v200[8] = v197;
                v119 = v141;
                v120 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
              }

              else
              {
                if (!v103)
                {
                  goto LABEL_190;
                }

                if ((*(v41 + 580) & 2) != 0)
                {
                  goto LABEL_190;
                }

                v117 = __nwlog_obj();
                if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_190;
                }

                v118 = *(v41 + 492);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = v41 + 496;
                *&buf[22] = 2080;
                v199 = " ";
                *v200 = 1024;
                *&v200[2] = v118;
                *&v200[6] = 2048;
                *&v200[8] = v102;
                v119 = v117;
                v120 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
              }

              _os_log_impl(&dword_181A37000, v119, OS_LOG_TYPE_ERROR, v120, buf, 0x30u);
            }

            else if ((v102 - 16770304) < 4)
            {
              goto LABEL_247;
            }

LABEL_190:
            v101 = *(v41 + 96);
            if ((*(v41 + 580) & 2) == 0 && gLogDatapath == 1)
            {
              v143 = __nwlog_obj();
              if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
              {
                v144 = *(v41 + 492);
                v145 = *(v41 + 104);
                *buf = 136447490;
                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                *&buf[12] = 2082;
                *&buf[14] = v41 + 496;
                *&buf[22] = 2080;
                v199 = " ";
                *v200 = 1024;
                *&v200[2] = v144;
                *&v200[6] = 2048;
                *&v200[8] = v101;
                *&v200[16] = 2048;
                *&v200[18] = v145;
                _os_log_impl(&dword_181A37000, v143, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
              }
            }

            if (v101 > 16770303)
            {
              if (v101 <= 420171064)
              {
                if ((v101 - 16770304) < 4)
                {
                  goto LABEL_209;
                }

                if (v101 == 420171064)
                {
                  goto LABEL_208;
                }

                goto LABEL_211;
              }

              if ((v101 - 420171065) >= 2)
              {
                if ((v101 - 420171067) < 2)
                {
                  v104 = *(v41 + 456);
                  v106 = v101 == 420171068 && capsule;
                  v191[0] = MEMORY[0x1E69E9820];
                  v191[1] = 0x40000000;
                  v192 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                  v193 = &__block_descriptor_tmp_34_36485;
                  v196 = v106;
                  v194 = v41 + 96;
                  v195 = v104;
                  v107 = *(v41 + 136);
                  do
                  {
                    if (!v107)
                    {
                      break;
                    }

                    v108 = *(v107 + 32);
                    v109 = (v192)(v191);
                    v107 = v108;
                  }

                  while ((v109 & 1) != 0);
                  if (!v106)
                  {
                    goto LABEL_267;
                  }

                  nw_protocol_input_finished(v104, v41);
                }

                goto LABEL_211;
              }

              if (capsule)
              {
                v110 = *(v41 + 456);
                v197 = -1;
                if (nw_http_capsule_framer_parse_vle_value((v41 + 96), v41, &v197))
                {
                  if (!v110 || (*(v110 + 276) & 0x10) == 0)
                  {
                    v111 = __nwlog_obj();
                    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                    {
                      if (v110)
                      {
                        v112 = (v110 + 192);
                      }

                      else
                      {
                        v112 = "";
                      }

                      v113 = " ";
                      if (!v110)
                      {
                        v113 = "";
                      }

                      v114 = *(v110 + 88);
                      if (v114)
                      {
                        v97 = *(v114 + 492);
                      }

                      else
                      {
                        v97 = -1;
                      }

                      v98 = *(v110 + 64);
                      *buf = 136448002;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v112;
                      *&buf[22] = 2080;
                      v199 = v113;
                      *v200 = 1024;
                      *&v200[2] = v97;
                      *&v200[6] = 2048;
                      *&v200[8] = v98;
                      *&v200[16] = 2048;
                      *&v200[18] = v101;
                      v201 = 2048;
                      v202 = v98;
                      v203 = 2048;
                      v204 = v197;
                      _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                    }
                  }

                  nw_protocol_webtransport_stream_error(v110, v41);
                  nw_protocol_webtransport_stream_disconnect(v110, v99);
                }

                else if ((*(v41 + 580) & 2) == 0)
                {
                  v121 = __nwlog_obj();
                  if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
                  {
                    v122 = *(v41 + 492);
                    *buf = 136447234;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2082;
                    *&buf[14] = v41 + 496;
                    *&buf[22] = 2080;
                    v199 = " ";
                    *v200 = 1024;
                    *&v200[2] = v122;
                    *&v200[6] = 2048;
                    *&v200[8] = v101;
                    _os_log_impl(&dword_181A37000, v121, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                  }
                }

LABEL_186:
                *(v41 + 456) = 0;
                nw_http_capsule_complete_capsule(v41 + 96);
              }
            }

            else
            {
              if (v101 <= 16770047)
              {
                if ((v101 - 1) < 3 || v101 == -1)
                {
LABEL_209:
                  v105 = __nwlog_obj();
                  if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2048;
                    *&buf[14] = v101;
                    _os_log_impl(&dword_181A37000, v105, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                  }

                  goto LABEL_211;
                }

                if (!v101)
                {
                  v104 = *(v41 + 448);
                  if (v104 && *(v104 + 184) != 3)
                  {
                    v186[0] = MEMORY[0x1E69E9820];
                    v186[1] = 0x40000000;
                    v187 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                    v188 = &__block_descriptor_tmp_35_36486;
                    v189 = v41 + 96;
                    v190 = v104;
                    v130 = *(v41 + 136);
                    do
                    {
                      if (!v130)
                      {
                        break;
                      }

                      v131 = *(v130 + 32);
                      v132 = (v187)(v186);
                      v130 = v131;
                    }

                    while ((v132 & 1) != 0);
LABEL_267:
                    nw_protocol_input_available(v104, v41);
                    goto LABEL_211;
                  }

LABEL_208:
                  nw_frame_array_finalize(v41 + 136, 1, 1);
                }
              }

              else if ((v101 - 16770048) < 6)
              {
                goto LABEL_209;
              }

LABEL_211:
              if (capsule)
              {
                goto LABEL_186;
              }
            }
          }
        }

        if ((*(v41 + 580) & 2) == 0)
        {
          v150 = __nwlog_obj();
          if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
          {
            v151 = *(v41 + 492);
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            *&buf[12] = 2082;
            *&buf[14] = v41 + 496;
            *&buf[22] = 2080;
            v199 = " ";
            *v200 = 1024;
            *&v200[2] = v151;
            _os_log_impl(&dword_181A37000, v150, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
          }
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        v83 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v191[0]) = 0;
        if (!__nwlog_fault(v83, type, v191))
        {
          goto LABEL_180;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v84 = __nwlog_obj();
          v85 = type[0];
          if (os_log_type_enabled(v84, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            v86 = "%{public}s output handler has no get_input_frames callback";
LABEL_179:
            _os_log_impl(&dword_181A37000, v84, v85, v86, buf, 0xCu);
            goto LABEL_180;
          }

          goto LABEL_180;
        }

        if (LOBYTE(v191[0]) != 1)
        {
          v84 = __nwlog_obj();
          v85 = type[0];
          if (os_log_type_enabled(v84, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            v86 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        v92 = __nw_create_backtrace_string();
        v84 = __nwlog_obj();
        v85 = type[0];
        v156 = os_log_type_enabled(v84, type[0]);
        if (!v92)
        {
          if (v156)
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            v86 = "%{public}s output handler has no get_input_frames callback, no backtrace";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        if (v156)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          *&buf[12] = 2082;
          *&buf[14] = v92;
          v94 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
          goto LABEL_161;
        }
      }

      else
      {
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_session_http_get_input";
        v83 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v191[0]) = 0;
        if (!__nwlog_fault(v83, type, v191))
        {
          goto LABEL_180;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v84 = __nwlog_obj();
          v85 = type[0];
          if (os_log_type_enabled(v84, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            v86 = "%{public}s called with null output_handler";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        if (LOBYTE(v191[0]) != 1)
        {
          v84 = __nwlog_obj();
          v85 = type[0];
          if (os_log_type_enabled(v84, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            v86 = "%{public}s called with null output_handler, backtrace limit exceeded";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        v92 = __nw_create_backtrace_string();
        v84 = __nwlog_obj();
        v85 = type[0];
        v161 = os_log_type_enabled(v84, type[0]);
        if (!v92)
        {
          if (v161)
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_session_http_get_input";
            v86 = "%{public}s called with null output_handler, no backtrace";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        if (v161)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_session_http_get_input";
          *&buf[12] = 2082;
          *&buf[14] = v92;
          v94 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
          goto LABEL_161;
        }
      }
    }

    else
    {
      if (v64)
      {
        return;
      }

      *(v41 + 476) = 3;
      v73 = *(v41 + 48);
      if (v73)
      {
        v74 = *(v73 + 40);
        if (v74)
        {
          *(v41 + 440) = v74;
          return;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        v83 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v191[0]) = 0;
        if (!__nwlog_fault(v83, type, v191))
        {
          goto LABEL_180;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v84 = __nwlog_obj();
          v85 = type[0];
          if (os_log_type_enabled(v84, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            v86 = "%{public}s called with null webtransport_stream";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        if (LOBYTE(v191[0]) != 1)
        {
          v84 = __nwlog_obj();
          v85 = type[0];
          if (os_log_type_enabled(v84, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            v86 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        v92 = __nw_create_backtrace_string();
        v84 = __nwlog_obj();
        v85 = type[0];
        v158 = os_log_type_enabled(v84, type[0]);
        if (!v92)
        {
          if (v158)
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            v86 = "%{public}s called with null webtransport_stream, no backtrace";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        if (v158)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          *&buf[12] = 2082;
          *&buf[14] = v92;
          v94 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
          goto LABEL_161;
        }
      }

      else
      {
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
        v83 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v191[0]) = 0;
        if (!__nwlog_fault(v83, type, v191))
        {
          goto LABEL_180;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v84 = __nwlog_obj();
          v85 = type[0];
          if (os_log_type_enabled(v84, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            v86 = "%{public}s called with null input_protocol";
            goto LABEL_179;
          }

LABEL_180:
          if (!v83)
          {
            return;
          }

          goto LABEL_181;
        }

        if (LOBYTE(v191[0]) != 1)
        {
          v84 = __nwlog_obj();
          v85 = type[0];
          if (os_log_type_enabled(v84, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            v86 = "%{public}s called with null input_protocol, backtrace limit exceeded";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        v92 = __nw_create_backtrace_string();
        v84 = __nwlog_obj();
        v85 = type[0];
        v157 = os_log_type_enabled(v84, type[0]);
        if (!v92)
        {
          if (v157)
          {
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            v86 = "%{public}s called with null input_protocol, no backtrace";
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        if (v157)
        {
          *buf = 136446466;
          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
          *&buf[12] = 2082;
          *&buf[14] = v92;
          v94 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
          goto LABEL_161;
        }
      }
    }

    goto LABEL_162;
  }

  if ((*(v41 + 580) & 2) == 0)
  {
    v62 = __nwlog_obj();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = *(v41 + 492);
      *buf = 136446978;
      *&buf[4] = "nw_webtransport_session_establish";
      *&buf[12] = 2082;
      *&buf[14] = v41 + 496;
      *&buf[22] = 2080;
      v199 = " ";
      *v200 = 1024;
      *&v200[2] = v63;
      v5 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
      v6 = v62;
      v7 = OS_LOG_TYPE_ERROR;
      goto LABEL_9;
    }
  }
}

void nw_protocol_webtransport_session_connected(nw_protocol *a1, nw_protocol *a2)
{
  v310 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_connected";
    v106 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v295) = 0;
    if (!__nwlog_fault(v106, type, &v295))
    {
      goto LABEL_363;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v107 = __nwlog_obj();
      v108 = type[0];
      if (!os_log_type_enabled(v107, type[0]))
      {
        goto LABEL_363;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      v109 = "%{public}s called with null protocol";
      goto LABEL_362;
    }

    if (v295 != 1)
    {
      v107 = __nwlog_obj();
      v108 = type[0];
      if (!os_log_type_enabled(v107, type[0]))
      {
        goto LABEL_363;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      v109 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_362;
    }

    backtrace_string = __nw_create_backtrace_string();
    v107 = __nwlog_obj();
    v108 = type[0];
    v176 = os_log_type_enabled(v107, type[0]);
    if (!backtrace_string)
    {
      if (!v176)
      {
        goto LABEL_363;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      v109 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_362;
    }

    if (v176)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v107, v108, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    goto LABEL_363;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_connected";
    v106 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v295) = 0;
    if (!__nwlog_fault(v106, type, &v295))
    {
      goto LABEL_363;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v107 = __nwlog_obj();
      v108 = type[0];
      if (!os_log_type_enabled(v107, type[0]))
      {
        goto LABEL_363;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      v109 = "%{public}s called with null webtransport_session";
      goto LABEL_362;
    }

    if (v295 != 1)
    {
      v107 = __nwlog_obj();
      v108 = type[0];
      if (!os_log_type_enabled(v107, type[0]))
      {
        goto LABEL_363;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      v109 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
      goto LABEL_362;
    }

    v177 = __nw_create_backtrace_string();
    v107 = __nwlog_obj();
    v108 = type[0];
    v178 = os_log_type_enabled(v107, type[0]);
    if (!v177)
    {
      if (!v178)
      {
        goto LABEL_363;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      v109 = "%{public}s called with null webtransport_session, no backtrace";
      goto LABEL_362;
    }

    if (v178)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      *&buf[12] = 2082;
      *&buf[14] = v177;
      v179 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
LABEL_342:
      _os_log_impl(&dword_181A37000, v107, v108, v179, buf, 0x16u);
    }

LABEL_343:
    free(v177);
    if (!v106)
    {
      return;
    }

LABEL_364:
    free(v106);
    return;
  }

  if ((handle[580] & 2) == 0 && gLogDatapath == 1)
  {
    v110 = a2;
    v111 = a1;
    v112 = __nwlog_obj();
    v113 = os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG);
    a2 = v110;
    v114 = v113;
    a1 = v111;
    if (v114)
    {
      v115 = *(handle + 123);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v304 = " ";
      *v305 = 1024;
      *&v305[2] = v115;
      _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Got a connected event from the lower layer", buf, 0x26u);
      a1 = v111;
      a2 = v110;
    }
  }

  if (a1->output_handler == a2)
  {
    v3 = *(handle + 4);
    if (!v3 || *(handle + 120) != 2)
    {
      goto LABEL_41;
    }

    v4 = v3[2];
    if (nw_protocol_http2_identifier::onceToken != -1)
    {
      v183 = v3[2];
      dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
      v4 = v183;
    }

    if (!nw_protocols_are_equal(v4, &nw_protocol_http2_identifier::http2_protocol_identifier))
    {
      v5 = v3[2];
      if (nw_protocol_http3_identifier::onceToken != -1)
      {
        v185 = v3[2];
        dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
        v5 = v185;
      }

      if (!nw_protocols_are_equal(v5, &nw_protocol_http3_identifier::http3_protocol_identifier))
      {
        v6 = v3[2];
        if (nw_protocol_http_messaging_identifier::onceToken != -1)
        {
          v187 = v3[2];
          dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
          v6 = v187;
        }

        if (!nw_protocols_are_equal(v6, &nw_protocol_http_messaging_identifier::protocol_identifier))
        {
          goto LABEL_41;
        }
      }
    }

    v7 = nw_protocol_copy_info(v3);
    v8 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v278 = 0x40000000;
    v279 = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
    v280 = &__block_descriptor_tmp_27_36446;
    v281 = handle;
    if (v7)
    {
      _nw_array_apply(v7, &aBlock);
      v9 = *(handle + 50);
      if (!v9)
      {
        os_release(v8);
        goto LABEL_48;
      }
    }

    else
    {
      v9 = *(handle + 50);
      if (!v9)
      {
        goto LABEL_48;
      }
    }

    version = nw_http_connection_metadata_get_version(v9);
    v11 = version;
    if (version == 4)
    {
      v12 = 0;
    }

    else
    {
      if (version != 5)
      {
LABEL_29:
        v13 = v3[2];
        if (nw_protocol_http_messaging_identifier::onceToken != -1)
        {
          v184 = v3[2];
          dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
          v13 = v184;
        }

        v14 = nw_protocols_are_equal(v13, &nw_protocol_http_messaging_identifier::protocol_identifier);
        v15 = handle[580];
        if (v14)
        {
          v15 |= 0x40u;
          handle[580] = v15;
        }

        if ((v15 & 2) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v17 = *(handle + 123);
            if (v11 == 4)
            {
              v18 = 2;
            }

            else
            {
              v18 = 3;
            }

            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_establish";
            *&buf[12] = 2082;
            *&buf[14] = handle + 496;
            *&buf[22] = 2080;
            v304 = " ";
            *v305 = 1024;
            *&v305[2] = v17;
            *&v305[6] = 1024;
            *&v305[8] = v18;
            _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
          }
        }

        if (v8)
        {
          os_release(v8);
        }

LABEL_41:
        v19 = *(handle + 120);
        if (v19 <= 1)
        {
          if ((handle[580] & 1) == 0)
          {
            goto LABEL_43;
          }

          v49 = *(handle + 119);
          if (v19 != 1)
          {
            if (v49)
            {
              return;
            }

            *(handle + 119) = 3;
            v59 = *(handle + 6);
            if (v59)
            {
              v60 = *(v59 + 40);
              if (!v60)
              {
                goto LABEL_197;
              }

              goto LABEL_97;
            }

LABEL_484:
            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
            v106 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v295) = 0;
            if (!__nwlog_fault(v106, type, &v295))
            {
              goto LABEL_363;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v107 = __nwlog_obj();
              v108 = type[0];
              if (os_log_type_enabled(v107, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                v109 = "%{public}s called with null input_protocol";
                goto LABEL_362;
              }

LABEL_363:
              if (!v106)
              {
                return;
              }

              goto LABEL_364;
            }

            if (v295 != 1)
            {
              v107 = __nwlog_obj();
              v108 = type[0];
              if (os_log_type_enabled(v107, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                v109 = "%{public}s called with null input_protocol, backtrace limit exceeded";
                goto LABEL_362;
              }

              goto LABEL_363;
            }

            v177 = __nw_create_backtrace_string();
            v107 = __nwlog_obj();
            v108 = type[0];
            v243 = os_log_type_enabled(v107, type[0]);
            if (!v177)
            {
              if (v243)
              {
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                v109 = "%{public}s called with null input_protocol, no backtrace";
                goto LABEL_362;
              }

              goto LABEL_363;
            }

            if (v243)
            {
              *buf = 136446466;
              *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
              *&buf[12] = 2082;
              *&buf[14] = v177;
              v179 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
              goto LABEL_342;
            }

            goto LABEL_343;
          }

          if (v49 != 3)
          {
            if (v49)
            {
              return;
            }

            v50 = *(handle + 6);
            if (v50)
            {
              v51 = *(v50 + 40);
              if (v51)
              {
                nw_protocol_replace_input_handler(*(handle + 4), handle, *(v50 + 40));
                *(handle + 55) = v51;
                nw_protocol_set_output_handler(handle, 0);
                nw_protocol_set_input_handler(handle, 0);
                if ((handle[580] & 1) == 0)
                {
                  goto LABEL_129;
                }

                v52 = *(*(handle + 55) + 32);
                v53 = *(v52 + 16);
                if (nw_protocol_http_messaging_identifier::onceToken != -1)
                {
                  v251 = *(v52 + 16);
                  dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                  v53 = v251;
                }

                if (!nw_protocols_are_equal(v53, &nw_protocol_http_messaging_identifier::protocol_identifier))
                {
                  v54 = *(v52 + 16);
                  if (nw_protocol_http3_identifier::onceToken != -1)
                  {
                    v252 = *(v52 + 16);
                    dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                    v54 = v252;
                  }

                  if (!nw_protocols_are_equal(v54, &nw_protocol_http3_identifier::http3_protocol_identifier))
                  {
                    goto LABEL_129;
                  }
                }

                v55 = *(handle + 46);
                if (!v55)
                {
                  goto LABEL_129;
                }

                v56 = nw_parameters_copy_protocol_options_legacy(v55, v52);
                if (v56)
                {
                  if ((*(v51 + 276) & 0x10) == 0 && gLogDatapath == 1)
                  {
                    v254 = v56;
                    v255 = __nwlog_obj();
                    v256 = os_log_type_enabled(v255, OS_LOG_TYPE_DEBUG);
                    v56 = v254;
                    if (v256)
                    {
                      v257 = *(v51 + 88);
                      if (v257)
                      {
                        v258 = *(v257 + 492);
                      }

                      else
                      {
                        v258 = -1;
                      }

                      v267 = *(v51 + 64);
                      *buf = 136447490;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = v51 + 192;
                      *&buf[22] = 2080;
                      v304 = " ";
                      *v305 = 1024;
                      *&v305[2] = v258;
                      *&v305[6] = 2048;
                      *&v305[8] = v267;
                      *&v305[16] = 2048;
                      *&v305[18] = v254;
                      _os_log_impl(&dword_181A37000, v255, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                      v56 = v254;
                    }
                  }

                  v57 = v56;
                  nw_http3_set_stream_mode(v56, 0);
                  v58 = v57;
                  goto LABEL_93;
                }

                if ((handle[580] & 2) == 0 && gLogDatapath == 1)
                {
                  v186 = __nwlog_obj();
                  if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_554;
                  }
                }

                goto LABEL_128;
              }

LABEL_492:
              __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v238 = _os_log_send_and_compose_impl();
              type[0] = OS_LOG_TYPE_ERROR;
              LOBYTE(v295) = 0;
              if (!__nwlog_fault(v238, type, &v295))
              {
                goto LABEL_572;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v239 = __nwlog_obj();
                v240 = type[0];
                if (!os_log_type_enabled(v239, type[0]))
                {
                  goto LABEL_572;
                }

                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                v241 = "%{public}s called with null webtransport_stream";
LABEL_571:
                _os_log_impl(&dword_181A37000, v239, v240, v241, buf, 0xCu);
                goto LABEL_572;
              }

              if (v295 != 1)
              {
                v239 = __nwlog_obj();
                v240 = type[0];
                if (!os_log_type_enabled(v239, type[0]))
                {
                  goto LABEL_572;
                }

                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                v241 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                goto LABEL_571;
              }

              v246 = __nw_create_backtrace_string();
              v239 = __nwlog_obj();
              v240 = type[0];
              v247 = os_log_type_enabled(v239, type[0]);
              if (!v246)
              {
                if (!v247)
                {
                  goto LABEL_572;
                }

                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                v241 = "%{public}s called with null webtransport_stream, no backtrace";
                goto LABEL_571;
              }

              if (v247)
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                *&buf[12] = 2082;
                *&buf[14] = v246;
                v248 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
LABEL_520:
                _os_log_impl(&dword_181A37000, v239, v240, v248, buf, 0x16u);
                goto LABEL_521;
              }

              goto LABEL_521;
            }

            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v238 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v295) = 0;
            if (!__nwlog_fault(v238, type, &v295))
            {
              goto LABEL_572;
            }

            if (type[0] != OS_LOG_TYPE_FAULT)
            {
              if (v295 == 1)
              {
                v249 = __nw_create_backtrace_string();
                v239 = __nwlog_obj();
                v240 = type[0];
                v250 = os_log_type_enabled(v239, type[0]);
                if (v249)
                {
                  if (v250)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                    *&buf[12] = 2082;
                    *&buf[14] = v249;
                    _os_log_impl(&dword_181A37000, v239, v240, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v249);
LABEL_572:
                  if (!v238)
                  {
                    goto LABEL_129;
                  }

LABEL_573:
                  free(v238);
                  goto LABEL_129;
                }

                goto LABEL_569;
              }

LABEL_567:
              v239 = __nwlog_obj();
              v240 = type[0];
              if (!os_log_type_enabled(v239, type[0]))
              {
                goto LABEL_572;
              }

              *buf = 136446210;
              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
              v241 = "%{public}s called with null input_protocol, backtrace limit exceeded";
              goto LABEL_571;
            }

LABEL_502:
            v239 = __nwlog_obj();
            v240 = type[0];
            if (!os_log_type_enabled(v239, type[0]))
            {
              goto LABEL_572;
            }

            *buf = 136446210;
            *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
            v241 = "%{public}s called with null input_protocol";
            goto LABEL_571;
          }

          v61 = *(handle + 4);
          if (!v61)
          {
            goto LABEL_488;
          }

          v62 = v61[3];
          if (!v62 || !*(v62 + 80))
          {
            if ((handle[580] & 2) == 0)
            {
              v188 = __nwlog_obj();
              if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
              {
                v189 = *(handle + 123);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_http_get_input";
                *&buf[12] = 2082;
                *&buf[14] = handle + 496;
                *&buf[22] = 2080;
                v304 = " ";
                *v305 = 1024;
                *&v305[2] = v189;
                _os_log_impl(&dword_181A37000, v188, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
              }
            }

            __nwlog_obj();
            *buf = 136446210;
            goto LABEL_373;
          }

          for (i = 3; (i | 2) == 3; i = *(handle + 119))
          {
            if (!nw_protocol_get_input_frames(v61, handle, 0, 0, 0xFFFFFFFFLL, (handle + 120)))
            {
              return;
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3802000000;
            v304 = __Block_byref_object_copy__36471;
            *v305 = __Block_byref_object_dispose__36472;
            if (nw_protocol_copy_http_definition_onceToken != -1)
            {
              dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
            }

            *&v305[8] = nw_protocol_copy_http_definition_http_definition;
            v305[16] |= 1u;
            *type = MEMORY[0x1E69E9820];
            v283 = 0x40000000;
            v284 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
            v285 = &unk_1E6A31940;
            v286 = buf;
            v287 = handle;
            v288 = handle + 120;
            v64 = *(handle + 15);
            do
            {
              if (!v64)
              {
                break;
              }

              v65 = *(v64 + 32);
              v66 = (v284)(type);
              v64 = v65;
            }

            while ((v66 & 1) != 0);
            _Block_object_dispose(buf, 8);
            if ((v305[16] & 1) != 0 && *&v305[8])
            {
              os_release(*&v305[8]);
            }
          }

          v70 = *(handle + 120);
          if (v70 == 1)
          {
            goto LABEL_355;
          }

          if (v70)
          {
            return;
          }

          if ((handle[580] & 2) == 0 && gLogDatapath == 1)
          {
            v259 = __nwlog_obj();
            if (os_log_type_enabled(v259, OS_LOG_TYPE_DEBUG))
            {
              v260 = *(handle + 123);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_http2_handle_capsules";
              *&buf[12] = 2082;
              *&buf[14] = handle + 496;
              *&buf[22] = 2080;
              v304 = " ";
              *v305 = 1024;
              *&v305[2] = v260;
              _os_log_impl(&dword_181A37000, v259, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
            }
          }

          if (*(handle + 119) != 4)
          {
            return;
          }

          v71 = (handle + 96);
          while (1)
          {
            capsule = nw_http_capsule_framer_read_capsule(handle + 12, handle);
            if (!capsule && !*(handle + 17))
            {
              return;
            }

            if (*(handle + 57))
            {
              goto LABEL_218;
            }

            v121 = *v71;
            if (*v71 == -1)
            {
LABEL_276:
              v135 = __nwlog_obj();
              if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2048;
                *&buf[14] = v121;
                _os_log_impl(&dword_181A37000, v135, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
              }

              goto LABEL_218;
            }

            v122 = *(handle + 13) != -1 && *(handle + 14) == 0;
            if (v121 <= 16770303)
            {
              if ((v121 - 16770048) < 6 || (v121 + 1) <= 4 && v121)
              {
                goto LABEL_276;
              }
            }

            else if ((v121 - 420171065) <= 9 && ((1 << (v121 - 57)) & 0x2EF) != 0)
            {
              v275[0] = -1;
              if (nw_http_capsule_framer_parse_vle_value(handle + 12, handle, v275))
              {
                stream = nw_webtransport_session_get_stream(handle, v275[0]);
                if (stream)
                {
                  goto LABEL_269;
                }

                if ((v121 - 420171067) > 1)
                {
                  goto LABEL_301;
                }

                v142 = v275[0];
                v143 = handle[580];
                if (v275[0] >> 60 || ((LODWORD(v275[0]) ^ v143) & 1) == 0)
                {
                  if ((v143 & 2) == 0)
                  {
                    v152 = __nwlog_obj();
                    if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
                    {
                      v153 = *(handle + 123);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = handle + 496;
                      *&buf[22] = 2080;
                      v304 = " ";
                      *v305 = 1024;
                      *&v305[2] = v153;
                      v154 = v152;
                      v155 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                      goto LABEL_300;
                    }
                  }

LABEL_301:
                  if ((handle[580] & 2) == 0)
                  {
                    v156 = __nwlog_obj();
                    if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
                    {
                      v157 = *(handle + 123);
                      *buf = 136447490;
                      *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                      *&buf[12] = 2082;
                      *&buf[14] = handle + 496;
                      *&buf[22] = 2080;
                      v304 = " ";
                      *v305 = 1024;
                      *&v305[2] = v157;
                      *&v305[6] = 2048;
                      *&v305[8] = v275[0];
                      *&v305[16] = 2048;
                      *&v305[18] = v121;
                      _os_log_impl(&dword_181A37000, v156, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                    }
                  }

                  goto LABEL_218;
                }

                v144 = *(handle + 53);
                if (!v144 || (v145 = *v144) == 0 || !*v145)
                {
                  if ((v143 & 2) == 0)
                  {
                    v158 = __nwlog_obj();
                    if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
                    {
                      v159 = *(handle + 123);
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = handle + 496;
                      *&buf[22] = 2080;
                      v304 = " ";
                      *v305 = 1024;
                      *&v305[2] = v159;
                      v154 = v158;
                      v155 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_300:
                      _os_log_impl(&dword_181A37000, v154, OS_LOG_TYPE_ERROR, v155, buf, 0x26u);
                    }
                  }

                  goto LABEL_301;
                }

                v146 = _nw_parameters_copy(*(handle + 46));
                handle[580] |= 0x20u;
                *(handle + 22) = v142;
                v147 = (***(handle + 53))(*(handle + 53), *(handle + 48), v146);
                *(handle + 22) = -1;
                handle[580] &= ~0x20u;
                if (v147)
                {
                  v148 = nw_webtransport_session_get_stream(handle, v142);
                }

                else
                {
                  v148 = 0;
                }

                if (v146)
                {
                  os_release(v146);
                }

                if (!v148)
                {
                  goto LABEL_301;
                }

                stream = v148;
                if (*(v148 + 184) != 3)
                {
LABEL_269:
                  *(handle + 57) = stream;
                  goto LABEL_218;
                }

                if ((handle[580] & 2) != 0)
                {
                  goto LABEL_218;
                }

                v160 = __nwlog_obj();
                if (!os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_218;
                }

                v161 = *(handle + 123);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = handle + 496;
                *&buf[22] = 2080;
                v304 = " ";
                *v305 = 1024;
                *&v305[2] = v161;
                *&v305[6] = 2048;
                *&v305[8] = v275[0];
                v138 = v160;
                v139 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
              }

              else
              {
                if (!v122)
                {
                  goto LABEL_218;
                }

                if ((handle[580] & 2) != 0)
                {
                  goto LABEL_218;
                }

                v136 = __nwlog_obj();
                if (!os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_218;
                }

                v137 = *(handle + 123);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                *&buf[12] = 2082;
                *&buf[14] = handle + 496;
                *&buf[22] = 2080;
                v304 = " ";
                *v305 = 1024;
                *&v305[2] = v137;
                *&v305[6] = 2048;
                *&v305[8] = v121;
                v138 = v136;
                v139 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
              }

              _os_log_impl(&dword_181A37000, v138, OS_LOG_TYPE_ERROR, v139, buf, 0x30u);
            }

            else if ((v121 - 16770304) < 4)
            {
              goto LABEL_276;
            }

LABEL_218:
            v120 = *(handle + 12);
            if ((handle[580] & 2) == 0 && gLogDatapath == 1)
            {
              v162 = __nwlog_obj();
              if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
              {
                v163 = *(handle + 123);
                v164 = *(handle + 13);
                *buf = 136447490;
                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                *&buf[12] = 2082;
                *&buf[14] = handle + 496;
                *&buf[22] = 2080;
                v304 = " ";
                *v305 = 1024;
                *&v305[2] = v163;
                *&v305[6] = 2048;
                *&v305[8] = v120;
                *&v305[16] = 2048;
                *&v305[18] = v164;
                _os_log_impl(&dword_181A37000, v162, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
              }
            }

            if (v120 > 16770303)
            {
              if (v120 <= 420171064)
              {
                if ((v120 - 16770304) < 4)
                {
                  goto LABEL_237;
                }

                if (v120 == 420171064)
                {
                  goto LABEL_236;
                }

                goto LABEL_239;
              }

              if ((v120 - 420171065) >= 2)
              {
                if ((v120 - 420171067) < 2)
                {
                  v123 = *(handle + 57);
                  v125 = v120 == 420171068 && capsule;
                  v295 = MEMORY[0x1E69E9820];
                  v296 = 0x40000000;
                  v297 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                  v298 = &__block_descriptor_tmp_34_36485;
                  v301 = v125;
                  v299 = handle + 96;
                  v300 = v123;
                  v126 = *(handle + 17);
                  do
                  {
                    if (!v126)
                    {
                      break;
                    }

                    v127 = *(v126 + 32);
                    v128 = (v297)(&v295);
                    v126 = v127;
                  }

                  while ((v128 & 1) != 0);
                  if (!v125)
                  {
                    goto LABEL_296;
                  }

                  nw_protocol_input_finished(v123, handle);
                }

                goto LABEL_239;
              }

              if (capsule)
              {
                v129 = *(handle + 57);
                v275[0] = -1;
                if (nw_http_capsule_framer_parse_vle_value(handle + 12, handle, v275))
                {
                  if (!v129 || (*(v129 + 276) & 0x10) == 0)
                  {
                    v130 = __nwlog_obj();
                    if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
                    {
                      if (v129)
                      {
                        v131 = (v129 + 192);
                      }

                      else
                      {
                        v131 = "";
                      }

                      v132 = " ";
                      if (!v129)
                      {
                        v132 = "";
                      }

                      v133 = *(v129 + 88);
                      if (v133)
                      {
                        v116 = *(v133 + 492);
                      }

                      else
                      {
                        v116 = -1;
                      }

                      v117 = *(v129 + 64);
                      *buf = 136448002;
                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                      *&buf[12] = 2082;
                      *&buf[14] = v131;
                      *&buf[22] = 2080;
                      v304 = v132;
                      *v305 = 1024;
                      *&v305[2] = v116;
                      *&v305[6] = 2048;
                      *&v305[8] = v117;
                      *&v305[16] = 2048;
                      *&v305[18] = v120;
                      v306 = 2048;
                      v307 = v117;
                      v308 = 2048;
                      v309 = v275[0];
                      _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                    }
                  }

                  nw_protocol_webtransport_stream_error(v129, handle);
                  nw_protocol_webtransport_stream_disconnect(v129, v118);
                }

                else if ((handle[580] & 2) == 0)
                {
                  v140 = __nwlog_obj();
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                  {
                    v141 = *(handle + 123);
                    *buf = 136447234;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2082;
                    *&buf[14] = handle + 496;
                    *&buf[22] = 2080;
                    v304 = " ";
                    *v305 = 1024;
                    *&v305[2] = v141;
                    *&v305[6] = 2048;
                    *&v305[8] = v120;
                    _os_log_impl(&dword_181A37000, v140, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                  }
                }

LABEL_214:
                *(handle + 57) = 0;
                nw_http_capsule_complete_capsule((handle + 96));
              }
            }

            else
            {
              if (v120 <= 16770047)
              {
                if ((v120 - 1) < 3 || v120 == -1)
                {
LABEL_237:
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v124 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                    *&buf[12] = 2048;
                    *&buf[14] = v120;
                    _os_log_impl(&dword_181A37000, v124, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                  }

                  goto LABEL_239;
                }

                if (!v120)
                {
                  v123 = *(handle + 56);
                  if (v123 && *(v123 + 184) != 3)
                  {
                    v289 = MEMORY[0x1E69E9820];
                    v290 = 0x40000000;
                    v291 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                    v292 = &__block_descriptor_tmp_35_36486;
                    v293 = handle + 96;
                    v294 = v123;
                    v149 = *(handle + 17);
                    do
                    {
                      if (!v149)
                      {
                        break;
                      }

                      v150 = *(v149 + 32);
                      v151 = (v291)(&v289);
                      v149 = v150;
                    }

                    while ((v151 & 1) != 0);
LABEL_296:
                    nw_protocol_input_available(v123, handle);
                    goto LABEL_239;
                  }

LABEL_236:
                  nw_frame_array_finalize((handle + 136), 1, 1);
                }
              }

              else if ((v120 - 16770048) < 6)
              {
                goto LABEL_237;
              }

LABEL_239:
              if (capsule)
              {
                goto LABEL_214;
              }
            }
          }
        }

        if ((handle[580] & 2) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v20 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v21 = *(handle + 123);
            *buf = 136446978;
            *&buf[4] = "nw_webtransport_session_establish";
            *&buf[12] = 2082;
            *&buf[14] = handle + 496;
            *&buf[22] = 2080;
            v304 = " ";
            *v305 = 1024;
            *&v305[2] = v21;
            _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing", buf, 0x26u);
          }
        }

LABEL_48:
        if (*(handle + 119) == 5)
        {
          if ((handle[580] & 2) != 0)
          {
            return;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            return;
          }

          v23 = *(handle + 123);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_terminate";
          *&buf[12] = 2082;
          *&buf[14] = handle + 496;
          *&buf[22] = 2080;
          v304 = " ";
          *v305 = 1024;
          *&v305[2] = v23;
          v24 = "%{public}s %{public}s%s<i%u> Session already terminated, ignoring";
          v25 = v22;
          v26 = OS_LOG_TYPE_INFO;
          goto LABEL_52;
        }

        if ((handle[580] & 2) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v28 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v29 = *(handle + 123);
            *buf = 136447234;
            *&buf[4] = "nw_webtransport_session_terminate";
            *&buf[12] = 2082;
            *&buf[14] = handle + 496;
            *&buf[22] = 2080;
            v304 = " ";
            *v305 = 1024;
            *&v305[2] = v29;
            *&v305[6] = 1024;
            *&v305[8] = 57;
            _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Closing webtransport session with error %{darwin.errno}d", buf, 0x2Cu);
          }
        }

        v30 = *(handle + 119);
        *(handle + 119) = 5;
        v31 = *(handle + 24);
        if (v31)
        {
          v275[0] = MEMORY[0x1E69E9820];
          v275[1] = 0x40000000;
          v275[2] = ___ZL33nw_webtransport_session_terminateP23nw_webtransport_sessioni_block_invoke;
          v275[3] = &__block_descriptor_tmp_24_36439;
          v276 = 57;
          nw_hash_table_apply(v31, v275);
        }

        v32 = *(handle + 56);
        if (v32)
        {
          v33 = *(v32 + 88);
          nw_protocol_error(*(v32 + 48), *(handle + 56));
          nw_protocol_disconnect(v32, v33);
        }

        v34 = *(handle + 42);
        if (v34)
        {
          do
          {
            v35 = *(v34 + 112);
            v36 = *(v34 + 88);
            nw_protocol_error(*(v34 + 48), v34);
            nw_protocol_disconnect(v34, v36);
            v34 = v35;
          }

          while (v35);
        }

        v37 = *(handle + 55);
        if (v37)
        {
          v38 = *(v37 + 88);
          nw_protocol_error(*(v37 + 48), *(handle + 55));
          nw_protocol_disconnect(v37, v38);
        }

        if (*(handle + 4))
        {
          nw_protocol_remove_instance(handle);
          nw_protocol_disconnect(*(handle + 4), handle);
        }

        v39 = *(handle + 50);
        if (!v39)
        {
          return;
        }

        webtransport_state = nw_http_connection_metadata_get_webtransport_state(v39);
        if (!webtransport_state)
        {
          return;
        }

        v41 = webtransport_state;
        if (v30 != 4 && v30 != 1)
        {
          return;
        }

        v42 = *(webtransport_state + 16);
        *(webtransport_state + 16) = v42 - 1;
        if (v42)
        {
LABEL_136:
          if (handle[580])
          {
            return;
          }

          handle = *v41;
          if (!*v41)
          {
            return;
          }

          v75 = *(handle + 44);
          v76 = *(handle + 45);
          v77 = (v75 + 360);
          if (!v75)
          {
            v77 = (v41 + 8);
          }

          *v77 = v76;
          *v76 = v75;
          *(handle + 44) = 0;
          *(handle + 45) = 0;
          v78 = *(handle + 4);
          if (!v78 || *(handle + 120) != 2)
          {
            goto LABEL_172;
          }

          v79 = v78[2];
          if (nw_protocol_http2_identifier::onceToken != -1)
          {
            v253 = v78[2];
            dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
            v79 = v253;
          }

          if (!nw_protocols_are_equal(v79, &nw_protocol_http2_identifier::http2_protocol_identifier))
          {
            v80 = v78[2];
            if (nw_protocol_http3_identifier::onceToken != -1)
            {
              v262 = v78[2];
              dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
              v80 = v262;
            }

            if (!nw_protocols_are_equal(v80, &nw_protocol_http3_identifier::http3_protocol_identifier))
            {
              v81 = v78[2];
              if (nw_protocol_http_messaging_identifier::onceToken != -1)
              {
                v264 = v78[2];
                dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                v81 = v264;
              }

              if (!nw_protocols_are_equal(v81, &nw_protocol_http_messaging_identifier::protocol_identifier))
              {
LABEL_172:
                v94 = *(handle + 120);
                if (v94 > 1)
                {
                  if ((handle[580] & 2) != 0)
                  {
                    return;
                  }

                  v103 = __nwlog_obj();
                  if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                  {
                    return;
                  }

                  v104 = *(handle + 123);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_establish";
                  *&buf[12] = 2082;
                  *&buf[14] = handle + 496;
                  *&buf[22] = 2080;
                  v304 = " ";
                  *v305 = 1024;
                  *&v305[2] = v104;
                  v24 = "%{public}s %{public}s%s<i%u> Unknown webtransport session transport mode for establishment, failing";
                  v25 = v103;
                  v26 = OS_LOG_TYPE_ERROR;
LABEL_52:
                  v27 = 38;
LABEL_53:
                  _os_log_impl(&dword_181A37000, v25, v26, v24, buf, v27);
                  return;
                }

                if (handle[580])
                {
                  v95 = *(handle + 119);
                  if (v94 == 1)
                  {
                    if (v95 != 3)
                    {
                      if (v95)
                      {
                        return;
                      }

                      v96 = *(handle + 6);
                      if (v96)
                      {
                        v51 = *(v96 + 40);
                        if (v51)
                        {
                          nw_protocol_replace_input_handler(*(handle + 4), handle, *(v96 + 40));
                          *(handle + 55) = v51;
                          nw_protocol_set_output_handler(handle, 0);
                          nw_protocol_set_input_handler(handle, 0);
                          if ((handle[580] & 1) == 0)
                          {
                            goto LABEL_129;
                          }

                          v97 = *(*(handle + 55) + 32);
                          v98 = *(v97 + 16);
                          if (nw_protocol_http_messaging_identifier::onceToken != -1)
                          {
                            v268 = *(v97 + 16);
                            dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                            v98 = v268;
                          }

                          if (!nw_protocols_are_equal(v98, &nw_protocol_http_messaging_identifier::protocol_identifier))
                          {
                            v99 = *(v97 + 16);
                            if (nw_protocol_http3_identifier::onceToken != -1)
                            {
                              dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
                            }

                            if (!nw_protocols_are_equal(v99, &nw_protocol_http3_identifier::http3_protocol_identifier))
                            {
                              goto LABEL_129;
                            }
                          }

                          v100 = *(handle + 46);
                          if (!v100)
                          {
                            goto LABEL_129;
                          }

                          v101 = nw_parameters_copy_protocol_options_legacy(v100, v97);
                          if (v101)
                          {
                            v102 = v101;
                            if ((*(v51 + 276) & 0x10) == 0 && gLogDatapath == 1)
                            {
                              v269 = __nwlog_obj();
                              if (os_log_type_enabled(v269, OS_LOG_TYPE_DEBUG))
                              {
                                v270 = *(v51 + 88);
                                if (v270)
                                {
                                  v271 = *(v270 + 492);
                                }

                                else
                                {
                                  v271 = -1;
                                }

                                v274 = *(v51 + 64);
                                *buf = 136447490;
                                *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                                *&buf[12] = 2082;
                                *&buf[14] = v51 + 192;
                                *&buf[22] = 2080;
                                v304 = " ";
                                *v305 = 1024;
                                *&v305[2] = v271;
                                *&v305[6] = 2048;
                                *&v305[8] = v274;
                                *&v305[16] = 2048;
                                *&v305[18] = v102;
                                _os_log_impl(&dword_181A37000, v269, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reverting stream mode to default on options %p", buf, 0x3Au);
                              }
                            }

                            nw_http3_set_stream_mode(v102, 0);
                            v58 = v102;
LABEL_93:
                            os_release(v58);
LABEL_129:
                            *(handle + 119) = 2;
                            return;
                          }

                          if ((handle[580] & 2) == 0 && gLogDatapath == 1)
                          {
                            v186 = __nwlog_obj();
                            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
                            {
LABEL_554:
                              v263 = *(handle + 123);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = handle + 496;
                              *&buf[22] = 2080;
                              v304 = " ";
                              *v305 = 1024;
                              *&v305[2] = v263;
                              _os_log_impl(&dword_181A37000, v186, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Received HTTP options are NULL", buf, 0x26u);
                            }
                          }

LABEL_128:
                          v73 = *(v51 + 88);
                          nw_protocol_error(*(v51 + 48), v51);
                          nw_protocol_disconnect(v51, v73);
                          goto LABEL_129;
                        }

                        goto LABEL_492;
                      }

                      __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                      v238 = _os_log_send_and_compose_impl();
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v295) = 0;
                      if (!__nwlog_fault(v238, type, &v295))
                      {
                        goto LABEL_572;
                      }

                      if (type[0] != OS_LOG_TYPE_FAULT)
                      {
                        if (v295 == 1)
                        {
                          v246 = __nw_create_backtrace_string();
                          v239 = __nwlog_obj();
                          v240 = type[0];
                          v250 = os_log_type_enabled(v239, type[0]);
                          if (v246)
                          {
                            if (v250)
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = v246;
                              v248 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
                              goto LABEL_520;
                            }

LABEL_521:
                            free(v246);
                            if (!v238)
                            {
                              goto LABEL_129;
                            }

                            goto LABEL_573;
                          }

LABEL_569:
                          if (!v250)
                          {
                            goto LABEL_572;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http3_setup_placeholder_stream";
                          v241 = "%{public}s called with null input_protocol, no backtrace";
                          goto LABEL_571;
                        }

                        goto LABEL_567;
                      }

                      goto LABEL_502;
                    }

                    v165 = *(handle + 4);
                    if (v165)
                    {
                      v166 = v165[3];
                      if (v166 && *(v166 + 80))
                      {
                        for (j = 3; (j | 2) == 3; j = *(handle + 119))
                        {
                          if (!nw_protocol_get_input_frames(v165, handle, 0, 0, 0xFFFFFFFFLL, (handle + 120)))
                          {
                            return;
                          }

                          *buf = 0;
                          *&buf[8] = buf;
                          *&buf[16] = 0x3802000000;
                          v304 = __Block_byref_object_copy__36471;
                          *v305 = __Block_byref_object_dispose__36472;
                          *&v305[8] = nw_protocol_copy_http_definition();
                          v305[16] |= 1u;
                          *type = MEMORY[0x1E69E9820];
                          v283 = 0x40000000;
                          v284 = ___ZL38nw_webtransport_session_http_get_inputP23nw_webtransport_session_block_invoke;
                          v285 = &unk_1E6A31940;
                          v286 = buf;
                          v287 = handle;
                          v288 = handle + 120;
                          v168 = *(handle + 15);
                          do
                          {
                            if (!v168)
                            {
                              break;
                            }

                            v169 = *(v168 + 32);
                            v170 = (v284)(type);
                            v168 = v169;
                          }

                          while ((v170 & 1) != 0);
                          _Block_object_dispose(buf, 8);
                          if ((v305[16] & 1) != 0 && *&v305[8])
                          {
                            os_release(*&v305[8]);
                          }
                        }

                        v180 = *(handle + 120);
                        if (v180 != 1)
                        {
                          if (v180)
                          {
                            return;
                          }

                          if ((handle[580] & 2) == 0 && gLogDatapath == 1)
                          {
                            v272 = __nwlog_obj();
                            if (os_log_type_enabled(v272, OS_LOG_TYPE_DEBUG))
                            {
                              v273 = *(handle + 123);
                              *buf = 136446978;
                              *&buf[4] = "nw_webtransport_http2_handle_capsules";
                              *&buf[12] = 2082;
                              *&buf[14] = handle + 496;
                              *&buf[22] = 2080;
                              v304 = " ";
                              *v305 = 1024;
                              *&v305[2] = v273;
                              _os_log_impl(&dword_181A37000, v272, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
                            }
                          }

                          if (*(handle + 119) != 4)
                          {
                            return;
                          }

                          v181 = (handle + 96);
                          while (1)
                          {
                            v193 = nw_http_capsule_framer_read_capsule(handle + 12, handle);
                            if (!v193 && !*(handle + 17))
                            {
                              return;
                            }

                            if (*(handle + 57))
                            {
                              goto LABEL_384;
                            }

                            v195 = *v181;
                            if (*v181 == -1)
                            {
LABEL_439:
                              v209 = __nwlog_obj();
                              if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136446466;
                                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                *&buf[12] = 2048;
                                *&buf[14] = v195;
                                _os_log_impl(&dword_181A37000, v209, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                              }

                              goto LABEL_384;
                            }

                            v196 = *(handle + 13) != -1 && *(handle + 14) == 0;
                            if (v195 <= 16770303)
                            {
                              if ((v195 - 16770048) < 6 || (v195 + 1) <= 4 && v195)
                              {
                                goto LABEL_439;
                              }
                            }

                            else if ((v195 - 420171065) <= 9 && ((1 << (v195 - 57)) & 0x2EF) != 0)
                            {
                              v302 = -1;
                              if (nw_http_capsule_framer_parse_vle_value(handle + 12, handle, &v302))
                              {
                                v208 = nw_webtransport_session_get_stream(handle, v302);
                                if (v208)
                                {
                                  goto LABEL_433;
                                }

                                if ((v195 - 420171067) > 1)
                                {
                                  goto LABEL_464;
                                }

                                v212 = v302;
                                v213 = handle[580];
                                if (v302 >> 60 || ((v302 ^ v213) & 1) == 0)
                                {
                                  if ((v213 & 2) == 0)
                                  {
                                    v221 = __nwlog_obj();
                                    if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
                                    {
                                      v222 = *(handle + 123);
                                      *buf = 136446978;
                                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                                      *&buf[12] = 2082;
                                      *&buf[14] = handle + 496;
                                      *&buf[22] = 2080;
                                      v304 = " ";
                                      *v305 = 1024;
                                      *&v305[2] = v222;
                                      v223 = v221;
                                      v224 = "%{public}s %{public}s%s<i%u> Invalid incoming stream ID";
                                      goto LABEL_463;
                                    }
                                  }

LABEL_464:
                                  if ((handle[580] & 2) == 0)
                                  {
                                    v225 = __nwlog_obj();
                                    if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
                                    {
                                      v226 = *(handle + 123);
                                      *buf = 136447490;
                                      *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                      *&buf[12] = 2082;
                                      *&buf[14] = handle + 496;
                                      *&buf[22] = 2080;
                                      v304 = " ";
                                      *v305 = 1024;
                                      *&v305[2] = v226;
                                      *&v305[6] = 2048;
                                      *&v305[8] = v302;
                                      *&v305[16] = 2048;
                                      *&v305[18] = v195;
                                      _os_log_impl(&dword_181A37000, v225, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Did not find stream %llu for capsule 0x%llx.", buf, 0x3Au);
                                    }
                                  }

                                  goto LABEL_384;
                                }

                                v214 = *(handle + 53);
                                if (!v214 || (v215 = *v214) == 0 || !*v215)
                                {
                                  if ((v213 & 2) == 0)
                                  {
                                    v227 = __nwlog_obj();
                                    if (os_log_type_enabled(v227, OS_LOG_TYPE_ERROR))
                                    {
                                      v228 = *(handle + 123);
                                      *buf = 136446978;
                                      *&buf[4] = "nw_webtransport_session_create_incoming_stream";
                                      *&buf[12] = 2082;
                                      *&buf[14] = handle + 496;
                                      *&buf[22] = 2080;
                                      v304 = " ";
                                      *v305 = 1024;
                                      *&v305[2] = v228;
                                      v223 = v227;
                                      v224 = "%{public}s %{public}s%s<i%u> Listen handler not setup to accept inbound stream";
LABEL_463:
                                      _os_log_impl(&dword_181A37000, v223, OS_LOG_TYPE_ERROR, v224, buf, 0x26u);
                                    }
                                  }

                                  goto LABEL_464;
                                }

                                v216 = _nw_parameters_copy(*(handle + 46));
                                handle[580] |= 0x20u;
                                *(handle + 22) = v212;
                                v217 = (***(handle + 53))(*(handle + 53), *(handle + 48), v216);
                                *(handle + 22) = -1;
                                handle[580] &= ~0x20u;
                                if (v217)
                                {
                                  v208 = nw_webtransport_session_get_stream(handle, v212);
                                }

                                else
                                {
                                  v208 = 0;
                                }

                                if (v216)
                                {
                                  os_release(v216);
                                }

                                if (!v208)
                                {
                                  goto LABEL_464;
                                }

                                if (*(v208 + 184) != 3)
                                {
LABEL_433:
                                  *(handle + 57) = v208;
                                  goto LABEL_384;
                                }

                                if ((handle[580] & 2) != 0)
                                {
                                  goto LABEL_384;
                                }

                                v229 = __nwlog_obj();
                                if (!os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_384;
                                }

                                v230 = *(handle + 123);
                                *buf = 136447234;
                                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                *&buf[12] = 2082;
                                *&buf[14] = handle + 496;
                                *&buf[22] = 2080;
                                v304 = " ";
                                *v305 = 1024;
                                *&v305[2] = v230;
                                *&v305[6] = 2048;
                                *&v305[8] = v302;
                                v231 = v229;
                                v232 = "%{public}s %{public}s%s<i%u> Stream %llu is not reading.";
                              }

                              else
                              {
                                if (!v196)
                                {
                                  goto LABEL_384;
                                }

                                if ((handle[580] & 2) != 0)
                                {
                                  goto LABEL_384;
                                }

                                v236 = __nwlog_obj();
                                if (!os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_384;
                                }

                                v237 = *(handle + 123);
                                *buf = 136447234;
                                *&buf[4] = "nw_webtransport_http2_setup_stream_for_incoming_capsule";
                                *&buf[12] = 2082;
                                *&buf[14] = handle + 496;
                                *&buf[22] = 2080;
                                v304 = " ";
                                *v305 = 1024;
                                *&v305[2] = v237;
                                *&v305[6] = 2048;
                                *&v305[8] = v195;
                                v231 = v236;
                                v232 = "%{public}s %{public}s%s<i%u> Failed to parse stream ID from capsule 0x%llx correctly.";
                              }

                              _os_log_impl(&dword_181A37000, v231, OS_LOG_TYPE_ERROR, v232, buf, 0x30u);
                            }

                            else if ((v195 - 16770304) < 4)
                            {
                              goto LABEL_439;
                            }

LABEL_384:
                            v194 = *(handle + 12);
                            if ((handle[580] & 2) == 0 && gLogDatapath == 1)
                            {
                              v233 = __nwlog_obj();
                              if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
                              {
                                v234 = *(handle + 123);
                                v235 = *(handle + 13);
                                *buf = 136447490;
                                *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                *&buf[12] = 2082;
                                *&buf[14] = handle + 496;
                                *&buf[22] = 2080;
                                v304 = " ";
                                *v305 = 1024;
                                *&v305[2] = v234;
                                *&v305[6] = 2048;
                                *&v305[8] = v194;
                                *&v305[16] = 2048;
                                *&v305[18] = v235;
                                _os_log_impl(&dword_181A37000, v233, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Webtransport session received capsule type 0x%llx length %llu", buf, 0x3Au);
                              }
                            }

                            if (v194 > 16770303)
                            {
                              if (v194 <= 420171064)
                              {
                                if ((v194 - 16770304) < 4)
                                {
                                  goto LABEL_403;
                                }

                                if (v194 == 420171064)
                                {
                                  goto LABEL_393;
                                }

                                goto LABEL_458;
                              }

                              if ((v194 - 420171065) >= 2)
                              {
                                if ((v194 - 420171067) < 2)
                                {
                                  v197 = *(handle + 57);
                                  v199 = v194 == 420171068 && v193;
                                  v295 = MEMORY[0x1E69E9820];
                                  v296 = 0x40000000;
                                  v297 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke;
                                  v298 = &__block_descriptor_tmp_34_36485;
                                  v301 = v199;
                                  v299 = handle + 96;
                                  v300 = v197;
                                  v200 = *(handle + 17);
                                  do
                                  {
                                    if (!v200)
                                    {
                                      break;
                                    }

                                    v201 = *(v200 + 32);
                                    v202 = (v297)(&v295);
                                    v200 = v201;
                                  }

                                  while ((v202 & 1) != 0);
                                  if (!v199)
                                  {
                                    goto LABEL_457;
                                  }

                                  nw_protocol_input_finished(v197, handle);
                                }

                                goto LABEL_458;
                              }

                              if (v193)
                              {
                                v203 = *(handle + 57);
                                v302 = -1;
                                if (nw_http_capsule_framer_parse_vle_value(handle + 12, handle, &v302))
                                {
                                  if (!v203 || (*(v203 + 276) & 0x10) == 0)
                                  {
                                    v204 = __nwlog_obj();
                                    if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
                                    {
                                      if (v203)
                                      {
                                        v205 = (v203 + 192);
                                      }

                                      else
                                      {
                                        v205 = "";
                                      }

                                      v206 = " ";
                                      if (!v203)
                                      {
                                        v206 = "";
                                      }

                                      v207 = *(v203 + 88);
                                      if (v207)
                                      {
                                        v190 = *(v207 + 492);
                                      }

                                      else
                                      {
                                        v190 = -1;
                                      }

                                      v191 = *(v203 + 64);
                                      *buf = 136448002;
                                      *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                      *&buf[12] = 2082;
                                      *&buf[14] = v205;
                                      *&buf[22] = 2080;
                                      v304 = v206;
                                      *v305 = 1024;
                                      *&v305[2] = v190;
                                      *&v305[6] = 2048;
                                      *&v305[8] = v191;
                                      *&v305[16] = 2048;
                                      *&v305[18] = v194;
                                      v306 = 2048;
                                      v307 = v191;
                                      v308 = 2048;
                                      v309 = v302;
                                      _os_log_impl(&dword_181A37000, v204, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Received 0x%llx capsule for stream ID %llu with error code %llu", buf, 0x4Eu);
                                    }
                                  }

                                  nw_protocol_webtransport_stream_error(v203, handle);
                                  nw_protocol_webtransport_stream_disconnect(v203, v192);
                                }

                                else if ((handle[580] & 2) == 0)
                                {
                                  v210 = __nwlog_obj();
                                  if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
                                  {
                                    v211 = *(handle + 123);
                                    *buf = 136447234;
                                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                    *&buf[12] = 2082;
                                    *&buf[14] = handle + 496;
                                    *&buf[22] = 2080;
                                    v304 = " ";
                                    *v305 = 1024;
                                    *&v305[2] = v211;
                                    *&v305[6] = 2048;
                                    *&v305[8] = v194;
                                    _os_log_impl(&dword_181A37000, v210, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> Failed to parse error code from capsule 0x%llx correctly", buf, 0x30u);
                                  }
                                }

LABEL_380:
                                *(handle + 57) = 0;
                                nw_http_capsule_complete_capsule((handle + 96));
                              }
                            }

                            else
                            {
                              if (v194 <= 16770047)
                              {
                                if ((v194 - 1) < 3 || v194 == -1)
                                {
LABEL_403:
                                  v198 = __nwlog_obj();
                                  if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
                                  {
                                    *buf = 136446466;
                                    *&buf[4] = "nw_webtransport_http2_handle_capsules";
                                    *&buf[12] = 2048;
                                    *&buf[14] = v194;
                                    _os_log_impl(&dword_181A37000, v198, OS_LOG_TYPE_ERROR, "%{public}s Unexpected capsule type %llu received", buf, 0x16u);
                                  }

                                  goto LABEL_458;
                                }

                                if (!v194)
                                {
                                  v197 = *(handle + 56);
                                  if (v197 && *(v197 + 184) != 3)
                                  {
                                    v289 = MEMORY[0x1E69E9820];
                                    v290 = 0x40000000;
                                    v291 = ___ZL37nw_webtransport_http2_handle_capsulesP23nw_webtransport_session_block_invoke_2;
                                    v292 = &__block_descriptor_tmp_35_36486;
                                    v293 = handle + 96;
                                    v294 = v197;
                                    v218 = *(handle + 17);
                                    do
                                    {
                                      if (!v218)
                                      {
                                        break;
                                      }

                                      v219 = *(v218 + 32);
                                      v220 = (v291)(&v289);
                                      v218 = v219;
                                    }

                                    while ((v220 & 1) != 0);
LABEL_457:
                                    nw_protocol_input_available(v197, handle);
                                    goto LABEL_458;
                                  }

LABEL_393:
                                  nw_frame_array_finalize((handle + 136), 1, 1);
                                }
                              }

                              else if ((v194 - 16770048) < 6)
                              {
                                goto LABEL_403;
                              }

LABEL_458:
                              if (v193)
                              {
                                goto LABEL_380;
                              }
                            }
                          }
                        }

LABEL_355:
                        nw_webtransport_http3_handle_input(handle);
                        v182 = *(handle + 56);
                        if (v182 && *(v182 + 72))
                        {
                          nw_protocol_input_available(*(v182 + 48), v182);
                        }

                        return;
                      }

                      if ((handle[580] & 2) == 0)
                      {
                        v265 = __nwlog_obj();
                        if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
                        {
                          v266 = *(handle + 123);
                          *buf = 136446978;
                          *&buf[4] = "nw_webtransport_session_http_get_input";
                          *&buf[12] = 2082;
                          *&buf[14] = handle + 496;
                          *&buf[22] = 2080;
                          v304 = " ";
                          *v305 = 1024;
                          *&v305[2] = v266;
                          _os_log_impl(&dword_181A37000, v265, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> output handler has no get_input_frames callback", buf, 0x26u);
                        }
                      }

                      __nwlog_obj();
                      *buf = 136446210;
LABEL_373:
                      *&buf[4] = "nw_webtransport_session_http_get_input";
                      v106 = _os_log_send_and_compose_impl();
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v295) = 0;
                      if (!__nwlog_fault(v106, type, &v295))
                      {
                        goto LABEL_363;
                      }

                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        v107 = __nwlog_obj();
                        v108 = type[0];
                        if (os_log_type_enabled(v107, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_session_http_get_input";
                          v109 = "%{public}s output handler has no get_input_frames callback";
LABEL_362:
                          _os_log_impl(&dword_181A37000, v107, v108, v109, buf, 0xCu);
                          goto LABEL_363;
                        }

                        goto LABEL_363;
                      }

                      if (v295 != 1)
                      {
                        v107 = __nwlog_obj();
                        v108 = type[0];
                        if (os_log_type_enabled(v107, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_session_http_get_input";
                          v109 = "%{public}s output handler has no get_input_frames callback, backtrace limit exceeded";
                          goto LABEL_362;
                        }

                        goto LABEL_363;
                      }

                      v177 = __nw_create_backtrace_string();
                      v107 = __nwlog_obj();
                      v108 = type[0];
                      v242 = os_log_type_enabled(v107, type[0]);
                      if (!v177)
                      {
                        if (v242)
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_session_http_get_input";
                          v109 = "%{public}s output handler has no get_input_frames callback, no backtrace";
                          goto LABEL_362;
                        }

                        goto LABEL_363;
                      }

                      if (v242)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_session_http_get_input";
                        *&buf[12] = 2082;
                        *&buf[14] = v177;
                        v179 = "%{public}s output handler has no get_input_frames callback, dumping backtrace:%{public}s";
                        goto LABEL_342;
                      }

                      goto LABEL_343;
                    }

LABEL_488:
                    __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_http_get_input";
                    v106 = _os_log_send_and_compose_impl();
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v295) = 0;
                    if (!__nwlog_fault(v106, type, &v295))
                    {
                      goto LABEL_363;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v107 = __nwlog_obj();
                      v108 = type[0];
                      if (os_log_type_enabled(v107, type[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_session_http_get_input";
                        v109 = "%{public}s called with null output_handler";
                        goto LABEL_362;
                      }

                      goto LABEL_363;
                    }

                    if (v295 != 1)
                    {
                      v107 = __nwlog_obj();
                      v108 = type[0];
                      if (os_log_type_enabled(v107, type[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_session_http_get_input";
                        v109 = "%{public}s called with null output_handler, backtrace limit exceeded";
                        goto LABEL_362;
                      }

                      goto LABEL_363;
                    }

                    v177 = __nw_create_backtrace_string();
                    v107 = __nwlog_obj();
                    v108 = type[0];
                    v245 = os_log_type_enabled(v107, type[0]);
                    if (!v177)
                    {
                      if (v245)
                      {
                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_session_http_get_input";
                        v109 = "%{public}s called with null output_handler, no backtrace";
                        goto LABEL_362;
                      }

                      goto LABEL_363;
                    }

                    if (v245)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_session_http_get_input";
                      *&buf[12] = 2082;
                      *&buf[14] = v177;
                      v179 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
                      goto LABEL_342;
                    }

                    goto LABEL_343;
                  }

                  if (v95)
                  {
                    return;
                  }

                  *(handle + 119) = 3;
                  v105 = *(handle + 6);
                  if (v105)
                  {
                    v60 = *(v105 + 40);
                    if (!v60)
                    {
LABEL_197:
                      __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                      v106 = _os_log_send_and_compose_impl();
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v295) = 0;
                      if (!__nwlog_fault(v106, type, &v295))
                      {
                        goto LABEL_363;
                      }

                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        v107 = __nwlog_obj();
                        v108 = type[0];
                        if (!os_log_type_enabled(v107, type[0]))
                        {
                          goto LABEL_363;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                        v109 = "%{public}s called with null webtransport_stream";
                        goto LABEL_362;
                      }

                      if (v295 != 1)
                      {
                        v107 = __nwlog_obj();
                        v108 = type[0];
                        if (os_log_type_enabled(v107, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                          v109 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                          goto LABEL_362;
                        }

                        goto LABEL_363;
                      }

                      v177 = __nw_create_backtrace_string();
                      v107 = __nwlog_obj();
                      v108 = type[0];
                      v244 = os_log_type_enabled(v107, type[0]);
                      if (!v177)
                      {
                        if (v244)
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                          v109 = "%{public}s called with null webtransport_stream, no backtrace";
                          goto LABEL_362;
                        }

                        goto LABEL_363;
                      }

                      if (v244)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_http2_setup_placeholder_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v177;
                        v179 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
                        goto LABEL_342;
                      }

                      goto LABEL_343;
                    }

LABEL_97:
                    *(handle + 55) = v60;
                    return;
                  }

                  goto LABEL_484;
                }

LABEL_43:
                if (!*(handle + 119))
                {
                  nw_webtransport_http_send_connect(handle);
                }

                return;
              }
            }
          }

          v82 = nw_protocol_copy_info(v78);
          v83 = v82;
          aBlock = MEMORY[0x1E69E9820];
          v278 = 0x40000000;
          v279 = ___ZL33nw_webtransport_session_establishP23nw_webtransport_session_block_invoke;
          v280 = &__block_descriptor_tmp_27_36446;
          v281 = handle;
          if (v82)
          {
            _nw_array_apply(v82, &aBlock);
            v84 = *(handle + 50);
            if (!v84)
            {
              os_release(v83);
              return;
            }
          }

          else
          {
            v84 = *(handle + 50);
            if (!v84)
            {
              return;
            }
          }

          v85 = nw_http_connection_metadata_get_version(v84);
          v86 = v85;
          if (v85 == 4)
          {
            v87 = 0;
          }

          else
          {
            if (v85 != 5)
            {
LABEL_160:
              v88 = v78[2];
              if (nw_protocol_http_messaging_identifier::onceToken != -1)
              {
                v261 = v78[2];
                dispatch_once(&nw_protocol_http_messaging_identifier::onceToken, &__block_literal_global_80493);
                v88 = v261;
              }

              v89 = nw_protocols_are_equal(v88, &nw_protocol_http_messaging_identifier::protocol_identifier);
              v90 = handle[580];
              if (v89)
              {
                v90 |= 0x40u;
                handle[580] = v90;
              }

              if ((v90 & 2) == 0)
              {
                v91 = __nwlog_obj();
                if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
                {
                  v92 = *(handle + 123);
                  if (v86 == 4)
                  {
                    v93 = 2;
                  }

                  else
                  {
                    v93 = 3;
                  }

                  *buf = 136447234;
                  *&buf[4] = "nw_webtransport_session_establish";
                  *&buf[12] = 2082;
                  *&buf[14] = handle + 496;
                  *&buf[22] = 2080;
                  v304 = " ";
                  *v305 = 1024;
                  *&v305[2] = v92;
                  *&v305[6] = 1024;
                  *&v305[8] = v93;
                  _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Establishing webtransport session for HTTP/%d", buf, 0x2Cu);
                }
              }

              if (v83)
              {
                os_release(v83);
              }

              goto LABEL_172;
            }

            v87 = 1;
          }

          *(handle + 120) = v87;
          goto LABEL_160;
        }

        __nwlog_obj();
        v43 = *(v41 + 16);
        *buf = 136446978;
        *&buf[4] = "nw_webtransport_session_terminate";
        *&buf[12] = 2082;
        *&buf[14] = "connection_state->local_sessions";
        *&buf[22] = 2048;
        v304 = 1;
        *v305 = 2048;
        *&v305[2] = v43;
        v44 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v295) = 0;
        if (__nwlog_fault(v44, type, &v295))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v45 = __nwlog_obj();
            v46 = type[0];
            if (os_log_type_enabled(v45, type[0]))
            {
              v47 = *(v41 + 16);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v304 = 1;
              *v305 = 2048;
              *&v305[2] = v47;
              v48 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_132:
              _os_log_impl(&dword_181A37000, v45, v46, v48, buf, 0x2Au);
            }
          }

          else if (v295 == 1)
          {
            v67 = __nw_create_backtrace_string();
            v45 = __nwlog_obj();
            v46 = type[0];
            v68 = os_log_type_enabled(v45, type[0]);
            if (v67)
            {
              if (v68)
              {
                v69 = *(v41 + 16);
                *buf = 136447234;
                *&buf[4] = "nw_webtransport_session_terminate";
                *&buf[12] = 2082;
                *&buf[14] = "connection_state->local_sessions";
                *&buf[22] = 2048;
                v304 = 1;
                *v305 = 2048;
                *&v305[2] = v69;
                *&v305[10] = 2082;
                *&v305[12] = v67;
                _os_log_impl(&dword_181A37000, v45, v46, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v67);
              goto LABEL_133;
            }

            if (v68)
            {
              v74 = *(v41 + 16);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v304 = 1;
              *v305 = 2048;
              *&v305[2] = v74;
              v48 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
              goto LABEL_132;
            }
          }

          else
          {
            v45 = __nwlog_obj();
            v46 = type[0];
            if (os_log_type_enabled(v45, type[0]))
            {
              v72 = *(v41 + 16);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_terminate";
              *&buf[12] = 2082;
              *&buf[14] = "connection_state->local_sessions";
              *&buf[22] = 2048;
              v304 = 1;
              *v305 = 2048;
              *&v305[2] = v72;
              v48 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
              goto LABEL_132;
            }
          }
        }

LABEL_133:
        if (v44)
        {
          free(v44);
        }

        *(v41 + 16) = 0;
        goto LABEL_136;
      }

      v12 = 1;
    }

    *(handle + 120) = v12;
    goto LABEL_29;
  }

  if ((handle[580] & 2) == 0 && gLogDatapath == 1)
  {
    v171 = a2;
    v172 = __nwlog_obj();
    if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
    {
      v173 = *(handle + 123);
      identifier = v171->identifier;
      *buf = 136447490;
      *&buf[4] = "nw_protocol_webtransport_session_connected";
      *&buf[12] = 2082;
      *&buf[14] = handle + 496;
      *&buf[22] = 2080;
      v304 = " ";
      *v305 = 1024;
      *&v305[2] = v173;
      *&v305[6] = 2048;
      *&v305[8] = v171;
      *&v305[16] = 2080;
      *&v305[18] = identifier;
      v24 = "%{public}s %{public}s%s<i%u> connected protocol %p (%s) is not our output_handler, ignoring";
      v25 = v172;
      v26 = OS_LOG_TYPE_DEBUG;
      v27 = 58;
      goto LABEL_53;
    }
  }
}

void nw_protocol_webtransport_session_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_webtransport_session_disconnect";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v3, &type, &v14))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v17 = "nw_protocol_webtransport_session_disconnect";
      v6 = "%{public}s called with null protocol";
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v5 = type;
      v11 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v17 = "nw_protocol_webtransport_session_disconnect";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v3)
        {
          return;
        }

LABEL_37:
        free(v3);
        return;
      }

      if (!v11)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v17 = "nw_protocol_webtransport_session_disconnect";
      v6 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v17 = "nw_protocol_webtransport_session_disconnect";
      v6 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_36;
  }

  handle = a1->handle;
  if (handle)
  {
    if ((handle[145] & 2) == 0 && gLogDatapath == 1)
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = handle[123];
        *buf = 136447234;
        v17 = "nw_protocol_webtransport_session_disconnect";
        v18 = 2082;
        v19 = (handle + 124);
        v20 = 2080;
        v21 = " ";
        v22 = 1024;
        v23 = v9;
        v24 = 2048;
        v25 = a2;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called, with other_protocol: %p", buf, 0x30u);
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_webtransport_session_disconnect";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v3, &type, &v14))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v17 = "nw_protocol_webtransport_session_disconnect";
    v6 = "%{public}s called with null webtransport_session";
    goto LABEL_35;
  }

  if (v14 != 1)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v17 = "nw_protocol_webtransport_session_disconnect";
    v6 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
    goto LABEL_35;
  }

  v12 = __nw_create_backtrace_string();
  v4 = __nwlog_obj();
  v5 = type;
  v13 = os_log_type_enabled(v4, type);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v17 = "nw_protocol_webtransport_session_disconnect";
    v6 = "%{public}s called with null webtransport_session, no backtrace";
    goto LABEL_35;
  }

  if (v13)
  {
    *buf = 136446466;
    v17 = "nw_protocol_webtransport_session_disconnect";
    v18 = 2082;
    v19 = v12;
    _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v3)
  {
    goto LABEL_37;
  }
}

uint64_t nw_protocol_webtransport_session_connect(nw_protocol *a1, nw_protocol *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_webtransport_session_connect";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v8, &type, &v22))
    {
      goto LABEL_76;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v22 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v25 = "nw_protocol_webtransport_session_connect";
          v11 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_75;
        }

        goto LABEL_76;
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
          v25 = "nw_protocol_webtransport_session_connect";
          v11 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (!v15)
      {
        goto LABEL_56;
      }

      *buf = 136446466;
      v25 = "nw_protocol_webtransport_session_connect";
      v26 = 2082;
      v27 = backtrace_string;
      v16 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_55;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_76;
    }

    *buf = 136446210;
    v25 = "nw_protocol_webtransport_session_connect";
    v11 = "%{public}s called with null protocol";
LABEL_75:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_76;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_webtransport_session_connect";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v8, &type, &v22))
    {
      goto LABEL_76;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v22 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v25 = "nw_protocol_webtransport_session_connect";
          v11 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v17 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v25 = "nw_protocol_webtransport_session_connect";
          v11 = "%{public}s called with null webtransport_session, no backtrace";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (!v17)
      {
        goto LABEL_56;
      }

      *buf = 136446466;
      v25 = "nw_protocol_webtransport_session_connect";
      v26 = 2082;
      v27 = backtrace_string;
      v16 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_55;
    }

    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_76;
    }

    *buf = 136446210;
    v25 = "nw_protocol_webtransport_session_connect";
    v11 = "%{public}s called with null webtransport_session";
    goto LABEL_75;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_webtransport_session_connect";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v8, &type, &v22))
    {
      goto LABEL_76;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_76;
      }

      *buf = 136446210;
      v25 = "nw_protocol_webtransport_session_connect";
      v11 = "%{public}s called with null other_protocol";
      goto LABEL_75;
    }

    if (v22 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_session_connect";
        v11 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v18 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_session_connect";
        v11 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    if (!v18)
    {
      goto LABEL_56;
    }

    *buf = 136446466;
    v25 = "nw_protocol_webtransport_session_connect";
    v26 = 2082;
    v27 = backtrace_string;
    v16 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_55:
    _os_log_impl(&dword_181A37000, v9, v10, v16, buf, 0x16u);
    goto LABEL_56;
  }

  if (a2->handle)
  {
    if ((handle[145] & 2) == 0 && gLogDatapath == 1)
    {
      v12 = __nwlog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = handle[123];
        *buf = 136446978;
        v25 = "nw_protocol_webtransport_session_connect";
        v26 = 2082;
        v27 = (handle + 124);
        v28 = 2080;
        v29 = " ";
        v30 = 1024;
        v31 = v13;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
      }
    }

    if ((handle[145] & 0x10) != 0)
    {
      if ((handle[145] & 2) == 0 && gLogDatapath == 1)
      {
        v20 = __nwlog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = handle[123];
          *buf = 136446978;
          v25 = "nw_protocol_webtransport_session_connect";
          v26 = 2082;
          v27 = (handle + 124);
          v28 = 2080;
          v29 = " ";
          v30 = 1024;
          v31 = v21;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Skipping received connect callback, already sent to output_handler", buf, 0x26u);
        }
      }
    }

    else
    {
      output_handler = a1->output_handler;
      if ((handle[145] & 4) == 0)
      {
        if (output_handler)
        {
          callbacks = output_handler->callbacks;
          if (callbacks)
          {
            if (callbacks->add_listen_handler)
            {
              *(handle + 54) = output_handler;
              if (nw_protocol_add_listen_handler(output_handler, (handle + 16)))
              {
                v6 = 4;
              }

              else
              {
                v6 = 0;
              }

              *(handle + 580) = handle[145] & 0xFB | v6;
              output_handler = a1->output_handler;
            }
          }
        }
      }

      nw_protocol_connect(output_handler, a1);
      *(handle + 580) |= 0x10u;
    }

    return 1;
  }

  __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_protocol_webtransport_session_connect";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (!__nwlog_fault(v8, &type, &v22))
  {
    goto LABEL_76;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v22 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_session_connect";
        v11 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v19 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v25 = "nw_protocol_webtransport_session_connect";
        v11 = "%{public}s called with null webtransport_stream, no backtrace";
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    if (v19)
    {
      *buf = 136446466;
      v25 = "nw_protocol_webtransport_session_connect";
      v26 = 2082;
      v27 = backtrace_string;
      v16 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
      goto LABEL_55;
    }

LABEL_56:
    free(backtrace_string);
    goto LABEL_76;
  }

  v9 = __nwlog_obj();
  v10 = type;
  if (os_log_type_enabled(v9, type))
  {
    *buf = 136446210;
    v25 = "nw_protocol_webtransport_session_connect";
    v11 = "%{public}s called with null webtransport_stream";
    goto LABEL_75;
  }

LABEL_76:
  if (v8)
  {
    free(v8);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_session_remove_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v178 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if (a2)
      {
        v5 = a2->handle;
        if (v5)
        {
          if ((handle[580] & 2) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v6 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              v7 = *(handle + 123);
              default_input_handler = a1->default_input_handler;
              *buf = 136447746;
              *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
              v170 = 2082;
              v171 = handle + 496;
              v172 = 2080;
              v173 = " ";
              v174 = 1024;
              *v175 = v7;
              *&v175[4] = 2048;
              *&v175[6] = a1;
              *&v175[14] = 2048;
              *&v175[16] = default_input_handler;
              v176 = 2048;
              v177 = a2;
              _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> called, protocol %p, default_input_handler %p, input protocol %p", buf, 0x44u);
            }
          }

          v150 = handle;
          if ((v5[276] & 0x20) == 0)
          {
            if (*(handle + 55) == v5)
            {
              if ((handle[580] & 2) == 0 && gLogDatapath == 1)
              {
                v135 = __nwlog_obj();
                if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
                {
                  v136 = *(handle + 123);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_remove_stream";
                  v170 = 2082;
                  v171 = handle + 496;
                  v172 = 2080;
                  v173 = " ";
                  v174 = 1024;
                  *v175 = v136;
                  _os_log_impl(&dword_181A37000, v135, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Removing placeholder stream for session", buf, 0x26u);
                }
              }

              *(handle + 55) = 0;
              goto LABEL_68;
            }

            if (*(handle + 56) == v5)
            {
              if ((handle[580] & 2) == 0 && gLogDatapath == 1)
              {
                v137 = __nwlog_obj();
                if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
                {
                  v138 = *(handle + 123);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_remove_stream";
                  v170 = 2082;
                  v171 = handle + 496;
                  v172 = 2080;
                  v173 = " ";
                  v174 = 1024;
                  *v175 = v138;
                  _os_log_impl(&dword_181A37000, v137, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> Removing datagram stream for session", buf, 0x26u);
                }
              }

              *(handle + 56) = 0;
              goto LABEL_68;
            }

            *type = *(v5 + 8);
            node = nw_hash_table_get_node(*(handle + 24), type, 8);
            if (node)
            {
              if (nw_hash_table_remove_node(*(handle + 24), node))
              {
                goto LABEL_68;
              }

              if ((handle[580] & 2) != 0)
              {
                goto LABEL_68;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v10 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_68;
              }

              v11 = *(handle + 123);
              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_remove_stream";
              v170 = 2082;
              v171 = handle + 496;
              v172 = 2080;
              v173 = " ";
              v174 = 1024;
              *v175 = v11;
              *&v175[4] = 2048;
              *&v175[6] = *type;
              v12 = "%{public}s %{public}s%s<i%u> Failed to remove stream %llu from hash table";
            }

            else
            {
              if ((handle[580] & 2) != 0)
              {
                goto LABEL_68;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v10 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_68;
              }

              v29 = *(handle + 123);
              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_remove_stream";
              v170 = 2082;
              v171 = handle + 496;
              v172 = 2080;
              v173 = " ";
              v174 = 1024;
              *v175 = v29;
              *&v175[4] = 2048;
              *&v175[6] = *type;
              v12 = "%{public}s %{public}s%s<i%u> called remove_input_handler with stream id %llu, but no stream found";
            }

            v30 = v10;
            v31 = OS_LOG_TYPE_ERROR;
            v32 = 48;
LABEL_45:
            _os_log_impl(&dword_181A37000, v30, v31, v12, buf, v32);
LABEL_68:
            *(v5 + 11) = 0;
            v39 = *(handle + 6) == v5;
            v40 = &qword_1ED411000;
            if (!v39)
            {
              return 1;
            }

            if (*(handle + 119))
            {
              v41 = *(handle + 56);
              if (v41)
              {
LABEL_72:
                nw_protocol_set_input_handler(handle, v41);
                if ((handle[580] & 2) != 0)
                {
                  return 1;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v42 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                {
                  return 1;
                }

                v43 = *(handle + 123);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_remove_stream";
                v170 = 2082;
                v171 = handle + 496;
                v172 = 2080;
                v173 = " ";
                v174 = 1024;
                *v175 = v43;
                v44 = "%{public}s %{public}s%s<i%u> not destroying, still have datagram stream";
                goto LABEL_75;
              }
            }

            else
            {
              if ((handle[580] & 2) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v46 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  v47 = *(handle + 123);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_remove_stream";
                  v170 = 2082;
                  v171 = handle + 496;
                  v172 = 2080;
                  v173 = " ";
                  v174 = 1024;
                  *v175 = v47;
                  _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> first input handler bailed, closing", buf, 0x26u);
                }
              }

              v48 = *(handle + 58);
              v49 = *(handle + 52);
              v151[0] = MEMORY[0x1E69E9820];
              v151[1] = 0x40000000;
              v151[2] = ___ZL37nw_webtransport_session_remove_streamP23nw_webtransport_sessionP22nw_webtransport_stream_block_invoke;
              v151[3] = &unk_1E6A31A10;
              v151[4] = v48;
              nw_queue_context_async(v49, v151);
              v41 = *(handle + 56);
              if (v41)
              {
                goto LABEL_72;
              }
            }

            v50 = *(handle + 24);
            if (v50 && v50[12]._os_unfair_lock_opaque)
            {
              some_node = nw_hash_table_get_some_node(v50);
              object = nw_hash_node_get_object(some_node);
              nw_protocol_set_input_handler(handle, object);
              if ((handle[580] & 2) != 0)
              {
                return 1;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v42 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                return 1;
              }

              v53 = *(handle + 123);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_remove_stream";
              v170 = 2082;
              v171 = handle + 496;
              v172 = 2080;
              v173 = " ";
              v174 = 1024;
              *v175 = v53;
              v44 = "%{public}s %{public}s%s<i%u> not destroying, still have active streams";
              goto LABEL_75;
            }

            if (*(handle + 122))
            {
              v54 = *(handle + 42);
              if (v54)
              {
                if ((*(v54 + 276) & 0x10) == 0 && gLogDatapath == 1)
                {
                  v142 = *(handle + 42);
                  v143 = __nwlog_obj();
                  v144 = os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG);
                  v54 = v142;
                  if (v144)
                  {
                    v145 = *(v142 + 88);
                    if (v145)
                    {
                      v146 = *(v145 + 492);
                    }

                    else
                    {
                      v146 = -1;
                    }

                    v147 = *(v142 + 64);
                    *buf = 136447490;
                    *&buf[4] = "nw_webtransport_session_get_next_pending_stream";
                    v170 = 2082;
                    v171 = (v142 + 192);
                    v172 = 2080;
                    v173 = " ";
                    v174 = 1024;
                    *v175 = v146;
                    *&v175[4] = 2048;
                    *&v175[6] = v147;
                    *&v175[14] = 2048;
                    *&v175[16] = v142;
                    _os_log_impl(&dword_181A37000, v143, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> found stream (%p)", buf, 0x3Au);
                    v54 = v142;
                  }
                }
              }

              nw_protocol_set_input_handler(handle, v54);
              if ((handle[580] & 2) != 0)
              {
                return 1;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v42 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                return 1;
              }

              v55 = *(handle + 123);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_remove_stream";
              v170 = 2082;
              v171 = handle + 496;
              v172 = 2080;
              v173 = " ";
              v174 = 1024;
              *v175 = v55;
              v44 = "%{public}s %{public}s%s<i%u> not destroying, still have pending streams";
LABEL_75:
              _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_INFO, v44, buf, 0x26u);
              return 1;
            }

            v56 = *(handle + 55);
            if (v56)
            {
              nw_protocol_set_input_handler(handle, v56);
              if ((handle[580] & 2) != 0)
              {
                return 1;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v42 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                return 1;
              }

              v57 = *(handle + 123);
              *buf = 136446978;
              *&buf[4] = "nw_webtransport_session_remove_stream";
              v170 = 2082;
              v171 = handle + 496;
              v172 = 2080;
              v173 = " ";
              v174 = 1024;
              *v175 = v57;
              v44 = "%{public}s %{public}s%s<i%u> not destroying, still have placeholder stream";
              goto LABEL_75;
            }

            nw_protocol_set_input_handler(handle, 0);
            if ((handle[580] & 2) == 0)
            {
              v58 = __nwlog_obj();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
              {
                v59 = *(handle + 123);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_destroy";
                v170 = 2082;
                v171 = handle + 496;
                v172 = 2080;
                v173 = " ";
                v174 = 1024;
                *v175 = v59;
                _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> called, destroying session", buf, 0x26u);
              }
            }

            *buf = 0;
            nw::retained_ptr<nw_endpoint *>::operator=((handle + 368), buf);
            *buf = 0;
            nw::retained_ptr<nw_endpoint *>::operator=((handle + 384), buf);
            *buf = 0;
            nw::retained_ptr<nw_endpoint *>::operator=((handle + 400), buf);
            nw_http_capsule_framer_cleanup(handle + 12);
            v60 = *(handle + 53);
            if (v60)
            {
              (*(*v60 + 8))(v60, handle, 0);
            }

            if ((handle[580] & 4) != 0)
            {
              if ((nw_protocol_remove_listen_handler(*(handle + 54), (handle + 64)) & 1) == 0 && (handle[580] & 2) == 0)
              {
                v61 = __nwlog_obj();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  v62 = *(handle + 123);
                  *buf = 136446978;
                  *&buf[4] = "nw_webtransport_session_destroy";
                  v170 = 2082;
                  v171 = handle + 496;
                  v172 = 2080;
                  v173 = " ";
                  v174 = 1024;
                  *v175 = v62;
                  _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> failed to remove listen handler", buf, 0x26u);
                }
              }

              *(handle + 54) = 0;
            }

            v63 = *(handle + 4);
            if (v63)
            {
              nw_protocol_remove_input_handler(v63, handle);
              if (*(handle + 119) != 5)
              {
                nw_protocol_remove_instance(handle);
              }
            }

            v158 = 0;
            v159 = &v158;
            v160 = 0x2000000000;
            v161 = 0;
            v64 = *(handle + 24);
            if (v64)
            {
              *type = MEMORY[0x1E69E9820];
              v153 = 0x40000000;
              v154 = ___ZL31nw_webtransport_session_destroyP23nw_webtransport_session_block_invoke;
              v155 = &unk_1E6A31A38;
              v156 = &v158;
              v157 = handle;
              nw_hash_table_apply(v64, type);
              v66 = *(handle + 24);
              if (v66)
              {
                _nw_hash_table_release(v66, v65);
                *(handle + 24) = 0;
              }
            }

            v67 = *(handle + 42);
            v159[3] = v67;
            if (!v67)
            {
              (*(*(handle + 58) + 16))(*(handle + 58), 0);
              v114 = *(handle + 58);
              if (v114)
              {
                _Block_release(v114);
                *(handle + 58) = 0;
              }

              std::destroy_at[abi:nn200100]<nw_webtransport_session,0>(handle);
              free(handle);
              _Block_object_dispose(&v158, 8);
              return 1;
            }

            v148 = handle + 496;
            v149 = handle + 344;
            while (1)
            {
              v67 = *(v67 + 112);
              if ((handle[580] & 2) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v68 = v40[275];
                if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                {
                  v69 = *(handle + 123);
                  v70 = v159[3];
                  *buf = 136447234;
                  *&buf[4] = "nw_webtransport_session_destroy";
                  v170 = 2082;
                  v171 = v148;
                  v172 = 2080;
                  v173 = " ";
                  v174 = 1024;
                  *v175 = v69;
                  *&v175[4] = 2048;
                  *&v175[6] = v70;
                  _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> should not have stream %p left, destroying anyways", buf, 0x30u);
                }
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              *buf = 136446210;
              *&buf[4] = "nw_webtransport_session_destroy";
              v71 = _os_log_send_and_compose_impl();
              v162[0] = OS_LOG_TYPE_ERROR;
              v168 = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v71, v162, &v168))
              {
                if (v162[0] == OS_LOG_TYPE_FAULT)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v72 = gLogObj;
                  v73 = v162[0];
                  if (!os_log_type_enabled(gLogObj, v162[0]))
                  {
                    goto LABEL_135;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_destroy";
                  v74 = v72;
                  v75 = v73;
                  v76 = "%{public}s should not have streams left when destroying";
LABEL_134:
                  _os_log_impl(&dword_181A37000, v74, v75, v76, buf, 0xCu);
                  goto LABEL_135;
                }

                if (v168 != OS_LOG_TYPE_INFO)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v81 = gLogObj;
                  v82 = v162[0];
                  if (!os_log_type_enabled(gLogObj, v162[0]))
                  {
                    goto LABEL_135;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_destroy";
                  v74 = v81;
                  v75 = v82;
                  v76 = "%{public}s should not have streams left when destroying, backtrace limit exceeded";
                  goto LABEL_134;
                }

                backtrace_string = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v78 = gLogObj;
                v79 = v162[0];
                v80 = os_log_type_enabled(gLogObj, v162[0]);
                if (!backtrace_string)
                {
                  if (!v80)
                  {
                    goto LABEL_135;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_destroy";
                  v74 = v78;
                  v75 = v79;
                  v76 = "%{public}s should not have streams left when destroying, no backtrace";
                  goto LABEL_134;
                }

                if (v80)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_webtransport_session_destroy";
                  v170 = 2082;
                  v171 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v78, v79, "%{public}s should not have streams left when destroying, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
              }

LABEL_135:
              if (v71)
              {
                free(v71);
              }

              v83 = *(v67 + 112);
              v84 = *(v67 + 120);
              v85 = (v83 + 120);
              if (!v83)
              {
                v85 = v149;
              }

              *v85 = v84;
              *v84 = v83;
              *(v67 + 112) = 0;
              *(v67 + 120) = 0;
              v86 = v159[3];
              v40 = &qword_1ED411000;
              if (v86)
              {
                if ((*(v86 + 276) & 0x10) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v87 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                  {
                    v88 = *(v86 + 88);
                    if (v88)
                    {
                      v89 = *(v88 + 492);
                    }

                    else
                    {
                      v89 = -1;
                    }

                    v90 = *(v86 + 64);
                    *buf = 136447490;
                    *&buf[4] = "nw_webtransport_stream_destroy";
                    v170 = 2082;
                    v171 = (v86 + 192);
                    v172 = 2080;
                    v173 = " ";
                    v174 = 1024;
                    *v175 = v89;
                    *&v175[4] = 2048;
                    *&v175[6] = v90;
                    *&v175[14] = 2048;
                    *&v175[16] = v86;
                    _os_log_impl(&dword_181A37000, v87, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> destroying stream %p", buf, 0x3Au);
                  }
                }

                if (*(v86 + 72))
                {
                  if ((*(v86 + 276) & 0x10) == 0)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v91 = gLogObj;
                    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                    {
                      v92 = *(v86 + 88);
                      if (v92)
                      {
                        v93 = *(v92 + 492);
                      }

                      else
                      {
                        v93 = -1;
                      }

                      v94 = *(v86 + 64);
                      *buf = 136447234;
                      *&buf[4] = "nw_webtransport_stream_destroy";
                      v170 = 2082;
                      v171 = (v86 + 192);
                      v172 = 2080;
                      v173 = " ";
                      v174 = 1024;
                      *v175 = v93;
                      *&v175[4] = 2048;
                      *&v175[6] = v94;
                      _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> input_frames has unread frames before destroying", buf, 0x30u);
                    }
                  }
                }

                *v162 = MEMORY[0x1E69E9820];
                v163 = 0x40000000;
                v164 = ___ZL30nw_webtransport_stream_destroyP22nw_webtransport_stream_block_invoke;
                v165 = &__block_descriptor_tmp_39_36819;
                v166 = v86;
                v95 = *(v86 + 72);
                do
                {
                  if (!v95)
                  {
                    break;
                  }

                  v96 = *(v95 + 32);
                  v97 = (v164)(v162);
                  v95 = v96;
                }

                while ((v97 & 1) != 0);
                (*(*(v86 + 176) + 16))(*(v86 + 176), 0);
                v98 = *(v86 + 176);
                if (v98)
                {
                  _Block_release(v98);
                  *(v86 + 176) = 0;
                }

                if (*(v86 + 168))
                {
                  v99 = *(v86 + 160);
                  if (v99)
                  {
                    os_release(v99);
                  }
                }

                *(v86 + 160) = 0;
                if (*(v86 + 152))
                {
                  v100 = *(v86 + 144);
                  if (v100)
                  {
                    os_release(v100);
                  }
                }

                *(v86 + 144) = 0;
                if (*(v86 + 136))
                {
                  v101 = *(v86 + 128);
                  if (v101)
                  {
                    os_release(v101);
                  }
                }

                free(v86);
                goto LABEL_117;
              }

              __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_webtransport_stream_destroy";
              v102 = _os_log_send_and_compose_impl();
              v168 = OS_LOG_TYPE_ERROR;
              v167 = 0;
              if (__nwlog_fault(v102, &v168, &v167))
              {
                if (v168 == OS_LOG_TYPE_FAULT)
                {
                  v103 = __nwlog_obj();
                  v104 = v168;
                  if (os_log_type_enabled(v103, v168))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_stream_destroy";
                    v105 = v103;
                    v106 = v104;
                    v107 = "%{public}s called with null webtransport_stream";
LABEL_180:
                    _os_log_impl(&dword_181A37000, v105, v106, v107, buf, 0xCu);
                  }
                }

                else if (v167 == 1)
                {
                  v108 = __nw_create_backtrace_string();
                  v109 = __nwlog_obj();
                  v110 = v168;
                  v111 = os_log_type_enabled(v109, v168);
                  if (v108)
                  {
                    if (v111)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_stream_destroy";
                      v170 = 2082;
                      v171 = v108;
                      _os_log_impl(&dword_181A37000, v109, v110, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v108);
                    goto LABEL_181;
                  }

                  if (v111)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_stream_destroy";
                    v105 = v109;
                    v106 = v110;
                    v107 = "%{public}s called with null webtransport_stream, no backtrace";
                    goto LABEL_180;
                  }
                }

                else
                {
                  v112 = __nwlog_obj();
                  v113 = v168;
                  if (os_log_type_enabled(v112, v168))
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_stream_destroy";
                    v105 = v112;
                    v106 = v113;
                    v107 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                    goto LABEL_180;
                  }
                }
              }

LABEL_181:
              if (v102)
              {
                free(v102);
              }

              v40 = &qword_1ED411000;
LABEL_117:
              v159[3] = v67;
              handle = v150;
            }
          }

          if ((handle[580] & 2) == 0 && gLogDatapath == 1)
          {
            v130 = __nwlog_obj();
            if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
            {
              v131 = *(handle + 123);
              *buf = 136447234;
              *&buf[4] = "nw_webtransport_session_remove_pending_stream";
              v170 = 2082;
              v171 = handle + 496;
              v172 = 2080;
              v173 = " ";
              v174 = 1024;
              *v175 = v131;
              *&v175[4] = 2048;
              *&v175[6] = v5;
              _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called for stream (%p)", buf, 0x30u);
            }
          }

          if ((v5[276] & 0x20) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            *buf = 136446466;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            v170 = 2048;
            v171 = v5;
            v13 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            v162[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v13, type, v162))
            {
              goto LABEL_56;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v14 = gLogObj;
              v15 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_56;
              }

              *buf = 136446466;
              *&buf[4] = "nw_webtransport_session_remove_pending_stream";
              v170 = 2048;
              v171 = v5;
              v16 = "%{public}s stream %p not in pending list, cannot remove";
            }

            else if (v162[0] == OS_LOG_TYPE_INFO)
            {
              v27 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v14 = gLogObj;
              v15 = type[0];
              v28 = os_log_type_enabled(gLogObj, type[0]);
              if (v27)
              {
                if (v28)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_webtransport_session_remove_pending_stream";
                  v170 = 2048;
                  v171 = v5;
                  v172 = 2082;
                  v173 = v27;
                  _os_log_impl(&dword_181A37000, v14, v15, "%{public}s stream %p not in pending list, cannot remove, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v27);
                goto LABEL_56;
              }

              if (!v28)
              {
LABEL_56:
                if (v13)
                {
                  free(v13);
                }

                goto LABEL_68;
              }

              *buf = 136446466;
              *&buf[4] = "nw_webtransport_session_remove_pending_stream";
              v170 = 2048;
              v171 = v5;
              v16 = "%{public}s stream %p not in pending list, cannot remove, no backtrace";
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v14 = gLogObj;
              v15 = type[0];
              if (!os_log_type_enabled(gLogObj, type[0]))
              {
                goto LABEL_56;
              }

              *buf = 136446466;
              *&buf[4] = "nw_webtransport_session_remove_pending_stream";
              v170 = 2048;
              v171 = v5;
              v16 = "%{public}s stream %p not in pending list, cannot remove, backtrace limit exceeded";
            }

            _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0x16u);
            goto LABEL_56;
          }

          v17 = *(v5 + 14);
          v18 = *(v5 + 15);
          v19 = handle + 344;
          if (v17)
          {
            v19 = (v17 + 120);
          }

          *v19 = v18;
          *v18 = v17;
          *(v5 + 14) = 0;
          *(v5 + 15) = 0;
          v20 = *(handle + 122);
          *(handle + 122) = v20 - 1;
          if (v20)
          {
LABEL_66:
            v38 = v5[276];
            v5[276] = v38 & 0xDF;
            if ((v38 & 0x10) != 0)
            {
              goto LABEL_68;
            }

            if (gLogDatapath != 1)
            {
              goto LABEL_68;
            }

            v132 = __nwlog_obj();
            if (!os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_68;
            }

            v133 = *(v5 + 11);
            if (v133)
            {
              v134 = *(v133 + 492);
            }

            else
            {
              v134 = -1;
            }

            v140 = *(v5 + 8);
            v141 = *(handle + 122);
            *buf = 136447746;
            *&buf[4] = "nw_webtransport_session_remove_pending_stream";
            v170 = 2082;
            v171 = v5 + 192;
            v172 = 2080;
            v173 = " ";
            v174 = 1024;
            *v175 = v134;
            *&v175[4] = 2048;
            *&v175[6] = v140;
            *&v175[14] = 2048;
            *&v175[16] = v5;
            v176 = 1024;
            LODWORD(v177) = v141;
            v12 = "%{public}s %{public}s%s<i%u:s%llu> removed pending stream (%p), now have %u pending streams";
            v30 = v132;
            v31 = OS_LOG_TYPE_DEBUG;
            v32 = 64;
            goto LABEL_45;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = *(handle + 122);
          *buf = 136446978;
          *&buf[4] = "nw_webtransport_session_remove_pending_stream";
          v170 = 2082;
          v171 = "webtransport_session->pending_stream_count";
          v172 = 2048;
          v173 = 1;
          v174 = 2048;
          *v175 = v21;
          v22 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          v162[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v22, type, v162))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v23 = gLogObj;
              v24 = type[0];
              if (os_log_type_enabled(gLogObj, type[0]))
              {
                v25 = *(handle + 122);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_remove_pending_stream";
                v170 = 2082;
                v171 = "webtransport_session->pending_stream_count";
                v172 = 2048;
                v173 = 1;
                v174 = 2048;
                *v175 = v25;
                v26 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_62:
                _os_log_impl(&dword_181A37000, v23, v24, v26, buf, 0x2Au);
              }
            }

            else if (v162[0] == OS_LOG_TYPE_INFO)
            {
              v33 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v23 = gLogObj;
              v24 = type[0];
              v34 = os_log_type_enabled(gLogObj, type[0]);
              if (v33)
              {
                if (v34)
                {
                  v35 = *(handle + 122);
                  *buf = 136447234;
                  *&buf[4] = "nw_webtransport_session_remove_pending_stream";
                  v170 = 2082;
                  v171 = "webtransport_session->pending_stream_count";
                  v172 = 2048;
                  v173 = 1;
                  v174 = 2048;
                  *v175 = v35;
                  *&v175[8] = 2082;
                  *&v175[10] = v33;
                  _os_log_impl(&dword_181A37000, v23, v24, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v33);
                goto LABEL_63;
              }

              if (v34)
              {
                v37 = *(handle + 122);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_remove_pending_stream";
                v170 = 2082;
                v171 = "webtransport_session->pending_stream_count";
                v172 = 2048;
                v173 = 1;
                v174 = 2048;
                *v175 = v37;
                v26 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                goto LABEL_62;
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v23 = gLogObj;
              v24 = type[0];
              if (os_log_type_enabled(gLogObj, type[0]))
              {
                v36 = *(handle + 122);
                *buf = 136446978;
                *&buf[4] = "nw_webtransport_session_remove_pending_stream";
                v170 = 2082;
                v171 = "webtransport_session->pending_stream_count";
                v172 = 2048;
                v173 = 1;
                v174 = 2048;
                *v175 = v36;
                v26 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                goto LABEL_62;
              }
            }
          }

LABEL_63:
          if (v22)
          {
            free(v22);
          }

          *(handle + 122) = 0;
          goto LABEL_66;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
        v119 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v162[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v119, type, v162))
        {
LABEL_251:
          if (v119)
          {
            v139 = v119;
            goto LABEL_253;
          }

          return 0;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v120 = __nwlog_obj();
          v121 = type[0];
          if (!os_log_type_enabled(v120, type[0]))
          {
            goto LABEL_251;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
          v122 = "%{public}s called with null webtransport_stream";
          goto LABEL_250;
        }

        if (v162[0] != OS_LOG_TYPE_INFO)
        {
          v120 = __nwlog_obj();
          v121 = type[0];
          if (!os_log_type_enabled(v120, type[0]))
          {
            goto LABEL_251;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
          v122 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
          goto LABEL_250;
        }

        v125 = __nw_create_backtrace_string();
        v120 = __nwlog_obj();
        v121 = type[0];
        v129 = os_log_type_enabled(v120, type[0]);
        if (!v125)
        {
          if (!v129)
          {
            goto LABEL_251;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
          v122 = "%{public}s called with null webtransport_stream, no backtrace";
          goto LABEL_250;
        }

        if (v129)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
          v170 = 2082;
          v171 = v125;
          v127 = "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s";
          goto LABEL_220;
        }

LABEL_221:
        free(v125);
        goto LABEL_251;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v119 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v162[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v119, type, v162))
      {
        goto LABEL_251;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v120 = __nwlog_obj();
        v121 = type[0];
        if (!os_log_type_enabled(v120, type[0]))
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
        v122 = "%{public}s called with null input_protocol";
        goto LABEL_250;
      }

      if (v162[0] != OS_LOG_TYPE_INFO)
      {
        v120 = __nwlog_obj();
        v121 = type[0];
        if (!os_log_type_enabled(v120, type[0]))
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
        v122 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_250;
      }

      v125 = __nw_create_backtrace_string();
      v120 = __nwlog_obj();
      v121 = type[0];
      v128 = os_log_type_enabled(v120, type[0]);
      if (!v125)
      {
        if (!v128)
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
        v122 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_250;
      }

      if (!v128)
      {
        goto LABEL_221;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v170 = 2082;
      v171 = v125;
      v127 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v119 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v162[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v119, type, v162))
      {
        goto LABEL_251;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v120 = __nwlog_obj();
        v121 = type[0];
        if (!os_log_type_enabled(v120, type[0]))
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
        v122 = "%{public}s called with null webtransport_session";
LABEL_250:
        _os_log_impl(&dword_181A37000, v120, v121, v122, buf, 0xCu);
        goto LABEL_251;
      }

      if (v162[0] != OS_LOG_TYPE_INFO)
      {
        v120 = __nwlog_obj();
        v121 = type[0];
        if (!os_log_type_enabled(v120, type[0]))
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
        v122 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_250;
      }

      v125 = __nw_create_backtrace_string();
      v120 = __nwlog_obj();
      v121 = type[0];
      v126 = os_log_type_enabled(v120, type[0]);
      if (!v125)
      {
        if (!v126)
        {
          goto LABEL_251;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
        v122 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_250;
      }

      if (!v126)
      {
        goto LABEL_221;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v170 = 2082;
      v171 = v125;
      v127 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
    }

LABEL_220:
    _os_log_impl(&dword_181A37000, v120, v121, v127, buf, 0x16u);
    goto LABEL_221;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
  v115 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v162[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v115, type, v162))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v116 = __nwlog_obj();
      v117 = type[0];
      if (!os_log_type_enabled(v116, type[0]))
      {
        goto LABEL_242;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v118 = "%{public}s called with null protocol";
LABEL_241:
      _os_log_impl(&dword_181A37000, v116, v117, v118, buf, 0xCu);
      goto LABEL_242;
    }

    if (v162[0] != OS_LOG_TYPE_INFO)
    {
      v116 = __nwlog_obj();
      v117 = type[0];
      if (!os_log_type_enabled(v116, type[0]))
      {
        goto LABEL_242;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v118 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_241;
    }

    v123 = __nw_create_backtrace_string();
    v116 = __nwlog_obj();
    v117 = type[0];
    v124 = os_log_type_enabled(v116, type[0]);
    if (!v123)
    {
      if (!v124)
      {
        goto LABEL_242;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v118 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_241;
    }

    if (v124)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_remove_input_handler";
      v170 = 2082;
      v171 = v123;
      _os_log_impl(&dword_181A37000, v116, v117, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v123);
  }

LABEL_242:
  if (v115)
  {
    v139 = v115;
LABEL_253:
    free(v139);
  }

  return 0;
}

uint64_t nw_protocol_webtransport_session_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v367 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    v219 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v351[0]) = 0;
    if (!__nwlog_fault(v219, type, v351))
    {
      goto LABEL_526;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v351[0]) != 1)
      {
        v220 = __nwlog_obj();
        v221 = type[0];
        if (!os_log_type_enabled(v220, type[0]))
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v222 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_525;
      }

      backtrace_string = __nw_create_backtrace_string();
      v220 = __nwlog_obj();
      v221 = type[0];
      v235 = os_log_type_enabled(v220, type[0]);
      if (!backtrace_string)
      {
        if (!v235)
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v222 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_525;
      }

      if (!v235)
      {
        goto LABEL_438;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v236 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_437;
    }

    v220 = __nwlog_obj();
    v221 = type[0];
    if (!os_log_type_enabled(v220, type[0]))
    {
      goto LABEL_526;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    v222 = "%{public}s called with null protocol";
LABEL_525:
    _os_log_impl(&dword_181A37000, v220, v221, v222, buf, 0xCu);
    goto LABEL_526;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    v219 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v351[0]) = 0;
    if (!__nwlog_fault(v219, type, v351))
    {
      goto LABEL_526;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v351[0]) != 1)
      {
        v220 = __nwlog_obj();
        v221 = type[0];
        if (!os_log_type_enabled(v220, type[0]))
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v222 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
        goto LABEL_525;
      }

      backtrace_string = __nw_create_backtrace_string();
      v220 = __nwlog_obj();
      v221 = type[0];
      v237 = os_log_type_enabled(v220, type[0]);
      if (!backtrace_string)
      {
        if (!v237)
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v222 = "%{public}s called with null webtransport_session, no backtrace";
        goto LABEL_525;
      }

      if (!v237)
      {
        goto LABEL_438;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v236 = "%{public}s called with null webtransport_session, dumping backtrace:%{public}s";
      goto LABEL_437;
    }

    v220 = __nwlog_obj();
    v221 = type[0];
    if (!os_log_type_enabled(v220, type[0]))
    {
      goto LABEL_526;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    v222 = "%{public}s called with null webtransport_session";
    goto LABEL_525;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    v219 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v351[0]) = 0;
    if (!__nwlog_fault(v219, type, v351))
    {
      goto LABEL_526;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v351[0]) != 1)
      {
        v220 = __nwlog_obj();
        v221 = type[0];
        if (!os_log_type_enabled(v220, type[0]))
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v222 = "%{public}s called with null input_protocol, backtrace limit exceeded";
        goto LABEL_525;
      }

      backtrace_string = __nw_create_backtrace_string();
      v220 = __nwlog_obj();
      v221 = type[0];
      v238 = os_log_type_enabled(v220, type[0]);
      if (!backtrace_string)
      {
        if (!v238)
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v222 = "%{public}s called with null input_protocol, no backtrace";
        goto LABEL_525;
      }

      if (!v238)
      {
        goto LABEL_438;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v236 = "%{public}s called with null input_protocol, dumping backtrace:%{public}s";
      goto LABEL_437;
    }

    v220 = __nwlog_obj();
    v221 = type[0];
    if (!os_log_type_enabled(v220, type[0]))
    {
      goto LABEL_526;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    v222 = "%{public}s called with null input_protocol";
    goto LABEL_525;
  }

  if ((handle[145] & 2) == 0 && gLogDatapath == 1)
  {
    v223 = __nwlog_obj();
    if (os_log_type_enabled(v223, OS_LOG_TYPE_DEBUG))
    {
      v224 = handle[123];
      *buf = 136446978;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = handle + 124;
      *&buf[22] = 2080;
      v354 = " ";
      *v355 = 1024;
      *&v355[2] = v224;
      _os_log_impl(&dword_181A37000, v223, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called", buf, 0x26u);
    }
  }

  if (handle[119] != 5)
  {
    parameters = nw_protocol_get_parameters(a2);
    if (parameters)
    {
      v9 = parameters;
      remote_endpoint = nw_protocol_get_remote_endpoint(a2);
      if (remote_endpoint)
      {
        v11 = remote_endpoint;
        v341 = a2;
        if (*(handle + 46))
        {
          goto LABEL_34;
        }

        v12 = _nw_parameters_shallow_copy(v9, 1);
        v13 = nw_parameters_copy_protocol_options_legacy(v12, handle);
        nw_protocol_options_get_log_id_str(v13, handle + 124, 84);
        handle[123] = nw_protocol_get_next_instance_id();
        if (v13)
        {
          top_id = _nw_protocol_options_get_top_id(v13);
          if ((handle[145] & 2) != 0)
          {
LABEL_17:
            if (v13)
            {
              v17 = nw_parameters_copy_default_protocol_stack(v12);
              v18 = _nw_protocol_options_copy(v13);
              if (nw_protocol_copy_webtransport_definition::onceToken != -1)
              {
                dispatch_once(&nw_protocol_copy_webtransport_definition::onceToken, &__block_literal_global_62942);
              }

              v19 = nw_protocol_copy_webtransport_definition::definition;
              nw_parameters_set_protocol_instance(v18, v20, handle);
              if (v19)
              {
                os_release(v19);
              }

              nw_protocol_stack_replace_protocol_with_handle(v17, handle, v18);
              if (v18)
              {
                os_release(v18);
              }

              if (v17)
              {
                os_release(v17);
              }
            }

            else if ((handle[145] & 2) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v21 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                v22 = handle[123];
                *buf = 136447490;
                *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = handle + 124;
                *&buf[22] = 2080;
                v354 = " ";
                *v355 = 1024;
                *&v355[2] = v22;
                *&v355[6] = 2048;
                *&v355[8] = v12;
                *&v355[16] = 2048;
                *&v355[18] = v9;
                _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> failed to find webtransport options in new parameters %p, copy of %p", buf, 0x3Au);
              }
            }

            v23 = *(handle + 376);
            if (v23)
            {
              v24 = *(handle + 46);
              if (v24)
              {
                os_release(v24);
                v23 = *(handle + 376);
              }
            }

            *(handle + 46) = v12;
            *(handle + 376) = v23 | 1;
            if (v13)
            {
              os_release(v13);
            }

LABEL_34:
            identifier = a1->identifier;
            v26 = v9;
            v27 = _nw_parameters_copy_protocol_options_with_level(v26, handle);

            if (v27)
            {
              v28 = malloc_type_calloc(1uLL, 0x118uLL, 0xCD3CE973uLL);
              v29 = v28;
              v30 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              if (v28)
              {
                v28[34] = 0;
                *(v28 + 15) = 0u;
                *(v28 + 16) = 0u;
                *(v28 + 13) = 0u;
                *(v28 + 14) = 0u;
                *(v28 + 11) = 0u;
                *(v28 + 12) = 0u;
                *(v28 + 9) = 0u;
                *(v28 + 10) = 0u;
                *(v28 + 7) = 0u;
                *(v28 + 8) = 0u;
                *(v28 + 5) = 0u;
                *(v28 + 6) = 0u;
                *(v28 + 3) = 0u;
                *(v28 + 4) = 0u;
                *(v28 + 1) = 0u;
                *(v28 + 2) = 0u;
                *v28 = 0u;
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
                *buf = 136446722;
                *&buf[4] = "nw_protocol_webtransport_stream_create";
                *&buf[12] = 2048;
                *&buf[14] = 1;
                *&buf[22] = 2048;
                v354 = 280;
                v35 = _os_log_send_and_compose_impl();
                result = __nwlog_should_abort(v35);
                if (result || (free(v35), MEMORY[0x110] = 0, MEMORY[0x100] = 0u, MEMORY[0xF0] = 0u, MEMORY[0xE0] = 0u, MEMORY[0xD0] = 0u, MEMORY[0xC0] = 0u, MEMORY[0xB0] = 0u, MEMORY[0xA0] = 0u, MEMORY[0x90] = 0u, MEMORY[0x80] = 0u, MEMORY[0x70] = 0u, MEMORY[0x60] = 0u, MEMORY[0x50] = 0u, MEMORY[0x40] = 0u, MEMORY[0x30] = 0u, MEMORY[0x20] = 0u, MEMORY[0x10] = 0u, MEMORY[0] = 0u, MEMORY[0x80] = 0, MEMORY[0x88] = 0, MEMORY[0x90] = 0, MEMORY[0x98] = 0, MEMORY[0xA0] = 0, MEMORY[0xA8] = 0, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR), *buf = 136446210, *&buf[4] = "nw_protocol_webtransport_stream_create", v36 = _os_log_send_and_compose_impl(), result = __nwlog_should_abort(v36), result))
                {
                  __break(1u);
                  return result;
                }

                free(v36);
                v30 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              }

              *(v29 + 16) = identifier;
              if (nw_protocol_webtransport_stream_callbacks(void)::onceToken != -1)
              {
                dispatch_once(&nw_protocol_webtransport_stream_callbacks(void)::onceToken, &__block_literal_global_22);
              }

              *(v29 + 24) = &nw_protocol_webtransport_stream_callbacks(void)::protocol_callbacks;
              *(v29 + 40) = v29;
              *(v29 + 72) = 0;
              *(v29 + 80) = v29 + 72;
              *(v29 + 88) = handle;
              v37 = os_retain(v11);
              v38 = *(v29 + 136);
              if ((v38 & 1) != 0 && *(v29 + 128))
              {
                v39 = v37;
                os_release(*(v29 + 128));
                v37 = v39;
                v38 = *(v29 + 136);
              }

              *(v29 + 128) = v37;
              *(v29 + 136) = v38 | 1;
              v40 = os_retain(v26);
              v41 = *(v29 + 152);
              if ((v41 & 1) != 0 && *(v29 + 144))
              {
                v42 = v40;
                os_release(*(v29 + 144));
                v40 = v42;
                v41 = *(v29 + 152);
              }

              *(v29 + 144) = v40;
              *(v29 + 152) = v41 | 1;
              if (nw_protocol_copy_webtransport_definition::onceToken != -1)
              {
                dispatch_once(&nw_protocol_copy_webtransport_definition::onceToken, &__block_literal_global_62942);
              }

              singleton = _nw_protocol_metadata_create_singleton();
              v44 = *(v29 + 168);
              if ((v44 & 1) != 0 && *(v29 + 160))
              {
                v45 = singleton;
                os_release(*(v29 + 160));
                singleton = v45;
                v44 = *(v29 + 168);
              }

              *(v29 + 160) = singleton;
              *(v29 + 168) = v44 | 1;
              if (_nw_parameters_get_logging_disabled(v26))
              {
                v46 = 16;
              }

              else
              {
                v46 = 0;
              }

              *(v29 + 276) = *(v29 + 276) & 0xEF | v46;
              *(v29 + 64) = -1;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2000000000;
              v354 = v29;
              *type = MEMORY[0x1E69E9820];
              v345 = 0x40000000;
              v346 = ___ZL38nw_protocol_webtransport_stream_createPK22nw_protocol_identifierP23nw_webtransport_sessionP11nw_endpointP13nw_parameters_block_invoke;
              v347 = &unk_1E6A31890;
              v348 = buf;
              *(v29 + 176) = _Block_copy(type);
              _Block_object_dispose(buf, 8);
              if ((*(v29 + 276) & 0x10) == 0 && BYTE1(v30[82].isa) == 1)
              {
                v243 = __nwlog_obj();
                if (os_log_type_enabled(v243, OS_LOG_TYPE_DEBUG))
                {
                  v244 = *(v29 + 88);
                  if (v244)
                  {
                    v245 = *(v244 + 492);
                  }

                  else
                  {
                    v245 = -1;
                  }

                  v306 = *(v29 + 64);
                  *buf = 136447490;
                  *&buf[4] = "nw_protocol_webtransport_stream_create";
                  *&buf[12] = 2082;
                  *&buf[14] = v29 + 192;
                  *&buf[22] = 2080;
                  v354 = " ";
                  *v355 = 1024;
                  *&v355[2] = v245;
                  *&v355[6] = 2048;
                  *&v355[8] = v306;
                  *&v355[16] = 2048;
                  *&v355[18] = v29;
                  _os_log_impl(&dword_181A37000, v243, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> created WebTransport stream with protocol pointer %p", buf, 0x3Au);
                }
              }

              os_release(v27);
              v47 = v341;
              if ((*(v29 + 276) & 0x10) == 0 && BYTE1(v30[82].isa) == 1)
              {
                v246 = __nwlog_obj();
                if (os_log_type_enabled(v246, OS_LOG_TYPE_DEBUG))
                {
                  v247 = *(v29 + 88);
                  if (v247)
                  {
                    v248 = *(v247 + 492);
                  }

                  else
                  {
                    v248 = -1;
                  }

                  v307 = *(v29 + 64);
                  *buf = 136447234;
                  *&buf[4] = "nw_webtransport_stream_add_input_handler";
                  *&buf[12] = 2082;
                  *&buf[14] = v29 + 192;
                  *&buf[22] = 2080;
                  v354 = " ";
                  *v355 = 1024;
                  *&v355[2] = v248;
                  *&v355[6] = 2048;
                  *&v355[8] = v307;
                  _os_log_impl(&dword_181A37000, v246, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
                  v47 = v341;
                }
              }

              nw_protocol_set_input_handler(v29, v47);
              *v29 = *v47->flow_id;
              nw_protocol_set_output_handler(v47, v29);
              v48 = *(v29 + 88);
              if (v48)
              {
                v49 = *(v29 + 144);
                if (v49)
                {
                  if ((*(v29 + 276) & 0x10) == 0 && BYTE1(v30[82].isa) == 1)
                  {
                    v253 = __nwlog_obj();
                    if (os_log_type_enabled(v253, OS_LOG_TYPE_DEBUG))
                    {
                      v254 = *(v29 + 88);
                      if (v254)
                      {
                        v255 = *(v254 + 492);
                      }

                      else
                      {
                        v255 = -1;
                      }

                      v308 = *(v29 + 64);
                      *buf = 136447234;
                      *&buf[4] = "nw_webtransport_stream_replace_protocol_instance";
                      *&buf[12] = 2082;
                      *&buf[14] = v29 + 192;
                      *&buf[22] = 2080;
                      v354 = " ";
                      *v355 = 1024;
                      *&v355[2] = v255;
                      *&v355[6] = 2048;
                      *&v355[8] = v308;
                      _os_log_impl(&dword_181A37000, v253, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called", buf, 0x30u);
                    }
                  }

                  v50 = v49;
                  v51 = _nw_parameters_copy_protocol_options_with_level(v50, v48);

                  if (v51)
                  {
                    v52 = v27;
                    if ((*(v29 + 276) & 0x10) == 0 && gLogDatapath == 1)
                    {
                      v258 = __nwlog_obj();
                      if (os_log_type_enabled(v258, OS_LOG_TYPE_DEBUG))
                      {
                        v259 = *(v29 + 88);
                        if (v259)
                        {
                          v260 = *(v259 + 492);
                        }

                        else
                        {
                          v260 = -1;
                        }

                        v314 = *(v29 + 64);
                        *buf = 136448514;
                        *&buf[4] = "nw_webtransport_stream_replace_protocol_instance";
                        *&buf[12] = 2082;
                        *&buf[14] = v29 + 192;
                        *&buf[22] = 2080;
                        v354 = " ";
                        *v355 = 1024;
                        *&v355[2] = v260;
                        *&v355[6] = 2048;
                        *&v355[8] = v314;
                        *&v355[16] = 2048;
                        *&v355[18] = v29;
                        *&v355[26] = 2048;
                        v356 = v29;
                        v357 = 2048;
                        v358 = v48;
                        v359 = 2048;
                        v360 = v50;
                        v361 = 2048;
                        v362 = v51;
                        _os_log_impl(&dword_181A37000, v258, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> webtransport_stream protocol %p, set protocol instance to %p instead of %p in parameters %p options %p", buf, 0x62u);
                      }
                    }

                    if (nw_protocol_copy_webtransport_definition::onceToken != -1)
                    {
                      dispatch_once(&nw_protocol_copy_webtransport_definition::onceToken, &__block_literal_global_62942);
                    }

                    v27 = v52;
                    v53 = nw_protocol_copy_webtransport_definition::definition;
                    v54 = v51;
                    _nw_protocol_options_set_instance(v54, v29);

                    if (v53)
                    {
                      os_release(v53);
                    }

                    os_release(v54);
                  }

                  goto LABEL_76;
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_stream_replace_protocol_instance";
                v249 = _os_log_send_and_compose_impl();
                type[0] = OS_LOG_TYPE_ERROR;
                LOBYTE(v351[0]) = 0;
                if (__nwlog_fault(v249, type, v351))
                {
                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v250 = __nwlog_obj();
                    v251 = type[0];
                    if (!os_log_type_enabled(v250, type[0]))
                    {
                      goto LABEL_556;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_stream_replace_protocol_instance";
                    v252 = "%{public}s called with null parameters";
                    goto LABEL_555;
                  }

                  v287 = v27;
                  if (LOBYTE(v351[0]) != 1)
                  {
                    v250 = __nwlog_obj();
                    v251 = type[0];
                    if (!os_log_type_enabled(v250, type[0]))
                    {
                      goto LABEL_556;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_stream_replace_protocol_instance";
                    v252 = "%{public}s called with null parameters, backtrace limit exceeded";
                    goto LABEL_555;
                  }

                  v288 = __nw_create_backtrace_string();
                  v250 = __nwlog_obj();
                  v251 = type[0];
                  v289 = os_log_type_enabled(v250, type[0]);
                  if (v288)
                  {
                    if (v289)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_stream_replace_protocol_instance";
                      *&buf[12] = 2082;
                      *&buf[14] = v288;
                      _os_log_impl(&dword_181A37000, v250, v251, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v288);
                    v27 = v287;
                    goto LABEL_556;
                  }

                  v27 = v287;
                  if (v289)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_stream_replace_protocol_instance";
                    v252 = "%{public}s called with null parameters, no backtrace";
LABEL_555:
                    _os_log_impl(&dword_181A37000, v250, v251, v252, buf, 0xCu);
                  }
                }

LABEL_556:
                if (v249)
                {
                  free(v249);
                }

LABEL_76:
                v55 = nw_parameters_copy_protocol_options_legacy(*(v29 + 144), v29);
                if (v55)
                {
                  v56 = v55;
                  _nw_protocol_options_get_log_id_str(v56, (v29 + 192));

                  os_release(v56);
                  goto LABEL_78;
                }

                if ((*(v29 + 276) & 0x10) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v58 = gLogObj;
                  v57 = v341;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                  {
                    v59 = *(v29 + 88);
                    if (v59)
                    {
                      v60 = *(v59 + 492);
                    }

                    else
                    {
                      v60 = -1;
                    }

                    v70 = *(v29 + 64);
                    v71 = *(v29 + 144);
                    *buf = 136447746;
                    *&buf[4] = "nw_webtransport_stream_add_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = v29 + 192;
                    *&buf[22] = 2080;
                    v354 = " ";
                    *v355 = 1024;
                    *&v355[2] = v60;
                    *&v355[6] = 2048;
                    *&v355[8] = v70;
                    *&v355[16] = 2048;
                    *&v355[18] = v29;
                    *&v355[26] = 2048;
                    v356 = v71;
                    _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Failed to access options for protocol %p, parameters %p", buf, 0x44u);
                    if (*(handle + 6))
                    {
                      goto LABEL_102;
                    }

                    goto LABEL_97;
                  }

                  goto LABEL_96;
                }

LABEL_78:
                v57 = v341;
                if (*(handle + 6))
                {
                  goto LABEL_102;
                }

LABEL_97:
                nw_protocol_set_input_handler(handle, v29);
                *handle = *v57->flow_id;
                if ((handle[145] & 2) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v67 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                  {
                    v68 = handle[123];
                    v69 = *(handle + 6);
                    *buf = 136447234;
                    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = handle + 124;
                    *&buf[22] = 2080;
                    v354 = " ";
                    *v355 = 1024;
                    *&v355[2] = v68;
                    *&v355[6] = 2048;
                    *&v355[8] = v69;
                    _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Set session default_input_handler: %p", buf, 0x30u);
                  }
                }

LABEL_102:
                v72 = handle[145] & 0x20;
                v73 = handle[120];
                v74 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                if (v73 != 1)
                {
                  if (!v73)
                  {
                    if (v27)
                    {
                      if ((*(v29 + 276) & 0x10) == 0 && gLogDatapath == 1)
                      {
                        v278 = __nwlog_obj();
                        if (os_log_type_enabled(v278, OS_LOG_TYPE_DEBUG))
                        {
                          v279 = *(v29 + 88);
                          if (v279)
                          {
                            v280 = *(v279 + 492);
                          }

                          else
                          {
                            v280 = -1;
                          }

                          v315 = *(v29 + 64);
                          *buf = 136447746;
                          *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                          *&buf[12] = 2082;
                          *&buf[14] = v29 + 192;
                          *&buf[22] = 2080;
                          v354 = " ";
                          *v355 = 1024;
                          *&v355[2] = v280;
                          *&v355[6] = 2048;
                          *&v355[8] = v315;
                          *&v355[16] = 2048;
                          *&v355[18] = v29;
                          *&v355[26] = 1024;
                          LODWORD(v356) = v72 >> 5;
                          _os_log_impl(&dword_181A37000, v278, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Reconfiguring HTTP2 stream with protocol: %p, peer_initiated: %u", buf, 0x40u);
                          v57 = v341;
                        }
                      }

                      v75 = *(v29 + 88);
                      if (v75[55] == v29)
                      {
                        if ((*(v29 + 276) & 0x10) == 0 && gLogDatapath == 1)
                        {
                          v303 = __nwlog_obj();
                          if (os_log_type_enabled(v303, OS_LOG_TYPE_DEBUG))
                          {
                            v304 = *(v29 + 88);
                            if (v304)
                            {
                              v305 = *(v304 + 492);
                            }

                            else
                            {
                              v305 = -1;
                            }

                            v332 = *(v29 + 64);
                            *buf = 136447234;
                            *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                            *&buf[12] = 2082;
                            *&buf[14] = v29 + 192;
                            *&buf[22] = 2080;
                            v354 = " ";
                            *v355 = 1024;
                            *&v355[2] = v305;
                            *&v355[6] = 2048;
                            *&v355[8] = v332;
                            _os_log_impl(&dword_181A37000, v303, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Returning without more reconfiguration for placeholder stream", buf, 0x30u);
                            v57 = v341;
                          }
                        }

                        nw_protocol_connected(*(v29 + 48), v29);
                      }

                      else
                      {
                        if (nw_protocol_webtransport_http2_stream_callbacks(void)::onceToken != -1)
                        {
                          v290 = *(v29 + 88);
                          dispatch_once(&nw_protocol_webtransport_http2_stream_callbacks(void)::onceToken, &__block_literal_global_42);
                          v75 = v290;
                        }

                        *(v29 + 24) = &nw_protocol_webtransport_http2_stream_callbacks(void)::protocol_callbacks;
                        nw_protocol_set_output_handler(v29, v75);
                        v76 = nw_parameters_copy_protocol_options_legacy(*(v29 + 144), v29);
                        if (!v76)
                        {
                          v91 = &qword_1ED411000;
                          if ((*(v29 + 276) & 0x10) == 0)
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v106 = gLogObj;
                            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                            {
                              v107 = *(v29 + 88);
                              if (v107)
                              {
                                v108 = *(v107 + 492);
                              }

                              else
                              {
                                v108 = -1;
                              }

                              v146 = *(v29 + 64);
                              *buf = 136447234;
                              *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                              *&buf[12] = 2082;
                              *&buf[14] = v29 + 192;
                              *&buf[22] = 2080;
                              v354 = " ";
                              *v355 = 1024;
                              *&v355[2] = v108;
                              *&v355[6] = 2048;
                              *&v355[8] = v146;
                              _os_log_impl(&dword_181A37000, v106, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Could not find options for stream when reconfiguring", buf, 0x30u);
                            }
                          }

                          goto LABEL_275;
                        }

                        v77 = v76;
                        if (v72)
                        {
                          if ((*(v29 + 276) & 0x10) == 0 && gLogDatapath == 1)
                          {
                            v109 = __nwlog_obj();
                            if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
                            {
                              v110 = *(v29 + 88);
                              if (v110)
                              {
                                v111 = *(v110 + 492);
                              }

                              else
                              {
                                v111 = -1;
                              }

                              v337 = *(v29 + 64);
                              *buf = 136447234;
                              *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                              *&buf[12] = 2082;
                              *&buf[14] = v29 + 192;
                              *&buf[22] = 2080;
                              v354 = " ";
                              *v355 = 1024;
                              *&v355[2] = v111;
                              *&v355[6] = 2048;
                              *&v355[8] = v337;
                              _os_log_impl(&dword_181A37000, v109, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Waiting for connected callback and stream ID assignment to setup metadata", buf, 0x30u);
                              v57 = v341;
                            }
                          }
                        }

                        else
                        {
                          v78 = v76;
                          if (nw_protocol_copy_webtransport_definition::onceToken != -1)
                          {
                            dispatch_once(&nw_protocol_copy_webtransport_definition::onceToken, &__block_literal_global_62942);
                          }

                          v79 = nw_protocol_options_matches_definition(v78, nw_protocol_copy_webtransport_definition::definition);

                          if (v79)
                          {
                            *(v29 + 276) = *(v29 + 276) & 0xFC | 1;
                            if (nw_webtransport_options_get_is_datagram(v78))
                            {
                              v80 = 8;
                            }

                            else
                            {
                              v80 = 0;
                            }

                            *(v29 + 276) = *(v29 + 276) & 0xF7 | v80;
                            is_unidirectional = nw_webtransport_options_get_is_unidirectional(v78);
                            v82 = *(v29 + 276);
                            if (is_unidirectional)
                            {
                              v83 = 4;
                            }

                            else
                            {
                              v83 = 0;
                            }

                            *(v29 + 276) = v82 & 0xFB | v83;
                            v57 = v341;
                            if ((v82 & 0x10) == 0)
                            {
                              v84 = __nwlog_obj();
                              if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
                              {
                                v85 = *(v29 + 88);
                                if (v85)
                                {
                                  v86 = *(v85 + 492);
                                }

                                else
                                {
                                  v86 = -1;
                                }

                                v176 = *(v29 + 64);
                                v177 = *(v29 + 276);
                                *buf = 136448002;
                                *&buf[4] = "nw_webtransport_stream_configure_metadata_with_options";
                                *&buf[12] = 2082;
                                *&buf[14] = v29 + 192;
                                *&buf[22] = 2080;
                                v354 = " ";
                                *v355 = 1024;
                                *&v355[2] = v86;
                                *&v355[6] = 2048;
                                *&v355[8] = v176;
                                *&v355[16] = 1024;
                                *&v355[18] = (v177 >> 1) & 1;
                                *&v355[22] = 1024;
                                *&v355[24] = (v177 >> 3) & 1;
                                LOWORD(v356) = 1024;
                                *(&v356 + 2) = (v177 >> 2) & 1;
                                _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> Configuring metadata with flags: peer_initiated: %d, datagram: %d, unidirectional: %d", buf, 0x42u);
                              }
                            }

                            nw_webtransport_metadata_set_is_peer_initiated(*(v29 + 160), (*(v29 + 276) & 2) != 0);
                            nw_webtransport_metadata_set_is_datagram(*(v29 + 160), (*(v29 + 276) & 8) != 0);
                            nw_webtransport_metadata_set_is_unidirectional(*(v29 + 160), (*(v29 + 276) & 4) != 0);
                          }

                          else
                          {
                            v57 = v341;
                            if ((*(v29 + 276) & 0x10) == 0)
                            {
                              v136 = __nwlog_obj();
                              if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
                              {
                                v137 = *(v29 + 88);
                                if (v137)
                                {
                                  v138 = *(v137 + 492);
                                }

                                else
                                {
                                  v138 = -1;
                                }

                                v178 = *(v29 + 64);
                                *buf = 136447234;
                                *&buf[4] = "nw_webtransport_stream_configure_metadata_with_options";
                                *&buf[12] = 2082;
                                *&buf[14] = v29 + 192;
                                *&buf[22] = 2080;
                                v354 = " ";
                                *v355 = 1024;
                                *&v355[2] = v138;
                                *&v355[6] = 2048;
                                *&v355[8] = v178;
                                _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Invalid protocol options for webtransport stream", buf, 0x30u);
                              }
                            }
                          }
                        }

                        os_release(v77);
                      }

LABEL_274:
                      v91 = &qword_1ED411000;
LABEL_275:
                      v143 = v29;
                      v144 = handle;
                      goto LABEL_276;
                    }

                    __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                    v266 = _os_log_send_and_compose_impl();
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v351[0]) = 0;
                    if (__nwlog_fault(v266, type, v351))
                    {
                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        v267 = __nwlog_obj();
                        v268 = type[0];
                        if (os_log_type_enabled(v267, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                          v269 = "%{public}s called with null webtransport_stream";
LABEL_581:
                          _os_log_impl(&dword_181A37000, v267, v268, v269, buf, 0xCu);
                        }
                      }

                      else if (LOBYTE(v351[0]) == 1)
                      {
                        v294 = __nw_create_backtrace_string();
                        v267 = __nwlog_obj();
                        v268 = type[0];
                        v295 = os_log_type_enabled(v267, type[0]);
                        if (v294)
                        {
                          if (v295)
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                            *&buf[12] = 2082;
                            *&buf[14] = v294;
                            _os_log_impl(&dword_181A37000, v267, v268, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                          }

                          free(v294);
                          goto LABEL_582;
                        }

                        if (v295)
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                          v269 = "%{public}s called with null webtransport_stream, no backtrace";
                          goto LABEL_581;
                        }
                      }

                      else
                      {
                        v267 = __nwlog_obj();
                        v268 = type[0];
                        if (os_log_type_enabled(v267, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http2_stream_reconfigure_and_start";
                          v269 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                          goto LABEL_581;
                        }
                      }
                    }

LABEL_582:
                    if (v266)
                    {
                      free(v266);
                    }

                    v57 = v341;
                    goto LABEL_274;
                  }

                  if (v27)
                  {
                    if ((*(v29 + 276) & 0x10) == 0 && gLogDatapath == 1)
                    {
                      v281 = __nwlog_obj();
                      if (os_log_type_enabled(v281, OS_LOG_TYPE_DEBUG))
                      {
                        v282 = *(v29 + 88);
                        if (v282)
                        {
                          v283 = *(v282 + 492);
                        }

                        else
                        {
                          v283 = -1;
                        }

                        v316 = *(v29 + 64);
                        *buf = 136447490;
                        *&buf[4] = "nw_webtransport_session_add_pending_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v29 + 192;
                        *&buf[22] = 2080;
                        v354 = " ";
                        *v355 = 1024;
                        *&v355[2] = v283;
                        *&v355[6] = 2048;
                        *&v355[8] = v316;
                        *&v355[16] = 2048;
                        *&v355[18] = v29;
                        _os_log_impl(&dword_181A37000, v281, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> called for stream (%p)", buf, 0x3Au);
                        v57 = v341;
                      }
                    }

                    v91 = &qword_1ED411000;
                    if ((*(v29 + 276) & 0x20) == 0)
                    {
                      *(v29 + 112) = 0;
                      v92 = *(handle + 43);
                      *(v29 + 120) = v92;
                      *v92 = v29;
                      *(handle + 43) = v29 + 112;
                      v93 = handle[122] + 1;
                      handle[122] = v93;
                      if (v93 == v93 << 31 >> 31)
                      {
LABEL_259:
                        v173 = *(v29 + 276);
                        *(v29 + 276) = v173 | 0x20;
                        if ((v173 & 0x10) == 0 && BYTE1(v74[82].isa) == 1)
                        {
                          v300 = __nwlog_obj();
                          if (os_log_type_enabled(v300, OS_LOG_TYPE_DEBUG))
                          {
                            v301 = *(v29 + 88);
                            if (v301)
                            {
                              v302 = *(v301 + 492);
                            }

                            else
                            {
                              v302 = -1;
                            }

                            v327 = *(v29 + 64);
                            v328 = handle[122];
                            *buf = 136447746;
                            *&buf[4] = "nw_webtransport_session_add_pending_stream";
                            *&buf[12] = 2082;
                            *&buf[14] = v29 + 192;
                            *&buf[22] = 2080;
                            v354 = " ";
                            *v355 = 1024;
                            *&v355[2] = v302;
                            *&v355[6] = 2048;
                            *&v355[8] = v327;
                            *&v355[16] = 2048;
                            *&v355[18] = v29;
                            *&v355[26] = 1024;
                            LODWORD(v356) = v328;
                            _os_log_impl(&dword_181A37000, v300, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> added stream (%p), now have %u pending streams", buf, 0x40u);
                            v57 = v341;
                          }
                        }

LABEL_261:
                        if ((handle[145] & 2) == 0)
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v174 = v91[275];
                          if (os_log_type_enabled(v174, OS_LOG_TYPE_INFO))
                          {
                            v175 = handle[123];
                            *buf = 136446978;
                            *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
                            *&buf[12] = 2082;
                            *&buf[14] = handle + 124;
                            *&buf[22] = 2080;
                            v354 = " ";
                            *v355 = 1024;
                            *&v355[2] = v175;
                            v148 = "%{public}s %{public}s%s<i%u> Not reconfiguring stream, no transport mode determined yet";
                            v149 = v174;
                            v150 = OS_LOG_TYPE_INFO;
                            v151 = 38;
                            goto LABEL_264;
                          }
                        }

                        goto LABEL_381;
                      }

                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v94 = handle[122];
                      *buf = 136446978;
                      *&buf[4] = "nw_webtransport_session_add_pending_stream";
                      *&buf[12] = 2082;
                      *&buf[14] = "webtransport_session->pending_stream_count";
                      *&buf[22] = 2048;
                      v354 = 1;
                      *v355 = 2048;
                      *&v355[2] = v94;
                      v95 = _os_log_send_and_compose_impl();
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v351[0]) = 0;
                      if (__nwlog_fault(v95, type, v351))
                      {
                        if (type[0] == OS_LOG_TYPE_FAULT)
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v96 = gLogObj;
                          v97 = type[0];
                          if (os_log_type_enabled(gLogObj, type[0]))
                          {
                            v98 = handle[122];
                            *buf = 136446978;
                            *&buf[4] = "nw_webtransport_session_add_pending_stream";
                            *&buf[12] = 2082;
                            *&buf[14] = "webtransport_session->pending_stream_count";
                            *&buf[22] = 2048;
                            v354 = 1;
                            *v355 = 2048;
                            *&v355[2] = v98;
                            v99 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_255:
                            _os_log_impl(&dword_181A37000, v96, v97, v99, buf, 0x2Au);
                          }
                        }

                        else if (LOBYTE(v351[0]) == 1)
                        {
                          v133 = __nw_create_backtrace_string();
                          v96 = __nwlog_obj();
                          v97 = type[0];
                          v134 = os_log_type_enabled(v96, type[0]);
                          if (v133)
                          {
                            if (v134)
                            {
                              v135 = handle[122];
                              *buf = 136447234;
                              *&buf[4] = "nw_webtransport_session_add_pending_stream";
                              *&buf[12] = 2082;
                              *&buf[14] = "webtransport_session->pending_stream_count";
                              *&buf[22] = 2048;
                              v354 = 1;
                              *v355 = 2048;
                              *&v355[2] = v135;
                              *&v355[10] = 2082;
                              *&v355[12] = v133;
                              _os_log_impl(&dword_181A37000, v96, v97, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                            }

                            free(v133);
                            v74 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                            goto LABEL_256;
                          }

                          v74 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                          if (v134)
                          {
                            v172 = handle[122];
                            *buf = 136446978;
                            *&buf[4] = "nw_webtransport_session_add_pending_stream";
                            *&buf[12] = 2082;
                            *&buf[14] = "webtransport_session->pending_stream_count";
                            *&buf[22] = 2048;
                            v354 = 1;
                            *v355 = 2048;
                            *&v355[2] = v172;
                            v99 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                            goto LABEL_255;
                          }
                        }

                        else
                        {
                          v96 = __nwlog_obj();
                          v97 = type[0];
                          if (os_log_type_enabled(v96, type[0]))
                          {
                            v145 = handle[122];
                            *buf = 136446978;
                            *&buf[4] = "nw_webtransport_session_add_pending_stream";
                            *&buf[12] = 2082;
                            *&buf[14] = "webtransport_session->pending_stream_count";
                            *&buf[22] = 2048;
                            v354 = 1;
                            *v355 = 2048;
                            *&v355[2] = v145;
                            v99 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                            goto LABEL_255;
                          }
                        }
                      }

LABEL_256:
                      if (v95)
                      {
                        free(v95);
                      }

                      handle[122] = -1;
                      v57 = v341;
                      v91 = &qword_1ED411000;
                      goto LABEL_259;
                    }

                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_session_add_pending_stream";
                    *&buf[12] = 2048;
                    *&buf[14] = v29;
                    v100 = _os_log_send_and_compose_impl();
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v351[0]) = 0;
                    if (!__nwlog_fault(v100, type, v351))
                    {
                      goto LABEL_217;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v101 = gLogObj;
                      v102 = type[0];
                      if (!os_log_type_enabled(gLogObj, type[0]))
                      {
                        goto LABEL_217;
                      }

                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_session_add_pending_stream";
                      *&buf[12] = 2048;
                      *&buf[14] = v29;
                      v103 = "%{public}s stream %p already in pending list, cannot add again";
                    }

                    else if (LOBYTE(v351[0]) == 1)
                    {
                      v104 = __nw_create_backtrace_string();
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v101 = gLogObj;
                      v102 = type[0];
                      v105 = os_log_type_enabled(gLogObj, type[0]);
                      if (v104)
                      {
                        if (v105)
                        {
                          *buf = 136446722;
                          *&buf[4] = "nw_webtransport_session_add_pending_stream";
                          *&buf[12] = 2048;
                          *&buf[14] = v29;
                          *&buf[22] = 2082;
                          v354 = v104;
                          _os_log_impl(&dword_181A37000, v101, v102, "%{public}s stream %p already in pending list, cannot add again, dumping backtrace:%{public}s", buf, 0x20u);
                        }

                        free(v104);
                        goto LABEL_217;
                      }

                      if (!v105)
                      {
LABEL_217:
                        if (v100)
                        {
                          free(v100);
                        }

LABEL_219:
                        v57 = v341;
                        v91 = &qword_1ED411000;
                        goto LABEL_261;
                      }

                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_session_add_pending_stream";
                      *&buf[12] = 2048;
                      *&buf[14] = v29;
                      v103 = "%{public}s stream %p already in pending list, cannot add again, no backtrace";
                    }

                    else
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v101 = gLogObj;
                      v102 = type[0];
                      if (!os_log_type_enabled(gLogObj, type[0]))
                      {
                        goto LABEL_217;
                      }

                      *buf = 136446466;
                      *&buf[4] = "nw_webtransport_session_add_pending_stream";
                      *&buf[12] = 2048;
                      *&buf[14] = v29;
                      v103 = "%{public}s stream %p already in pending list, cannot add again, backtrace limit exceeded";
                    }

                    _os_log_impl(&dword_181A37000, v101, v102, v103, buf, 0x16u);
                    goto LABEL_217;
                  }

                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_session_add_pending_stream";
                  v274 = _os_log_send_and_compose_impl();
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v351[0]) = 0;
                  if (__nwlog_fault(v274, type, v351))
                  {
                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v275 = __nwlog_obj();
                      v276 = type[0];
                      if (!os_log_type_enabled(v275, type[0]))
                      {
                        goto LABEL_595;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_session_add_pending_stream";
                      v277 = "%{public}s called with null webtransport_stream";
                      goto LABEL_594;
                    }

                    if (LOBYTE(v351[0]) != 1)
                    {
                      v275 = __nwlog_obj();
                      v276 = type[0];
                      if (!os_log_type_enabled(v275, type[0]))
                      {
                        goto LABEL_595;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_session_add_pending_stream";
                      v277 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                      goto LABEL_594;
                    }

                    v298 = __nw_create_backtrace_string();
                    v275 = __nwlog_obj();
                    v276 = type[0];
                    v299 = os_log_type_enabled(v275, type[0]);
                    if (v298)
                    {
                      if (v299)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_session_add_pending_stream";
                        *&buf[12] = 2082;
                        *&buf[14] = v298;
                        _os_log_impl(&dword_181A37000, v275, v276, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v298);
                      goto LABEL_595;
                    }

                    if (v299)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_session_add_pending_stream";
                      v277 = "%{public}s called with null webtransport_stream, no backtrace";
LABEL_594:
                      _os_log_impl(&dword_181A37000, v275, v276, v277, buf, 0xCu);
                    }
                  }

LABEL_595:
                  if (v274)
                  {
                    free(v274);
                  }

                  goto LABEL_219;
                }

                if (v27)
                {
                  v87 = *(v29 + 88);
                  if ((*(v29 + 276) & 0x10) == 0)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v88 = gLogObj;
                    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                    {
                      v89 = *(v29 + 88);
                      if (v89)
                      {
                        v90 = *(v89 + 492);
                      }

                      else
                      {
                        v90 = -1;
                      }

                      v112 = *(v29 + 64);
                      *buf = 136447746;
                      *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                      *&buf[12] = 2082;
                      *&buf[14] = v29 + 192;
                      *&buf[22] = 2080;
                      v354 = " ";
                      *v355 = 1024;
                      *&v355[2] = v90;
                      *&v355[6] = 2048;
                      *&v355[8] = v112;
                      *&v355[16] = 2048;
                      *&v355[18] = v29;
                      *&v355[26] = 1024;
                      LODWORD(v356) = v72 >> 5;
                      _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> Reconfiguring HTTP3 stream with protocol: %p, peer_initiated: %u", buf, 0x40u);
                    }
                  }

                  if (*(v87 + 440) == v29)
                  {
                    v91 = &qword_1ED411000;
                    if ((*(v29 + 276) & 0x10) == 0)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v124 = gLogObj;
                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                      {
                        v125 = *(v29 + 88);
                        if (v125)
                        {
                          v126 = *(v125 + 492);
                        }

                        else
                        {
                          v126 = -1;
                        }

                        v142 = *(v29 + 64);
                        *buf = 136447234;
                        *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                        *&buf[12] = 2082;
                        *&buf[14] = v29 + 192;
                        *&buf[22] = 2080;
                        v354 = " ";
                        *v355 = 1024;
                        *&v355[2] = v126;
                        *&v355[6] = 2048;
                        *&v355[8] = v142;
                        _os_log_impl(&dword_181A37000, v124, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Returning connected without more reconfiguration for placeholder stream", buf, 0x30u);
                      }
                    }

                    v143 = *(v29 + 48);
                    v144 = v29;
LABEL_276:
                    nw_protocol_connected(v143, v144);
                    if ((handle[145] & 2) != 0)
                    {
                      return 1;
                    }

LABEL_382:
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v232 = v91[275];
                    if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
                    {
                      v233 = handle[123];
                      *buf = 136447490;
                      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
                      *&buf[12] = 2082;
                      *&buf[14] = handle + 124;
                      *&buf[22] = 2080;
                      v354 = " ";
                      *v355 = 1024;
                      *&v355[2] = v233;
                      *&v355[6] = 2048;
                      *&v355[8] = v57;
                      *&v355[16] = 2082;
                      *&v355[18] = v29 + 192;
                      _os_log_impl(&dword_181A37000, v232, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u> Added input handler %p from %{public}s", buf, 0x3Au);
                    }

                    return 1;
                  }

                  v113 = nw_parameters_copy_protocol_options_legacy(*(v29 + 144), v29);
                  if (!v113)
                  {
                    v91 = &qword_1ED411000;
                    if ((*(v29 + 276) & 0x10) == 0)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v127 = gLogObj;
                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                      {
                        v128 = *(v29 + 88);
                        if (v128)
                        {
                          v129 = *(v128 + 492);
                        }

                        else
                        {
                          v129 = -1;
                        }

                        v147 = *(v29 + 64);
                        *buf = 136447234;
                        *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                        *&buf[12] = 2082;
                        *&buf[14] = v29 + 192;
                        *&buf[22] = 2080;
                        v354 = " ";
                        *v355 = 1024;
                        *&v355[2] = v129;
                        *&v355[6] = 2048;
                        *&v355[8] = v147;
                        v148 = "%{public}s %{public}s%s<i%u:s%llu> Could not find options for stream when reconfiguring";
                        v149 = v127;
                        v150 = OS_LOG_TYPE_ERROR;
                        v151 = 48;
LABEL_264:
                        _os_log_impl(&dword_181A37000, v149, v150, v148, buf, v151);
                        if ((handle[145] & 2) == 0)
                        {
                          goto LABEL_382;
                        }

                        return 1;
                      }
                    }

LABEL_381:
                    if ((handle[145] & 2) == 0)
                    {
                      goto LABEL_382;
                    }

                    return 1;
                  }

                  v114 = v113;
                  if (nw_protocol_webtransport_http3_stream_callbacks(void)::onceToken != -1)
                  {
                    dispatch_once(&nw_protocol_webtransport_http3_stream_callbacks(void)::onceToken, &__block_literal_global_56_36593);
                  }

                  *(v29 + 24) = &nw_protocol_webtransport_http3_stream_callbacks(void)::protocol_callbacks;
                  if (!v72)
                  {
                    v115 = v114;
                    if (nw_protocol_copy_webtransport_definition::onceToken != -1)
                    {
                      dispatch_once(&nw_protocol_copy_webtransport_definition::onceToken, &__block_literal_global_62942);
                    }

                    v116 = nw_protocol_options_matches_definition(v115, nw_protocol_copy_webtransport_definition::definition);

                    if (v116)
                    {
                      *(v29 + 276) = *(v29 + 276) & 0xFC | 1;
                      if (nw_webtransport_options_get_is_datagram(v115))
                      {
                        v117 = 8;
                      }

                      else
                      {
                        v117 = 0;
                      }

                      *(v29 + 276) = *(v29 + 276) & 0xF7 | v117;
                      v118 = nw_webtransport_options_get_is_unidirectional(v115);
                      v119 = *(v29 + 276);
                      if (v118)
                      {
                        v120 = 4;
                      }

                      else
                      {
                        v120 = 0;
                      }

                      *(v29 + 276) = v119 & 0xFB | v120;
                      if ((v119 & 0x10) == 0)
                      {
                        v121 = __nwlog_obj();
                        if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
                        {
                          v122 = *(v29 + 88);
                          if (v122)
                          {
                            v123 = *(v122 + 492);
                          }

                          else
                          {
                            v123 = -1;
                          }

                          v179 = *(v29 + 64);
                          v180 = *(v29 + 276);
                          *buf = 136448002;
                          *&buf[4] = "nw_webtransport_stream_configure_metadata_with_options";
                          *&buf[12] = 2082;
                          *&buf[14] = v29 + 192;
                          *&buf[22] = 2080;
                          v354 = " ";
                          *v355 = 1024;
                          *&v355[2] = v123;
                          *&v355[6] = 2048;
                          *&v355[8] = v179;
                          *&v355[16] = 1024;
                          *&v355[18] = (v180 >> 1) & 1;
                          *&v355[22] = 1024;
                          *&v355[24] = (v180 >> 3) & 1;
                          LOWORD(v356) = 1024;
                          *(&v356 + 2) = (v180 >> 2) & 1;
                          _os_log_impl(&dword_181A37000, v121, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> Configuring metadata with flags: peer_initiated: %d, datagram: %d, unidirectional: %d", buf, 0x42u);
                        }
                      }

                      nw_webtransport_metadata_set_is_peer_initiated(*(v29 + 160), (*(v29 + 276) & 2) != 0);
                      nw_webtransport_metadata_set_is_datagram(*(v29 + 160), (*(v29 + 276) & 8) != 0);
                      nw_webtransport_metadata_set_is_unidirectional(*(v29 + 160), (*(v29 + 276) & 4) != 0);
                    }

                    else if ((*(v29 + 276) & 0x10) == 0)
                    {
                      v139 = __nwlog_obj();
                      if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
                      {
                        v140 = *(v29 + 88);
                        if (v140)
                        {
                          v141 = *(v140 + 492);
                        }

                        else
                        {
                          v141 = -1;
                        }

                        v181 = *(v29 + 64);
                        *buf = 136447234;
                        *&buf[4] = "nw_webtransport_stream_configure_metadata_with_options";
                        *&buf[12] = 2082;
                        *&buf[14] = v29 + 192;
                        *&buf[22] = 2080;
                        v354 = " ";
                        *v355 = 1024;
                        *&v355[2] = v141;
                        *&v355[6] = 2048;
                        *&v355[8] = v181;
                        _os_log_impl(&dword_181A37000, v139, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Invalid protocol options for webtransport stream", buf, 0x30u);
                      }
                    }

                    if ((*(v29 + 276) & 8) != 0)
                    {
                      v185 = *(v87 + 32);
                      *(v29 + 32) = v185;
                      nw_protocol_connected(v29, v185);
                      v57 = v341;
LABEL_380:
                      os_release(v114);
                      v91 = &qword_1ED411000;
                      goto LABEL_381;
                    }

                    nw_protocol_set_output_handler(v29, 0);
                    *(v29 + 56) = 0;
                    if (!*(v87 + 400))
                    {
                      v57 = v341;
                      if ((*(v29 + 276) & 0x10) != 0)
                      {
                        goto LABEL_379;
                      }

                      v182 = __nwlog_obj();
                      if (!os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_379;
                      }

                      v183 = *(v29 + 88);
                      if (v183)
                      {
                        v184 = *(v183 + 492);
                      }

                      else
                      {
                        v184 = -1;
                      }

                      v214 = *(v29 + 64);
                      *buf = 136447234;
                      *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                      *&buf[12] = 2082;
                      *&buf[14] = v29 + 192;
                      *&buf[22] = 2080;
                      v354 = " ";
                      *v355 = 1024;
                      *&v355[2] = v184;
                      *&v355[6] = 2048;
                      *&v355[8] = v214;
                      v215 = "%{public}s %{public}s%s<i%u:s%llu> no http connection metadata when attempting to start webtransport http3 stream";
LABEL_378:
                      _os_log_impl(&dword_181A37000, v182, OS_LOG_TYPE_ERROR, v215, buf, 0x30u);
LABEL_379:
                      v231 = *(v29 + 88);
                      nw_protocol_error(*(v29 + 48), v29);
                      nw_protocol_disconnect(v29, v231);
                      goto LABEL_380;
                    }

LABEL_304:
                    if ((*(v87 + 580) & 0x40) == 0)
                    {
                      goto LABEL_330;
                    }

                    v340 = v87;
                    v192 = *(v87 + 32);
                    v193 = nw_protocol_get_parameters(v29);
                    if (v193)
                    {
                      v194 = v193;
                      nw_parameters_log_protocol_instances(v193);
                      v195 = _nw_parameters_copy_default_protocol_stack(v194);
                      v351[0] = 0;
                      v351[1] = v351;
                      v351[2] = 0x2000000000;
                      v352 = 0;
                      *buf = 0;
                      *&buf[8] = buf;
                      *&buf[16] = 0x3802000000;
                      v354 = __Block_byref_object_copy__59;
                      *v355 = __Block_byref_object_dispose__60;
                      *&v355[8] = 0;
                      v355[16] |= 1u;
                      *type = MEMORY[0x1E69E9820];
                      v345 = 0x40000000;
                      v346 = ___ZL48nw_webtransport_session_setup_for_http_messagingP23nw_webtransport_sessionP11nw_protocolS2__block_invoke;
                      v347 = &unk_1E6A31BF8;
                      v348 = v351;
                      v349 = buf;
                      v350 = v29;
                      nw_protocol_stack_iterate_application_protocols(v195, type);
                      v196 = *(*&buf[8] + 40);
                      if (v196)
                      {
                        if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
                        {
                          dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
                        }

                        v197 = nw_protocol_copy_http_messaging_definition_definition;
                        v198 = v196;
                        _nw_protocol_options_set_instance(v198, v192);

                        v87 = v340;
                        if (v197)
                        {
                          os_release(v197);
                        }

                        v199 = nw_protocol_get_parameters(v192);
                        if (!v199)
                        {
                          goto LABEL_324;
                        }

                        v200 = _nw_parameters_copy_default_protocol_stack(v199);
                        v201 = _nw_parameters_copy_default_protocol_stack(v194);
                        v202 = nw_protocol_stack_copy_transport_protocol(v200);
                        v203 = nw_protocol_stack_copy_transport_protocol(v201);
                        v204 = v203;
                        if (v202)
                        {
                          if (v203)
                          {
                            v205 = _nw_protocol_options_copy_definition(v202);
                            if (nw_protocol_options_matches_definition(v204, v205))
                            {
                              protocol_handle = _nw_protocol_options_get_protocol_handle(v202);
                              nw_parameters_set_protocol_instance(v204, v207, protocol_handle);
                            }

                            os_release(v204);
                          }

                          v204 = v202;
                        }

                        else if (!v203)
                        {
LABEL_320:
                          if (v201)
                          {
                            os_release(v201);
                          }

                          if (v200)
                          {
                            os_release(v200);
                          }

LABEL_324:
                          nw_protocol_set_output_handler(v29, 0);
LABEL_325:
                          _Block_object_dispose(buf, 8);
                          if ((v355[16] & 1) != 0 && *&v355[8])
                          {
                            os_release(*&v355[8]);
                          }

                          _Block_object_dispose(v351, 8);
                          if (v195)
                          {
                            os_release(v195);
                          }

LABEL_330:
                          if ((*(v29 + 276) & 0x40) != 0)
                          {
                            goto LABEL_332;
                          }

                          goto LABEL_331;
                        }

                        os_release(v204);
                        goto LABEL_320;
                      }

                      __nwlog_obj();
                      v363 = 136446210;
                      v364 = "nw_webtransport_session_setup_for_http_messaging";
                      v321 = _os_log_send_and_compose_impl();
                      v343 = OS_LOG_TYPE_ERROR;
                      v342 = 0;
                      if (__nwlog_fault(v321, &v343, &v342))
                      {
                        if (v343 == OS_LOG_TYPE_FAULT)
                        {
                          v322 = __nwlog_obj();
                          v323 = v343;
                          if (os_log_type_enabled(v322, v343))
                          {
                            v363 = 136446210;
                            v364 = "nw_webtransport_session_setup_for_http_messaging";
                            v324 = "%{public}s called with null options";
LABEL_640:
                            _os_log_impl(&dword_181A37000, v322, v323, v324, &v363, 0xCu);
                          }
                        }

                        else if (v342 == 1)
                        {
                          v335 = __nw_create_backtrace_string();
                          v322 = __nwlog_obj();
                          v323 = v343;
                          v336 = os_log_type_enabled(v322, v343);
                          if (v335)
                          {
                            if (v336)
                            {
                              v363 = 136446466;
                              v364 = "nw_webtransport_session_setup_for_http_messaging";
                              v365 = 2082;
                              v366 = v335;
                              _os_log_impl(&dword_181A37000, v322, v323, "%{public}s called with null options, dumping backtrace:%{public}s", &v363, 0x16u);
                            }

                            free(v335);
                            goto LABEL_641;
                          }

                          if (v336)
                          {
                            v363 = 136446210;
                            v364 = "nw_webtransport_session_setup_for_http_messaging";
                            v324 = "%{public}s called with null options, no backtrace";
                            goto LABEL_640;
                          }
                        }

                        else
                        {
                          v322 = __nwlog_obj();
                          v323 = v343;
                          if (os_log_type_enabled(v322, v343))
                          {
                            v363 = 136446210;
                            v364 = "nw_webtransport_session_setup_for_http_messaging";
                            v324 = "%{public}s called with null options, backtrace limit exceeded";
                            goto LABEL_640;
                          }
                        }
                      }

LABEL_641:
                      if (v321)
                      {
                        free(v321);
                      }

                      v87 = v340;
                      goto LABEL_325;
                    }

                    __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
                    v317 = _os_log_send_and_compose_impl();
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v351[0]) = 0;
                    if (__nwlog_fault(v317, type, v351))
                    {
                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        v318 = __nwlog_obj();
                        v319 = type[0];
                        if (!os_log_type_enabled(v318, type[0]))
                        {
                          goto LABEL_634;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
                        v320 = "%{public}s called with null parameters";
LABEL_633:
                        _os_log_impl(&dword_181A37000, v318, v319, v320, buf, 0xCu);
                        goto LABEL_634;
                      }

                      if (LOBYTE(v351[0]) != 1)
                      {
                        v318 = __nwlog_obj();
                        v319 = type[0];
                        if (!os_log_type_enabled(v318, type[0]))
                        {
                          goto LABEL_634;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
                        v320 = "%{public}s called with null parameters, backtrace limit exceeded";
                        goto LABEL_633;
                      }

                      v333 = __nw_create_backtrace_string();
                      v318 = __nwlog_obj();
                      v319 = type[0];
                      v334 = os_log_type_enabled(v318, type[0]);
                      if (!v333)
                      {
                        if (!v334)
                        {
                          goto LABEL_634;
                        }

                        *buf = 136446210;
                        *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
                        v320 = "%{public}s called with null parameters, no backtrace";
                        goto LABEL_633;
                      }

                      if (v334)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_session_setup_for_http_messaging";
                        *&buf[12] = 2082;
                        *&buf[14] = v333;
                        _os_log_impl(&dword_181A37000, v318, v319, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v333);
                    }

LABEL_634:
                    if (v317)
                    {
                      free(v317);
                    }

                    if ((*(v29 + 276) & 0x40) != 0)
                    {
LABEL_332:
                      v208 = *(v29 + 88);
                      if (v208)
                      {
                        if ((*(v208 + 580) & 1) != 0 && (*(v29 + 276) & 2) == 0)
                        {
                          v209 = *(v208 + 440);
                          if (v209)
                          {
                            if (*(v209 + 32))
                            {
                              v210 = nw_parameters_copy_protocol_options_legacy(*(v29 + 144), v29);
                              if (v210)
                              {
                                if (((*(v29 + 276) ^ *(v209 + 276)) & 0xC) == 0)
                                {
                                  v216 = v210;
                                  nw_protocol_replace_input_handler(*(v209 + 32), v209, v29);
                                  nw_protocol_set_output_handler(v209, 0);
                                  os_release(v216);
                                  goto LABEL_369;
                                }

                                os_release(v210);
                              }

                              else if ((*(v29 + 276) & 0x10) == 0)
                              {
                                v211 = __nwlog_obj();
                                if (os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
                                {
                                  v212 = *(v29 + 88);
                                  if (v212)
                                  {
                                    v213 = *(v212 + 492);
                                  }

                                  else
                                  {
                                    v213 = -1;
                                  }

                                  v225 = *(v29 + 64);
                                  *buf = 136447234;
                                  *&buf[4] = "nw_webtransport_http3_reuse_placeholder_stream";
                                  *&buf[12] = 2082;
                                  *&buf[14] = v29 + 192;
                                  *&buf[22] = 2080;
                                  v354 = " ";
                                  *v355 = 1024;
                                  *&v355[2] = v213;
                                  *&v355[6] = 2048;
                                  *&v355[8] = v225;
                                  _os_log_impl(&dword_181A37000, v211, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Could not find options for stream when trying to reuse placeholder stream", buf, 0x30u);
                                }
                              }
                            }
                          }
                        }

LABEL_368:
                        if (!nw_protocol_add_input_handler(*(v87 + 32), v29))
                        {
LABEL_372:
                          v57 = v341;
                          if ((*(v29 + 276) & 0x10) != 0)
                          {
                            goto LABEL_379;
                          }

                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v182 = gLogObj;
                          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_379;
                          }

                          v228 = *(v29 + 88);
                          if (v228)
                          {
                            v229 = *(v228 + 492);
                          }

                          else
                          {
                            v229 = -1;
                          }

                          v230 = *(v29 + 64);
                          *buf = 136447234;
                          *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                          *&buf[12] = 2082;
                          *&buf[14] = v29 + 192;
                          *&buf[22] = 2080;
                          v354 = " ";
                          *v355 = 1024;
                          *&v355[2] = v229;
                          *&v355[6] = 2048;
                          *&v355[8] = v230;
                          v215 = "%{public}s %{public}s%s<i%u:s%llu> no http3 output handler for webtransport http3 stream";
                          goto LABEL_378;
                        }

LABEL_369:
                        if (*(v29 + 32))
                        {
                          v57 = v341;
                          if (!v72)
                          {
                            v226 = *(v29 + 176);
                            v227 = *(v87 + 416);
                            *buf = MEMORY[0x1E69E9820];
                            *&buf[8] = 0x40000000;
                            *&buf[16] = ___ZL50nw_webtransport_http3_stream_reconfigure_and_startP22nw_webtransport_streamb_block_invoke;
                            v354 = &unk_1E6A31B70;
                            *v355 = v226;
                            nw_queue_context_async(v227, buf);
                          }

                          goto LABEL_380;
                        }

                        goto LABEL_372;
                      }

                      __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_reuse_placeholder_stream";
                      v310 = _os_log_send_and_compose_impl();
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v351[0]) = 0;
                      if (__nwlog_fault(v310, type, v351))
                      {
                        if (type[0] == OS_LOG_TYPE_FAULT)
                        {
                          v311 = __nwlog_obj();
                          v312 = type[0];
                          if (!os_log_type_enabled(v311, type[0]))
                          {
                            goto LABEL_626;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http3_reuse_placeholder_stream";
                          v313 = "%{public}s called with null webtransport_session";
                          goto LABEL_625;
                        }

                        if (LOBYTE(v351[0]) != 1)
                        {
                          v311 = __nwlog_obj();
                          v312 = type[0];
                          if (!os_log_type_enabled(v311, type[0]))
                          {
                            goto LABEL_626;
                          }

                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http3_reuse_placeholder_stream";
                          v313 = "%{public}s called with null webtransport_session, backtrace limit exceeded";
                          goto LABEL_625;
                        }

                        v325 = __nw_create_backtrace_string();
                        v311 = __nwlog_obj();
                        v312 = type[0];
                        v326 = os_log_type_enabled(v311, type[0]);
                        if (v325)
                        {
                          if (v326)
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_webtransport_http3_reuse_placeholder_stream";
                            *&buf[12] = 2082;
                            *&buf[14] = v325;
                            _os_log_impl(&dword_181A37000, v311, v312, "%{public}s called with null webtransport_session, dumping backtrace:%{public}s", buf, 0x16u);
                          }

                          free(v325);
                          goto LABEL_626;
                        }

                        if (v326)
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_webtransport_http3_reuse_placeholder_stream";
                          v313 = "%{public}s called with null webtransport_session, no backtrace";
LABEL_625:
                          _os_log_impl(&dword_181A37000, v311, v312, v313, buf, 0xCu);
                        }
                      }

LABEL_626:
                      if (v310)
                      {
                        free(v310);
                      }

                      goto LABEL_368;
                    }

LABEL_331:
                    nw_webtransport_http3_stream_fix_http_parameters(v87, v29);
                    goto LABEL_332;
                  }

                  if ((*(v29 + 276) & 0x10) == 0)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v130 = gLogObj;
                    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                    {
                      v131 = *(v29 + 88);
                      if (v131)
                      {
                        v132 = *(v131 + 492);
                      }

                      else
                      {
                        v132 = -1;
                      }

                      v152 = *(v29 + 64);
                      *buf = 136447234;
                      *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                      *&buf[12] = 2082;
                      *&buf[14] = v29 + 192;
                      *&buf[22] = 2080;
                      v354 = " ";
                      *v355 = 1024;
                      *&v355[2] = v132;
                      *&v355[6] = 2048;
                      *&v355[8] = v152;
                      _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Preemptively configuring metadata with incoming stream ID", buf, 0x30u);
                    }
                  }

                  if (*(v87 + 176) != -1)
                  {
                    if (*(v29 + 64) == -1)
                    {
                      v162 = *(v29 + 88);
                      v163 = *(v162 + 176);
                      if (v163 == -1)
                      {
                        if ((*(v29 + 276) & 0x10) == 0)
                        {
                          v186 = __nwlog_obj();
                          v187 = os_log_type_enabled(v186, OS_LOG_TYPE_ERROR);
                          v162 = *(v29 + 88);
                          if (v187)
                          {
                            if (v162)
                            {
                              v188 = *(v162 + 492);
                            }

                            else
                            {
                              v188 = -1;
                            }

                            v218 = *(v29 + 64);
                            *buf = 136447234;
                            *&buf[4] = "nw_webtransport_http3_stream_assign_stream_id";
                            *&buf[12] = 2082;
                            *&buf[14] = v29 + 192;
                            *&buf[22] = 2080;
                            v354 = " ";
                            *v355 = 1024;
                            *&v355[2] = v188;
                            *&v355[6] = 2048;
                            *&v355[8] = v218;
                            _os_log_impl(&dword_181A37000, v186, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Failed to get stream ID for HTTP/3 webtransport stream, failing", buf, 0x30u);
                            v162 = *(v29 + 88);
                          }
                        }

                        nw_protocol_error(*(v29 + 48), v29);
                        nw_protocol_disconnect(v29, v162);
                      }

                      else
                      {
                        *(v29 + 64) = v163;
                        nw_webtransport_metadata_set_stream_id(*(v29 + 160), v163);
                        if ((*(v29 + 276) & 0x10) == 0)
                        {
                          v164 = __nwlog_obj();
                          if (os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
                          {
                            v165 = *(v29 + 88);
                            if (v165)
                            {
                              v166 = *(v165 + 492);
                            }

                            else
                            {
                              v166 = -1;
                            }

                            v217 = *(v29 + 64);
                            *buf = 136448002;
                            *&buf[4] = "nw_webtransport_http3_stream_assign_stream_id";
                            *&buf[12] = 2082;
                            *&buf[14] = v29 + 192;
                            *&buf[22] = 2080;
                            v354 = " ";
                            *v355 = 1024;
                            *&v355[2] = v166;
                            *&v355[6] = 2048;
                            *&v355[8] = v217;
                            *&v355[16] = 2048;
                            *&v355[18] = v217;
                            *&v355[26] = 2048;
                            v356 = v29;
                            v357 = 1024;
                            LODWORD(v358) = 1;
                            _os_log_impl(&dword_181A37000, v164, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> Assigned stream ID: %llu to stream with protocol %p, incoming: %u", buf, 0x4Au);
                          }
                        }
                      }
                    }

                    else if ((*(v29 + 276) & 0x10) == 0 && gLogDatapath == 1)
                    {
                      v329 = __nwlog_obj();
                      if (os_log_type_enabled(v329, OS_LOG_TYPE_DEBUG))
                      {
                        v330 = *(v29 + 88);
                        if (v330)
                        {
                          v331 = *(v330 + 492);
                        }

                        else
                        {
                          v331 = -1;
                        }

                        v338 = *(v29 + 64);
                        *buf = 136447490;
                        *&buf[4] = "nw_webtransport_http3_stream_assign_stream_id";
                        *&buf[12] = 2082;
                        *&buf[14] = v29 + 192;
                        *&buf[22] = 2080;
                        v354 = " ";
                        *v355 = 1024;
                        *&v355[2] = v331;
                        *&v355[6] = 2048;
                        *&v355[8] = v338;
                        *&v355[16] = 2048;
                        *&v355[18] = v338;
                        _os_log_impl(&dword_181A37000, v329, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Stream ID %llu already set, skipping", buf, 0x3Au);
                      }
                    }

                    v153 = *(v29 + 64);
                    v154 = *(v29 + 276);
                    if (v153 == -1)
                    {
                      if ((*(v29 + 276) & 0x10) == 0)
                      {
                        v167 = __nwlog_obj();
                        if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
                        {
                          v168 = *(v29 + 88);
                          if (v168)
                          {
                            v169 = *(v168 + 492);
                          }

                          else
                          {
                            v169 = -1;
                          }

                          v191 = *(v29 + 64);
                          *buf = 136447234;
                          *&buf[4] = "nw_webtransport_stream_configure_metadata_with_stream_id";
                          *&buf[12] = 2082;
                          *&buf[14] = v29 + 192;
                          *&buf[22] = 2080;
                          v354 = " ";
                          *v355 = 1024;
                          *&v355[2] = v169;
                          *&v355[6] = 2048;
                          *&v355[8] = v191;
                          _os_log_impl(&dword_181A37000, v167, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Not configuring webtransport stream metadata with no stream ID set", buf, 0x30u);
                        }
                      }
                    }

                    else
                    {
                      *(v29 + 276) = v154 & 0xF0 | (4 * ((v153 & 2) != 0)) | 3;
                      if ((v154 & 0x10) == 0)
                      {
                        v155 = __nwlog_obj();
                        if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
                        {
                          v156 = *(v29 + 88);
                          if (v156)
                          {
                            v157 = *(v156 + 492);
                          }

                          else
                          {
                            v157 = -1;
                          }

                          v189 = *(v29 + 64);
                          v190 = *(v29 + 276);
                          *buf = 136448002;
                          *&buf[4] = "nw_webtransport_stream_configure_metadata_with_stream_id";
                          *&buf[12] = 2082;
                          *&buf[14] = v29 + 192;
                          *&buf[22] = 2080;
                          v354 = " ";
                          *v355 = 1024;
                          *&v355[2] = v157;
                          *&v355[6] = 2048;
                          *&v355[8] = v189;
                          *&v355[16] = 1024;
                          *&v355[18] = (v190 >> 1) & 1;
                          *&v355[22] = 1024;
                          *&v355[24] = (v190 >> 3) & 1;
                          LOWORD(v356) = 1024;
                          *(&v356 + 2) = (v190 >> 2) & 1;
                          _os_log_impl(&dword_181A37000, v155, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> Configuring metadata with flags: peer_initiated: %d, datagram: %d, unidirectional: %d", buf, 0x42u);
                        }
                      }

                      nw_webtransport_metadata_set_is_peer_initiated(*(v29 + 160), (*(v29 + 276) & 2) != 0);
                      nw_webtransport_metadata_set_is_datagram(*(v29 + 160), (*(v29 + 276) & 8) != 0);
                      nw_webtransport_metadata_set_is_unidirectional(*(v29 + 160), (*(v29 + 276) & 4) != 0);
                    }

                    goto LABEL_304;
                  }

                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                  v158 = _os_log_send_and_compose_impl();
                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v351[0]) = 0;
                  if (__nwlog_fault(v158, type, v351))
                  {
                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v159 = __nwlog_obj();
                      v160 = type[0];
                      if (!os_log_type_enabled(v159, type[0]))
                      {
                        goto LABEL_302;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                      v161 = "%{public}s Incoming stream did not have a stream ID";
                      goto LABEL_301;
                    }

                    if (LOBYTE(v351[0]) != 1)
                    {
                      v159 = __nwlog_obj();
                      v160 = type[0];
                      if (!os_log_type_enabled(v159, type[0]))
                      {
                        goto LABEL_302;
                      }

                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                      v161 = "%{public}s Incoming stream did not have a stream ID, backtrace limit exceeded";
                      goto LABEL_301;
                    }

                    v170 = __nw_create_backtrace_string();
                    v159 = __nwlog_obj();
                    v160 = type[0];
                    v171 = os_log_type_enabled(v159, type[0]);
                    if (v170)
                    {
                      if (v171)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                        *&buf[12] = 2082;
                        *&buf[14] = v170;
                        _os_log_impl(&dword_181A37000, v159, v160, "%{public}s Incoming stream did not have a stream ID, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v170);
                      goto LABEL_302;
                    }

                    if (v171)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                      v161 = "%{public}s Incoming stream did not have a stream ID, no backtrace";
LABEL_301:
                      _os_log_impl(&dword_181A37000, v159, v160, v161, buf, 0xCu);
                    }
                  }

LABEL_302:
                  if (v158)
                  {
                    free(v158);
                  }

                  goto LABEL_304;
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                v270 = _os_log_send_and_compose_impl();
                type[0] = OS_LOG_TYPE_ERROR;
                LOBYTE(v351[0]) = 0;
                if (__nwlog_fault(v270, type, v351))
                {
                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v271 = __nwlog_obj();
                    v272 = type[0];
                    if (!os_log_type_enabled(v271, type[0]))
                    {
                      goto LABEL_588;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                    v273 = "%{public}s called with null webtransport_stream";
LABEL_587:
                    _os_log_impl(&dword_181A37000, v271, v272, v273, buf, 0xCu);
                    goto LABEL_588;
                  }

                  if (LOBYTE(v351[0]) != 1)
                  {
                    v271 = __nwlog_obj();
                    v272 = type[0];
                    if (!os_log_type_enabled(v271, type[0]))
                    {
                      goto LABEL_588;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                    v273 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                    goto LABEL_587;
                  }

                  v296 = __nw_create_backtrace_string();
                  v271 = __nwlog_obj();
                  v272 = type[0];
                  v297 = os_log_type_enabled(v271, type[0]);
                  if (!v296)
                  {
                    if (!v297)
                    {
                      goto LABEL_588;
                    }

                    *buf = 136446210;
                    *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                    v273 = "%{public}s called with null webtransport_stream, no backtrace";
                    goto LABEL_587;
                  }

                  if (v297)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_http3_stream_reconfigure_and_start";
                    *&buf[12] = 2082;
                    *&buf[14] = v296;
                    _os_log_impl(&dword_181A37000, v271, v272, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v296);
                }

LABEL_588:
                if (v270)
                {
                  free(v270);
                }

                v57 = v341;
                v91 = &qword_1ED411000;
                if ((handle[145] & 2) != 0)
                {
                  return 1;
                }

                goto LABEL_382;
              }

              __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "nw_webtransport_stream_add_input_handler";
              v239 = _os_log_send_and_compose_impl();
              type[0] = OS_LOG_TYPE_ERROR;
              LOBYTE(v351[0]) = 0;
              if (__nwlog_fault(v239, type, v351))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v240 = __nwlog_obj();
                  v241 = type[0];
                  if (!os_log_type_enabled(v240, type[0]))
                  {
                    goto LABEL_551;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_stream_add_input_handler";
                  v242 = "%{public}s called with null options_protocol";
                  goto LABEL_550;
                }

                v284 = v27;
                if (LOBYTE(v351[0]) != 1)
                {
                  v240 = __nwlog_obj();
                  v241 = type[0];
                  if (!os_log_type_enabled(v240, type[0]))
                  {
                    goto LABEL_551;
                  }

                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_stream_add_input_handler";
                  v242 = "%{public}s called with null options_protocol, backtrace limit exceeded";
                  goto LABEL_550;
                }

                v285 = __nw_create_backtrace_string();
                v240 = __nwlog_obj();
                v241 = type[0];
                v286 = os_log_type_enabled(v240, type[0]);
                if (v285)
                {
                  if (v286)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_stream_add_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = v285;
                    _os_log_impl(&dword_181A37000, v240, v241, "%{public}s called with null options_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v285);
                  v27 = v284;
                  goto LABEL_551;
                }

                v27 = v284;
                if (v286)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_stream_add_input_handler";
                  v242 = "%{public}s called with null options_protocol, no backtrace";
LABEL_550:
                  _os_log_impl(&dword_181A37000, v240, v241, v242, buf, 0xCu);
                }
              }

LABEL_551:
              if (v239)
              {
                free(v239);
              }

              goto LABEL_78;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            *buf = 136446210;
            *&buf[4] = "nw_webtransport_stream_add_input_handler";
            v31 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v351[0]) = 0;
            if (__nwlog_fault(v31, type, v351))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v32 = gLogObj;
                v33 = type[0];
                if (os_log_type_enabled(gLogObj, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_stream_add_input_handler";
                  v34 = "%{public}s called with null webtransport_stream";
LABEL_91:
                  v65 = v32;
                  v66 = v33;
LABEL_92:
                  _os_log_impl(&dword_181A37000, v65, v66, v34, buf, 0xCu);
                }
              }

              else if (LOBYTE(v351[0]) == 1)
              {
                v61 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v62 = gLogObj;
                v63 = type[0];
                v64 = os_log_type_enabled(gLogObj, type[0]);
                if (v61)
                {
                  if (v64)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_webtransport_stream_add_input_handler";
                    *&buf[12] = 2082;
                    *&buf[14] = v61;
                    _os_log_impl(&dword_181A37000, v62, v63, "%{public}s called with null webtransport_stream, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v61);
                  goto LABEL_93;
                }

                if (v64)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_stream_add_input_handler";
                  v34 = "%{public}s called with null webtransport_stream, no backtrace";
                  v65 = v62;
                  v66 = v63;
                  goto LABEL_92;
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v32 = gLogObj;
                v33 = type[0];
                if (os_log_type_enabled(gLogObj, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_webtransport_stream_add_input_handler";
                  v34 = "%{public}s called with null webtransport_stream, backtrace limit exceeded";
                  goto LABEL_91;
                }
              }
            }

LABEL_93:
            if (v31)
            {
              free(v31);
            }

            v29 = 0;
            v57 = v341;
            v27 = 0;
LABEL_96:
            if (*(handle + 6))
            {
              goto LABEL_102;
            }

            goto LABEL_97;
          }

LABEL_15:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v16 = handle[123];
            *buf = 136447490;
            *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = handle + 124;
            *&buf[22] = 2080;
            v354 = " ";
            *v355 = 1024;
            *&v355[2] = v16;
            *&v355[6] = 1024;
            *&v355[8] = v16;
            *&v355[12] = 1024;
            *&v355[14] = top_id;
            _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> created WebTransport session and assigned instance ID: %u from C%u", buf, 0x32u);
          }

          goto LABEL_17;
        }

        v261 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_options_get_top_id";
        v262 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v351[0]) = 0;
        v263 = v262;
        if (!__nwlog_fault(v262, type, v351))
        {
LABEL_575:
          if (v263)
          {
            free(v263);
          }

          top_id = 0;
          if ((handle[145] & 2) != 0)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v264 = __nwlog_obj();
          v265 = type[0];
          if (os_log_type_enabled(v264, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_options_get_top_id";
            _os_log_impl(&dword_181A37000, v264, v265, "%{public}s called with null options", buf, 0xCu);
          }
        }

        else
        {
          if (LOBYTE(v351[0]) == 1)
          {
            v291 = __nw_create_backtrace_string();
            v292 = __nwlog_obj();
            v339 = type[0];
            v293 = os_log_type_enabled(v292, type[0]);
            if (v291)
            {
              if (v293)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_options_get_top_id";
                *&buf[12] = 2082;
                *&buf[14] = v291;
                _os_log_impl(&dword_181A37000, v292, v339, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v291);
            }

            else
            {
              if (v293)
              {
                *buf = 136446210;
                *&buf[4] = "nw_protocol_options_get_top_id";
                _os_log_impl(&dword_181A37000, v292, v339, "%{public}s called with null options, no backtrace", buf, 0xCu);
              }
            }

            goto LABEL_574;
          }

          v264 = __nwlog_obj();
          v309 = type[0];
          if (os_log_type_enabled(v264, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_options_get_top_id";
            _os_log_impl(&dword_181A37000, v264, v309, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
          }
        }

LABEL_574:
        v263 = v262;
        goto LABEL_575;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      v219 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v351[0]) = 0;
      if (!__nwlog_fault(v219, type, v351))
      {
LABEL_526:
        if (v219)
        {
          free(v219);
        }

        return 0;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v220 = __nwlog_obj();
        v221 = type[0];
        if (!os_log_type_enabled(v220, type[0]))
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v222 = "%{public}s called with null remote_endpoint";
        goto LABEL_525;
      }

      if (LOBYTE(v351[0]) != 1)
      {
        v220 = __nwlog_obj();
        v221 = type[0];
        if (!os_log_type_enabled(v220, type[0]))
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v222 = "%{public}s called with null remote_endpoint, backtrace limit exceeded";
        goto LABEL_525;
      }

      backtrace_string = __nw_create_backtrace_string();
      v220 = __nwlog_obj();
      v221 = type[0];
      v257 = os_log_type_enabled(v220, type[0]);
      if (!backtrace_string)
      {
        if (!v257)
        {
          goto LABEL_526;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        v222 = "%{public}s called with null remote_endpoint, no backtrace";
        goto LABEL_525;
      }

      if (v257)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v236 = "%{public}s called with null remote_endpoint, dumping backtrace:%{public}s";
        goto LABEL_437;
      }

LABEL_438:
      free(backtrace_string);
      goto LABEL_526;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    v219 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v351[0]) = 0;
    if (!__nwlog_fault(v219, type, v351))
    {
      goto LABEL_526;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v220 = __nwlog_obj();
      v221 = type[0];
      if (!os_log_type_enabled(v220, type[0]))
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      v222 = "%{public}s called with null parameters";
      goto LABEL_525;
    }

    if (LOBYTE(v351[0]) != 1)
    {
      v220 = __nwlog_obj();
      v221 = type[0];
      if (!os_log_type_enabled(v220, type[0]))
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      v222 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_525;
    }

    backtrace_string = __nw_create_backtrace_string();
    v220 = __nwlog_obj();
    v221 = type[0];
    v256 = os_log_type_enabled(v220, type[0]);
    if (!backtrace_string)
    {
      if (!v256)
      {
        goto LABEL_526;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
      v222 = "%{public}s called with null parameters, no backtrace";
      goto LABEL_525;
    }

    if (!v256)
    {
      goto LABEL_438;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v236 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
LABEL_437:
    _os_log_impl(&dword_181A37000, v220, v221, v236, buf, 0x16u);
    goto LABEL_438;
  }

  if ((handle[145] & 2) != 0)
  {
    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
  if (result)
  {
    v7 = handle[123];
    *buf = 136446978;
    *&buf[4] = "nw_protocol_webtransport_session_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = handle + 124;
    *&buf[22] = 2080;
    v354 = " ";
    *v355 = 1024;
    *&v355[2] = v7;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> cannot add input handler to closed session", buf, 0x26u);
    return 0;
  }

  return result;
}
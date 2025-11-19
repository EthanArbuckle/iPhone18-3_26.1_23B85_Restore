void sub_18268CBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZL26nw_http_connect_send_bytesP24nw_protocol_http_connectPKhj_block_invoke(uint64_t a1, uint64_t a2)
{
  nw_frame_finalize(a2);
  ++*(*(*(a1 + 32) + 8) + 24);
  return 1;
}

uint64_t nw_protocol_http_connect_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v22 = a1;
    v23 = __nwlog_obj();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    a1 = v22;
    if (v24)
    {
      *buf = 136446210;
      v34 = "nw_protocol_http_connect_finalize_output_frames";
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      a1 = v22;
    }
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_protocol_http_connect_finalize_output_frames";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v8, &type, &v31))
    {
      goto LABEL_27;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v34 = "nw_protocol_http_connect_finalize_output_frames";
      v11 = "%{public}s called with null protocol";
      goto LABEL_71;
    }

    if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type;
      v29 = os_log_type_enabled(v25, type);
      if (backtrace_string)
      {
        if (!v29)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v34 = "nw_protocol_http_connect_finalize_output_frames";
        v35 = 2082;
        v36 = backtrace_string;
        v14 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
        goto LABEL_58;
      }

      if (!v29)
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v34 = "nw_protocol_http_connect_finalize_output_frames";
      v11 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v34 = "nw_protocol_http_connect_finalize_output_frames";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_71:
    v18 = v25;
    v19 = v26;
    v20 = 12;
    goto LABEL_26;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_protocol_http_connect_finalize_output_frames";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v8, &type, &v31))
    {
      goto LABEL_27;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v34 = "nw_protocol_http_connect_finalize_output_frames";
      v11 = "%{public}s called with null http_connect";
      goto LABEL_71;
    }

    if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type;
      v30 = os_log_type_enabled(v25, type);
      if (backtrace_string)
      {
        if (!v30)
        {
          goto LABEL_19;
        }

        *buf = 136446466;
        v34 = "nw_protocol_http_connect_finalize_output_frames";
        v35 = 2082;
        v36 = backtrace_string;
        v14 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
LABEL_58:
        v15 = v25;
        v16 = v26;
        v17 = 22;
        goto LABEL_18;
      }

      if (!v30)
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v34 = "nw_protocol_http_connect_finalize_output_frames";
      v11 = "%{public}s called with null http_connect, no backtrace";
    }

    else
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_27;
      }

      *buf = 136446210;
      v34 = "nw_protocol_http_connect_finalize_output_frames";
      v11 = "%{public}s called with null http_connect, backtrace limit exceeded";
    }

    goto LABEL_71;
  }

  if (*(handle + 70) != 2)
  {
    if ((handle[184] & 0x80) != 0)
    {
      return 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = (handle + 142);
    *buf = 136446722;
    v34 = "nw_protocol_http_connect_finalize_output_frames";
    v35 = 2082;
    v36 = (handle + 142);
    v37 = 2080;
    v38 = " ";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v8, &type, &v31))
    {
      goto LABEL_27;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_27;
      }

      *buf = 136446722;
      v34 = "nw_protocol_http_connect_finalize_output_frames";
      v35 = 2082;
      v36 = v7;
      v37 = 2080;
      v38 = " ";
      v11 = "%{public}s %{public}s%sCannot finalize output frames when not connected";
      goto LABEL_25;
    }

    if (v31 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_27;
      }

      *buf = 136446722;
      v34 = "nw_protocol_http_connect_finalize_output_frames";
      v35 = 2082;
      v36 = v7;
      v37 = 2080;
      v38 = " ";
      v11 = "%{public}s %{public}s%sCannot finalize output frames when not connected, backtrace limit exceeded";
      goto LABEL_25;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    v13 = os_log_type_enabled(gLogObj, type);
    if (!backtrace_string)
    {
      if (!v13)
      {
        goto LABEL_27;
      }

      *buf = 136446722;
      v34 = "nw_protocol_http_connect_finalize_output_frames";
      v35 = 2082;
      v36 = v7;
      v37 = 2080;
      v38 = " ";
      v11 = "%{public}s %{public}s%sCannot finalize output frames when not connected, no backtrace";
      goto LABEL_25;
    }

    if (v13)
    {
      *buf = 136446978;
      v34 = "nw_protocol_http_connect_finalize_output_frames";
      v35 = 2082;
      v36 = v7;
      v37 = 2080;
      v38 = " ";
      v39 = 2082;
      v40 = backtrace_string;
      v14 = "%{public}s %{public}s%sCannot finalize output frames when not connected, dumping backtrace:%{public}s";
      v15 = v9;
      v16 = v10;
      v17 = 42;
LABEL_18:
      _os_log_impl(&dword_181A37000, v15, v16, v14, buf, v17);
    }

LABEL_19:
    free(backtrace_string);
    if (!v8)
    {
      return 0;
    }

    goto LABEL_28;
  }

  v3 = *(handle + 7);
  if (v3)
  {
    v4 = *(v3 + 24);
    if (v4)
    {
      v5 = *(v4 + 96);
      if (v5)
      {
        return v5();
      }
    }
  }

  if ((handle[184] & 0x80) != 0)
  {
    return 0;
  }

  __nwlog_obj();
  v21 = (handle + 142);
  *buf = 136446722;
  v34 = "nw_protocol_http_connect_finalize_output_frames";
  v35 = 2082;
  v36 = (handle + 142);
  v37 = 2080;
  v38 = " ";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (__nwlog_fault(v8, &type, &v31))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446722;
        v34 = "nw_protocol_http_connect_finalize_output_frames";
        v35 = 2082;
        v36 = v21;
        v37 = 2080;
        v38 = " ";
        v11 = "%{public}s %{public}s%sOutput handler has invalid finalize_output_frames callback";
LABEL_25:
        v18 = v9;
        v19 = v10;
        v20 = 32;
LABEL_26:
        _os_log_impl(&dword_181A37000, v18, v19, v11, buf, v20);
      }
    }

    else if (v31 == 1)
    {
      v27 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v28 = os_log_type_enabled(v9, type);
      if (v27)
      {
        if (v28)
        {
          *buf = 136446978;
          v34 = "nw_protocol_http_connect_finalize_output_frames";
          v35 = 2082;
          v36 = v21;
          v37 = 2080;
          v38 = " ";
          v39 = 2082;
          v40 = v27;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s %{public}s%sOutput handler has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v27);
      }

      else if (v28)
      {
        *buf = 136446722;
        v34 = "nw_protocol_http_connect_finalize_output_frames";
        v35 = 2082;
        v36 = v21;
        v37 = 2080;
        v38 = " ";
        v11 = "%{public}s %{public}s%sOutput handler has invalid finalize_output_frames callback, no backtrace";
        goto LABEL_25;
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446722;
        v34 = "nw_protocol_http_connect_finalize_output_frames";
        v35 = 2082;
        v36 = v21;
        v37 = 2080;
        v38 = " ";
        v11 = "%{public}s %{public}s%sOutput handler has invalid finalize_output_frames callback, backtrace limit exceeded";
        goto LABEL_25;
      }
    }
  }

LABEL_27:
  if (v8)
  {
LABEL_28:
    free(v8);
  }

  return 0;
}

uint64_t nw_protocol_http_connect_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v29 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v12 = __nwlog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v24 = "nw_protocol_http_connect_get_output_frames";
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_http_connect_get_output_frames";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
    {
      goto LABEL_43;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v21 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (!os_log_type_enabled(v14, type))
        {
          goto LABEL_43;
        }

        *buf = 136446210;
        v24 = "nw_protocol_http_connect_get_output_frames";
        v16 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_42;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v18 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (!v18)
        {
          goto LABEL_43;
        }

        *buf = 136446210;
        v24 = "nw_protocol_http_connect_get_output_frames";
        v16 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_42;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_protocol_http_connect_get_output_frames";
        v25 = 2082;
        v26 = backtrace_string;
        v19 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_32:
        _os_log_impl(&dword_181A37000, v14, v15, v19, buf, 0x16u);
      }

LABEL_33:
      free(backtrace_string);
      goto LABEL_43;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_43;
    }

    *buf = 136446210;
    v24 = "nw_protocol_http_connect_get_output_frames";
    v16 = "%{public}s called with null protocol";
LABEL_42:
    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
LABEL_43:
    if (v13)
    {
      free(v13);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_protocol_http_connect_get_output_frames";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v13, &type, &v21))
    {
      goto LABEL_43;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v24 = "nw_protocol_http_connect_get_output_frames";
      v16 = "%{public}s called with null http_connect";
      goto LABEL_42;
    }

    if (v21 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v24 = "nw_protocol_http_connect_get_output_frames";
      v16 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_42;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v20 = os_log_type_enabled(v14, type);
    if (backtrace_string)
    {
      if (v20)
      {
        *buf = 136446466;
        v24 = "nw_protocol_http_connect_get_output_frames";
        v25 = 2082;
        v26 = backtrace_string;
        v19 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (!v20)
    {
      goto LABEL_43;
    }

    *buf = 136446210;
    v24 = "nw_protocol_http_connect_get_output_frames";
    v16 = "%{public}s called with null http_connect, no backtrace";
    goto LABEL_42;
  }

  if (*(handle + 70) == 2)
  {
    result = handle[7];
    if (!result)
    {
      return result;
    }

    v9 = *(result + 24);
    if (v9)
    {
      v10 = *(v9 + 88);
      if (v10)
      {
        return v10();
      }
    }
  }

  else if ((handle[46] & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    *buf = 136446722;
    v24 = "nw_protocol_http_connect_get_output_frames";
    v25 = 2082;
    v26 = handle + 284;
    v27 = 2080;
    v28 = " ";
    _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNot yet connected, returning 0 output frames", buf, 0x20u);
  }

  return 0;
}

uint64_t nw_protocol_http_connect_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v53 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v30 = a1;
    v31 = __nwlog_obj();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
    a1 = v30;
    if (v32)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_connect_get_input_frames";
      _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      a1 = v30;
    }
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_connect_get_input_frames";
    v33 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v33, &type, &v42))
    {
      goto LABEL_79;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v42 != 1)
      {
        v34 = __nwlog_obj();
        v35 = type;
        if (!os_log_type_enabled(v34, type))
        {
          goto LABEL_79;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_connect_get_input_frames";
        v36 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_78;
      }

      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v35 = type;
      v38 = os_log_type_enabled(v34, type);
      if (!backtrace_string)
      {
        if (!v38)
        {
          goto LABEL_79;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_connect_get_input_frames";
        v36 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_78;
      }

      if (v38)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http_connect_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v39 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_66:
        _os_log_impl(&dword_181A37000, v34, v35, v39, buf, 0x16u);
      }

LABEL_67:
      free(backtrace_string);
      goto LABEL_79;
    }

    v34 = __nwlog_obj();
    v35 = type;
    if (!os_log_type_enabled(v34, type))
    {
      goto LABEL_79;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_connect_get_input_frames";
    v36 = "%{public}s called with null protocol";
LABEL_78:
    _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
LABEL_79:
    if (v33)
    {
      free(v33);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_connect_get_input_frames";
    v33 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v33, &type, &v42))
    {
      goto LABEL_79;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_79;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_connect_get_input_frames";
      v36 = "%{public}s called with null http_connect";
      goto LABEL_78;
    }

    if (v42 != 1)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_79;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_connect_get_input_frames";
      v36 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_78;
    }

    backtrace_string = __nw_create_backtrace_string();
    v34 = __nwlog_obj();
    v35 = type;
    v40 = os_log_type_enabled(v34, type);
    if (backtrace_string)
    {
      if (v40)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http_connect_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v39 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    if (!v40)
    {
      goto LABEL_79;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_connect_get_input_frames";
    v36 = "%{public}s called with null http_connect, no backtrace";
    goto LABEL_78;
  }

  if (*(handle + 70) != 2)
  {
    if ((*(handle + 184) & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_connect_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        v45 = 2080;
        v46 = " ";
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNot yet connected, returning 0 input frames", buf, 0x20u);
      }
    }

    return 0;
  }

  v10 = *(handle + 28);
  if (!v10)
  {
    goto LABEL_33;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    if (nw_frame_unclaimed_length(v10) + v11 > a4 || v12 > a5)
    {
      break;
    }

    v13 = (v10 + 32);
    v14 = *(v10 + 32);
    v15 = *(v10 + 40);
    v16 = (v14 + 40);
    if (!v14)
    {
      v16 = handle + 232;
    }

    *v16 = v15;
    *v15 = v14;
    *(v10 + 40) = 0;
    *v13 = 0;
    tqh_last = a6->tqh_last;
    *(v10 + 40) = tqh_last;
    *tqh_last = v10;
    a6->tqh_last = v13;
    v11 += nw_frame_unclaimed_length(v10);
    v12 = (v12 + 1);
    v10 = *(handle + 28);
  }

  while (v10);
  if ((*(handle + 184) & 0x80) == 0 && gLogDatapath == 1)
  {
    v41 = __nwlog_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136447234;
      *&buf[4] = "nw_protocol_http_connect_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = handle + 284;
      v45 = 2080;
      v46 = " ";
      v47 = 1024;
      *v48 = v12;
      *&v48[4] = 1024;
      *&v48[6] = v11;
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sAdding %u frames (%u bytes) from read_frames", buf, 0x2Cu);
    }
  }

  if (v10)
  {
    if ((*(handle + 184) & 0x80) == 0 && gLogDatapath == 1)
    {
      v18 = __nwlog_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136447746;
        *&buf[4] = "nw_protocol_http_connect_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        v45 = 2080;
        v46 = " ";
        v47 = 1024;
        *v48 = a4;
        *&v48[4] = 1024;
        *&v48[6] = a5;
        v49 = 1024;
        v50 = v12;
        v51 = 1024;
        v52 = v11;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sHit maximum (%u bytes, %u frames), returning %u frames (%u bytes)", buf, 0x38u);
      }
    }

    return v12;
  }

  if (v11 > a4)
  {
    if ((*(handle + 184) & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447234;
        *&buf[4] = "nw_protocol_http_connect_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        v45 = 2080;
        v46 = " ";
        v47 = 1024;
        *v48 = v11;
        *&v48[4] = 1024;
        *&v48[6] = a4;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sAbout to read from below when above maximum bytes (%u bytes > %u bytes)", buf, 0x2Cu);
      }
    }

    if ((*(handle + 184) & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446722;
      *&buf[4] = "nw_protocol_http_connect_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = handle + 284;
      v45 = 2080;
      v46 = " ";
      v21 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v42 = 0;
      if (!__nwlog_fault(v21, &type, &v42))
      {
        goto LABEL_46;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_46;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_connect_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        v45 = 2080;
        v46 = " ";
        v24 = "%{public}s %{public}s%sAbout to read from below when above maximum bytes";
      }

      else if (v42 == 1)
      {
        v28 = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v23 = type;
        v29 = os_log_type_enabled(v22, type);
        if (v28)
        {
          if (v29)
          {
            *buf = 136446978;
            *&buf[4] = "nw_protocol_http_connect_get_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = handle + 284;
            v45 = 2080;
            v46 = " ";
            v47 = 2082;
            *v48 = v28;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s %{public}s%sAbout to read from below when above maximum bytes, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v28);
          goto LABEL_46;
        }

        if (!v29)
        {
LABEL_46:
          if (v21)
          {
            free(v21);
          }

          return v12;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_connect_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        v45 = 2080;
        v46 = " ";
        v24 = "%{public}s %{public}s%sAbout to read from below when above maximum bytes, no backtrace";
      }

      else
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (!os_log_type_enabled(v22, type))
        {
          goto LABEL_46;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_connect_get_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        v45 = 2080;
        v46 = " ";
        v24 = "%{public}s %{public}s%sAbout to read from below when above maximum bytes, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0x20u);
      goto LABEL_46;
    }
  }

  else
  {
LABEL_33:
    *buf = 0;
    *&buf[8] = buf;
    v12 = (*(*(*(handle + 7) + 24) + 80))();
    if (*buf)
    {
      v25 = a6->tqh_last;
      *v25 = *buf;
      v26 = *&buf[8];
      *(*buf + 40) = v25;
      a6->tqh_last = v26;
    }
  }

  return v12;
}

void nw_protocol_http_connect_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v88 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v30 = a2;
    v31 = __nwlog_obj();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
    a2 = v30;
    if (v32)
    {
      *buf = 136446210;
      v83 = "nw_protocol_http_connect_input_finished";
      _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
      a2 = v30;
    }
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v83 = "nw_protocol_http_connect_input_finished";
    v33 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (!__nwlog_fault(v33, &type, &v80))
    {
      goto LABEL_125;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_125;
      }

      *buf = 136446210;
      v83 = "nw_protocol_http_connect_input_finished";
      v36 = "%{public}s called with null protocol";
    }

    else if (v80 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v35 = type;
      v43 = os_log_type_enabled(v34, type);
      if (backtrace_string)
      {
        if (v43)
        {
          *buf = 136446466;
          v83 = "nw_protocol_http_connect_input_finished";
          v84 = 2082;
          v85 = backtrace_string;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_125:
        if (!v33)
        {
          return;
        }

        goto LABEL_126;
      }

      if (!v43)
      {
        goto LABEL_125;
      }

      *buf = 136446210;
      v83 = "nw_protocol_http_connect_input_finished";
      v36 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_125;
      }

      *buf = 136446210;
      v83 = "nw_protocol_http_connect_input_finished";
      v36 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_124;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v83 = "nw_protocol_http_connect_input_finished";
    v33 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (!__nwlog_fault(v33, &type, &v80))
    {
      goto LABEL_125;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v80 != 1)
      {
        v34 = __nwlog_obj();
        v35 = type;
        if (!os_log_type_enabled(v34, type))
        {
          goto LABEL_125;
        }

        *buf = 136446210;
        v83 = "nw_protocol_http_connect_input_finished";
        v36 = "%{public}s called with null http_connect, backtrace limit exceeded";
        goto LABEL_124;
      }

      v44 = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v35 = type;
      v45 = os_log_type_enabled(v34, type);
      if (!v44)
      {
        if (!v45)
        {
          goto LABEL_125;
        }

        *buf = 136446210;
        v83 = "nw_protocol_http_connect_input_finished";
        v36 = "%{public}s called with null http_connect, no backtrace";
        goto LABEL_124;
      }

      if (v45)
      {
        *buf = 136446466;
        v83 = "nw_protocol_http_connect_input_finished";
        v84 = 2082;
        v85 = v44;
        v46 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
LABEL_74:
        _os_log_impl(&dword_181A37000, v34, v35, v46, buf, 0x16u);
      }

LABEL_75:
      free(v44);
      if (!v33)
      {
        return;
      }

LABEL_126:
      v68 = v33;
LABEL_145:
      free(v68);
      return;
    }

    v34 = __nwlog_obj();
    v35 = type;
    if (!os_log_type_enabled(v34, type))
    {
      goto LABEL_125;
    }

    *buf = 136446210;
    v83 = "nw_protocol_http_connect_input_finished";
    v36 = "%{public}s called with null http_connect";
LABEL_124:
    _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
    goto LABEL_125;
  }

  default_input_handler = a1->default_input_handler;
  if (!default_input_handler)
  {
    __nwlog_obj();
    *buf = 136446210;
    v83 = "nw_protocol_http_connect_input_finished";
    v33 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (!__nwlog_fault(v33, &type, &v80))
    {
      goto LABEL_125;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_125;
      }

      *buf = 136446210;
      v83 = "nw_protocol_http_connect_input_finished";
      v36 = "%{public}s called with null protocol->default_input_handler";
      goto LABEL_124;
    }

    if (v80 != 1)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_125;
      }

      *buf = 136446210;
      v83 = "nw_protocol_http_connect_input_finished";
      v36 = "%{public}s called with null protocol->default_input_handler, backtrace limit exceeded";
      goto LABEL_124;
    }

    v44 = __nw_create_backtrace_string();
    v34 = __nwlog_obj();
    v35 = type;
    v47 = os_log_type_enabled(v34, type);
    if (!v44)
    {
      if (!v47)
      {
        goto LABEL_125;
      }

      *buf = 136446210;
      v83 = "nw_protocol_http_connect_input_finished";
      v36 = "%{public}s called with null protocol->default_input_handler, no backtrace";
      goto LABEL_124;
    }

    if (v47)
    {
      *buf = 136446466;
      v83 = "nw_protocol_http_connect_input_finished";
      v84 = 2082;
      v85 = v44;
      v46 = "%{public}s called with null protocol->default_input_handler, dumping backtrace:%{public}s";
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (*(handle + 70) == 1)
  {
    if (a1->output_handler != a2)
    {
      callbacks = default_input_handler->callbacks;
      if (!callbacks || (input_finished = callbacks->input_finished) == 0)
      {
        __nwlog_obj();
        v7 = a1->default_input_handler;
        v8 = "invalid";
        if (v7)
        {
          identifier = v7->identifier;
          if (identifier)
          {
            v8 = identifier;
          }
        }

        *buf = 136446466;
        v83 = "nw_protocol_http_connect_input_finished";
        v84 = 2082;
        v85 = v8;
        v10 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v80 = 0;
        if (!__nwlog_fault(v10, &type, &v80))
        {
          goto LABEL_143;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v11 = __nwlog_obj();
          v12 = type;
          if (!os_log_type_enabled(v11, type))
          {
            goto LABEL_143;
          }

          v13 = a1->default_input_handler;
          v14 = "invalid";
          if (v13)
          {
            v15 = v13->identifier;
            if (v15)
            {
              v14 = v15;
            }
          }

LABEL_18:
          *buf = 136446466;
          v83 = "nw_protocol_http_connect_input_finished";
          v84 = 2082;
          v85 = v14;
          v16 = "%{public}s protocol %{public}s has invalid input_finished callback";
LABEL_142:
          _os_log_impl(&dword_181A37000, v11, v12, v16, buf, 0x16u);
          goto LABEL_143;
        }

        if (v80 == 1)
        {
          v53 = __nw_create_backtrace_string();
          v11 = __nwlog_obj();
          v12 = type;
          v54 = os_log_type_enabled(v11, type);
          if (v53)
          {
            if (v54)
            {
              v55 = a1->default_input_handler;
              v56 = "invalid";
              if (v55)
              {
                v57 = v55->identifier;
                if (v57)
                {
                  v56 = v57;
                }
              }

              *buf = 136446722;
              v83 = "nw_protocol_http_connect_input_finished";
              v84 = 2082;
              v85 = v56;
              v86 = 2082;
              v87 = v53;
              _os_log_impl(&dword_181A37000, v11, v12, "%{public}s protocol %{public}s has invalid input_finished callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v53);
            if (v10)
            {
              goto LABEL_144;
            }

            return;
          }

          if (v54)
          {
            v75 = a1->default_input_handler;
            v70 = "invalid";
            if (v75)
            {
              v76 = v75->identifier;
              if (v76)
              {
                v70 = v76;
              }
            }

LABEL_141:
            *buf = 136446466;
            v83 = "nw_protocol_http_connect_input_finished";
            v84 = 2082;
            v85 = v70;
            v16 = "%{public}s protocol %{public}s has invalid input_finished callback, no backtrace";
            goto LABEL_142;
          }

          goto LABEL_143;
        }

        v11 = __nwlog_obj();
        v12 = type;
        if (!os_log_type_enabled(v11, type))
        {
          goto LABEL_143;
        }

        v61 = a1->default_input_handler;
        v59 = "invalid";
        if (v61)
        {
          v62 = v61->identifier;
          if (v62)
          {
            v59 = v62;
          }
        }

LABEL_104:
        *buf = 136446466;
        v83 = "nw_protocol_http_connect_input_finished";
        v84 = 2082;
        v85 = v59;
        v16 = "%{public}s protocol %{public}s has invalid input_finished callback, backtrace limit exceeded";
        goto LABEL_142;
      }

LABEL_21:
      input_finished();
      return;
    }

    handle[184] = handle[184] & 0xFFC7 | 0x20;
    if (nw_http_connect_restart_after_disconnect(handle))
    {
      return;
    }

    v18 = a1->default_input_handler;
    if (v18)
    {
      v19 = v18->callbacks;
      if (v19)
      {
        input_finished = v19->disconnected;
        if (input_finished)
        {
          goto LABEL_21;
        }
      }
    }

    __nwlog_obj();
    v20 = a1->default_input_handler;
    v21 = "invalid";
    if (v20)
    {
      v22 = v20->identifier;
      if (v22)
      {
        v21 = v22;
      }
    }

    *buf = 136446466;
    v83 = "nw_protocol_http_connect_input_finished";
    v84 = 2082;
    v85 = v21;
    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    v23 = _os_log_send_and_compose_impl();
    if (__nwlog_fault(v23, &type, &v80))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (!os_log_type_enabled(v24, type))
        {
          goto LABEL_152;
        }

        v26 = a1->default_input_handler;
        v27 = "invalid";
        if (v26)
        {
          v28 = v26->identifier;
          if (v28)
          {
            v27 = v28;
          }
        }

        *buf = 136446466;
        v83 = "nw_protocol_http_connect_input_finished";
        v84 = 2082;
        v85 = v27;
        v29 = "%{public}s protocol %{public}s has invalid disconnected callback";
LABEL_151:
        _os_log_impl(&dword_181A37000, v24, v25, v29, buf, 0x16u);
        goto LABEL_152;
      }

      if (v80 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (!os_log_type_enabled(v24, type))
        {
          goto LABEL_152;
        }

        v72 = a1->default_input_handler;
        v73 = "invalid";
        if (v72)
        {
          v74 = v72->identifier;
          if (v74)
          {
            v73 = v74;
          }
        }

        *buf = 136446466;
        v83 = "nw_protocol_http_connect_input_finished";
        v84 = 2082;
        v85 = v73;
        v29 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
        goto LABEL_151;
      }

      v63 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v64 = os_log_type_enabled(v24, type);
      if (!v63)
      {
        if (!v64)
        {
          goto LABEL_152;
        }

        v77 = a1->default_input_handler;
        v78 = "invalid";
        if (v77)
        {
          v79 = v77->identifier;
          if (v79)
          {
            v78 = v79;
          }
        }

        *buf = 136446466;
        v83 = "nw_protocol_http_connect_input_finished";
        v84 = 2082;
        v85 = v78;
        v29 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
        goto LABEL_151;
      }

      if (v64)
      {
        v65 = a1->default_input_handler;
        v66 = "invalid";
        if (v65)
        {
          v67 = v65->identifier;
          if (v67)
          {
            v66 = v67;
          }
        }

        *buf = 136446722;
        v83 = "nw_protocol_http_connect_input_finished";
        v84 = 2082;
        v85 = v66;
        v86 = 2082;
        v87 = v63;
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v63);
    }

LABEL_152:
    if (v23)
    {
      v68 = v23;
      goto LABEL_145;
    }

    return;
  }

  v17 = default_input_handler->callbacks;
  if (v17)
  {
    input_finished = v17->input_finished;
    if (input_finished)
    {
      goto LABEL_21;
    }
  }

  __nwlog_obj();
  v37 = a1->default_input_handler;
  v38 = "invalid";
  if (v37)
  {
    v39 = v37->identifier;
    if (v39)
    {
      v38 = v39;
    }
  }

  *buf = 136446466;
  v83 = "nw_protocol_http_connect_input_finished";
  v84 = 2082;
  v85 = v38;
  v10 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v80 = 0;
  if (!__nwlog_fault(v10, &type, &v80))
  {
    goto LABEL_143;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_143;
    }

    v40 = a1->default_input_handler;
    v14 = "invalid";
    if (v40)
    {
      v41 = v40->identifier;
      if (v41)
      {
        v14 = v41;
      }
    }

    goto LABEL_18;
  }

  if (v80 != 1)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_143;
    }

    v58 = a1->default_input_handler;
    v59 = "invalid";
    if (v58)
    {
      v60 = v58->identifier;
      if (v60)
      {
        v59 = v60;
      }
    }

    goto LABEL_104;
  }

  v48 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v12 = type;
  v49 = os_log_type_enabled(v11, type);
  if (!v48)
  {
    if (!v49)
    {
      goto LABEL_143;
    }

    v69 = a1->default_input_handler;
    v70 = "invalid";
    if (v69)
    {
      v71 = v69->identifier;
      if (v71)
      {
        v70 = v71;
      }
    }

    goto LABEL_141;
  }

  if (v49)
  {
    v50 = a1->default_input_handler;
    v51 = "invalid";
    if (v50)
    {
      v52 = v50->identifier;
      if (v52)
      {
        v51 = v52;
      }
    }

    *buf = 136446722;
    v83 = "nw_protocol_http_connect_input_finished";
    v84 = 2082;
    v85 = v51;
    v86 = 2082;
    v87 = v48;
    _os_log_impl(&dword_181A37000, v11, v12, "%{public}s protocol %{public}s has invalid input_finished callback, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v48);
LABEL_143:
  if (v10)
  {
LABEL_144:
    v68 = v10;
    goto LABEL_145;
  }
}

void nw_protocol_http_connect_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v175 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v88 = __nwlog_obj();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_connect_input_available";
    v8 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v173[0] = 0;
    if (!__nwlog_fault(v8, type, v173))
    {
      goto LABEL_270;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v89 = __nwlog_obj();
      v90 = type[0];
      if (!os_log_type_enabled(v89, type[0]))
      {
        goto LABEL_270;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      v11 = "%{public}s called with null protocol";
    }

    else if (v173[0] == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v89 = __nwlog_obj();
      v90 = type[0];
      v94 = os_log_type_enabled(v89, type[0]);
      if (backtrace_string)
      {
        if (v94)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http_connect_input_available";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v89, v90, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_270;
      }

      if (!v94)
      {
        goto LABEL_270;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      v11 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v89 = __nwlog_obj();
      v90 = type[0];
      if (!os_log_type_enabled(v89, type[0]))
      {
        goto LABEL_270;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_277;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_connect_input_available";
    v8 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v173[0] = 0;
    if (!__nwlog_fault(v8, type, v173))
    {
      goto LABEL_270;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v89 = __nwlog_obj();
      v90 = type[0];
      if (!os_log_type_enabled(v89, type[0]))
      {
        goto LABEL_270;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      v11 = "%{public}s called with null http_connect";
      goto LABEL_277;
    }

    if (v173[0] != 1)
    {
      v89 = __nwlog_obj();
      v90 = type[0];
      if (!os_log_type_enabled(v89, type[0]))
      {
        goto LABEL_270;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      v11 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_277;
    }

    v29 = __nw_create_backtrace_string();
    v89 = __nwlog_obj();
    v90 = type[0];
    v95 = os_log_type_enabled(v89, type[0]);
    if (!v29)
    {
      if (!v95)
      {
        goto LABEL_270;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      v11 = "%{public}s called with null http_connect, no backtrace";
      goto LABEL_277;
    }

    if (!v95)
    {
      goto LABEL_99;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http_connect_input_available";
    *&buf[12] = 2082;
    *&buf[14] = v29;
    v31 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
LABEL_250:
    v41 = v89;
    v42 = v90;
    v43 = 22;
    goto LABEL_98;
  }

  default_input_handler = a1->default_input_handler;
  if (!default_input_handler)
  {
    if ((*(handle + 184) & 0x80) != 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    *&buf[4] = "nw_protocol_http_connect_input_available";
    *&buf[12] = 2082;
    *&buf[14] = handle + 284;
    *&buf[22] = 2080;
    v171 = " ";
    v8 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v173[0] = 0;
    if (!__nwlog_fault(v8, type, v173))
    {
      goto LABEL_270;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_270;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      *&buf[12] = 2082;
      *&buf[14] = handle + 284;
      *&buf[22] = 2080;
      v171 = " ";
      v11 = "%{public}s %{public}s%sNo input handler";
    }

    else
    {
      if (v173[0] == 1)
      {
        v29 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type[0];
        v30 = os_log_type_enabled(gLogObj, type[0]);
        if (!v29)
        {
          if (!v30)
          {
            goto LABEL_270;
          }

          *buf = 136446722;
          *&buf[4] = "nw_protocol_http_connect_input_available";
          *&buf[12] = 2082;
          *&buf[14] = handle + 284;
          *&buf[22] = 2080;
          v171 = " ";
          v11 = "%{public}s %{public}s%sNo input handler, no backtrace";
          goto LABEL_268;
        }

        if (!v30)
        {
          goto LABEL_99;
        }

        *buf = 136446978;
        *&buf[4] = "nw_protocol_http_connect_input_available";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        *&buf[22] = 2080;
        v171 = " ";
        LOWORD(v172) = 2082;
        *(&v172 + 2) = v29;
        v31 = "%{public}s %{public}s%sNo input handler, dumping backtrace:%{public}s";
        goto LABEL_97;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_270;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      *&buf[12] = 2082;
      *&buf[14] = handle + 284;
      *&buf[22] = 2080;
      v171 = " ";
      v11 = "%{public}s %{public}s%sNo input handler, backtrace limit exceeded";
    }

    goto LABEL_268;
  }

  callbacks = default_input_handler->callbacks;
  if (!callbacks || (input_available = callbacks->input_available) == 0)
  {
    if ((*(handle + 184) & 0x80) != 0)
    {
      return;
    }

    __nwlog_obj();
    *buf = 136446722;
    *&buf[4] = "nw_protocol_http_connect_input_available";
    *&buf[12] = 2082;
    *&buf[14] = handle + 284;
    *&buf[22] = 2080;
    v171 = " ";
    v8 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v173[0] = 0;
    if (__nwlog_fault(v8, type, v173))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (!os_log_type_enabled(v9, type[0]))
        {
          goto LABEL_270;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_connect_input_available";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        *&buf[22] = 2080;
        v171 = " ";
        v11 = "%{public}s %{public}s%sinput_handler callback invalid: input_available";
        goto LABEL_268;
      }

      if (v173[0] != 1)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (!os_log_type_enabled(v9, type[0]))
        {
          goto LABEL_270;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_connect_input_available";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        *&buf[22] = 2080;
        v171 = " ";
        v11 = "%{public}s %{public}s%sinput_handler callback invalid: input_available, backtrace limit exceeded";
        goto LABEL_268;
      }

      v29 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type[0];
      v92 = os_log_type_enabled(v9, type[0]);
      if (!v29)
      {
        if (!v92)
        {
          goto LABEL_270;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_connect_input_available";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        *&buf[22] = 2080;
        v171 = " ";
        v11 = "%{public}s %{public}s%sinput_handler callback invalid: input_available, no backtrace";
        goto LABEL_268;
      }

      if (v92)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_http_connect_input_available";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        *&buf[22] = 2080;
        v171 = " ";
        LOWORD(v172) = 2082;
        *(&v172 + 2) = v29;
        v31 = "%{public}s %{public}s%sinput_handler callback invalid: input_available, dumping backtrace:%{public}s";
        goto LABEL_97;
      }

      goto LABEL_99;
    }

    goto LABEL_270;
  }

  v7 = *(handle + 70);
  if (v7 == 3)
  {
    if ((*(handle + 184) & 0x80) != 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    *&buf[4] = "nw_protocol_http_connect_input_available";
    *&buf[12] = 2082;
    *&buf[14] = handle + 284;
    *&buf[22] = 2080;
    v171 = " ";
    v8 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v173[0] = 0;
    if (!__nwlog_fault(v8, type, v173))
    {
      goto LABEL_270;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v173[0] != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_270;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_connect_input_available";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        *&buf[22] = 2080;
        v171 = " ";
        v11 = "%{public}s %{public}s%sState is failed, backtrace limit exceeded";
        goto LABEL_268;
      }

      v29 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type[0];
      v32 = os_log_type_enabled(gLogObj, type[0]);
      if (!v29)
      {
        if (!v32)
        {
          goto LABEL_270;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_connect_input_available";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        *&buf[22] = 2080;
        v171 = " ";
        v11 = "%{public}s %{public}s%sState is failed, no backtrace";
        goto LABEL_268;
      }

      if (!v32)
      {
        goto LABEL_99;
      }

      *buf = 136446978;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      *&buf[12] = 2082;
      *&buf[14] = handle + 284;
      *&buf[22] = 2080;
      v171 = " ";
      LOWORD(v172) = 2082;
      *(&v172 + 2) = v29;
      v31 = "%{public}s %{public}s%sState is failed, dumping backtrace:%{public}s";
      goto LABEL_97;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type[0];
    if (!os_log_type_enabled(gLogObj, type[0]))
    {
      goto LABEL_270;
    }

    *buf = 136446722;
    *&buf[4] = "nw_protocol_http_connect_input_available";
    *&buf[12] = 2082;
    *&buf[14] = handle + 284;
    *&buf[22] = 2080;
    v171 = " ";
    v11 = "%{public}s %{public}s%sState is failed";
LABEL_268:
    v100 = v9;
    v101 = v10;
    v102 = 32;
LABEL_269:
    _os_log_impl(&dword_181A37000, v100, v101, v11, buf, v102);
    goto LABEL_270;
  }

  if (v7 == 2)
  {
    input_available();
    return;
  }

  output_handler = a1->output_handler;
  if ((*(handle + 184) & 0x80) == 0 && gLogDatapath == 1)
  {
    v96 = __nwlog_obj();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      *&buf[12] = 2082;
      *&buf[14] = handle + 284;
      *&buf[22] = 2080;
      v171 = " ";
      _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sNot yet connected, reading input for http connect", buf, 0x20u);
    }
  }

  if (!output_handler)
  {
    if ((*(handle + 184) & 0x80) != 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    *&buf[4] = "nw_protocol_http_connect_input_available";
    *&buf[12] = 2082;
    *&buf[14] = handle + 284;
    *&buf[22] = 2080;
    v171 = " ";
    v8 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v173[0] = 0;
    if (!__nwlog_fault(v8, type, v173))
    {
      goto LABEL_270;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_270;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      *&buf[12] = 2082;
      *&buf[14] = handle + 284;
      *&buf[22] = 2080;
      v171 = " ";
      v11 = "%{public}s %{public}s%sNo output handler";
      goto LABEL_268;
    }

    if (v173[0] != 1)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_270;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      *&buf[12] = 2082;
      *&buf[14] = handle + 284;
      *&buf[22] = 2080;
      v171 = " ";
      v11 = "%{public}s %{public}s%sNo output handler, backtrace limit exceeded";
      goto LABEL_268;
    }

    v29 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type[0];
    v39 = os_log_type_enabled(v9, type[0]);
    if (!v29)
    {
      if (!v39)
      {
        goto LABEL_270;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      *&buf[12] = 2082;
      *&buf[14] = handle + 284;
      *&buf[22] = 2080;
      v171 = " ";
      v11 = "%{public}s %{public}s%sNo output handler, no backtrace";
      goto LABEL_268;
    }

    if (!v39)
    {
      goto LABEL_99;
    }

    *buf = 136446978;
    *&buf[4] = "nw_protocol_http_connect_input_available";
    *&buf[12] = 2082;
    *&buf[14] = handle + 284;
    *&buf[22] = 2080;
    v171 = " ";
    LOWORD(v172) = 2082;
    *(&v172 + 2) = v29;
    v31 = "%{public}s %{public}s%sNo output handler, dumping backtrace:%{public}s";
LABEL_97:
    v41 = v9;
    v42 = v10;
    v43 = 42;
LABEL_98:
    _os_log_impl(&dword_181A37000, v41, v42, v31, buf, v43);
    goto LABEL_99;
  }

  v162 = 0;
  v163 = &v162;
  v161 = handle;
  if ((output_handler->callbacks->get_input_frames)(output_handler, a1, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, &v162))
  {
    v13 = 0;
    v14 = 0;
    v160 = handle + 284;
    v158 = output_handler;
    v159 = a1;
    while (1)
    {
      v15 = v162;
      if (v162)
      {
        break;
      }

LABEL_25:
      if (!(v158->callbacks->get_input_frames)(v158, v159, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, &v162))
      {
        goto LABEL_65;
      }
    }

    while (1)
    {
      v20 = v15;
      v21 = (v15 + 32);
      v15 = *(v15 + 32);
      if (v15 || *(v20 + 40))
      {
        if (!*(v20 + 112))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v15 = 0;
        if (!*(v20 + 112))
        {
          goto LABEL_42;
        }
      }

      if ((*(v20 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v20, *(v20 + 88)))
      {
LABEL_42:
        v27 = 0;
        v25 = 0;
        goto LABEL_43;
      }

      v23 = *(v20 + 52);
      v22 = *(v20 + 56);
      if (v23)
      {
        v24 = v22 + *(v20 + 60);
        v25 = *(v20 + 112) + v22;
        v26 = *(handle + 184);
        v27 = v23 - v24;
        if (v23 != v24)
        {
          v26 |= 4u;
          *(handle + 184) = v26;
        }

        goto LABEL_44;
      }

      v27 = 0;
      v25 = *(v20 + 112) + v22;
LABEL_43:
      v26 = *(handle + 184);
LABEL_44:
      if ((v26 & 0x80) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136447234;
          *&buf[4] = "nw_protocol_http_connect_input_available";
          *&buf[12] = 2082;
          *&buf[14] = v160;
          *&buf[22] = 2080;
          v171 = " ";
          LOWORD(v172) = 1024;
          *(&v172 + 2) = v27;
          WORD3(v172) = 2048;
          *(&v172 + 1) = v25;
          _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRead frame has %u bytes (%p)", buf, 0x30u);
        }
      }

      v13 += v27;
      v16 = *(v20 + 32);
      v17 = *(v20 + 40);
      v18 = (v16 + 40);
      if (!v16)
      {
        v18 = &v163;
      }

      *v18 = v17;
      *v17 = v16;
      *v21 = 0;
      v21[1] = 0;
      handle = v161;
      v19 = *(v161 + 29);
      *(v20 + 40) = v19;
      *v19 = v20;
      *(v161 + 29) = v21;
      ++v14;
      if (!v15)
      {
        goto LABEL_25;
      }
    }
  }

  v14 = 0;
  v13 = 0;
LABEL_65:
  v33 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
  if ((*(handle + 184) & 0x80) == 0 && gLogDatapath == 1)
  {
    v97 = __nwlog_obj();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      *&buf[12] = 2082;
      *&buf[14] = handle + 284;
      *&buf[22] = 2080;
      v171 = " ";
      _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sGot 0 input frames, done reading", buf, 0x20u);
    }
  }

  if ((*(handle + 184) & 0x80) == 0 && gLogDatapath == 1)
  {
    v98 = __nwlog_obj();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136447234;
      *&buf[4] = "nw_protocol_http_connect_input_available";
      *&buf[12] = 2082;
      *&buf[14] = handle + 284;
      *&buf[22] = 2080;
      v171 = " ";
      LOWORD(v172) = 1024;
      *(&v172 + 2) = v14;
      WORD3(v172) = 1024;
      DWORD2(v172) = v13;
      _os_log_impl(&dword_181A37000, v98, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sRead %u frames (%u bytes)", buf, 0x2Cu);
    }
  }

  if ((*(handle + 184) & 0x80) == 0 && gLogDatapath == 1)
  {
    v99 = __nwlog_obj();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_http_connect_process_inbound_data";
      *&buf[12] = 2082;
      *&buf[14] = handle + 284;
      *&buf[22] = 2080;
      v171 = " ";
      _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
    }
  }

  if (*(handle + 70) == 2)
  {
    if ((*(handle + 184) & 0x80) != 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    *&buf[4] = "nw_http_connect_process_inbound_data";
    *&buf[12] = 2082;
    *&buf[14] = handle + 284;
    *&buf[22] = 2080;
    v171 = " ";
    v8 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v173[0] = 0;
    if (__nwlog_fault(v8, type, v173))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_270;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_process_inbound_data";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        *&buf[22] = 2080;
        v171 = " ";
        v11 = "%{public}s %{public}s%sSkipping inbound data process, since we're already connected";
        goto LABEL_268;
      }

      if (v173[0] != 1)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (!os_log_type_enabled(v9, type[0]))
        {
          goto LABEL_270;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_process_inbound_data";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        *&buf[22] = 2080;
        v171 = " ";
        v11 = "%{public}s %{public}s%sSkipping inbound data process, since we're already connected, backtrace limit exceeded";
        goto LABEL_268;
      }

      v29 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type[0];
      v40 = os_log_type_enabled(v9, type[0]);
      if (!v29)
      {
        if (!v40)
        {
          goto LABEL_270;
        }

        *buf = 136446722;
        *&buf[4] = "nw_http_connect_process_inbound_data";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        *&buf[22] = 2080;
        v171 = " ";
        v11 = "%{public}s %{public}s%sSkipping inbound data process, since we're already connected, no backtrace";
        goto LABEL_268;
      }

      if (v40)
      {
        *buf = 136446978;
        *&buf[4] = "nw_http_connect_process_inbound_data";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        *&buf[22] = 2080;
        v171 = " ";
        LOWORD(v172) = 2082;
        *(&v172 + 2) = v29;
        v31 = "%{public}s %{public}s%sSkipping inbound data process, since we're already connected, dumping backtrace:%{public}s";
        goto LABEL_97;
      }

LABEL_99:
      free(v29);
      if (!v8)
      {
        return;
      }

LABEL_271:
      free(v8);
      return;
    }

    goto LABEL_270;
  }

  if (*(handle + 28))
  {
    v34 = *(handle + 184);
    if (*(handle + 25))
    {
      goto LABEL_129;
    }

    if ((v34 & 0x80) == 0 && gLogDatapath == 1)
    {
      v110 = __nwlog_obj();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_http_connect_prepare_response_message";
        *&buf[12] = 2082;
        *&buf[14] = handle + 284;
        *&buf[22] = 2080;
        v171 = " ";
        _os_log_impl(&dword_181A37000, v110, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    if (!*(handle + 25))
    {
      *(handle + 25) = CFHTTPMessageCreateEmpty(*MEMORY[0x1E695E480], 0);
      *(handle + 32) = 0;
      *(handle + 66) = 0;
      v46 = *(handle + 184);
      LOBYTE(v34) = v46 & 0xFD;
      *(handle + 184) = v46 & 0xFFFD;
      goto LABEL_129;
    }

    v34 = *(handle + 184);
    if ((v34 & 0x80) != 0)
    {
LABEL_129:
      *type = MEMORY[0x1E69E9820];
      v165 = 0x40000000;
      v166 = ___ZL36nw_http_connect_process_inbound_dataP24nw_protocol_http_connect_block_invoke;
      v167 = &__block_descriptor_tmp_18_38893;
      v168 = handle;
      v49 = *(handle + 28);
      do
      {
        if (!v49)
        {
          break;
        }

        v50 = *(v49 + 32);
        v51 = (v166)(type);
        v49 = v50;
      }

      while ((v51 & 1) != 0);
      v52 = *(handle + 184);
      if ((v34 & 2) != 0)
      {
        if ((v52 & 0x80) == 0 && BYTE1(v33[82].isa) == 1)
        {
          v44 = __nwlog_obj();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            *&buf[4] = "nw_http_connect_process_inbound_data";
            *&buf[12] = 2082;
            *&buf[14] = handle + 284;
            *&buf[22] = 2080;
            v171 = " ";
            v45 = "%{public}s %{public}s%sResponse message was already complete, ignoring extra data...";
            goto LABEL_142;
          }
        }

        return;
      }

      if ((v52 & 2) == 0)
      {
        if ((v52 & 0x80) == 0 && BYTE1(v33[82].isa) == 1)
        {
          v44 = __nwlog_obj();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            *&buf[4] = "nw_http_connect_process_inbound_data";
            *&buf[12] = 2082;
            *&buf[14] = handle + 284;
            *&buf[22] = 2080;
            v171 = " ";
            v45 = "%{public}s %{public}s%sResponse message is not complete, waiting for more data...";
            goto LABEL_142;
          }
        }

        return;
      }

      if ((v52 & 0x80) == 0 && BYTE1(v33[82].isa) == 1)
      {
        v111 = __nwlog_obj();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_http_connect_process_inbound_data";
          *&buf[12] = 2082;
          *&buf[14] = handle + 284;
          *&buf[22] = 2080;
          v171 = " ";
          _os_log_impl(&dword_181A37000, v111, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sResponse message is complete", buf, 0x20u);
        }
      }

      if ((*(handle + 184) & 0x80) == 0 && BYTE1(v33[82].isa) == 1)
      {
        v112 = __nwlog_obj();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_http_connect_process_response";
          *&buf[12] = 2082;
          *&buf[14] = handle + 284;
          *&buf[22] = 2080;
          v171 = " ";
          _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
        }
      }

      v53 = *(handle + 25);
      if (v53)
      {
        v54 = *(handle + 184);
        if ((v54 & 2) == 0)
        {
          if ((v54 & 0x80) != 0)
          {
            return;
          }

          __nwlog_obj();
          *buf = 136446722;
          *&buf[4] = "nw_http_connect_process_response";
          *&buf[12] = 2082;
          *&buf[14] = handle + 284;
          *&buf[22] = 2080;
          v171 = " ";
          v8 = _os_log_send_and_compose_impl();
          v173[0] = 16;
          v169 = 0;
          if (__nwlog_fault(v8, v173, &v169))
          {
            if (v173[0] == 17)
            {
              v9 = __nwlog_obj();
              v10 = v173[0];
              if (!os_log_type_enabled(v9, v173[0]))
              {
                goto LABEL_270;
              }

              *buf = 136446722;
              *&buf[4] = "nw_http_connect_process_response";
              *&buf[12] = 2082;
              *&buf[14] = handle + 284;
              *&buf[22] = 2080;
              v171 = " ";
              v11 = "%{public}s %{public}s%sCannot process response that is not yet complete";
              goto LABEL_268;
            }

            if (v169 != 1)
            {
              v9 = __nwlog_obj();
              v10 = v173[0];
              if (!os_log_type_enabled(v9, v173[0]))
              {
                goto LABEL_270;
              }

              *buf = 136446722;
              *&buf[4] = "nw_http_connect_process_response";
              *&buf[12] = 2082;
              *&buf[14] = handle + 284;
              *&buf[22] = 2080;
              v171 = " ";
              v11 = "%{public}s %{public}s%sCannot process response that is not yet complete, backtrace limit exceeded";
              goto LABEL_268;
            }

            v29 = __nw_create_backtrace_string();
            v9 = __nwlog_obj();
            v10 = v173[0];
            v69 = os_log_type_enabled(v9, v173[0]);
            if (!v29)
            {
              if (!v69)
              {
                goto LABEL_270;
              }

              *buf = 136446722;
              *&buf[4] = "nw_http_connect_process_response";
              *&buf[12] = 2082;
              *&buf[14] = handle + 284;
              *&buf[22] = 2080;
              v171 = " ";
              v11 = "%{public}s %{public}s%sCannot process response that is not yet complete, no backtrace";
              goto LABEL_268;
            }

            if (v69)
            {
              *buf = 136446978;
              *&buf[4] = "nw_http_connect_process_response";
              *&buf[12] = 2082;
              *&buf[14] = handle + 284;
              *&buf[22] = 2080;
              v171 = " ";
              LOWORD(v172) = 2082;
              *(&v172 + 2) = v29;
              v31 = "%{public}s %{public}s%sCannot process response that is not yet complete, dumping backtrace:%{public}s";
              goto LABEL_97;
            }

            goto LABEL_99;
          }

LABEL_270:
          if (!v8)
          {
            return;
          }

          goto LABEL_271;
        }

        ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(v53);
        v56 = CFHTTPMessageCopyResponseStatusLine(*(handle + 25));
        if ((*(handle + 184) & 0x80) == 0 && BYTE1(v33[82].isa) == 1)
        {
          v124 = __nwlog_obj();
          if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_http_connect_process_response";
            *&buf[12] = 2082;
            *&buf[14] = handle + 284;
            *&buf[22] = 2080;
            v171 = " ";
            LOWORD(v172) = 2112;
            *(&v172 + 2) = v56;
            _os_log_impl(&dword_181A37000, v124, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sResponse Message: %@", buf, 0x2Au);
          }
        }

        if ((*(handle + 184) & 0x80) == 0 && BYTE1(v33[82].isa) == 1)
        {
          v125 = __nwlog_obj();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_http_connect_process_response";
            *&buf[12] = 2082;
            *&buf[14] = handle + 284;
            *&buf[22] = 2080;
            v171 = " ";
            LOWORD(v172) = 2048;
            *(&v172 + 2) = ResponseStatusCode;
            _os_log_impl(&dword_181A37000, v125, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sStatus Code: %ld", buf, 0x2Au);
          }
        }

        if (!*(handle + 1))
        {
          v57 = mach_continuous_time();
          if (v57 <= 1)
          {
            v58 = 1;
          }

          else
          {
            v58 = v57;
          }

          *(handle + 1) = v58;
        }

        if (ResponseStatusCode != 407)
        {
          if (ResponseStatusCode == 200)
          {
            v59 = *(handle + 21);
            if ((!v59 || *(v59 + 132) != 4) && (*(handle + 184) & 0x80) == 0)
            {
              v60 = __nwlog_obj();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
              {
                *buf = 136446722;
                *&buf[4] = "nw_http_connect_process_response";
                *&buf[12] = 2082;
                *&buf[14] = handle + 284;
                *&buf[22] = 2080;
                v171 = " ";
                _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_INFO, "%{public}s %{public}s%shttp connect proxy connected", buf, 0x20u);
              }
            }

            v61 = mach_continuous_time();
            if (v61 <= 1)
            {
              v62 = 1;
            }

            else
            {
              v62 = v61;
            }

            *(handle + 2) = v62;
            *(handle + 70) = 2;
            nw_http_connect_finalize_request(handle);
            v63 = *(handle + 9);
            if (v63)
            {
              v64 = *(v63 + 24);
              if (v64)
              {
                v65 = *(v64 + 40);
                if (v65)
                {
                  v65(v63, *(handle + 7));
                  v66 = *(handle + 9);
                  if (!v66)
                  {
                    goto LABEL_351;
                  }

LABEL_177:
                  v67 = *(v66 + 24);
                  if (v67)
                  {
                    v68 = *(v67 + 40);
                    if (v68)
                    {
                      v68(v66, handle + 24);
                      goto LABEL_295;
                    }
                  }

LABEL_351:
                  __nwlog_obj();
                  v137 = *(handle + 9);
                  v138 = "invalid";
                  if (v137)
                  {
                    v139 = *(v137 + 16);
                    if (v139)
                    {
                      v138 = v139;
                    }
                  }

                  *buf = 136446466;
                  *&buf[4] = "nw_http_connect_process_response";
                  *&buf[12] = 2082;
                  *&buf[14] = v138;
                  v140 = _os_log_send_and_compose_impl();
                  v173[0] = 16;
                  v169 = 0;
                  if (!__nwlog_fault(v140, v173, &v169))
                  {
                    goto LABEL_380;
                  }

                  if (v173[0] == 17)
                  {
                    v141 = __nwlog_obj();
                    v142 = v173[0];
                    if (!os_log_type_enabled(v141, v173[0]))
                    {
                      goto LABEL_380;
                    }

                    v143 = *(v161 + 9);
                    v144 = "invalid";
                    if (v143)
                    {
                      v145 = *(v143 + 16);
                      if (v145)
                      {
                        v144 = v145;
                      }
                    }

                    *buf = 136446466;
                    *&buf[4] = "nw_http_connect_process_response";
                    *&buf[12] = 2082;
                    *&buf[14] = v144;
                    v146 = "%{public}s protocol %{public}s has invalid connected callback";
                  }

                  else if (v169 == 1)
                  {
                    v147 = __nw_create_backtrace_string();
                    v141 = __nwlog_obj();
                    v142 = v173[0];
                    v148 = os_log_type_enabled(v141, v173[0]);
                    if (v147)
                    {
                      if (v148)
                      {
                        v149 = *(v161 + 9);
                        v150 = "invalid";
                        if (v149)
                        {
                          v151 = *(v149 + 16);
                          if (v151)
                          {
                            v150 = v151;
                          }
                        }

                        *buf = 136446722;
                        *&buf[4] = "nw_http_connect_process_response";
                        *&buf[12] = 2082;
                        *&buf[14] = v150;
                        *&buf[22] = 2082;
                        v171 = v147;
                        _os_log_impl(&dword_181A37000, v141, v142, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
                      }

                      free(v147);
                      goto LABEL_380;
                    }

                    if (!v148)
                    {
LABEL_380:
                      if (v140)
                      {
                        free(v140);
                      }

                      goto LABEL_295;
                    }

                    v155 = *(v161 + 9);
                    v156 = "invalid";
                    if (v155)
                    {
                      v157 = *(v155 + 16);
                      if (v157)
                      {
                        v156 = v157;
                      }
                    }

                    *buf = 136446466;
                    *&buf[4] = "nw_http_connect_process_response";
                    *&buf[12] = 2082;
                    *&buf[14] = v156;
                    v146 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
                  }

                  else
                  {
                    v141 = __nwlog_obj();
                    v142 = v173[0];
                    if (!os_log_type_enabled(v141, v173[0]))
                    {
                      goto LABEL_380;
                    }

                    v152 = *(v161 + 9);
                    v153 = "invalid";
                    if (v152)
                    {
                      v154 = *(v152 + 16);
                      if (v154)
                      {
                        v153 = v154;
                      }
                    }

                    *buf = 136446466;
                    *&buf[4] = "nw_http_connect_process_response";
                    *&buf[12] = 2082;
                    *&buf[14] = v153;
                    v146 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
                  }

                  _os_log_impl(&dword_181A37000, v141, v142, v146, buf, 0x16u);
                  goto LABEL_380;
                }
              }
            }

            __nwlog_obj();
            v114 = *(handle + 9);
            v115 = "invalid";
            if (v114)
            {
              v116 = *(v114 + 16);
              if (v116)
              {
                v115 = v116;
              }
            }

            *buf = 136446466;
            *&buf[4] = "nw_http_connect_process_response";
            *&buf[12] = 2082;
            *&buf[14] = v115;
            v117 = _os_log_send_and_compose_impl();
            v173[0] = 16;
            v169 = 0;
            if (__nwlog_fault(v117, v173, &v169))
            {
              if (v173[0] == 17)
              {
                v118 = __nwlog_obj();
                v119 = v173[0];
                if (!os_log_type_enabled(v118, v173[0]))
                {
                  goto LABEL_348;
                }

                v120 = *(v161 + 9);
                v121 = "invalid";
                if (v120)
                {
                  v122 = *(v120 + 16);
                  if (v122)
                  {
                    v121 = v122;
                  }
                }

                *buf = 136446466;
                *&buf[4] = "nw_http_connect_process_response";
                *&buf[12] = 2082;
                *&buf[14] = v121;
                v123 = "%{public}s protocol %{public}s has invalid connected callback";
LABEL_347:
                _os_log_impl(&dword_181A37000, v118, v119, v123, buf, 0x16u);
                goto LABEL_348;
              }

              if (v169 != 1)
              {
                v118 = __nwlog_obj();
                v119 = v173[0];
                if (!os_log_type_enabled(v118, v173[0]))
                {
                  goto LABEL_348;
                }

                v131 = *(v161 + 9);
                v132 = "invalid";
                if (v131)
                {
                  v133 = *(v131 + 16);
                  if (v133)
                  {
                    v132 = v133;
                  }
                }

                *buf = 136446466;
                *&buf[4] = "nw_http_connect_process_response";
                *&buf[12] = 2082;
                *&buf[14] = v132;
                v123 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
                goto LABEL_347;
              }

              v126 = __nw_create_backtrace_string();
              v118 = __nwlog_obj();
              v119 = v173[0];
              v127 = os_log_type_enabled(v118, v173[0]);
              if (!v126)
              {
                if (!v127)
                {
                  goto LABEL_348;
                }

                v134 = *(v161 + 9);
                v135 = "invalid";
                if (v134)
                {
                  v136 = *(v134 + 16);
                  if (v136)
                  {
                    v135 = v136;
                  }
                }

                *buf = 136446466;
                *&buf[4] = "nw_http_connect_process_response";
                *&buf[12] = 2082;
                *&buf[14] = v135;
                v123 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
                goto LABEL_347;
              }

              if (v127)
              {
                v128 = *(v161 + 9);
                v129 = "invalid";
                if (v128)
                {
                  v130 = *(v128 + 16);
                  if (v130)
                  {
                    v129 = v130;
                  }
                }

                *buf = 136446722;
                *&buf[4] = "nw_http_connect_process_response";
                *&buf[12] = 2082;
                *&buf[14] = v129;
                *&buf[22] = 2082;
                v171 = v126;
                _os_log_impl(&dword_181A37000, v118, v119, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(v126);
            }

LABEL_348:
            if (v117)
            {
              free(v117);
            }

            handle = v161;
            v66 = *(v161 + 9);
            if (!v66)
            {
              goto LABEL_351;
            }

            goto LABEL_177;
          }

          if ((*(handle + 184) & 0x80) == 0)
          {
            v82 = __nwlog_obj();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446978;
              *&buf[4] = "nw_http_connect_process_response";
              *&buf[12] = 2082;
              *&buf[14] = handle + 284;
              *&buf[22] = 2080;
              v171 = " ";
              LOWORD(v172) = 2114;
              *(&v172 + 2) = v56;
              _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%shttp connect Proxy received status: %{public}@", buf, 0x2Au);
            }
          }

          _CFHTTPAuthenticationApplyProxyAuthorizationToRequest();
          v83 = *(handle + 21);
          if (!v83 || *(v83 + 132) != 4)
          {
            v84 = CFHTTPMessageCopyAllHeaderFields(*(handle + 25));
            if ((*(handle + 184) & 0x80) == 0)
            {
              v85 = __nwlog_obj();
              if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
              {
                *buf = 136446978;
                *&buf[4] = "nw_http_connect_process_response";
                *&buf[12] = 2082;
                *&buf[14] = handle + 284;
                *&buf[22] = 2080;
                v171 = " ";
                LOWORD(v172) = 2114;
                *(&v172 + 2) = v84;
                _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sHeaders:\n%{public}@", buf, 0x2Au);
              }
            }

            if (v84)
            {
              CFRelease(v84);
            }
          }

          v86 = handle;
          v87 = 57;
          goto LABEL_212;
        }

        v70 = *(handle + 184);
        *(handle + 184) = v70 & 0xFFF7;
        v71 = *(handle + 21);
        if ((!v71 || *(v71 + 132) != 4) && (v70 & 0x80) == 0)
        {
          v72 = __nwlog_obj();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            *buf = 136446722;
            *&buf[4] = "nw_http_connect_process_response";
            *&buf[12] = 2082;
            *&buf[14] = handle + 284;
            *&buf[22] = 2080;
            v171 = " ";
            _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_INFO, "%{public}s %{public}s%shttp connect proxy authentication required", buf, 0x20u);
          }
        }

        if (*(handle + 22) && !*(handle + 67))
        {
          if (*(handle + 68))
          {
            if ((*(handle + 184) & 0x80) == 0)
            {
              v91 = __nwlog_obj();
              if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "nw_http_connect_process_response";
                *&buf[12] = 2082;
                *&buf[14] = handle + 284;
                *&buf[22] = 2080;
                v171 = " ";
                _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sProxy credential was rejected, cancelling connection", buf, 0x20u);
              }
            }

            v86 = handle;
            v87 = 80;
LABEL_212:
            nw_http_connect_fail(v86, v87);
            goto LABEL_295;
          }
        }

        else
        {
          v73 = *(handle + 23);
          if (v73)
          {
            v74 = nw_proxy_options_copy_authentication_challenge_handler(v73);
            if (v74)
            {
              v75 = v74;
              v76 = CFHTTPMessageCopyHeaderFieldValue(*(handle + 25), @"Proxy-Authenticate");
              if (v76)
              {
                v77 = v76;
                Length = CFStringGetLength(v76);
                if (Length < CFStringGetLength(@"NTLM") || (v176.length = CFStringGetLength(@"NTLM"), v176.location = 0, CFStringCompareWithOptions(v77, @"NTLM", v176, 1uLL)))
                {
                  v79 = CFStringGetLength(v77);
                  if (v79 < CFStringGetLength(@"Basic") || (v177.length = CFStringGetLength(@"Basic"), v80 = 1, v177.location = 0, CFStringCompareWithOptions(v77, @"Basic", v177, 1uLL)))
                  {
                    v81 = CFStringGetLength(v77);
                    if (v81 < CFStringGetLength(@"Digest") || (v178.length = CFStringGetLength(@"Digest"), v178.location = 0, CFStringCompareWithOptions(v77, @"Digest", v178, 1uLL)))
                    {
                      v80 = 0;
                    }

                    else
                    {
                      v80 = 2;
                    }
                  }
                }

                else
                {
                  v80 = 5;
                }

                v103 = nw_authentication_protection_space_create(v80);
                CFRelease(v77);
                if (v103)
                {
                  nw_authentication_protection_space_set_is_proxy(v103, 1);
                  v104 = nw_endpoint_create_with_cfurl(*(handle + 27));
                  nw_authentication_protection_space_set_endpoint(v103, v104);
                  nw_authentication_protection_space_set_proxy_origin_is_cleartext(v103, 0);
                  v105 = objc_alloc_init(NWConcrete_nw_authentication_challenge);
                  nw_authentication_challenge_set_protection_space(v105, v103);
                  nw_authentication_challenge_set_http_message(v105, *(handle + 25));
                  nw_authentication_challenge_set_attempt_count(v105, *(handle + 67));
                  os_release(v103);
                  ++*(handle + 67);
                  nw_http_connect_start_async(handle);
                  if ((*(handle + 184) & 0x80) == 0)
                  {
                    v106 = __nwlog_obj();
                    if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
                    {
                      *v173 = 136446722;
                      *&v173[4] = "nw_http_connect_send_auth_challenge";
                      *&v173[12] = 2082;
                      *&v173[14] = handle + 284;
                      *&v173[22] = 2080;
                      v174 = " ";
                      _os_log_impl(&dword_181A37000, v106, OS_LOG_TYPE_INFO, "%{public}s %{public}s%shttp connect calling out to challenge handler", v173, 0x20u);
                    }
                  }

                  *v173 = 0;
                  *&v173[8] = v173;
                  *&v173[16] = 0x2000000000;
                  v107 = *(handle + 21);
                  if (v107)
                  {
                    v107 = os_retain(v107);
                  }

                  v174 = v107;
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 0x40000000;
                  *&buf[16] = ___ZL35nw_http_connect_send_auth_challengeP24nw_protocol_http_connect_block_invoke;
                  v171 = &unk_1E6A31F18;
                  *&v172 = v173;
                  *(&v172 + 1) = handle;
                  (v75)[2](v75, v105, buf);
                  _Block_release(v75);
                  if (v105)
                  {
                    os_release(v105);
                  }

                  _Block_object_dispose(v173, 8);
                  if (v104)
                  {
                    os_release(v104);
                  }

                  goto LABEL_295;
                }
              }

              v108 = *(handle + 21);
              if ((!v108 || *(v108 + 132) != 4) && (*(handle + 184) & 0x80) == 0)
              {
                v109 = __nwlog_obj();
                if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
                {
                  *v173 = 136446722;
                  *&v173[4] = "nw_http_connect_send_auth_challenge";
                  *&v173[12] = 2082;
                  *&v173[14] = handle + 284;
                  *&v173[22] = 2080;
                  v174 = " ";
                  _os_log_impl(&dword_181A37000, v109, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sCould not create challenge for HTTP Connect Proxy authentication", v173, 0x20u);
                }
              }
            }
          }
        }

        nw_http_connect_send_auth_request(handle);
LABEL_295:
        if (v56)
        {
          CFRelease(v56);
        }

        return;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_connect_process_response";
      v8 = _os_log_send_and_compose_impl();
      v173[0] = 16;
      v169 = 0;
      if (!__nwlog_fault(v8, v173, &v169))
      {
        goto LABEL_270;
      }

      if (v173[0] == 17)
      {
        v89 = __nwlog_obj();
        v90 = v173[0];
        if (!os_log_type_enabled(v89, v173[0]))
        {
          goto LABEL_270;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_connect_process_response";
        v11 = "%{public}s called with null http_connect->response_message";
        goto LABEL_277;
      }

      if (v169 == 1)
      {
        v29 = __nw_create_backtrace_string();
        v89 = __nwlog_obj();
        v90 = v173[0];
        v113 = os_log_type_enabled(v89, v173[0]);
        if (v29)
        {
          if (!v113)
          {
            goto LABEL_99;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http_connect_process_response";
          *&buf[12] = 2082;
          *&buf[14] = v29;
          v31 = "%{public}s called with null http_connect->response_message, dumping backtrace:%{public}s";
          goto LABEL_250;
        }

        if (!v113)
        {
          goto LABEL_270;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_connect_process_response";
        v11 = "%{public}s called with null http_connect->response_message, no backtrace";
      }

      else
      {
        v89 = __nwlog_obj();
        v90 = v173[0];
        if (!os_log_type_enabled(v89, v173[0]))
        {
          goto LABEL_270;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_connect_process_response";
        v11 = "%{public}s called with null http_connect->response_message, backtrace limit exceeded";
      }

LABEL_277:
      v100 = v89;
      v101 = v90;
      v102 = 12;
      goto LABEL_269;
    }

    __nwlog_obj();
    *buf = 136446722;
    *&buf[4] = "nw_http_connect_prepare_response_message";
    *&buf[12] = 2082;
    *&buf[14] = handle + 284;
    *&buf[22] = 2080;
    v171 = " ";
    v35 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v173[0] = 0;
    if (__nwlog_fault(v35, type, v173))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = type[0];
        if (os_log_type_enabled(v36, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_http_connect_prepare_response_message";
          *&buf[12] = 2082;
          *&buf[14] = handle + 284;
          *&buf[22] = 2080;
          v171 = " ";
          v38 = "%{public}s %{public}s%sAlready have response message, cannot create new one";
LABEL_125:
          _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0x20u);
        }
      }

      else if (v173[0] == 1)
      {
        v47 = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v37 = type[0];
        v48 = os_log_type_enabled(v36, type[0]);
        if (v47)
        {
          if (v48)
          {
            *buf = 136446978;
            *&buf[4] = "nw_http_connect_prepare_response_message";
            *&buf[12] = 2082;
            *&buf[14] = handle + 284;
            *&buf[22] = 2080;
            v171 = " ";
            LOWORD(v172) = 2082;
            *(&v172 + 2) = v47;
            _os_log_impl(&dword_181A37000, v36, v37, "%{public}s %{public}s%sAlready have response message, cannot create new one, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v47);
          v33 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
          goto LABEL_126;
        }

        v33 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        if (v48)
        {
          *buf = 136446722;
          *&buf[4] = "nw_http_connect_prepare_response_message";
          *&buf[12] = 2082;
          *&buf[14] = handle + 284;
          *&buf[22] = 2080;
          v171 = " ";
          v38 = "%{public}s %{public}s%sAlready have response message, cannot create new one, no backtrace";
          goto LABEL_125;
        }
      }

      else
      {
        v36 = __nwlog_obj();
        v37 = type[0];
        if (os_log_type_enabled(v36, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_http_connect_prepare_response_message";
          *&buf[12] = 2082;
          *&buf[14] = handle + 284;
          *&buf[22] = 2080;
          v171 = " ";
          v38 = "%{public}s %{public}s%sAlready have response message, cannot create new one, backtrace limit exceeded";
          goto LABEL_125;
        }
      }
    }

LABEL_126:
    if (v35)
    {
      free(v35);
    }

    v34 = *(handle + 184);
    goto LABEL_129;
  }

  if ((*(handle + 184) & 0x80) == 0 && gLogDatapath == 1)
  {
    v44 = __nwlog_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_http_connect_process_inbound_data";
      *&buf[12] = 2082;
      *&buf[14] = handle + 284;
      *&buf[22] = 2080;
      v171 = " ";
      v45 = "%{public}s %{public}s%sNo read frames, nothing to process";
LABEL_142:
      _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, v45, buf, 0x20u);
    }
  }
}

BOOL ___ZL36nw_http_connect_process_inbound_dataP24nw_protocol_http_connect_block_invoke(uint64_t a1, uint64_t a2)
{
  v176 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v169 = "nw_http_connect_process_inbound_data_block_invoke";
    v150 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v166 = 0;
    if (__nwlog_fault(v150, &type, &v166))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v151 = __nwlog_obj();
        v152 = type;
        if (os_log_type_enabled(v151, type))
        {
          *buf = 136446210;
          v169 = "nw_http_connect_process_inbound_data_block_invoke";
          v153 = "%{public}s called with null frame";
LABEL_266:
          _os_log_impl(&dword_181A37000, v151, v152, v153, buf, 0xCu);
        }
      }

      else if (v166 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v151 = __nwlog_obj();
        v152 = type;
        v161 = os_log_type_enabled(v151, type);
        if (backtrace_string)
        {
          if (v161)
          {
            *buf = 136446466;
            v169 = "nw_http_connect_process_inbound_data_block_invoke";
            v170 = 2082;
            v171 = backtrace_string;
            _os_log_impl(&dword_181A37000, v151, v152, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_267;
        }

        if (v161)
        {
          *buf = 136446210;
          v169 = "nw_http_connect_process_inbound_data_block_invoke";
          v153 = "%{public}s called with null frame, no backtrace";
          goto LABEL_266;
        }
      }

      else
      {
        v151 = __nwlog_obj();
        v152 = type;
        if (os_log_type_enabled(v151, type))
        {
          *buf = 136446210;
          v169 = "nw_http_connect_process_inbound_data_block_invoke";
          v153 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_266;
        }
      }
    }

LABEL_267:
    if (!v150)
    {
      return 0;
    }

    v149 = v150;
    goto LABEL_222;
  }

  if (!*(a2 + 112) || (*(a2 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(a2, *(a2 + 88)))
  {
    v6 = 0;
    v7 = 0;
    v8 = *(a1 + 32);
    if (v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *(a2 + 52);
    v4 = *(a2 + 56);
    if (v5)
    {
      v6 = v5 - (v4 + *(a2 + 60));
    }

    else
    {
      v6 = 0;
    }

    v7 = (*(a2 + 112) + v4);
    v8 = *(a1 + 32);
    if (v8)
    {
LABEL_12:
      if ((*(v8 + 368) & 0x80) != 0)
      {
        goto LABEL_15;
      }
    }
  }

  if (gLogDatapath == 1)
  {
    v156 = __nwlog_obj();
    v157 = os_log_type_enabled(v156, OS_LOG_TYPE_DEBUG);
    v8 = *(a1 + 32);
    if (v157)
    {
      v158 = "";
      *buf = 136447234;
      v169 = "nw_http_connect_process_inbound_data_block_invoke";
      v159 = (v8 + 284);
      if (!v8)
      {
        v159 = "";
      }

      v170 = 2082;
      v171 = v159;
      v172 = 2080;
      if (v8)
      {
        v158 = " ";
      }

      v173 = v158;
      v174 = 2048;
      *v175 = a2;
      *&v175[8] = 1024;
      *&v175[10] = v6;
      _os_log_impl(&dword_181A37000, v156, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sProcessing frame (%p, %u bytes)", buf, 0x30u);
      v8 = *(a1 + 32);
    }
  }

  if (!v8)
  {
    __nwlog_obj();
    *buf = 136446210;
    v169 = "nw_http_connect_append_bytes";
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v166 = 0;
    if (!__nwlog_fault(v32, &type, &v166))
    {
      goto LABEL_179;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v154 = __nwlog_obj();
      v155 = type;
      if (!os_log_type_enabled(v154, type))
      {
        goto LABEL_179;
      }

      *buf = 136446210;
      v169 = "nw_http_connect_append_bytes";
      v36 = "%{public}s called with null http_connect";
      goto LABEL_273;
    }

    if (v166 == 1)
    {
      v162 = __nw_create_backtrace_string();
      v154 = __nwlog_obj();
      v155 = type;
      v163 = os_log_type_enabled(v154, type);
      if (v162)
      {
        if (!v163)
        {
          goto LABEL_256;
        }

        *buf = 136446466;
        v169 = "nw_http_connect_append_bytes";
        v170 = 2082;
        v171 = v162;
        v164 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
        goto LABEL_255;
      }

      if (!v163)
      {
        goto LABEL_179;
      }

      *buf = 136446210;
      v169 = "nw_http_connect_append_bytes";
      v36 = "%{public}s called with null http_connect, no backtrace";
    }

    else
    {
      v154 = __nwlog_obj();
      v155 = type;
      if (!os_log_type_enabled(v154, type))
      {
        goto LABEL_179;
      }

      *buf = 136446210;
      v169 = "nw_http_connect_append_bytes";
      v36 = "%{public}s called with null http_connect, backtrace limit exceeded";
    }

LABEL_273:
    v115 = v154;
    v116 = v155;
    v117 = 12;
    goto LABEL_178;
  }

LABEL_15:
  if (!v7)
  {
    __nwlog_obj();
    *buf = 136446210;
    v169 = "nw_http_connect_append_bytes";
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v166 = 0;
    if (!__nwlog_fault(v32, &type, &v166))
    {
      goto LABEL_179;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v154 = __nwlog_obj();
      v155 = type;
      if (!os_log_type_enabled(v154, type))
      {
        goto LABEL_179;
      }

      *buf = 136446210;
      v169 = "nw_http_connect_append_bytes";
      v36 = "%{public}s called with null new_bytes";
      goto LABEL_273;
    }

    if (v166 == 1)
    {
      v162 = __nw_create_backtrace_string();
      v154 = __nwlog_obj();
      v155 = type;
      v165 = os_log_type_enabled(v154, type);
      if (v162)
      {
        if (!v165)
        {
          goto LABEL_256;
        }

        *buf = 136446466;
        v169 = "nw_http_connect_append_bytes";
        v170 = 2082;
        v171 = v162;
        v164 = "%{public}s called with null new_bytes, dumping backtrace:%{public}s";
LABEL_255:
        _os_log_impl(&dword_181A37000, v154, v155, v164, buf, 0x16u);
LABEL_256:
        free(v162);
        if (!v32)
        {
          goto LABEL_181;
        }

        goto LABEL_180;
      }

      if (!v165)
      {
        goto LABEL_179;
      }

      *buf = 136446210;
      v169 = "nw_http_connect_append_bytes";
      v36 = "%{public}s called with null new_bytes, no backtrace";
    }

    else
    {
      v154 = __nwlog_obj();
      v155 = type;
      if (!os_log_type_enabled(v154, type))
      {
        goto LABEL_179;
      }

      *buf = 136446210;
      v169 = "nw_http_connect_append_bytes";
      v36 = "%{public}s called with null new_bytes, backtrace limit exceeded";
    }

    goto LABEL_273;
  }

  if (CFHTTPMessageIsHeaderComplete(*(v8 + 200)))
  {
    v9 = *(v8 + 260) + v6;
    *(v8 + 260) = v9;
    v10 = *(v8 + 256);
    v11 = *(v8 + 368);
    v23 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (v12 < 0 != v23)
    {
      *(v8 + 368) = v11 & 0xFFFD;
      *(v8 + 264) = 0;
    }

    else
    {
      *(v8 + 368) = v11 | 2;
      *(v8 + 264) = v12;
    }

    goto LABEL_51;
  }

  if (CFHTTPMessageAppendBytes(*(v8 + 200), v7, v6))
  {
    if (CFHTTPMessageIsHeaderComplete(*(v8 + 200)))
    {
      v13 = CFHTTPMessageCopyHeaderFieldValue(*(v8 + 200), @"Content-Length");
      v14 = v13;
      if (v13)
      {
        *(v8 + 256) = CFStringGetIntValue(v13);
      }

      v15 = CFHTTPMessageCopyHeaderFieldValue(*(v8 + 200), @"Connection");
      if (v15)
      {
        v177.length = CFStringGetLength(@"Close");
        v177.location = 0;
        if (CFStringCompareWithOptions(v15, @"Close", v177, 1uLL) == kCFCompareEqualTo)
        {
          *(v8 + 368) |= 0x20u;
        }
      }

      v16 = CFHTTPMessageCopyHeaderFieldValue(*(v8 + 200), @"Proxy-Connection");
      if (v16)
      {
        v178.length = CFStringGetLength(@"Close");
        v178.location = 0;
        if (CFStringCompareWithOptions(v16, @"Close", v178, 1uLL) == kCFCompareEqualTo)
        {
          *(v8 + 368) |= 0x20u;
        }
      }

      if (CFHTTPMessageGetResponseStatusCode(*(v8 + 200)) == 200)
      {
        if (*(v8 + 256))
        {
          if ((*(v8 + 368) & 0x80) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v17 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              v18 = *(v8 + 256);
              *buf = 136446978;
              v169 = "nw_http_connect_append_bytes";
              v170 = 2082;
              v171 = (v8 + 284);
              v172 = 2080;
              v173 = " ";
              v174 = 1024;
              *v175 = v18;
              _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sProxy server sent back 200 OK and specified a Content-Length (%d)", buf, 0x26u);
            }
          }
        }

        *(v8 + 256) = 0;
      }

      v19 = CFHTTPMessageCopyBody(*(v8 + 200));
      v20 = v19;
      if (v19)
      {
        LODWORD(v19) = CFDataGetLength(v19);
      }

      v21 = *(v8 + 260) + v19;
      v22 = *(v8 + 256);
      v23 = __OFSUB__(v21, v22);
      v24 = v21 - v22;
      v25 = v24 < 0 == v23;
      *(v8 + 260) = v21;
      if (v24 < 0 != v23)
      {
        v24 = 0;
      }

      *(v8 + 368) = *(v8 + 368) & 0xFFFD | (2 * v25);
      *(v8 + 264) = v24;
      if (v20)
      {
        CFRelease(v20);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

LABEL_51:
    ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(*(*(a1 + 32) + 200));
    v28 = ResponseStatusCode;
    v29 = *(a1 + 32);
    if ((*(v29 + 368) & 2) != 0)
    {
      v30 = *(v29 + 264);
      if (v30)
      {
        if (ResponseStatusCode == 200)
        {
          nw_frame_claim(a2, v27, v6 - v30, 0);
          return (*(*(a1 + 32) + 368) & 2) == 0;
        }

        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        v38 = *(a1 + 32);
        if (has_internal_diagnostics)
        {
          if (!v38 || (*(v38 + 368) & 0x80) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v39 = gLogObj;
            v40 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
            v41 = *(a1 + 32);
            if (v40)
            {
              v42 = *(v41 + 264);
              v43 = v41 == 0;
              if (v41)
              {
                v44 = (v41 + 284);
              }

              else
              {
                v44 = "";
              }

              *buf = 136446978;
              v169 = "nw_http_connect_process_inbound_data_block_invoke";
              v170 = 2082;
              v171 = v44;
              if (v43)
              {
                v45 = "";
              }

              else
              {
                v45 = " ";
              }

              v172 = 2080;
              v173 = v45;
              v174 = 1024;
              *v175 = v42;
              _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%u bytes of unexpected data from server:", buf, 0x26u);
              v41 = *(a1 + 32);
            }

            if (!v41 || (*(v41 + 368) & 0x80) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v46 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                v47 = *(a1 + 32);
                v48 = (v47 + 284);
                v49 = "";
                v50 = v47 == 0;
                v51 = *(v47 + 264);
                v169 = "nw_http_connect_process_inbound_data_block_invoke";
                if (v50)
                {
                  v48 = "";
                }

                v170 = 2082;
                *buf = 136447234;
                if (!v50)
                {
                  v49 = " ";
                }

                v171 = v48;
                v172 = 2080;
                v173 = v49;
                v174 = 1040;
                *v175 = v51;
                *&v175[4] = 2096;
                *&v175[6] = &v7[v6 - v51];
                v52 = "%{public}s %{public}s%s%{network:data}.*P";
                v53 = v46;
                v54 = 48;
LABEL_92:
                _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_ERROR, v52, buf, v54);
              }
            }
          }
        }

        else if (!v38 || (*(v38 + 368) & 0x80) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v58 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v59 = *(a1 + 32);
            v60 = (v59 + 284);
            v61 = "";
            v62 = v59 == 0;
            v63 = *(v59 + 264);
            if (v62)
            {
              v60 = "";
            }

            v169 = "nw_http_connect_process_inbound_data_block_invoke";
            v170 = 2082;
            *buf = 136446978;
            if (!v62)
            {
              v61 = " ";
            }

            v171 = v60;
            v172 = 2080;
            v173 = v61;
            v174 = 1024;
            *v175 = v63;
            v52 = "%{public}s %{public}s%s%u bytes of unexpected response data from server";
            v53 = v58;
            v54 = 38;
            goto LABEL_92;
          }
        }
      }
    }

    v64 = (*(a1 + 32) + 232);
    v65 = *(a2 + 32);
    v66 = *(a2 + 40);
    if (v65)
    {
      v64 = (v65 + 40);
    }

    *v64 = v66;
    *v66 = v65;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    nw_frame_finalize(a2);
    v67 = *(a1 + 32);
    if ((*(v67 + 368) & 2) == 0)
    {
      return (*(*(a1 + 32) + 368) & 2) == 0;
    }

    if (v28 == 200)
    {
      return (*(*(a1 + 32) + 368) & 2) == 0;
    }

    v68 = *(v67 + 224);
    if (!v68)
    {
      return (*(*(a1 + 32) + 368) & 2) == 0;
    }

    if (os_variant_has_internal_diagnostics() && *(v68 + 112) && ((*(v68 + 204) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(v68, *(v68 + 88))))
    {
      v69 = *(v68 + 52);
      if (v69)
      {
        v70 = *(v68 + 112);
        if (v70)
        {
          v71 = *(v68 + 56);
          v72 = v69 - (v71 + *(v68 + 60));
          if (v72)
          {
            v73 = *(a1 + 32);
            if (!v73 || (*(v73 + 368) & 0x80) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v74 = gLogObj;
              v75 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
              v76 = *(a1 + 32);
              if (v75)
              {
                v77 = v76 == 0;
                if (v76)
                {
                  v78 = (v76 + 284);
                }

                else
                {
                  v78 = "";
                }

                *buf = 136446722;
                v169 = "nw_http_connect_process_inbound_data_block_invoke";
                v79 = " ";
                if (v77)
                {
                  v79 = "";
                }

                v170 = 2082;
                v171 = v78;
                v172 = 2080;
                v173 = v79;
                _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sUnexpected data from server:", buf, 0x20u);
                v76 = *(a1 + 32);
              }

              if (!v76 || (*(v76 + 368) & 0x80) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v80 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                {
                  v81 = *(a1 + 32);
                  v169 = "nw_http_connect_process_inbound_data_block_invoke";
                  *buf = 136447234;
                  v82 = v81 == 0;
                  if (v81)
                  {
                    v83 = (v81 + 284);
                  }

                  else
                  {
                    v83 = "";
                  }

                  v170 = 2082;
                  v171 = v83;
                  v84 = " ";
                  v172 = 2080;
                  if (v82)
                  {
                    v84 = "";
                  }

                  v173 = v84;
                  v174 = 1040;
                  *v175 = v72;
                  *&v175[4] = 2096;
                  *&v175[6] = v70 + v71;
                  _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s%{network:data}.*P", buf, 0x30u);
                }
              }
            }
          }
        }
      }
    }

    v85 = *(a1 + 32);
    if (v85)
    {
      if ((*(v85 + 368) & 0x80) != 0)
      {
        return (*(*(a1 + 32) + 368) & 2) == 0;
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v86 = *(a1 + 32);
    v87 = v86 == 0;
    if (v86)
    {
      v88 = (v86 + 284);
    }

    else
    {
      v88 = "";
    }

    *buf = 136446722;
    v169 = "nw_http_connect_process_inbound_data_block_invoke";
    if (v87)
    {
      v89 = "";
    }

    else
    {
      v89 = " ";
    }

    v170 = 2082;
    v171 = v88;
    v172 = 2080;
    v173 = v89;
    v90 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v166 = 0;
    if (!__nwlog_fault(v90, &type, &v166))
    {
      goto LABEL_172;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v91 = gLogObj;
      v92 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_172;
      }

      v93 = *(a1 + 32);
      v94 = v93 == 0;
      if (v93)
      {
        v95 = (v93 + 284);
      }

      else
      {
        v95 = "";
      }

      *buf = 136446722;
      if (v94)
      {
        v96 = "";
      }

      else
      {
        v96 = " ";
      }

      v169 = "nw_http_connect_process_inbound_data_block_invoke";
      v170 = 2082;
      v171 = v95;
      v172 = 2080;
      v173 = v96;
      v97 = "%{public}s %{public}s%sFrames remaining after response header is complete";
    }

    else if (v166 == 1)
    {
      v98 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v91 = gLogObj;
      v92 = type;
      v99 = os_log_type_enabled(gLogObj, type);
      if (v98)
      {
        if (v99)
        {
          v100 = *(a1 + 32);
          v101 = v100 == 0;
          if (v100)
          {
            v102 = (v100 + 284);
          }

          else
          {
            v102 = "";
          }

          if (v101)
          {
            v103 = "";
          }

          else
          {
            v103 = " ";
          }

          *buf = 136446978;
          v169 = "nw_http_connect_process_inbound_data_block_invoke";
          v170 = 2082;
          v171 = v102;
          v172 = 2080;
          v173 = v103;
          v174 = 2082;
          *v175 = v98;
          _os_log_impl(&dword_181A37000, v91, v92, "%{public}s %{public}s%sFrames remaining after response header is complete, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v98);
        goto LABEL_172;
      }

      if (!v99)
      {
LABEL_172:
        if (v90)
        {
          free(v90);
        }

        return (*(*(a1 + 32) + 368) & 2) == 0;
      }

      v109 = *(a1 + 32);
      v110 = v109 == 0;
      if (v109)
      {
        v111 = (v109 + 284);
      }

      else
      {
        v111 = "";
      }

      *buf = 136446722;
      if (v110)
      {
        v112 = "";
      }

      else
      {
        v112 = " ";
      }

      v169 = "nw_http_connect_process_inbound_data_block_invoke";
      v170 = 2082;
      v171 = v111;
      v172 = 2080;
      v173 = v112;
      v97 = "%{public}s %{public}s%sFrames remaining after response header is complete, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v91 = gLogObj;
      v92 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_172;
      }

      v104 = *(a1 + 32);
      v105 = v104 == 0;
      if (v104)
      {
        v106 = (v104 + 284);
      }

      else
      {
        v106 = "";
      }

      *buf = 136446722;
      if (v105)
      {
        v107 = "";
      }

      else
      {
        v107 = " ";
      }

      v169 = "nw_http_connect_process_inbound_data_block_invoke";
      v170 = 2082;
      v171 = v106;
      v172 = 2080;
      v173 = v107;
      v97 = "%{public}s %{public}s%sFrames remaining after response header is complete, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v91, v92, v97, buf, 0x20u);
    goto LABEL_172;
  }

  if ((*(v8 + 368) & 0x80) != 0)
  {
    goto LABEL_181;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v31 = *(v8 + 200);
  *buf = 136446978;
  v169 = "nw_http_connect_append_bytes";
  v170 = 2082;
  v171 = (v8 + 284);
  v172 = 2080;
  v173 = " ";
  v174 = 2048;
  *v175 = v31;
  v32 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v166 = 0;
  if (__nwlog_fault(v32, &type, &v166))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      v34 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_179;
      }

      v35 = *(v8 + 200);
      *buf = 136446978;
      v169 = "nw_http_connect_append_bytes";
      v170 = 2082;
      v171 = (v8 + 284);
      v172 = 2080;
      v173 = " ";
      v174 = 2048;
      *v175 = v35;
      v36 = "%{public}s %{public}s%sFailed to apply bytes to response message %p";
LABEL_177:
      v115 = v33;
      v116 = v34;
      v117 = 42;
LABEL_178:
      _os_log_impl(&dword_181A37000, v115, v116, v36, buf, v117);
      goto LABEL_179;
    }

    if (v166 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      v34 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_179;
      }

      v108 = *(v8 + 200);
      *buf = 136446978;
      v169 = "nw_http_connect_append_bytes";
      v170 = 2082;
      v171 = (v8 + 284);
      v172 = 2080;
      v173 = " ";
      v174 = 2048;
      *v175 = v108;
      v36 = "%{public}s %{public}s%sFailed to apply bytes to response message %p, backtrace limit exceeded";
      goto LABEL_177;
    }

    v55 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v33 = gLogObj;
    v34 = type;
    v56 = os_log_type_enabled(gLogObj, type);
    if (!v55)
    {
      if (!v56)
      {
        goto LABEL_179;
      }

      v114 = *(v8 + 200);
      *buf = 136446978;
      v169 = "nw_http_connect_append_bytes";
      v170 = 2082;
      v171 = (v8 + 284);
      v172 = 2080;
      v173 = " ";
      v174 = 2048;
      *v175 = v114;
      v36 = "%{public}s %{public}s%sFailed to apply bytes to response message %p, no backtrace";
      goto LABEL_177;
    }

    if (v56)
    {
      v57 = *(v8 + 200);
      *buf = 136447234;
      v169 = "nw_http_connect_append_bytes";
      v170 = 2082;
      v171 = (v8 + 284);
      v172 = 2080;
      v173 = " ";
      v174 = 2048;
      *v175 = v57;
      *&v175[8] = 2082;
      *&v175[10] = v55;
      _os_log_impl(&dword_181A37000, v33, v34, "%{public}s %{public}s%sFailed to apply bytes to response message %p, dumping backtrace:%{public}s", buf, 0x34u);
    }

    free(v55);
  }

LABEL_179:
  if (v32)
  {
LABEL_180:
    free(v32);
  }

LABEL_181:
  v118 = *(a1 + 32);
  if (v118 && (*(v118 + 368) & 0x80) != 0)
  {
    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v119 = *(a1 + 32);
  v120 = (v119 + 284);
  v121 = v119 == 0;
  v122 = *(v119 + 200);
  *buf = 136446978;
  if (v121)
  {
    v120 = "";
  }

  v169 = "nw_http_connect_process_inbound_data_block_invoke";
  if (v121)
  {
    v123 = "";
  }

  else
  {
    v123 = " ";
  }

  v170 = 2082;
  v171 = v120;
  v172 = 2080;
  v173 = v123;
  v174 = 2048;
  *v175 = v122;
  v124 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v166 = 0;
  if (__nwlog_fault(v124, &type, &v166))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v125 = gLogObj;
      v126 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_220;
      }

      v127 = *(a1 + 32);
      v128 = (v127 + 284);
      v129 = v127 == 0;
      if (!v127)
      {
        v128 = "";
      }

      v130 = *(v127 + 200);
      if (v129)
      {
        v131 = "";
      }

      else
      {
        v131 = " ";
      }

      *buf = 136446978;
      v169 = "nw_http_connect_process_inbound_data_block_invoke";
      v170 = 2082;
      v171 = v128;
      v172 = 2080;
      v173 = v131;
      v174 = 2048;
      *v175 = v130;
      v132 = "%{public}s %{public}s%sFailed to apply bytes to response message %p";
LABEL_219:
      _os_log_impl(&dword_181A37000, v125, v126, v132, buf, 0x2Au);
      goto LABEL_220;
    }

    if (v166 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v125 = gLogObj;
      v126 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_220;
      }

      v139 = *(a1 + 32);
      v140 = (v139 + 284);
      v141 = v139 == 0;
      if (!v139)
      {
        v140 = "";
      }

      v142 = *(v139 + 200);
      if (v141)
      {
        v143 = "";
      }

      else
      {
        v143 = " ";
      }

      *buf = 136446978;
      v169 = "nw_http_connect_process_inbound_data_block_invoke";
      v170 = 2082;
      v171 = v140;
      v172 = 2080;
      v173 = v143;
      v174 = 2048;
      *v175 = v142;
      v132 = "%{public}s %{public}s%sFailed to apply bytes to response message %p, backtrace limit exceeded";
      goto LABEL_219;
    }

    v133 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v125 = gLogObj;
    v126 = type;
    v134 = os_log_type_enabled(gLogObj, type);
    if (!v133)
    {
      if (!v134)
      {
        goto LABEL_220;
      }

      v144 = *(a1 + 32);
      v145 = (v144 + 284);
      v146 = v144 == 0;
      if (!v144)
      {
        v145 = "";
      }

      v147 = *(v144 + 200);
      if (v146)
      {
        v148 = "";
      }

      else
      {
        v148 = " ";
      }

      *buf = 136446978;
      v169 = "nw_http_connect_process_inbound_data_block_invoke";
      v170 = 2082;
      v171 = v145;
      v172 = 2080;
      v173 = v148;
      v174 = 2048;
      *v175 = v147;
      v132 = "%{public}s %{public}s%sFailed to apply bytes to response message %p, no backtrace";
      goto LABEL_219;
    }

    if (v134)
    {
      v135 = *(a1 + 32);
      v136 = (v135 + 284);
      if (v135)
      {
        v137 = " ";
      }

      else
      {
        v136 = "";
        v137 = "";
      }

      v138 = *(v135 + 200);
      *buf = 136447234;
      v169 = "nw_http_connect_process_inbound_data_block_invoke";
      v170 = 2082;
      v171 = v136;
      v172 = 2080;
      v173 = v137;
      v174 = 2048;
      *v175 = v138;
      *&v175[8] = 2082;
      *&v175[10] = v133;
      _os_log_impl(&dword_181A37000, v125, v126, "%{public}s %{public}s%sFailed to apply bytes to response message %p, dumping backtrace:%{public}s", buf, 0x34u);
    }

    free(v133);
  }

LABEL_220:
  if (v124)
  {
    v149 = v124;
LABEL_222:
    free(v149);
  }

  return 0;
}

void nw_http_connect_send_auth_request(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *v34 = 0;
    v35 = v34;
    v36 = 0x2000000000;
    v2 = *(a1 + 168);
    if (v2)
    {
      v2 = os_retain(v2);
    }

    v37 = v2;
    if (!*(a1 + 176) || *(a1 + 272))
    {
      Mutable = 0;
      v4 = *(a1 + 208);
      if (!v4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v6 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      username = nw_authentication_credential_get_username(*(a1 + 176));
      if (!username)
      {
        nw_authentication_credential_get_password(*(a1 + 176));
        goto LABEL_71;
      }

      v8 = CFStringCreateWithCString(v6, username, 0x8000100u);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(Mutable, @"kCFHTTPAuthenticationUsername", v8);
        CFRelease(v9);
        goto LABEL_51;
      }

      if ((*(a1 + 368) & 0x80) != 0)
      {
LABEL_51:
        password = nw_authentication_credential_get_password(*(a1 + 176));
        v23 = CFStringCreateWithCString(v6, password, 0x8000100u);
        if (v23)
        {
          v24 = v23;
          CFDictionarySetValue(Mutable, @"kCFHTTPAuthenticationPassword", v23);
          CFRelease(v24);
          goto LABEL_71;
        }

        if ((*(a1 + 368) & 0x80) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446722;
          v40 = "nw_http_connect_send_auth_request";
          v41 = 2082;
          v42 = (a1 + 284);
          v43 = 2080;
          v44 = " ";
          v10 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v33 = 0;
          if (!__nwlog_fault(v10, &type, &v33))
          {
            goto LABEL_69;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v11 = __nwlog_obj();
            v12 = type;
            if (!os_log_type_enabled(v11, type))
            {
              goto LABEL_69;
            }

            *buf = 136446722;
            v40 = "nw_http_connect_send_auth_request";
            v41 = 2082;
            v42 = (a1 + 284);
            v43 = 2080;
            v44 = " ";
            v13 = "%{public}s %{public}s%sCFStringCreateWithCString failed";
            goto LABEL_68;
          }

          if (v33 != 1)
          {
            v11 = __nwlog_obj();
            v12 = type;
            if (!os_log_type_enabled(v11, type))
            {
              goto LABEL_69;
            }

            *buf = 136446722;
            v40 = "nw_http_connect_send_auth_request";
            v41 = 2082;
            v42 = (a1 + 284);
            v43 = 2080;
            v44 = " ";
            v13 = "%{public}s %{public}s%sCFStringCreateWithCString failed, backtrace limit exceeded";
            goto LABEL_68;
          }

          backtrace_string = __nw_create_backtrace_string();
          v11 = __nwlog_obj();
          v12 = type;
          v26 = os_log_type_enabled(v11, type);
          if (!backtrace_string)
          {
            if (!v26)
            {
              goto LABEL_69;
            }

            *buf = 136446722;
            v40 = "nw_http_connect_send_auth_request";
            v41 = 2082;
            v42 = (a1 + 284);
            v43 = 2080;
            v44 = " ";
            v13 = "%{public}s %{public}s%sCFStringCreateWithCString failed, no backtrace";
            goto LABEL_68;
          }

          if (v26)
          {
            *buf = 136446978;
            v40 = "nw_http_connect_send_auth_request";
            v41 = 2082;
            v42 = (a1 + 284);
            v43 = 2080;
            v44 = " ";
            v45 = 2082;
            v46 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s %{public}s%sCFStringCreateWithCString failed, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
          if (v10)
          {
LABEL_70:
            free(v10);
          }
        }

LABEL_71:
        ++*(a1 + 272);
        v4 = *(a1 + 208);
        if (!v4)
        {
LABEL_8:
          if ((*(a1 + 368) & 0x80) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v5 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              *buf = 136446722;
              v40 = "nw_http_connect_send_auth_request";
              v41 = 2082;
              v42 = (a1 + 284);
              v43 = 2080;
              v44 = " ";
              _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s%shttp connect calling out for proxy authorization", buf, 0x20u);
            }
          }

          nw_http_connect_start_async(a1);
          _CFHTTPAuthenticationApplyProxyAuthorizationToRequest();
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          _Block_object_dispose(v34, 8);
          return;
        }

LABEL_7:
        CFRelease(v4);
        *(a1 + 208) = 0;
        goto LABEL_8;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446722;
      v40 = "nw_http_connect_send_auth_request";
      v41 = 2082;
      v42 = (a1 + 284);
      v43 = 2080;
      v44 = " ";
      v16 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v33 = 0;
      if (__nwlog_fault(v16, &type, &v33))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v17 = __nwlog_obj();
          v18 = type;
          if (!os_log_type_enabled(v17, type))
          {
            goto LABEL_49;
          }

          *buf = 136446722;
          v40 = "nw_http_connect_send_auth_request";
          v41 = 2082;
          v42 = (a1 + 284);
          v43 = 2080;
          v44 = " ";
          v19 = "%{public}s %{public}s%sCFStringCreateWithCString failed";
          goto LABEL_48;
        }

        if (v33 != 1)
        {
          v17 = __nwlog_obj();
          v18 = type;
          if (!os_log_type_enabled(v17, type))
          {
            goto LABEL_49;
          }

          *buf = 136446722;
          v40 = "nw_http_connect_send_auth_request";
          v41 = 2082;
          v42 = (a1 + 284);
          v43 = 2080;
          v44 = " ";
          v19 = "%{public}s %{public}s%sCFStringCreateWithCString failed, backtrace limit exceeded";
          goto LABEL_48;
        }

        v20 = __nw_create_backtrace_string();
        v17 = __nwlog_obj();
        v18 = type;
        v21 = os_log_type_enabled(v17, type);
        if (v20)
        {
          if (v21)
          {
            *buf = 136446978;
            v40 = "nw_http_connect_send_auth_request";
            v41 = 2082;
            v42 = (a1 + 284);
            v43 = 2080;
            v44 = " ";
            v45 = 2082;
            v46 = v20;
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s %{public}s%sCFStringCreateWithCString failed, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v20);
          goto LABEL_49;
        }

        if (v21)
        {
          *buf = 136446722;
          v40 = "nw_http_connect_send_auth_request";
          v41 = 2082;
          v42 = (a1 + 284);
          v43 = 2080;
          v44 = " ";
          v19 = "%{public}s %{public}s%sCFStringCreateWithCString failed, no backtrace";
LABEL_48:
          _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0x20u);
        }
      }

LABEL_49:
      if (v16)
      {
        free(v16);
      }

      goto LABEL_51;
    }

    if ((*(a1 + 368) & 0x80) != 0)
    {
      goto LABEL_71;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    v40 = "nw_http_connect_send_auth_request";
    v41 = 2082;
    v42 = (a1 + 284);
    v43 = 2080;
    v44 = " ";
    v10 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v10, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_69;
        }

        *buf = 136446722;
        v40 = "nw_http_connect_send_auth_request";
        v41 = 2082;
        v42 = (a1 + 284);
        v43 = 2080;
        v44 = " ";
        v13 = "%{public}s %{public}s%sCFDictionaryCreateMutable failed";
LABEL_68:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0x20u);
        goto LABEL_69;
      }

      if (v33 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_69;
        }

        *buf = 136446722;
        v40 = "nw_http_connect_send_auth_request";
        v41 = 2082;
        v42 = (a1 + 284);
        v43 = 2080;
        v44 = " ";
        v13 = "%{public}s %{public}s%sCFDictionaryCreateMutable failed, backtrace limit exceeded";
        goto LABEL_68;
      }

      v14 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      v15 = os_log_type_enabled(gLogObj, type);
      if (!v14)
      {
        if (!v15)
        {
          goto LABEL_69;
        }

        *buf = 136446722;
        v40 = "nw_http_connect_send_auth_request";
        v41 = 2082;
        v42 = (a1 + 284);
        v43 = 2080;
        v44 = " ";
        v13 = "%{public}s %{public}s%sCFDictionaryCreateMutable failed, no backtrace";
        goto LABEL_68;
      }

      if (v15)
      {
        *buf = 136446978;
        v40 = "nw_http_connect_send_auth_request";
        v41 = 2082;
        v42 = (a1 + 284);
        v43 = 2080;
        v44 = " ";
        v45 = 2082;
        v46 = v14;
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s %{public}s%sCFDictionaryCreateMutable failed, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v14);
    }

LABEL_69:
    if (!v10)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  __nwlog_obj();
  *buf = 136446210;
  v40 = "nw_http_connect_send_auth_request";
  v27 = _os_log_send_and_compose_impl();
  v34[0] = OS_LOG_TYPE_ERROR;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v27, v34, &type))
  {
    if (v34[0] == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = v34[0];
      if (!os_log_type_enabled(v28, v34[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      v40 = "nw_http_connect_send_auth_request";
      v30 = "%{public}s called with null http_connect";
      goto LABEL_86;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v28 = __nwlog_obj();
      v29 = v34[0];
      if (!os_log_type_enabled(v28, v34[0]))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      v40 = "nw_http_connect_send_auth_request";
      v30 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_86;
    }

    v31 = __nw_create_backtrace_string();
    v28 = __nwlog_obj();
    v29 = v34[0];
    v32 = os_log_type_enabled(v28, v34[0]);
    if (v31)
    {
      if (v32)
      {
        *buf = 136446466;
        v40 = "nw_http_connect_send_auth_request";
        v41 = 2082;
        v42 = v31;
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null http_connect, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v31);
      goto LABEL_87;
    }

    if (v32)
    {
      *buf = 136446210;
      v40 = "nw_http_connect_send_auth_request";
      v30 = "%{public}s called with null http_connect, no backtrace";
LABEL_86:
      _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
    }
  }

LABEL_87:
  if (v27)
  {
    free(v27);
  }
}

void ___ZL35nw_http_connect_send_auth_challengeP24nw_protocol_http_connect_block_invoke(uint64_t a1, char *object, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 40);
  if (!v6 || (*(v6 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = v8 == 0;
      if (v8)
      {
        v10 = (v8 + 284);
      }

      else
      {
        v10 = "";
      }

      *buf = 136446978;
      *&buf[4] = "nw_http_connect_send_auth_challenge_block_invoke";
      *&buf[12] = 2082;
      *&buf[14] = v10;
      if (v9)
      {
        v11 = "";
      }

      else
      {
        v11 = " ";
      }

      *&buf[22] = 2080;
      v18 = v11;
      v19 = 1024;
      v20 = a3;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}s%shttp connect returned from challenge handler, cancel is %d", buf, 0x26u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v18 = object;
  if (object)
  {
    os_retain(object);
  }

  v12 = *(*(*(a1 + 32) + 8) + 24);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZL35nw_http_connect_send_auth_challengeP24nw_protocol_http_connect_block_invoke_82;
  v15[3] = &unk_1E6A31EF0;
  v13 = *(a1 + 40);
  v15[4] = buf;
  v15[5] = v13;
  v16 = a3;
  nw_queue_context_async_if_needed(v12, v15);
  v14 = *(*(*(a1 + 32) + 8) + 24);
  if (v14)
  {
    os_release(v14);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  _Block_object_dispose(buf, 8);
}

void ___ZL35nw_http_connect_send_auth_challengeP24nw_protocol_http_connect_block_invoke_82(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!v2 || (*(v2 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    v4 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
    v2 = *(a1 + 40);
    if (v4)
    {
      v5 = "";
      v6 = (v2 + 284);
      if (!v2)
      {
        v6 = "";
      }

      v18 = 136446722;
      v19 = "nw_http_connect_send_auth_challenge_block_invoke";
      if (v2)
      {
        v5 = " ";
      }

      v20 = 2082;
      v21 = v6;
      v22 = 2080;
      v23 = v5;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s%shttp connect returned from challenge handler async", &v18, 0x20u);
      v2 = *(a1 + 40);
    }
  }

  if (nw_http_connect_end_async(v2))
  {
    if (*(a1 + 48) == 1)
    {
      nw_http_connect_fail(*(a1 + 40), 80);
    }

    else
    {
      v14 = *(a1 + 40);
      v15 = *(*(*(a1 + 32) + 8) + 24);
      if (v15)
      {
        v16 = *(v14 + 176);
        if (!v16 || (os_release(v16), v14 = *(a1 + 40), *(v14 + 176) = 0, (v15 = *(*(*(a1 + 32) + 8) + 24)) != 0))
        {
          v15 = os_retain(v15);
          v14 = *(a1 + 40);
        }

        *(v14 + 176) = v15;
        *(v14 + 272) = 0;
      }

      nw_http_connect_send_auth_request(v14);
    }

    v17 = *(*(*(a1 + 32) + 8) + 24);
    if (v17)
    {
      os_release(v17);
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (!v7 || (*(v7 + 368) & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 40);
        v10 = "";
        v11 = v9 == 0;
        if (v9)
        {
          v12 = (v9 + 284);
        }

        else
        {
          v12 = "";
        }

        v18 = 136446722;
        v19 = "nw_http_connect_send_auth_challenge_block_invoke";
        if (!v11)
        {
          v10 = " ";
        }

        v20 = 2082;
        v21 = v12;
        v22 = 2080;
        v23 = v10;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sStopping proxy authorization because state has changed to destroyed while getting authentication credentials", &v18, 0x20u);
      }
    }

    v13 = *(*(*(a1 + 32) + 8) + 24);
    if (v13)
    {
      os_release(v13);
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    nw_http_connect_destroy(*(a1 + 40));
  }
}

void ___ZL33nw_http_connect_send_auth_requestP24nw_protocol_http_connect_block_invoke(uint64_t a1, const char *cf, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 40);
  if (!v8 || (*(v8 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v11 = "";
      v12 = v10 == 0;
      if (v10)
      {
        v13 = (v10 + 284);
      }

      else
      {
        v13 = "";
      }

      *buf = 136446722;
      *&buf[4] = "nw_http_connect_send_auth_request_block_invoke";
      if (!v12)
      {
        v11 = " ";
      }

      *&buf[12] = 2082;
      *&buf[14] = v13;
      *&buf[22] = 2080;
      v19 = v11;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s %{public}s%shttp connect returned from proxy authorization", buf, 0x20u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v19 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v14 = *(*(*(a1 + 32) + 8) + 24);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = ___ZL33nw_http_connect_send_auth_requestP24nw_protocol_http_connect_block_invoke_35;
  v17[3] = &unk_1E6A31E08;
  v15 = *(a1 + 40);
  v17[4] = buf;
  v17[5] = v15;
  v17[6] = a3;
  v17[7] = a4;
  nw_queue_context_async_if_needed(v14, v17);
  v16 = *(*(*(a1 + 32) + 8) + 24);
  if (v16)
  {
    os_release(v16);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  _Block_object_dispose(buf, 8);
}

void ___ZL33nw_http_connect_send_auth_requestP24nw_protocol_http_connect_block_invoke_35(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!v2 || (*(v2 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    v4 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
    v2 = *(a1 + 40);
    if (v4)
    {
      v5 = "";
      v6 = (v2 + 284);
      if (!v2)
      {
        v6 = "";
      }

      *buf = 136446722;
      v57 = "nw_http_connect_send_auth_request_block_invoke";
      if (v2)
      {
        v5 = " ";
      }

      v58 = 2082;
      v59 = v6;
      v60 = 2080;
      v61 = v5;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s%shttp connect returned from proxy authorization async", buf, 0x20u);
      v2 = *(a1 + 40);
    }
  }

  *(v2 + 208) = *(*(*(a1 + 32) + 8) + 24);
  v7 = nw_http_connect_end_async(v2);
  v8 = *(a1 + 40);
  if (!v7)
  {
    if (!v8 || (*(v8 + 368) & 0x80) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
      v8 = *(a1 + 40);
      if (v17)
      {
        v18 = "";
        v19 = (v8 + 284);
        if (!v8)
        {
          v19 = "";
        }

        *buf = 136446722;
        v57 = "nw_http_connect_send_auth_request_block_invoke";
        if (v8)
        {
          v18 = " ";
        }

        v58 = 2082;
        v59 = v19;
        v60 = 2080;
        v61 = v18;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sStopping proxy authorization because state has changed to destroyed while getting signed request", buf, 0x20u);
        v8 = *(a1 + 40);
      }
    }

    nw_http_connect_destroy(v8);
    return;
  }

  v9 = *(v8 + 168);
  if ((!v9 || *(v9 + 132) != 4) && (*(v8 + 368) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
    v8 = *(a1 + 40);
    if (v11)
    {
      v12 = (v8 + 284);
      v13 = "";
      if (!v8)
      {
        v12 = "";
      }

      v14 = *(*(*(a1 + 32) + 8) + 24);
      if (v8)
      {
        v13 = " ";
      }

      v15 = *(a1 + 56);
      *buf = 136447234;
      v57 = "nw_http_connect_send_auth_request_block_invoke";
      v58 = 2082;
      v59 = v12;
      v60 = 2080;
      v61 = v13;
      v62 = 2048;
      v63 = v14;
      v64 = 1024;
      v65 = v15;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s %{public}s%shttp connect proxy authentication received request %p error %d", buf, 0x30u);
      v8 = *(a1 + 40);
    }
  }

  if (*(a1 + 56))
  {
    if (!v8)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v20 = *(v8 + 208);
  if (!v20)
  {
LABEL_36:
    if ((*(v8 + 368) & 0x80) != 0)
    {
LABEL_43:
      if (*(a1 + 48) == 1)
      {
        v23 = *(a1 + 56);
      }

      else
      {
        v23 = 80;
      }

      v22 = *(a1 + 40);
      goto LABEL_47;
    }

LABEL_37:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 40);
      v26 = (v25 + 284);
      v27 = "";
      v28 = v25 == 0;
      v29 = *(a1 + 56);
      if (v28)
      {
        v26 = "";
      }

      v57 = "nw_http_connect_send_auth_request_block_invoke";
      v58 = 2082;
      *buf = 136446978;
      if (!v28)
      {
        v27 = " ";
      }

      v59 = v26;
      v60 = 2080;
      v61 = v27;
      v62 = 1024;
      LODWORD(v63) = v29;
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sProxy authentication failed with error %d, cancelling connection", buf, 0x26u);
    }

    goto LABEL_43;
  }

  v21 = *(v8 + 368);
  if ((v21 & 0x20) != 0)
  {
    if (nw_http_connect_restart_after_disconnect(v8))
    {
      return;
    }

    v30 = *(*(a1 + 40) + 72);
    if (v30)
    {
      v31 = *(v30 + 24);
      if (v31)
      {
        v32 = *(v31 + 48);
        if (v32)
        {
          v32();
          return;
        }
      }
    }

    __nwlog_obj();
    v33 = *(*(a1 + 40) + 72);
    v34 = "invalid";
    if (v33)
    {
      v35 = *(v33 + 16);
      if (v35)
      {
        v34 = v35;
      }
    }

    *buf = 136446466;
    v57 = "nw_http_connect_send_auth_request_block_invoke";
    v58 = 2082;
    v59 = v34;
    v36 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v36, &type, &v54))
    {
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_83;
      }

      v39 = *(*(a1 + 40) + 72);
      v40 = "invalid";
      if (v39)
      {
        v41 = *(v39 + 16);
        if (v41)
        {
          v40 = v41;
        }
      }

      *buf = 136446466;
      v57 = "nw_http_connect_send_auth_request_block_invoke";
      v58 = 2082;
      v59 = v40;
      v42 = "%{public}s protocol %{public}s has invalid disconnected callback";
    }

    else if (v54 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v38 = type;
      v44 = os_log_type_enabled(v37, type);
      if (backtrace_string)
      {
        if (v44)
        {
          v45 = *(*(a1 + 40) + 72);
          v46 = "invalid";
          if (v45)
          {
            v47 = *(v45 + 16);
            if (v47)
            {
              v46 = v47;
            }
          }

          *buf = 136446722;
          v57 = "nw_http_connect_send_auth_request_block_invoke";
          v58 = 2082;
          v59 = v46;
          v60 = 2082;
          v61 = backtrace_string;
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
        goto LABEL_83;
      }

      if (!v44)
      {
LABEL_83:
        if (v36)
        {
          free(v36);
        }

        return;
      }

      v51 = *(*(a1 + 40) + 72);
      v52 = "invalid";
      if (v51)
      {
        v53 = *(v51 + 16);
        if (v53)
        {
          v52 = v53;
        }
      }

      *buf = 136446466;
      v57 = "nw_http_connect_send_auth_request_block_invoke";
      v58 = 2082;
      v59 = v52;
      v42 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
    }

    else
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_83;
      }

      v48 = *(*(a1 + 40) + 72);
      v49 = "invalid";
      if (v48)
      {
        v50 = *(v48 + 16);
        if (v50)
        {
          v49 = v50;
        }
      }

      *buf = 136446466;
      v57 = "nw_http_connect_send_auth_request_block_invoke";
      v58 = 2082;
      v59 = v49;
      v42 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v37, v38, v42, buf, 0x16u);
    goto LABEL_83;
  }

  if ((v21 & 0x18) == 0x10 && (nw_http_connect_send_request(v8, v20) & 1) == 0)
  {
    v22 = *(a1 + 40);
    v23 = 22;
LABEL_47:
    nw_http_connect_fail(v22, v23);
  }
}

uint64_t nw_protocol_http_connect_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_connect_remove_input_handler";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_connect_remove_input_handler";
    v16 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v16, type, &v25))
    {
      goto LABEL_50;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v25 != 1)
      {
        v17 = __nwlog_obj();
        v18 = type[0];
        if (!os_log_type_enabled(v17, type[0]))
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_connect_remove_input_handler";
        v19 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_49;
      }

      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type[0];
      v21 = os_log_type_enabled(v17, type[0]);
      if (!backtrace_string)
      {
        if (!v21)
        {
          goto LABEL_50;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_http_connect_remove_input_handler";
        v19 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_49;
      }

      if (v21)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http_connect_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v22 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_37:
        _os_log_impl(&dword_181A37000, v17, v18, v22, buf, 0x16u);
      }

LABEL_38:
      free(backtrace_string);
      goto LABEL_50;
    }

    v17 = __nwlog_obj();
    v18 = type[0];
    if (!os_log_type_enabled(v17, type[0]))
    {
      goto LABEL_50;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_connect_remove_input_handler";
    v19 = "%{public}s called with null protocol";
LABEL_49:
    _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
LABEL_50:
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
    *&buf[4] = "nw_protocol_http_connect_remove_input_handler";
    v16 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v16, type, &v25))
    {
      goto LABEL_50;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type[0];
      if (!os_log_type_enabled(v17, type[0]))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_connect_remove_input_handler";
      v19 = "%{public}s called with null http_connect";
      goto LABEL_49;
    }

    if (v25 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type[0];
      if (!os_log_type_enabled(v17, type[0]))
      {
        goto LABEL_50;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http_connect_remove_input_handler";
      v19 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_49;
    }

    backtrace_string = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type[0];
    v23 = os_log_type_enabled(v17, type[0]);
    if (backtrace_string)
    {
      if (v23)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http_connect_remove_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v22 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (!v23)
    {
      goto LABEL_50;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_connect_remove_input_handler";
    v19 = "%{public}s called with null http_connect, no backtrace";
    goto LABEL_49;
  }

  if (a2->output_handler == a1)
  {
    nw_protocol_set_output_handler(a2, 0);
  }

  if (a1->default_input_handler != a2)
  {
    return 0;
  }

  v8 = handle + 28;
  if (gLogDatapath == 1)
  {
    v24 = __nwlog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v9 = *v8;
  if (*v8)
  {
    *(v9 + 40) = type;
    v10 = handle[29];
    *type = v9;
    v27 = v10;
    handle[28] = 0;
    handle[29] = v8;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v29 = &__block_descriptor_tmp_21_49595;
    v30 = 0;
    do
    {
      v11 = *type;
      if (!*type)
      {
        break;
      }

      v12 = *(*type + 32);
      v13 = *(*type + 40);
      v14 = (v12 + 40);
      if (!v12)
      {
        v14 = &v27;
      }

      *v14 = v13;
      *v13 = v12;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  nw_protocol_remove_input_handler(a1->output_handler->flow_id, a1);
  nw_protocol_set_input_handler(a1, 0);
  if (a3)
  {
    a1->handle = 0;
    nw_http_connect_destroy(handle);
  }

  return 1;
}

uint64_t nw_protocol_http_connect_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v102 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v75 = __nwlog_obj();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v95 = "nw_protocol_http_connect_add_input_handler";
      _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v95 = "nw_protocol_http_connect_add_input_handler";
    v76 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v92 = 0;
    if (!__nwlog_fault(v76, &type, &v92))
    {
      goto LABEL_198;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v92 != 1)
      {
        v77 = __nwlog_obj();
        v78 = type;
        if (!os_log_type_enabled(v77, type))
        {
          goto LABEL_198;
        }

        *buf = 136446210;
        v95 = "nw_protocol_http_connect_add_input_handler";
        v79 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_197;
      }

      backtrace_string = __nw_create_backtrace_string();
      v77 = __nwlog_obj();
      v78 = type;
      v81 = os_log_type_enabled(v77, type);
      if (!backtrace_string)
      {
        if (!v81)
        {
          goto LABEL_198;
        }

        *buf = 136446210;
        v95 = "nw_protocol_http_connect_add_input_handler";
        v79 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_197;
      }

      if (v81)
      {
        *buf = 136446466;
        v95 = "nw_protocol_http_connect_add_input_handler";
        v96 = 2082;
        v97 = backtrace_string;
        v82 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_187:
        _os_log_impl(&dword_181A37000, v77, v78, v82, buf, 0x16u);
      }

LABEL_188:
      free(backtrace_string);
      goto LABEL_198;
    }

    v77 = __nwlog_obj();
    v78 = type;
    if (!os_log_type_enabled(v77, type))
    {
      goto LABEL_198;
    }

    *buf = 136446210;
    v95 = "nw_protocol_http_connect_add_input_handler";
    v79 = "%{public}s called with null protocol";
LABEL_197:
    _os_log_impl(&dword_181A37000, v77, v78, v79, buf, 0xCu);
LABEL_198:
    if (v76)
    {
      free(v76);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v95 = "nw_protocol_http_connect_add_input_handler";
    v76 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v92 = 0;
    if (!__nwlog_fault(v76, &type, &v92))
    {
      goto LABEL_198;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v77 = __nwlog_obj();
      v78 = type;
      if (!os_log_type_enabled(v77, type))
      {
        goto LABEL_198;
      }

      *buf = 136446210;
      v95 = "nw_protocol_http_connect_add_input_handler";
      v79 = "%{public}s called with null http_connect";
      goto LABEL_197;
    }

    if (v92 != 1)
    {
      v77 = __nwlog_obj();
      v78 = type;
      if (!os_log_type_enabled(v77, type))
      {
        goto LABEL_198;
      }

      *buf = 136446210;
      v95 = "nw_protocol_http_connect_add_input_handler";
      v79 = "%{public}s called with null http_connect, backtrace limit exceeded";
      goto LABEL_197;
    }

    backtrace_string = __nw_create_backtrace_string();
    v77 = __nwlog_obj();
    v78 = type;
    v83 = os_log_type_enabled(v77, type);
    if (backtrace_string)
    {
      if (v83)
      {
        *buf = 136446466;
        v95 = "nw_protocol_http_connect_add_input_handler";
        v96 = 2082;
        v97 = backtrace_string;
        v82 = "%{public}s called with null http_connect, dumping backtrace:%{public}s";
        goto LABEL_187;
      }

      goto LABEL_188;
    }

    if (!v83)
    {
      goto LABEL_198;
    }

    *buf = 136446210;
    v95 = "nw_protocol_http_connect_add_input_handler";
    v79 = "%{public}s called with null http_connect, no backtrace";
    goto LABEL_197;
  }

  if (a2)
  {
    callbacks = a2->callbacks;
    if (callbacks)
    {
      get_parameters = callbacks->get_parameters;
      if (get_parameters)
      {
        v7 = get_parameters(a2);
        if (v7)
        {
          v8 = v7;
          v9 = _nw_parameters_copy_protocol_options_with_level();

          if (v9)
          {
            v10 = v9;
            v11 = _nw_protocol_options_get_log_id_str(v10, handle + 284) == 0;

            if (v11)
            {
              log_id_num = _nw_protocol_options_get_log_id_num(v10);
              if (log_id_num)
              {
                snprintf(handle + 284, 0x54uLL, "C%llu", log_id_num);
              }
            }
          }

          if (!handle[284])
          {
            snprintf(handle + 284, 0x54uLL, "http_connect[%llu]", ++nw_protocol_http_connect_add_input_handler(nw_protocol *,nw_protocol *)::http_connect_count);
          }

          if (_nw_parameters_get_logging_disabled(v8))
          {
            v13 = 128;
          }

          else
          {
            v13 = 0;
          }

          *(handle + 184) = *(handle + 184) & 0xFF7F | v13;
          v14 = a2->callbacks;
          if (v14)
          {
            get_path = v14->get_path;
            if (get_path)
            {
              v16 = get_path(a2);
              if (v16)
              {
                v17 = v16;
                v18 = _nw_path_get_nexus_agent_uuid_check_assertion(v17, handle + 240, 0);

                *(handle + 184) = *(handle + 184) & 0xFFFE | v18;
                v19 = (a2->callbacks->get_remote_endpoint)(a2);
                if (v19)
                {
                  v20 = os_retain(v19);
                  *(handle + 17) = v20;
                  if (v20)
                  {
                    v21 = v20;
                    v22 = _nw_endpoint_get_type(v21);

                    if ((v22 - 3) <= 0xFFFFFFFD)
                    {
                      if ((*(handle + 184) & 0x80) == 0)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        *buf = 136446722;
                        v95 = "nw_protocol_http_connect_add_input_handler";
                        v96 = 2082;
                        v97 = handle + 284;
                        v98 = 2080;
                        v99 = " ";
                        v23 = _os_log_send_and_compose_impl();
                        type = OS_LOG_TYPE_ERROR;
                        v92 = 0;
                        if (!__nwlog_fault(v23, &type, &v92))
                        {
                          goto LABEL_150;
                        }

                        if (type == OS_LOG_TYPE_FAULT)
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v24 = gLogObj;
                          v25 = type;
                          if (!os_log_type_enabled(gLogObj, type))
                          {
                            goto LABEL_150;
                          }

                          *buf = 136446722;
                          v95 = "nw_protocol_http_connect_add_input_handler";
                          v96 = 2082;
                          v97 = handle + 284;
                          v98 = 2080;
                          v99 = " ";
                          v26 = "%{public}s %{public}s%sRemote endpoint is wrong type";
                          goto LABEL_149;
                        }

                        if (v92 != 1)
                        {
                          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                          networkd_settings_init();
                          v24 = gLogObj;
                          v25 = type;
                          if (!os_log_type_enabled(gLogObj, type))
                          {
                            goto LABEL_150;
                          }

                          *buf = 136446722;
                          v95 = "nw_protocol_http_connect_add_input_handler";
                          v96 = 2082;
                          v97 = handle + 284;
                          v98 = 2080;
                          v99 = " ";
                          v26 = "%{public}s %{public}s%sRemote endpoint is wrong type, backtrace limit exceeded";
                          goto LABEL_149;
                        }

                        v33 = __nw_create_backtrace_string();
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v24 = gLogObj;
                        v25 = type;
                        v42 = os_log_type_enabled(gLogObj, type);
                        if (!v33)
                        {
                          if (!v42)
                          {
                            goto LABEL_150;
                          }

                          *buf = 136446722;
                          v95 = "nw_protocol_http_connect_add_input_handler";
                          v96 = 2082;
                          v97 = handle + 284;
                          v98 = 2080;
                          v99 = " ";
                          v26 = "%{public}s %{public}s%sRemote endpoint is wrong type, no backtrace";
LABEL_149:
                          _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0x20u);
LABEL_150:
                          if (v23)
                          {
                            free(v23);
                          }

                          goto LABEL_152;
                        }

                        if (v42)
                        {
                          *buf = 136446978;
                          v95 = "nw_protocol_http_connect_add_input_handler";
                          v96 = 2082;
                          v97 = handle + 284;
                          v98 = 2080;
                          v99 = " ";
                          v100 = 2082;
                          v101 = v33;
                          v35 = "%{public}s %{public}s%sRemote endpoint is wrong type, dumping backtrace:%{public}s";
                          goto LABEL_77;
                        }

LABEL_78:
                        free(v33);
                        goto LABEL_150;
                      }

LABEL_152:
                      nw_http_connect_destroy(handle);
                      if (v9)
                      {
                        os_release(v9);
                      }

                      return 0;
                    }

                    v37 = *(handle + 20);
                    if (v37)
                    {
                      os_release(v37);
                      *(handle + 20) = 0;
                    }

                    v38 = *(handle + 19);
                    if (v38)
                    {
                      os_release(v38);
                      *(handle + 19) = 0;
                    }

                    if (v9)
                    {
                      v39 = _nw_protocol_options_copy_proxy_endpoint(v9);
                      *(handle + 20) = v39;
                      v40 = v39 != 0;
                      if (_nw_protocol_options_proxy_endpoint_should_override_stack(v9))
                      {
                        v41 = *(handle + 20);
                        if (v41)
                        {
                          v41 = os_retain(v41);
                        }

                        *(handle + 19) = v41;
                      }

                      else
                      {
                        v41 = *(handle + 19);
                      }

                      if (!v41)
                      {
                        *(handle + 19) = nw_endpoint_copy_without_proxy_parent(*(handle + 17));
                      }

                      os_release(v9);
                    }

                    else
                    {
                      v40 = 0;
                      *(handle + 19) = nw_endpoint_copy_without_proxy_parent(*(handle + 17));
                    }

                    v44 = *(handle + 18);
                    if (v44)
                    {
                      os_release(v44);
                      *(handle + 18) = 0;
                    }

                    v45 = nw_endpoint_copy_proxy_original_endpoint(*(handle + 17));
                    *(handle + 18) = v45;
                    if (!v45)
                    {
                      if (!v40)
                      {
                        if ((*(handle + 184) & 0x80) != 0)
                        {
                          goto LABEL_85;
                        }

                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        *buf = 136446722;
                        v95 = "nw_protocol_http_connect_add_input_handler";
                        v96 = 2082;
                        v97 = handle + 284;
                        v98 = 2080;
                        v99 = " ";
                        v46 = _os_log_send_and_compose_impl();
                        type = OS_LOG_TYPE_ERROR;
                        v92 = 0;
                        if (!__nwlog_fault(v46, &type, &v92))
                        {
                          goto LABEL_167;
                        }

                        if (type == OS_LOG_TYPE_FAULT)
                        {
                          v47 = __nwlog_obj();
                          v48 = type;
                          if (!os_log_type_enabled(v47, type))
                          {
                            goto LABEL_167;
                          }

                          *buf = 136446722;
                          v95 = "nw_protocol_http_connect_add_input_handler";
                          v96 = 2082;
                          v97 = handle + 284;
                          v98 = 2080;
                          v99 = " ";
                          v49 = "%{public}s %{public}s%sNo proxy original endpoint";
                          goto LABEL_166;
                        }

                        if (v92 != 1)
                        {
                          v47 = __nwlog_obj();
                          v48 = type;
                          if (!os_log_type_enabled(v47, type))
                          {
                            goto LABEL_167;
                          }

                          *buf = 136446722;
                          v95 = "nw_protocol_http_connect_add_input_handler";
                          v96 = 2082;
                          v97 = handle + 284;
                          v98 = 2080;
                          v99 = " ";
                          v49 = "%{public}s %{public}s%sNo proxy original endpoint, backtrace limit exceeded";
                          goto LABEL_166;
                        }

                        v73 = __nw_create_backtrace_string();
                        v47 = __nwlog_obj();
                        v48 = type;
                        v74 = os_log_type_enabled(v47, type);
                        if (!v73)
                        {
                          if (!v74)
                          {
                            goto LABEL_167;
                          }

                          *buf = 136446722;
                          v95 = "nw_protocol_http_connect_add_input_handler";
                          v96 = 2082;
                          v97 = handle + 284;
                          v98 = 2080;
                          v99 = " ";
                          v49 = "%{public}s %{public}s%sNo proxy original endpoint, no backtrace";
                          goto LABEL_166;
                        }

                        if (v74)
                        {
                          *buf = 136446978;
                          v95 = "nw_protocol_http_connect_add_input_handler";
                          v96 = 2082;
                          v97 = handle + 284;
                          v98 = 2080;
                          v99 = " ";
                          v100 = 2082;
                          v101 = v73;
                          _os_log_impl(&dword_181A37000, v47, v48, "%{public}s %{public}s%sNo proxy original endpoint, dumping backtrace:%{public}s", buf, 0x2Au);
                        }

                        free(v73);
                        goto LABEL_167;
                      }

                      v45 = *(handle + 17);
                      if (v45)
                      {
                        v45 = os_retain(v45);
                      }

                      *(handle + 18) = v45;
                    }

                    if (nw_endpoint_get_type(v45) - 3 <= 0xFFFFFFFD)
                    {
                      if ((*(handle + 184) & 0x80) != 0)
                      {
                        goto LABEL_85;
                      }

                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      *buf = 136446722;
                      v95 = "nw_protocol_http_connect_add_input_handler";
                      v96 = 2082;
                      v97 = handle + 284;
                      v98 = 2080;
                      v99 = " ";
                      v46 = _os_log_send_and_compose_impl();
                      type = OS_LOG_TYPE_ERROR;
                      v92 = 0;
                      if (!__nwlog_fault(v46, &type, &v92))
                      {
                        goto LABEL_167;
                      }

                      if (type == OS_LOG_TYPE_FAULT)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v47 = gLogObj;
                        v48 = type;
                        if (!os_log_type_enabled(gLogObj, type))
                        {
                          goto LABEL_167;
                        }

                        *buf = 136446722;
                        v95 = "nw_protocol_http_connect_add_input_handler";
                        v96 = 2082;
                        v97 = handle + 284;
                        v98 = 2080;
                        v99 = " ";
                        v49 = "%{public}s %{public}s%sProxy original endpoint is wrong type";
                        goto LABEL_166;
                      }

                      if (v92 != 1)
                      {
                        v47 = __nwlog_obj();
                        v48 = type;
                        if (!os_log_type_enabled(v47, type))
                        {
                          goto LABEL_167;
                        }

                        *buf = 136446722;
                        v95 = "nw_protocol_http_connect_add_input_handler";
                        v96 = 2082;
                        v97 = handle + 284;
                        v98 = 2080;
                        v99 = " ";
                        v49 = "%{public}s %{public}s%sProxy original endpoint is wrong type, backtrace limit exceeded";
                        goto LABEL_166;
                      }

                      v60 = __nw_create_backtrace_string();
                      v47 = __nwlog_obj();
                      v48 = type;
                      v61 = os_log_type_enabled(v47, type);
                      if (v60)
                      {
                        if (v61)
                        {
                          *buf = 136446978;
                          v95 = "nw_protocol_http_connect_add_input_handler";
                          v96 = 2082;
                          v97 = handle + 284;
                          v98 = 2080;
                          v99 = " ";
                          v100 = 2082;
                          v101 = v60;
                          _os_log_impl(&dword_181A37000, v47, v48, "%{public}s %{public}s%sProxy original endpoint is wrong type, dumping backtrace:%{public}s", buf, 0x2Au);
                        }

                        free(v60);
                        if (!v46)
                        {
                          goto LABEL_85;
                        }

LABEL_168:
                        v43 = v46;
                        goto LABEL_84;
                      }

                      if (v61)
                      {
                        *buf = 136446722;
                        v95 = "nw_protocol_http_connect_add_input_handler";
                        v96 = 2082;
                        v97 = handle + 284;
                        v98 = 2080;
                        v99 = " ";
                        v49 = "%{public}s %{public}s%sProxy original endpoint is wrong type, no backtrace";
LABEL_166:
                        _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0x20u);
                      }

LABEL_167:
                      if (!v46)
                      {
                        goto LABEL_85;
                      }

                      goto LABEL_168;
                    }

                    nw_protocol_set_input_handler(a1, a2);
                    if (!a2->output_handler)
                    {
                      nw_protocol_set_output_handler(a2, handle + 3);
                    }

                    *(handle + 24) = *a2->flow_id;
                    if (nw_proxy_copy_http_connect_definition::onceToken != -1)
                    {
                      dispatch_once(&nw_proxy_copy_http_connect_definition::onceToken, &__block_literal_global_102);
                    }

                    v50 = nw_proxy_copy_http_connect_definition::proxy_definition;
                    v51 = v8;
                    v52 = v50;
                    v53 = v52;
                    if (v52)
                    {
                      v54 = v52;

                      v55 = _nw_parameters_copy_proxy_options(v51, v54 + 8);
                      goto LABEL_110;
                    }

                    v84 = __nwlog_obj();
                    *buf = 136446210;
                    v95 = "nw_parameters_copy_proxy_options";
                    v85 = _os_log_send_and_compose_impl();

                    type = OS_LOG_TYPE_ERROR;
                    v92 = 0;
                    if (__nwlog_fault(v85, &type, &v92))
                    {
                      if (type == OS_LOG_TYPE_FAULT)
                      {
                        v86 = __nwlog_obj();
                        v87 = type;
                        if (os_log_type_enabled(v86, type))
                        {
                          *buf = 136446210;
                          v95 = "nw_parameters_copy_proxy_options";
                          _os_log_impl(&dword_181A37000, v86, v87, "%{public}s called with null proxy_protocol", buf, 0xCu);
                        }
                      }

                      else if (v92 == 1)
                      {
                        v88 = __nw_create_backtrace_string();
                        v86 = __nwlog_obj();
                        v89 = type;
                        v90 = os_log_type_enabled(v86, type);
                        if (v88)
                        {
                          if (v90)
                          {
                            *buf = 136446466;
                            v95 = "nw_parameters_copy_proxy_options";
                            v96 = 2082;
                            v97 = v88;
                            _os_log_impl(&dword_181A37000, v86, v89, "%{public}s called with null proxy_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                          }

                          free(v88);
                          goto LABEL_216;
                        }

                        if (v90)
                        {
                          *buf = 136446210;
                          v95 = "nw_parameters_copy_proxy_options";
                          _os_log_impl(&dword_181A37000, v86, v89, "%{public}s called with null proxy_protocol, no backtrace", buf, 0xCu);
                        }
                      }

                      else
                      {
                        v86 = __nwlog_obj();
                        v91 = type;
                        if (os_log_type_enabled(v86, type))
                        {
                          *buf = 136446210;
                          v95 = "nw_parameters_copy_proxy_options";
                          _os_log_impl(&dword_181A37000, v86, v91, "%{public}s called with null proxy_protocol, backtrace limit exceeded", buf, 0xCu);
                        }
                      }
                    }

LABEL_216:
                    if (v85)
                    {
                      free(v85);
                    }

                    v55 = 0;
LABEL_110:

                    *(handle + 23) = v55;
                    v56 = _nw_parameters_copy_effective_proxy_config(v51);
                    if (!v56)
                    {
LABEL_144:
                      v70 = _nw_parameters_copy_context(v51);
                      *(handle + 28) = 0;
                      v71 = handle + 224;
                      *(v71 - 7) = v70;
                      *(v71 + 14) = 0;
                      *(v71 + 1) = v71;
                      return 1;
                    }

                    v57 = v56;
                    v58 = v57;
                    if (v57[38] == 1)
                    {
                      v59 = (v57[39] == 4002) << 8;
                    }

                    else
                    {
                      v59 = 0;
                    }

                    *(handle + 184) = *(handle + 184) & 0xFEFF | v59;
                    v62 = v58;
                    v63 = v62[13];

                    if (v63 && (username = nw_authentication_credential_get_username(v63), (password = nw_authentication_credential_get_password(v63)) != 0))
                    {
                      if (username && *username && *password)
                      {
                        v66 = password;
                        v67 = *(handle + 22);
                        if (v67)
                        {
                          os_release(v67);
                          *(handle + 22) = 0;
                        }

                        v68 = nw_authentication_credential_create(1);
                        *(handle + 22) = v68;
                        *(handle + 68) = 0;
                        nw_authentication_credential_set_username(v68, username);
                        nw_authentication_credential_set_password(*(handle + 22), v66);
                      }
                    }

                    else
                    {
                      v69 = nw_proxy_config_copy_endpoint(v62);
                      nw_endpoint_get_hostname(v69);
                      if (v69)
                      {
                        os_release(v69);
                      }

                      if (!v63)
                      {
                        goto LABEL_143;
                      }
                    }

                    os_release(v63);
LABEL_143:
                    os_release(v62);
                    goto LABEL_144;
                  }
                }

                else
                {
                  *(handle + 17) = 0;
                }

                if ((*(handle + 184) & 0x80) != 0)
                {
                  goto LABEL_152;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                *buf = 136446722;
                v95 = "nw_protocol_http_connect_add_input_handler";
                v96 = 2082;
                v97 = handle + 284;
                v98 = 2080;
                v99 = " ";
                v23 = _os_log_send_and_compose_impl();
                type = OS_LOG_TYPE_ERROR;
                v92 = 0;
                if (!__nwlog_fault(v23, &type, &v92))
                {
                  goto LABEL_150;
                }

                if (type == OS_LOG_TYPE_FAULT)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v24 = gLogObj;
                  v25 = type;
                  if (!os_log_type_enabled(gLogObj, type))
                  {
                    goto LABEL_150;
                  }

                  *buf = 136446722;
                  v95 = "nw_protocol_http_connect_add_input_handler";
                  v96 = 2082;
                  v97 = handle + 284;
                  v98 = 2080;
                  v99 = " ";
                  v26 = "%{public}s %{public}s%sNo remote endpoint";
                  goto LABEL_149;
                }

                if (v92 != 1)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v24 = gLogObj;
                  v25 = type;
                  if (!os_log_type_enabled(gLogObj, type))
                  {
                    goto LABEL_150;
                  }

                  *buf = 136446722;
                  v95 = "nw_protocol_http_connect_add_input_handler";
                  v96 = 2082;
                  v97 = handle + 284;
                  v98 = 2080;
                  v99 = " ";
                  v26 = "%{public}s %{public}s%sNo remote endpoint, backtrace limit exceeded";
                  goto LABEL_149;
                }

                v33 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v24 = gLogObj;
                v25 = type;
                v34 = os_log_type_enabled(gLogObj, type);
                if (!v33)
                {
                  if (!v34)
                  {
                    goto LABEL_150;
                  }

                  *buf = 136446722;
                  v95 = "nw_protocol_http_connect_add_input_handler";
                  v96 = 2082;
                  v97 = handle + 284;
                  v98 = 2080;
                  v99 = " ";
                  v26 = "%{public}s %{public}s%sNo remote endpoint, no backtrace";
                  goto LABEL_149;
                }

                if (!v34)
                {
                  goto LABEL_78;
                }

                *buf = 136446978;
                v95 = "nw_protocol_http_connect_add_input_handler";
                v96 = 2082;
                v97 = handle + 284;
                v98 = 2080;
                v99 = " ";
                v100 = 2082;
                v101 = v33;
                v35 = "%{public}s %{public}s%sNo remote endpoint, dumping backtrace:%{public}s";
LABEL_77:
                _os_log_impl(&dword_181A37000, v24, v25, v35, buf, 0x2Au);
                goto LABEL_78;
              }

              v13 = *(handle + 184) & 0x80;
            }
          }

          if (v13)
          {
            goto LABEL_152;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446722;
          v95 = "nw_protocol_http_connect_add_input_handler";
          v96 = 2082;
          v97 = handle + 284;
          v98 = 2080;
          v99 = " ";
          v23 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v92 = 0;
          if (!__nwlog_fault(v23, &type, &v92))
          {
            goto LABEL_150;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v24 = gLogObj;
            v25 = type;
            if (!os_log_type_enabled(gLogObj, type))
            {
              goto LABEL_150;
            }

            *buf = 136446722;
            v95 = "nw_protocol_http_connect_add_input_handler";
            v96 = 2082;
            v97 = handle + 284;
            v98 = 2080;
            v99 = " ";
            v26 = "%{public}s %{public}s%sUnable to get path";
            goto LABEL_149;
          }

          if (v92 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v24 = gLogObj;
            v25 = type;
            if (!os_log_type_enabled(gLogObj, type))
            {
              goto LABEL_150;
            }

            *buf = 136446722;
            v95 = "nw_protocol_http_connect_add_input_handler";
            v96 = 2082;
            v97 = handle + 284;
            v98 = 2080;
            v99 = " ";
            v26 = "%{public}s %{public}s%sUnable to get path, backtrace limit exceeded";
            goto LABEL_149;
          }

          v33 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v24 = gLogObj;
          v25 = type;
          v36 = os_log_type_enabled(gLogObj, type);
          if (!v33)
          {
            if (!v36)
            {
              goto LABEL_150;
            }

            *buf = 136446722;
            v95 = "nw_protocol_http_connect_add_input_handler";
            v96 = 2082;
            v97 = handle + 284;
            v98 = 2080;
            v99 = " ";
            v26 = "%{public}s %{public}s%sUnable to get path, no backtrace";
            goto LABEL_149;
          }

          if (!v36)
          {
            goto LABEL_78;
          }

          *buf = 136446978;
          v95 = "nw_protocol_http_connect_add_input_handler";
          v96 = 2082;
          v97 = handle + 284;
          v98 = 2080;
          v99 = " ";
          v100 = 2082;
          v101 = v33;
          v35 = "%{public}s %{public}s%sUnable to get path, dumping backtrace:%{public}s";
          goto LABEL_77;
        }
      }
    }
  }

  if ((*(handle + 184) & 0x80) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    v95 = "nw_protocol_http_connect_add_input_handler";
    v96 = 2082;
    v97 = handle + 284;
    v98 = 2080;
    v99 = " ";
    v27 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v92 = 0;
    if (!__nwlog_fault(v27, &type, &v92))
    {
      goto LABEL_82;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      v29 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_82;
      }

      *buf = 136446722;
      v95 = "nw_protocol_http_connect_add_input_handler";
      v96 = 2082;
      v97 = handle + 284;
      v98 = 2080;
      v99 = " ";
      v30 = "%{public}s %{public}s%sUnable to get parameters";
    }

    else if (v92 == 1)
    {
      v31 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      v29 = type;
      v32 = os_log_type_enabled(gLogObj, type);
      if (v31)
      {
        if (v32)
        {
          *buf = 136446978;
          v95 = "nw_protocol_http_connect_add_input_handler";
          v96 = 2082;
          v97 = handle + 284;
          v98 = 2080;
          v99 = " ";
          v100 = 2082;
          v101 = v31;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s %{public}s%sUnable to get parameters, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v31);
LABEL_82:
        if (v27)
        {
          v43 = v27;
LABEL_84:
          free(v43);
          goto LABEL_85;
        }

        goto LABEL_85;
      }

      if (!v32)
      {
        goto LABEL_82;
      }

      *buf = 136446722;
      v95 = "nw_protocol_http_connect_add_input_handler";
      v96 = 2082;
      v97 = handle + 284;
      v98 = 2080;
      v99 = " ";
      v30 = "%{public}s %{public}s%sUnable to get parameters, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      v29 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_82;
      }

      *buf = 136446722;
      v95 = "nw_protocol_http_connect_add_input_handler";
      v96 = 2082;
      v97 = handle + 284;
      v98 = 2080;
      v99 = " ";
      v30 = "%{public}s %{public}s%sUnable to get parameters, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0x20u);
    goto LABEL_82;
  }

LABEL_85:
  nw_http_connect_destroy(handle);
  return 0;
}

uint64_t NWPBParametersReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v162) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v162 & 0x7F) << v6;
      if ((v162 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v14 = v13 & 7;
    if (v14 == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v15 = PBReaderReadString();
        v16 = 56;
        goto LABEL_210;
      case 2u:
        v15 = PBReaderReadString();
        v16 = 72;
        goto LABEL_210;
      case 3u:
        v15 = PBReaderReadString();
        v16 = 80;
        goto LABEL_210;
      case 4u:
        v15 = PBReaderReadString();
        v16 = 144;
        goto LABEL_210;
      case 5u:
        v15 = PBReaderReadString();
        v16 = 176;
        goto LABEL_210;
      case 6u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 196) |= 4u;
        while (1)
        {
          LOBYTE(v162) = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v162 & 0x7F) << v83;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v12 = v84++ >= 9;
          if (v12)
          {
            v89 = 0;
            goto LABEL_245;
          }
        }

        if ([a2 hasError])
        {
          v89 = 0;
        }

        else
        {
          v89 = v85;
        }

LABEL_245:
        *(a1 + 88) = v89;
        v4 = a2;
        continue;
      case 7u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 196) |= 1u;
        while (1)
        {
          LOBYTE(v162) = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            v102 = [a2 data];
            [v102 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v99 |= (v162 & 0x7F) << v97;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v12 = v98++ >= 9;
          if (v12)
          {
            v103 = 0;
            goto LABEL_251;
          }
        }

        if ([a2 hasError])
        {
          v103 = 0;
        }

        else
        {
          v103 = v99;
        }

LABEL_251:
        *(a1 + 64) = v103;
        v4 = a2;
        continue;
      case 8u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 196) |= 0x20u;
        while (1)
        {
          LOBYTE(v162) = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v162 & 0x7F) << v69;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v12 = v70++ >= 9;
          if (v12)
          {
            v75 = 0;
            goto LABEL_239;
          }
        }

        if ([a2 hasError])
        {
          v75 = 0;
        }

        else
        {
          v75 = v71;
        }

LABEL_239:
        *(a1 + 172) = v75;
        v4 = a2;
        continue;
      case 9u:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        *(a1 + 196) |= 2u;
        while (1)
        {
          LOBYTE(v162) = 0;
          v121 = [a2 position] + 1;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
          {
            v123 = [a2 data];
            [v123 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v120 |= (v162 & 0x7F) << v118;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v12 = v119++ >= 9;
          if (v12)
          {
            v124 = 0;
            goto LABEL_261;
          }
        }

        if ([a2 hasError])
        {
          v124 = 0;
        }

        else
        {
          v124 = v120;
        }

LABEL_261:
        *(a1 + 68) = v124;
        v4 = a2;
        continue;
      case 0xAu:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 196) |= 0x10u;
        while (1)
        {
          LOBYTE(v162) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v162 & 0x7F) << v50;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v12 = v51++ >= 9;
          if (v12)
          {
            v56 = 0;
            goto LABEL_233;
          }
        }

        if ([a2 hasError])
        {
          v56 = 0;
        }

        else
        {
          v56 = v52;
        }

LABEL_233:
        *(a1 + 168) = v56;
        v4 = a2;
        continue;
      case 0xBu:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 196) |= 0x400u;
        while (1)
        {
          LOBYTE(v162) = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            v116 = [a2 data];
            [v116 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v162 & 0x7F) << v111;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v12 = v112++ >= 9;
          if (v12)
          {
            LOBYTE(v117) = 0;
            goto LABEL_257;
          }
        }

        v117 = (v113 != 0) & ~[a2 hasError];
LABEL_257:
        *(a1 + 188) = v117;
        v4 = a2;
        continue;
      case 0xCu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 196) |= 0x40u;
        while (1)
        {
          LOBYTE(v162) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v162 & 0x7F) << v36;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_227;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_227:
        *(a1 + 184) = v42;
        v4 = a2;
        continue;
      case 0xDu:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 196) |= 0x800u;
        while (1)
        {
          LOBYTE(v162) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v162 & 0x7F) << v43;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            LOBYTE(v49) = 0;
            goto LABEL_229;
          }
        }

        v49 = (v45 != 0) & ~[a2 hasError];
LABEL_229:
        *(a1 + 189) = v49;
        v4 = a2;
        continue;
      case 0xEu:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 196) |= 0x100u;
        while (1)
        {
          LOBYTE(v162) = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v162 & 0x7F) << v90;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v12 = v91++ >= 9;
          if (v12)
          {
            LOBYTE(v96) = 0;
            goto LABEL_247;
          }
        }

        v96 = (v92 != 0) & ~[a2 hasError];
LABEL_247:
        *(a1 + 186) = v96;
        v4 = a2;
        continue;
      case 0xFu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 196) |= 0x2000u;
        while (1)
        {
          LOBYTE(v162) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v162 & 0x7F) << v29;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_225;
          }
        }

        v35 = (v31 != 0) & ~[a2 hasError];
LABEL_225:
        *(a1 + 191) = v35;
        v4 = a2;
        continue;
      case 0x10u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 196) |= 0x4000u;
        while (1)
        {
          LOBYTE(v162) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v162 & 0x7F) << v62;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v12 = v63++ >= 9;
          if (v12)
          {
            LOBYTE(v68) = 0;
            goto LABEL_235;
          }
        }

        v68 = (v64 != 0) & ~[a2 hasError];
LABEL_235:
        *(a1 + 192) = v68;
        v4 = a2;
        continue;
      case 0x11u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 196) |= 0x1000u;
        while (1)
        {
          LOBYTE(v162) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v162 & 0x7F) << v22;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            LOBYTE(v28) = 0;
            goto LABEL_223;
          }
        }

        v28 = (v24 != 0) & ~[a2 hasError];
LABEL_223:
        *(a1 + 190) = v28;
        v4 = a2;
        continue;
      case 0x12u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 196) |= 0x200u;
        while (1)
        {
          LOBYTE(v162) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v162 & 0x7F) << v76;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v12 = v77++ >= 9;
          if (v12)
          {
            LOBYTE(v82) = 0;
            goto LABEL_241;
          }
        }

        v82 = (v78 != 0) & ~[a2 hasError];
LABEL_241:
        *(a1 + 187) = v82;
        v4 = a2;
        continue;
      case 0x13u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 196) |= 8u;
        while (1)
        {
          LOBYTE(v162) = 0;
          v107 = [a2 position] + 1;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
          {
            v109 = [a2 data];
            [v109 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v106 |= (v162 & 0x7F) << v104;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v12 = v105++ >= 9;
          if (v12)
          {
            v110 = 0;
            goto LABEL_255;
          }
        }

        if ([a2 hasError])
        {
          v110 = 0;
        }

        else
        {
          v110 = v106;
        }

LABEL_255:
        *(a1 + 112) = v110;
        v4 = a2;
        continue;
      case 0x14u:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        *(a1 + 196) |= 0x80u;
        while (1)
        {
          LOBYTE(v162) = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            v138 = [a2 data];
            [v138 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (v162 & 0x7F) << v133;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v12 = v134++ >= 9;
          if (v12)
          {
            LOBYTE(v139) = 0;
            goto LABEL_263;
          }
        }

        v139 = (v135 != 0) & ~[a2 hasError];
LABEL_263:
        *(a1 + 185) = v139;
        v4 = a2;
        continue;
      case 0x15u:
        v17 = objc_alloc_init(NWPBEndpoint);
        objc_storeStrong((a1 + 96), v17);
        v162 = 0;
        v163 = 0;
        if (!PBReaderPlaceMark() || !NWPBEndpointReadFrom(v17, a2))
        {
          goto LABEL_286;
        }

        goto LABEL_220;
      case 0x16u:
        v17 = objc_alloc_init(NWPBInterface);
        objc_storeStrong((a1 + 160), v17);
        goto LABEL_120;
      case 0x17u:
        if (v14 != 2)
        {
          v150 = 0;
          v151 = 0;
          v152 = 0;
          while (1)
          {
            LOBYTE(v162) = 0;
            v153 = [a2 position] + 1;
            if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
            {
              v155 = [a2 data];
              [v155 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v152 |= (v162 & 0x7F) << v150;
            if ((v162 & 0x80) == 0)
            {
              goto LABEL_282;
            }

            v150 += 7;
            v12 = v151++ >= 9;
            if (v12)
            {
              goto LABEL_283;
            }
          }
        }

        v162 = 0;
        v163 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v126 = [a2 position];
          if (v126 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_221;
          }

          v127 = 0;
          v128 = 0;
          v129 = 0;
          while (1)
          {
            v164 = 0;
            v130 = [a2 position] + 1;
            if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
            {
              v132 = [a2 data];
              [v132 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v129 |= (v164 & 0x7F) << v127;
            if ((v164 & 0x80) == 0)
            {
              break;
            }

            v127 += 7;
            v12 = v128++ >= 9;
            if (v12)
            {
              goto LABEL_172;
            }
          }

          [a2 hasError];
LABEL_172:
          PBRepeatedInt32Add();
        }

      case 0x18u:
        if (v14 == 2)
        {
          v162 = 0;
          v163 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v140 = [a2 position];
            if (v140 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v141 = 0;
            v142 = 0;
            v143 = 0;
            while (1)
            {
              v164 = 0;
              v144 = [a2 position] + 1;
              if (v144 >= [a2 position] && (v145 = objc_msgSend(a2, "position") + 1, v145 <= objc_msgSend(a2, "length")))
              {
                v146 = [a2 data];
                [v146 getBytes:&v164 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v143 |= (v164 & 0x7F) << v141;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v141 += 7;
              v12 = v142++ >= 9;
              if (v12)
              {
                goto LABEL_197;
              }
            }

            [a2 hasError];
LABEL_197:
            PBRepeatedInt32Add();
          }

LABEL_221:
          PBReaderRecallMark();
          v4 = a2;
        }

        else
        {
          v156 = 0;
          v157 = 0;
          v158 = 0;
          while (1)
          {
            LOBYTE(v162) = 0;
            v159 = [a2 position] + 1;
            if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
            {
              v161 = [a2 data];
              [v161 getBytes:&v162 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v158 |= (v162 & 0x7F) << v156;
            if ((v162 & 0x80) == 0)
            {
              break;
            }

            v156 += 7;
            v12 = v157++ >= 9;
            if (v12)
            {
              goto LABEL_283;
            }
          }

LABEL_282:
          [a2 hasError];
LABEL_283:
          PBRepeatedInt32Add();
LABEL_284:
          v4 = a2;
        }

        continue;
      case 0x19u:
        v17 = objc_alloc_init(NWPBInterface);
        if (a1)
        {
          v59 = *(a1 + 136);
          if (!v59)
          {
            v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v61 = *(a1 + 136);
            *(a1 + 136) = v60;

            v59 = *(a1 + 136);
          }

          [v59 addObject:v17];
        }

LABEL_120:
        v162 = 0;
        v163 = 0;
        if (!PBReaderPlaceMark() || !NWPBInterfaceReadFrom(v17, a2))
        {
          goto LABEL_286;
        }

        goto LABEL_220;
      case 0x1Au:
        v17 = objc_alloc_init(NWPBAgentClass);
        if (!a1)
        {
          goto LABEL_218;
        }

        v18 = *(a1 + 128);
        if (v18)
        {
          goto LABEL_217;
        }

        v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v58 = *(a1 + 128);
        *(a1 + 128) = v57;

        v21 = 128;
        goto LABEL_216;
      case 0x1Bu:
        v17 = objc_alloc_init(NWPBAgentClass);
        if (!a1)
        {
          goto LABEL_218;
        }

        v18 = *(a1 + 152);
        if (v18)
        {
          goto LABEL_217;
        }

        v148 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v149 = *(a1 + 152);
        *(a1 + 152) = v148;

        v21 = 152;
        goto LABEL_216;
      case 0x1Cu:
        v17 = objc_alloc_init(NWPBAgentClass);
        if (!a1)
        {
          goto LABEL_218;
        }

        v18 = *(a1 + 120);
        if (v18)
        {
          goto LABEL_217;
        }

        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v20 = *(a1 + 120);
        *(a1 + 120) = v19;

        v21 = 120;
LABEL_216:
        v18 = *(a1 + v21);
LABEL_217:
        [v18 addObject:v17];
LABEL_218:

        v162 = 0;
        v163 = 0;
        if (PBReaderPlaceMark() && NWPBAgentClassReadFrom(v17, a2))
        {
LABEL_220:
          PBReaderRecallMark();

          v4 = a2;
          continue;
        }

LABEL_286:

        return 0;
      case 0x1Du:
        v15 = PBReaderReadData();
        v16 = 104;
LABEL_210:
        v147 = *(a1 + v16);
        *(a1 + v16) = v15;

        v4 = a2;
        continue;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_284;
    }
  }
}

char *nw_socks5_server_create(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  nw_allow_use_of_dispatch_internal();
  if (v4)
  {
    v5 = [[NWConcrete_nw_socks5_server alloc] initWithParameters:v3 clientQueue:v4];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v29 = "nw_socks5_server_create";
        v30 = 2114;
        v31 = v5;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ created", buf, 0x16u);
      }

      v8 = v5;
      goto LABEL_17;
    }

    *buf = 136446210;
    v29 = "nw_socks5_server_create";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v9, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v29 = "nw_socks5_server_create";
        v12 = "%{public}s [nw_socks5_server initWithParameters:clientQueue:] failed";
LABEL_21:
        v17 = v10;
        v18 = v11;
        goto LABEL_22;
      }

      if (v26 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v29 = "nw_socks5_server_create";
        v12 = "%{public}s [nw_socks5_server initWithParameters:clientQueue:] failed, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_23:

          if (!v9)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        *buf = 136446210;
        v29 = "nw_socks5_server_create";
        v12 = "%{public}s [nw_socks5_server initWithParameters:clientQueue:] failed, no backtrace";
        v17 = v10;
        v18 = v14;
LABEL_22:
        _os_log_impl(&dword_181A37000, v17, v18, v12, buf, 0xCu);
        goto LABEL_23;
      }

      if (v15)
      {
        *buf = 136446466;
        v29 = "nw_socks5_server_create";
        v30 = 2082;
        v31 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v14, "%{public}s [nw_socks5_server initWithParameters:clientQueue:] failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v9)
    {
LABEL_17:

      goto LABEL_18;
    }

LABEL_16:
    free(v9);
    goto LABEL_17;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_socks5_server_create";
  v20 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v20, &type, &v26))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v29 = "nw_socks5_server_create";
        v23 = "%{public}s called with null queue";
LABEL_40:
        _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
      }
    }

    else
    {
      if (v26 == 1)
      {
        v24 = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v22 = type;
        v25 = os_log_type_enabled(v21, type);
        if (v24)
        {
          if (v25)
          {
            *buf = 136446466;
            v29 = "nw_socks5_server_create";
            v30 = 2082;
            v31 = v24;
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v24);
          goto LABEL_42;
        }

        if (!v25)
        {
          goto LABEL_41;
        }

        *buf = 136446210;
        v29 = "nw_socks5_server_create";
        v23 = "%{public}s called with null queue, no backtrace";
        goto LABEL_40;
      }

      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v29 = "nw_socks5_server_create";
        v23 = "%{public}s called with null queue, backtrace limit exceeded";
        goto LABEL_40;
      }
    }

LABEL_41:
  }

LABEL_42:
  if (v20)
  {
    free(v20);
  }

  v5 = 0;
LABEL_18:

  return v5;
}

id nw_socks5_server_copy_parameters(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 40);

    return v1;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_socks5_server_copy_parameters";
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
        v13 = "nw_socks5_server_copy_parameters";
        v7 = "%{public}s called with null server";
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
            v13 = "nw_socks5_server_copy_parameters";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v9)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v13 = "nw_socks5_server_copy_parameters";
        v7 = "%{public}s called with null server, no backtrace";
        goto LABEL_18;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v13 = "nw_socks5_server_copy_parameters";
        v7 = "%{public}s called with null server, backtrace limit exceeded";
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

uint64_t nw_socks5_server_get_port(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_socks5_server_get_port_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v15 = buf;
    v14 = v1;
    os_unfair_lock_lock(v2 + 6);
    __nw_socks5_server_get_port_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 6);
    v3 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_socks5_server_get_port";
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
        *&buf[4] = "nw_socks5_server_get_port";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null server", buf, 0xCu);
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
          *&buf[4] = "nw_socks5_server_get_port";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_socks5_server_get_port";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null server, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socks5_server_get_port";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null server, backtrace limit exceeded", buf, 0xCu);
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

uint64_t __nw_socks5_server_get_port_block_invoke(uint64_t a1)
{
  result = nw_listener_get_port(*(*(a1 + 32) + 72));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void nw_socks5_server_cancel_connections(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __nw_socks5_server_cancel_connections_block_invoke;
    v10[3] = &unk_1E6A3D868;
    v11 = v1;
    os_unfair_lock_lock(v2 + 6);
    __nw_socks5_server_cancel_connections_block_invoke(v10);
    os_unfair_lock_unlock(v2 + 6);

    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_socks5_server_cancel_connections";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v4, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_socks5_server_cancel_connections";
        v7 = "%{public}s called with null server";
LABEL_17:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
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
            v15 = "nw_socks5_server_cancel_connections";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v9)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_socks5_server_cancel_connections";
        v7 = "%{public}s called with null server, no backtrace";
        goto LABEL_17;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "nw_socks5_server_cancel_connections";
        v7 = "%{public}s called with null server, backtrace limit exceeded";
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

LABEL_3:
}

void nw_socks5_server_cancel_connections_locked(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136446466;
    v5 = "nw_socks5_server_cancel_connections_locked";
    v6 = 2048;
    v7 = v1;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %p", &v4, 0x16u);
  }

  v3 = v1[10];
  if (v3)
  {
    _nw_array_apply(v3, &__block_literal_global_39400);
  }
}

uint64_t __nw_socks5_server_cancel_connections_locked_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3[5];
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = __nw_socks5_connection_cancel_block_invoke;
    v18 = &unk_1E6A3D868;
    v19 = v3;
    dispatch_async(v5, block);

    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *block = 136446210;
  *&block[4] = "nw_socks5_connection_cancel";
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
        *block = 136446210;
        *&block[4] = "nw_socks5_connection_cancel";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", block, 0xCu);
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
          *block = 136446466;
          *&block[4] = "nw_socks5_connection_cancel";
          *&block[12] = 2082;
          *&block[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", block, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *block = 136446210;
        *&block[4] = "nw_socks5_connection_cancel";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, no backtrace", block, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *block = 136446210;
        *&block[4] = "nw_socks5_connection_cancel";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, backtrace limit exceeded", block, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

LABEL_3:

  return 1;
}

void nw_socks5_server_set_error_handler(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_socks5_server_set_error_handler";
    v7 = _os_log_send_and_compose_impl();

    v20 = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v7, &v20, &v19))
    {
      goto LABEL_34;
    }

    if (v20 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v20;
      if (os_log_type_enabled(v8, v20))
      {
        *buf = 136446210;
        v22 = "nw_socks5_server_set_error_handler";
        v10 = "%{public}s called with null server";
LABEL_32:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = v20;
      v13 = os_log_type_enabled(v8, v20);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_socks5_server_set_error_handler";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
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
        v22 = "nw_socks5_server_set_error_handler";
        v10 = "%{public}s called with null server, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = v20;
      if (os_log_type_enabled(v8, v20))
      {
        *buf = 136446210;
        v22 = "nw_socks5_server_set_error_handler";
        v10 = "%{public}s called with null server, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __nw_socks5_server_set_error_handler_block_invoke;
    v16[3] = &unk_1E6A3D710;
    v17 = v3;
    v18 = v5;
    os_unfair_lock_lock(v3 + 6);
    __nw_socks5_server_set_error_handler_block_invoke(v16);
    os_unfair_lock_unlock(v3 + 6);

    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_socks5_server_set_error_handler";
  v7 = _os_log_send_and_compose_impl();

  v20 = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v7, &v20, &v19))
  {
    goto LABEL_34;
  }

  if (v20 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = v20;
    if (os_log_type_enabled(v8, v20))
    {
      *buf = 136446210;
      v22 = "nw_socks5_server_set_error_handler";
      v10 = "%{public}s called with null handler";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v19 != 1)
  {
    v8 = __nwlog_obj();
    v9 = v20;
    if (os_log_type_enabled(v8, v20))
    {
      *buf = 136446210;
      v22 = "nw_socks5_server_set_error_handler";
      v10 = "%{public}s called with null handler, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = v20;
  v15 = os_log_type_enabled(v8, v20);
  if (!v14)
  {
    if (v15)
    {
      *buf = 136446210;
      v22 = "nw_socks5_server_set_error_handler";
      v10 = "%{public}s called with null handler, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v22 = "nw_socks5_server_set_error_handler";
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

void __nw_socks5_server_set_error_handler_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

void nw_socks5_server_set_state_changed_handler(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_socks5_server_set_state_changed_handler";
    v7 = _os_log_send_and_compose_impl();

    v20 = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v7, &v20, &v19))
    {
      goto LABEL_34;
    }

    if (v20 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v20;
      if (os_log_type_enabled(v8, v20))
      {
        *buf = 136446210;
        v22 = "nw_socks5_server_set_state_changed_handler";
        v10 = "%{public}s called with null server";
LABEL_32:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = v20;
      v13 = os_log_type_enabled(v8, v20);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v22 = "nw_socks5_server_set_state_changed_handler";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
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
        v22 = "nw_socks5_server_set_state_changed_handler";
        v10 = "%{public}s called with null server, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = v20;
      if (os_log_type_enabled(v8, v20))
      {
        *buf = 136446210;
        v22 = "nw_socks5_server_set_state_changed_handler";
        v10 = "%{public}s called with null server, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __nw_socks5_server_set_state_changed_handler_block_invoke;
    v16[3] = &unk_1E6A3D710;
    v17 = v3;
    v18 = v5;
    os_unfair_lock_lock(v3 + 6);
    __nw_socks5_server_set_state_changed_handler_block_invoke(v16);
    os_unfair_lock_unlock(v3 + 6);

    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_socks5_server_set_state_changed_handler";
  v7 = _os_log_send_and_compose_impl();

  v20 = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v7, &v20, &v19))
  {
    goto LABEL_34;
  }

  if (v20 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = v20;
    if (os_log_type_enabled(v8, v20))
    {
      *buf = 136446210;
      v22 = "nw_socks5_server_set_state_changed_handler";
      v10 = "%{public}s called with null handler";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v19 != 1)
  {
    v8 = __nwlog_obj();
    v9 = v20;
    if (os_log_type_enabled(v8, v20))
    {
      *buf = 136446210;
      v22 = "nw_socks5_server_set_state_changed_handler";
      v10 = "%{public}s called with null handler, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = v20;
  v15 = os_log_type_enabled(v8, v20);
  if (!v14)
  {
    if (v15)
    {
      *buf = 136446210;
      v22 = "nw_socks5_server_set_state_changed_handler";
      v10 = "%{public}s called with null handler, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v22 = "nw_socks5_server_set_state_changed_handler";
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

void __nw_socks5_server_set_state_changed_handler_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

void nw_socks5_server_register_udp_associate_request(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (!v9)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_socks5_server_register_udp_associate_request";
    v16 = _os_log_send_and_compose_impl();

    v47 = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v16, &v47, &v46))
    {
      goto LABEL_66;
    }

    if (v47 != OS_LOG_TYPE_FAULT)
    {
      if (v46 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v17 = __nwlog_obj();
        v18 = v47;
        v28 = os_log_type_enabled(v17, v47);
        if (backtrace_string)
        {
          if (v28)
          {
            *buf = 136446466;
            v49 = "nw_socks5_server_register_udp_associate_request";
            v50 = 2082;
            v51 = backtrace_string;
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_66:
          if (!v16)
          {
            goto LABEL_6;
          }

LABEL_67:
          free(v16);
          goto LABEL_6;
        }

        if (v28)
        {
          *buf = 136446210;
          v49 = "nw_socks5_server_register_udp_associate_request";
          v19 = "%{public}s called with null server, no backtrace";
          goto LABEL_64;
        }
      }

      else
      {
        v17 = __nwlog_obj();
        v18 = v47;
        if (os_log_type_enabled(v17, v47))
        {
          *buf = 136446210;
          v49 = "nw_socks5_server_register_udp_associate_request";
          v19 = "%{public}s called with null server, backtrace limit exceeded";
          goto LABEL_64;
        }
      }

      goto LABEL_65;
    }

    v17 = __nwlog_obj();
    v18 = v47;
    if (!os_log_type_enabled(v17, v47))
    {
      goto LABEL_65;
    }

    *buf = 136446210;
    v49 = "nw_socks5_server_register_udp_associate_request";
    v19 = "%{public}s called with null server";
    goto LABEL_64;
  }

  if (!v13)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_socks5_server_register_udp_associate_request";
    v16 = _os_log_send_and_compose_impl();

    v47 = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v16, &v47, &v46))
    {
      goto LABEL_66;
    }

    if (v47 != OS_LOG_TYPE_FAULT)
    {
      if (v46 != 1)
      {
        v17 = __nwlog_obj();
        v18 = v47;
        if (os_log_type_enabled(v17, v47))
        {
          *buf = 136446210;
          v49 = "nw_socks5_server_register_udp_associate_request";
          v19 = "%{public}s called with null handler, backtrace limit exceeded";
          goto LABEL_64;
        }

        goto LABEL_65;
      }

      v29 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = v47;
      v30 = os_log_type_enabled(v17, v47);
      if (!v29)
      {
        if (v30)
        {
          *buf = 136446210;
          v49 = "nw_socks5_server_register_udp_associate_request";
          v19 = "%{public}s called with null handler, no backtrace";
          goto LABEL_64;
        }

        goto LABEL_65;
      }

      if (v30)
      {
        *buf = 136446466;
        v49 = "nw_socks5_server_register_udp_associate_request";
        v50 = 2082;
        v51 = v29;
        v31 = "%{public}s called with null handler, dumping backtrace:%{public}s";
LABEL_36:
        _os_log_impl(&dword_181A37000, v17, v18, v31, buf, 0x16u);
      }

LABEL_37:

      free(v29);
      if (!v16)
      {
        goto LABEL_6;
      }

      goto LABEL_67;
    }

    v17 = __nwlog_obj();
    v18 = v47;
    if (!os_log_type_enabled(v17, v47))
    {
      goto LABEL_65;
    }

    *buf = 136446210;
    v49 = "nw_socks5_server_register_udp_associate_request";
    v19 = "%{public}s called with null handler";
LABEL_64:
    _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
    goto LABEL_65;
  }

  if (!v12)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_socks5_server_register_udp_associate_request";
    v16 = _os_log_send_and_compose_impl();

    v47 = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v16, &v47, &v46))
    {
      goto LABEL_66;
    }

    if (v47 == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = v47;
      if (os_log_type_enabled(v17, v47))
      {
        *buf = 136446210;
        v49 = "nw_socks5_server_register_udp_associate_request";
        v19 = "%{public}s called with null queue";
        goto LABEL_64;
      }

LABEL_65:

      goto LABEL_66;
    }

    if (v46 != 1)
    {
      v17 = __nwlog_obj();
      v18 = v47;
      if (os_log_type_enabled(v17, v47))
      {
        *buf = 136446210;
        v49 = "nw_socks5_server_register_udp_associate_request";
        v19 = "%{public}s called with null queue, backtrace limit exceeded";
        goto LABEL_64;
      }

      goto LABEL_65;
    }

    v29 = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = v47;
    v32 = os_log_type_enabled(v17, v47);
    if (!v29)
    {
      if (v32)
      {
        *buf = 136446210;
        v49 = "nw_socks5_server_register_udp_associate_request";
        v19 = "%{public}s called with null queue, no backtrace";
        goto LABEL_64;
      }

      goto LABEL_65;
    }

    if (v32)
    {
      *buf = 136446466;
      v49 = "nw_socks5_server_register_udp_associate_request";
      v50 = 2082;
      v51 = v29;
      v31 = "%{public}s called with null queue, dumping backtrace:%{public}s";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (!v10)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_socks5_server_register_udp_associate_request";
    v23 = _os_log_send_and_compose_impl();

    v47 = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (!__nwlog_fault(v23, &v47, &v46))
    {
LABEL_55:
      if (v23)
      {
        free(v23);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __nw_socks5_server_register_udp_associate_request_block_invoke;
      block[3] = &unk_1E6A3CE48;
      v45 = v14;
      dispatch_async(v12, block);

      goto LABEL_5;
    }

    if (v47 == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = v47;
      if (os_log_type_enabled(v24, v47))
      {
        *buf = 136446210;
        v49 = "nw_socks5_server_register_udp_associate_request";
        v26 = "%{public}s called with null socks5_connection";
LABEL_52:
        v35 = v24;
        v36 = v25;
LABEL_53:
        _os_log_impl(&dword_181A37000, v35, v36, v26, buf, 0xCu);
      }
    }

    else
    {
      if (v46 == 1)
      {
        v33 = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        type = v47;
        v34 = os_log_type_enabled(v24, v47);
        if (v33)
        {
          if (v34)
          {
            *buf = 136446466;
            v49 = "nw_socks5_server_register_udp_associate_request";
            v50 = 2082;
            v51 = v33;
            _os_log_impl(&dword_181A37000, v24, type, "%{public}s called with null socks5_connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v33);
          goto LABEL_55;
        }

        if (!v34)
        {
          goto LABEL_54;
        }

        *buf = 136446210;
        v49 = "nw_socks5_server_register_udp_associate_request";
        v26 = "%{public}s called with null socks5_connection, no backtrace";
        v35 = v24;
        v36 = type;
        goto LABEL_53;
      }

      v24 = __nwlog_obj();
      v25 = v47;
      if (os_log_type_enabled(v24, v47))
      {
        *buf = 136446210;
        v49 = "nw_socks5_server_register_udp_associate_request";
        v26 = "%{public}s called with null socks5_connection, backtrace limit exceeded";
        goto LABEL_52;
      }
    }

LABEL_54:

    goto LABEL_55;
  }

LABEL_5:
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __nw_socks5_server_register_udp_associate_request_block_invoke_2;
  v38[3] = &unk_1E6A356D0;
  v39 = v9;
  v40 = v11;
  v41 = v10;
  v42 = v12;
  v43 = v14;
  os_unfair_lock_lock(v9 + 6);
  __nw_socks5_server_register_udp_associate_request_block_invoke_2(v38);
  os_unfair_lock_unlock(v9 + 6);

LABEL_6:
}
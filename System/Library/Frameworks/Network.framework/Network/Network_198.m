uint64_t __nw_ws_validate_server_response_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  string_ptr = xpc_string_get_string_ptr(v4);
  v6 = CFStringCreateWithCString(0, string_ptr, 0x8000100u);
  if (!v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    v21 = "nw_ws_validate_server_response_block_invoke";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v10, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v21 = "nw_ws_validate_server_response_block_invoke";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s CFStringCreatewithCString failed", buf, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v15 = type;
        v16 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v21 = "nw_ws_validate_server_response_block_invoke";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v15, "%{public}s CFStringCreatewithCString failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v10)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        if (v16)
        {
          *buf = 136446210;
          v21 = "nw_ws_validate_server_response_block_invoke";
          _os_log_impl(&dword_181A37000, v11, v15, "%{public}s CFStringCreatewithCString failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v17 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v21 = "nw_ws_validate_server_response_block_invoke";
          _os_log_impl(&dword_181A37000, v11, v17, "%{public}s CFStringCreatewithCString failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v10)
    {
      goto LABEL_11;
    }

LABEL_10:
    free(v10);
    goto LABEL_11;
  }

  v7 = CFStringCompare(*(a1 + 40), v6, 0);
  CFRelease(v6);
  v8 = 1;
  if (v7 == kCFCompareEqualTo)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
LABEL_11:
    v8 = 0;
  }

  return v8;
}

void nw_ws_copy_headers_into_ws_response(const __CFString *a1, const __CFString *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (CFStringCompare(a1, @"Sec-WebSocket-Version", 1uLL) == kCFCompareEqualTo || CFStringCompare(a1, @"Upgrade", 1uLL) == kCFCompareEqualTo || CFStringCompare(a1, @"Connection", 1uLL) == kCFCompareEqualTo || CFStringCompare(a1, @"Sec-WebSocket-Accept", 1uLL) == kCFCompareEqualTo)
  {
    goto LABEL_18;
  }

  if (CFStringCompare(a1, @"Sec-WebSocket-Protocol", 1uLL))
  {
    c_string_from_cfstring = nw_utilities_create_c_string_from_cfstring(a1);
    v7 = nw_utilities_create_c_string_from_cfstring(a2);
    v8 = v7;
    if (c_string_from_cfstring && v7)
    {
      nw_ws_response_add_additional_header(v5, c_string_from_cfstring, v7);
    }

    else if (!c_string_from_cfstring)
    {
      goto LABEL_16;
    }

    free(c_string_from_cfstring);
LABEL_16:
    if (!v8)
    {
LABEL_18:

      return;
    }

LABEL_17:
    free(v8);
    goto LABEL_18;
  }

  v8 = nw_utilities_create_c_string_from_cfstring(a2);
  if (!v8)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v25 = "nw_ws_copy_headers_into_ws_response";
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s failed to get selected_subprotocol from websocket response", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v9 = v5;
  if (!v9)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_ws_response_set_selected_subprotocol";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v13, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v25 = "nw_ws_response_set_selected_subprotocol";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null response", buf, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v19 = type;
        v20 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v25 = "nw_ws_response_set_selected_subprotocol";
            v26 = 2082;
            v27 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null response, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_40;
        }

        if (v20)
        {
          *buf = 136446210;
          v25 = "nw_ws_response_set_selected_subprotocol";
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null response, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v14 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v25 = "nw_ws_response_set_selected_subprotocol";
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null response, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_40:
    if (v13)
    {
      free(v13);
    }

    goto LABEL_13;
  }

  v10 = strdup(v8);
  if (v10)
  {
LABEL_12:
    v9[2].isa = v10;
LABEL_13:

    goto LABEL_17;
  }

  v16 = __nwlog_obj();
  os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v25 = "strict_strdup";
  v17 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v17))
  {
    free(v17);
    v10 = 0;
    goto LABEL_12;
  }

  __break(1u);
}

void sub_1827CB584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_swift_udp_create(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = nw_protocol_swift_wrapper_setup_callbacks_onceToken;
  v6 = a4;
  if (v5 != -1)
  {
    dispatch_once(&nw_protocol_swift_wrapper_setup_callbacks_onceToken, &__block_literal_global_58517);
  }

  v7 = nw_protocol_new(32, v6, a1, &g_swift_wrapper_protocol_callbacks);

  if (v7)
  {
    v8 = v7 - 96;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    swift_udp_instance = _nw_protocol_create_swift_udp_instance();
    if (swift_udp_instance)
    {
      nw_protocol_swift_wrapper_set_instance(v8, swift_udp_instance, 0);
LABEL_9:

      return v8;
    }

    v16 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_swift_udp_create";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v17, &type, &v25))
    {
LABEL_44:
      if (v17)
      {
        free(v17);
      }

      v8 = 0;
      goto LABEL_9;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_swift_udp_create";
        v20 = "%{public}s called with null instance";
LABEL_42:
        _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
      }
    }

    else
    {
      if (v25 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v19 = type;
        v24 = os_log_type_enabled(v18, type);
        if (backtrace_string)
        {
          if (v24)
          {
            *buf = 136446466;
            v28 = "nw_protocol_swift_udp_create";
            v29 = 2082;
            v30 = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_44;
        }

        if (!v24)
        {
          goto LABEL_43;
        }

        *buf = 136446210;
        v28 = "nw_protocol_swift_udp_create";
        v20 = "%{public}s called with null instance, no backtrace";
        goto LABEL_42;
      }

      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_swift_udp_create";
        v20 = "%{public}s called with null instance, backtrace limit exceeded";
        goto LABEL_42;
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v28 = "nw_protocol_swift_udp_create";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (__nwlog_fault(v12, &type, &v25))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_swift_udp_create";
        v15 = "%{public}s called with null protocol";
LABEL_35:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else
    {
      if (v25 == 1)
      {
        v21 = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v22 = os_log_type_enabled(v13, type);
        if (v21)
        {
          if (v22)
          {
            *buf = 136446466;
            v28 = "nw_protocol_swift_udp_create";
            v29 = 2082;
            v30 = v21;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v21);
          goto LABEL_37;
        }

        if (!v22)
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v28 = "nw_protocol_swift_udp_create";
        v15 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_35;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_swift_udp_create";
        v15 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:
  }

LABEL_37:
  if (v12)
  {
    free(v12);
  }

  return 0;
}

void sub_1827CD17C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_1827D52FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1827D6E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_1827DBF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827E0798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_frame_reclassify(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (((*(a1 + 204) & 0x100) != 0 || (*(a1 + 204) & 0x200) != 0) && (v2 = g_channel_reclassifier) != 0)
    {
      v3 = *(a1 + 88);

      v2(a1, a2, v3);
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v15 = "nw_frame_reclassify";
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s frame does not support reclassify", buf, 0xCu);
      }

      nw_frame_finalize(a1);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_frame_reclassify";
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v15 = "nw_frame_reclassify";
      v9 = "%{public}s called with null frame";
      goto LABEL_25;
    }

    if (v12 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_26;
      }

      *buf = 136446210;
      v15 = "nw_frame_reclassify";
      v9 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_25;
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
        v15 = "nw_frame_reclassify";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_26;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "nw_frame_reclassify";
      v9 = "%{public}s called with null frame, no backtrace";
LABEL_25:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    }
  }

LABEL_26:
  if (v6)
  {
    free(v6);
  }
}

void nw_frame_set_is_channel_frame(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v2 = 256;
    }

    else
    {
      v2 = 0;
    }

    *(a1 + 204) = *(a1 + 204) & 0xFEFF | v2;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v12 = "__nw_frame_set_is_channel_frame";
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
        goto LABEL_21;
      }

      *buf = 136446210;
      v12 = "__nw_frame_set_is_channel_frame";
      v6 = "%{public}s called with null frame";
      goto LABEL_20;
    }

    if (v9 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v12 = "__nw_frame_set_is_channel_frame";
      v6 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_20;
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
        v12 = "__nw_frame_set_is_channel_frame";
        v13 = 2082;
        v14 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_21;
    }

    if (v8)
    {
      *buf = 136446210;
      v12 = "__nw_frame_set_is_channel_frame";
      v6 = "%{public}s called with null frame, no backtrace";
LABEL_20:
      _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    }
  }

LABEL_21:
  if (v3)
  {
    free(v3);
  }
}

void nw_frame_set_flow_id(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_frame_set_flow_id";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v3, &type, &v11))
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
      v14 = "nw_frame_set_flow_id";
      v6 = "%{public}s called with null frame";
    }

    else if (v11 == 1)
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
          v14 = "nw_frame_set_flow_id";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v3)
        {
          return;
        }

        goto LABEL_37;
      }

      if (!v8)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v14 = "nw_frame_set_flow_id";
      v6 = "%{public}s called with null frame, no backtrace";
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
      v14 = "nw_frame_set_flow_id";
      v6 = "%{public}s called with null frame, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_36;
  }

  if (a2)
  {
    if ((*(a1 + 204) & 0x100) != 0)
    {
      v2 = g_channel_set_flow_handler;
      if (g_channel_set_flow_handler)
      {

        v2();
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_frame_set_flow_id";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (!__nwlog_fault(v3, &type, &v11))
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
    v14 = "nw_frame_set_flow_id";
    v6 = "%{public}s called with null flow_id";
    goto LABEL_35;
  }

  if (v11 != 1)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v14 = "nw_frame_set_flow_id";
    v6 = "%{public}s called with null flow_id, backtrace limit exceeded";
    goto LABEL_35;
  }

  v9 = __nw_create_backtrace_string();
  v4 = __nwlog_obj();
  v5 = type;
  v10 = os_log_type_enabled(v4, type);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v14 = "nw_frame_set_flow_id";
    v6 = "%{public}s called with null flow_id, no backtrace";
    goto LABEL_35;
  }

  if (v10)
  {
    *buf = 136446466;
    v14 = "nw_frame_set_flow_id";
    v15 = 2082;
    v16 = v9;
    _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null flow_id, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v9);
  if (v3)
  {
LABEL_37:
    free(v3);
  }
}

uint64_t nw_frame_set_internet_checksum(uint64_t a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "__nw_frame_set_internet_checksum";
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
          v14 = "__nw_frame_set_internet_checksum";
          v8 = "%{public}s called with null frame";
LABEL_20:
          _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
        }
      }

      else if (v11 == 1)
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
            v14 = "__nw_frame_set_internet_checksum";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (v10)
        {
          *buf = 136446210;
          v14 = "__nw_frame_set_internet_checksum";
          v8 = "%{public}s called with null frame, no backtrace";
          goto LABEL_20;
        }
      }

      else
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v14 = "__nw_frame_set_internet_checksum";
          v8 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_20;
        }
      }
    }

LABEL_21:
    if (v5)
    {
      free(v5);
    }

    return 22;
  }

  v2 = 45;
  if ((*(a1 + 204) & 0x100) == 0)
  {
    return v2;
  }

  v3 = g_channel_set_internet_checksum_handler;
  if (!g_channel_set_internet_checksum_handler)
  {
    return v2;
  }

  *(a1 + 203) |= a2;

  return v3();
}

uint64_t nw_frame_get_internet_checksum(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "__nw_frame_get_internet_checksum";
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
          v13 = "__nw_frame_get_internet_checksum";
          v7 = "%{public}s called with null frame";
LABEL_25:
          _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
        }
      }

      else if (v10 == 1)
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
            v13 = "__nw_frame_get_internet_checksum";
            v14 = 2082;
            v15 = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (v9)
        {
          *buf = 136446210;
          v13 = "__nw_frame_get_internet_checksum";
          v7 = "%{public}s called with null frame, no backtrace";
          goto LABEL_25;
        }
      }

      else
      {
        v5 = __nwlog_obj();
        v6 = type;
        if (os_log_type_enabled(v5, type))
        {
          *buf = 136446210;
          v13 = "__nw_frame_get_internet_checksum";
          v7 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_25;
        }
      }
    }

LABEL_26:
    if (v4)
    {
      free(v4);
    }

    return 22;
  }

  if ((*(a1 + 204) & 0x100) != 0)
  {
    v2 = g_channel_get_internet_checksum_handler;
    if (!g_channel_get_internet_checksum_handler)
    {
      return 45;
    }
  }

  else
  {
    v1 = 45;
    if ((*(a1 + 204) & 0x200) == 0)
    {
      return v1;
    }

    v2 = g_channel_get_internet_checksum_handler;
    if (!g_channel_get_internet_checksum_handler)
    {
      return v1;
    }
  }

  return v2();
}

void nw_frame_set_departure_time(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 160) = a2;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_frame_set_departure_time";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_frame_set_departure_time";
      v5 = "%{public}s called with null frame";
      goto LABEL_17;
    }

    if (v8 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_frame_set_departure_time";
      v5 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v11 = "__nw_frame_set_departure_time";
        v12 = 2082;
        v13 = backtrace_string;
        _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v7)
    {
      *buf = 136446210;
      v11 = "__nw_frame_set_departure_time";
      v5 = "%{public}s called with null frame, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }
}

uint64_t nw_frame_get_departure_time(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 160);
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_frame_get_departure_time";
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
        v11 = "__nw_frame_get_departure_time";
        v5 = "%{public}s called with null frame";
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
          v11 = "__nw_frame_get_departure_time";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "__nw_frame_get_departure_time";
        v5 = "%{public}s called with null frame, no backtrace";
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
        v11 = "__nw_frame_get_departure_time";
        v5 = "%{public}s called with null frame, backtrace limit exceeded";
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

void *nw_frame_get_manager_for_size(unsigned int a1)
{
  if (nw_context_copy_implicit_context::onceToken[0] != -1)
  {
    dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
  }

  v2 = nw_context_copy_implicit_context::implicit_context;

  return nw_frame_get_buffer_manager_with_context(v2, a1);
}

dispatch_data_t nw_frame_copy_unclaimed_data(uint64_t a1, int a2, _BYTE *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_frame_copy_unclaimed_data";
    v24 = _os_log_send_and_compose_impl();
    v33 = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v24, &v33, &v32))
    {
      goto LABEL_43;
    }

    if (v33 == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = v33;
      if (!os_log_type_enabled(v25, v33))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v35 = "nw_frame_copy_unclaimed_data";
      v27 = "%{public}s called with null frame";
    }

    else if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = v33;
      v29 = os_log_type_enabled(v25, v33);
      if (backtrace_string)
      {
        if (v29)
        {
          *buf = 136446466;
          v35 = "nw_frame_copy_unclaimed_data";
          v36 = 2082;
          v37 = backtrace_string;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_43;
      }

      if (!v29)
      {
LABEL_43:
        if (v24)
        {
          free(v24);
        }

        return 0;
      }

      *buf = 136446210;
      v35 = "nw_frame_copy_unclaimed_data";
      v27 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v25 = __nwlog_obj();
      v26 = v33;
      if (!os_log_type_enabled(v25, v33))
      {
        goto LABEL_43;
      }

      *buf = 136446210;
      v35 = "nw_frame_copy_unclaimed_data";
      v27 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
    goto LABEL_43;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (!*(a1 + 112))
  {
    return 0;
  }

  if ((*(a1 + 204) & 0x100) != 0)
  {
    if (g_channel_check_validity)
    {
      v3 = a1;
      v4 = a2;
      v5 = a3;
      v6 = g_channel_check_validity(a1, *(a1 + 88));
      a2 = v4;
      a3 = v5;
      v7 = v6;
      a1 = v3;
      if (!v7)
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + 52);
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = *(a1 + 56);
  v11 = *(a1 + 60) + v10;
  v12 = (v8 - v11);
  if (v8 == v11)
  {
    return v9;
  }

  v13 = *(a1 + 112);
  if (!v13)
  {
    return v9;
  }

  v14 = *(a1 + 204);
  if ((v14 & 2) != 0)
  {
    v9 = *(a1 + 96);
    if (v9)
    {
      dispatch_retain(*(a1 + 96));
    }

    return v9;
  }

  if ((v14 & 1) == 0 || v10)
  {
    v19 = *(a1 + 104);
    if (!v19 || v10)
    {
      if (!a2)
      {
        v16 = &v13[v10];
        v17 = v12;
        v15 = 0;
        goto LABEL_15;
      }

      if (a3)
      {
        *a3 = 1;
      }

      v23 = a1;
      os_retain(a1);
      v20 = nw_queue_copy_current_workloop();
      destructor[0] = MEMORY[0x1E69E9820];
      destructor[1] = 0x40000000;
      destructor[2] = __nw_frame_copy_unclaimed_data_block_invoke_2;
      destructor[3] = &__block_descriptor_tmp_5_49099;
      destructor[4] = v23;
      v22 = &v13[v10];
      v21 = destructor;
    }

    else
    {
      nw_frame_will_free_buffer_externally(a1);
      v20 = nw_queue_copy_current_workloop();
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 0x40000000;
      v31[2] = __nw_frame_copy_unclaimed_data_block_invoke;
      v31[3] = &__block_descriptor_tmp_49098;
      v31[4] = v19;
      v31[5] = v13;
      v21 = v31;
      v22 = v13;
    }

    return dispatch_data_create(v22, v12, v20, v21);
  }

  nw_frame_will_free_buffer_externally(a1);
  v15 = *MEMORY[0x1E69E9648];
  v16 = v13;
  v17 = v12;
LABEL_15:

  return dispatch_data_create(v16, v17, 0, v15);
}

void __nw_frame_copy_unclaimed_data_block_invoke_2(uint64_t a1)
{
  nw_frame_finalize(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    os_release(v2);
  }
}

uint64_t nw_frame_copy_metadata_uuid(uint64_t a1, _OWORD *a2, BOOL *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "__nw_frame_copy_metadata_uuid";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v5, &type, &v11))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v14 = "__nw_frame_copy_metadata_uuid";
      v8 = "%{public}s called with null frame";
    }

    else if (v11 == 1)
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
          v14 = "__nw_frame_copy_metadata_uuid";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (!v10)
      {
LABEL_21:
        if (v5)
        {
          free(v5);
        }

        return 0;
      }

      *buf = 136446210;
      v14 = "__nw_frame_copy_metadata_uuid";
      v8 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v14 = "__nw_frame_copy_metadata_uuid";
      v8 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_21;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    if (a3)
    {
      *a3 = (*(v3 + 66) & 0x40) != 0;
    }

    if (*(v3 + 48))
    {
      *a2 = *(v3 + 16);
      return 1;
    }
  }

  return 0;
}

uint64_t nw_frame_set_connection_complete(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x80;
  }

  else
  {
    v2 = 0;
  }

  *(result + 186) = v2 & 0x80 | *(result + 186) & 0x7F;
  return result;
}

void nw_frame_set_expire_time(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 204) |= 0x10u;
    *(a1 + 152) = a2;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_frame_set_expire_time";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_frame_set_expire_time";
      v5 = "%{public}s called with null frame";
      goto LABEL_17;
    }

    if (v8 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "__nw_frame_set_expire_time";
      v5 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v11 = "__nw_frame_set_expire_time";
        v12 = 2082;
        v13 = backtrace_string;
        _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v7)
    {
      *buf = 136446210;
      v11 = "__nw_frame_set_expire_time";
      v5 = "%{public}s called with null frame, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }
}

uint64_t nw_frame_get_expire_time(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v11 = "__nw_frame_get_expire_time";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v8 = 0;
    if (!__nwlog_fault(v2, &type, &v8))
    {
      goto LABEL_20;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v11 = "__nw_frame_get_expire_time";
      v5 = "%{public}s called with null frame";
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
          v11 = "__nw_frame_get_expire_time";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (!v7)
      {
LABEL_20:
        if (v2)
        {
          free(v2);
        }

        return 0;
      }

      *buf = 136446210;
      v11 = "__nw_frame_get_expire_time";
      v5 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_20;
      }

      *buf = 136446210;
      v11 = "__nw_frame_get_expire_time";
      v5 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    goto LABEL_20;
  }

  if ((*(a1 + 204) & 0x10) == 0)
  {
    return 0;
  }

  return *(a1 + 152);
}

void nw_frame_set_packet_id(uint64_t a1, _OWORD *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "__nw_frame_set_packet_id";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v3, &type, &v11))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "__nw_frame_set_packet_id";
      v6 = "%{public}s called with null frame";
    }

    else if (v11 == 1)
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
          v14 = "__nw_frame_set_packet_id";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v3)
        {
          return;
        }

LABEL_35:
        free(v3);
        return;
      }

      if (!v8)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "__nw_frame_set_packet_id";
      v6 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v14 = "__nw_frame_set_packet_id";
      v6 = "%{public}s called with null frame, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_34;
  }

  if (a2)
  {
    v2 = *(a1 + 204);
    if ((v2 & 8) == 0)
    {
      *(a1 + 136) = *a2;
      *(a1 + 204) = v2 | 0x20;
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "__nw_frame_set_packet_id";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (!__nwlog_fault(v3, &type, &v11))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v14 = "__nw_frame_set_packet_id";
    v6 = "%{public}s called with null packet_id";
    goto LABEL_33;
  }

  if (v11 != 1)
  {
    v4 = __nwlog_obj();
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v14 = "__nw_frame_set_packet_id";
    v6 = "%{public}s called with null packet_id, backtrace limit exceeded";
    goto LABEL_33;
  }

  v9 = __nw_create_backtrace_string();
  v4 = __nwlog_obj();
  v5 = type;
  v10 = os_log_type_enabled(v4, type);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v14 = "__nw_frame_set_packet_id";
    v6 = "%{public}s called with null packet_id, no backtrace";
    goto LABEL_33;
  }

  if (v10)
  {
    *buf = 136446466;
    v14 = "__nw_frame_set_packet_id";
    v15 = 2082;
    v16 = v9;
    _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null packet_id, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v9);
  if (v3)
  {
    goto LABEL_35;
  }
}

uint64_t nw_frame_get_packet_id(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 204) & 0x20) != 0)
    {
      return a1 + 136;
    }

    else
    {
      return 0;
    }
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_frame_get_packet_id";
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
        v11 = "__nw_frame_get_packet_id";
        v5 = "%{public}s called with null frame";
LABEL_19:
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
          v11 = "__nw_frame_get_packet_id";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "__nw_frame_get_packet_id";
        v5 = "%{public}s called with null frame, no backtrace";
        goto LABEL_19;
      }
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "__nw_frame_get_packet_id";
        v5 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_19;
      }
    }
  }

LABEL_20:
  if (v2)
  {
    free(v2);
  }

  return 0;
}

void nw_frame_set_is_wake_packet(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v2 = 0x8000;
    }

    else
    {
      v2 = 0;
    }

    *(a1 + 204) = v2 & 0x8000 | *(a1 + 204) & 0x7FFF;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v12 = "__nw_frame_set_is_wake_packet";
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
        goto LABEL_21;
      }

      *buf = 136446210;
      v12 = "__nw_frame_set_is_wake_packet";
      v6 = "%{public}s called with null frame";
      goto LABEL_20;
    }

    if (v9 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v12 = "__nw_frame_set_is_wake_packet";
      v6 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_20;
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
        v12 = "__nw_frame_set_is_wake_packet";
        v13 = 2082;
        v14 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_21;
    }

    if (v8)
    {
      *buf = 136446210;
      v12 = "__nw_frame_set_is_wake_packet";
      v6 = "%{public}s called with null frame, no backtrace";
LABEL_20:
      _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    }
  }

LABEL_21:
  if (v3)
  {
    free(v3);
  }
}

BOOL nw_frame_is_wake_packet(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 204) < 0;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "__nw_frame_is_wake_packet";
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
        v11 = "__nw_frame_is_wake_packet";
        v5 = "%{public}s called with null frame";
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
          v11 = "__nw_frame_is_wake_packet";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "__nw_frame_is_wake_packet";
        v5 = "%{public}s called with null frame, no backtrace";
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
        v11 = "__nw_frame_is_wake_packet";
        v5 = "%{public}s called with null frame, backtrace limit exceeded";
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

void nw_frame_set_app_metadata(_BYTE *a1, char a2, char a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1[206];
    if ((v3 & 2) == 0)
    {
      a1[201] = a2;
      a1[202] = a3;
      a1[206] = v3 | 2;
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v13 = "__nw_frame_set_app_metadata";
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
        goto LABEL_19;
      }

      *buf = 136446210;
      v13 = "__nw_frame_set_app_metadata";
      v7 = "%{public}s called with null frame";
      goto LABEL_18;
    }

    if (v10 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      v13 = "__nw_frame_set_app_metadata";
      v7 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_18;
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
        v13 = "__nw_frame_set_app_metadata";
        v14 = 2082;
        v15 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_19;
    }

    if (v9)
    {
      *buf = 136446210;
      v13 = "__nw_frame_set_app_metadata";
      v7 = "%{public}s called with null frame, no backtrace";
LABEL_18:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    }
  }

LABEL_19:
  if (v4)
  {
    free(v4);
  }
}

BOOL nw_frame_is_in_array(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 32))
    {
      return 1;
    }

    v3 = 40;
  }

  else
  {
    if (*(a1 + 16))
    {
      return 1;
    }

    v3 = 24;
  }

  return *(a1 + v3) != 0;
}

void *nw_frame_array_init(void *result)
{
  *result = 0;
  result[1] = result;
  return result;
}

uint64_t nw_frame_array_previous(int a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a2 + 40);
    if (*(a2 + 32) != 0)
    {
      return **(v2 + 8);
    }
  }

  else
  {
    v2 = *(a2 + 24);
    if (*(a2 + 16) != 0)
    {
      return **(v2 + 8);
    }
  }

  return 0;
}

uint64_t nw_frame_array_next(int a1, void *a2)
{
  if (a1)
  {
    result = a2[4];
    if (!result && !a2[5])
    {
      return 0;
    }
  }

  else
  {
    result = a2[2];
    if (!result && !a2[3])
    {
      return 0;
    }
  }

  return result;
}

void nw_frame_array_prepend(uint64_t *a1, int a2, void *a3)
{
  v4 = a2;
  if (!a2)
  {
    if (!a3[2] && !a3[3])
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (a3[4] || a3[5])
  {
LABEL_7:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    v6 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v6))
    {
      __break(1u);
      return;
    }

    free(v6);
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_10:
    v7 = 3;
    v8 = 2;
    goto LABEL_11;
  }

LABEL_9:
  v7 = 5;
  v8 = 4;
LABEL_11:
  v9 = *a1;
  v10 = &a3[v8];
  *v10 = *a1;
  v11 = (v9 + v7 * 8);
  v12 = v9 == 0;
  *a1 = a3;
  v13 = (a1 + 1);
  if (!v12)
  {
    v13 = v11;
  }

  *v13 = v10;
  a3[v7] = a1;
}

void nw_frame_array_insert_after(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v6 = a2;
  if (!a2)
  {
    if (!a3[2] && !a3[3])
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (a3[4] || a3[5])
  {
LABEL_7:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    v8 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort(v8))
    {
      __break(1u);
      return;
    }

    free(v8);
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_10:
    v9 = 3;
    v10 = 2;
    goto LABEL_11;
  }

LABEL_9:
  v9 = 5;
  v10 = 4;
LABEL_11:
  v11 = (a4 + v10 * 8);
  v12 = *(a4 + v10 * 8);
  v13 = &a3[v10];
  *v13 = v12;
  if (v12)
  {
    v14 = (v12 + v9 * 8);
  }

  else
  {
    v14 = (a1 + 8);
  }

  *v14 = v13;
  *v11 = a3;
  a3[v9] = v11;
}

uint64_t nw_frame_array_remove(uint64_t result, int a2, uint64_t a3)
{
  v3 = (result + 8);
  v4 = 16;
  if (a2)
  {
    v4 = 32;
  }

  v5 = 24;
  if (a2)
  {
    v5 = 40;
  }

  v6 = (a3 + v4);
  v7 = *v6;
  v8 = *(a3 + v5);
  v9 = (*v6 + v5);
  if (*v6)
  {
    v3 = v9;
  }

  *v3 = v8;
  *v8 = v7;
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t nw_frame_array_remove_each(uint64_t result, int a2, uint64_t a3)
{
  v4 = result;
  v5 = (result + 8);
  if (a2)
  {
    v6 = 32;
  }

  else
  {
    v6 = 16;
  }

  if (a2)
  {
    v7 = 40;
  }

  else
  {
    v7 = 24;
  }

  do
  {
    v8 = *v4;
    if (!*v4)
    {
      break;
    }

    v9 = (v8 + v6);
    v10 = *(v8 + v6);
    v11 = *(v8 + v7);
    v12 = (v10 + v7);
    if (!v10)
    {
      v12 = v5;
    }

    *v12 = v11;
    *v11 = v10;
    *v9 = 0;
    v9[1] = 0;
    result = (*(a3 + 16))(a3);
  }

  while ((result & 1) != 0);
  return result;
}

void *nw_frame_array_prepend_array(void *result, uint64_t *a2, int a3)
{
  v3 = *result;
  if (a3)
  {
    if (v3)
    {
      v4 = a2[1];
      *v4 = v3;
      v5 = result[1];
      *(*result + 40) = v4;
      a2[1] = v5;
      *result = 0;
      result[1] = result;
    }

    v6 = *a2;
    if (*a2)
    {
      v7 = 40;
LABEL_10:
      v10 = result[1];
      *v10 = v6;
      *(*a2 + v7) = v10;
      result[1] = a2[1];
      *a2 = 0;
      a2[1] = a2;
    }
  }

  else
  {
    if (v3)
    {
      v8 = a2[1];
      *v8 = v3;
      v9 = result[1];
      *(*result + 24) = v8;
      a2[1] = v9;
      *result = 0;
      result[1] = result;
    }

    v6 = *a2;
    if (*a2)
    {
      v7 = 24;
      goto LABEL_10;
    }
  }

  return result;
}

BOOL nw_frame_array_check_length(uint64_t *a1, char a2, unsigned int a3)
{
  v3 = *a1;
  v4 = 0;
  if (a2)
  {
    while (v3)
    {
      v8 = *(v3 + 52);
      if (v8)
      {
        v8 -= *(v3 + 56) + *(v3 + 60);
      }

      v3 = *(v3 + 32);
      v5 = __CFADD__(v4, v8);
      v6 = v4 + v8;
      v4 += v8;
      if (v5)
      {
        v7 = -1;
      }

      else
      {
        v7 = v6;
      }

      if (v7 >= a3)
      {
        return 1;
      }
    }
  }

  else
  {
    while (v3)
    {
      v11 = *(v3 + 52);
      if (v11)
      {
        v11 -= *(v3 + 56) + *(v3 + 60);
      }

      v3 = *(v3 + 16);
      v5 = __CFADD__(v4, v11);
      v9 = v4 + v11;
      v4 += v11;
      if (v5)
      {
        v10 = -1;
      }

      else
      {
        v10 = v9;
      }

      if (v10 >= a3)
      {
        return 1;
      }
    }
  }

  return v4 >= a3;
}

uint64_t nw_frame_array_fill_from_pending_array(void *a1, uint64_t a2, int a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_frame_array_fill_from_pending_array";
    v9 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v9, type, &v31))
    {
      goto LABEL_35;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v31 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type[0];
        if (!os_log_type_enabled(v10, type[0]))
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        *&buf[4] = "nw_frame_array_fill_from_pending_array";
        v12 = "%{public}s called with null from_array, backtrace limit exceeded";
        goto LABEL_34;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type[0];
      v14 = os_log_type_enabled(v10, type[0]);
      if (!backtrace_string)
      {
        if (!v14)
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        *&buf[4] = "nw_frame_array_fill_from_pending_array";
        v12 = "%{public}s called with null from_array, no backtrace";
        goto LABEL_34;
      }

      if (v14)
      {
        *buf = 136446466;
        *&buf[4] = "nw_frame_array_fill_from_pending_array";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v15 = "%{public}s called with null from_array, dumping backtrace:%{public}s";
LABEL_24:
        _os_log_impl(&dword_181A37000, v10, v11, v15, buf, 0x16u);
      }

LABEL_25:
      free(backtrace_string);
      goto LABEL_35;
    }

    v10 = __nwlog_obj();
    v11 = type[0];
    if (!os_log_type_enabled(v10, type[0]))
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    *&buf[4] = "nw_frame_array_fill_from_pending_array";
    v12 = "%{public}s called with null from_array";
LABEL_34:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
LABEL_35:
    if (v9)
    {
      free(v9);
    }

    return 0;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_frame_array_fill_from_pending_array";
    v9 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v9, type, &v31))
    {
      goto LABEL_35;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type[0];
      if (!os_log_type_enabled(v10, type[0]))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      *&buf[4] = "nw_frame_array_fill_from_pending_array";
      v12 = "%{public}s called with null to_array";
      goto LABEL_34;
    }

    if (v31 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type[0];
      if (!os_log_type_enabled(v10, type[0]))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      *&buf[4] = "nw_frame_array_fill_from_pending_array";
      v12 = "%{public}s called with null to_array, backtrace limit exceeded";
      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type[0];
    v16 = os_log_type_enabled(v10, type[0]);
    if (backtrace_string)
    {
      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_frame_array_fill_from_pending_array";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v15 = "%{public}s called with null to_array, dumping backtrace:%{public}s";
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    if (!v16)
    {
      goto LABEL_35;
    }

    *buf = 136446210;
    *&buf[4] = "nw_frame_array_fill_from_pending_array";
    v12 = "%{public}s called with null to_array, no backtrace";
    goto LABEL_34;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v33 = 0;
  *type = 0;
  v28 = type;
  v29 = 0x2000000000;
  v30 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v19 = __nw_frame_array_fill_from_pending_array_block_invoke;
  v20 = &unk_1E6A34040;
  v21 = buf;
  v22 = type;
  v25 = a4;
  v26 = a3;
  v23 = a1;
  v24 = a2;
  do
  {
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 32);
    v7 = (v19)(v18);
    v5 = v6;
  }

  while ((v7 & 1) != 0);
  v8 = *(*&buf[8] + 24);
  _Block_object_dispose(type, 8);
  _Block_object_dispose(buf, 8);
  return v8;
}

uint64_t __nw_frame_array_fill_from_pending_array_block_invoke(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 32) + 8) + 24) >= *(a1 + 64))
  {
    return 0;
  }

  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (a2)
  {
    v3 = *(a2 + 52);
    if (v3)
    {
      v3 -= *(a2 + 56) + *(a2 + 60);
    }

    goto LABEL_5;
  }

  v11 = a1;
  __nwlog_obj();
  *buf = 136446210;
  v29 = "__nw_frame_unclaimed_length";
  v12 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v12, &type, &v26))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v29 = "__nw_frame_unclaimed_length";
        v15 = "%{public}s called with null frame";
LABEL_38:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      v25 = v2;
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v22 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v29 = "__nw_frame_unclaimed_length";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        v2 = v25;
        goto LABEL_39;
      }

      v2 = v25;
      if (v22)
      {
        *buf = 136446210;
        v29 = "__nw_frame_unclaimed_length";
        v15 = "%{public}s called with null frame, no backtrace";
        goto LABEL_38;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v29 = "__nw_frame_unclaimed_length";
        v15 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_38;
      }
    }
  }

LABEL_39:
  if (v12)
  {
    free(v12);
  }

  v3 = 0;
  a2 = 0;
  a1 = v11;
LABEL_5:
  if ((v3 + v2) > *(a1 + 68))
  {
    return 0;
  }

  ++*(*(*(a1 + 32) + 8) + 24);
  if (!a2)
  {
    v16 = a1;
    __nwlog_obj();
    *buf = 136446210;
    v29 = "__nw_frame_unclaimed_length";
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v17, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v29 = "__nw_frame_unclaimed_length";
          v20 = "%{public}s called with null frame";
LABEL_44:
          _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
        }
      }

      else if (v26 == 1)
      {
        v23 = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v19 = type;
        v24 = os_log_type_enabled(v18, type);
        if (v23)
        {
          if (v24)
          {
            *buf = 136446466;
            v29 = "__nw_frame_unclaimed_length";
            v30 = 2082;
            v31 = v23;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v23);
          goto LABEL_45;
        }

        if (v24)
        {
          *buf = 136446210;
          v29 = "__nw_frame_unclaimed_length";
          v20 = "%{public}s called with null frame, no backtrace";
          goto LABEL_44;
        }
      }

      else
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v29 = "__nw_frame_unclaimed_length";
          v20 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_44;
        }
      }
    }

LABEL_45:
    if (v17)
    {
      free(v17);
    }

    v5 = 0;
    a2 = 0;
    a1 = v16;
    goto LABEL_10;
  }

  v5 = *(a2 + 52);
  if (v5)
  {
    v5 -= *(a2 + 56) + *(a2 + 60);
  }

LABEL_10:
  *(*(*(a1 + 40) + 8) + 24) += v5;
  v6 = (a2 + 32);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  if (v7)
  {
    *(v7 + 40) = v8;
  }

  else
  {
    *(*(a1 + 48) + 8) = v8;
  }

  *v8 = v7;
  *v6 = 0;
  *(a2 + 40) = 0;
  v9 = *(a1 + 56);
  v10 = *(v9 + 8);
  *(a2 + 40) = v10;
  *v10 = a2;
  *(v9 + 8) = v6;
  return 1;
}

uint64_t nw_frame_get_ecn_flag(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 186) & 3;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_frame_get_ecn_flag";
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
        v11 = "nw_frame_get_ecn_flag";
        v5 = "%{public}s called with null frame";
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
          v11 = "nw_frame_get_ecn_flag";
          v12 = 2082;
          v13 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v7)
      {
        *buf = 136446210;
        v11 = "nw_frame_get_ecn_flag";
        v5 = "%{public}s called with null frame, no backtrace";
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
        v11 = "nw_frame_get_ecn_flag";
        v5 = "%{public}s called with null frame, backtrace limit exceeded";
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

void nw_frame_set_ecn_flag(uint64_t a1, char a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 186) = *(a1 + 186) & 0xFC | a2 & 3;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_frame_set_ecn_flag";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (__nwlog_fault(v2, &type, &v8))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "nw_frame_set_ecn_flag";
      v5 = "%{public}s called with null frame";
      goto LABEL_17;
    }

    if (v8 != 1)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v11 = "nw_frame_set_ecn_flag";
      v5 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v3 = __nwlog_obj();
    v4 = type;
    v7 = os_log_type_enabled(v3, type);
    if (backtrace_string)
    {
      if (v7)
      {
        *buf = 136446466;
        v11 = "nw_frame_set_ecn_flag";
        v12 = 2082;
        v13 = backtrace_string;
        _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v7)
    {
      *buf = 136446210;
      v11 = "nw_frame_set_ecn_flag";
      v5 = "%{public}s called with null frame, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    }
  }

LABEL_18:
  if (v2)
  {
    free(v2);
  }
}

void nw_frame_set_default_finalizer(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_frame_set_default_finalizer";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v2, &type, &v10))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v13 = "nw_frame_set_default_finalizer";
      v5 = "%{public}s called with null frame";
    }

    else if (v10 == 1)
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
          v13 = "nw_frame_set_default_finalizer";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!v7)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v13 = "nw_frame_set_default_finalizer";
      v5 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v3 = __nwlog_obj();
      v4 = type;
      if (!os_log_type_enabled(v3, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v13 = "nw_frame_set_default_finalizer";
      v5 = "%{public}s called with null frame, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v3, v4, v5, buf, 0xCu);
    goto LABEL_34;
  }

  if (!a1[10])
  {
    a1[10] = nw_frame_default_finalizer;
    a1[11] = a2;

    os_retain(a1);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_frame_set_default_finalizer";
  v2 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (!__nwlog_fault(v2, &type, &v10))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v3 = __nwlog_obj();
    v4 = type;
    if (!os_log_type_enabled(v3, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v13 = "nw_frame_set_default_finalizer";
    v5 = "%{public}s called with null (frame->finalizer == NULL)";
    goto LABEL_33;
  }

  if (v10 != 1)
  {
    v3 = __nwlog_obj();
    v4 = type;
    if (!os_log_type_enabled(v3, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v13 = "nw_frame_set_default_finalizer";
    v5 = "%{public}s called with null (frame->finalizer == NULL), backtrace limit exceeded";
    goto LABEL_33;
  }

  v8 = __nw_create_backtrace_string();
  v3 = __nwlog_obj();
  v4 = type;
  v9 = os_log_type_enabled(v3, type);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v13 = "nw_frame_set_default_finalizer";
    v5 = "%{public}s called with null (frame->finalizer == NULL), no backtrace";
    goto LABEL_33;
  }

  if (v9)
  {
    *buf = 136446466;
    v13 = "nw_frame_set_default_finalizer";
    v14 = 2082;
    v15 = v8;
    _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null (frame->finalizer == NULL), dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v8);
  if (v2)
  {
LABEL_35:
    free(v2);
  }
}

void nw_frame_default_finalizer(char *object)
{
  v36 = *MEMORY[0x1E69E9840];
  if (object)
  {
    v2 = *(object + 102);
    if ((v2 & 2) != 0)
    {
      v13 = *(object + 12);
      if (v13)
      {
        os_release(v13);
        *(object + 12) = 0;
      }

      *(object + 13) = 0;
      *(object + 14) = 0;
      *(object + 98) = 0;
      goto LABEL_38;
    }

    v4 = object + 104;
    v3 = *(object + 13);
    if (v3)
    {
      if ((*(object + 102) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(object, *(object + 11)) || (v5 = *(object + 14)) == 0)
      {
        v28 = __nwlog_obj();
        os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        v33 = "nw_frame_default_finalizer";
        v29 = _os_log_send_and_compose_impl();
        if (__nwlog_should_abort(v29))
        {
          __break(1u);
          return;
        }

        free(v29);
        v5 = 0;
      }

      nw_mem_buffer_free(v3, v5);
      v7 = object + 64;
      v6 = *(object + 8);
      *(object + 98) = 0;
      *(object + 48) = 0;
      object[200] = 0;
      *(object + 6) = 0;
      *(object + 7) = 0;
      *(object + 10) = 0;
      *(object + 11) = 0;
      *v4 = 0;
      *(object + 14) = 0;
      *(object + 102) &= 0xFFC7u;
      if (v6)
      {
        do
        {
          v8 = *v6;
          v9 = *(v6 + 6);
          v10 = *v6;
          if (v9)
          {
            os_release(v9);
            *(v6 + 6) = 0;
            v10 = *v6;
          }

          v11 = *(v6 + 1);
          v12 = (v10 + 8);
          if (!v10)
          {
            v12 = (object + 72);
          }

          *v12 = v11;
          *v11 = v10;
          if (v6 != object + 120)
          {
            free(v6);
          }

          v6 = v8;
        }

        while (v8);
      }
    }

    else
    {
      if ((v2 & 1) == 0)
      {
LABEL_38:
        os_release(object);
        return;
      }

      if ((*(object + 102) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(object, *(object + 11)))
      {
        v14 = *(object + 14);
        if (v14)
        {
          free(v14);
        }
      }

      v7 = object + 64;
      v15 = *(object + 8);
      *(object + 98) = 0;
      *(object + 48) = 0;
      object[200] = 0;
      *(object + 6) = 0;
      *(object + 7) = 0;
      *(object + 10) = 0;
      *(object + 11) = 0;
      *v4 = 0;
      *(object + 14) = 0;
      *(object + 102) &= 0xFFC7u;
      if (v15)
      {
        do
        {
          v16 = *v15;
          v17 = *(v15 + 6);
          v18 = *v15;
          if (v17)
          {
            os_release(v17);
            *(v15 + 6) = 0;
            v18 = *v15;
          }

          v19 = *(v15 + 1);
          v20 = (v18 + 8);
          if (!v18)
          {
            v20 = (object + 72);
          }

          *v20 = v19;
          *v19 = v18;
          if (v15 != object + 120)
          {
            free(v15);
          }

          v15 = v16;
        }

        while (v16);
      }
    }

    *(object + 8) = 0;
    *(object + 9) = v7;
    v21 = *(object + 21);
    if (v21)
    {
      os_release(v21);
    }

    *(object + 23) = 0;
    *(object + 168) = 0u;
    *(object + 152) = 0u;
    *(object + 136) = 0u;
    *(object + 120) = 0u;
    *(object + 102) &= 0x413Fu;
    object[206] &= ~1u;
    object[203] = 0;
    *(object + 99) = 0;
    goto LABEL_38;
  }

  __nwlog_obj();
  *buf = 136446210;
  v33 = "nw_frame_default_finalizer";
  v22 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (__nwlog_fault(v22, &type, &v30))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v33 = "nw_frame_default_finalizer";
      v25 = "%{public}s called with null nonull_frame";
      goto LABEL_55;
    }

    if (v30 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_56;
      }

      *buf = 136446210;
      v33 = "nw_frame_default_finalizer";
      v25 = "%{public}s called with null nonull_frame, backtrace limit exceeded";
      goto LABEL_55;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v27 = os_log_type_enabled(v23, type);
    if (backtrace_string)
    {
      if (v27)
      {
        *buf = 136446466;
        v33 = "nw_frame_default_finalizer";
        v34 = 2082;
        v35 = backtrace_string;
        _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null nonull_frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_56;
    }

    if (v27)
    {
      *buf = 136446210;
      v33 = "nw_frame_default_finalizer";
      v25 = "%{public}s called with null nonull_frame, no backtrace";
LABEL_55:
      _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
    }
  }

LABEL_56:
  if (v22)
  {
    free(v22);
  }
}

void __nw_frame_custom_finalizer(nw_frame *a1, BOOL a2, void *a3)
{
  buffer = nw_frame_get_buffer(a1, 0);
  if (buffer)
  {
    free(buffer);
  }

  nw_frame_reset(a1, 0, 0, 0, 0);
  if (a1)
  {

    os_release(a1);
  }
}

uint64_t nw_frame_get_tso_segment_size(uint64_t a1, BOOL *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *a2 = (*(a1 + 206) & 4) != 0;
      return *(a1 + 198);
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "__nw_frame_get_tso_segment_size";
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
        v14 = "__nw_frame_get_tso_segment_size";
        v6 = "%{public}s called with null tso_ipv6";
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
        v14 = "__nw_frame_get_tso_segment_size";
        v6 = "%{public}s called with null tso_ipv6, backtrace limit exceeded";
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
        v14 = "__nw_frame_get_tso_segment_size";
        v6 = "%{public}s called with null tso_ipv6, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "__nw_frame_get_tso_segment_size";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null tso_ipv6, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "__nw_frame_get_tso_segment_size";
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
        v14 = "__nw_frame_get_tso_segment_size";
        v6 = "%{public}s called with null frame, backtrace limit exceeded";
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
        v14 = "__nw_frame_get_tso_segment_size";
        v6 = "%{public}s called with null frame, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "__nw_frame_get_tso_segment_size";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null frame, dumping backtrace:%{public}s";
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
    v14 = "__nw_frame_get_tso_segment_size";
    v6 = "%{public}s called with null frame";
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

void nw_frame_set_tso_segment_size(uint64_t a1, __int16 a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 198) = a2;
    if (a3)
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }

    *(a1 + 206) = *(a1 + 206) & 0xFB | v3;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v13 = "__nw_frame_set_tso_segment_size";
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
        goto LABEL_21;
      }

      *buf = 136446210;
      v13 = "__nw_frame_set_tso_segment_size";
      v7 = "%{public}s called with null frame";
      goto LABEL_20;
    }

    if (v10 != 1)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v13 = "__nw_frame_set_tso_segment_size";
      v7 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_20;
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
        v13 = "__nw_frame_set_tso_segment_size";
        v14 = 2082;
        v15 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_21;
    }

    if (v9)
    {
      *buf = 136446210;
      v13 = "__nw_frame_set_tso_segment_size";
      v7 = "%{public}s called with null frame, no backtrace";
LABEL_20:
      _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    }
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }
}

uint64_t nw_frame_array_finalize(uint64_t result, int a2, char a3)
{
  v3 = *result;
  if (*result)
  {
    if (a2)
    {
      v4 = 40;
    }

    else
    {
      v4 = 24;
    }

    if (a2)
    {
      v5 = 32;
    }

    else
    {
      v5 = 16;
    }

    *(v3 + v4) = &v15;
    v6 = *(result + 8);
    v15 = v3;
    v16 = v6;
    *result = 0;
    *(result + 8) = result;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v12 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v13 = &__block_descriptor_tmp_21_49595;
    v14 = a3;
    do
    {
      if (!v15)
      {
        break;
      }

      v7 = (v15 + v5);
      v8 = *(v15 + v5);
      v9 = *(v15 + v4);
      v10 = (v8 + v4);
      if (!v8)
      {
        v10 = &v16;
      }

      *v10 = v9;
      *v9 = v8;
      *v7 = 0;
      v7[1] = 0;
      result = (v12)(v11);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "__nw_frame_finalize";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v6, &type, &v14))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v17 = "__nw_frame_finalize";
      v9 = "%{public}s called with null frame";
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
          v17 = "__nw_frame_finalize";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_33:
        if (!v6)
        {
          return 1;
        }

LABEL_34:
        free(v6);
        return 1;
      }

      if (!v11)
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v17 = "__nw_frame_finalize";
      v9 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v17 = "__nw_frame_finalize";
      v9 = "%{public}s called with null frame, backtrace limit exceeded";
    }

LABEL_32:
    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_33;
  }

  v2 = *(a2 + 80);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a2 + 88);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    v2(a2, v3, v4);
    return 1;
  }

  __nwlog_obj();
  *buf = 136446210;
  v17 = "__nw_frame_finalize";
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v6, &type, &v14))
  {
    goto LABEL_33;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_33;
    }

    *buf = 136446210;
    v17 = "__nw_frame_finalize";
    v9 = "%{public}s called with null frame->finalizer";
    goto LABEL_32;
  }

  if (v14 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (!os_log_type_enabled(v7, type))
    {
      goto LABEL_33;
    }

    *buf = 136446210;
    v17 = "__nw_frame_finalize";
    v9 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
    goto LABEL_32;
  }

  v12 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v13 = os_log_type_enabled(v7, type);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_33;
    }

    *buf = 136446210;
    v17 = "__nw_frame_finalize";
    v9 = "%{public}s called with null frame->finalizer, no backtrace";
    goto LABEL_32;
  }

  if (v13)
  {
    *buf = 136446466;
    v17 = "__nw_frame_finalize";
    v18 = 2082;
    v19 = v12;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v12);
  if (v6)
  {
    goto LABEL_34;
  }

  return 1;
}

uint64_t NWPBAddressEndpointReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v17 = 0;
        v11 = [a2 position] + 1;
        if (v11 >= [a2 position] && (v12 = objc_msgSend(a2, "position") + 1, v12 <= objc_msgSend(a2, "length")))
        {
          v13 = [a2 data];
          [v13 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v10 |= (v17 & 0x7F) << v8;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_18;
        }
      }

      v15 = [a2 hasError] ? 0 : v10;
LABEL_18:
      if (([a2 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      if ((v15 >> 3) == 1)
      {
        v5 = PBReaderReadData();
        v6 = *(a1 + 8);
        *(a1 + 8) = v5;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v7 = [a2 position];
    }

    while (v7 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t llhttp__internal__run(uint64_t a1, unsigned __int8 *i, unsigned __int8 *a3)
{
  result = *(a1 + 56);
  switch(result)
  {
    case 1:
      goto LABEL_1969;
    case 2:
      goto LABEL_1979;
    case 3:
      goto LABEL_1999;
    case 4:
      goto LABEL_1998;
    case 5:
      goto LABEL_2001;
    case 6:
      goto LABEL_1774;
    case 7:
      goto LABEL_1767;
    case 8:
      goto LABEL_1760;
    case 9:
      goto LABEL_1758;
    case 10:
      goto LABEL_1757;
    case 11:
      goto LABEL_1748;
    case 12:
      goto LABEL_1686;
    case 13:
      goto LABEL_1682;
    case 14:
      goto LABEL_1614;
    case 15:
      goto LABEL_1692;
    case 16:
      goto LABEL_1747;
    case 17:
      goto LABEL_1662;
    case 18:
      goto LABEL_1642;
    case 19:
      goto LABEL_1830;
    case 20:
      goto LABEL_1826;
    case 21:
      goto LABEL_1851;
    case 22:
      goto LABEL_1814;
    case 23:
      goto LABEL_1843;
    case 24:
      goto LABEL_1806;
    case 25:
      goto LABEL_1652;
    case 26:
      goto LABEL_1703;
    case 27:
      goto LABEL_1630;
    case 28:
      goto LABEL_1625;
    case 29:
      goto LABEL_1705;
    case 30:
      goto LABEL_1602;
    case 31:
      goto LABEL_1700;
    case 32:
      goto LABEL_1697;
    case 33:
LABEL_2272:
      v18 = i;
      while (1)
      {
        if (v18 == a3)
        {
          return 33;
        }

        v685 = *v18;
        if (v685 <= 0xC)
        {
          if (v685 != 9)
          {
            if (v685 == 10)
            {
              ++v18;
              if ((*(a1 + 78) & 0x100) == 0)
              {
                result = 0;
                *(a1 + 24) = 25;
                v98 = "Missing expected CR after chunk size";
                goto LABEL_2477;
              }

              i = v18;
              goto LABEL_1748;
            }

            goto LABEL_2285;
          }
        }

        else if (v685 != 32)
        {
          if (v685 == 13)
          {
            i = v18 + 1;
            goto LABEL_1748;
          }

          if (v685 == 59)
          {
            for (i = v18 + 1; ; ++i)
            {
LABEL_1697:
              if (i == a3)
              {
                return 32;
              }

              v514 = *i;
              if (v514 == 32 || v514 == 13)
              {
                result = 0;
                v18 = i + 1;
                *(a1 + 24) = 2;
                v98 = "Invalid character in chunk extensions";
                goto LABEL_2477;
              }

LABEL_1700:
              if (i == a3)
              {
                return 31;
              }

              *(a1 + 8) = i;
              *(a1 + 16) = llhttp__on_chunk_extension_name;
LABEL_1602:
              if (i == a3)
              {
                return 30;
              }

              v447 = i;
              result = 30;
              while (1)
              {
                v448 = llhttp__internal__run_lookup_table_7[*v447];
                if (v448 != 3)
                {
                  break;
                }

                if (++v447 == a3)
                {
                  return result;
                }
              }

              if (llhttp__internal__run_lookup_table_7[*v447] <= 3u)
              {
                if (v448 != 1)
                {
                  if (v448 != 2)
                  {
LABEL_1672:
                    v494 = *(a1 + 8);
                    *(a1 + 8) = 0;
                    v495 = *(a1 + 88);
                    if (v495)
                    {
                      v496 = *(v495 + 56);
                      if (v496)
                      {
                        v497 = v496(a1, v494, &v447[-v494]);
                        if (v497)
                        {
                          v498 = v497;
                          if (v497 == -1)
                          {
                            *(a1 + 32) = "Span callback error in on_chunk_extension_name";
                            v498 = 24;
                          }

                          result = 0;
                          *(a1 + 24) = v498;
                          *(a1 + 40) = v447 + 1;
                          *(a1 + 56) = 29;
                          return result;
                        }
                      }
                    }

                    i = v447 + 1;
LABEL_1705:
                    result = 0;
                    *(a1 + 24) = 2;
                    v6 = "Invalid character in chunk extensions name";
                    goto LABEL_1856;
                  }

                  v449 = *(a1 + 8);
                  *(a1 + 8) = 0;
                  v450 = *(a1 + 88);
                  if (v450)
                  {
                    v451 = *(v450 + 56);
                    if (v451)
                    {
                      v452 = v451(a1, v449, &v447[-v449]);
                      if (v452)
                      {
                        v518 = v452;
                        if (v452 == -1)
                        {
                          *(a1 + 32) = "Span callback error in on_chunk_extension_name";
                          v518 = 24;
                        }

                        result = 0;
                        *(a1 + 24) = v518;
                        *(a1 + 40) = v447 + 1;
                        *(a1 + 56) = 14;
                        return result;
                      }
                    }
                  }

                  i = v447 + 1;
LABEL_1614:
                  v7 = i;
                  v453 = *(a1 + 88);
                  if (!v453 || (v454 = *(v453 + 144)) == 0 || (v455 = v454(a1)) == 0)
                  {
LABEL_1645:
                    i = v7;
                    goto LABEL_1748;
                  }

                  if (v455 != 21)
                  {
LABEL_1725:
                    result = 0;
                    *(a1 + 24) = 34;
                    goto LABEL_2023;
                  }

                  result = 0;
                  *(a1 + 24) = 21;
                  v456 = "on_chunk_extension_name pause";
LABEL_1721:
                  *(a1 + 32) = v456;
                  *(a1 + 40) = v7;
                  *(a1 + 56) = 11;
                  return result;
                }

                v499 = *(a1 + 8);
                *(a1 + 8) = 0;
                v500 = *(a1 + 88);
                if (v500)
                {
                  v501 = *(v500 + 56);
                  if (v501)
                  {
                    v502 = v501(a1, v499, &v447[-v499]);
                    if (v502)
                    {
                      v516 = v502;
                      if (v502 == -1)
                      {
                        *(a1 + 32) = "Span callback error in on_chunk_extension_name";
                        v516 = 24;
                      }

                      result = 0;
                      *(a1 + 24) = v516;
                      *(a1 + 40) = v447;
                      *(a1 + 56) = 13;
                      return result;
                    }
                  }
                }

                i = v447;
LABEL_1682:
                v503 = *(a1 + 88);
                if (v503)
                {
                  v504 = *(v503 + 144);
                  if (v504)
                  {
                    v505 = i;
                    v506 = v504(a1);
                    if (v506)
                    {
                      v9 = v506 == 21;
                      v18 = v505;
                      result = 0;
                      if (v9)
                      {
                        *(a1 + 24) = 21;
                        *(a1 + 32) = "on_chunk_extension_name pause";
                        *(a1 + 40) = v505;
                        *(a1 + 56) = 12;
                        return result;
                      }

                      *(a1 + 24) = 34;
                      goto LABEL_2477;
                    }

                    i = v505;
                  }
                }

LABEL_1686:
                if ((*(a1 + 78) & 0x100) == 0)
                {
                  result = 0;
                  *(a1 + 24) = 25;
                  *(a1 + 32) = "Missing expected CR after chunk extension name";
                  goto LABEL_1857;
                }

LABEL_1748:
                if (i == a3)
                {
                  return 11;
                }

                if (*i == 10)
                {
                  v7 = i + 1;
                }

                else
                {
                  if ((*(a1 + 78) & 0x40) == 0)
                  {
                    result = 0;
                    *(a1 + 24) = 2;
                    *(a1 + 32) = "Expected LF after chunk size";
                    goto LABEL_1857;
                  }

                  v7 = i;
                }

                v522 = *(a1 + 88);
                if (v522)
                {
                  v523 = *(v522 + 160);
                  if (v523)
                  {
                    v524 = v523(a1);
                    if (v524)
                    {
                      if (v524 == 21)
                      {
                        result = 0;
                        *(a1 + 24) = 21;
                        *(a1 + 32) = "on_chunk_header pause";
                        *(a1 + 40) = v7;
                        *(a1 + 56) = 10;
                        return result;
                      }

                      result = 0;
                      *(a1 + 24) = 19;
                      goto LABEL_2023;
                    }
                  }
                }

                i = v7;
LABEL_1757:
                if (!*(a1 + 64))
                {
                  *(a1 + 82) |= 0x80u;
                  goto LABEL_2008;
                }

LABEL_1758:
                if (i == a3)
                {
                  return 9;
                }

                *(a1 + 8) = i;
                *(a1 + 16) = llhttp__on_body;
LABEL_1760:
                v525 = *(a1 + 64);
                v526 = v525 - (a3 - i);
                if (v525 < a3 - i)
                {
                  v526 = 0;
                }

                *(a1 + 64) = v526;
                if (a3 - i < v525)
                {
                  return 8;
                }

                v527 = &i[v525];
                v528 = *(a1 + 8);
                *(a1 + 8) = 0;
                v529 = *(a1 + 88);
                if (v529)
                {
                  v530 = *(v529 + 80);
                  if (v530)
                  {
                    v531 = v530(a1, v528, &v527[-v528]);
                    if (v531)
                    {
                      if (v531 == -1)
                      {
                        *(a1 + 32) = "Span callback error in on_body";
                        v531 = 24;
                      }

                      v537 = v531;
                      result = 0;
                      *(a1 + 24) = v537;
                      *(a1 + 40) = v527;
                      *(a1 + 56) = 7;
                      return result;
                    }
                  }
                }

                i = v527;
LABEL_1767:
                if (i == a3)
                {
                  return 7;
                }

                v532 = *i;
                if (v532 == 13)
                {
                  ++i;
LABEL_1774:
                  if (i == a3)
                  {
                    return 6;
                  }

                  v7 = i;
                  if (*i == 10)
                  {
                    v7 = i + 1;
                    goto LABEL_1779;
                  }
                }

                else
                {
                  if (v532 == 10)
                  {
                    v7 = i + 1;
                    if ((*(a1 + 78) & 0x100) == 0)
                    {
                      result = 0;
                      *(a1 + 24) = 25;
                      v87 = "Missing expected CR after chunk data";
                      goto LABEL_2023;
                    }

LABEL_1779:
                    v533 = 0;
                    v534 = *(a1 + 88);
                    if (v534)
                    {
                      v533 = 0;
                      v535 = *(v534 + 168);
                      if (v535)
                      {
                        v533 = v535(a1);
                      }
                    }

                    if (!v533)
                    {
LABEL_1783:
                      i = v7;
LABEL_1784:
                      *(a1 + 64) = 0;
LABEL_1785:
                      if (i == a3)
                      {
                        return 35;
                      }

                      v536 = 0;
                      switch(*i)
                      {
                        case '0':
                          break;
                        case '1':
LABEL_2298:
                          v536 = 1;
                          break;
                        case '2':
LABEL_2300:
                          v536 = 2;
                          break;
                        case '3':
LABEL_2295:
                          v536 = 3;
                          break;
                        case '4':
LABEL_2301:
                          v536 = 4;
                          break;
                        case '5':
LABEL_2297:
                          v536 = 5;
                          break;
                        case '6':
LABEL_2296:
                          v536 = 6;
                          break;
                        case '7':
LABEL_2302:
                          v536 = 7;
                          break;
                        case '8':
LABEL_2299:
                          v536 = 8;
                          break;
                        case '9':
LABEL_2303:
                          v536 = 9;
                          break;
                        case 'A':
                        case 'a':
LABEL_2289:
                          v536 = 10;
                          break;
                        case 'B':
                        case 'b':
LABEL_2293:
                          v536 = 11;
                          break;
                        case 'C':
                        case 'c':
LABEL_2292:
                          v536 = 12;
                          break;
                        case 'D':
                        case 'd':
LABEL_2290:
                          v536 = 13;
                          break;
                        case 'E':
                        case 'e':
LABEL_2291:
                          v536 = 14;
                          break;
                        case 'F':
                        case 'f':
LABEL_2294:
                          v536 = 15;
                          break;
                        default:
                          result = 0;
                          *(a1 + 24) = 12;
                          *(a1 + 32) = "Invalid character in chunk size";
                          goto LABEL_1857;
                      }

                      while (2)
                      {
                        v686 = *(a1 + 64);
                        if (v686 >> 60)
                        {
                          result = 0;
                          *(a1 + 24) = 12;
                          *(a1 + 32) = "Chunk size overflow";
                          *(a1 + 40) = i + 1;
                          *(a1 + 56) = 0;
                        }

                        else
                        {
                          *(a1 + 64) = v536 | (16 * v686);
                          ++i;
LABEL_2287:
                          if (i != a3)
                          {
                            v536 = 0;
                            switch(*i)
                            {
                              case '0':
                                continue;
                              case '1':
                                goto LABEL_2298;
                              case '2':
                                goto LABEL_2300;
                              case '3':
                                goto LABEL_2295;
                              case '4':
                                goto LABEL_2301;
                              case '5':
                                goto LABEL_2297;
                              case '6':
                                goto LABEL_2296;
                              case '7':
                                goto LABEL_2302;
                              case '8':
                                goto LABEL_2299;
                              case '9':
                                goto LABEL_2303;
                              case 'A':
                              case 'a':
                                goto LABEL_2289;
                              case 'B':
                              case 'b':
                                goto LABEL_2293;
                              case 'C':
                              case 'c':
                                goto LABEL_2292;
                              case 'D':
                              case 'd':
                                goto LABEL_2290;
                              case 'E':
                              case 'e':
                                goto LABEL_2291;
                              case 'F':
                              case 'f':
                                goto LABEL_2294;
                              default:
                                goto LABEL_2272;
                            }
                          }

                          return 34;
                        }

                        return result;
                      }
                    }

                    if (v533 == 21)
                    {
                      result = 0;
                      *(a1 + 24) = 21;
                      *(a1 + 32) = "on_chunk_complete pause";
                      *(a1 + 40) = v7;
                      *(a1 + 56) = 36;
                      return result;
                    }

LABEL_2202:
                    result = 0;
                    *(a1 + 24) = 20;
                    goto LABEL_2023;
                  }

                  v7 = i;
                }

                if ((*(a1 + 78) & 0x80) == 0)
                {
                  result = 0;
                  *(a1 + 24) = 2;
                  v87 = "Expected LF after chunk data";
                  goto LABEL_2023;
                }

                goto LABEL_1779;
              }

              if (v448 == 4)
              {
                break;
              }

              if (v448 != 5)
              {
                goto LABEL_1672;
              }

              v457 = *(a1 + 8);
              *(a1 + 8) = 0;
              v458 = *(a1 + 88);
              if (v458)
              {
                v459 = *(v458 + 56);
                if (v459)
                {
                  v460 = v459(a1, v457, &v447[-v457]);
                  if (v460)
                  {
                    v515 = v460;
                    if (v460 == -1)
                    {
                      *(a1 + 32) = "Span callback error in on_chunk_extension_name";
                      v515 = 24;
                    }

                    result = 0;
                    *(a1 + 24) = v515;
                    *(a1 + 40) = v447 + 1;
                    *(a1 + 56) = 28;
                    return result;
                  }
                }
              }

              i = v447 + 1;
LABEL_1625:
              if (i == a3)
              {
                return 28;
              }

              v7 = i;
              *(a1 + 8) = i;
              *(a1 + 16) = llhttp__on_chunk_extension_value;
              v461 = *(a1 + 88);
              if (v461)
              {
                v462 = *(v461 + 144);
                if (v462)
                {
                  v463 = v462(a1);
                  if (v463)
                  {
                    if (v463 == 21)
                    {
                      result = 0;
                      *(a1 + 24) = 21;
                      *(a1 + 32) = "on_chunk_extension_name pause";
                      *(a1 + 40) = v7;
                      *(a1 + 56) = 27;
                      return result;
                    }

                    goto LABEL_1725;
                  }
                }
              }

              i = v7;
LABEL_1630:
              if (i == a3)
              {
                return 27;
              }

              v464 = i;
              result = 27;
              while (1)
              {
                v465 = llhttp__internal__run_lookup_table_5[*v464];
                if (v465 != 3)
                {
                  break;
                }

                if (++v464 == a3)
                {
                  return result;
                }
              }

              if (llhttp__internal__run_lookup_table_5[*v464] <= 3u)
              {
                if (v465 != 1)
                {
                  if (v465 != 2)
                  {
LABEL_1666:
                    v489 = *(a1 + 8);
                    *(a1 + 8) = 0;
                    v490 = *(a1 + 88);
                    if (v490)
                    {
                      v491 = *(v490 + 64);
                      if (v491)
                      {
                        v492 = v491(a1, v489, &v464[-v489]);
                        if (v492)
                        {
                          v493 = v492;
                          if (v492 == -1)
                          {
                            *(a1 + 32) = "Span callback error in on_chunk_extension_value";
                            v493 = 24;
                          }

                          result = 0;
                          *(a1 + 24) = v493;
                          *(a1 + 40) = v464 + 1;
                          *(a1 + 56) = 26;
                          return result;
                        }
                      }
                    }

                    i = v464 + 1;
LABEL_1703:
                    result = 0;
                    *(a1 + 24) = 2;
                    v6 = "Invalid character in chunk extensions value";
                    goto LABEL_1856;
                  }

                  v466 = *(a1 + 8);
                  *(a1 + 8) = 0;
                  v467 = *(a1 + 88);
                  if (v467)
                  {
                    v468 = *(v467 + 64);
                    if (v468)
                    {
                      v469 = v468(a1, v466, &v464[-v466]);
                      if (v469)
                      {
                        v517 = v469;
                        if (v469 == -1)
                        {
                          *(a1 + 32) = "Span callback error in on_chunk_extension_value";
                          v517 = 24;
                        }

                        result = 0;
                        *(a1 + 24) = v517;
                        *(a1 + 40) = v464 + 1;
                        *(a1 + 56) = 18;
                        return result;
                      }
                    }
                  }

                  i = v464 + 1;
LABEL_1642:
                  v7 = i;
                  v470 = *(a1 + 88);
                  if (!v470)
                  {
                    goto LABEL_1645;
                  }

                  v471 = *(v470 + 152);
                  if (!v471)
                  {
                    goto LABEL_1645;
                  }

                  v472 = v471(a1);
                  if (!v472)
                  {
                    goto LABEL_1645;
                  }

                  if (v472 != 21)
                  {
                    goto LABEL_1722;
                  }

                  result = 0;
                  *(a1 + 24) = 21;
                  v456 = "on_chunk_extension_value pause";
                  goto LABEL_1721;
                }

                v481 = *(a1 + 8);
                *(a1 + 8) = 0;
                v482 = *(a1 + 88);
                if (v482)
                {
                  v483 = *(v482 + 64);
                  if (v483)
                  {
                    v484 = v483(a1, v481, &v464[-v481]);
                    if (v484)
                    {
                      v521 = v484;
                      if (v484 == -1)
                      {
                        *(a1 + 32) = "Span callback error in on_chunk_extension_value";
                        v521 = 24;
                      }

                      result = 0;
                      *(a1 + 24) = v521;
                      *(a1 + 40) = v464;
                      *(a1 + 56) = 17;
                      return result;
                    }
                  }
                }

                i = v464;
LABEL_1662:
                v485 = *(a1 + 88);
                if (!v485 || (v486 = *(v485 + 152)) == 0)
                {
LABEL_1747:
                  if ((*(a1 + 78) & 0x100) == 0)
                  {
                    result = 0;
                    *(a1 + 24) = 25;
                    *(a1 + 32) = "Missing expected CR after chunk extension value";
                    goto LABEL_1857;
                  }

                  goto LABEL_1748;
                }

                v487 = i;
                v488 = v486(a1);
                if (!v488)
                {
                  i = v487;
                  goto LABEL_1747;
                }

                v18 = v487;
                if (v488 == 21)
                {
                  result = 0;
                  *(a1 + 24) = 21;
                  *(a1 + 32) = "on_chunk_extension_value pause";
                  *(a1 + 40) = v487;
                  *(a1 + 56) = 16;
                  return result;
                }

LABEL_1849:
                result = 0;
                *(a1 + 24) = 35;
                goto LABEL_2477;
              }

              if (v465 != 4)
              {
                if (v465 != 5)
                {
                  goto LABEL_1666;
                }

                v473 = *(a1 + 8);
                *(a1 + 8) = 0;
                v474 = *(a1 + 88);
                if (v474)
                {
                  v475 = *(v474 + 64);
                  if (v475)
                  {
                    v476 = v475(a1, v473, &v464[-v473]);
                    if (v476)
                    {
                      v519 = v476;
                      if (v476 == -1)
                      {
                        *(a1 + 32) = "Span callback error in on_chunk_extension_value";
                        v519 = 24;
                      }

                      result = 0;
                      *(a1 + 24) = v519;
                      *(a1 + 40) = v464 + 1;
                      *(a1 + 56) = 25;
                      return result;
                    }
                  }
                }

                i = v464 + 1;
LABEL_1652:
                v477 = 0;
                v7 = i;
                v478 = *(a1 + 88);
                if (v478)
                {
                  v477 = 0;
                  v479 = *(v478 + 152);
                  if (v479)
                  {
                    v477 = v479(a1);
                  }
                }

                if (v477)
                {
                  if (v477 == 21)
                  {
                    result = 0;
                    *(a1 + 24) = 21;
                    v480 = "on_chunk_extension_value pause";
LABEL_1708:
                    *(a1 + 32) = v480;
                    *(a1 + 40) = v7;
                    *(a1 + 56) = 32;
                    return result;
                  }

LABEL_1722:
                  result = 0;
                  *(a1 + 24) = 35;
LABEL_2023:
                  *(a1 + 32) = v87;
                  *(a1 + 40) = v7;
                  goto LABEL_2478;
                }

LABEL_1696:
                i = v7;
                goto LABEL_1697;
              }

              while (1)
              {
                i = v464 + 1;
LABEL_1806:
                if (i == a3)
                {
                  return 24;
                }

                v538 = i;
                result = 24;
                while (1)
                {
                  v539 = llhttp__internal__run_lookup_table_3[*v538];
                  if (v539 != 1)
                  {
                    break;
                  }

                  if (++v538 == a3)
                  {
                    return result;
                  }
                }

                if (v539 == 2)
                {
                  break;
                }

                if (v539 != 3)
                {
                  v555 = *(a1 + 8);
                  *(a1 + 8) = 0;
                  v556 = *(a1 + 88);
                  if (v556)
                  {
                    v557 = *(v556 + 64);
                    if (v557)
                    {
                      v558 = v557(a1, v555, &v538[-v555]);
                      if (v558)
                      {
                        v559 = v558;
                        if (v558 == -1)
                        {
                          *(a1 + 32) = "Span callback error in on_chunk_extension_value";
                          v559 = 24;
                        }

                        result = 0;
                        *(a1 + 24) = v559;
                        *(a1 + 40) = v538 + 1;
                        *(a1 + 56) = 23;
                        return result;
                      }
                    }
                  }

                  i = v538 + 1;
LABEL_1843:
                  result = 0;
                  *(a1 + 24) = 2;
                  v6 = "Invalid character in chunk extensions quoted value";
                  goto LABEL_1856;
                }

                i = v538 + 1;
LABEL_1814:
                if (i == a3)
                {
                  return 22;
                }

                v464 = i;
                if (llhttp__internal__run_lookup_table_14[*i] != 1)
                {
                  v540 = *(a1 + 8);
                  *(a1 + 8) = 0;
                  v541 = *(a1 + 88);
                  if (v541)
                  {
                    v542 = *(v541 + 64);
                    if (v542)
                    {
                      v543 = v542(a1, v540, &v464[-v540]);
                      if (v543)
                      {
                        v544 = v543;
                        if (v543 == -1)
                        {
                          *(a1 + 32) = "Span callback error in on_chunk_extension_value";
                          v544 = 24;
                        }

                        result = 0;
                        *(a1 + 24) = v544;
                        *(a1 + 40) = v464 + 1;
                        *(a1 + 56) = 21;
                        return result;
                      }
                    }
                  }

                  i = v464 + 1;
LABEL_1851:
                  result = 0;
                  *(a1 + 24) = 2;
                  v6 = "Invalid quoted-pair in chunk extensions quoted value";
                  goto LABEL_1856;
                }
              }

              v545 = v538 + 1;
              v546 = *(a1 + 8);
              *(a1 + 8) = 0;
              v547 = *(a1 + 88);
              if (v547)
              {
                v548 = *(v547 + 64);
                if (v548)
                {
                  v549 = v548(a1, v546, &v545[-v546]);
                  if (v549)
                  {
                    v560 = v549;
                    if (v549 == -1)
                    {
                      *(a1 + 32) = "Span callback error in on_chunk_extension_value";
                      v560 = 24;
                    }

                    result = 0;
                    *(a1 + 24) = v560;
                    *(a1 + 40) = v545;
                    *(a1 + 56) = 20;
                    return result;
                  }
                }
              }

              i = v545;
LABEL_1826:
              v550 = *(a1 + 88);
              if (v550)
              {
                v551 = *(v550 + 152);
                if (v551)
                {
                  v552 = i;
                  v553 = v551(a1);
                  if (v553)
                  {
                    v18 = v552;
                    if (v553 == 21)
                    {
                      result = 0;
                      *(a1 + 24) = 21;
                      *(a1 + 32) = "on_chunk_extension_value pause";
                      *(a1 + 40) = v552;
                      *(a1 + 56) = 19;
                      return result;
                    }

                    goto LABEL_1849;
                  }

                  i = v552;
                }
              }

LABEL_1830:
              if (i == a3)
              {
                return 19;
              }

              v554 = *i;
              if (v554 == 10)
              {
                goto LABEL_1747;
              }

              if (v554 != 59)
              {
                if (v554 != 13)
                {
                  result = 0;
                  *(a1 + 24) = 2;
                  *(a1 + 32) = "Invalid character in chunk extensions quote value";
                  goto LABEL_1857;
                }

                ++i;
                goto LABEL_1748;
              }
            }

            v507 = *(a1 + 8);
            *(a1 + 8) = 0;
            v508 = *(a1 + 88);
            if (v508)
            {
              v509 = *(v508 + 56);
              if (v509)
              {
                v510 = v509(a1, v507, &v447[-v507]);
                if (v510)
                {
                  v520 = v510;
                  if (v510 == -1)
                  {
                    *(a1 + 32) = "Span callback error in on_chunk_extension_name";
                    v520 = 24;
                  }

                  result = 0;
                  *(a1 + 24) = v520;
                  *(a1 + 40) = v447 + 1;
                  *(a1 + 56) = 15;
                  return result;
                }
              }
            }

            i = v447 + 1;
LABEL_1692:
            v511 = 0;
            v7 = i;
            v512 = *(a1 + 88);
            if (v512)
            {
              v511 = 0;
              v513 = *(v512 + 144);
              if (v513)
              {
                v511 = v513(a1);
              }
            }

            if (v511)
            {
              if (v511 == 21)
              {
                result = 0;
                *(a1 + 24) = 21;
                v480 = "on_chunk_extension_name pause";
                goto LABEL_1708;
              }

              goto LABEL_1725;
            }

            goto LABEL_1696;
          }

LABEL_2285:
          result = 0;
          *(a1 + 24) = 12;
          v98 = "Invalid character in chunk size";
          goto LABEL_2477;
        }

        ++v18;
        if ((*(a1 + 78) & 0x200) == 0)
        {
          goto LABEL_2285;
        }
      }

    case 34:
      goto LABEL_2287;
    case 35:
      goto LABEL_1785;
    case 36:
      goto LABEL_1784;
    case 37:
      goto LABEL_2212;
    case 38:
      goto LABEL_2210;
    case 39:
      return result;
    case 40:
      goto LABEL_2246;
    case 41:
      goto LABEL_2207;
    case 42:
      goto LABEL_2265;
    case 43:
      goto LABEL_2018;
    case 44:
      goto LABEL_2185;
    case 45:
      goto LABEL_2309;
    case 46:
      goto LABEL_2318;
    case 47:
      goto LABEL_2327;
    case 48:
      goto LABEL_2349;
    case 49:
      goto LABEL_2366;
    case 50:
      goto LABEL_2491;
    case 51:
    case 52:
      goto LABEL_2480;
    case 53:
      goto LABEL_2514;
    case 54:
      goto LABEL_2531;
    case 55:
      goto LABEL_2502;
    case 56:
      goto LABEL_2606;
    case 57:
      goto LABEL_1946;
    case 58:
      goto LABEL_2589;
    case 59:
      goto LABEL_2570;
    case 60:
      goto LABEL_2551;
    case 61:
      goto LABEL_2537;
    case 62:
      goto LABEL_2420;
    case 63:
      goto LABEL_2447;
    case 64:
      goto LABEL_2395;
    case 65:
      goto LABEL_2380;
    case 66:
    case 67:
      goto LABEL_2;
    case 68:
      goto LABEL_1935;
    case 69:
      goto LABEL_2441;
    case 70:
      goto LABEL_2432;
    case 71:
      goto LABEL_1911;
    case 72:
      goto LABEL_2425;
    case 73:
      goto LABEL_2373;
    case 74:
      goto LABEL_2334;
    case 75:
      goto LABEL_2176;
    case 76:
      goto LABEL_1893;
    case 77:
      goto LABEL_1875;
    case 78:
      goto LABEL_1866;
    case 79:
      goto LABEL_1860;
    case 80:
      goto LABEL_2169;
    case 81:
      goto LABEL_2112;
    case 82:
      goto LABEL_2131;
    case 83:
      goto LABEL_2106;
    case 84:
      goto LABEL_2087;
    case 85:
      goto LABEL_2047;
    case 86:
      goto LABEL_2150;
    case 87:
      goto LABEL_2065;
    case 88:
      goto LABEL_2040;
    case 89:
      goto LABEL_2038;
    case 90:
      goto LABEL_2008;
    case 91:
      goto LABEL_1249;
    case 92:
      goto LABEL_1244;
    case 93:
      goto LABEL_1234;
    case 94:
      goto LABEL_1231;
    case 95:
      goto LABEL_1387;
    case 96:
      goto LABEL_209;
    case 97:
      goto LABEL_1366;
    case 98:
      goto LABEL_1361;
    case 99:
      goto LABEL_1360;
    case 100:
      goto LABEL_1356;
    case 101:
    case 218:
      goto LABEL_1536;
    case 102:
    case 219:
      goto LABEL_1598;
    case 103:
      goto LABEL_1308;
    case 104:
    case 221:
      goto LABEL_1519;
    case 105:
      goto LABEL_1305;
    case 106:
    case 223:
      goto LABEL_1533;
    case 107:
      goto LABEL_1302;
    case 108:
      goto LABEL_1300;
    case 109:
      goto LABEL_1266;
    case 110:
      goto LABEL_1284;
    case 111:
      goto LABEL_1215;
    case 112:
      goto LABEL_1206;
    case 113:
      goto LABEL_1199;
    case 114:
      goto LABEL_1194;
    case 115:
      goto LABEL_1179;
    case 116:
      goto LABEL_1177;
    case 117:
      goto LABEL_1167;
    case 118:
      goto LABEL_1148;
    case 119:
      goto LABEL_1140;
    case 120:
      goto LABEL_1100;
    case 121:
      goto LABEL_1120;
    case 122:
      goto LABEL_1138;
    case 123:
      goto LABEL_1129;
    case 124:
      goto LABEL_1111;
    case 125:
      goto LABEL_1108;
    case 126:
      goto LABEL_1105;
    case 127:
      goto LABEL_1103;
    case 128:
      goto LABEL_1092;
    case 129:
      goto LABEL_1089;
    case 130:
      goto LABEL_1087;
    case 131:
      goto LABEL_1084;
    case 132:
      goto LABEL_1081;
    case 133:
      goto LABEL_1078;
    case 134:
      goto LABEL_1069;
    case 135:
      goto LABEL_1066;
    case 136:
    case 227:
      goto LABEL_1062;
    case 137:
      goto LABEL_70;
    case 138:
      goto LABEL_74;
    case 139:
LABEL_66:
      if (i == a3)
      {
        return 139;
      }

      v18 = i;
      v30 = *i;
      if (v30 != 78)
      {
        if (v30 != 67)
        {
          goto LABEL_1420;
        }

        ++i;
LABEL_70:
        if (i == a3)
        {
          return 137;
        }

        v18 = i;
        if (*i != 76)
        {
          goto LABEL_1420;
        }

        v31 = i + 1;
        LOBYTE(v32) = 19;
        goto LABEL_1056;
      }

      ++i;
LABEL_74:
      if (i == a3)
      {
        return 138;
      }

      v18 = i;
      v33 = 0;
      v34 = *a1;
      while (1)
      {
        v35 = *v18;
        v36 = llparse_blob17[v34];
        if (v34 == 5)
        {
          v33 = 0;
          v37 = 5;
        }

        else
        {
          v37 = 0;
        }

        if (v35 != v36)
        {
          v33 = 2;
          v37 = 5;
        }

        if (v37)
        {
          break;
        }

        if (v35 == v36)
        {
          ++v34;
        }

        if (++v18 == a3)
        {
          v33 = 1;
          v18 = a3;
          *a1 = v34;
          goto LABEL_136;
        }
      }

      *a1 = 0;
LABEL_136:
      if (!v33)
      {
        v31 = v18 + 1;
        LOBYTE(v32) = 36;
        goto LABEL_1056;
      }

      if (v33 == 1)
      {
        return 138;
      }

      goto LABEL_1420;
    case 140:
LABEL_659:
      if (i == a3)
      {
        return 140;
      }

      v18 = i;
      v210 = 0;
      v211 = *a1;
      while (1)
      {
        v212 = *v18;
        v213 = llparse_blob18[v211];
        if (v211 == 2)
        {
          v210 = 0;
          v214 = 5;
        }

        else
        {
          v214 = 0;
        }

        if (v212 != v213)
        {
          v210 = 2;
          v214 = 5;
        }

        if (v214)
        {
          break;
        }

        if (v212 == v213)
        {
          ++v211;
        }

        if (++v18 == a3)
        {
          v210 = 1;
          v18 = a3;
          *a1 = v211;
          goto LABEL_672;
        }
      }

      *a1 = 0;
LABEL_672:
      if (!v210)
      {
        v31 = v18 + 1;
        LOBYTE(v32) = 16;
        goto LABEL_1056;
      }

      if (v210 == 1)
      {
        return 140;
      }

      goto LABEL_1420;
    case 141:
      goto LABEL_615;
    case 142:
      goto LABEL_633;
    case 143:
      goto LABEL_647;
    case 144:
      goto LABEL_629;
    case 145:
LABEL_611:
      if (i == a3)
      {
        return 145;
      }

      v18 = i;
      v198 = *i;
      if (v198 != 79)
      {
        if (v198 != 72)
        {
          goto LABEL_1420;
        }

        ++i;
LABEL_615:
        if (i == a3)
        {
          return 141;
        }

        v18 = i;
        v199 = 0;
        v200 = *a1;
        while (1)
        {
          v201 = *v18;
          v202 = llparse_blob19[v200];
          if (v200 == 5)
          {
            v199 = 0;
            v203 = 5;
          }

          else
          {
            v203 = 0;
          }

          if (v201 != v202)
          {
            v199 = 2;
            v203 = 5;
          }

          if (v203)
          {
            break;
          }

          if (v201 == v202)
          {
            ++v200;
          }

          if (++v18 == a3)
          {
            v199 = 1;
            v18 = a3;
            *a1 = v200;
            goto LABEL_652;
          }
        }

        *a1 = 0;
LABEL_652:
        if (!v199)
        {
          v31 = v18 + 1;
          LOBYTE(v32) = 22;
          goto LABEL_1056;
        }

        if (v199 == 1)
        {
          return 141;
        }

        goto LABEL_1420;
      }

      ++i;
LABEL_629:
      if (i == a3)
      {
        return 144;
      }

      v18 = i;
      v204 = *i;
      if (v204 != 80)
      {
        if (v204 != 78)
        {
          goto LABEL_1420;
        }

        ++i;
LABEL_633:
        if (i == a3)
        {
          return 142;
        }

        v18 = i;
        v205 = 0;
        v206 = *a1;
        while (1)
        {
          v207 = *v18;
          v208 = llparse_blob20[v206];
          if (v206 == 3)
          {
            v205 = 0;
            v209 = 5;
          }

          else
          {
            v209 = 0;
          }

          if (v207 != v208)
          {
            v205 = 2;
            v209 = 5;
          }

          if (v209)
          {
            break;
          }

          if (v207 == v208)
          {
            ++v206;
          }

          if (++v18 == a3)
          {
            v205 = 1;
            v18 = a3;
            *a1 = v206;
            goto LABEL_650;
          }
        }

        *a1 = 0;
LABEL_650:
        if (!v205)
        {
          v31 = v18 + 1;
          LOBYTE(v32) = 5;
          goto LABEL_1056;
        }

        if (v205 == 1)
        {
          return 142;
        }

        goto LABEL_1420;
      }

      ++i;
LABEL_647:
      if (i == a3)
      {
        return 143;
      }

      v18 = i;
      if (*i != 89)
      {
        goto LABEL_1420;
      }

      v31 = i + 1;
      LOBYTE(v32) = 8;
      goto LABEL_1056;
    case 146:
      goto LABEL_684;
    case 147:
      goto LABEL_698;
    case 148:
      goto LABEL_680;
    case 149:
LABEL_677:
      if (i == a3)
      {
        return 149;
      }

      v18 = i;
      if (*i != 69)
      {
        goto LABEL_1420;
      }

      ++i;
LABEL_680:
      if (i == a3)
      {
        return 148;
      }

      v18 = i;
      v215 = *i;
      if (v215 == 83)
      {
        ++i;
LABEL_698:
        if (i == a3)
        {
          return 147;
        }

        v18 = i;
        v220 = 0;
        v221 = *a1;
        while (1)
        {
          v222 = *v18;
          v223 = llparse_blob22[v221];
          if (v221 == 4)
          {
            v220 = 0;
            v224 = 5;
          }

          else
          {
            v224 = 0;
          }

          if (v222 != v223)
          {
            v220 = 2;
            v224 = 5;
          }

          if (v224)
          {
            break;
          }

          if (v222 == v223)
          {
            ++v221;
          }

          if (++v18 == a3)
          {
            v220 = 1;
            v18 = a3;
            *a1 = v221;
            goto LABEL_713;
          }
        }

        *a1 = 0;
LABEL_713:
        if (!v220)
        {
          v31 = v18 + 1;
          LOBYTE(v32) = 35;
          goto LABEL_1056;
        }

        if (v220 == 1)
        {
          return 147;
        }
      }

      else
      {
        if (v215 != 76)
        {
          goto LABEL_1420;
        }

        ++i;
LABEL_684:
        if (i == a3)
        {
          return 146;
        }

        v18 = i;
        v32 = 0;
        v216 = *a1;
        while (1)
        {
          v217 = *v18;
          v218 = llparse_blob21[v216];
          if (v216 == 2)
          {
            v32 = 0;
            v219 = 5;
          }

          else
          {
            v219 = 0;
          }

          if (v217 != v218)
          {
            v32 = 2;
            v219 = 5;
          }

          if (v219)
          {
            break;
          }

          if (v217 == v218)
          {
            ++v216;
          }

          if (++v18 == a3)
          {
            v32 = 1;
            v18 = a3;
            *a1 = v216;
            goto LABEL_711;
          }
        }

        *a1 = 0;
LABEL_711:
        if (!v32)
        {
          v31 = v18 + 1;
          goto LABEL_1056;
        }

        if (v32 == 1)
        {
          return 146;
        }
      }

      goto LABEL_1420;
    case 150:
LABEL_229:
      if (i == a3)
      {
        return 150;
      }

      v18 = i;
      v99 = 0;
      v100 = *a1;
      while (1)
      {
        v101 = *v18;
        v102 = llparse_blob23[v100];
        if (v100 == 3)
        {
          v99 = 0;
          v103 = 5;
        }

        else
        {
          v103 = 0;
        }

        if (v101 != v102)
        {
          v99 = 2;
          v103 = 5;
        }

        if (v103)
        {
          break;
        }

        if (v101 == v102)
        {
          ++v100;
        }

        if (++v18 == a3)
        {
          v99 = 1;
          v18 = a3;
          *a1 = v100;
          goto LABEL_242;
        }
      }

      *a1 = 0;
LABEL_242:
      if (!v99)
      {
        v31 = v18 + 1;
        LOBYTE(v32) = 45;
        goto LABEL_1056;
      }

      if (v99 == 1)
      {
        return 150;
      }

      goto LABEL_1420;
    case 151:
      goto LABEL_756;
    case 152:
      goto LABEL_753;
    case 153:
LABEL_738:
      if (i == a3)
      {
        return 153;
      }

      v18 = i;
      v230 = 0;
      v231 = *a1;
      while (1)
      {
        v232 = *v18;
        v233 = llparse_blob24[v231];
        if (v231 == 1)
        {
          v230 = 0;
          v234 = 5;
        }

        else
        {
          v234 = 0;
        }

        if (v232 != v233)
        {
          v230 = 2;
          v234 = 5;
        }

        if (v234)
        {
          break;
        }

        if (v232 == v233)
        {
          ++v231;
        }

        if (++v18 == a3)
        {
          v230 = 1;
          v18 = a3;
          *a1 = v231;
          goto LABEL_751;
        }
      }

      *a1 = 0;
LABEL_751:
      if (v230)
      {
        if (v230 == 1)
        {
          return 153;
        }
      }

      else
      {
        i = v18 + 1;
LABEL_753:
        if (i == a3)
        {
          return 152;
        }

        v31 = i;
        LOBYTE(v32) = 1;
        if (*i != 95)
        {
          goto LABEL_1056;
        }

        ++i;
LABEL_756:
        if (i == a3)
        {
          return 151;
        }

        v18 = i;
        v235 = 0;
        v236 = *a1;
        while (1)
        {
          v237 = *v18;
          v238 = llparse_blob25[v236];
          if (v236 == 8)
          {
            v235 = 0;
            v239 = 5;
          }

          else
          {
            v239 = 0;
          }

          if (v237 != v238)
          {
            v235 = 2;
            v239 = 5;
          }

          if (v239)
          {
            break;
          }

          if (v237 == v238)
          {
            ++v236;
          }

          if (++v18 == a3)
          {
            v235 = 1;
            v18 = a3;
            *a1 = v236;
            goto LABEL_769;
          }
        }

        *a1 = 0;
LABEL_769:
        if (!v235)
        {
          v31 = v18 + 1;
          LOBYTE(v32) = 41;
          goto LABEL_1056;
        }

        if (v235 == 1)
        {
          return 151;
        }
      }

      goto LABEL_1420;
    case 154:
LABEL_593:
      if (i == a3)
      {
        return 154;
      }

      v18 = i;
      v193 = 0;
      v194 = *a1;
      while (1)
      {
        v195 = *v18;
        v196 = llparse_blob26[v194];
        if (v194 == 2)
        {
          v193 = 0;
          v197 = 5;
        }

        else
        {
          v197 = 0;
        }

        if (v195 != v196)
        {
          v193 = 2;
          v197 = 5;
        }

        if (v197)
        {
          break;
        }

        if (v195 == v196)
        {
          ++v194;
        }

        if (++v18 == a3)
        {
          v193 = 1;
          v18 = a3;
          *a1 = v194;
          goto LABEL_606;
        }
      }

      *a1 = 0;
LABEL_606:
      if (!v193)
      {
        v31 = v18 + 1;
        LOBYTE(v32) = 2;
        goto LABEL_1056;
      }

      if (v193 == 1)
      {
        return 154;
      }

      goto LABEL_1420;
    case 155:
      goto LABEL_798;
    case 156:
      goto LABEL_812;
    case 157:
LABEL_794:
      if (i == a3)
      {
        return 157;
      }

      v18 = i;
      v245 = *i;
      if (v245 == 79)
      {
        ++i;
LABEL_812:
        if (i == a3)
        {
          return 156;
        }

        v18 = i;
        v251 = 0;
        v252 = *a1;
        while (1)
        {
          v253 = *v18;
          v254 = llparse_blob28[v252];
          if (v252 == 1)
          {
            v251 = 0;
            v255 = 5;
          }

          else
          {
            v255 = 0;
          }

          if (v253 != v254)
          {
            v251 = 2;
            v255 = 5;
          }

          if (v255)
          {
            break;
          }

          if (v253 == v254)
          {
            ++v252;
          }

          if (++v18 == a3)
          {
            v251 = 1;
            v18 = a3;
            *a1 = v252;
            goto LABEL_827;
          }
        }

        *a1 = 0;
LABEL_827:
        if (!v251)
        {
          v31 = v18 + 1;
          LOBYTE(v32) = 9;
          goto LABEL_1056;
        }

        if (v251 == 1)
        {
          return 156;
        }
      }

      else
      {
        if (v245 != 73)
        {
          goto LABEL_1420;
        }

        ++i;
LABEL_798:
        if (i == a3)
        {
          return 155;
        }

        v18 = i;
        v246 = 0;
        v247 = *a1;
        while (1)
        {
          v248 = *v18;
          v249 = llparse_blob27[v247];
          if (v247 == 1)
          {
            v246 = 0;
            v250 = 5;
          }

          else
          {
            v250 = 0;
          }

          if (v248 != v249)
          {
            v246 = 2;
            v250 = 5;
          }

          if (v250)
          {
            break;
          }

          if (v248 == v249)
          {
            ++v247;
          }

          if (++v18 == a3)
          {
            v246 = 1;
            v18 = a3;
            *a1 = v247;
            goto LABEL_825;
          }
        }

        *a1 = 0;
LABEL_825:
        if (!v246)
        {
          v31 = v18 + 1;
          LOBYTE(v32) = 31;
          goto LABEL_1056;
        }

        if (v246 == 1)
        {
          return 155;
        }
      }

      goto LABEL_1420;
    case 158:
      goto LABEL_286;
    case 159:
      goto LABEL_252;
    case 160:
      goto LABEL_306;
    case 161:
      goto LABEL_324;
    case 162:
      goto LABEL_338;
    case 163:
      goto LABEL_320;
    case 164:
      goto LABEL_302;
    case 165:
      goto LABEL_268;
    case 166:
LABEL_247:
      if (i == a3)
      {
        return 166;
      }

      v18 = i;
      v104 = *i;
      if (v104 <= 0x4A)
      {
        if (v104 == 45)
        {
          ++i;
LABEL_286:
          if (i == a3)
          {
            return 158;
          }

          v18 = i;
          v115 = 0;
          v116 = *a1;
          while (1)
          {
            v117 = *v18;
            v118 = llparse_blob29[v116];
            if (v116 == 5)
            {
              v115 = 0;
              v119 = 5;
            }

            else
            {
              v119 = 0;
            }

            if (v117 != v118)
            {
              v115 = 2;
              v119 = 5;
            }

            if (v119)
            {
              break;
            }

            if (v117 == v118)
            {
              ++v116;
            }

            if (++v18 == a3)
            {
              v115 = 1;
              v18 = a3;
              *a1 = v116;
              goto LABEL_299;
            }
          }

          *a1 = 0;
LABEL_299:
          if (!v115)
          {
            v31 = v18 + 1;
            LOBYTE(v32) = 24;
            goto LABEL_1056;
          }

          if (v115 == 1)
          {
            return 158;
          }
        }

        else
        {
          if (v104 != 69)
          {
            goto LABEL_1420;
          }

          ++i;
LABEL_252:
          if (i == a3)
          {
            return 159;
          }

          v18 = i;
          v105 = 0;
          v106 = *a1;
          while (1)
          {
            v107 = *v18;
            v108 = llparse_blob30[v106];
            if (v106 == 2)
            {
              v105 = 0;
              v109 = 5;
            }

            else
            {
              v109 = 0;
            }

            if (v107 != v108)
            {
              v105 = 2;
              v109 = 5;
            }

            if (v109)
            {
              break;
            }

            if (v107 == v108)
            {
              ++v106;
            }

            if (++v18 == a3)
            {
              v105 = 1;
              v18 = a3;
              *a1 = v106;
              goto LABEL_283;
            }
          }

          *a1 = 0;
LABEL_283:
          if (!v105)
          {
            v31 = v18 + 1;
            LOBYTE(v32) = 23;
            goto LABEL_1056;
          }

          if (v105 == 1)
          {
            return 159;
          }
        }

        goto LABEL_1420;
      }

      if (v104 != 75)
      {
        if (v104 != 79)
        {
          goto LABEL_1420;
        }

        ++i;
LABEL_268:
        if (i == a3)
        {
          return 165;
        }

        v18 = i;
        v110 = 0;
        v111 = *a1;
        while (1)
        {
          v112 = *v18;
          v113 = llparse_blob33[v111];
          if (v111 == 1)
          {
            v110 = 0;
            v114 = 5;
          }

          else
          {
            v114 = 0;
          }

          if (v112 != v113)
          {
            v110 = 2;
            v114 = 5;
          }

          if (v114)
          {
            break;
          }

          if (v112 == v113)
          {
            ++v111;
          }

          if (++v18 == a3)
          {
            v110 = 1;
            v18 = a3;
            *a1 = v111;
            goto LABEL_281;
          }
        }

        *a1 = 0;
LABEL_281:
        if (!v110)
        {
          v31 = v18 + 1;
          LOBYTE(v32) = 11;
          goto LABEL_1056;
        }

        if (v110 == 1)
        {
          return 165;
        }

        goto LABEL_1420;
      }

      ++i;
LABEL_302:
      if (i == a3)
      {
        return 164;
      }

      v18 = i;
      v120 = *i;
      if (v120 != 67)
      {
        if (v120 != 65)
        {
          goto LABEL_1420;
        }

        ++i;
LABEL_306:
        if (i == a3)
        {
          return 160;
        }

        v18 = i;
        v121 = 0;
        v122 = *a1;
        while (1)
        {
          v123 = *v18;
          v124 = llparse_blob31[v122];
          if (v122 == 6)
          {
            v121 = 0;
            v125 = 5;
          }

          else
          {
            v125 = 0;
          }

          if (v123 != v124)
          {
            v121 = 2;
            v125 = 5;
          }

          if (v125)
          {
            break;
          }

          if (v123 == v124)
          {
            ++v122;
          }

          if (++v18 == a3)
          {
            v121 = 1;
            v18 = a3;
            *a1 = v122;
            goto LABEL_343;
          }
        }

        *a1 = 0;
LABEL_343:
        if (!v121)
        {
          v31 = v18 + 1;
          LOBYTE(v32) = 21;
          goto LABEL_1056;
        }

        if (v121 == 1)
        {
          return 160;
        }

        goto LABEL_1420;
      }

      ++i;
LABEL_320:
      if (i == a3)
      {
        return 163;
      }

      v18 = i;
      v126 = *i;
      if (v126 != 79)
      {
        if (v126 != 65)
        {
          goto LABEL_1420;
        }

        ++i;
LABEL_324:
        if (i == a3)
        {
          return 161;
        }

        v18 = i;
        v127 = 0;
        v128 = *a1;
        while (1)
        {
          v129 = *v18;
          v130 = llparse_blob32[v128];
          if (v128 == 5)
          {
            v127 = 0;
            v131 = 5;
          }

          else
          {
            v131 = 0;
          }

          if (v129 != v130)
          {
            v127 = 2;
            v131 = 5;
          }

          if (v131)
          {
            break;
          }

          if (v129 == v130)
          {
            ++v128;
          }

          if (++v18 == a3)
          {
            v127 = 1;
            v18 = a3;
            *a1 = v128;
            goto LABEL_341;
          }
        }

        *a1 = 0;
LABEL_341:
        if (!v127)
        {
          v31 = v18 + 1;
          LOBYTE(v32) = 30;
          goto LABEL_1056;
        }

        if (v127 == 1)
        {
          return 161;
        }

LABEL_1420:
        result = 0;
        *(a1 + 24) = 6;
        v98 = "Invalid method encountered";
        goto LABEL_2477;
      }

      ++i;
LABEL_338:
      if (i == a3)
      {
        return 162;
      }

      v18 = i;
      if (*i != 76)
      {
        goto LABEL_1420;
      }

      v31 = i + 1;
      LOBYTE(v32) = 10;
LABEL_1056:
      *(a1 + 73) = v32;
      v317 = *(a1 + 8);
      *(a1 + 8) = 0;
      v318 = *(a1 + 88);
      if (!v318)
      {
        goto LABEL_1061;
      }

      v319 = *(v318 + 24);
      if (v319)
      {
        v320 = v319(a1, v317, &v31[-v317]);
        if (v320)
        {
          if (v320 == -1)
          {
            *(a1 + 32) = "Span callback error in on_method";
            v320 = 24;
          }

          v326 = v320;
          result = 0;
          *(a1 + 24) = v326;
          *(a1 + 40) = v31;
          *(a1 + 56) = 136;
          return result;
        }
      }

      i = v31;
      v321 = *(a1 + 88);
      if (v321)
      {
        goto LABEL_1063;
      }

      while (1)
      {
LABEL_1066:
        if (i == a3)
        {
          return 135;
        }

        if (*i != 32)
        {
          result = 0;
          *(a1 + 24) = 6;
          *(a1 + 32) = "Expected space after method";
          goto LABEL_1857;
        }

        ++i;
LABEL_1069:
        if (i == a3)
        {
          return 134;
        }

        v325 = i;
        result = 134;
        while (*v325 == 32)
        {
          if (++v325 == a3)
          {
            return result;
          }
        }

        i = v325;
        if (*(a1 + 73) == 5)
        {
          break;
        }

LABEL_1084:
        if (i == a3)
        {
          return 131;
        }

        v18 = i;
        v328 = *i;
        if (v328 == 12 || v328 == 9)
        {
          goto LABEL_1146;
        }

LABEL_1087:
        if (i == a3)
        {
          return 130;
        }

        *(a1 + 8) = i;
        *(a1 + 16) = llhttp__on_url;
LABEL_1089:
        if (i == a3)
        {
          return 129;
        }

        v18 = i;
        v329 = llhttp__internal__run_lookup_table_27[*i];
        if (v329 != 2)
        {
          if (v329 == 3)
          {
LABEL_1092:
            if (i == a3)
            {
              return 128;
            }

            v18 = i;
            result = 128;
            while (1)
            {
              v330 = llhttp__internal__run_lookup_table_26[*v18];
              if (v330 != 3)
              {
                break;
              }

              if (++v18 == a3)
              {
                return result;
              }
            }

            if (v330 == 2)
            {
              i = v18;
LABEL_1103:
              if (i == a3)
              {
                return 127;
              }

              ++i;
LABEL_1105:
              if (i == a3)
              {
                return 126;
              }

              v18 = i;
              v331 = *i;
              if (v331 == 47)
              {
                ++i;
LABEL_1108:
                if (i == a3)
                {
                  return 125;
                }

                v18 = i;
                if (*i == 47)
                {
                  ++i;
LABEL_1111:
                  if (i != a3)
                  {
                    goto LABEL_1112;
                  }

                  return 124;
                }

                goto LABEL_1099;
              }

              if (*i <= 0xBu)
              {
                if (v331 != 9 && v331 != 10)
                {
                  goto LABEL_1099;
                }
              }

              else if (v331 != 12 && v331 != 13 && v331 != 32)
              {
                goto LABEL_1099;
              }
            }

            else if (v330 != 1)
            {
LABEL_1099:
              result = 0;
              *(a1 + 24) = 7;
              v98 = "Unexpected char in url schema";
              goto LABEL_2477;
            }
          }

          else if (v329 != 1)
          {
            result = 0;
            *(a1 + 24) = 7;
            v98 = "Unexpected start char in url";
            goto LABEL_2477;
          }

LABEL_1146:
          ++v18;
          goto LABEL_1259;
        }

LABEL_1100:
        if (i == a3)
        {
          return 120;
        }

LABEL_1139:
        ++i;
LABEL_1140:
        if (i == a3)
        {
          return 119;
        }

        v18 = i;
        result = 119;
        while (1)
        {
          v334 = llhttp__internal__run_lookup_table_23[*v18];
          if (v334 != 2)
          {
            break;
          }

          if (++v18 == a3)
          {
            return result;
          }
        }

        if (v334 == 1)
        {
          goto LABEL_1146;
        }

        i = v18;
LABEL_1148:
        if (i == a3)
        {
          return 118;
        }

        v7 = i;
        v335 = *i;
        if (v335 <= 0x1F)
        {
          if (*i > 0xBu)
          {
            if (v335 == 13)
            {
LABEL_1227:
              v354 = *(a1 + 8);
              *(a1 + 8) = 0;
              v355 = *(a1 + 88);
              if (v355)
              {
                v356 = *(v355 + 8);
                if (v356)
                {
                  v357 = v356(a1, v354, &v7[-v354]);
                  if (v357)
                  {
                    v432 = v357;
                    if (v357 == -1)
                    {
                      *(a1 + 32) = "Span callback error in on_url";
                      v432 = 24;
                    }

                    result = 0;
                    *(a1 + 24) = v432;
                    *(a1 + 40) = v7;
                    *(a1 + 56) = 94;
                    return result;
                  }
                }
              }

              i = v7;
LABEL_1231:
              if (i == a3)
              {
                return 94;
              }

              v358 = *i;
              if (v358 == 13)
              {
                ++i;
LABEL_1234:
                if (i == a3)
                {
                  return 93;
                }

                v18 = i;
                if (*i == 10)
                {
                  ++i;
                  goto LABEL_1249;
                }
              }

              else
              {
                if (v358 == 12 || v358 == 9)
                {
                  v18 = i + 1;
                  goto LABEL_1259;
                }

                v18 = i;
              }

              result = 0;
              *(a1 + 24) = 7;
              v98 = "Expected CRLF";
              goto LABEL_2477;
            }

            if (v335 != 12)
            {
LABEL_1160:
              result = 0;
              *(a1 + 24) = 7;
              v87 = "Invalid char in url path";
              goto LABEL_2023;
            }

LABEL_1258:
            v18 = v7 + 1;
          }

          else
          {
            if (v335 != 10)
            {
              if (v335 != 9)
              {
                goto LABEL_1160;
              }

              goto LABEL_1258;
            }

LABEL_1240:
            v359 = *(a1 + 8);
            *(a1 + 8) = 0;
            v360 = *(a1 + 88);
            if (v360)
            {
              v361 = *(v360 + 8);
              if (v361)
              {
                v362 = v361(a1, v359, &v7[-v359]);
                if (v362)
                {
                  v433 = v362;
                  if (v362 == -1)
                  {
                    *(a1 + 32) = "Span callback error in on_url";
                    v433 = 24;
                  }

                  result = 0;
                  *(a1 + 24) = v433;
                  *(a1 + 40) = v7;
                  *(a1 + 56) = 92;
                  return result;
                }
              }
            }

            i = v7;
LABEL_1244:
            if (i == a3)
            {
              return 92;
            }

            v18 = i + 1;
            v363 = *i;
            v364 = v363 == 9 || v363 == 12;
            ++i;
            if (!v364)
            {
LABEL_1249:
              if (i == a3)
              {
                return 91;
              }

              v7 = i;
              v365 = *i;
              if (v365 != 12 && v365 != 9)
              {
                v366 = 0;
                *(a1 + 74) = 2304;
                v367 = *(a1 + 88);
                if (v367)
                {
                  v366 = 0;
                  v368 = *(v367 + 96);
                  if (v368)
                  {
                    v366 = v368(a1);
                  }
                }

                if (!v366)
                {
                  goto LABEL_1384;
                }

                if (v366 == 21)
                {
                  result = 0;
                  *(a1 + 24) = 21;
                  v369 = "on_url_complete pause";
                  goto LABEL_1396;
                }

LABEL_1561:
                result = 0;
                *(a1 + 24) = 26;
                goto LABEL_2023;
              }

              goto LABEL_1258;
            }
          }

LABEL_1259:
          result = 0;
          *(a1 + 24) = 7;
          v98 = "Invalid characters in url";
          goto LABEL_2477;
        }

        if (v335 != 32)
        {
          if (v335 == 35)
          {
            ++i;
LABEL_1179:
            if (i == a3)
            {
              return 115;
            }

            v7 = i;
            result = 115;
            while (1)
            {
              v337 = llhttp__internal__run_lookup_table_21[*v7];
              if (v337 != 5)
              {
                break;
              }

              if (++v7 == a3)
              {
                return result;
              }
            }

            if (llhttp__internal__run_lookup_table_21[*v7] <= 2u)
            {
              if (v337 == 1)
              {
                goto LABEL_1258;
              }

              if (v337 != 2)
              {
LABEL_1326:
                result = 0;
                *(a1 + 24) = 7;
                v87 = "Invalid char in url fragment start";
                goto LABEL_2023;
              }

              goto LABEL_1240;
            }

            if (v337 == 3)
            {
              goto LABEL_1227;
            }

            if (v337 != 4)
            {
              goto LABEL_1326;
            }

            goto LABEL_1190;
          }

          if (v335 != 63)
          {
            goto LABEL_1160;
          }

LABEL_1166:
          i = v7 + 1;
LABEL_1167:
          if (i == a3)
          {
            return 117;
          }

          v7 = i;
          result = 117;
          while (1)
          {
            v336 = llhttp__internal__run_lookup_table_22[*v7];
            if (v336 != 5)
            {
              break;
            }

            if (++v7 == a3)
            {
              return result;
            }
          }

          if (llhttp__internal__run_lookup_table_22[*v7] <= 2u)
          {
            if (v336 == 1)
            {
              goto LABEL_1258;
            }

            if (v336 != 2)
            {
LABEL_1334:
              result = 0;
              *(a1 + 24) = 7;
              v87 = "Invalid char in url query";
              goto LABEL_2023;
            }

            goto LABEL_1240;
          }

          if (v336 == 3)
          {
            goto LABEL_1227;
          }

          if (v336 != 4)
          {
            if (v336 != 6)
            {
              goto LABEL_1334;
            }

            i = v7;
LABEL_1177:
            if (i == a3)
            {
              return 116;
            }

            ++i;
            goto LABEL_1179;
          }
        }

LABEL_1190:
        v338 = *(a1 + 8);
        *(a1 + 8) = 0;
        v339 = *(a1 + 88);
        if (v339)
        {
          v340 = *(v339 + 8);
          if (v340)
          {
            v341 = v340(a1, v338, &v7[-v338]);
            if (v341)
            {
              v434 = v341;
              if (v341 == -1)
              {
                *(a1 + 32) = "Span callback error in on_url";
                v434 = 24;
              }

              result = 0;
              *(a1 + 24) = v434;
              *(a1 + 40) = v7;
              *(a1 + 56) = 114;
              return result;
            }
          }
        }

        i = v7;
LABEL_1194:
        if (i == a3)
        {
          return 114;
        }

        v18 = i + 1;
        v342 = *i;
        v343 = v342 == 9 || v342 == 12;
        ++i;
        if (v343)
        {
          goto LABEL_1259;
        }

LABEL_1199:
        if (i == a3)
        {
          return 113;
        }

        v7 = i;
        v344 = *i;
        if (v344 == 12 || v344 == 9)
        {
          goto LABEL_1258;
        }

        v345 = *(a1 + 88);
        if (v345)
        {
          v346 = *(v345 + 96);
          if (v346)
          {
            v347 = v346(a1);
            if (v347)
            {
              if (v347 == 21)
              {
                result = 0;
                *(a1 + 24) = 21;
                *(a1 + 32) = "on_url_complete pause";
                *(a1 + 40) = v7;
                *(a1 + 56) = 112;
                return result;
              }

              goto LABEL_1561;
            }
          }
        }

        i = v7;
LABEL_1206:
        if (i == a3)
        {
          return 112;
        }

        v18 = i;
        result = 112;
        while (1)
        {
          v348 = *v18;
          if (v348 != 32)
          {
            break;
          }

          if (++v18 == a3)
          {
            return result;
          }
        }

        if (v348 == 72)
        {
          i = v18 + 1;
LABEL_1266:
          if (i == a3)
          {
            return 109;
          }

          v18 = i;
          v371 = 0;
          v372 = *a1;
          while (1)
          {
            v373 = *v18;
            v374 = llparse_blob13[v372];
            if (v372 == 3)
            {
              v371 = 0;
              v375 = 5;
            }

            else
            {
              v375 = 0;
            }

            if (v373 != v374)
            {
              v371 = 2;
              v375 = 5;
            }

            if (v375)
            {
              break;
            }

            if (v373 == v374)
            {
              ++v372;
            }

            if (++v18 == a3)
            {
              v371 = 1;
              v18 = a3;
              *a1 = v372;
              goto LABEL_1279;
            }
          }

          *a1 = 0;
LABEL_1279:
          if (v371)
          {
            if (v371 == 1)
            {
              return 109;
            }

            goto LABEL_1417;
          }

          ++v18;
          v376 = *(a1 + 73);
          if (v376 >= 0x23 && v376 != 46)
          {
            result = 0;
            *(a1 + 24) = 8;
            v98 = "Invalid method for HTTP/x.x request";
            goto LABEL_2477;
          }

          goto LABEL_1281;
        }

        if (v348 != 73)
        {
          if (v348 != 82)
          {
            goto LABEL_1417;
          }

          i = v18 + 1;
LABEL_1215:
          if (i == a3)
          {
            return 111;
          }

          v18 = i;
          v349 = 0;
          v350 = *a1;
          while (1)
          {
            v351 = *v18;
            v352 = llparse_blob16[v350];
            if (v350 == 3)
            {
              v349 = 0;
              v353 = 5;
            }

            else
            {
              v353 = 0;
            }

            if (v351 != v352)
            {
              v349 = 2;
              v353 = 5;
            }

            if (v353)
            {
              break;
            }

            if (v351 == v352)
            {
              ++v350;
            }

            if (++v18 == a3)
            {
              v349 = 1;
              v18 = a3;
              *a1 = v350;
              goto LABEL_1260;
            }
          }

          *a1 = 0;
LABEL_1260:
          if (v349)
          {
            if (v349 == 1)
            {
              return 111;
            }

LABEL_1417:
            result = 0;
            *(a1 + 24) = 8;
            v98 = "Expected HTTP/";
            goto LABEL_2477;
          }

          ++v18;
          v370 = *(a1 + 73);
          if (v370 - 35 >= 0xB && (v370 > 6 || ((1 << v370) & 0x4A) == 0))
          {
            result = 0;
            *(a1 + 24) = 8;
            v98 = "Invalid method for RTSP/x.x request";
            goto LABEL_2477;
          }

LABEL_1281:
          i = v18;
          if (v18 == a3)
          {
            return 108;
          }

          goto LABEL_1301;
        }

        i = v18 + 1;
LABEL_1284:
        if (i == a3)
        {
          return 110;
        }

        v18 = i;
        v377 = 0;
        v378 = *a1;
        while (1)
        {
          v379 = *v18;
          v380 = llparse_blob15[v378];
          if (v378 == 2)
          {
            v377 = 0;
            v381 = 5;
          }

          else
          {
            v381 = 0;
          }

          if (v379 != v380)
          {
            v377 = 2;
            v381 = 5;
          }

          if (v381)
          {
            break;
          }

          if (v379 == v380)
          {
            ++v378;
          }

          if (++v18 == a3)
          {
            v377 = 1;
            v18 = a3;
            *a1 = v378;
            goto LABEL_1297;
          }
        }

        *a1 = 0;
LABEL_1297:
        if (v377)
        {
          if (v377 == 1)
          {
            return 110;
          }

          goto LABEL_1417;
        }

        ++v18;
        if (*(a1 + 73) != 33)
        {
          result = 0;
          *(a1 + 24) = 8;
          v98 = "Expected SOURCE method for ICE/x.x request";
          goto LABEL_2477;
        }

        i = v18;
LABEL_1300:
        if (i == a3)
        {
          return 108;
        }

LABEL_1301:
        *(a1 + 8) = i;
        *(a1 + 16) = llhttp__on_version;
LABEL_1302:
        if (i == a3)
        {
          return 107;
        }

        v53 = i;
        v382 = *i - 48;
        if (v382 >= 0xA)
        {
          v419 = *(a1 + 8);
          *(a1 + 8) = 0;
          v420 = *(a1 + 88);
          if (v420)
          {
            v421 = *(v420 + 32);
            if (v421)
            {
              v422 = v421(a1, v419, &v53[-v419]);
              if (v422)
              {
                v423 = v422;
                if (v422 == -1)
                {
                  *(a1 + 32) = "Span callback error in on_version";
                  v423 = 24;
                }

                result = 0;
                *(a1 + 24) = v423;
                *(a1 + 40) = v53;
                *(a1 + 56) = 106;
                return result;
              }
            }
          }

          goto LABEL_1532;
        }

        ++i;
        *(a1 + 74) = v382;
LABEL_1305:
        if (i == a3)
        {
          return 105;
        }

        v55 = i;
        if (*i != 46)
        {
          v414 = *(a1 + 8);
          *(a1 + 8) = 0;
          v415 = *(a1 + 88);
          if (v415)
          {
            v416 = *(v415 + 32);
            if (v416)
            {
              v417 = v416(a1, v414, &v55[-v414]);
              if (v417)
              {
                v418 = v417;
                if (v417 == -1)
                {
                  *(a1 + 32) = "Span callback error in on_version";
                  v418 = 24;
                }

                result = 0;
                *(a1 + 24) = v418;
                *(a1 + 40) = v55;
                *(a1 + 56) = 104;
                return result;
              }
            }
          }

          goto LABEL_1518;
        }

        ++i;
LABEL_1308:
        if (i == a3)
        {
          return 103;
        }

        v56 = i;
        v383 = *i;
        if (v383 > 0x34)
        {
          if (*i <= 0x36u)
          {
            if (v383 == 53)
            {
              v384 = 0;
              v385 = 0;
              v386 = 0;
              v387 = 5;
            }

            else
            {
              if (v383 != 54)
              {
LABEL_1585:
                v437 = *(a1 + 8);
                *(a1 + 8) = 0;
                v438 = *(a1 + 88);
                if (v438)
                {
                  v439 = *(v438 + 32);
                  if (v439)
                  {
                    v440 = v439(a1, v437, &v56[-v437]);
                    if (v440)
                    {
                      v441 = v440;
                      if (v440 == -1)
                      {
                        *(a1 + 32) = "Span callback error in on_version";
                        v441 = 24;
                      }

                      result = 0;
                      *(a1 + 24) = v441;
                      *(a1 + 40) = v56;
                      *(a1 + 56) = 102;
                      return result;
                    }
                  }
                }

                goto LABEL_1597;
              }

              v384 = 0;
              v385 = 0;
              v386 = 0;
              v387 = 6;
            }
          }

          else
          {
            switch(v383)
            {
              case '7':
                v384 = 0;
                v385 = 0;
                v386 = 0;
                v387 = 7;
                break;
              case '8':
                v384 = 0;
                v385 = 0;
                v386 = 0;
                v387 = 8;
                break;
              case '9':
                v384 = 0;
                v385 = 0;
                v387 = 9;
                v386 = 1;
                break;
              default:
                goto LABEL_1585;
            }
          }
        }

        else if (*i <= 0x31u)
        {
          v386 = 0;
          v387 = 0;
          v384 = 1;
          v385 = 1;
          if (v383 != 48)
          {
            if (v383 != 49)
            {
              goto LABEL_1585;
            }

            v384 = 0;
            v386 = 0;
            v387 = 1;
          }
        }

        else
        {
          switch(v383)
          {
            case '2':
              v384 = 0;
              v385 = 0;
              v386 = 0;
              v387 = 2;
              break;
            case '3':
              v384 = 0;
              v385 = 0;
              v386 = 0;
              v387 = 3;
              break;
            case '4':
              v384 = 0;
              v385 = 0;
              v386 = 0;
              v387 = 4;
              break;
            default:
              goto LABEL_1585;
          }
        }

        v62 = i + 1;
        *(a1 + 75) = v387;
        if ((*(a1 + 78) & 0x10) == 0)
        {
          v388 = *(a1 + 74);
          if (*(a1 + 74))
          {
            if (v388 == 1)
            {
              if ((v385 & 1) == 0)
              {
                goto LABEL_1345;
              }
            }

            else if (v388 != 2 || (v384 & 1) == 0)
            {
LABEL_1345:
              v389 = *(a1 + 8);
              *(a1 + 8) = 0;
              v390 = *(a1 + 88);
              if (v390)
              {
                v391 = *(v390 + 32);
                if (v391)
                {
                  v392 = v391(a1, v389, &v62[-v389]);
                  if (v392)
                  {
                    v393 = v392;
                    if (v392 == -1)
                    {
                      *(a1 + 32) = "Span callback error in on_version";
                      v393 = 24;
                    }

                    result = 0;
                    *(a1 + 24) = v393;
                    *(a1 + 40) = v62;
                    *(a1 + 56) = 101;
                    return result;
                  }
                }
              }

              goto LABEL_1535;
            }
          }

          else if ((v386 & 1) == 0)
          {
            goto LABEL_1345;
          }
        }

        v394 = *(a1 + 8);
        *(a1 + 8) = 0;
        v395 = *(a1 + 88);
        if (v395)
        {
          v396 = *(v395 + 32);
          if (v396)
          {
            v397 = v396(a1, v394, &v62[-v394]);
            if (v397)
            {
              if (v397 == -1)
              {
                *(a1 + 32) = "Span callback error in on_version";
                v397 = 24;
              }

              v429 = v397;
              result = 0;
              *(a1 + 24) = v429;
              *(a1 + 40) = v62;
              *(a1 + 56) = 100;
              return result;
            }
          }
        }

        i = v62;
LABEL_1356:
        v398 = *(a1 + 88);
        if (v398)
        {
          v399 = *(v398 + 120);
          if (v399)
          {
            v400 = i;
            v401 = v399(a1);
            if (v401)
            {
              v18 = v400;
              if (v401 == 21)
              {
                result = 0;
                *(a1 + 24) = 21;
                *(a1 + 32) = "on_version_complete pause";
                *(a1 + 40) = v400;
                *(a1 + 56) = 99;
                return result;
              }

              goto LABEL_1549;
            }

            i = v400;
          }
        }

LABEL_1360:
        if (*(a1 + 73) == 34)
        {
LABEL_1387:
          if (i != a3)
          {
            result = llparse__match_sequence_id(a1, i, a3, &llparse_blob14, 10);
            if (!result)
            {
              v18 = i + 1;
              *(a1 + 24) = 23;
              v98 = "Pause on PRI/Upgrade";
              goto LABEL_2477;
            }

            if (result != 1)
            {
              if (result != 2)
              {
LABEL_1600:
                abort();
              }

              result = 0;
              *(a1 + 24) = 9;
              *(a1 + 32) = "Expected HTTP/2 Connection Preface";
              goto LABEL_1857;
            }
          }

          return 95;
        }

LABEL_1361:
        if (i == a3)
        {
          return 98;
        }

        v18 = i;
        v402 = *i;
        if (v402 == 10)
        {
          if ((*(a1 + 78) & 0x100) == 0)
          {
LABEL_1511:
            result = 0;
            v413 = 9;
LABEL_1573:
            *(a1 + 24) = v413;
            v98 = "Expected CRLF after version";
            goto LABEL_2477;
          }
        }

        else
        {
          if (v402 != 13)
          {
            goto LABEL_1511;
          }

          ++i;
        }

LABEL_1366:
        if (i == a3)
        {
          return 97;
        }

        v18 = i;
        v403 = *i;
        if (v403 == 13)
        {
          v18 = i + 1;
          if ((*(a1 + 78) & 0x1000) != 0)
          {
            v7 = i + 1;
            goto LABEL_1372;
          }

LABEL_2472:
          result = 0;
          *(a1 + 24) = 2;
          v98 = "Expected LF after CR";
          goto LABEL_2477;
        }

        if (v403 == 10)
        {
          ++i;
          goto LABEL_2008;
        }

        if ((*(a1 + 78) & 0x40) == 0)
        {
          result = 0;
          v413 = 2;
          goto LABEL_1573;
        }

LABEL_2008:
        while (2)
        {
          if (i == a3)
          {
            return 90;
          }

          v610 = *i;
          switch(v610)
          {
            case 58:
              if ((*(a1 + 78) & 0x400) == 0)
              {
                result = 0;
                *(a1 + 24) = 10;
                *(a1 + 32) = "Invalid header token";
                goto LABEL_1857;
              }

LABEL_2038:
              if (i == a3)
              {
                return 89;
              }

              *(a1 + 8) = i;
              *(a1 + 16) = llhttp__on_header_field;
LABEL_2040:
              if (i == a3)
              {
                return 88;
              }

              v561 = i;
              v620 = *i;
              if ((v620 - 65) < 0x1A)
              {
                v620 |= 0x20u;
              }

              if (v620 <= 115)
              {
                if (v620 == 99)
                {
                  ++i;
LABEL_2087:
                  if (i != a3)
                  {
                    v561 = i;
                    v632 = 0;
                    v633 = *a1;
                    while (1)
                    {
                      v634 = *v561;
                      if ((v634 - 65) < 0x1A)
                      {
                        v634 |= 0x20u;
                      }

                      v635 = llparse_blob0[v633];
                      if (v633 == 1)
                      {
                        v632 = 0;
                        v636 = 5;
                      }

                      else
                      {
                        v636 = 0;
                      }

                      if (v634 != v635)
                      {
                        v632 = 2;
                        v636 = 5;
                      }

                      if (v636)
                      {
                        break;
                      }

                      if (v634 == v635)
                      {
                        ++v633;
                      }

                      if (++v561 == a3)
                      {
                        v632 = 1;
                        v561 = a3;
                        *a1 = v633;
                        goto LABEL_2102;
                      }
                    }

                    *a1 = 0;
LABEL_2102:
                    if (!v632)
                    {
                      i = v561 + 1;
LABEL_2106:
                      if (i == a3)
                      {
                        return 83;
                      }

                      v561 = i;
                      v637 = *i;
                      if ((v637 - 65) < 0x1A)
                      {
                        v637 |= 0x20u;
                      }

                      if (v637 != 116)
                      {
                        if (v637 != 110)
                        {
                          goto LABEL_1859;
                        }

                        ++i;
LABEL_2112:
                        if (i != a3)
                        {
                          v561 = i;
                          v638 = 0;
                          v639 = *a1;
                          while (1)
                          {
                            v640 = *v561;
                            if ((v640 - 65) < 0x1A)
                            {
                              v640 |= 0x20u;
                            }

                            v641 = llparse_blob1[v639];
                            if (v639 == 5)
                            {
                              v638 = 0;
                              v642 = 5;
                            }

                            else
                            {
                              v642 = 0;
                            }

                            if (v640 != v641)
                            {
                              v638 = 2;
                              v642 = 5;
                            }

                            if (v642)
                            {
                              break;
                            }

                            if (v640 == v641)
                            {
                              ++v639;
                            }

                            if (++v561 == a3)
                            {
                              v638 = 1;
                              v561 = a3;
                              *a1 = v639;
                              goto LABEL_2127;
                            }
                          }

                          *a1 = 0;
LABEL_2127:
                          v631 = 1;
                          if (!v638)
                          {
                            goto LABEL_2168;
                          }

                          if (v638 == 2)
                          {
                            goto LABEL_1859;
                          }
                        }

                        return 81;
                      }

                      ++i;
LABEL_2131:
                      if (i != a3)
                      {
                        v561 = i;
                        v643 = 0;
                        v644 = *a1;
                        while (1)
                        {
                          v645 = *v561;
                          if ((v645 - 65) < 0x1A)
                          {
                            v645 |= 0x20u;
                          }

                          v646 = llparse_blob9[v644];
                          if (v644 == 9)
                          {
                            v643 = 0;
                            v647 = 5;
                          }

                          else
                          {
                            v647 = 0;
                          }

                          if (v645 != v646)
                          {
                            v643 = 2;
                            v647 = 5;
                          }

                          if (v647)
                          {
                            break;
                          }

                          if (v645 == v646)
                          {
                            ++v644;
                          }

                          if (++v561 == a3)
                          {
                            v643 = 1;
                            v561 = a3;
                            *a1 = v644;
                            goto LABEL_2146;
                          }
                        }

                        *a1 = 0;
LABEL_2146:
                        v631 = 2;
                        if (!v643)
                        {
                          goto LABEL_2168;
                        }

                        if (v643 == 2)
                        {
                          goto LABEL_1859;
                        }
                      }

                      return 82;
                    }

                    if (v632 == 2)
                    {
                      goto LABEL_1859;
                    }
                  }

                  return 84;
                }

                if (v620 != 112)
                {
                  goto LABEL_1859;
                }

                ++i;
LABEL_2047:
                if (i == a3)
                {
                  return 85;
                }

                v561 = i;
                v621 = 0;
                v622 = *a1;
                while (1)
                {
                  v623 = *v561;
                  if ((v623 - 65) < 0x1A)
                  {
                    v623 |= 0x20u;
                  }

                  v624 = llparse_blob10[v622];
                  if (v622 == 14)
                  {
                    v621 = 0;
                    v625 = 5;
                  }

                  else
                  {
                    v625 = 0;
                  }

                  if (v623 != v624)
                  {
                    v621 = 2;
                    v625 = 5;
                  }

                  if (v625)
                  {
                    break;
                  }

                  if (v623 == v624)
                  {
                    ++v622;
                  }

                  if (++v561 == a3)
                  {
                    v621 = 1;
                    v561 = a3;
                    *a1 = v622;
                    goto LABEL_2080;
                  }
                }

                *a1 = 0;
LABEL_2080:
                v631 = 1;
                if (v621)
                {
                  if (v621 != 2)
                  {
                    return 85;
                  }

LABEL_1859:
                  *(a1 + 76) = 0;
                  i = v561;
LABEL_1860:
                  if (i == a3)
                  {
                    return 79;
                  }

                  v562 = i;
                  result = 79;
                  while (llhttp__internal__run_lookup_table_16[*v562] == 1)
                  {
                    if (++v562 == a3)
                    {
                      return result;
                    }
                  }

                  i = v562;
LABEL_1866:
                  if (i == a3)
                  {
                    return 78;
                  }

                  v7 = i;
                  if (*i == 58)
                  {
                    v563 = *(a1 + 8);
                    *(a1 + 8) = 0;
                    v564 = *(a1 + 88);
                    if (v564)
                    {
                      v565 = *(v564 + 40);
                      if (v565)
                      {
                        v566 = v565(a1, v563, &v7[-v563]);
                        if (v566)
                        {
                          if (v566 == -1)
                          {
                            *(a1 + 32) = "Span callback error in on_header_field";
                            v566 = 24;
                          }

                          v567 = v566;
                          goto LABEL_1909;
                        }
                      }
                    }

LABEL_1892:
                    i = v7 + 1;
LABEL_1893:
                    v574 = *(a1 + 88);
                    if (v574)
                    {
                      goto LABEL_1894;
                    }

LABEL_2176:
                    v659 = *(a1 + 76);
                    if (v659 == 2)
                    {
                      if ((*(a1 + 82) & 0x200) != 0 && (*(a1 + 78) & 2) == 0)
                      {
                        result = 0;
                        *(a1 + 24) = 11;
                        *(a1 + 32) = "Content-Length can't be present with Transfer-Encoding";
                        goto LABEL_1857;
                      }
                    }

                    else if (v659 == 3 && (*(a1 + 82) & 0x20) != 0 && (*(a1 + 78) & 2) == 0)
                    {
                      result = 0;
                      *(a1 + 24) = 15;
                      *(a1 + 32) = "Transfer-Encoding can't be present with Content-Length";
                      goto LABEL_1857;
                    }

LABEL_2334:
                    if (i == a3)
                    {
                      return 74;
                    }

                    v18 = i;
                    result = 74;
                    while (1)
                    {
                      v697 = *v18;
                      if (v697 > 0xC)
                      {
                        if (v697 != 32)
                        {
                          if (v697 != 13)
                          {
                            goto LABEL_2372;
                          }

                          i = v18 + 1;
LABEL_2349:
                          v18 = i;
                          while (1)
                          {
                            if (v18 == a3)
                            {
                              return 48;
                            }

                            v700 = *v18;
                            if (v700 != 13)
                            {
                              break;
                            }

                            ++v18;
                            if ((*(a1 + 78) & 0x1000) == 0)
                            {
                              goto LABEL_2472;
                            }
                          }

                          if (v700 == 10)
                          {
                            i = v18 + 1;
                            goto LABEL_2327;
                          }

                          if ((*(a1 + 78) & 1) == 0)
                          {
                            goto LABEL_2472;
                          }

LABEL_2330:
                          v696 = *v18;
                          if (v696 != 9 && v696 != 32)
                          {
                            v698 = *(a1 + 76);
                            if (v698 > 6)
                            {
                              if (v698 == 7)
                              {
                                v699 = 4;
LABEL_2361:
                                *(a1 + 82) |= v699;
                                *(a1 + 76) = 1;
                              }

                              else if (v698 == 8)
                              {
                                *(a1 + 82) |= 8u;
                              }
                            }

                            else
                            {
                              v699 = 1;
                              switch(v698)
                              {
                                case 5u:
                                  goto LABEL_2361;
                                case 6u:
                                  v699 = 2;
                                  goto LABEL_2361;
                                case 2u:
                                  result = 0;
                                  *(a1 + 24) = 11;
                                  v98 = "Empty Content-Length";
                                  goto LABEL_2477;
                              }
                            }

                            i = v18;
LABEL_2318:
                            if (i == a3)
                            {
                              return 46;
                            }

                            *(a1 + 8) = 0;
                            *(a1 + 16) = llhttp__on_header_value;
                            v691 = *(a1 + 88);
                            if (v691)
                            {
                              v692 = *(v691 + 48);
                              if (v692)
                              {
                                v693 = i;
                                v694 = v692(a1);
                                if (v694)
                                {
                                  if (v694 == -1)
                                  {
                                    *(a1 + 32) = "Span callback error in on_header_value";
                                    v694 = 24;
                                  }

                                  v695 = v694;
                                  result = 0;
                                  *(a1 + 24) = v695;
                                  *(a1 + 40) = v693;
                                  *(a1 + 56) = 45;
                                  return result;
                                }

                                i = v693;
                              }
                            }

                            goto LABEL_2309;
                          }

                          ++v18;
                          if ((*(a1 + 78) & 1) == 0)
                          {
                            goto LABEL_2364;
                          }

                          i = v18;
                          goto LABEL_2334;
                        }
                      }

                      else if (v697 != 9)
                      {
                        if (v697 == 10)
                        {
                          ++v18;
                          if ((*(a1 + 78) & 0x100) != 0)
                          {
                            i = v18;
LABEL_2327:
                            v18 = i;
                            if (i == a3)
                            {
                              return 47;
                            }

                            goto LABEL_2330;
                          }

LABEL_2364:
                          result = 0;
                          *(a1 + 24) = 10;
                          v98 = "Invalid header value char";
                          goto LABEL_2477;
                        }

LABEL_2372:
                        i = v18;
LABEL_2373:
                        if (i == a3)
                        {
                          return 73;
                        }

                        *(a1 + 8) = i;
                        *(a1 + 16) = llhttp__on_header_value;
                        v702 = *(a1 + 76);
                        if (v702 > 2)
                        {
                          if (v702 == 3)
                          {
                            v723 = *(a1 + 82);
                            if ((v723 & 8) != 0 && *(a1 + 72) == 1 && (*(a1 + 78) & 8) == 0)
                            {
                              v729 = i;
                              *(a1 + 8) = 0;
                              v730 = *(a1 + 88);
                              if (v730)
                              {
                                v731 = *(v730 + 48);
                                if (v731)
                                {
                                  v732 = v731(a1, i, 0);
                                  if (v732)
                                  {
                                    v733 = v732;
                                    if (v732 == -1)
                                    {
                                      *(a1 + 32) = "Span callback error in on_header_value";
                                      v733 = 24;
                                    }

                                    result = 0;
                                    *(a1 + 24) = v733;
                                    *(a1 + 40) = v729 + 1;
                                    *(a1 + 56) = 66;
                                    return result;
                                  }
                                }
                              }

                              i = v729 + 1;
                              goto LABEL_2;
                            }

                            *(a1 + 82) = v723 & 0xFDF7 | 0x200;
                            while (1)
                            {
LABEL_2425:
                              if (i == a3)
                              {
                                return 72;
                              }

                              v724 = *a1;
                              v725 = &i[6 - *a1];
                              v726 = i;
                              while (1)
                              {
                                if ((*v726 | 0x20) != llparse_blob5[v724])
                                {
                                  *a1 = 0;
                                  i = v726;
                                  goto LABEL_2432;
                                }

                                if (v724 == 6)
                                {
                                  break;
                                }

                                ++v726;
                                ++v724;
                                if (v726 == a3)
                                {
                                  *a1 = *a1 + a3 - i;
                                  return 72;
                                }
                              }

                              *a1 = 0;
                              i = v725 + 1;
LABEL_1911:
                              if (i == a3)
                              {
                                return 71;
                              }

                              v584 = i;
                              result = 71;
                              while (1)
                              {
                                v585 = *v584;
                                if (v585 != 32)
                                {
                                  break;
                                }

                                if (++v584 == a3)
                                {
                                  return result;
                                }
                              }

                              if (v585 == 10 || v585 == 13)
                              {
                                *(a1 + 76) = 8;
                                i = v584;
                                goto LABEL_2502;
                              }

                              if (v585 == 44)
                              {
                                if (*(a1 + 72) != 1 || (*(a1 + 78) & 8) != 0)
                                {
                                  i = v584;
                                  continue;
                                }

                                v587 = *(a1 + 8);
                                *(a1 + 8) = 0;
                                v588 = *(a1 + 88);
                                if (v588)
                                {
                                  v589 = *(v588 + 48);
                                  if (v589)
                                  {
                                    v590 = v589(a1, v587, &v584[-v587]);
                                    if (v590)
                                    {
                                      v591 = v590;
                                      if (v590 == -1)
                                      {
                                        *(a1 + 32) = "Span callback error in on_header_value";
                                        v591 = 24;
                                      }

                                      result = 0;
                                      *(a1 + 24) = v591;
                                      *(a1 + 40) = v584 + 1;
                                      *(a1 + 56) = 67;
                                      return result;
                                    }
                                  }
                                }

                                i = v584 + 1;
LABEL_2:
                                result = 0;
                                *(a1 + 24) = 15;
                                goto LABEL_1856;
                              }

                              i = v584;
LABEL_2432:
                              if (i == a3)
                              {
                                return 70;
                              }

                              v727 = i;
                              result = 70;
                              while (1)
                              {
                                v728 = llhttp__internal__run_lookup_table_15[*v727];
                                if (v728 != 1)
                                {
                                  break;
                                }

                                if (++v727 == a3)
                                {
                                  return result;
                                }
                              }

                              if (v728 != 2)
                              {
                                break;
                              }

                              i = v727 + 1;
LABEL_1935:
                              if (i == a3)
                              {
                                return 68;
                              }

                              v592 = i;
                              result = 68;
                              while (1)
                              {
                                v593 = *v592;
                                if (v593 != 32 && v593 != 9)
                                {
                                  break;
                                }

                                if (++v592 == a3)
                                {
                                  return result;
                                }
                              }

                              i = v592;
                            }

                            i = v727;
                          }

                          else
                          {
                            if (v702 != 4)
                            {
                              goto LABEL_2441;
                            }

                            *(a1 + 82) |= 0x10u;
                          }

                          *(a1 + 76) = 0;
                        }

                        else
                        {
                          if (v702 == 1)
                          {
LABEL_2537:
                            if (i == a3)
                            {
                              return 61;
                            }

                            v595 = i;
                            result = 61;
                            while (1)
                            {
                              v767 = *v595;
                              if ((v767 - 65) < 0x1A)
                              {
                                v767 |= 0x20u;
                              }

                              if (v767 <= 31)
                              {
                                if (v767 != 9)
                                {
                                  goto LABEL_1961;
                                }
                              }

                              else
                              {
                                if (v767 > 98)
                                {
                                  switch(v767)
                                  {
                                    case 'c':
                                      i = v595 + 1;
LABEL_2589:
                                      if (i != a3)
                                      {
                                        v768 = i;
                                        v780 = 0;
                                        v781 = *a1;
                                        while (1)
                                        {
                                          v782 = *v768;
                                          if ((v782 - 65) < 0x1A)
                                          {
                                            v782 |= 0x20u;
                                          }

                                          v783 = llparse_blob2[v781];
                                          if (v781 == 3)
                                          {
                                            v780 = 0;
                                            v784 = 5;
                                          }

                                          else
                                          {
                                            v784 = 0;
                                          }

                                          if (v782 != v783)
                                          {
                                            v780 = 2;
                                            v784 = 5;
                                          }

                                          if (v784)
                                          {
                                            break;
                                          }

                                          if (v782 == v783)
                                          {
                                            ++v781;
                                          }

                                          if (++v768 == a3)
                                          {
                                            v780 = 1;
                                            v768 = a3;
                                            *a1 = v781;
                                            goto LABEL_2604;
                                          }
                                        }

                                        *a1 = 0;
LABEL_2604:
                                        v774 = 6;
                                        if (!v780)
                                        {
                                          goto LABEL_1945;
                                        }

                                        i = v768;
                                        if (v780 == 2)
                                        {
                                          goto LABEL_2606;
                                        }
                                      }

                                      return 58;
                                    case 'k':
                                      i = v595 + 1;
LABEL_2570:
                                      if (i != a3)
                                      {
                                        v768 = i;
                                        v775 = 0;
                                        v776 = *a1;
                                        while (1)
                                        {
                                          v777 = *v768;
                                          if ((v777 - 65) < 0x1A)
                                          {
                                            v777 |= 0x20u;
                                          }

                                          v778 = llparse_blob3[v776];
                                          if (v776 == 8)
                                          {
                                            v775 = 0;
                                            v779 = 5;
                                          }

                                          else
                                          {
                                            v779 = 0;
                                          }

                                          if (v777 != v778)
                                          {
                                            v775 = 2;
                                            v779 = 5;
                                          }

                                          if (v779)
                                          {
                                            break;
                                          }

                                          if (v777 == v778)
                                          {
                                            ++v776;
                                          }

                                          if (++v768 == a3)
                                          {
                                            v775 = 1;
                                            v768 = a3;
                                            *a1 = v776;
                                            goto LABEL_2585;
                                          }
                                        }

                                        *a1 = 0;
LABEL_2585:
                                        v774 = 5;
                                        if (!v775)
                                        {
                                          goto LABEL_1945;
                                        }

                                        i = v768;
                                        if (v775 == 2)
                                        {
                                          goto LABEL_2606;
                                        }
                                      }

                                      return 59;
                                    case 'u':
                                      i = v595 + 1;
LABEL_2551:
                                      if (i == a3)
                                      {
                                        return 60;
                                      }

                                      v768 = i;
                                      v769 = 0;
                                      v770 = *a1;
                                      while (1)
                                      {
                                        v771 = *v768;
                                        if ((v771 - 65) < 0x1A)
                                        {
                                          v771 |= 0x20u;
                                        }

                                        v772 = llparse_blob4[v770];
                                        if (v770 == 5)
                                        {
                                          v769 = 0;
                                          v773 = 5;
                                        }

                                        else
                                        {
                                          v773 = 0;
                                        }

                                        if (v771 != v772)
                                        {
                                          v769 = 2;
                                          v773 = 5;
                                        }

                                        if (v773)
                                        {
                                          break;
                                        }

                                        if (v771 == v772)
                                        {
                                          ++v770;
                                        }

                                        if (++v768 == a3)
                                        {
                                          v769 = 1;
                                          v768 = a3;
                                          *a1 = v770;
                                          goto LABEL_2566;
                                        }
                                      }

                                      *a1 = 0;
LABEL_2566:
                                      v774 = 7;
                                      if (v769)
                                      {
                                        i = v768;
                                        if (v769 != 2)
                                        {
                                          return 60;
                                        }

LABEL_2606:
                                        if (i == a3)
                                        {
                                          return 56;
                                        }

                                        v595 = i;
                                        result = 56;
                                        while (1)
                                        {
                                          v766 = llhttp__internal__run_lookup_table_15[*v595];
                                          if (v766 != 1)
                                          {
                                            break;
                                          }

                                          if (++v595 == a3)
                                          {
                                            return result;
                                          }
                                        }

                                        if (v766 == 2)
                                        {
                                          i = v595 + 1;
                                          goto LABEL_2537;
                                        }

LABEL_2501:
                                        i = v595;
LABEL_2502:
                                        if (i == a3)
                                        {
                                          return 55;
                                        }

                                        v748 = *i;
                                        if (v748 == 10)
                                        {
                                          v754 = *(a1 + 8);
                                          *(a1 + 8) = 0;
                                          v755 = *(a1 + 88);
                                          if (v755)
                                          {
                                            v756 = *(v755 + 48);
                                            if (v756)
                                            {
                                              v735 = i;
                                              v757 = v756(a1, v754, &i[-v754]);
                                              if (v757)
                                              {
                                                if (v757 == -1)
                                                {
                                                  *(a1 + 32) = "Span callback error in on_header_value";
                                                  v757 = 24;
                                                }

                                                v765 = v757;
                                                result = 0;
                                                *(a1 + 24) = v765;
                                                *(a1 + 40) = v735;
                                                *(a1 + 56) = 51;
                                                return result;
                                              }

                                              goto LABEL_2512;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          if (v748 == 13)
                                          {
                                            v749 = *(a1 + 8);
                                            *(a1 + 8) = 0;
                                            v750 = *(a1 + 88);
                                            if (v750)
                                            {
                                              v751 = *(v750 + 48);
                                              if (v751)
                                              {
                                                v752 = i;
                                                v753 = v751(a1, v749, &i[-v749]);
                                                i = v752;
                                                if (v753)
                                                {
                                                  if (v753 == -1)
                                                  {
                                                    *(a1 + 32) = "Span callback error in on_header_value";
                                                    v753 = 24;
                                                  }

                                                  v764 = v753;
                                                  result = 0;
                                                  *(a1 + 24) = v764;
                                                  v747 = v752 + 1;
                                                  goto LABEL_2526;
                                                }
                                              }
                                            }

                                            v18 = i + 1;
                                            while (1)
                                            {
LABEL_2469:
                                              if (v18 == a3)
                                              {
                                                return 50;
                                              }

                                              v734 = *v18;
                                              if (v734 != 13)
                                              {
                                                break;
                                              }

                                              ++v18;
                                              if ((*(a1 + 78) & 0x1000) == 0)
                                              {
                                                goto LABEL_2472;
                                              }
                                            }

                                            if (v734 != 10)
                                            {
                                              result = 0;
                                              *(a1 + 24) = 3;
                                              v98 = "Missing expected LF after header value";
                                              goto LABEL_2477;
                                            }

                                            i = v18 + 1;
LABEL_2366:
                                            if (i == a3)
                                            {
                                              return 49;
                                            }

                                            v18 = i;
                                            v701 = *i;
                                            if (v701 == 9 || v701 == 32)
                                            {
                                              if (*(a1 + 78))
                                              {
                                                if (*(a1 + 76) == 8)
                                                {
                                                  *(a1 + 76) = 0;
                                                }

                                                goto LABEL_2372;
                                              }

                                              result = 0;
                                              *(a1 + 24) = 10;
                                              v98 = "Unexpected whitespace after header value";
LABEL_2477:
                                              *(a1 + 32) = v98;
                                              *(a1 + 40) = v18;
                                              goto LABEL_2478;
                                            }

                                            v708 = *(a1 + 76);
                                            if (v708 > 6)
                                            {
                                              if (v708 == 7)
                                              {
                                                v709 = 4;
LABEL_2452:
                                                *(a1 + 82) |= v709;
                                                *(a1 + 76) = 1;
                                              }

                                              else if (v708 == 8)
                                              {
                                                *(a1 + 82) |= 8u;
                                              }
                                            }

                                            else
                                            {
                                              v709 = 1;
                                              if (v708 == 5)
                                              {
                                                goto LABEL_2452;
                                              }

                                              if (v708 == 6)
                                              {
                                                v709 = 2;
                                                goto LABEL_2452;
                                              }
                                            }

LABEL_2309:
                                            v687 = 0;
                                            v688 = *(a1 + 88);
                                            if (v688)
                                            {
                                              v687 = 0;
                                              v689 = *(v688 + 136);
                                              if (v689)
                                              {
                                                v690 = i;
                                                v687 = v689(a1);
                                                i = v690;
                                              }
                                            }

                                            if (v687)
                                            {
                                              if (v687 == 21)
                                              {
                                                result = 0;
                                                *(a1 + 24) = 21;
                                                *(a1 + 32) = "on_header_value_complete pause";
                                                *(a1 + 40) = i;
                                                *(a1 + 56) = 90;
                                                return result;
                                              }

                                              result = 0;
                                              *(a1 + 24) = 29;
                                              goto LABEL_1857;
                                            }

                                            goto LABEL_2008;
                                          }

                                          if ((*(a1 + 78) & 1) == 0)
                                          {
                                            v758 = *(a1 + 8);
                                            *(a1 + 8) = 0;
                                            v759 = *(a1 + 88);
                                            if (v759)
                                            {
                                              v760 = *(v759 + 48);
                                              if (v760)
                                              {
                                                v761 = i;
                                                v762 = v760(a1, v758, &i[-v758]);
                                                if (v762)
                                                {
                                                  v763 = v762;
                                                  if (v762 == -1)
                                                  {
                                                    *(a1 + 32) = "Span callback error in on_header_value";
                                                    v763 = 24;
                                                  }

                                                  result = 0;
                                                  *(a1 + 24) = v763;
                                                  *(a1 + 40) = v761;
                                                  *(a1 + 56) = 54;
                                                  return result;
                                                }

                                                i = v761;
                                              }
                                            }

LABEL_2531:
                                            result = 0;
                                            *(a1 + 24) = 10;
                                            v6 = "Invalid header value char";
                                            goto LABEL_1856;
                                          }

LABEL_2514:
                                          if (i == a3)
                                          {
                                            return 53;
                                          }

                                          v735 = i;
                                          result = 53;
                                          while (1)
                                          {
                                            v736 = *v735;
                                            if (v736 == 10)
                                            {
                                              break;
                                            }

                                            if (v736 == 13)
                                            {
                                              v737 = *(a1 + 8);
                                              *(a1 + 8) = 0;
                                              v738 = *(a1 + 88);
                                              if (!v738 || (v739 = *(v738 + 48)) == 0 || (v740 = v739(a1, v737, &v735[-v737])) == 0)
                                              {
                                                i = v735 + 1;
                                                goto LABEL_2491;
                                              }

                                              if (v740 == -1)
                                              {
                                                *(a1 + 32) = "Span callback error in on_header_value";
                                                v740 = 24;
                                              }

                                              v746 = v740;
                                              result = 0;
                                              *(a1 + 24) = v746;
                                              v747 = v735 + 1;
LABEL_2526:
                                              *(a1 + 40) = v747;
                                              *(a1 + 56) = 50;
                                              return result;
                                            }

                                            if (++v735 == a3)
                                            {
                                              return result;
                                            }
                                          }

                                          v741 = *(a1 + 8);
                                          *(a1 + 8) = 0;
                                          v742 = *(a1 + 88);
                                          if (v742)
                                          {
                                            v743 = *(v742 + 48);
                                            if (v743)
                                            {
                                              v744 = v743(a1, v741, &v735[-v741]);
                                              if (v744)
                                              {
                                                if (v744 == -1)
                                                {
                                                  *(a1 + 32) = "Span callback error in on_header_value";
                                                  v744 = 24;
                                                }

                                                v745 = v744;
                                                result = 0;
                                                *(a1 + 24) = v745;
                                                *(a1 + 40) = v735;
                                                *(a1 + 56) = 52;
                                                return result;
                                              }
                                            }
                                          }

LABEL_2512:
                                          i = v735;
                                        }

LABEL_2480:
                                        if ((*(a1 + 78) & 0x100) != 0)
                                        {
LABEL_2491:
                                          v18 = i;
                                          goto LABEL_2469;
                                        }

                                        result = 0;
                                        *(a1 + 24) = 25;
                                        *(a1 + 32) = "Missing expected CR after header value";
                                        goto LABEL_1857;
                                      }

LABEL_1945:
                                      i = v768 + 1;
                                      *(a1 + 76) = v774;
LABEL_1946:
                                      if (i == a3)
                                      {
                                        return 57;
                                      }

                                      v595 = i;
                                      result = 57;
                                      while (1)
                                      {
                                        v596 = *v595;
                                        if (v596 != 32)
                                        {
                                          break;
                                        }

                                        if (++v595 == a3)
                                        {
                                          return result;
                                        }
                                      }

                                      if (v596 == 10 || v596 == 13)
                                      {
                                        goto LABEL_2501;
                                      }

                                      if (v596 == 44)
                                      {
                                        v598 = v595 + 1;
                                        v599 = *(a1 + 76);
                                        if (v599 > 6)
                                        {
                                          if (v599 == 7)
                                          {
                                            v600 = 4;
                                            goto LABEL_1967;
                                          }

                                          if (v599 == 8)
                                          {
                                            *(a1 + 82) |= 8u;
                                            i = v598;
                                            goto LABEL_2537;
                                          }
                                        }

                                        else
                                        {
                                          v600 = 1;
                                          if (v599 == 5)
                                          {
                                            goto LABEL_1967;
                                          }

                                          if (v599 == 6)
                                          {
                                            v600 = 2;
LABEL_1967:
                                            *(a1 + 82) |= v600;
                                            *(a1 + 76) = 1;
                                            i = v598;
                                            goto LABEL_2537;
                                          }
                                        }

                                        i = v598;
                                        goto LABEL_2537;
                                      }

                                      *(a1 + 76) = 0;
                                      break;
                                  }

LABEL_1961:
                                  i = v595;
                                  goto LABEL_2606;
                                }

                                if (v767 != 32)
                                {
                                  goto LABEL_1961;
                                }
                              }

                              if (++v595 == a3)
                              {
                                return result;
                              }
                            }
                          }

                          if (v702 == 2)
                          {
                            if ((*(a1 + 82) & 0x20) != 0)
                            {
                              if ((*(a1 + 78) & 0x800) == 0)
                              {
                                result = 0;
                                *(a1 + 24) = 4;
                                *(a1 + 32) = "Duplicate Content-Length";
                                goto LABEL_1857;
                              }

                              *(a1 + 64) = 0;
                            }

LABEL_2380:
                            if (i == a3)
                            {
                              return 65;
                            }

                            v703 = i;
                            result = 65;
                            while (1)
                            {
                              v704 = *v703;
                              if ((v704 - 48) >= 0xAu)
                              {
                                break;
                              }

                              v705 = v703 + 1;
                              v706 = *(a1 + 64);
                              if (v706 > 0x1999999999999999)
                              {
                                goto LABEL_2413;
                              }

                              v707 = 10 * v706;
                              *(a1 + 64) = v707;
                              if (v707 > 47 - v704)
                              {
                                v705 = v703 + 1;
LABEL_2413:
                                v718 = *(a1 + 8);
                                *(a1 + 8) = 0;
                                v719 = *(a1 + 88);
                                if (v719)
                                {
                                  v720 = *(v719 + 48);
                                  if (v720)
                                  {
                                    v721 = v720(a1, v718, &v705[-v718]);
                                    if (v721)
                                    {
                                      v722 = v721;
                                      if (v721 == -1)
                                      {
                                        *(a1 + 32) = "Span callback error in on_header_value";
                                        v722 = 24;
                                      }

                                      result = 0;
                                      *(a1 + 24) = v722;
                                      *(a1 + 40) = v705;
                                      *(a1 + 56) = 62;
                                      return result;
                                    }
                                  }
                                }

                                i = v705;
LABEL_2420:
                                result = 0;
                                *(a1 + 24) = 11;
                                v6 = "Content-Length overflow";
LABEL_1856:
                                *(a1 + 32) = v6;
LABEL_1857:
                                *(a1 + 40) = i;
LABEL_2478:
                                *(a1 + 56) = 0;
                                return result;
                              }

                              *(a1 + 64) = v707 + (v704 - 48);
                              ++v703;
                              if (v705 == a3)
                              {
                                return result;
                              }
                            }

                            i = v703;
LABEL_2395:
                            if (i == a3)
                            {
                              return 64;
                            }

                            v710 = i;
                            result = 64;
                            while (1)
                            {
                              v711 = *v710;
                              if (v711 != 32)
                              {
                                break;
                              }

                              if (++v710 == a3)
                              {
                                return result;
                              }
                            }

                            if (v711 != 10 && v711 != 13)
                            {
                              v713 = *(a1 + 8);
                              *(a1 + 8) = 0;
                              v714 = *(a1 + 88);
                              if (v714)
                              {
                                v715 = *(v714 + 48);
                                if (v715)
                                {
                                  v716 = v715(a1, v713, &v710[-v713]);
                                  if (v716)
                                  {
                                    v717 = v716;
                                    if (v716 == -1)
                                    {
                                      *(a1 + 32) = "Span callback error in on_header_value";
                                      v717 = 24;
                                    }

                                    result = 0;
                                    *(a1 + 24) = v717;
                                    *(a1 + 40) = v710;
                                    *(a1 + 56) = 63;
                                    return result;
                                  }
                                }
                              }

                              i = v710;
LABEL_2447:
                              result = 0;
                              *(a1 + 24) = 11;
                              v6 = "Invalid character in Content-Length";
                              goto LABEL_1856;
                            }

                            *(a1 + 82) |= 0x20u;
                            i = v710;
                            goto LABEL_2502;
                          }
                        }

LABEL_2441:
                        if (i == a3)
                        {
                          return 69;
                        }

                        v595 = i;
                        result = 69;
                        while (llhttp__internal__run_lookup_table_14[*v595] == 1)
                        {
                          if (++v595 == a3)
                          {
                            return result;
                          }
                        }

                        goto LABEL_2501;
                      }

                      if (++v18 == a3)
                      {
                        return result;
                      }
                    }
                  }

                  if ((*(a1 + 78) & 0x400) == 0)
                  {
                    result = 0;
                    *(a1 + 24) = 10;
                    v87 = "Invalid header token";
                    goto LABEL_2023;
                  }

LABEL_1875:
                  if (i == a3)
                  {
                    return 77;
                  }

                  v7 = i;
                  result = 77;
                  while (1)
                  {
                    v568 = *v7;
                    if (v568 == 10 || v568 == 13)
                    {
                      break;
                    }

                    if (v568 == 58)
                    {
                      v575 = *(a1 + 8);
                      *(a1 + 8) = 0;
                      v576 = *(a1 + 88);
                      if (!v576)
                      {
                        goto LABEL_1892;
                      }

                      v577 = *(v576 + 40);
                      if (!v577)
                      {
                        goto LABEL_1892;
                      }

                      v578 = v577(a1, v575, &v7[-v575]);
                      if (!v578)
                      {
                        goto LABEL_1892;
                      }

                      v567 = v578;
                      if (v578 == -1)
                      {
                        *(a1 + 32) = "Span callback error in on_header_field";
                        v567 = 24;
                      }

LABEL_1909:
                      result = 0;
                      *(a1 + 24) = v567;
                      v583 = v7 + 1;
LABEL_2260:
                      *(a1 + 40) = v583;
LABEL_2261:
                      *(a1 + 56) = 76;
                      return result;
                    }

                    if (++v7 == a3)
                    {
                      return result;
                    }
                  }

                  v570 = *(a1 + 8);
                  *(a1 + 8) = 0;
                  v571 = *(a1 + 88);
                  if (v571)
                  {
                    v572 = *(v571 + 40);
                    if (v572)
                    {
                      v573 = v572(a1, v570, &v7[-v570]);
                      if (v573)
                      {
                        if (v573 == -1)
                        {
                          *(a1 + 32) = "Span callback error in on_header_field";
                          v573 = 24;
                        }

                        v582 = v573;
                        result = 0;
                        *(a1 + 24) = v582;
                        *(a1 + 40) = v7;
                        goto LABEL_2261;
                      }
                    }
                  }

                  i = v7;
                  v574 = *(a1 + 88);
                  if (!v574)
                  {
                    goto LABEL_2176;
                  }

LABEL_1894:
                  v579 = *(v574 + 128);
                  if (v579)
                  {
                    v580 = i;
                    v581 = v579(a1);
                    if (v581)
                    {
                      v9 = v581 == 21;
                      v18 = v580;
                      result = 0;
                      if (v9)
                      {
                        *(a1 + 24) = 21;
                        *(a1 + 32) = "on_header_field_complete pause";
                        *(a1 + 40) = v580;
                        *(a1 + 56) = 75;
                        return result;
                      }

                      *(a1 + 24) = 28;
                      goto LABEL_2477;
                    }

                    i = v580;
                  }

                  goto LABEL_2176;
                }

LABEL_2168:
                i = v561 + 1;
                *(a1 + 76) = v631;
LABEL_2169:
                if (i == a3)
                {
                  return 80;
                }

                while (1)
                {
                  v653 = *i;
                  if (v653 != 32)
                  {
                    break;
                  }

                  if ((*(a1 + 78) & 1) == 0)
                  {
                    v678 = *(a1 + 8);
                    *(a1 + 8) = 0;
                    v679 = *(a1 + 88);
                    if (v679)
                    {
                      v680 = *(v679 + 40);
                      if (v680)
                      {
                        v681 = i;
                        v682 = v680(a1, v678, &i[-v678]);
                        i = v681;
                        if (v682)
                        {
                          v683 = v682;
                          if (v682 == -1)
                          {
                            *(a1 + 32) = "Span callback error in on_header_field";
                            v683 = 24;
                          }

                          result = 0;
                          *(a1 + 24) = v683;
                          *(a1 + 40) = v681 + 1;
                          *(a1 + 56) = 42;
                          return result;
                        }
                      }
                    }

                    ++i;
                    goto LABEL_2265;
                  }

LABEL_2185:
                  if (i == a3)
                  {
                    return 44;
                  }

                  v660 = i;
                  result = 44;
                  while (*v660 == 32)
                  {
                    if (++v660 == a3)
                    {
                      return result;
                    }
                  }

                  i = v660;
                  if (v660 == a3)
                  {
                    return 80;
                  }
                }

                if (v653 != 58)
                {
                  v561 = i;
                  goto LABEL_1859;
                }

                v654 = *(a1 + 8);
                *(a1 + 8) = 0;
                v655 = *(a1 + 88);
                if (v655)
                {
                  v656 = *(v655 + 40);
                  if (v656)
                  {
                    v657 = i;
                    v658 = v656(a1, v654, &i[-v654]);
                    i = v657;
                    if (v658)
                    {
                      if (v658 == -1)
                      {
                        *(a1 + 32) = "Span callback error in on_header_field";
                        v658 = 24;
                      }

                      v684 = v658;
                      result = 0;
                      *(a1 + 24) = v684;
                      v583 = v657 + 1;
                      goto LABEL_2260;
                    }
                  }
                }

                ++i;
                v574 = *(a1 + 88);
                if (!v574)
                {
                  goto LABEL_2176;
                }

                goto LABEL_1894;
              }

              if (v620 != 116)
              {
                if (v620 != 117)
                {
                  goto LABEL_1859;
                }

                ++i;
LABEL_2065:
                if (i != a3)
                {
                  v561 = i;
                  v626 = 0;
                  v627 = *a1;
                  while (1)
                  {
                    v628 = *v561;
                    if ((v628 - 65) < 0x1A)
                    {
                      v628 |= 0x20u;
                    }

                    v629 = llparse_blob12[v627];
                    if (v627 == 5)
                    {
                      v626 = 0;
                      v630 = 5;
                    }

                    else
                    {
                      v630 = 0;
                    }

                    if (v628 != v629)
                    {
                      v626 = 2;
                      v630 = 5;
                    }

                    if (v630)
                    {
                      break;
                    }

                    if (v628 == v629)
                    {
                      ++v627;
                    }

                    if (++v561 == a3)
                    {
                      v626 = 1;
                      v561 = a3;
                      *a1 = v627;
                      goto LABEL_2083;
                    }
                  }

                  *a1 = 0;
LABEL_2083:
                  v631 = 4;
                  if (!v626)
                  {
                    goto LABEL_2168;
                  }

                  if (v626 == 2)
                  {
                    goto LABEL_1859;
                  }
                }

                return 87;
              }

              ++i;
LABEL_2150:
              if (i != a3)
              {
                v561 = i;
                v648 = 0;
                v649 = *a1;
                while (1)
                {
                  v650 = *v561;
                  if ((v650 - 65) < 0x1A)
                  {
                    v650 |= 0x20u;
                  }

                  v651 = llparse_blob11[v649];
                  if (v649 == 15)
                  {
                    v648 = 0;
                    v652 = 5;
                  }

                  else
                  {
                    v652 = 0;
                  }

                  if (v650 != v651)
                  {
                    v648 = 2;
                    v652 = 5;
                  }

                  if (v652)
                  {
                    break;
                  }

                  if (v650 == v651)
                  {
                    ++v649;
                  }

                  if (++v561 == a3)
                  {
                    v648 = 1;
                    v561 = a3;
                    *a1 = v649;
                    goto LABEL_2165;
                  }
                }

                *a1 = 0;
LABEL_2165:
                v631 = 3;
                if (!v648)
                {
                  goto LABEL_2168;
                }

                if (v648 == 2)
                {
                  goto LABEL_1859;
                }
              }

              return 86;
            case 13:
              ++i;
LABEL_2018:
              v7 = i;
              while (1)
              {
                if (v7 == a3)
                {
                  return 43;
                }

                v615 = *v7;
                if (v615 != 13)
                {
                  break;
                }

                ++v7;
                if ((*(a1 + 78) & 0x1000) == 0)
                {
                  goto LABEL_2022;
                }
              }

              if (v615 == 10)
              {
                ++v7;
              }

              else if ((*(a1 + 78) & 0x40) == 0)
              {
LABEL_2022:
                result = 0;
                *(a1 + 24) = 2;
                v87 = "Expected LF after headers";
                goto LABEL_2023;
              }

              v612 = (a1 + 82);
              v611 = *(a1 + 82);
              if ((v611 & 0x80) != 0)
              {
                v618 = *(a1 + 88);
                if (!v618)
                {
                  goto LABEL_2218;
                }

                v614 = *(v618 + 168);
                if (!v614)
                {
                  goto LABEL_2218;
                }

                goto LABEL_2034;
              }

              break;
            case 10:
              v7 = i + 1;
              if ((*(a1 + 78) & 0x100) == 0)
              {
                ++i;
LABEL_2265:
                result = 0;
                *(a1 + 24) = 10;
                v6 = "Invalid header field char";
                goto LABEL_1856;
              }

              v612 = (a1 + 82);
              v611 = *(a1 + 82);
              if ((v611 & 0x80) != 0)
              {
                v613 = *(a1 + 88);
                if (!v613 || (v614 = *(v613 + 168)) == 0)
                {
LABEL_2218:
                  i = v7;
LABEL_2001:
                  v606 = *(a1 + 88);
                  if (v606)
                  {
                    v607 = *(v606 + 88);
                    if (v607)
                    {
                      v608 = i;
                      v609 = v607(a1);
                      if (v609)
                      {
                        v9 = v609 == 21;
                        v18 = v608;
                        result = 0;
                        if (v9)
                        {
                          *(a1 + 24) = 21;
                          *(a1 + 32) = "on_message_complete pause";
                          *(a1 + 40) = v608;
                          *(a1 + 56) = 4;
                          return result;
                        }

                        *(a1 + 24) = 18;
                        goto LABEL_2477;
                      }

                      i = v608;
                    }
                  }

LABEL_1998:
                  if (*(a1 + 80) == 1)
                  {
                    goto LABEL_1999;
                  }

                  goto LABEL_1979;
                }

LABEL_2034:
                v619 = v614(a1);
                if (v619)
                {
                  if (v619 != 21)
                  {
                    goto LABEL_2202;
                  }

                  result = 0;
                  *(a1 + 24) = 21;
                  *(a1 + 32) = "on_chunk_complete pause";
LABEL_2244:
                  *(a1 + 40) = v7;
                  *(a1 + 56) = 5;
                  return result;
                }

                goto LABEL_2218;
              }

              break;
            default:
              goto LABEL_2038;
          }

          if ((~v611 & 0x14) != 0)
          {
            v617 = *(a1 + 73) == 5;
          }

          else
          {
            v616 = 1;
            if (*(a1 + 72) == 1)
            {
              goto LABEL_2196;
            }

            v617 = *(a1 + 84) == 101;
          }

          v616 = v617;
LABEL_2196:
          *(a1 + 80) = v616;
          v661 = *(a1 + 88);
          if (!v661)
          {
            goto LABEL_2206;
          }

          v662 = *(v661 + 72);
          if (!v662)
          {
            goto LABEL_2206;
          }

          v663 = v662(a1);
          if (v663 > 1)
          {
            if (v663 != 2)
            {
              if (v663 == 21)
              {
                result = 0;
                *(a1 + 24) = 21;
                *(a1 + 32) = "Paused by on_headers_complete";
                *(a1 + 40) = v7;
                *(a1 + 56) = 41;
                return result;
              }

LABEL_2268:
              result = 0;
              *(a1 + 24) = 17;
              v87 = "User callback error";
              goto LABEL_2023;
            }

            *(a1 + 80) = 1;
            goto LABEL_2205;
          }

          if (v663)
          {
            if (v663 != 1)
            {
              goto LABEL_2268;
            }

LABEL_2205:
            *v612 |= 0x40u;
          }

LABEL_2206:
          i = v7;
LABEL_2207:
          v7 = i;
          v664 = llhttp__after_headers_complete(a1);
          if (v664 <= 2)
          {
            if (v664 == 2)
            {
              goto LABEL_1783;
            }

            i = v7;
            if (v664 == 1)
            {
              v671 = *(a1 + 88);
              if (v671)
              {
                v672 = *(v671 + 88);
                if (v672)
                {
                  v673 = v672(a1, v7);
                  if (v673)
                  {
                    if (v673 == 21)
                    {
                      result = 0;
                      *(a1 + 24) = 21;
                      *(a1 + 32) = "on_message_complete pause";
                      *(a1 + 40) = v7;
                      *(a1 + 56) = 3;
                      return result;
                    }

                    result = 0;
                    *(a1 + 24) = 18;
                    goto LABEL_2023;
                  }

                  i = v7;
                }
              }

LABEL_1999:
              result = 0;
              *(a1 + 24) = 22;
              *(a1 + 32) = "Pause on CONNECT/Upgrade";
LABEL_2000:
              *(a1 + 40) = i;
              *(a1 + 56) = 2;
              return result;
            }
          }

          else
          {
            if (v664 == 3)
            {
              i = v7;
LABEL_2210:
              if (i == a3)
              {
                return 38;
              }

              *(a1 + 8) = i;
              *(a1 + 16) = llhttp__on_body;
LABEL_2212:
              v665 = *(a1 + 64);
              v666 = v665 - (a3 - i);
              if (v665 < a3 - i)
              {
                v666 = 0;
              }

              *(a1 + 64) = v666;
              if (a3 - i < v665)
              {
                return 37;
              }

              v7 = &i[v665];
              v667 = *(a1 + 8);
              *(a1 + 8) = 0;
              v668 = *(a1 + 88);
              if (v668)
              {
                v669 = *(v668 + 80);
                if (v669)
                {
                  v670 = v669(a1, v667, &v7[-v667]);
                  if (v670)
                  {
                    if (v670 == -1)
                    {
                      *(a1 + 32) = "Span callback error in on_body";
                      v670 = 24;
                    }

                    v677 = v670;
                    result = 0;
                    *(a1 + 24) = v677;
                    goto LABEL_2244;
                  }
                }
              }

              goto LABEL_2218;
            }

            i = v7;
            if (v664 == 4)
            {
              *(a1 + 81) = 1;
LABEL_2246:
              if (i == a3)
              {
                return 40;
              }

              *(a1 + 8) = i;
              *(a1 + 16) = llhttp__on_body;
              return 39;
            }

            if (v664 == 5)
            {
              result = 0;
              *(a1 + 24) = 15;
              goto LABEL_1857;
            }
          }

          v674 = 0;
          v675 = *(a1 + 88);
          if (v675)
          {
            v674 = 0;
            v676 = *(v675 + 88);
            if (v676)
            {
              v674 = v676(a1, i);
              i = v7;
            }
          }

          if (v674)
          {
            if (v674 != 21)
            {
              result = 0;
              *(a1 + 24) = 18;
              goto LABEL_1857;
            }

            result = 0;
            *(a1 + 24) = 21;
            *(a1 + 32) = "on_message_complete pause";
            goto LABEL_2000;
          }

LABEL_1979:
          if (*(a1 + 74) && *(a1 + 75))
          {
            v604 = *(a1 + 82);
            if ((v604 & 2) != 0)
            {
              goto LABEL_1984;
            }
          }

          else
          {
            v604 = *(a1 + 82);
            if ((v604 & 1) == 0)
            {
              goto LABEL_1984;
            }
          }

          if (*(a1 + 72) == 1 || (v605 = *(a1 + 84), (v605 - 100) < 0x64) || v605 == 204 || v605 == 304 || (v604 & 0x40) != 0)
          {
            *(a1 + 82) = 0;
LABEL_1996:
            *(a1 + 64) = 0;
            goto LABEL_1997;
          }

          if ((v604 & 0x208) == 0x200)
          {
LABEL_1984:
            *(a1 + 82) = 0;
            goto LABEL_1985;
          }

          *(a1 + 81) = 0;
          *(a1 + 82) = 0;
          if ((v604 & 0x28) != 0)
          {
            goto LABEL_1996;
          }

LABEL_1985:
          *(a1 + 81) = 0;
          if ((*(a1 + 78) & 4) == 0)
          {
LABEL_1969:
            if (i == a3)
            {
              return 1;
            }

            v18 = i;
            result = 1;
            while (1)
            {
              v602 = *v18++;
              v601 = v602;
              v603 = v602 == 13 || v601 == 10;
              if (!v603 && (*(a1 + 78) & 0x20) == 0)
              {
                break;
              }

              if (v18 == a3)
              {
                return result;
              }
            }

            result = 0;
            *(a1 + 24) = 5;
            goto LABEL_2477;
          }

LABEL_1997:
          *(a1 + 86) = 1;
          *(a1 + 81) = 0;
LABEL_3:
          if (i == a3)
          {
            return 237;
          }

          v7 = i;
          result = 237;
          while (1)
          {
            v8 = *v7;
            v9 = v8 == 13 || v8 == 10;
            if (!v9)
            {
              break;
            }

            if (++v7 == a3)
            {
              return result;
            }
          }

          if (*(a1 + 86) == 1)
          {
            v10 = *(a1 + 88);
            if (v10)
            {
              v11 = *(v10 + 176);
              if (v11)
              {
                v12 = v11(a1);
                if (v12)
                {
                  if (v12 == 21)
                  {
                    result = 0;
                    *(a1 + 24) = 21;
                    *(a1 + 32) = "on_reset pause";
                    *(a1 + 40) = v7;
                    *(a1 + 56) = 236;
                    return result;
                  }

                  result = 0;
                  *(a1 + 24) = 31;
                  goto LABEL_2023;
                }
              }
            }
          }

          i = v7;
LABEL_17:
          *(a1 + 81) = 2;
          v13 = *(a1 + 88);
          if (v13)
          {
            v14 = *v13;
            if (v14)
            {
              v15 = i;
              v16 = v14(a1);
              if (v16)
              {
                v9 = v16 == 21;
                v18 = v15;
                result = 0;
                if (v9)
                {
                  *(a1 + 24) = 21;
                  *(a1 + 32) = "on_message_begin pause";
                  *(a1 + 40) = v15;
                  *(a1 + 56) = 235;
                  return result;
                }

                *(a1 + 24) = 16;
                goto LABEL_2477;
              }

              i = v15;
            }
          }

LABEL_21:
          v17 = *(a1 + 72);
          if (v17 == 1)
          {
            goto LABEL_61;
          }

          if (v17 == 2)
          {
LABEL_23:
            if (i != a3)
            {
              v18 = i;
              v19 = 0;
              v20 = *a1;
              while (1)
              {
                v21 = *v18;
                v22 = llparse_blob58[v20];
                if (v20 == 4)
                {
                  v19 = 0;
                  v23 = 5;
                }

                else
                {
                  v23 = 0;
                }

                if (v21 != v22)
                {
                  v19 = 2;
                  v23 = 5;
                }

                if (v23)
                {
                  break;
                }

                if (v21 == v22)
                {
                  ++v20;
                }

                if (++v18 == a3)
                {
                  v19 = 1;
                  v18 = a3;
                  *a1 = v20;
                  goto LABEL_108;
                }
              }

              *a1 = 0;
LABEL_108:
              if (!v19)
              {
                i = v18 + 1;
                goto LABEL_116;
              }

              if (v19 != 1)
              {
                goto LABEL_1417;
              }
            }

            return 226;
          }

LABEL_36:
          if (i == a3)
          {
            return 234;
          }

          if (*i != 72)
          {
            *(a1 + 72) = 1;
LABEL_61:
            if (i == a3)
            {
              return 208;
            }

            *(a1 + 8) = i;
            *(a1 + 16) = llhttp__on_method;
LABEL_63:
            if (i != a3)
            {
              v18 = i;
              switch(*i)
              {
                case 'A':
                  ++i;
                  goto LABEL_66;
                case 'B':
                  ++i;
                  goto LABEL_659;
                case 'C':
                  ++i;
                  goto LABEL_611;
                case 'D':
                  ++i;
                  goto LABEL_677;
                case 'F':
                  ++i;
                  goto LABEL_229;
                case 'G':
                  ++i;
                  goto LABEL_738;
                case 'H':
                  ++i;
                  goto LABEL_593;
                case 'L':
                  ++i;
                  goto LABEL_794;
                case 'M':
                  ++i;
                  goto LABEL_247;
                case 'N':
                  ++i;
                  goto LABEL_720;
                case 'O':
                  ++i;
                  goto LABEL_874;
                case 'P':
                  ++i;
                  goto LABEL_356;
                case 'Q':
                  ++i;
                  goto LABEL_776;
                case 'R':
                  ++i;
                  goto LABEL_511;
                case 'S':
                  ++i;
                  goto LABEL_892;
                case 'T':
                  ++i;
                  goto LABEL_834;
                case 'U':
                  ++i;
                  goto LABEL_981;
                default:
                  goto LABEL_1420;
              }
            }

            return 207;
          }

LABEL_38:
          if (i == a3)
          {
            return 233;
          }

          *(a1 + 8) = i;
          *(a1 + 16) = llhttp__on_method;
LABEL_40:
          if (i == a3)
          {
            return 232;
          }

          v18 = i;
          if (*i != 72)
          {
            goto LABEL_227;
          }

          ++i;
LABEL_43:
          if (i == a3)
          {
            return 231;
          }

          v18 = i;
          v24 = *i;
          if (v24 == 84)
          {
            ++i;
LABEL_88:
            if (i != a3)
            {
              v18 = i;
              v38 = 0;
              v39 = *a1;
              while (1)
              {
                v40 = *v18;
                v41 = llparse_blob60[v39];
                if (v39 == 2)
                {
                  v38 = 0;
                  v42 = 5;
                }

                else
                {
                  v42 = 0;
                }

                if (v40 != v41)
                {
                  v38 = 2;
                  v42 = 5;
                }

                if (v42)
                {
                  break;
                }

                if (v40 == v41)
                {
                  ++v39;
                }

                if (++v18 == a3)
                {
                  v38 = 1;
                  v18 = a3;
                  *a1 = v39;
                  goto LABEL_110;
                }
              }

              *a1 = 0;
LABEL_110:
              if (!v38)
              {
                v48 = v18 + 1;
                v49 = *(a1 + 8);
                *(a1 + 8) = 0;
                v50 = *(a1 + 88);
                if (v50)
                {
                  v51 = *(v50 + 24);
                  if (v51)
                  {
                    v52 = v51(a1, v49, &v48[-v49]);
                    if (v52)
                    {
                      if (v52 == -1)
                      {
                        *(a1 + 32) = "Span callback error in on_method";
                        v52 = 24;
                      }

                      v431 = v52;
                      result = 0;
                      *(a1 + 24) = v431;
                      *(a1 + 40) = v48;
                      *(a1 + 56) = 229;
                      return result;
                    }
                  }
                }

                i = v48;
LABEL_115:
                *(a1 + 72) = 2;
LABEL_116:
                if (i == a3)
                {
                  return 225;
                }

                *(a1 + 8) = i;
                *(a1 + 16) = llhttp__on_version;
LABEL_118:
                if (i == a3)
                {
                  return 224;
                }

                v53 = i;
                v54 = *i - 48;
                if (v54 < 0xA)
                {
                  ++i;
                  *(a1 + 74) = v54;
LABEL_121:
                  if (i == a3)
                  {
                    return 222;
                  }

                  v55 = i;
                  if (*i == 46)
                  {
                    ++i;
LABEL_124:
                    if (i == a3)
                    {
                      return 220;
                    }

                    v56 = i;
                    v57 = *i;
                    if (v57 > 0x34)
                    {
                      if (*i <= 0x36u)
                      {
                        if (v57 == 53)
                        {
                          v58 = 0;
                          v59 = 0;
                          v60 = 0;
                          v61 = 5;
                        }

                        else
                        {
                          if (v57 != 54)
                          {
                            goto LABEL_1591;
                          }

                          v58 = 0;
                          v59 = 0;
                          v60 = 0;
                          v61 = 6;
                        }
                      }

                      else
                      {
                        switch(v57)
                        {
                          case '7':
                            v58 = 0;
                            v59 = 0;
                            v60 = 0;
                            v61 = 7;
                            break;
                          case '8':
                            v58 = 0;
                            v59 = 0;
                            v60 = 0;
                            v61 = 8;
                            break;
                          case '9':
                            v58 = 0;
                            v59 = 0;
                            v61 = 9;
                            v60 = 1;
                            break;
                          default:
                            goto LABEL_1591;
                        }
                      }
                    }

                    else if (*i <= 0x31u)
                    {
                      v60 = 0;
                      v61 = 0;
                      v58 = 1;
                      v59 = 1;
                      if (v57 != 48)
                      {
                        if (v57 != 49)
                        {
                          goto LABEL_1591;
                        }

                        v58 = 0;
                        v60 = 0;
                        v61 = 1;
                      }
                    }

                    else
                    {
                      switch(v57)
                      {
                        case '2':
                          v58 = 0;
                          v59 = 0;
                          v60 = 0;
                          v61 = 2;
                          break;
                        case '3':
                          v58 = 0;
                          v59 = 0;
                          v60 = 0;
                          v61 = 3;
                          break;
                        case '4':
                          v58 = 0;
                          v59 = 0;
                          v60 = 0;
                          v61 = 4;
                          break;
                        default:
LABEL_1591:
                          v442 = *(a1 + 8);
                          *(a1 + 8) = 0;
                          v443 = *(a1 + 88);
                          if (v443)
                          {
                            v444 = *(v443 + 32);
                            if (v444)
                            {
                              v445 = v444(a1, v442, &v56[-v442]);
                              if (v445)
                              {
                                v446 = v445;
                                if (v445 == -1)
                                {
                                  *(a1 + 32) = "Span callback error in on_version";
                                  v446 = 24;
                                }

                                result = 0;
                                *(a1 + 24) = v446;
                                *(a1 + 40) = v56;
                                *(a1 + 56) = 219;
                                return result;
                              }
                            }
                          }

LABEL_1597:
                          i = v56;
LABEL_1598:
                          result = 0;
                          *(a1 + 24) = 9;
                          v6 = "Invalid minor version";
                          goto LABEL_1856;
                      }
                    }

                    v62 = i + 1;
                    *(a1 + 75) = v61;
                    if ((*(a1 + 78) & 0x10) != 0)
                    {
                      goto LABEL_161;
                    }

                    v63 = *(a1 + 74);
                    if (*(a1 + 74))
                    {
                      if (v63 != 1)
                      {
                        if (v63 != 2 || (v58 & 1) == 0)
                        {
                          goto LABEL_154;
                        }

LABEL_161:
                        v69 = *(a1 + 8);
                        *(a1 + 8) = 0;
                        v70 = *(a1 + 88);
                        if (v70)
                        {
                          v71 = *(v70 + 32);
                          if (v71)
                          {
                            v72 = v71(a1, v69, &v62[-v69]);
                            if (v72)
                            {
                              if (v72 == -1)
                              {
                                *(a1 + 32) = "Span callback error in on_version";
                                v72 = 24;
                              }

                              v430 = v72;
                              result = 0;
                              *(a1 + 24) = v430;
                              *(a1 + 40) = v62;
                              *(a1 + 56) = 217;
                              return result;
                            }
                          }
                        }

                        i = v62;
LABEL_165:
                        v73 = *(a1 + 88);
                        if (v73)
                        {
                          v74 = *(v73 + 120);
                          if (v74)
                          {
                            v75 = i;
                            v76 = v74(a1);
                            if (!v76)
                            {
                              i = v75;
                              goto LABEL_169;
                            }

                            v18 = v75;
                            if (v76 == 21)
                            {
                              result = 0;
                              *(a1 + 24) = 21;
                              *(a1 + 32) = "on_version_complete pause";
                              *(a1 + 40) = v75;
                              *(a1 + 56) = 216;
                              return result;
                            }

LABEL_1549:
                            result = 0;
                            *(a1 + 24) = 33;
                            goto LABEL_2477;
                          }
                        }

LABEL_169:
                        if (i == a3)
                        {
                          return 216;
                        }

                        if (*i != 32)
                        {
                          result = 0;
                          *(a1 + 24) = 9;
                          *(a1 + 32) = "Expected space after version";
                          goto LABEL_1857;
                        }

                        ++i;
                        *(a1 + 84) = 0;
LABEL_172:
                        if (i == a3)
                        {
                          return 215;
                        }

                        v18 = i;
                        v77 = *i - 48;
                        if (v77 < 0xA)
                        {
                          v18 = i + 1;
                          v78 = *(a1 + 84);
                          if (v78 >> 1 <= 0xCCC)
                          {
                            v79 = 10 * v78;
                            *(a1 + 84) = v79;
                            if ((v77 ^ 0xFFFFu) >= v79)
                            {
                              *(a1 + 84) = v79 + v77;
                              ++i;
LABEL_177:
                              if (i == a3)
                              {
                                return 214;
                              }

                              v18 = i;
                              v80 = *i - 48;
                              if (v80 >= 0xA)
                              {
                                goto LABEL_187;
                              }

                              v18 = i + 1;
                              v81 = *(a1 + 84);
                              if (v81 >> 1 > 0xCCC)
                              {
                                goto LABEL_216;
                              }

                              v82 = 10 * v81;
                              *(a1 + 84) = v82;
                              if ((v80 ^ 0xFFFFu) < v82)
                              {
                                goto LABEL_216;
                              }

                              *(a1 + 84) = v82 + v80;
                              ++i;
LABEL_182:
                              if (i == a3)
                              {
                                return 213;
                              }

                              v18 = i;
                              v83 = *i - 48;
                              if (v83 >= 0xA)
                              {
LABEL_187:
                                if ((*(a1 + 78) & 0x2000) != 0)
                                {
                                  goto LABEL_188;
                                }
                              }

                              else
                              {
                                v18 = i + 1;
                                v84 = *(a1 + 84);
                                if (v84 >> 1 <= 0xCCC)
                                {
                                  v85 = 10 * v84;
                                  *(a1 + 84) = v85;
                                  if ((v83 ^ 0xFFFFu) >= v85)
                                  {
                                    *(a1 + 84) = v85 + v83;
LABEL_188:
                                    i = v18;
LABEL_189:
                                    if (i == a3)
                                    {
                                      return 212;
                                    }

                                    v86 = *i;
                                    switch(v86)
                                    {
                                      case 32:
                                        ++i;
LABEL_197:
                                        if (i == a3)
                                        {
                                          return 211;
                                        }

                                        *(a1 + 8) = i;
                                        *(a1 + 16) = llhttp__on_status;
LABEL_199:
                                        if (i == a3)
                                        {
                                          return 210;
                                        }

                                        v88 = i;
                                        result = 210;
                                        while (1)
                                        {
                                          v89 = *v88;
                                          if (v89 == 10)
                                          {
                                            break;
                                          }

                                          if (v89 == 13)
                                          {
                                            v90 = *(a1 + 8);
                                            *(a1 + 8) = 0;
                                            v91 = *(a1 + 88);
                                            if (v91)
                                            {
                                              v92 = *(v91 + 16);
                                              if (v92)
                                              {
                                                v93 = v92(a1, v90, &v88[-v90]);
                                                if (v93)
                                                {
                                                  if (v93 == -1)
                                                  {
                                                    *(a1 + 32) = "Span callback error in on_status";
                                                    v93 = 24;
                                                  }

                                                  v435 = v93;
                                                  result = 0;
                                                  *(a1 + 24) = v435;
                                                  *(a1 + 40) = v88 + 1;
                                                  *(a1 + 56) = 96;
                                                  return result;
                                                }
                                              }
                                            }

                                            i = v88 + 1;
LABEL_209:
                                            v7 = i;
                                            while (1)
                                            {
LABEL_1372:
                                              if (v7 == a3)
                                              {
                                                return 96;
                                              }

                                              v404 = *v7;
                                              if (v404 != 13)
                                              {
                                                break;
                                              }

                                              ++v7;
                                              if ((*(a1 + 78) & 0x1000) == 0)
                                              {
                                                goto LABEL_1375;
                                              }
                                            }

                                            if (v404 == 10)
                                            {
                                              ++v7;
                                            }

                                            else if ((*(a1 + 78) & 0x40) == 0)
                                            {
LABEL_1375:
                                              result = 0;
                                              *(a1 + 24) = 2;
                                              v87 = "Expected LF after CR";
                                              goto LABEL_2023;
                                            }

                                            goto LABEL_1380;
                                          }

                                          if (++v88 == a3)
                                          {
                                            return result;
                                          }
                                        }

                                        v94 = *(a1 + 8);
                                        *(a1 + 8) = 0;
                                        v95 = *(a1 + 88);
                                        if (v95)
                                        {
                                          v96 = *(v95 + 16);
                                          if (v96)
                                          {
                                            v97 = v96(a1, v94, &v88[-v94]);
                                            if (v97)
                                            {
                                              if (v97 == -1)
                                              {
                                                *(a1 + 32) = "Span callback error in on_status";
                                                v97 = 24;
                                              }

                                              v436 = v97;
                                              result = 0;
                                              *(a1 + 24) = v436;
                                              *(a1 + 40) = v88 + 1;
                                              *(a1 + 56) = 209;
                                              return result;
                                            }
                                          }
                                        }

                                        i = v88 + 1;
LABEL_214:
                                        v7 = i;
                                        if ((*(a1 + 78) & 0x100) == 0)
                                        {
                                          result = 0;
                                          *(a1 + 24) = 25;
                                          v87 = "Missing expected CR after response line";
                                          goto LABEL_2023;
                                        }

                                        break;
                                      case 13:
                                        v7 = i + 1;
                                        goto LABEL_1372;
                                      case 10:
                                        v7 = i + 1;
                                        if ((*(a1 + 78) & 0x100) == 0)
                                        {
                                          result = 0;
                                          *(a1 + 24) = 13;
                                          v87 = "Invalid response status";
                                          goto LABEL_2023;
                                        }

                                        break;
                                      default:
                                        result = 0;
                                        *(a1 + 24) = 13;
                                        *(a1 + 32) = "Invalid response status";
                                        goto LABEL_1857;
                                    }

LABEL_1380:
                                    v405 = 0;
                                    v406 = *(a1 + 88);
                                    if (v406)
                                    {
                                      v405 = 0;
                                      v407 = *(v406 + 104);
                                      if (v407)
                                      {
                                        v405 = v407(a1);
                                      }
                                    }

                                    if (!v405)
                                    {
LABEL_1384:
                                      i = v7;
                                      continue;
                                    }

                                    if (v405 != 21)
                                    {
                                      result = 0;
                                      *(a1 + 24) = 27;
                                      goto LABEL_2023;
                                    }

                                    result = 0;
                                    *(a1 + 24) = 21;
                                    v369 = "on_status_complete pause";
LABEL_1396:
                                    *(a1 + 32) = v369;
                                    *(a1 + 40) = v7;
                                    *(a1 + 56) = 90;
                                    return result;
                                  }
                                }
                              }
                            }
                          }
                        }

LABEL_216:
                        result = 0;
                        *(a1 + 24) = 13;
                        v98 = "Invalid status code";
                        goto LABEL_2477;
                      }

                      if (v59)
                      {
                        goto LABEL_161;
                      }
                    }

                    else if (v60)
                    {
                      goto LABEL_161;
                    }

LABEL_154:
                    v64 = *(a1 + 8);
                    *(a1 + 8) = 0;
                    v65 = *(a1 + 88);
                    if (v65)
                    {
                      v66 = *(v65 + 32);
                      if (v66)
                      {
                        v67 = v66(a1, v64, &v62[-v64]);
                        if (v67)
                        {
                          v68 = v67;
                          if (v67 == -1)
                          {
                            *(a1 + 32) = "Span callback error in on_version";
                            v68 = 24;
                          }

                          result = 0;
                          *(a1 + 24) = v68;
                          *(a1 + 40) = v62;
                          *(a1 + 56) = 218;
                          return result;
                        }
                      }
                    }

LABEL_1535:
                    i = v62;
LABEL_1536:
                    result = 0;
                    *(a1 + 24) = 9;
                    v6 = "Invalid HTTP version";
                    goto LABEL_1856;
                  }

                  v408 = *(a1 + 8);
                  *(a1 + 8) = 0;
                  v409 = *(a1 + 88);
                  if (v409)
                  {
                    v410 = *(v409 + 32);
                    if (v410)
                    {
                      v411 = v410(a1, v408, &v55[-v408]);
                      if (v411)
                      {
                        v412 = v411;
                        if (v411 == -1)
                        {
                          *(a1 + 32) = "Span callback error in on_version";
                          v412 = 24;
                        }

                        result = 0;
                        *(a1 + 24) = v412;
                        *(a1 + 40) = v55;
                        *(a1 + 56) = 221;
                        return result;
                      }
                    }
                  }

LABEL_1518:
                  i = v55;
LABEL_1519:
                  result = 0;
                  *(a1 + 24) = 9;
                  v6 = "Expected dot";
                  goto LABEL_1856;
                }

                v424 = *(a1 + 8);
                *(a1 + 8) = 0;
                v425 = *(a1 + 88);
                if (v425)
                {
                  v426 = *(v425 + 32);
                  if (v426)
                  {
                    v427 = v426(a1, v424, &v53[-v424]);
                    if (v427)
                    {
                      v428 = v427;
                      if (v427 == -1)
                      {
                        *(a1 + 32) = "Span callback error in on_version";
                        v428 = 24;
                      }

                      result = 0;
                      *(a1 + 24) = v428;
                      *(a1 + 40) = v53;
                      *(a1 + 56) = 223;
                      return result;
                    }
                  }
                }

LABEL_1532:
                i = v53;
LABEL_1533:
                result = 0;
                *(a1 + 24) = 9;
                v6 = "Invalid major version";
                goto LABEL_1856;
              }

              if (v38 != 1)
              {
                goto LABEL_227;
              }
            }

            return 230;
          }

          break;
        }

        if (v24 != 69)
        {
          goto LABEL_227;
        }

        ++i;
LABEL_47:
        if (i == a3)
        {
          return 228;
        }

        v18 = i;
        v25 = 0;
        v26 = *a1;
        while (1)
        {
          v27 = *v18;
          v28 = llparse_blob59[v26];
          if (v26 == 1)
          {
            v25 = 0;
            v29 = 5;
          }

          else
          {
            v29 = 0;
          }

          if (v27 != v28)
          {
            v25 = 2;
            v29 = 5;
          }

          if (v29)
          {
            break;
          }

          if (v27 == v28)
          {
            ++v26;
          }

          if (++v18 == a3)
          {
            v25 = 1;
            v18 = a3;
            *a1 = v26;
            goto LABEL_101;
          }
        }

        *a1 = 0;
LABEL_101:
        if (v25)
        {
          if (v25 == 1)
          {
            return 228;
          }

LABEL_227:
          result = 0;
          *(a1 + 24) = 8;
          v98 = "Invalid word encountered";
          goto LABEL_2477;
        }

        v31 = v18 + 1;
        *(a1 + 72) = 513;
        v43 = *(a1 + 8);
        *(a1 + 8) = 0;
        v44 = *(a1 + 88);
        if (v44)
        {
          v45 = *(v44 + 24);
          if (v45)
          {
            v46 = v45(a1, v43, &v31[-v43]);
            if (v46)
            {
              if (v46 == -1)
              {
                *(a1 + 32) = "Span callback error in on_method";
                v46 = 24;
              }

              v47 = v46;
              result = 0;
              *(a1 + 24) = v47;
              *(a1 + 40) = v31;
              *(a1 + 56) = 227;
              return result;
            }
          }
        }

LABEL_1061:
        i = v31;
LABEL_1062:
        v321 = *(a1 + 88);
        if (v321)
        {
LABEL_1063:
          v322 = *(v321 + 112);
          if (v322)
          {
            v323 = i;
            v324 = v322(a1);
            if (v324)
            {
              v9 = v324 == 21;
              v18 = v323;
              result = 0;
              if (v9)
              {
                *(a1 + 24) = 21;
                *(a1 + 32) = "on_method_complete pause";
                *(a1 + 40) = v323;
                *(a1 + 56) = 135;
                return result;
              }

              *(a1 + 24) = 32;
              goto LABEL_2477;
            }

            i = v323;
          }
        }
      }

LABEL_1078:
      if (i == a3)
      {
        return 133;
      }

      v18 = i;
      v327 = *i;
      if (v327 == 12 || v327 == 9)
      {
        goto LABEL_1146;
      }

LABEL_1081:
      if (i == a3)
      {
        return 132;
      }

      *(a1 + 8) = i;
      *(a1 + 16) = llhttp__on_url;
      while (1)
      {
LABEL_1112:
        v7 = i;
        result = 124;
        while (1)
        {
          v332 = llhttp__internal__run_lookup_table_25[*v7];
          if (v332 != 5)
          {
            break;
          }

          if (++v7 == a3)
          {
            return result;
          }
        }

        if (llhttp__internal__run_lookup_table_25[*v7] <= 3u)
        {
          switch(v332)
          {
            case 1:
              goto LABEL_1258;
            case 2:
              goto LABEL_1240;
            case 3:
              goto LABEL_1227;
          }

          goto LABEL_1582;
        }

        if (llhttp__internal__run_lookup_table_25[*v7] <= 6u)
        {
          if (v332 == 4)
          {
            goto LABEL_1190;
          }

          i = v7;
LABEL_1120:
          if (i == a3)
          {
            return 121;
          }

          goto LABEL_1139;
        }

        if (v332 == 7)
        {
          goto LABEL_1166;
        }

        if (v332 != 8)
        {
          goto LABEL_1582;
        }

        i = v7 + 1;
LABEL_1129:
        if (i == a3)
        {
          return 123;
        }

        v7 = i;
        v333 = llhttp__internal__run_lookup_table_25[*i];
        if (v333 <= 4)
        {
          if (llhttp__internal__run_lookup_table_25[*i] > 2u)
          {
            if (v333 == 3)
            {
              goto LABEL_1227;
            }

            if (v333 != 4)
            {
              goto LABEL_1582;
            }

            goto LABEL_1190;
          }

          if (v333 == 2)
          {
            goto LABEL_1240;
          }

          if (v333 == 1)
          {
            goto LABEL_1258;
          }

LABEL_1582:
          result = 0;
          *(a1 + 24) = 7;
          v87 = "Unexpected char in url server";
          goto LABEL_2023;
        }

        if (llhttp__internal__run_lookup_table_25[*i] > 6u)
        {
          if (v333 == 7)
          {
            goto LABEL_1166;
          }

          if (v333 == 8)
          {
            result = 0;
            v18 = i + 1;
            *(a1 + 24) = 7;
            v98 = "Double @ in url";
            goto LABEL_2477;
          }

          goto LABEL_1582;
        }

        if (v333 != 5)
        {
          break;
        }

        ++i;
        if (v7 + 1 == a3)
        {
          return 124;
        }
      }

      if (v333 != 6)
      {
        goto LABEL_1582;
      }

LABEL_1138:
      if (i != a3)
      {
        goto LABEL_1139;
      }

      return 122;
    case 167:
LABEL_720:
      if (i == a3)
      {
        return 167;
      }

      v18 = i;
      v225 = 0;
      v226 = *a1;
      while (1)
      {
        v227 = *v18;
        v228 = llparse_blob34[v226];
        if (v226 == 4)
        {
          v225 = 0;
          v229 = 5;
        }

        else
        {
          v229 = 0;
        }

        if (v227 != v228)
        {
          v225 = 2;
          v229 = 5;
        }

        if (v229)
        {
          break;
        }

        if (v227 == v228)
        {
          ++v226;
        }

        if (++v18 == a3)
        {
          v225 = 1;
          v18 = a3;
          *a1 = v226;
          goto LABEL_733;
        }
      }

      *a1 = 0;
LABEL_733:
      if (!v225)
      {
        v31 = v18 + 1;
        LOBYTE(v32) = 25;
        goto LABEL_1056;
      }

      if (v225 == 1)
      {
        return 167;
      }

      goto LABEL_1420;
    case 168:
LABEL_874:
      if (i == a3)
      {
        return 168;
      }

      v18 = i;
      v267 = 0;
      v268 = *a1;
      while (1)
      {
        v269 = *v18;
        v270 = llparse_blob35[v268];
        if (v268 == 5)
        {
          v267 = 0;
          v271 = 5;
        }

        else
        {
          v271 = 0;
        }

        if (v269 != v270)
        {
          v267 = 2;
          v271 = 5;
        }

        if (v271)
        {
          break;
        }

        if (v269 == v270)
        {
          ++v268;
        }

        if (++v18 == a3)
        {
          v267 = 1;
          v18 = a3;
          *a1 = v268;
          goto LABEL_887;
        }
      }

      *a1 = 0;
LABEL_887:
      if (!v267)
      {
        v31 = v18 + 1;
        LOBYTE(v32) = 6;
        goto LABEL_1056;
      }

      if (v267 == 1)
      {
        return 168;
      }

      goto LABEL_1420;
    case 169:
      goto LABEL_449;
    case 170:
      goto LABEL_463;
    case 171:
      goto LABEL_445;
    case 172:
      goto LABEL_383;
    case 173:
      goto LABEL_481;
    case 174:
      goto LABEL_413;
    case 175:
      goto LABEL_427;
    case 176:
      goto LABEL_409;
    case 177:
      goto LABEL_406;
    case 178:
      goto LABEL_401;
    case 179:
      goto LABEL_366;
    case 180:
      goto LABEL_362;
    case 181:
LABEL_356:
      if (i == a3)
      {
        return 181;
      }

      v18 = i;
      v132 = *i;
      if (v132 <= 0x4E)
      {
        if (v132 == 65)
        {
          ++i;
LABEL_445:
          if (i == a3)
          {
            return 171;
          }

          v18 = i;
          v156 = *i;
          if (v156 == 85)
          {
            ++i;
LABEL_463:
            if (i == a3)
            {
              return 170;
            }

            v18 = i;
            v162 = 0;
            v163 = *a1;
            while (1)
            {
              v164 = *v18;
              v165 = llparse_blob37[v163];
              if (v163 == 1)
              {
                v162 = 0;
                v166 = 5;
              }

              else
              {
                v166 = 0;
              }

              if (v164 != v165)
              {
                v162 = 2;
                v166 = 5;
              }

              if (v166)
              {
                break;
              }

              if (v164 == v165)
              {
                ++v163;
              }

              if (++v18 == a3)
              {
                v162 = 1;
                v18 = a3;
                *a1 = v163;
                goto LABEL_476;
              }
            }

            *a1 = 0;
LABEL_476:
            if (!v162)
            {
              v31 = v18 + 1;
              LOBYTE(v32) = 39;
              goto LABEL_1056;
            }

            if (v162 == 1)
            {
              return 170;
            }
          }

          else
          {
            if (v156 != 84)
            {
              goto LABEL_1420;
            }

            ++i;
LABEL_449:
            if (i == a3)
            {
              return 169;
            }

            v18 = i;
            v157 = 0;
            v158 = *a1;
            while (1)
            {
              v159 = *v18;
              v160 = llparse_blob36[v158];
              if (v158 == 1)
              {
                v157 = 0;
                v161 = 5;
              }

              else
              {
                v161 = 0;
              }

              if (v159 != v160)
              {
                v157 = 2;
                v161 = 5;
              }

              if (v161)
              {
                break;
              }

              if (v159 == v160)
              {
                ++v158;
              }

              if (++v18 == a3)
              {
                v157 = 1;
                v18 = a3;
                *a1 = v158;
                goto LABEL_478;
              }
            }

            *a1 = 0;
LABEL_478:
            if (!v157)
            {
              v31 = v18 + 1;
              LOBYTE(v32) = 28;
              goto LABEL_1056;
            }

            if (v157 == 1)
            {
              return 169;
            }
          }
        }

        else
        {
          if (v132 != 76)
          {
            goto LABEL_1420;
          }

          ++i;
LABEL_383:
          if (i == a3)
          {
            return 172;
          }

          v18 = i;
          v139 = 0;
          v140 = *a1;
          while (1)
          {
            v141 = *v18;
            v142 = llparse_blob38[v140];
            if (v140 == 1)
            {
              v139 = 0;
              v143 = 5;
            }

            else
            {
              v143 = 0;
            }

            if (v141 != v142)
            {
              v139 = 2;
              v143 = 5;
            }

            if (v143)
            {
              break;
            }

            if (v141 == v142)
            {
              ++v140;
            }

            if (++v18 == a3)
            {
              v139 = 1;
              v18 = a3;
              *a1 = v140;
              goto LABEL_396;
            }
          }

          *a1 = 0;
LABEL_396:
          if (!v139)
          {
            v31 = v18 + 1;
            LOBYTE(v32) = 38;
            goto LABEL_1056;
          }

          if (v139 == 1)
          {
            return 172;
          }
        }
      }

      else
      {
        switch(v132)
        {
          case 'O':
            ++i;
LABEL_481:
            if (i == a3)
            {
              return 173;
            }

            v18 = i;
            v167 = 0;
            v168 = *a1;
            while (1)
            {
              v169 = *v18;
              v170 = llparse_blob39[v168];
              if (v168 == 1)
              {
                v167 = 0;
                v171 = 5;
              }

              else
              {
                v171 = 0;
              }

              if (v169 != v170)
              {
                v167 = 2;
                v171 = 5;
              }

              if (v171)
              {
                break;
              }

              if (v169 == v170)
              {
                ++v168;
              }

              if (++v18 == a3)
              {
                v167 = 1;
                v18 = a3;
                *a1 = v168;
                goto LABEL_494;
              }
            }

            *a1 = 0;
LABEL_494:
            if (!v167)
            {
              v31 = v18 + 1;
              LOBYTE(v32) = 3;
              goto LABEL_1056;
            }

            if (v167 == 1)
            {
              return 173;
            }

            break;
          case 'R':
            ++i;
LABEL_401:
            if (i == a3)
            {
              return 178;
            }

            v18 = i;
            v144 = *i;
            if (v144 != 79)
            {
              if (v144 != 73)
              {
                goto LABEL_1420;
              }

              v31 = i + 1;
              LOBYTE(v32) = 34;
              goto LABEL_1056;
            }

            ++i;
LABEL_406:
            if (i == a3)
            {
              return 177;
            }

            v18 = i;
            if (*i != 80)
            {
              goto LABEL_1420;
            }

            ++i;
LABEL_409:
            if (i == a3)
            {
              return 176;
            }

            v18 = i;
            v145 = *i;
            if (v145 == 80)
            {
              ++i;
LABEL_427:
              if (i == a3)
              {
                return 175;
              }

              v18 = i;
              v151 = 0;
              v152 = *a1;
              while (1)
              {
                v153 = *v18;
                v154 = llparse_blob41[v152];
                if (v152 == 3)
                {
                  v151 = 0;
                  v155 = 5;
                }

                else
                {
                  v155 = 0;
                }

                if (v153 != v154)
                {
                  v151 = 2;
                  v155 = 5;
                }

                if (v155)
                {
                  break;
                }

                if (v153 == v154)
                {
                  ++v152;
                }

                if (++v18 == a3)
                {
                  v151 = 1;
                  v18 = a3;
                  *a1 = v152;
                  goto LABEL_440;
                }
              }

              *a1 = 0;
LABEL_440:
              if (!v151)
              {
                v31 = v18 + 1;
                LOBYTE(v32) = 13;
                goto LABEL_1056;
              }

              if (v151 == 1)
              {
                return 175;
              }
            }

            else
            {
              if (v145 != 70)
              {
                goto LABEL_1420;
              }

              ++i;
LABEL_413:
              if (i == a3)
              {
                return 174;
              }

              v18 = i;
              v146 = 0;
              v147 = *a1;
              while (1)
              {
                v148 = *v18;
                v149 = llparse_blob40[v147];
                if (v147 == 2)
                {
                  v146 = 0;
                  v150 = 5;
                }

                else
                {
                  v150 = 0;
                }

                if (v148 != v149)
                {
                  v146 = 2;
                  v150 = 5;
                }

                if (v150)
                {
                  break;
                }

                if (v148 == v149)
                {
                  ++v147;
                }

                if (++v18 == a3)
                {
                  v146 = 1;
                  v18 = a3;
                  *a1 = v147;
                  goto LABEL_442;
                }
              }

              *a1 = 0;
LABEL_442:
              if (!v146)
              {
                v31 = v18 + 1;
                LOBYTE(v32) = 12;
                goto LABEL_1056;
              }

              if (v146 == 1)
              {
                return 174;
              }
            }

            break;
          case 'U':
            ++i;
LABEL_362:
            if (i == a3)
            {
              return 180;
            }

            v18 = i;
            v133 = *i;
            if (v133 == 84)
            {
              v31 = i + 1;
              LOBYTE(v32) = 4;
              goto LABEL_1056;
            }

            if (v133 != 82)
            {
              goto LABEL_1420;
            }

            ++i;
LABEL_366:
            if (i == a3)
            {
              return 179;
            }

            v18 = i;
            v134 = 0;
            v135 = *a1;
            while (1)
            {
              v136 = *v18;
              v137 = llparse_blob42[v135];
              if (v135 == 1)
              {
                v134 = 0;
                v138 = 5;
              }

              else
              {
                v138 = 0;
              }

              if (v136 != v137)
              {
                v134 = 2;
                v138 = 5;
              }

              if (v138)
              {
                break;
              }

              if (v136 == v137)
              {
                ++v135;
              }

              if (++v18 == a3)
              {
                v134 = 1;
                v18 = a3;
                *a1 = v135;
                goto LABEL_398;
              }
            }

            *a1 = 0;
LABEL_398:
            if (!v134)
            {
              v31 = v18 + 1;
              LOBYTE(v32) = 29;
              goto LABEL_1056;
            }

            if (v134 == 1)
            {
              return 179;
            }

            break;
          default:
            goto LABEL_1420;
        }
      }

      goto LABEL_1420;
    case 182:
LABEL_776:
      if (i == a3)
      {
        return 182;
      }

      v18 = i;
      v240 = 0;
      v241 = *a1;
      while (1)
      {
        v242 = *v18;
        v243 = llparse_blob43[v241];
        if (v241 == 3)
        {
          v240 = 0;
          v244 = 5;
        }

        else
        {
          v244 = 0;
        }

        if (v242 != v243)
        {
          v240 = 2;
          v244 = 5;
        }

        if (v244)
        {
          break;
        }

        if (v242 == v243)
        {
          ++v241;
        }

        if (++v18 == a3)
        {
          v240 = 1;
          v18 = a3;
          *a1 = v241;
          goto LABEL_789;
        }
      }

      *a1 = 0;
LABEL_789:
      if (!v240)
      {
        v31 = v18 + 1;
        LOBYTE(v32) = 46;
        goto LABEL_1056;
      }

      if (v240 == 1)
      {
        return 182;
      }

      goto LABEL_1420;
    case 183:
      goto LABEL_553;
    case 184:
      goto LABEL_519;
    case 185:
      goto LABEL_569;
    case 186:
      goto LABEL_535;
    case 187:
      goto LABEL_514;
    case 188:
LABEL_511:
      if (i == a3)
      {
        return 188;
      }

      v18 = i;
      if (*i != 69)
      {
        goto LABEL_1420;
      }

      ++i;
LABEL_514:
      if (i == a3)
      {
        return 187;
      }

      v18 = i;
      v172 = *i;
      if (v172 > 0x43)
      {
        if (v172 == 68)
        {
          ++i;
LABEL_569:
          if (i == a3)
          {
            return 185;
          }

          v18 = i;
          v188 = 0;
          v189 = *a1;
          while (1)
          {
            v190 = *v18;
            v191 = llparse_blob46[v189];
            if (v189 == 4)
            {
              v188 = 0;
              v192 = 5;
            }

            else
            {
              v192 = 0;
            }

            if (v190 != v191)
            {
              v188 = 2;
              v192 = 5;
            }

            if (v192)
            {
              break;
            }

            if (v190 == v191)
            {
              ++v189;
            }

            if (++v18 == a3)
            {
              v188 = 1;
              v18 = a3;
              *a1 = v189;
              goto LABEL_582;
            }
          }

          *a1 = 0;
LABEL_582:
          if (!v188)
          {
            v31 = v18 + 1;
            LOBYTE(v32) = 43;
            goto LABEL_1056;
          }

          if (v188 == 1)
          {
            return 185;
          }
        }

        else
        {
          if (v172 != 80)
          {
            goto LABEL_1420;
          }

          ++i;
LABEL_535:
          if (i == a3)
          {
            return 186;
          }

          v18 = i;
          v178 = 0;
          v179 = *a1;
          while (1)
          {
            v180 = *v18;
            v181 = llparse_blob47[v179];
            if (v179 == 2)
            {
              v178 = 0;
              v182 = 5;
            }

            else
            {
              v182 = 0;
            }

            if (v180 != v181)
            {
              v178 = 2;
              v182 = 5;
            }

            if (v182)
            {
              break;
            }

            if (v180 == v181)
            {
              ++v179;
            }

            if (++v18 == a3)
            {
              v178 = 1;
              v18 = a3;
              *a1 = v179;
              goto LABEL_550;
            }
          }

          *a1 = 0;
LABEL_550:
          if (!v178)
          {
            v31 = v18 + 1;
            LOBYTE(v32) = 20;
            goto LABEL_1056;
          }

          if (v178 == 1)
          {
            return 186;
          }
        }
      }

      else if (v172 == 66)
      {
        ++i;
LABEL_553:
        if (i == a3)
        {
          return 183;
        }

        v18 = i;
        v183 = 0;
        v184 = *a1;
        while (1)
        {
          v185 = *v18;
          v186 = llparse_blob44[v184];
          if (v184 == 2)
          {
            v183 = 0;
            v187 = 5;
          }

          else
          {
            v187 = 0;
          }

          if (v185 != v186)
          {
            v183 = 2;
            v187 = 5;
          }

          if (v187)
          {
            break;
          }

          if (v185 == v186)
          {
            ++v184;
          }

          if (++v18 == a3)
          {
            v183 = 1;
            v18 = a3;
            *a1 = v184;
            goto LABEL_566;
          }
        }

        *a1 = 0;
LABEL_566:
        if (!v183)
        {
          v31 = v18 + 1;
          LOBYTE(v32) = 17;
          goto LABEL_1056;
        }

        if (v183 == 1)
        {
          return 183;
        }
      }

      else
      {
        if (v172 != 67)
        {
          goto LABEL_1420;
        }

        ++i;
LABEL_519:
        if (i == a3)
        {
          return 184;
        }

        v18 = i;
        v173 = 0;
        v174 = *a1;
        while (1)
        {
          v175 = *v18;
          v176 = llparse_blob45[v174];
          if (v174 == 2)
          {
            v173 = 0;
            v177 = 5;
          }

          else
          {
            v177 = 0;
          }

          if (v175 != v176)
          {
            v173 = 2;
            v177 = 5;
          }

          if (v177)
          {
            break;
          }

          if (v175 == v176)
          {
            ++v174;
          }

          if (++v18 == a3)
          {
            v173 = 1;
            v18 = a3;
            *a1 = v174;
            goto LABEL_548;
          }
        }

        *a1 = 0;
LABEL_548:
        if (!v173)
        {
          v31 = v18 + 1;
          LOBYTE(v32) = 44;
          goto LABEL_1056;
        }

        if (v173 == 1)
        {
          return 184;
        }
      }

      goto LABEL_1420;
    case 189:
      goto LABEL_901;
    case 190:
      goto LABEL_919;
    case 191:
      goto LABEL_923;
    case 192:
      goto LABEL_915;
    case 193:
      goto LABEL_897;
    case 194:
      goto LABEL_941;
    case 195:
      goto LABEL_957;
    case 196:
LABEL_892:
      if (i == a3)
      {
        return 196;
      }

      v18 = i;
      v272 = *i;
      switch(v272)
      {
        case 'U':
          ++i;
LABEL_957:
          if (i == a3)
          {
            return 195;
          }

          v18 = i;
          v290 = 0;
          v291 = *a1;
          while (1)
          {
            v292 = *v18;
            v293 = llparse_blob51[v291];
            if (v291 == 6)
            {
              v290 = 0;
              v294 = 5;
            }

            else
            {
              v294 = 0;
            }

            if (v292 != v293)
            {
              v290 = 2;
              v294 = 5;
            }

            if (v294)
            {
              break;
            }

            if (v292 == v293)
            {
              ++v291;
            }

            if (++v18 == a3)
            {
              v290 = 1;
              v18 = a3;
              *a1 = v291;
              goto LABEL_970;
            }
          }

          *a1 = 0;
LABEL_970:
          if (!v290)
          {
            v31 = v18 + 1;
            LOBYTE(v32) = 26;
            goto LABEL_1056;
          }

          if (v290 == 1)
          {
            return 195;
          }

          break;
        case 'O':
          ++i;
LABEL_941:
          if (i == a3)
          {
            return 194;
          }

          v18 = i;
          v285 = 0;
          v286 = *a1;
          while (1)
          {
            v287 = *v18;
            v288 = llparse_blob50[v286];
            if (v286 == 3)
            {
              v285 = 0;
              v289 = 5;
            }

            else
            {
              v289 = 0;
            }

            if (v287 != v288)
            {
              v285 = 2;
              v289 = 5;
            }

            if (v289)
            {
              break;
            }

            if (v287 == v288)
            {
              ++v286;
            }

            if (++v18 == a3)
            {
              v285 = 1;
              v18 = a3;
              *a1 = v286;
              goto LABEL_954;
            }
          }

          *a1 = 0;
LABEL_954:
          if (!v285)
          {
            v31 = v18 + 1;
            LOBYTE(v32) = 33;
            goto LABEL_1056;
          }

          if (v285 == 1)
          {
            return 194;
          }

          break;
        case 'E':
          ++i;
LABEL_897:
          if (i == a3)
          {
            return 193;
          }

          v18 = i;
          v273 = *i;
          if (v273 == 84)
          {
            ++i;
LABEL_915:
            if (i == a3)
            {
              return 192;
            }

            v18 = i;
            v279 = *i;
            if (v279 != 95)
            {
              if (v279 != 85)
              {
                goto LABEL_1420;
              }

              ++i;
LABEL_919:
              if (i == a3)
              {
                return 190;
              }

              v18 = i;
              if (*i != 80)
              {
                goto LABEL_1420;
              }

              v31 = i + 1;
              LOBYTE(v32) = 37;
              goto LABEL_1056;
            }

            ++i;
LABEL_923:
            if (i == a3)
            {
              return 191;
            }

            v18 = i;
            v280 = 0;
            v281 = *a1;
            while (1)
            {
              v282 = *v18;
              v283 = llparse_blob49[v281];
              if (v281 == 8)
              {
                v280 = 0;
                v284 = 5;
              }

              else
              {
                v284 = 0;
              }

              if (v282 != v283)
              {
                v280 = 2;
                v284 = 5;
              }

              if (v284)
              {
                break;
              }

              if (v282 == v283)
              {
                ++v281;
              }

              if (++v18 == a3)
              {
                v280 = 1;
                v18 = a3;
                *a1 = v281;
                goto LABEL_936;
              }
            }

            *a1 = 0;
LABEL_936:
            if (!v280)
            {
              v31 = v18 + 1;
              LOBYTE(v32) = 42;
              goto LABEL_1056;
            }

            if (v280 == 1)
            {
              return 191;
            }
          }

          else
          {
            if (v273 != 65)
            {
              goto LABEL_1420;
            }

            ++i;
LABEL_901:
            if (i == a3)
            {
              return 189;
            }

            v18 = i;
            v274 = 0;
            v275 = *a1;
            while (1)
            {
              v276 = *v18;
              v277 = llparse_blob48[v275];
              if (v275 == 2)
              {
                v274 = 0;
                v278 = 5;
              }

              else
              {
                v278 = 0;
              }

              if (v276 != v277)
              {
                v274 = 2;
                v278 = 5;
              }

              if (v278)
              {
                break;
              }

              if (v276 == v277)
              {
                ++v275;
              }

              if (++v18 == a3)
              {
                v274 = 1;
                v18 = a3;
                *a1 = v275;
                goto LABEL_938;
              }
            }

            *a1 = 0;
LABEL_938:
            if (!v274)
            {
              v31 = v18 + 1;
              LOBYTE(v32) = 14;
              goto LABEL_1056;
            }

            if (v274 == 1)
            {
              return 189;
            }
          }

          break;
        default:
          goto LABEL_1420;
      }

      goto LABEL_1420;
    case 197:
      goto LABEL_838;
    case 198:
      goto LABEL_852;
    case 199:
LABEL_834:
      if (i == a3)
      {
        return 199;
      }

      v18 = i;
      v256 = *i;
      if (v256 == 82)
      {
        ++i;
LABEL_852:
        if (i == a3)
        {
          return 198;
        }

        v18 = i;
        v262 = 0;
        v263 = *a1;
        while (1)
        {
          v264 = *v18;
          v265 = llparse_blob53[v263];
          if (v263 == 2)
          {
            v262 = 0;
            v266 = 5;
          }

          else
          {
            v266 = 0;
          }

          if (v264 != v265)
          {
            v262 = 2;
            v266 = 5;
          }

          if (v266)
          {
            break;
          }

          if (v264 == v265)
          {
            ++v263;
          }

          if (++v18 == a3)
          {
            v262 = 1;
            v18 = a3;
            *a1 = v263;
            goto LABEL_867;
          }
        }

        *a1 = 0;
LABEL_867:
        if (!v262)
        {
          v31 = v18 + 1;
          LOBYTE(v32) = 7;
          goto LABEL_1056;
        }

        if (v262 == 1)
        {
          return 198;
        }
      }

      else
      {
        if (v256 != 69)
        {
          goto LABEL_1420;
        }

        ++i;
LABEL_838:
        if (i == a3)
        {
          return 197;
        }

        v18 = i;
        v257 = 0;
        v258 = *a1;
        while (1)
        {
          v259 = *v18;
          v260 = llparse_blob52[v258];
          if (v258 == 5)
          {
            v257 = 0;
            v261 = 5;
          }

          else
          {
            v261 = 0;
          }

          if (v259 != v260)
          {
            v257 = 2;
            v261 = 5;
          }

          if (v261)
          {
            break;
          }

          if (v259 == v260)
          {
            ++v258;
          }

          if (++v18 == a3)
          {
            v257 = 1;
            v18 = a3;
            *a1 = v258;
            goto LABEL_865;
          }
        }

        *a1 = 0;
LABEL_865:
        if (!v257)
        {
          v31 = v18 + 1;
          LOBYTE(v32) = 40;
          goto LABEL_1056;
        }

        if (v257 == 1)
        {
          return 197;
        }
      }

      goto LABEL_1420;
    case 200:
      goto LABEL_989;
    case 201:
      goto LABEL_1009;
    case 202:
      goto LABEL_1023;
    case 203:
      goto LABEL_1005;
    case 204:
      goto LABEL_1041;
    case 205:
      goto LABEL_984;
    case 206:
LABEL_981:
      if (i == a3)
      {
        return 206;
      }

      v18 = i;
      if (*i != 78)
      {
        goto LABEL_1420;
      }

      ++i;
LABEL_984:
      if (i == a3)
      {
        return 205;
      }

      v18 = i;
      v295 = *i;
      switch(v295)
      {
        case 'S':
          ++i;
LABEL_1041:
          if (i == a3)
          {
            return 204;
          }

          v18 = i;
          v312 = 0;
          v313 = *a1;
          while (1)
          {
            v314 = *v18;
            v315 = llparse_blob57[v313];
            if (v313 == 7)
            {
              v312 = 0;
              v316 = 5;
            }

            else
            {
              v316 = 0;
            }

            if (v314 != v315)
            {
              v312 = 2;
              v316 = 5;
            }

            if (v316)
            {
              break;
            }

            if (v314 == v315)
            {
              ++v313;
            }

            if (++v18 == a3)
            {
              v312 = 1;
              v18 = a3;
              *a1 = v313;
              goto LABEL_1054;
            }
          }

          *a1 = 0;
LABEL_1054:
          if (!v312)
          {
            v31 = v18 + 1;
            LOBYTE(v32) = 27;
            goto LABEL_1056;
          }

          if (v312 == 1)
          {
            return 204;
          }

          break;
        case 'L':
          ++i;
LABEL_1005:
          if (i == a3)
          {
            return 203;
          }

          v18 = i;
          v301 = *i;
          if (v301 == 79)
          {
            ++i;
LABEL_1023:
            if (i == a3)
            {
              return 202;
            }

            v18 = i;
            v307 = 0;
            v308 = *a1;
            while (1)
            {
              v309 = *v18;
              v310 = llparse_blob56[v308];
              if (v308 == 1)
              {
                v307 = 0;
                v311 = 5;
              }

              else
              {
                v311 = 0;
              }

              if (v309 != v310)
              {
                v307 = 2;
                v311 = 5;
              }

              if (v311)
              {
                break;
              }

              if (v309 == v310)
              {
                ++v308;
              }

              if (++v18 == a3)
              {
                v307 = 1;
                v18 = a3;
                *a1 = v308;
                goto LABEL_1036;
              }
            }

            *a1 = 0;
LABEL_1036:
            if (!v307)
            {
              v31 = v18 + 1;
              LOBYTE(v32) = 15;
              goto LABEL_1056;
            }

            if (v307 == 1)
            {
              return 202;
            }
          }

          else
          {
            if (v301 != 73)
            {
              goto LABEL_1420;
            }

            ++i;
LABEL_1009:
            if (i == a3)
            {
              return 201;
            }

            v18 = i;
            v302 = 0;
            v303 = *a1;
            while (1)
            {
              v304 = *v18;
              v305 = llparse_blob55[v303];
              if (v303 == 1)
              {
                v302 = 0;
                v306 = 5;
              }

              else
              {
                v306 = 0;
              }

              if (v304 != v305)
              {
                v302 = 2;
                v306 = 5;
              }

              if (v306)
              {
                break;
              }

              if (v304 == v305)
              {
                ++v303;
              }

              if (++v18 == a3)
              {
                v302 = 1;
                v18 = a3;
                *a1 = v303;
                goto LABEL_1038;
              }
            }

            *a1 = 0;
LABEL_1038:
            if (!v302)
            {
              v31 = v18 + 1;
              LOBYTE(v32) = 32;
              goto LABEL_1056;
            }

            if (v302 == 1)
            {
              return 201;
            }
          }

          break;
        case 'B':
          ++i;
LABEL_989:
          if (i == a3)
          {
            return 200;
          }

          v18 = i;
          v296 = 0;
          v297 = *a1;
          while (1)
          {
            v298 = *v18;
            v299 = llparse_blob54[v297];
            if (v297 == 2)
            {
              v296 = 0;
              v300 = 5;
            }

            else
            {
              v300 = 0;
            }

            if (v298 != v299)
            {
              v296 = 2;
              v300 = 5;
            }

            if (v300)
            {
              break;
            }

            if (v298 == v299)
            {
              ++v297;
            }

            if (++v18 == a3)
            {
              v296 = 1;
              v18 = a3;
              *a1 = v297;
              goto LABEL_1002;
            }
          }

          *a1 = 0;
LABEL_1002:
          if (!v296)
          {
            v31 = v18 + 1;
            LOBYTE(v32) = 18;
            goto LABEL_1056;
          }

          if (v296 == 1)
          {
            return 200;
          }

          break;
        default:
          goto LABEL_1420;
      }

      goto LABEL_1420;
    case 207:
      goto LABEL_63;
    case 208:
      goto LABEL_61;
    case 209:
      goto LABEL_214;
    case 210:
      goto LABEL_199;
    case 211:
      goto LABEL_197;
    case 212:
      goto LABEL_189;
    case 213:
      goto LABEL_182;
    case 214:
      goto LABEL_177;
    case 215:
      goto LABEL_172;
    case 216:
      goto LABEL_169;
    case 217:
      goto LABEL_165;
    case 220:
      goto LABEL_124;
    case 222:
      goto LABEL_121;
    case 224:
      goto LABEL_118;
    case 225:
      goto LABEL_116;
    case 226:
      goto LABEL_23;
    case 228:
      goto LABEL_47;
    case 229:
      goto LABEL_115;
    case 230:
      goto LABEL_88;
    case 231:
      goto LABEL_43;
    case 232:
      goto LABEL_40;
    case 233:
      goto LABEL_38;
    case 234:
      goto LABEL_36;
    case 235:
      goto LABEL_21;
    case 236:
      goto LABEL_17;
    case 237:
      goto LABEL_3;
    default:
      goto LABEL_1600;
  }
}
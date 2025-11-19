void __nw_socks5_server_register_udp_associate_request_block_invoke_2(uint64_t a1)
{
  if (!*(*(a1 + 32) + 88))
  {
    v2 = nw_dictionary_create();
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    *(v3 + 88) = v2;
  }

  hostname = nw_endpoint_get_hostname(*(a1 + 40));
  if (nw_endpoint_get_address_family(*(a1 + 40)) == 30)
  {
    v6 = ".";
  }

  else
  {
    v6 = ":";
  }

  port = nw_endpoint_get_port(*(a1 + 40));
  v8 = *(a1 + 40);
  v9 = v8;
  if (v8)
  {
    _nw_endpoint_get_description(v8);
  }

  v10 = xpc_string_create_with_format("%s%s%u", hostname, v6, port);
  v11 = *(*(a1 + 32) + 88);
  string_ptr = xpc_string_get_string_ptr(v10);
  v13 = nw_dictionary_copy_value(v11, string_ptr);
  v14 = *(a1 + 32);
  if (v13)
  {
    v15 = v14[4];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __nw_socks5_server_register_udp_associate_request_block_invoke_4;
    v27[3] = &unk_1E6A31F98;
    v16 = &v28;
    v28 = v14;
    v29 = *(a1 + 48);
    v30 = v10;
    v31 = *(a1 + 56);
    v32 = *(a1 + 64);
    v17 = v13;
    v18 = v15;
    v19 = v27;
    v20 = v17[5];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __nw_socks5_connection_validate_udp_association_block_invoke_2;
    block[3] = &unk_1E6A39AE8;
    v21 = v17;
    v36 = v21;
    v22 = v18;
    v37 = v22;
    v23 = v19;
    v38 = v23;
    dispatch_async(v20, block);
  }

  else
  {
    v24 = v14[11];
    v25 = xpc_string_get_string_ptr(v10);
    nw_dictionary_set_value(v24, v25, *(a1 + 48));
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __nw_socks5_server_register_udp_associate_request_block_invoke_3;
    v33[3] = &unk_1E6A3CE48;
    v16 = &v34;
    v26 = *(a1 + 56);
    v34 = *(a1 + 64);
    dispatch_async(v26, v33);
  }
}

void __nw_socks5_server_register_udp_associate_request_block_invoke_4(uint64_t a1, char a2)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __nw_socks5_server_register_udp_associate_request_block_invoke_5;
  v11[3] = &unk_1E6A356A8;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 40);
  v15 = a2;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v12 = v10;
  v13 = v9;
  v14 = *(a1 + 64);
  os_unfair_lock_lock(v4 + 6);
  __nw_socks5_server_register_udp_associate_request_block_invoke_5(v11);
  os_unfair_lock_unlock(v4 + 6);
}

void __nw_socks5_server_register_udp_associate_request_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 72))
  {
    v3 = *(v1 + 80);
    v4 = *(a1 + 40);
    v5 = !v3 || v4 == 0;
    if (!v5 && _nw_array_contains_object(v3, v4))
    {
      v6 = *(a1 + 72) ^ 1;
      if ((*(a1 + 72) & 1) == 0)
      {
        v7 = *(*(a1 + 32) + 88);
        string_ptr = xpc_string_get_string_ptr(*(a1 + 48));
        nw_dictionary_set_value(v7, string_ptr, *(a1 + 40));
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __nw_socks5_server_register_udp_associate_request_block_invoke_6;
      v10[3] = &unk_1E6A3B8C0;
      v9 = *(a1 + 56);
      v11 = *(a1 + 64);
      v12 = v6;
      dispatch_async(v9, v10);
    }
  }
}

void nw_socks5_server_start(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a1;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v24 = "nw_socks5_server_start";
      v25 = 2114;
      v26 = v2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ start", buf, 0x16u);
    }

    v5 = v2[9];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __nw_socks5_server_start_block_invoke;
    handler[3] = &unk_1E6A3D820;
    v6 = v2;
    v20 = v6;
    nw_listener_set_state_changed_handler(v5, handler);
    v7 = v2[9];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __nw_socks5_server_start_block_invoke_10;
    v17[3] = &unk_1E6A395E8;
    v8 = v6;
    v18 = v8;
    nw_listener_set_new_connection_handler(v7, v17);
    nw_listener_set_queue(v2[9], v8[4]);
    nw_listener_start(v2[9]);
    v10 = v8[2];
    v9 = (v8 + 2);
    if (!v10)
    {
      objc_storeStrong(v9, a1);
    }

    goto LABEL_7;
  }

  *buf = 136446210;
  v24 = "nw_socks5_server_start";
  v11 = _os_log_send_and_compose_impl();

  v22 = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v11, &v22, &v21))
  {
    if (v22 == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = v22;
      if (os_log_type_enabled(v12, v22))
      {
        *buf = 136446210;
        v24 = "nw_socks5_server_start";
        v14 = "%{public}s called with null server";
LABEL_21:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }
    }

    else
    {
      if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = v22;
        v16 = os_log_type_enabled(v12, v22);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v24 = "nw_socks5_server_start";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (!v16)
        {
          goto LABEL_22;
        }

        *buf = 136446210;
        v24 = "nw_socks5_server_start";
        v14 = "%{public}s called with null server, no backtrace";
        goto LABEL_21;
      }

      v12 = __nwlog_obj();
      v13 = v22;
      if (os_log_type_enabled(v12, v22))
      {
        *buf = 136446210;
        v24 = "nw_socks5_server_start";
        v14 = "%{public}s called with null server, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_22:
  }

LABEL_23:
  if (v11)
  {
    free(v11);
  }

LABEL_7:
}

void __nw_socks5_server_start_block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __nw_socks5_server_start_block_invoke_2;
  v8[3] = &unk_1E6A3D7F8;
  v11 = a2;
  v9 = v6;
  v10 = v5;
  v7 = v5;
  os_unfair_lock_lock(v6 + 6);
  __nw_socks5_server_start_block_invoke_2(v8);
  os_unfair_lock_unlock(v6 + 6);
}

uint64_t __Block_byref_object_copy__39483(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL __nw_socks5_server_start_block_invoke_13(uint64_t a1, char *string, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4 == a3)
  {
    v6 = xpc_string_create(string);
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return v4 != a3;
}

void __nw_socks5_server_start_block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4[7];
  if (v6)
  {
    v7 = _Block_copy(v6);
    if (v2 == 4)
    {
      v8 = v4[7];
      v4[7] = 0;
    }

    v9 = v4[6];
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = __nw_socks5_server_call_state_handler_locked_block_invoke;
    v33 = &unk_1E6A3D908;
    v35 = v7;
    v36 = v2;
    v34 = v5;
    v10 = v7;
    dispatch_async(v9, block);
  }

  if (*(a1 + 48) == 3)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = v11;
      v14 = v12[8];
      if (v14)
      {
        v15 = v12;
        v16 = _Block_copy(v14);
        v17 = v15[6];
        *block = MEMORY[0x1E69E9820];
        *&block[8] = 3221225472;
        *&block[16] = __nw_socks5_server_call_error_handler_locked_block_invoke;
        v33 = &unk_1E6A3D710;
        v35 = v16;
        v34 = v13;
        v18 = v16;
        dispatch_async(v17, block);
        v19 = v12[8];
        v12[8] = 0;
      }

      nw_socks5_server_cancel_locked(*(a1 + 32));
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    *block = 136446210;
    *&block[4] = "nw_socks5_server_start_block_invoke_2";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v21, &type, &v30))
    {
      goto LABEL_24;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *block = 136446210;
        *&block[4] = "nw_socks5_server_start_block_invoke";
        v24 = "%{public}s listener reported state of failed with NULL error";
LABEL_21:
        v28 = v22;
        v29 = v23;
LABEL_22:
        _os_log_impl(&dword_181A37000, v28, v29, v24, block, 0xCu);
      }
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v26 = type;
      v27 = os_log_type_enabled(v22, type);
      if (backtrace_string)
      {
        if (v27)
        {
          *block = 136446466;
          *&block[4] = "nw_socks5_server_start_block_invoke";
          *&block[12] = 2082;
          *&block[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v26, "%{public}s listener reported state of failed with NULL error, dumping backtrace:%{public}s", block, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v27)
      {
        *block = 136446210;
        *&block[4] = "nw_socks5_server_start_block_invoke";
        v24 = "%{public}s listener reported state of failed with NULL error, no backtrace";
        v28 = v22;
        v29 = v26;
        goto LABEL_22;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *block = 136446210;
        *&block[4] = "nw_socks5_server_start_block_invoke";
        v24 = "%{public}s listener reported state of failed with NULL error, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_24:
    if (v21)
    {
      free(v21);
    }
  }
}

void nw_socks5_server_cancel_locked(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136446466;
    v16 = "nw_socks5_server_cancel_locked";
    v17 = 2048;
    v18 = v1;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %p", &v15, 0x16u);
  }

  v3 = *(v1 + 8);
  *(v1 + 8) = 0;

  v4 = *(v1 + 9);
  if (v4)
  {
    nw_listener_cancel(v4);
    v5 = *(v1 + 9);
    *(v1 + 9) = 0;
  }

  nw_socks5_server_cancel_connections_locked(v1);
  v6 = *(v1 + 15);
  if (v6)
  {
    dispatch_source_cancel(v6);
    if ((*(v1 + 136) & 2) == 0)
    {
      *(v1 + 136) |= 2u;
      dispatch_resume(*(v1 + 15));
    }

    v7 = *(v1 + 15);
    *(v1 + 15) = 0;
  }

  v8 = *(v1 + 32);
  if (v8)
  {
    IOPMAssertionRelease(v8);
    v9 = mach_continuous_time();
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(v1 + 32);
      v13 = nw_delta_nanos(*(v1 + 14), v10);
      v16 = "nw_socks5_server_cancel_locked";
      v17 = 2112;
      v15 = 136446978;
      v18 = v1;
      v19 = 1024;
      v20 = v12;
      v21 = 2048;
      v22 = v13 / 0x3B9ACA00;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s %@ released power assertion: %u after %llus", &v15, 0x26u);
    }

    *(v1 + 14) = v10;
    *(v1 + 32) = 0;
  }

  v14 = *(v1 + 2);
  if (v14)
  {
    *(v1 + 2) = 0;
  }
}

void nw_socks5_server_cancel(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v3 = v2;
  if (v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v16 = "nw_socks5_server_cancel";
      v17 = 2114;
      v18 = v1;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ cancel", buf, 0x16u);
    }

    v4 = v1[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __nw_socks5_server_cancel_block_invoke;
    block[3] = &unk_1E6A3D868;
    v12 = v1;
    dispatch_async(v4, block);

    goto LABEL_5;
  }

  *buf = 136446210;
  v16 = "nw_socks5_server_cancel";
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
        v16 = "nw_socks5_server_cancel";
        v8 = "%{public}s called with null server";
LABEL_19:
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
            v16 = "nw_socks5_server_cancel";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v10)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v16 = "nw_socks5_server_cancel";
        v8 = "%{public}s called with null server, no backtrace";
        goto LABEL_19;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v16 = "nw_socks5_server_cancel";
        v8 = "%{public}s called with null server, backtrace limit exceeded";
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

LABEL_5:
}

void __nw_socks5_server_cancel_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __nw_socks5_server_cancel_block_invoke_2;
  v2[3] = &unk_1E6A3D868;
  v3 = v1;
  os_unfair_lock_lock(v1 + 6);
  __nw_socks5_server_cancel_block_invoke_2(v2);
  os_unfair_lock_unlock(v1 + 6);
}

char *nw_shoes_server_create(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = nw_socks5_server_create(a1, a2);
  v3 = v2;
  if (v2)
  {
    v2[136] |= 1u;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "nw_shoes_server_create";
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ created", &v7, 0x16u);
    }

    v5 = v3;
  }

  return v3;
}

void nw_shoes_server_set_error_handler(void *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __nw_shoes_server_set_error_handler_block_invoke;
  v5[3] = &unk_1E6A39D90;
  v6 = v3;
  v4 = v3;
  nw_socks5_server_set_error_handler(a1, v5);
}

void __nw_shoes_server_set_error_handler_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v4 = nw_error_copy_cf_error(v3);
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 32) + 16))();
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t nw_shoes_server_fillout_statistics(void *a1, void *a2, unint64_t a3, char a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_socks5_server_fillout_statistics";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v14, &type, &v23))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socks5_server_fillout_statistics";
        v17 = "%{public}s called with null server";
LABEL_39:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }

LABEL_40:

LABEL_41:
      if (v14)
      {
        free(v14);
      }

      goto LABEL_11;
    }

    if (v23 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socks5_server_fillout_statistics";
        v17 = "%{public}s called with null server, backtrace limit exceeded";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v20 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        *&buf[4] = "nw_socks5_server_fillout_statistics";
        v17 = "%{public}s called with null server, no backtrace";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v20)
    {
      *buf = 136446466;
      *&buf[4] = "nw_socks5_server_fillout_statistics";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v21 = "%{public}s called with null server, dumping backtrace:%{public}s";
LABEL_29:
      _os_log_impl(&dword_181A37000, v15, v16, v21, buf, 0x16u);
    }

LABEL_30:

    free(backtrace_string);
    goto LABEL_41;
  }

  if (!a2)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_socks5_server_fillout_statistics";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v14, &type, &v23))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socks5_server_fillout_statistics";
        v17 = "%{public}s called with null out_stats";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v23 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socks5_server_fillout_statistics";
        v17 = "%{public}s called with null out_stats, backtrace limit exceeded";
        goto LABEL_39;
      }

      goto LABEL_40;
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
        *&buf[4] = "nw_socks5_server_fillout_statistics";
        v17 = "%{public}s called with null out_stats, no backtrace";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v22)
    {
      *buf = 136446466;
      *&buf[4] = "nw_socks5_server_fillout_statistics";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v21 = "%{public}s called with null out_stats, dumping backtrace:%{public}s";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (a3 != 8)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_socks5_server_fillout_statistics";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2048;
      v26 = 8;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s Unsupported stats size: %zu, expected %zu", buf, 0x20u);
    }

    if (a3 >= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = a3;
    }

    bzero(a2, v11);
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __nw_socks5_server_fillout_statistics_block_invoke;
  v26 = &unk_1E6A3CD08;
  v28 = a2;
  v27 = v7;
  v29 = a4;
  os_unfair_lock_lock(v8 + 6);
  __nw_socks5_server_fillout_statistics_block_invoke(buf);
  os_unfair_lock_unlock(v8 + 6);

  v9 = 1;
LABEL_12:

  return v9;
}

uint64_t __nw_socks5_server_fillout_statistics_block_invoke(uint64_t result)
{
  **(result + 40) = *(*(result + 32) + 104);
  if (*(result + 48) == 1)
  {
    *(*(result + 32) + 104) = 0;
  }

  return result;
}

void nw_endpoint_fallback_start_fallback_child(NWConcrete_nw_endpoint_handler *a1)
{
  v145 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    mode = v3->mode;

    if (mode != 4)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (mode > 5)
        {
          v22 = "unknown-mode";
        }

        else
        {
          v22 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v132 = "nw_endpoint_fallback_start_fallback_child";
        v133 = 2082;
        v134 = v22;
        v135 = 2082;
        v136 = "fallback";
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }

      goto LABEL_121;
    }

    v5 = nw_endpoint_handler_copy_fallback(v3);
    v7 = v5;
    if ((*(v5 + 108) & 0x40) == 0)
    {
      v8 = *(v5 + 9);
      if (v8)
      {
        nw_queue_cancel_source(v8, v6);
        v7[9].isa = 0;
      }

      isa = v7[5].isa;
      if (isa)
      {
        v10 = isa;
        v11 = *(v10 + 30);

        if (v11 == 5)
        {
          v12 = v3;
          v13 = *(v12 + 284);

          if ((v13 & 0x40) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v14 = gconnectionLogObj;
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_120;
            }

            v123 = v14;
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
            if (v19)
            {
              logging_description = _nw_endpoint_get_logging_description(v19);
            }

            else
            {
              logging_description = "<NULL>";
            }

            id_str = v15->id_str;

            v86 = v16;
            v87 = v86;
            v88 = v86[30];
            if (v88 > 5)
            {
              v89 = "unknown-state";
            }

            else
            {
              v89 = off_1E6A31048[v88];
            }

            v90 = v87;
            v91 = v90;
            v92 = v3->mode;
            if (v92 > 2)
            {
              switch(v92)
              {
                case 3:
                  v93 = "proxy";
                  goto LABEL_119;
                case 4:
                  v93 = "fallback";
                  goto LABEL_119;
                case 5:
                  v93 = "transform";
                  goto LABEL_119;
              }
            }

            else
            {
              switch(v92)
              {
                case 0:
                  v93 = "path";
                  goto LABEL_119;
                case 1:
                  v93 = "resolver";
                  goto LABEL_119;
                case 2:
                  v93 = nw_endpoint_flow_mode_string(v90[33]);
LABEL_119:

                  v96 = v91;
                  os_unfair_lock_lock(v96 + 28);
                  v97 = v96[8];
                  os_unfair_lock_unlock(v96 + 28);

                  *buf = 136447746;
                  v132 = "nw_endpoint_fallback_start_fallback_child";
                  v133 = 2082;
                  v134 = id_str;
                  v135 = 2082;
                  v136 = v18;
                  v137 = 2082;
                  v138 = logging_description;
                  v139 = 2082;
                  v140 = v89;
                  v141 = 2082;
                  v142 = v93;
                  v143 = 2114;
                  v144 = v97;
                  v14 = v123;
                  _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Fallback child already cancelled", buf, 0x48u);

                  goto LABEL_120;
              }
            }

            v93 = "unknown-mode";
            goto LABEL_119;
          }

LABEL_121:

          goto LABEL_122;
        }

        if (LODWORD(v7[13].isa))
        {
          v41 = BYTE4(v7[13].isa);
          if ((v41 & 0x20) != 0)
          {
            v14 = nw_endpoint_handler_copy_current_path(v7[4].isa);
            v42 = nw_path_copy_direct_interface(v14);
            v43 = v42;
            if (v42 && _nw_interface_get_type(v42) == 2)
            {
              minimize_logging = nw_endpoint_handler_get_minimize_logging(v3);
              logging_disabled = nw_endpoint_handler_get_logging_disabled(v3);
              if (minimize_logging)
              {
                if (logging_disabled)
                {
                  goto LABEL_52;
                }

                v128 = v14;
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v112 = gconnectionLogObj;
                if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
                {
                  loga = nw_endpoint_handler_get_id_string(v3);
                  v120 = nw_endpoint_handler_dry_run_string(v3);
                  v113 = nw_endpoint_handler_copy_endpoint(v3);
                  v114 = nw_endpoint_get_logging_description(v113);
                  v115 = nw_endpoint_handler_state_string(v3);
                  v116 = nw_endpoint_handler_mode_string(v3);
                  v117 = nw_endpoint_handler_copy_current_path(v3);
                  *buf = 136447746;
                  v132 = "nw_endpoint_fallback_start_fallback_child";
                  v133 = 2082;
                  v134 = loga;
                  v135 = 2082;
                  v136 = v120;
                  v137 = 2082;
                  v138 = v114;
                  v139 = 2082;
                  v140 = v115;
                  v141 = 2082;
                  v142 = v116;
                  v143 = 2114;
                  v144 = v117;
                  v46 = v112;
                  _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting fallback child, because the primary child already uses cellular", buf, 0x48u);

                  v14 = v128;
                }

                else
                {
                  v46 = v112;
                }
              }

              else
              {
                if (logging_disabled)
                {
LABEL_52:
                  nw_endpoint_handler_cancel(v7[5].isa, 0, 1);

LABEL_120:
                  goto LABEL_121;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v46 = gconnectionLogObj;
                if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                {
                  id_string = nw_endpoint_handler_get_id_string(v3);
                  log = v46;
                  v118 = nw_endpoint_handler_dry_run_string(v3);
                  v119 = nw_endpoint_handler_copy_endpoint(v3);
                  v48 = id_string;
                  v49 = nw_endpoint_get_logging_description(v119);
                  v50 = nw_endpoint_handler_state_string(v3);
                  v51 = nw_endpoint_handler_mode_string(v3);
                  v52 = nw_endpoint_handler_copy_current_path(v3);
                  *buf = 136447746;
                  v132 = "nw_endpoint_fallback_start_fallback_child";
                  v133 = 2082;
                  v134 = v48;
                  v135 = 2082;
                  v136 = v118;
                  v137 = 2082;
                  v138 = v49;
                  v139 = 2082;
                  v140 = v50;
                  v141 = 2082;
                  v142 = v51;
                  v143 = 2114;
                  v144 = v52;
                  v46 = log;
                  _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting fallback child, because the primary child already uses cellular", buf, 0x48u);
                }
              }

              goto LABEL_52;
            }

            v41 = BYTE4(v7[13].isa);
          }

          BYTE4(v7[13].isa) = v41 | 0x40;
          v3->event = 131077;
          nw_endpoint_handler_report(v3, 0, &v3->event.domain, 0);
          nw_endpoint_handler_start(v7[5].isa);
          goto LABEL_121;
        }

        v62 = v3;
        v63 = *(v62 + 284);

        if ((v63 & 0x20) != 0)
        {
          if (nw_endpoint_handler_get_logging_disabled(v62))
          {
            goto LABEL_73;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v66 = gconnectionLogObj;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
          {
            v127 = nw_endpoint_handler_get_id_string(v62);
            v106 = nw_endpoint_handler_dry_run_string(v62);
            v107 = nw_endpoint_handler_copy_endpoint(v62);
            v108 = nw_endpoint_get_logging_description(v107);
            v109 = nw_endpoint_handler_state_string(v62);
            v110 = nw_endpoint_handler_mode_string(v62);
            v111 = nw_endpoint_handler_copy_current_path(v62);
            *buf = 136447746;
            v132 = "nw_endpoint_fallback_start_fallback_child";
            v133 = 2082;
            v134 = v127;
            v135 = 2082;
            v136 = v106;
            v137 = 2082;
            v138 = v108;
            v139 = 2082;
            v140 = v109;
            v141 = 2082;
            v142 = v110;
            v143 = 2114;
            v144 = v111;
            _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting fallback child, disposition is set to no", buf, 0x48u);
          }
        }

        else
        {
          v64 = v62;
          v65 = *(v62 + 284);

          if ((v65 & 0x40) != 0)
          {
LABEL_73:
            nw_endpoint_handler_cancel(v7[5].isa, 0, 1);
            goto LABEL_121;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v66 = gconnectionLogObj;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            v67 = nw_endpoint_handler_get_id_string(v64);
            v68 = nw_endpoint_handler_dry_run_string(v64);
            v126 = v66;
            v69 = nw_endpoint_handler_copy_endpoint(v64);
            v70 = nw_endpoint_get_logging_description(v69);
            v71 = nw_endpoint_handler_state_string(v64);
            v72 = nw_endpoint_handler_mode_string(v64);
            v73 = nw_endpoint_handler_copy_current_path(v64);
            *buf = 136447746;
            v132 = "nw_endpoint_fallback_start_fallback_child";
            v133 = 2082;
            v134 = v67;
            v135 = 2082;
            v136 = v68;
            v137 = 2082;
            v138 = v70;
            v139 = 2082;
            v140 = v71;
            v141 = 2082;
            v142 = v72;
            v143 = 2114;
            v144 = v73;
            v66 = v126;
            _os_log_impl(&dword_181A37000, v126, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Not starting fallback child, disposition is set to no", buf, 0x48u);
          }
        }

        goto LABEL_73;
      }

      v32 = v3;
      v33 = *(v32 + 284);

      if ((v33 & 0x40) != 0)
      {
        goto LABEL_121;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v14 = gconnectionLogObj;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_120;
      }

      v125 = v14;
      v34 = v32;

      v35 = v34;
      v36 = *(v32 + 284);

      if (v36)
      {
        v37 = "dry-run ";
      }

      else
      {
        v37 = "";
      }

      v38 = nw_endpoint_handler_copy_endpoint(v35);
      v39 = v38;
      if (v38)
      {
        v40 = _nw_endpoint_get_logging_description(v38);
      }

      else
      {
        v40 = "<NULL>";
      }

      v76 = v34->id_str;

      v77 = v35;
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
      v83 = v3->mode;
      if (v83 > 2)
      {
        switch(v83)
        {
          case 3:
            v84 = "proxy";
            goto LABEL_113;
          case 4:
            v84 = "fallback";
            goto LABEL_113;
          case 5:
            v84 = "transform";
            goto LABEL_113;
        }
      }

      else
      {
        switch(v83)
        {
          case 0:
            v84 = "path";
            goto LABEL_113;
          case 1:
            v84 = "resolver";
            goto LABEL_113;
          case 2:
            v84 = nw_endpoint_flow_mode_string(v81[33]);
LABEL_113:

            v94 = v82;
            os_unfair_lock_lock(v94 + 28);
            v95 = v94[8];
            os_unfair_lock_unlock(v94 + 28);

            *buf = 136447746;
            v132 = "nw_endpoint_fallback_start_fallback_child";
            v133 = 2082;
            v134 = v76;
            v135 = 2082;
            v136 = v37;
            v137 = 2082;
            v138 = v40;
            v139 = 2082;
            v140 = v80;
            v141 = 2082;
            v142 = v84;
            v143 = 2114;
            v144 = v95;
            v14 = v125;
            _os_log_impl(&dword_181A37000, v125, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No fallback child found", buf, 0x48u);

            goto LABEL_120;
        }
      }

      v84 = "unknown-mode";
      goto LABEL_113;
    }

    v23 = v3;
    v24 = *(v23 + 284);

    if ((v24 & 0x40) != 0)
    {
      goto LABEL_121;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v14 = gconnectionLogObj;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_120;
    }

    v124 = v14;
    v25 = v23;

    v26 = v25;
    v27 = *(v23 + 284);

    if (v27)
    {
      v28 = "dry-run ";
    }

    else
    {
      v28 = "";
    }

    v29 = nw_endpoint_handler_copy_endpoint(v26);
    v30 = v29;
    if (v29)
    {
      v31 = _nw_endpoint_get_logging_description(v29);
    }

    else
    {
      v31 = "<NULL>";
    }

    v53 = v25->id_str;

    v54 = v26;
    v55 = v54;
    v56 = v54[30];
    if (v56 > 5)
    {
      v57 = "unknown-state";
    }

    else
    {
      v57 = off_1E6A31048[v56];
    }

    v58 = v55;
    v59 = v58;
    v60 = v3->mode;
    if (v60 > 2)
    {
      switch(v60)
      {
        case 3:
          v61 = "proxy";
          goto LABEL_79;
        case 4:
          v61 = "fallback";
          goto LABEL_79;
        case 5:
          v61 = "transform";
          goto LABEL_79;
      }
    }

    else
    {
      switch(v60)
      {
        case 0:
          v61 = "path";
          goto LABEL_79;
        case 1:
          v61 = "resolver";
          goto LABEL_79;
        case 2:
          v61 = nw_endpoint_flow_mode_string(v58[33]);
LABEL_79:

          v74 = v59;
          os_unfair_lock_lock(v74 + 28);
          v75 = v74[8];
          os_unfair_lock_unlock(v74 + 28);

          *buf = 136447746;
          v132 = "nw_endpoint_fallback_start_fallback_child";
          v133 = 2082;
          v134 = v53;
          v135 = 2082;
          v136 = v28;
          v137 = 2082;
          v138 = v31;
          v139 = 2082;
          v140 = v57;
          v141 = 2082;
          v142 = v61;
          v143 = 2114;
          v144 = v75;
          v14 = v124;
          _os_log_impl(&dword_181A37000, v124, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Already started fallback, skipping", buf, 0x48u);

          goto LABEL_120;
      }
    }

    v61 = "unknown-mode";
    goto LABEL_79;
  }

  v98 = __nwlog_obj();
  *buf = 136446210;
  v132 = "nw_endpoint_fallback_start_fallback_child";
  v99 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v129 = 0;
  if (__nwlog_fault(v99, &type, &v129))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v100 = __nwlog_obj();
      v101 = type;
      if (os_log_type_enabled(v100, type))
      {
        *buf = 136446210;
        v132 = "nw_endpoint_fallback_start_fallback_child";
        _os_log_impl(&dword_181A37000, v100, v101, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v129 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v100 = __nwlog_obj();
      v103 = type;
      v104 = os_log_type_enabled(v100, type);
      if (backtrace_string)
      {
        if (v104)
        {
          *buf = 136446466;
          v132 = "nw_endpoint_fallback_start_fallback_child";
          v133 = 2082;
          v134 = backtrace_string;
          _os_log_impl(&dword_181A37000, v100, v103, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_139;
      }

      if (v104)
      {
        *buf = 136446210;
        v132 = "nw_endpoint_fallback_start_fallback_child";
        _os_log_impl(&dword_181A37000, v100, v103, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v100 = __nwlog_obj();
      v105 = type;
      if (os_log_type_enabled(v100, type))
      {
        *buf = 136446210;
        v132 = "nw_endpoint_fallback_start_fallback_child";
        _os_log_impl(&dword_181A37000, v100, v105, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_139:
  if (v99)
  {
    free(v99);
  }

LABEL_122:
}

void nw_endpoint_fallback_start_post_transport_timer(NWConcrete_nw_endpoint_handler *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3 = nw_endpoint_handler_copy_fallback(v1);
  v4 = v3[10];
  if (v4)
  {
    nw_queue_cancel_source(v4, v2);
    v3[10] = 0;
  }

  int64_with_default = networkd_settings_get_int64_with_default(nw_setting_tcpconn_fallback_post_transport_timeout, 3000);
  if ((nw_endpoint_handler_get_logging_disabled(v1) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v6 = gconnectionLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v28 = int64_with_default;
      id_string = nw_endpoint_handler_get_id_string(v1);
      v8 = nw_endpoint_handler_dry_run_string(v1);
      v9 = nw_endpoint_handler_copy_endpoint(v1);
      v10 = v9;
      if (v9)
      {
        logging_description = _nw_endpoint_get_logging_description(v9);
        v12 = v3;
      }

      else
      {
        v12 = v3;
        logging_description = "<NULL>";
      }

      v13 = nw_endpoint_handler_state_string(v1);
      v14 = nw_endpoint_handler_mode_string(v1);
      v15 = nw_endpoint_handler_copy_current_path(v1);
      *buf = 136448002;
      v34 = "nw_endpoint_fallback_start_post_transport_timer";
      v35 = 2082;
      v36 = id_string;
      v37 = 2082;
      v38 = v8;
      v39 = 2082;
      v40 = logging_description;
      v41 = 2082;
      v42 = v13;
      v43 = 2082;
      v44 = v14;
      v45 = 2114;
      v46 = v15;
      v47 = 2048;
      int64_with_default = v28;
      v48 = v28;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] starting post-transport fallback timer for %llums", buf, 0x52u);

      v3 = v12;
    }
  }

  v16 = nw_endpoint_handler_copy_context(v1);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = ___ZL47nw_endpoint_fallback_start_post_transport_timerP30NWConcrete_nw_endpoint_handler_block_invoke;
  v31[3] = &unk_1E6A3D868;
  v17 = v1;
  v32 = v17;
  v3[10] = nw_queue_context_create_source(v16, 2, 3, 0, v31, 0);

  v18 = v3[10];
  if (v18)
  {
    v19 = dispatch_time(0x8000000000000000, 1000000 * int64_with_default);
    if (*v18)
    {
      dispatch_source_set_timer(*v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    }

    else
    {
      *(v18 + 32) = v19;
      *(v18 + 40) = -1;
      if (*(v18 + 48) == 1 && *(v18 + 49) == 1)
      {
        nw_queue_source_run_timer(v18, v19);
      }
    }

    nw_queue_activate_source(v3[10], v19);
    goto LABEL_26;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v20 = gLogObj;
  *buf = 136446210;
  v34 = "nw_endpoint_fallback_start_post_transport_timer";
  v21 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (!__nwlog_fault(v21, &type, &v29))
  {
    goto LABEL_20;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    v23 = type;
    if (os_log_type_enabled(v22, type))
    {
      *buf = 136446210;
      v34 = "nw_endpoint_fallback_start_post_transport_timer";
      _os_log_impl(&dword_181A37000, v22, v23, "%{public}s nw_queue_context_create_source(timer) failed", buf, 0xCu);
    }

LABEL_19:

LABEL_20:
    if (!v21)
    {
      goto LABEL_26;
    }

LABEL_21:
    free(v21);
    goto LABEL_26;
  }

  if (v29 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    v27 = type;
    if (os_log_type_enabled(v22, type))
    {
      *buf = 136446210;
      v34 = "nw_endpoint_fallback_start_post_transport_timer";
      _os_log_impl(&dword_181A37000, v22, v27, "%{public}s nw_queue_context_create_source(timer) failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_19;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v22 = gLogObj;
  v25 = type;
  v26 = os_log_type_enabled(v22, type);
  if (!backtrace_string)
  {
    if (v26)
    {
      *buf = 136446210;
      v34 = "nw_endpoint_fallback_start_post_transport_timer";
      _os_log_impl(&dword_181A37000, v22, v25, "%{public}s nw_queue_context_create_source(timer) failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_19;
  }

  if (v26)
  {
    *buf = 136446466;
    v34 = "nw_endpoint_fallback_start_post_transport_timer";
    v35 = 2082;
    v36 = backtrace_string;
    _os_log_impl(&dword_181A37000, v22, v25, "%{public}s nw_queue_context_create_source(timer) failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v21)
  {
    goto LABEL_21;
  }

LABEL_26:
}

void nw_endpoint_fallback_start_usage_cap_timer(NWConcrete_nw_endpoint_handler *a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3 = nw_endpoint_handler_copy_fallback(v1);
  v4 = *(v3 + 11);
  if (v4)
  {
    nw_queue_cancel_source(v4, v2);
    *(v3 + 11) = 0;
  }

  *(v3 + 2) = networkd_settings_get_int64_with_default(nw_setting_tcpconn_fallback_usage_cap_interval, 3000);
  minimize_logging = nw_endpoint_handler_get_minimize_logging(v1);
  logging_disabled = nw_endpoint_handler_get_logging_disabled(v1);
  if (!minimize_logging)
  {
    if (logging_disabled)
    {
      goto LABEL_13;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      id_string = nw_endpoint_handler_get_id_string(v1);
      v9 = nw_endpoint_handler_dry_run_string(v1);
      v10 = nw_endpoint_handler_copy_endpoint(v1);
      v11 = v10;
      if (v10)
      {
        logging_description = _nw_endpoint_get_logging_description(v10);
      }

      else
      {
        logging_description = "<NULL>";
      }

      v13 = nw_endpoint_handler_state_string(v1);
      v14 = nw_endpoint_handler_mode_string(v1);
      v15 = nw_endpoint_handler_copy_current_path(v1);
      v16 = *(v3 + 1);
      v17 = *(v3 + 2);
      *buf = 136448258;
      v44 = "nw_endpoint_fallback_start_usage_cap_timer";
      v45 = 2082;
      v46 = id_string;
      v47 = 2082;
      v48 = v9;
      v49 = 2082;
      v50 = logging_description;
      v51 = 2082;
      v52 = v13;
      v53 = 2082;
      v54 = v14;
      v55 = 2114;
      v56 = v15;
      v57 = 2048;
      v58 = v16;
      v59 = 2048;
      v60 = v17;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] applying data cap of %llu to fallback child, checking every %llums", buf, 0x5Cu);
    }

    goto LABEL_12;
  }

  if ((logging_disabled & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v30 = nw_endpoint_handler_get_id_string(v1);
      v31 = nw_endpoint_handler_dry_run_string(v1);
      v32 = nw_endpoint_handler_copy_endpoint(v1);
      v33 = nw_endpoint_get_logging_description(v32);
      v34 = nw_endpoint_handler_state_string(v1);
      v35 = nw_endpoint_handler_mode_string(v1);
      v36 = nw_endpoint_handler_copy_current_path(v1);
      v37 = *(v3 + 1);
      v38 = *(v3 + 2);
      *buf = 136448258;
      v44 = "nw_endpoint_fallback_start_usage_cap_timer";
      v45 = 2082;
      v46 = v30;
      v47 = 2082;
      v48 = v31;
      v49 = 2082;
      v50 = v33;
      v51 = 2082;
      v52 = v34;
      v53 = 2082;
      v54 = v35;
      v55 = 2114;
      v56 = v36;
      v57 = 2048;
      v58 = v37;
      v59 = 2048;
      v60 = v38;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] applying data cap of %llu to fallback child, checking every %llums", buf, 0x5Cu);
    }

LABEL_12:
  }

LABEL_13:
  v18 = nw_endpoint_handler_copy_context(v1);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = ___ZL42nw_endpoint_fallback_start_usage_cap_timerP30NWConcrete_nw_endpoint_handler_block_invoke;
  v41[3] = &unk_1E6A3D868;
  v19 = v1;
  v42 = v19;
  *(v3 + 11) = nw_queue_context_create_source(v18, 2, 3, 0, v41, 0);

  v20 = *(v3 + 11);
  if (v20)
  {
    v21 = dispatch_time(0x8000000000000000, 1000000 * *(v3 + 2));
    if (*v20)
    {
      dispatch_source_set_timer(*v20, v21, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    }

    else
    {
      *(v20 + 32) = v21;
      *(v20 + 40) = -1;
      if (*(v20 + 48) == 1 && *(v20 + 49) == 1)
      {
        nw_queue_source_run_timer(v20, v21);
      }
    }

    nw_queue_activate_source(*(v3 + 11), v21);
    goto LABEL_39;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v22 = gLogObj;
  *buf = 136446210;
  v44 = "nw_endpoint_fallback_start_usage_cap_timer";
  v23 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (!__nwlog_fault(v23, &type, &v39))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    v25 = type;
    if (os_log_type_enabled(v24, type))
    {
      *buf = 136446210;
      v44 = "nw_endpoint_fallback_start_usage_cap_timer";
      _os_log_impl(&dword_181A37000, v24, v25, "%{public}s nw_queue_context_create_source(timer) failed", buf, 0xCu);
    }

LABEL_36:

LABEL_37:
    if (!v23)
    {
      goto LABEL_39;
    }

LABEL_38:
    free(v23);
    goto LABEL_39;
  }

  if (v39 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    v29 = type;
    if (os_log_type_enabled(v24, type))
    {
      *buf = 136446210;
      v44 = "nw_endpoint_fallback_start_usage_cap_timer";
      _os_log_impl(&dword_181A37000, v24, v29, "%{public}s nw_queue_context_create_source(timer) failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_36;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v24 = gLogObj;
  v27 = type;
  v28 = os_log_type_enabled(v24, type);
  if (!backtrace_string)
  {
    if (v28)
    {
      *buf = 136446210;
      v44 = "nw_endpoint_fallback_start_usage_cap_timer";
      _os_log_impl(&dword_181A37000, v24, v27, "%{public}s nw_queue_context_create_source(timer) failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_36;
  }

  if (v28)
  {
    *buf = 136446466;
    v44 = "nw_endpoint_fallback_start_usage_cap_timer";
    v45 = 2082;
    v46 = backtrace_string;
    _os_log_impl(&dword_181A37000, v24, v27, "%{public}s nw_queue_context_create_source(timer) failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v23)
  {
    goto LABEL_38;
  }

LABEL_39:
}

void sub_1826A6538(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void ___ZL42nw_endpoint_fallback_start_usage_cap_timerP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1)
{
  v207 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = v1;
  if (!v1)
  {
    v142 = __nwlog_obj();
    *buf = 136446210;
    v192 = "nw_endpoint_fallback_check_usage_cap";
    v143 = _os_log_send_and_compose_impl();

    v182[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v190[0]) = 0;
    if (__nwlog_fault(v143, v182, v190))
    {
      if (v182[0] == OS_LOG_TYPE_FAULT)
      {
        v144 = __nwlog_obj();
        v145 = v182[0];
        if (os_log_type_enabled(v144, v182[0]))
        {
          *buf = 136446210;
          v192 = "nw_endpoint_fallback_check_usage_cap";
          _os_log_impl(&dword_181A37000, v144, v145, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (LOBYTE(v190[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v144 = __nwlog_obj();
        v147 = v182[0];
        v148 = os_log_type_enabled(v144, v182[0]);
        if (backtrace_string)
        {
          if (v148)
          {
            *buf = 136446466;
            v192 = "nw_endpoint_fallback_check_usage_cap";
            v193 = 2082;
            v194 = backtrace_string;
            _os_log_impl(&dword_181A37000, v144, v147, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_194;
        }

        if (v148)
        {
          *buf = 136446210;
          v192 = "nw_endpoint_fallback_check_usage_cap";
          _os_log_impl(&dword_181A37000, v144, v147, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v144 = __nwlog_obj();
        v149 = v182[0];
        if (os_log_type_enabled(v144, v182[0]))
        {
          *buf = 136446210;
          v192 = "nw_endpoint_fallback_check_usage_cap";
          _os_log_impl(&dword_181A37000, v144, v149, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_194:
    if (v143)
    {
      free(v143);
    }

    goto LABEL_167;
  }

  v3 = v1;
  mode = v3->mode;

  if (mode == 4)
  {
    v177 = v2;
    v5 = nw_endpoint_handler_copy_fallback(v3);
    v188 = 0;
    v189 = 0;
    v187 = 0;
    if (nw_endpoint_handler_fillout_data_transfer_snapshot(*(v5 + 5), &v189, &v188, &v187, 2))
    {
      v6 = v189 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6 && v188 != 0)
    {
      v23 = *(v189 + 6);
      v24 = *(v5 + 1);
      v25 = v24 >= v23;
      v26 = v24 - v23;
      if (v25 && *(v189 + 9) <= v26)
      {
        v39 = *(v5 + 11);
        v40 = dispatch_time(0x8000000000000000, 1000000 * *(v5 + 2));
        nw_queue_set_timer_values(v39, v40, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
        goto LABEL_163;
      }

      v179 = v5;
      v27 = v3;
      v28 = (*(v27 + 284) & 0x20) == 0;

      if (!v28)
      {
        if (nw_endpoint_handler_get_logging_disabled(v27))
        {
LABEL_83:
          v70 = v27;
          v175 = v70[4];

          v190[0] = 0;
          v190[1] = 0;
          nw_parameters_get_e_proc_uuid(v175);
          nw_parameters_get_pid(v175);
          nw_parameters_get_effective_bundle_id(v175);
          v71 = nw_queue_copy_current_workloop();
          *v182 = MEMORY[0x1E69E9820];
          v183 = 3221225472;
          v184 = ___ZL36nw_endpoint_fallback_check_usage_capP30NWConcrete_nw_endpoint_handler_block_invoke;
          v185 = &unk_1E6A31FE8;
          v72 = v70;
          v186 = v72;
          v73 = _symptoms_daemon_fallback_subseq_disposition();

          if (v73)
          {
LABEL_162:

            v5 = v179;
LABEL_163:
            if (v187 == 1 && v189)
            {
              free(v189);
            }

            v2 = v177;
            goto LABEL_167;
          }

          v74 = v72;
          v75 = (*(v27 + 284) & 0x40) == 0;

          if (!v75)
          {
LABEL_159:
            v140 = v179;
            v141 = *(v179 + 11);
            if (v141)
            {
              nw_queue_cancel_source(v141, v76);
              v140 = v179;
              *(v179 + 11) = 0;
            }

            nw_endpoint_handler_cancel(*(v140 + 5), 0, 1);
            goto LABEL_162;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v169 = gconnectionLogObj;
          v77 = v74;

          v78 = v77;
          v79 = (*(v27 + 284) & 1) == 0;

          if (v79)
          {
            v80 = "";
          }

          else
          {
            v80 = "dry-run ";
          }

          v81 = nw_endpoint_handler_copy_endpoint(v78);
          v82 = v81;
          v166 = v80;
          if (v81)
          {
            logging_description = _nw_endpoint_get_logging_description(v81);
          }

          else
          {
            logging_description = "<NULL>";
          }

          v83 = v78;
          v84 = v83;
          v85 = v83[30];
          if (v85 > 5)
          {
            v86 = "unknown-state";
          }

          else
          {
            v86 = off_1E6A31048[v85];
          }

          v87 = v84;
          v88 = v87;
          v89 = v3->mode;
          if (v89 > 2)
          {
            if (v89 == 3)
            {
              v90 = "proxy";
              goto LABEL_110;
            }

            if (v89 != 4)
            {
              if (v89 == 5)
              {
                v90 = "transform";
                goto LABEL_110;
              }

              goto LABEL_107;
            }

            v90 = "fallback";
          }

          else
          {
            if (!v89)
            {
              v90 = "path";
              goto LABEL_110;
            }

            if (v89 != 1)
            {
              if (v89 == 2)
              {
                v90 = nw_endpoint_flow_mode_string(*(v87 + 33));
                goto LABEL_110;
              }

LABEL_107:
              v90 = "unknown-mode";
              goto LABEL_110;
            }

            v90 = "resolver";
          }

LABEL_110:

          v91 = v88;
          os_unfair_lock_lock(v91 + 28);
          v92 = *(v91 + 8);
          os_unfair_lock_unlock(v91 + 28);

          *buf = 136447746;
          v192 = "nw_endpoint_fallback_check_usage_cap";
          v193 = 2082;
          v164 = v77 + 184;
          v194 = v77 + 184;
          v195 = 2082;
          v196 = v166;
          v197 = 2082;
          v198 = logging_description;
          v199 = 2082;
          v200 = v86;
          v201 = 2082;
          v202 = v90;
          v203 = 2114;
          v204 = v92;
          v93 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v180 = 0;
          if (!__nwlog_fault(v93, &type, &v180))
          {
            goto LABEL_157;
          }

          if (type != OS_LOG_TYPE_FAULT)
          {
            if (v180 == 1)
            {
              v103 = __nw_create_backtrace_string();
              if (v103)
              {
                v104 = v103;
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v105 = gconnectionLogObj;
                v106 = type;
                if (os_log_type_enabled(v105, type))
                {
                  id_string = nw_endpoint_handler_get_id_string(v91);
                  v108 = nw_endpoint_handler_dry_run_string(v91);
                  v167 = nw_endpoint_handler_copy_endpoint(v91);
                  v171 = v93;
                  v109 = nw_endpoint_get_logging_description(v167);
                  v110 = nw_endpoint_handler_state_string(v91);
                  v111 = nw_endpoint_handler_mode_string(v91);
                  v112 = nw_endpoint_handler_copy_current_path(v91);
                  *buf = 136448002;
                  v192 = "nw_endpoint_fallback_check_usage_cap";
                  v193 = 2082;
                  v194 = id_string;
                  v195 = 2082;
                  v196 = v108;
                  v197 = 2082;
                  v198 = v109;
                  v199 = 2082;
                  v200 = v110;
                  v201 = 2082;
                  v202 = v111;
                  v203 = 2114;
                  v204 = v112;
                  v205 = 2082;
                  v206 = v104;
                  _os_log_impl(&dword_181A37000, v105, v106, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] _symptoms_daemon_fallback_subseq_disposition failed, cancelling fallback, dumping backtrace:%{public}s", buf, 0x52u);

                  v93 = v171;
                }

                free(v104);
                goto LABEL_157;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v94 = gconnectionLogObj;
              v121 = type;
              if (os_log_type_enabled(v94, type))
              {
                v122 = nw_endpoint_handler_get_id_string(v91);
                v123 = nw_endpoint_handler_dry_run_string(v91);
                v124 = nw_endpoint_handler_copy_endpoint(v91);
                v173 = v93;
                v125 = nw_endpoint_get_logging_description(v124);
                v126 = nw_endpoint_handler_state_string(v91);
                v127 = nw_endpoint_handler_mode_string(v91);
                v128 = nw_endpoint_handler_copy_current_path(v91);
                *buf = 136447746;
                v192 = "nw_endpoint_fallback_check_usage_cap";
                v193 = 2082;
                v194 = v122;
                v195 = 2082;
                v196 = v123;
                v197 = 2082;
                v198 = v125;
                v199 = 2082;
                v200 = v126;
                v201 = 2082;
                v202 = v127;
                v203 = 2114;
                v204 = v128;
                _os_log_impl(&dword_181A37000, v94, v121, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] _symptoms_daemon_fallback_subseq_disposition failed, cancelling fallback, no backtrace", buf, 0x48u);

                v93 = v173;
              }
            }

            else
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v94 = gconnectionLogObj;
              v113 = type;
              if (os_log_type_enabled(v94, type))
              {
                v114 = nw_endpoint_handler_get_id_string(v91);
                v115 = nw_endpoint_handler_dry_run_string(v91);
                v116 = nw_endpoint_handler_copy_endpoint(v91);
                v172 = v93;
                v117 = nw_endpoint_get_logging_description(v116);
                v118 = nw_endpoint_handler_state_string(v91);
                v119 = nw_endpoint_handler_mode_string(v91);
                v120 = nw_endpoint_handler_copy_current_path(v91);
                *buf = 136447746;
                v192 = "nw_endpoint_fallback_check_usage_cap";
                v193 = 2082;
                v194 = v114;
                v195 = 2082;
                v196 = v115;
                v197 = 2082;
                v198 = v117;
                v199 = 2082;
                v200 = v118;
                v201 = 2082;
                v202 = v119;
                v203 = 2114;
                v204 = v120;
                _os_log_impl(&dword_181A37000, v94, v113, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] _symptoms_daemon_fallback_subseq_disposition failed, cancelling fallback, backtrace limit exceeded", buf, 0x48u);

                v93 = v172;
              }
            }

            goto LABEL_156;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v94 = gconnectionLogObj;
          v95 = type;
          if (!os_log_type_enabled(v94, type))
          {
LABEL_156:

LABEL_157:
            if (v93)
            {
              free(v93);
            }

            goto LABEL_159;
          }

          v96 = v91;

          v97 = v96;
          v98 = (*(v27 + 284) & 1) == 0;

          if (v98)
          {
            v99 = "";
          }

          else
          {
            v99 = "dry-run ";
          }

          v100 = nw_endpoint_handler_copy_endpoint(v97);
          v101 = v100;
          v170 = v99;
          if (v100)
          {
            v102 = _nw_endpoint_get_logging_description(v100);
          }

          else
          {
            v102 = "<NULL>";
          }

          v129 = v97;
          v130 = v129;
          v131 = v84[30];
          if (v131 > 5)
          {
            v132 = "unknown-state";
          }

          else
          {
            v132 = off_1E6A31048[v131];
          }

          v168 = v132;

          v133 = v130;
          v134 = v133;
          v135 = v3->mode;
          if (v135 > 2)
          {
            switch(v135)
            {
              case 3:
                v136 = "proxy";
                goto LABEL_155;
              case 4:
                v136 = "fallback";
                goto LABEL_155;
              case 5:
                v136 = "transform";
                goto LABEL_155;
            }
          }

          else
          {
            switch(v135)
            {
              case 0:
                v136 = "path";
                goto LABEL_155;
              case 1:
                v136 = "resolver";
                goto LABEL_155;
              case 2:
                v136 = nw_endpoint_flow_mode_string(v133[33]);
LABEL_155:

                v137 = v93;
                v138 = v134;
                os_unfair_lock_lock(v91 + 28);
                v139 = *(v91 + 8);
                os_unfair_lock_unlock(v91 + 28);

                v93 = v137;
                *buf = 136447746;
                v192 = "nw_endpoint_fallback_check_usage_cap";
                v193 = 2082;
                v194 = v164;
                v195 = 2082;
                v196 = v170;
                v197 = 2082;
                v198 = v102;
                v199 = 2082;
                v200 = v168;
                v201 = 2082;
                v202 = v136;
                v203 = 2114;
                v204 = v139;
                _os_log_impl(&dword_181A37000, v94, v95, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] _symptoms_daemon_fallback_subseq_disposition failed, cancelling fallback", buf, 0x48u);

                goto LABEL_156;
            }
          }

          v136 = "unknown-mode";
          goto LABEL_155;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v31 = gconnectionLogObj;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v157 = nw_endpoint_handler_get_id_string(v27);
          v176 = nw_endpoint_handler_dry_run_string(v27);
          v158 = nw_endpoint_handler_copy_endpoint(v27);
          v159 = nw_endpoint_get_logging_description(v158);
          v160 = nw_endpoint_handler_state_string(v27);
          v161 = nw_endpoint_handler_mode_string(v27);
          v162 = nw_endpoint_handler_copy_current_path(v27);
          v163 = *(v179 + 1);
          *buf = 136448002;
          v192 = "nw_endpoint_fallback_check_usage_cap";
          v193 = 2082;
          v194 = v157;
          v195 = 2082;
          v196 = v176;
          v197 = 2082;
          v198 = v159;
          v199 = 2082;
          v200 = v160;
          v201 = 2082;
          v202 = v161;
          v203 = 2114;
          v204 = v162;
          v205 = 2048;
          v206 = v163;
          _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback reached usage cap of %llu bytes, asking for an update from symptoms", buf, 0x52u);
        }

LABEL_82:

        goto LABEL_83;
      }

      v29 = v27;
      v30 = (*(v27 + 284) & 0x40) == 0;

      if (!v30)
      {
        goto LABEL_83;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v31 = gconnectionLogObj;
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        goto LABEL_82;
      }

      v32 = v29;

      v33 = v32;
      v34 = (*(v27 + 284) & 1) == 0;

      if (v34)
      {
        v35 = "";
      }

      else
      {
        v35 = "dry-run ";
      }

      v36 = nw_endpoint_handler_copy_endpoint(v33);
      v37 = v36;
      if (v36)
      {
        v38 = _nw_endpoint_get_logging_description(v36);
      }

      else
      {
        v38 = "<NULL>";
      }

      v49 = v33;
      v50 = v49;
      v51 = v49[30];
      if (v51 > 5)
      {
        v52 = "unknown-state";
      }

      else
      {
        v52 = off_1E6A31048[v51];
      }

      v174 = v52;

      v53 = v50;
      v54 = v53;
      v55 = v3->mode;
      if (v55 > 2)
      {
        switch(v55)
        {
          case 3:
            v56 = "proxy";
            goto LABEL_81;
          case 4:
            v56 = "fallback";
            goto LABEL_81;
          case 5:
            v56 = "transform";
            goto LABEL_81;
        }
      }

      else
      {
        switch(v55)
        {
          case 0:
            v56 = "path";
            goto LABEL_81;
          case 1:
            v56 = "resolver";
            goto LABEL_81;
          case 2:
            v56 = nw_endpoint_flow_mode_string(v53[33]);
LABEL_81:

            v61 = v3;
            v62 = v27;
            v63 = v31;
            v64 = v38;
            v65 = v35;
            v66 = v54;
            os_unfair_lock_lock(v66 + 28);
            v67 = v66[8];
            os_unfair_lock_unlock(v66 + 28);

            v68 = v64;
            v31 = v63;
            v27 = v62;
            v3 = v61;
            v69 = *(v179 + 1);
            *buf = 136448002;
            v192 = "nw_endpoint_fallback_check_usage_cap";
            v193 = 2082;
            v194 = v32 + 184;
            v195 = 2082;
            v196 = v65;
            v197 = 2082;
            v198 = v68;
            v199 = 2082;
            v200 = v174;
            v201 = 2082;
            v202 = v56;
            v203 = 2114;
            v204 = v67;
            v205 = 2048;
            v206 = v69;
            _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback reached usage cap of %llu bytes, asking for an update from symptoms", buf, 0x52u);

            goto LABEL_82;
        }
      }

      v56 = "unknown-mode";
      goto LABEL_81;
    }

    v178 = v5;
    v8 = v3;
    v9 = (*(v8 + 284) & 0x20) == 0;

    if (!v9)
    {
      if (nw_endpoint_handler_get_logging_disabled(v8))
      {
LABEL_74:
        v5 = v178;
        v60 = v178[11];
        if (v60)
        {
          nw_queue_cancel_source(v60, v12);
          v178[11] = 0;
        }

        goto LABEL_163;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v13 = gconnectionLogObj;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v150 = nw_endpoint_handler_get_id_string(v8);
        v151 = nw_endpoint_handler_dry_run_string(v8);
        v152 = nw_endpoint_handler_copy_endpoint(v8);
        v153 = nw_endpoint_get_logging_description(v152);
        v154 = nw_endpoint_handler_state_string(v8);
        v155 = nw_endpoint_handler_mode_string(v8);
        v156 = nw_endpoint_handler_copy_current_path(v8);
        *buf = 136447746;
        v192 = "nw_endpoint_fallback_check_usage_cap";
        v193 = 2082;
        v194 = v150;
        v195 = 2082;
        v196 = v151;
        v197 = 2082;
        v198 = v153;
        v199 = 2082;
        v200 = v154;
        v201 = 2082;
        v202 = v155;
        v203 = 2114;
        v204 = v156;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] failed to get byte count for fallback connection with data cap, ignoring", buf, 0x48u);
      }

LABEL_73:

      goto LABEL_74;
    }

    v10 = v8;
    v11 = (*(v8 + 284) & 0x40) == 0;

    if (!v11)
    {
      goto LABEL_74;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v13 = gconnectionLogObj;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_73;
    }

    v14 = v10;

    v15 = v14;
    v16 = (*(v8 + 284) & 1) == 0;

    if (v16)
    {
      v17 = "";
    }

    else
    {
      v17 = "dry-run ";
    }

    v18 = nw_endpoint_handler_copy_endpoint(v15);
    v19 = v18;
    if (v18)
    {
      v20 = _nw_endpoint_get_logging_description(v18);
    }

    else
    {
      v20 = "<NULL>";
    }

    v41 = v15;
    v42 = v41;
    v43 = v41[30];
    if (v43 > 5)
    {
      v44 = "unknown-state";
    }

    else
    {
      v44 = off_1E6A31048[v43];
    }

    v45 = v42;
    v46 = v45;
    v47 = v3->mode;
    if (v47 > 2)
    {
      switch(v47)
      {
        case 3:
          v48 = "proxy";
          goto LABEL_72;
        case 4:
          v48 = "fallback";
          goto LABEL_72;
        case 5:
          v48 = "transform";
          goto LABEL_72;
      }
    }

    else
    {
      switch(v47)
      {
        case 0:
          v48 = "path";
          goto LABEL_72;
        case 1:
          v48 = "resolver";
          goto LABEL_72;
        case 2:
          v48 = nw_endpoint_flow_mode_string(v45[33]);
LABEL_72:

          v57 = v17;
          v58 = v46;
          os_unfair_lock_lock(v58 + 28);
          v59 = v58[8];
          os_unfair_lock_unlock(v58 + 28);

          *buf = 136447746;
          v192 = "nw_endpoint_fallback_check_usage_cap";
          v193 = 2082;
          v194 = v14 + 184;
          v195 = 2082;
          v196 = v57;
          v197 = 2082;
          v198 = v20;
          v199 = 2082;
          v200 = v44;
          v201 = 2082;
          v202 = v48;
          v203 = 2114;
          v204 = v59;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] failed to get byte count for fallback connection with data cap, ignoring", buf, 0x48u);

          goto LABEL_73;
      }
    }

    v48 = "unknown-mode";
    goto LABEL_72;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (mode > 5)
    {
      v22 = "unknown-mode";
    }

    else
    {
      v22 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v192 = "nw_endpoint_fallback_check_usage_cap";
    v193 = 2082;
    v194 = v22;
    v195 = 2082;
    v196 = "fallback";
    _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_167:
}

void ___ZL36nw_endpoint_fallback_check_usage_capP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!v3)
  {
    v41 = __nwlog_obj();
    *buf = 136446210;
    v59 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
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
          v59 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
          _os_log_impl(&dword_181A37000, v43, v44, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v56 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v43 = __nwlog_obj();
        v46 = type;
        v47 = os_log_type_enabled(v43, type);
        if (backtrace_string)
        {
          if (v47)
          {
            *buf = 136446466;
            v59 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
            v60 = 2082;
            v61 = backtrace_string;
            _os_log_impl(&dword_181A37000, v43, v46, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_64;
        }

        if (v47)
        {
          *buf = 136446210;
          v59 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
          _os_log_impl(&dword_181A37000, v43, v46, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v43 = __nwlog_obj();
        v48 = type;
        if (os_log_type_enabled(v43, type))
        {
          *buf = 136446210;
          v59 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
          _os_log_impl(&dword_181A37000, v43, v48, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_64:
    if (v42)
    {
      free(v42);
    }

    return;
  }

  v7 = v3;
  v8 = v7[29];

  if (v8 == 4)
  {
    v9 = nw_endpoint_handler_copy_fallback(*(a1 + 32));
    v10 = v9;
    v11 = *(v9 + 1);
    v12 = __CFADD__(v11, a3);
    v13 = v11 + a3;
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = a2;
    }

    if (v12)
    {
      v13 = -1;
    }

    *(v9 + 26) = v14;
    *(v9 + 1) = v13;
    if (a2 == 2)
    {
      v32 = *(v9 + 11);
      v33 = dispatch_time(0x8000000000000000, 1000000 * *(v9 + 2));
      nw_queue_set_timer_values(v32, v33, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    }

    else
    {
      if (a2 != 1)
      {
        if (!a2)
        {
          if ((nw_endpoint_handler_get_logging_disabled(*(a1 + 32)) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v16 = gconnectionLogObj;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
              v18 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
              v19 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
              v20 = v19;
              if (v19)
              {
                logging_description = _nw_endpoint_get_logging_description(v19);
              }

              else
              {
                logging_description = "<NULL>";
              }

              v34 = nw_endpoint_handler_state_string(*(a1 + 32));
              v35 = nw_endpoint_handler_mode_string(*(a1 + 32));
              v36 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
              *buf = 136447746;
              v59 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
              v60 = 2082;
              v61 = id_string;
              v62 = 2082;
              v63 = v18;
              v64 = 2082;
              v65 = logging_description;
              v66 = 2082;
              v67 = v34;
              v68 = 2082;
              v69 = v35;
              v70 = 2114;
              v71 = v36;
              _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback no longer allowed for connection, cancelling", buf, 0x48u);
            }
          }

          v37 = *(v10 + 11);
          if (v37)
          {
            nw_queue_cancel_source(v37, v15);
            *(v10 + 11) = 0;
          }

          nw_endpoint_handler_cancel(*(v10 + 5), 0, 1);
        }

        goto LABEL_41;
      }

      minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 32));
      logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 32));
      if (minimize_logging)
      {
        if (logging_disabled)
        {
          goto LABEL_41;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v26 = gconnectionLogObj;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v49 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v50 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v51 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v52 = nw_endpoint_get_logging_description(v51);
          v53 = nw_endpoint_handler_state_string(*(a1 + 32));
          v54 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v55 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          *buf = 136447746;
          v59 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
          v60 = 2082;
          v61 = v49;
          v62 = 2082;
          v63 = v50;
          v64 = 2082;
          v65 = v52;
          v66 = 2082;
          v67 = v53;
          v68 = 2082;
          v69 = v54;
          v70 = 2114;
          v71 = v55;
          _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback now allowed for connection with no cap", buf, 0x48u);
        }

        goto LABEL_40;
      }

      if ((logging_disabled & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v26 = gconnectionLogObj;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = nw_endpoint_handler_get_id_string(*(a1 + 32));
          v28 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
          v29 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
          v30 = v29;
          if (v29)
          {
            v31 = _nw_endpoint_get_logging_description(v29);
          }

          else
          {
            v31 = "<NULL>";
          }

          v38 = nw_endpoint_handler_state_string(*(a1 + 32));
          v39 = nw_endpoint_handler_mode_string(*(a1 + 32));
          v40 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
          *buf = 136447746;
          v59 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
          v60 = 2082;
          v61 = v27;
          v62 = 2082;
          v63 = v28;
          v64 = 2082;
          v65 = v31;
          v66 = 2082;
          v67 = v38;
          v68 = 2082;
          v69 = v39;
          v70 = 2114;
          v71 = v40;
          _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback now allowed for connection with no cap", buf, 0x48u);
        }

LABEL_40:
      }
    }

LABEL_41:

    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v22 = gLogObj;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    if (v8 > 5)
    {
      v23 = "unknown-mode";
    }

    else
    {
      v23 = off_1E6A31018[v8];
    }

    *buf = 136446722;
    v59 = "nw_endpoint_fallback_check_usage_cap_block_invoke";
    v60 = 2082;
    v61 = v23;
    v62 = 2082;
    v63 = "fallback";
    _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }
}

void ___ZL47nw_endpoint_fallback_start_post_transport_timerP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 20) = 327685;
  nw_endpoint_handler_report(v1, 0, v1 + 40, 0);
}

uint64_t nw_endpoint_fallback_get_timeout_nanos_for_path(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    v4 = _nw_path_fallback_is_weak(v3);

    if (v4)
    {
      int64_with_default = networkd_settings_get_int64_with_default(nw_setting_tcpconn_weak_fallback_delay, 200);
      v6 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_fallback_delay_cap_ms, 500);
      v7 = 2 * int64_with_default;
      if (2 * int64_with_default >= v6)
      {
        v7 = v6;
      }

      if (int64_with_default <= 0x7FFFFFFFFFFFFFFELL)
      {
        v6 = v7;
      }
    }

    else
    {
      v6 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_strong_fallback_delay, 100);
    }

    v8 = 1000000 * v6;
    goto LABEL_10;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_endpoint_fallback_get_timeout_nanos_for_path";
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
        v21 = "nw_endpoint_fallback_get_timeout_nanos_for_path";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null path", buf, 0xCu);
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
          v21 = "nw_endpoint_fallback_get_timeout_nanos_for_path";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v16)
      {
        *buf = 136446210;
        v21 = "nw_endpoint_fallback_get_timeout_nanos_for_path";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_endpoint_fallback_get_timeout_nanos_for_path";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_10:

  return v8;
}

void nw_endpoint_fallback_reset_expected_progress_target(void *a1, uint64_t a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v48 = __nwlog_obj();
    *buf = 136446210;
    v83 = "nw_endpoint_handler_get_mode";
    v49 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (__nwlog_fault(v49, &type, &v80))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v50 = __nwlog_obj();
        v51 = type;
        if (os_log_type_enabled(v50, type))
        {
          *buf = 136446210;
          v83 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v80 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v50 = __nwlog_obj();
        v53 = type;
        v54 = os_log_type_enabled(v50, type);
        if (backtrace_string)
        {
          if (v54)
          {
            *buf = 136446466;
            v83 = "nw_endpoint_handler_get_mode";
            v84 = 2082;
            v85 = backtrace_string;
            _os_log_impl(&dword_181A37000, v50, v53, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_65;
        }

        if (v54)
        {
          *buf = 136446210;
          v83 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v50, v53, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v50 = __nwlog_obj();
        v55 = type;
        if (os_log_type_enabled(v50, type))
        {
          *buf = 136446210;
          v83 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v50, v55, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_65:
    if (v49)
    {
      free(v49);
    }

    mode = 0;
    goto LABEL_68;
  }

  mode = v3->mode;

  if (mode == 4)
  {
    v6 = nw_endpoint_handler_copy_fallback(v4);
    v7 = v6;
    if ((*(v6 + 108) & 0x42) != 2 || !a2 || !*(v6 + 9))
    {
      goto LABEL_48;
    }

    int64_with_default = networkd_settings_get_int64_with_default(nw_setting_progress_target_fallback_leeway, 2500);
    v9 = *(v7 + 12);
    v10 = mach_continuous_time();
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = nw_delta_nanos(v9, v11);
    v13 = *(v7 + 3);
    v14 = v13 >= v12;
    v15 = v13 - v12;
    if (!v14)
    {
      v15 = 0;
    }

    v16 = v15 + 1000000 * int64_with_default;
    v17 = dword_1ED4117CC;
    if (!dword_1ED4117CC)
    {
      mach_timebase_info(&time_base);
      v17 = dword_1ED4117CC;
    }

    v18 = time_base;
    if (mach_continuous_time() + v16 * v17 / v18 <= a2)
    {
      goto LABEL_48;
    }

    v19 = networkd_settings_get_int64_with_default(nw_setting_tcpconn_strong_fallback_delay, 100);
    if (1000000 * v19 >= v12)
    {
      v20 = 1000000 * v19 - v12;
    }

    else
    {
      v20 = 0;
    }

    v21 = v4;
    v22 = *(v21 + 284);

    if ((v22 & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v21))
      {
        goto LABEL_47;
      }

      v69 = v20;
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v70 = gconnectionLogObj;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v21);
        v71 = nw_endpoint_handler_dry_run_string(v21);
        v72 = nw_endpoint_handler_copy_endpoint(v21);
        logging_description = nw_endpoint_get_logging_description(v72);
        v74 = nw_endpoint_handler_state_string(v21);
        v75 = nw_endpoint_handler_mode_string(v21);
        v76 = nw_endpoint_handler_copy_current_path(v21);
        *buf = 136448002;
        v83 = "nw_endpoint_fallback_reset_expected_progress_target";
        v84 = 2082;
        v85 = id_string;
        v86 = 2082;
        v87 = v71;
        v88 = 2082;
        v89 = logging_description;
        v20 = v69;
        v90 = 2082;
        v91 = v74;
        v92 = 2082;
        v93 = v75;
        v94 = 2114;
        v95 = v76;
        v96 = 2048;
        v97 = v69 / 0xF4240;
        v25 = v70;
        _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] target time set, resetting fallback timer to %llums", buf, 0x52u);
      }

      else
      {
        v25 = v70;
      }

      goto LABEL_46;
    }

    v23 = v21;
    v24 = *(v21 + 284);

    if ((v24 & 0x40) != 0)
    {
LABEL_47:
      v46 = *(v7 + 9);
      v47 = dispatch_time(0x8000000000000000, v20);
      nw_queue_set_timer_values(v46, v47, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
LABEL_48:

      goto LABEL_89;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v25 = gconnectionLogObj;
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
LABEL_46:

      goto LABEL_47;
    }

    v78 = v25;
    v26 = v23;

    v27 = v26;
    v28 = *(v21 + 284);

    if (v28)
    {
      v29 = "dry-run ";
    }

    else
    {
      v29 = "";
    }

    v30 = nw_endpoint_handler_copy_endpoint(v27);
    v31 = v30;
    if (v30)
    {
      v32 = _nw_endpoint_get_logging_description(v30);
    }

    else
    {
      v32 = "<NULL>";
    }

    v33 = v26 + 184;

    v34 = v27;
    v35 = v34;
    v36 = v34[30];
    if (v36 > 5)
    {
      v37 = "unknown-state";
    }

    else
    {
      v37 = off_1E6A31048[v36];
    }

    v77 = v37;

    v38 = v35;
    v39 = v38;
    v40 = v4->mode;
    v41 = v29;
    if (v40 > 2)
    {
      switch(v40)
      {
        case 3:
          v42 = v20;
          v43 = "proxy";
          goto LABEL_45;
        case 4:
          v42 = v20;
          v43 = "fallback";
          goto LABEL_45;
        case 5:
          v42 = v20;
          v43 = "transform";
          goto LABEL_45;
      }
    }

    else
    {
      switch(v40)
      {
        case 0:
          v42 = v20;
          v43 = "path";
          goto LABEL_45;
        case 1:
          v42 = v20;
          v43 = "resolver";
          goto LABEL_45;
        case 2:
          v42 = v20;
          v43 = nw_endpoint_flow_mode_string(v38[33]);
LABEL_45:

          v44 = v39;
          os_unfair_lock_lock(v44 + 28);
          v45 = v44[8];
          os_unfair_lock_unlock(v44 + 28);

          *buf = 136448002;
          v20 = v42;
          v83 = "nw_endpoint_fallback_reset_expected_progress_target";
          v84 = 2082;
          v85 = v33;
          v86 = 2082;
          v87 = v41;
          v88 = 2082;
          v89 = v32;
          v90 = 2082;
          v25 = v78;
          v91 = v77;
          v92 = 2082;
          v93 = v43;
          v94 = 2114;
          v95 = v45;
          v96 = 2048;
          v97 = v42 / 0xF4240;
          _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] target time set, resetting fallback timer to %llums", buf, 0x52u);

          goto LABEL_46;
      }
    }

    v42 = v20;
    v43 = "unknown-mode";
    goto LABEL_45;
  }

LABEL_68:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v56 = gLogObj;
  if (mode > 5)
  {
    v57 = "unknown-mode";
  }

  else
  {
    v57 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  v83 = "nw_endpoint_fallback_reset_expected_progress_target";
  v84 = 2082;
  v85 = v57;
  v86 = 2082;
  v87 = "fallback";
  v58 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v80 = 0;
  if (!__nwlog_fault(v58, &type, &v80))
  {
LABEL_87:
    if (!v58)
    {
      goto LABEL_89;
    }

LABEL_88:
    free(v58);
    goto LABEL_89;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v59 = gLogObj;
    v60 = type;
    if (os_log_type_enabled(v59, type))
    {
      if (mode > 5)
      {
        v61 = "unknown-mode";
      }

      else
      {
        v61 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v83 = "nw_endpoint_fallback_reset_expected_progress_target";
      v84 = 2082;
      v85 = v61;
      v86 = 2082;
      v87 = "fallback";
      _os_log_impl(&dword_181A37000, v59, v60, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_86:

    goto LABEL_87;
  }

  if (v80 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v59 = gLogObj;
    v66 = type;
    if (os_log_type_enabled(v59, type))
    {
      if (mode > 5)
      {
        v67 = "unknown-mode";
      }

      else
      {
        v67 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v83 = "nw_endpoint_fallback_reset_expected_progress_target";
      v84 = 2082;
      v85 = v67;
      v86 = 2082;
      v87 = "fallback";
      _os_log_impl(&dword_181A37000, v59, v66, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_86;
  }

  v62 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v59 = gLogObj;
  v63 = type;
  v64 = os_log_type_enabled(v59, type);
  if (!v62)
  {
    if (v64)
    {
      if (mode > 5)
      {
        v68 = "unknown-mode";
      }

      else
      {
        v68 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      v83 = "nw_endpoint_fallback_reset_expected_progress_target";
      v84 = 2082;
      v85 = v68;
      v86 = 2082;
      v87 = "fallback";
      _os_log_impl(&dword_181A37000, v59, v63, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_86;
  }

  if (v64)
  {
    if (mode > 5)
    {
      v65 = "unknown-mode";
    }

    else
    {
      v65 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    v83 = "nw_endpoint_fallback_reset_expected_progress_target";
    v84 = 2082;
    v85 = v65;
    v86 = 2082;
    v87 = "fallback";
    v88 = 2082;
    v89 = v62;
    _os_log_impl(&dword_181A37000, v59, v63, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v62);
  if (v58)
  {
    goto LABEL_88;
  }

LABEL_89:
}

__int128 *nw_protocol_http2_transport_identifier()
{
  if (nw_protocol_http2_transport_identifier::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_http2_transport_identifier::onceToken, &__block_literal_global_40061);
  }

  return &g_http2_transport_protocol_identifier;
}

uint64_t __nw_protocol_http2_transport_identifier_block_invoke()
{
  strcpy(&g_http2_transport_protocol_identifier, "http2_transport");
  qword_1EA83F120 = 0x200000003;
  qword_1EA83F230 = nw_protocol_default_input_flush;
  qword_1EA83F220 = nw_protocol_default_get_message_properties;
  qword_1EA83F190 = nw_protocol_default_link_state;
  qword_1EA83F1A8 = nw_protocol_default_get_local;
  qword_1EA83F1A0 = nw_protocol_default_get_path;
  qword_1EA83F1D0 = nw_protocol_default_updated_path;
  qword_1EA83F1F0 = nw_protocol_default_get_output_local;
  qword_1EA83F1F8 = nw_protocol_default_get_output_interface;
  qword_1EA83F228 = nw_protocol_default_reset;
  qword_1EA83F1D8 = nw_protocol_default_supports_external_data;
  qword_1EA83F200 = nw_protocol_default_waiting_for_output;
  qword_1EA83F208 = nw_protocol_default_copy_info;
  qword_1EA83F1B8 = nw_protocol_default_register_notification;
  qword_1EA83F1C0 = nw_protocol_default_unregister_notification;
  qword_1EA83F140 = nw_protocol_http2_transport_connect;
  qword_1EA83F150 = nw_protocol_http2_transport_connected;
  qword_1EA83F148 = nw_protocol_http2_transport_disconnect;
  qword_1EA83F158 = nw_protocol_http2_transport_disconnected;
  qword_1EA83F1E8 = nw_protocol_http2_transport_output_finished;
  qword_1EA83F1E0 = nw_protocol_http2_transport_input_finished;
  g_http2_transport_protocol_callbacks = nw_protocol_http2_transport_add_input_handler;
  qword_1EA83F130 = nw_protocol_http2_transport_remove_input_handler;
  qword_1EA83F138 = nw_protocol_http2_replace_input_handler;
  qword_1EA83F168 = nw_protocol_http2_transport_input_available;
  qword_1EA83F170 = nw_protocol_http2_transport_output_available;
  qword_1EA83F178 = nw_protocol_http2_transport_get_input_frames;
  qword_1EA83F180 = nw_protocol_http2_transport_get_output_frames;
  qword_1EA83F198 = nw_protocol_http2_transport_get_parameters;
  qword_1EA83F188 = nw_protocol_http2_transport_finalize_output_frames;
  qword_1EA83F210 = nw_protocol_http2_transport_add_listen_handler;
  qword_1EA83F218 = nw_protocol_http2_transport_remove_listen_handler;
  qword_1EA83F1B0 = nw_protocol_http2_transport_get_remote_endpoint;
  qword_1EA83F160 = nw_protocol_http2_transport_error;
  qword_1EA83F1C8 = nw_protocol_http2_transport_notify;
  return nw_protocol_register_many_to_one(&g_http2_transport_protocol_identifier, nw_protocol_http2_transport_create, nw_protocol_http2_transport_accept);
}

BOOL nw_protocol_http2_transport_accept(nw_protocol *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_http2_transport_accept";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http2_transport_accept";
      v9 = "%{public}s called with null protocol";
      goto LABEL_39;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http2_transport_accept";
      v9 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v12 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (!v12)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http2_transport_accept";
      v9 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_39;
    }

    if (v12)
    {
      *buf = 136446466;
      v18 = "nw_protocol_http2_transport_accept";
      v19 = 2082;
      v20 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_40:
    if (!v6)
    {
      return 0;
    }

LABEL_41:
    free(v6);
    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_protocol_http2_transport_accept";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (!__nwlog_fault(v6, &type, &v15))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http2_transport_accept";
      v9 = "%{public}s called with null http2_transport";
      goto LABEL_39;
    }

    if (v15 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http2_transport_accept";
      v9 = "%{public}s called with null http2_transport, backtrace limit exceeded";
      goto LABEL_39;
    }

    v13 = __nw_create_backtrace_string();
    v7 = __nwlog_obj();
    v8 = type;
    v14 = os_log_type_enabled(v7, type);
    if (v13)
    {
      if (v14)
      {
        *buf = 136446466;
        v18 = "nw_protocol_http2_transport_accept";
        v19 = 2082;
        v20 = v13;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v13);
      if (!v6)
      {
        return 0;
      }

      goto LABEL_41;
    }

    if (v14)
    {
      *buf = 136446210;
      v18 = "nw_protocol_http2_transport_accept";
      v9 = "%{public}s called with null http2_transport, no backtrace";
LABEL_39:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (gLogDatapath == 1)
  {
    v10 = __nwlog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v18 = "nw_protocol_http2_transport_accept";
      v19 = 2082;
      v20 = handle + 205;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  if ((handle[204] & 4) == 0)
  {
    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 136446466;
    v18 = "nw_protocol_http2_transport_accept";
    v19 = 2082;
    v20 = handle + 205;
    _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s cannot accept new streams after the tunnel is closed", buf, 0x16u);
    return 0;
  }

  return result;
}

_BYTE *nw_protocol_http2_transport_create(const nw_protocol_identifier *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v36 = __nwlog_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v49 = "nw_protocol_http2_transport_create";
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 8uLL, 0x128uLL, 0xA0EB7791uLL))
  {
    v4 = memptr;
    if (memptr)
    {
LABEL_4:
      *(v4 + 36) = 0;
      *(v4 + 16) = 0u;
      *(v4 + 17) = 0u;
      *(v4 + 14) = 0u;
      *(v4 + 15) = 0u;
      *(v4 + 12) = 0u;
      *(v4 + 13) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 11) = 0u;
      v5 = v4 + 176;
      *(v4 + 10) = 0u;
      v6 = v4 + 160;
      *(v4 + 9) = 0u;
      v7 = v4 + 144;
      *(v4 + 8) = 0u;
      v8 = v4 + 128;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = &g_http2_transport_protocol_identifier;
      *(v4 + 3) = &g_http2_transport_protocol_callbacks;
      *(v4 + 5) = v4;
      *(v4 + 8) = -1;
      if (nw_parameters_get_server_mode(a3))
      {
        v9 = 16;
      }

      else
      {
        v9 = 0;
      }

      v4[204] = v4[204] & 0xEF | v9;
      *v8 = 0;
      *(v4 + 17) = v8;
      *v7 = 0;
      *(v4 + 19) = v7;
      *v6 = 0;
      *(v4 + 21) = v6;
      *v5 = 0;
      *(v4 + 23) = v5;
      *(v4 + 24) = 0;
      memptr = 0;
      if (nghttp2_session_callbacks_new())
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = nghttp2_strerror();
        *buf = 136446466;
        v49 = "nw_protocol_http2_transport_create";
        v50 = 2082;
        v51 = v10;
        v11 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v46 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v11, type, &v46))
        {
          goto LABEL_35;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          v13 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_35;
          }

          v14 = nghttp2_strerror();
          *buf = 136446466;
          v49 = "nw_protocol_http2_transport_create";
          v50 = 2082;
          v51 = v14;
          v15 = "%{public}s nghttp2_session_callbacks_new: %{public}s failed";
LABEL_33:
          v26 = v12;
          v27 = v13;
          v28 = 22;
LABEL_34:
          _os_log_impl(&dword_181A37000, v26, v27, v15, buf, v28);
          goto LABEL_35;
        }

        if (v46 != OS_LOG_TYPE_INFO)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          v13 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_35;
          }

          v23 = nghttp2_strerror();
          *buf = 136446466;
          v49 = "nw_protocol_http2_transport_create";
          v50 = 2082;
          v51 = v23;
          v15 = "%{public}s nghttp2_session_callbacks_new: %{public}s failed, backtrace limit exceeded";
          goto LABEL_33;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v13 = type[0];
        v21 = os_log_type_enabled(gLogObj, type[0]);
        if (!backtrace_string)
        {
          if (!v21)
          {
            goto LABEL_35;
          }

          v25 = nghttp2_strerror();
          *buf = 136446466;
          v49 = "nw_protocol_http2_transport_create";
          v50 = 2082;
          v51 = v25;
          v15 = "%{public}s nghttp2_session_callbacks_new: %{public}s failed, no backtrace";
          goto LABEL_33;
        }

        if (v21)
        {
          v22 = nghttp2_strerror();
          *buf = 136446722;
          v49 = "nw_protocol_http2_transport_create";
          v50 = 2082;
          v51 = v22;
          v52 = 2082;
          v53 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s nghttp2_session_callbacks_new: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
LABEL_35:
        if (!v11)
        {
LABEL_37:
          free(v4);
          return 0;
        }

LABEL_36:
        free(v11);
        goto LABEL_37;
      }

      nghttp2_session_callbacks_set_before_frame_send_callback();
      nghttp2_session_callbacks_set_on_header_callback();
      nghttp2_session_callbacks_set_on_begin_headers_callback();
      nghttp2_session_callbacks_set_on_frame_recv_callback();
      nghttp2_session_callbacks_set_on_data_chunk_recv_callback();
      nghttp2_session_callbacks_set_on_stream_close_callback();
      nghttp2_session_callbacks_set_on_frame_send_callback();
      nghttp2_session_callbacks_set_send_callback();
      nghttp2_session_callbacks_set_send_data_callback();
      nghttp2_session_callbacks_set_on_frame_not_send_callback();
      nghttp2_session_callbacks_set_on_invalid_frame_recv_callback();
      nghttp2_session_callbacks_set_error_callback2();
      nghttp2_set_debug_vprintf_callback();
      *type = 0;
      nghttp2_option_new();
      nghttp2_option_set_no_auto_window_update();
      nghttp2_option_set_peer_max_concurrent_streams();
      nghttp2_option_set_no_http_messaging();
      nghttp2_option_set_no_http_semantics();
      nghttp2_option_set_no_closed_streams();
      if ((v4[204] & 0x10) != 0)
      {
        if ((nghttp2_session_server_new2() & 0x80000000) != 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v24 = nghttp2_strerror();
          *buf = 136446722;
          v49 = "nw_protocol_http2_transport_create";
          v50 = 2082;
          v51 = (v4 + 205);
          v52 = 2082;
          v53 = v24;
          v11 = _os_log_send_and_compose_impl();
          v46 = OS_LOG_TYPE_ERROR;
          v44 = 0;
          if (!__nwlog_fault(v11, &v46, &v44))
          {
            goto LABEL_35;
          }

          if (v46 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v17 = gLogObj;
            v18 = v46;
            if (!os_log_type_enabled(gLogObj, v46))
            {
              goto LABEL_35;
            }

            goto LABEL_17;
          }

          if (v44 == 1)
          {
            v30 = __nw_create_backtrace_string();
            v17 = __nwlog_obj();
            v18 = v46;
            v32 = os_log_type_enabled(v17, v46);
            if (v30)
            {
              if (!v32)
              {
                goto LABEL_48;
              }

              goto LABEL_47;
            }

            if (!v32)
            {
              goto LABEL_35;
            }

LABEL_57:
            v35 = nghttp2_strerror();
            *buf = 136446722;
            v49 = "nw_protocol_http2_transport_create";
            v50 = 2082;
            v51 = (v4 + 205);
            v52 = 2082;
            v53 = v35;
            v15 = "%{public}s %{public}s nghttp2_session_server_new2 failed: %{public}s, no backtrace";
            goto LABEL_58;
          }

          v17 = __nwlog_obj();
          v18 = v46;
          if (!os_log_type_enabled(v17, v46))
          {
            goto LABEL_35;
          }

LABEL_51:
          v34 = nghttp2_strerror();
          *buf = 136446722;
          v49 = "nw_protocol_http2_transport_create";
          v50 = 2082;
          v51 = (v4 + 205);
          v52 = 2082;
          v53 = v34;
          v15 = "%{public}s %{public}s nghttp2_session_server_new2 failed: %{public}s, backtrace limit exceeded";
          goto LABEL_58;
        }
      }

      else if ((nghttp2_session_client_new2() & 0x80000000) != 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = nghttp2_strerror();
        *buf = 136446722;
        v49 = "nw_protocol_http2_transport_create";
        v50 = 2082;
        v51 = (v4 + 205);
        v52 = 2082;
        v53 = v16;
        v11 = _os_log_send_and_compose_impl();
        v46 = OS_LOG_TYPE_ERROR;
        v44 = 0;
        if (!__nwlog_fault(v11, &v46, &v44))
        {
          goto LABEL_35;
        }

        if (v46 == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = v46;
          if (!os_log_type_enabled(gLogObj, v46))
          {
            goto LABEL_35;
          }

LABEL_17:
          v19 = nghttp2_strerror();
          *buf = 136446722;
          v49 = "nw_protocol_http2_transport_create";
          v50 = 2082;
          v51 = (v4 + 205);
          v52 = 2082;
          v53 = v19;
          v15 = "%{public}s %{public}s nghttp2_session_server_new2 failed: %{public}s";
LABEL_58:
          v26 = v17;
          v27 = v18;
          v28 = 32;
          goto LABEL_34;
        }

        if (v44 == 1)
        {
          v30 = __nw_create_backtrace_string();
          v17 = __nwlog_obj();
          v18 = v46;
          v31 = os_log_type_enabled(v17, v46);
          if (v30)
          {
            if (!v31)
            {
              goto LABEL_48;
            }

LABEL_47:
            v33 = nghttp2_strerror();
            *buf = 136446978;
            v49 = "nw_protocol_http2_transport_create";
            v50 = 2082;
            v51 = (v4 + 205);
            v52 = 2082;
            v53 = v33;
            v54 = 2082;
            v55 = v30;
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s %{public}s nghttp2_session_server_new2 failed: %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
LABEL_48:
            free(v30);
            if (!v11)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          if (!v31)
          {
            goto LABEL_35;
          }

          goto LABEL_57;
        }

        v17 = __nwlog_obj();
        v18 = v46;
        if (!os_log_type_enabled(v17, v46))
        {
          goto LABEL_35;
        }

        goto LABEL_51;
      }

      MEMORY[0x1865DDA10](memptr);
      MEMORY[0x1865DD980](*type);
      return v4;
    }
  }

  v37 = __nwlog_obj();
  os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v49 = "nw_protocol_http2_transport_create";
  v50 = 2048;
  v51 = 8;
  v52 = 2048;
  v53 = 296;
  v38 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v38);
  if (!result)
  {
    free(v38);
    v4 = memptr;
    if (memptr)
    {
      goto LABEL_4;
    }

    __nwlog_obj();
    *buf = 136446466;
    v49 = "nw_protocol_http2_transport_create";
    v50 = 2048;
    v51 = 296;
    v4 = _os_log_send_and_compose_impl();
    LOBYTE(memptr) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v4, &memptr, type))
    {
      if (memptr == 17)
      {
        v39 = __nwlog_obj();
        v40 = memptr;
        if (!os_log_type_enabled(v39, memptr))
        {
          goto LABEL_77;
        }

        *buf = 136446466;
        v49 = "nw_protocol_http2_transport_create";
        v50 = 2048;
        v51 = 296;
        v41 = "%{public}s calloc(%zu) failed";
LABEL_76:
        _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0x16u);
        goto LABEL_77;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v39 = __nwlog_obj();
        v40 = memptr;
        if (!os_log_type_enabled(v39, memptr))
        {
          goto LABEL_77;
        }

        *buf = 136446466;
        v49 = "nw_protocol_http2_transport_create";
        v50 = 2048;
        v51 = 296;
        v41 = "%{public}s calloc(%zu) failed, backtrace limit exceeded";
        goto LABEL_76;
      }

      v42 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = memptr;
      v43 = os_log_type_enabled(v39, memptr);
      if (!v42)
      {
        if (!v43)
        {
          goto LABEL_77;
        }

        *buf = 136446466;
        v49 = "nw_protocol_http2_transport_create";
        v50 = 2048;
        v51 = 296;
        v41 = "%{public}s calloc(%zu) failed, no backtrace";
        goto LABEL_76;
      }

      if (v43)
      {
        *buf = 136446722;
        v49 = "nw_protocol_http2_transport_create";
        v50 = 2048;
        v51 = 296;
        v52 = 2082;
        v53 = v42;
        _os_log_impl(&dword_181A37000, v39, v40, "%{public}s calloc(%zu) failed, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v42);
    }

LABEL_77:
    if (!v4)
    {
      return 0;
    }

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

void nghttp2_debug_logging_callback(const char *a1, va_list a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = 0;
  vasprintf(&v4, a1, a2);
  v2 = v4;
  if (v4)
  {
    if (gLogDatapath != 1)
    {
      goto LABEL_3;
    }

    v3 = __nwlog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v6 = "nghttp2_debug_logging_callback";
      v7 = 2082;
      v8 = v4;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s", buf, 0x16u);
    }

    v2 = v4;
    if (v4)
    {
LABEL_3:
      free(v2);
    }
  }
}

uint64_t error_callback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v20 = "error_callback";
    v21 = 1024;
    *v22 = a2;
    *&v22[4] = 2080;
    *&v22[6] = a3;
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s called with error %d, message %s", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (a5)
  {
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446978;
      v20 = "error_callback";
      v21 = 2082;
      *v22 = a5 + 205;
      *&v22[8] = 1024;
      *&v22[10] = a2;
      v23 = 2080;
      v24 = a3;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s %{public}s error (%d: %s)", buf, 0x26u);
      return 0;
    }

    return result;
  }

  *buf = 136446210;
  v20 = "error_callback";
  v11 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v11, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "error_callback";
        v14 = "%{public}s nghttp2 user data is NULL, not http2_transport";
LABEL_20:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }
    }

    else if (v17 == 1)
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
          v20 = "error_callback";
          v21 = 2082;
          *v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v16)
      {
        *buf = 136446210;
        v20 = "error_callback";
        v14 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
        goto LABEL_20;
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "error_callback";
        v14 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  if (v11)
  {
    free(v11);
  }

  return 4294966394;
}

uint64_t on_invalid_frame_recv_callback(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "on_invalid_frame_recv_callback";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v9, &type, &v21))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v24 = "on_invalid_frame_recv_callback";
      v12 = "%{public}s nghttp2 user data is NULL, not http2_transport";
    }

    else if (v21 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v19 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v24 = "on_invalid_frame_recv_callback";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_36;
      }

      if (!v19)
      {
LABEL_36:
        if (v9)
        {
          free(v9);
        }

        return 4294966394;
      }

      *buf = 136446210;
      v24 = "on_invalid_frame_recv_callback";
      v12 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v24 = "on_invalid_frame_recv_callback";
      v12 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_36;
  }

  if (gLogDatapath == 1)
  {
    v13 = a2;
    v15 = __nwlog_obj();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    a2 = v13;
    if (v16)
    {
      *buf = 136446978;
      v24 = "on_invalid_frame_recv_callback";
      v25 = 2082;
      v26 = (a4 + 205);
      v27 = 1024;
      v28 = a3;
      v29 = 2080;
      v30 = nghttp2_strerror();
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called with error %d (%s)", buf, 0x26u);
      a2 = v13;
    }
  }

  if (!a2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v24 = "on_invalid_frame_recv_callback";
      v25 = 2082;
      v26 = (a4 + 205);
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s %{public}s no frame, closing", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v5 = *(a2 + 8);
  if (gLogDatapath == 1)
  {
    v17 = __nwlog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v24 = "on_invalid_frame_recv_callback";
      v25 = 2082;
      v26 = (a4 + 205);
      v27 = 1024;
      v28 = v5;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s error on stream %d", buf, 0x1Cu);
    }
  }

  if (v5 == -1)
  {
    nw_http2_transport_connection_close(a4);
    return 0;
  }

  stream_from_id = nw_http2_transport_get_stream_from_id(a4, v5, 0);
  if (stream_from_id)
  {
    nw_http2_transport_stream_close(a4, stream_from_id);
LABEL_10:
    *(a4 + 204) |= 8u;
    return 4294966394;
  }

  if (gLogDatapath != 1)
  {
    return 0;
  }

  v20 = __nwlog_obj();
  result = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446722;
    v24 = "on_invalid_frame_recv_callback";
    v25 = 2082;
    v26 = (a4 + 205);
    v27 = 1024;
    v28 = v5;
    _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s No stream found for id %d, ignoring", buf, 0x1Cu);
    return 0;
  }

  return result;
}

void nw_http2_transport_connection_close(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v34 = __nwlog_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = "";
      if (a1)
      {
        v35 = (a1 + 205);
      }

      *buf = 136446466;
      v53 = "nw_http2_transport_connection_close";
      v54 = 2082;
      v55 = v35;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_http2_transport_connection_close";
    v25 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (!__nwlog_fault(v25, &type, &v50))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v53 = "nw_http2_transport_connection_close";
      v28 = "%{public}s called with null http2_transport";
    }

    else if (v50 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v37 = type;
      v41 = os_log_type_enabled(v36, type);
      if (backtrace_string)
      {
        if (v41)
        {
          *buf = 136446466;
          v53 = "nw_http2_transport_connection_close";
          v54 = 2082;
          v55 = backtrace_string;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_62;
      }

      if (!v41)
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v53 = "nw_http2_transport_connection_close";
      v28 = "%{public}s called with null http2_transport, no backtrace";
    }

    else
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_62;
      }

      *buf = 136446210;
      v53 = "nw_http2_transport_connection_close";
      v28 = "%{public}s called with null http2_transport, backtrace limit exceeded";
    }

    v31 = v36;
    v32 = v37;
    v33 = 12;
    goto LABEL_61;
  }

  v2 = *(a1 + 204);
  *(a1 + 204) = v2 & 0xF9 | 4;
  v3 = *(a1 + 120);
  if (v3)
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 0x40000000;
    v49[2] = ___ZL35nw_http2_transport_connection_closeP27nw_protocol_http2_transport_block_invoke;
    v49[3] = &__block_descriptor_tmp_19_40190;
    v49[4] = a1;
    nw_hash_table_apply(v3, v49);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v53 = "nw_http2_transport_connection_close";
      v54 = 2082;
      v55 = a1 + 205;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s id table is NULL, cannot close streams", buf, 0x16u);
    }
  }

  if ((v2 & 2) == 0)
  {
    if (gLogDatapath)
    {
      v5 = __nwlog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v53 = "nw_http2_transport_connection_close";
        v54 = 2082;
        v55 = a1 + 205;
        v6 = "%{public}s %{public}s not sending GOAWAY since tunnel was not connected";
LABEL_23:
        _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, v6, buf, 0x16u);
        goto LABEL_44;
      }
    }

    goto LABEL_44;
  }

  if (gLogDatapath)
  {
    v38 = __nwlog_obj();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = nghttp2_http2_strerror();
      *buf = 136446978;
      v53 = "nw_http2_transport_send_goaway";
      v54 = 2082;
      v55 = a1 + 205;
      v56 = 1024;
      *v57 = 0;
      *&v57[4] = 2082;
      *&v57[6] = v39;
      _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called with error %u (%{public}s)", buf, 0x26u);
    }
  }

  if ((*(a1 + 204) & 1) == 0)
  {
    v7 = *(a1 + 200);
    if (!v7)
    {
      goto LABEL_25;
    }

    if ((*(a1 + 204) & 0x10) != 0)
    {
      if (v7)
      {
        goto LABEL_25;
      }

      __nwlog_obj();
      *buf = 136446722;
      v53 = "nw_http2_transport_send_goaway";
      v54 = 2082;
      v55 = a1 + 205;
      v56 = 1024;
      *v57 = v7;
      v8 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v50 = 0;
      if (__nwlog_fault(v8, &type, &v50))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v9 = __nwlog_obj();
          v10 = type;
          if (!os_log_type_enabled(v9, type))
          {
            goto LABEL_111;
          }

          *buf = 136446722;
          v53 = "nw_http2_transport_send_goaway";
          v54 = 2082;
          v55 = a1 + 205;
          v56 = 1024;
          *v57 = v7;
          v11 = "%{public}s %{public}s Last stream value %d is even, but we are the server";
          goto LABEL_110;
        }

        if (v50 != 1)
        {
          v9 = __nwlog_obj();
          v10 = type;
          if (!os_log_type_enabled(v9, type))
          {
            goto LABEL_111;
          }

          *buf = 136446722;
          v53 = "nw_http2_transport_send_goaway";
          v54 = 2082;
          v55 = a1 + 205;
          v56 = 1024;
          *v57 = v7;
          v11 = "%{public}s %{public}s Last stream value %d is even, but we are the server, backtrace limit exceeded";
          goto LABEL_110;
        }

        v46 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v47 = os_log_type_enabled(v9, type);
        if (v46)
        {
          if (v47)
          {
            *buf = 136446978;
            v53 = "nw_http2_transport_send_goaway";
            v54 = 2082;
            v55 = a1 + 205;
            v56 = 1024;
            *v57 = v7;
            *&v57[4] = 2082;
            *&v57[6] = v46;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s %{public}s Last stream value %d is even, but we are the server, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(v46);
          if (!v8)
          {
LABEL_25:
            *(a1 + 204) |= 1u;
            if (!nghttp2_submit_goaway())
            {
LABEL_42:
              if (gLogDatapath == 1)
              {
                v42 = __nwlog_obj();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                {
                  v43 = nghttp2_http2_strerror();
                  *buf = 136447234;
                  v53 = "nw_http2_transport_send_goaway";
                  v54 = 2082;
                  v55 = a1 + 205;
                  v56 = 1024;
                  *v57 = v7;
                  *&v57[4] = 1024;
                  *&v57[6] = 0;
                  *&v57[10] = 2082;
                  *&v57[12] = v43;
                  _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s submitted GOAWAY frame with last_stream %d and error %u (%{public}s)", buf, 0x2Cu);
                }
              }

              nw_http2_transport_session_send(a1);
              goto LABEL_44;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v12 = nghttp2_strerror();
            *buf = 136446466;
            v53 = "nw_http2_transport_send_goaway";
            v54 = 2082;
            v55 = v12;
            v13 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v50 = 0;
            if (__nwlog_fault(v13, &type, &v50))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v14 = gLogObj;
                v15 = type;
                if (!os_log_type_enabled(gLogObj, type))
                {
                  goto LABEL_40;
                }

                v16 = nghttp2_strerror();
                *buf = 136446466;
                v53 = "nw_http2_transport_send_goaway";
                v54 = 2082;
                v55 = v16;
                v17 = "%{public}s nghttp2_submit_goaway: %{public}s failed";
                goto LABEL_39;
              }

              if (v50 != 1)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v14 = gLogObj;
                v15 = type;
                if (!os_log_type_enabled(gLogObj, type))
                {
                  goto LABEL_40;
                }

                v21 = nghttp2_strerror();
                *buf = 136446466;
                v53 = "nw_http2_transport_send_goaway";
                v54 = 2082;
                v55 = v21;
                v17 = "%{public}s nghttp2_submit_goaway: %{public}s failed, backtrace limit exceeded";
                goto LABEL_39;
              }

              v18 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v14 = gLogObj;
              v15 = type;
              v19 = os_log_type_enabled(gLogObj, type);
              if (v18)
              {
                if (v19)
                {
                  v20 = nghttp2_strerror();
                  *buf = 136446722;
                  v53 = "nw_http2_transport_send_goaway";
                  v54 = 2082;
                  v55 = v20;
                  v56 = 2082;
                  *v57 = v18;
                  _os_log_impl(&dword_181A37000, v14, v15, "%{public}s nghttp2_submit_goaway: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v18);
                goto LABEL_40;
              }

              if (v19)
              {
                v22 = nghttp2_strerror();
                *buf = 136446466;
                v53 = "nw_http2_transport_send_goaway";
                v54 = 2082;
                v55 = v22;
                v17 = "%{public}s nghttp2_submit_goaway: %{public}s failed, no backtrace";
LABEL_39:
                _os_log_impl(&dword_181A37000, v14, v15, v17, buf, 0x16u);
              }
            }

LABEL_40:
            if (v13)
            {
              free(v13);
            }

            goto LABEL_42;
          }

LABEL_112:
          free(v8);
          goto LABEL_25;
        }

        if (v47)
        {
          *buf = 136446722;
          v53 = "nw_http2_transport_send_goaway";
          v54 = 2082;
          v55 = a1 + 205;
          v56 = 1024;
          *v57 = v7;
          v11 = "%{public}s %{public}s Last stream value %d is even, but we are the server, no backtrace";
LABEL_110:
          _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0x1Cu);
        }
      }
    }

    else
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_25;
      }

      __nwlog_obj();
      *buf = 136446722;
      v53 = "nw_http2_transport_send_goaway";
      v54 = 2082;
      v55 = a1 + 205;
      v56 = 1024;
      *v57 = v7;
      v8 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v50 = 0;
      if (__nwlog_fault(v8, &type, &v50))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v9 = __nwlog_obj();
          v10 = type;
          if (!os_log_type_enabled(v9, type))
          {
            goto LABEL_111;
          }

          *buf = 136446722;
          v53 = "nw_http2_transport_send_goaway";
          v54 = 2082;
          v55 = a1 + 205;
          v56 = 1024;
          *v57 = v7;
          v11 = "%{public}s %{public}s Last stream value %d is odd, but we are the client";
          goto LABEL_110;
        }

        if (v50 != 1)
        {
          v9 = __nwlog_obj();
          v10 = type;
          if (!os_log_type_enabled(v9, type))
          {
            goto LABEL_111;
          }

          *buf = 136446722;
          v53 = "nw_http2_transport_send_goaway";
          v54 = 2082;
          v55 = a1 + 205;
          v56 = 1024;
          *v57 = v7;
          v11 = "%{public}s %{public}s Last stream value %d is odd, but we are the client, backtrace limit exceeded";
          goto LABEL_110;
        }

        v44 = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = type;
        v45 = os_log_type_enabled(v9, type);
        if (!v44)
        {
          if (!v45)
          {
            goto LABEL_111;
          }

          *buf = 136446722;
          v53 = "nw_http2_transport_send_goaway";
          v54 = 2082;
          v55 = a1 + 205;
          v56 = 1024;
          *v57 = v7;
          v11 = "%{public}s %{public}s Last stream value %d is odd, but we are the client, no backtrace";
          goto LABEL_110;
        }

        if (v45)
        {
          *buf = 136446978;
          v53 = "nw_http2_transport_send_goaway";
          v54 = 2082;
          v55 = a1 + 205;
          v56 = 1024;
          *v57 = v7;
          *&v57[4] = 2082;
          *&v57[6] = v44;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s %{public}s Last stream value %d is odd, but we are the client, dumping backtrace:%{public}s", buf, 0x26u);
        }

        free(v44);
      }
    }

LABEL_111:
    if (!v8)
    {
      goto LABEL_25;
    }

    goto LABEL_112;
  }

  if (gLogDatapath == 1)
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v53 = "nw_http2_transport_send_goaway";
      v54 = 2082;
      v55 = a1 + 205;
      v6 = "%{public}s %{public}s already sent goaway, skipping";
      goto LABEL_23;
    }
  }

LABEL_44:
  v23 = *(a1 + 112);
  if (v23)
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 0x40000000;
    v48[2] = ___ZL35nw_http2_transport_connection_closeP27nw_protocol_http2_transport_block_invoke_20;
    v48[3] = &__block_descriptor_tmp_21_40215;
    v48[4] = a1;
    nw_hash_table_apply(v23, v48);
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v24 = a1 + 205;
  *buf = 136446466;
  v53 = "nw_http2_transport_connection_close";
  v54 = 2082;
  v55 = a1 + 205;
  v25 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v50 = 0;
  if (!__nwlog_fault(v25, &type, &v50))
  {
LABEL_62:
    if (!v25)
    {
      return;
    }

    goto LABEL_63;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    v27 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_62;
    }

    *buf = 136446466;
    v53 = "nw_http2_transport_connection_close";
    v54 = 2082;
    v55 = v24;
    v28 = "%{public}s %{public}s protocol table is NULL, cannot notify input handlers";
LABEL_60:
    v31 = v26;
    v32 = v27;
    v33 = 22;
LABEL_61:
    _os_log_impl(&dword_181A37000, v31, v32, v28, buf, v33);
    goto LABEL_62;
  }

  if (v50 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    v27 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_62;
    }

    *buf = 136446466;
    v53 = "nw_http2_transport_connection_close";
    v54 = 2082;
    v55 = v24;
    v28 = "%{public}s %{public}s protocol table is NULL, cannot notify input handlers, backtrace limit exceeded";
    goto LABEL_60;
  }

  v29 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v26 = gLogObj;
  v27 = type;
  v30 = os_log_type_enabled(gLogObj, type);
  if (!v29)
  {
    if (!v30)
    {
      goto LABEL_62;
    }

    *buf = 136446466;
    v53 = "nw_http2_transport_connection_close";
    v54 = 2082;
    v55 = v24;
    v28 = "%{public}s %{public}s protocol table is NULL, cannot notify input handlers, no backtrace";
    goto LABEL_60;
  }

  if (v30)
  {
    *buf = 136446722;
    v53 = "nw_http2_transport_connection_close";
    v54 = 2082;
    v55 = v24;
    v56 = 2082;
    *v57 = v29;
    _os_log_impl(&dword_181A37000, v26, v27, "%{public}s %{public}s protocol table is NULL, cannot notify input handlers, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v29);
  if (v25)
  {
LABEL_63:
    free(v25);
  }
}

uint64_t ___ZL35nw_http2_transport_connection_closeP27nw_protocol_http2_transport_block_invoke(uint64_t a1, uint64_t a2)
{
  v32[2] = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v5 = object;
    v6 = *nw_hash_node_get_extra(a2);
    v7 = *(v5 + 32);
    if (gLogDatapath == 1)
    {
      v20 = __nwlog_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 32);
        v22 = (v21 + 205);
        v10 = v21 == 0;
        v23 = *(v5 + 32);
        if (v10)
        {
          v22 = "";
        }

        v27 = 136446722;
        v28 = "nw_http2_transport_connection_close_block_invoke";
        v29 = 2082;
        v30 = v22;
        v31 = 1024;
        LODWORD(v32[0]) = v23;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s closing stream %d", &v27, 0x1Cu);
      }
    }

    nw_http2_transport_stream_close(*(a1 + 32), v5);
    if (v6)
    {
      if (gLogDatapath)
      {
        v8 = __nwlog_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(a1 + 32);
          v10 = v9 == 0;
          v27 = 136446978;
          v11 = (v9 + 205);
          v28 = "nw_http2_transport_connection_close_block_invoke";
          if (v10)
          {
            v11 = "";
          }

          v29 = 2082;
          v30 = v11;
          v31 = 1024;
          LODWORD(v32[0]) = v7;
          WORD2(v32[0]) = 2048;
          *(v32 + 6) = v5;
          v12 = "%{public}s %{public}s deferring release of stream %d (%p), has associated input handler";
          v13 = v8;
          v14 = OS_LOG_TYPE_DEBUG;
          v15 = 38;
          goto LABEL_14;
        }
      }
    }

    else
    {
      if (gLogDatapath)
      {
        v24 = __nwlog_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(a1 + 32);
          v10 = v25 == 0;
          v27 = 136446978;
          v26 = (v25 + 205);
          v28 = "nw_http2_transport_connection_close_block_invoke";
          if (v10)
          {
            v26 = "";
          }

          v29 = 2082;
          v30 = v26;
          v31 = 1024;
          LODWORD(v32[0]) = v7;
          WORD2(v32[0]) = 2048;
          *(v32 + 6) = v5;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s destroying stream %d (%p) immediately, no associated input handler", &v27, 0x26u);
        }
      }

      nw_http2_transport_release_frame_array(v5);
      nw_http2_transport_release_frame_array((v5 + 16));
      free(v5);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v27 = 136446722;
      v28 = "nw_http2_transport_connection_close_block_invoke";
      if (v17)
      {
        v18 = (v17 + 205);
      }

      else
      {
        v18 = "";
      }

      v29 = 2082;
      v30 = v18;
      v31 = 2048;
      v32[0] = a2;
      v12 = "%{public}s %{public}s stream in node %p in id table is NULL, skipping rst stream";
      v13 = v16;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 32;
LABEL_14:
      _os_log_impl(&dword_181A37000, v13, v14, v12, &v27, v15);
    }
  }

  return 1;
}

uint64_t ___ZL35nw_http2_transport_connection_closeP27nw_protocol_http2_transport_block_invoke_20(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    nw_http2_transport_protocol_close(*(a1 + 32), object);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 136446722;
      v10 = "nw_http2_transport_connection_close_block_invoke";
      if (v6)
      {
        v7 = (v6 + 205);
      }

      else
      {
        v7 = "";
      }

      v11 = 2082;
      v12 = v7;
      v13 = 2048;
      v14 = a2;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s %{public}s input protocol in node %p in protocol table is NULL, skipping", &v9, 0x20u);
    }
  }

  return 1;
}

uint64_t on_frame_not_send_callback(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    if (a2)
    {
      if (v8)
      {
        v9 = nghttp2_strerror();
        v10 = *(a2 + 12);
        v11 = *(a2 + 2);
        v12 = *a2;
        *buf = 136447746;
        v26 = "on_frame_not_send_callback";
        v27 = 2082;
        v28 = (a4 + 205);
        v29 = 1024;
        v30 = a3;
        v31 = 2080;
        v32 = v9;
        v33 = 1024;
        v34 = v10;
        v35 = 1024;
        v36 = v11;
        v37 = 2048;
        v38 = v12;
        v13 = "%{public}s %{public}s called with error %d (%s) for frame type %u on stream %d length (no header) %zu";
        v14 = v7;
        v15 = 60;
LABEL_7:
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
      }
    }

    else if (v8)
    {
      *buf = 136446722;
      v26 = "on_frame_not_send_callback";
      v27 = 2082;
      v28 = (a4 + 205);
      v29 = 1024;
      v30 = a3;
      v13 = "%{public}s %{public}s called with error %d";
      v14 = v7;
      v15 = 28;
      goto LABEL_7;
    }

    *(a4 + 204) |= 8u;
    return 4294966394;
  }

  __nwlog_obj();
  *buf = 136446210;
  v26 = "on_frame_not_send_callback";
  v17 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v17, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v26 = "on_frame_not_send_callback";
      v20 = "%{public}s nghttp2 user data is NULL, not http2_transport";
      goto LABEL_23;
    }

    if (v23 != 1)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v26 = "on_frame_not_send_callback";
      v20 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
      goto LABEL_23;
    }

    backtrace_string = __nw_create_backtrace_string();
    v18 = __nwlog_obj();
    v19 = type;
    v22 = os_log_type_enabled(v18, type);
    if (backtrace_string)
    {
      if (v22)
      {
        *buf = 136446466;
        v26 = "on_frame_not_send_callback";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_24;
    }

    if (v22)
    {
      *buf = 136446210;
      v26 = "on_frame_not_send_callback";
      v20 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
LABEL_23:
      _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
    }
  }

LABEL_24:
  if (v17)
  {
    free(v17);
  }

  return 4294966394;
}

uint64_t nw_http2_transport_drain_next_frame_for_stream(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v65 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v20 = __nwlog_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = "";
      if (a1)
      {
        v21 = (a1 + 205);
      }

      *buf = 136446466;
      v59 = "nw_http2_transport_drain_next_frame_for_stream";
      v60 = 2082;
      v61 = v21;
      _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v59 = "nw_http2_transport_drain_next_frame_for_stream";
    v22 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v22, &type, &v56))
    {
      goto LABEL_94;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v56 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_94;
        }

        *buf = 136446210;
        v59 = "nw_http2_transport_drain_next_frame_for_stream";
        v25 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_93;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v33 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (!v33)
        {
          goto LABEL_94;
        }

        *buf = 136446210;
        v59 = "nw_http2_transport_drain_next_frame_for_stream";
        v25 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_93;
      }

      if (v33)
      {
        *buf = 136446466;
        v59 = "nw_http2_transport_drain_next_frame_for_stream";
        v60 = 2082;
        v61 = backtrace_string;
        v34 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
LABEL_56:
        _os_log_impl(&dword_181A37000, v23, v24, v34, buf, 0x16u);
      }

LABEL_57:
      free(backtrace_string);
      goto LABEL_94;
    }

    v23 = __nwlog_obj();
    v24 = type;
    if (!os_log_type_enabled(v23, type))
    {
      goto LABEL_94;
    }

    *buf = 136446210;
    v59 = "nw_http2_transport_drain_next_frame_for_stream";
    v25 = "%{public}s called with null http2_transport";
LABEL_93:
    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
LABEL_94:
    if (v22)
    {
      free(v22);
    }

    return 0;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v59 = "nw_http2_transport_drain_next_frame_for_stream";
    v22 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v22, &type, &v56))
    {
      goto LABEL_94;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_94;
      }

      *buf = 136446210;
      v59 = "nw_http2_transport_drain_next_frame_for_stream";
      v25 = "%{public}s called with null input_handler";
      goto LABEL_93;
    }

    if (v56 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_94;
      }

      *buf = 136446210;
      v59 = "nw_http2_transport_drain_next_frame_for_stream";
      v25 = "%{public}s called with null input_handler, backtrace limit exceeded";
      goto LABEL_93;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v35 = os_log_type_enabled(v23, type);
    if (backtrace_string)
    {
      if (v35)
      {
        *buf = 136446466;
        v59 = "nw_http2_transport_drain_next_frame_for_stream";
        v60 = 2082;
        v61 = backtrace_string;
        v34 = "%{public}s called with null input_handler, dumping backtrace:%{public}s";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (!v35)
    {
      goto LABEL_94;
    }

    *buf = 136446210;
    v59 = "nw_http2_transport_drain_next_frame_for_stream";
    v25 = "%{public}s called with null input_handler, no backtrace";
    goto LABEL_93;
  }

  v8 = *(a3 + 16);
  if (v8)
  {
    if (gLogDatapath)
    {
      v26 = __nwlog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = *(v8 + 52);
        if (v27)
        {
          v27 -= *(v8 + 56) + *(v8 + 60);
        }

        *buf = 136446722;
        v59 = "nw_http2_transport_drain_next_frame_for_stream";
        v60 = 2082;
        v61 = (a1 + 205);
        v62 = 1024;
        *v63 = v27;
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s draining output frame of %u bytes", buf, 0x1Cu);
      }
    }

    result = nw_http2_transport_submit_data(a1, v8);
    v10 = gLogDatapath;
    if (result)
    {
      if (gLogDatapath)
      {
        v55 = result;
        v43 = __nwlog_obj();
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);
        result = v55;
        if (v44)
        {
          v45 = *(v8 + 52);
          if (v45)
          {
            v45 -= *(v8 + 56) + *(v8 + 60);
          }

          v46 = *(a3 + 32);
          *buf = 136446978;
          v59 = "nw_http2_transport_drain_next_frame_for_stream";
          v60 = 2082;
          v61 = (a1 + 205);
          v62 = 1024;
          *v63 = v45;
          *&v63[4] = 1024;
          *&v63[6] = v46;
          _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s drained %u output bytes for stream %d", buf, 0x22u);
          result = v55;
        }
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v11)
      {
        v13 = *(v8 + 16);
      }

      else
      {
        v13 = a3;
      }

      *(v13 + 24) = v12;
      *v12 = v11;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      v10 = gLogDatapath;
    }

    if (v10)
    {
      v28 = result;
      v29 = __nwlog_obj();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
      result = v28;
      if (v30)
      {
        *buf = 0;
        nw_frame_array_get_frame_count((a3 + 16), 0, buf);
        v31 = *buf;
        *buf = 136446722;
        v59 = "nw_http2_transport_drain_next_frame_for_stream";
        v60 = 2082;
        v61 = (a1 + 205);
        v62 = 1024;
        *v63 = v31;
        _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s stream now has %u bytes pending", buf, 0x1Cu);
        result = v28;
      }
    }

    if (a4)
    {
      v14 = result;
      nw_http2_transport_session_send(a1);
      result = v14;
    }

    v15 = *(a3 + 16);
    if (result)
    {
      if (v15)
      {
        return 1;
      }

      if ((*(a3 + 36) & 4) == 0)
      {
        goto LABEL_24;
      }

      v16 = result;
      if (gLogDatapath == 1)
      {
        v53 = __nwlog_obj();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v59 = "nw_http2_transport_drain_next_frame_for_stream";
          v60 = 2082;
          v61 = (a1 + 205);
          _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s sending deferred end stream", buf, 0x16u);
        }
      }

      nw_http2_transport_send_end_stream(a1, a3);
      v15 = *(a3 + 16);
      result = v16;
    }

    if (v15)
    {
      return result;
    }

LABEL_24:
    v17 = result;
    if (gLogDatapath == 1)
    {
      v47 = __nwlog_obj();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        v48 = *(a3 + 32);
        *buf = 136446978;
        v59 = "nw_http2_transport_drain_next_frame_for_stream";
        v60 = 2082;
        v61 = (a1 + 205);
        v62 = 2048;
        *v63 = a2;
        *&v63[8] = 1024;
        v64 = v48;
        _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s delivering output available to protocol %p for stream %d", buf, 0x26u);
      }
    }

    v18 = *(a2 + 24);
    if (v18)
    {
      v19 = *(v18 + 72);
      if (v19)
      {
        v19(a2, a1);
        return v17;
      }
    }

    __nwlog_obj();
    v36 = *(a2 + 16);
    if (!v36)
    {
      v36 = "invalid";
    }

    *buf = 136446466;
    v59 = "nw_http2_transport_drain_next_frame_for_stream";
    v60 = 2082;
    v61 = v36;
    v37 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (__nwlog_fault(v37, &type, &v56))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v38 = __nwlog_obj();
        v39 = type;
        if (!os_log_type_enabled(v38, type))
        {
          goto LABEL_103;
        }

        v40 = *(a2 + 16);
        if (!v40)
        {
          v40 = "invalid";
        }

        *buf = 136446466;
        v59 = "nw_http2_transport_drain_next_frame_for_stream";
        v60 = 2082;
        v61 = v40;
        v41 = "%{public}s protocol %{public}s has invalid output_available callback";
        goto LABEL_102;
      }

      if (v56 != 1)
      {
        v38 = __nwlog_obj();
        v39 = type;
        if (!os_log_type_enabled(v38, type))
        {
          goto LABEL_103;
        }

        v52 = *(a2 + 16);
        if (!v52)
        {
          v52 = "invalid";
        }

        *buf = 136446466;
        v59 = "nw_http2_transport_drain_next_frame_for_stream";
        v60 = 2082;
        v61 = v52;
        v41 = "%{public}s protocol %{public}s has invalid output_available callback, backtrace limit exceeded";
        goto LABEL_102;
      }

      v49 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type;
      v50 = os_log_type_enabled(v38, type);
      if (v49)
      {
        if (v50)
        {
          v51 = *(a2 + 16);
          if (!v51)
          {
            v51 = "invalid";
          }

          *buf = 136446722;
          v59 = "nw_http2_transport_drain_next_frame_for_stream";
          v60 = 2082;
          v61 = v51;
          v62 = 2082;
          *v63 = v49;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s protocol %{public}s has invalid output_available callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v49);
        goto LABEL_103;
      }

      if (v50)
      {
        v54 = *(a2 + 16);
        if (!v54)
        {
          v54 = "invalid";
        }

        *buf = 136446466;
        v59 = "nw_http2_transport_drain_next_frame_for_stream";
        v60 = 2082;
        v61 = v54;
        v41 = "%{public}s protocol %{public}s has invalid output_available callback, no backtrace";
LABEL_102:
        _os_log_impl(&dword_181A37000, v38, v39, v41, buf, 0x16u);
      }
    }

LABEL_103:
    if (v37)
    {
      free(v37);
    }

    return v17;
  }

  if (!gLogDatapath)
  {
    return 0;
  }

  v42 = __nwlog_obj();
  result = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446466;
    v59 = "nw_http2_transport_drain_next_frame_for_stream";
    v60 = 2082;
    v61 = (a1 + 205);
    _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s no next frame to drain", buf, 0x16u);
    return 0;
  }

  return result;
}

void nw_http2_transport_send_end_stream(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v20 = a2;
    v21 = __nwlog_obj();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    a2 = v20;
    if (v22)
    {
      *buf = 136446466;
      v35 = "nw_http2_transport_send_end_stream";
      v36 = 2082;
      v37 = a1 + 205;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
      a2 = v20;
    }
  }

  if ((*(a2 + 36) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v35 = "nw_http2_transport_send_end_stream";
      v36 = 2082;
      v37 = a1 + 205;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s %{public}s ERROR: Cannot send end stream on a closed stream", buf, 0x16u);
    }

    return;
  }

  v4 = (a2 + 16);
  if (*(a2 + 16))
  {
    if (gLogDatapath)
    {
      v23 = a2;
      v24 = __nwlog_obj();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
      a2 = v23;
      if (v25)
      {
        *buf = 0;
        nw_frame_array_get_frame_count(v4, 0, buf);
        v26 = *buf;
        *buf = 136446722;
        v35 = "nw_http2_transport_send_end_stream";
        v36 = 2082;
        v37 = a1 + 205;
        v38 = 1024;
        LODWORD(v39) = v26;
        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s deferring end stream until all pending bytes (%u) are sent", buf, 0x1Cu);
        a2 = v23;
      }
    }

    *(a2 + 36) |= 4u;
    return;
  }

  if (gLogDatapath)
  {
    v27 = a2;
    v28 = __nwlog_obj();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
    a2 = v27;
    if (v29)
    {
      v30 = *(v27 + 32);
      *buf = 136446722;
      v35 = "nw_http2_transport_send_end_stream";
      v36 = 2082;
      v37 = a1 + 205;
      v38 = 1024;
      LODWORD(v39) = v30;
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s writing end stream on stream %d", buf, 0x1Cu);
      a2 = v27;
    }
  }

  v5 = a2;
  v6 = nghttp2_submit_data();
  if ((v6 & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(v5 + 32);
      *buf = 136446722;
      v35 = "nw_http2_transport_send_end_stream";
      v36 = 2082;
      v37 = a1 + 205;
      v38 = 1024;
      LODWORD(v39) = v8;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s submitted end stream for stream %d", buf, 0x1Cu);
    }

    *(v5 + 36) &= ~4u;
    nw_http2_transport_session_send(a1);
    return;
  }

  if (v6 == -529)
  {
    if (gLogDatapath == 1)
    {
      v31 = __nwlog_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v35 = "nw_http2_transport_send_end_stream";
        v36 = 2082;
        v37 = a1 + 205;
        _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s continuing (or starting) to defer end stream until all pending bytes are sent", buf, 0x16u);
      }
    }

    *(v5 + 36) |= 4u;
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = nghttp2_strerror();
  *buf = 136446466;
  v35 = "nw_http2_transport_send_end_stream";
  v36 = 2082;
  v37 = v9;
  v10 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v10, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_30;
      }

      v13 = nghttp2_strerror();
      *buf = 136446466;
      v35 = "nw_http2_transport_send_end_stream";
      v36 = 2082;
      v37 = v13;
      v14 = "%{public}s nghttp2_submit_data: %{public}s failed";
      goto LABEL_29;
    }

    if (v32 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_30;
      }

      v18 = nghttp2_strerror();
      *buf = 136446466;
      v35 = "nw_http2_transport_send_end_stream";
      v36 = 2082;
      v37 = v18;
      v14 = "%{public}s nghttp2_submit_data: %{public}s failed, backtrace limit exceeded";
      goto LABEL_29;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v16 = os_log_type_enabled(v11, type);
    if (backtrace_string)
    {
      if (v16)
      {
        v17 = nghttp2_strerror();
        *buf = 136446722;
        v35 = "nw_http2_transport_send_end_stream";
        v36 = 2082;
        v37 = v17;
        v38 = 2082;
        v39 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s nghttp2_submit_data: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
      goto LABEL_30;
    }

    if (v16)
    {
      v19 = nghttp2_strerror();
      *buf = 136446466;
      v35 = "nw_http2_transport_send_end_stream";
      v36 = 2082;
      v37 = v19;
      v14 = "%{public}s nghttp2_submit_data: %{public}s failed, no backtrace";
LABEL_29:
      _os_log_impl(&dword_181A37000, v11, v12, v14, buf, 0x16u);
    }
  }

LABEL_30:
  if (v10)
  {
    free(v10);
  }
}

uint64_t nw_http2_transport_empty_frame_data_source_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *a5 = 1;
    return 0;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_http2_transport_empty_frame_data_source_callback";
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
        goto LABEL_18;
      }

      *buf = 136446210;
      v15 = "nw_http2_transport_empty_frame_data_source_callback";
      v9 = "%{public}s called with null data_flags";
      goto LABEL_17;
    }

    if (v12 != 1)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v15 = "nw_http2_transport_empty_frame_data_source_callback";
      v9 = "%{public}s called with null data_flags, backtrace limit exceeded";
      goto LABEL_17;
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
        v15 = "nw_http2_transport_empty_frame_data_source_callback";
        v16 = 2082;
        v17 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null data_flags, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v11)
    {
      *buf = 136446210;
      v15 = "nw_http2_transport_empty_frame_data_source_callback";
      v9 = "%{public}s called with null data_flags, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    }
  }

LABEL_18:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

uint64_t nw_http2_transport_get_protocol_from_stream_id(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 <= 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "nw_http2_transport_get_protocol_from_stream_id";
      v18 = 2082;
      v19 = a1 + 205;
      v20 = 1024;
      v21 = a2;
      v10 = "%{public}s %{public}s requested stream id (%d) is not valid, returning NULL protocol";
      v11 = v12;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_11:
      _os_log_impl(&dword_181A37000, v11, v13, v10, buf, 0x1Cu);
    }
  }

  else
  {
    v15 = 0;
    stream_from_id = nw_http2_transport_get_stream_from_id(a1, a2, &v15);
    if (stream_from_id)
    {
      v5 = stream_from_id;
      result = v15;
      if (v15)
      {
        return result;
      }

      v7 = v5;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        v9 = *(v7 + 32);
        *buf = 136446722;
        v17 = "nw_http2_transport_get_protocol_from_stream_id";
        v18 = 2082;
        v19 = a1 + 205;
        v20 = 1024;
        v21 = v9;
        v10 = "%{public}s %{public}s no input handler attached to stream %d";
        v11 = v8;
LABEL_10:
        v13 = OS_LOG_TYPE_INFO;
        goto LABEL_11;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        v17 = "nw_http2_transport_get_protocol_from_stream_id";
        v18 = 2082;
        v19 = a1 + 205;
        v20 = 1024;
        v21 = a2;
        v10 = "%{public}s %{public}s could not find stream for stream %d";
        v11 = v14;
        goto LABEL_10;
      }
    }
  }

  return 0;
}

uint64_t on_begin_headers_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v97 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v92 = "on_begin_headers_callback";
    v64 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (!__nwlog_fault(v64, type, &v90))
    {
      goto LABEL_148;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v65 = __nwlog_obj();
      v66 = type[0];
      if (!os_log_type_enabled(v65, type[0]))
      {
        goto LABEL_148;
      }

      *buf = 136446210;
      v92 = "on_begin_headers_callback";
      v67 = "%{public}s nghttp2 user data is NULL, not http2_transport";
    }

    else if (v90 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v65 = __nwlog_obj();
      v66 = type[0];
      v70 = os_log_type_enabled(v65, type[0]);
      if (backtrace_string)
      {
        if (v70)
        {
          *buf = 136446466;
          v92 = "on_begin_headers_callback";
          v93 = 2082;
          v94 = backtrace_string;
          _os_log_impl(&dword_181A37000, v65, v66, "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_148;
      }

      if (!v70)
      {
LABEL_148:
        if (v64)
        {
          free(v64);
        }

        return 4294966394;
      }

      *buf = 136446210;
      v92 = "on_begin_headers_callback";
      v67 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
    }

    else
    {
      v65 = __nwlog_obj();
      v66 = type[0];
      if (!os_log_type_enabled(v65, type[0]))
      {
        goto LABEL_148;
      }

      *buf = 136446210;
      v92 = "on_begin_headers_callback";
      v67 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v65, v66, v67, buf, 0xCu);
    goto LABEL_148;
  }

  if (gLogDatapath == 1)
  {
    v68 = __nwlog_obj();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v92 = "on_begin_headers_callback";
      v93 = 2082;
      v94 = a3 + 205;
      _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
    }
  }

  v5 = *(a2 + 12);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (v5 == 5)
  {
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 4294966775;
    }

    *buf = 136446466;
    v92 = "on_begin_headers_callback";
    v93 = 2082;
    v94 = a3 + 205;
    v14 = "%{public}s %{public}s push promise frames currently not supported";
    v15 = v6;
    v16 = 22;
    goto LABEL_20;
  }

  if (v5 != 1)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v92 = "on_begin_headers_callback";
      v93 = 2082;
      v94 = a3 + 205;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s %{public}s returning callback failure with unknown error", buf, 0x16u);
    }

    return 4294966394;
  }

  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a2 + 8);
    *buf = 136446722;
    v92 = "on_begin_headers_callback";
    v93 = 2082;
    v94 = a3 + 205;
    v95 = 1024;
    *v96 = v7;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s got header frame on stream %d", buf, 0x1Cu);
  }

  stream_node_from_id = nw_http2_transport_get_stream_node_from_id(a3, *(a2 + 8));
  if (!stream_node_from_id)
  {
    if (*(a3 + 104))
    {
      if (!*(a3 + 96))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v42 = a3 + 205;
        *buf = 136446466;
        v92 = "on_begin_headers_callback";
        v93 = 2082;
        v94 = a3 + 205;
        v32 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v90 = 0;
        if (!__nwlog_fault(v32, type, &v90))
        {
          goto LABEL_127;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v43 = __nwlog_obj();
          v44 = type[0];
          if (!os_log_type_enabled(v43, type[0]))
          {
            goto LABEL_127;
          }

          *buf = 136446466;
          v92 = "on_begin_headers_callback";
          v93 = 2082;
          v94 = v42;
          v36 = "%{public}s %{public}s http2_transport has no remote endpoint when new stream is being opened";
LABEL_125:
          v59 = v43;
          v60 = v44;
          v61 = 22;
          goto LABEL_126;
        }

        if (v90 != 1)
        {
          v43 = __nwlog_obj();
          v44 = type[0];
          if (!os_log_type_enabled(v43, type[0]))
          {
            goto LABEL_127;
          }

          *buf = 136446466;
          v92 = "on_begin_headers_callback";
          v93 = 2082;
          v94 = v42;
          v36 = "%{public}s %{public}s http2_transport has no remote endpoint when new stream is being opened, backtrace limit exceeded";
          goto LABEL_125;
        }

        v51 = __nw_create_backtrace_string();
        v43 = __nwlog_obj();
        v44 = type[0];
        v52 = os_log_type_enabled(v43, type[0]);
        if (!v51)
        {
          if (!v52)
          {
            goto LABEL_127;
          }

          *buf = 136446466;
          v92 = "on_begin_headers_callback";
          v93 = 2082;
          v94 = v42;
          v36 = "%{public}s %{public}s http2_transport has no remote endpoint when new stream is being opened, no backtrace";
          goto LABEL_125;
        }

        if (v52)
        {
          *buf = 136446722;
          v92 = "on_begin_headers_callback";
          v93 = 2082;
          v94 = v42;
          v95 = 2082;
          *v96 = v51;
          v53 = "%{public}s %{public}s http2_transport has no remote endpoint when new stream is being opened, dumping backtrace:%{public}s";
LABEL_108:
          _os_log_impl(&dword_181A37000, v43, v44, v53, buf, 0x20u);
        }

LABEL_109:
        free(v51);
        goto LABEL_127;
      }

      v17 = *(a2 + 8);
      if (gLogDatapath == 1)
      {
        v71 = __nwlog_obj();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v92 = "on_begin_headers_callback";
          v93 = 2082;
          v94 = a3 + 205;
          _os_log_impl(&dword_181A37000, v71, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s detected new stream initiated from remote side of the connection, allocating new stream", buf, 0x16u);
        }
      }

      v18 = malloc_type_calloc(1uLL, 0x28uLL, 0x68BAAFB9uLL);
      if (!v18)
      {
        v19 = __nwlog_obj();
        os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        v92 = "on_begin_headers_callback";
        v93 = 2048;
        v94 = 1;
        v95 = 2048;
        *v96 = 40;
        v20 = _os_log_send_and_compose_impl();
        result = __nwlog_should_abort(v20);
        if (result)
        {
          __break(1u);
          return result;
        }

        free(v20);
      }

      v21 = *(a3 + 88);
      if (v21)
      {
        v22 = _nw_parameters_copy(v21);
        nw_http2_transport_stream_init(v18);
        v18[8] = v17;
        *(v18 + 36) |= 8u;
        if (v17 > *(a3 + 200) && (*(a3 + 204) & 1) == 0)
        {
          *(a3 + 200) = v17;
        }

        if (!nw_http2_transport_add_to_id_table(a3, v18, 0))
        {
          v55 = __nwlog_obj();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v92 = "on_begin_headers_callback";
            v93 = 2082;
            v94 = a3 + 205;
            _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_ERROR, "%{public}s %{public}s failed to add new stream to the id based hash table", buf, 0x16u);
          }

          free(v18);
          if (v22)
          {
            os_release(v22);
          }

          return 4294966775;
        }

        nw_parameters_set_server_mode(v22);
        *type = 0;
        v87 = type;
        v88 = 0x2000000000;
        v89 = 0;
        if (nw_protocol_http2_transport_identifier::onceToken[0] != -1)
        {
          dispatch_once(nw_protocol_http2_transport_identifier::onceToken, &__block_literal_global_40061);
        }

        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 0x40000000;
        v85[2] = ___ZL25on_begin_headers_callbackP15nghttp2_sessionPK13nghttp2_framePv_block_invoke;
        v85[3] = &unk_1E6A32250;
        v85[4] = type;
        nw_protocol_parameters_iterate_stack(v22, 4, &g_http2_transport_protocol_identifier, v85);
        if (!*(v87 + 3))
        {
          if (nw_protocol_http2_transport_identifier::onceToken[0] != -1)
          {
            dispatch_once(nw_protocol_http2_transport_identifier::onceToken, &__block_literal_global_40061);
          }

          v84[0] = MEMORY[0x1E69E9820];
          v84[1] = 0x40000000;
          v84[2] = ___ZL25on_begin_headers_callbackP15nghttp2_sessionPK13nghttp2_framePv_block_invoke_2;
          v84[3] = &unk_1E6A32278;
          v84[4] = type;
          nw_protocol_parameters_iterate_stack(v22, 3, &g_http2_transport_protocol_identifier, v84);
          if (!*(v87 + 3))
          {
            if (nw_protocol_http2_transport_identifier::onceToken[0] != -1)
            {
              dispatch_once(nw_protocol_http2_transport_identifier::onceToken, &__block_literal_global_40061);
            }

            v83[0] = MEMORY[0x1E69E9820];
            v83[1] = 0x40000000;
            v83[2] = ___ZL25on_begin_headers_callbackP15nghttp2_sessionPK13nghttp2_framePv_block_invoke_3;
            v83[3] = &unk_1E6A322A0;
            v83[4] = type;
            nw_protocol_parameters_iterate_stack(v22, 2, &g_http2_transport_protocol_identifier, v83);
          }
        }

        v23 = xpc_int64_create(v17);
        nw_parameters_set_protocol_value(*(v87 + 3), "incomingStreamId", v23);
        if (v23)
        {
          xpc_release(v23);
        }

        if (gLogDatapath == 1)
        {
          v77 = __nwlog_obj();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
          {
            v78 = *(v87 + 3);
            *buf = 136446978;
            v92 = "on_begin_headers_callback";
            v93 = 2082;
            v94 = a3 + 205;
            v95 = 2048;
            *v96 = v22;
            *&v96[8] = 2048;
            *&v96[10] = v78;
            _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s using parameters %p, protocol parameters %p on new incoming stream", buf, 0x2Au);
          }
        }

        v24 = v87;
        v25 = *(v87 + 3);
        if (v25)
        {
          os_release(v25);
          v24 = v87;
          *(v87 + 3) = 0;
        }

        *(v24 + 3) = 0;
        v26 = *(a3 + 104);
        if (v26 && (v27 = *v26) != 0 && *v27)
        {
          if (gLogDatapath == 1)
          {
            v79 = __nwlog_obj();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v92 = "on_begin_headers_callback";
              v93 = 2082;
              v94 = a3 + 205;
              v95 = 1024;
              *v96 = v17;
              _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s calling listen handler for new stream %d", buf, 0x1Cu);
            }
          }

          v28 = (***(a3 + 104))(*(a3 + 104), *(a3 + 96), v22);
          if (gLogDatapath == 1)
          {
            v80 = v28;
            v81 = __nwlog_obj();
            v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG);
            v28 = v80;
            if (v82)
            {
              *buf = 136446722;
              v92 = "on_begin_headers_callback";
              v93 = 2082;
              v94 = a3 + 205;
              v95 = 1024;
              *v96 = v17;
              _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called into listen handler for new stream %d", buf, 0x1Cu);
              v28 = v80;
            }
          }

          if ((v28 & 1) == 0)
          {
            v29 = __nwlog_obj();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v92 = "on_begin_headers_callback";
              v93 = 2082;
              v94 = a3 + 205;
              v95 = 1024;
              *v96 = v17;
              _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, "%{public}s %{public}s listen handler didn't accept the new flow for stream id %d", buf, 0x1Cu);
            }

            nw_http2_transport_stream_close(a3, v18);
          }

          if (!v22)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v72 = __nwlog_obj();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v92 = "on_begin_headers_callback";
            v93 = 2082;
            v94 = a3 + 205;
            _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_ERROR, "%{public}s %{public}s listen handler has no new_flow callback, ignoring incoming flow", buf, 0x16u);
          }

          nw_http2_transport_stream_close(a3, v18);
          if (!v22)
          {
            goto LABEL_60;
          }
        }

        os_release(v22);
LABEL_60:
        _Block_object_dispose(type, 8);
        return 0;
      }

      __nwlog_obj();
      v46 = a3 + 205;
      *buf = 136446466;
      v92 = "on_begin_headers_callback";
      v93 = 2082;
      v94 = a3 + 205;
      v47 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v90 = 0;
      if (__nwlog_fault(v47, type, &v90))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v48 = __nwlog_obj();
          v49 = type[0];
          if (os_log_type_enabled(v48, type[0]))
          {
            *buf = 136446466;
            v92 = "on_begin_headers_callback";
            v93 = 2082;
            v94 = v46;
            v50 = "%{public}s %{public}s http2_transport->parameters is NULL when opening responder stream";
LABEL_118:
            _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0x16u);
          }
        }

        else if (v90 == 1)
        {
          v56 = __nw_create_backtrace_string();
          v48 = __nwlog_obj();
          v49 = type[0];
          v57 = os_log_type_enabled(v48, type[0]);
          if (v56)
          {
            if (v57)
            {
              *buf = 136446722;
              v92 = "on_begin_headers_callback";
              v93 = 2082;
              v94 = v46;
              v95 = 2082;
              *v96 = v56;
              _os_log_impl(&dword_181A37000, v48, v49, "%{public}s %{public}s http2_transport->parameters is NULL when opening responder stream, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v56);
            goto LABEL_119;
          }

          if (v57)
          {
            *buf = 136446466;
            v92 = "on_begin_headers_callback";
            v93 = 2082;
            v94 = v46;
            v50 = "%{public}s %{public}s http2_transport->parameters is NULL when opening responder stream, no backtrace";
            goto LABEL_118;
          }
        }

        else
        {
          v48 = __nwlog_obj();
          v49 = type[0];
          if (os_log_type_enabled(v48, type[0]))
          {
            *buf = 136446466;
            v92 = "on_begin_headers_callback";
            v93 = 2082;
            v94 = v46;
            v50 = "%{public}s %{public}s http2_transport->parameters is NULL when opening responder stream, backtrace limit exceeded";
            goto LABEL_118;
          }
        }
      }

LABEL_119:
      if (v47)
      {
        free(v47);
      }

      if (!v18)
      {
        return 4294966775;
      }

      v63 = v18;
      goto LABEL_129;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v37 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 4294966775;
    }

    v38 = *(a2 + 8);
    *buf = 136446722;
    v92 = "on_begin_headers_callback";
    v93 = 2082;
    v94 = a3 + 205;
    v95 = 1024;
    *v96 = v38;
    v14 = "%{public}s %{public}s http2_transport has no listen handler when new stream (%d) is being opened, closing";
    v15 = v37;
    v16 = 28;
LABEL_20:
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    return 4294966775;
  }

  v9 = *(stream_node_from_id + 16);
  if (!v9)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v30 = a3 + 205;
    v31 = *(a2 + 8);
    *buf = 136446722;
    v92 = "on_begin_headers_callback";
    v93 = 2082;
    v94 = a3 + 205;
    v95 = 1024;
    *v96 = v31;
    v32 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (!__nwlog_fault(v32, type, &v90))
    {
      goto LABEL_127;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      v34 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_127;
      }

      v35 = *(a2 + 8);
      *buf = 136446722;
      v92 = "on_begin_headers_callback";
      v93 = 2082;
      v94 = v30;
      v95 = 1024;
      *v96 = v35;
      v36 = "%{public}s %{public}s could not get stream (%d) from node";
    }

    else if (v90 == 1)
    {
      v39 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v34 = type[0];
      v40 = os_log_type_enabled(v33, type[0]);
      if (v39)
      {
        if (v40)
        {
          v41 = *(a2 + 8);
          *buf = 136446978;
          v92 = "on_begin_headers_callback";
          v93 = 2082;
          v94 = v30;
          v95 = 1024;
          *v96 = v41;
          *&v96[4] = 2082;
          *&v96[6] = v39;
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s %{public}s could not get stream (%d) from node, dumping backtrace:%{public}s", buf, 0x26u);
        }

        free(v39);
LABEL_127:
        if (v32)
        {
          v63 = v32;
LABEL_129:
          free(v63);
        }

        return 4294966775;
      }

      if (!v40)
      {
        goto LABEL_127;
      }

      v58 = *(a2 + 8);
      *buf = 136446722;
      v92 = "on_begin_headers_callback";
      v93 = 2082;
      v94 = v30;
      v95 = 1024;
      *v96 = v58;
      v36 = "%{public}s %{public}s could not get stream (%d) from node, no backtrace";
    }

    else
    {
      v33 = __nwlog_obj();
      v34 = type[0];
      if (!os_log_type_enabled(v33, type[0]))
      {
        goto LABEL_127;
      }

      v45 = *(a2 + 8);
      *buf = 136446722;
      v92 = "on_begin_headers_callback";
      v93 = 2082;
      v94 = v30;
      v95 = 1024;
      *v96 = v45;
      v36 = "%{public}s %{public}s could not get stream (%d) from node, backtrace limit exceeded";
    }

    v59 = v33;
    v60 = v34;
    v61 = 28;
LABEL_126:
    _os_log_impl(&dword_181A37000, v59, v60, v36, buf, v61);
    goto LABEL_127;
  }

  if (*(v9 + 32) != 1 || (~*(v9 + 36) & 0xA) != 0)
  {
    return 0;
  }

  if (gLogDatapath == 1)
  {
    v73 = stream_node_from_id;
    v74 = __nwlog_obj();
    v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG);
    stream_node_from_id = v73;
    if (v75)
    {
      *buf = 136446466;
      v92 = "on_begin_headers_callback";
      v93 = 2082;
      v94 = a3 + 205;
      _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s calling connect for initial responder stream upon receipt of headers from remote client", buf, 0x16u);
      stream_node_from_id = v73;
    }
  }

  v10 = *(stream_node_from_id + 32);
  if (!v10)
  {
    __nwlog_obj();
    v54 = a3 + 205;
    *buf = 136446466;
    v92 = "on_begin_headers_callback";
    v93 = 2082;
    v94 = a3 + 205;
    v32 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (!__nwlog_fault(v32, type, &v90))
    {
      goto LABEL_127;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v43 = __nwlog_obj();
      v44 = type[0];
      if (!os_log_type_enabled(v43, type[0]))
      {
        goto LABEL_127;
      }

      *buf = 136446466;
      v92 = "on_begin_headers_callback";
      v93 = 2082;
      v94 = v54;
      v36 = "%{public}s %{public}s no input handler yet attached to initial responder stream, closing stream 1";
      goto LABEL_125;
    }

    if (v90 != 1)
    {
      v43 = __nwlog_obj();
      v44 = type[0];
      if (!os_log_type_enabled(v43, type[0]))
      {
        goto LABEL_127;
      }

      *buf = 136446466;
      v92 = "on_begin_headers_callback";
      v93 = 2082;
      v94 = v54;
      v36 = "%{public}s %{public}s no input handler yet attached to initial responder stream, closing stream 1, backtrace limit exceeded";
      goto LABEL_125;
    }

    v51 = __nw_create_backtrace_string();
    v43 = __nwlog_obj();
    v44 = type[0];
    v62 = os_log_type_enabled(v43, type[0]);
    if (!v51)
    {
      if (!v62)
      {
        goto LABEL_127;
      }

      *buf = 136446466;
      v92 = "on_begin_headers_callback";
      v93 = 2082;
      v94 = v54;
      v36 = "%{public}s %{public}s no input handler yet attached to initial responder stream, closing stream 1, no backtrace";
      goto LABEL_125;
    }

    if (v62)
    {
      *buf = 136446722;
      v92 = "on_begin_headers_callback";
      v93 = 2082;
      v94 = v54;
      v95 = 2082;
      *v96 = v51;
      v53 = "%{public}s %{public}s no input handler yet attached to initial responder stream, closing stream 1, dumping backtrace:%{public}s";
      goto LABEL_108;
    }

    goto LABEL_109;
  }

  if (!nw_http2_transport_stream_connect(a3, v9, v10))
  {
    v11 = __nwlog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(v9 + 32);
      *buf = 136446978;
      v92 = "on_begin_headers_callback";
      v93 = 2082;
      v94 = a3 + 205;
      v95 = 1024;
      *v96 = v12;
      *&v96[4] = 2048;
      *&v96[6] = v9;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s %{public}s nw_http2_transport_stream_connect failed for stream id %d (%p)", buf, 0x26u);
    }
  }

  if (gLogDatapath != 1)
  {
    return 0;
  }

  v76 = __nwlog_obj();
  result = os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446466;
    v92 = "on_begin_headers_callback";
    v93 = 2082;
    v94 = a3 + 205;
    _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s connected initial responder stream", buf, 0x16u);
    return 0;
  }

  return result;
}

void nw_http2_transport_stream_init(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a1 = 0;
    *(a1 + 8) = a1;
    *(a1 + 16) = 0;
    *(a1 + 24) = a1 + 16;
    *(a1 + 32) = -1;
    *(a1 + 36) &= 0xF0u;
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v10 = "nw_http2_transport_stream_init";
  v1 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v7 = 0;
  if (__nwlog_fault(v1, &type, &v7))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v2 = __nwlog_obj();
      v3 = type;
      if (!os_log_type_enabled(v2, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v10 = "nw_http2_transport_stream_init";
      v4 = "%{public}s called with null stream";
      goto LABEL_17;
    }

    if (v7 != 1)
    {
      v2 = __nwlog_obj();
      v3 = type;
      if (!os_log_type_enabled(v2, type))
      {
        goto LABEL_18;
      }

      *buf = 136446210;
      v10 = "nw_http2_transport_stream_init";
      v4 = "%{public}s called with null stream, backtrace limit exceeded";
      goto LABEL_17;
    }

    backtrace_string = __nw_create_backtrace_string();
    v2 = __nwlog_obj();
    v3 = type;
    v6 = os_log_type_enabled(v2, type);
    if (backtrace_string)
    {
      if (v6)
      {
        *buf = 136446466;
        v10 = "nw_http2_transport_stream_init";
        v11 = 2082;
        v12 = backtrace_string;
        _os_log_impl(&dword_181A37000, v2, v3, "%{public}s called with null stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_18;
    }

    if (v6)
    {
      *buf = 136446210;
      v10 = "nw_http2_transport_stream_init";
      v4 = "%{public}s called with null stream, no backtrace";
LABEL_17:
      _os_log_impl(&dword_181A37000, v2, v3, v4, buf, 0xCu);
    }
  }

LABEL_18:
  if (v1)
  {
    free(v1);
  }
}

uint64_t nw_http2_transport_add_to_id_table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_http2_transport_add_to_id_table";
    v20 = _os_log_send_and_compose_impl();
    v46 = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, &v46, &type))
    {
      goto LABEL_35;
    }

    if (v46 == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = v46;
      if (!os_log_type_enabled(v21, v46))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v48 = "nw_http2_transport_add_to_id_table";
      v23 = "%{public}s called with null stream";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = v46;
      v40 = os_log_type_enabled(v21, v46);
      if (backtrace_string)
      {
        if (v40)
        {
          *buf = 136446466;
          v48 = "nw_http2_transport_add_to_id_table";
          v49 = 2082;
          v50 = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_35;
      }

      if (!v40)
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v48 = "nw_http2_transport_add_to_id_table";
      v23 = "%{public}s called with null stream, no backtrace";
    }

    else
    {
      v21 = __nwlog_obj();
      v22 = v46;
      if (!os_log_type_enabled(v21, v46))
      {
        goto LABEL_35;
      }

      *buf = 136446210;
      v48 = "nw_http2_transport_add_to_id_table";
      v23 = "%{public}s called with null stream, backtrace limit exceeded";
    }

LABEL_33:
    v29 = v21;
    v30 = v22;
LABEL_34:
    _os_log_impl(&dword_181A37000, v29, v30, v23, buf, 0xCu);
    goto LABEL_35;
  }

  if (gLogDatapath == 1)
  {
    v33 = __nwlog_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = *(a2 + 32);
      *buf = 136446978;
      v48 = "nw_http2_transport_add_to_id_table";
      v49 = 2082;
      v50 = (a1 + 205);
      v51 = 1024;
      *v52 = v34;
      *&v52[4] = 2048;
      *&v52[6] = a2;
      _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called for stream %d (%p)", buf, 0x26u);
    }
  }

  v46 = OS_LOG_TYPE_DEFAULT;
  internal = *(a1 + 120);
  if (!internal)
  {
    internal = nw_hash_table_create_internal(0x11u, 8, stream_get_key, stream_key_hash, stream_matches_key, 0, 0);
    if (internal)
    {
      *(internal + 56) &= ~2u;
      *(a1 + 120) = internal;
      goto LABEL_6;
    }

    *(a1 + 120) = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v48 = "nw_http2_transport_add_to_id_table";
    v20 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v20, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v48 = "nw_http2_transport_add_to_id_table";
        v23 = "%{public}s nw_hash_table_create_no_lock failed";
        goto LABEL_33;
      }

      if (v44 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v48 = "nw_http2_transport_add_to_id_table";
        v23 = "%{public}s nw_hash_table_create_no_lock failed, backtrace limit exceeded";
        goto LABEL_33;
      }

      v25 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      v28 = os_log_type_enabled(gLogObj, type);
      if (v25)
      {
        if (v28)
        {
          *buf = 136446466;
          v48 = "nw_http2_transport_add_to_id_table";
          v49 = 2082;
          v50 = v25;
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s nw_hash_table_create_no_lock failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v25);
      }

      else if (v28)
      {
        *buf = 136446210;
        v48 = "nw_http2_transport_add_to_id_table";
        v23 = "%{public}s nw_hash_table_create_no_lock failed, no backtrace";
        v29 = v26;
        v30 = v27;
        goto LABEL_34;
      }
    }

LABEL_35:
    if (v20)
    {
      v31 = v20;
LABEL_42:
      free(v31);
    }

    return 0;
  }

LABEL_6:
  result = nw_hash_table_add_object(internal, a2, &v46);
  if ((v46 & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = (a1 + 205);
    v11 = *(a2 + 32);
    *buf = 136446722;
    v48 = "nw_http2_transport_add_to_id_table";
    v49 = 2082;
    v50 = (a1 + 205);
    v51 = 1024;
    *v52 = v11;
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v12, &type, &v44))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_40;
      }

      v15 = *(a2 + 32);
      *buf = 136446722;
      v48 = "nw_http2_transport_add_to_id_table";
      v49 = 2082;
      v50 = v10;
      v51 = 1024;
      *v52 = v15;
      v16 = "%{public}s %{public}s http2_transport already has stream id registered for %d";
    }

    else if (v44 == 1)
    {
      v17 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      v18 = os_log_type_enabled(gLogObj, type);
      if (v17)
      {
        if (v18)
        {
          v19 = *(a2 + 32);
          *buf = 136446978;
          v48 = "nw_http2_transport_add_to_id_table";
          v49 = 2082;
          v50 = v10;
          v51 = 1024;
          *v52 = v19;
          *&v52[4] = 2082;
          *&v52[6] = v17;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s %{public}s http2_transport already has stream id registered for %d, dumping backtrace:%{public}s", buf, 0x26u);
        }

        free(v17);
LABEL_40:
        if (v12)
        {
          v31 = v12;
          goto LABEL_42;
        }

        return 0;
      }

      if (!v18)
      {
        goto LABEL_40;
      }

      v32 = *(a2 + 32);
      *buf = 136446722;
      v48 = "nw_http2_transport_add_to_id_table";
      v49 = 2082;
      v50 = v10;
      v51 = 1024;
      *v52 = v32;
      v16 = "%{public}s %{public}s http2_transport already has stream id registered for %d, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_40;
      }

      v24 = *(a2 + 32);
      *buf = 136446722;
      v48 = "nw_http2_transport_add_to_id_table";
      v49 = 2082;
      v50 = v10;
      v51 = 1024;
      *v52 = v24;
      v16 = "%{public}s %{public}s http2_transport already has stream id registered for %d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v13, v14, v16, buf, 0x1Cu);
    goto LABEL_40;
  }

  if (gLogDatapath == 1)
  {
    v35 = result;
    v36 = __nwlog_obj();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG);
    result = v35;
    if (v37)
    {
      v38 = *(a2 + 32);
      *buf = 136446722;
      v48 = "nw_http2_transport_add_to_id_table";
      v49 = 2082;
      v50 = (a1 + 205);
      v51 = 1024;
      *v52 = v38;
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s added stream %d to stream id hash table", buf, 0x1Cu);
      result = v35;
    }
  }

  if (a3)
  {
    if (gLogDatapath == 1)
    {
      v41 = result;
      v42 = __nwlog_obj();
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
      result = v41;
      if (v43)
      {
        *buf = 136447234;
        v48 = "nw_http2_transport_add_to_id_table";
        v49 = 2082;
        v50 = (a1 + 205);
        v51 = 2048;
        *v52 = a2;
        *&v52[8] = 2048;
        *&v52[10] = v41;
        v53 = 2048;
        v54 = a3;
        _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s connecting stream %p node %p with protocol %p", buf, 0x34u);
        result = v41;
      }
    }

    v8 = result;
    extra = nw_hash_node_get_extra(result);
    result = v8;
    *extra = a3;
  }

  return result;
}

uint64_t ___ZL25on_begin_headers_callbackP15nghttp2_sessionPK13nghttp2_framePv_block_invoke(uint64_t a1, int a2, void *object)
{
  if (object)
  {
    v4 = os_retain(object);
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return 0;
}

uint64_t ___ZL25on_begin_headers_callbackP15nghttp2_sessionPK13nghttp2_framePv_block_invoke_2(uint64_t a1, int a2, void *object)
{
  if (object)
  {
    v4 = os_retain(object);
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return 0;
}

uint64_t ___ZL25on_begin_headers_callbackP15nghttp2_sessionPK13nghttp2_framePv_block_invoke_3(uint64_t a1, int a2, void *object)
{
  if (object)
  {
    v4 = os_retain(object);
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return 0;
}

BOOL nw_http2_transport_stream_connect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v64 = "nw_http2_transport_stream_connect";
    v37 = _os_log_send_and_compose_impl();
    v62[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v37, v62, &type))
    {
      if (v62[0] == OS_LOG_TYPE_FAULT)
      {
        v38 = __nwlog_obj();
        v39 = v62[0];
        if (os_log_type_enabled(v38, v62[0]))
        {
          *buf = 136446210;
          v64 = "nw_http2_transport_stream_connect";
          v40 = "%{public}s called with null http2_transport";
LABEL_111:
          _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v39 = v62[0];
        v52 = os_log_type_enabled(v38, v62[0]);
        if (backtrace_string)
        {
          if (v52)
          {
            *buf = 136446466;
            v64 = "nw_http2_transport_stream_connect";
            v65 = 2082;
            v66 = backtrace_string;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_112;
        }

        if (v52)
        {
          *buf = 136446210;
          v64 = "nw_http2_transport_stream_connect";
          v40 = "%{public}s called with null http2_transport, no backtrace";
          goto LABEL_111;
        }
      }

      else
      {
        v38 = __nwlog_obj();
        v39 = v62[0];
        if (os_log_type_enabled(v38, v62[0]))
        {
          *buf = 136446210;
          v64 = "nw_http2_transport_stream_connect";
          v40 = "%{public}s called with null http2_transport, backtrace limit exceeded";
          goto LABEL_111;
        }
      }
    }

LABEL_112:
    if (v37)
    {
      free(v37);
    }

    return 0;
  }

  if (gLogDatapath == 1)
  {
    v41 = __nwlog_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = *(a2 + 32);
      *buf = 136446978;
      v64 = "nw_http2_transport_stream_connect";
      v65 = 2082;
      v66 = a1 + 205;
      v67 = 1024;
      *v68 = v42;
      *&v68[4] = 2048;
      *&v68[6] = a2;
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called for stream %d (%p)", buf, 0x26u);
    }
  }

  if (*(a2 + 36))
  {
    if (gLogDatapath == 1)
    {
      v49 = __nwlog_obj();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v50 = *(a2 + 32);
        *buf = 136446722;
        v64 = "nw_http2_transport_stream_connect";
        v65 = 2082;
        v66 = a1 + 205;
        v67 = 1024;
        *v68 = v50;
        _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s stream %d is already connected", buf, 0x1Cu);
      }
    }

    v12 = *(a3 + 24);
    if (v12)
    {
      v13 = *(v12 + 40);
      if (v13)
      {
        v13(a3, a1);
        return 1;
      }
    }

    __nwlog_obj();
    v43 = *(a3 + 16);
    if (!v43)
    {
      v43 = "invalid";
    }

    *buf = 136446466;
    v64 = "nw_http2_transport_stream_connect";
    v65 = 2082;
    v66 = v43;
    v44 = _os_log_send_and_compose_impl();
    v62[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v44, v62, &type))
    {
      if (v62[0] == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = v62[0];
        if (!os_log_type_enabled(v45, v62[0]))
        {
          goto LABEL_120;
        }

        v47 = *(a3 + 16);
        if (!v47)
        {
          v47 = "invalid";
        }

        *buf = 136446466;
        v64 = "nw_http2_transport_stream_connect";
        v65 = 2082;
        v66 = v47;
        v48 = "%{public}s protocol %{public}s has invalid connected callback";
        goto LABEL_119;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v45 = __nwlog_obj();
        v46 = v62[0];
        if (!os_log_type_enabled(v45, v62[0]))
        {
          goto LABEL_120;
        }

        v58 = *(a3 + 16);
        if (!v58)
        {
          v58 = "invalid";
        }

        *buf = 136446466;
        v64 = "nw_http2_transport_stream_connect";
        v65 = 2082;
        v66 = v58;
        v48 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
        goto LABEL_119;
      }

      v53 = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = v62[0];
      v54 = os_log_type_enabled(v45, v62[0]);
      if (v53)
      {
        if (v54)
        {
          v55 = *(a3 + 16);
          if (!v55)
          {
            v55 = "invalid";
          }

          *buf = 136446722;
          v64 = "nw_http2_transport_stream_connect";
          v65 = 2082;
          v66 = v55;
          v67 = 2082;
          *v68 = v53;
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v53);
        goto LABEL_120;
      }

      if (v54)
      {
        v59 = *(a3 + 16);
        if (!v59)
        {
          v59 = "invalid";
        }

        *buf = 136446466;
        v64 = "nw_http2_transport_stream_connect";
        v65 = 2082;
        v66 = v59;
        v48 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
LABEL_119:
        _os_log_impl(&dword_181A37000, v45, v46, v48, buf, 0x16u);
      }
    }

LABEL_120:
    if (v44)
    {
      free(v44);
    }

    return 1;
  }

  *v62 = a2;
  v6 = nghttp2_submit_headers();
  if (v6 < 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = nghttp2_strerror();
    *buf = 136446466;
    v64 = "nw_http2_transport_send_headers";
    v65 = 2082;
    v66 = v14;
    v15 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v60 = 0;
    if (!__nwlog_fault(v15, &type, &v60))
    {
      goto LABEL_65;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_65;
      }

      v18 = nghttp2_strerror();
      *buf = 136446466;
      v64 = "nw_http2_transport_send_headers";
      v65 = 2082;
      v66 = v18;
      v19 = "%{public}s nghttp2_submit_headers: %{public}s failed";
    }

    else if (v60 == 1)
    {
      v20 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      v21 = os_log_type_enabled(gLogObj, type);
      if (v20)
      {
        if (v21)
        {
          v22 = nghttp2_strerror();
          *buf = 136446722;
          v64 = "nw_http2_transport_send_headers";
          v65 = 2082;
          v66 = v22;
          v67 = 2082;
          *v68 = v20;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s nghttp2_submit_headers: %{public}s failed, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v20);
        goto LABEL_65;
      }

      if (!v21)
      {
        goto LABEL_65;
      }

      v31 = nghttp2_strerror();
      *buf = 136446466;
      v64 = "nw_http2_transport_send_headers";
      v65 = 2082;
      v66 = v31;
      v19 = "%{public}s nghttp2_submit_headers: %{public}s failed, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      v17 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_65;
      }

      v25 = nghttp2_strerror();
      *buf = 136446466;
      v64 = "nw_http2_transport_send_headers";
      v65 = 2082;
      v66 = v25;
      v19 = "%{public}s nghttp2_submit_headers: %{public}s failed, backtrace limit exceeded";
    }

    v32 = v16;
    v33 = v17;
LABEL_64:
    _os_log_impl(&dword_181A37000, v32, v33, v19, buf, 0x16u);
    goto LABEL_65;
  }

  v7 = *v62;
  v8 = *(*v62 + 32);
  if (v8 == -1)
  {
    if ((*(*v62 + 36) & 8) != 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      v64 = "nw_http2_transport_send_headers";
      v65 = 2082;
      v66 = a1 + 205;
      v15 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v60 = 0;
      if (!__nwlog_fault(v15, &type, &v60))
      {
        goto LABEL_65;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_65;
        }

        *buf = 136446466;
        v64 = "nw_http2_transport_send_headers";
        v65 = 2082;
        v66 = a1 + 205;
        v19 = "%{public}s %{public}s Responder stream cannot have id of -1 after opening";
        goto LABEL_63;
      }

      if (v60 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_65;
        }

        *buf = 136446466;
        v64 = "nw_http2_transport_send_headers";
        v65 = 2082;
        v66 = a1 + 205;
        v19 = "%{public}s %{public}s Responder stream cannot have id of -1 after opening, backtrace limit exceeded";
        goto LABEL_63;
      }

      v26 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v29 = os_log_type_enabled(v23, type);
      if (!v26)
      {
        if (!v29)
        {
          goto LABEL_65;
        }

        *buf = 136446466;
        v64 = "nw_http2_transport_send_headers";
        v65 = 2082;
        v66 = a1 + 205;
        v19 = "%{public}s %{public}s Responder stream cannot have id of -1 after opening, no backtrace";
        goto LABEL_63;
      }

      if (v29)
      {
        *buf = 136446722;
        v64 = "nw_http2_transport_send_headers";
        v65 = 2082;
        v66 = a1 + 205;
        v67 = 2082;
        *v68 = v26;
        v28 = "%{public}s %{public}s Responder stream cannot have id of -1 after opening, dumping backtrace:%{public}s";
        goto LABEL_46;
      }

LABEL_47:
      free(v26);
      if (!v15)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    *(*v62 + 32) = v6;
    if (!nw_http2_transport_add_to_id_table(a1, v7, a3))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v64 = "nw_http2_transport_send_headers";
        v65 = 2082;
        v66 = a1 + 205;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Failed to add new stream to the id based hash table", buf, 0x16u);
      }

      *(*v62 + 32) = -1;
      goto LABEL_67;
    }

    v8 = *(*v62 + 32);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (v8 > 0)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      v10 = "server";
      v11 = *(*v62 + 32);
      if ((*(a1 + 204) & 0x10) == 0)
      {
        v10 = "client";
      }

      *buf = 136446978;
      v64 = "nw_http2_transport_send_headers";
      v65 = 2082;
      v66 = a1 + 205;
      v67 = 2082;
      *v68 = v10;
      *&v68[8] = 1024;
      *&v68[10] = v11;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s %{public}s submitted headers for stream %d", buf, 0x26u);
    }

    nw_http2_transport_session_send(a1);
    goto LABEL_67;
  }

  *buf = 136446466;
  v64 = "nw_http2_transport_send_headers";
  v65 = 2082;
  v66 = a1 + 205;
  v15 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v60 = 0;
  if (__nwlog_fault(v15, &type, &v60))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_65;
      }

      *buf = 136446466;
      v64 = "nw_http2_transport_send_headers";
      v65 = 2082;
      v66 = a1 + 205;
      v19 = "%{public}s %{public}s Stream has invalid id";
LABEL_63:
      v32 = v23;
      v33 = v24;
      goto LABEL_64;
    }

    if (v60 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_65;
      }

      *buf = 136446466;
      v64 = "nw_http2_transport_send_headers";
      v65 = 2082;
      v66 = a1 + 205;
      v19 = "%{public}s %{public}s Stream has invalid id, backtrace limit exceeded";
      goto LABEL_63;
    }

    v26 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    v24 = type;
    v27 = os_log_type_enabled(gLogObj, type);
    if (!v26)
    {
      if (!v27)
      {
        goto LABEL_65;
      }

      *buf = 136446466;
      v64 = "nw_http2_transport_send_headers";
      v65 = 2082;
      v66 = a1 + 205;
      v19 = "%{public}s %{public}s Stream has invalid id, no backtrace";
      goto LABEL_63;
    }

    if (v27)
    {
      *buf = 136446722;
      v64 = "nw_http2_transport_send_headers";
      v65 = 2082;
      v66 = a1 + 205;
      v67 = 2082;
      *v68 = v26;
      v28 = "%{public}s %{public}s Stream has invalid id, dumping backtrace:%{public}s";
LABEL_46:
      _os_log_impl(&dword_181A37000, v23, v24, v28, buf, 0x20u);
      goto LABEL_47;
    }

    goto LABEL_47;
  }

LABEL_65:
  if (v15)
  {
LABEL_66:
    free(v15);
  }

LABEL_67:
  if ((*(a2 + 32) & 0x80000000) == 0)
  {
    *(a2 + 36) &= ~2u;
    if (gLogDatapath == 1)
    {
      v56 = __nwlog_obj();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        v57 = *(a2 + 32);
        *buf = 136446722;
        v64 = "nw_http2_transport_stream_connect";
        v65 = 2082;
        v66 = a1 + 205;
        v67 = 1024;
        *v68 = v57;
        _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s connect complete for stream %d", buf, 0x1Cu);
      }
    }

    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v35 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v36 = *(a2 + 32);
    *buf = 136446978;
    v64 = "nw_http2_transport_stream_connect";
    v65 = 2082;
    v66 = a1 + 205;
    v67 = 2048;
    *v68 = a2;
    *&v68[8] = 1024;
    *&v68[10] = v36;
    _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s %{public}s failed to open stream %p (id still %d)", buf, 0x26u);
    return 0;
  }

  return result;
}

uint64_t on_header_callback(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v22 = a5;
    v23 = a3;
    v24 = a2;
    v25 = __nwlog_obj();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
    a2 = v24;
    a3 = v23;
    a5 = v22;
    if (v26)
    {
      *buf = 136446722;
      v39 = "on_header_callback";
      v40 = 2082;
      v41 = v23;
      v42 = 2082;
      *v43 = v22;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s called name %{public}s value %{public}s", buf, 0x20u);
      a2 = v24;
      a3 = v23;
      a5 = v22;
    }
  }

  if (!a8)
  {
    __nwlog_obj();
    *buf = 136446210;
    v39 = "on_header_callback";
    v27 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v27, &type, &v36))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (!os_log_type_enabled(v28, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v39 = "on_header_callback";
      v30 = "%{public}s nghttp2 user data is NULL, not http2_transport";
    }

    else if (v36 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type;
      v32 = os_log_type_enabled(v28, type);
      if (backtrace_string)
      {
        if (v32)
        {
          *buf = 136446466;
          v39 = "on_header_callback";
          v40 = 2082;
          v41 = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s nghttp2 user data is NULL, not http2_transport, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_37;
      }

      if (!v32)
      {
LABEL_37:
        if (v27)
        {
          free(v27);
        }

        return 4294966394;
      }

      *buf = 136446210;
      v39 = "on_header_callback";
      v30 = "%{public}s nghttp2 user data is NULL, not http2_transport, no backtrace";
    }

    else
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (!os_log_type_enabled(v28, type))
      {
        goto LABEL_37;
      }

      *buf = 136446210;
      v39 = "on_header_callback";
      v30 = "%{public}s nghttp2 user data is NULL, not http2_transport, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
    goto LABEL_37;
  }

  v9 = *(a2 + 12);
  if (v9 == 5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 4294966775;
    }

    *buf = 136446466;
    v39 = "on_header_callback";
    v40 = 2082;
    v41 = (a8 + 205);
    v15 = "%{public}s %{public}s push promise frames currently not supported";
    v16 = v14;
    v17 = 22;
LABEL_16:
    _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    return 4294966775;
  }

  if (v9 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v39 = "on_header_callback";
      v40 = 2082;
      v41 = (a8 + 205);
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}s returning callback failure with unknown error", buf, 0x16u);
    }

    return 4294966394;
  }

  if (*(a2 + 56) != 1)
  {
    v19 = a2;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 4294966775;
    }

    v21 = *(v19 + 8);
    *buf = 136446722;
    v39 = "on_header_callback";
    v40 = 2082;
    v41 = (a8 + 205);
    v42 = 1024;
    *v43 = v21;
    v15 = "%{public}s %{public}s ERROR: Got headers for stream %d, a stream that doesn't exist.";
    v16 = v20;
    v17 = 28;
    goto LABEL_16;
  }

  v10 = a3;
  v11 = a5;
  stream_from_id = nw_http2_transport_get_stream_from_id(a8, *(a2 + 8), 0);
  if (!stream_from_id)
  {
    return 4294966775;
  }

  if (gLogDatapath != 1)
  {
    return 0;
  }

  v33 = stream_from_id;
  v34 = __nwlog_obj();
  result = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v35 = *(v33 + 32);
    *buf = 136447234;
    v39 = "on_header_callback";
    v40 = 2082;
    v41 = (a8 + 205);
    v42 = 1024;
    *v43 = v35;
    *&v43[4] = 2082;
    *&v43[6] = v10;
    v44 = 2082;
    v45 = v11;
    _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s received header response on stream %d: name: %{public}s value: %{public}s", buf, 0x30u);
    return 0;
  }

  return result;
}

void nw_http2_transport_stream_connected(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45[2] = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v22 = __nwlog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a2 + 32);
      *buf = 136446978;
      v41 = "nw_http2_transport_stream_connected";
      v42 = 2082;
      v43 = (a1 + 205);
      v44 = 1024;
      LODWORD(v45[0]) = v23;
      WORD2(v45[0]) = 2048;
      *(v45 + 6) = a2;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called for stream %d (%p)", buf, 0x26u);
    }
  }

  *(a2 + 36) |= 1u;
  v6 = *(a3 + 24);
  if (v6)
  {
    v7 = *(v6 + 40);
    if (v7)
    {
      v7(a3, a1);
      goto LABEL_5;
    }
  }

  __nwlog_obj();
  v10 = *(a3 + 16);
  if (!v10)
  {
    v10 = "invalid";
  }

  *buf = 136446466;
  v41 = "nw_http2_transport_stream_connected";
  v42 = 2082;
  v43 = v10;
  v11 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v38 = 0;
  if (__nwlog_fault(v11, &type, &v38))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_61;
      }

      v14 = *(a3 + 16);
      if (!v14)
      {
        v14 = "invalid";
      }

      *buf = 136446466;
      v41 = "nw_http2_transport_stream_connected";
      v42 = 2082;
      v43 = v14;
      v15 = "%{public}s protocol %{public}s has invalid connected callback";
      goto LABEL_60;
    }

    if (v38 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_61;
      }

      v34 = *(a3 + 16);
      if (!v34)
      {
        v34 = "invalid";
      }

      *buf = 136446466;
      v41 = "nw_http2_transport_stream_connected";
      v42 = 2082;
      v43 = v34;
      v15 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
      goto LABEL_60;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type;
    v27 = os_log_type_enabled(v12, type);
    if (backtrace_string)
    {
      if (v27)
      {
        v28 = *(a3 + 16);
        if (!v28)
        {
          v28 = "invalid";
        }

        *buf = 136446722;
        v41 = "nw_http2_transport_stream_connected";
        v42 = 2082;
        v43 = v28;
        v44 = 2082;
        v45[0] = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
      goto LABEL_61;
    }

    if (v27)
    {
      v36 = *(a3 + 16);
      if (!v36)
      {
        v36 = "invalid";
      }

      *buf = 136446466;
      v41 = "nw_http2_transport_stream_connected";
      v42 = 2082;
      v43 = v36;
      v15 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
LABEL_60:
      _os_log_impl(&dword_181A37000, v12, v13, v15, buf, 0x16u);
    }
  }

LABEL_61:
  if (v11)
  {
    free(v11);
  }

LABEL_5:
  if (gLogDatapath == 1)
  {
    v24 = __nwlog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = *(a2 + 32);
      *buf = 136446978;
      v41 = "nw_http2_transport_stream_connected";
      v42 = 2082;
      v43 = (a1 + 205);
      v44 = 1024;
      LODWORD(v45[0]) = v25;
      WORD2(v45[0]) = 2048;
      *(v45 + 6) = a3;
      _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s stream %d (protocol %p) connected", buf, 0x26u);
    }
  }

  if (*a2)
  {
    if (gLogDatapath == 1)
    {
      v29 = __nwlog_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(a2 + 32);
        *buf = 136446722;
        v41 = "nw_http2_transport_stream_connected";
        v42 = 2082;
        v43 = (a1 + 205);
        v44 = 1024;
        LODWORD(v45[0]) = v30;
        _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s calling input_available with input_frames pending for stream %d", buf, 0x1Cu);
      }
    }

    v8 = *(a3 + 24);
    if (v8)
    {
      v9 = *(v8 + 64);
      if (v9)
      {
        v9(a3, a1);
        goto LABEL_11;
      }
    }

    __nwlog_obj();
    v16 = *(a3 + 16);
    if (!v16)
    {
      v16 = "invalid";
    }

    *buf = 136446466;
    v41 = "nw_http2_transport_stream_connected";
    v42 = 2082;
    v43 = v16;
    v17 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v17, &type, &v38))
    {
      goto LABEL_68;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_68;
      }

      v20 = *(a3 + 16);
      if (!v20)
      {
        v20 = "invalid";
      }

      *buf = 136446466;
      v41 = "nw_http2_transport_stream_connected";
      v42 = 2082;
      v43 = v20;
      v21 = "%{public}s protocol %{public}s has invalid input_available callback";
    }

    else if (v38 == 1)
    {
      v31 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v19 = type;
      v32 = os_log_type_enabled(v18, type);
      if (v31)
      {
        if (v32)
        {
          v33 = *(a3 + 16);
          if (!v33)
          {
            v33 = "invalid";
          }

          *buf = 136446722;
          v41 = "nw_http2_transport_stream_connected";
          v42 = 2082;
          v43 = v33;
          v44 = 2082;
          v45[0] = v31;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s protocol %{public}s has invalid input_available callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v31);
        goto LABEL_68;
      }

      if (!v32)
      {
LABEL_68:
        if (v17)
        {
          free(v17);
        }

        goto LABEL_11;
      }

      v37 = *(a3 + 16);
      if (!v37)
      {
        v37 = "invalid";
      }

      *buf = 136446466;
      v41 = "nw_http2_transport_stream_connected";
      v42 = 2082;
      v43 = v37;
      v21 = "%{public}s protocol %{public}s has invalid input_available callback, no backtrace";
    }

    else
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (!os_log_type_enabled(v18, type))
      {
        goto LABEL_68;
      }

      v35 = *(a3 + 16);
      if (!v35)
      {
        v35 = "invalid";
      }

      *buf = 136446466;
      v41 = "nw_http2_transport_stream_connected";
      v42 = 2082;
      v43 = v35;
      v21 = "%{public}s protocol %{public}s has invalid input_available callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v18, v19, v21, buf, 0x16u);
    goto LABEL_68;
  }

LABEL_11:
  nw_http2_transport_session_send(a1);
}

void nw_protocol_http2_transport_notify(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_http2_transport_notify";
    v7 = _os_log_send_and_compose_impl();
    v27 = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v7, &v27, &v26))
    {
      goto LABEL_63;
    }

    if (v27 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v27;
      if (!os_log_type_enabled(v8, v27))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http2_transport_notify";
      v10 = "%{public}s called with null protocol";
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = v27;
      v18 = os_log_type_enabled(v8, v27);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v29 = "nw_protocol_http2_transport_notify";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_63:
        if (!v7)
        {
          return;
        }

        goto LABEL_64;
      }

      if (!v18)
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http2_transport_notify";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = v27;
      if (!os_log_type_enabled(v8, v27))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http2_transport_notify";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_62;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_http2_transport_notify";
    v7 = _os_log_send_and_compose_impl();
    v27 = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v7, &v27, &v26))
    {
      goto LABEL_63;
    }

    if (v27 != OS_LOG_TYPE_FAULT)
    {
      if (v26 != 1)
      {
        v8 = __nwlog_obj();
        v9 = v27;
        if (!os_log_type_enabled(v8, v27))
        {
          goto LABEL_63;
        }

        *buf = 136446210;
        v29 = "nw_protocol_http2_transport_notify";
        v10 = "%{public}s called with null http2_transport, backtrace limit exceeded";
        goto LABEL_62;
      }

      v19 = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = v27;
      v20 = os_log_type_enabled(v8, v27);
      if (!v19)
      {
        if (!v20)
        {
          goto LABEL_63;
        }

        *buf = 136446210;
        v29 = "nw_protocol_http2_transport_notify";
        v10 = "%{public}s called with null http2_transport, no backtrace";
        goto LABEL_62;
      }

      if (!v20)
      {
        goto LABEL_44;
      }

      *buf = 136446466;
      v29 = "nw_protocol_http2_transport_notify";
      v30 = 2082;
      v31 = v19;
      v21 = "%{public}s called with null http2_transport, dumping backtrace:%{public}s";
      goto LABEL_43;
    }

    v8 = __nwlog_obj();
    v9 = v27;
    if (!os_log_type_enabled(v8, v27))
    {
      goto LABEL_63;
    }

    *buf = 136446210;
    v29 = "nw_protocol_http2_transport_notify";
    v10 = "%{public}s called with null http2_transport";
LABEL_62:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_63;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_http2_transport_notify";
    v7 = _os_log_send_and_compose_impl();
    v27 = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v7, &v27, &v26))
    {
      goto LABEL_63;
    }

    if (v27 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v27;
      if (!os_log_type_enabled(v8, v27))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http2_transport_notify";
      v10 = "%{public}s called with null other_protocol";
      goto LABEL_62;
    }

    if (v26 != 1)
    {
      v8 = __nwlog_obj();
      v9 = v27;
      if (!os_log_type_enabled(v8, v27))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http2_transport_notify";
      v10 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_62;
    }

    v19 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = v27;
    v22 = os_log_type_enabled(v8, v27);
    if (!v19)
    {
      if (!v22)
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http2_transport_notify";
      v10 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_62;
    }

    if (!v22)
    {
      goto LABEL_44;
    }

    *buf = 136446466;
    v29 = "nw_protocol_http2_transport_notify";
    v30 = 2082;
    v31 = v19;
    v21 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_43:
    _os_log_impl(&dword_181A37000, v8, v9, v21, buf, 0x16u);
    goto LABEL_44;
  }

  if (!*(v5 + 112))
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_http2_transport_notify";
    v7 = _os_log_send_and_compose_impl();
    v27 = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v7, &v27, &v26))
    {
      goto LABEL_63;
    }

    if (v27 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v27;
      if (!os_log_type_enabled(v8, v27))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http2_transport_notify";
      v10 = "%{public}s called with null http2_transport->http2_transport_streams_protocol";
      goto LABEL_62;
    }

    if (v26 != 1)
    {
      v8 = __nwlog_obj();
      v9 = v27;
      if (!os_log_type_enabled(v8, v27))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http2_transport_notify";
      v10 = "%{public}s called with null http2_transport->http2_transport_streams_protocol, backtrace limit exceeded";
      goto LABEL_62;
    }

    v19 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = v27;
    v23 = os_log_type_enabled(v8, v27);
    if (!v19)
    {
      if (!v23)
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http2_transport_notify";
      v10 = "%{public}s called with null http2_transport->http2_transport_streams_protocol, no backtrace";
      goto LABEL_62;
    }

    if (v23)
    {
      *buf = 136446466;
      v29 = "nw_protocol_http2_transport_notify";
      v30 = 2082;
      v31 = v19;
      v21 = "%{public}s called with null http2_transport->http2_transport_streams_protocol, dumping backtrace:%{public}s";
      goto LABEL_43;
    }

LABEL_44:
    free(v19);
    if (!v7)
    {
      return;
    }

LABEL_64:
    free(v7);
    return;
  }

  if (gLogDatapath == 1)
  {
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = a2;
    v15 = __nwlog_obj();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    a2 = v14;
    a3 = v13;
    a4 = v12;
    a5 = v11;
    if (v16)
    {
      *buf = 136446466;
      v29 = "nw_protocol_http2_transport_notify";
      v30 = 2082;
      v31 = (v5 + 205);
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called", buf, 0x16u);
      a2 = v14;
      a3 = v13;
      a4 = v12;
      a5 = v11;
    }
  }

  v6 = *(v5 + 112);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 0x40000000;
  v24[2] = ___ZL34nw_protocol_http2_transport_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke;
  v24[3] = &__block_descriptor_tmp_41_40904;
  v24[4] = v5;
  v24[5] = a2;
  v25 = a3;
  v24[6] = a4;
  v24[7] = a5;
  nw_hash_table_apply(v6, v24);
}

uint64_t ___ZL34nw_protocol_http2_transport_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_protocol_http2_transport_notify_block_invoke";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v9, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          v38 = "nw_protocol_http2_transport_notify_block_invoke";
          v14 = "%{public}s called with null node";
LABEL_58:
          v23 = v31;
          v24 = v32;
          v25 = 12;
          goto LABEL_36;
        }
      }

      else if (v35 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v32 = type;
        v34 = os_log_type_enabled(v31, type);
        if (backtrace_string)
        {
          if (v34)
          {
            *buf = 136446466;
            v38 = "nw_protocol_http2_transport_notify_block_invoke";
            v39 = 2082;
            v40 = backtrace_string;
            _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null node, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
        }

        else if (v34)
        {
          *buf = 136446210;
          v38 = "nw_protocol_http2_transport_notify_block_invoke";
          v14 = "%{public}s called with null node, no backtrace";
          goto LABEL_58;
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 136446210;
          v38 = "nw_protocol_http2_transport_notify_block_invoke";
          v14 = "%{public}s called with null node, backtrace limit exceeded";
          goto LABEL_58;
        }
      }
    }

LABEL_37:
    if (!v9)
    {
      return 1;
    }

LABEL_38:
    free(v9);
    return 1;
  }

  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(v4 + 24);
    if (v5 && (v6 = *(v5 + 160)) != 0)
    {
      v6();
    }

    else
    {
      v27 = *(a2 + 16);
      v28 = __nwlog_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = *(a1 + 32);
        *buf = 136446722;
        v38 = "nw_protocol_http2_transport_notify_block_invoke";
        if (v29)
        {
          v30 = (v29 + 205);
        }

        else
        {
          v30 = "";
        }

        v39 = 2082;
        v40 = v30;
        v41 = 2048;
        v42 = v27;
        _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_INFO, "%{public}s %{public}s notify callback not set on input handler %p, skipping notify", buf, 0x20u);
      }
    }

    return 1;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = (v7 + 205);
  }

  else
  {
    v8 = "";
  }

  *buf = 136446722;
  v38 = "nw_protocol_http2_transport_notify_block_invoke";
  v39 = 2082;
  v40 = v8;
  v41 = 2048;
  v42 = a2;
  v9 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (!__nwlog_fault(v9, &type, &v35))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_37;
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = (v12 + 205);
    }

    else
    {
      v13 = "";
    }

    *buf = 136446722;
    v38 = "nw_protocol_http2_transport_notify_block_invoke";
    v39 = 2082;
    v40 = v13;
    v41 = 2048;
    v42 = a2;
    v14 = "%{public}s %{public}s no object for hash node %p, skipping notify";
LABEL_35:
    v23 = v10;
    v24 = v11;
    v25 = 32;
LABEL_36:
    _os_log_impl(&dword_181A37000, v23, v24, v14, buf, v25);
    goto LABEL_37;
  }

  if (v35 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_37;
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      v20 = (v19 + 205);
    }

    else
    {
      v20 = "";
    }

    *buf = 136446722;
    v38 = "nw_protocol_http2_transport_notify_block_invoke";
    v39 = 2082;
    v40 = v20;
    v41 = 2048;
    v42 = a2;
    v14 = "%{public}s %{public}s no object for hash node %p, skipping notify, backtrace limit exceeded";
    goto LABEL_35;
  }

  v15 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  v11 = type;
  v16 = os_log_type_enabled(gLogObj, type);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_37;
    }

    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = (v21 + 205);
    }

    else
    {
      v22 = "";
    }

    *buf = 136446722;
    v38 = "nw_protocol_http2_transport_notify_block_invoke";
    v39 = 2082;
    v40 = v22;
    v41 = 2048;
    v42 = a2;
    v14 = "%{public}s %{public}s no object for hash node %p, skipping notify, no backtrace";
    goto LABEL_35;
  }

  if (v16)
  {
    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = (v17 + 205);
    }

    else
    {
      v18 = "";
    }

    *buf = 136446978;
    v38 = "nw_protocol_http2_transport_notify_block_invoke";
    v39 = 2082;
    v40 = v18;
    v41 = 2048;
    v42 = a2;
    v43 = 2082;
    v44 = v15;
    _os_log_impl(&dword_181A37000, v10, v11, "%{public}s %{public}s no object for hash node %p, skipping notify, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v15);
  if (v9)
  {
    goto LABEL_38;
  }

  return 1;
}
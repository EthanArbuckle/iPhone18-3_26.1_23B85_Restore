void sub_181EB68C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 176), 8);

  _Unwind_Resume(a1);
}

void __nw_socks5_server_start_block_invoke_2_12(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __nw_socks5_server_start_block_invoke_3;
  v3[3] = &unk_1E6A3D760;
  v4 = v2;
  v5 = *(a1 + 40);
  os_unfair_lock_lock(v2 + 6);
  __nw_socks5_server_start_block_invoke_3(v3);
  os_unfair_lock_unlock(v2 + 6);
}

void _nw_path_set_effective_traffic_class(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 26) = a2;
  }
}

void ___ZL35nw_socks5_connection_start_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObject_block_invoke_142(uint64_t a1, unsigned int a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (*(*(a1 + 32) + 56) == 255)
  {
    goto LABEL_34;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a2 > 5)
    {
      v7 = "unknown";
    }

    else
    {
      v7 = off_1E6A2F020[a2];
    }

    v8 = *(a1 + 32);
    v25 = 136446722;
    v26 = "nw_socks5_connection_start_on_queue_block_invoke";
    v27 = 2114;
    v28 = v8;
    v29 = 2082;
    v30 = v7;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}@ in connection event %{public}s", &v25, 0x20u);
  }

  if (a2 == 4)
  {
    nw_socks5_connection_remove_prefer_wifi_request(*(a1 + 32));
    *(*(a1 + 32) + 160) |= 2u;
    v9 = *(a1 + 32);
    if ((~v9[160] & 3) == 0)
    {
      nw_socks5_connection_cancel_on_queue(v9, 0);
      goto LABEL_34;
    }

    if (!v5)
    {
      goto LABEL_34;
    }

    goto LABEL_13;
  }

  if (v5)
  {
    v9 = *(a1 + 32);
LABEL_13:
    v10 = v9[56];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = v11;
    if (v10 == 200)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v25 = 136446722;
        v26 = "nw_socks5_connection_start_on_queue_block_invoke";
        v27 = 2114;
        v28 = v13;
        v29 = 2114;
        v30 = v5;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}@ ignoring in connection event error %{public}@", &v25, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v25 = 136446722;
        v26 = "nw_socks5_connection_start_on_queue_block_invoke";
        v27 = 2114;
        v28 = v14;
        v29 = 2114;
        v30 = v5;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ in connection event error %{public}@", &v25, 0x20u);
      }

      nw_socks5_connection_cancel_on_queue(*(a1 + 32), v5);
    }

    goto LABEL_34;
  }

  if (a2 != 3)
  {
    goto LABEL_34;
  }

  v15 = *(a1 + 32);
  v16 = *(v15 + 56);
  if (v16 != 101)
  {
    if (v16 != 1)
    {
      goto LABEL_34;
    }

    *(v15 + 56) = 2;
    v17 = __nwlog_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v18 = *(a1 + 32);
    v25 = 136446466;
    v26 = "nw_socks5_connection_start_on_queue_block_invoke";
    v27 = 2114;
    v28 = v18;
    v19 = "%{public}s %{public}@ connection socks connected";
    goto LABEL_27;
  }

  *(v15 + 56) = 102;
  v17 = __nwlog_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 32);
    v25 = 136446466;
    v26 = "nw_socks5_connection_start_on_queue_block_invoke";
    v27 = 2114;
    v28 = v20;
    v19 = "%{public}s %{public}@ connection shoes connected";
LABEL_27:
    _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_INFO, v19, &v25, 0x16u);
  }

LABEL_28:

  v21 = *(a1 + 32);
  if (*(v21 + 160) < 0 && *(a1 + 40))
  {
    *(v21 + 56) = 103;
    *(*(a1 + 32) + 104) = dispatch_data_get_size(*(a1 + 40));
    v22 = __nwlog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 32);
      v24 = *(v23 + 104);
      v25 = 136446722;
      v26 = "nw_socks5_connection_start_on_queue_block_invoke";
      v27 = 2114;
      v28 = v23;
      v29 = 1024;
      LODWORD(v30) = v24;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_INFO, "%{public}s %{public}@ connection shoes got length %u", &v25, 0x1Cu);
    }

    nw_socks5_connection_inner_connection_read_handler_on_queue(*(a1 + 32), *(a1 + 40), 0, 0, *(*(a1 + 32) + 104));
  }

  else
  {
    nw_socks5_connection_inner_connection_read_range_on_queue(v21, 2u, 2u);
  }

LABEL_34:
}

void sub_181EB7600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, objc_super a14)
{
  a14.super_class = NWConcrete_nw_socks5_connection;
  [(_Unwind_Exception *)&a14 dealloc];
  _Unwind_Resume(a1);
}

uint64_t nw_frame_array_append(uint64_t result, int a2, uint64_t a3)
{
  v3 = 16;
  if (a2)
  {
    v3 = 32;
  }

  v4 = 24;
  if (a2)
  {
    v4 = 40;
  }

  v5 = (a3 + v3);
  *v5 = 0;
  v6 = *(result + 8);
  *(a3 + v4) = v6;
  *v6 = a3;
  *(result + 8) = v5;
  return result;
}

uint64_t ___ZL32networkd_settings_read_from_filev_block_invoke(int a1, char *__s1, void *a3)
{
  if (strcmp(__s1, nw_settings_managed_settings))
  {
    xpc_dictionary_set_value(sCachedSettings, __s1, a3);
  }

  return 1;
}

unint64_t nw_interface_get_generation(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_get_generation(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_interface_get_generation";
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
        v12 = "nw_interface_get_generation";
        v6 = "%{public}s called with null interface";
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
            v12 = "nw_interface_get_generation";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_interface_get_generation";
        v6 = "%{public}s called with null interface, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_interface_get_generation";
        v6 = "%{public}s called with null interface, backtrace limit exceeded";
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

uint64_t nw_interface_get_mtu(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_get_mtu(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_interface_get_mtu";
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
        v12 = "nw_interface_get_mtu";
        v6 = "%{public}s called with null interface";
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
            v12 = "nw_interface_get_mtu";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_interface_get_mtu";
        v6 = "%{public}s called with null interface, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_interface_get_mtu";
        v6 = "%{public}s called with null interface, backtrace limit exceeded";
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

uint64_t nw_interface_copy_ipv4_netmask_endpoint(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    *v13 = "nw_interface_copy_ipv4_netmask_endpoint";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v4, &type, &v10))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *v13 = "nw_interface_copy_ipv4_netmask_endpoint";
        v7 = "%{public}s called with null interface";
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
            *v13 = "nw_interface_copy_ipv4_netmask_endpoint";
            *&v13[8] = 2082;
            *&v13[10] = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v9)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        *v13 = "nw_interface_copy_ipv4_netmask_endpoint";
        v7 = "%{public}s called with null interface, no backtrace";
        goto LABEL_17;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *v13 = "nw_interface_copy_ipv4_netmask_endpoint";
        v7 = "%{public}s called with null interface, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:

LABEL_19:
    if (v4)
    {
      free(v4);
    }

    return 0;
  }

  type = OS_LOG_TYPE_DEFAULT;
  ipv4_netmask = _nw_interface_get_ipv4_netmask(a1, &type);
  if (type == OS_LOG_TYPE_INFO)
  {
    *buf = 528;
    *v13 = ipv4_netmask;
    *&v13[4] = 0;
    return _nw_endpoint_create_address(buf);
  }

  return 0;
}

uint64_t nw_endpoint_get_ethernet_address(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    ethernet_address = _nw_endpoint_get_ethernet_address(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_ethernet_address";
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
        v16 = "nw_endpoint_get_ethernet_address";
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
          v16 = "nw_endpoint_get_ethernet_address";
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
        v16 = "nw_endpoint_get_ethernet_address";
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
        v16 = "nw_endpoint_get_ethernet_address";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  ethernet_address = 0;
LABEL_3:

  return ethernet_address;
}

uint64_t nw_interface_copy_ipv4_broadcast_endpoint(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    *v13 = "nw_interface_copy_ipv4_broadcast_endpoint";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v10 = 0;
    if (!__nwlog_fault(v4, &type, &v10))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *v13 = "nw_interface_copy_ipv4_broadcast_endpoint";
        v7 = "%{public}s called with null interface";
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
            *v13 = "nw_interface_copy_ipv4_broadcast_endpoint";
            *&v13[8] = 2082;
            *&v13[10] = backtrace_string;
            _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v9)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        *v13 = "nw_interface_copy_ipv4_broadcast_endpoint";
        v7 = "%{public}s called with null interface, no backtrace";
        goto LABEL_17;
      }

      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *v13 = "nw_interface_copy_ipv4_broadcast_endpoint";
        v7 = "%{public}s called with null interface, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:

LABEL_19:
    if (v4)
    {
      free(v4);
    }

    return 0;
  }

  type = OS_LOG_TYPE_DEFAULT;
  ipv4_broadcast = _nw_interface_get_ipv4_broadcast(a1, &type);
  if (type == OS_LOG_TYPE_INFO)
  {
    *buf = 528;
    *v13 = ipv4_broadcast;
    *&v13[4] = 0;
    return _nw_endpoint_create_address(buf);
  }

  return 0;
}

uint64_t nw_interface_supports_multicast(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_supports_multicast(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_supports_multicast";
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
        v12 = "nw_interface_supports_multicast";
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
            v12 = "nw_interface_supports_multicast";
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
        v12 = "nw_interface_supports_multicast";
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
        v12 = "nw_interface_supports_multicast";
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

uint64_t nw_interface_has_dns(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_has_dns(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_has_dns";
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
        v12 = "nw_interface_has_dns";
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
            v12 = "nw_interface_has_dns";
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
        v12 = "nw_interface_has_dns";
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
        v12 = "nw_interface_has_dns";
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

uint64_t nw_interface_has_nat64(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_has_nat64(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_has_nat64";
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
        v12 = "nw_interface_has_nat64";
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
            v12 = "nw_interface_has_nat64";
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
        v12 = "nw_interface_has_nat64";
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
        v12 = "nw_interface_has_nat64";
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

uint64_t nw_interface_is_ipv4_routable(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_is_ipv4_routable(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_is_ipv4_routable";
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
        v12 = "nw_interface_is_ipv4_routable";
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
            v12 = "nw_interface_is_ipv4_routable";
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
        v12 = "nw_interface_is_ipv4_routable";
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
        v12 = "nw_interface_is_ipv4_routable";
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

uint64_t nw_interface_is_ipv6_routable(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_interface_is_ipv6_routable(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446466;
  v12 = "nw_interface_is_ipv6_routable";
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
        v12 = "nw_interface_is_ipv6_routable";
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
            v12 = "nw_interface_is_ipv6_routable";
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
        v12 = "nw_interface_is_ipv6_routable";
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
        v12 = "nw_interface_is_ipv6_routable";
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

uint64_t nw_path_get_scoped_interface_index(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    scoped_interface_index = _nw_path_get_scoped_interface_index(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_get_scoped_interface_index";
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
        v16 = "nw_path_get_scoped_interface_index";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_get_scoped_interface_index";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_get_scoped_interface_index";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_get_scoped_interface_index";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  scoped_interface_index = 0;
LABEL_3:

  return scoped_interface_index;
}

uint64_t nw_path_copy_resolver_configs(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_resolver_configs(v1, 0);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_resolver_configs";
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
        v16 = "nw_path_copy_resolver_configs";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_copy_resolver_configs";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_copy_resolver_configs";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_copy_resolver_configs";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

void nw_resolver_config_enumerate_name_servers(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v23 = __Block_byref_object_copy__25_56289;
    v24 = __Block_byref_object_dispose__26_56290;
    v25 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __nw_resolver_config_enumerate_name_servers_block_invoke;
    v17[3] = &unk_1E6A3D738;
    v19 = buf;
    v5 = v3;
    v18 = v5;
    os_unfair_lock_lock(v5 + 22);
    __nw_resolver_config_enumerate_name_servers_block_invoke(v17);
    os_unfair_lock_unlock(v5 + 22);
    v6 = *(*&buf[8] + 40);
    if (v6)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_resolver_config_enumerate_name_servers_block_invoke_2;
      applier[3] = &unk_1E6A35AD0;
      v16 = v4;
      xpc_array_apply(v6, applier);
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_config_enumerate_name_servers";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v8, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_enumerate_name_servers";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v20 == 1)
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
          *&buf[4] = "nw_resolver_config_enumerate_name_servers";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_enumerate_name_servers";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_enumerate_name_servers";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

LABEL_5:
}

void sub_181EBA268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void __nw_resolver_config_enumerate_name_servers_block_invoke(uint64_t a1)
{
  v5 = *(*(a1 + 32) + 8);
  v2 = xpc_dictionary_get_value(v5, "NameServers");
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_181EBA810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  _Block_object_dispose(&a25, 8);
  std::ostringstream::~ostringstream(v25);
  _Unwind_Resume(a1);
}

uint64_t nw_resolver_config_get_protocol(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_resolver_config_get_protocol_block_invoke;
    v14[3] = &unk_1E6A3D738;
    v16 = buf;
    v3 = v1;
    v15 = v3;
    os_unfair_lock_lock(v3 + 22);
    __nw_resolver_config_get_protocol_block_invoke(v14);
    os_unfair_lock_unlock(v3 + 22);
    v4 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_config_get_protocol";
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
        *&buf[4] = "nw_resolver_config_get_protocol";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null config", buf, 0xCu);
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
          *&buf[4] = "nw_resolver_config_get_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_protocol";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_protocol";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void sub_181EBAB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_resolver_config_enumerate_search_domains(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v23 = __Block_byref_object_copy__25_56289;
    v24 = __Block_byref_object_dispose__26_56290;
    v25 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __nw_resolver_config_enumerate_search_domains_block_invoke;
    v17[3] = &unk_1E6A3D738;
    v19 = buf;
    v5 = v3;
    v18 = v5;
    os_unfair_lock_lock(v5 + 22);
    __nw_resolver_config_enumerate_search_domains_block_invoke(v17);
    os_unfair_lock_unlock(v5 + 22);
    v6 = *(*&buf[8] + 40);
    if (v6)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_resolver_config_enumerate_search_domains_block_invoke_2;
      applier[3] = &unk_1E6A35AD0;
      v16 = v4;
      xpc_array_apply(v6, applier);
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_config_enumerate_search_domains";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v8, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_enumerate_search_domains";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v20 == 1)
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
          *&buf[4] = "nw_resolver_config_enumerate_search_domains";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_enumerate_search_domains";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_enumerate_search_domains";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

LABEL_5:
}

void sub_181EBAFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t nw_resolver_config_get_port(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_resolver_config_get_port_block_invoke;
    v14[3] = &unk_1E6A3D738;
    v16 = buf;
    v3 = v1;
    v15 = v3;
    os_unfair_lock_lock(v3 + 22);
    __nw_resolver_config_get_port_block_invoke(v14);
    os_unfair_lock_unlock(v3 + 22);
    v4 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_resolver_config_get_port";
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
        *&buf[4] = "nw_resolver_config_get_port";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null config", buf, 0xCu);
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
          *&buf[4] = "nw_resolver_config_get_port";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_port";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_resolver_config_get_port";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void sub_181EBB36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_resolver_config_get_provider_path_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_string(v2, "ProviderPath");
}

uint64_t nw_path_copy_override_resolver_configs(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_resolver_configs(v1, 1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_override_resolver_configs";
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
        v16 = "nw_path_copy_override_resolver_configs";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_copy_override_resolver_configs";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_copy_override_resolver_configs";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_copy_override_resolver_configs";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_path_copy_gateways(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_gateways(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_gateways";
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
        v16 = "nw_path_copy_gateways";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_copy_gateways";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_copy_gateways";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_copy_gateways";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_path_copy_legacy_proxy_settings(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_legacy_proxy_settings(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_legacy_proxy_settings";
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
        v16 = "nw_path_copy_legacy_proxy_settings";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_copy_legacy_proxy_settings";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_copy_legacy_proxy_settings";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_copy_legacy_proxy_settings";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

_BYTE *Deserializer.uint8(_:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[2];
  if (*(v2 + 32) == 1 && v2[3])
  {
    goto LABEL_8;
  }

  v6 = v2[1] - v4;
  if (!v4)
  {
    v6 = 0;
  }

  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (!v7)
  {
    if (v8 >= 1)
    {
      *result = *(v4 + v5);
      result = sub_1820E2C6C(1);
      v9 = v2[3];
      v10 = *(v2 + 32);
LABEL_9:
      *a2 = v9;
      *(a2 + 8) = v10;
      return result;
    }

LABEL_8:
    v9 = 1;
    v2[3] = 1;
    *(v2 + 32) = 1;
    v10 = 1;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

char *nw_path_link_quality_abort(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_link_quality_abort(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_link_quality_abort";
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
        v16 = "nw_path_link_quality_abort";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_link_quality_abort";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_link_quality_abort";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_link_quality_abort";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

char *_nw_path_link_quality_abort(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 14) & 1);
  }

  return result;
}

char *nw_path_listener_is_interface_specific(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_listener_is_interface_specific(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_listener_is_interface_specific";
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
        v16 = "nw_path_listener_is_interface_specific";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_listener_is_interface_specific";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_listener_is_interface_specific";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_listener_is_interface_specific";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

char *_nw_path_listener_is_interface_specific(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 18) & 1);
  }

  return result;
}

char *nw_path_has_kernel_extension_filter(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_has_kernel_extension_filter(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_has_kernel_extension_filter";
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
        v16 = "nw_path_has_kernel_extension_filter";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_has_kernel_extension_filter";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_has_kernel_extension_filter";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_has_kernel_extension_filter";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

char *_nw_path_has_kernel_extension_filter(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 27) & 1);
  }

  return result;
}

char *nw_path_has_custom_pf_rules(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_has_custom_pf_rules(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_has_custom_pf_rules";
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
        v16 = "nw_path_has_custom_pf_rules";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_has_custom_pf_rules";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_has_custom_pf_rules";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_has_custom_pf_rules";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

char *_nw_path_has_custom_pf_rules(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 28) & 1);
  }

  return result;
}

char *nw_path_has_application_level_firewall(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_has_application_level_firewall(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_has_application_level_firewall";
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
        v16 = "nw_path_has_application_level_firewall";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_has_application_level_firewall";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_has_application_level_firewall";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_has_application_level_firewall";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

char *_nw_path_has_application_level_firewall(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 29) & 1);
  }

  return result;
}

char *nw_path_has_parental_controls(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_has_parental_controls(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_has_parental_controls";
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
        v16 = "nw_path_has_parental_controls";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_has_parental_controls";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_has_parental_controls";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_has_parental_controls";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

char *_nw_path_has_parental_controls(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 30) & 1);
  }

  return result;
}

BOOL nw_protocol_copy_info_is_valid(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 24);
    return v1 && *(v1 + 224) != 0;
  }

  return result;
}

uint64_t nw_frame_array_append_array(uint64_t result, void *a2, int a3)
{
  if (*a2)
  {
    v3 = 24;
    if (a3)
    {
      v3 = 40;
    }

    v4 = *(result + 8);
    *v4 = *a2;
    *(*a2 + v3) = v4;
    *(result + 8) = a2[1];
    *a2 = 0;
    a2[1] = a2;
  }

  return result;
}

uint64_t sub_181EBD7B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181EBD8F0();
  sub_182AD4638();
  sub_182AD4108();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_181EBD8F0()
{
  result = qword_1EA836BC0;
  if (!qword_1EA836BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836BC0);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for IPProtocol(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void nw_parameters_set_prohibited_interface_types(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    _nw_parameters_clear_prohibited_interface_types(v3);
    if (v4)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_parameters_set_prohibited_interface_types_block_invoke;
      applier[3] = &unk_1E6A3D300;
      v13 = v3;
      xpc_array_apply(v4, applier);
    }

    goto LABEL_4;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_parameters_set_prohibited_interface_types";
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
        v17 = "nw_parameters_set_prohibited_interface_types";
        v9 = "%{public}s called with null parameters";
LABEL_18:
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
            v17 = "nw_parameters_set_prohibited_interface_types";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v11)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v17 = "nw_parameters_set_prohibited_interface_types";
        v9 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "nw_parameters_set_prohibited_interface_types";
        v9 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

LABEL_4:
}

uint64_t __nw_parameters_set_prohibited_interface_types_block_invoke(uint64_t a1, int a2, xpc_object_t xuint)
{
  value = xpc_uint64_get_value(xuint);
  _nw_parameters_prohibit_interface_type(*(a1 + 32), value);
  return 1;
}

uint64_t sub_181EBDD20(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t *, uint64_t))
{
  v9 = *v7;
  v10 = (*v7 + 16);
  v11 = *v10;
  if (*v10 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v16 = *(v9 + 24);
    *(v14 + 16) = v11;
    *(v14 + 24) = v16;
    if (v16 >= 1)
    {
      a7(v14 + 16, v14 + 40, v10, v9 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v13 = *(v9 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v14 = swift_allocObject();
      *(v14 + 16) = _swift_stdlib_malloc_size(v14) - 40;
      *(v14 + 24) = v13;
      *(v14 + 32) = 0;
      if (v13 >= 1)
      {
        sub_181F46CB8(v14 + 16, (v14 + 40), v10, (v9 + 40));
        *(v9 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v14 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v14);
      v18 = *(v9 + 24);
      *(v14 + 16) = v17 - 40;
      *(v14 + 24) = v18;
      *(v14 + 32) = 0;
      if (v18 >= 1)
      {
        sub_181F47534(v14 + 16, (v14 + 40), v10, (v9 + 40));
      }
    }
  }

  *v7 = v14;
  return result;
}

void *sub_181EBDED0(void *result, uint64_t a2, char a3)
{
  v3 = result[1];
  v4 = result[2];
  v6 = __OFADD__(v4, v3);
  v5 = v4 + v3;
  if (!v6)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + v5) = a3;
        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (!v6)
        {
          result[1] = v7;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t NWEndpoint.Port.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 2) = 0;
  return result;
}

void ___ZL57nw_socks5_connection_inner_connection_read_range_on_queueP31NWConcrete_nw_socks5_connectionjj_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = v12[3];
  }

  else
  {
    v13 = 0;
  }

  nw_socks5_connection_inner_connection_read_handler_on_queue(*(a1 + 32), v14, a4, v13, *(a1 + 40));
}

void nw_socks5_connection_inner_connection_read_handler_on_queue(void *a1, void *a2, int a3, int a4, size_t a5)
{
  v209 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = v10;
  if (v9->sc_state == 255 || (*(v9 + 160) & 1) != 0)
  {
    goto LABEL_132;
  }

  if (v10)
  {
    size = dispatch_data_get_size(v10);
  }

  else
  {
    size = 0;
  }

  WeakRetained = objc_loadWeakRetained(&v9->sc_parent);
  if (a4 || size < a5)
  {
    if (!a4)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        v18 = "not";
        *buf = 136447234;
        *&buf[14] = v9;
        if (a3)
        {
          v18 = "is";
        }

        *&buf[22] = 2048;
        *&buf[24] = size;
        *&buf[32] = 2048;
        *&buf[34] = a5;
        *&buf[42] = 2082;
        *&buf[44] = v18;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ in connection read data len %zu < %zu %{public}s_complete", buf, 0x34u);
      }

      goto LABEL_43;
    }

    if (a4 == 55 && *(v9 + 160) < 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 1024;
        *&buf[24] = 55;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ ignoring error %d", buf, 0x1Cu);
      }

      nw_socks5_connection_inner_connection_read_on_queue(v9);
      goto LABEL_131;
    }

    if ((a4 - 6) <= 0x3B && ((1 << (a4 - 6)) & 0x8C9B80004000001) != 0 || a4 == 96)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = "not";
        *buf = 136447234;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        if (a3)
        {
          v20 = "is";
        }

        *&buf[22] = 2048;
        *&buf[24] = size;
        *&buf[32] = 2082;
        *&buf[34] = v20;
        *&buf[42] = 1024;
        *&buf[44] = a4;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ in connection read error (data len %zu) %{public}s_complete %{darwin.errno}d", buf, 0x30u);
      }

      goto LABEL_43;
    }

    v46 = __nwlog_obj();
    *buf = 136447234;
    *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
    *&buf[12] = 2114;
    *&buf[22] = 2048;
    *&buf[14] = v9;
    if (a3)
    {
      v47 = "is";
    }

    else
    {
      v47 = "not";
    }

    *&buf[24] = size;
    *&buf[32] = 2082;
    *&buf[34] = v47;
    *&buf[42] = 1024;
    *&buf[44] = a4;
    v48 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    __str[0] = 0;
    if (__nwlog_fault(v48, type, __str))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v49 = __nwlog_obj();
        v50 = type[0];
        if (os_log_type_enabled(v49, type[0]))
        {
          *buf = 136447234;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2048;
          *&buf[24] = size;
          *&buf[32] = 2082;
          *&buf[34] = v47;
          *&buf[42] = 1024;
          *&buf[44] = a4;
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s %{public}@ in connection read error (data len %zu) %{public}s_complete %{darwin.errno}d", buf, 0x30u);
        }
      }

      else if (__str[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v49 = __nwlog_obj();
        v143 = type[0];
        v77 = os_log_type_enabled(v49, type[0]);
        if (backtrace_string)
        {
          if (v77)
          {
            *buf = 136447490;
            *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
            *&buf[12] = 2114;
            *&buf[14] = v9;
            *&buf[22] = 2048;
            *&buf[24] = size;
            *&buf[32] = 2082;
            *&buf[34] = v47;
            *&buf[42] = 1024;
            *&buf[44] = a4;
            *&buf[48] = 2082;
            *&buf[50] = backtrace_string;
            _os_log_impl(&dword_181A37000, v49, v143, "%{public}s %{public}@ in connection read error (data len %zu) %{public}s_complete %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x3Au);
          }

          free(backtrace_string);
          goto LABEL_242;
        }

        if (v77)
        {
          *buf = 136447234;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2048;
          *&buf[24] = size;
          *&buf[32] = 2082;
          *&buf[34] = v47;
          *&buf[42] = 1024;
          *&buf[44] = a4;
          _os_log_impl(&dword_181A37000, v49, v143, "%{public}s %{public}@ in connection read error (data len %zu) %{public}s_complete %{darwin.errno}d, no backtrace", buf, 0x30u);
        }
      }

      else
      {
        v49 = __nwlog_obj();
        v89 = type[0];
        if (os_log_type_enabled(v49, type[0]))
        {
          *buf = 136447234;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2048;
          *&buf[24] = size;
          *&buf[32] = 2082;
          *&buf[34] = v47;
          *&buf[42] = 1024;
          *&buf[44] = a4;
          _os_log_impl(&dword_181A37000, v49, v89, "%{public}s %{public}@ in connection read error (data len %zu) %{public}s_complete %{darwin.errno}d, backtrace limit exceeded", buf, 0x30u);
        }
      }
    }

LABEL_242:
    if (v48)
    {
      free(v48);
    }

LABEL_43:
    if (v9->sc_state != 200)
    {
LABEL_130:
      nw_socks5_connection_cancel_on_queue(v9, 0);
      goto LABEL_131;
    }

    nw_socks5_connection_increment_busy_on_queue(v9, WeakRetained);
    p_super = &v9->sc_out_connection->super;
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke;
    completion[3] = &unk_1E6A3A558;
    v170 = v9;
    v171 = WeakRetained;
    nw_connection_send(p_super, 0, &__block_literal_global_6_44667, 1, completion);

    goto LABEL_131;
  }

  if (gLogDatapath == 1)
  {
    v133 = __nwlog_obj();
    if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
    {
      v134 = "not";
      *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
      *&buf[12] = 2114;
      *buf = 136446978;
      *&buf[14] = v9;
      if (a3)
      {
        v134 = "is";
      }

      *&buf[22] = 2048;
      *&buf[24] = size;
      *&buf[32] = 2082;
      *&buf[34] = v134;
      _os_log_impl(&dword_181A37000, v133, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ read %zu bytes %{public}s_complete from inner connection", buf, 0x2Au);
    }
  }

  if (!v11 || !size)
  {
    goto LABEL_131;
  }

  sc_state = v9->sc_state;
  if (sc_state > 6)
  {
    if (v9->sc_state <= 0x66u)
    {
      if (sc_state - 7 >= 2 && sc_state != 101)
      {
        if (sc_state == 102)
        {
          *type = 0;
          if (size == 2)
          {
            nw_dispatch_data_copyout(v11, type, 2);
            v23 = bswap32(*type);
            v24 = HIWORD(v23);
            v9->sc_shoes_request_length_hbo = HIWORD(v23);
            v25 = __nwlog_obj();
            v26 = v25;
            if (v24 > 3)
            {
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                sc_shoes_request_length_hbo = v9->sc_shoes_request_length_hbo;
                *buf = 136446722;
                *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                *&buf[12] = 2114;
                *&buf[14] = v9;
                *&buf[22] = 1024;
                *&buf[24] = sc_shoes_request_length_hbo;
                _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ shoes client request with length %u", buf, 0x1Cu);
              }

              v9->sc_state = 103;
              nw_socks5_connection_inner_connection_read_range_on_queue(v9, v9->sc_shoes_request_length_hbo, v9->sc_shoes_request_length_hbo);
              goto LABEL_131;
            }

            if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_238;
            }

            v27 = v9->sc_shoes_request_length_hbo;
            *buf = 136446722;
            *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
            *&buf[12] = 2114;
            *&buf[14] = v9;
            *&buf[22] = 1024;
            *&buf[24] = v27;
            v28 = "%{public}s %{public}@ connection received invalid shoes request length %u";
            v29 = v26;
            v30 = 28;
          }

          else
          {
            v26 = __nwlog_obj();
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_238;
            }

            *buf = 136446722;
            *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
            *&buf[12] = 2114;
            *&buf[14] = v9;
            *&buf[22] = 2048;
            *&buf[24] = size;
            v28 = "%{public}s %{public}@ shoes_connected connection received unexpected number of bytes %zu";
            v29 = v26;
            v30 = 32;
          }

          _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
          goto LABEL_238;
        }

        goto LABEL_131;
      }
    }

    else if (v9->sc_state > 0xC7u)
    {
      if (sc_state == 200)
      {
        if (gLogDatapath == 1)
        {
          v135 = __nwlog_obj();
          if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
          {
            v136 = "not";
            *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
            *&buf[12] = 2114;
            *buf = 136446978;
            *&buf[14] = v9;
            if (a3)
            {
              v136 = "is";
            }

            *&buf[22] = 2048;
            *&buf[24] = size;
            *&buf[32] = 2082;
            *&buf[34] = v136;
            _os_log_impl(&dword_181A37000, v135, OS_LOG_TYPE_DEBUG, "%{public}s READY STATE %{public}@ read %zu bytes %{public}s_complete from inner connection", buf, 0x2Au);
          }
        }

        v9->sc_in_connection_bytes_read += size;
        v51 = &__block_literal_global_44658;
        v52 = &__block_literal_global_44658;
        if (!a3 || (*(v9 + 160) & 0x20) != 0)
        {
          v54 = 0;
        }

        else
        {
          v53 = &__block_literal_global_6_44667;

          v54 = 1;
          v51 = &__block_literal_global_6_44667;
        }

        nw_socks5_connection_increment_busy_on_queue(v9, WeakRetained);
        v65 = &v9->sc_out_connection->super;
        v146[0] = MEMORY[0x1E69E9820];
        v146[1] = 3221225472;
        v146[2] = ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_157;
        v146[3] = &unk_1E6A2DA18;
        v147 = v9;
        v150 = v54;
        v148 = WeakRetained;
        v149 = size;
        nw_connection_send(v65, v11, v51, 1, v146);

        goto LABEL_131;
      }

      if (sc_state != 255)
      {
        goto LABEL_131;
      }
    }

    else if (sc_state - 104 >= 2)
    {
      if (sc_state == 103)
      {
        if (size == v9->sc_shoes_request_length_hbo)
        {
          v207 = 0u;
          memset(v208, 0, sizeof(v208));
          v205 = 0u;
          v206 = 0u;
          v203 = 0u;
          v204 = 0u;
          v201 = 0u;
          v202 = 0u;
          v199 = 0u;
          v200 = 0u;
          v197 = 0u;
          v198 = 0u;
          memset(&buf[32], 0, 32);
          if (size >= 0x103)
          {
            v15 = 259;
          }

          else
          {
            v15 = size;
          }

          memset(buf, 0, 32);
          nw_dispatch_data_copyout(v11, &buf[2], v15);
          if (buf[2] <= 4u)
          {
            if (buf[2] <= 2u)
            {
              if (buf[2] != 1)
              {
                if (buf[2] != 2)
                {
                  goto LABEL_296;
                }

                goto LABEL_227;
              }

              goto LABEL_202;
            }

            if (buf[2] != 3)
            {
              if (buf[2] != 4)
              {
LABEL_296:
                v128 = __nwlog_obj();
                if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                {
                  *type = 136446978;
                  *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                  *&type[12] = 2114;
                  *&type[14] = v9;
                  *&type[22] = 1024;
                  *&type[24] = buf[2];
                  *&type[28] = 2048;
                  *&type[30] = size;
                  _os_log_impl(&dword_181A37000, v128, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ shoes_got_length connection received invalid request type %u length %zu", type, 0x26u);
                }

                nw_socks5_connection_cancel_on_queue(v9, 0);
                goto LABEL_131;
              }

LABEL_202:
              if (size < buf[5] + 4)
              {
                v26 = __nwlog_obj();
                if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_238;
                }

                *type = 136446722;
                *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                *&type[12] = 2114;
                *&type[14] = v9;
                *&type[22] = 2048;
                *&type[24] = size;
                v90 = "%{public}s %{public}@ shoes_got_length connection received hostname request too short %zu";
                goto LABEL_233;
              }

              LOWORD(v173) = 0;
              *__str = 0;
              snprintf(__str, 6uLL, "%u", bswap32(*&buf[3]) >> 16);
              v194 = 0u;
              v195 = 0u;
              v192 = 0u;
              v193 = 0u;
              v190 = 0u;
              v191 = 0u;
              v188 = 0u;
              v189 = 0u;
              v186 = 0u;
              v187 = 0u;
              v184 = 0u;
              v185 = 0u;
              v183 = 0u;
              memset(type, 0, sizeof(type));
              LODWORD(v96) = buf[5];
              if (buf[5])
              {
                v100 = &buf[6];
                v101 = type;
                v102 = buf[5];
                while (1)
                {
                  v103 = *v100;
                  *v101 = v103;
                  if (!v103)
                  {
                    break;
                  }

                  ++v101;
                  ++v100;
                  if (!--v102)
                  {
                    goto LABEL_276;
                  }
                }
              }

              else
              {
                v101 = type;
LABEL_276:
                *v101 = OS_LOG_TYPE_DEFAULT;
              }

              host = nw_endpoint_create_host(type, __str);
LABEL_278:
              address = host;
              v105 = v96 + 4;
              goto LABEL_279;
            }

LABEL_224:
            if (size > 6)
            {
              *type = xmmword_182BD4240;
              *&type[2] = *&buf[3];
              *&type[4] = *&buf[5];
              address = _nw_endpoint_create_address(type);
              v105 = 7;
              goto LABEL_279;
            }

            v26 = __nwlog_obj();
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_238;
            }

            *type = 136446722;
            *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
            *&type[12] = 2114;
            *&type[14] = v9;
            *&type[22] = 2048;
            *&type[24] = size;
            v90 = "%{public}s %{public}@ shoes_got_length connection received IPv4 request too short %zu";
LABEL_233:
            _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, v90, type, 0x20u);
            goto LABEL_238;
          }

          if (buf[2] - 7 >= 2)
          {
            if (buf[2] == 5)
            {
LABEL_227:
              if (size <= 0x12)
              {
                v26 = __nwlog_obj();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *type = 136446722;
                  *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                  *&type[12] = 2114;
                  *&type[14] = v9;
                  *&type[22] = 2048;
                  *&type[24] = size;
                  v90 = "%{public}s %{public}@ shoes_got_length connection received IPv6 request too short %zu";
                  goto LABEL_233;
                }

LABEL_238:

                nw_socks5_connection_cancel_on_queue(v9, 0);
                goto LABEL_131;
              }

              *type = 7708;
              *&type[24] = 0;
              *&type[2] = *&buf[3];
              *&type[8] = *&buf[5];
              address = _nw_endpoint_create_address(type);
              v105 = 19;
LABEL_279:
              if (address)
              {
                *type = 0;
                *&type[8] = type;
                *&type[16] = 0x3032000000;
                *&type[24] = __Block_byref_object_copy__16762;
                *&type[32] = __Block_byref_object_dispose__16763;
                *&type[40] = 0;
                v165 = 0;
                v166 = &v165;
                v167 = 0x2020000000;
                v168 = 0;
                if (buf[2] <= 8u && ((1 << buf[2]) & 0x170) != 0 || *(v9 + 160) < 0)
                {
                  secure_udp = nw_parameters_create_secure_udp(&__block_literal_global_19409, &__block_literal_global_2);
                  v115 = *(*&type[8] + 40);
                  *(*&type[8] + 40) = secure_udp;

                  *(v9 + 160) |= 0x20u;
                }

                else
                {
                  secure_tcp = nw_parameters_create_secure_tcp(&__block_literal_global_19409, &__block_literal_global_2);
                  v132 = *(*&type[8] + 40);
                  *(*&type[8] + 40) = secure_tcp;
                }

                v116 = nw_connection_copy_current_path(&v9->sc_in_connection->super);
                v145 = v116;
                if (v116)
                {
                  v164[0] = MEMORY[0x1E69E9820];
                  v164[1] = 3221225472;
                  v164[2] = ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_148;
                  v164[3] = &unk_1E6A39B88;
                  v164[4] = type;
                  _nw_path_enumerate_network_agents(v116, v164);
                }

                v117 = v9->sc_shoes_request_length_hbo;
                if (v105 < v117)
                {
                  v118 = v117 - v105;
                  v119 = __nwlog_obj();
                  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                  {
                    *__str = 136446722;
                    v173 = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                    v174 = 2114;
                    v175 = v9;
                    v176 = 1024;
                    v177 = v118;
                    _os_log_impl(&dword_181A37000, v119, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ received shoes tlv(s) with total tlv buffer length %u", __str, 0x1Cu);
                  }

                  v159[0] = MEMORY[0x1E69E9820];
                  v159[1] = 3221225472;
                  v159[2] = ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_152;
                  v159[3] = &unk_1E6A2D9C8;
                  v160 = v9;
                  v162 = type;
                  v161 = address;
                  v163 = &v165;
                  nw_shoes_tlv_parser(&buf[v105 + 2], v118, v159);
                }

                nw_socks5_server_call_outer_connection_handler(WeakRetained, address, *(*&type[8] + 40));
                if (*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 161))
                {
                  v129 = __nwlog_obj();
                  if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
                  {
                    *__str = 136447234;
                    v173 = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                    v174 = 2114;
                    v175 = v9;
                    v176 = 1024;
                    v177 = buf[2];
                    v178 = 2048;
                    v179 = size;
                    v180 = 2112;
                    v181 = address;
                    _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ got shoes request type %u inner length %zu to %@", __str, 0x30u);
                  }

                  v9->sc_state = 104;
                  v130 = v145;
                  nw_socks5_connection_connect_outer_on_queue(v9, address, *(*&type[8] + 40));
                }

                else
                {
                  *(v9 + 161) |= 1u;
                  v120 = __nwlog_obj();
                  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
                  {
                    *__str = 136446466;
                    v173 = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                    v174 = 2114;
                    v175 = v9;
                    _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@ creating udp associated connection", __str, 0x16u);
                  }

                  if (*(v166 + 12))
                  {
                    objc_storeStrong(&v9->sc_in_udp_associated_tcp_connection, v9->sc_in_connection);
                    posix_error = nw_connection_copy_connected_remote_endpoint(v9->sc_in_udp_associated_tcp_connection);
                    hostname = nw_endpoint_get_hostname(posix_error);
                    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(hostname, *(v166 + 12));
                    if (host_with_numeric_port)
                    {
                      local_endpoint = nw_connection_copy_connected_local_endpoint(v9->sc_in_udp_associated_tcp_connection);
                      v141 = nw_connection_copy_connected_path(v9->sc_in_udp_associated_tcp_connection);
                      interface = nw_path_copy_interface(v141);
                      v123 = nw_interface_get_type(interface);
                      v124 = _nw_parameters_create();
                      stack = nw_parameters_copy_default_protocol_stack(v124);
                      options = _nw_udp_create_options();
                      nw_protocol_stack_set_transport_protocol(stack, options);

                      nw_parameters_set_reuse_local_address(v124, 1);
                      nw_parameters_set_required_interface_type(v124, v123);
                      nw_parameters_set_local_endpoint(v124, local_endpoint);
                      sc_queue = v9->sc_queue;
                      v154[0] = MEMORY[0x1E69E9820];
                      v154[1] = 3221225472;
                      v154[2] = ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_154;
                      v154[3] = &unk_1E6A2D9F0;
                      v155 = v9;
                      v156 = host_with_numeric_port;
                      v127 = v124;
                      v157 = v127;
                      v158 = v11;
                      nw_socks5_server_register_udp_associate_request(WeakRetained, v155, v156, sc_queue, v154);
                    }

                    else
                    {
                      local_endpoint = nw_error_create_posix_error(14);
                      nw_socks5_connection_cancel_on_queue(v9, local_endpoint);
                    }
                  }

                  else
                  {
                    posix_error = nw_error_create_posix_error(22);
                    nw_socks5_connection_cancel_on_queue(v9, posix_error);
                  }

                  v130 = v145;
                }

                _Block_object_dispose(&v165, 8);
                _Block_object_dispose(type, 8);

                goto LABEL_131;
              }

              goto LABEL_296;
            }

            if (buf[2] != 6)
            {
              goto LABEL_296;
            }

            goto LABEL_224;
          }

          v96 = buf[5];
          if (size < buf[5] + 4)
          {
            v26 = __nwlog_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *type = 136446722;
              *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
              *&type[12] = 2114;
              *&type[14] = v9;
              *&type[22] = 2048;
              *&type[24] = size;
              v90 = "%{public}s %{public}@ shoes_got_length connection received bonjour request too short %zu";
              goto LABEL_233;
            }

            goto LABEL_238;
          }

          v106 = strnlen(&buf[6], buf[5]);
          if (v106 >= v96)
          {
            v60 = __nwlog_obj();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              *type = 136446466;
              *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
              *&type[12] = 2114;
              *&type[14] = v9;
              v111 = "%{public}s %{public}@ failed to parse bonjour name";
LABEL_315:
              _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_ERROR, v111, type, 0x16u);
            }
          }

          else
          {
            v107 = v106 + 1;
            v108 = strnlen(&buf[v106 + 7], v96 - (v106 + 1)) + v106 + 1;
            if (v108 < v96)
            {
              v109 = v108 + 1;
              if (strnlen(&buf[v108 + 7], v96 - (v108 + 1)) + v108 + 1 < v96)
              {
                host = nw_endpoint_create_bonjour_service(&buf[6], &buf[v107 + 6], &buf[v109 + 6]);
                goto LABEL_278;
              }

              v60 = __nwlog_obj();
              if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_147;
              }

              *type = 136446466;
              *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
              *&type[12] = 2114;
              *&type[14] = v9;
              v111 = "%{public}s %{public}@ failed to parse bonjour domain";
              goto LABEL_315;
            }

            v60 = __nwlog_obj();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              *type = 136446466;
              *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
              *&type[12] = 2114;
              *&type[14] = v9;
              v111 = "%{public}s %{public}@ failed to parse bonjour type";
              goto LABEL_315;
            }
          }

LABEL_147:

          nw_socks5_connection_cancel_on_queue(v9, 0);
          goto LABEL_131;
        }

        v22 = __nwlog_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v70 = v9->sc_shoes_request_length_hbo;
          *buf = 136446978;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2048;
          *&buf[24] = size;
          *&buf[32] = 1024;
          *&buf[34] = v70;
          _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ shoes_got_length connection received unexpected number of bytes %zu (expected %u)", buf, 0x26u);
        }

        goto LABEL_199;
      }

LABEL_131:

LABEL_132:
      return;
    }

LABEL_71:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = gLogObj;
    v35 = v9->sc_state;
    *buf = 136446978;
    *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
    *&buf[12] = 2114;
    *&buf[14] = v9;
    *&buf[22] = 2048;
    *&buf[24] = size;
    *&buf[32] = 1024;
    *&buf[34] = v35;
    v36 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    __str[0] = 0;
    if (__nwlog_fault(v36, type, __str))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type[0];
        if (os_log_type_enabled(v37, type[0]))
        {
          v39 = v9->sc_state;
          *buf = 136446978;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2048;
          *&buf[24] = size;
          *&buf[32] = 1024;
          *&buf[34] = v39;
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s %{public}@ inner connection received %zu bytes in invalid state %u", buf, 0x26u);
        }
      }

      else if (__str[0] == 1)
      {
        v40 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v41 = type[0];
        v42 = os_log_type_enabled(v37, type[0]);
        if (v40)
        {
          if (v42)
          {
            v43 = v9->sc_state;
            *buf = 136447234;
            *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
            *&buf[12] = 2114;
            *&buf[14] = v9;
            *&buf[22] = 2048;
            *&buf[24] = size;
            *&buf[32] = 1024;
            *&buf[34] = v43;
            *&buf[38] = 2082;
            *&buf[40] = v40;
            _os_log_impl(&dword_181A37000, v37, v41, "%{public}s %{public}@ inner connection received %zu bytes in invalid state %u, dumping backtrace:%{public}s", buf, 0x30u);
          }

          free(v40);
          goto LABEL_128;
        }

        if (v42)
        {
          v66 = v9->sc_state;
          *buf = 136446978;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2048;
          *&buf[24] = size;
          *&buf[32] = 1024;
          *&buf[34] = v66;
          _os_log_impl(&dword_181A37000, v37, v41, "%{public}s %{public}@ inner connection received %zu bytes in invalid state %u, no backtrace", buf, 0x26u);
        }
      }

      else
      {
        v37 = __nwlog_obj();
        v44 = type[0];
        if (os_log_type_enabled(v37, type[0]))
        {
          v45 = v9->sc_state;
          *buf = 136446978;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2048;
          *&buf[24] = size;
          *&buf[32] = 1024;
          *&buf[34] = v45;
          _os_log_impl(&dword_181A37000, v37, v44, "%{public}s %{public}@ inner connection received %zu bytes in invalid state %u, backtrace limit exceeded", buf, 0x26u);
        }
      }
    }

LABEL_128:
    if (v36)
    {
      free(v36);
    }

    goto LABEL_130;
  }

  if (v9->sc_state <= 3u)
  {
    if (sc_state < 2)
    {
      goto LABEL_71;
    }

    if (sc_state == 2)
    {
      *type = 0;
      if (size == 2)
      {
        nw_dispatch_data_copyout(v11, type, 2);
        if (type[0] == 5)
        {
          v55 = type[1];
          v56 = __nwlog_obj();
          v26 = v56;
          if (v55)
          {
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
              *&buf[12] = 2114;
              *&buf[14] = v9;
              *&buf[22] = 1024;
              *&buf[24] = type[0];
              *&buf[28] = 1024;
              *&buf[30] = type[1];
              _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ client request for version %u nMethods %u", buf, 0x22u);
            }

            v9->sc_state = 3;
            nw_socks5_connection_inner_connection_read_range_on_queue(v9, type[1], type[1]);
            goto LABEL_131;
          }

          if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_238;
          }

          *buf = 136446466;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          v67 = "%{public}s %{public}@ connection received zero nMethods";
          v68 = v26;
          v69 = 22;
        }

        else
        {
          v26 = __nwlog_obj();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_238;
          }

          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 1024;
          *&buf[24] = type[0];
          v67 = "%{public}s %{public}@ connection received unsupported socks version %u";
          v68 = v26;
          v69 = 28;
        }
      }

      else
      {
        v26 = __nwlog_obj();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_238;
        }

        *buf = 136446722;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 2048;
        *&buf[24] = size;
        v67 = "%{public}s %{public}@ connection received unexpected number of bytes %zu";
        v68 = v26;
        v69 = 32;
      }

      _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_ERROR, v67, buf, v69);
      goto LABEL_238;
    }

    if (size < 0x100)
    {
      nw_dispatch_data_copyout(v11, buf, 255);
      v71 = 0;
      while (buf[v71])
      {
        if (size == ++v71)
        {
          v60 = __nwlog_obj();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            *type = 136446466;
            *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
            *&type[12] = 2114;
            *&type[14] = v9;
            _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ unsupported auth methods", type, 0x16u);
          }

          goto LABEL_147;
        }
      }

      v85 = __nwlog_obj();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
      {
        *type = 136446466;
        *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&type[12] = 2114;
        *&type[14] = v9;
        _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ picking auth method: none", type, 0x16u);
      }

      v9->sc_state = 4;
      *type = 5;
      v86 = dispatch_data_create(type, 2uLL, 0, 0);
      nw_socks5_connection_increment_busy_on_queue(v9, WeakRetained);
      v87 = &v9->sc_in_connection->super;
      v151[0] = MEMORY[0x1E69E9820];
      v151[1] = 3221225472;
      v151[2] = ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_156;
      v151[3] = &unk_1E6A3A558;
      v152 = v9;
      v153 = WeakRetained;
      nw_connection_send(v87, v86, &__block_literal_global_44658, 1, v151);

      goto LABEL_131;
    }

    v22 = __nwlog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2048;
      *&buf[24] = size;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ connection received unexpected number of bytes %zu", buf, 0x20u);
    }

LABEL_199:

    goto LABEL_130;
  }

  if (sc_state == 4)
  {
    *type = 0;
    if (size == 4)
    {
      nw_dispatch_data_copyout(v11, type, 4);
      if (type[0] == 5)
      {
        if (type[1] == OS_LOG_TYPE_INFO)
        {
          if (type[3] <= 4u && ((1 << type[3]) & 0x1A) != 0)
          {
            v62 = __nwlog_obj();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136447234;
              *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
              *&buf[12] = 2114;
              *&buf[14] = v9;
              *&buf[22] = 1024;
              *&buf[24] = type[0];
              *&buf[28] = 1024;
              *&buf[30] = type[1];
              *&buf[34] = 1024;
              *&buf[36] = type[3];
              _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ client request for version %u command %u addressType %u", buf, 0x28u);
            }

            v63 = type[3];
            v9->sc_out_address_type = type[3];
            switch(v63)
            {
              case 1:
                v64 = 4;
                break;
              case 3:
                v64 = 1;
                break;
              case 4:
                v64 = 16;
                break;
              default:
                v112 = __nwlog_obj();
                if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
                {
                  sc_out_address_type = v9->sc_out_address_type;
                  *buf = 136446722;
                  *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
                  *&buf[12] = 2114;
                  *&buf[14] = v9;
                  *&buf[22] = 1024;
                  *&buf[24] = sc_out_address_type;
                  _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ address type %u not handled", buf, 0x1Cu);
                }

                nw_socks5_connection_cancel_on_queue(v9, 0);
                v64 = 0;
                break;
            }

            v9->sc_state = 5;
            nw_socks5_connection_inner_connection_read_range_on_queue(v9, v64, v64);
            goto LABEL_131;
          }

          v26 = __nwlog_obj();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_238;
          }

          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 1024;
          *&buf[24] = type[3];
          v73 = "%{public}s %{public}@ connection received unsupported address type %u";
        }

        else
        {
          v26 = __nwlog_obj();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_238;
          }

          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 1024;
          *&buf[24] = type[1];
          v73 = "%{public}s %{public}@ connection received unsupported command %u";
        }
      }

      else
      {
        v26 = __nwlog_obj();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_238;
        }

        *buf = 136446722;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 1024;
        *&buf[24] = type[0];
        v73 = "%{public}s %{public}@ connection received unsupported socks version %u";
      }

      v74 = v26;
      v75 = 28;
    }

    else
    {
      v26 = __nwlog_obj();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_238;
      }

      *buf = 136446722;
      *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2048;
      *&buf[24] = size;
      v73 = "%{public}s %{public}@ connection received unexpected number of bytes %zu";
      v74 = v26;
      v75 = 32;
    }

    _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_ERROR, v73, buf, v75);
    goto LABEL_238;
  }

  if (sc_state != 5)
  {
    if (sc_state != 6)
    {
      goto LABEL_131;
    }

    *type = 0;
    if (size != 2)
    {
      v72 = __nwlog_obj();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 2048;
        *&buf[24] = size;
        _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ connection received unexpected number of bytes %zu", buf, 0x20u);
      }

      nw_socks5_connection_cancel_on_queue(v9, 0);
      goto LABEL_131;
    }

    nw_dispatch_data_copyout(v11, type, 2);
    v31 = __nwlog_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 1024;
      *&buf[24] = bswap32(*type) >> 16;
      _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ client request for port %u", buf, 0x1Cu);
    }

    v32 = v9->sc_out_address_type;
    switch(v32)
    {
      case 4:
        *buf = 7708;
        *&buf[2] = *type;
        *&buf[4] = 0;
        *&buf[8] = *v9->sc_out_address.byte_pointer;
        *&buf[24] = 0;
        v33 = _nw_endpoint_create_address(buf);
        break;
      case 3:
        *&buf[4] = 0;
        *buf = 0;
        snprintf(buf, 6uLL, "%u", bswap32(*type) >> 16);
        v33 = nw_endpoint_create_host(v9->sc_out_address.byte_pointer, buf);
        break;
      case 1:
        *buf = 528;
        *&buf[2] = *type;
        *&buf[4] = *v9->sc_out_address.byte_pointer;
        *&buf[8] = 0;
        v33 = _nw_endpoint_create_address(buf);
        break;
      default:
        v91 = 0;
        goto LABEL_214;
    }

    v91 = v33;
LABEL_214:
    byte_pointer = v9->sc_out_address.byte_pointer;
    if (byte_pointer)
    {
      free(byte_pointer);
      v9->sc_out_address.byte_pointer = 0;
    }

    v93 = __nwlog_obj();
    v94 = v93;
    if (v91)
    {
      if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
      {
        logging_description = nw_endpoint_get_logging_description(v91);
        *buf = 136446722;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 2082;
        *&buf[24] = logging_description;
        _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_INFO, "%{public}s %{public}@ instantiated endpoint: %{public}s", buf, 0x20u);
      }

      v9->sc_state = 7;
      nw_socks5_connection_connect_outer_on_queue(v9, v91, 0);
    }

    else
    {
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ failed to instantiate endpoint", buf, 0x16u);
      }

      nw_socks5_connection_cancel_on_queue(v9, 0);
    }

    goto LABEL_131;
  }

  v57 = v9->sc_out_address_type;
  if (v57 == 1 || v57 == 4)
  {
    if (v57 == 1 && size != 4 || v57 == 4 && size != 16)
    {
      v22 = __nwlog_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        *&buf[22] = 2048;
        *&buf[24] = size;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ connection received unexpected number of bytes %zu", buf, 0x20u);
      }

      goto LABEL_199;
    }
  }

  else if (v57 != 3 || !v9->sc_out_address_domain_length)
  {
    if (size == 1)
    {
      type[0] = OS_LOG_TYPE_DEFAULT;
      nw_dispatch_data_copyout(v11, type, 1);
      v58 = type[0];
      v59 = __nwlog_obj();
      v60 = v59;
      if (v58)
      {
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 1024;
          *&buf[24] = type[0];
          _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ client request has address length %u", buf, 0x1Cu);
        }

        v61 = type[0];
        v9->sc_out_address_domain_length = type[0];
        nw_socks5_connection_inner_connection_read_range_on_queue(v9, v61, v61);
        goto LABEL_131;
      }

      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
        *&buf[12] = 2114;
        *&buf[14] = v9;
        _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ address length is zero", buf, 0x16u);
      }

      goto LABEL_147;
    }

    v22 = __nwlog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2048;
      *&buf[24] = size;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ connection received unexpected number of bytes %zu", buf, 0x20u);
    }

    goto LABEL_199;
  }

  if (v57 == 3)
  {
    v78 = size + 1;
  }

  else
  {
    v78 = size;
  }

  if (!v78)
  {
    v137 = __nwlog_obj();
    os_log_type_enabled(v137, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
    v138 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v138))
    {
      goto LABEL_327;
    }

    free(v138);
    v78 = 0;
  }

  v79 = malloc_type_malloc(v78, 0xCD20F954uLL);
  if (v79)
  {
    goto LABEL_172;
  }

  v80 = __nwlog_obj();
  os_log_type_enabled(v80, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
  v81 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v81))
  {
    free(v81);
LABEL_172:
    v9->sc_out_address.byte_pointer = v79;
    nw_dispatch_data_copyout(v11, v79, size);
    v82 = v9->sc_out_address_type;
    if (v82 == 3)
    {
      v9->sc_out_address.byte_pointer[size] = 0;
      v82 = v9->sc_out_address_type;
    }

    switch(v82)
    {
      case 4:
        v83 = __nwlog_obj();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
        {
          v99 = inet_ntop(2, v9->sc_out_address.byte_pointer, buf, 0x2Eu);
          *type = 136446722;
          *&type[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&type[12] = 2114;
          *&type[14] = v9;
          *&type[22] = 2082;
          *&type[24] = v99;
          _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ client request for ipv6 %{public}s", type, 0x20u);
        }

        break;
      case 3:
        v97 = __nwlog_obj();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
        {
          v98 = v9->sc_out_address.byte_pointer;
          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2082;
          *&buf[24] = v98;
          _os_log_impl(&dword_181A37000, v97, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ client request for domain %{public}s", buf, 0x20u);
        }

        goto LABEL_250;
      case 1:
        v83 = __nwlog_obj();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
        {
          v84 = inet_ntop(2, v9->sc_out_address.byte_pointer, type, 0x10u);
          *buf = 136446722;
          *&buf[4] = "nw_socks5_connection_inner_connection_read_handler_on_queue";
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2082;
          *&buf[24] = v84;
          _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ client request for ipv4 %{public}s", buf, 0x20u);
        }

        break;
      default:
LABEL_250:
        v9->sc_state = 6;
        nw_socks5_connection_inner_connection_read_range_on_queue(v9, 2u, 2u);
        goto LABEL_131;
    }

    goto LABEL_250;
  }

LABEL_327:
  __break(1u);
}

void sub_181EC0A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a71, 8);

  _Unwind_Resume(a1);
}

void ___ZL59nw_socks5_connection_inner_connection_read_handler_on_queueP31NWConcrete_nw_socks5_connectionPU27objcproto16OS_dispatch_data8NSObjectbim_block_invoke_157(uint64_t a1, void *a2)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  nw_socks5_connection_decrement_busy_on_queue(*(a1 + 32), *(a1 + 40));
  v4 = *(a1 + 32);
  if (*(v4 + 56) == 255)
  {
    goto LABEL_31;
  }

  if (v3)
  {
    v5 = v3;
    v6 = v5[3];

    v7 = *(*(a1 + 32) + 160);
    if (v7 < 0)
    {
      v19 = (v6 - 6);
      if (v19 <= 0x3B)
      {
        if (((1 << (v6 - 6)) & 0x8C9B80004000001) != 0)
        {
LABEL_24:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = *(a1 + 32);
            *buf = 136446722;
            v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v42 = 2114;
            v43 = v22;
            v44 = 1024;
            LODWORD(v45[0]) = v6;
            _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ write out error %{darwin.errno}d", buf, 0x1Cu);
          }

LABEL_27:
          nw_socks5_connection_cancel_on_queue(*(a1 + 32), v5);
          goto LABEL_31;
        }

        if (v19 == 49)
        {
LABEL_6:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v9 = *(a1 + 32);
            *buf = 136446722;
            v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v42 = 2114;
            v43 = v9;
            v44 = 2112;
            v45[0] = v5;
            _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ ignoring write out error %@", buf, 0x20u);
          }

          nw_socks5_connection_inner_connection_read_on_queue(*(a1 + 32));
          goto LABEL_31;
        }
      }
    }

    else
    {
      if ((v7 & 0x20) != 0 && v6 == 55)
      {
        goto LABEL_6;
      }

      if ((v6 - 6) <= 0x3B && ((1 << (v6 - 6)) & 0x8C9B80004000001) != 0)
      {
        goto LABEL_24;
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    v24 = *(a1 + 32);
    *buf = 136446722;
    v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
    v42 = 2114;
    v43 = v24;
    v44 = 1024;
    LODWORD(v45[0]) = v6;
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (__nwlog_fault(v25, &type, &v38))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          v28 = *(a1 + 32);
          *buf = 136446722;
          v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v42 = 2114;
          v43 = v28;
          v44 = 1024;
          LODWORD(v45[0]) = v6;
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s %{public}@ write out error %{darwin.errno}d", buf, 0x1Cu);
        }
      }

      else if (v38 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v30 = type;
        v31 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v31)
          {
            v32 = *(a1 + 32);
            *buf = 136446978;
            v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
            v42 = 2114;
            v43 = v32;
            v44 = 1024;
            LODWORD(v45[0]) = v6;
            WORD2(v45[0]) = 2082;
            *(v45 + 6) = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v30, "%{public}s %{public}@ write out error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(backtrace_string);
          goto LABEL_48;
        }

        if (v31)
        {
          v35 = *(a1 + 32);
          *buf = 136446722;
          v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v42 = 2114;
          v43 = v35;
          v44 = 1024;
          LODWORD(v45[0]) = v6;
          _os_log_impl(&dword_181A37000, v26, v30, "%{public}s %{public}@ write out error %{darwin.errno}d, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v26, type))
        {
          v34 = *(a1 + 32);
          *buf = 136446722;
          v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
          v42 = 2114;
          v43 = v34;
          v44 = 1024;
          LODWORD(v45[0]) = v6;
          _os_log_impl(&dword_181A37000, v26, v33, "%{public}s %{public}@ write out error %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

LABEL_48:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_27;
  }

  if (*(a1 + 56) == 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    *buf = 136446722;
    v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
    v42 = 2114;
    v43 = v11;
    v44 = 2048;
    v45[0] = v12;
    v13 = "%{public}s %{public}@ wrote %zu bytes is_complete into outer connection";
    v14 = v10;
    v15 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_12;
  }

  if ((gLogDatapath & 1) == 0)
  {
    *(v4 + 192) += *(a1 + 48);
    v17 = *(a1 + 32);
    goto LABEL_30;
  }

  v10 = __nwlog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v36 = *(a1 + 32);
    v37 = *(a1 + 48);
    *buf = 136446722;
    v41 = "nw_socks5_connection_inner_connection_read_handler_on_queue_block_invoke";
    v42 = 2114;
    v43 = v36;
    v44 = 2048;
    v45[0] = v37;
    v13 = "%{public}s %{public}@ wrote %zu bytes not_complete into outer connection";
    v14 = v10;
    v15 = OS_LOG_TYPE_DEBUG;
LABEL_12:
    _os_log_impl(&dword_181A37000, v14, v15, v13, buf, 0x20u);
  }

LABEL_13:

  v16 = *(a1 + 56);
  *(*(a1 + 32) + 192) += *(a1 + 48);
  v17 = *(a1 + 32);
  if ((v16 & 1) == 0)
  {
LABEL_30:
    nw_socks5_connection_inner_connection_read_on_queue(v17);
    goto LABEL_31;
  }

  *(v17 + 160) |= 1u;
  v18 = *(a1 + 32);
  if ((~v18[160] & 3) == 0)
  {
    nw_socks5_connection_cancel_on_queue(v18, 0);
  }

LABEL_31:
}

void nw_socks5_connection_inner_connection_read_on_queue(NWConcrete_nw_socks5_connection *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if ((*(v1 + 160) & 0x20) != 0)
  {
    v3 = v1;
    if (gLogDatapath == 1)
    {
      v6 = __nwlog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *v7 = 136446466;
        *&v7[4] = "nw_socks5_connection_inner_connection_read_message_on_queue";
        *&v7[12] = 2114;
        *&v7[14] = v3;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ reading message on inner connection", v7, 0x16u);
      }
    }

    sc_in_connection = v3->sc_in_connection;
    *v7 = MEMORY[0x1E69E9820];
    *&v7[8] = 3221225472;
    *&v7[16] = ___ZL59nw_socks5_connection_inner_connection_read_message_on_queueP31NWConcrete_nw_socks5_connection_block_invoke;
    v8 = &unk_1E6A39638;
    v5 = v3;
    v9 = v5;
    nw_connection_receive_internal(sc_in_connection, 0, 0xFFFFFFFF, 0xFFFFFFFF, v7);
  }

  else
  {
    nw_socks5_connection_inner_connection_read_range_on_queue(v1, 1u, 0xFFFFFFFF);
  }
}

void nw_socks5_connection_inner_connection_read_range_on_queue(NWConcrete_nw_socks5_connection *a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (a2 - 1 < a3)
  {
    if (gLogDatapath == 1)
    {
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v22 = "nw_socks5_connection_inner_connection_read_range_on_queue";
        v23 = 2114;
        *v24 = v5;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ reading on inner connection", buf, 0x16u);
      }
    }

    sc_in_connection = v5->sc_in_connection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ZL57nw_socks5_connection_inner_connection_read_range_on_queueP31NWConcrete_nw_socks5_connectionjj_block_invoke;
    v16[3] = &unk_1E6A2DA40;
    v17 = v5;
    v18 = a2;
    nw_connection_receive_internal(sc_in_connection, 0, a2, a3, v16);

    goto LABEL_11;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446722;
  v22 = "nw_socks5_connection_inner_connection_read_range_on_queue";
  v23 = 1024;
  *v24 = a2;
  *&v24[4] = 1024;
  *&v24[6] = a3;
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v8, &type, &v19))
  {
    goto LABEL_9;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446722;
      v22 = "nw_socks5_connection_inner_connection_read_range_on_queue";
      v23 = 1024;
      *v24 = a2;
      *&v24[4] = 1024;
      *&v24[6] = a3;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s unexpected minBytes %u maxBytes %u", buf, 0x18u);
    }

LABEL_8:

LABEL_9:
    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_10:
    free(v8);
    goto LABEL_11;
  }

  if (v19 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v14 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446722;
      v22 = "nw_socks5_connection_inner_connection_read_range_on_queue";
      v23 = 1024;
      *v24 = a2;
      *&v24[4] = 1024;
      *&v24[6] = a3;
      _os_log_impl(&dword_181A37000, v9, v14, "%{public}s unexpected minBytes %u maxBytes %u, backtrace limit exceeded", buf, 0x18u);
    }

    goto LABEL_8;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v12 = type;
  v13 = os_log_type_enabled(v9, type);
  if (!backtrace_string)
  {
    if (v13)
    {
      *buf = 136446722;
      v22 = "nw_socks5_connection_inner_connection_read_range_on_queue";
      v23 = 1024;
      *v24 = a2;
      *&v24[4] = 1024;
      *&v24[6] = a3;
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s unexpected minBytes %u maxBytes %u, no backtrace", buf, 0x18u);
    }

    goto LABEL_8;
  }

  if (v13)
  {
    *buf = 136446978;
    v22 = "nw_socks5_connection_inner_connection_read_range_on_queue";
    v23 = 1024;
    *v24 = a2;
    *&v24[4] = 1024;
    *&v24[6] = a3;
    v25 = 2082;
    v26 = backtrace_string;
    _os_log_impl(&dword_181A37000, v9, v12, "%{public}s unexpected minBytes %u maxBytes %u, dumping backtrace:%{public}s", buf, 0x22u);
  }

  free(backtrace_string);
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_11:
}

void nw_parameters_set_pid(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_pid(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_pid";
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
        v12 = "nw_parameters_set_pid";
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
            v12 = "nw_parameters_set_pid";
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
        v12 = "nw_parameters_set_pid";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_pid";
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

void nw_ip_channel_inbox_handle_input_frame(void *a1, uint64_t a2, void *a3, void *a4, sockaddr_in_4_6 *a5)
{
  v258 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  memset(__src, 0, 28);
  memset(&__dst, 0, sizeof(__dst));
  v12 = *(v9 + 14);
  v239 = v11;
  if (v12 != 2)
  {
    v233 = v9[166];
    v22 = *(v9 + 19);
    if (v22)
    {
      memcpy(&__dst, *(v9 + 19), *v22);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      if (v22[1] == 2)
      {
        v26 = 528;
      }

      else
      {
        v26 = 7708;
      }

      LOWORD(__src[0]) = v26;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }

    goto LABEL_14;
  }

  v13 = v11;
  v14 = *(v9 + 40);
  LODWORD(v245) = 0;
  v15 = nw_frame_unclaimed_bytes(v10, &v245);
  if (!v245)
  {
LABEL_213:
    nw_frame_finalize(v10);
LABEL_214:

    return;
  }

  v16 = *v15 >> 4;
  if (v16 != 6)
  {
    if (v16 != 4)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        *&buf[2] = "nw_ip_parse";
        buf[6] = 1024;
        *&buf[7] = v16;
        _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s Unknown IP version: %u", buf, 0x12u);
      }

      goto LABEL_213;
    }

    *uu = 0;
    v17 = nw_frame_unclaimed_bytes(v10, uu);
    v257 = 0;
    memset(&buf[10], 0, 32);
    v19 = *uu;
    if (*uu <= 0x13u)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *v252 = 136446466;
        *&v252[4] = "ipv4_parse";
        *&v252[12] = 1024;
        *&v252[14] = *uu;
        v21 = "%{public}s Received IPv4 packet with incorrect length %u";
LABEL_93:
        v33 = v252;
        goto LABEL_94;
      }

      goto LABEL_212;
    }

    *buf = *v17;
    *&buf[8] = *(v17 + 16);
    v35 = 4 * (buf[0] & 0xF);
    if (v35 < 0x14 || *uu < v35)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *v252 = 136446466;
        *&v252[4] = "ipv4_parse";
        *&v252[12] = 1024;
        *&v252[14] = v35;
        v21 = "%{public}s Invalid IPv4 header length: %u";
        goto LABEL_93;
      }

LABEL_212:
      v13 = v239;
      goto LABEL_213;
    }

    v36 = buf[5];
    buf[5] = 0;
    v37 = ((v35 - 2) >> 1) + 1;
    v38 = 2 * (v37 & 0xFFFFFFF8);
    v39 = &buf[4];
    v40 = 0uLL;
    v41 = v37 & 0xFFFFFFF8;
    v42 = 0uLL;
    do
    {
      v40 = vaddw_u16(v40, v39[-1]);
      v42 = vaddw_u16(v42, *v39);
      v39 += 2;
      v41 -= 8;
    }

    while (v41);
    v43 = vaddvq_s32(vaddq_s32(v42, v40));
    if ((v37 & 0xFFFFFFF8) != v37)
    {
      v44 = &buf[v37 & 0xFFFFFFF8];
      v45 = v35 - v38 + 2;
      do
      {
        v46 = *v44++;
        v43 += v46;
        v45 -= 2;
      }

      while (v45 > 3);
    }

    if ((v36 ^ (HIWORD(v43) + v43 + ((HIWORD(v43) + v43) >> 16))) != 0xFFFF)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
      {
        *v252 = 136446466;
        *&v252[4] = "ipv4_parse";
        *&v252[12] = 1024;
        *&v252[14] = v36;
        v21 = "%{public}s Invalid ipv4 header checksum 0x%x";
        goto LABEL_93;
      }

      goto LABEL_212;
    }

    v47 = bswap32(buf[1]) >> 16;
    if (*uu < v47)
    {
      v48 = __nwlog_obj();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        goto LABEL_212;
      }

      *v252 = 136446722;
      *&v252[4] = "ipv4_parse";
      *&v252[12] = 1024;
      *&v252[14] = v47;
      *&v252[18] = 1024;
      *&v252[20] = *uu;
      v21 = "%{public}s Received IPv4 packet with incorrect length, expected %u received %u";
      v33 = v252;
LABEL_50:
      v51 = v48;
      v52 = OS_LOG_TYPE_INFO;
      v53 = 24;
LABEL_96:
      _os_log_impl(&dword_181A37000, v51, v52, v21, v33, v53);
      goto LABEL_212;
    }

    if (*uu > v47)
    {
      if (gLogDatapath == 1)
      {
        v199 = __nwlog_obj();
        v200 = os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG);
        v19 = *uu;
        if (v200)
        {
          *v252 = 136446722;
          *&v252[4] = "ipv4_parse";
          *&v252[12] = 1024;
          *&v252[14] = v47;
          *&v252[18] = 1024;
          *&v252[20] = *uu;
          _os_log_impl(&dword_181A37000, v199, OS_LOG_TYPE_DEBUG, "%{public}s Received length mismatch with IP total length %u != %u", v252, 0x18u);
          v19 = *uu;
        }
      }

      nw_frame_claim(v10, v18, 0, v19 - v47);
    }

    if ((buf[6] & 0xF0) == 0xE0)
    {
      v60 = __nwlog_obj();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        goto LABEL_212;
      }

      *v252 = 136446210;
      *&v252[4] = "ipv4_parse";
      v21 = "%{public}s Invalid source address";
      v33 = v252;
      goto LABEL_118;
    }

    v23 = (buf[3] & 0xFF3F) != 0;
    v92 = buf[2];
    if ((buf[3] & 0xFF3F) == 0)
    {
      v92 = 0;
    }

    v25 = v92;
    v24 = buf[3] == 32;
    v233 = HIBYTE(buf[4]);
    *(&__src[0] + 1) = 0;
    LODWORD(__src[0]) = 528;
    DWORD1(__src[0]) = *&buf[6];
    *&__dst.var0.sa_len = 528;
    *__dst.var3.sin6_addr.__u6_addr8 = 0;
    __dst.var2.sin_addr.s_addr = *&buf[8];
    v83 = v10;
    v84 = v35;
    goto LABEL_159;
  }

  *v252 = 0;
  v30 = nw_frame_unclaimed_bytes(v10, v252);
  v32 = *v252;
  if (*v252 <= 0x27u)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      *&buf[2] = "ipv6_parse";
      buf[6] = 1024;
      *&buf[7] = *v252;
      v21 = "%{public}s Received IPv6 packet with incorrect length %u";
      v33 = buf;
LABEL_94:
      v51 = v20;
      v52 = OS_LOG_TYPE_INFO;
      goto LABEL_95;
    }

    goto LABEL_212;
  }

  v49 = bswap32(*(v30 + 4)) >> 16;
  v50 = v49 + 40;
  if ((v49 + 40) > *v252)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v48 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_212;
    }

    *buf = 136446722;
    *&buf[2] = "ipv6_parse";
    buf[6] = 1024;
    *&buf[7] = v50;
    buf[9] = 1024;
    *&buf[10] = *v252;
    v21 = "%{public}s Received IPv6 packet with incorrect length, expected %u received %u";
    v33 = buf;
    goto LABEL_50;
  }

  if (v49 + 80 < *v252)
  {
    v61 = v30;
    if (gLogDatapath == 1)
    {
      v197 = __nwlog_obj();
      v198 = os_log_type_enabled(v197, OS_LOG_TYPE_DEBUG);
      v32 = *v252;
      if (v198)
      {
        *buf = 136446722;
        *&buf[2] = "ipv6_parse";
        buf[6] = 1024;
        *&buf[7] = v50;
        buf[9] = 1024;
        *&buf[10] = *v252;
        _os_log_impl(&dword_181A37000, v197, OS_LOG_TYPE_DEBUG, "%{public}s Received length mismatch with IPv6 %u != %u", buf, 0x18u);
        v32 = *v252;
      }
    }

    nw_frame_claim(v10, v31, 0, v32 - v50);
    v30 = v61;
  }

  v62 = *(v30 + 6);
  v23 = v62 == 44;
  if (v62 == 44)
  {
    v24 = *(v30 + 42) == 256;
    v25 = *(v30 + 44);
    v233 = *(v30 + 40);
  }

  else
  {
    v233 = *(v30 + 6);
    v24 = 0;
    v25 = 0;
  }

  v69 = *(v30 + 8);
  v70 = *(v30 + 12);
  v71 = *(v30 + 16);
  if (*(v30 + 8))
  {
    v72 = 0;
  }

  else
  {
    v72 = v71 == -65536;
  }

  v73 = v72;
  if (*(v30 + 8) == 0xFF || v73)
  {
    v80 = __nwlog_obj();
    if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_212;
    }

    *buf = 136446210;
    *&buf[2] = "ipv6_parse";
    v21 = "%{public}s Invalid source address";
LABEL_114:
    v33 = buf;
    v51 = v80;
    v52 = OS_LOG_TYPE_ERROR;
    v53 = 12;
    goto LABEL_96;
  }

  v74 = *(v30 + 20);
  *&__src[0] = 7708;
  *(&__src[1] + 4) = v74;
  *(&__src[0] + 1) = __PAIR64__(v70, v69);
  LODWORD(__src[1]) = v71;
  if ((v69 & 0xC0FF) == 0x80FE)
  {
    DWORD2(__src[1]) = v14;
    v75 = v30;
    loga = __nwlog_obj();
    v76 = os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG);
    v30 = v75;
    if (v76)
    {
      *buf = 136446978;
      *&buf[2] = "ipv6_parse";
      buf[6] = 1040;
      *&buf[7] = LOBYTE(__src[0]);
      buf[9] = 2096;
      *&buf[10] = __src;
      buf[14] = 1024;
      *&buf[15] = v14;
      _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s Set scopeid for src %{network:sockaddr}.*P to %u", buf, 0x22u);
      v30 = v75;
    }
  }

  v77 = *(v30 + 24);
  v78 = *(v30 + 28);
  v79 = *(v30 + 32);
  if (!__PAIR64__(v78, v77) && v79 == -65536)
  {
    v80 = __nwlog_obj();
    if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_212;
    }

    *buf = 136446210;
    *&buf[2] = "ipv6_parse";
    v21 = "%{public}s Invalid destination address";
    goto LABEL_114;
  }

  v81 = v30;
  v82 = *(v30 + 36);
  *&__dst.var0.sa_len = 7708;
  *&__dst.var3.sin6_addr.__u6_addr32[3] = v82;
  *__dst.var3.sin6_addr.__u6_addr8 = __PAIR64__(v78, v77);
  __dst.var3.sin6_addr.__u6_addr32[2] = v79;
  if ((v77 & 0xC0FF) == 0x80FE)
  {
    __dst.var3.sin6_scope_id = v14;
    logb = __nwlog_obj();
    if (os_log_type_enabled(logb, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      *&buf[2] = "ipv6_parse";
      buf[6] = 1040;
      *&buf[7] = __dst.var0.sa_len;
      buf[9] = 2096;
      *&buf[10] = &__dst;
      buf[14] = 1024;
      *&buf[15] = v14;
      _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_DEBUG, "%{public}s Set scopeid for dst %{network:sockaddr}.*P to %u", buf, 0x22u);
    }
  }

  nw_frame_claim(v10, v31, 40, 0);
  if (*(v81 + 6) != 44)
  {
    goto LABEL_160;
  }

  v83 = v10;
  v84 = 8;
LABEL_159:
  nw_frame_claim(v83, v18, v84, 0);
LABEL_160:
  if (v233 != v9[166])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v68 = gLogObj;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      v93 = v9[166];
      *buf = 136446722;
      *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
      buf[6] = 1024;
      *&buf[7] = v233;
      buf[9] = 1024;
      *&buf[10] = v93;
      _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_INFO, "%{public}s Received IP packet with protocol %u != %u", buf, 0x18u);
    }

    goto LABEL_90;
  }

  v12 = *(v9 + 14);
LABEL_14:
  if ((v12 & 0xFFFFFFFE) == 2)
  {
    if (v24 || !v23)
    {
      if (v233 == 17)
      {
        *v252 = 0;
        v55 = nw_frame_unclaimed_bytes(v10, v252);
        if (*v252 < 8u || (*v252 >= bswap32(v55[2]) >> 16 ? (v56 = 1) : (v56 = v23), (v56 & 1) == 0))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v28 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_212;
          }

          *buf = 136446466;
          *&buf[2] = "nw_udp_parse";
          buf[6] = 1024;
          *&buf[7] = *v252;
          v21 = "%{public}s Received UDP packet with incorrect length %u";
          goto LABEL_65;
        }

        v57 = *v55;
        v58 = v55[1];
        v59 = BYTE1(__src[0]);
        if (BYTE1(__src[0]) == 30 && !v55[3])
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v60 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            goto LABEL_212;
          }

          *buf = 136446210;
          *&buf[2] = "nw_udp_parse";
          v21 = "%{public}s Received IPv6 UDP packet with 0 checksum";
          goto LABEL_117;
        }

        if (v55[3])
        {
          v85 = v23;
        }

        else
        {
          v85 = 1;
        }

        if ((v85 & 1) == 0)
        {
          v86 = 8;
          if (BYTE1(__src[0]) == 2)
          {
            v86 = 4;
          }

          if (__dst.var0.sa_family == 2)
          {
            p_sin6_flowinfo = &__dst.var3.sin6_flowinfo;
          }

          else
          {
            p_sin6_flowinfo = &__dst.var3.sin6_addr;
          }

          if (!udp_validate_cksum_internal(v10, *v252, (__src + v86), p_sin6_flowinfo->__u6_addr16, BYTE1(__src[0]) == 30, 0))
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v60 = gLogObj;
            if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              goto LABEL_212;
            }

            *buf = 136446210;
            *&buf[2] = "nw_udp_parse";
            v21 = "%{public}s Received UDP packet with invalid checksum";
            goto LABEL_117;
          }

          v59 = BYTE1(__src[0]);
        }

        if (v59 != 2 && v59 != 30)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v28 = gLogObj;
          if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_212;
          }

          *buf = 136446466;
          *&buf[2] = "nw_udp_parse";
          buf[6] = 1024;
          *&buf[7] = BYTE1(__src[0]);
          v21 = "%{public}s Unsuppposed address family: %u";
          goto LABEL_65;
        }

        WORD1(__src[0]) = v57;
        __dst.var2.sin_port = v58;
      }

      else if (v233 == 6)
      {
        if (__dst.var0.sa_family == 2)
        {
          if ((__dst.var0.sa_data[2] & 0xF0) != 0xE0)
          {
LABEL_21:
            *v252 = 0;
            v27 = nw_frame_unclaimed_bytes(v10, v252);
            if (*v252 <= 0x13u)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v28 = gLogObj;
              if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_212;
              }

              *buf = 136446466;
              *&buf[2] = "nw_tcp_parse_syn";
              buf[6] = 1024;
              *&buf[7] = *v252;
              v21 = "%{public}s Received TCP packet with incorrect length %u";
LABEL_65:
              v33 = buf;
              v51 = v28;
              v52 = OS_LOG_TYPE_ERROR;
LABEL_95:
              v53 = 18;
              goto LABEL_96;
            }

            v63 = *v27;
            v64 = v27[1];
            v65 = *(v27 + 12);
            log = *(v27 + 13);
            v66 = 8;
            if (BYTE1(__src[0]) == 2)
            {
              v66 = 4;
            }

            if (__dst.var0.sa_family == 2)
            {
              p_sin6_addr = &__dst.var3.sin6_flowinfo;
            }

            else
            {
              p_sin6_addr = &__dst.var3.sin6_addr;
            }

            if (validate_tcp_cksum(v10, *v252, (__src + v66), p_sin6_addr->__u6_addr32, v63, v64, __dst.var0.sa_family == 30))
            {
              if (v65 < 0x50 || *v252 < ((v65 >> 2) & 0x3C))
              {
                v88 = (v65 >> 2) & 0x3C;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v20 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_212;
                }

                *buf = 136446466;
                *&buf[2] = "nw_tcp_parse_syn";
                buf[6] = 1024;
                *&buf[7] = v88;
                v21 = "%{public}s invalid tcp offset: %u";
              }

              else
              {
                if (BYTE1(__src[0]) == 2 || BYTE1(__src[0]) == 30)
                {
                  WORD1(__src[0]) = v63;
                  __dst.var2.sin_port = v64;
                  if ((~log & 3) == 0)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v60 = gLogObj;
                    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                    {
                      goto LABEL_212;
                    }

                    *buf = 136446210;
                    *&buf[2] = "nw_tcp_parse_syn";
                    v21 = "%{public}s Dropping SYN|FIN";
                    goto LABEL_117;
                  }

                  if ((log & 0x16) != 2)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v144 = gLogObj;
                    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136446210;
                      *&buf[2] = "nw_tcp_parse_syn";
                      _os_log_impl(&dword_181A37000, v144, OS_LOG_TYPE_INFO, "%{public}s Non SYN packet delivered to listener", buf, 0xCu);
                    }

                    v13 = v239;
                    if ((log & 4) == 0)
                    {
                      nw_tcp_respond_reset(v10, a2, (v9 + 88), &__dst, __src);
                    }

                    goto LABEL_213;
                  }

                  goto LABEL_170;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v20 = gLogObj;
                if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_212;
                }

                *buf = 136446466;
                *&buf[2] = "nw_tcp_parse_syn";
                buf[6] = 1024;
                *&buf[7] = BYTE1(__src[0]);
                v21 = "%{public}s Unsuppposed address family: %u";
              }

              v33 = buf;
              goto LABEL_94;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v60 = gLogObj;
            if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              goto LABEL_212;
            }

            *buf = 136446210;
            *&buf[2] = "nw_tcp_parse_syn";
            v21 = "%{public}s invalid tcp checksum";
LABEL_117:
            v33 = buf;
LABEL_118:
            v51 = v60;
            v52 = OS_LOG_TYPE_INFO;
            v53 = 12;
            goto LABEL_96;
          }
        }

        else if (__dst.var0.sa_family != 30 || __dst.var3.sin6_addr.__u6_addr8[0] != 255)
        {
          goto LABEL_21;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v68 = gLogObj;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
          _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_INFO, "%{public}s Received TCP packet with multicast destination address", buf, 0xCu);
        }

LABEL_90:

        goto LABEL_212;
      }

LABEL_170:
      v94 = !v24;
      if (!a5)
      {
        v94 = 1;
      }

      if ((v94 & 1) == 0)
      {
        *&a5[2].var0.sa_len = v25;
        a5[2].var0.sa_data[2] = v233;
        memcpy(a5, __src, LOBYTE(__src[0]));
        memcpy(&a5[1], &__dst, __dst.var0.sa_len);
      }

      goto LABEL_174;
    }

    if (!a5)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v54 = gLogObj;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
        buf[6] = 1024;
        *&buf[7] = v25;
        _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_INFO, "%{public}s Invalid fragment ID being dropped %u", buf, 0x12u);
      }

      goto LABEL_174;
    }

    if (v25 == *&a5[2].var0.sa_len)
    {
      sa_family = a5->var0.sa_family;
      if (__PAIR64__(sa_family, a5->var0.sa_len) == __PAIR64__(BYTE1(__src[0]), LOBYTE(__src[0])))
      {
        if (sa_family == 30)
        {
          if (*a5->var3.sin6_addr.__u6_addr8 != *(&__src[0] + 1) || *&a5->var3.sin6_addr.__u6_addr32[2] != *&__src[1])
          {
            goto LABEL_153;
          }
        }

        else if (sa_family != 2 || a5->var2.sin_addr.s_addr != DWORD1(__src[0]))
        {
          goto LABEL_153;
        }

        if (nw_ip_channel_sockaddrs_are_equal_without_port(a5 + 1, &__dst))
        {
          v233 = a5[2].var0.sa_data[2];
          memcpy(__src, a5, a5->var0.sa_len);
          memcpy(&__dst, &a5[1], a5[1].var0.sa_len);
          goto LABEL_170;
        }
      }
    }

LABEL_153:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v90 = gLogObj;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      v91 = *&a5[2].var0.sa_len;
      *buf = 136446722;
      *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
      buf[6] = 1024;
      *&buf[7] = v25;
      buf[9] = 1024;
      *&buf[10] = v91;
      _os_log_impl(&dword_181A37000, v90, OS_LOG_TYPE_INFO, "%{public}s Invalid fragment ID being dropped %u (expecting %u)", buf, 0x18u);
    }

    goto LABEL_212;
  }

LABEL_174:
  if (v239)
  {
    if (_nw_array_get_count(v239))
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL38nw_ip_channel_inbox_handle_input_frameP19nw_ip_channel_inboxP11nw_protocolPU22objcproto11OS_nw_frame8NSObjectPU22objcproto11OS_nw_arrayS3_P27nw_ip_channel_fragment_info_block_invoke;
      aBlock[3] = &unk_1E6A359C8;
      *v248 = __src[0];
      *&v248[12] = *(__src + 12);
      *v249 = __dst.var0;
      *&v249[12] = *(&__dst.var3.sin6_addr + 4);
      v247 = v10;
      v95 = _nw_array_apply(v239, aBlock);

      v13 = v239;
      if (!v95)
      {
        goto LABEL_214;
      }
    }
  }

  address = _nw_endpoint_create_address(__src);
  logc = _nw_endpoint_create_address(&__dst);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v96 = gLogObj;
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
  {
    v97 = logc;
    v98 = v97;
    if (v97)
    {
      description = _nw_endpoint_get_description(v97);
    }

    else
    {
      description = "<NULL>";
    }

    v100 = address;
    v101 = v100;
    if (v100)
    {
      logging_description = _nw_endpoint_get_logging_description(v100);
    }

    else
    {
      logging_description = "<NULL>";
    }

    *buf = 136446722;
    *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
    buf[6] = 2082;
    *&buf[7] = description;
    buf[11] = 2082;
    *&buf[12] = logging_description;
    _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_DEBUG, "%{public}s Looking up %{public}s<->%{public}s", buf, 0x20u);
  }

  v103 = v9;
  v104 = v103;
  if (*(v103 + 82) != __dst.var2.sin_port)
  {
    goto LABEL_203;
  }

  if ((v103[167] & 1) == 0)
  {
    goto LABEL_187;
  }

  v108 = *(v103 + 19);
  if (!v108)
  {
LABEL_203:

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v113 = gLogObj;
    if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
    {
      v114 = logc;
      v115 = v114;
      if (v114)
      {
        v116 = _nw_endpoint_get_description(v114);
      }

      else
      {
        v116 = "<NULL>";
      }

      v117 = address;
      v118 = v117;
      if (v117)
      {
        v119 = _nw_endpoint_get_logging_description(v117);
      }

      else
      {
        v119 = "<NULL>";
      }

      *buf = 136446722;
      *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
      buf[6] = 2082;
      *&buf[7] = v116;
      buf[11] = 2082;
      *&buf[12] = v119;
      _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_INFO, "%{public}s packet %{public}s<-%{public}s does not match listener", buf, 0x20u);
    }

    goto LABEL_212;
  }

  v109 = *(v108 + 1);
  if (v109 == 30)
  {
    if (__dst.var0.sa_family != 30)
    {
      goto LABEL_203;
    }

    v111 = *(v108 + 8);
    v110 = *(v108 + 16);
    if (v111 != *__dst.var3.sin6_addr.__u6_addr8 || v110 != *&__dst.var3.sin6_addr.__u6_addr32[2])
    {
      goto LABEL_203;
    }
  }

  else if (v109 != 2 || __dst.var0.sa_family != 2 || *(v108 + 4) != __dst.var2.sin_addr.s_addr)
  {
    goto LABEL_203;
  }

LABEL_187:

  if (nw_parameters_get_upper_transport_protocol(*(v104 + 6)) != 253)
  {
    goto LABEL_270;
  }

  v245 = 0;
  v105 = nw_parameters_copy_upper_transport_protocol_options(*(v104 + 6));
  if (nw_protocol_options_is_quic_stream(v105))
  {
    v106 = nw_quic_stream_copy_shared_connection_options(v105);
    source_connection_id_length = nw_quic_connection_get_source_connection_id_length(v106);
  }

  else if (nw_protocol_options_is_quic_connection(v105))
  {
    source_connection_id_length = nw_quic_connection_get_source_connection_id_length(v105);
  }

  else
  {
    source_connection_id_length = 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v120 = gLogObj;
  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
    buf[6] = 1024;
    *&buf[7] = source_connection_id_length;
    _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s Using CID length %u", buf, 0x12u);
  }

  *buf = 0;
  v121 = nw_frame_unclaimed_bytes(v10, buf);
  v122 = (*buf - 8);
  if (*buf <= 8u || (*buf -= 8, !nw_quic_parse_internal((v121 + 8), v122, source_connection_id_length, &v245)))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v125 = gLogObj;
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
      _os_log_impl(&dword_181A37000, v125, OS_LOG_TYPE_DEBUG, "%{public}s Unable to parse connection ID", buf, 0xCu);
    }

    goto LABEL_269;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v123 = gLogObj;
  if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
  {
    v124 = *(v104 + 5);
    *buf = 136447234;
    *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
    buf[6] = 2112;
    *&buf[7] = v124;
    buf[11] = 2112;
    *&buf[12] = v245;
    buf[16] = 2112;
    *&buf[17] = address;
    buf[21] = 2112;
    *&buf[22] = logc;
    _os_log_impl(&dword_181A37000, v123, OS_LOG_TYPE_DEFAULT, "%{public}s Received QUIC short header packet on interface %@ with CID %@ [%@->%@]", buf, 0x34u);
  }

  if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
  }

  v125 = nw_protocol_copy_quic_stream_definition_quic_definition;
  identifier = nw_protocol_definition_get_identifier(v125);
  *&uu[12] = 0;
  *&uu[4] = 0;
  v255 = 0;
  *&uu[2] = *(v104 + 82);
  *uu = 7708;
  parameters = nw_parameters_copy_context(*(v104 + 6));
  v228 = _nw_endpoint_create_address(uu);
  v226 = nw_context_copy_registered_endpoint(parameters, v228);
  v127 = nw_endpoint_copy_registrar_for_identifier(v226, identifier, 0);
  if (!v127)
  {
LABEL_268:

LABEL_269:
LABEL_270:
    parametersa = _nw_parameters_copy(*(v104 + 6));
    if (__dst.var0.sa_family == 2)
    {
      if ((__dst.var0.sa_data[2] & 0xF0) == 0xE0)
      {
        goto LABEL_285;
      }

      v155 = *(v104 + 5);
      p_s_addr = &__dst.var2.sin_addr.s_addr;
    }

    else
    {
      if (__dst.var0.sa_family != 30)
      {
        v155 = *(v104 + 5);
        goto LABEL_294;
      }

      if (__dst.var3.sin6_addr.__u6_addr8[0] == 255)
      {
        goto LABEL_285;
      }

      v155 = *(v104 + 5);
      if (*__dst.var3.sin6_addr.__u6_addr8 || __dst.var3.sin6_addr.__u6_addr32[2] != -65536)
      {
        goto LABEL_294;
      }

      p_s_addr = &__dst.var3.sin6_addr.__u6_addr32[3];
    }

    v157 = *p_s_addr;
    if (*p_s_addr != -1)
    {
      if (!v155)
      {
        goto LABEL_294;
      }

      LOBYTE(buf[0]) = 0;
      v252[0] = 0;
      ipv4_netmask = _nw_interface_get_ipv4_netmask(v155, buf);
      ipv4_broadcast = _nw_interface_get_ipv4_broadcast(v155, v252);
      if (v252[0] != 1 || v157 != ipv4_broadcast && (LOBYTE(buf[0]) != 1 || (ipv4_broadcast & ipv4_netmask) != v157))
      {
        goto LABEL_294;
      }
    }

LABEL_285:
    address_family = nw_endpoint_get_address_family(address);
    if (address_family == 30)
    {
      memset(&buf[2], 0, 24);
      buf[0] = 7708;
      buf[1] = __dst.var2.sin_port;
      v161 = _nw_endpoint_create_address(buf);
    }

    else
    {
      if (address_family != 2)
      {
LABEL_291:
        v155 = nw_parameters_copy_default_protocol_stack(parametersa);
        v162 = nw_protocol_stack_copy_transport_protocol(v155);
        if (nw_protocol_options_is_udp(v162))
        {
          _nw_udp_options_set_ignore_inbound_checksum(v162, 1);
        }

LABEL_294:
        v163 = v239;
        nw_parameters_set_local_endpoint(parametersa, logc);
        nw_parameters_set_reuse_local_address(parametersa, 1);
        v164 = *(v104 + 4);
        if (v164)
        {
          *buf = 0;
          *&buf[4] = 0;
          v165 = v164;
          _nw_endpoint_get_agent_identifier(v165, buf);

          if (!uuid_is_null(buf))
          {
            nw_parameters_require_netagent_uuid(parametersa, buf);
          }

          v163 = v239;
        }

        if (![*(v104 + 1) canHandleNewConnection:{v104, v213, v214}])
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v175 = gLogObj;
          if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
          {
            v176 = logc;
            v177 = v176;
            if (v176)
            {
              v178 = _nw_endpoint_get_description(v176);
            }

            else
            {
              v178 = "<NULL>";
            }

            v179 = address;
            v180 = v179;
            if (v179)
            {
              v181 = _nw_endpoint_get_logging_description(v179);
            }

            else
            {
              v181 = "<NULL>";
            }

            *buf = 136446722;
            *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
            buf[6] = 2082;
            *&buf[7] = v178;
            buf[11] = 2082;
            *&buf[12] = v181;
            _os_log_impl(&dword_181A37000, v175, OS_LOG_TYPE_INFO, "%{public}s Dropping %{public}s<-%{public}s, listener can't handle new connections", buf, 0x20u);
          }

          goto LABEL_212;
        }

        *uu = 0;
        *&uu[8] = 0;
        v166 = v104;
        logc = logc;
        v227 = address;
        v232 = parametersa;
        v229 = v163;
        v221 = v166;
        uuid_clear(uu);
        *v252 = 0;
        *&v252[8] = 0;
        nw_path_get_client_id(v166[8], v252);
        nw_parameters_set_parent_id_internal(v232, v252);
        nw_parameters_set_server_mode(v232);
        v223 = nw_parameters_copy_default_protocol_stack(v232);
        v167 = nw_protocol_stack_copy_transport_protocol(v223);
        v225 = v167;
        if (nw_protocol_options_is_tcp(v167) && !_nw_tcp_options_get_connection_timeout(v167))
        {
          int64_with_default = networkd_settings_get_int64_with_default(nw_setting_tcp_accept_timeout_seconds, 5);
          if (int64_with_default)
          {
            _nw_tcp_options_set_connection_timeout(v167, int64_with_default);
          }
        }

        [*(v104 + 1) updateParametersForNewConnection:v232];
        v169 = _nw_parameters_copy_extended_description(v232);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v170 = gLogObj;
        if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
        {
          v171 = *(v104 + 1);
          v172 = logc;
          v173 = v172;
          if (v172)
          {
            v174 = _nw_endpoint_get_description(v172);
          }

          else
          {
            v174 = "<NULL>";
          }

          v182 = v227;
          v183 = v182;
          if (v182)
          {
            v184 = _nw_endpoint_get_logging_description(v182);
          }

          else
          {
            v184 = "<NULL>";
          }

          *buf = 136447234;
          *&buf[2] = "nw_ip_channel_inbox_handle_new_flow";
          buf[6] = 2112;
          *&buf[7] = v171;
          buf[11] = 2082;
          *&buf[12] = v174;
          buf[16] = 2082;
          *&buf[17] = v184;
          buf[21] = 2082;
          *&buf[22] = v169;
          _os_log_impl(&dword_181A37000, v170, OS_LOG_TYPE_INFO, "%{public}s Listener %@ received new flow %{public}s<-%{public}s %{public}s", buf, 0x34u);
        }

        if (v169)
        {
          free(v169);
        }

        v185 = [*(v104 + 1) copyPeerDeviceID];
        if (v185)
        {
          nw_endpoint_set_device_id(v227, v185);
          free(v185);
        }

        v186 = [*(v104 + 1) copyPeerTXTRecord];
        if (v186)
        {
          nw_endpoint_set_txt_record(v227, v186);
        }

        v187 = nw_connection_create_from_protocol_on_nw_queue(v227, v232, 0);
        v188 = v187;
        if (v187)
        {
          v189 = v187;
          nw_context_assert_queue(v189[3]);
          flow_id = nw_endpoint_handler_get_flow_id(v189[18], uu);

          if (flow_id)
          {
            if (v239)
            {
              _nw_array_append(v229, v189);
            }

            [*(v104 + 1) handleInbound:v189 addProtocolInbox:nw_parameters_get_attach_protocol_listener(v232)];

            if (uuid_is_null(uu))
            {
              v191 = __nwlog_obj();
              if (os_log_type_enabled(v191, OS_LOG_TYPE_INFO))
              {
                v192 = nw_endpoint_get_description(logc);
                v193 = nw_endpoint_get_logging_description(v227);
                *buf = 136446978;
                *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
                buf[6] = 2082;
                *&buf[7] = v192;
                buf[11] = 2082;
                *&buf[12] = v193;
                buf[16] = 1024;
                *&buf[17] = v233;
                _os_log_impl(&dword_181A37000, v191, OS_LOG_TYPE_INFO, "%{public}s No flow id for new inbound connection %{public}s<-%{public}s %u", buf, 0x26u);
              }

              goto LABEL_339;
            }

            nw_frame_reclassify(v10, uu);

LABEL_345:
            v13 = v239;
            goto LABEL_214;
          }

          v194 = __nwlog_obj();
          if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[2] = "nw_ip_channel_inbox_handle_new_flow";
            v195 = "%{public}s nw_connection_get_flow_id_on_nw_queue failed";
            goto LABEL_337;
          }
        }

        else
        {
          v194 = __nwlog_obj();
          if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[2] = "nw_ip_channel_inbox_handle_new_flow";
            v195 = "%{public}s nw_connection_create_from_protocol_on_nw_queue failed";
LABEL_337:
            _os_log_impl(&dword_181A37000, v194, OS_LOG_TYPE_ERROR, v195, buf, 0xCu);
          }
        }

        v191 = v221;
LABEL_339:

        goto LABEL_212;
      }

      buf[0] = 528;
      buf[1] = __dst.var2.sin_port;
      *&buf[2] = 0;
      *&buf[4] = 0;
      v161 = _nw_endpoint_create_address(buf);
    }

    logc = v161;
    goto LABEL_291;
  }

  v128 = v245;
  v224 = v127;
  quic_instance_by_id = nw_protocol_instance_registrar_find_quic_instance_by_id(v127, v245);
  v130 = __nwlog_obj();
  v131 = os_log_type_enabled(v130, OS_LOG_TYPE_INFO);
  if (!quic_instance_by_id)
  {
    if (v131)
    {
      *buf = 136446210;
      *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
      _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_INFO, "%{public}s Failed to find an existing QUIC connection, discarding", buf, 0xCu);
    }

    nw_frame_finalize(v10);
    goto LABEL_344;
  }

  v222 = quic_instance_by_id;
  if (v131)
  {
    *buf = 136446210;
    *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
    _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_INFO, "%{public}s Found an existing QUIC connection, adding a new path", buf, 0xCu);
  }

  v127 = v224;
  v132 = quic_instance_by_id[3];
  if (!v132)
  {
    goto LABEL_268;
  }

  v133 = *(v132 + 120);
  if (!v133)
  {
    goto LABEL_268;
  }

  v220 = v133(quic_instance_by_id);
  v134 = __nwlog_obj();
  if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
    buf[6] = 2112;
    *&buf[7] = v220;
    _os_log_impl(&dword_181A37000, v134, OS_LOG_TYPE_INFO, "%{public}s QUIC protocol peer path %@", buf, 0x16u);
  }

  *v252 = 0;
  *&v252[8] = v252;
  *&v252[16] = 0x2020000000;
  v253 = 0;
  v135 = malloc_type_calloc(1uLL, 0x10uLL, 0x83DCD0BuLL);
  if (v135)
  {
LABEL_235:
    *(*&v252[8] + 24) = v135;
    v242[0] = MEMORY[0x1E69E9820];
    v242[1] = 3221225472;
    v242[2] = ___ZL38nw_ip_channel_inbox_handle_input_frameP19nw_ip_channel_inboxP11nw_protocolPU22objcproto11OS_nw_frame8NSObjectPU22objcproto11OS_nw_arrayS3_P27nw_ip_channel_fragment_info_block_invoke_38;
    v242[3] = &unk_1E6A39A70;
    v138 = v104;
    v243 = v138;
    v244 = v252;
    nw_path_enumerate_interface_options(v220, v242);
    is_null = uuid_is_null(*(*&v252[8] + 24));
    if (is_null)
    {
      v140 = __nwlog_obj();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
        _os_log_impl(&dword_181A37000, v140, OS_LOG_TYPE_INFO, "%{public}s Did not find a matching interface", buf, 0xCu);
      }

      goto LABEL_264;
    }

    v140 = nw_path_copy_flow_registration(parameters, quic_instance_by_id);
    if (v10)
    {
      *buf = 0;
      v141 = nw_frame_unclaimed_bytes(v10, buf);
      if (v141)
      {
        *buf -= 8;
        v218 = dispatch_data_create((v141 + 8), *buf, 0, 0);
        nw_frame_claim(v10, v142, *buf + 8, 0);
        v143 = v218;
      }

      else
      {
        v143 = 0;
      }
    }

    else
    {
      v143 = 0;
    }

    v219 = v143;
    v145 = nw_interface_option_details_create(v138[5], *(*&v252[8] + 24), address, 0, v143, -1);
    v217 = v145;
    if (v145)
    {
      v146 = v145;
      nw_interface_option_details_set_injected(v145);
      nw_path_flow_registration_add_extra_interface_option(v140, v146);
    }

    else
    {
      v147 = __nwlog_obj();
      if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
      {
        v148 = v138[5];
        v149 = *(*&v252[8] + 24);
        *buf = 136446978;
        *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
        buf[6] = 2112;
        *&buf[7] = v148;
        buf[11] = 1042;
        *&buf[12] = 16;
        buf[14] = 2098;
        *&buf[15] = v149;
        _os_log_impl(&dword_181A37000, v147, OS_LOG_TYPE_ERROR, "%{public}s Unable to create interface option details with %@ [%{public,uuid_t}.16P]", buf, 0x26u);
      }

      is_null = 0;
    }

    v150 = nw_path_flow_registration_copy_path(v140);
    v151 = v150;
    v152 = quic_instance_by_id[3];
    if (v152)
    {
      v153 = *(v152 + 168);
      if (v153)
      {
        v153(quic_instance_by_id, quic_instance_by_id[6], v150);
LABEL_263:

LABEL_264:
        v154 = *(*&v252[8] + 24);
        if (v154)
        {
          free(v154);
          *(*&v252[8] + 24) = 0;
        }

        if (is_null)
        {

          _Block_object_dispose(v252, 8);
          v127 = v224;
          goto LABEL_268;
        }

        v196 = __nwlog_obj();
        if (os_log_type_enabled(v196, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
          _os_log_impl(&dword_181A37000, v196, OS_LOG_TYPE_INFO, "%{public}s QUIC migration handled packet", buf, 0xCu);
        }

        nw_frame_finalize(v10);
        _Block_object_dispose(v252, 8);

        v128 = v245;
LABEL_344:

        goto LABEL_345;
      }
    }

    v215 = v150;
    v201 = __nwlog_obj();
    v202 = quic_instance_by_id[2];
    if (!v202)
    {
      v202 = "invalid";
    }

    *buf = 136446466;
    *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
    buf[6] = 2082;
    *&buf[7] = v202;
    LODWORD(v214) = 22;
    v213 = buf;
    v216 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v240 = 0;
    if (__nwlog_fault(v216, &type, &v240))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v203 = __nwlog_obj();
        v204 = type;
        if (os_log_type_enabled(v203, type))
        {
          v205 = v222[2];
          if (!v205)
          {
            v205 = "invalid";
          }

          *buf = 136446466;
          *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
          buf[6] = 2082;
          *&buf[7] = v205;
          _os_log_impl(&dword_181A37000, v203, v204, "%{public}s protocol %{public}s has invalid updated_path callback", buf, 0x16u);
        }
      }

      else
      {
        if (v240 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v207 = __nwlog_obj();
          HIDWORD(v214) = type;
          v208 = os_log_type_enabled(v207, type);
          if (backtrace_string)
          {
            if (v208)
            {
              v209 = v222[2];
              if (!v209)
              {
                v209 = "invalid";
              }

              *buf = 136446722;
              *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
              buf[6] = 2082;
              *&buf[7] = v209;
              buf[11] = 2082;
              *&buf[12] = backtrace_string;
              _os_log_impl(&dword_181A37000, v207, BYTE4(v214), "%{public}s protocol %{public}s has invalid updated_path callback, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(backtrace_string);
          }

          else
          {
            if (v208)
            {
              v212 = v222[2];
              if (!v212)
              {
                v212 = "invalid";
              }

              *buf = 136446466;
              *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
              buf[6] = 2082;
              *&buf[7] = v212;
              _os_log_impl(&dword_181A37000, v207, BYTE4(v214), "%{public}s protocol %{public}s has invalid updated_path callback, no backtrace", buf, 0x16u);
            }
          }

          goto LABEL_376;
        }

        v203 = __nwlog_obj();
        v210 = type;
        if (os_log_type_enabled(v203, type))
        {
          v211 = v222[2];
          if (!v211)
          {
            v211 = "invalid";
          }

          *buf = 136446466;
          *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
          buf[6] = 2082;
          *&buf[7] = v211;
          _os_log_impl(&dword_181A37000, v203, v210, "%{public}s protocol %{public}s has invalid updated_path callback, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

LABEL_376:
    if (v216)
    {
      free(v216);
    }

    v151 = v215;
    goto LABEL_263;
  }

  v136 = __nwlog_obj();
  os_log_type_enabled(v136, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[2] = "nw_ip_channel_inbox_handle_input_frame";
  buf[6] = 2048;
  *&buf[7] = 1;
  buf[11] = 2048;
  *&buf[12] = 16;
  LODWORD(v214) = 32;
  v213 = buf;
  v137 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v137))
  {
    free(v137);
    v135 = 0;
    goto LABEL_235;
  }

  __break(1u);
}

void sub_181EC4784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, void *a36)
{
  _Block_object_dispose((v41 - 240), 8);

  _Unwind_Resume(a1);
}

void nw_parameters_set_discretionary(char *a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_discretionary(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_discretionary";
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
        v12 = "nw_parameters_set_discretionary";
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
            v12 = "nw_parameters_set_discretionary";
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
        v12 = "nw_parameters_set_discretionary";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_discretionary";
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

uint64_t nw_protocol_disconnected_is_valid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      LODWORD(v2) = *(v2 + 48) != 0;
    }
  }

  else
  {
    LODWORD(v2) = 0;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

id nw_framer_protocol_get_remote_endpoint(nw_protocol *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1->handle;
    v3 = v2;
    if (v2)
    {
      if (v2[1])
      {
        default_input_handler = a1->default_input_handler;
        if (default_input_handler && (callbacks = default_input_handler->callbacks) != 0 && (get_remote_endpoint = callbacks->get_remote_endpoint) != 0)
        {
          v7 = get_remote_endpoint();
        }

        else
        {
          v7 = 0;
        }

        if (gLogDatapath == 1)
        {
          v19 = __nwlog_obj();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v34 = "nw_framer_protocol_get_remote_endpoint";
            v35 = 2080;
            v36 = v3 + 609;
            v37 = 2112;
            v38 = v7;
            _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %s returning remote endpoint: %@", buf, 0x20u);
          }
        }

LABEL_9:

        goto LABEL_10;
      }

      v17 = __nwlog_obj();
      *buf = 136446210;
      v34 = "nw_framer_protocol_get_remote_endpoint";
      v14 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v31 = 0;
      if (__nwlog_fault(v14, &type, &v31))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v15 = __nwlog_obj();
          v18 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v34 = "nw_framer_protocol_get_remote_endpoint";
            _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }

LABEL_67:

          goto LABEL_68;
        }

        if (v31 != 1)
        {
          v15 = __nwlog_obj();
          v30 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v34 = "nw_framer_protocol_get_remote_endpoint";
            _os_log_impl(&dword_181A37000, v15, v30, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_67;
        }

        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v15, type);
        if (!backtrace_string)
        {
          if (v27)
          {
            *buf = 136446210;
            v34 = "nw_framer_protocol_get_remote_endpoint";
            _os_log_impl(&dword_181A37000, v15, v26, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }

          goto LABEL_67;
        }

        if (v27)
        {
          *buf = 136446466;
          v34 = "nw_framer_protocol_get_remote_endpoint";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v26, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_46;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      *buf = 136446210;
      v34 = "nw_framer_protocol_get_remote_endpoint";
      v14 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v31 = 0;
      if (__nwlog_fault(v14, &type, &v31))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v15 = __nwlog_obj();
          v16 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v34 = "nw_framer_protocol_get_remote_endpoint";
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null framer", buf, 0xCu);
          }

          goto LABEL_67;
        }

        if (v31 != 1)
        {
          v15 = __nwlog_obj();
          v29 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446210;
            v34 = "nw_framer_protocol_get_remote_endpoint";
            _os_log_impl(&dword_181A37000, v15, v29, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_67;
        }

        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v24 = type;
        v25 = os_log_type_enabled(v15, type);
        if (!backtrace_string)
        {
          if (v25)
          {
            *buf = 136446210;
            v34 = "nw_framer_protocol_get_remote_endpoint";
            _os_log_impl(&dword_181A37000, v15, v24, "%{public}s called with null framer, no backtrace", buf, 0xCu);
          }

          goto LABEL_67;
        }

        if (v25)
        {
          *buf = 136446466;
          v34 = "nw_framer_protocol_get_remote_endpoint";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v24, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_46:

        free(backtrace_string);
      }
    }

LABEL_68:
    if (v14)
    {
      free(v14);
    }

    v7 = 0;
    goto LABEL_9;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v34 = "nw_framer_protocol_get_remote_endpoint";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (__nwlog_fault(v10, &type, &v31))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v34 = "nw_framer_protocol_get_remote_endpoint";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      v20 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v11, type);
      if (v20)
      {
        if (v22)
        {
          *buf = 136446466;
          v34 = "nw_framer_protocol_get_remote_endpoint";
          v35 = 2082;
          v36 = v20;
          _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v20);
        goto LABEL_59;
      }

      if (v22)
      {
        *buf = 136446210;
        v34 = "nw_framer_protocol_get_remote_endpoint";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v34 = "nw_framer_protocol_get_remote_endpoint";
        _os_log_impl(&dword_181A37000, v11, v28, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_59:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_10:

  return v7;
}

uint64_t nw_framer_allocate_options(void *a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0xA168E890uLL);
  if (v2)
  {
    goto LABEL_4;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  v4 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v4);
  if (!result)
  {
    free(v4);
LABEL_4:

    return v2;
  }

  __break(1u);
  return result;
}

void nw_framer_options_set_object_value(nw_protocol_options_t options, const char *key, id value)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = options;
  v6 = value;
  if (!v5)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_framer_options_set_object_value";
    v8 = _os_log_send_and_compose_impl();

    v30 = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v8, &v30, &v29))
    {
      goto LABEL_55;
    }

    if (v30 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v30;
      if (os_log_type_enabled(v9, v30))
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null options", buf, 0xCu);
      }
    }

    else if (v29 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v16 = v30;
      v17 = os_log_type_enabled(v9, v30);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v32 = "nw_framer_options_set_object_value";
          v33 = 2082;
          v34 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v8)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v8);
        goto LABEL_5;
      }

      if (v17)
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v23 = v30;
      if (os_log_type_enabled(v9, v30))
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v23, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!nw_protocol_options_has_standard_framer_options(v5))
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_framer_options_set_object_value";
    v8 = _os_log_send_and_compose_impl();

    v30 = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v8, &v30, &v29))
    {
      goto LABEL_55;
    }

    if (v30 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = v30;
      if (os_log_type_enabled(v9, v30))
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options)", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v29 != 1)
    {
      v9 = __nwlog_obj();
      v24 = v30;
      if (os_log_type_enabled(v9, v30))
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v18 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v19 = v30;
    v20 = os_log_type_enabled(v9, v30);
    if (!v18)
    {
      if (v20)
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options), no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v20)
    {
      *buf = 136446466;
      v32 = "nw_framer_options_set_object_value";
      v33 = 2082;
      v34 = v18;
      _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null nw_protocol_options_has_standard_framer_options(options), dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!key)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_framer_options_set_object_value";
    v8 = _os_log_send_and_compose_impl();

    v30 = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v8, &v30, &v29))
    {
      goto LABEL_55;
    }

    if (v30 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v14 = v30;
      if (os_log_type_enabled(v9, v30))
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null key", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v29 != 1)
    {
      v9 = __nwlog_obj();
      v25 = v30;
      if (os_log_type_enabled(v9, v30))
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v25, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v18 = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v21 = v30;
    v22 = os_log_type_enabled(v9, v30);
    if (!v18)
    {
      if (v22)
      {
        *buf = 136446210;
        v32 = "nw_framer_options_set_object_value";
        _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null key, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v22)
    {
      *buf = 136446466;
      v32 = "nw_framer_options_set_object_value";
      v33 = 2082;
      v34 = v18;
      _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v18);
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __nw_framer_options_set_object_value_block_invoke;
  v26[3] = &unk_1E6A3AB18;
  v28 = key;
  v27 = v6;
  nw_protocol_options_access_handle(v5, v26);

LABEL_5:
}

BOOL nw_protocol_options_has_standard_framer_options(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_protocol_options_copy_definition(v1);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_options_copy_definition";
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
        v17 = "nw_protocol_options_copy_definition";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null options", buf, 0xCu);
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
          v17 = "nw_protocol_options_copy_definition";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_protocol_options_copy_definition";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null options, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_options_copy_definition";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
LABEL_3:
  if (nw_protocol_definition_is_framer(v3))
  {
    v4 = nw_protocol_definition_get_options_allocator(v3) == nw_framer_allocate_options;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __nw_framer_options_set_object_value_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    v5 = nw_dictionary_create();
    v6 = *a2;
    *a2 = v5;

    v3 = *a2;
  }

  nw_dictionary_set_value(v3, *(a1 + 40), *(a1 + 32));
  return 1;
}

uint64_t NWParameters.defaultProtocolStack.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = nw_parameters_copy_default_protocol_stack(*(v1 + 16));
  type metadata accessor for NWParameters.ProtocolStack();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839780);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v2;
  *(v3 + 16) = v4;
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void (*sub_181EC6168(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 16);
  *(v3 + 64) = v5;
  os_unfair_lock_lock((v5 + 24));
  v4[7] = MEMORY[0x1E69E7CC0];
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v4 + 7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_181EC65EC;
  *(v8 + 24) = v7;
  v4[4] = sub_181EC63E0;
  v4[5] = v8;
  *v4 = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_181EC635C;
  v4[3] = &block_descriptor_32_0;
  v9 = _Block_copy(v4);

  nw_protocol_stack_iterate_application_protocols(v6, v9);
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v5 + 24));
    v4[6] = v4[7];
    return sub_181EC6704;
  }

  return result;
}

uint64_t sub_181EC635C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t _s7Network17NWProtocolOptionsC6fromNWyACSgSo22OS_nw_protocol_options_pFZ_0(uint64_t a1)
{
  if (qword_1EA836A80 != -1)
  {
LABEL_9:
    swift_once();
  }

  v2 = 0;
  v3 = off_1EA836A90;
  v4 = *(off_1EA836A90 + 2);
  v5 = off_1EA836A90 + 32;
  while (v4 != v2)
  {
    if (v2 >= v3[2])
    {
      __break(1u);
      goto LABEL_9;
    }

    v6 = *&v5[8 * v2++];
    if ((*(v6 + 88))(a1))
    {
      v7 = (*(v6 + 96))(a1);
      swift_unknownObjectRetain();
      return v7;
    }
  }

  return 0;
}

BOOL sub_181EC64EC(NSObject *a1)
{
  v1 = nw_protocol_options_copy_definition(a1);
  v2 = nw_protocol_copy_ip_definition();
  is_equal = nw_protocol_definition_is_equal(v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return is_equal;
}

uint64_t sub_181EC6544(uint64_t a1, void *a2)
{
  result = _s7Network17NWProtocolOptionsC6fromNWyACSgSo22OS_nw_protocol_options_pFZ_0(a1);
  if (result)
  {

    MEMORY[0x1865D9F10](v4);
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
  }

  return result;
}

BOOL sub_181EC6620(NSObject *a1)
{
  v1 = nw_protocol_options_copy_definition(a1);
  v2 = nw_protocol_copy_tls_definition();
  is_equal = nw_protocol_definition_is_equal(v1, v2);
  swift_unknownObjectRelease();
  if (is_equal || (v5 = nw_protocol_copy_swift_tls_definition(v4), v6 = nw_protocol_definition_is_equal(v1, v5), swift_unknownObjectRelease(), v6))
  {
    v8 = 1;
  }

  else
  {
    v9 = nw_protocol_copy_swift_tls_record_definition(v7);
    v8 = nw_protocol_definition_is_equal(v1, v9);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_181EC66C8(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_181EC6704(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {

    os_unfair_lock_lock((v3 + 24));
    sub_181C4E3C0((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    os_unfair_lock_lock((v3 + 24));
    sub_181C4E3C0((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  free(v2);
}

void sub_181EC67E8(char a1, void (*a2)(void, void))
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  a2(*(v5 + 16), a1 & 1);

  os_unfair_lock_unlock((v5 + 24));
}

void nw_parameters_set_prohibit_constrained(nw_parameters_t parameters, BOOL prohibit_constrained)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    _nw_parameters_set_prohibit_constrained(parameters, prohibit_constrained);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_prohibit_constrained";
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
        v12 = "nw_parameters_set_prohibit_constrained";
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
            v12 = "nw_parameters_set_prohibit_constrained";
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
        v12 = "nw_parameters_set_prohibit_constrained";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_prohibit_constrained";
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

void nw_parameters_clear_prohibited_interface_types(nw_parameters_t parameters)
{
  v14 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    _nw_parameters_clear_prohibited_interface_types(parameters);
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_parameters_clear_prohibited_interface_types";
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
        v11 = "nw_parameters_clear_prohibited_interface_types";
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
            v11 = "nw_parameters_clear_prohibited_interface_types";
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
        v11 = "nw_parameters_clear_prohibited_interface_types";
        v5 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_parameters_clear_prohibited_interface_types";
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

void sub_181EC6D48(nw_parameters_t *a1, uint64_t a2)
{
  v3 = *a1;
  nw_parameters_clear_prohibited_interface_types(*a1);
  if (a2)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = (a2 + 32);
      do
      {
        v6 = *v5++;
        nw_parameters_prohibit_interface_type(v3, v6);
        --v4;
      }

      while (v4);
    }
  }
}

uint64_t NWParameters.prohibitedInterfaceTypes.setter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_181EC77C4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t NWParameters.sourceApplicationBundleID.setter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_181EC6E08((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t NWParameters.accountID.setter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_181EC6E98((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void NWParameters.attribution.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  if (v2)
  {
    v4 = nw_parameters_attribution_user;
  }

  else
  {
    v4 = nw_parameters_attribution_developer;
  }

  nw_parameters_set_attribution(*(v3 + 16), v4);

  os_unfair_lock_unlock((v3 + 24));
}

void nw_connection_set_path_changed_handler(nw_connection_t connection, nw_connection_path_event_handler_t handler)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = connection;
  v4 = handler;
  if (v3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_set_path_changed_handler_block_invoke;
    v13[3] = &unk_1E6A3D710;
    v14 = v3;
    v15 = v4;
    nw_connection_async_if_needed(v14, v13);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_connection_set_path_changed_handler";
  v6 = _os_log_send_and_compose_impl();

  v17 = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &v17, &v16))
  {
    if (v17 == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = v17;
      if (os_log_type_enabled(v7, v17))
      {
        *buf = 136446210;
        v19 = "nw_connection_set_path_changed_handler";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = v17;
      v11 = os_log_type_enabled(v7, v17);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v19 = "nw_connection_set_path_changed_handler";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v19 = "nw_connection_set_path_changed_handler";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = v17;
      if (os_log_type_enabled(v7, v17))
      {
        *buf = 136446210;
        v19 = "nw_connection_set_path_changed_handler";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
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

nw_protocol_options_t nw_framer_create_options(nw_protocol_definition_t framer_definition)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = framer_definition;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    isa = v3[24].isa;

    if (isa)
    {
      options = _nw_protocol_create_options();
      goto LABEL_4;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_framer_create_options";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (__nwlog_fault(v8, &type, &v20))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_framer_create_options";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null nw_protocol_definition_is_framer(definition)", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v20 != 1)
      {
        v9 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_framer_create_options";
          _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null nw_protocol_definition_is_framer(definition), backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v23 = "nw_framer_create_options";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null nw_protocol_definition_is_framer(definition), no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v17)
      {
        *buf = 136446466;
        v23 = "nw_framer_create_options";
        v24 = 2082;
        v25 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null nw_protocol_definition_is_framer(definition), dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_framer_create_options";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (__nwlog_fault(v8, &type, &v20))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_framer_create_options";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null definition", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v20 != 1)
      {
        v9 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_framer_create_options";
          _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v23 = "nw_framer_create_options";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        *buf = 136446466;
        v23 = "nw_framer_create_options";
        v24 = 2082;
        v25 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v8)
  {
    free(v8);
  }

  options = 0;
LABEL_4:

  return options;
}

uint64_t sub_181EC77E0(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  if (a3)
  {
    v6 = sub_182AD3048() + 32;
  }

  else
  {
    v6 = 0;
  }

  a4(v5, v6);
  return swift_unknownObjectRelease();
}

uint64_t _s7Network12NWConnectionC5StateO2eeoiySbAE_AEtFZ_0(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a1 + 4);
  v3 = *a1 | (*(a1 + 4) << 32);
  v4 = *a2 | (*(a2 + 4) << 32);
  v5 = v2 >> 6;
  if (v5)
  {
    if (v5 == 1)
    {
      if (((v4 >> 38) & 3) == 1)
      {
        v6 = HIDWORD(v4) & 0x3F;
        v7 = HIDWORD(v3) & 0x3F;
        if ((BYTE4(v3) & 0x3Fu) <= 1)
        {
          if (!v7)
          {
LABEL_6:
            if (v6)
            {
              return 0;
            }

            v8 = sub_182AD2768();
            return v8 == sub_182AD2768();
          }

          return v6 == 1 && v3 == *a2;
        }

        goto LABEL_20;
      }

      return 0;
    }

    if (v3 > 0x8000000001)
    {
      v10 = 0x8000000002;
      if (v3 != 0x8000000002)
      {
        v11 = v4 & 0xFFFFFFFFFFLL;
        v12 = 3;
        return v11 == (v12 & 0xFFFF0000FFFFFFFFLL | 0x8000000000);
      }
    }

    else
    {
      v10 = 0x8000000000;
      if (v3 != 0x8000000000)
      {
        v11 = v4 & 0xFFFFFFFFFFLL;
        v12 = 1;
        return v11 == (v12 & 0xFFFF0000FFFFFFFFLL | 0x8000000000);
      }
    }

    return (v4 & 0xFFFFFFFFFFLL) == v10;
  }

  if (((v4 >> 38) & 3) == 0)
  {
    v7 = HIDWORD(v3);
    LODWORD(v6) = BYTE4(v4);
    if (SHIDWORD(v3) <= 1)
    {
      if (!HIDWORD(v3))
      {
        goto LABEL_6;
      }

      return v6 == 1 && v3 == *a2;
    }

LABEL_20:
    if (v7 == 2)
    {
      if (v6 != 2 || v3 != *a2)
      {
        return 0;
      }
    }

    else if (v6 != 3 || v3 != *a2)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

void NWConnection.pathUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  os_unfair_lock_lock(v5 + 24);
  sub_181EC7ABC(&v5[4]);
  os_unfair_lock_unlock(v5 + 24);
  if (a1)
  {
    v6 = *(v2 + 16);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    aBlock[4] = sub_181ECAA3C;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181B7F17C;
    aBlock[3] = &block_descriptor_24;
    v8 = _Block_copy(aBlock);

    nw_connection_set_path_changed_handler(v6, v8);
    _Block_release(v8);
    sub_181A554F4(a1);
  }

  else
  {
    nw_connection_set_path_changed_handler(*(v2 + 16), 0);
  }
}

uint64_t sub_181EC7ABC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 16);
  sub_181AA39C0(v4);
  result = sub_181A554F4(v5);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  return result;
}

void __nw_connection_set_path_changed_handler_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;
}

uint64_t sub_181EC7B78(uint64_t a1, void (*a2)(char *))
{
  v3 = type metadata accessor for NWPath(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_unknownObjectRetain();
  sub_181B7BDC0(v6, v5);
  a2(v5);
  return sub_181D8E448(v5, type metadata accessor for NWPath);
}

uint64_t getEnumTagSinglePayload for NWInterface.RadioType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 3)
  {
    goto LABEL_17;
  }

  if (a2 + 253 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 253) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 253;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 253;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 253;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 2 | (*a1 >> 4) & 1) ^ 3;
  if (v6 >= 2)
  {
    v6 = -1;
  }

  return v6 + 1;
}

char *nw_path_is_traffic_mgmt_background(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_is_traffic_mgmt_background(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_is_traffic_mgmt_background";
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
        v16 = "nw_path_is_traffic_mgmt_background";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null path", buf, 0xCu);
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
          v16 = "nw_path_is_traffic_mgmt_background";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_is_traffic_mgmt_background";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_is_traffic_mgmt_background";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

nw_protocol *nw_framer_protocol_create(nw_protocol_identifier *a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(NWConcrete_nw_framer);
  v12 = v11;
  if (!v11)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    *buf = 136446210;
    v29 = "nw_framer_protocol_create";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v18, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v29 = "nw_framer_protocol_create";
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s [nw_framer init] failed", buf, 0xCu);
        }
      }

      else if (v26 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v23 = type;
        v24 = os_log_type_enabled(v19, type);
        if (backtrace_string)
        {
          if (v24)
          {
            *buf = 136446466;
            v29 = "nw_framer_protocol_create";
            v30 = 2082;
            v31 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v23, "%{public}s [nw_framer init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v18)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (v24)
        {
          *buf = 136446210;
          v29 = "nw_framer_protocol_create";
          _os_log_impl(&dword_181A37000, v19, v23, "%{public}s [nw_framer init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v29 = "nw_framer_protocol_create";
          _os_log_impl(&dword_181A37000, v19, v25, "%{public}s [nw_framer init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v18)
    {
LABEL_10:
      p_protocol = 0;
      goto LABEL_11;
    }

LABEL_9:
    free(v18);
    goto LABEL_10;
  }

  objc_storeStrong(&v11->endpoint, a3);
  objc_storeStrong(&v12->parameters, a4);
  v13 = nw_parameters_copy_context(v10);
  context = v12->context;
  v12->context = v13;

  objc_storeStrong(&v12->parent_definition, a2);
  p_protocol = &v12->protocol;
  v12->protocol.identifier = a1;
  v12->protocol.callbacks = &v12->callbacks;
  v12->inbound_frames.tqh_first = 0;
  v12->inbound_frames.tqh_last = &v12->inbound_frames.tqh_first;
  v12->outbound_frames.tqh_first = 0;
  v12->outbound_frames.tqh_last = &v12->outbound_frames.tqh_first;
  v12->pending_input_frames.tqh_first = 0;
  v12->pending_input_frames.tqh_last = &v12->pending_input_frames.tqh_first;
  v12->received_input_frames.tqh_first = 0;
  v12->received_input_frames.tqh_last = &v12->received_input_frames.tqh_first;
  v12->received_output_frames.tqh_first = 0;
  v12->received_output_frames.tqh_last = &v12->received_output_frames.tqh_first;
  v12->callbacks.input_finished = nw_protocol_default_input_finished;
  v12->callbacks.get_local_endpoint = nw_protocol_default_get_local;
  v12->callbacks.get_path = nw_protocol_default_get_path;
  v12->callbacks.updated_path = nw_protocol_default_updated_path;
  v12->callbacks.get_output_local_endpoint = nw_protocol_default_get_output_local;
  v12->callbacks.get_output_interface = nw_protocol_default_get_output_interface;
  v12->callbacks.error = nw_protocol_default_error;
  v12->callbacks.reset = nw_protocol_default_reset;
  v12->callbacks.register_notification = nw_protocol_default_register_notification;
  v12->callbacks.unregister_notification = nw_protocol_default_unregister_notification;
  v12->callbacks.notify = nw_protocol_default_notify;
  v12->callbacks.add_listen_handler = nw_protocol_default_add_listen_handler;
  v12->callbacks.remove_listen_handler = nw_protocol_default_remove_listen_handler;
  v12->callbacks.add_input_handler = nw_framer_protocol_add_input_handler;
  v12->callbacks.replace_input_handler = nw_framer_protocol_replace_input_handler;
  v12->callbacks.remove_input_handler = nw_framer_protocol_remove_input_handler;
  v12->callbacks.connect = nw_framer_protocol_connect;
  v12->callbacks.connected = nw_framer_protocol_connected;
  v12->callbacks.disconnect = nw_framer_protocol_disconnect;
  v12->callbacks.disconnected = nw_framer_protocol_disconnected;
  v12->callbacks.link_state = nw_framer_protocol_link_state;
  v12->callbacks.get_message_properties = nw_framer_protocol_get_message_properties;
  v12->callbacks.supports_external_data = nw_framer_protocol_supports_external_data;
  v12->callbacks.waiting_for_output = nw_framer_protocol_waiting_for_output;
  v12->callbacks.get_output_frames = nw_framer_protocol_get_output_frames;
  v12->callbacks.finalize_output_frames = nw_framer_protocol_finalize_output_frames;
  v12->callbacks.input_available = nw_framer_protocol_input_available;
  v12->callbacks.get_input_frames = nw_framer_protocol_get_input_frames;
  v12->callbacks.input_flush = nw_framer_protocol_input_flush;
  v12->callbacks.output_available = nw_framer_protocol_output_available;
  v12->callbacks.output_finished = nw_framer_protocol_output_finished;
  v12->callbacks.copy_info = nw_framer_protocol_copy_info;
  v12->callbacks.get_remote_endpoint = nw_framer_protocol_get_remote_endpoint;
  v12->callbacks.get_parameters = nw_framer_protocol_get_parameters;
  v16 = v12;
  v16->protocol.handle = v16;
LABEL_11:

  return p_protocol;
}

uint64_t nw_framer_protocol_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1->handle;
    v5 = v4;
    if (v4)
    {
      if (v4[1])
      {
        if (a1->default_input_handler)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v6 = gLogObj;
          *buf = 136446466;
          v64 = "nw_framer_protocol_add_input_handler";
          v65 = 2080;
          v66 = v5 + 609;
          v7 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v61 = 0;
          if (!__nwlog_fault(v7, &type, &v61))
          {
            goto LABEL_47;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v8 = gLogObj;
            v9 = type;
            if (os_log_type_enabled(v8, type))
            {
              *buf = 136446466;
              v64 = "nw_framer_protocol_add_input_handler";
              v65 = 2080;
              v66 = v5 + 609;
              _os_log_impl(&dword_181A37000, v8, v9, "%{public}s %s Protocol instance already has default input handler", buf, 0x16u);
            }

LABEL_46:

            goto LABEL_47;
          }

          if (v61 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v8 = gLogObj;
            v14 = type;
            if (os_log_type_enabled(v8, type))
            {
              *buf = 136446466;
              v64 = "nw_framer_protocol_add_input_handler";
              v65 = 2080;
              v66 = v5 + 609;
              _os_log_impl(&dword_181A37000, v8, v14, "%{public}s %s Protocol instance already has default input handler, backtrace limit exceeded", buf, 0x16u);
            }

            goto LABEL_46;
          }

          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v12 = type;
          v13 = os_log_type_enabled(v8, type);
          if (!backtrace_string)
          {
            if (v13)
            {
              *buf = 136446466;
              v64 = "nw_framer_protocol_add_input_handler";
              v65 = 2080;
              v66 = v5 + 609;
              _os_log_impl(&dword_181A37000, v8, v12, "%{public}s %s Protocol instance already has default input handler, no backtrace", buf, 0x16u);
            }

            goto LABEL_46;
          }

          if (v13)
          {
            *buf = 136446722;
            v64 = "nw_framer_protocol_add_input_handler";
            v65 = 2080;
            v66 = v5 + 609;
            v67 = 2082;
            v68 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v12, "%{public}s %s Protocol instance already has default input handler, dumping backtrace:%{public}s", buf, 0x20u);
          }

LABEL_19:

          free(backtrace_string);
          if (!v7)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        }

        if (gLogDatapath == 1)
        {
          v44 = __nwlog_obj();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v64 = "nw_framer_protocol_add_input_handler";
            v65 = 2080;
            v66 = v5 + 609;
            _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s %s Protocol add input handler", buf, 0x16u);
          }
        }

        nw_protocol_set_input_handler(a1, a2);
        if (a2)
        {
          *a1->flow_id = *a2->flow_id;
          if (a2->output_handler)
          {
            v10 = v5[45];
            if (!v10)
            {
              goto LABEL_37;
            }
          }

          else
          {
            nw_protocol_set_output_handler(a2, a1);
            v10 = v5[45];
            if (!v10)
            {
LABEL_37:
              callbacks = a2->callbacks;
              if (callbacks)
              {
                supports_external_data = callbacks->supports_external_data;
                if (supports_external_data)
                {
                  *(v5 + 606) = *(v5 + 606) & 0xFE | supports_external_data(a2);
                }
              }

              goto LABEL_40;
            }
          }
        }

        else
        {
          v10 = v5[45];
          if (!v10)
          {
            goto LABEL_40;
          }
        }

        v15 = v10;
        v16 = _nw_parameters_copy_protocol_options_with_level(v15, v5 + 36);

        if (v16)
        {
          v17 = _nw_protocol_options_copy_definition(v16);
        }

        else
        {
          v17 = v5[1];
        }

        v18 = v17;
        v19 = v18;
        if (v18)
        {
          v20 = *(v18 + 9);
          if (v20)
          {
            v21 = _Block_copy(*(v20 + 80));
            goto LABEL_33;
          }

          v52 = __nwlog_obj();
          *buf = 136446210;
          v64 = "nw_protocol_definition_copy_framer_start";
          v49 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v61 = 0;
          if (__nwlog_fault(v49, &type, &v61))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v50 = __nwlog_obj();
              v53 = type;
              if (os_log_type_enabled(v50, type))
              {
                *buf = 136446210;
                v64 = "nw_protocol_definition_copy_framer_start";
                _os_log_impl(&dword_181A37000, v50, v53, "%{public}s called with null definition->common_state", buf, 0xCu);
              }

LABEL_137:

              goto LABEL_138;
            }

            if (v61 != 1)
            {
              v50 = __nwlog_obj();
              v60 = type;
              if (os_log_type_enabled(v50, type))
              {
                *buf = 136446210;
                v64 = "nw_protocol_definition_copy_framer_start";
                _os_log_impl(&dword_181A37000, v50, v60, "%{public}s called with null definition->common_state, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_137;
            }

            v54 = __nw_create_backtrace_string();
            v50 = __nwlog_obj();
            v57 = type;
            v58 = os_log_type_enabled(v50, type);
            if (!v54)
            {
              if (v58)
              {
                *buf = 136446210;
                v64 = "nw_protocol_definition_copy_framer_start";
                _os_log_impl(&dword_181A37000, v50, v57, "%{public}s called with null definition->common_state, no backtrace", buf, 0xCu);
              }

              goto LABEL_137;
            }

            if (v58)
            {
              *buf = 136446466;
              v64 = "nw_protocol_definition_copy_framer_start";
              v65 = 2082;
              v66 = v54;
              _os_log_impl(&dword_181A37000, v50, v57, "%{public}s called with null definition->common_state, dumping backtrace:%{public}s", buf, 0x16u);
            }

            goto LABEL_113;
          }
        }

        else
        {
          v48 = __nwlog_obj();
          *buf = 136446210;
          v64 = "nw_protocol_definition_copy_framer_start";
          v49 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v61 = 0;
          if (__nwlog_fault(v49, &type, &v61))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v50 = __nwlog_obj();
              v51 = type;
              if (os_log_type_enabled(v50, type))
              {
                *buf = 136446210;
                v64 = "nw_protocol_definition_copy_framer_start";
                _os_log_impl(&dword_181A37000, v50, v51, "%{public}s called with null definition", buf, 0xCu);
              }

              goto LABEL_137;
            }

            if (v61 != 1)
            {
              v50 = __nwlog_obj();
              v59 = type;
              if (os_log_type_enabled(v50, type))
              {
                *buf = 136446210;
                v64 = "nw_protocol_definition_copy_framer_start";
                _os_log_impl(&dword_181A37000, v50, v59, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_137;
            }

            v54 = __nw_create_backtrace_string();
            v50 = __nwlog_obj();
            v55 = type;
            v56 = os_log_type_enabled(v50, type);
            if (!v54)
            {
              if (v56)
              {
                *buf = 136446210;
                v64 = "nw_protocol_definition_copy_framer_start";
                _os_log_impl(&dword_181A37000, v50, v55, "%{public}s called with null definition, no backtrace", buf, 0xCu);
              }

              goto LABEL_137;
            }

            if (v56)
            {
              *buf = 136446466;
              v64 = "nw_protocol_definition_copy_framer_start";
              v65 = 2082;
              v66 = v54;
              _os_log_impl(&dword_181A37000, v50, v55, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
            }

LABEL_113:

            free(v54);
          }
        }

LABEL_138:
        if (v49)
        {
          free(v49);
        }

        v21 = 0;
LABEL_33:

        v22 = v5[49];
        v5[49] = v21;

        if (!v5[49])
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v64 = "nw_framer_protocol_add_input_handler";
            v65 = 2080;
            v66 = v5 + 609;
            _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s %s Failed to find start block on framer", buf, 0x16u);
          }

          goto LABEL_49;
        }

        if (v16)
        {
          v23 = v16;
          _nw_protocol_options_get_log_id_str(v23, v5 + 609);
        }

        if (a2)
        {
          goto LABEL_37;
        }

LABEL_40:
        v26 = 1;
LABEL_50:

        return v26;
      }

      v35 = __nwlog_obj();
      *buf = 136446210;
      v64 = "nw_framer_protocol_add_input_handler";
      v7 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v61 = 0;
      if (__nwlog_fault(v7, &type, &v61))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v8 = __nwlog_obj();
          v36 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446210;
            v64 = "nw_framer_protocol_add_input_handler";
            _os_log_impl(&dword_181A37000, v8, v36, "%{public}s called with null framer->parent_definition", buf, 0xCu);
          }

          goto LABEL_46;
        }

        if (v61 != 1)
        {
          v8 = __nwlog_obj();
          v47 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446210;
            v64 = "nw_framer_protocol_add_input_handler";
            _os_log_impl(&dword_181A37000, v8, v47, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_46;
        }

        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v42 = type;
        v43 = os_log_type_enabled(v8, type);
        if (!backtrace_string)
        {
          if (v43)
          {
            *buf = 136446210;
            v64 = "nw_framer_protocol_add_input_handler";
            _os_log_impl(&dword_181A37000, v8, v42, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
          }

          goto LABEL_46;
        }

        if (v43)
        {
          *buf = 136446466;
          v64 = "nw_framer_protocol_add_input_handler";
          v65 = 2082;
          v66 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v42, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v33 = __nwlog_obj();
      *buf = 136446210;
      v64 = "nw_framer_protocol_add_input_handler";
      v7 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v61 = 0;
      if (__nwlog_fault(v7, &type, &v61))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v8 = __nwlog_obj();
          v34 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446210;
            v64 = "nw_framer_protocol_add_input_handler";
            _os_log_impl(&dword_181A37000, v8, v34, "%{public}s called with null framer", buf, 0xCu);
          }

          goto LABEL_46;
        }

        if (v61 != 1)
        {
          v8 = __nwlog_obj();
          v46 = type;
          if (os_log_type_enabled(v8, type))
          {
            *buf = 136446210;
            v64 = "nw_framer_protocol_add_input_handler";
            _os_log_impl(&dword_181A37000, v8, v46, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_46;
        }

        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v40 = type;
        v41 = os_log_type_enabled(v8, type);
        if (!backtrace_string)
        {
          if (v41)
          {
            *buf = 136446210;
            v64 = "nw_framer_protocol_add_input_handler";
            _os_log_impl(&dword_181A37000, v8, v40, "%{public}s called with null framer, no backtrace", buf, 0xCu);
          }

          goto LABEL_46;
        }

        if (v41)
        {
          *buf = 136446466;
          v64 = "nw_framer_protocol_add_input_handler";
          v65 = 2082;
          v66 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v40, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_19;
      }
    }

LABEL_47:
    if (!v7)
    {
LABEL_49:
      v26 = 0;
      goto LABEL_50;
    }

LABEL_48:
    free(v7);
    goto LABEL_49;
  }

  v29 = __nwlog_obj();
  *buf = 136446210;
  v64 = "nw_framer_protocol_add_input_handler";
  v30 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v61 = 0;
  if (__nwlog_fault(v30, &type, &v61))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v64 = "nw_framer_protocol_add_input_handler";
        _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v61 == 1)
    {
      v37 = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      v38 = type;
      v39 = os_log_type_enabled(v31, type);
      if (v37)
      {
        if (v39)
        {
          *buf = 136446466;
          v64 = "nw_framer_protocol_add_input_handler";
          v65 = 2082;
          v66 = v37;
          _os_log_impl(&dword_181A37000, v31, v38, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_117;
      }

      if (v39)
      {
        *buf = 136446210;
        v64 = "nw_framer_protocol_add_input_handler";
        _os_log_impl(&dword_181A37000, v31, v38, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v31 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v64 = "nw_framer_protocol_add_input_handler";
        _os_log_impl(&dword_181A37000, v31, v45, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_117:
  if (v30)
  {
    free(v30);
  }

  return 0;
}
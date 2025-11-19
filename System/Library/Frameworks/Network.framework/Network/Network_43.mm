uint64_t _nw_ip_options_get_use_minimum_mtu(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = (result + *(*result + 128));
    result = swift_beginAccess();
    v4 = *v3 | (*(v3 + 4) << 32);
    if (v4 == 3)
    {
      __break(1u);
    }

    else
    {

      return HIDWORD(v4) & 1;
    }
  }

  return result;
}

uint64_t nw_socket_set_bidirectional_tcp_sockopts(uint64_t a1, uint64_t a2)
{
  v113 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v110 = "nw_socket_set_bidirectional_tcp_sockopts";
    v95 = _os_log_send_and_compose_impl();
    v108[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v95, v108, type))
    {
      goto LABEL_322;
    }

    if (v108[0] == OS_LOG_TYPE_FAULT)
    {
      v96 = __nwlog_obj();
      v97 = v108[0];
      if (!os_log_type_enabled(v96, v108[0]))
      {
        goto LABEL_322;
      }

      *buf = 136446210;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v98 = "%{public}s called with null socket_handler";
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v96 = __nwlog_obj();
      v97 = v108[0];
      v100 = os_log_type_enabled(v96, v108[0]);
      if (backtrace_string)
      {
        if (v100)
        {
          *buf = 136446466;
          v110 = "nw_socket_set_bidirectional_tcp_sockopts";
          v111 = 2082;
          *v112 = backtrace_string;
          _os_log_impl(&dword_181A37000, v96, v97, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_322;
      }

      if (!v100)
      {
LABEL_322:
        if (v95)
        {
          free(v95);
        }

        return 0;
      }

      *buf = 136446210;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v98 = "%{public}s called with null socket_handler, no backtrace";
    }

    else
    {
      v96 = __nwlog_obj();
      v97 = v108[0];
      if (!os_log_type_enabled(v96, v108[0]))
      {
        goto LABEL_322;
      }

      *buf = 136446210;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v98 = "%{public}s called with null socket_handler, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v96, v97, v98, buf, 0xCu);
    goto LABEL_322;
  }

  if (*(a1 + 320) == 1)
  {
    if ((*(a1 + 317) & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v3 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 2082;
        *v112 = a1 + 324;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Ignoring TCP options for UNIX socket", buf, 0x16u);
        return 1;
      }
    }

    return 1;
  }

  *v108 = 1;
  if (_nw_tcp_options_get_reduce_buffering(a2))
  {
    v6 = 0x2000;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 317) = *(a1 + 317) & 0xDFFF | v6;
  if (_nw_tcp_options_get_no_delay(a2))
  {
    nw_socket_set_no_delay(a1, 1);
  }

  if (_nw_tcp_options_get_no_push(a2))
  {
    nw_socket_set_no_push(a1, 1);
  }

  if (_nw_tcp_options_get_disable_ack_stretching(a2) && setsockopt(*(a1 + 188), 6, 259, v108, 4u))
  {
    v7 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v8 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 2082;
      *v112 = a1 + 324;
      *&v112[8] = 1024;
      *&v112[10] = v7;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d", buf, 0x1Cu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (v7 == 22)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 1024;
        *v112 = 22;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_40;
    }

    *buf = 136446466;
    v110 = "nw_socket_set_bidirectional_tcp_sockopts";
    v111 = 1024;
    *v112 = v7;
    v10 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v106[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v10, type, v106))
    {
      goto LABEL_38;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_38;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v7;
      v13 = "%{public}s setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d";
    }

    else if (v106[0] == OS_LOG_TYPE_INFO)
    {
      v14 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type[0];
      v15 = os_log_type_enabled(v11, type[0]);
      if (v14)
      {
        if (v15)
        {
          *buf = 136446722;
          v110 = "nw_socket_set_bidirectional_tcp_sockopts";
          v111 = 1024;
          *v112 = v7;
          *&v112[4] = 2082;
          *&v112[6] = v14;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v14);
        goto LABEL_38;
      }

      if (!v15)
      {
LABEL_38:
        if (v10)
        {
          free(v10);
        }

        goto LABEL_40;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v7;
      v13 = "%{public}s setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d, no backtrace";
    }

    else
    {
      v11 = __nwlog_obj();
      v12 = type[0];
      if (!os_log_type_enabled(v11, type[0]))
      {
        goto LABEL_38;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v7;
      v13 = "%{public}s setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0x12u);
    goto LABEL_38;
  }

LABEL_40:
  if (!_nw_tcp_options_get_no_options(a2) || !setsockopt(*(a1 + 188), 6, 8, v108, 4u))
  {
    goto LABEL_65;
  }

  v16 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v17 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v110 = "nw_socket_set_bidirectional_tcp_sockopts";
    v111 = 2082;
    *v112 = a1 + 324;
    *&v112[8] = 1024;
    *&v112[10] = v16;
    _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_NOOPT failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  if (v16 == 22)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = 22;
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_NOOPT failed %{darwin.errno}d", buf, 0x12u);
    }

    goto LABEL_65;
  }

  *buf = 136446466;
  v110 = "nw_socket_set_bidirectional_tcp_sockopts";
  v111 = 1024;
  *v112 = v16;
  v19 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v106[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v19, type, v106))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      v21 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_63;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v16;
      v22 = "%{public}s setsockopt TCP_NOOPT failed %{darwin.errno}d";
      goto LABEL_62;
    }

    if (v106[0] != OS_LOG_TYPE_INFO)
    {
      v20 = __nwlog_obj();
      v21 = type[0];
      if (!os_log_type_enabled(v20, type[0]))
      {
        goto LABEL_63;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v16;
      v22 = "%{public}s setsockopt TCP_NOOPT failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_62;
    }

    v23 = __nw_create_backtrace_string();
    v20 = __nwlog_obj();
    v21 = type[0];
    v24 = os_log_type_enabled(v20, type[0]);
    if (v23)
    {
      if (v24)
      {
        *buf = 136446722;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 1024;
        *v112 = v16;
        *&v112[4] = 2082;
        *&v112[6] = v23;
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s setsockopt TCP_NOOPT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v23);
      goto LABEL_63;
    }

    if (v24)
    {
      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v16;
      v22 = "%{public}s setsockopt TCP_NOOPT failed %{darwin.errno}d, no backtrace";
LABEL_62:
      _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0x12u);
    }
  }

LABEL_63:
  if (v19)
  {
    free(v19);
  }

LABEL_65:
  if (!_nw_tcp_options_get_no_timewait(a2) || !setsockopt(*(a1 + 188), 6, 520, v108, 4u))
  {
    goto LABEL_90;
  }

  v25 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v26 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v110 = "nw_socket_set_bidirectional_tcp_sockopts";
    v111 = 2082;
    *v112 = a1 + 324;
    *&v112[8] = 1024;
    *&v112[10] = v25;
    _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v27 = gLogObj;
  if (v25 == 22)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = 22;
      _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d", buf, 0x12u);
    }

    goto LABEL_90;
  }

  *buf = 136446466;
  v110 = "nw_socket_set_bidirectional_tcp_sockopts";
  v111 = 1024;
  *v112 = v25;
  v28 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v106[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v28, type, v106))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      v30 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_88;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v25;
      v31 = "%{public}s setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d";
      goto LABEL_87;
    }

    if (v106[0] != OS_LOG_TYPE_INFO)
    {
      v29 = __nwlog_obj();
      v30 = type[0];
      if (!os_log_type_enabled(v29, type[0]))
      {
        goto LABEL_88;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v25;
      v31 = "%{public}s setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_87;
    }

    v32 = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v30 = type[0];
    v33 = os_log_type_enabled(v29, type[0]);
    if (v32)
    {
      if (v33)
      {
        *buf = 136446722;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 1024;
        *v112 = v25;
        *&v112[4] = 2082;
        *&v112[6] = v32;
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v32);
      goto LABEL_88;
    }

    if (v33)
    {
      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v25;
      v31 = "%{public}s setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d, no backtrace";
LABEL_87:
      _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0x12u);
    }
  }

LABEL_88:
  if (v28)
  {
    free(v28);
  }

LABEL_90:
  maximum_segment_size = _nw_tcp_options_get_maximum_segment_size(a2);
  if (maximum_segment_size)
  {
    nw_socket_set_maximum_segment_size(a1, maximum_segment_size);
  }

  *type = _nw_tcp_options_get_retransmit_connection_drop_time(a2);
  if (*type && setsockopt(*(a1 + 188), 6, 128, type, 4u))
  {
    v35 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v36 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 2082;
      *v112 = a1 + 324;
      *&v112[8] = 1024;
      *&v112[10] = v35;
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d", buf, 0x1Cu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v37 = gLogObj;
    if (v35 == 22)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 1024;
        *v112 = 22;
        _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_117;
    }

    *buf = 136446466;
    v110 = "nw_socket_set_bidirectional_tcp_sockopts";
    v111 = 1024;
    *v112 = v35;
    v38 = _os_log_send_and_compose_impl();
    v106[0] = OS_LOG_TYPE_ERROR;
    v105[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v38, v106, v105))
    {
      goto LABEL_115;
    }

    if (v106[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v39 = gLogObj;
      v40 = v106[0];
      if (!os_log_type_enabled(gLogObj, v106[0]))
      {
        goto LABEL_115;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v35;
      v41 = "%{public}s setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d";
    }

    else if (v105[0] == OS_LOG_TYPE_INFO)
    {
      v42 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v39 = gLogObj;
      v40 = v106[0];
      v43 = os_log_type_enabled(gLogObj, v106[0]);
      if (v42)
      {
        if (v43)
        {
          *buf = 136446722;
          v110 = "nw_socket_set_bidirectional_tcp_sockopts";
          v111 = 1024;
          *v112 = v35;
          *&v112[4] = 2082;
          *&v112[6] = v42;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v42);
        goto LABEL_115;
      }

      if (!v43)
      {
LABEL_115:
        if (v38)
        {
          free(v38);
        }

        goto LABEL_117;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v35;
      v41 = "%{public}s setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v39 = gLogObj;
      v40 = v106[0];
      if (!os_log_type_enabled(gLogObj, v106[0]))
      {
        goto LABEL_115;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v35;
      v41 = "%{public}s setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0x12u);
    goto LABEL_115;
  }

LABEL_117:
  if (!_nw_tcp_options_get_retransmit_fin_drop(a2) || !setsockopt(*(a1 + 188), 6, 256, v108, 4u))
  {
    goto LABEL_142;
  }

  v44 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v45 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v110 = "nw_socket_set_bidirectional_tcp_sockopts";
    v111 = 2082;
    *v112 = a1 + 324;
    *&v112[8] = 1024;
    *&v112[10] = v44;
    _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v46 = gLogObj;
  if (v44 == 22)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = 22;
      _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d", buf, 0x12u);
    }

    goto LABEL_142;
  }

  *buf = 136446466;
  v110 = "nw_socket_set_bidirectional_tcp_sockopts";
  v111 = 1024;
  *v112 = v44;
  v47 = _os_log_send_and_compose_impl();
  v106[0] = OS_LOG_TYPE_ERROR;
  v105[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v47, v106, v105))
  {
    if (v106[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v48 = gLogObj;
      v49 = v106[0];
      if (!os_log_type_enabled(gLogObj, v106[0]))
      {
        goto LABEL_140;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v44;
      v50 = "%{public}s setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d";
      goto LABEL_139;
    }

    if (v105[0] != OS_LOG_TYPE_INFO)
    {
      v48 = __nwlog_obj();
      v49 = v106[0];
      if (!os_log_type_enabled(v48, v106[0]))
      {
        goto LABEL_140;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v44;
      v50 = "%{public}s setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_139;
    }

    v51 = __nw_create_backtrace_string();
    v48 = __nwlog_obj();
    v49 = v106[0];
    v52 = os_log_type_enabled(v48, v106[0]);
    if (v51)
    {
      if (v52)
      {
        *buf = 136446722;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 1024;
        *v112 = v44;
        *&v112[4] = 2082;
        *&v112[6] = v51;
        _os_log_impl(&dword_181A37000, v48, v49, "%{public}s setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v51);
      goto LABEL_140;
    }

    if (v52)
    {
      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v44;
      v50 = "%{public}s setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d, no backtrace";
LABEL_139:
      _os_log_impl(&dword_181A37000, v48, v49, v50, buf, 0x12u);
    }
  }

LABEL_140:
  if (v47)
  {
    free(v47);
  }

LABEL_142:
  *v106 = _nw_tcp_options_get_persist_timeout(a2);
  if (!*v106 || !setsockopt(*(a1 + 188), 6, 64, v106, 4u))
  {
    goto LABEL_167;
  }

  v53 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v54 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v110 = "nw_socket_set_bidirectional_tcp_sockopts";
    v111 = 2082;
    *v112 = a1 + 324;
    *&v112[8] = 1024;
    *&v112[10] = v53;
    _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v55 = gLogObj;
  if (v53 == 22)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = 22;
      _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_ERROR, "%{public}s setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d", buf, 0x12u);
    }

    goto LABEL_167;
  }

  *buf = 136446466;
  v110 = "nw_socket_set_bidirectional_tcp_sockopts";
  v111 = 1024;
  *v112 = v53;
  v56 = _os_log_send_and_compose_impl();
  v105[0] = OS_LOG_TYPE_ERROR;
  v104[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v56, v105, v104))
  {
    if (v105[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v57 = gLogObj;
      v58 = v105[0];
      if (!os_log_type_enabled(gLogObj, v105[0]))
      {
        goto LABEL_165;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v53;
      v59 = "%{public}s setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d";
      goto LABEL_164;
    }

    if (v104[0] != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v57 = gLogObj;
      v58 = v105[0];
      if (!os_log_type_enabled(gLogObj, v105[0]))
      {
        goto LABEL_165;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v53;
      v59 = "%{public}s setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_164;
    }

    v60 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v57 = gLogObj;
    v58 = v105[0];
    v61 = os_log_type_enabled(gLogObj, v105[0]);
    if (v60)
    {
      if (v61)
      {
        *buf = 136446722;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 1024;
        *v112 = v53;
        *&v112[4] = 2082;
        *&v112[6] = v60;
        _os_log_impl(&dword_181A37000, v57, v58, "%{public}s setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v60);
      goto LABEL_165;
    }

    if (v61)
    {
      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v53;
      v59 = "%{public}s setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d, no backtrace";
LABEL_164:
      _os_log_impl(&dword_181A37000, v57, v58, v59, buf, 0x12u);
    }
  }

LABEL_165:
  if (v56)
  {
    free(v56);
  }

LABEL_167:
  if (!_nw_tcp_options_get_enable_background_traffic_management(a2) || !setsockopt(*(a1 + 188), 0xFFFF, 4357, v108, 4u))
  {
    goto LABEL_192;
  }

  v62 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v63 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v110 = "nw_socket_set_bidirectional_tcp_sockopts";
    v111 = 2082;
    *v112 = a1 + 324;
    *&v112[8] = 1024;
    *&v112[10] = v62;
    _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_TRAFFIC_MGT_BACKGROUND failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v64 = gLogObj;
  if (v62 == 22)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = 22;
      _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_TRAFFIC_MGT_BACKGROUND failed %{darwin.errno}d", buf, 0x12u);
    }

    goto LABEL_192;
  }

  *buf = 136446466;
  v110 = "nw_socket_set_bidirectional_tcp_sockopts";
  v111 = 1024;
  *v112 = v62;
  v65 = _os_log_send_and_compose_impl();
  v105[0] = OS_LOG_TYPE_ERROR;
  v104[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v65, v105, v104))
  {
    if (v105[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v66 = gLogObj;
      v67 = v105[0];
      if (!os_log_type_enabled(gLogObj, v105[0]))
      {
        goto LABEL_190;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v62;
      v68 = "%{public}s setsockopt SO_TRAFFIC_MGT_BACKGROUND failed %{darwin.errno}d";
      goto LABEL_189;
    }

    if (v104[0] != OS_LOG_TYPE_INFO)
    {
      v66 = __nwlog_obj();
      v67 = v105[0];
      if (!os_log_type_enabled(v66, v105[0]))
      {
        goto LABEL_190;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v62;
      v68 = "%{public}s setsockopt SO_TRAFFIC_MGT_BACKGROUND failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_189;
    }

    v69 = __nw_create_backtrace_string();
    v66 = __nwlog_obj();
    v67 = v105[0];
    v70 = os_log_type_enabled(v66, v105[0]);
    if (v69)
    {
      if (v70)
      {
        *buf = 136446722;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 1024;
        *v112 = v62;
        *&v112[4] = 2082;
        *&v112[6] = v69;
        _os_log_impl(&dword_181A37000, v66, v67, "%{public}s setsockopt SO_TRAFFIC_MGT_BACKGROUND failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v69);
      goto LABEL_190;
    }

    if (v70)
    {
      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v62;
      v68 = "%{public}s setsockopt SO_TRAFFIC_MGT_BACKGROUND failed %{darwin.errno}d, no backtrace";
LABEL_189:
      _os_log_impl(&dword_181A37000, v66, v67, v68, buf, 0x12u);
    }
  }

LABEL_190:
  if (v65)
  {
    free(v65);
  }

LABEL_192:
  if (!_nw_tcp_options_get_enable_keepalive(a2))
  {
    goto LABEL_200;
  }

  if ((setsockopt(*(a1 + 188), 0xFFFF, 8, v108, 4u) & 0x80000000) == 0)
  {
    *v105 = _nw_tcp_options_get_keepalive_idle_time(a2);
    if (*v105 && setsockopt(*(a1 + 188), 6, 16, v105, 4u) < 0)
    {
      v81 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v82 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 2082;
        *v112 = a1 + 324;
        *&v112[8] = 1024;
        *&v112[10] = v81;
        _os_log_impl(&dword_181A37000, v82, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_KEEPALIVE failed %{darwin.errno}d", buf, 0x1Cu);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v73 = gLogObj;
      if (v81 == 22)
      {
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v110 = "nw_socket_set_bidirectional_tcp_sockopts";
          v111 = 1024;
          *v112 = 22;
          v74 = "%{public}s setsockopt TCP_KEEPALIVE failed %{darwin.errno}d";
          goto LABEL_250;
        }

        goto LABEL_306;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v81;
      v77 = _os_log_send_and_compose_impl();
      v104[0] = OS_LOG_TYPE_ERROR;
      v102[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v77, v104, v102))
      {
        goto LABEL_304;
      }

      if (v104[0] == OS_LOG_TYPE_FAULT)
      {
        v78 = __nwlog_obj();
        v79 = v104[0];
        if (!os_log_type_enabled(v78, v104[0]))
        {
          goto LABEL_304;
        }

        *buf = 136446466;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 1024;
        *v112 = v81;
        v80 = "%{public}s setsockopt TCP_KEEPALIVE failed %{darwin.errno}d";
        goto LABEL_303;
      }

      if (v102[0] != OS_LOG_TYPE_INFO)
      {
        v78 = __nwlog_obj();
        v79 = v104[0];
        if (!os_log_type_enabled(v78, v104[0]))
        {
          goto LABEL_304;
        }

        *buf = 136446466;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 1024;
        *v112 = v81;
        v80 = "%{public}s setsockopt TCP_KEEPALIVE failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_303;
      }

      v85 = __nw_create_backtrace_string();
      v78 = __nwlog_obj();
      v79 = v104[0];
      v92 = os_log_type_enabled(v78, v104[0]);
      if (!v85)
      {
        if (!v92)
        {
          goto LABEL_304;
        }

        *buf = 136446466;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 1024;
        *v112 = v81;
        v80 = "%{public}s setsockopt TCP_KEEPALIVE failed %{darwin.errno}d, no backtrace";
        goto LABEL_303;
      }

      if (!v92)
      {
        goto LABEL_285;
      }

      *buf = 136446722;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v81;
      *&v112[4] = 2082;
      *&v112[6] = v85;
      v87 = "%{public}s setsockopt TCP_KEEPALIVE failed %{darwin.errno}d, dumping backtrace:%{public}s";
    }

    else
    {
      *v104 = _nw_tcp_options_get_keepalive_interval(a2);
      if (!*v104 || (setsockopt(*(a1 + 188), 6, 257, v104, 4u) & 0x80000000) == 0)
      {
        *v102 = _nw_tcp_options_get_keepalive_count(a2);
        if (!*v102 || (setsockopt(*(a1 + 188), 6, 258, v102, 4u) & 0x80000000) == 0)
        {
LABEL_200:
          if (!_nw_tcp_options_get_enable_keepalive_offload(a2) || (setsockopt(*(a1 + 188), 6, 529, v108, 4u) & 0x80000000) == 0)
          {
            return 1;
          }

          v75 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v76 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v110 = "nw_socket_set_bidirectional_tcp_sockopts";
            v111 = 2082;
            *v112 = a1 + 324;
            *&v112[8] = 1024;
            *&v112[10] = v75;
            _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_KEEPALIVE_OFFLOAD failed %{darwin.errno}d", buf, 0x1Cu);
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v73 = gLogObj;
          if (v75 == 22)
          {
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v110 = "nw_socket_set_bidirectional_tcp_sockopts";
              v111 = 1024;
              *v112 = 22;
              v74 = "%{public}s setsockopt TCP_KEEPALIVE_OFFLOAD failed %{darwin.errno}d";
              goto LABEL_250;
            }

            goto LABEL_306;
          }

          *buf = 136446466;
          v110 = "nw_socket_set_bidirectional_tcp_sockopts";
          v111 = 1024;
          *v112 = v75;
          v77 = _os_log_send_and_compose_impl();
          v105[0] = OS_LOG_TYPE_ERROR;
          v104[0] = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v77, v105, v104))
          {
            goto LABEL_304;
          }

          if (v105[0] == OS_LOG_TYPE_FAULT)
          {
            v78 = __nwlog_obj();
            v79 = v105[0];
            if (!os_log_type_enabled(v78, v105[0]))
            {
              goto LABEL_304;
            }

            *buf = 136446466;
            v110 = "nw_socket_set_bidirectional_tcp_sockopts";
            v111 = 1024;
            *v112 = v75;
            v80 = "%{public}s setsockopt TCP_KEEPALIVE_OFFLOAD failed %{darwin.errno}d";
          }

          else if (v104[0] == OS_LOG_TYPE_INFO)
          {
            v90 = __nw_create_backtrace_string();
            v78 = __nwlog_obj();
            v79 = v105[0];
            v91 = os_log_type_enabled(v78, v105[0]);
            if (v90)
            {
              if (v91)
              {
                *buf = 136446722;
                v110 = "nw_socket_set_bidirectional_tcp_sockopts";
                v111 = 1024;
                *v112 = v75;
                *&v112[4] = 2082;
                *&v112[6] = v90;
                _os_log_impl(&dword_181A37000, v78, v79, "%{public}s setsockopt TCP_KEEPALIVE_OFFLOAD failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v90);
LABEL_304:
              if (!v77)
              {
                goto LABEL_306;
              }

LABEL_305:
              free(v77);
              goto LABEL_306;
            }

            if (!v91)
            {
              goto LABEL_304;
            }

            *buf = 136446466;
            v110 = "nw_socket_set_bidirectional_tcp_sockopts";
            v111 = 1024;
            *v112 = v75;
            v80 = "%{public}s setsockopt TCP_KEEPALIVE_OFFLOAD failed %{darwin.errno}d, no backtrace";
          }

          else
          {
            v78 = __nwlog_obj();
            v79 = v105[0];
            if (!os_log_type_enabled(v78, v105[0]))
            {
              goto LABEL_304;
            }

            *buf = 136446466;
            v110 = "nw_socket_set_bidirectional_tcp_sockopts";
            v111 = 1024;
            *v112 = v75;
            v80 = "%{public}s setsockopt TCP_KEEPALIVE_OFFLOAD failed %{darwin.errno}d, backtrace limit exceeded";
          }

LABEL_303:
          _os_log_impl(&dword_181A37000, v78, v79, v80, buf, 0x12u);
          goto LABEL_304;
        }

        v88 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v89 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v110 = "nw_socket_set_bidirectional_tcp_sockopts";
          v111 = 2082;
          *v112 = a1 + 324;
          *&v112[8] = 1024;
          *&v112[10] = v88;
          _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_KEEPCNT failed %{darwin.errno}d", buf, 0x1Cu);
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v73 = gLogObj;
        if (v88 == 22)
        {
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v110 = "nw_socket_set_bidirectional_tcp_sockopts";
            v111 = 1024;
            *v112 = 22;
            v74 = "%{public}s setsockopt TCP_KEEPCNT failed %{darwin.errno}d";
            goto LABEL_250;
          }

          goto LABEL_306;
        }

        *buf = 136446466;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 1024;
        *v112 = v88;
        v77 = _os_log_send_and_compose_impl();
        v103 = OS_LOG_TYPE_ERROR;
        v101 = 0;
        if (!__nwlog_fault(v77, &v103, &v101))
        {
          goto LABEL_304;
        }

        if (v103 == OS_LOG_TYPE_FAULT)
        {
          v78 = __nwlog_obj();
          v79 = v103;
          if (!os_log_type_enabled(v78, v103))
          {
            goto LABEL_304;
          }

          *buf = 136446466;
          v110 = "nw_socket_set_bidirectional_tcp_sockopts";
          v111 = 1024;
          *v112 = v88;
          v80 = "%{public}s setsockopt TCP_KEEPCNT failed %{darwin.errno}d";
          goto LABEL_303;
        }

        if (v101 != 1)
        {
          v78 = __nwlog_obj();
          v79 = v103;
          if (!os_log_type_enabled(v78, v103))
          {
            goto LABEL_304;
          }

          *buf = 136446466;
          v110 = "nw_socket_set_bidirectional_tcp_sockopts";
          v111 = 1024;
          *v112 = v88;
          v80 = "%{public}s setsockopt TCP_KEEPCNT failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_303;
        }

        v85 = __nw_create_backtrace_string();
        v78 = __nwlog_obj();
        v79 = v103;
        v94 = os_log_type_enabled(v78, v103);
        if (!v85)
        {
          if (!v94)
          {
            goto LABEL_304;
          }

          *buf = 136446466;
          v110 = "nw_socket_set_bidirectional_tcp_sockopts";
          v111 = 1024;
          *v112 = v88;
          v80 = "%{public}s setsockopt TCP_KEEPCNT failed %{darwin.errno}d, no backtrace";
          goto LABEL_303;
        }

        if (v94)
        {
          *buf = 136446722;
          v110 = "nw_socket_set_bidirectional_tcp_sockopts";
          v111 = 1024;
          *v112 = v88;
          *&v112[4] = 2082;
          *&v112[6] = v85;
          v87 = "%{public}s setsockopt TCP_KEEPCNT failed %{darwin.errno}d, dumping backtrace:%{public}s";
          goto LABEL_284;
        }

LABEL_285:
        free(v85);
        if (!v77)
        {
          goto LABEL_306;
        }

        goto LABEL_305;
      }

      v83 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v84 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 2082;
        *v112 = a1 + 324;
        *&v112[8] = 1024;
        *&v112[10] = v83;
        _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_KEEPINTVL failed %{darwin.errno}d", buf, 0x1Cu);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v73 = gLogObj;
      if (v83 == 22)
      {
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v110 = "nw_socket_set_bidirectional_tcp_sockopts";
          v111 = 1024;
          *v112 = 22;
          v74 = "%{public}s setsockopt TCP_KEEPINTVL failed %{darwin.errno}d";
          goto LABEL_250;
        }

        goto LABEL_306;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v83;
      v77 = _os_log_send_and_compose_impl();
      v102[0] = OS_LOG_TYPE_ERROR;
      v103 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v77, v102, &v103))
      {
        goto LABEL_304;
      }

      if (v102[0] == OS_LOG_TYPE_FAULT)
      {
        v78 = __nwlog_obj();
        v79 = v102[0];
        if (!os_log_type_enabled(v78, v102[0]))
        {
          goto LABEL_304;
        }

        *buf = 136446466;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 1024;
        *v112 = v83;
        v80 = "%{public}s setsockopt TCP_KEEPINTVL failed %{darwin.errno}d";
        goto LABEL_303;
      }

      if (v103 != OS_LOG_TYPE_INFO)
      {
        v78 = __nwlog_obj();
        v79 = v102[0];
        if (!os_log_type_enabled(v78, v102[0]))
        {
          goto LABEL_304;
        }

        *buf = 136446466;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 1024;
        *v112 = v83;
        v80 = "%{public}s setsockopt TCP_KEEPINTVL failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_303;
      }

      v85 = __nw_create_backtrace_string();
      v78 = __nwlog_obj();
      v79 = v102[0];
      v93 = os_log_type_enabled(v78, v102[0]);
      if (!v85)
      {
        if (!v93)
        {
          goto LABEL_304;
        }

        *buf = 136446466;
        v110 = "nw_socket_set_bidirectional_tcp_sockopts";
        v111 = 1024;
        *v112 = v83;
        v80 = "%{public}s setsockopt TCP_KEEPINTVL failed %{darwin.errno}d, no backtrace";
        goto LABEL_303;
      }

      if (!v93)
      {
        goto LABEL_285;
      }

      *buf = 136446722;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v83;
      *&v112[4] = 2082;
      *&v112[6] = v85;
      v87 = "%{public}s setsockopt TCP_KEEPINTVL failed %{darwin.errno}d, dumping backtrace:%{public}s";
    }

LABEL_284:
    _os_log_impl(&dword_181A37000, v78, v79, v87, buf, 0x1Cu);
    goto LABEL_285;
  }

  v71 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v72 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v110 = "nw_socket_set_bidirectional_tcp_sockopts";
    v111 = 2082;
    *v112 = a1 + 324;
    *&v112[8] = 1024;
    *&v112[10] = v71;
    _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_KEEPALIVE failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v73 = gLogObj;
  if (v71 != 22)
  {
    *buf = 136446466;
    v110 = "nw_socket_set_bidirectional_tcp_sockopts";
    v111 = 1024;
    *v112 = v71;
    v77 = _os_log_send_and_compose_impl();
    v105[0] = OS_LOG_TYPE_ERROR;
    v104[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v77, v105, v104))
    {
      goto LABEL_304;
    }

    if (v105[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v78 = gLogObj;
      v79 = v105[0];
      if (!os_log_type_enabled(gLogObj, v105[0]))
      {
        goto LABEL_304;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v71;
      v80 = "%{public}s setsockopt SO_KEEPALIVE failed %{darwin.errno}d";
      goto LABEL_303;
    }

    if (v104[0] != OS_LOG_TYPE_INFO)
    {
      v78 = __nwlog_obj();
      v79 = v105[0];
      if (!os_log_type_enabled(v78, v105[0]))
      {
        goto LABEL_304;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v71;
      v80 = "%{public}s setsockopt SO_KEEPALIVE failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_303;
    }

    v85 = __nw_create_backtrace_string();
    v78 = __nwlog_obj();
    v79 = v105[0];
    v86 = os_log_type_enabled(v78, v105[0]);
    if (!v85)
    {
      if (!v86)
      {
        goto LABEL_304;
      }

      *buf = 136446466;
      v110 = "nw_socket_set_bidirectional_tcp_sockopts";
      v111 = 1024;
      *v112 = v71;
      v80 = "%{public}s setsockopt SO_KEEPALIVE failed %{darwin.errno}d, no backtrace";
      goto LABEL_303;
    }

    if (!v86)
    {
      goto LABEL_285;
    }

    *buf = 136446722;
    v110 = "nw_socket_set_bidirectional_tcp_sockopts";
    v111 = 1024;
    *v112 = v71;
    *&v112[4] = 2082;
    *&v112[6] = v85;
    v87 = "%{public}s setsockopt SO_KEEPALIVE failed %{darwin.errno}d, dumping backtrace:%{public}s";
    goto LABEL_284;
  }

  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v110 = "nw_socket_set_bidirectional_tcp_sockopts";
    v111 = 1024;
    *v112 = 22;
    v74 = "%{public}s setsockopt SO_KEEPALIVE failed %{darwin.errno}d";
LABEL_250:
    _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_ERROR, v74, buf, 0x12u);
  }

LABEL_306:
  nw_socket_internal_error(a1);
  return 0;
}

uint64_t nw_socket_set_no_delay(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 192) != 2)
  {
    return 22;
  }

  v15 = a2;
  if (!setsockopt(*(a1 + 188), 6, 1, &v15, 4u))
  {
    return 0;
  }

  v3 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v4 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v17 = "nw_socket_set_no_delay";
    v18 = 2082;
    *v19 = a1 + 324;
    *&v19[8] = 1024;
    *&v19[10] = v3;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_NODELAY failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (v3 == 22)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "nw_socket_set_no_delay";
      v18 = 1024;
      *v19 = 22;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_NODELAY failed %{darwin.errno}d", buf, 0x12u);
    }

    return v3;
  }

  *buf = 136446466;
  v17 = "nw_socket_set_no_delay";
  v18 = 1024;
  *v19 = v3;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_26;
      }

      *buf = 136446466;
      v17 = "nw_socket_set_no_delay";
      v18 = 1024;
      *v19 = v3;
      v9 = "%{public}s setsockopt TCP_NODELAY failed %{darwin.errno}d";
      goto LABEL_25;
    }

    if (v13 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_26;
      }

      *buf = 136446466;
      v17 = "nw_socket_set_no_delay";
      v18 = 1024;
      *v19 = v3;
      v9 = "%{public}s setsockopt TCP_NODELAY failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_25;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v11 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446722;
        v17 = "nw_socket_set_no_delay";
        v18 = 1024;
        *v19 = v3;
        *&v19[4] = 2082;
        *&v19[6] = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s setsockopt TCP_NODELAY failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(backtrace_string);
      goto LABEL_26;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_socket_set_no_delay";
      v18 = 1024;
      *v19 = v3;
      v9 = "%{public}s setsockopt TCP_NODELAY failed %{darwin.errno}d, no backtrace";
LABEL_25:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0x12u);
    }
  }

LABEL_26:
  if (v6)
  {
    free(v6);
  }

  return v3;
}

uint64_t _nw_tcp_options_get_disable_ecn(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = result + *(*result + 128);
    result = swift_beginAccess();
    v4 = *(v3 + 40);
    if (v4 == 2)
    {
      __break(1u);
    }

    else
    {

      return (v4 >> 47) & 1;
    }
  }

  return result;
}

uint64_t nw_endpoint_get_alternate_port(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    alternate_port = _nw_endpoint_get_alternate_port(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_get_alternate_port";
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
        v16 = "nw_endpoint_get_alternate_port";
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
          v16 = "nw_endpoint_get_alternate_port";
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
        v16 = "nw_endpoint_get_alternate_port";
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
        v16 = "nw_endpoint_get_alternate_port";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  alternate_port = 0;
LABEL_3:

  return alternate_port;
}

uint64_t _nw_endpoint_get_alternate_port(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort + 2))
  {
    return 0;
  }

  else
  {
    return *(a1 + OBJC_IVAR____TtC7Network8Endpoint_alternatePort);
  }
}

uint64_t nw_path_uses_interface_subtype(void *a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = _nw_path_uses_interface_subtype(v3, a2);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_path_uses_interface_subtype";
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
        v18 = "nw_path_uses_interface_subtype";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null path", buf, 0xCu);
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
          v18 = "nw_path_uses_interface_subtype";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_path_uses_interface_subtype";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_path_uses_interface_subtype";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_3:

  return v5;
}

uint64_t nw_context_get_do_not_log_trackers(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ((v1[38]._os_unfair_lock_opaque & 0x48) == 0x40 && !dispatch_workloop_is_current())
    {
      os_unfair_lock_lock(v2 + 22);
      v3 = BYTE1(v2[38]._os_unfair_lock_opaque) & 1;
      os_unfair_lock_unlock(v2 + 22);
    }

    else
    {
      v3 = BYTE1(v2[38]._os_unfair_lock_opaque) & 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void nw_protocol_socket_set_necp_attributes(uint64_t a1, uint64_t a2, void *a3)
{
  v179 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    domain_for_policy = _nw_endpoint_get_domain_for_policy(v5);

    if (domain_for_policy)
    {
      v8 = 0;
      v9 = strlen(domain_for_policy) + 6;
      goto LABEL_6;
    }
  }

  else
  {
    domain_for_policy = 0;
  }

  v9 = 0;
  v8 = 1;
LABEL_6:
  account_id = nw_parameters_get_account_id(a2);
  v11 = account_id;
  if (account_id)
  {
    v9 += strlen(account_id) + 6;
  }

  v12 = v6;
  v13 = v12;
  if (v6)
  {
    tracker_owner = _nw_endpoint_get_tracker_owner(v12);

    if (tracker_owner)
    {
      v165 = 0;
      v9 += strlen(tracker_owner) + 6;
      goto LABEL_13;
    }
  }

  else
  {
    tracker_owner = 0;
  }

  v165 = 1;
LABEL_13:
  v163 = a2;
  attribution_context = nw_parameters_get_attribution_context(a2);
  v16 = attribution_context;
  if (attribution_context)
  {
    v9 += strlen(attribution_context) + 6;
  }

  v17 = v13;
  v18 = v17;
  if (v6)
  {
    known_tracker_name = _nw_endpoint_get_known_tracker_name(v17);

    if (known_tracker_name)
    {
      v164 = 0;
      v20 = v9 + strlen(known_tracker_name);
      v9 = v20 + 6;
      if (v20 == -6)
      {
        return;
      }

      goto LABEL_21;
    }
  }

  else
  {
    known_tracker_name = 0;
  }

  v164 = 1;
  if (!v9)
  {
    return;
  }

LABEL_21:
  v161 = v6;
  __s = known_tracker_name;
  v160 = v18;
  v21 = nw_calloc_type<unsigned char>(v9);
  v22 = v21 + v9;
  v167 = v21;
  v166 = v22;
  if (v8)
  {
    goto LABEL_44;
  }

  v23 = strlen(domain_for_policy);
  if (!v21)
  {
    __nwlog_obj();
    *buf = 136446210;
    v171 = "nw_necp_append_tlv";
    v110 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v168 = 0;
    if (__nwlog_fault(v110, &type, &v168))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v111 = __nwlog_obj();
        v112 = type;
        if (os_log_type_enabled(v111, type))
        {
          *buf = 136446210;
          v171 = "nw_necp_append_tlv";
          v113 = "%{public}s called with null tlv_start";
LABEL_311:
          _os_log_impl(&dword_181A37000, v111, v112, v113, buf, 0xCu);
        }
      }

      else
      {
        v142 = a1;
        if (v168 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v111 = __nwlog_obj();
          v112 = type;
          v144 = os_log_type_enabled(v111, type);
          if (backtrace_string)
          {
            if (v144)
            {
              *buf = 136446466;
              v171 = "nw_necp_append_tlv";
              v172 = 2082;
              *v173 = backtrace_string;
              _os_log_impl(&dword_181A37000, v111, v112, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            a1 = v142;
            goto LABEL_312;
          }

          a1 = v142;
          if (v144)
          {
            *buf = 136446210;
            v171 = "nw_necp_append_tlv";
            v113 = "%{public}s called with null tlv_start, no backtrace";
            goto LABEL_311;
          }
        }

        else
        {
          v111 = __nwlog_obj();
          v112 = type;
          if (os_log_type_enabled(v111, type))
          {
            *buf = 136446210;
            v171 = "nw_necp_append_tlv";
            v113 = "%{public}s called with null tlv_start, backtrace limit exceeded";
            goto LABEL_311;
          }
        }
      }
    }

LABEL_312:
    if (v110)
    {
      free(v110);
    }

    v21 = 0;
    goto LABEL_43;
  }

  v24 = (v23 + 1);
  if (v24 + 5 <= v9)
  {
    *v21 = 7;
    *(v21 + 1) = v24;
    if (v23 != -1)
    {
      memcpy((v21 + 5), domain_for_policy, v24);
    }

    v21 += v24 + 5;
    goto LABEL_43;
  }

  v156 = a1;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136447490;
  v171 = "nw_necp_append_tlv";
  v172 = 2048;
  *v173 = v21;
  *&v173[8] = 2048;
  *v174 = v24 + 5;
  *&v174[8] = 2048;
  *&v174[10] = v21 + v9;
  *&v174[18] = 1024;
  *&v174[20] = 7;
  *&v174[24] = 1024;
  *&v174[26] = v24;
  v25 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v168 = 0;
  if (__nwlog_fault(v25, &type, &v168))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136447490;
        v171 = "nw_necp_append_tlv";
        v172 = 2048;
        *v173 = v21;
        *&v173[8] = 2048;
        *v174 = v24 + 5;
        *&v174[8] = 2048;
        *&v174[10] = v21 + v9;
        *&v174[18] = 1024;
        *&v174[20] = 7;
        *&v174[24] = 1024;
        *&v174[26] = v24;
        v28 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u";
LABEL_38:
        v31 = v26;
LABEL_39:
        _os_log_impl(&dword_181A37000, v31, v27, v28, buf, 0x36u);
      }
    }

    else if (v168 == 1)
    {
      v29 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = type;
      log = gLogObj;
      v30 = os_log_type_enabled(gLogObj, type);
      if (v29)
      {
        if (v30)
        {
          *buf = 136447746;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v24 + 5;
          *&v174[8] = 2048;
          *&v174[10] = v21 + v9;
          *&v174[18] = 1024;
          *&v174[20] = 7;
          *&v174[24] = 1024;
          *&v174[26] = v24;
          *&v174[30] = 2082;
          *&v174[32] = v29;
          _os_log_impl(&dword_181A37000, log, v27, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
        }

        free(v29);
        goto LABEL_40;
      }

      if (v30)
      {
        *buf = 136447490;
        v171 = "nw_necp_append_tlv";
        v172 = 2048;
        *v173 = v21;
        *&v173[8] = 2048;
        *v174 = v24 + 5;
        *&v174[8] = 2048;
        *&v174[10] = v21 + v9;
        *&v174[18] = 1024;
        *&v174[20] = 7;
        *&v174[24] = 1024;
        *&v174[26] = v24;
        v28 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace";
        v31 = log;
        goto LABEL_39;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136447490;
        v171 = "nw_necp_append_tlv";
        v172 = 2048;
        *v173 = v21;
        *&v173[8] = 2048;
        *v174 = v24 + 5;
        *&v174[8] = 2048;
        *&v174[10] = v21 + v9;
        *&v174[18] = 1024;
        *&v174[20] = 7;
        *&v174[24] = 1024;
        *&v174[26] = v24;
        v28 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded";
        goto LABEL_38;
      }
    }
  }

LABEL_40:
  if (v25)
  {
    free(v25);
  }

  v21 = 0;
  a1 = v156;
LABEL_43:
  v22 = v166;
LABEL_44:
  if (!v11)
  {
    goto LABEL_70;
  }

  v32 = strlen(v11);
  if (!v21)
  {
    __nwlog_obj();
    *buf = 136446210;
    v171 = "nw_necp_append_tlv";
    v93 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v168 = 0;
    if (__nwlog_fault(v93, &type, &v168))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v94 = __nwlog_obj();
        v95 = type;
        if (os_log_type_enabled(v94, type))
        {
          *buf = 136446210;
          v171 = "nw_necp_append_tlv";
          v96 = "%{public}s called with null tlv_start";
LABEL_287:
          _os_log_impl(&dword_181A37000, v94, v95, v96, buf, 0xCu);
        }
      }

      else
      {
        v132 = a1;
        if (v168 == 1)
        {
          v133 = __nw_create_backtrace_string();
          v94 = __nwlog_obj();
          v95 = type;
          v134 = os_log_type_enabled(v94, type);
          if (v133)
          {
            if (v134)
            {
              *buf = 136446466;
              v171 = "nw_necp_append_tlv";
              v172 = 2082;
              *v173 = v133;
              _os_log_impl(&dword_181A37000, v94, v95, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v133);
            a1 = v132;
            goto LABEL_288;
          }

          a1 = v132;
          if (v134)
          {
            *buf = 136446210;
            v171 = "nw_necp_append_tlv";
            v96 = "%{public}s called with null tlv_start, no backtrace";
            goto LABEL_287;
          }
        }

        else
        {
          v94 = __nwlog_obj();
          v95 = type;
          if (os_log_type_enabled(v94, type))
          {
            *buf = 136446210;
            v171 = "nw_necp_append_tlv";
            v96 = "%{public}s called with null tlv_start, backtrace limit exceeded";
            goto LABEL_287;
          }
        }
      }
    }

LABEL_288:
    if (!v93)
    {
      goto LABEL_69;
    }

    v40 = v93;
    goto LABEL_68;
  }

  v33 = (v32 + 1);
  if (v21 >= v22)
  {
    v159 = a1;
    __nwlog_obj();
    *buf = 136447234;
    v171 = "nw_necp_append_tlv";
    v172 = 2048;
    *v173 = v21;
    *&v173[8] = 2048;
    *v174 = v22;
    *&v174[8] = 1024;
    *&v174[10] = 8;
    *&v174[14] = 1024;
    *&v174[16] = v33;
    v101 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v168 = 0;
    if (!__nwlog_fault(v101, &type, &v168))
    {
      goto LABEL_299;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v102 = __nwlog_obj();
      v103 = type;
      if (!os_log_type_enabled(v102, type))
      {
        goto LABEL_299;
      }

      *buf = 136447234;
      v171 = "nw_necp_append_tlv";
      v172 = 2048;
      *v173 = v21;
      *&v173[8] = 2048;
      *v174 = v166;
      *&v174[8] = 1024;
      *&v174[10] = 8;
      *&v174[14] = 1024;
      *&v174[16] = v33;
      v104 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u";
    }

    else if (v168 == 1)
    {
      v138 = __nw_create_backtrace_string();
      v102 = __nwlog_obj();
      v103 = type;
      v139 = os_log_type_enabled(v102, type);
      if (v138)
      {
        if (v139)
        {
          *buf = 136447490;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v166;
          *&v174[8] = 1024;
          *&v174[10] = 8;
          *&v174[14] = 1024;
          *&v174[16] = v33;
          *&v174[20] = 2082;
          *&v174[22] = v138;
          _os_log_impl(&dword_181A37000, v102, v103, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
        }

        free(v138);
LABEL_299:
        if (v101)
        {
          free(v101);
        }

        v21 = 0;
        a1 = v159;
        v22 = v166;
        if (v165)
        {
          goto LABEL_98;
        }

        goto LABEL_71;
      }

      if (!v139)
      {
        goto LABEL_299;
      }

      *buf = 136447234;
      v171 = "nw_necp_append_tlv";
      v172 = 2048;
      *v173 = v21;
      *&v173[8] = 2048;
      *v174 = v166;
      *&v174[8] = 1024;
      *&v174[10] = 8;
      *&v174[14] = 1024;
      *&v174[16] = v33;
      v104 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace";
    }

    else
    {
      v102 = __nwlog_obj();
      v103 = type;
      if (!os_log_type_enabled(v102, type))
      {
        goto LABEL_299;
      }

      *buf = 136447234;
      v171 = "nw_necp_append_tlv";
      v172 = 2048;
      *v173 = v21;
      *&v173[8] = 2048;
      *v174 = v166;
      *&v174[8] = 1024;
      *&v174[10] = 8;
      *&v174[14] = 1024;
      *&v174[16] = v33;
      v104 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v102, v103, v104, buf, 0x2Cu);
    goto LABEL_299;
  }

  if (v22 - v21 < v33 + 5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136447490;
    v171 = "nw_necp_append_tlv";
    v172 = 2048;
    *v173 = v21;
    *&v173[8] = 2048;
    *v174 = v33 + 5;
    *&v174[8] = 2048;
    *&v174[10] = v22;
    *&v174[18] = 1024;
    *&v174[20] = 8;
    *&v174[24] = 1024;
    *&v174[26] = v33;
    v34 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v168 = 0;
    if (__nwlog_fault(v34, &type, &v168))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v35 = gLogObj;
        v36 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136447490;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v33 + 5;
          *&v174[8] = 2048;
          *&v174[10] = v166;
          *&v174[18] = 1024;
          *&v174[20] = 8;
          *&v174[24] = 1024;
          *&v174[26] = v33;
          v37 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u";
LABEL_65:
          _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0x36u);
        }
      }

      else if (v168 == 1)
      {
        v157 = a1;
        v38 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v35 = gLogObj;
        v36 = type;
        v39 = os_log_type_enabled(gLogObj, type);
        if (v38)
        {
          if (v39)
          {
            *buf = 136447746;
            v171 = "nw_necp_append_tlv";
            v172 = 2048;
            *v173 = v21;
            *&v173[8] = 2048;
            *v174 = v33 + 5;
            *&v174[8] = 2048;
            *&v174[10] = v166;
            *&v174[18] = 1024;
            *&v174[20] = 8;
            *&v174[24] = 1024;
            *&v174[26] = v33;
            *&v174[30] = 2082;
            *&v174[32] = v38;
            _os_log_impl(&dword_181A37000, v35, v36, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
          }

          free(v38);
          a1 = v157;
          goto LABEL_66;
        }

        a1 = v157;
        if (v39)
        {
          *buf = 136447490;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v33 + 5;
          *&v174[8] = 2048;
          *&v174[10] = v166;
          *&v174[18] = 1024;
          *&v174[20] = 8;
          *&v174[24] = 1024;
          *&v174[26] = v33;
          v37 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace";
          goto LABEL_65;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v35 = gLogObj;
        v36 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136447490;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v33 + 5;
          *&v174[8] = 2048;
          *&v174[10] = v166;
          *&v174[18] = 1024;
          *&v174[20] = 8;
          *&v174[24] = 1024;
          *&v174[26] = v33;
          v37 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded";
          goto LABEL_65;
        }
      }
    }

LABEL_66:
    if (!v34)
    {
LABEL_69:
      v21 = 0;
      v22 = v166;
LABEL_70:
      if (v165)
      {
        goto LABEL_98;
      }

      goto LABEL_71;
    }

    v40 = v34;
LABEL_68:
    free(v40);
    goto LABEL_69;
  }

  *v21 = 8;
  *(v21 + 1) = v33;
  if (v32 != -1)
  {
    memcpy((v21 + 5), v11, v33);
  }

  v21 += v33 + 5;
  if (v165)
  {
    goto LABEL_98;
  }

LABEL_71:
  v41 = strlen(tracker_owner);
  if (!v21)
  {
    __nwlog_obj();
    *buf = 136446210;
    v171 = "nw_necp_append_tlv";
    v114 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v168 = 0;
    if (__nwlog_fault(v114, &type, &v168))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v115 = __nwlog_obj();
        v116 = type;
        if (os_log_type_enabled(v115, type))
        {
          *buf = 136446210;
          v171 = "nw_necp_append_tlv";
          v117 = "%{public}s called with null tlv_start";
LABEL_317:
          _os_log_impl(&dword_181A37000, v115, v116, v117, buf, 0xCu);
        }
      }

      else
      {
        v145 = a1;
        if (v168 == 1)
        {
          v146 = __nw_create_backtrace_string();
          v115 = __nwlog_obj();
          v116 = type;
          v147 = os_log_type_enabled(v115, type);
          if (v146)
          {
            if (v147)
            {
              *buf = 136446466;
              v171 = "nw_necp_append_tlv";
              v172 = 2082;
              *v173 = v146;
              _os_log_impl(&dword_181A37000, v115, v116, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v146);
            a1 = v145;
            goto LABEL_318;
          }

          a1 = v145;
          if (v147)
          {
            *buf = 136446210;
            v171 = "nw_necp_append_tlv";
            v117 = "%{public}s called with null tlv_start, no backtrace";
            goto LABEL_317;
          }
        }

        else
        {
          v115 = __nwlog_obj();
          v116 = type;
          if (os_log_type_enabled(v115, type))
          {
            *buf = 136446210;
            v171 = "nw_necp_append_tlv";
            v117 = "%{public}s called with null tlv_start, backtrace limit exceeded";
            goto LABEL_317;
          }
        }
      }
    }

LABEL_318:
    if (!v114)
    {
      goto LABEL_96;
    }

    v49 = v114;
    goto LABEL_95;
  }

  v42 = (v41 + 1);
  if (v21 >= v22)
  {
    v122 = a1;
    __nwlog_obj();
    *buf = 136447234;
    v171 = "nw_necp_append_tlv";
    v172 = 2048;
    *v173 = v21;
    *&v173[8] = 2048;
    *v174 = v22;
    *&v174[8] = 1024;
    *&v174[10] = 11;
    *&v174[14] = 1024;
    *&v174[16] = v42;
    v123 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v168 = 0;
    if (__nwlog_fault(v123, &type, &v168))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v124 = __nwlog_obj();
        v125 = type;
        if (os_log_type_enabled(v124, type))
        {
          *buf = 136447234;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v166;
          *&v174[8] = 1024;
          *&v174[10] = 11;
          *&v174[14] = 1024;
          *&v174[16] = v42;
          v126 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u";
LABEL_327:
          _os_log_impl(&dword_181A37000, v124, v125, v126, buf, 0x2Cu);
        }
      }

      else if (v168 == 1)
      {
        v151 = __nw_create_backtrace_string();
        v124 = __nwlog_obj();
        v125 = type;
        v152 = os_log_type_enabled(v124, type);
        if (v151)
        {
          if (v152)
          {
            *buf = 136447490;
            v171 = "nw_necp_append_tlv";
            v172 = 2048;
            *v173 = v21;
            *&v173[8] = 2048;
            *v174 = v166;
            *&v174[8] = 1024;
            *&v174[10] = 11;
            *&v174[14] = 1024;
            *&v174[16] = v42;
            *&v174[20] = 2082;
            *&v174[22] = v151;
            _os_log_impl(&dword_181A37000, v124, v125, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
          }

          free(v151);
          goto LABEL_328;
        }

        if (v152)
        {
          *buf = 136447234;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v166;
          *&v174[8] = 1024;
          *&v174[10] = 11;
          *&v174[14] = 1024;
          *&v174[16] = v42;
          v126 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace";
          goto LABEL_327;
        }
      }

      else
      {
        v124 = __nwlog_obj();
        v125 = type;
        if (os_log_type_enabled(v124, type))
        {
          *buf = 136447234;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v166;
          *&v174[8] = 1024;
          *&v174[10] = 11;
          *&v174[14] = 1024;
          *&v174[16] = v42;
          v126 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded";
          goto LABEL_327;
        }
      }
    }

LABEL_328:
    if (v123)
    {
      free(v123);
    }

    v21 = 0;
    a1 = v122;
    goto LABEL_97;
  }

  if (v22 - v21 < v42 + 5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136447490;
    v171 = "nw_necp_append_tlv";
    v172 = 2048;
    *v173 = v21;
    *&v173[8] = 2048;
    *v174 = v42 + 5;
    *&v174[8] = 2048;
    *&v174[10] = v22;
    *&v174[18] = 1024;
    *&v174[20] = 11;
    *&v174[24] = 1024;
    *&v174[26] = v42;
    v43 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v168 = 0;
    if (__nwlog_fault(v43, &type, &v168))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        v45 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136447490;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v42 + 5;
          *&v174[8] = 2048;
          *&v174[10] = v166;
          *&v174[18] = 1024;
          *&v174[20] = 11;
          *&v174[24] = 1024;
          *&v174[26] = v42;
          v46 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u";
LABEL_92:
          _os_log_impl(&dword_181A37000, v44, v45, v46, buf, 0x36u);
        }
      }

      else if (v168 == 1)
      {
        v158 = a1;
        v47 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        v45 = type;
        v48 = os_log_type_enabled(gLogObj, type);
        if (v47)
        {
          if (v48)
          {
            *buf = 136447746;
            v171 = "nw_necp_append_tlv";
            v172 = 2048;
            *v173 = v21;
            *&v173[8] = 2048;
            *v174 = v42 + 5;
            *&v174[8] = 2048;
            *&v174[10] = v166;
            *&v174[18] = 1024;
            *&v174[20] = 11;
            *&v174[24] = 1024;
            *&v174[26] = v42;
            *&v174[30] = 2082;
            *&v174[32] = v47;
            _os_log_impl(&dword_181A37000, v44, v45, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
          }

          free(v47);
          a1 = v158;
          goto LABEL_93;
        }

        a1 = v158;
        if (v48)
        {
          *buf = 136447490;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v42 + 5;
          *&v174[8] = 2048;
          *&v174[10] = v166;
          *&v174[18] = 1024;
          *&v174[20] = 11;
          *&v174[24] = 1024;
          *&v174[26] = v42;
          v46 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace";
          goto LABEL_92;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        v45 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136447490;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v42 + 5;
          *&v174[8] = 2048;
          *&v174[10] = v166;
          *&v174[18] = 1024;
          *&v174[20] = 11;
          *&v174[24] = 1024;
          *&v174[26] = v42;
          v46 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded";
          goto LABEL_92;
        }
      }
    }

LABEL_93:
    if (!v43)
    {
LABEL_96:
      v21 = 0;
LABEL_97:
      v22 = v166;
      goto LABEL_98;
    }

    v49 = v43;
LABEL_95:
    free(v49);
    goto LABEL_96;
  }

  *v21 = 11;
  *(v21 + 1) = v42;
  if (v41 != -1)
  {
    memcpy((v21 + 5), tracker_owner, v42);
  }

  v21 += v42 + 5;
LABEL_98:
  if (!v16)
  {
    goto LABEL_109;
  }

  v50 = strlen(v16);
  if (v21)
  {
    v51 = (v50 + 1);
    if (v21 < v22)
    {
      if (v22 - v21 < v51 + 5)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136447490;
        v171 = "nw_necp_append_tlv";
        v172 = 2048;
        *v173 = v21;
        *&v173[8] = 2048;
        *v174 = v51 + 5;
        *&v174[8] = 2048;
        *&v174[10] = v22;
        *&v174[18] = 1024;
        *&v174[20] = 13;
        *&v174[24] = 1024;
        *&v174[26] = v51;
        v52 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v168 = 0;
        if (__nwlog_fault(v52, &type, &v168))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v53 = gLogObj;
            v54 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136447490;
              v171 = "nw_necp_append_tlv";
              v172 = 2048;
              *v173 = v21;
              *&v173[8] = 2048;
              *v174 = v51 + 5;
              *&v174[8] = 2048;
              *&v174[10] = v166;
              *&v174[18] = 1024;
              *&v174[20] = 13;
              *&v174[24] = 1024;
              *&v174[26] = v51;
              v55 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u";
LABEL_120:
              _os_log_impl(&dword_181A37000, v53, v54, v55, buf, 0x36u);
            }
          }

          else if (v168 == 1)
          {
            v57 = a1;
            v58 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v53 = gLogObj;
            v54 = type;
            v59 = os_log_type_enabled(gLogObj, type);
            if (v58)
            {
              if (v59)
              {
                *buf = 136447746;
                v171 = "nw_necp_append_tlv";
                v172 = 2048;
                *v173 = v21;
                *&v173[8] = 2048;
                *v174 = v51 + 5;
                *&v174[8] = 2048;
                *&v174[10] = v166;
                *&v174[18] = 1024;
                *&v174[20] = 13;
                *&v174[24] = 1024;
                *&v174[26] = v51;
                *&v174[30] = 2082;
                *&v174[32] = v58;
                _os_log_impl(&dword_181A37000, v53, v54, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
              }

              free(v58);
              a1 = v57;
              goto LABEL_121;
            }

            a1 = v57;
            if (v59)
            {
              *buf = 136447490;
              v171 = "nw_necp_append_tlv";
              v172 = 2048;
              *v173 = v21;
              *&v173[8] = 2048;
              *v174 = v51 + 5;
              *&v174[8] = 2048;
              *&v174[10] = v166;
              *&v174[18] = 1024;
              *&v174[20] = 13;
              *&v174[24] = 1024;
              *&v174[26] = v51;
              v55 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace";
              goto LABEL_120;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v53 = gLogObj;
            v54 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              *buf = 136447490;
              v171 = "nw_necp_append_tlv";
              v172 = 2048;
              *v173 = v21;
              *&v173[8] = 2048;
              *v174 = v51 + 5;
              *&v174[8] = 2048;
              *&v174[10] = v166;
              *&v174[18] = 1024;
              *&v174[20] = 13;
              *&v174[24] = 1024;
              *&v174[26] = v51;
              v55 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded";
              goto LABEL_120;
            }
          }
        }

LABEL_121:
        if (v52)
        {
          free(v52);
        }

        v21 = 0;
        v56 = v167;
        goto LABEL_124;
      }

      *v21 = 13;
      *(v21 + 1) = v51;
      if (v50 != -1)
      {
        memcpy((v21 + 5), v16, v51);
      }

      v21 += v51 + 5;
LABEL_109:
      v56 = v167;
      if (v164)
      {
        goto LABEL_147;
      }

      goto LABEL_125;
    }

    v105 = a1;
    __nwlog_obj();
    *buf = 136447234;
    v171 = "nw_necp_append_tlv";
    v172 = 2048;
    *v173 = v21;
    *&v173[8] = 2048;
    *v174 = v22;
    *&v174[8] = 1024;
    *&v174[10] = 13;
    *&v174[14] = 1024;
    *&v174[16] = v51;
    v106 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v168 = 0;
    v56 = v167;
    if (!__nwlog_fault(v106, &type, &v168))
    {
      goto LABEL_306;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v107 = __nwlog_obj();
      v108 = type;
      if (os_log_type_enabled(v107, type))
      {
        *buf = 136447234;
        v171 = "nw_necp_append_tlv";
        v172 = 2048;
        *v173 = v21;
        *&v173[8] = 2048;
        *v174 = v166;
        *&v174[8] = 1024;
        *&v174[10] = 13;
        *&v174[14] = 1024;
        *&v174[16] = v51;
        v109 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u";
LABEL_305:
        _os_log_impl(&dword_181A37000, v107, v108, v109, buf, 0x2Cu);
      }
    }

    else if (v168 == 1)
    {
      v140 = __nw_create_backtrace_string();
      v107 = __nwlog_obj();
      v108 = type;
      v141 = os_log_type_enabled(v107, type);
      if (v140)
      {
        if (v141)
        {
          *buf = 136447490;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v166;
          *&v174[8] = 1024;
          *&v174[10] = 13;
          *&v174[14] = 1024;
          *&v174[16] = v51;
          *&v174[20] = 2082;
          *&v174[22] = v140;
          _os_log_impl(&dword_181A37000, v107, v108, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
        }

        free(v140);
        v56 = v167;
        goto LABEL_306;
      }

      v56 = v167;
      if (v141)
      {
        *buf = 136447234;
        v171 = "nw_necp_append_tlv";
        v172 = 2048;
        *v173 = v21;
        *&v173[8] = 2048;
        *v174 = v166;
        *&v174[8] = 1024;
        *&v174[10] = 13;
        *&v174[14] = 1024;
        *&v174[16] = v51;
        v109 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace";
        goto LABEL_305;
      }
    }

    else
    {
      v107 = __nwlog_obj();
      v108 = type;
      v56 = v167;
      if (os_log_type_enabled(v107, type))
      {
        *buf = 136447234;
        v171 = "nw_necp_append_tlv";
        v172 = 2048;
        *v173 = v21;
        *&v173[8] = 2048;
        *v174 = v166;
        *&v174[8] = 1024;
        *&v174[10] = 13;
        *&v174[14] = 1024;
        *&v174[16] = v51;
        v109 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded";
        goto LABEL_305;
      }
    }

LABEL_306:
    if (v106)
    {
      free(v106);
    }

    v21 = 0;
    a1 = v105;
    goto LABEL_124;
  }

  __nwlog_obj();
  *buf = 136446210;
  v171 = "nw_necp_append_tlv";
  v97 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v168 = 0;
  v56 = v167;
  if (__nwlog_fault(v97, &type, &v168))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v98 = __nwlog_obj();
      v99 = type;
      if (os_log_type_enabled(v98, type))
      {
        *buf = 136446210;
        v171 = "nw_necp_append_tlv";
        v100 = "%{public}s called with null tlv_start";
LABEL_292:
        _os_log_impl(&dword_181A37000, v98, v99, v100, buf, 0xCu);
      }
    }

    else
    {
      v135 = a1;
      if (v168 == 1)
      {
        v136 = __nw_create_backtrace_string();
        v98 = __nwlog_obj();
        v99 = type;
        v137 = os_log_type_enabled(v98, type);
        if (v136)
        {
          if (v137)
          {
            *buf = 136446466;
            v171 = "nw_necp_append_tlv";
            v172 = 2082;
            *v173 = v136;
            _os_log_impl(&dword_181A37000, v98, v99, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v136);
          a1 = v135;
          v56 = v167;
          goto LABEL_293;
        }

        a1 = v135;
        v56 = v167;
        if (v137)
        {
          *buf = 136446210;
          v171 = "nw_necp_append_tlv";
          v100 = "%{public}s called with null tlv_start, no backtrace";
          goto LABEL_292;
        }
      }

      else
      {
        v98 = __nwlog_obj();
        v99 = type;
        if (os_log_type_enabled(v98, type))
        {
          *buf = 136446210;
          v171 = "nw_necp_append_tlv";
          v100 = "%{public}s called with null tlv_start, backtrace limit exceeded";
          goto LABEL_292;
        }
      }
    }
  }

LABEL_293:
  if (v97)
  {
    free(v97);
  }

  v21 = 0;
LABEL_124:
  v22 = v166;
  if (v164)
  {
    goto LABEL_147;
  }

LABEL_125:
  v60 = strlen(__s);
  if (!v21)
  {
    __nwlog_obj();
    *buf = 136446210;
    v171 = "nw_necp_append_tlv";
    v118 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v168 = 0;
    if (!__nwlog_fault(v118, &type, &v168))
    {
      goto LABEL_323;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v119 = __nwlog_obj();
      v120 = type;
      if (!os_log_type_enabled(v119, type))
      {
        goto LABEL_323;
      }

      *buf = 136446210;
      v171 = "nw_necp_append_tlv";
      v121 = "%{public}s called with null tlv_start";
    }

    else
    {
      v148 = a1;
      if (v168 == 1)
      {
        v149 = __nw_create_backtrace_string();
        v119 = __nwlog_obj();
        v120 = type;
        v150 = os_log_type_enabled(v119, type);
        if (v149)
        {
          if (v150)
          {
            *buf = 136446466;
            v171 = "nw_necp_append_tlv";
            v172 = 2082;
            *v173 = v149;
            _os_log_impl(&dword_181A37000, v119, v120, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v149);
          a1 = v148;
          v56 = v167;
          goto LABEL_323;
        }

        a1 = v148;
        v56 = v167;
        if (!v150)
        {
LABEL_323:
          if (v118)
          {
            free(v118);
          }

          goto LABEL_147;
        }

        *buf = 136446210;
        v171 = "nw_necp_append_tlv";
        v121 = "%{public}s called with null tlv_start, no backtrace";
      }

      else
      {
        v119 = __nwlog_obj();
        v120 = type;
        v56 = v167;
        if (!os_log_type_enabled(v119, type))
        {
          goto LABEL_323;
        }

        *buf = 136446210;
        v171 = "nw_necp_append_tlv";
        v121 = "%{public}s called with null tlv_start, backtrace limit exceeded";
      }
    }

    _os_log_impl(&dword_181A37000, v119, v120, v121, buf, 0xCu);
    goto LABEL_323;
  }

  v61 = (v60 + 1);
  if (v21 >= v22)
  {
    v127 = a1;
    __nwlog_obj();
    *buf = 136447234;
    v171 = "nw_necp_append_tlv";
    v172 = 2048;
    *v173 = v21;
    *&v173[8] = 2048;
    *v174 = v22;
    *&v174[8] = 1024;
    *&v174[10] = 12;
    *&v174[14] = 1024;
    *&v174[16] = v61;
    v128 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v168 = 0;
    if (__nwlog_fault(v128, &type, &v168))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v129 = __nwlog_obj();
        v130 = type;
        if (os_log_type_enabled(v129, type))
        {
          *buf = 136447234;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v166;
          *&v174[8] = 1024;
          *&v174[10] = 12;
          *&v174[14] = 1024;
          *&v174[16] = v61;
          v131 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u";
LABEL_333:
          _os_log_impl(&dword_181A37000, v129, v130, v131, buf, 0x2Cu);
        }
      }

      else if (v168 == 1)
      {
        v153 = __nw_create_backtrace_string();
        v129 = __nwlog_obj();
        v130 = type;
        v154 = os_log_type_enabled(v129, type);
        if (v153)
        {
          if (v154)
          {
            *buf = 136447490;
            v171 = "nw_necp_append_tlv";
            v172 = 2048;
            *v173 = v21;
            *&v173[8] = 2048;
            *v174 = v166;
            *&v174[8] = 1024;
            *&v174[10] = 12;
            *&v174[14] = 1024;
            *&v174[16] = v61;
            *&v174[20] = 2082;
            *&v174[22] = v153;
            _os_log_impl(&dword_181A37000, v129, v130, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
          }

          free(v153);
          v56 = v167;
          goto LABEL_334;
        }

        v56 = v167;
        if (v154)
        {
          *buf = 136447234;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v166;
          *&v174[8] = 1024;
          *&v174[10] = 12;
          *&v174[14] = 1024;
          *&v174[16] = v61;
          v131 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace";
          goto LABEL_333;
        }
      }

      else
      {
        v129 = __nwlog_obj();
        v130 = type;
        v56 = v167;
        if (os_log_type_enabled(v129, type))
        {
          *buf = 136447234;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v166;
          *&v174[8] = 1024;
          *&v174[10] = 12;
          *&v174[14] = 1024;
          *&v174[16] = v61;
          v131 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded";
          goto LABEL_333;
        }
      }
    }

LABEL_334:
    if (v128)
    {
      free(v128);
    }

    a1 = v127;
    goto LABEL_147;
  }

  if (v22 - v21 < v61 + 5)
  {
    v62 = a1;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136447490;
    v171 = "nw_necp_append_tlv";
    v172 = 2048;
    *v173 = v21;
    *&v173[8] = 2048;
    *v174 = v61 + 5;
    *&v174[8] = 2048;
    *&v174[10] = v22;
    *&v174[18] = 1024;
    *&v174[20] = 12;
    *&v174[24] = 1024;
    *&v174[26] = v61;
    v63 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v168 = 0;
    if (__nwlog_fault(v63, &type, &v168))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v64 = gLogObj;
        v65 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136447490;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v61 + 5;
          *&v174[8] = 2048;
          *&v174[10] = v166;
          *&v174[18] = 1024;
          *&v174[20] = 12;
          *&v174[24] = 1024;
          *&v174[26] = v61;
          v66 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u";
LABEL_143:
          _os_log_impl(&dword_181A37000, v64, v65, v66, buf, 0x36u);
        }
      }

      else if (v168 == 1)
      {
        v67 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v64 = gLogObj;
        v65 = type;
        v68 = os_log_type_enabled(gLogObj, type);
        if (v67)
        {
          if (v68)
          {
            *buf = 136447746;
            v171 = "nw_necp_append_tlv";
            v172 = 2048;
            *v173 = v21;
            *&v173[8] = 2048;
            *v174 = v61 + 5;
            *&v174[8] = 2048;
            *&v174[10] = v166;
            *&v174[18] = 1024;
            *&v174[20] = 12;
            *&v174[24] = 1024;
            *&v174[26] = v61;
            *&v174[30] = 2082;
            *&v174[32] = v67;
            _os_log_impl(&dword_181A37000, v64, v65, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
          }

          free(v67);
          v56 = v167;
          goto LABEL_144;
        }

        v56 = v167;
        if (v68)
        {
          *buf = 136447490;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v61 + 5;
          *&v174[8] = 2048;
          *&v174[10] = v166;
          *&v174[18] = 1024;
          *&v174[20] = 12;
          *&v174[24] = 1024;
          *&v174[26] = v61;
          v66 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace";
          goto LABEL_143;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v64 = gLogObj;
        v65 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          *buf = 136447490;
          v171 = "nw_necp_append_tlv";
          v172 = 2048;
          *v173 = v21;
          *&v173[8] = 2048;
          *v174 = v61 + 5;
          *&v174[8] = 2048;
          *&v174[10] = v166;
          *&v174[18] = 1024;
          *&v174[20] = 12;
          *&v174[24] = 1024;
          *&v174[26] = v61;
          v66 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded";
          goto LABEL_143;
        }
      }
    }

LABEL_144:
    if (v63)
    {
      free(v63);
    }

    a1 = v62;
    goto LABEL_147;
  }

  *v21 = 12;
  *(v21 + 1) = v61;
  if (v60 != -1)
  {
    memcpy((v21 + 5), __s, v61);
  }

LABEL_147:
  if ((setsockopt(*(a1 + 188), 0xFFFF, 4361, v56, v9) & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG) || gLogFDOverride != -1)
    {
      v69 = _nw_parameters_copy_extended_description(v163);
      if ((*(a1 + 317) & 0x80) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v70 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
        {
          v71 = *(a1 + 188);
          v72 = v160;
          v73 = v72;
          v74 = a1;
          if (v161)
          {
            logging_description = _nw_endpoint_get_logging_description(v72);

            v76 = v73;
            v77 = _nw_endpoint_get_known_tracker_name(v76);

            v78 = _nw_endpoint_get_tracker_owner(v76);
          }

          else
          {
            v77 = 0;
            v78 = 0;
            logging_description = "<NULL>";
          }

          *buf = 136448258;
          v171 = "nw_protocol_socket_set_necp_attributes";
          v172 = 2082;
          *v173 = v74 + 324;
          *&v173[8] = 1024;
          *v174 = v71;
          *&v174[4] = 2082;
          *&v174[6] = v69;
          *&v174[14] = 2082;
          *&v174[16] = logging_description;
          *&v174[24] = 2080;
          *&v174[26] = v77;
          *&v174[34] = 2080;
          *&v174[36] = v78;
          v175 = 1040;
          v176 = v9;
          v177 = 2096;
          v56 = v167;
          v178 = v167;
          _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s setsockopt %d SO_NECP_ATTRIBUTES\nparameters: %{public}s, endpoint: %{public}s %s %s\n%{network:data}.*P", buf, 0x54u);
        }
      }

      if (v69)
      {
        free(v69);
      }
    }

LABEL_176:
    if (!v56)
    {
      return;
    }

    goto LABEL_177;
  }

  v79 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v79 == 22 || v79 == 42)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v80 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_176;
    }

    v81 = *(a1 + 188);
    *buf = 136447234;
    v171 = "nw_protocol_socket_set_necp_attributes";
    v172 = 1024;
    *v173 = v81;
    *&v173[4] = 1040;
    *&v173[6] = v9;
    *v174 = 2096;
    *&v174[2] = v56;
    *&v174[10] = 1024;
    *&v174[12] = v79;
    _os_log_impl(&dword_181A37000, v80, OS_LOG_TYPE_ERROR, "%{public}s setsockopt %d SO_NECP_ATTRIBUTES failed:\n%{network:data}.*P %{darwin.errno}d", buf, 0x28u);
    if (!v56)
    {
      return;
    }

LABEL_177:
    free(v56);
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v82 = *(a1 + 188);
  *buf = 136447234;
  v171 = "nw_protocol_socket_set_necp_attributes";
  v172 = 1024;
  *v173 = v82;
  *&v173[4] = 1040;
  *&v173[6] = v9;
  *v174 = 2096;
  *&v174[2] = v56;
  *&v174[10] = 1024;
  *&v174[12] = v79;
  v83 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v168 = 0;
  if (__nwlog_fault(v83, &type, &v168))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v84 = gLogObj;
      v85 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_182;
      }

      v86 = *(a1 + 188);
      *buf = 136447234;
      v171 = "nw_protocol_socket_set_necp_attributes";
      v172 = 1024;
      *v173 = v86;
      *&v173[4] = 1040;
      *&v173[6] = v9;
      *v174 = 2096;
      *&v174[2] = v167;
      *&v174[10] = 1024;
      *&v174[12] = v79;
      v87 = "%{public}s setsockopt %d SO_NECP_ATTRIBUTES failed:\n%{network:data}.*P %{darwin.errno}d";
LABEL_181:
      _os_log_impl(&dword_181A37000, v84, v85, v87, buf, 0x28u);
      goto LABEL_182;
    }

    if (v168 != 1)
    {
      v84 = __nwlog_obj();
      v85 = type;
      if (!os_log_type_enabled(v84, type))
      {
        goto LABEL_182;
      }

      v91 = *(a1 + 188);
      *buf = 136447234;
      v171 = "nw_protocol_socket_set_necp_attributes";
      v172 = 1024;
      *v173 = v91;
      *&v173[4] = 1040;
      *&v173[6] = v9;
      *v174 = 2096;
      *&v174[2] = v167;
      *&v174[10] = 1024;
      *&v174[12] = v79;
      v87 = "%{public}s setsockopt %d SO_NECP_ATTRIBUTES failed:\n%{network:data}.*P %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_181;
    }

    v88 = __nw_create_backtrace_string();
    v84 = __nwlog_obj();
    v85 = type;
    v89 = os_log_type_enabled(v84, type);
    if (!v88)
    {
      if (!v89)
      {
        goto LABEL_182;
      }

      v92 = *(a1 + 188);
      *buf = 136447234;
      v171 = "nw_protocol_socket_set_necp_attributes";
      v172 = 1024;
      *v173 = v92;
      *&v173[4] = 1040;
      *&v173[6] = v9;
      *v174 = 2096;
      *&v174[2] = v167;
      *&v174[10] = 1024;
      *&v174[12] = v79;
      v87 = "%{public}s setsockopt %d SO_NECP_ATTRIBUTES failed:\n%{network:data}.*P %{darwin.errno}d, no backtrace";
      goto LABEL_181;
    }

    if (v89)
    {
      v90 = *(a1 + 188);
      *buf = 136447490;
      v171 = "nw_protocol_socket_set_necp_attributes";
      v172 = 1024;
      *v173 = v90;
      *&v173[4] = 1040;
      *&v173[6] = v9;
      *v174 = 2096;
      *&v174[2] = v167;
      *&v174[10] = 1024;
      *&v174[12] = v79;
      *&v174[16] = 2082;
      *&v174[18] = v88;
      _os_log_impl(&dword_181A37000, v84, v85, "%{public}s setsockopt %d SO_NECP_ATTRIBUTES failed:\n%{network:data}.*P %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x32u);
    }

    free(v88);
  }

LABEL_182:
  if (v83)
  {
    free(v83);
  }

  v56 = v167;
  if (v167)
  {
    goto LABEL_177;
  }
}

uint64_t nw_socket_connect(nw_protocol *a1, nw_protocol *a2)
{
  v198 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
    handle = a1->handle;
    v4 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v5 = 1;
      goto LABEL_11;
    }

    v4 = *a1[1].flow_id;
    if (v4)
    {
LABEL_6:
      callbacks = v4[1].callbacks;
      v5 = 0;
      if (callbacks)
      {
        v4[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v5 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v7 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_socket_connect";
        v8 = _os_log_send_and_compose_impl();
        LOBYTE(type.sae_srcif) = 16;
        v174[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v8, &type, v174))
        {
          goto LABEL_53;
        }

        if (LOBYTE(type.sae_srcif) == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          sae_srcif = type.sae_srcif;
          if (!os_log_type_enabled(gLogObj, type.sae_srcif))
          {
            goto LABEL_53;
          }

          *buf = 136446210;
          *&buf[4] = "nw_socket_connect";
          v11 = "%{public}s called with null socket_handler";
LABEL_51:
          v26 = v9;
          v27 = sae_srcif;
LABEL_52:
          _os_log_impl(&dword_181A37000, v26, v27, v11, buf, 0xCu);
          goto LABEL_53;
        }

        if (v174[0] != OS_LOG_TYPE_INFO)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v9 = gLogObj;
          sae_srcif = type.sae_srcif;
          if (!os_log_type_enabled(gLogObj, type.sae_srcif))
          {
            goto LABEL_53;
          }

          *buf = 136446210;
          *&buf[4] = "nw_socket_connect";
          v11 = "%{public}s called with null socket_handler, backtrace limit exceeded";
          goto LABEL_51;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type.sae_srcif;
        v20 = os_log_type_enabled(gLogObj, type.sae_srcif);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            *&buf[4] = "nw_socket_connect";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_53;
        }

        if (!v20)
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        *&buf[4] = "nw_socket_connect";
        v11 = "%{public}s called with null socket_handler, no backtrace";
        goto LABEL_60;
      }

      v7 = *a1[1].flow_id;
    }

    if ((HIDWORD(v7[4].callbacks) & 0x80000000) != 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      *&buf[4] = "nw_socket_connect";
      v8 = _os_log_send_and_compose_impl();
      LOBYTE(type.sae_srcif) = 16;
      v174[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v8, &type, v174))
      {
        goto LABEL_53;
      }

      if (LOBYTE(type.sae_srcif) == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        sae_srcif = type.sae_srcif;
        if (!os_log_type_enabled(gLogObj, type.sae_srcif))
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        *&buf[4] = "nw_socket_connect";
        v11 = "%{public}s called with null socket_handler->fd";
        goto LABEL_51;
      }

      if (v174[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        sae_srcif = type.sae_srcif;
        if (!os_log_type_enabled(gLogObj, type.sae_srcif))
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        *&buf[4] = "nw_socket_connect";
        v11 = "%{public}s called with null socket_handler->fd, backtrace limit exceeded";
        goto LABEL_51;
      }

      v21 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type.sae_srcif;
      v22 = os_log_type_enabled(gLogObj, type.sae_srcif);
      if (v21)
      {
        if (v22)
        {
          *buf = 136446466;
          *&buf[4] = "nw_socket_connect";
          *&buf[12] = 2082;
          *&buf[14] = v21;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null socket_handler->fd, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v21);
        if (!v8)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

      if (!v22)
      {
LABEL_53:
        if (!v8)
        {
LABEL_55:
          result = 0;
          goto LABEL_309;
        }

LABEL_54:
        free(v8);
        goto LABEL_55;
      }

      *buf = 136446210;
      *&buf[4] = "nw_socket_connect";
      v11 = "%{public}s called with null socket_handler->fd, no backtrace";
LABEL_60:
      v26 = v18;
      v27 = v19;
      goto LABEL_52;
    }

    p_output_handler = &v7[1].output_handler;
    v13 = (&v7[6].callbacks + 5);
    v14 = *(&v7[6].callbacks + 5);
    if (v14)
    {
      goto LABEL_156;
    }

    if (v7[3].output_handler)
    {
      if ((v14 & 0x80) != 0)
      {
        goto LABEL_308;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v15 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_308;
      }

      *buf = 136446466;
      *&buf[4] = "nw_socket_setup_input_events";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 420;
      v16 = "%{public}s %{public}s Already set up input event notification";
      goto LABEL_26;
    }

    if ((v14 & 0x80) == 0 && gLogDatapath == 1)
    {
      v150 = a2;
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v151 = gconnectionLogObj;
      v152 = os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG);
      a2 = v150;
      if (v152)
      {
        callbacks_high = HIDWORD(v7[4].callbacks);
        *buf = 136446722;
        *&buf[4] = "nw_socket_setup_input_events";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 420;
        *&buf[22] = 1024;
        LODWORD(v185) = callbacks_high;
        _os_log_impl(&dword_181A37000, v151, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Setting up read events on %d", buf, 0x1Cu);
        a2 = v150;
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    *&v185 = __Block_byref_object_copy__67231;
    *(&v185 + 1) = __Block_byref_object_dispose__67232;
    v23 = v7->handle;
    v24 = v7;
    if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v24 = *v7[1].flow_id) != 0)
    {
      v29 = v24[1].callbacks;
      if (v29)
      {
        v24[1].callbacks = (&v29->add_input_handler + 1);
      }

      *v186 = v7;
      v25 = v186[8] | 1;
    }

    else
    {
      *v186 = v7;
      v25 = v186[8] & 0xFE;
    }

    v186[8] = v25;
    v169 = a2;
    *&type.sae_srcif = 0;
    type.sae_srcaddr = &type;
    *&type.sae_srcaddrlen = 0x3802000000;
    type.sae_dstaddr = __Block_byref_object_copy__37_67233;
    *&type.sae_dstaddrlen = __Block_byref_object_dispose__38_67234;
    default_input_handler = v7[2].default_input_handler;
    if (default_input_handler)
    {
      default_input_handler = os_retain(default_input_handler);
    }

    object = default_input_handler;
    v183 |= 1u;
    v31 = v7[3].default_input_handler;
    v32 = HIDWORD(v7[4].callbacks);
    *v174 = MEMORY[0x1E69E9820];
    v175 = 0x40000000;
    v176 = ___ZL28nw_socket_setup_input_eventsP9nw_socket_block_invoke;
    v177 = &unk_1E6A398E0;
    p_type = &type;
    v180 = &v7[1].output_handler;
    v178 = buf;
    source = nw_queue_context_create_source(v31, v32, 1, 0, v174, 0);
    v7[3].output_handler = source;
    if (source)
    {
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      *v13 &= ~0x400u;
      nw_queue_resume_source(v7[3].output_handler, v33);
      goto LABEL_92;
    }

    __nwlog_obj();
    *v194 = 136446210;
    v195 = "nw_socket_setup_input_events";
    v35 = _os_log_send_and_compose_impl();
    v173 = OS_LOG_TYPE_ERROR;
    v172 = 0;
    if (__nwlog_fault(v35, &v173, &v172))
    {
      if (v173 == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = v173;
        if (os_log_type_enabled(v37, v173))
        {
          *v194 = 136446210;
          v195 = "nw_socket_setup_input_events";
          v39 = "%{public}s nw_queue_context_create_source input_source failed";
LABEL_87:
          _os_log_impl(&dword_181A37000, v37, v38, v39, v194, 0xCu);
        }
      }

      else if (v172 == 1)
      {
        v40 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v38 = v173;
        v41 = os_log_type_enabled(v37, v173);
        if (v40)
        {
          if (v41)
          {
            *v194 = 136446466;
            v195 = "nw_socket_setup_input_events";
            v196 = 2082;
            v197 = v40;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s nw_queue_context_create_source input_source failed, dumping backtrace:%{public}s", v194, 0x16u);
          }

          free(v40);
          goto LABEL_88;
        }

        if (v41)
        {
          *v194 = 136446210;
          v195 = "nw_socket_setup_input_events";
          v39 = "%{public}s nw_queue_context_create_source input_source failed, no backtrace";
          goto LABEL_87;
        }
      }

      else
      {
        v37 = __nwlog_obj();
        v38 = v173;
        if (os_log_type_enabled(v37, v173))
        {
          *v194 = 136446210;
          v195 = "nw_socket_setup_input_events";
          v39 = "%{public}s nw_queue_context_create_source input_source failed, backtrace limit exceeded";
          goto LABEL_87;
        }
      }
    }

LABEL_88:
    if (v35)
    {
      free(v35);
    }

    name = v7[3].identifier->name;
    p_output_handler = &v7[1].output_handler;
    if (name)
    {
      nw_queue_cancel_source(name, v36);
      v7[3].identifier = 0;
    }

LABEL_92:
    _Block_object_dispose(&type, 8);
    if ((v183 & 1) != 0 && object)
    {
      os_release(object);
    }

    _Block_object_dispose(buf, 8);
    if (v186[8])
    {
      v43 = *v186;
      if (*v186)
      {
        v44 = *(*v186 + 40);
        if (v44 == &nw_protocol_ref_counted_handle || v44 == &nw_protocol_ref_counted_additional_handle && (v43 = *(*v186 + 64)) != 0)
        {
          v45 = *(v43 + 88);
          if (v45)
          {
            v46 = v45 - 1;
            *(v43 + 88) = v46;
            if (!v46)
            {
              v47 = *(v43 + 64);
              if (v47)
              {
                *(v43 + 64) = 0;
                v47[2](v47);
                _Block_release(v47);
              }

              if (*(v43 + 72))
              {
                v48 = *(v43 + 64);
                if (v48)
                {
                  _Block_release(v48);
                }
              }

              free(v43);
            }
          }
        }
      }
    }

    if (!source)
    {
      goto LABEL_308;
    }

    if (v7[3].handle)
    {
      if ((*v13 & 0x80) != 0)
      {
        goto LABEL_308;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v15 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_308;
      }

      *buf = 136446466;
      *&buf[4] = "nw_socket_setup_output_events";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 420;
      v16 = "%{public}s %{public}s Already set up output event notification";
LABEL_26:
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x16u);
LABEL_308:
      result = 0;
      goto LABEL_309;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    *&v185 = __Block_byref_object_copy__67231;
    *(&v185 + 1) = __Block_byref_object_dispose__67232;
    *&type.sae_srcif = v7;
    nw::share(v186, &type);
    *&type.sae_srcif = 0;
    type.sae_srcaddr = &type;
    *&type.sae_srcaddrlen = 0x3802000000;
    type.sae_dstaddr = __Block_byref_object_copy__37_67233;
    *&type.sae_dstaddrlen = __Block_byref_object_dispose__38_67234;
    v49 = v7[2].default_input_handler;
    if (v49)
    {
      v49 = os_retain(v49);
    }

    object = v49;
    v183 |= 1u;
    v50 = v7[3].default_input_handler;
    v51 = HIDWORD(v7[4].callbacks);
    *v174 = MEMORY[0x1E69E9820];
    v175 = 0x40000000;
    v176 = ___ZL29nw_socket_setup_output_eventsP9nw_socket_block_invoke;
    v177 = &unk_1E6A39908;
    p_type = buf;
    v180 = p_output_handler;
    v178 = &type;
    v52 = nw_queue_context_create_source(v50, v51, 2, 0, v174, 0);
    v7[3].handle = v52;
    if (v52)
    {
      *v13 &= ~0x800u;
LABEL_137:
      _Block_object_dispose(&type, 8);
      if ((v183 & 1) != 0 && object)
      {
        os_release(object);
      }

      _Block_object_dispose(buf, 8);
      if (v186[8])
      {
        v61 = *v186;
        if (*v186)
        {
          v62 = *(*v186 + 40);
          if (v62 == &nw_protocol_ref_counted_handle || v62 == &nw_protocol_ref_counted_additional_handle && (v61 = *(*v186 + 64)) != 0)
          {
            v63 = *(v61 + 88);
            if (v63)
            {
              v64 = v63 - 1;
              *(v61 + 88) = v64;
              if (!v64)
              {
                v65 = *(v61 + 64);
                if (v65)
                {
                  *(v61 + 64) = 0;
                  v65[2](v65);
                  _Block_release(v65);
                }

                if (*(v61 + 72))
                {
                  v66 = *(v61 + 64);
                  if (v66)
                  {
                    _Block_release(v66);
                  }
                }

                free(v61);
              }
            }
          }
        }
      }

      if (!v52)
      {
        goto LABEL_308;
      }

      result = nw_socket_add_socket_events(p_output_handler, 1, HIDWORD(v7[4].output_handler), 1);
      if (!result)
      {
        goto LABEL_309;
      }

      v14 = *v13 | 1;
      *v13 = v14;
      a2 = v169;
LABEL_156:
      if ((v14 & 4) != 0)
      {
        if (a2)
        {
          v78 = a2->callbacks;
          if (v78)
          {
            connected = v78->connected;
            if (connected)
            {
              connected(a2, v2);
              result = 1;
              goto LABEL_309;
            }
          }
        }
      }

      else
      {
        if ((v14 & 2) == 0)
        {
          v170 = a2;
          remote = nw_socket_get_remote(v2);
          address = nw_endpoint_get_address(remote);
          if (address)
          {
            v69 = address;
            v70 = mach_continuous_time();
            if (v70 <= 1)
            {
              v71 = 1;
            }

            else
            {
              v71 = v70;
            }

            *v7[2].flow_id = v71;
            if (_nw_signposts_once != -1)
            {
              dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
            }

            if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
            {
              kdebug_trace();
            }

            sa_family = v69->sa_family;
            if (sa_family != 30 && sa_family != 2)
            {
              v85 = connect(HIDWORD(v7[4].callbacks), v69, v69->sa_len);
              if (v85 < 0)
              {
                v86 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                *v13 |= 2u;
                v87 = "connect";
                goto LABEL_269;
              }

              v86 = 0;
              v87 = "connect";
LABEL_268:
              v116 = *v13;
              *v13 |= 2u;
              if (!v85)
              {
                if ((v116 & 0x80000000) == 0)
                {
                  *v13 = v116 | 6;
                }

                nw_socket_add_socket_events(p_output_handler, 1, HIDWORD(v7[4].output_handler), 1);
                nw_socket_fillout_socket_properties(v2);
                nw_socket_internal_connect(p_output_handler);
                result = 1;
                goto LABEL_309;
              }

LABEL_269:
              result = 1;
              if ((v85 & 0x80000000) == 0 || v86 == 36)
              {
                goto LABEL_309;
              }

              if (v86 == 47 && LODWORD(v7[4].output_handler) == 2)
              {
                v117 = v69->sa_family;
                if (v117 == 30)
                {
                  if (v69->sa_data[6] == 255)
                  {
LABEL_276:
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v118 = gconnectionLogObj;
                    if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_307;
                    }

                    *buf = 136446978;
                    *&buf[4] = "nw_socket_connect";
                    *&buf[12] = 2082;
                    *&buf[14] = v7 + 420;
                    *&buf[22] = 2082;
                    *&v185 = v87;
                    WORD4(v185) = 1024;
                    *(&v185 + 10) = 47;
                    v119 = "%{public}s %{public}s %{public}s failed: multicast addresses not supported on stream sockets %{darwin.errno}d";
                    goto LABEL_306;
                  }
                }

                else if (v117 == 2 && (*&v69->sa_data[2] & 0xF0) == 0xE0)
                {
                  goto LABEL_276;
                }
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v120 = gconnectionLogObj;
              if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
              {
                v121 = HIDWORD(v7[4].callbacks);
                v122 = *v13 < 0;
                *buf = 136447490;
                *&buf[4] = "nw_socket_connect";
                if (v122)
                {
                  v123 = ", tfo";
                }

                else
                {
                  v123 = "";
                }

                *&buf[12] = 2082;
                *&buf[14] = v7 + 420;
                *&buf[22] = 2082;
                *&v185 = v87;
                WORD4(v185) = 1024;
                *(&v185 + 10) = v121;
                HIWORD(v185) = 2082;
                *v186 = v123;
                *&v186[8] = 1024;
                LODWORD(v187) = v86;
                _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_ERROR, "%{public}s %{public}s %{public}s failed (fd %d%{public}s) %{darwin.errno}d", buf, 0x36u);
              }

              if (v86 <= 0x3D && ((1 << v86) & 0x300F004000002046) != 0 || v86 - 64 <= 0x26 && ((1 << (v86 - 64)) & 0x4000000003) != 0)
              {
                v118 = __nwlog_obj();
                if (!os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
                {
LABEL_307:
                  nw_socket_internal_error(p_output_handler);
                  goto LABEL_308;
                }

                v124 = " (tfo)";
                *&buf[4] = "nw_socket_connect";
                v125 = *v13;
                *buf = 136446978;
                *&buf[12] = 2082;
                if (v125 >= 0)
                {
                  v124 = "";
                }

                *&buf[14] = v87;
                *&buf[22] = 2082;
                *&v185 = v124;
                WORD4(v185) = 1024;
                *(&v185 + 10) = v86;
                v119 = "%{public}s %{public}s failed%{public}s %{darwin.errno}d";
LABEL_306:
                _os_log_impl(&dword_181A37000, v118, OS_LOG_TYPE_ERROR, v119, buf, 0x26u);
                goto LABEL_307;
              }

              v168 = p_output_handler;
              __nwlog_obj();
              v132 = *v13;
              *buf = 136446978;
              *&buf[4] = "nw_socket_connect";
              *&buf[12] = 2082;
              if (v132 < 0)
              {
                v133 = " (tfo)";
              }

              else
              {
                v133 = "";
              }

              *&buf[14] = v87;
              *&buf[22] = 2082;
              *&v185 = v133;
              WORD4(v185) = 1024;
              *(&v185 + 10) = v86;
              v134 = _os_log_send_and_compose_impl();
              LOBYTE(type.sae_srcif) = 16;
              v174[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v134, &type, v174))
              {
                if (LOBYTE(type.sae_srcif) == 17)
                {
                  v135 = __nwlog_obj();
                  v136 = type.sae_srcif;
                  if (os_log_type_enabled(v135, type.sae_srcif))
                  {
                    v137 = " (tfo)";
                    if (*v13 >= 0)
                    {
                      v137 = "";
                    }

                    *buf = 136446978;
                    *&buf[4] = "nw_socket_connect";
                    *&buf[12] = 2082;
                    *&buf[14] = v87;
                    *&buf[22] = 2082;
                    *&v185 = v137;
                    WORD4(v185) = 1024;
                    *(&v185 + 10) = v86;
                    v138 = "%{public}s %{public}s failed%{public}s %{darwin.errno}d";
LABEL_357:
                    _os_log_impl(&dword_181A37000, v135, v136, v138, buf, 0x26u);
                  }
                }

                else if (v174[0] == OS_LOG_TYPE_INFO)
                {
                  v143 = __nw_create_backtrace_string();
                  v135 = __nwlog_obj();
                  v136 = type.sae_srcif;
                  v144 = os_log_type_enabled(v135, type.sae_srcif);
                  if (v143)
                  {
                    if (v144)
                    {
                      v145 = " (tfo)";
                      if (*v13 >= 0)
                      {
                        v145 = "";
                      }

                      *buf = 136447234;
                      *&buf[4] = "nw_socket_connect";
                      *&buf[12] = 2082;
                      *&buf[14] = v87;
                      *&buf[22] = 2082;
                      *&v185 = v145;
                      WORD4(v185) = 1024;
                      *(&v185 + 10) = v86;
                      HIWORD(v185) = 2082;
                      *v186 = v143;
                      _os_log_impl(&dword_181A37000, v135, v136, "%{public}s %{public}s failed%{public}s %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x30u);
                    }

                    free(v143);
                    goto LABEL_358;
                  }

                  if (v144)
                  {
                    v149 = " (tfo)";
                    if (*v13 >= 0)
                    {
                      v149 = "";
                    }

                    *buf = 136446978;
                    *&buf[4] = "nw_socket_connect";
                    *&buf[12] = 2082;
                    *&buf[14] = v87;
                    *&buf[22] = 2082;
                    *&v185 = v149;
                    WORD4(v185) = 1024;
                    *(&v185 + 10) = v86;
                    v138 = "%{public}s %{public}s failed%{public}s %{darwin.errno}d, no backtrace";
                    goto LABEL_357;
                  }
                }

                else
                {
                  v135 = __nwlog_obj();
                  v136 = type.sae_srcif;
                  if (os_log_type_enabled(v135, type.sae_srcif))
                  {
                    v148 = " (tfo)";
                    if (*v13 >= 0)
                    {
                      v148 = "";
                    }

                    *buf = 136446978;
                    *&buf[4] = "nw_socket_connect";
                    *&buf[12] = 2082;
                    *&buf[14] = v87;
                    *&buf[22] = 2082;
                    *&v185 = v148;
                    WORD4(v185) = 1024;
                    *(&v185 + 10) = v86;
                    v138 = "%{public}s %{public}s failed%{public}s %{darwin.errno}d, backtrace limit exceeded";
                    goto LABEL_357;
                  }
                }
              }

LABEL_358:
              if (v134)
              {
                free(v134);
              }

              p_output_handler = v168;
              goto LABEL_307;
            }

            v167 = p_output_handler;
            if ((*v13 & 0x20) != 0)
            {
              v161 = 0;
              v164 = 0;
              v75 = 0;
              goto LABEL_199;
            }

            local = nw_socket_get_local(v2);
            v74 = SHIBYTE(v7[6].callbacks) >= 0 || local == 0;
            v75 = !v74;
            if (v74)
            {
              goto LABEL_185;
            }

            v76 = local;
            if (nw_endpoint_get_type(local) != nw_endpoint_type_address)
            {
              v75 = 0;
              local = v76;
              goto LABEL_211;
            }

            memset(&type, 0, 28);
            if (nw_endpoint_fillout_v4v6_address(v76, &type))
            {
              if ((*v13 & 0x80) == 0)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v77 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_socket_connect";
                  *&buf[12] = 2082;
                  *&buf[14] = v7 + 420;
                  *&buf[22] = 2112;
                  *&v185 = v76;
                  _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_INFO, "%{public}s %{public}s resetting local port for local endpoint %@", buf, 0x20u);
                }
              }

              local = nw_endpoint_create_address_with_port(&type, "0");
LABEL_185:
              if (!local)
              {
                v161 = 0;
                v164 = 0;
LABEL_199:
                v84 = 0;
LABEL_212:
                parameters = nw_socket_get_parameters(v2);
                path = nw_socket_get_path(v2);
                v92 = nw_path_copy_scoped_interface(path);
                v162 = v75;
                if (v92 || (v92 = nw_parameters_copy_required_interface(parameters)) != 0 || (v92 = nw_endpoint_copy_interface(remote)) != 0)
                {
                  v165 = v92;
                  index = _nw_interface_get_index(v92);
                  v163 = 0;
                }

                else
                {
                  v165 = 0;
                  index = 0;
                  v163 = 1;
                }

                v94 = nw_parameters_copy_default_protocol_stack(parameters);
                v95 = nw_protocol_stack_copy_transport_protocol(v94);
                if (v95)
                {
                  v96 = v95;
                  if (_nw_protocol_options_is_tcp(v95))
                  {
                    if (nw_parameters_get_fast_open_enabled(parameters) || _nw_tcp_options_get_enable_fast_open(v96) && !nw_protocol_input_handler_is_connection_flow(v170))
                    {
                      *v13 |= 0x8000u;
                      if (_nw_tcp_options_get_no_fast_open_cookie(v96))
                      {
                        v97 = 7;
                      }

                      else
                      {
                        v97 = 3;
                      }
                    }

                    else
                    {
                      v97 = 0;
                      *v13 &= ~0x8000u;
                    }
                  }

                  else
                  {
                    v97 = 0;
                  }

                  os_release(v96);
                }

                else
                {
                  v97 = 0;
                }

                if (v94)
                {
                  os_release(v94);
                }

                *(&type.sae_srcif + 1) = 0;
                memset(&type.sae_srcaddrlen, 0, 24);
                type.sae_srcif = index;
                type.sae_srcaddr = v84;
                if (v84)
                {
                  sa_len = v84->sa_len;
                }

                else
                {
                  sa_len = 0;
                }

                p_output_handler = v167;
                type.sae_srcaddrlen = sa_len;
                type.sae_dstaddr = v69;
                type.sae_dstaddrlen = v69->sa_len;
                v99 = *v13;
                if ((*v13 & 0x100) != 0)
                {
                  if ((v99 & 0x80) != 0)
                  {
                    goto LABEL_245;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v104 = gconnectionLogObj;
                  if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_245;
                  }

                  v105 = HIDWORD(v7[4].callbacks);
                  *buf = 136448258;
                  *&buf[4] = "nw_socket_connect";
                  *&buf[12] = 2082;
                  *&buf[14] = v7 + 420;
                  *&buf[22] = 1024;
                  LODWORD(v185) = v105;
                  WORD2(v185) = 1024;
                  *(&v185 + 6) = type.sae_srcif;
                  WORD5(v185) = 1040;
                  HIDWORD(v185) = type.sae_srcaddrlen;
                  *v186 = 2096;
                  *&v186[2] = type.sae_srcaddr;
                  LOWORD(v187) = 1040;
                  *(&v187 + 2) = type.sae_dstaddrlen;
                  WORD3(v187) = 2096;
                  *(&v187 + 1) = type.sae_dstaddr;
                  v188 = 1024;
                  LODWORD(sae_dstaddr) = v97;
                  v102 = v104;
                  v103 = OS_LOG_TYPE_DEFAULT;
                }

                else
                {
                  if ((v99 & 0x80) != 0)
                  {
                    goto LABEL_245;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v100 = gconnectionLogObj;
                  if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_245;
                  }

                  v101 = HIDWORD(v7[4].callbacks);
                  *buf = 136448258;
                  *&buf[4] = "nw_socket_connect";
                  *&buf[12] = 2082;
                  *&buf[14] = v7 + 420;
                  *&buf[22] = 1024;
                  LODWORD(v185) = v101;
                  WORD2(v185) = 1024;
                  *(&v185 + 6) = type.sae_srcif;
                  WORD5(v185) = 1040;
                  HIDWORD(v185) = type.sae_srcaddrlen;
                  *v186 = 2096;
                  *&v186[2] = type.sae_srcaddr;
                  LOWORD(v187) = 1040;
                  *(&v187 + 2) = type.sae_dstaddrlen;
                  WORD3(v187) = 2096;
                  *(&v187 + 1) = type.sae_dstaddr;
                  v188 = 1024;
                  LODWORD(sae_dstaddr) = v97;
                  v102 = v100;
                  v103 = OS_LOG_TYPE_DEBUG;
                }

                _os_log_impl(&dword_181A37000, v102, v103, "%{public}s %{public}s Calling connectx(%d, [srcif=%u, srcaddr=%{network:sockaddr}.*P, dstaddr=%{network:sockaddr}.*P], SAE_ASSOCID_ANY, %#x, NULL, 0, NULL, SAE_CONNID_ANY)", buf, 0x48u);
LABEL_245:
                v85 = connectx(HIDWORD(v7[4].callbacks), &type, 0, v97, 0, 0, 0, 0);
                v86 = 0;
                v106 = v165;
                if (v85 < 0)
                {
                  v86 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                  if (v86 != 36)
                  {
                    v107 = v7[2].default_input_handler;
                    v171[0] = MEMORY[0x1E69E9820];
                    v171[1] = 0x40000000;
                    v171[2] = ___ZL17nw_socket_connectP11nw_protocolS0__block_invoke;
                    v171[3] = &__block_descriptor_tmp_29_68218;
                    v171[4] = v167;
                    fd = nw_fd_wrapper_get_fd(v107, v171);
                    is_guarded = nw_fd_wrapper_is_guarded(v7[2].default_input_handler);
                    v110 = " (guarded, corrupt)";
                    if (fd)
                    {
                      v110 = " (guarded)";
                    }

                    v111 = " (corrupt)";
                    if (fd)
                    {
                      v111 = "";
                    }

                    if (is_guarded)
                    {
                      v112 = v110;
                    }

                    else
                    {
                      v112 = v111;
                    }

                    if ((*v13 & 0x80) == 0)
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v113 = gconnectionLogObj;
                      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
                      {
                        v114 = HIDWORD(v7[4].callbacks);
                        *buf = 136448771;
                        *&buf[4] = "nw_socket_connect";
                        *&buf[12] = 2082;
                        *&buf[14] = v7 + 420;
                        *&buf[22] = 1024;
                        LODWORD(v185) = v114;
                        WORD2(v185) = 2082;
                        *(&v185 + 6) = v112;
                        HIWORD(v185) = 1024;
                        *v186 = type.sae_srcif;
                        *&v186[4] = 1040;
                        *&v186[6] = type.sae_srcaddrlen;
                        LOWORD(v187) = 2101;
                        *(&v187 + 2) = type.sae_srcaddr;
                        WORD5(v187) = 1040;
                        HIDWORD(v187) = type.sae_dstaddrlen;
                        v188 = 2101;
                        sae_dstaddr = type.sae_dstaddr;
                        v190 = 1024;
                        v191 = v97;
                        v192 = 1024;
                        v193 = v86;
                        _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_ERROR, "%{public}s %{public}s connectx(%d%{public}s, [srcif=%u, srcaddr=%{sensitive,network:sockaddr}.*P, dstaddr=%{sensitive,network:sockaddr}.*P], SAE_ASSOCID_ANY, %#x, NULL, 0, NULL, SAE_CONNID_ANY) failed: %{darwin.errno}d", buf, 0x58u);
                      }
                    }

                    p_output_handler = v167;
                    v106 = v165;
                  }
                }

                v115 = v163;
                if (!v106)
                {
                  v115 = 1;
                }

                if ((v115 & 1) == 0)
                {
                  os_release(v106);
                }

                if (v164 && (v161 & v162) != 0)
                {
                  os_release(v164);
                }

                v87 = "connectx";
                goto LABEL_268;
              }

LABEL_211:
              v164 = local;
              v84 = nw_endpoint_get_address(local);
              v161 = 1;
              goto LABEL_212;
            }

            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_socket_connect";
            v155 = _os_log_send_and_compose_impl();
            v174[0] = OS_LOG_TYPE_ERROR;
            v194[0] = 0;
            if (__nwlog_fault(v155, v174, v194))
            {
              if (v174[0] == OS_LOG_TYPE_FAULT)
              {
                v156 = __nwlog_obj();
                v157 = v174[0];
                if (os_log_type_enabled(v156, v174[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_socket_connect";
                  v158 = "%{public}s called with null success";
LABEL_388:
                  _os_log_impl(&dword_181A37000, v156, v157, v158, buf, 0xCu);
                }
              }

              else if (v194[0] == 1)
              {
                v159 = __nw_create_backtrace_string();
                v156 = __nwlog_obj();
                v157 = v174[0];
                v160 = os_log_type_enabled(v156, v174[0]);
                if (v159)
                {
                  if (v160)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_socket_connect";
                    *&buf[12] = 2082;
                    *&buf[14] = v159;
                    _os_log_impl(&dword_181A37000, v156, v157, "%{public}s called with null success, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v159);
                  goto LABEL_389;
                }

                if (v160)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_socket_connect";
                  v158 = "%{public}s called with null success, no backtrace";
                  goto LABEL_388;
                }
              }

              else
              {
                v156 = __nwlog_obj();
                v157 = v174[0];
                if (os_log_type_enabled(v156, v174[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_socket_connect";
                  v158 = "%{public}s called with null success, backtrace limit exceeded";
                  goto LABEL_388;
                }
              }
            }

LABEL_389:
            if (v155)
            {
              free(v155);
            }

            result = 0;
            goto LABEL_309;
          }

          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_socket_connect";
          v80 = _os_log_send_and_compose_impl();
          LOBYTE(type.sae_srcif) = 16;
          v174[0] = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v80, &type, v174))
          {
            if (LOBYTE(type.sae_srcif) == 17)
            {
              v81 = __nwlog_obj();
              v82 = type.sae_srcif;
              if (!os_log_type_enabled(v81, type.sae_srcif))
              {
                goto LABEL_287;
              }

              *buf = 136446210;
              *&buf[4] = "nw_socket_connect";
              v83 = "%{public}s called with null remote";
              goto LABEL_286;
            }

            if (v174[0] != OS_LOG_TYPE_INFO)
            {
              v81 = __nwlog_obj();
              v82 = type.sae_srcif;
              if (!os_log_type_enabled(v81, type.sae_srcif))
              {
                goto LABEL_287;
              }

              *buf = 136446210;
              *&buf[4] = "nw_socket_connect";
              v83 = "%{public}s called with null remote, backtrace limit exceeded";
              goto LABEL_286;
            }

            v88 = __nw_create_backtrace_string();
            v81 = __nwlog_obj();
            v82 = type.sae_srcif;
            v89 = os_log_type_enabled(v81, type.sae_srcif);
            if (v88)
            {
              if (v89)
              {
                *buf = 136446466;
                *&buf[4] = "nw_socket_connect";
                *&buf[12] = 2082;
                *&buf[14] = v88;
                _os_log_impl(&dword_181A37000, v81, v82, "%{public}s called with null remote, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v88);
              goto LABEL_287;
            }

            if (v89)
            {
              *buf = 136446210;
              *&buf[4] = "nw_socket_connect";
              v83 = "%{public}s called with null remote, no backtrace";
LABEL_286:
              _os_log_impl(&dword_181A37000, v81, v82, v83, buf, 0xCu);
            }
          }

LABEL_287:
          if (v80)
          {
            free(v80);
          }

          goto LABEL_308;
        }

        if ((v14 & 0x80) == 0 && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v154 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            *&buf[4] = "nw_socket_connect";
            *&buf[12] = 2082;
            *&buf[14] = v7 + 420;
            _os_log_impl(&dword_181A37000, v154, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Suppressing duplicate connect call", buf, 0x16u);
            result = 1;
LABEL_309:
            if ((v5 & 1) == 0)
            {
              v126 = v2->handle;
              if (v126 == &nw_protocol_ref_counted_handle || v126 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
              {
                v127 = v2[1].callbacks;
                if (v127)
                {
                  v128 = (v127 - 1);
                  v2[1].callbacks = v128;
                  if (!v128)
                  {
                    v129 = result;
                    v130 = *v2[1].flow_id;
                    if (v130)
                    {
                      *v2[1].flow_id = 0;
                      v130[2](v130);
                      _Block_release(v130);
                    }

                    if (v2[1].flow_id[8])
                    {
                      v131 = *v2[1].flow_id;
                      if (v131)
                      {
                        _Block_release(v131);
                      }
                    }

                    free(v2);
                    return v129;
                  }
                }
              }
            }

            return result;
          }
        }
      }

      result = 1;
      goto LABEL_309;
    }

    v166 = p_output_handler;
    __nwlog_obj();
    *v194 = 136446210;
    v195 = "nw_socket_setup_output_events";
    v53 = _os_log_send_and_compose_impl();
    v173 = OS_LOG_TYPE_ERROR;
    v172 = 0;
    if (__nwlog_fault(v53, &v173, &v172))
    {
      if (v173 == OS_LOG_TYPE_FAULT)
      {
        v55 = __nwlog_obj();
        v56 = v173;
        if (os_log_type_enabled(v55, v173))
        {
          *v194 = 136446210;
          v195 = "nw_socket_setup_output_events";
          v57 = "%{public}s nw_queue_context_create_source output_source failed";
LABEL_132:
          _os_log_impl(&dword_181A37000, v55, v56, v57, v194, 0xCu);
        }
      }

      else if (v172 == 1)
      {
        v58 = __nw_create_backtrace_string();
        v55 = __nwlog_obj();
        v56 = v173;
        v59 = os_log_type_enabled(v55, v173);
        if (v58)
        {
          if (v59)
          {
            *v194 = 136446466;
            v195 = "nw_socket_setup_output_events";
            v196 = 2082;
            v197 = v58;
            _os_log_impl(&dword_181A37000, v55, v56, "%{public}s nw_queue_context_create_source output_source failed, dumping backtrace:%{public}s", v194, 0x16u);
          }

          free(v58);
          goto LABEL_133;
        }

        if (v59)
        {
          *v194 = 136446210;
          v195 = "nw_socket_setup_output_events";
          v57 = "%{public}s nw_queue_context_create_source output_source failed, no backtrace";
          goto LABEL_132;
        }
      }

      else
      {
        v55 = __nwlog_obj();
        v56 = v173;
        if (os_log_type_enabled(v55, v173))
        {
          *v194 = 136446210;
          v195 = "nw_socket_setup_output_events";
          v57 = "%{public}s nw_queue_context_create_source output_source failed, backtrace limit exceeded";
          goto LABEL_132;
        }
      }
    }

LABEL_133:
    if (v53)
    {
      free(v53);
    }

    v60 = v7[3].identifier->name;
    p_output_handler = v166;
    if (v60)
    {
      nw_queue_cancel_source(v60, v54);
      v7[3].identifier = 0;
    }

    goto LABEL_137;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_socket_connect";
  v139 = _os_log_send_and_compose_impl();
  LOBYTE(type.sae_srcif) = 16;
  v174[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v139, &type, v174))
  {
    if (LOBYTE(type.sae_srcif) == 17)
    {
      v140 = __nwlog_obj();
      v141 = type.sae_srcif;
      if (os_log_type_enabled(v140, type.sae_srcif))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_connect";
        v142 = "%{public}s called with null protocol";
LABEL_363:
        _os_log_impl(&dword_181A37000, v140, v141, v142, buf, 0xCu);
      }
    }

    else if (v174[0] == OS_LOG_TYPE_INFO)
    {
      v146 = __nw_create_backtrace_string();
      v140 = __nwlog_obj();
      v141 = type.sae_srcif;
      v147 = os_log_type_enabled(v140, type.sae_srcif);
      if (v146)
      {
        if (v147)
        {
          *buf = 136446466;
          *&buf[4] = "nw_socket_connect";
          *&buf[12] = 2082;
          *&buf[14] = v146;
          _os_log_impl(&dword_181A37000, v140, v141, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v146);
        goto LABEL_364;
      }

      if (v147)
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_connect";
        v142 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_363;
      }
    }

    else
    {
      v140 = __nwlog_obj();
      v141 = type.sae_srcif;
      if (os_log_type_enabled(v140, type.sae_srcif))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_connect";
        v142 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_363;
      }
    }
  }

LABEL_364:
  if (v139)
  {
    free(v139);
  }

  return 0;
}

void nw_queue_resume_source(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_queue_resume_source";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v6, &type, &v13))
    {
      goto LABEL_30;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_queue_resume_source";
        v9 = "%{public}s called with null source";
LABEL_28:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
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
            v16 = "nw_queue_resume_source";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null source, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_30;
        }

        if (!v11)
        {
          goto LABEL_29;
        }

        *buf = 136446210;
        v16 = "nw_queue_resume_source";
        v9 = "%{public}s called with null source, no backtrace";
        goto LABEL_28;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_queue_resume_source";
        v9 = "%{public}s called with null source, backtrace limit exceeded";
        goto LABEL_28;
      }
    }

LABEL_29:

LABEL_30:
    if (v6)
    {
      free(v6);
    }

    return;
  }

  if (*a1)
  {
    v2 = *a1;

    dispatch_resume(v2);
    return;
  }

  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 49))
    {
      return;
    }

    v3 = a1;
    nw_queue_source_run_timer(a1, a2);
    goto LABEL_12;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (*(a1 + 49))
    {
      return;
    }

    v3 = a1;
    nw_context_queue_source_block(*(a1 + 8), v4);
LABEL_12:
    *(v3 + 49) = 1;
    return;
  }

  if (gLogDatapath == 1)
  {
    v12 = __nwlog_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v16 = "nw_queue_resume_source";
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s Cancelled, not resuming source", buf, 0xCu);
    }
  }
}

uint64_t nw_socket_add_socket_events(uint64_t a1, int a2, int a3, char a4)
{
  v4 = a3;
  v81 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 112);
  v8 = *(a1 + 196);
  v9 = v8 | a3;
  v10 = v8 & ~a3;
  if (a2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  *(a1 + 196) = v11;
  if ((a4 & 1) == 0 && (*(a1 + 317) & 4) == 0 || *(a1 + 200) == v11)
  {
    return 1;
  }

  *v77 = 0;
  *&v77[8] = v77;
  *&v77[16] = 0x3802000000;
  *&v77[24] = __Block_byref_object_copy__67231;
  v78 = __Block_byref_object_dispose__67232;
  v12 = *(a1 - 56);
  v13 = a1 - 96;
  if (v12 == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_11;
  }

  if (v12 != &nw_protocol_ref_counted_additional_handle)
  {
    LOBYTE(v13) = 0;
    goto LABEL_14;
  }

  v13 = *(a1 - 32);
  if (v13)
  {
LABEL_11:
    v14 = *(v13 + 88);
    if (v14)
    {
      *(v13 + 88) = v14 + 1;
    }

    LOBYTE(v13) = -1;
  }

LABEL_14:
  v79 = a1 - 96;
  v80 = v13;
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3802000000;
  v70[3] = __Block_byref_object_copy__37_67233;
  v70[4] = __Block_byref_object_dispose__38_67234;
  v15 = *(a1 + 80);
  if (v15)
  {
    v15 = os_retain(v15);
    v16 = v72 | 1;
  }

  else
  {
    v16 = -1;
  }

  object = v15;
  v72 = v16;
  v17 = *(a1 + 144);
  v18 = *(a1 + 188);
  *v63 = MEMORY[0x1E69E9820];
  v64 = 0x40000000;
  v65 = ___ZL34nw_socket_init_socket_event_sourceP9nw_socketj_block_invoke;
  v66 = &unk_1E6A39930;
  v68 = v70;
  v69 = a1;
  v67 = v77;
  source = nw_queue_context_create_source(v17, v18, 4, v11, v63, 0);
  v21 = source;
  *(a1 + 112) = source;
  if (source)
  {
    nw_queue_activate_source(source, v20);
    goto LABEL_34;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v74 = "nw_socket_init_socket_event_source";
  v22 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v61 = 0;
  if (__nwlog_fault(v22, &type, &v61))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v74 = "nw_socket_init_socket_event_source";
      v25 = "%{public}s nw_queue_context_create_source failed";
LABEL_30:
      v29 = v23;
      v30 = v24;
LABEL_31:
      _os_log_impl(&dword_181A37000, v29, v30, v25, buf, 0xCu);
      goto LABEL_32;
    }

    if (v61 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v24 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v74 = "nw_socket_init_socket_event_source";
      v25 = "%{public}s nw_queue_context_create_source failed, backtrace limit exceeded";
      goto LABEL_30;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    v60 = type;
    v28 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v28)
      {
        *buf = 136446466;
        v74 = "nw_socket_init_socket_event_source";
        v75 = 2082;
        v76 = backtrace_string;
        _os_log_impl(&dword_181A37000, v27, v60, "%{public}s nw_queue_context_create_source failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_32;
    }

    if (v28)
    {
      *buf = 136446210;
      v74 = "nw_socket_init_socket_event_source";
      v25 = "%{public}s nw_queue_context_create_source failed, no backtrace";
      v29 = v27;
      v30 = v60;
      goto LABEL_31;
    }
  }

LABEL_32:
  if (v22)
  {
    free(v22);
  }

LABEL_34:
  _Block_object_dispose(v70, 8);
  if ((v72 & 1) != 0 && object)
  {
    os_release(object);
  }

  _Block_object_dispose(v77, 8);
  if (v80)
  {
    v32 = v79;
    if (v79)
    {
      v33 = *(v79 + 40);
      if (v33 == &nw_protocol_ref_counted_handle || v33 == &nw_protocol_ref_counted_additional_handle && (v32 = *(v79 + 64)) != 0)
      {
        v34 = *(v32 + 88);
        if (v34)
        {
          v35 = v34 - 1;
          *(v32 + 88) = v35;
          if (!v35)
          {
            v36 = *(v32 + 64);
            if (v36)
            {
              *(v32 + 64) = 0;
              v36[2](v36);
              _Block_release(v36);
            }

            if (*(v32 + 72))
            {
              v37 = *(v32 + 64);
              if (v37)
              {
                _Block_release(v37);
              }
            }

            free(v32);
          }
        }
      }
    }
  }

  if (v21)
  {
    if (v7)
    {
      nw_queue_cancel_source(v7, v31);
    }

    *(a1 + 200) = v11;
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_88;
    }

    v38 = *(a1 + 208);
    if (!a2)
    {
      v38 = 0;
    }

    LODWORD(v70[0]) = v38;
    if (!setsockopt(*(a1 + 188), 6, 517, v70, 4u))
    {
LABEL_88:
      if ((v4 & 0x200) == 0)
      {
        return 1;
      }

      v50 = *(a1 + 212);
      if (!a2)
      {
        v50 = 0;
      }

      LODWORD(v70[0]) = v50;
      if (!setsockopt(*(a1 + 188), 6, 519, v70, 4u))
      {
        return 1;
      }

      v51 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v52 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *v77 = 136446722;
        *&v77[4] = "nw_socket_set_adaptive_write_timeout";
        *&v77[12] = 2082;
        *&v77[14] = a1 + 324;
        *&v77[22] = 1024;
        *&v77[24] = v51;
        _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_ADAPTIVE_WRITE_TIMEOUT failed %{darwin.errno}d", v77, 0x1Cu);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v53 = gLogObj;
      if (v51 == 22)
      {
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *v77 = 136446466;
          *&v77[4] = "nw_socket_set_adaptive_write_timeout";
          *&v77[12] = 1024;
          *&v77[14] = 22;
          _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_ADAPTIVE_WRITE_TIMEOUT failed %{darwin.errno}d", v77, 0x12u);
        }

        return 1;
      }

      *v77 = 136446466;
      *&v77[4] = "nw_socket_set_adaptive_write_timeout";
      *&v77[12] = 1024;
      *&v77[14] = v51;
      v54 = _os_log_send_and_compose_impl();
      v63[0] = OS_LOG_TYPE_ERROR;
      buf[0] = 0;
      if (__nwlog_fault(v54, v63, buf))
      {
        if (v63[0] == OS_LOG_TYPE_FAULT)
        {
          v55 = __nwlog_obj();
          v56 = v63[0];
          if (!os_log_type_enabled(v55, v63[0]))
          {
            goto LABEL_113;
          }

          *v77 = 136446466;
          *&v77[4] = "nw_socket_set_adaptive_write_timeout";
          *&v77[12] = 1024;
          *&v77[14] = v51;
          v57 = "%{public}s setsockopt TCP_ADAPTIVE_WRITE_TIMEOUT failed %{darwin.errno}d";
          goto LABEL_112;
        }

        if (buf[0] != 1)
        {
          v55 = __nwlog_obj();
          v56 = v63[0];
          if (!os_log_type_enabled(v55, v63[0]))
          {
            goto LABEL_113;
          }

          *v77 = 136446466;
          *&v77[4] = "nw_socket_set_adaptive_write_timeout";
          *&v77[12] = 1024;
          *&v77[14] = v51;
          v57 = "%{public}s setsockopt TCP_ADAPTIVE_WRITE_TIMEOUT failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_112;
        }

        v58 = __nw_create_backtrace_string();
        v55 = __nwlog_obj();
        v56 = v63[0];
        v59 = os_log_type_enabled(v55, v63[0]);
        if (v58)
        {
          if (v59)
          {
            *v77 = 136446722;
            *&v77[4] = "nw_socket_set_adaptive_write_timeout";
            *&v77[12] = 1024;
            *&v77[14] = v51;
            *&v77[18] = 2082;
            *&v77[20] = v58;
            _os_log_impl(&dword_181A37000, v55, v56, "%{public}s setsockopt TCP_ADAPTIVE_WRITE_TIMEOUT failed %{darwin.errno}d, dumping backtrace:%{public}s", v77, 0x1Cu);
          }

          free(v58);
          goto LABEL_113;
        }

        if (v59)
        {
          *v77 = 136446466;
          *&v77[4] = "nw_socket_set_adaptive_write_timeout";
          *&v77[12] = 1024;
          *&v77[14] = v51;
          v57 = "%{public}s setsockopt TCP_ADAPTIVE_WRITE_TIMEOUT failed %{darwin.errno}d, no backtrace";
LABEL_112:
          _os_log_impl(&dword_181A37000, v55, v56, v57, v77, 0x12u);
        }
      }

LABEL_113:
      if (v54)
      {
        free(v54);
      }

      return 1;
    }

    v39 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v40 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *v77 = 136446722;
      *&v77[4] = "nw_socket_set_adaptive_read_timeout";
      *&v77[12] = 2082;
      *&v77[14] = a1 + 324;
      *&v77[22] = 1024;
      *&v77[24] = v39;
      _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_ADAPTIVE_READ_TIMEOUT failed %{darwin.errno}d", v77, 0x1Cu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v41 = gLogObj;
    if (v39 == 22)
    {
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *v77 = 136446466;
        *&v77[4] = "nw_socket_set_adaptive_read_timeout";
        *&v77[12] = 1024;
        *&v77[14] = 22;
        _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_ADAPTIVE_READ_TIMEOUT failed %{darwin.errno}d", v77, 0x12u);
      }

      goto LABEL_88;
    }

    *v77 = 136446466;
    *&v77[4] = "nw_socket_set_adaptive_read_timeout";
    *&v77[12] = 1024;
    *&v77[14] = v39;
    v44 = _os_log_send_and_compose_impl();
    v63[0] = OS_LOG_TYPE_ERROR;
    buf[0] = 0;
    if (__nwlog_fault(v44, v63, buf))
    {
      if (v63[0] == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = v63[0];
        if (!os_log_type_enabled(v45, v63[0]))
        {
          goto LABEL_86;
        }

        *v77 = 136446466;
        *&v77[4] = "nw_socket_set_adaptive_read_timeout";
        *&v77[12] = 1024;
        *&v77[14] = v39;
        v47 = "%{public}s setsockopt TCP_ADAPTIVE_READ_TIMEOUT failed %{darwin.errno}d";
        goto LABEL_85;
      }

      if (buf[0] != 1)
      {
        v45 = __nwlog_obj();
        v46 = v63[0];
        if (!os_log_type_enabled(v45, v63[0]))
        {
          goto LABEL_86;
        }

        *v77 = 136446466;
        *&v77[4] = "nw_socket_set_adaptive_read_timeout";
        *&v77[12] = 1024;
        *&v77[14] = v39;
        v47 = "%{public}s setsockopt TCP_ADAPTIVE_READ_TIMEOUT failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_85;
      }

      v48 = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = v63[0];
      v49 = os_log_type_enabled(v45, v63[0]);
      if (v48)
      {
        if (v49)
        {
          *v77 = 136446722;
          *&v77[4] = "nw_socket_set_adaptive_read_timeout";
          *&v77[12] = 1024;
          *&v77[14] = v39;
          *&v77[18] = 2082;
          *&v77[20] = v48;
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s setsockopt TCP_ADAPTIVE_READ_TIMEOUT failed %{darwin.errno}d, dumping backtrace:%{public}s", v77, 0x1Cu);
        }

        free(v48);
        goto LABEL_86;
      }

      if (v49)
      {
        *v77 = 136446466;
        *&v77[4] = "nw_socket_set_adaptive_read_timeout";
        *&v77[12] = 1024;
        *&v77[14] = v39;
        v47 = "%{public}s setsockopt TCP_ADAPTIVE_READ_TIMEOUT failed %{darwin.errno}d, no backtrace";
LABEL_85:
        _os_log_impl(&dword_181A37000, v45, v46, v47, v77, 0x12u);
      }
    }

LABEL_86:
    if (v44)
    {
      free(v44);
    }

    goto LABEL_88;
  }

  if ((*(a1 + 317) & 0x80) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v42 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      *v77 = 136446466;
      *&v77[4] = "nw_socket_add_socket_events";
      *&v77[12] = 2082;
      *&v77[14] = a1 + 324;
      _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s error in adding socket event source", v77, 0x16u);
    }
  }

  result = 0;
  *(a1 + 112) = v7;
  return result;
}

uint64_t nw_socket_get_remote(nw_protocol *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    handle = a1->handle;
    v3 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v4 = 1;
      goto LABEL_11;
    }

    v3 = *a1[1].flow_id;
    if (v3)
    {
LABEL_6:
      callbacks = v3[1].callbacks;
      v4 = 0;
      if (callbacks)
      {
        v3[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v4 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v6 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v46 = "nw_socket_get_remote";
        v7 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v43 = 0;
        if (!__nwlog_fault(v7, &type, &v43))
        {
          goto LABEL_38;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v46 = "nw_socket_get_remote";
          v10 = "%{public}s called with null socket_handler";
        }

        else
        {
          if (v43 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v20 = type;
            v21 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v21)
              {
                *buf = 136446466;
                v46 = "nw_socket_get_remote";
                v47 = 2082;
                v48 = backtrace_string;
                _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_38;
            }

            if (!v21)
            {
LABEL_38:
              if (v7)
              {
                free(v7);
              }

              goto LABEL_40;
            }

            *buf = 136446210;
            v46 = "nw_socket_get_remote";
            v10 = "%{public}s called with null socket_handler, no backtrace";
            v22 = v19;
            v23 = v20;
LABEL_37:
            _os_log_impl(&dword_181A37000, v22, v23, v10, buf, 0xCu);
            goto LABEL_38;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v46 = "nw_socket_get_remote";
          v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
        }

        v22 = v8;
        v23 = v9;
        goto LABEL_37;
      }

      v6 = *a1[1].flow_id;
    }

    v11 = v6[2].callbacks;
    if (v11)
    {
      connect = v11->connect;
      if (connect)
      {
        v13 = connect[17];
        if (v13)
        {
          connected = v11->connected;
          v15 = v6[2].callbacks;
          if (connected == &nw_protocol_ref_counted_handle || connected == &nw_protocol_ref_counted_additional_handle && (v15 = v11->input_available) != 0)
          {
            get_output_frames = v15->get_output_frames;
            if (get_output_frames)
            {
              v15->get_output_frames = get_output_frames + 1;
            }

            result = v13(v11);
            v31 = v11->connected;
            if (v31 == &nw_protocol_ref_counted_handle || v31 == &nw_protocol_ref_counted_additional_handle && (v11 = v11->input_available) != 0)
            {
              v32 = v11->get_output_frames;
              if (v32)
              {
                v33 = v32 - 1;
                v11->get_output_frames = v33;
                if (!v33)
                {
                  v34 = result;
                  input_available = v11->input_available;
                  if (input_available)
                  {
                    v11->input_available = 0;
                    input_available[2](input_available);
                    _Block_release(input_available);
                  }

                  if (v11->output_available)
                  {
                    v36 = v11->input_available;
                    if (v36)
                    {
                      _Block_release(v36);
                    }
                  }

                  free(v11);
                  result = v34;
                }
              }
            }
          }

          else
          {
            result = v13(v6[2].callbacks);
          }

          goto LABEL_41;
        }
      }
    }

    else if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v46 = "nw_socket_get_remote";
        v47 = 2082;
        v48 = &v6[6].output_handler + 4;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s No input handler", buf, 0x16u);
      }
    }

LABEL_40:
    result = 0;
LABEL_41:
    if ((v4 & 1) == 0)
    {
      v24 = v1->handle;
      if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
      {
        v25 = v1[1].callbacks;
        if (v25)
        {
          v26 = (v25 - 1);
          v1[1].callbacks = v26;
          if (!v26)
          {
            v27 = result;
            v28 = *v1[1].flow_id;
            if (v28)
            {
              *v1[1].flow_id = 0;
              v28[2](v28);
              _Block_release(v28);
            }

            if (v1[1].flow_id[8])
            {
              v29 = *v1[1].flow_id;
              if (v29)
              {
                _Block_release(v29);
              }
            }

            free(v1);
            return v27;
          }
        }
      }
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v46 = "nw_socket_get_remote";
  v37 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v43 = 0;
  if (__nwlog_fault(v37, &type, &v43))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v46 = "nw_socket_get_remote";
        v40 = "%{public}s called with null protocol";
LABEL_83:
        _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
      }
    }

    else if (v43 == 1)
    {
      v41 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type;
      v42 = os_log_type_enabled(v38, type);
      if (v41)
      {
        if (v42)
        {
          *buf = 136446466;
          v46 = "nw_socket_get_remote";
          v47 = 2082;
          v48 = v41;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v41);
        goto LABEL_84;
      }

      if (v42)
      {
        *buf = 136446210;
        v46 = "nw_socket_get_remote";
        v40 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_83;
      }
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v46 = "nw_socket_get_remote";
        v40 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_83;
      }
    }
  }

LABEL_84:
  if (v37)
  {
    free(v37);
  }

  return 0;
}

uint64_t nw_socket_get_local(nw_protocol *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    handle = a1->handle;
    v3 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v4 = 1;
      goto LABEL_11;
    }

    v3 = *a1[1].flow_id;
    if (v3)
    {
LABEL_6:
      callbacks = v3[1].callbacks;
      v4 = 0;
      if (callbacks)
      {
        v3[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v4 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v6 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v46 = "nw_socket_get_local";
        v7 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v43 = 0;
        if (!__nwlog_fault(v7, &type, &v43))
        {
          goto LABEL_38;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v46 = "nw_socket_get_local";
          v10 = "%{public}s called with null socket_handler";
        }

        else
        {
          if (v43 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v20 = type;
            v21 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v21)
              {
                *buf = 136446466;
                v46 = "nw_socket_get_local";
                v47 = 2082;
                v48 = backtrace_string;
                _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_38;
            }

            if (!v21)
            {
LABEL_38:
              if (v7)
              {
                free(v7);
              }

              goto LABEL_40;
            }

            *buf = 136446210;
            v46 = "nw_socket_get_local";
            v10 = "%{public}s called with null socket_handler, no backtrace";
            v22 = v19;
            v23 = v20;
LABEL_37:
            _os_log_impl(&dword_181A37000, v22, v23, v10, buf, 0xCu);
            goto LABEL_38;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v46 = "nw_socket_get_local";
          v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
        }

        v22 = v8;
        v23 = v9;
        goto LABEL_37;
      }

      v6 = *a1[1].flow_id;
    }

    v11 = v6[2].callbacks;
    if (v11)
    {
      connect = v11->connect;
      if (connect)
      {
        v13 = connect[16];
        if (v13)
        {
          connected = v11->connected;
          v15 = v6[2].callbacks;
          if (connected == &nw_protocol_ref_counted_handle || connected == &nw_protocol_ref_counted_additional_handle && (v15 = v11->input_available) != 0)
          {
            get_output_frames = v15->get_output_frames;
            if (get_output_frames)
            {
              v15->get_output_frames = get_output_frames + 1;
            }

            result = v13(v11);
            v31 = v11->connected;
            if (v31 == &nw_protocol_ref_counted_handle || v31 == &nw_protocol_ref_counted_additional_handle && (v11 = v11->input_available) != 0)
            {
              v32 = v11->get_output_frames;
              if (v32)
              {
                v33 = v32 - 1;
                v11->get_output_frames = v33;
                if (!v33)
                {
                  v34 = result;
                  input_available = v11->input_available;
                  if (input_available)
                  {
                    v11->input_available = 0;
                    input_available[2](input_available);
                    _Block_release(input_available);
                  }

                  if (v11->output_available)
                  {
                    v36 = v11->input_available;
                    if (v36)
                    {
                      _Block_release(v36);
                    }
                  }

                  free(v11);
                  result = v34;
                }
              }
            }
          }

          else
          {
            result = v13(v6[2].callbacks);
          }

          goto LABEL_41;
        }
      }
    }

    else if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v46 = "nw_socket_get_local";
        v47 = 2082;
        v48 = &v6[6].output_handler + 4;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s No input handler", buf, 0x16u);
      }
    }

LABEL_40:
    result = 0;
LABEL_41:
    if ((v4 & 1) == 0)
    {
      v24 = v1->handle;
      if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
      {
        v25 = v1[1].callbacks;
        if (v25)
        {
          v26 = (v25 - 1);
          v1[1].callbacks = v26;
          if (!v26)
          {
            v27 = result;
            v28 = *v1[1].flow_id;
            if (v28)
            {
              *v1[1].flow_id = 0;
              v28[2](v28);
              _Block_release(v28);
            }

            if (v1[1].flow_id[8])
            {
              v29 = *v1[1].flow_id;
              if (v29)
              {
                _Block_release(v29);
              }
            }

            free(v1);
            return v27;
          }
        }
      }
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v46 = "nw_socket_get_local";
  v37 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v43 = 0;
  if (__nwlog_fault(v37, &type, &v43))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v46 = "nw_socket_get_local";
        v40 = "%{public}s called with null protocol";
LABEL_83:
        _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
      }
    }

    else if (v43 == 1)
    {
      v41 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type;
      v42 = os_log_type_enabled(v38, type);
      if (v41)
      {
        if (v42)
        {
          *buf = 136446466;
          v46 = "nw_socket_get_local";
          v47 = 2082;
          v48 = v41;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v41);
        goto LABEL_84;
      }

      if (v42)
      {
        *buf = 136446210;
        v46 = "nw_socket_get_local";
        v40 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_83;
      }
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v46 = "nw_socket_get_local";
        v40 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_83;
      }
    }
  }

LABEL_84:
  if (v37)
  {
    free(v37);
  }

  return 0;
}

uint64_t nw_socket_get_parameters(nw_protocol *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    handle = a1->handle;
    v3 = a1;
    if (handle == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      v4 = 1;
      goto LABEL_11;
    }

    v3 = *a1[1].flow_id;
    if (v3)
    {
LABEL_6:
      callbacks = v3[1].callbacks;
      v4 = 0;
      if (callbacks)
      {
        v3[1].callbacks = (&callbacks->add_input_handler + 1);
      }
    }

    else
    {
      v4 = 1;
    }

    handle = a1->handle;
LABEL_11:
    v6 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v46 = "nw_socket_get_parameters";
        v7 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v43 = 0;
        if (!__nwlog_fault(v7, &type, &v43))
        {
          goto LABEL_38;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v46 = "nw_socket_get_parameters";
          v10 = "%{public}s called with null socket_handler";
        }

        else
        {
          if (v43 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v19 = gLogObj;
            v20 = type;
            v21 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v21)
              {
                *buf = 136446466;
                v46 = "nw_socket_get_parameters";
                v47 = 2082;
                v48 = backtrace_string;
                _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_38;
            }

            if (!v21)
            {
LABEL_38:
              if (v7)
              {
                free(v7);
              }

              goto LABEL_40;
            }

            *buf = 136446210;
            v46 = "nw_socket_get_parameters";
            v10 = "%{public}s called with null socket_handler, no backtrace";
            v22 = v19;
            v23 = v20;
LABEL_37:
            _os_log_impl(&dword_181A37000, v22, v23, v10, buf, 0xCu);
            goto LABEL_38;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v8 = gLogObj;
          v9 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_38;
          }

          *buf = 136446210;
          v46 = "nw_socket_get_parameters";
          v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
        }

        v22 = v8;
        v23 = v9;
        goto LABEL_37;
      }

      v6 = *a1[1].flow_id;
    }

    v11 = v6[2].callbacks;
    if (v11)
    {
      connect = v11->connect;
      if (connect)
      {
        v13 = connect[14];
        if (v13)
        {
          connected = v11->connected;
          v15 = v6[2].callbacks;
          if (connected == &nw_protocol_ref_counted_handle || connected == &nw_protocol_ref_counted_additional_handle && (v15 = v11->input_available) != 0)
          {
            get_output_frames = v15->get_output_frames;
            if (get_output_frames)
            {
              v15->get_output_frames = get_output_frames + 1;
            }

            result = v13(v11);
            v31 = v11->connected;
            if (v31 == &nw_protocol_ref_counted_handle || v31 == &nw_protocol_ref_counted_additional_handle && (v11 = v11->input_available) != 0)
            {
              v32 = v11->get_output_frames;
              if (v32)
              {
                v33 = v32 - 1;
                v11->get_output_frames = v33;
                if (!v33)
                {
                  v34 = result;
                  input_available = v11->input_available;
                  if (input_available)
                  {
                    v11->input_available = 0;
                    input_available[2](input_available);
                    _Block_release(input_available);
                  }

                  if (v11->output_available)
                  {
                    v36 = v11->input_available;
                    if (v36)
                    {
                      _Block_release(v36);
                    }
                  }

                  free(v11);
                  result = v34;
                }
              }
            }
          }

          else
          {
            result = v13(v6[2].callbacks);
          }

          goto LABEL_41;
        }
      }
    }

    else if ((*(&v6[6].callbacks + 5) & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v17 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v46 = "nw_socket_get_parameters";
        v47 = 2082;
        v48 = &v6[6].output_handler + 4;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s No input handler", buf, 0x16u);
      }
    }

LABEL_40:
    result = 0;
LABEL_41:
    if ((v4 & 1) == 0)
    {
      v24 = v1->handle;
      if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
      {
        v25 = v1[1].callbacks;
        if (v25)
        {
          v26 = (v25 - 1);
          v1[1].callbacks = v26;
          if (!v26)
          {
            v27 = result;
            v28 = *v1[1].flow_id;
            if (v28)
            {
              *v1[1].flow_id = 0;
              v28[2](v28);
              _Block_release(v28);
            }

            if (v1[1].flow_id[8])
            {
              v29 = *v1[1].flow_id;
              if (v29)
              {
                _Block_release(v29);
              }
            }

            free(v1);
            return v27;
          }
        }
      }
    }

    return result;
  }

  __nwlog_obj();
  *buf = 136446210;
  v46 = "nw_socket_get_parameters";
  v37 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v43 = 0;
  if (__nwlog_fault(v37, &type, &v43))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v46 = "nw_socket_get_parameters";
        v40 = "%{public}s called with null protocol";
LABEL_83:
        _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
      }
    }

    else if (v43 == 1)
    {
      v41 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type;
      v42 = os_log_type_enabled(v38, type);
      if (v41)
      {
        if (v42)
        {
          *buf = 136446466;
          v46 = "nw_socket_get_parameters";
          v47 = 2082;
          v48 = v41;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v41);
        goto LABEL_84;
      }

      if (v42)
      {
        *buf = 136446210;
        v46 = "nw_socket_get_parameters";
        v40 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_83;
      }
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v38, type))
      {
        *buf = 136446210;
        v46 = "nw_socket_get_parameters";
        v40 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_83;
      }
    }
  }

LABEL_84:
  if (v37)
  {
    free(v37);
  }

  return 0;
}

char *nw_path_copy_scoped_interface(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_scoped_interface(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_scoped_interface";
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
        v16 = "nw_path_copy_scoped_interface";
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
          v16 = "nw_path_copy_scoped_interface";
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
        v16 = "nw_path_copy_scoped_interface";
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
        v16 = "nw_path_copy_scoped_interface";
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

void ___ZL26nw_path_watch_necp_changesPU24objcproto13OS_nw_context8NSObject_block_invoke(uint64_t a1)
{
  globals_for_path = nw_context_get_globals_for_path(*(a1 + 32));
  os_unfair_lock_lock(globals_for_path + 29);
  os_unfair_lock_opaque = globals_for_path[30]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(globals_for_path + 29);
  v4 = *(a1 + 32);

  nw_path_necp_check_for_updates(v4, 0, os_unfair_lock_opaque);
}

void sub_181D2BB58(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((v5 & 0x10) == 0)
    {
      v6 = v5 | 0x10;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if ((v5 & 0x10) != 0)
  {
    v6 = v5 & 0xFFEF;
    goto LABEL_6;
  }
}

void sub_181D2BBD8(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((v5 & 0x20) == 0)
    {
      v6 = v5 | 0x20;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if ((v5 & 0x20) != 0)
  {
    v6 = v5 & 0xFFDF;
    goto LABEL_6;
  }
}

uint64_t nw_socket_updated_path(nw_protocol *a1, nw_protocol *a2, nw_path *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_socket_updated_path";
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v28, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v37 = "nw_socket_updated_path";
          v31 = "%{public}s called with null protocol";
LABEL_61:
          _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
        }
      }

      else if (v34 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v30 = type;
        v33 = os_log_type_enabled(v29, type);
        if (backtrace_string)
        {
          if (v33)
          {
            *buf = 136446466;
            v37 = "nw_socket_updated_path";
            v38 = 2082;
            v39 = backtrace_string;
            _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_62;
        }

        if (v33)
        {
          *buf = 136446210;
          v37 = "nw_socket_updated_path";
          v31 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_61;
        }
      }

      else
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v37 = "nw_socket_updated_path";
          v31 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_61;
        }
      }
    }

LABEL_62:
    if (v28)
    {
      free(v28);
    }

    return 0;
  }

  v4 = a1;
  handle = a1->handle;
  v6 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v7 = 1;
    goto LABEL_11;
  }

  v6 = *a1[1].flow_id;
  if (v6)
  {
LABEL_6:
    callbacks = v6[1].callbacks;
    v7 = 0;
    if (callbacks)
    {
      v6[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v7 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v9 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v9 = *a1[1].flow_id;
LABEL_18:
    effective_traffic_class = nw_path_get_effective_traffic_class(a3);
    nw_socket_set_traffic_class(&v9[1].output_handler, effective_traffic_class);
    if (LODWORD(v9[4].identifier) != 9216)
    {
      LODWORD(v9[4].identifier) = nw_path_get_maximum_datagram_size(a3);
    }

    result = 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_34;
    }

    return result;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v37 = "nw_socket_updated_path";
  v10 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (!__nwlog_fault(v10, &type, &v34))
  {
    goto LABEL_31;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_31;
    }

    *buf = 136446210;
    v37 = "nw_socket_updated_path";
    v13 = "%{public}s called with null socket_handler";
LABEL_29:
    v20 = v11;
    v21 = v12;
LABEL_30:
    _os_log_impl(&dword_181A37000, v20, v21, v13, buf, 0xCu);
    goto LABEL_31;
  }

  if (v34 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v12 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_31;
    }

    *buf = 136446210;
    v37 = "nw_socket_updated_path";
    v13 = "%{public}s called with null socket_handler, backtrace limit exceeded";
    goto LABEL_29;
  }

  v16 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  v18 = type;
  v19 = os_log_type_enabled(gLogObj, type);
  if (v16)
  {
    if (v19)
    {
      *buf = 136446466;
      v37 = "nw_socket_updated_path";
      v38 = 2082;
      v39 = v16;
      _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v16);
  }

  else if (v19)
  {
    *buf = 136446210;
    v37 = "nw_socket_updated_path";
    v13 = "%{public}s called with null socket_handler, no backtrace";
    v20 = v17;
    v21 = v18;
    goto LABEL_30;
  }

LABEL_31:
  if (v10)
  {
    free(v10);
  }

  result = 0;
  if ((v7 & 1) == 0)
  {
LABEL_34:
    v22 = v4->handle;
    if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v4 = *v4[1].flow_id) != 0)
    {
      v23 = v4[1].callbacks;
      if (v23)
      {
        v24 = (v23 - 1);
        v4[1].callbacks = v24;
        if (!v24)
        {
          v25 = result;
          v26 = *v4[1].flow_id;
          if (v26)
          {
            *v4[1].flow_id = 0;
            v26[2](v26);
            _Block_release(v26);
          }

          if (v4[1].flow_id[8])
          {
            v27 = *v4[1].flow_id;
            if (v27)
            {
              _Block_release(v27);
            }
          }

          free(v4);
          return v25;
        }
      }
    }
  }

  return result;
}

uint64_t nw_protocol_default_updated_path(nw_protocol *a1, nw_protocol *a2, nw_path *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_default_updated_path";
    v7 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v7, &type, &v13))
    {
      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_updated_path";
      v10 = "%{public}s called with null protocol";
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
          v16 = "nw_protocol_default_updated_path";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (!v12)
      {
LABEL_22:
        if (v7)
        {
          free(v7);
        }

        return 0;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_updated_path";
      v10 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_updated_path";
      v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_22;
  }

  output_handler = a1->output_handler;
  if (!output_handler)
  {
    return 0;
  }

  callbacks = output_handler->callbacks;
  if (!callbacks)
  {
    return 0;
  }

  updated_path = callbacks->updated_path;
  if (!updated_path)
  {
    return 0;
  }

  return updated_path();
}

BOOL l4s_enabled_by_developer(void)
{
  v0 = networkd_settings_copy_value_of_type(nw_setting_enable_l4s, 0);
  v1 = v0;
  if (v0 && object_getClass(v0) == MEMORY[0x1E69E9EB0])
  {
    value = xpc_int64_get_value(v1);

    if (value == 1)
    {
      return 1;
    }
  }

  else
  {
  }

  if (nw_settings_get_l4s_enabled_internal::onceToken != -1)
  {
    dispatch_once(&nw_settings_get_l4s_enabled_internal::onceToken, &__block_literal_global_67004);
  }

  return nw_settings_get_l4s_enabled_internal::l4s_setting == 1;
}

void nw_proxy_config_enumerate_resolved_endpoints(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_proxy_config_enumerate_resolved_endpoints";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v8, &type, &v23))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_enumerate_resolved_endpoints";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v26 = "nw_proxy_config_enumerate_resolved_endpoints";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v8)
        {
          goto LABEL_5;
        }

LABEL_40:
        free(v8);
        goto LABEL_5;
      }

      if (v15)
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_enumerate_resolved_endpoints";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_enumerate_resolved_endpoints";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v4)
  {
    v6 = v3[6];
    if (v6)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_proxy_config_enumerate_resolved_endpoints_block_invoke;
      aBlock[3] = &unk_1E6A3CD30;
      v22 = v4;
      _nw_array_apply(v6, aBlock);
    }

    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_proxy_config_enumerate_resolved_endpoints";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v8, &type, &v23))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_enumerate_resolved_endpoints";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null enumerator", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v23 != 1)
  {
    v9 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_enumerate_resolved_endpoints";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null enumerator, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v17 = type;
  v18 = os_log_type_enabled(v9, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v26 = "nw_proxy_config_enumerate_resolved_endpoints";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v18)
  {
    *buf = 136446466;
    v26 = "nw_proxy_config_enumerate_resolved_endpoints";
    v27 = 2082;
    v28 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null enumerator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_5:
}

uint64_t nw_endpoint_proxy_get_success_count(NWConcrete_nw_endpoint_handler *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    nw_endpoint_handler_initialize_association(v3);
    v4 = v3[7];

    if (!v4)
    {
      goto LABEL_7;
    }

    if (nw_protocol_copy_proxy_definition(void)::onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_proxy_definition(void)::onceToken, &__block_literal_global_26677);
    }

    cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v4, nw_protocol_copy_proxy_definition(void)::proxy_definition);
    if (cached_content_for_protocol)
    {
      v6 = *cached_content_for_protocol;
    }

    else
    {
LABEL_7:
      v6 = 0;
    }

    goto LABEL_9;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_endpoint_proxy_get_success_count";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v9, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_endpoint_proxy_get_success_count";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null child_handler", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v19 = "nw_endpoint_proxy_get_success_count";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null child_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_endpoint_proxy_get_success_count";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null child_handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_endpoint_proxy_get_success_count";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null child_handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_9:

  return v6;
}

unint64_t nw_endpoint_proxy_get_timeout_nanos(NWConcrete_nw_endpoint_handler *a1, int a2)
{
  v3 = a1;
  v4 = &nw_setting_proxy_fast_rtt_delay_factor;
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v4 = &nw_setting_proxy_rtt_delay_factor;
    v5 = 4;
  }

  int64_with_default = networkd_settings_get_int64_with_default(*v4, v5);
  if (v3)
  {
    v7 = nw_endpoint_handler_get_child_timeout_nanos(v3) * int64_with_default;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 250000000 * int64_with_default;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  v8 = networkd_settings_get_int64_with_default(nw_setting_proxy_fast_max_delay_ms, 10000);
  if (v7 >= 1000000 * v8)
  {
    v7 = 1000000 * v8;
  }

LABEL_8:

  return v7;
}

void nw_parameters_set_account_id(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_account_id(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_account_id";
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
        v12 = "nw_parameters_set_account_id";
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
            v12 = "nw_parameters_set_account_id";
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
        v12 = "nw_parameters_set_account_id";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_account_id";
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

uint64_t nw_socket_set_traffic_class(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = a2;
  if (*(a1 + 184) == a2)
  {
    return 0;
  }

  if (!setsockopt(*(a1 + 188), 0xFFFF, 4230, &v15, 4u))
  {
    v2 = 0;
    *(a1 + 184) = v15;
    return v2;
  }

  v2 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v4 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v17 = "nw_socket_set_traffic_class";
    v18 = 2082;
    *v19 = a1 + 324;
    *&v19[8] = 1024;
    *&v19[10] = v2;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_TRAFFIC_CLASS failed %{darwin.errno}d", buf, 0x1Cu);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  if (v2 == 22)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "nw_socket_set_traffic_class";
      v18 = 1024;
      *v19 = 22;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_TRAFFIC_CLASS failed %{darwin.errno}d", buf, 0x12u);
    }

    return v2;
  }

  *buf = 136446466;
  v17 = "nw_socket_set_traffic_class";
  v18 = 1024;
  *v19 = v2;
  v6 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_26;
      }

      *buf = 136446466;
      v17 = "nw_socket_set_traffic_class";
      v18 = 1024;
      *v19 = v2;
      v9 = "%{public}s setsockopt SO_TRAFFIC_CLASS failed %{darwin.errno}d";
      goto LABEL_25;
    }

    if (v13 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_26;
      }

      *buf = 136446466;
      v17 = "nw_socket_set_traffic_class";
      v18 = 1024;
      *v19 = v2;
      v9 = "%{public}s setsockopt SO_TRAFFIC_CLASS failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_25;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v11 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v11)
      {
        *buf = 136446722;
        v17 = "nw_socket_set_traffic_class";
        v18 = 1024;
        *v19 = v2;
        *&v19[4] = 2082;
        *&v19[6] = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s setsockopt SO_TRAFFIC_CLASS failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(backtrace_string);
      goto LABEL_26;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_socket_set_traffic_class";
      v18 = 1024;
      *v19 = v2;
      v9 = "%{public}s setsockopt SO_TRAFFIC_CLASS failed %{darwin.errno}d, no backtrace";
LABEL_25:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0x12u);
    }
  }

LABEL_26:
  if (v6)
  {
    free(v6);
  }

  return v2;
}

void ___ZL34nw_socket_init_socket_event_sourceP9nw_socketj_block_invoke(uint64_t a1)
{
  v114 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_socket_handle_socket_event";
    v10 = _os_log_send_and_compose_impl();
    type[0] = 16;
    v109[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v10, type, v109))
    {
      goto LABEL_67;
    }

    if (type[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      *&buf[4] = "nw_socket_handle_socket_event";
      v13 = "%{public}s called with null socket_handler";
    }

    else
    {
      if (v109[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v16 = type[0];
        v17 = os_log_type_enabled(gLogObj, type[0]);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            *&buf[4] = "nw_socket_handle_socket_event";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_67;
        }

        if (!v17)
        {
LABEL_67:
          if (v10)
          {
            free(v10);
          }

          return;
        }

        *buf = 136446210;
        *&buf[4] = "nw_socket_handle_socket_event";
        v13 = "%{public}s called with null socket_handler, no backtrace";
        v28 = v15;
        v29 = v16;
LABEL_66:
        _os_log_impl(&dword_181A37000, v28, v29, v13, buf, 0xCu);
        goto LABEL_67;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      *&buf[4] = "nw_socket_handle_socket_event";
      v13 = "%{public}s called with null socket_handler, backtrace limit exceeded";
    }

    v28 = v11;
    v29 = v12;
    goto LABEL_66;
  }

  v2 = (v1 + 317);
  if ((*(v1 + 317) & 0x4000) != 0)
  {
    return;
  }

  v4 = *(v1 + 196) & nw_queue_source_get_data(*(v1 + 112));
  if (!v4)
  {
    return;
  }

  if ((*v2 & 0x80) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v5 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_socket_handle_socket_event";
      *&buf[12] = 2082;
      *&buf[14] = v1 + 324;
      *&buf[22] = 1024;
      LODWORD(v111) = v4;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Event mask: %#x", buf, 0x1Cu);
    }
  }

  v6 = v4 & 1;
  if ((v4 & 1) == 0)
  {
    v9 = 0;
    v8 = 60;
    if ((v4 & 8) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  if ((*v2 & 0x80) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "nw_socket_handle_socket_event";
      *&buf[12] = 2082;
      *&buf[14] = v1 + 324;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received CONNRESET event", buf, 0x16u);
    }
  }

  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  v8 = 54;
  v9 = 54;
  if ((v4 & 8) != 0)
  {
LABEL_32:
    if ((*v2 & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v18 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "nw_socket_handle_socket_event";
        *&buf[12] = 2082;
        *&buf[14] = v1 + 324;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received TIMEOUT event", buf, 0x16u);
      }
    }

    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    v6 = 1;
    v9 = v8;
  }

LABEL_43:
  v105 = v9;
  if ((v4 & 0x800) == 0)
  {
    goto LABEL_120;
  }

  v19 = *v2;
  if ((*v2 & 0x40) == 0)
  {
    if ((v19 & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v20 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "nw_socket_handle_socket_event";
        *&buf[12] = 2082;
        *&buf[14] = v1 + 324;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received CONNECTED event", buf, 0x16u);
      }
    }

    v104 = *v2;
    *v2 = v104 & 0x7FFB | 4;
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    if (*(v1 + 192) != 2 || (*v2 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    *type = 0x4000;
    if (!setsockopt(*(v1 + 188), 6, 513, type, 4u))
    {
      if ((*v2 & 0x80) != 0)
      {
        goto LABEL_57;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v53 = gconnectionLogObj;
      if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_57;
      }

      *buf = 136446722;
      *&buf[4] = "nw_socket_setup_notsent_lowat";
      *&buf[12] = 2082;
      *&buf[14] = v1 + 324;
      *&buf[22] = 1024;
      LODWORD(v111) = *type;
      v37 = "%{public}s %{public}s Set TCP_NOTSENT_LOWAT(%u)";
      v38 = v53;
      v39 = OS_LOG_TYPE_DEBUG;
      v40 = 28;
      goto LABEL_115;
    }

    v31 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v32 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      v33 = *(v1 + 188);
      *buf = 136447234;
      *&buf[4] = "nw_socket_setup_notsent_lowat";
      *&buf[12] = 2082;
      *&buf[14] = v1 + 324;
      *&buf[22] = 1024;
      LODWORD(v111) = *type;
      WORD2(v111) = 1024;
      *(&v111 + 6) = v33;
      WORD5(v111) = 1024;
      HIDWORD(v111) = v31;
      _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt TCP_NOTSENT_LOWAT(%u) failed on fd %d %{darwin.errno}d", buf, 0x28u);
    }

    v34 = __nwlog_obj();
    v35 = v34;
    if (v31 == 22)
    {
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      v36 = *(v1 + 188);
      *buf = 136446978;
      *&buf[4] = "nw_socket_setup_notsent_lowat";
      *&buf[12] = 1024;
      *&buf[14] = *type;
      *&buf[18] = 1024;
      *&buf[20] = v36;
      LOWORD(v111) = 1024;
      *(&v111 + 2) = 22;
      v37 = "%{public}s setsockopt TCP_NOTSENT_LOWAT(%u) failed on fd %d %{darwin.errno}d";
      v38 = v35;
      v39 = OS_LOG_TYPE_ERROR;
      v40 = 30;
LABEL_115:
      _os_log_impl(&dword_181A37000, v38, v39, v37, buf, v40);
LABEL_57:
      *(v1 + 196) &= ~0x800u;
      nw_socket_add_socket_events(v1, 1);
      v21 = v1 - 96;
      nw_socket_fillout_socket_properties((v1 - 96));
      nw_socket_internal_connect(v1);
      v22 = *(v1 + 56);
      if (v22)
      {
        v23 = *(v22 + 24);
        if (v23)
        {
          v24 = *(v23 + 112);
          if (v24)
          {
            v25 = *(v22 + 40);
            v26 = *(v1 + 56);
            if (v25 == &nw_protocol_ref_counted_handle || v25 == &nw_protocol_ref_counted_additional_handle && (v26 = *(v22 + 64)) != 0)
            {
              v41 = *(v26 + 88);
              if (v41)
              {
                *(v26 + 88) = v41 + 1;
              }

              v27 = v24(v22);
              v42 = *(v22 + 40);
              if (v42 == &nw_protocol_ref_counted_handle || v42 == &nw_protocol_ref_counted_additional_handle && (v22 = *(v22 + 64)) != 0)
              {
                v43 = *(v22 + 88);
                if (v43)
                {
                  v44 = v43 - 1;
                  *(v22 + 88) = v44;
                  if (!v44)
                  {
                    v103 = v27;
                    v45 = *(v22 + 64);
                    if (v45)
                    {
                      *(v22 + 64) = 0;
                      v45[2](v45);
                      _Block_release(v45);
                    }

                    if (*(v22 + 72))
                    {
                      v46 = *(v22 + 64);
                      if (v46)
                      {
                        _Block_release(v46);
                      }
                    }

                    free(v22);
                    v27 = v103;
                  }
                }
              }
            }

            else
            {
              v27 = v24(*(v1 + 56));
            }

            if (v27)
            {
              v47 = _nw_parameters_copy_default_protocol_stack(v27);
              v48 = nw_protocol_stack_copy_transport_protocol(v47);
              if (v48)
              {
                v49 = v48;
                if (_nw_protocol_options_is_tcp(v48))
                {
                  maximum_segment_size = _nw_tcp_options_get_maximum_segment_size(v49);
                  if (maximum_segment_size)
                  {
                    nw_socket_set_maximum_segment_size(v1, maximum_segment_size);
                  }
                }

                os_release(v49);
              }

              if (v47)
              {
                os_release(v47);
              }
            }
          }
        }
      }

      if (v104 < 0)
      {
        *type = 0;
        *&type[8] = type;
        *&type[16] = 0x2000000000;
        v51 = *(v1 - 56);
        v52 = v1 - 96;
        if (v51 == &nw_protocol_ref_counted_handle || v51 == &nw_protocol_ref_counted_additional_handle && (v52 = *(v1 - 32)) != 0)
        {
          v54 = *(v52 + 88);
          if (v54)
          {
            *(v52 + 88) = v54 + 1;
          }
        }

        else
        {
          v21 = 0;
        }

        *&type[24] = v21;
        v55 = *(v1 + 144);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL29nw_socket_handle_socket_eventP9nw_socket_block_invoke;
        *&v111 = &unk_1E6A39958;
        *(&v111 + 1) = type;
        v112 = v1;
        nw_queue_context_async(v55, buf);
        _Block_object_dispose(type, 8);
      }

      goto LABEL_120;
    }

    v88 = *(v1 + 188);
    *buf = 136446978;
    *&buf[4] = "nw_socket_setup_notsent_lowat";
    *&buf[12] = 1024;
    *&buf[14] = *type;
    *&buf[18] = 1024;
    *&buf[20] = v88;
    LOWORD(v111) = 1024;
    *(&v111 + 2) = v31;
    v89 = _os_log_send_and_compose_impl();
    v109[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v108) = 0;
    if (__nwlog_fault(v89, v109, &v108))
    {
      if (v109[0] == OS_LOG_TYPE_FAULT)
      {
        v90 = __nwlog_obj();
        v91 = v109[0];
        if (!os_log_type_enabled(v90, v109[0]))
        {
          goto LABEL_255;
        }

        v92 = *(v1 + 188);
        *buf = 136446978;
        *&buf[4] = "nw_socket_setup_notsent_lowat";
        *&buf[12] = 1024;
        *&buf[14] = *type;
        *&buf[18] = 1024;
        *&buf[20] = v92;
        LOWORD(v111) = 1024;
        *(&v111 + 2) = v31;
        v93 = "%{public}s setsockopt TCP_NOTSENT_LOWAT(%u) failed on fd %d %{darwin.errno}d";
LABEL_253:
        v99 = v90;
        v100 = v91;
LABEL_254:
        _os_log_impl(&dword_181A37000, v99, v100, v93, buf, 0x1Eu);
        goto LABEL_255;
      }

      if (v108 != 1)
      {
        v90 = __nwlog_obj();
        v91 = v109[0];
        if (!os_log_type_enabled(v90, v109[0]))
        {
          goto LABEL_255;
        }

        v98 = *(v1 + 188);
        *buf = 136446978;
        *&buf[4] = "nw_socket_setup_notsent_lowat";
        *&buf[12] = 1024;
        *&buf[14] = *type;
        *&buf[18] = 1024;
        *&buf[20] = v98;
        LOWORD(v111) = 1024;
        *(&v111 + 2) = v31;
        v93 = "%{public}s setsockopt TCP_NOTSENT_LOWAT(%u) failed on fd %d %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_253;
      }

      v94 = __nw_create_backtrace_string();
      v95 = __nwlog_obj();
      v102 = v109[0];
      v96 = os_log_type_enabled(v95, v109[0]);
      if (v94)
      {
        if (v96)
        {
          v97 = *(v1 + 188);
          *buf = 136447234;
          *&buf[4] = "nw_socket_setup_notsent_lowat";
          *&buf[12] = 1024;
          *&buf[14] = *type;
          *&buf[18] = 1024;
          *&buf[20] = v97;
          LOWORD(v111) = 1024;
          *(&v111 + 2) = v31;
          WORD3(v111) = 2082;
          *(&v111 + 1) = v94;
          _os_log_impl(&dword_181A37000, v95, v102, "%{public}s setsockopt TCP_NOTSENT_LOWAT(%u) failed on fd %d %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x28u);
        }

        free(v94);
        goto LABEL_255;
      }

      if (v96)
      {
        v101 = *(v1 + 188);
        *buf = 136446978;
        *&buf[4] = "nw_socket_setup_notsent_lowat";
        *&buf[12] = 1024;
        *&buf[14] = *type;
        *&buf[18] = 1024;
        *&buf[20] = v101;
        LOWORD(v111) = 1024;
        *(&v111 + 2) = v31;
        v93 = "%{public}s setsockopt TCP_NOTSENT_LOWAT(%u) failed on fd %d %{darwin.errno}d, no backtrace";
        v99 = v95;
        v100 = v102;
        goto LABEL_254;
      }
    }

LABEL_255:
    if (v89)
    {
      free(v89);
    }

    goto LABEL_57;
  }

  if ((v19 & 0x80) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v30 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "nw_socket_handle_socket_event";
      *&buf[12] = 2082;
      *&buf[14] = v1 + 324;
      _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received CONNECTED event, but ignoring because disconnect has been requested", buf, 0x16u);
    }
  }

LABEL_120:
  if ((v4 & 0x1000) != 0)
  {
    if ((*v2 & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v70 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *type = 136446466;
        *&type[4] = "nw_socket_handle_socket_event";
        *&type[12] = 2082;
        *&type[14] = v1 + 324;
        _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received DISCONNECTED event", type, 0x16u);
      }
    }

    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

LABEL_198:
    if ((~v4 & 6) != 0)
    {
      goto LABEL_203;
    }

    goto LABEL_199;
  }

  if (v6)
  {
    goto LABEL_198;
  }

  if ((v4 & 2) != 0)
  {
    if ((*v2 & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v56 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *type = 136446466;
        *&type[4] = "nw_socket_handle_socket_event";
        *&type[12] = 2082;
        *&type[14] = v1 + 324;
        _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received READ_CLOSE event", type, 0x16u);
      }
    }

    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    nw_socket_input_finished((v1 - 96), v3);
  }

  if ((v4 & 4) != 0)
  {
    if ((*v2 & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v57 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *type = 136446466;
        *&type[4] = "nw_socket_handle_socket_event";
        *&type[12] = 2082;
        *&type[14] = v1 + 324;
        _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received WRITE_CLOSE event", type, 0x16u);
      }
    }

    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }
  }

  if ((~v4 & 6) == 0)
  {
LABEL_199:
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
      v71 = *(v1 + 112);
      if (!v71)
      {
LABEL_205:
        v108 = 4;
        *v109 = -1;
        if (!getsockopt(*(v1 + 188), 0xFFFF, 4103, v109, &v108))
        {
          v79 = *v109;
          if (*v109)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v80 = gconnectionLogObj;
            if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_237;
            }

            *type = 136446722;
            *&type[4] = "nw_socket_handle_socket_event";
            *&type[12] = 2082;
            *&type[14] = v1 + 324;
            *&type[22] = 1024;
            *&type[24] = v79;
            v81 = "%{public}s %{public}s Socket SO_ERROR %{darwin.errno}d";
            v82 = v80;
            v83 = OS_LOG_TYPE_ERROR;
            v84 = 28;
          }

          else
          {
            if ((*v2 & 0x80) != 0)
            {
              goto LABEL_237;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v87 = gconnectionLogObj;
            if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_237;
            }

            *type = 136446466;
            *&type[4] = "nw_socket_handle_socket_event";
            *&type[12] = 2082;
            *&type[14] = v1 + 324;
            v81 = "%{public}s %{public}s Socket SO_ERROR: 0";
            v82 = v87;
            v83 = OS_LOG_TYPE_DEFAULT;
            v84 = 22;
          }

          _os_log_impl(&dword_181A37000, v82, v83, v81, type, v84);
LABEL_237:
          if (*v109 || v105)
          {
            nw_socket_internal_error(v1);
          }

          nw_socket_internal_disconnect(v1);
          return;
        }

        v72 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        *v109 = v72;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v73 = gconnectionLogObj;
        if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          *type = 136446722;
          *&type[4] = "nw_socket_handle_socket_event";
          *&type[12] = 2082;
          *&type[14] = v1 + 324;
          *&type[22] = 1024;
          *&type[24] = v72;
          _os_log_impl(&dword_181A37000, v73, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt SO_ERROR failed %{darwin.errno}d", type, 0x1Cu);
        }

        v74 = *v109;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *type = 136446466;
        *&type[4] = "nw_socket_handle_socket_event";
        *&type[12] = 1024;
        *&type[14] = v74;
        v75 = _os_log_send_and_compose_impl();
        v107 = OS_LOG_TYPE_ERROR;
        v106 = 0;
        if (__nwlog_fault(v75, &v107, &v106))
        {
          if (v107 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v76 = gLogObj;
            v77 = v107;
            if (!os_log_type_enabled(gLogObj, v107))
            {
              goto LABEL_235;
            }

            *type = 136446466;
            *&type[4] = "nw_socket_handle_socket_event";
            *&type[12] = 1024;
            *&type[14] = v74;
            v78 = "%{public}s getsockopt SO_ERROR failed %{darwin.errno}d";
            goto LABEL_234;
          }

          if (v106 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v76 = gLogObj;
            v77 = v107;
            if (!os_log_type_enabled(gLogObj, v107))
            {
              goto LABEL_235;
            }

            *type = 136446466;
            *&type[4] = "nw_socket_handle_socket_event";
            *&type[12] = 1024;
            *&type[14] = v74;
            v78 = "%{public}s getsockopt SO_ERROR failed %{darwin.errno}d, backtrace limit exceeded";
            goto LABEL_234;
          }

          v85 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v76 = gLogObj;
          v77 = v107;
          v86 = os_log_type_enabled(gLogObj, v107);
          if (v85)
          {
            if (v86)
            {
              *type = 136446722;
              *&type[4] = "nw_socket_handle_socket_event";
              *&type[12] = 1024;
              *&type[14] = v74;
              *&type[18] = 2082;
              *&type[20] = v85;
              _os_log_impl(&dword_181A37000, v76, v77, "%{public}s getsockopt SO_ERROR failed %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x1Cu);
            }

            free(v85);
            goto LABEL_235;
          }

          if (v86)
          {
            *type = 136446466;
            *&type[4] = "nw_socket_handle_socket_event";
            *&type[12] = 1024;
            *&type[14] = v74;
            v78 = "%{public}s getsockopt SO_ERROR failed %{darwin.errno}d, no backtrace";
LABEL_234:
            _os_log_impl(&dword_181A37000, v76, v77, v78, type, 0x12u);
          }
        }

LABEL_235:
        if (v75)
        {
          free(v75);
        }

        goto LABEL_237;
      }

LABEL_204:
      nw_queue_cancel_source(v71, v3);
      *(v1 + 112) = 0;
      goto LABEL_205;
    }

LABEL_203:
    v71 = *(v1 + 112);
    if (!v71)
    {
      goto LABEL_205;
    }

    goto LABEL_204;
  }

  if ((v4 & 0x100) == 0)
  {
    goto LABEL_160;
  }

  if ((*v2 & 0x80) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v58 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      *type = 136446466;
      *&type[4] = "nw_socket_handle_socket_event";
      *&type[12] = 2082;
      *&type[14] = v1 + 324;
      _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Socket received KEEPALIVE event", type, 0x16u);
    }
  }

  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
    v59 = *(v1 + 56);
    if (!v59)
    {
      goto LABEL_160;
    }
  }

  else
  {
    v59 = *(v1 + 56);
    if (!v59)
    {
      goto LABEL_160;
    }
  }

  v60 = *(v59 + 24);
  if (v60)
  {
    v61 = *(v60 + 160);
    if (v61)
    {
      v61(v59, v1 - 96);
    }
  }

LABEL_160:
  if ((v4 & 0x400) != 0)
  {
    if ((*v2 & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v62 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
      {
        *type = 136446466;
        *&type[4] = "nw_socket_handle_socket_event";
        *&type[12] = 2082;
        *&type[14] = v1 + 324;
        _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received ADAPTIVE_READ_TIMEOUT event", type, 0x16u);
      }
    }

    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
      v63 = *(v1 + 56);
      if (v63)
      {
        goto LABEL_171;
      }
    }

    else
    {
      v63 = *(v1 + 56);
      if (v63)
      {
LABEL_171:
        v64 = *(v63 + 24);
        if (v64)
        {
          v65 = *(v64 + 160);
          if (v65)
          {
            v65(v63, v1 - 96);
          }
        }
      }
    }
  }

  if ((v4 & 0x200) == 0)
  {
    return;
  }

  if ((*v2 & 0x80) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v66 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *type = 136446466;
      *&type[4] = "nw_socket_handle_socket_event";
      *&type[12] = 2082;
      *&type[14] = v1 + 324;
      _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s Socket received ADAPTIVE_WRITE_TIMEOUT event", type, 0x16u);
    }
  }

  if (_nw_signposts_once != -1)
  {
    dispatch_once(&_nw_signposts_once, &__block_literal_global_22_67263);
  }

  if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
    v67 = *(v1 + 56);
    if (!v67)
    {
      return;
    }
  }

  else
  {
    v67 = *(v1 + 56);
    if (!v67)
    {
      return;
    }
  }

  v68 = *(v67 + 24);
  if (v68)
  {
    v69 = *(v68 + 160);
    if (v69)
    {
      v69(v67, v1 - 96);
    }
  }
}

void nw_socket_fillout_socket_properties(nw_protocol *a1)
{
  v66 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *&__dst[0].sa_len = 136446210;
    *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
    v1 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v59) = 0;
    if (!__nwlog_fault(v1, type, &v59))
    {
      goto LABEL_125;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type[0];
      if (!os_log_type_enabled(v51, type[0]))
      {
        goto LABEL_125;
      }

      *&__dst[0].sa_len = 136446210;
      *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
      v53 = "%{public}s called with null protocol";
    }

    else if (v59 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v51 = __nwlog_obj();
      v52 = type[0];
      v55 = os_log_type_enabled(v51, type[0]);
      if (backtrace_string)
      {
        if (v55)
        {
          *&__dst[0].sa_len = 136446466;
          *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
          *&__dst[0].sa_data[10] = 2082;
          *&__dst[0].sa_data[12] = backtrace_string;
          _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null protocol, dumping backtrace:%{public}s", &__dst[0].sa_len, 0x16u);
        }

        free(backtrace_string);
LABEL_125:
        if (!v1)
        {
          return;
        }

        goto LABEL_109;
      }

      if (!v55)
      {
        goto LABEL_125;
      }

      *&__dst[0].sa_len = 136446210;
      *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
      v53 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v51 = __nwlog_obj();
      v52 = type[0];
      if (!os_log_type_enabled(v51, type[0]))
      {
        goto LABEL_125;
      }

      *&__dst[0].sa_len = 136446210;
      *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
      v53 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v51, v52, v53, &__dst[0].sa_len, 0xCu);
    goto LABEL_125;
  }

  v1 = a1;
  handle = a1->handle;
  v3 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v4 = 1;
    goto LABEL_11;
  }

  v3 = *a1[1].flow_id;
  if (v3)
  {
LABEL_6:
    callbacks = v3[1].callbacks;
    v4 = 0;
    if (callbacks)
    {
      v3[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v4 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v6 = a1;
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *&__dst[0].sa_len = 136446210;
      *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
      v7 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v59) = 0;
      if (!__nwlog_fault(v7, type, &v59))
      {
        goto LABEL_48;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_48;
        }

        *&__dst[0].sa_len = 136446210;
        *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
        v10 = "%{public}s called with null socket_handler";
      }

      else
      {
        if (v59 == 1)
        {
          v28 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v29 = gLogObj;
          v30 = type[0];
          v31 = os_log_type_enabled(gLogObj, type[0]);
          if (v28)
          {
            if (v31)
            {
              *&__dst[0].sa_len = 136446466;
              *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
              *&__dst[0].sa_data[10] = 2082;
              *&__dst[0].sa_data[12] = v28;
              _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", &__dst[0].sa_len, 0x16u);
            }

            free(v28);
            goto LABEL_48;
          }

          if (!v31)
          {
LABEL_48:
            if (v7)
            {
              free(v7);
            }

            goto LABEL_98;
          }

          *&__dst[0].sa_len = 136446210;
          *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
          v10 = "%{public}s called with null socket_handler, no backtrace";
          v32 = v29;
          v33 = v30;
LABEL_47:
          _os_log_impl(&dword_181A37000, v32, v33, v10, &__dst[0].sa_len, 0xCu);
          goto LABEL_48;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_48;
        }

        *&__dst[0].sa_len = 136446210;
        *&__dst[0].sa_data[2] = "nw_socket_fillout_socket_properties";
        v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
      }

      v32 = v8;
      v33 = v9;
      goto LABEL_47;
    }

    v6 = *a1[1].flow_id;
  }

  memset(__dst, 0, sizeof(__dst));
  v60 = 0;
  callbacks_high = HIDWORD(v6[4].callbacks);
  if (callbacks_high < 0)
  {
    goto LABEL_98;
  }

  remote = nw_socket_get_remote(a1);
  if (remote && (v13 = remote, v14 = _nw_endpoint_get_type(v13), v13, v14 == 1))
  {
    v15 = v13;
    address_family = _nw_endpoint_get_address_family(v15);

    v59 = 0;
    v17 = address_family == 2;
    if ((address_family == 30 || address_family == 2) && !copyconninfo(callbacks_high, 0, &v59))
    {
      v18 = v59;
      v19 = *(v59 + 8);
      if (v19)
      {
        v20 = *v19;
        if (v20 <= 0x80)
        {
          v21 = v59;
          memcpy(__dst, v19, v20);
          v18 = v21;
        }
      }

      v60 = *(v18 + 4);
      freeconninfo(v18);
      goto LABEL_88;
    }
  }

  else
  {
    v17 = 0;
    address_family = 0;
    v59 = 0;
  }

  if ((HIBYTE(v6[6].callbacks) & 2) != 0)
  {
    goto LABEL_88;
  }

  v58 = 128;
  if (getsockname(callbacks_high, __dst, &v58))
  {
    v22 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v23 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *type = 136446722;
      v62 = "nw_socket_fillout_socket_properties";
      v63 = 2082;
      *v64 = v6 + 420;
      *&v64[8] = 1024;
      *&v64[10] = v22;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockname failed %{darwin.errno}d", type, 0x1Cu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *type = 136446466;
    v62 = "nw_socket_fillout_socket_properties";
    v63 = 1024;
    *v64 = v22;
    v24 = _os_log_send_and_compose_impl();
    v57 = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (__nwlog_fault(v24, &v57, &v56))
    {
      if (v57 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = v57;
        if (!os_log_type_enabled(gLogObj, v57))
        {
          goto LABEL_86;
        }

        *type = 136446466;
        v62 = "nw_socket_fillout_socket_properties";
        v63 = 1024;
        *v64 = v22;
        v27 = "%{public}s getsockname failed %{darwin.errno}d";
      }

      else if (v56 == 1)
      {
        v37 = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = v57;
        v38 = os_log_type_enabled(v25, v57);
        if (v37)
        {
          if (v38)
          {
            *type = 136446722;
            v62 = "nw_socket_fillout_socket_properties";
            v63 = 1024;
            *v64 = v22;
            *&v64[4] = 2082;
            *&v64[6] = v37;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s getsockname failed %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x1Cu);
          }

          free(v37);
          if (!v24)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        }

        if (!v38)
        {
          goto LABEL_86;
        }

        *type = 136446466;
        v62 = "nw_socket_fillout_socket_properties";
        v63 = 1024;
        *v64 = v22;
        v27 = "%{public}s getsockname failed %{darwin.errno}d, no backtrace";
      }

      else
      {
        v25 = __nwlog_obj();
        v26 = v57;
        if (!os_log_type_enabled(v25, v57))
        {
          goto LABEL_86;
        }

        *type = 136446466;
        v62 = "nw_socket_fillout_socket_properties";
        v63 = 1024;
        *v64 = v22;
        v27 = "%{public}s getsockname failed %{darwin.errno}d, backtrace limit exceeded";
      }

      goto LABEL_85;
    }
  }

  else
  {
    if (address_family != 30 && address_family != 2)
    {
      goto LABEL_88;
    }

    v58 = 4;
    v34 = v17 ? 0 : 41;
    if (!getsockopt(callbacks_high, v34, 9696, &v60, &v58))
    {
      goto LABEL_88;
    }

    v35 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v36 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *type = 136446722;
      v62 = "nw_socket_fillout_socket_properties";
      v63 = 2082;
      *v64 = v6 + 420;
      *&v64[8] = 1024;
      *&v64[10] = v35;
      _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt OUT_IF failed %{darwin.errno}d", type, 0x1Cu);
    }

    __nwlog_obj();
    *type = 136446466;
    v62 = "nw_socket_fillout_socket_properties";
    v63 = 1024;
    *v64 = v35;
    v24 = _os_log_send_and_compose_impl();
    v57 = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (__nwlog_fault(v24, &v57, &v56))
    {
      if (v57 == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = v57;
        if (!os_log_type_enabled(v25, v57))
        {
          goto LABEL_86;
        }

        *type = 136446466;
        v62 = "nw_socket_fillout_socket_properties";
        v63 = 1024;
        *v64 = v35;
        v27 = "%{public}s getsockopt OUT_IF failed %{darwin.errno}d";
LABEL_85:
        _os_log_impl(&dword_181A37000, v25, v26, v27, type, 0x12u);
        goto LABEL_86;
      }

      if (v56 != 1)
      {
        v25 = __nwlog_obj();
        v26 = v57;
        if (!os_log_type_enabled(v25, v57))
        {
          goto LABEL_86;
        }

        *type = 136446466;
        v62 = "nw_socket_fillout_socket_properties";
        v63 = 1024;
        *v64 = v35;
        v27 = "%{public}s getsockopt OUT_IF failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_85;
      }

      v39 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = v57;
      v40 = os_log_type_enabled(v25, v57);
      if (!v39)
      {
        if (!v40)
        {
          goto LABEL_86;
        }

        *type = 136446466;
        v62 = "nw_socket_fillout_socket_properties";
        v63 = 1024;
        *v64 = v35;
        v27 = "%{public}s getsockopt OUT_IF failed %{darwin.errno}d, no backtrace";
        goto LABEL_85;
      }

      if (v40)
      {
        *type = 136446722;
        v62 = "nw_socket_fillout_socket_properties";
        v63 = 1024;
        *v64 = v35;
        *&v64[4] = 2082;
        *&v64[6] = v39;
        _os_log_impl(&dword_181A37000, v25, v26, "%{public}s getsockopt OUT_IF failed %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x1Cu);
      }

      free(v39);
    }
  }

LABEL_86:
  if (v24)
  {
LABEL_87:
    free(v24);
  }

LABEL_88:
  if (__dst[0].sa_len)
  {
    v41 = *v6[3].flow_id;
    if (v41)
    {
      os_release(v41);
      *v6[3].flow_id = 0;
    }

    *v6[3].flow_id = _nw_endpoint_create_address(__dst);
  }

  v42 = v60;
  if (v60)
  {
    v43 = *&v6[3].flow_id[8];
    if (v43)
    {
      os_release(v43);
      *&v6[3].flow_id[8] = 0;
      v42 = v60;
    }

    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v44 = nw_context_copy_implicit_context::implicit_context;
    v45 = nw_path_copy_interface_with_generation(v44, v42, 0);

    *&v6[3].flow_id[8] = v45;
  }

LABEL_98:
  if ((v4 & 1) == 0)
  {
    v46 = v1->handle;
    if (v46 == &nw_protocol_ref_counted_handle || v46 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
    {
      v47 = v1[1].callbacks;
      if (v47)
      {
        v48 = (v47 - 1);
        v1[1].callbacks = v48;
        if (!v48)
        {
          v49 = *v1[1].flow_id;
          if (v49)
          {
            *v1[1].flow_id = 0;
            v49[2](v49);
            _Block_release(v49);
          }

          if (v1[1].flow_id[8])
          {
            v50 = *v1[1].flow_id;
            if (v50)
            {
              _Block_release(v50);
            }
          }

LABEL_109:
          free(v1);
        }
      }
    }
  }
}
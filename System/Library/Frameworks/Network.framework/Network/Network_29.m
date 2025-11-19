void sub_181C3965C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32)
{
  _Block_object_dispose((v32 - 208), 8);

  _Block_object_dispose(&STACK[0x680], 8);
  _Block_object_dispose((v32 - 256), 8);

  _Block_object_dispose(&STACK[0x728], 8);
  _Unwind_Resume(a1);
}

uint64_t nw_fd_wrapper_get_fd(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_fd_wrapper_get_fd";
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
          v18 = "nw_fd_wrapper_get_fd";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null wrapper", buf, 0xCu);
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
            v18 = "nw_fd_wrapper_get_fd";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null wrapper, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (v13)
        {
          *buf = 136446210;
          v18 = "nw_fd_wrapper_get_fd";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null wrapper, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v18 = "nw_fd_wrapper_get_fd";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null wrapper, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_23:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_5;
  }

  os_unfair_lock_lock(v3 + 3);
  if ((v3[2]._os_unfair_lock_opaque & 0x80000000) != 0)
  {
    os_unfair_lock_unlock(v3 + 3);
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = v4[2](v4);
  os_unfair_lock_unlock(v3 + 3);
LABEL_6:

  return v5;
}

char *nw_network_agent_ctl_copy_received_agent_message(int a1, _BYTE *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v66 = "nw_network_agent_ctl_copy_received_agent_message";
    v33 = _os_log_send_and_compose_impl();
    v71[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v33, v71, &type))
    {
      goto LABEL_102;
    }

    if (v71[0] == OS_LOG_TYPE_FAULT)
    {
      v59 = __nwlog_obj();
      v60 = v71[0];
      if (!os_log_type_enabled(v59, v71[0]))
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      v66 = "nw_network_agent_ctl_copy_received_agent_message";
      v36 = "%{public}s called with null no_message_available";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v59 = __nwlog_obj();
      v60 = v71[0];
      v61 = os_log_type_enabled(v59, v71[0]);
      if (backtrace_string)
      {
        if (!v61)
        {
          goto LABEL_69;
        }

        *buf = 136446466;
        v66 = "nw_network_agent_ctl_copy_received_agent_message";
        v67 = 2082;
        *v68 = backtrace_string;
        v42 = "%{public}s called with null no_message_available, dumping backtrace:%{public}s";
        v43 = v59;
        v44 = v60;
        v45 = 22;
        goto LABEL_68;
      }

      if (!v61)
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      v66 = "nw_network_agent_ctl_copy_received_agent_message";
      v36 = "%{public}s called with null no_message_available, no backtrace";
    }

    else
    {
      v59 = __nwlog_obj();
      v60 = v71[0];
      if (!os_log_type_enabled(v59, v71[0]))
      {
        goto LABEL_102;
      }

      *buf = 136446210;
      v66 = "nw_network_agent_ctl_copy_received_agent_message";
      v36 = "%{public}s called with null no_message_available, backtrace limit exceeded";
    }

    v53 = v59;
    v54 = v60;
    v55 = 12;
    goto LABEL_101;
  }

  *a2 = 0;
  if (a1 < 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v66 = "nw_network_agent_ctl_copy_received_agent_message";
    v67 = 1024;
    *v68 = a1;
    v10 = _os_log_send_and_compose_impl();
    v71[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v10, v71, &type))
    {
      if (v71[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = v71[0];
        if (os_log_type_enabled(gLogObj, v71[0]))
        {
          *buf = 136446466;
          v66 = "nw_network_agent_ctl_copy_received_agent_message";
          v67 = 1024;
          *v68 = a1;
          v13 = "%{public}s Trying to read from invalid network agent socket %d";
LABEL_56:
          _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0x12u);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v17 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = v71[0];
        v18 = os_log_type_enabled(gLogObj, v71[0]);
        if (v17)
        {
          if (v18)
          {
            *buf = 136446722;
            v66 = "nw_network_agent_ctl_copy_received_agent_message";
            v67 = 1024;
            *v68 = a1;
            *&v68[4] = 2082;
            *&v68[6] = v17;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Trying to read from invalid network agent socket %d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v17);
          goto LABEL_57;
        }

        if (v18)
        {
          *buf = 136446466;
          v66 = "nw_network_agent_ctl_copy_received_agent_message";
          v67 = 1024;
          *v68 = a1;
          v13 = "%{public}s Trying to read from invalid network agent socket %d, no backtrace";
          goto LABEL_56;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = v71[0];
        if (os_log_type_enabled(gLogObj, v71[0]))
        {
          *buf = 136446466;
          v66 = "nw_network_agent_ctl_copy_received_agent_message";
          v67 = 1024;
          *v68 = a1;
          v13 = "%{public}s Trying to read from invalid network agent socket %d, backtrace limit exceeded";
          goto LABEL_56;
        }
      }
    }

LABEL_57:
    if (!v10)
    {
      return 0;
    }

    result = v10;
LABEL_59:
    free(result);
    return 0;
  }

  *v71 = 0u;
  v72 = 0u;
  v4 = recv(a1, v71, 0x20uLL, 2);
  v5 = v4;
  if (v4 <= 31)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446722;
      v66 = "nw_network_agent_ctl_copy_received_agent_message";
      v67 = 2048;
      *v68 = v5;
      *&v68[8] = 2048;
      *&v68[10] = 32;
      v6 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v63 = 0;
      if (!__nwlog_fault(v6, &type, &v63))
      {
        goto LABEL_82;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_82;
        }

        *buf = 136446722;
        v66 = "nw_network_agent_ctl_copy_received_agent_message";
        v67 = 2048;
        *v68 = v5;
        *&v68[8] = 2048;
        *&v68[10] = 32;
        v9 = "%{public}s Not enough bytes available to read network agent session message header (%zd < %zd)";
LABEL_77:
        v48 = v7;
        v49 = v8;
        v50 = 32;
LABEL_81:
        _os_log_impl(&dword_181A37000, v48, v49, v9, buf, v50);
        goto LABEL_82;
      }

      if (v63 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_82;
        }

        *buf = 136446722;
        v66 = "nw_network_agent_ctl_copy_received_agent_message";
        v67 = 2048;
        *v68 = v5;
        *&v68[8] = 2048;
        *&v68[10] = 32;
        v9 = "%{public}s Not enough bytes available to read network agent session message header (%zd < %zd), backtrace limit exceeded";
        goto LABEL_77;
      }

      v29 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      v30 = os_log_type_enabled(gLogObj, type);
      if (!v29)
      {
        if (!v30)
        {
          goto LABEL_82;
        }

        *buf = 136446722;
        v66 = "nw_network_agent_ctl_copy_received_agent_message";
        v67 = 2048;
        *v68 = v5;
        *&v68[8] = 2048;
        *&v68[10] = 32;
        v9 = "%{public}s Not enough bytes available to read network agent session message header (%zd < %zd), no backtrace";
        goto LABEL_77;
      }

      if (v30)
      {
        *buf = 136446978;
        v66 = "nw_network_agent_ctl_copy_received_agent_message";
        v67 = 2048;
        *v68 = v5;
        *&v68[8] = 2048;
        *&v68[10] = 32;
        *&v68[18] = 2082;
        *&v68[20] = v29;
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s Not enough bytes available to read network agent session message header (%zd < %zd), dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v29);
LABEL_82:
      if (!v6)
      {
LABEL_84:
        recv(a1, v71, 0x20uLL, 0);
        return 0;
      }

LABEL_83:
      free(v6);
      goto LABEL_84;
    }

    v27 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v27 == 35)
    {
      result = 0;
      *a2 = 1;
      return result;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v66 = "nw_network_agent_ctl_copy_received_agent_message";
    v67 = 1024;
    *v68 = v27;
    v33 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (!__nwlog_fault(v33, &type, &v63))
    {
      goto LABEL_102;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      v35 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v66 = "nw_network_agent_ctl_copy_received_agent_message";
        v67 = 1024;
        *v68 = v27;
        v36 = "%{public}s Read network agent session message header failed %{darwin.errno}d";
LABEL_100:
        v53 = v34;
        v54 = v35;
        v55 = 18;
LABEL_101:
        _os_log_impl(&dword_181A37000, v53, v54, v36, buf, v55);
        goto LABEL_102;
      }

      goto LABEL_102;
    }

    if (v63 != 1)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446466;
        v66 = "nw_network_agent_ctl_copy_received_agent_message";
        v67 = 1024;
        *v68 = v27;
        v36 = "%{public}s Read network agent session message header failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_100;
      }

LABEL_102:
      if (!v33)
      {
        return 0;
      }

      result = v33;
      goto LABEL_59;
    }

    backtrace_string = __nw_create_backtrace_string();
    v34 = __nwlog_obj();
    v35 = type;
    v41 = os_log_type_enabled(v34, type);
    if (!backtrace_string)
    {
      if (v41)
      {
        *buf = 136446466;
        v66 = "nw_network_agent_ctl_copy_received_agent_message";
        v67 = 1024;
        *v68 = v27;
        v36 = "%{public}s Read network agent session message header failed %{darwin.errno}d, no backtrace";
        goto LABEL_100;
      }

      goto LABEL_102;
    }

    if (!v41)
    {
LABEL_69:
      free(backtrace_string);
      goto LABEL_102;
    }

    *buf = 136446722;
    v66 = "nw_network_agent_ctl_copy_received_agent_message";
    v67 = 1024;
    *v68 = v27;
    *&v68[4] = 2082;
    *&v68[6] = backtrace_string;
    v42 = "%{public}s Read network agent session message header failed %{darwin.errno}d, dumping backtrace:%{public}s";
    v43 = v34;
    v44 = v35;
    v45 = 28;
LABEL_68:
    _os_log_impl(&dword_181A37000, v43, v44, v42, buf, v45);
    goto LABEL_69;
  }

  v14 = HIDWORD(v72);
  if (HIDWORD(v72) >= 0x10E9)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136447490;
    v66 = "nw_network_agent_ctl_copy_received_agent_message";
    v67 = 1024;
    *v68 = v14;
    *&v68[4] = 1024;
    *&v68[6] = 4328;
    *&v68[10] = 1024;
    *&v68[12] = v71[0];
    *&v68[16] = 1040;
    *&v68[18] = v5;
    *&v68[22] = 2096;
    *&v68[24] = v71;
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (!__nwlog_fault(v6, &type, &v63))
    {
      goto LABEL_82;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_82;
      }

      *buf = 136447490;
      v66 = "nw_network_agent_ctl_copy_received_agent_message";
      v67 = 1024;
      *v68 = v14;
      *&v68[4] = 1024;
      *&v68[6] = 4328;
      *&v68[10] = 1024;
      *&v68[12] = v71[0];
      *&v68[16] = 1040;
      *&v68[18] = v5;
      *&v68[22] = 2096;
      *&v68[24] = v71;
      v9 = "%{public}s kernel returned invalid message payload length %u > %u, type %u, bytes: %{network:data}.*P";
    }

    else if (v63 == 1)
    {
      v31 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      v32 = os_log_type_enabled(gLogObj, type);
      if (v31)
      {
        if (v32)
        {
          *buf = 136447746;
          v66 = "nw_network_agent_ctl_copy_received_agent_message";
          v67 = 1024;
          *v68 = v14;
          *&v68[4] = 1024;
          *&v68[6] = 4328;
          *&v68[10] = 1024;
          *&v68[12] = v71[0];
          *&v68[16] = 1040;
          *&v68[18] = v5;
          *&v68[22] = 2096;
          *&v68[24] = v71;
          v69 = 2082;
          v70 = v31;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s kernel returned invalid message payload length %u > %u, type %u, bytes: %{network:data}.*P, dumping backtrace:%{public}s", buf, 0x38u);
        }

        free(v31);
        if (!v6)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      }

      if (!v32)
      {
        goto LABEL_82;
      }

      *buf = 136447490;
      v66 = "nw_network_agent_ctl_copy_received_agent_message";
      v67 = 1024;
      *v68 = v14;
      *&v68[4] = 1024;
      *&v68[6] = 4328;
      *&v68[10] = 1024;
      *&v68[12] = v71[0];
      *&v68[16] = 1040;
      *&v68[18] = v5;
      *&v68[22] = 2096;
      *&v68[24] = v71;
      v9 = "%{public}s kernel returned invalid message payload length %u > %u, type %u, bytes: %{network:data}.*P, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_82;
      }

      *buf = 136447490;
      v66 = "nw_network_agent_ctl_copy_received_agent_message";
      v67 = 1024;
      *v68 = v14;
      *&v68[4] = 1024;
      *&v68[6] = 4328;
      *&v68[10] = 1024;
      *&v68[12] = v71[0];
      *&v68[16] = 1040;
      *&v68[18] = v5;
      *&v68[22] = 2096;
      *&v68[24] = v71;
      v9 = "%{public}s kernel returned invalid message payload length %u > %u, type %u, bytes: %{network:data}.*P, backtrace limit exceeded";
    }

    v48 = v15;
    v49 = v16;
    v50 = 46;
    goto LABEL_81;
  }

  v19 = HIDWORD(v72) + 32;
  if (gLogDatapath == 1)
  {
    v62 = __nwlog_obj();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136447490;
      v66 = "nw_network_agent_ctl_copy_received_agent_message";
      v67 = 1024;
      *v68 = v14;
      *&v68[4] = 1024;
      *&v68[6] = 4328;
      *&v68[10] = 1024;
      *&v68[12] = v71[0];
      *&v68[16] = 1040;
      *&v68[18] = v5;
      *&v68[22] = 2096;
      *&v68[24] = v71;
      _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s kernel returned valid message payload length %u <= %u, type %u, bytes: %{network:data}.*P", buf, 0x2Eu);
    }
  }

  v20 = nw_calloc_type<unsigned char>(v14 + 32);
  v21 = recv(a1, v20, v19, 0);
  if (v21 >= v19)
  {
    return v20;
  }

  v22 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    v66 = "nw_network_agent_ctl_copy_received_agent_message";
    v67 = 2048;
    *v68 = v22;
    *&v68[8] = 2048;
    *&v68[10] = v19;
    v23 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v63 = 0;
    if (!__nwlog_fault(v23, &type, &v63))
    {
      goto LABEL_111;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_111;
      }

      *buf = 136446722;
      v66 = "nw_network_agent_ctl_copy_received_agent_message";
      v67 = 2048;
      *v68 = v22;
      *&v68[8] = 2048;
      *&v68[10] = v19;
      v26 = "%{public}s Not enough bytes available to read network agent message (%zd < %zd)";
    }

    else if (v63 == 1)
    {
      v46 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v47 = os_log_type_enabled(v24, type);
      if (v46)
      {
        if (v47)
        {
          *buf = 136446978;
          v66 = "nw_network_agent_ctl_copy_received_agent_message";
          v67 = 2048;
          *v68 = v22;
          *&v68[8] = 2048;
          *&v68[10] = v19;
          *&v68[18] = 2082;
          *&v68[20] = v46;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Not enough bytes available to read network agent message (%zd < %zd), dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v46);
LABEL_111:
        if (!v23)
        {
          goto LABEL_113;
        }

        goto LABEL_112;
      }

      if (!v47)
      {
        goto LABEL_111;
      }

      *buf = 136446722;
      v66 = "nw_network_agent_ctl_copy_received_agent_message";
      v67 = 2048;
      *v68 = v22;
      *&v68[8] = 2048;
      *&v68[10] = v19;
      v26 = "%{public}s Not enough bytes available to read network agent message (%zd < %zd), no backtrace";
    }

    else
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_111;
      }

      *buf = 136446722;
      v66 = "nw_network_agent_ctl_copy_received_agent_message";
      v67 = 2048;
      *v68 = v22;
      *&v68[8] = 2048;
      *&v68[10] = v19;
      v26 = "%{public}s Not enough bytes available to read network agent message (%zd < %zd), backtrace limit exceeded";
    }

    v56 = v24;
    v57 = v25;
    v58 = 32;
LABEL_110:
    _os_log_impl(&dword_181A37000, v56, v57, v26, buf, v58);
    goto LABEL_111;
  }

  v37 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446722;
  v66 = "nw_network_agent_ctl_copy_received_agent_message";
  v67 = 2048;
  *v68 = v19;
  *&v68[8] = 1024;
  *&v68[10] = v37;
  v23 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v63 = 0;
  if (!__nwlog_fault(v23, &type, &v63))
  {
    goto LABEL_111;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v38 = __nwlog_obj();
    v39 = type;
    if (!os_log_type_enabled(v38, type))
    {
      goto LABEL_111;
    }

    *buf = 136446722;
    v66 = "nw_network_agent_ctl_copy_received_agent_message";
    v67 = 2048;
    *v68 = v19;
    *&v68[8] = 1024;
    *&v68[10] = v37;
    v26 = "%{public}s Received read error when reading network agent message (%zd bytes) %{darwin.errno}d";
LABEL_109:
    v56 = v38;
    v57 = v39;
    v58 = 28;
    goto LABEL_110;
  }

  if (v63 != 1)
  {
    v38 = __nwlog_obj();
    v39 = type;
    if (!os_log_type_enabled(v38, type))
    {
      goto LABEL_111;
    }

    *buf = 136446722;
    v66 = "nw_network_agent_ctl_copy_received_agent_message";
    v67 = 2048;
    *v68 = v19;
    *&v68[8] = 1024;
    *&v68[10] = v37;
    v26 = "%{public}s Received read error when reading network agent message (%zd bytes) %{darwin.errno}d, backtrace limit exceeded";
    goto LABEL_109;
  }

  v51 = __nw_create_backtrace_string();
  v38 = __nwlog_obj();
  v39 = type;
  v52 = os_log_type_enabled(v38, type);
  if (!v51)
  {
    if (!v52)
    {
      goto LABEL_111;
    }

    *buf = 136446722;
    v66 = "nw_network_agent_ctl_copy_received_agent_message";
    v67 = 2048;
    *v68 = v19;
    *&v68[8] = 1024;
    *&v68[10] = v37;
    v26 = "%{public}s Received read error when reading network agent message (%zd bytes) %{darwin.errno}d, no backtrace";
    goto LABEL_109;
  }

  if (v52)
  {
    *buf = 136446978;
    v66 = "nw_network_agent_ctl_copy_received_agent_message";
    v67 = 2048;
    *v68 = v19;
    *&v68[8] = 1024;
    *&v68[10] = v37;
    *&v68[14] = 2082;
    *&v68[16] = v51;
    _os_log_impl(&dword_181A37000, v38, v39, "%{public}s Received read error when reading network agent message (%zd bytes) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
  }

  free(v51);
  if (v23)
  {
LABEL_112:
    free(v23);
  }

LABEL_113:
  result = v20;
  if (v20)
  {
    goto LABEL_59;
  }

  return result;
}

NWConcrete_nw_agent_client *nw_agent_client_create(unsigned __int8 *a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [NWConcrete_nw_agent_client alloc];
  v8 = v5;
  v9 = v6;
  if (v7)
  {
    if (a1)
    {
      v63.receiver = v7;
      v63.super_class = NWConcrete_nw_agent_client;
      v7 = objc_msgSendSuper2(&v63, sel_init);
      if (v7)
      {
        v10 = *a1;
        if (v10 > 0x13)
        {
          goto LABEL_13;
        }

        if (((1 << v10) & 0xCF400) != 0)
        {
          if (*(a1 + 7) > 0xFu)
          {
            if (!uuid_is_null(a1 + 32))
            {
              *v7->client_uuid = *(a1 + 2);
              v11 = nw_path_copy_path_for_client_with_context((a1 + 32));
              path = v7->path;
              v7->path = v11;

              v13 = v7->path;
              if (v13)
              {
                v14 = v13;
                v15 = _nw_path_copy_effective_remote_endpoint(v14);

                endpoint = v7->endpoint;
                v7->endpoint = v15;

                v17 = nw_path_copy_parameters(v7->path);
                parameters = v7->parameters;
                v7->parameters = v17;

                v19 = nw_path_copy_advertise_descriptor(v7->path);
                advertise_descriptor = v7->advertise_descriptor;
                v7->advertise_descriptor = v19;

                v21 = nw_path_copy_browse_descriptor(v7->path);
                browse_descriptor = v7->browse_descriptor;
                v7->browse_descriptor = v21;

                v23 = nw_path_copy_group_descriptor(v7->path);
                group_descriptor = v7->group_descriptor;
                v7->group_descriptor = v23;
              }
            }

            goto LABEL_13;
          }

          v38 = __nwlog_obj();
          *buf = 136446210;
          v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
          v39 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v62 = 0;
          if (!__nwlog_fault(v39, &type, &v62))
          {
            goto LABEL_73;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v40 = __nwlog_obj();
            v41 = type;
            if (os_log_type_enabled(v40, type))
            {
              *buf = 136446210;
              v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
              _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_client_message))", buf, 0xCu);
            }
          }

          else if (v62 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v40 = __nwlog_obj();
            v49 = type;
            v50 = os_log_type_enabled(v40, type);
            if (backtrace_string)
            {
              if (v50)
              {
                *buf = 136446466;
                v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
                v67 = 2082;
                v68 = backtrace_string;
                _os_log_impl(&dword_181A37000, v40, v49, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_client_message)), dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_73;
            }

            if (v50)
            {
              *buf = 136446210;
              v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
              _os_log_impl(&dword_181A37000, v40, v49, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_client_message)), no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v40 = __nwlog_obj();
            v53 = type;
            if (os_log_type_enabled(v40, type))
            {
              *buf = 136446210;
              v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
              _os_log_impl(&dword_181A37000, v40, v53, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_client_message)), backtrace limit exceeded", buf, 0xCu);
            }
          }

LABEL_73:
          if (v39)
          {
            free(v39);
          }

LABEL_75:

LABEL_76:
          v7 = 0;
          goto LABEL_14;
        }

        if (v10 != 5)
        {
LABEL_13:
          v27 = v8[3];
          next_id = nw_agent_client_get_next_id(v8 + 4);
          snprintf(v7->log_string, 8uLL, "%u.%u", v27, next_id);
          goto LABEL_14;
        }

        if (*(a1 + 7) > 0x17u)
        {
          v25 = _nw_parameters_create();
          v26 = v7->parameters;
          v7->parameters = v25;

          nw_parameters_set_pid(v7->parameters, *(a1 + 9));
          nw_parameters_set_e_proc_uuid(v7->parameters, (a1 + 40));
          goto LABEL_13;
        }

        v54 = __nwlog_obj();
        *buf = 136446210;
        v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
        v55 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v62 = 0;
        if (__nwlog_fault(v55, &type, &v62))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v56 = __nwlog_obj();
            v57 = type;
            if (os_log_type_enabled(v56, type))
            {
              *buf = 136446210;
              v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
              _os_log_impl(&dword_181A37000, v56, v57, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_trigger_message))", buf, 0xCu);
            }
          }

          else if (v62 == 1)
          {
            v58 = __nw_create_backtrace_string();
            v56 = __nwlog_obj();
            v59 = type;
            v60 = os_log_type_enabled(v56, type);
            if (v58)
            {
              if (v60)
              {
                *buf = 136446466;
                v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
                v67 = 2082;
                v68 = v58;
                _os_log_impl(&dword_181A37000, v56, v59, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_trigger_message)), dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v58);
              goto LABEL_88;
            }

            if (v60)
            {
              *buf = 136446210;
              v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
              _os_log_impl(&dword_181A37000, v56, v59, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_trigger_message)), no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v56 = __nwlog_obj();
            v61 = type;
            if (os_log_type_enabled(v56, type))
            {
              *buf = 136446210;
              v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
              _os_log_impl(&dword_181A37000, v56, v61, "%{public}s called with null (header->message_payload_length >= sizeof(struct netagent_trigger_message)), backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_88:
        if (v55)
        {
          free(v55);
        }

        goto LABEL_75;
      }

      v34 = __nwlog_obj();
      *buf = 136446210;
      v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
      v35 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v62 = 0;
      if (__nwlog_fault(v35, &type, &v62))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v36 = __nwlog_obj();
          v37 = type;
          if (os_log_type_enabled(v36, type))
          {
            *buf = 136446210;
            v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
            _os_log_impl(&dword_181A37000, v36, v37, "%{public}s [super init] failed", buf, 0xCu);
          }
        }

        else if (v62 == 1)
        {
          v45 = __nw_create_backtrace_string();
          v36 = __nwlog_obj();
          v46 = type;
          v47 = os_log_type_enabled(v36, type);
          if (v45)
          {
            if (v47)
            {
              *buf = 136446466;
              v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
              v67 = 2082;
              v68 = v45;
              _os_log_impl(&dword_181A37000, v36, v46, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v45);
            goto LABEL_68;
          }

          if (v47)
          {
            *buf = 136446210;
            v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
            _os_log_impl(&dword_181A37000, v36, v46, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v36 = __nwlog_obj();
          v52 = type;
          if (os_log_type_enabled(v36, type))
          {
            *buf = 136446210;
            v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
            _os_log_impl(&dword_181A37000, v36, v52, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_68:
      if (v35)
      {
        free(v35);
      }

      goto LABEL_76;
    }

    v30 = __nwlog_obj();
    *buf = 136446210;
    v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
    v31 = _os_log_send_and_compose_impl();

    LOBYTE(v63.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v31, &v63, &type))
    {
      if (LOBYTE(v63.receiver) == 17)
      {
        v32 = __nwlog_obj();
        receiver = v63.receiver;
        if (os_log_type_enabled(v32, v63.receiver))
        {
          *buf = 136446210;
          v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
          _os_log_impl(&dword_181A37000, v32, receiver, "%{public}s called with null message", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v42 = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v43 = v63.receiver;
        v44 = os_log_type_enabled(v32, v63.receiver);
        if (v42)
        {
          if (v44)
          {
            *buf = 136446466;
            v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
            v67 = 2082;
            v68 = v42;
            _os_log_impl(&dword_181A37000, v32, v43, "%{public}s called with null message, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v42);
          goto LABEL_62;
        }

        if (v44)
        {
          *buf = 136446210;
          v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
          _os_log_impl(&dword_181A37000, v32, v43, "%{public}s called with null message, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v51 = v63.receiver;
        if (os_log_type_enabled(v32, v63.receiver))
        {
          *buf = 136446210;
          v66 = "[NWConcrete_nw_agent_client initWithMessage:agent:context:]";
          _os_log_impl(&dword_181A37000, v32, v51, "%{public}s called with null message, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_62:
    if (v31)
    {
      free(v31);
    }

    goto LABEL_76;
  }

LABEL_14:

  return v7;
}

uint64_t nw_path_copy_path_for_client_with_context(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v71 = *MEMORY[0x1E69E9840];
  v4 = v3;
  if (uuid_is_null(v2))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v67 = "nw_path_copy_path_for_client_with_context";
    v6 = _os_log_send_and_compose_impl();

    v70[0] = OS_LOG_TYPE_ERROR;
    v62[0] = 0;
    if (!__nwlog_fault(v6, v70, v62))
    {
      goto LABEL_101;
    }

    if (v70[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = v70[0];
      if (os_log_type_enabled(v7, v70[0]))
      {
        *buf = 136446210;
        v67 = "nw_path_copy_path_for_client_with_context";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null client_id", buf, 0xCu);
      }

LABEL_72:

      goto LABEL_101;
    }

    if (v62[0] != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v17 = v70[0];
      if (os_log_type_enabled(v7, v70[0]))
      {
        *buf = 136446210;
        v67 = "nw_path_copy_path_for_client_with_context";
        _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null client_id, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_72;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v15 = v70[0];
    v16 = os_log_type_enabled(v7, v70[0]);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v67 = "nw_path_copy_path_for_client_with_context";
        _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null client_id, no backtrace", buf, 0xCu);
      }

      goto LABEL_72;
    }

    if (v16)
    {
      *buf = 136446466;
      v67 = "nw_path_copy_path_for_client_with_context";
      v68 = 2082;
      v69[0] = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v15, "%{public}s called with null client_id, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    if (!v6)
    {
      goto LABEL_104;
    }

LABEL_102:
    v55 = v6;
LABEL_103:
    free(v55);
    goto LABEL_104;
  }

  if ((nw_path_shared_necp_observer_fd(v4) & 0x80000000) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    *buf = 136446210;
    v67 = "nw_path_copy_path_for_client_with_context";
    v6 = _os_log_send_and_compose_impl();

    v70[0] = OS_LOG_TYPE_ERROR;
    v62[0] = 0;
    if (!__nwlog_fault(v6, v70, v62))
    {
      goto LABEL_101;
    }

    if (v70[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v19 = v70[0];
      if (os_log_type_enabled(v7, v70[0]))
      {
        *buf = 136446210;
        v67 = "nw_path_copy_path_for_client_with_context";
        _os_log_impl(&dword_181A37000, v7, v19, "%{public}s nw_path_shared_necp_observer_fd failed", buf, 0xCu);
      }

      goto LABEL_72;
    }

    if (v62[0] != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v33 = v70[0];
      if (os_log_type_enabled(v7, v70[0]))
      {
        *buf = 136446210;
        v67 = "nw_path_copy_path_for_client_with_context";
        _os_log_impl(&dword_181A37000, v7, v33, "%{public}s nw_path_shared_necp_observer_fd failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_72;
    }

    v23 = __nw_create_backtrace_string();
    if (!v23)
    {
      v7 = __nwlog_obj();
      v44 = v70[0];
      if (os_log_type_enabled(v7, v70[0]))
      {
        *buf = 136446210;
        v67 = "nw_path_copy_path_for_client_with_context";
        _os_log_impl(&dword_181A37000, v7, v44, "%{public}s nw_path_shared_necp_observer_fd failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_72;
    }

    v24 = v23;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    v26 = v70[0];
    if (os_log_type_enabled(v25, v70[0]))
    {
      *buf = 136446466;
      v67 = "nw_path_copy_path_for_client_with_context";
      v68 = 2082;
      v69[0] = v24;
      _os_log_impl(&dword_181A37000, v25, v26, "%{public}s nw_path_shared_necp_observer_fd failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v24);
    if (!v6)
    {
      goto LABEL_104;
    }

    goto LABEL_102;
  }

  bzero(v70, 0x400uLL);
  v9 = necp_client_action();
  if (v9 <= 0)
  {
    v20 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    v22 = v21;
    if (v20 == 2)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v67 = "nw_path_copy_path_for_client_with_context";
        v68 = 1024;
        LODWORD(v69[0]) = 2;
        _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s NECP_CLIENT_ACTION_COPY_PARAMETERS failed %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_104;
    }

    *buf = 136446466;
    v67 = "nw_path_copy_path_for_client_with_context";
    v68 = 1024;
    LODWORD(v69[0]) = v20;
    v6 = _os_log_send_and_compose_impl();

    v62[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v6, v62, &type))
    {
      if (v62[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v32 = v62[0];
        if (os_log_type_enabled(v31, v62[0]))
        {
          *buf = 136446466;
          v67 = "nw_path_copy_path_for_client_with_context";
          v68 = 1024;
          LODWORD(v69[0]) = v20;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s NECP_CLIENT_ACTION_COPY_PARAMETERS failed %{darwin.errno}d", buf, 0x12u);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v34 = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v35 = v62[0];
        v36 = os_log_type_enabled(v31, v62[0]);
        if (v34)
        {
          if (v36)
          {
            *buf = 136446722;
            v67 = "nw_path_copy_path_for_client_with_context";
            v68 = 1024;
            LODWORD(v69[0]) = v20;
            WORD2(v69[0]) = 2082;
            *(v69 + 6) = v34;
            _os_log_impl(&dword_181A37000, v31, v35, "%{public}s NECP_CLIENT_ACTION_COPY_PARAMETERS failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          goto LABEL_81;
        }

        if (v36)
        {
          *buf = 136446466;
          v67 = "nw_path_copy_path_for_client_with_context";
          v68 = 1024;
          LODWORD(v69[0]) = v20;
          _os_log_impl(&dword_181A37000, v31, v35, "%{public}s NECP_CLIENT_ACTION_COPY_PARAMETERS failed %{darwin.errno}d, no backtrace", buf, 0x12u);
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v45 = v62[0];
        if (os_log_type_enabled(v31, v62[0]))
        {
          *buf = 136446466;
          v67 = "nw_path_copy_path_for_client_with_context";
          v68 = 1024;
          LODWORD(v69[0]) = v20;
          _os_log_impl(&dword_181A37000, v31, v45, "%{public}s NECP_CLIENT_ACTION_COPY_PARAMETERS failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
        }
      }
    }

LABEL_101:
    if (!v6)
    {
LABEL_104:
      v13 = 0;
LABEL_105:

      return v13;
    }

    goto LABEL_102;
  }

  bzero(buf, 0x1800uLL);
  v10 = necp_client_action();
  if (v10 > 0)
  {
    v11 = 0;
    v12 = buf;
    goto LABEL_11;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v28 = **(StatusReg + 8);
  v29 = __nwlog_obj();
  v30 = v29;
  if (v28 != 22)
  {
    if (v28 == 2)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *v62 = 136446466;
        v63 = "nw_path_copy_path_for_client_with_context";
        v64 = 1024;
        *v65 = 2;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d", v62, 0x12u);
      }

      goto LABEL_104;
    }

    *v62 = 136446466;
    v63 = "nw_path_copy_path_for_client_with_context";
    v64 = 1024;
    *v65 = v28;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v60 = 0;
    if (__nwlog_fault(v6, &type, &v60))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v42, type))
        {
          *v62 = 136446466;
          v63 = "nw_path_copy_path_for_client_with_context";
          v64 = 1024;
          *v65 = v28;
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d", v62, 0x12u);
        }

LABEL_100:

        goto LABEL_101;
      }

      if (v60 != 1)
      {
        v42 = __nwlog_obj();
        v51 = type;
        if (os_log_type_enabled(v42, type))
        {
          *v62 = 136446466;
          v63 = "nw_path_copy_path_for_client_with_context";
          v64 = 1024;
          *v65 = v28;
          _os_log_impl(&dword_181A37000, v42, v51, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d, backtrace limit exceeded", v62, 0x12u);
        }

        goto LABEL_100;
      }

      v34 = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v46 = type;
      v47 = os_log_type_enabled(v42, type);
      if (!v34)
      {
        if (v47)
        {
          *v62 = 136446466;
          v63 = "nw_path_copy_path_for_client_with_context";
          v64 = 1024;
          *v65 = v28;
          _os_log_impl(&dword_181A37000, v42, v46, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d, no backtrace", v62, 0x12u);
        }

        goto LABEL_100;
      }

      if (v47)
      {
        *v62 = 136446722;
        v63 = "nw_path_copy_path_for_client_with_context";
        v64 = 1024;
        *v65 = v28;
        *&v65[4] = 2082;
        *&v65[6] = v34;
        _os_log_impl(&dword_181A37000, v42, v46, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d, dumping backtrace:%{public}s", v62, 0x1Cu);
      }

LABEL_81:
      free(v34);
      if (!v6)
      {
        goto LABEL_104;
      }

      goto LABEL_102;
    }

    goto LABEL_101;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *v62 = 136446466;
    v63 = "nw_path_copy_path_for_client_with_context";
    v64 = 1024;
    *v65 = 48;
    _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s Trying to copy result again for %d flows", v62, 0x12u);
  }

  v37 = malloc_type_calloc(1uLL, 0x6400uLL, 0x607D014CuLL);
  if (v37)
  {
LABEL_63:
    v41 = v37;
    v10 = necp_client_action();
    if (v10 > 0)
    {
      v12 = v41;
      v11 = v41;
LABEL_11:
      v13 = nw_path_copy_path_for_tlv(v2, v4, v70, v9, v12, v10);
      if (v11)
      {
        free(v11);
      }

      goto LABEL_105;
    }

    v48 = **(StatusReg + 8);
    v49 = __nwlog_obj();
    v50 = v49;
    if (v48 == 2)
    {
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *v62 = 136446466;
        v63 = "nw_path_copy_path_for_client_with_context";
        v64 = 1024;
        *v65 = 2;
        _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_ERROR, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d", v62, 0x12u);
      }

LABEL_119:
      if (!v41)
      {
        goto LABEL_104;
      }

      v55 = v41;
      goto LABEL_103;
    }

    *v62 = 136446466;
    v63 = "nw_path_copy_path_for_client_with_context";
    v64 = 1024;
    *v65 = v48;
    v52 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v60 = 0;
    if (__nwlog_fault(v52, &type, &v60))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v53 = __nwlog_obj();
        v54 = type;
        if (os_log_type_enabled(v53, type))
        {
          *v62 = 136446466;
          v63 = "nw_path_copy_path_for_client_with_context";
          v64 = 1024;
          *v65 = v48;
          _os_log_impl(&dword_181A37000, v53, v54, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d", v62, 0x12u);
        }
      }

      else if (v60 == 1)
      {
        v56 = __nw_create_backtrace_string();
        v53 = __nwlog_obj();
        v57 = type;
        v58 = os_log_type_enabled(v53, type);
        if (v56)
        {
          if (v58)
          {
            *v62 = 136446722;
            v63 = "nw_path_copy_path_for_client_with_context";
            v64 = 1024;
            *v65 = v48;
            *&v65[4] = 2082;
            *&v65[6] = v56;
            _os_log_impl(&dword_181A37000, v53, v57, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d, dumping backtrace:%{public}s", v62, 0x1Cu);
          }

          free(v56);
          goto LABEL_117;
        }

        if (v58)
        {
          *v62 = 136446466;
          v63 = "nw_path_copy_path_for_client_with_context";
          v64 = 1024;
          *v65 = v48;
          _os_log_impl(&dword_181A37000, v53, v57, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d, no backtrace", v62, 0x12u);
        }
      }

      else
      {
        v53 = __nwlog_obj();
        v59 = type;
        if (os_log_type_enabled(v53, type))
        {
          *v62 = 136446466;
          v63 = "nw_path_copy_path_for_client_with_context";
          v64 = 1024;
          *v65 = v48;
          _os_log_impl(&dword_181A37000, v53, v59, "%{public}s NECP_CLIENT_ACTION_COPY_RESULT %{darwin.errno}d, backtrace limit exceeded", v62, 0x12u);
        }
      }
    }

LABEL_117:
    if (v52)
    {
      free(v52);
    }

    goto LABEL_119;
  }

  v38 = __nwlog_obj();
  os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
  *v62 = 136446722;
  v63 = "nw_path_copy_path_for_client_with_context";
  v64 = 2048;
  *v65 = 1;
  *&v65[8] = 2048;
  *&v65[10] = 25600;
  v39 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v39);
  if (!result)
  {
    free(v39);
    v37 = 0;
    goto LABEL_63;
  }

  __break(1u);
  return result;
}

uint64_t nw_path_shared_necp_observer_fd(void *a1)
{
  *&v39[5] = *MEMORY[0x1E69E9840];
  v1 = a1;
  pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
  globals_for_path = nw_context_get_globals_for_path(v1);
  os_unfair_lock_lock((globals_for_path + 112));
  v3 = *(globals_for_path + 128);
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = necp_open();
  *(globals_for_path + 128) = v4;
  if (v4 < 0)
  {
    v12 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    os_unfair_lock_unlock((globals_for_path + 112));
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    *buf = 136446466;
    v35 = "nw_path_shared_necp_observer_fd";
    v36 = 1024;
    v37 = v12;
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v8, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446466;
          v35 = "nw_path_shared_necp_observer_fd";
          v36 = 1024;
          v37 = v12;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s necp_open observer failed %{darwin.errno}d", buf, 0x12u);
        }
      }

      else if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v22 = backtrace_string;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          v24 = type;
          if (os_log_type_enabled(v23, type))
          {
            *buf = 136446722;
            v35 = "nw_path_shared_necp_observer_fd";
            v36 = 1024;
            v37 = v12;
            v38 = 2082;
            *v39 = v22;
            _os_log_impl(&dword_181A37000, v23, v24, "%{public}s necp_open observer failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v22);
          if (!v8)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        v14 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446466;
          v35 = "nw_path_shared_necp_observer_fd";
          v36 = 1024;
          v37 = v12;
          _os_log_impl(&dword_181A37000, v14, v30, "%{public}s necp_open observer failed %{darwin.errno}d, no backtrace", buf, 0x12u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v27 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446466;
          v35 = "nw_path_shared_necp_observer_fd";
          v36 = 1024;
          v37 = v12;
          _os_log_impl(&dword_181A37000, v14, v27, "%{public}s necp_open observer failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
        }
      }
    }

LABEL_40:
    if (!v8)
    {
LABEL_42:
      v3 = 0xFFFFFFFFLL;
      goto LABEL_43;
    }

LABEL_41:
    free(v8);
    goto LABEL_42;
  }

  arc4random_buf((globals_for_path + 16), 8uLL);
  if (change_fdguard_np())
  {
    v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    close(*(globals_for_path + 128));
    *(globals_for_path + 128) = -1;
    os_unfair_lock_unlock((globals_for_path + 112));
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = *(globals_for_path + 128);
    *buf = 136446722;
    v35 = "nw_path_shared_necp_observer_fd";
    v36 = 1024;
    v37 = v7;
    v38 = 1024;
    v39[0] = v5;
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v8, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          v11 = *(globals_for_path + 128);
          *buf = 136446722;
          v35 = "nw_path_shared_necp_observer_fd";
          v36 = 1024;
          v37 = v11;
          v38 = 1024;
          v39[0] = v5;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s Failed to guard necp observer fd %d %{darwin.errno}d", buf, 0x18u);
        }
      }

      else if (v32 == 1)
      {
        v16 = __nw_create_backtrace_string();
        if (v16)
        {
          v17 = v16;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v19 = type;
          if (os_log_type_enabled(v18, type))
          {
            v20 = *(globals_for_path + 128);
            *buf = 136446978;
            v35 = "nw_path_shared_necp_observer_fd";
            v36 = 1024;
            v37 = v20;
            v38 = 1024;
            v39[0] = v5;
            LOWORD(v39[1]) = 2082;
            *(&v39[1] + 2) = v17;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s Failed to guard necp observer fd %d %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(v17);
          if (!v8)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        v9 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v9, type))
        {
          v29 = *(globals_for_path + 128);
          *buf = 136446722;
          v35 = "nw_path_shared_necp_observer_fd";
          v36 = 1024;
          v37 = v29;
          v38 = 1024;
          v39[0] = v5;
          _os_log_impl(&dword_181A37000, v9, v28, "%{public}s Failed to guard necp observer fd %d %{darwin.errno}d, no backtrace", buf, 0x18u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(v9, type))
        {
          v26 = *(globals_for_path + 128);
          *buf = 136446722;
          v35 = "nw_path_shared_necp_observer_fd";
          v36 = 1024;
          v37 = v26;
          v38 = 1024;
          v39[0] = v5;
          _os_log_impl(&dword_181A37000, v9, v25, "%{public}s Failed to guard necp observer fd %d %{darwin.errno}d, backtrace limit exceeded", buf, 0x18u);
        }
      }
    }

    goto LABEL_40;
  }

  *(globals_for_path + 136) |= 4u;
  v3 = *(globals_for_path + 128);
LABEL_2:
  os_unfair_lock_unlock((globals_for_path + 112));
LABEL_43:

  return v3;
}

uint64_t nw_path_parse_necp_parameters(void *a1, void **a2, id *a3, id *a4, id *a5, _BYTE *a6, _WORD *a7, char *a8, _BYTE *a9, uint64_t a10, unint64_t a11)
{
  v526 = *MEMORY[0x1E69E9840];
  parameters = a1;
  if (!parameters)
  {
    v462 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_parameters";
    v20 = _os_log_send_and_compose_impl();

    uu[0] = 16;
    LOBYTE(v517) = 0;
    if (!__nwlog_fault(v20, uu, &v517))
    {
      goto LABEL_25;
    }

    if (uu[0] == 17)
    {
      v21 = __nwlog_obj();
      v463 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v463, "%{public}s called with null parameters", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v517 != 1)
    {
      v21 = __nwlog_obj();
      v479 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v479, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_24;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v469 = uu[0];
    v470 = os_log_type_enabled(v21, uu[0]);
    if (!backtrace_string)
    {
      if (v470)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v469, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v470)
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_parse_necp_parameters";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v469, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_1195;
  }

  if (!a10)
  {
    v464 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_parameters";
    v20 = _os_log_send_and_compose_impl();

    uu[0] = 16;
    LOBYTE(v517) = 0;
    if (!__nwlog_fault(v20, uu, &v517))
    {
      goto LABEL_25;
    }

    if (uu[0] == 17)
    {
      v21 = __nwlog_obj();
      v465 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v465, "%{public}s called with null buffer", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v517 != 1)
    {
      v21 = __nwlog_obj();
      v480 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v480, "%{public}s called with null buffer, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_24;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v471 = uu[0];
    v472 = os_log_type_enabled(v21, uu[0]);
    if (!backtrace_string)
    {
      if (v472)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v471, "%{public}s called with null buffer, no backtrace", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v472)
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_parse_necp_parameters";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v471, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_1195;
  }

  v502 = a3;
  v508 = a4;
  location = a5;
  if (!a11)
  {
    v466 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_parameters";
    v20 = _os_log_send_and_compose_impl();

    uu[0] = 16;
    LOBYTE(v517) = 0;
    if (!__nwlog_fault(v20, uu, &v517))
    {
      goto LABEL_25;
    }

    if (uu[0] == 17)
    {
      v21 = __nwlog_obj();
      v467 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v467, "%{public}s called with null buffer_length", buf, 0xCu);
      }

LABEL_24:

      goto LABEL_25;
    }

    if (v517 != 1)
    {
      v21 = __nwlog_obj();
      v481 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v481, "%{public}s called with null buffer_length, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_24;
    }

    backtrace_string = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v473 = uu[0];
    v474 = os_log_type_enabled(v21, uu[0]);
    if (!backtrace_string)
    {
      if (v474)
      {
        *buf = 136446210;
        *&buf[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v21, v473, "%{public}s called with null buffer_length, no backtrace", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v474)
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_parse_necp_parameters";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v21, v473, "%{public}s called with null buffer_length, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_1195:

    free(backtrace_string);
LABEL_25:
    if (!v20)
    {
LABEL_27:
      v28 = 0;
      goto LABEL_1146;
    }

LABEL_26:
    free(v20);
    goto LABEL_27;
  }

  if (a11 <= 4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "nw_path_parse_necp_parameters";
    *&buf[12] = 2048;
    *&buf[14] = a11;
    v20 = _os_log_send_and_compose_impl();

    uu[0] = 16;
    LOBYTE(v517) = 0;
    if (!__nwlog_fault(v20, uu, &v517))
    {
      goto LABEL_25;
    }

    if (uu[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v22 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_parse_necp_parameters";
        *&buf[12] = 2048;
        *&buf[14] = a11;
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s NECP buffer too short %zu", buf, 0x16u);
      }
    }

    else if (v517 == 1)
    {
      v24 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v25 = uu[0];
      v26 = os_log_type_enabled(v21, uu[0]);
      if (v24)
      {
        if (v26)
        {
          *buf = 136446722;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 2048;
          *&buf[14] = a11;
          *&buf[22] = 2082;
          *&buf[24] = v24;
          _os_log_impl(&dword_181A37000, v21, v25, "%{public}s NECP buffer too short %zu, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v24);
        if (!v20)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (v26)
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_parse_necp_parameters";
        *&buf[12] = 2048;
        *&buf[14] = a11;
        _os_log_impl(&dword_181A37000, v21, v25, "%{public}s NECP buffer too short %zu, no backtrace", buf, 0x16u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v27 = uu[0];
      if (os_log_type_enabled(v21, uu[0]))
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_parse_necp_parameters";
        *&buf[12] = 2048;
        *&buf[14] = a11;
        _os_log_impl(&dword_181A37000, v21, v27, "%{public}s NECP buffer too short %zu, backtrace limit exceeded", buf, 0x16u);
      }
    }

    goto LABEL_24;
  }

  v499 = a7;
  v500 = a8;
  v512 = a2;
  v518 = 0;
  v517 = 0;
  v516 = 0;
  v515 = 0;
  if (a11 == 5)
  {
    LOBYTE(v503) = 0;
    v510 = 0;
    v511 = 0;
    v506 = 0;
    v509 = 0;
    v501 = 0;
    v498 = 0;
    v504 = 0;
    v507 = 0;
    v23 = 0;
    goto LABEL_1107;
  }

  v497 = a6;
  v507 = 0;
  v504 = 0;
  v498 = 0;
  v501 = 0;
  v509 = 0;
  v510 = 0;
  v506 = 0;
  v511 = 0;
  v503 = 0;
  v23 = 0;
  while (1)
  {
    v30 = *(a10 + v23);
    v31 = *(a10 + 1 + v23);
    if (v31)
    {
      if (v31 <= 0xFFFFFFF9 && a11 >= v31 + 5 && a11 - (v31 + 5) >= v23)
      {
        v40 = (a10 + 5 + v23);
        goto LABEL_60;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      *buf = 136446978;
      *&buf[4] = "nw_necp_buffer_get_tlv_value";
      *&buf[12] = 2048;
      *&buf[14] = v23;
      *&buf[22] = 2048;
      *&buf[24] = a11;
      *&buf[32] = 1024;
      *&buf[34] = v31;
      v34 = _os_log_send_and_compose_impl();

      uu[0] = 16;
      v519 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v34, uu, &v519))
      {
        if (uu[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v35 = gLogObj;
          v36 = uu[0];
          if (os_log_type_enabled(v35, uu[0]))
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v23;
            *&buf[22] = 2048;
            *&buf[24] = a11;
            *&buf[32] = 1024;
            *&buf[34] = v31;
            _os_log_impl(&dword_181A37000, v35, v36, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, 0x26u);
          }
        }

        else if (v519 == OS_LOG_TYPE_INFO)
        {
          v37 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v35 = gLogObj;
          v38 = uu[0];
          v39 = os_log_type_enabled(v35, uu[0]);
          if (v37)
          {
            if (v39)
            {
              *buf = 136447234;
              *&buf[4] = "nw_necp_buffer_get_tlv_value";
              *&buf[12] = 2048;
              *&buf[14] = v23;
              *&buf[22] = 2048;
              *&buf[24] = a11;
              *&buf[32] = 1024;
              *&buf[34] = v31;
              *&buf[38] = 2082;
              *&buf[40] = v37;
              _os_log_impl(&dword_181A37000, v35, v38, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, dumping backtrace:%{public}s", buf, 0x30u);
            }

            free(v37);
            if (!v34)
            {
              goto LABEL_59;
            }

LABEL_58:
            free(v34);
            goto LABEL_59;
          }

          if (v39)
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v23;
            *&buf[22] = 2048;
            *&buf[24] = a11;
            *&buf[32] = 1024;
            *&buf[34] = v31;
            _os_log_impl(&dword_181A37000, v35, v38, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, no backtrace", buf, 0x26u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v35 = gLogObj;
          v41 = uu[0];
          if (os_log_type_enabled(v35, uu[0]))
          {
            *buf = 136446978;
            *&buf[4] = "nw_necp_buffer_get_tlv_value";
            *&buf[12] = 2048;
            *&buf[14] = v23;
            *&buf[22] = 2048;
            *&buf[24] = a11;
            *&buf[32] = 1024;
            *&buf[34] = v31;
            _os_log_impl(&dword_181A37000, v35, v41, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, backtrace limit exceeded", buf, 0x26u);
          }
        }
      }

      if (v34)
      {
        goto LABEL_58;
      }
    }

LABEL_59:
    v40 = 0;
LABEL_60:
    v23 += v31 + 5;
    if (v23 > a11)
    {
      break;
    }

    if (v31)
    {
      v42 = v40 == 0;
    }

    else
    {
      v42 = 1;
    }

    if (!v42)
    {
      switch(v30)
      {
        case 1:
          if (v31 == 16)
          {
            goto LABEL_67;
          }

          if (v31 >= 0x11)
          {
            v407 = __nwlog_obj();
            if (os_log_type_enabled(v407, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 1;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 16;
              _os_log_impl(&dword_181A37000, v407, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_67:
            _nw_parameters_set_e_proc_uuid(parameters, v40);
          }

          break;
        case 2:
          if (v31 == 16)
          {
            goto LABEL_231;
          }

          if (v31 >= 0x11)
          {
            v408 = __nwlog_obj();
            if (os_log_type_enabled(v408, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 2;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 16;
              _os_log_impl(&dword_181A37000, v408, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_231:
            _nw_parameters_set_proc_uuid(parameters, v40);
          }

          break;
        case 3:
        case 12:
        case 13:
        case 37:
          break;
        case 4:
          if (*(v40 + (v31 - 1)))
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v90 = gLogObj;
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v31;
            v85 = _os_log_send_and_compose_impl();

            uu[0] = 16;
            v519 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v85, uu, &v519))
            {
              goto LABEL_29;
            }

            if (uu[0] == 17)
            {
              v86 = __nwlog_obj();
              v91 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                _os_log_impl(&dword_181A37000, v86, v91, "%{public}s NECP_CLIENT_PARAMETER_ACCOUNT of length %u not NULL-terminated", buf, 0x12u);
              }

              goto LABEL_28;
            }

            if (v519 != OS_LOG_TYPE_INFO)
            {
              v86 = __nwlog_obj();
              v165 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                _os_log_impl(&dword_181A37000, v86, v165, "%{public}s NECP_CLIENT_PARAMETER_ACCOUNT of length %u not NULL-terminated, backtrace limit exceeded", buf, 0x12u);
              }

              goto LABEL_28;
            }

            v145 = __nw_create_backtrace_string();
            v140 = __nwlog_obj();
            v146 = uu[0];
            v147 = os_log_type_enabled(v140, uu[0]);
            if (v145)
            {
              if (v147)
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                *&buf[18] = 2082;
                *&buf[20] = v145;
                _os_log_impl(&dword_181A37000, v140, v146, "%{public}s NECP_CLIENT_PARAMETER_ACCOUNT of length %u not NULL-terminated, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v145);
              goto LABEL_29;
            }

            if (v147)
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v140, v146, "%{public}s NECP_CLIENT_PARAMETER_ACCOUNT of length %u not NULL-terminated, no backtrace", buf, 0x12u);
            }

            goto LABEL_595;
          }

          _nw_parameters_set_account_id(parameters, v40);
          break;
        case 6:
          if (v31 == 4)
          {
            goto LABEL_233;
          }

          if (v31 >= 5)
          {
            v409 = __nwlog_obj();
            if (os_log_type_enabled(v409, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 6;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v409, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_233:
            _nw_parameters_set_pid(parameters, *v40);
          }

          break;
        case 7:
          if (v31 == 4)
          {
            goto LABEL_177;
          }

          if (v31 >= 5)
          {
            v401 = __nwlog_obj();
            if (os_log_type_enabled(v401, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 7;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v401, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_177:
            _nw_parameters_set_uid(parameters, *v40);
          }

          break;
        case 9:
          if (v31 <= 0x18)
          {
            bzero(&buf[v31], 24 - v31);
            memcpy(buf, v40, v31);
            v56 = _nw_interface_create_with_name(buf);
            if (v56)
            {
              nw_parameters_require_interface(parameters, v56);
            }

            goto LABEL_869;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v132 = gLogObj;
          *buf = 136447234;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 1024;
          *&buf[14] = 9;
          *&buf[18] = 1024;
          *&buf[20] = v31;
          *&buf[24] = 2080;
          *&buf[26] = "nw_path_parse_necp_parameters";
          *&buf[34] = 1024;
          *&buf[36] = 3253;
          v133 = _os_log_send_and_compose_impl();

          uu[0] = 16;
          v519 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v133, uu, &v519))
          {
            goto LABEL_532;
          }

          if (uu[0] == 17)
          {
            v134 = __nwlog_obj();
            v135 = uu[0];
            if (os_log_type_enabled(v134, uu[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 9;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 3253;
              _os_log_impl(&dword_181A37000, v134, v135, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
            }

            goto LABEL_1084;
          }

          if (v519 != OS_LOG_TYPE_INFO)
          {
            v134 = __nwlog_obj();
            v171 = uu[0];
            if (os_log_type_enabled(v134, uu[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 9;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 3253;
              _os_log_impl(&dword_181A37000, v134, v171, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
            }

            goto LABEL_1084;
          }

          v156 = __nw_create_backtrace_string();
          v157 = __nwlog_obj();
          v158 = uu[0];
          v159 = os_log_type_enabled(v157, uu[0]);
          if (v156)
          {
            if (v159)
            {
              *buf = 136447490;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 9;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 3253;
              *&buf[40] = 2082;
              *&buf[42] = v156;
              _os_log_impl(&dword_181A37000, v157, v158, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
            }

            free(v156);
            goto LABEL_532;
          }

          if (v159)
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = 9;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 2080;
            *&buf[26] = "nw_path_parse_necp_parameters";
            *&buf[34] = 1024;
            *&buf[36] = 3253;
            _os_log_impl(&dword_181A37000, v157, v158, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
          }

          goto LABEL_531;
        case 10:
          if (v31 == 4)
          {
            goto LABEL_209;
          }

          if (v31 >= 5)
          {
            v403 = __nwlog_obj();
            if (os_log_type_enabled(v403, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 10;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v403, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_209:
            _nw_parameters_set_traffic_class(parameters, *v40);
          }

          break;
        case 11:
          if (v31 != 2 && v31 != 1)
          {
            v421 = __nwlog_obj();
            if (os_log_type_enabled(v421, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 11;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v421, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          v104 = *v40;
          if (!*v40)
          {
            break;
          }

          v105 = _nw_parameters_copy_default_protocol_stack(parameters);
          v106 = nw_protocol_stack_copy_transport_protocol(v105);
          v107 = v106 == 0;

          if (!v107)
          {
            goto LABEL_452;
          }

          if (v104 == 6)
          {
            options = _nw_tcp_create_options();
            nw_protocol_stack_set_transport_protocol(v105, options);
          }

          else
          {
            if (v104 != 17)
            {
              goto LABEL_452;
            }

            options = _nw_udp_create_options();
            nw_protocol_stack_set_transport_protocol(v105, options);
          }

LABEL_452:
          v498 = v104;
          break;
        case 33:
          v99 = (v31 - 1);
          if (*(v40 + v99))
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v100 = gLogObj;
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v31;
            v101 = _os_log_send_and_compose_impl();

            uu[0] = 16;
            v519 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v101, uu, &v519))
            {
              if (uu[0] == 17)
              {
                v102 = __nwlog_obj();
                v103 = uu[0];
                if (os_log_type_enabled(v102, uu[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_path_parse_necp_parameters";
                  *&buf[12] = 1024;
                  *&buf[14] = v31;
                  _os_log_impl(&dword_181A37000, v102, v103, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER of length %u not NULL-terminated", buf, 0x12u);
                }

                goto LABEL_840;
              }

              if (v519 != OS_LOG_TYPE_INFO)
              {
                v102 = __nwlog_obj();
                v167 = uu[0];
                if (os_log_type_enabled(v102, uu[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_path_parse_necp_parameters";
                  *&buf[12] = 1024;
                  *&buf[14] = v31;
                  _os_log_impl(&dword_181A37000, v102, v167, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER of length %u not NULL-terminated, backtrace limit exceeded", buf, 0x12u);
                }

                goto LABEL_840;
              }

              v150 = __nw_create_backtrace_string();
              v102 = __nwlog_obj();
              type = uu[0];
              v151 = os_log_type_enabled(v102, uu[0]);
              if (!v150)
              {
                if (v151)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_path_parse_necp_parameters";
                  *&buf[12] = 1024;
                  *&buf[14] = v31;
                  _os_log_impl(&dword_181A37000, v102, type, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER of length %u not NULL-terminated, no backtrace", buf, 0x12u);
                }

                goto LABEL_840;
              }

              if (v151)
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                *&buf[18] = 2082;
                *&buf[20] = v150;
                _os_log_impl(&dword_181A37000, v102, type, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER of length %u not NULL-terminated, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v150);
            }

            goto LABEL_841;
          }

          if (!v512)
          {
            goto LABEL_843;
          }

          if (*v512)
          {
            nw_endpoint_set_tracker_owner(*v512, v40);
            goto LABEL_843;
          }

          v176 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          v101 = _os_log_send_and_compose_impl();

          uu[0] = 16;
          v519 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v101, uu, &v519))
          {
            goto LABEL_841;
          }

          if (uu[0] == 17)
          {
            v102 = __nwlog_obj();
            v177 = uu[0];
            if (os_log_type_enabled(v102, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v102, v177, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT", buf, 0xCu);
            }

            goto LABEL_840;
          }

          if (v519 != OS_LOG_TYPE_INFO)
          {
            v102 = __nwlog_obj();
            v252 = uu[0];
            if (os_log_type_enabled(v102, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v102, v252, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT, backtrace limit exceeded", buf, 0xCu);
            }

LABEL_840:

LABEL_841:
            if (!v101)
            {
              goto LABEL_843;
            }

LABEL_842:
            free(v101);
            goto LABEL_843;
          }

          v219 = __nw_create_backtrace_string();
          v102 = __nwlog_obj();
          v495 = uu[0];
          v220 = os_log_type_enabled(v102, uu[0]);
          if (!v219)
          {
            if (v220)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v102, v495, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT, no backtrace", buf, 0xCu);
            }

            goto LABEL_840;
          }

          if (v220)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v219;
            _os_log_impl(&dword_181A37000, v102, v495, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_OWNER came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v219);
          if (v101)
          {
            goto LABEL_842;
          }

LABEL_843:
          if (!*(v40 + v99))
          {
            _nw_parameters_set_attributed_bundle_identifier(parameters, v40);
            goto LABEL_863;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v370 = gLogObj;
          *buf = 136446466;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 1024;
          *&buf[14] = v31;
          v371 = _os_log_send_and_compose_impl();

          uu[0] = 16;
          v519 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v371, uu, &v519))
          {
            goto LABEL_861;
          }

          if (uu[0] == 17)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v372 = gLogObj;
            v373 = uu[0];
            if (os_log_type_enabled(v372, uu[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v372, v373, "%{public}s NECP_CLIENT_PARAMETER_ATTRIBUTED_BUNDLE_IDENTIFIER of length %u not NULL-terminated", buf, 0x12u);
            }

LABEL_860:

            goto LABEL_861;
          }

          if (v519 != OS_LOG_TYPE_INFO)
          {
            v372 = __nwlog_obj();
            v377 = uu[0];
            if (os_log_type_enabled(v372, uu[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v372, v377, "%{public}s NECP_CLIENT_PARAMETER_ATTRIBUTED_BUNDLE_IDENTIFIER of length %u not NULL-terminated, backtrace limit exceeded", buf, 0x12u);
            }

            goto LABEL_860;
          }

          v374 = __nw_create_backtrace_string();
          v372 = __nwlog_obj();
          v375 = uu[0];
          v376 = os_log_type_enabled(v372, uu[0]);
          if (!v374)
          {
            if (v376)
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v372, v375, "%{public}s NECP_CLIENT_PARAMETER_ATTRIBUTED_BUNDLE_IDENTIFIER of length %u not NULL-terminated, no backtrace", buf, 0x12u);
            }

            goto LABEL_860;
          }

          if (v376)
          {
            *buf = 136446722;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v31;
            *&buf[18] = 2082;
            *&buf[20] = v374;
            _os_log_impl(&dword_181A37000, v372, v375, "%{public}s NECP_CLIENT_PARAMETER_ATTRIBUTED_BUNDLE_IDENTIFIER of length %u not NULL-terminated, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v374);
LABEL_861:
          if (v371)
          {
            free(v371);
          }

LABEL_863:
          if (v510)
          {
            if (v31 != 16)
            {
              if (v31 < 0x11)
              {
                break;
              }

              v388 = __nwlog_obj();
              if (os_log_type_enabled(v388, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446978;
                *&buf[4] = "nw_path_verify_tlv_length";
                *&buf[12] = 1024;
                *&buf[14] = v30;
                *&buf[18] = 1024;
                *&buf[20] = v31;
                *&buf[24] = 1024;
                *&buf[26] = 16;
                _os_log_impl(&dword_181A37000, v388, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
              }
            }

            if (!nw_path_set_agent_identifier_on_endpoint(v510, v30, v31, v40))
            {
              break;
            }

            v56 = nw_parameters_copy_required_netagent_uuids(parameters);
            if (v56 || (v56 = xpc_array_create(0, 0)) != 0)
            {
              xpc_array_set_uuid(v56, 0xFFFFFFFFFFFFFFFFLL, v40);
              nw_parameters_set_required_netagent_uuids(parameters, v56);
              goto LABEL_869;
            }

            v378 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_path_parse_necp_parameters";
            v379 = _os_log_send_and_compose_impl();

            uu[0] = 16;
            v519 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v379, uu, &v519))
            {
              goto LABEL_889;
            }

            if (uu[0] == 17)
            {
              v380 = __nwlog_obj();
              v381 = uu[0];
              if (os_log_type_enabled(v380, uu[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_path_parse_necp_parameters";
                _os_log_impl(&dword_181A37000, v380, v381, "%{public}s xpc_array_create failed", buf, 0xCu);
              }

              goto LABEL_888;
            }

            if (v519 == OS_LOG_TYPE_INFO)
            {
              v382 = __nw_create_backtrace_string();
              v380 = __nwlog_obj();
              v383 = uu[0];
              v384 = os_log_type_enabled(v380, uu[0]);
              if (v382)
              {
                if (v384)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_path_parse_necp_parameters";
                  *&buf[12] = 2082;
                  *&buf[14] = v382;
                  _os_log_impl(&dword_181A37000, v380, v383, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v382);
                goto LABEL_889;
              }

              if (v384)
              {
                *buf = 136446210;
                *&buf[4] = "nw_path_parse_necp_parameters";
                _os_log_impl(&dword_181A37000, v380, v383, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v380 = __nwlog_obj();
              v385 = uu[0];
              if (os_log_type_enabled(v380, uu[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_path_parse_necp_parameters";
                _os_log_impl(&dword_181A37000, v380, v385, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
              }
            }

LABEL_888:

LABEL_889:
            if (v379)
            {
              free(v379);
            }

            v56 = 0;
            goto LABEL_869;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v138 = gLogObj;
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[4] = "nw_path_parse_necp_parameters";
            _os_log_impl(&dword_181A37000, v138, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply endpoint agent to", buf, 0xCu);
          }

LABEL_872:

          v510 = 0;
          break;
        case 34:
          if (!*(v40 + (v31 - 1)))
          {
            _nw_parameters_set_attribution_context(parameters, v40);
            break;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v84 = gLogObj;
          *buf = 136446466;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 1024;
          *&buf[14] = v31;
          v85 = _os_log_send_and_compose_impl();

          uu[0] = 16;
          v519 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v85, uu, &v519))
          {
            goto LABEL_29;
          }

          if (uu[0] == 17)
          {
            v86 = __nwlog_obj();
            v87 = uu[0];
            if (os_log_type_enabled(v86, uu[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v86, v87, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_CONTEXT of length %u not NULL-terminated", buf, 0x12u);
            }

            goto LABEL_28;
          }

          if (v519 != OS_LOG_TYPE_INFO)
          {
            v86 = __nwlog_obj();
            v163 = uu[0];
            if (os_log_type_enabled(v86, uu[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v86, v163, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_CONTEXT of length %u not NULL-terminated, backtrace limit exceeded", buf, 0x12u);
            }

            goto LABEL_28;
          }

          v139 = __nw_create_backtrace_string();
          v140 = __nwlog_obj();
          v141 = uu[0];
          v142 = os_log_type_enabled(v140, uu[0]);
          if (v139)
          {
            if (v142)
            {
              *buf = 136446722;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              *&buf[18] = 2082;
              *&buf[20] = v139;
              _os_log_impl(&dword_181A37000, v140, v141, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_CONTEXT of length %u not NULL-terminated, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            goto LABEL_422;
          }

          if (v142)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v31;
            _os_log_impl(&dword_181A37000, v140, v141, "%{public}s NECP_CLIENT_PARAMETER_DOMAIN_CONTEXT of length %u not NULL-terminated, no backtrace", buf, 0x12u);
          }

          goto LABEL_595;
        case 35:
          if (*(v40 + (v31 - 1)))
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v88 = gLogObj;
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v31;
            v85 = _os_log_send_and_compose_impl();

            uu[0] = 16;
            v519 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v85, uu, &v519))
            {
              goto LABEL_29;
            }

            if (uu[0] == 17)
            {
              v86 = __nwlog_obj();
              v89 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                _os_log_impl(&dword_181A37000, v86, v89, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN of length %u not NULL-terminated", buf, 0x12u);
              }

              goto LABEL_28;
            }

            if (v519 != OS_LOG_TYPE_INFO)
            {
              v86 = __nwlog_obj();
              v164 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                _os_log_impl(&dword_181A37000, v86, v164, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN of length %u not NULL-terminated, backtrace limit exceeded", buf, 0x12u);
              }

              goto LABEL_28;
            }

            v139 = __nw_create_backtrace_string();
            v140 = __nwlog_obj();
            v143 = uu[0];
            v144 = os_log_type_enabled(v140, uu[0]);
            if (v139)
            {
              if (v144)
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                *&buf[18] = 2082;
                *&buf[20] = v139;
                _os_log_impl(&dword_181A37000, v140, v143, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN of length %u not NULL-terminated, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              goto LABEL_422;
            }

            if (v144)
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v140, v143, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN of length %u not NULL-terminated, no backtrace", buf, 0x12u);
            }

            goto LABEL_595;
          }

          if (!v512)
          {
            break;
          }

          if (*v512)
          {
            nw_endpoint_set_known_tracker_name(*v512, v40);
            break;
          }

          v174 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          v85 = _os_log_send_and_compose_impl();

          uu[0] = 16;
          v519 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v85, uu, &v519))
          {
            goto LABEL_29;
          }

          if (uu[0] == 17)
          {
            v86 = __nwlog_obj();
            v175 = uu[0];
            if (os_log_type_enabled(v86, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v86, v175, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT", buf, 0xCu);
            }

            goto LABEL_28;
          }

          if (v519 != OS_LOG_TYPE_INFO)
          {
            v86 = __nwlog_obj();
            v251 = uu[0];
            if (os_log_type_enabled(v86, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v86, v251, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_28;
          }

          v216 = __nw_create_backtrace_string();
          v86 = __nwlog_obj();
          v217 = uu[0];
          v218 = os_log_type_enabled(v86, uu[0]);
          if (!v216)
          {
            if (v218)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v86, v217, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT, no backtrace", buf, 0xCu);
            }

            goto LABEL_28;
          }

          if (v218)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v216;
            _os_log_impl(&dword_181A37000, v86, v217, "%{public}s NECP_CLIENT_PARAMETER_TRACKER_DOMAIN came before NECP_CLIENT_PARAMETER_REMOTE_ENDPOINT, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v216);
          if (v85)
          {
            goto LABEL_30;
          }

          break;
        case 36:
          v99 = (v31 - 1);
          goto LABEL_843;
        case 42:
          if (!*(v40 + (v31 - 1)))
          {
            nw_parameters_set_url(parameters, v40);
            break;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v94 = gLogObj;
          *buf = 136446466;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 1024;
          *&buf[14] = v31;
          v85 = _os_log_send_and_compose_impl();

          uu[0] = 16;
          v519 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v85, uu, &v519))
          {
            goto LABEL_29;
          }

          if (uu[0] == 17)
          {
            v86 = __nwlog_obj();
            v95 = uu[0];
            if (os_log_type_enabled(v86, uu[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v86, v95, "%{public}s NECP_CLIENT_PARAMETER_URL of length %u not NULL-terminated", buf, 0x12u);
            }

            goto LABEL_28;
          }

          if (v519 != OS_LOG_TYPE_INFO)
          {
            v86 = __nwlog_obj();
            v166 = uu[0];
            if (os_log_type_enabled(v86, uu[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              _os_log_impl(&dword_181A37000, v86, v166, "%{public}s NECP_CLIENT_PARAMETER_URL of length %u not NULL-terminated, backtrace limit exceeded", buf, 0x12u);
            }

            goto LABEL_28;
          }

          v139 = __nw_create_backtrace_string();
          v140 = __nwlog_obj();
          v148 = uu[0];
          v149 = os_log_type_enabled(v140, uu[0]);
          if (v139)
          {
            if (v149)
            {
              *buf = 136446722;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              *&buf[18] = 2082;
              *&buf[20] = v139;
              _os_log_impl(&dword_181A37000, v140, v148, "%{public}s NECP_CLIENT_PARAMETER_URL of length %u not NULL-terminated, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            goto LABEL_422;
          }

          if (v149)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v31;
            _os_log_impl(&dword_181A37000, v140, v148, "%{public}s NECP_CLIENT_PARAMETER_URL of length %u not NULL-terminated, no backtrace", buf, 0x12u);
          }

          goto LABEL_595;
        case 100:
          if (v31 <= 0x18)
          {
            bzero(&buf[v31], 24 - v31);
            memcpy(buf, v40, v31);
            v111 = _nw_interface_create_with_name(buf);
            v112 = v111;
            if (v111)
            {
              v113 = nw_interface_copy_dictionary(v111);
              if (v113)
              {
                v114 = nw_parameters_copy_prohibited_interfaces(parameters);
                if (v114 || (v114 = xpc_array_create(0, 0)) != 0)
                {
                  xpc_array_append_value(v114, v113);
                  nw_parameters_set_prohibited_interfaces(parameters, v114);
                  goto LABEL_270;
                }

                v232 = __nwlog_obj();
                *uu = 136446210;
                *&uu[4] = "nw_path_parse_necp_parameters";
                v233 = _os_log_send_and_compose_impl();

                v519 = OS_LOG_TYPE_ERROR;
                v514 = 0;
                if (__nwlog_fault(v233, &v519, &v514))
                {
                  if (v519 == OS_LOG_TYPE_FAULT)
                  {
                    v234 = __nwlog_obj();
                    v235 = v519;
                    if (os_log_type_enabled(v234, v519))
                    {
                      *uu = 136446210;
                      *&uu[4] = "nw_path_parse_necp_parameters";
                      _os_log_impl(&dword_181A37000, v234, v235, "%{public}s xpc_array_create failed", uu, 0xCu);
                    }

                    goto LABEL_942;
                  }

                  if (v514 == 1)
                  {
                    v257 = __nw_create_backtrace_string();
                    v234 = __nwlog_obj();
                    v258 = v519;
                    v259 = os_log_type_enabled(v234, v519);
                    if (v257)
                    {
                      if (v259)
                      {
                        *uu = 136446466;
                        *&uu[4] = "nw_path_parse_necp_parameters";
                        *&uu[12] = 2082;
                        *&uu[14] = v257;
                        _os_log_impl(&dword_181A37000, v234, v258, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
                      }

                      free(v257);
                      goto LABEL_943;
                    }

                    if (v259)
                    {
                      *uu = 136446210;
                      *&uu[4] = "nw_path_parse_necp_parameters";
                      _os_log_impl(&dword_181A37000, v234, v258, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
                    }
                  }

                  else
                  {
                    v234 = __nwlog_obj();
                    v387 = v519;
                    if (os_log_type_enabled(v234, v519))
                    {
                      *uu = 136446210;
                      *&uu[4] = "nw_path_parse_necp_parameters";
                      _os_log_impl(&dword_181A37000, v234, v387, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
                    }
                  }

LABEL_942:
                }

LABEL_943:
                if (v233)
                {
                  free(v233);
                }

                v114 = 0;
LABEL_270:
              }
            }

            break;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v136 = gLogObj;
          *buf = 136447234;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 1024;
          *&buf[14] = 100;
          *&buf[18] = 1024;
          *&buf[20] = v31;
          *&buf[24] = 2080;
          *&buf[26] = "nw_path_parse_necp_parameters";
          *&buf[34] = 1024;
          *&buf[36] = 3469;
          v133 = _os_log_send_and_compose_impl();

          uu[0] = 16;
          v519 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v133, uu, &v519))
          {
            goto LABEL_532;
          }

          if (uu[0] == 17)
          {
            v134 = __nwlog_obj();
            v137 = uu[0];
            if (os_log_type_enabled(v134, uu[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 100;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 3469;
              _os_log_impl(&dword_181A37000, v134, v137, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
            }

            goto LABEL_1084;
          }

          if (v519 != OS_LOG_TYPE_INFO)
          {
            v134 = __nwlog_obj();
            v172 = uu[0];
            if (os_log_type_enabled(v134, uu[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 100;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 3469;
              _os_log_impl(&dword_181A37000, v134, v172, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
            }

LABEL_1084:

LABEL_532:
            if (!v133)
            {
              break;
            }

LABEL_533:
            v29 = v133;
LABEL_31:
            free(v29);
            break;
          }

          v160 = __nw_create_backtrace_string();
          v157 = __nwlog_obj();
          v161 = uu[0];
          v162 = os_log_type_enabled(v157, uu[0]);
          if (!v160)
          {
            if (v162)
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 100;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 3469;
              _os_log_impl(&dword_181A37000, v157, v161, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
            }

LABEL_531:

            goto LABEL_532;
          }

          if (v162)
          {
            *buf = 136447490;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = 100;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 2080;
            *&buf[26] = "nw_path_parse_necp_parameters";
            *&buf[34] = 1024;
            *&buf[36] = 3469;
            *&buf[40] = 2082;
            *&buf[42] = v160;
            _os_log_impl(&dword_181A37000, v157, v161, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
          }

LABEL_401:

          free(v160);
          if (v133)
          {
            goto LABEL_533;
          }

          break;
        case 101:
          if (v31 != 1)
          {
            v398 = __nwlog_obj();
            if (os_log_type_enabled(v398, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 101;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v398, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          v74 = _nw_interface_functional_type_to_interface_type(*v40);
          v75 = _nw_interface_functional_type_to_interface_subtype(*v40);
          v76 = v75;
          if (v75)
          {
            if (v75 == 1002)
            {
              ++v507;
              break;
            }

            v56 = nw_parameters_copy_prohibited_interface_subtypes(parameters);
            if (v56 || (v56 = xpc_array_create(0, 0)) != 0)
            {
              xpc_array_set_uint64(v56, 0xFFFFFFFFFFFFFFFFLL, v76);
              nw_parameters_set_prohibited_interface_subtypes(parameters, v56);
              goto LABEL_869;
            }

            v212 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_path_parse_necp_parameters";
            v213 = _os_log_send_and_compose_impl();

            uu[0] = 16;
            v519 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v213, uu, &v519))
            {
              goto LABEL_931;
            }

            if (uu[0] == 17)
            {
              v214 = __nwlog_obj();
              v215 = uu[0];
              if (os_log_type_enabled(v214, uu[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_path_parse_necp_parameters";
                _os_log_impl(&dword_181A37000, v214, v215, "%{public}s xpc_array_create failed", buf, 0xCu);
              }

              goto LABEL_930;
            }

            if (v519 == OS_LOG_TYPE_INFO)
            {
              v248 = __nw_create_backtrace_string();
              v214 = __nwlog_obj();
              v249 = uu[0];
              v250 = os_log_type_enabled(v214, uu[0]);
              if (v248)
              {
                if (v250)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_path_parse_necp_parameters";
                  *&buf[12] = 2082;
                  *&buf[14] = v248;
                  _os_log_impl(&dword_181A37000, v214, v249, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v248);
                goto LABEL_931;
              }

              if (v250)
              {
                *buf = 136446210;
                *&buf[4] = "nw_path_parse_necp_parameters";
                _os_log_impl(&dword_181A37000, v214, v249, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v214 = __nwlog_obj();
              v369 = uu[0];
              if (os_log_type_enabled(v214, uu[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_path_parse_necp_parameters";
                _os_log_impl(&dword_181A37000, v214, v369, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
              }
            }

LABEL_930:

LABEL_931:
            if (v213)
            {
              free(v213);
            }

            v56 = 0;
            goto LABEL_869;
          }

          if (!v74)
          {
            break;
          }

          v56 = nw_parameters_copy_prohibited_interface_types(parameters);
          if (v56 || (v56 = xpc_array_create(0, 0)) != 0)
          {
            xpc_array_set_uint64(v56, 0xFFFFFFFFFFFFFFFFLL, v74);
            nw_parameters_set_prohibited_interface_types(parameters, v56);
            goto LABEL_869;
          }

          v228 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          v229 = _os_log_send_and_compose_impl();

          uu[0] = 16;
          v519 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v229, uu, &v519))
          {
            goto LABEL_937;
          }

          if (uu[0] == 17)
          {
            v230 = __nwlog_obj();
            v231 = uu[0];
            if (os_log_type_enabled(v230, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v230, v231, "%{public}s xpc_array_create failed", buf, 0xCu);
            }

LABEL_936:

            goto LABEL_937;
          }

          if (v519 != OS_LOG_TYPE_INFO)
          {
            v230 = __nwlog_obj();
            v386 = uu[0];
            if (os_log_type_enabled(v230, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v230, v386, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_936;
          }

          v254 = __nw_create_backtrace_string();
          v230 = __nwlog_obj();
          v255 = uu[0];
          v256 = os_log_type_enabled(v230, uu[0]);
          if (!v254)
          {
            if (v256)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v230, v255, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
            }

            goto LABEL_936;
          }

          if (v256)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v254;
            _os_log_impl(&dword_181A37000, v230, v255, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v254);
LABEL_937:
          if (v229)
          {
            free(v229);
          }

          v56 = 0;
LABEL_869:

          break;
        case 102:
          if (v31 == 16)
          {
            goto LABEL_259;
          }

          if (v31 < 0x11)
          {
            break;
          }

          v412 = __nwlog_obj();
          if (os_log_type_enabled(v412, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 102;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 1024;
            *&buf[26] = 16;
            _os_log_impl(&dword_181A37000, v412, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_259:
          *uu = *v40;
          if (uuid_is_null(uu))
          {
            break;
          }

          v56 = nw_parameters_copy_prohibited_netagent_uuids(parameters);
          if (v56 || (v56 = xpc_array_create(0, 0)) != 0)
          {
            xpc_array_set_uuid(v56, 0xFFFFFFFFFFFFFFFFLL, uu);
            nw_parameters_set_prohibited_netagent_uuids(parameters, v56);
            goto LABEL_869;
          }

          v204 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          v205 = _os_log_send_and_compose_impl();

          v519 = OS_LOG_TYPE_ERROR;
          v514 = 0;
          if (!__nwlog_fault(v205, &v519, &v514))
          {
            goto LABEL_919;
          }

          if (v519 == OS_LOG_TYPE_FAULT)
          {
            v206 = __nwlog_obj();
            v207 = v519;
            if (os_log_type_enabled(v206, v519))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v206, v207, "%{public}s xpc_array_create failed", buf, 0xCu);
            }

LABEL_918:

            goto LABEL_919;
          }

          if (v514 != 1)
          {
            v206 = __nwlog_obj();
            v341 = v519;
            if (os_log_type_enabled(v206, v519))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v206, v341, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_918;
          }

          v242 = __nw_create_backtrace_string();
          v206 = __nwlog_obj();
          v243 = v519;
          v244 = os_log_type_enabled(v206, v519);
          if (!v242)
          {
            if (v244)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v206, v243, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
            }

            goto LABEL_918;
          }

          if (v244)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v242;
            _os_log_impl(&dword_181A37000, v206, v243, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v242);
LABEL_919:
          if (v205)
          {
            free(v205);
          }

          v56 = 0;
          goto LABEL_869;
        case 103:
          memset(buf, 0, sizeof(buf));
          if (v31 == 64)
          {
            goto LABEL_131;
          }

          if (v31 < 0x41)
          {
            break;
          }

          v392 = __nwlog_obj();
          if (os_log_type_enabled(v392, OS_LOG_TYPE_DEBUG))
          {
            *uu = 136446978;
            *&uu[4] = "nw_path_verify_tlv_length";
            *&uu[12] = 1024;
            *&uu[14] = 103;
            *&uu[18] = 1024;
            *&uu[20] = v31;
            LOWORD(v523) = 1024;
            *(&v523 + 2) = 64;
            _os_log_impl(&dword_181A37000, v392, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", uu, 0x1Eu);
          }

LABEL_131:
          v57 = *(v40 + 1);
          *buf = *v40;
          *&buf[16] = v57;
          v58 = *(v40 + 3);
          *&buf[32] = *(v40 + 2);
          *&buf[48] = v58;
          v59 = nw_parameters_copy_prohibited_netagent_domains(parameters);
          v60 = nw_parameters_copy_prohibited_netagent_types(parameters);
          if (v59)
          {
            goto LABEL_626;
          }

          v59 = xpc_array_create(0, 0);
          if (v59)
          {
            goto LABEL_626;
          }

          v61 = __nwlog_obj();
          *uu = 136446210;
          *&uu[4] = "nw_path_parse_necp_parameters";
          v62 = _os_log_send_and_compose_impl();

          v519 = OS_LOG_TYPE_ERROR;
          v514 = 0;
          if (!__nwlog_fault(v62, &v519, &v514))
          {
            goto LABEL_623;
          }

          if (v519 == OS_LOG_TYPE_FAULT)
          {
            v63 = __nwlog_obj();
            v64 = v519;
            if (os_log_type_enabled(v63, v519))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v63, v64, "%{public}s xpc_array_create failed", uu, 0xCu);
            }

LABEL_622:

            goto LABEL_623;
          }

          if (v514 != 1)
          {
            v63 = __nwlog_obj();
            v224 = v519;
            if (os_log_type_enabled(v63, v519))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v63, v224, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
            }

            goto LABEL_622;
          }

          v182 = __nw_create_backtrace_string();
          v63 = __nwlog_obj();
          v183 = v519;
          v184 = os_log_type_enabled(v63, v519);
          if (!v182)
          {
            if (v184)
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v63, v183, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
            }

            goto LABEL_622;
          }

          if (v184)
          {
            *uu = 136446466;
            *&uu[4] = "nw_path_parse_necp_parameters";
            *&uu[12] = 2082;
            *&uu[14] = v182;
            _os_log_impl(&dword_181A37000, v63, v183, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
          }

          free(v182);
LABEL_623:
          if (v62)
          {
            free(v62);
          }

          v59 = 0;
LABEL_626:
          if (!v60)
          {
            v60 = xpc_array_create(0, 0);
            if (!v60)
            {
              v274 = __nwlog_obj();
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              v275 = _os_log_send_and_compose_impl();

              v519 = OS_LOG_TYPE_ERROR;
              v514 = 0;
              if (__nwlog_fault(v275, &v519, &v514))
              {
                if (v519 == OS_LOG_TYPE_FAULT)
                {
                  v276 = __nwlog_obj();
                  v277 = v519;
                  if (os_log_type_enabled(v276, v519))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v276, v277, "%{public}s xpc_array_create failed", uu, 0xCu);
                  }

                  goto LABEL_806;
                }

                if (v514 == 1)
                {
                  v281 = __nw_create_backtrace_string();
                  v276 = __nwlog_obj();
                  v282 = v519;
                  v283 = os_log_type_enabled(v276, v519);
                  if (v281)
                  {
                    if (v283)
                    {
                      *uu = 136446466;
                      *&uu[4] = "nw_path_parse_necp_parameters";
                      *&uu[12] = 2082;
                      *&uu[14] = v281;
                      _os_log_impl(&dword_181A37000, v276, v282, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
                    }

                    free(v281);
                    goto LABEL_807;
                  }

                  if (v283)
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v276, v282, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
                  }
                }

                else
                {
                  v276 = __nwlog_obj();
                  v286 = v519;
                  if (os_log_type_enabled(v276, v519))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v276, v286, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
                  }
                }

LABEL_806:
              }

LABEL_807:
              if (v275)
              {
                free(v275);
              }

              v60 = 0;
              goto LABEL_831;
            }
          }

          if (!v59)
          {
            goto LABEL_831;
          }

          if (strnlen(buf, 0x20uLL) <= 0x1F && strnlen(&buf[32], 0x20uLL) <= 0x1F)
          {
            xpc_array_set_string(v59, 0xFFFFFFFFFFFFFFFFLL, buf);
            xpc_array_set_string(v60, 0xFFFFFFFFFFFFFFFFLL, &buf[32]);
            nw_parameters_set_prohibited_netagent_classes(parameters, v59, v60);
            goto LABEL_831;
          }

          v260 = __nwlog_obj();
          v261 = strnlen(buf, 0x20uLL);
          v262 = strnlen(&buf[32], 0x20uLL);
          *uu = 136446722;
          *&uu[4] = "nw_path_parse_necp_parameters";
          *&uu[12] = 2048;
          *&uu[14] = v261;
          *&uu[22] = 2048;
          v523 = v262;
          v263 = _os_log_send_and_compose_impl();

          v519 = OS_LOG_TYPE_ERROR;
          v514 = 0;
          if (!__nwlog_fault(v263, &v519, &v514))
          {
            goto LABEL_658;
          }

          if (v519 == OS_LOG_TYPE_FAULT)
          {
            v264 = __nwlog_obj();
            v265 = v519;
            if (os_log_type_enabled(v264, v519))
            {
              v266 = strnlen(buf, 0x20uLL);
              v267 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v266;
              *&uu[22] = 2048;
              v523 = v267;
              _os_log_impl(&dword_181A37000, v264, v265, "%{public}s invalid prohibited netagent string lengths %zu %zu", uu, 0x20u);
            }

LABEL_636:

            goto LABEL_658;
          }

          if (v514 != 1)
          {
            v264 = __nwlog_obj();
            v278 = v519;
            if (os_log_type_enabled(v264, v519))
            {
              v279 = strnlen(buf, 0x20uLL);
              v280 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v279;
              *&uu[22] = 2048;
              v523 = v280;
              _os_log_impl(&dword_181A37000, v264, v278, "%{public}s invalid prohibited netagent string lengths %zu %zu, backtrace limit exceeded", uu, 0x20u);
            }

            goto LABEL_636;
          }

          v268 = __nw_create_backtrace_string();
          v269 = __nwlog_obj();
          v270 = v519;
          v271 = os_log_type_enabled(v269, v519);
          if (v268)
          {
            if (v271)
            {
              v272 = strnlen(buf, 0x20uLL);
              v273 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446978;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v272;
              *&uu[22] = 2048;
              v523 = v273;
              v524 = 2082;
              v525 = v268;
              _os_log_impl(&dword_181A37000, v269, v270, "%{public}s invalid prohibited netagent string lengths %zu %zu, dumping backtrace:%{public}s", uu, 0x2Au);
            }

            free(v268);
          }

          else
          {
            if (v271)
            {
              v284 = strnlen(buf, 0x20uLL);
              v285 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v284;
              *&uu[22] = 2048;
              v523 = v285;
              _os_log_impl(&dword_181A37000, v269, v270, "%{public}s invalid prohibited netagent string lengths %zu %zu, no backtrace", uu, 0x20u);
            }
          }

LABEL_658:
          if (v263)
          {
LABEL_800:
            free(v263);
          }

LABEL_831:

          break;
        case 111:
          if (v31 != 1)
          {
            v397 = __nwlog_obj();
            if (os_log_type_enabled(v397, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 111;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v397, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          v72 = _nw_interface_functional_type_to_interface_type(*v40);
          _nw_parameters_set_required_interface_type(parameters, v72);
          v73 = _nw_interface_functional_type_to_interface_subtype(*v40);
          _nw_parameters_set_required_interface_subtype(parameters, v73);
          break;
        case 112:
          if (v31 == 16)
          {
            goto LABEL_144;
          }

          if (v31 < 0x11)
          {
            break;
          }

          v394 = __nwlog_obj();
          if (os_log_type_enabled(v394, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 112;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 1024;
            *&buf[26] = 16;
            _os_log_impl(&dword_181A37000, v394, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_144:
          *uu = *v40;
          if (uuid_is_null(uu))
          {
            break;
          }

          v56 = nw_parameters_copy_required_netagent_uuids(parameters);
          if (v56 || (v56 = xpc_array_create(0, 0)) != 0)
          {
            xpc_array_set_uuid(v56, 0xFFFFFFFFFFFFFFFFLL, uu);
            nw_parameters_set_required_netagent_uuids(parameters, v56);
            goto LABEL_869;
          }

          v200 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          v201 = _os_log_send_and_compose_impl();

          v519 = OS_LOG_TYPE_ERROR;
          v514 = 0;
          if (!__nwlog_fault(v201, &v519, &v514))
          {
            goto LABEL_913;
          }

          if (v519 == OS_LOG_TYPE_FAULT)
          {
            v202 = __nwlog_obj();
            v203 = v519;
            if (os_log_type_enabled(v202, v519))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v202, v203, "%{public}s xpc_array_create failed", buf, 0xCu);
            }

LABEL_912:

            goto LABEL_913;
          }

          if (v514 != 1)
          {
            v202 = __nwlog_obj();
            v288 = v519;
            if (os_log_type_enabled(v202, v519))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v202, v288, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_912;
          }

          v239 = __nw_create_backtrace_string();
          v202 = __nwlog_obj();
          v240 = v519;
          v241 = os_log_type_enabled(v202, v519);
          if (!v239)
          {
            if (v241)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v202, v240, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
            }

            goto LABEL_912;
          }

          if (v241)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v239;
            _os_log_impl(&dword_181A37000, v202, v240, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v239);
LABEL_913:
          if (v201)
          {
            free(v201);
          }

          v56 = 0;
          goto LABEL_869;
        case 113:
          memset(buf, 0, sizeof(buf));
          if (v31 == 64)
          {
            goto LABEL_179;
          }

          if (v31 < 0x41)
          {
            break;
          }

          v402 = __nwlog_obj();
          if (os_log_type_enabled(v402, OS_LOG_TYPE_DEBUG))
          {
            *uu = 136446978;
            *&uu[4] = "nw_path_verify_tlv_length";
            *&uu[12] = 1024;
            *&uu[14] = 113;
            *&uu[18] = 1024;
            *&uu[20] = v31;
            LOWORD(v523) = 1024;
            *(&v523 + 2) = 64;
            _os_log_impl(&dword_181A37000, v402, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", uu, 0x1Eu);
          }

LABEL_179:
          v77 = *(v40 + 1);
          *buf = *v40;
          *&buf[16] = v77;
          v78 = *(v40 + 3);
          *&buf[32] = *(v40 + 2);
          *&buf[48] = v78;
          v59 = nw_parameters_copy_required_netagent_domains(parameters);
          v60 = nw_parameters_copy_required_netagent_types(parameters);
          if (v59)
          {
            goto LABEL_718;
          }

          v59 = xpc_array_create(0, 0);
          if (v59)
          {
            goto LABEL_718;
          }

          v79 = __nwlog_obj();
          *uu = 136446210;
          *&uu[4] = "nw_path_parse_necp_parameters";
          v80 = _os_log_send_and_compose_impl();

          v519 = OS_LOG_TYPE_ERROR;
          v514 = 0;
          if (!__nwlog_fault(v80, &v519, &v514))
          {
            goto LABEL_715;
          }

          if (v519 == OS_LOG_TYPE_FAULT)
          {
            v81 = __nwlog_obj();
            v82 = v519;
            if (os_log_type_enabled(v81, v519))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v81, v82, "%{public}s xpc_array_create failed", uu, 0xCu);
            }

LABEL_714:

            goto LABEL_715;
          }

          if (v514 != 1)
          {
            v81 = __nwlog_obj();
            v226 = v519;
            if (os_log_type_enabled(v81, v519))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v81, v226, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
            }

            goto LABEL_714;
          }

          v188 = __nw_create_backtrace_string();
          v81 = __nwlog_obj();
          v189 = v519;
          v190 = os_log_type_enabled(v81, v519);
          if (!v188)
          {
            if (v190)
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v81, v189, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
            }

            goto LABEL_714;
          }

          if (v190)
          {
            *uu = 136446466;
            *&uu[4] = "nw_path_parse_necp_parameters";
            *&uu[12] = 2082;
            *&uu[14] = v188;
            _os_log_impl(&dword_181A37000, v81, v189, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
          }

          free(v188);
LABEL_715:
          if (v80)
          {
            free(v80);
          }

          v59 = 0;
LABEL_718:
          if (!v60)
          {
            v60 = xpc_array_create(0, 0);
            if (!v60)
            {
              v328 = __nwlog_obj();
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              v329 = _os_log_send_and_compose_impl();

              v519 = OS_LOG_TYPE_ERROR;
              v514 = 0;
              if (__nwlog_fault(v329, &v519, &v514))
              {
                if (v519 == OS_LOG_TYPE_FAULT)
                {
                  v330 = __nwlog_obj();
                  v331 = v519;
                  if (os_log_type_enabled(v330, v519))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v330, v331, "%{public}s xpc_array_create failed", uu, 0xCu);
                  }

                  goto LABEL_820;
                }

                if (v514 == 1)
                {
                  v335 = __nw_create_backtrace_string();
                  v330 = __nwlog_obj();
                  v336 = v519;
                  v337 = os_log_type_enabled(v330, v519);
                  if (v335)
                  {
                    if (v337)
                    {
                      *uu = 136446466;
                      *&uu[4] = "nw_path_parse_necp_parameters";
                      *&uu[12] = 2082;
                      *&uu[14] = v335;
                      _os_log_impl(&dword_181A37000, v330, v336, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
                    }

                    free(v335);
                    goto LABEL_821;
                  }

                  if (v337)
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v330, v336, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
                  }
                }

                else
                {
                  v330 = __nwlog_obj();
                  v340 = v519;
                  if (os_log_type_enabled(v330, v519))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v330, v340, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
                  }
                }

LABEL_820:
              }

LABEL_821:
              if (v329)
              {
                free(v329);
              }

              v60 = 0;
              goto LABEL_831;
            }
          }

          if (!v59)
          {
            goto LABEL_831;
          }

          if (strnlen(buf, 0x20uLL) <= 0x1F && strnlen(&buf[32], 0x20uLL) <= 0x1F)
          {
            xpc_array_set_string(v59, 0xFFFFFFFFFFFFFFFFLL, buf);
            xpc_array_set_string(v60, 0xFFFFFFFFFFFFFFFFLL, &buf[32]);
            nw_parameters_set_required_netagent_classes(parameters, v59, v60);
            goto LABEL_831;
          }

          v315 = __nwlog_obj();
          v316 = strnlen(buf, 0x20uLL);
          v317 = strnlen(&buf[32], 0x20uLL);
          *uu = 136446722;
          *&uu[4] = "nw_path_parse_necp_parameters";
          *&uu[12] = 2048;
          *&uu[14] = v316;
          *&uu[22] = 2048;
          v523 = v317;
          v263 = _os_log_send_and_compose_impl();

          v519 = OS_LOG_TYPE_ERROR;
          v514 = 0;
          if (!__nwlog_fault(v263, &v519, &v514))
          {
            goto LABEL_750;
          }

          if (v519 == OS_LOG_TYPE_FAULT)
          {
            v318 = __nwlog_obj();
            v319 = v519;
            if (os_log_type_enabled(v318, v519))
            {
              v320 = strnlen(buf, 0x20uLL);
              v321 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v320;
              *&uu[22] = 2048;
              v523 = v321;
              _os_log_impl(&dword_181A37000, v318, v319, "%{public}s invalid required netagent string lengths %zu %zu", uu, 0x20u);
            }

LABEL_728:

            goto LABEL_750;
          }

          if (v514 != 1)
          {
            v318 = __nwlog_obj();
            v332 = v519;
            if (os_log_type_enabled(v318, v519))
            {
              v333 = strnlen(buf, 0x20uLL);
              v334 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v333;
              *&uu[22] = 2048;
              v523 = v334;
              _os_log_impl(&dword_181A37000, v318, v332, "%{public}s invalid required netagent string lengths %zu %zu, backtrace limit exceeded", uu, 0x20u);
            }

            goto LABEL_728;
          }

          v322 = __nw_create_backtrace_string();
          v323 = __nwlog_obj();
          v324 = v519;
          v325 = os_log_type_enabled(v323, v519);
          if (v322)
          {
            if (v325)
            {
              v326 = strnlen(buf, 0x20uLL);
              v327 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446978;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v326;
              *&uu[22] = 2048;
              v523 = v327;
              v524 = 2082;
              v525 = v322;
              _os_log_impl(&dword_181A37000, v323, v324, "%{public}s invalid required netagent string lengths %zu %zu, dumping backtrace:%{public}s", uu, 0x2Au);
            }

            free(v322);
          }

          else
          {
            if (v325)
            {
              v338 = strnlen(buf, 0x20uLL);
              v339 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v338;
              *&uu[22] = 2048;
              v523 = v339;
              _os_log_impl(&dword_181A37000, v323, v324, "%{public}s invalid required netagent string lengths %zu %zu, no backtrace", uu, 0x20u);
            }
          }

LABEL_750:
          if (!v263)
          {
            goto LABEL_831;
          }

          goto LABEL_800;
        case 122:
          if (v31 == 16)
          {
            goto LABEL_139;
          }

          if (v31 < 0x11)
          {
            break;
          }

          v393 = __nwlog_obj();
          if (os_log_type_enabled(v393, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 122;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 1024;
            *&buf[26] = 16;
            _os_log_impl(&dword_181A37000, v393, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_139:
          *uu = *v40;
          if (uuid_is_null(uu))
          {
            break;
          }

          v56 = nw_parameters_copy_preferred_netagent_uuids(parameters);
          if (v56 || (v56 = xpc_array_create(0, 0)) != 0)
          {
            xpc_array_set_uuid(v56, 0xFFFFFFFFFFFFFFFFLL, uu);
            nw_parameters_set_preferred_netagent_uuids(parameters, v56);
            goto LABEL_869;
          }

          v196 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          v197 = _os_log_send_and_compose_impl();

          v519 = OS_LOG_TYPE_ERROR;
          v514 = 0;
          if (!__nwlog_fault(v197, &v519, &v514))
          {
            goto LABEL_907;
          }

          if (v519 == OS_LOG_TYPE_FAULT)
          {
            v198 = __nwlog_obj();
            v199 = v519;
            if (os_log_type_enabled(v198, v519))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v198, v199, "%{public}s xpc_array_create failed", buf, 0xCu);
            }

LABEL_906:

            goto LABEL_907;
          }

          if (v514 != 1)
          {
            v198 = __nwlog_obj();
            v287 = v519;
            if (os_log_type_enabled(v198, v519))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v198, v287, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_906;
          }

          v236 = __nw_create_backtrace_string();
          v198 = __nwlog_obj();
          v237 = v519;
          v238 = os_log_type_enabled(v198, v519);
          if (!v236)
          {
            if (v238)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v198, v237, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
            }

            goto LABEL_906;
          }

          if (v238)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v236;
            _os_log_impl(&dword_181A37000, v198, v237, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v236);
LABEL_907:
          if (v197)
          {
            free(v197);
          }

          v56 = 0;
          goto LABEL_869;
        case 123:
          memset(buf, 0, sizeof(buf));
          if (v31 == 64)
          {
            goto LABEL_283;
          }

          if (v31 < 0x41)
          {
            break;
          }

          v415 = __nwlog_obj();
          if (os_log_type_enabled(v415, OS_LOG_TYPE_DEBUG))
          {
            *uu = 136446978;
            *&uu[4] = "nw_path_verify_tlv_length";
            *&uu[12] = 1024;
            *&uu[14] = 123;
            *&uu[18] = 1024;
            *&uu[20] = v31;
            LOWORD(v523) = 1024;
            *(&v523 + 2) = 64;
            _os_log_impl(&dword_181A37000, v415, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", uu, 0x1Eu);
          }

LABEL_283:
          v118 = *(v40 + 1);
          *buf = *v40;
          *&buf[16] = v118;
          v119 = *(v40 + 3);
          *&buf[32] = *(v40 + 2);
          *&buf[48] = v119;
          v59 = nw_parameters_copy_preferred_netagent_domains(parameters);
          v60 = nw_parameters_copy_preferred_netagent_types(parameters);
          if (v59)
          {
            goto LABEL_767;
          }

          v59 = xpc_array_create(0, 0);
          if (v59)
          {
            goto LABEL_767;
          }

          v120 = __nwlog_obj();
          *uu = 136446210;
          *&uu[4] = "nw_path_parse_necp_parameters";
          v121 = _os_log_send_and_compose_impl();

          v519 = OS_LOG_TYPE_ERROR;
          v514 = 0;
          if (!__nwlog_fault(v121, &v519, &v514))
          {
            goto LABEL_764;
          }

          if (v519 == OS_LOG_TYPE_FAULT)
          {
            v122 = __nwlog_obj();
            v123 = v519;
            if (os_log_type_enabled(v122, v519))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v122, v123, "%{public}s xpc_array_create failed", uu, 0xCu);
            }

LABEL_763:

            goto LABEL_764;
          }

          if (v514 != 1)
          {
            v122 = __nwlog_obj();
            v227 = v519;
            if (os_log_type_enabled(v122, v519))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v122, v227, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
            }

            goto LABEL_763;
          }

          v191 = __nw_create_backtrace_string();
          v122 = __nwlog_obj();
          v192 = v519;
          v193 = os_log_type_enabled(v122, v519);
          if (!v191)
          {
            if (v193)
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v122, v192, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
            }

            goto LABEL_763;
          }

          if (v193)
          {
            *uu = 136446466;
            *&uu[4] = "nw_path_parse_necp_parameters";
            *&uu[12] = 2082;
            *&uu[14] = v191;
            _os_log_impl(&dword_181A37000, v122, v192, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
          }

          free(v191);
LABEL_764:
          if (v121)
          {
            free(v121);
          }

          v59 = 0;
LABEL_767:
          if (!v60)
          {
            v60 = xpc_array_create(0, 0);
            if (!v60)
            {
              v356 = __nwlog_obj();
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              v357 = _os_log_send_and_compose_impl();

              v519 = OS_LOG_TYPE_ERROR;
              v514 = 0;
              if (__nwlog_fault(v357, &v519, &v514))
              {
                if (v519 == OS_LOG_TYPE_FAULT)
                {
                  v358 = __nwlog_obj();
                  v359 = v519;
                  if (os_log_type_enabled(v358, v519))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v358, v359, "%{public}s xpc_array_create failed", uu, 0xCu);
                  }

                  goto LABEL_827;
                }

                if (v514 == 1)
                {
                  v363 = __nw_create_backtrace_string();
                  v358 = __nwlog_obj();
                  v364 = v519;
                  v365 = os_log_type_enabled(v358, v519);
                  if (v363)
                  {
                    if (v365)
                    {
                      *uu = 136446466;
                      *&uu[4] = "nw_path_parse_necp_parameters";
                      *&uu[12] = 2082;
                      *&uu[14] = v363;
                      _os_log_impl(&dword_181A37000, v358, v364, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
                    }

                    free(v363);
                    goto LABEL_828;
                  }

                  if (v365)
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v358, v364, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
                  }
                }

                else
                {
                  v358 = __nwlog_obj();
                  v368 = v519;
                  if (os_log_type_enabled(v358, v519))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v358, v368, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
                  }
                }

LABEL_827:
              }

LABEL_828:
              if (v357)
              {
                free(v357);
              }

              v60 = 0;
              goto LABEL_831;
            }
          }

          if (!v59)
          {
            goto LABEL_831;
          }

          if (strnlen(buf, 0x20uLL) <= 0x1F && strnlen(&buf[32], 0x20uLL) <= 0x1F)
          {
            xpc_array_set_string(v59, 0xFFFFFFFFFFFFFFFFLL, buf);
            xpc_array_set_string(v60, 0xFFFFFFFFFFFFFFFFLL, &buf[32]);
            nw_parameters_set_preferred_netagent_classes(parameters, v59, v60);
            goto LABEL_831;
          }

          v343 = __nwlog_obj();
          v344 = strnlen(buf, 0x20uLL);
          v345 = strnlen(&buf[32], 0x20uLL);
          *uu = 136446722;
          *&uu[4] = "nw_path_parse_necp_parameters";
          *&uu[12] = 2048;
          *&uu[14] = v344;
          *&uu[22] = 2048;
          v523 = v345;
          v263 = _os_log_send_and_compose_impl();

          v519 = OS_LOG_TYPE_ERROR;
          v514 = 0;
          if (!__nwlog_fault(v263, &v519, &v514))
          {
            goto LABEL_799;
          }

          if (v519 == OS_LOG_TYPE_FAULT)
          {
            v346 = __nwlog_obj();
            v347 = v519;
            if (os_log_type_enabled(v346, v519))
            {
              v348 = strnlen(buf, 0x20uLL);
              v349 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v348;
              *&uu[22] = 2048;
              v523 = v349;
              _os_log_impl(&dword_181A37000, v346, v347, "%{public}s invalid preferred netagent string lengths %zu %zu", uu, 0x20u);
            }

LABEL_777:

            goto LABEL_799;
          }

          if (v514 != 1)
          {
            v346 = __nwlog_obj();
            v360 = v519;
            if (os_log_type_enabled(v346, v519))
            {
              v361 = strnlen(buf, 0x20uLL);
              v362 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v361;
              *&uu[22] = 2048;
              v523 = v362;
              _os_log_impl(&dword_181A37000, v346, v360, "%{public}s invalid preferred netagent string lengths %zu %zu, backtrace limit exceeded", uu, 0x20u);
            }

            goto LABEL_777;
          }

          v350 = __nw_create_backtrace_string();
          v351 = __nwlog_obj();
          v352 = v519;
          v353 = os_log_type_enabled(v351, v519);
          if (v350)
          {
            if (v353)
            {
              v354 = strnlen(buf, 0x20uLL);
              v355 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446978;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v354;
              *&uu[22] = 2048;
              v523 = v355;
              v524 = 2082;
              v525 = v350;
              _os_log_impl(&dword_181A37000, v351, v352, "%{public}s invalid preferred netagent string lengths %zu %zu, dumping backtrace:%{public}s", uu, 0x2Au);
            }

            free(v350);
          }

          else
          {
            if (v353)
            {
              v366 = strnlen(buf, 0x20uLL);
              v367 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v366;
              *&uu[22] = 2048;
              v523 = v367;
              _os_log_impl(&dword_181A37000, v351, v352, "%{public}s invalid preferred netagent string lengths %zu %zu, no backtrace", uu, 0x20u);
            }
          }

LABEL_799:
          if (!v263)
          {
            goto LABEL_831;
          }

          goto LABEL_800;
        case 124:
          if (v31 == 16)
          {
            goto LABEL_278;
          }

          if (v31 < 0x11)
          {
            break;
          }

          v414 = __nwlog_obj();
          if (os_log_type_enabled(v414, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 124;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 1024;
            *&buf[26] = 16;
            _os_log_impl(&dword_181A37000, v414, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_278:
          *uu = *v40;
          if (uuid_is_null(uu))
          {
            break;
          }

          v56 = nw_parameters_copy_avoided_netagent_uuids(parameters);
          if (v56 || (v56 = xpc_array_create(0, 0)) != 0)
          {
            xpc_array_set_uuid(v56, 0xFFFFFFFFFFFFFFFFLL, uu);
            nw_parameters_set_avoided_netagent_uuids(parameters, v56);
            goto LABEL_869;
          }

          v208 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          v209 = _os_log_send_and_compose_impl();

          v519 = OS_LOG_TYPE_ERROR;
          v514 = 0;
          if (!__nwlog_fault(v209, &v519, &v514))
          {
            goto LABEL_925;
          }

          if (v519 == OS_LOG_TYPE_FAULT)
          {
            v210 = __nwlog_obj();
            v211 = v519;
            if (os_log_type_enabled(v210, v519))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v210, v211, "%{public}s xpc_array_create failed", buf, 0xCu);
            }

LABEL_924:

            goto LABEL_925;
          }

          if (v514 != 1)
          {
            v210 = __nwlog_obj();
            v342 = v519;
            if (os_log_type_enabled(v210, v519))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v210, v342, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_924;
          }

          v245 = __nw_create_backtrace_string();
          v210 = __nwlog_obj();
          v246 = v519;
          v247 = os_log_type_enabled(v210, v519);
          if (!v245)
          {
            if (v247)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v210, v246, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
            }

            goto LABEL_924;
          }

          if (v247)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v245;
            _os_log_impl(&dword_181A37000, v210, v246, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v245);
LABEL_925:
          if (v209)
          {
            free(v209);
          }

          v56 = 0;
          goto LABEL_869;
        case 125:
          memset(buf, 0, sizeof(buf));
          if (v31 == 64)
          {
            goto LABEL_152;
          }

          if (v31 < 0x41)
          {
            break;
          }

          v396 = __nwlog_obj();
          if (os_log_type_enabled(v396, OS_LOG_TYPE_DEBUG))
          {
            *uu = 136446978;
            *&uu[4] = "nw_path_verify_tlv_length";
            *&uu[12] = 1024;
            *&uu[14] = 125;
            *&uu[18] = 1024;
            *&uu[20] = v31;
            LOWORD(v523) = 1024;
            *(&v523 + 2) = 64;
            _os_log_impl(&dword_181A37000, v396, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", uu, 0x1Eu);
          }

LABEL_152:
          v65 = *(v40 + 1);
          *buf = *v40;
          *&buf[16] = v65;
          v66 = *(v40 + 3);
          *&buf[32] = *(v40 + 2);
          *&buf[48] = v66;
          v59 = nw_parameters_copy_avoided_netagent_domains(parameters);
          v60 = nw_parameters_copy_avoided_netagent_types(parameters);
          if (v59)
          {
            goto LABEL_675;
          }

          v59 = xpc_array_create(0, 0);
          if (v59)
          {
            goto LABEL_675;
          }

          v67 = __nwlog_obj();
          *uu = 136446210;
          *&uu[4] = "nw_path_parse_necp_parameters";
          v68 = _os_log_send_and_compose_impl();

          v519 = OS_LOG_TYPE_ERROR;
          v514 = 0;
          if (!__nwlog_fault(v68, &v519, &v514))
          {
            goto LABEL_672;
          }

          if (v519 == OS_LOG_TYPE_FAULT)
          {
            v69 = __nwlog_obj();
            v70 = v519;
            if (os_log_type_enabled(v69, v519))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v69, v70, "%{public}s xpc_array_create failed", uu, 0xCu);
            }

LABEL_671:

            goto LABEL_672;
          }

          if (v514 != 1)
          {
            v69 = __nwlog_obj();
            v225 = v519;
            if (os_log_type_enabled(v69, v519))
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v69, v225, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
            }

            goto LABEL_671;
          }

          v185 = __nw_create_backtrace_string();
          v69 = __nwlog_obj();
          v186 = v519;
          v187 = os_log_type_enabled(v69, v519);
          if (!v185)
          {
            if (v187)
            {
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v69, v186, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
            }

            goto LABEL_671;
          }

          if (v187)
          {
            *uu = 136446466;
            *&uu[4] = "nw_path_parse_necp_parameters";
            *&uu[12] = 2082;
            *&uu[14] = v185;
            _os_log_impl(&dword_181A37000, v69, v186, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
          }

          free(v185);
LABEL_672:
          if (v68)
          {
            free(v68);
          }

          v59 = 0;
LABEL_675:
          if (!v60)
          {
            v60 = xpc_array_create(0, 0);
            if (!v60)
            {
              v302 = __nwlog_obj();
              *uu = 136446210;
              *&uu[4] = "nw_path_parse_necp_parameters";
              v303 = _os_log_send_and_compose_impl();

              v519 = OS_LOG_TYPE_ERROR;
              v514 = 0;
              if (__nwlog_fault(v303, &v519, &v514))
              {
                if (v519 == OS_LOG_TYPE_FAULT)
                {
                  v304 = __nwlog_obj();
                  v305 = v519;
                  if (os_log_type_enabled(v304, v519))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v304, v305, "%{public}s xpc_array_create failed", uu, 0xCu);
                  }

                  goto LABEL_813;
                }

                if (v514 == 1)
                {
                  v309 = __nw_create_backtrace_string();
                  v304 = __nwlog_obj();
                  v310 = v519;
                  v311 = os_log_type_enabled(v304, v519);
                  if (v309)
                  {
                    if (v311)
                    {
                      *uu = 136446466;
                      *&uu[4] = "nw_path_parse_necp_parameters";
                      *&uu[12] = 2082;
                      *&uu[14] = v309;
                      _os_log_impl(&dword_181A37000, v304, v310, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", uu, 0x16u);
                    }

                    free(v309);
                    goto LABEL_814;
                  }

                  if (v311)
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v304, v310, "%{public}s xpc_array_create failed, no backtrace", uu, 0xCu);
                  }
                }

                else
                {
                  v304 = __nwlog_obj();
                  v314 = v519;
                  if (os_log_type_enabled(v304, v519))
                  {
                    *uu = 136446210;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    _os_log_impl(&dword_181A37000, v304, v314, "%{public}s xpc_array_create failed, backtrace limit exceeded", uu, 0xCu);
                  }
                }

LABEL_813:
              }

LABEL_814:
              if (v303)
              {
                free(v303);
              }

              v60 = 0;
              goto LABEL_831;
            }
          }

          if (!v59)
          {
            goto LABEL_831;
          }

          if (strnlen(buf, 0x20uLL) <= 0x1F && strnlen(&buf[32], 0x20uLL) <= 0x1F)
          {
            xpc_array_set_string(v59, 0xFFFFFFFFFFFFFFFFLL, buf);
            xpc_array_set_string(v60, 0xFFFFFFFFFFFFFFFFLL, &buf[32]);
            nw_parameters_set_avoided_netagent_classes(parameters, v59, v60);
            goto LABEL_831;
          }

          v289 = __nwlog_obj();
          v290 = strnlen(buf, 0x20uLL);
          v291 = strnlen(&buf[32], 0x20uLL);
          *uu = 136446722;
          *&uu[4] = "nw_path_parse_necp_parameters";
          *&uu[12] = 2048;
          *&uu[14] = v290;
          *&uu[22] = 2048;
          v523 = v291;
          v263 = _os_log_send_and_compose_impl();

          v519 = OS_LOG_TYPE_ERROR;
          v514 = 0;
          if (!__nwlog_fault(v263, &v519, &v514))
          {
            goto LABEL_707;
          }

          if (v519 == OS_LOG_TYPE_FAULT)
          {
            v292 = __nwlog_obj();
            v293 = v519;
            if (os_log_type_enabled(v292, v519))
            {
              v294 = strnlen(buf, 0x20uLL);
              v295 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v294;
              *&uu[22] = 2048;
              v523 = v295;
              _os_log_impl(&dword_181A37000, v292, v293, "%{public}s invalid avoided netagent string lengths %zu %zu", uu, 0x20u);
            }

LABEL_685:

            goto LABEL_707;
          }

          if (v514 != 1)
          {
            v292 = __nwlog_obj();
            v306 = v519;
            if (os_log_type_enabled(v292, v519))
            {
              v307 = strnlen(buf, 0x20uLL);
              v308 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v307;
              *&uu[22] = 2048;
              v523 = v308;
              _os_log_impl(&dword_181A37000, v292, v306, "%{public}s invalid avoided netagent string lengths %zu %zu, backtrace limit exceeded", uu, 0x20u);
            }

            goto LABEL_685;
          }

          v296 = __nw_create_backtrace_string();
          v297 = __nwlog_obj();
          v298 = v519;
          v299 = os_log_type_enabled(v297, v519);
          if (v296)
          {
            if (v299)
            {
              v300 = strnlen(buf, 0x20uLL);
              v301 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446978;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v300;
              *&uu[22] = 2048;
              v523 = v301;
              v524 = 2082;
              v525 = v296;
              _os_log_impl(&dword_181A37000, v297, v298, "%{public}s invalid avoided netagent string lengths %zu %zu, dumping backtrace:%{public}s", uu, 0x2Au);
            }

            free(v296);
          }

          else
          {
            if (v299)
            {
              v312 = strnlen(buf, 0x20uLL);
              v313 = strnlen(&buf[32], 0x20uLL);
              *uu = 136446722;
              *&uu[4] = "nw_path_parse_necp_parameters";
              *&uu[12] = 2048;
              *&uu[14] = v312;
              *&uu[22] = 2048;
              v523 = v313;
              _os_log_impl(&dword_181A37000, v297, v298, "%{public}s invalid avoided netagent string lengths %zu %zu, no backtrace", uu, 0x20u);
            }
          }

LABEL_707:
          if (!v263)
          {
            goto LABEL_831;
          }

          goto LABEL_800;
        case 140:
          if (v31 != 1)
          {
            v399 = __nwlog_obj();
            if (os_log_type_enabled(v399, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 140;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v399, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          _nw_parameters_set_fallback_mode(parameters, *v40);
          break;
        case 150:
          if (v31 == 16)
          {
            goto LABEL_211;
          }

          if (v31 >= 0x11)
          {
            v404 = __nwlog_obj();
            if (os_log_type_enabled(v404, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 150;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 16;
              _os_log_impl(&dword_181A37000, v404, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_211:
            v92 = parameters;
            _nw_parameters_add_parent_id(v92, v40);
          }

          break;
        case 151:
          if (v31 != 1)
          {
            v400 = __nwlog_obj();
            if (os_log_type_enabled(v400, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 151;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v400, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          _nw_parameters_set_data_mode(parameters, *v40);
          break;
        case 152:
          if (v31 == 4)
          {
            goto LABEL_295;
          }

          if (v31 < 5)
          {
            v125 = 0;
          }

          else
          {
            v419 = __nwlog_obj();
            if (os_log_type_enabled(v419, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 152;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 4;
              _os_log_impl(&dword_181A37000, v419, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_295:
            v125 = *v40;
            if (*v40)
            {
              _nw_parameters_set_dry_run(parameters, 1);
            }

            if ((v125 & 2) != 0)
            {
              _nw_parameters_set_use_awdl(parameters, 1);
            }

            if ((v125 & 4) != 0)
            {
              _nw_parameters_set_use_p2p(parameters, 1);
            }

            if ((v125 & 0x10) != 0)
            {
              _nw_parameters_set_include_ble(parameters, 1);
            }
          }

          v507 += v125 << 28 >> 31;
          v503 |= (v125 & 0x40) >> 6;
          if ((v125 & 0x20) != 0)
          {
            _nw_parameters_set_include_screen_off_devices(parameters, 1);
          }

          break;
        case 154:
          if (v31 == 6)
          {
            goto LABEL_149;
          }

          if (v31 >= 7)
          {
            v395 = __nwlog_obj();
            if (os_log_type_enabled(v395, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 154;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 6;
              _os_log_impl(&dword_181A37000, v395, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_149:
            v517 = *v40;
            v518 = *(v40 + 2);
          }

          BYTE4(v501) = 1;
          break;
        case 155:
          if (v31 == 6)
          {
            goto LABEL_238;
          }

          if (v31 >= 7)
          {
            v411 = __nwlog_obj();
            if (os_log_type_enabled(v411, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 155;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 6;
              _os_log_impl(&dword_181A37000, v411, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_238:
            v515 = *v40;
            v516 = *(v40 + 2);
          }

          LOBYTE(v501) = 1;
          break;
        case 156:
          goto LABEL_863;
        case 157:
          if (v31 != 1)
          {
            v418 = __nwlog_obj();
            if (os_log_type_enabled(v418, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 157;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v418, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          v124 = _nw_interface_functional_type_to_interface_type(*v40);
          _nw_parameters_set_next_hop_required_interface_type(parameters, v124);
          break;
        case 158:
          if (!v510)
          {
            v138 = __nwlog_obj();
            if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v138, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply endpoint device id to", buf, 0xCu);
            }

            goto LABEL_872;
          }

          *buf = 0;
          asprintf(buf, "%.*s", v31, v40);
          v55 = *buf;
          v510 = v510;
          _nw_endpoint_set_device_id(v510, v55);

          v29 = *buf;
          if (*buf)
          {
            goto LABEL_31;
          }

          break;
        case 159:
          if (v510)
          {
            v93 = [MEMORY[0x1E695DEF0] dataWithBytes:v40 length:v31];
            nw_endpoint_append_public_key(v510, v93);

            break;
          }

          v138 = __nwlog_obj();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[4] = "nw_path_parse_necp_parameters";
            _os_log_impl(&dword_181A37000, v138, OS_LOG_TYPE_ERROR, "%{public}s No previous endpoint to apply public key to", buf, 0xCu);
          }

          goto LABEL_872;
        case 160:
          if (v31 != 1)
          {
            v391 = __nwlog_obj();
            if (os_log_type_enabled(v391, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 160;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v391, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          v50 = _nw_interface_functional_type_to_interface_subtype(*v40);
          if (!v50)
          {
            break;
          }

          v51 = nw_parameters_copy_preferred_interface_subtypes(parameters);
          if (v51 || (v51 = xpc_array_create(0, 0)) != 0)
          {
            xpc_array_set_uint64(v51, 0xFFFFFFFFFFFFFFFFLL, v50);
            v52 = parameters;
            v53 = v51;
            _nw_parameters_clear_preferred_interface_subtypes(v52);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __nw_parameters_set_preferred_interface_subtypes_block_invoke;
            *&buf[24] = &unk_1E6A3D300;
            v54 = v52;
            *&buf[32] = v54;
            xpc_array_apply(v53, buf);

            goto LABEL_121;
          }

          v178 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          v179 = _os_log_send_and_compose_impl();

          uu[0] = 16;
          v519 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v179, uu, &v519))
          {
            goto LABEL_895;
          }

          if (uu[0] == 17)
          {
            v180 = __nwlog_obj();
            v181 = uu[0];
            if (os_log_type_enabled(v180, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v180, v181, "%{public}s xpc_array_create failed", buf, 0xCu);
            }

LABEL_894:

            goto LABEL_895;
          }

          if (v519 != OS_LOG_TYPE_INFO)
          {
            v180 = __nwlog_obj();
            v253 = uu[0];
            if (os_log_type_enabled(v180, uu[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v180, v253, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_894;
          }

          v221 = __nw_create_backtrace_string();
          v180 = __nwlog_obj();
          v222 = uu[0];
          v223 = os_log_type_enabled(v180, uu[0]);
          if (!v221)
          {
            if (v223)
            {
              *buf = 136446210;
              *&buf[4] = "nw_path_parse_necp_parameters";
              _os_log_impl(&dword_181A37000, v180, v222, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
            }

            goto LABEL_894;
          }

          if (v223)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v221;
            _os_log_impl(&dword_181A37000, v180, v222, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v221);
LABEL_895:
          if (v179)
          {
            free(v179);
          }

          v53 = 0;
LABEL_121:

          break;
        case 163:
          if (v31 == 16)
          {
            goto LABEL_110;
          }

          if (v31 >= 0x11)
          {
            v390 = __nwlog_obj();
            if (os_log_type_enabled(v390, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 163;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 16;
              _os_log_impl(&dword_181A37000, v390, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_110:
            _nw_parameters_set_migration_controller_session_uuid(parameters, v40);
          }

          break;
        case 200:
          v71 = nw_path_copy_endpoint_from_tlv(200, v31, v40);

          v56 = v71;
          v510 = v56;
          if (v56)
          {
            _nw_parameters_set_local_endpoint(parameters, v56);
          }

          goto LABEL_869;
        case 201:
          if (v512 && !*v512)
          {
            v83 = nw_path_copy_endpoint_from_tlv(201, v31, v40);

            v510 = v83;
            if (v510)
            {
              objc_storeStrong(v512, v83);
            }
          }

          break;
        case 202:
          if (!v508 || *v508)
          {
            break;
          }

          v56 = nw_path_copy_browse_descriptor_from_tlv(v31, v40, v18);
          if (v56)
          {
            objc_storeStrong(v508, v56);
          }

          goto LABEL_869;
        case 203:
          v506 = v31;
          v509 = v40;
          break;
        case 204:
          if (!location || *location)
          {
            break;
          }

          v56 = nw_path_copy_advertise_descriptor_from_tlv(v31, v40, v18);
          if (v56)
          {
            objc_storeStrong(location, v56);
          }

          goto LABEL_869;
        case 205:
          if (!v502 || *v502)
          {
            break;
          }

          v56 = nw_path_copy_group_descriptor_from_tlv(v31, v40, v18);
          if (v56)
          {
            objc_storeStrong(v502, v56);
          }

          goto LABEL_869;
        case 210:
          if (v31 == 8)
          {
            goto LABEL_229;
          }

          if (v31 >= 9)
          {
            v406 = __nwlog_obj();
            if (os_log_type_enabled(v406, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 210;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 8;
              _os_log_impl(&dword_181A37000, v406, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_229:
            _nw_parameters_set_delegated_unique_pid(parameters, *v40);
          }

          break;
        case 220:
          if (v31 <= 2)
          {
            break;
          }

          v56 = __nwlog_obj();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 220;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 1024;
            *&buf[26] = 2;
            _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

          goto LABEL_869;
        case 221:
          if (v31 != 1)
          {
            v405 = __nwlog_obj();
            if (os_log_type_enabled(v405, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 221;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v405, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          if (*v40 == 253)
          {
            v96 = _nw_parameters_copy_default_protocol_stack(parameters);
            stream_options = _nw_quic_create_stream_options(v96, v97);
            nw_protocol_stack_set_transport_protocol(v96, stream_options);
          }

          break;
        case 222:
          if (v31 < 0x2A)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v130 = gLogObj;
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v31;
            v85 = _os_log_send_and_compose_impl();

            uu[0] = 16;
            v519 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v85, uu, &v519))
            {
              goto LABEL_29;
            }

            if (uu[0] == 17)
            {
              v86 = __nwlog_obj();
              v131 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                _os_log_impl(&dword_181A37000, v86, v131, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u", buf, 0x12u);
              }

              goto LABEL_28;
            }

            if (v519 != OS_LOG_TYPE_INFO)
            {
              v86 = __nwlog_obj();
              v170 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                _os_log_impl(&dword_181A37000, v86, v170, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u, backtrace limit exceeded", buf, 0x12u);
              }

LABEL_28:

LABEL_29:
              if (!v85)
              {
                break;
              }

LABEL_30:
              v29 = v85;
              goto LABEL_31;
            }

            v139 = __nw_create_backtrace_string();
            v140 = __nwlog_obj();
            v154 = uu[0];
            v155 = os_log_type_enabled(v140, uu[0]);
            if (!v139)
            {
              if (v155)
              {
                *buf = 136446466;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v31;
                _os_log_impl(&dword_181A37000, v140, v154, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u, no backtrace", buf, 0x12u);
              }

LABEL_595:

              goto LABEL_29;
            }

            if (v155)
            {
              *buf = 136446722;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v31;
              *&buf[18] = 2082;
              *&buf[20] = v139;
              _os_log_impl(&dword_181A37000, v140, v154, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad length %u, dumping backtrace:%{public}s", buf, 0x1Cu);
            }
          }

          else
          {
            v45 = *(v40 + 20);
            if (v45 + 42 == v31)
            {
              v46 = *(v40 + 1);
              *buf = *v40;
              *&buf[16] = v46;
              *&buf[32] = v40[4];
              v47 = nw_protocol_copy_definition_for_identifier(buf);
              v48 = v47;
              if (v47)
              {
                if (*(v40 + 20))
                {
                  deserialized_options = _nw_protocol_create_deserialized_options(v47, v40 + 42, *(v40 + 20));
                }

                else
                {
                  deserialized_options = _nw_protocol_create_options();
                }

                v173 = deserialized_options;
                if (deserialized_options)
                {
                  v195 = _nw_parameters_copy_default_protocol_stack(parameters);
                  nw_protocol_stack_append_application_protocol(v195, v173);
                }

                else
                {
                  v195 = __nwlog_obj();
                  if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
                  {
                    *uu = 136446466;
                    *&uu[4] = "nw_path_parse_necp_parameters";
                    *&uu[12] = 2112;
                    *&uu[14] = v48;
                    _os_log_impl(&dword_181A37000, v195, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to deserialize options for %@", uu, 0x16u);
                  }
                }
              }

              else
              {
                v173 = __nwlog_obj();
                if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
                {
                  *uu = 136446466;
                  *&uu[4] = "nw_path_parse_necp_parameters";
                  *&uu[12] = 2080;
                  *&uu[14] = buf;
                  _os_log_impl(&dword_181A37000, v173, OS_LOG_TYPE_DEFAULT, "%{public}s No protocol definition registered for %s", uu, 0x16u);
                }
              }

              break;
            }

            v152 = __nwlog_obj();
            *buf = 136446722;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v45;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            v85 = _os_log_send_and_compose_impl();

            uu[0] = 16;
            v519 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v85, uu, &v519))
            {
              goto LABEL_29;
            }

            if (uu[0] == 17)
            {
              v86 = __nwlog_obj();
              v153 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v45;
                *&buf[18] = 1024;
                *&buf[20] = v31;
                _os_log_impl(&dword_181A37000, v86, v153, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u)", buf, 0x18u);
              }

              goto LABEL_28;
            }

            if (v519 != OS_LOG_TYPE_INFO)
            {
              v86 = __nwlog_obj();
              v194 = uu[0];
              if (os_log_type_enabled(v86, uu[0]))
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v45;
                *&buf[18] = 1024;
                *&buf[20] = v31;
                _os_log_impl(&dword_181A37000, v86, v194, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u), backtrace limit exceeded", buf, 0x18u);
              }

              goto LABEL_28;
            }

            v139 = __nw_create_backtrace_string();
            v140 = __nwlog_obj();
            v168 = uu[0];
            v169 = os_log_type_enabled(v140, uu[0]);
            if (!v139)
            {
              if (v169)
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_parse_necp_parameters";
                *&buf[12] = 1024;
                *&buf[14] = v45;
                *&buf[18] = 1024;
                *&buf[20] = v31;
                _os_log_impl(&dword_181A37000, v140, v168, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u), no backtrace", buf, 0x18u);
              }

              goto LABEL_595;
            }

            if (v169)
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = v45;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2082;
              *&buf[26] = v139;
              _os_log_impl(&dword_181A37000, v140, v168, "%{public}s NW_NECP_CLIENT_PARAMETER_APPLICATION_PROTOCOL has bad options length %u (total %u), dumping backtrace:%{public}s", buf, 0x22u);
            }
          }

LABEL_422:

          free(v139);
          if (v85)
          {
            goto LABEL_30;
          }

          break;
        case 223:
          if (v508 && *v508)
          {
            v43 = *v508;
            nw_browse_descriptor_set_predicate(v43, v40, v31);
          }

          break;
        case 230:
          if (v31 != 1)
          {
            v420 = __nwlog_obj();
            if (os_log_type_enabled(v420, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 230;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 1;
              _os_log_impl(&dword_181A37000, v420, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }
          }

          v126 = *v40;
          v127 = _nw_parameters_copy_default_protocol_stack(parameters);
          v128 = nw_protocol_stack_copy_internet_protocol_as_ip_options(v127, 1);
          v129 = v128;
          if (v128)
          {
            _nw_ip_options_set_local_address_preference(v128, v126);
          }

          break;
        case 231:
          if (v31 == 16)
          {
            goto LABEL_291;
          }

          v416 = __nwlog_obj();
          v417 = v416;
          if (v31 >= 0x11)
          {
            if (os_log_type_enabled(v416, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 231;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 16;
              _os_log_impl(&dword_181A37000, v417, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_291:
            _nw_parameters_set_persona(parameters, v40);
            break;
          }

          *buf = 136447234;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 1024;
          *&buf[14] = 231;
          *&buf[18] = 1024;
          *&buf[20] = v31;
          *&buf[24] = 2080;
          *&buf[26] = "nw_path_parse_necp_parameters";
          *&buf[34] = 1024;
          *&buf[36] = 4047;
          v133 = _os_log_send_and_compose_impl();

          uu[0] = 16;
          v519 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v133, uu, &v519))
          {
            goto LABEL_532;
          }

          if (uu[0] == 17)
          {
            v134 = __nwlog_obj();
            v422 = uu[0];
            if (os_log_type_enabled(v134, uu[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 231;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 4047;
              _os_log_impl(&dword_181A37000, v134, v422, "%{public}s TLV of type %d has invalid length %u (%s:%d)", buf, 0x28u);
            }

            goto LABEL_1084;
          }

          if (v519 != OS_LOG_TYPE_INFO)
          {
            v134 = __nwlog_obj();
            v425 = uu[0];
            if (os_log_type_enabled(v134, uu[0]))
            {
              *buf = 136447234;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 231;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 4047;
              _os_log_impl(&dword_181A37000, v134, v425, "%{public}s TLV of type %d has invalid length %u (%s:%d), backtrace limit exceeded", buf, 0x28u);
            }

            goto LABEL_1084;
          }

          v160 = __nw_create_backtrace_string();
          v157 = __nwlog_obj();
          v423 = uu[0];
          v424 = os_log_type_enabled(v157, uu[0]);
          if (v160)
          {
            if (v424)
            {
              *buf = 136447490;
              *&buf[4] = "nw_path_parse_necp_parameters";
              *&buf[12] = 1024;
              *&buf[14] = 231;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 2080;
              *&buf[26] = "nw_path_parse_necp_parameters";
              *&buf[34] = 1024;
              *&buf[36] = 4047;
              *&buf[40] = 2082;
              *&buf[42] = v160;
              _os_log_impl(&dword_181A37000, v157, v423, "%{public}s TLV of type %d has invalid length %u (%s:%d), dumping backtrace:%{public}s", buf, 0x32u);
            }

            goto LABEL_401;
          }

          if (v424)
          {
            *buf = 136447234;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = 231;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 2080;
            *&buf[26] = "nw_path_parse_necp_parameters";
            *&buf[34] = 1024;
            *&buf[36] = 4047;
            _os_log_impl(&dword_181A37000, v157, v423, "%{public}s TLV of type %d has invalid length %u (%s:%d), no backtrace", buf, 0x28u);
          }

          goto LABEL_531;
        case 232:
          if (location && *location)
          {
            nw_advertise_descriptor_set_custom_service(*location, v40, v31);
          }

          else if (v508 && *v508)
          {
            nw_browse_descriptor_set_custom_service(*v508, v40, v31);
          }

          break;
        case 233:
          if (v31 == 2)
          {
            goto LABEL_235;
          }

          if (v31 >= 3)
          {
            v410 = __nwlog_obj();
            if (os_log_type_enabled(v410, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446978;
              *&buf[4] = "nw_path_verify_tlv_length";
              *&buf[12] = 1024;
              *&buf[14] = 233;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              *&buf[24] = 1024;
              *&buf[26] = 2;
              _os_log_impl(&dword_181A37000, v410, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
            }

LABEL_235:
            _nw_parameters_set_next_hop_required_interface_subtype(parameters, *v40);
          }

          break;
        case 234:
          v109 = xpc_data_create(v40, v31);
          v110 = parameters;
          nw_parameters_set_metadata(v110, v109);
          _nw_parameters_set_encode_custom_options(v110, 1);

          break;
        case 250:
          if (v31 == 4)
          {
            goto LABEL_72;
          }

          if (v31 < 5)
          {
            v44 = 0;
            if (!a9)
            {
              goto LABEL_82;
            }

LABEL_80:
            if ((v44 & 0x800) != 0)
            {
              *a9 = 1;
            }

            goto LABEL_82;
          }

          v389 = __nwlog_obj();
          if (os_log_type_enabled(v389, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            *&buf[4] = "nw_path_verify_tlv_length";
            *&buf[12] = 1024;
            *&buf[14] = 250;
            *&buf[18] = 1024;
            *&buf[20] = v31;
            *&buf[24] = 1024;
            *&buf[26] = 4;
            _os_log_impl(&dword_181A37000, v389, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", buf, 0x1Eu);
          }

LABEL_72:
          v44 = *v40;
          if (*v40)
          {
            _nw_parameters_set_multipath_service(parameters, 2);
          }

          if ((v44 & 0x100) != 0)
          {
            _nw_parameters_set_only_primary_requires_type(parameters, 1);
          }

          if (v497 && (v44 & 8) != 0)
          {
            *v497 = 1;
          }

          if (a9)
          {
            goto LABEL_80;
          }

LABEL_82:
          if ((v44 & 4) != 0)
          {
            _nw_parameters_set_prohibit_expensive(parameters, 1);
          }

          if ((v44 & 0x1000) != 0)
          {
            _nw_parameters_set_prohibit_constrained(parameters, 1);
          }

          if ((v44 & 0x4000000) != 0)
          {
            _nw_parameters_set_allow_ultra_constrained(parameters, 1);
          }

          if ((v44 & 0x20000) != 0)
          {
            _nw_parameters_set_allow_socket_access(parameters, 1);
          }

          if ((v44 & 0x10000) != 0)
          {
            _nw_parameters_set_is_known_tracker(parameters, 1);
          }

          if ((v44 & 0x40000) != 0)
          {
            _nw_parameters_set_internal_attribution(parameters, 2);
          }

          if ((v44 & 0x80000) != 0)
          {
            _nw_parameters_set_is_third_party_web_content(parameters, 1);
          }

          if ((v44 & 0x200000) != 0)
          {
            _nw_parameters_set_is_approved_app_domain(parameters, 1);
          }

          if ((v44 & 0x800000) != 0)
          {
            _nw_parameters_set_reuse_local_address(parameters, 1);
          }

          if ((v44 & 0x1000000) != 0)
          {
            _nw_parameters_set_use_enhanced_privacy_mode(parameters, 1);
          }

          if ((v44 & 0x2000000) != 0)
          {
            _nw_parameters_set_web_search_content(parameters, 1);
          }

          LODWORD(v504) = v504 | ((v44 & 0x200) >> 9);
          HIDWORD(v504) |= (v44 & 0x400) >> 10;
          if ((v44 & 0x4000) != 0)
          {
            _nw_parameters_set_server_mode(parameters, 1);
          }

          break;
        case 251:
          v521 = 0;
          memset(buf, 0, sizeof(buf));
          if (v31 == 68)
          {
            goto LABEL_274;
          }

          if (v31 >= 0x45)
          {
            v413 = __nwlog_obj();
            if (os_log_type_enabled(v413, OS_LOG_TYPE_DEBUG))
            {
              *uu = 136446978;
              *&uu[4] = "nw_path_verify_tlv_length";
              *&uu[12] = 1024;
              *&uu[14] = 251;
              *&uu[18] = 1024;
              *&uu[20] = v31;
              LOWORD(v523) = 1024;
              *(&v523 + 2) = 68;
              _os_log_impl(&dword_181A37000, v413, OS_LOG_TYPE_DEBUG, "%{public}s Permitting TLV of type %u with larger length %u, should be %u", uu, 0x1Eu);
            }

LABEL_274:
            v115 = *(v40 + 3);
            *&buf[32] = *(v40 + 2);
            *&buf[48] = v115;
            v521 = *(v40 + 16);
            v116 = *(v40 + 1);
            *buf = *v40;
            *&buf[16] = v116;
            v117 = v511;
            if (!v511)
            {
              v117 = nw_demux_create_options();
            }

            v511 = v117;
            nw_demux_options_add_pattern(v117, *buf, *&buf[2], &buf[36], &buf[4]);
          }

          break;
        default:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v56 = gLogObj;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 1024;
            *&buf[14] = v30;
            _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_ERROR, "%{public}s Received unknown client parameter TLV (type %d)", buf, 0x12u);
          }

          goto LABEL_869;
      }
    }

    if (v23 >= a11 - 5)
    {
      goto LABEL_1107;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v426 = gLogObj;
  *buf = 136446978;
  *&buf[4] = "nw_path_parse_necp_parameters";
  *&buf[12] = 1024;
  *&buf[14] = v31;
  *&buf[18] = 2048;
  *&buf[20] = v23;
  *&buf[28] = 2048;
  *&buf[30] = a11;
  v427 = _os_log_send_and_compose_impl();

  uu[0] = 16;
  v519 = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v427, uu, &v519))
  {
    goto LABEL_1105;
  }

  if (uu[0] == 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v428 = gLogObj;
    v429 = uu[0];
    if (os_log_type_enabled(v428, uu[0]))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_parse_necp_parameters";
      *&buf[12] = 1024;
      *&buf[14] = v31;
      *&buf[18] = 2048;
      *&buf[20] = v23;
      *&buf[28] = 2048;
      *&buf[30] = a11;
      _os_log_impl(&dword_181A37000, v428, v429, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu)", buf, 0x26u);
    }

    goto LABEL_1104;
  }

  if (v519 != OS_LOG_TYPE_INFO)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v428 = gLogObj;
    v434 = uu[0];
    if (os_log_type_enabled(v428, uu[0]))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_parse_necp_parameters";
      *&buf[12] = 1024;
      *&buf[14] = v31;
      *&buf[18] = 2048;
      *&buf[20] = v23;
      *&buf[28] = 2048;
      *&buf[30] = a11;
      _os_log_impl(&dword_181A37000, v428, v434, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), backtrace limit exceeded", buf, 0x26u);
    }

    goto LABEL_1104;
  }

  v430 = __nw_create_backtrace_string();
  if (!v430)
  {
    v428 = __nwlog_obj();
    v435 = uu[0];
    if (os_log_type_enabled(v428, uu[0]))
    {
      *buf = 136446978;
      *&buf[4] = "nw_path_parse_necp_parameters";
      *&buf[12] = 1024;
      *&buf[14] = v31;
      *&buf[18] = 2048;
      *&buf[20] = v23;
      *&buf[28] = 2048;
      *&buf[30] = a11;
      _os_log_impl(&dword_181A37000, v428, v435, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), no backtrace", buf, 0x26u);
    }

LABEL_1104:

LABEL_1105:
    if (!v427)
    {
      goto LABEL_1107;
    }

    goto LABEL_1106;
  }

  v431 = v430;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v432 = gLogObj;
  v433 = uu[0];
  if (os_log_type_enabled(v432, uu[0]))
  {
    *buf = 136447234;
    *&buf[4] = "nw_path_parse_necp_parameters";
    *&buf[12] = 1024;
    *&buf[14] = v31;
    *&buf[18] = 2048;
    *&buf[20] = v23;
    *&buf[28] = 2048;
    *&buf[30] = a11;
    *&buf[38] = 2082;
    *&buf[40] = v431;
    _os_log_impl(&dword_181A37000, v432, v433, "%{public}s TLV length (%u) at offset %zu goes beyond total length (%zu), dumping backtrace:%{public}s", buf, 0x30u);
  }

  free(v431);
  if (v427)
  {
LABEL_1106:
    free(v427);
  }

LABEL_1107:
  if (v23 == a11)
  {
    goto LABEL_1108;
  }

  v475 = __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_path_parse_necp_parameters";
  *&buf[12] = 2048;
  *&buf[14] = v23;
  *&buf[22] = 2048;
  *&buf[24] = a11;
  v476 = _os_log_send_and_compose_impl();

  uu[0] = 16;
  v519 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v476, uu, &v519))
  {
    if (uu[0] == 17)
    {
      v477 = __nwlog_obj();
      v478 = uu[0];
      if (os_log_type_enabled(v477, uu[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_path_parse_necp_parameters";
        *&buf[12] = 2048;
        *&buf[14] = v23;
        *&buf[22] = 2048;
        *&buf[24] = a11;
        _os_log_impl(&dword_181A37000, v477, v478, "%{public}s cursor has unexpected value %zu != %zu", buf, 0x20u);
      }

      goto LABEL_1200;
    }

    if (v519 == OS_LOG_TYPE_INFO)
    {
      v482 = __nw_create_backtrace_string();
      v483 = __nwlog_obj();
      v484 = uu[0];
      v485 = os_log_type_enabled(v483, uu[0]);
      if (v482)
      {
        if (v485)
        {
          *buf = 136446978;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 2048;
          *&buf[14] = v23;
          *&buf[22] = 2048;
          *&buf[24] = a11;
          *&buf[32] = 2082;
          *&buf[34] = v482;
          _os_log_impl(&dword_181A37000, v483, v484, "%{public}s cursor has unexpected value %zu != %zu, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v482);
      }

      else
      {
        if (v485)
        {
          *buf = 136446722;
          *&buf[4] = "nw_path_parse_necp_parameters";
          *&buf[12] = 2048;
          *&buf[14] = v23;
          *&buf[22] = 2048;
          *&buf[24] = a11;
          _os_log_impl(&dword_181A37000, v483, v484, "%{public}s cursor has unexpected value %zu != %zu, no backtrace", buf, 0x20u);
        }
      }
    }

    else
    {
      v477 = __nwlog_obj();
      v486 = uu[0];
      if (os_log_type_enabled(v477, uu[0]))
      {
        *buf = 136446722;
        *&buf[4] = "nw_path_parse_necp_parameters";
        *&buf[12] = 2048;
        *&buf[14] = v23;
        *&buf[22] = 2048;
        *&buf[24] = a11;
        _os_log_impl(&dword_181A37000, v477, v486, "%{public}s cursor has unexpected value %zu != %zu, backtrace limit exceeded", buf, 0x20u);
      }

LABEL_1200:
    }
  }

  if (v476)
  {
    free(v476);
  }

LABEL_1108:
  if (((v499 != 0) & v504) == 1)
  {
    *v499 = 0;
  }

  v436 = v512;
  if ((v504 & 0x100000000) != 0)
  {
    if (v500)
    {
      *v500 = v498;
    }

    v437 = _nw_parameters_copy_default_protocol_stack(parameters);
    v438 = _nw_custom_ip_create_options(v498);
    nw_protocol_stack_set_transport_protocol(v437, v438);

    v436 = v512;
  }

  if (v503)
  {
    v439 = _nw_parameters_copy_default_protocol_stack(parameters);
    v440 = v439;
    if (v439)
    {
      v441 = _nw_protocol_stack_copy_transport_protocol(v439);
      v442 = v441;
      if (v441 && _nw_protocol_options_is_udp(v441))
      {
        _nw_udp_options_set_no_metadata(v442, 1);
      }
    }

    v436 = v512;
  }

  if ((v501 & 0x100000000) == 0)
  {
LABEL_1129:
    if (v436 != 0 && (v501 & 1) != 0)
    {
      memset(buf, 0, 28);
      if (nw_endpoint_fillout_v4v6_address(*v436, buf))
      {
        if (nw_endpoint_get_type(*v436) == nw_endpoint_type_address)
        {
          v447 = _nw_endpoint_create_address_with_ethernet(buf, &v515);
          v448 = *v436;
          *v436 = v447;

          v436 = v512;
        }
      }
    }

    if (v436 && v509 && v506)
    {
      nw_endpoint_set_signature(*v436, v509, v506);
    }

    if (v507 < 1)
    {
      goto LABEL_1142;
    }

    v449 = nw_parameters_copy_prohibited_interface_subtypes(parameters);
    if (v449 || (v449 = xpc_array_create(0, 0)) != 0)
    {
      xpc_array_set_uint64(v449, 0xFFFFFFFFFFFFFFFFLL, 0x3EAuLL);
      v450 = parameters;
      v451 = v449;
      _nw_parameters_clear_prohibited_interface_subtypes(v450);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __nw_parameters_set_prohibited_interface_subtypes_block_invoke;
      *&buf[24] = &unk_1E6A3D300;
      v452 = v450;
      *&buf[32] = v452;
      xpc_array_apply(v451, buf);

LABEL_1141:
LABEL_1142:
      if (v511)
      {
        _nw_parameters_set_channel_demux_options(parameters, v511);
      }

      v28 = 1;
      goto LABEL_1145;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v454 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_parameters";
    v455 = _os_log_send_and_compose_impl();

    uu[0] = 16;
    v519 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v455, uu, &v519))
    {
      if (uu[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v456 = gLogObj;
        v457 = uu[0];
        if (os_log_type_enabled(v456, uu[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          _os_log_impl(&dword_181A37000, v456, v457, "%{public}s xpc_array_create failed", buf, 0xCu);
        }
      }

      else if (v519 == OS_LOG_TYPE_INFO)
      {
        v458 = __nw_create_backtrace_string();
        v456 = __nwlog_obj();
        v459 = uu[0];
        v460 = os_log_type_enabled(v456, uu[0]);
        if (v458)
        {
          if (v460)
          {
            *buf = 136446466;
            *&buf[4] = "nw_path_parse_necp_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v458;
            _os_log_impl(&dword_181A37000, v456, v459, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v458);
          goto LABEL_1163;
        }

        if (v460)
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          _os_log_impl(&dword_181A37000, v456, v459, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v456 = __nwlog_obj();
        v461 = uu[0];
        if (os_log_type_enabled(v456, uu[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_parameters";
          _os_log_impl(&dword_181A37000, v456, v461, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_1163:
    if (v455)
    {
      free(v455);
    }

    v451 = 0;
    goto LABEL_1141;
  }

  v443 = _nw_parameters_copy_local_endpoint(parameters);
  if (!v443)
  {
    v446 = 0;
LABEL_1128:

    v436 = v512;
    goto LABEL_1129;
  }

  v444 = v443;
  v445 = _nw_endpoint_get_type(v444);

  if (v445 != 1)
  {
    v446 = v444;
    goto LABEL_1128;
  }

  memset(buf, 0, 28);
  if (nw_endpoint_fillout_v4v6_address(v444, buf))
  {
    v446 = _nw_endpoint_create_address_with_ethernet(buf, &v517);

    _nw_parameters_set_local_endpoint(parameters, v446);
    goto LABEL_1128;
  }

  v487 = __nwlog_obj();
  *uu = 136446210;
  *&uu[4] = "nw_path_parse_necp_parameters";
  v488 = _os_log_send_and_compose_impl();

  v519 = OS_LOG_TYPE_ERROR;
  v514 = 0;
  if (__nwlog_fault(v488, &v519, &v514))
  {
    if (v519 == OS_LOG_TYPE_FAULT)
    {
      v489 = __nwlog_obj();
      v490 = v519;
      if (os_log_type_enabled(v489, v519))
      {
        *uu = 136446210;
        *&uu[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v489, v490, "%{public}s called with null success_local", uu, 0xCu);
      }

      goto LABEL_1247;
    }

    if (v514 == 1)
    {
      v491 = __nw_create_backtrace_string();
      v489 = __nwlog_obj();
      v492 = v519;
      v493 = os_log_type_enabled(v489, v519);
      if (v491)
      {
        if (v493)
        {
          *uu = 136446466;
          *&uu[4] = "nw_path_parse_necp_parameters";
          *&uu[12] = 2082;
          *&uu[14] = v491;
          _os_log_impl(&dword_181A37000, v489, v492, "%{public}s called with null success_local, dumping backtrace:%{public}s", uu, 0x16u);
        }

        free(v491);
        goto LABEL_1248;
      }

      if (v493)
      {
        *uu = 136446210;
        *&uu[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v489, v492, "%{public}s called with null success_local, no backtrace", uu, 0xCu);
      }
    }

    else
    {
      v489 = __nwlog_obj();
      v494 = v519;
      if (os_log_type_enabled(v489, v519))
      {
        *uu = 136446210;
        *&uu[4] = "nw_path_parse_necp_parameters";
        _os_log_impl(&dword_181A37000, v489, v494, "%{public}s called with null success_local, backtrace limit exceeded", uu, 0xCu);
      }
    }

LABEL_1247:
  }

LABEL_1248:
  if (v488)
  {
    free(v488);
  }

  v28 = 0;
LABEL_1145:

LABEL_1146:
  return v28;
}

NSObject *nw_listener_socket_inbox_create_socket(void *a1, const unsigned __int8 *a2, int *a3)
{
  v288 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v109 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_listener_socket_inbox_create_socket";
    v110 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v282) = 0;
    if (!__nwlog_fault(v110, type, &v282))
    {
      goto LABEL_388;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v111 = __nwlog_obj();
      v112 = type[0];
      if (os_log_type_enabled(v111, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        _os_log_impl(&dword_181A37000, v111, v112, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v282 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v111 = __nwlog_obj();
      v120 = type[0];
      v121 = os_log_type_enabled(v111, type[0]);
      if (backtrace_string)
      {
        if (v121)
        {
          *buf = 136446466;
          *&buf[4] = "nw_listener_socket_inbox_create_socket";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v111, v120, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v110)
        {
          goto LABEL_390;
        }

        goto LABEL_389;
      }

      if (v121)
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        _os_log_impl(&dword_181A37000, v111, v120, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v111 = __nwlog_obj();
      v126 = type[0];
      if (os_log_type_enabled(v111, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        _os_log_impl(&dword_181A37000, v111, v126, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_387;
  }

  if (!a3)
  {
    v113 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_listener_socket_inbox_create_socket";
    v110 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v282) = 0;
    if (!__nwlog_fault(v110, type, &v282))
    {
      goto LABEL_388;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v111 = __nwlog_obj();
      v114 = type[0];
      if (os_log_type_enabled(v111, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        _os_log_impl(&dword_181A37000, v111, v114, "%{public}s called with null outFD", buf, 0xCu);
      }
    }

    else if (v282 == 1)
    {
      v122 = __nw_create_backtrace_string();
      v111 = __nwlog_obj();
      v123 = type[0];
      v124 = os_log_type_enabled(v111, type[0]);
      if (v122)
      {
        if (v124)
        {
          *buf = 136446466;
          *&buf[4] = "nw_listener_socket_inbox_create_socket";
          *&buf[12] = 2082;
          *&buf[14] = v122;
          _os_log_impl(&dword_181A37000, v111, v123, "%{public}s called with null outFD, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v122);
LABEL_388:
        if (!v110)
        {
LABEL_390:
          v25 = 0;
          goto LABEL_115;
        }

LABEL_389:
        free(v110);
        goto LABEL_390;
      }

      if (v124)
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        _os_log_impl(&dword_181A37000, v111, v123, "%{public}s called with null outFD, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v111 = __nwlog_obj();
      v127 = type[0];
      if (os_log_type_enabled(v111, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        _os_log_impl(&dword_181A37000, v111, v127, "%{public}s called with null outFD, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_387:

    goto LABEL_388;
  }

  *a3 = -1;
  v7 = _nw_parameters_copy_local_endpoint(v5);
  v8 = _nw_parameters_copy_default_protocol_stack(v6);
  v9 = nw_protocol_stack_copy_internet_protocol_as_ip_options(v8, 0);
  v10 = v9;
  if (!v9)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_9;
  }

  version = _nw_ip_options_get_version(v9);
  if (version != 4)
  {
    if (version == 6)
    {
      v12 = 30;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v12 = 2;
LABEL_9:

  if (!v7)
  {
    endpoint = 0;
    goto LABEL_21;
  }

  memset(buf, 0, 28);
  nw_endpoint_fillout_v4v6_address(v7, buf);
  v13 = v7;
  is_multicast = _nw_endpoint_is_multicast(v13);

  if (is_multicast)
  {
    v15 = v13;
    v16 = buf[1];
    v12 = buf[1];
  }

  else
  {
    v15 = 0;
    v16 = buf[1];
  }

  endpoint = v15;
  if (v16 != 30)
  {
    if (v16 != 2)
    {
      goto LABEL_29;
    }

    if (!*&buf[4])
    {
      goto LABEL_20;
    }

LABEL_19:
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  if (vmaxv_u16(vmovn_s32(vtstq_s32(*&buf[8], *&buf[8]))))
  {
    goto LABEL_19;
  }

LABEL_20:
  LOWORD(v7) = *&buf[2];

LABEL_21:
  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = 30;
  }

  if (v17 == 30)
  {
    memset(&buf[4], 0, 24);
    *buf = 7708;
    *&buf[2] = v7;
    address = _nw_endpoint_create_address(buf);
  }

  else
  {
    if (v17 != 2)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s listener created without a local address specified", buf, 0xCu);
      }

      v25 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
      v19 = 0;
      goto LABEL_114;
    }

    *buf = 528;
    *&buf[2] = v7;
    *&buf[4] = 0;
    *&buf[8] = 0;
    address = _nw_endpoint_create_address(buf);
  }

  v13 = address;
  if (!address)
  {
    v19 = 0;
LABEL_38:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "nw_listener_socket_inbox_create_socket";
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s listener created without a local address specified", buf, 0xCu);
    }

    goto LABEL_60;
  }

LABEL_29:
  v19 = v13;
  v20 = _nw_endpoint_get_address(v19);

  if (!v20)
  {
    goto LABEL_38;
  }

  if (v12 && v20->sa_family != v12)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "nw_listener_socket_inbox_create_socket";
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s Required address family doesn't match local address", buf, 0xCu);
    }
  }

  else
  {
    ip_protocol = nw_parameters_get_ip_protocol(v6);
    v22 = ip_protocol;
    if (ip_protocol == 6)
    {
      v23 = 1;
      goto LABEL_43;
    }

    if (ip_protocol == 17)
    {
      v23 = 2;
LABEL_43:
      v27 = socket(v20->sa_family, v23, 0);
      v28 = v27;
      if ((v27 & 0x80000000) == 0)
      {
        v281 = 0;
        v282 = 1;
        v274 = v27;
        if (setsockopt(v27, 0xFFFF, 4, &v282, 4u))
        {
          posix_error = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
          error_code = nw_error_get_error_code(posix_error);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          *buf = 136446466;
          *&buf[4] = "nw_listener_socket_inbox_create_socket";
          *&buf[12] = 1024;
          *&buf[14] = error_code;
          v32 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v280) = 0;
          if (!__nwlog_fault(v32, type, &v280))
          {
            goto LABEL_141;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v33 = gLogObj;
            v34 = type[0];
            if (os_log_type_enabled(v33, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = error_code;
              _os_log_impl(&dword_181A37000, v33, v34, "%{public}s SO_REUSEADDR failed %{darwin.errno}d", buf, 0x12u);
            }

LABEL_131:

            goto LABEL_141;
          }

          if (v280 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v33 = gLogObj;
            v59 = type[0];
            if (os_log_type_enabled(v33, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = error_code;
              _os_log_impl(&dword_181A37000, v33, v59, "%{public}s SO_REUSEADDR failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
            }

            goto LABEL_131;
          }

          v44 = __nw_create_backtrace_string();
          v45 = __nwlog_obj();
          v46 = type[0];
          v47 = os_log_type_enabled(v45, type[0]);
          if (v44)
          {
            if (v47)
            {
              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = error_code;
              *&buf[18] = 2082;
              *&buf[20] = v44;
              _os_log_impl(&dword_181A37000, v45, v46, "%{public}s SO_REUSEADDR failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

LABEL_72:

            free(v44);
            goto LABEL_141;
          }

          if (v47)
          {
            *buf = 136446466;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = error_code;
            _os_log_impl(&dword_181A37000, v45, v46, "%{public}s SO_REUSEADDR failed %{darwin.errno}d, no backtrace", buf, 0x12u);
          }

          goto LABEL_140;
        }

        if (v22 != 6 && setsockopt(v28, 0xFFFF, 512, &v282, 4u))
        {
          posix_error = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
          v41 = nw_error_get_error_code(posix_error);
          v42 = __nwlog_obj();
          *buf = 136446466;
          *&buf[4] = "nw_listener_socket_inbox_create_socket";
          *&buf[12] = 1024;
          *&buf[14] = v41;
          v32 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v280) = 0;
          if (!__nwlog_fault(v32, type, &v280))
          {
            goto LABEL_141;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v33 = __nwlog_obj();
            v43 = type[0];
            if (os_log_type_enabled(v33, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v41;
              _os_log_impl(&dword_181A37000, v33, v43, "%{public}s SO_REUSEPORT failed %{darwin.errno}d", buf, 0x12u);
            }

            goto LABEL_131;
          }

          if (v280 != 1)
          {
            v33 = __nwlog_obj();
            v66 = type[0];
            if (os_log_type_enabled(v33, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v41;
              _os_log_impl(&dword_181A37000, v33, v66, "%{public}s SO_REUSEPORT failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
            }

            goto LABEL_131;
          }

          v44 = __nw_create_backtrace_string();
          v45 = __nwlog_obj();
          v61 = type[0];
          v62 = os_log_type_enabled(v45, type[0]);
          if (v44)
          {
            if (v62)
            {
              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v41;
              *&buf[18] = 2082;
              *&buf[20] = v44;
              _os_log_impl(&dword_181A37000, v45, v61, "%{public}s SO_REUSEPORT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            goto LABEL_72;
          }

          if (v62)
          {
            *buf = 136446466;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = v41;
            _os_log_impl(&dword_181A37000, v45, v61, "%{public}s SO_REUSEPORT failed %{darwin.errno}d, no backtrace", buf, 0x12u);
          }

LABEL_140:

LABEL_141:
          v72 = v274;
          if (v32)
          {
            free(v32);
          }

          if (posix_error)
          {
            goto LABEL_144;
          }

          goto LABEL_322;
        }

        if (_nw_parameters_get_use_awdl(v6) && setsockopt(v28, 0xFFFF, 4356, &v282, 4u))
        {
          posix_error = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
          v51 = nw_error_get_error_code(posix_error);
          v52 = __nwlog_obj();
          *buf = 136446466;
          *&buf[4] = "nw_listener_socket_inbox_create_socket";
          *&buf[12] = 1024;
          *&buf[14] = v51;
          v32 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v280) = 0;
          if (!__nwlog_fault(v32, type, &v280))
          {
            goto LABEL_141;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v33 = __nwlog_obj();
            v53 = type[0];
            if (os_log_type_enabled(v33, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v51;
              _os_log_impl(&dword_181A37000, v33, v53, "%{public}s SO_RECV_ANYIF failed %{darwin.errno}d", buf, 0x12u);
            }

            goto LABEL_131;
          }

          if (v280 != 1)
          {
            v33 = __nwlog_obj();
            v70 = type[0];
            if (os_log_type_enabled(v33, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v51;
              _os_log_impl(&dword_181A37000, v33, v70, "%{public}s SO_RECV_ANYIF failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
            }

            goto LABEL_131;
          }

          v44 = __nw_create_backtrace_string();
          v45 = __nwlog_obj();
          v64 = type[0];
          v65 = os_log_type_enabled(v45, type[0]);
          if (v44)
          {
            if (v65)
            {
              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v51;
              *&buf[18] = 2082;
              *&buf[20] = v44;
              _os_log_impl(&dword_181A37000, v45, v64, "%{public}s SO_RECV_ANYIF failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            goto LABEL_72;
          }

          if (v65)
          {
            *buf = 136446466;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = v51;
            _os_log_impl(&dword_181A37000, v45, v64, "%{public}s SO_RECV_ANYIF failed %{darwin.errno}d, no backtrace", buf, 0x12u);
          }

          goto LABEL_140;
        }

        if (!_nw_parameters_get_no_wake_from_sleep(v6) || !setsockopt(v28, 0xFFFF, 0x10000, &v282, 4u))
        {
LABEL_150:
          v73 = _nw_parameters_copy_required_interface(v6);
          v74 = v73;
          v273 = v73;
          if (v73)
          {
            index = _nw_interface_get_index(v73);
          }

          else
          {
            index = 0;
          }

          v280 = index;
          sa_family = v20->sa_family;
          if (sa_family == 30)
          {
            *type = v12 == 30;
            if (setsockopt(v28, 41, 27, type, 4u))
            {
              v271 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
              v77 = nw_error_get_error_code(v271);
              v78 = __nwlog_obj();
              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              if (*type)
              {
                v79 = "on";
              }

              else
              {
                v79 = "off";
              }

              *&buf[12] = 2082;
              *&buf[14] = v79;
              *&buf[22] = 1024;
              *&buf[24] = v77;
              v80 = _os_log_send_and_compose_impl();

              v279 = OS_LOG_TYPE_ERROR;
              v278 = 0;
              if (!__nwlog_fault(v80, &v279, &v278))
              {
LABEL_319:
                v74 = v273;
                if (v80)
                {
                  free(v80);
                }

LABEL_321:

                v72 = v274;
                posix_error = v271;
                if (v271)
                {
LABEL_144:
                  close(v72);
LABEL_323:
                  v25 = posix_error;

                  goto LABEL_114;
                }

LABEL_322:
                *a3 = v72;
                goto LABEL_323;
              }

              if (v279 == OS_LOG_TYPE_FAULT)
              {
                v81 = __nwlog_obj();
                v82 = v279;
                if (os_log_type_enabled(v81, v279))
                {
                  v83 = "on";
                  if (!*type)
                  {
                    v83 = "off";
                  }

                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 2082;
                  *&buf[14] = v83;
                  *&buf[22] = 1024;
                  *&buf[24] = v77;
                  _os_log_impl(&dword_181A37000, v81, v82, "%{public}s IPV6_V6ONLY %{public}s failed %{darwin.errno}d", buf, 0x1Cu);
                }

LABEL_396:

                goto LABEL_319;
              }

              if (v278 != 1)
              {
                v81 = __nwlog_obj();
                v97 = v279;
                if (os_log_type_enabled(v81, v279))
                {
                  v98 = "on";
                  if (!*type)
                  {
                    v98 = "off";
                  }

                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 2082;
                  *&buf[14] = v98;
                  *&buf[22] = 1024;
                  *&buf[24] = v77;
                  _os_log_impl(&dword_181A37000, v81, v97, "%{public}s IPV6_V6ONLY %{public}s failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
                }

                goto LABEL_396;
              }

              v92 = __nw_create_backtrace_string();
              v93 = __nwlog_obj();
              v94 = v279;
              v95 = os_log_type_enabled(v93, v279);
              if (v92)
              {
                if (v95)
                {
                  v96 = "on";
                  if (!*type)
                  {
                    v96 = "off";
                  }

                  *buf = 136446978;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 2082;
                  *&buf[14] = v96;
                  *&buf[22] = 1024;
                  *&buf[24] = v77;
                  *&buf[28] = 2082;
                  *&buf[30] = v92;
                  _os_log_impl(&dword_181A37000, v93, v94, "%{public}s IPV6_V6ONLY %{public}s failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
                }

LABEL_317:

                v151 = v92;
                goto LABEL_318;
              }

              if (v95)
              {
                v104 = "on";
                if (!*type)
                {
                  v104 = "off";
                }

                *buf = 136446722;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 2082;
                *&buf[14] = v104;
                *&buf[22] = 1024;
                *&buf[24] = v77;
                _os_log_impl(&dword_181A37000, v93, v94, "%{public}s IPV6_V6ONLY %{public}s failed %{darwin.errno}d, no backtrace", buf, 0x1Cu);
              }

LABEL_437:

              goto LABEL_319;
            }

            if (v280 && setsockopt(v28, 41, 125, &v280, 4u))
            {
              v271 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
              v87 = nw_error_get_error_code(v271);
              v88 = __nwlog_obj();
              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v280;
              *&buf[18] = 1024;
              *&buf[20] = v87;
              v80 = _os_log_send_and_compose_impl();

              v279 = OS_LOG_TYPE_ERROR;
              v278 = 0;
              if (!__nwlog_fault(v80, &v279, &v278))
              {
                goto LABEL_319;
              }

              if (v279 == OS_LOG_TYPE_FAULT)
              {
                v81 = __nwlog_obj();
                v89 = v279;
                if (os_log_type_enabled(v81, v279))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v280;
                  *&buf[18] = 1024;
                  *&buf[20] = v87;
                  _os_log_impl(&dword_181A37000, v81, v89, "%{public}s IPV6_BOUND_IF %d failed %{darwin.errno}d", buf, 0x18u);
                }

                goto LABEL_396;
              }

              if (v278 != 1)
              {
                v81 = __nwlog_obj();
                v115 = v279;
                if (os_log_type_enabled(v81, v279))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v280;
                  *&buf[18] = 1024;
                  *&buf[20] = v87;
                  _os_log_impl(&dword_181A37000, v81, v115, "%{public}s IPV6_BOUND_IF %d failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x18u);
                }

                goto LABEL_396;
              }

              v92 = __nw_create_backtrace_string();
              v93 = __nwlog_obj();
              v102 = v279;
              v103 = os_log_type_enabled(v93, v279);
              if (v92)
              {
                if (v103)
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v280;
                  *&buf[18] = 1024;
                  *&buf[20] = v87;
                  *&buf[24] = 2082;
                  *&buf[26] = v92;
                  _os_log_impl(&dword_181A37000, v93, v102, "%{public}s IPV6_BOUND_IF %d failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
                }

                goto LABEL_317;
              }

              if (v103)
              {
                *buf = 136446722;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v280;
                *&buf[18] = 1024;
                *&buf[20] = v87;
                _os_log_impl(&dword_181A37000, v93, v102, "%{public}s IPV6_BOUND_IF %d failed %{darwin.errno}d, no backtrace", buf, 0x18u);
              }

              goto LABEL_437;
            }
          }

          else if (sa_family == 2 && index && setsockopt(v28, 0, 25, &v280, 4u))
          {
            v271 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
            v84 = nw_error_get_error_code(v271);
            v85 = __nwlog_obj();
            *buf = 136446722;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = v280;
            *&buf[18] = 1024;
            *&buf[20] = v84;
            v80 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            v279 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v80, type, &v279))
            {
              goto LABEL_319;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v81 = __nwlog_obj();
              v86 = type[0];
              if (os_log_type_enabled(v81, type[0]))
              {
                *buf = 136446722;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v280;
                *&buf[18] = 1024;
                *&buf[20] = v84;
                _os_log_impl(&dword_181A37000, v81, v86, "%{public}s IP_BOUND_IF %d failed %{darwin.errno}d", buf, 0x18u);
              }

              goto LABEL_396;
            }

            if (v279 != OS_LOG_TYPE_INFO)
            {
              v81 = __nwlog_obj();
              v101 = type[0];
              if (os_log_type_enabled(v81, type[0]))
              {
                *buf = 136446722;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v280;
                *&buf[18] = 1024;
                *&buf[20] = v84;
                _os_log_impl(&dword_181A37000, v81, v101, "%{public}s IP_BOUND_IF %d failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x18u);
              }

              goto LABEL_396;
            }

            v92 = __nw_create_backtrace_string();
            v93 = __nwlog_obj();
            v99 = type[0];
            v100 = os_log_type_enabled(v93, type[0]);
            if (v92)
            {
              if (v100)
              {
                *buf = 136446978;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v280;
                *&buf[18] = 1024;
                *&buf[20] = v84;
                *&buf[24] = 2082;
                *&buf[26] = v92;
                _os_log_impl(&dword_181A37000, v93, v99, "%{public}s IP_BOUND_IF %d failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
              }

              goto LABEL_317;
            }

            if (v100)
            {
              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v280;
              *&buf[18] = 1024;
              *&buf[20] = v84;
              _os_log_impl(&dword_181A37000, v93, v99, "%{public}s IP_BOUND_IF %d failed %{darwin.errno}d, no backtrace", buf, 0x18u);
            }

            goto LABEL_437;
          }

          if (uuid_is_null(a2) || !setsockopt(v28, 0xFFFF, 4384, a2, 0x10u))
          {
LABEL_272:
            if (bind(v28, v20, v20->sa_len))
            {
              v128 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
              v129 = nw_error_get_error_code(v128);
              v130 = v129;
              v271 = v128;
              if (v129 > 0x31 || ((1 << v129) & 0x3000000002006) == 0)
              {
                v141 = __nwlog_obj();
                *buf = 136447235;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v28;
                *&buf[18] = 2113;
                *&buf[20] = v19;
                *&buf[28] = 2114;
                *&buf[30] = v6;
                v284 = 1024;
                v285 = v130;
                v80 = _os_log_send_and_compose_impl();

                type[0] = OS_LOG_TYPE_ERROR;
                v279 = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v80, type, &v279))
                {
                  goto LABEL_319;
                }

                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v81 = __nwlog_obj();
                  v142 = type[0];
                  if (os_log_type_enabled(v81, type[0]))
                  {
                    *buf = 136447235;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v274;
                    *&buf[18] = 2113;
                    *&buf[20] = v19;
                    *&buf[28] = 2114;
                    *&buf[30] = v6;
                    v284 = 1024;
                    v285 = v130;
                    _os_log_impl(&dword_181A37000, v81, v142, "%{public}s bind(%d, %{private}@) %{public}@ failed %{darwin.errno}d", buf, 0x2Cu);
                  }

                  goto LABEL_396;
                }

                if (v279 != OS_LOG_TYPE_INFO)
                {
                  v81 = __nwlog_obj();
                  v155 = type[0];
                  if (os_log_type_enabled(v81, type[0]))
                  {
                    *buf = 136447235;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v274;
                    *&buf[18] = 2113;
                    *&buf[20] = v19;
                    *&buf[28] = 2114;
                    *&buf[30] = v6;
                    v284 = 1024;
                    v285 = v130;
                    _os_log_impl(&dword_181A37000, v81, v155, "%{public}s bind(%d, %{private}@) %{public}@ failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x2Cu);
                  }

                  goto LABEL_396;
                }

                v92 = __nw_create_backtrace_string();
                v93 = __nwlog_obj();
                v152 = type[0];
                v153 = os_log_type_enabled(v93, type[0]);
                if (v92)
                {
                  if (v153)
                  {
                    *buf = 136447491;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v274;
                    *&buf[18] = 2113;
                    *&buf[20] = v19;
                    *&buf[28] = 2114;
                    *&buf[30] = v6;
                    v284 = 1024;
                    v285 = v130;
                    v286 = 2082;
                    v287 = v92;
                    _os_log_impl(&dword_181A37000, v93, v152, "%{public}s bind(%d, %{private}@) %{public}@ failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x36u);
                  }

                  goto LABEL_317;
                }

                if (v153)
                {
                  *buf = 136447235;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v274;
                  *&buf[18] = 2113;
                  *&buf[20] = v19;
                  *&buf[28] = 2114;
                  *&buf[30] = v6;
                  v284 = 1024;
                  v285 = v130;
                  _os_log_impl(&dword_181A37000, v93, v152, "%{public}s bind(%d, %{private}@) %{public}@ failed %{darwin.errno}d, no backtrace", buf, 0x2Cu);
                }

                goto LABEL_437;
              }

              v131 = __nwlog_obj();
              if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
              {
                *buf = 136447235;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v28;
                *&buf[18] = 2113;
                *&buf[20] = v19;
                *&buf[28] = 2114;
                *&buf[30] = v6;
                v284 = 1024;
                v285 = v130;
                _os_log_impl(&dword_181A37000, v131, OS_LOG_TYPE_ERROR, "%{public}s bind(%d, %{private}@) %{public}@ failed %{darwin.errno}d", buf, 0x2Cu);
              }

LABEL_278:
              v74 = v273;
              goto LABEL_321;
            }

            if (v22 == 6)
            {
              if (listen(v28, 1024))
              {
                v271 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
                v132 = nw_error_get_error_code(v271);
                v133 = __nwlog_obj();
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v132;
                v80 = _os_log_send_and_compose_impl();

                type[0] = OS_LOG_TYPE_ERROR;
                v279 = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v80, type, &v279))
                {
                  goto LABEL_319;
                }

                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v81 = __nwlog_obj();
                  v134 = type[0];
                  if (os_log_type_enabled(v81, type[0]))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v132;
                    _os_log_impl(&dword_181A37000, v81, v134, "%{public}s listen failed %{darwin.errno}d", buf, 0x12u);
                  }

                  goto LABEL_396;
                }

                if (v279 != OS_LOG_TYPE_INFO)
                {
                  v81 = __nwlog_obj();
                  v154 = type[0];
                  if (os_log_type_enabled(v81, type[0]))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v132;
                    _os_log_impl(&dword_181A37000, v81, v154, "%{public}s listen failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                  }

                  goto LABEL_396;
                }

                v148 = __nw_create_backtrace_string();
                v93 = __nwlog_obj();
                v149 = type[0];
                v150 = os_log_type_enabled(v93, type[0]);
                if (!v148)
                {
                  if (v150)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v132;
                    _os_log_impl(&dword_181A37000, v93, v149, "%{public}s listen failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                  }

                  goto LABEL_437;
                }

                if (v150)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v132;
                  *&buf[18] = 2082;
                  *&buf[20] = v148;
                  _os_log_impl(&dword_181A37000, v93, v149, "%{public}s listen failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                }

LABEL_312:

                v151 = v148;
LABEL_318:
                free(v151);
                goto LABEL_319;
              }

LABEL_458:
              v271 = 0;
              goto LABEL_321;
            }

            v135 = v20->sa_family;
            if (v135 != 2)
            {
              if (v135 != 30)
              {
                goto LABEL_458;
              }

              if (setsockopt(v28, 41, 61, &v282, 4u) < 0)
              {
                v271 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
                v156 = nw_error_get_error_code(v271);
                v157 = __nwlog_obj();
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v156;
                v80 = _os_log_send_and_compose_impl();

                type[0] = OS_LOG_TYPE_ERROR;
                v279 = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault(v80, type, &v279))
                {
                  goto LABEL_319;
                }

                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v81 = __nwlog_obj();
                  v158 = type[0];
                  if (os_log_type_enabled(v81, type[0]))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v156;
                    _os_log_impl(&dword_181A37000, v81, v158, "%{public}s IPV6_RECVPKTINFO failed %{darwin.errno}d", buf, 0x12u);
                  }

                  goto LABEL_396;
                }

                if (v279 != OS_LOG_TYPE_INFO)
                {
                  v81 = __nwlog_obj();
                  v175 = type[0];
                  if (os_log_type_enabled(v81, type[0]))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v156;
                    _os_log_impl(&dword_181A37000, v81, v175, "%{public}s IPV6_RECVPKTINFO failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                  }

                  goto LABEL_396;
                }

                v148 = __nw_create_backtrace_string();
                v93 = __nwlog_obj();
                v165 = type[0];
                v166 = os_log_type_enabled(v93, type[0]);
                if (!v148)
                {
                  if (v166)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v156;
                    _os_log_impl(&dword_181A37000, v93, v165, "%{public}s IPV6_RECVPKTINFO failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                  }

                  goto LABEL_437;
                }

                if (v166)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v156;
                  *&buf[18] = 2082;
                  *&buf[20] = v148;
                  _os_log_impl(&dword_181A37000, v93, v165, "%{public}s IPV6_RECVPKTINFO failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                }

                goto LABEL_312;
              }

              if ((setsockopt(v28, 41, 35, &v282, 4u) & 0x80000000) == 0)
              {
                goto LABEL_411;
              }

              v136 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
              v137 = __nwlog_obj();
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v136;
              v138 = _os_log_send_and_compose_impl();

              type[0] = OS_LOG_TYPE_ERROR;
              v279 = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v138, type, &v279))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v139 = __nwlog_obj();
                  v140 = type[0];
                  if (os_log_type_enabled(v139, type[0]))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v136;
                    _os_log_impl(&dword_181A37000, v139, v140, "%{public}s IPV6_RECVTCLASS failed %{darwin.errno}d", buf, 0x12u);
                  }
                }

                else
                {
                  if (v279 == OS_LOG_TYPE_INFO)
                  {
                    v169 = __nw_create_backtrace_string();
                    v170 = __nwlog_obj();
                    v171 = type[0];
                    v172 = os_log_type_enabled(v170, type[0]);
                    if (v169)
                    {
                      if (v172)
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 1024;
                        *&buf[14] = v136;
                        *&buf[18] = 2082;
                        *&buf[20] = v169;
                        _os_log_impl(&dword_181A37000, v170, v171, "%{public}s IPV6_RECVTCLASS failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                      }

                      free(v169);
                    }

                    else
                    {
                      if (v172)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 1024;
                        *&buf[14] = v136;
                        _os_log_impl(&dword_181A37000, v170, v171, "%{public}s IPV6_RECVTCLASS failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                      }
                    }

                    goto LABEL_409;
                  }

                  v139 = __nwlog_obj();
                  v181 = type[0];
                  if (os_log_type_enabled(v139, type[0]))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v136;
                    _os_log_impl(&dword_181A37000, v139, v181, "%{public}s IPV6_RECVTCLASS failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                  }
                }
              }

LABEL_409:
              v74 = v273;
              if (v138)
              {
                free(v138);
              }

LABEL_411:
              if (!endpoint)
              {
                goto LABEL_458;
              }

              v184 = __nwlog_obj();
              if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 2112;
                *&buf[14] = endpoint;
                _os_log_impl(&dword_181A37000, v184, OS_LOG_TYPE_DEBUG, "%{public}s Joining multicast group %@", buf, 0x16u);
              }

              memset(type, 0, sizeof(type));
              v277 = 0;
              *type = *&nw_endpoint_get_address(endpoint)->sa_data[6];
              v185 = _nw_parameters_copy_required_interface(v6);
              v186 = v274;
              v187 = v185;
              if (!v185)
              {
LABEL_417:
                if ((setsockopt(v274, 41, 13, type, 0x14u) & 0x80000000) == 0)
                {
                  goto LABEL_487;
                }

                v188 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                v189 = __nwlog_obj();
                v190 = v189;
                if (v188 == 49)
                {
                  if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 2112;
                    *&buf[14] = endpoint;
                    *&buf[22] = 1024;
                    *&buf[24] = 49;
                    _os_log_impl(&dword_181A37000, v190, OS_LOG_TYPE_ERROR, "%{public}s IPV6_LEAVE_GROUP %@ failed %{darwin.errno}d", buf, 0x1Cu);
                  }

LABEL_486:
                  v186 = v274;
LABEL_487:
                  if ((setsockopt(v186, 41, 12, type, 0x14u) & 0x80000000) == 0)
                  {
                    v218 = _nw_parameters_copy_default_protocol_stack(v6);
                    if (v218)
                    {
                      v219 = _nw_protocol_stack_copy_internet_protocol();
                      v220 = v219;
                      if (v219)
                      {
                        v221 = _nw_ip_options_get_disable_multicast_loopback(v219) ? &v281 : &v282;
                        if (setsockopt(v274, 41, 11, v221, 4u))
                        {
                          v222 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                          v223 = __nwlog_obj();
                          *buf = 136446466;
                          *&buf[4] = "nw_listener_socket_inbox_create_socket";
                          *&buf[12] = 1024;
                          *&buf[14] = v222;
                          v224 = _os_log_send_and_compose_impl();

                          v279 = OS_LOG_TYPE_ERROR;
                          v278 = 0;
                          if (__nwlog_fault(v224, &v279, &v278))
                          {
                            if (v279 == OS_LOG_TYPE_FAULT)
                            {
                              v225 = __nwlog_obj();
                              v226 = v279;
                              if (os_log_type_enabled(v225, v279))
                              {
                                *buf = 136446466;
                                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                                *&buf[12] = 1024;
                                *&buf[14] = v222;
                                _os_log_impl(&dword_181A37000, v225, v226, "%{public}s IPV6_MULTICAST_LOOP failed %{darwin.errno}d", buf, 0x12u);
                              }
                            }

                            else
                            {
                              if (v278 == 1)
                              {
                                v238 = __nw_create_backtrace_string();
                                v239 = __nwlog_obj();
                                v240 = v279;
                                v269 = v239;
                                v241 = os_log_type_enabled(v239, v279);
                                if (v238)
                                {
                                  if (v241)
                                  {
                                    *buf = 136446722;
                                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                                    *&buf[12] = 1024;
                                    *&buf[14] = v222;
                                    *&buf[18] = 2082;
                                    *&buf[20] = v238;
                                    _os_log_impl(&dword_181A37000, v269, v240, "%{public}s IPV6_MULTICAST_LOOP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                  }

                                  free(v238);
                                }

                                else
                                {
                                  if (v241)
                                  {
                                    *buf = 136446466;
                                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                                    *&buf[12] = 1024;
                                    *&buf[14] = v222;
                                    _os_log_impl(&dword_181A37000, v269, v240, "%{public}s IPV6_MULTICAST_LOOP failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                                  }
                                }

                                goto LABEL_529;
                              }

                              v225 = __nwlog_obj();
                              v242 = v279;
                              if (os_log_type_enabled(v225, v279))
                              {
                                *buf = 136446466;
                                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                                *&buf[12] = 1024;
                                *&buf[14] = v222;
                                _os_log_impl(&dword_181A37000, v225, v242, "%{public}s IPV6_MULTICAST_LOOP failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                              }
                            }
                          }

LABEL_529:
                          if (v224)
                          {
                            free(v224);
                          }
                        }
                      }
                    }

                    else
                    {
                      v220 = 0;
                    }

                    v271 = 0;
                    goto LABEL_532;
                  }

                  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                  v271 = nw_error_create_posix_error(**(StatusReg + 8));
                  v228 = **(StatusReg + 8);
                  v229 = __nwlog_obj();
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v228;
                  v230 = _os_log_send_and_compose_impl();

                  v279 = OS_LOG_TYPE_ERROR;
                  v278 = 0;
                  if (__nwlog_fault(v230, &v279, &v278))
                  {
                    if (v279 == OS_LOG_TYPE_FAULT)
                    {
                      v231 = __nwlog_obj();
                      v232 = v279;
                      if (os_log_type_enabled(v231, v279))
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 1024;
                        *&buf[14] = v228;
                        _os_log_impl(&dword_181A37000, v231, v232, "%{public}s IPV6_JOIN_GROUP failed %{darwin.errno}d", buf, 0x12u);
                      }

LABEL_503:

                      goto LABEL_524;
                    }

                    if (v278 != 1)
                    {
                      v231 = __nwlog_obj();
                      v237 = v279;
                      if (os_log_type_enabled(v231, v279))
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 1024;
                        *&buf[14] = v228;
                        _os_log_impl(&dword_181A37000, v231, v237, "%{public}s IPV6_JOIN_GROUP failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                      }

                      goto LABEL_503;
                    }

                    v233 = __nw_create_backtrace_string();
                    v234 = __nwlog_obj();
                    v235 = v279;
                    v236 = os_log_type_enabled(v234, v279);
                    if (v233)
                    {
                      if (v236)
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 1024;
                        *&buf[14] = v228;
                        *&buf[18] = 2082;
                        *&buf[20] = v233;
                        _os_log_impl(&dword_181A37000, v234, v235, "%{public}s IPV6_JOIN_GROUP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                      }

                      free(v233);
                    }

                    else
                    {
                      if (v236)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 1024;
                        *&buf[14] = v228;
                        _os_log_impl(&dword_181A37000, v234, v235, "%{public}s IPV6_JOIN_GROUP failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                      }
                    }
                  }

LABEL_524:
                  if (v230)
                  {
LABEL_525:
                    free(v230);
                  }

LABEL_532:

                  goto LABEL_278;
                }

                *buf = 136446722;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 2112;
                *&buf[14] = endpoint;
                *&buf[22] = 1024;
                *&buf[24] = v188;
                v192 = _os_log_send_and_compose_impl();

                v279 = OS_LOG_TYPE_ERROR;
                v278 = 0;
                if (__nwlog_fault(v192, &v279, &v278))
                {
                  if (v279 == OS_LOG_TYPE_FAULT)
                  {
                    v193 = __nwlog_obj();
                    v194 = v279;
                    if (os_log_type_enabled(v193, v279))
                    {
                      *buf = 136446722;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 2112;
                      *&buf[14] = endpoint;
                      *&buf[22] = 1024;
                      *&buf[24] = v188;
                      _os_log_impl(&dword_181A37000, v193, v194, "%{public}s IPV6_LEAVE_GROUP %@ failed %{darwin.errno}d", buf, 0x1Cu);
                    }
                  }

                  else
                  {
                    if (v278 == 1)
                    {
                      v195 = __nw_create_backtrace_string();
                      v196 = __nwlog_obj();
                      v197 = v279;
                      v198 = os_log_type_enabled(v196, v279);
                      if (v195)
                      {
                        if (v198)
                        {
                          *buf = 136446978;
                          *&buf[4] = "nw_listener_socket_inbox_create_socket";
                          *&buf[12] = 2112;
                          *&buf[14] = endpoint;
                          *&buf[22] = 1024;
                          *&buf[24] = v188;
                          *&buf[28] = 2082;
                          *&buf[30] = v195;
                          _os_log_impl(&dword_181A37000, v196, v197, "%{public}s IPV6_LEAVE_GROUP %@ failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
                        }

                        free(v195);
                      }

                      else
                      {
                        if (v198)
                        {
                          *buf = 136446722;
                          *&buf[4] = "nw_listener_socket_inbox_create_socket";
                          *&buf[12] = 2112;
                          *&buf[14] = endpoint;
                          *&buf[22] = 1024;
                          *&buf[24] = v188;
                          _os_log_impl(&dword_181A37000, v196, v197, "%{public}s IPV6_LEAVE_GROUP %@ failed %{darwin.errno}d, no backtrace", buf, 0x1Cu);
                        }
                      }

                      goto LABEL_484;
                    }

                    v193 = __nwlog_obj();
                    v216 = v279;
                    if (os_log_type_enabled(v193, v279))
                    {
                      *buf = 136446722;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 2112;
                      *&buf[14] = endpoint;
                      *&buf[22] = 1024;
                      *&buf[24] = v188;
                      _os_log_impl(&dword_181A37000, v193, v216, "%{public}s IPV6_LEAVE_GROUP %@ failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
                    }
                  }
                }

LABEL_484:
                if (v192)
                {
                  free(v192);
                }

                goto LABEL_486;
              }

              if (_nw_interface_supports_multicast(v185))
              {
                v277 = _nw_interface_get_index(v187);
                goto LABEL_417;
              }

              v191 = __nwlog_obj();
              if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 2112;
                *&buf[14] = v187;
                _os_log_impl(&dword_181A37000, v191, OS_LOG_TYPE_ERROR, "%{public}s Interface %@ doesn't support multicast", buf, 0x16u);
              }

LABEL_424:

              v271 = nw_error_create_posix_error(22);
              goto LABEL_532;
            }

            if (setsockopt(v28, 0, 20, &v282, 4u) < 0)
            {
              v271 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
              v159 = nw_error_get_error_code(v271);
              v160 = __nwlog_obj();
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v159;
              v80 = _os_log_send_and_compose_impl();

              type[0] = OS_LOG_TYPE_ERROR;
              v279 = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault(v80, type, &v279))
              {
                goto LABEL_319;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v81 = __nwlog_obj();
                v161 = type[0];
                if (os_log_type_enabled(v81, type[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v159;
                  _os_log_impl(&dword_181A37000, v81, v161, "%{public}s IP_RECVIF failed %{darwin.errno}d", buf, 0x12u);
                }

                goto LABEL_396;
              }

              if (v279 != OS_LOG_TYPE_INFO)
              {
                v81 = __nwlog_obj();
                v176 = type[0];
                if (os_log_type_enabled(v81, type[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v159;
                  _os_log_impl(&dword_181A37000, v81, v176, "%{public}s IP_RECVIF failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                }

                goto LABEL_396;
              }

              v148 = __nw_create_backtrace_string();
              v93 = __nwlog_obj();
              v167 = type[0];
              v168 = os_log_type_enabled(v93, type[0]);
              if (!v148)
              {
                if (v168)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v159;
                  _os_log_impl(&dword_181A37000, v93, v167, "%{public}s IP_RECVIF failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                }

                goto LABEL_437;
              }

              if (v168)
              {
                *buf = 136446722;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v159;
                *&buf[18] = 2082;
                *&buf[20] = v148;
                _os_log_impl(&dword_181A37000, v93, v167, "%{public}s IP_RECVIF failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              goto LABEL_312;
            }

            if (setsockopt(v28, 0, 7, &v282, 4u) < 0)
            {
              v271 = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
              v162 = nw_error_get_error_code(v271);
              v163 = __nwlog_obj();
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v162;
              v80 = _os_log_send_and_compose_impl();

              type[0] = OS_LOG_TYPE_ERROR;
              v279 = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault(v80, type, &v279))
              {
                goto LABEL_319;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v81 = __nwlog_obj();
                v164 = type[0];
                if (os_log_type_enabled(v81, type[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v162;
                  _os_log_impl(&dword_181A37000, v81, v164, "%{public}s IP_RECVDSTADDR failed %{darwin.errno}d", buf, 0x12u);
                }

                goto LABEL_396;
              }

              if (v279 != OS_LOG_TYPE_INFO)
              {
                v81 = __nwlog_obj();
                v182 = type[0];
                if (os_log_type_enabled(v81, type[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v162;
                  _os_log_impl(&dword_181A37000, v81, v182, "%{public}s IP_RECVDSTADDR failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                }

                goto LABEL_396;
              }

              v148 = __nw_create_backtrace_string();
              v93 = __nwlog_obj();
              v173 = type[0];
              v174 = os_log_type_enabled(v93, type[0]);
              if (!v148)
              {
                if (v174)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v162;
                  _os_log_impl(&dword_181A37000, v93, v173, "%{public}s IP_RECVDSTADDR failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                }

                goto LABEL_437;
              }

              if (v174)
              {
                *buf = 136446722;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v162;
                *&buf[18] = 2082;
                *&buf[20] = v148;
                _os_log_impl(&dword_181A37000, v93, v173, "%{public}s IP_RECVDSTADDR failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              goto LABEL_312;
            }

            if ((setsockopt(v28, 0, 27, &v282, 4u) & 0x80000000) == 0)
            {
LABEL_444:
              if (!endpoint)
              {
                goto LABEL_458;
              }

              v199 = __nwlog_obj();
              if (os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 2112;
                *&buf[14] = endpoint;
                _os_log_impl(&dword_181A37000, v199, OS_LOG_TYPE_DEBUG, "%{public}s Joining multicast group %@", buf, 0x16u);
              }

              *type = 0;
              *type = *&nw_endpoint_get_address(endpoint)->sa_data[2];
              *&type[4] = 0;
              v200 = _nw_parameters_copy_required_interface(v6);
              v201 = v274;
              v187 = v200;
              if (v200)
              {
                if (!_nw_interface_supports_multicast(v200))
                {
                  v191 = __nwlog_obj();
                  if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 2112;
                    *&buf[14] = v187;
                    _os_log_impl(&dword_181A37000, v191, OS_LOG_TYPE_ERROR, "%{public}s Interface %@ doesn't support multicast", buf, 0x16u);
                  }

                  goto LABEL_424;
                }

                host = nw_endpoint_create_host("0.0.0.0", "0");
                v203 = nw_interface_copy_local_address_for_remote_address(v187, host);
                v204 = v203;
                if (!v203)
                {
                  v208 = __nwlog_obj();
                  if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 2112;
                    *&buf[14] = v187;
                    _os_log_impl(&dword_181A37000, v208, OS_LOG_TYPE_ERROR, "%{public}s Did not find interface address for %@", buf, 0x16u);
                  }

                  v271 = nw_error_create_posix_error(2);
                  goto LABEL_532;
                }

                if (nw_endpoint_get_address(v203))
                {
                  *&type[4] = *&v20->sa_data[2];
                }

                v201 = v274;
              }

              if ((setsockopt(v201, 0, 13, type, 8u) & 0x80000000) == 0)
              {
LABEL_539:
                if ((setsockopt(v201, 0, 12, type, 8u) & 0x80000000) == 0)
                {
                  v243 = _nw_parameters_copy_default_protocol_stack(v6);
                  if (v243)
                  {
                    v244 = _nw_protocol_stack_copy_internet_protocol();
                    v245 = v244;
                    if (v244)
                    {
                      v246 = _nw_ip_options_get_disable_multicast_loopback(v244) ? &v281 : &v282;
                      if (setsockopt(v274, 0, 11, v246, 4u))
                      {
                        v247 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
                        v248 = __nwlog_obj();
                        *buf = 136446466;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 1024;
                        *&buf[14] = v247;
                        v249 = _os_log_send_and_compose_impl();

                        v279 = OS_LOG_TYPE_ERROR;
                        v278 = 0;
                        if (__nwlog_fault(v249, &v279, &v278))
                        {
                          if (v279 == OS_LOG_TYPE_FAULT)
                          {
                            v250 = __nwlog_obj();
                            v251 = v279;
                            if (os_log_type_enabled(v250, v279))
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_listener_socket_inbox_create_socket";
                              *&buf[12] = 1024;
                              *&buf[14] = v247;
                              _os_log_impl(&dword_181A37000, v250, v251, "%{public}s IP_MULTICAST_LOOP failed %{darwin.errno}d", buf, 0x12u);
                            }
                          }

                          else
                          {
                            if (v278 == 1)
                            {
                              v262 = __nw_create_backtrace_string();
                              v263 = __nwlog_obj();
                              v264 = v279;
                              v270 = v263;
                              v265 = os_log_type_enabled(v263, v279);
                              if (v262)
                              {
                                if (v265)
                                {
                                  *buf = 136446722;
                                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                                  *&buf[12] = 1024;
                                  *&buf[14] = v247;
                                  *&buf[18] = 2082;
                                  *&buf[20] = v262;
                                  _os_log_impl(&dword_181A37000, v270, v264, "%{public}s IP_MULTICAST_LOOP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                                }

                                free(v262);
                              }

                              else
                              {
                                if (v265)
                                {
                                  *buf = 136446466;
                                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                                  *&buf[12] = 1024;
                                  *&buf[14] = v247;
                                  _os_log_impl(&dword_181A37000, v270, v264, "%{public}s IP_MULTICAST_LOOP failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                                }
                              }

                              goto LABEL_581;
                            }

                            v250 = __nwlog_obj();
                            v266 = v279;
                            if (os_log_type_enabled(v250, v279))
                            {
                              *buf = 136446466;
                              *&buf[4] = "nw_listener_socket_inbox_create_socket";
                              *&buf[12] = 1024;
                              *&buf[14] = v247;
                              _os_log_impl(&dword_181A37000, v250, v266, "%{public}s IP_MULTICAST_LOOP failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                            }
                          }
                        }

LABEL_581:
                        if (v249)
                        {
                          free(v249);
                        }
                      }
                    }
                  }

                  else
                  {
                    v245 = 0;
                  }

                  v271 = 0;
                  goto LABEL_532;
                }

                v252 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v271 = nw_error_create_posix_error(**(v252 + 8));
                v253 = **(v252 + 8);
                v254 = __nwlog_obj();
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v253;
                v230 = _os_log_send_and_compose_impl();

                v279 = OS_LOG_TYPE_ERROR;
                v278 = 0;
                if (__nwlog_fault(v230, &v279, &v278))
                {
                  if (v279 == OS_LOG_TYPE_FAULT)
                  {
                    v255 = __nwlog_obj();
                    v256 = v279;
                    if (os_log_type_enabled(v255, v279))
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 1024;
                      *&buf[14] = v253;
                      _os_log_impl(&dword_181A37000, v255, v256, "%{public}s IP_ADD_MEMBERSHIP failed %{darwin.errno}d", buf, 0x12u);
                    }

LABEL_555:

                    goto LABEL_576;
                  }

                  if (v278 != 1)
                  {
                    v255 = __nwlog_obj();
                    v261 = v279;
                    if (os_log_type_enabled(v255, v279))
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 1024;
                      *&buf[14] = v253;
                      _os_log_impl(&dword_181A37000, v255, v261, "%{public}s IP_ADD_MEMBERSHIP failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                    }

                    goto LABEL_555;
                  }

                  v257 = __nw_create_backtrace_string();
                  v258 = __nwlog_obj();
                  v259 = v279;
                  v260 = os_log_type_enabled(v258, v279);
                  if (v257)
                  {
                    if (v260)
                    {
                      *buf = 136446722;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 1024;
                      *&buf[14] = v253;
                      *&buf[18] = 2082;
                      *&buf[20] = v257;
                      _os_log_impl(&dword_181A37000, v258, v259, "%{public}s IP_ADD_MEMBERSHIP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                    }

                    free(v257);
                  }

                  else
                  {
                    if (v260)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 1024;
                      *&buf[14] = v253;
                      _os_log_impl(&dword_181A37000, v258, v259, "%{public}s IP_ADD_MEMBERSHIP failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                    }
                  }
                }

LABEL_576:
                if (!v230)
                {
                  goto LABEL_532;
                }

                goto LABEL_525;
              }

              v205 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
              v206 = __nwlog_obj();
              v207 = v206;
              if (v205 == 49)
              {
                if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 2112;
                  *&buf[14] = endpoint;
                  *&buf[22] = 1024;
                  *&buf[24] = 49;
                  _os_log_impl(&dword_181A37000, v207, OS_LOG_TYPE_ERROR, "%{public}s IP_DROP_MEMBERSHIP %@ failed %{darwin.errno}d", buf, 0x1Cu);
                }

LABEL_538:
                v201 = v274;
                goto LABEL_539;
              }

              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 2112;
              *&buf[14] = endpoint;
              *&buf[22] = 1024;
              *&buf[24] = v205;
              v209 = _os_log_send_and_compose_impl();

              v279 = OS_LOG_TYPE_ERROR;
              v278 = 0;
              if (__nwlog_fault(v209, &v279, &v278))
              {
                if (v279 == OS_LOG_TYPE_FAULT)
                {
                  v210 = __nwlog_obj();
                  v211 = v279;
                  if (os_log_type_enabled(v210, v279))
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 2112;
                    *&buf[14] = endpoint;
                    *&buf[22] = 1024;
                    *&buf[24] = v205;
                    _os_log_impl(&dword_181A37000, v210, v211, "%{public}s IP_DROP_MEMBERSHIP %@ failed %{darwin.errno}d", buf, 0x1Cu);
                  }
                }

                else
                {
                  if (v278 == 1)
                  {
                    v212 = __nw_create_backtrace_string();
                    v213 = __nwlog_obj();
                    v214 = v279;
                    v215 = os_log_type_enabled(v213, v279);
                    if (v212)
                    {
                      if (v215)
                      {
                        *buf = 136446978;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 2112;
                        *&buf[14] = endpoint;
                        *&buf[22] = 1024;
                        *&buf[24] = v205;
                        *&buf[28] = 2082;
                        *&buf[30] = v212;
                        _os_log_impl(&dword_181A37000, v213, v214, "%{public}s IP_DROP_MEMBERSHIP %@ failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
                      }

                      free(v212);
                    }

                    else
                    {
                      if (v215)
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_listener_socket_inbox_create_socket";
                        *&buf[12] = 2112;
                        *&buf[14] = endpoint;
                        *&buf[22] = 1024;
                        *&buf[24] = v205;
                        _os_log_impl(&dword_181A37000, v213, v214, "%{public}s IP_DROP_MEMBERSHIP %@ failed %{darwin.errno}d, no backtrace", buf, 0x1Cu);
                      }
                    }

                    goto LABEL_536;
                  }

                  v210 = __nwlog_obj();
                  v217 = v279;
                  if (os_log_type_enabled(v210, v279))
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 2112;
                    *&buf[14] = endpoint;
                    *&buf[22] = 1024;
                    *&buf[24] = v205;
                    _os_log_impl(&dword_181A37000, v210, v217, "%{public}s IP_DROP_MEMBERSHIP %@ failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
                  }
                }
              }

LABEL_536:
              if (v209)
              {
                free(v209);
              }

              goto LABEL_538;
            }

            v143 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
            v144 = __nwlog_obj();
            *buf = 136446466;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = v143;
            v145 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            v279 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v145, type, &v279))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v146 = __nwlog_obj();
                v147 = type[0];
                if (os_log_type_enabled(v146, type[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v143;
                  _os_log_impl(&dword_181A37000, v146, v147, "%{public}s IP_RECVTOS failed %{darwin.errno}d", buf, 0x12u);
                }
              }

              else
              {
                if (v279 == OS_LOG_TYPE_INFO)
                {
                  v177 = __nw_create_backtrace_string();
                  v178 = __nwlog_obj();
                  v179 = type[0];
                  v180 = os_log_type_enabled(v178, type[0]);
                  if (v177)
                  {
                    if (v180)
                    {
                      *buf = 136446722;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 1024;
                      *&buf[14] = v143;
                      *&buf[18] = 2082;
                      *&buf[20] = v177;
                      _os_log_impl(&dword_181A37000, v178, v179, "%{public}s IP_RECVTOS failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                    }

                    free(v177);
                  }

                  else
                  {
                    if (v180)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_listener_socket_inbox_create_socket";
                      *&buf[12] = 1024;
                      *&buf[14] = v143;
                      _os_log_impl(&dword_181A37000, v178, v179, "%{public}s IP_RECVTOS failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                    }
                  }

                  goto LABEL_441;
                }

                v146 = __nwlog_obj();
                v183 = type[0];
                if (os_log_type_enabled(v146, type[0]))
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v143;
                  _os_log_impl(&dword_181A37000, v146, v183, "%{public}s IP_RECVTOS failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
                }
              }
            }

LABEL_441:
            if (v145)
            {
              free(v145);
            }

            v74 = v273;
            goto LABEL_444;
          }

          v90 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
          if (v90 <= 0x2A && ((1 << v90) & 0x40000400004) != 0)
          {
            v91 = __nwlog_obj();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v90;
              _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_ERROR, "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d", buf, 0x12u);
            }

            v28 = v274;
            v74 = v273;
            goto LABEL_272;
          }

          v105 = __nwlog_obj();
          *buf = 136446466;
          *&buf[4] = "nw_listener_socket_inbox_create_socket";
          *&buf[12] = 1024;
          *&buf[14] = v90;
          v106 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          v279 = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v106, type, &v279))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v107 = __nwlog_obj();
              v108 = type[0];
              if (os_log_type_enabled(v107, type[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v90;
                _os_log_impl(&dword_181A37000, v107, v108, "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d", buf, 0x12u);
              }
            }

            else
            {
              if (v279 == OS_LOG_TYPE_INFO)
              {
                v116 = __nw_create_backtrace_string();
                v117 = __nwlog_obj();
                v268 = type[0];
                v118 = os_log_type_enabled(v117, type[0]);
                if (v116)
                {
                  if (v118)
                  {
                    *buf = 136446722;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v90;
                    *&buf[18] = 2082;
                    *&buf[20] = v116;
                    _os_log_impl(&dword_181A37000, v117, v268, "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                  }

                  free(v116);
                }

                else
                {
                  if (v118)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_listener_socket_inbox_create_socket";
                    *&buf[12] = 1024;
                    *&buf[14] = v90;
                    _os_log_impl(&dword_181A37000, v117, v268, "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                  }
                }

                goto LABEL_269;
              }

              v107 = __nwlog_obj();
              v125 = type[0];
              if (os_log_type_enabled(v107, type[0]))
              {
                *buf = 136446466;
                *&buf[4] = "nw_listener_socket_inbox_create_socket";
                *&buf[12] = 1024;
                *&buf[14] = v90;
                _os_log_impl(&dword_181A37000, v107, v125, "%{public}s setsockopt SO_NECP_LISTENUUID failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
              }
            }
          }

LABEL_269:
          v74 = v273;
          if (v106)
          {
            free(v106);
          }

          v28 = v274;
          goto LABEL_272;
        }

        v54 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
        v55 = __nwlog_obj();
        *buf = 136446466;
        *&buf[4] = "nw_listener_socket_inbox_create_socket";
        *&buf[12] = 1024;
        v272 = v54;
        *&buf[14] = v54;
        v56 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v280) = 0;
        if (__nwlog_fault(v56, type, &v280))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v57 = __nwlog_obj();
            v58 = type[0];
            if (os_log_type_enabled(v57, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v272;
              _os_log_impl(&dword_181A37000, v57, v58, "%{public}s SO_NOWAKEFROMSLEEP failed %{darwin.errno}d", buf, 0x12u);
            }
          }

          else
          {
            if (v280 == 1)
            {
              v67 = __nw_create_backtrace_string();
              v68 = __nwlog_obj();
              v267 = type[0];
              v69 = os_log_type_enabled(v68, type[0]);
              if (v67)
              {
                if (v69)
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v272;
                  *&buf[18] = 2082;
                  *&buf[20] = v67;
                  _os_log_impl(&dword_181A37000, v68, v267, "%{public}s SO_NOWAKEFROMSLEEP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
                }

                free(v67);
              }

              else
              {
                if (v69)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_listener_socket_inbox_create_socket";
                  *&buf[12] = 1024;
                  *&buf[14] = v272;
                  _os_log_impl(&dword_181A37000, v68, v267, "%{public}s SO_NOWAKEFROMSLEEP failed %{darwin.errno}d, no backtrace", buf, 0x12u);
                }
              }

              goto LABEL_148;
            }

            v57 = __nwlog_obj();
            v71 = type[0];
            if (os_log_type_enabled(v57, type[0]))
            {
              *buf = 136446466;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v272;
              _os_log_impl(&dword_181A37000, v57, v71, "%{public}s SO_NOWAKEFROMSLEEP failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
            }
          }
        }

LABEL_148:
        v28 = v274;
        if (v56)
        {
          free(v56);
        }

        goto LABEL_150;
      }

      v35 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      *buf = 136446466;
      *&buf[4] = "nw_listener_socket_inbox_create_socket";
      *&buf[12] = 1024;
      *&buf[14] = v35;
      v37 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v282) = 0;
      if (__nwlog_fault(v37, type, &v282))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v38 = gLogObj;
          v39 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446466;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = v35;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s socket failed %{darwin.errno}d", buf, 0x12u);
          }
        }

        else if (v282 == 1)
        {
          v48 = __nw_create_backtrace_string();
          v38 = __nwlog_obj();
          v49 = type[0];
          v50 = os_log_type_enabled(v38, type[0]);
          if (v48)
          {
            if (v50)
            {
              *buf = 136446722;
              *&buf[4] = "nw_listener_socket_inbox_create_socket";
              *&buf[12] = 1024;
              *&buf[14] = v35;
              *&buf[18] = 2082;
              *&buf[20] = v48;
              _os_log_impl(&dword_181A37000, v38, v49, "%{public}s socket failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v48);
            if (!v37)
            {
              goto LABEL_112;
            }

            goto LABEL_111;
          }

          if (v50)
          {
            *buf = 136446466;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = v35;
            _os_log_impl(&dword_181A37000, v38, v49, "%{public}s socket failed %{darwin.errno}d, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          v38 = __nwlog_obj();
          v60 = type[0];
          if (os_log_type_enabled(v38, type[0]))
          {
            *buf = 136446466;
            *&buf[4] = "nw_listener_socket_inbox_create_socket";
            *&buf[12] = 1024;
            *&buf[14] = v35;
            _os_log_impl(&dword_181A37000, v38, v60, "%{public}s socket failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

      if (!v37)
      {
LABEL_112:
        v40 = nw_error_create_posix_error(v35);
        goto LABEL_113;
      }

LABEL_111:
      free(v37);
      goto LABEL_112;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "nw_listener_socket_inbox_create_socket";
      *&buf[12] = 1024;
      *&buf[14] = v22;
      _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s IP Protocol %u unrecognized", buf, 0x12u);
    }
  }

LABEL_60:

  v40 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
LABEL_113:
  v25 = v40;
LABEL_114:

LABEL_115:
  return v25;
}
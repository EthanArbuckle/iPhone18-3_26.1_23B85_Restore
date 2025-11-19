@interface nw_listener_inbox_socket
- (BOOL)cancel;
- (BOOL)resume;
- (BOOL)suspend;
- (id)description;
- (id)start;
- (nw_listener_inbox_socket)initWithParameters:(id)a3 delegate:(id)a4;
- (void)initWithParameters:(void *)a3 delegate:(_OWORD *)a4 necpUUID:;
@end

@implementation nw_listener_inbox_socket

- (id)start
{
  v102 = *MEMORY[0x1E69E9840];
  sockfd_from_client = self->_sockfd_from_client;
  v3 = sockfd_from_client;
  self->_sockfd_from_client = -1;
  if (v3 < 0)
  {
    posix_error = nw_listener_socket_inbox_create_socket(self->super._parameters, self->_listenUUID, &sockfd_from_client);
    v5 = sockfd_from_client;
    if (posix_error)
    {
      goto LABEL_161;
    }
  }

  else
  {
    posix_error = 0;
    v5 = v3;
  }

  if ((v5 & 0x80000000) == 0)
  {
    v6 = nw_fd_wrapper_create(v5);
    v93 = 1;
    if (ioctl(sockfd_from_client, 0x8004667EuLL, &v93) < 0)
    {
      posix_error = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
      error_code = nw_error_get_error_code(posix_error);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      *&buf[0].sa_len = 136446466;
      *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
      *&buf[0].sa_data[10] = 1024;
      *&buf[0].sa_data[12] = error_code;
      v9 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v88[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v9, type, v88))
      {
        goto LABEL_158;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v16 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *&buf[0].sa_len = 136446466;
          *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
          *&buf[0].sa_data[10] = 1024;
          *&buf[0].sa_data[12] = error_code;
          _os_log_impl(&dword_181A37000, v10, v16, "%{public}s FIONBIO failed %{darwin.errno}d", &buf[0].sa_len, 0x12u);
        }
      }

      else if (v88[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v20 = backtrace_string;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v22 = type[0];
          if (os_log_type_enabled(v21, type[0]))
          {
            *&buf[0].sa_len = 136446722;
            *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
            *&buf[0].sa_data[10] = 1024;
            *&buf[0].sa_data[12] = error_code;
            *buf[1].sa_data = 2082;
            *&buf[1].sa_data[2] = v20;
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s FIONBIO failed %{darwin.errno}d, dumping backtrace:%{public}s", &buf[0].sa_len, 0x1Cu);
          }

          free(v20);
          if (!v9)
          {
            goto LABEL_160;
          }

          goto LABEL_159;
        }

        v10 = __nwlog_obj();
        v35 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *&buf[0].sa_len = 136446466;
          *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
          *&buf[0].sa_data[10] = 1024;
          *&buf[0].sa_data[12] = error_code;
          _os_log_impl(&dword_181A37000, v10, v35, "%{public}s FIONBIO failed %{darwin.errno}d, no backtrace", &buf[0].sa_len, 0x12u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v30 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *&buf[0].sa_len = 136446466;
          *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
          *&buf[0].sa_data[10] = 1024;
          *&buf[0].sa_data[12] = error_code;
          _os_log_impl(&dword_181A37000, v10, v30, "%{public}s FIONBIO failed %{darwin.errno}d, backtrace limit exceeded", &buf[0].sa_len, 0x12u);
        }
      }

      goto LABEL_61;
    }

    if (nw_parameters_get_tfo(self->super._parameters) && setsockopt(sockfd_from_client, 6, 261, &v93, 4u))
    {
      posix_error = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
      v7 = nw_error_get_error_code(posix_error);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      *&buf[0].sa_len = 136446722;
      *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
      *&buf[0].sa_data[10] = 1024;
      *&buf[0].sa_data[12] = sockfd_from_client;
      *buf[1].sa_data = 1024;
      *&buf[1].sa_data[2] = v7;
      v9 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v88[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v9, type, v88))
      {
        goto LABEL_158;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *&buf[0].sa_len = 136446722;
          *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
          *&buf[0].sa_data[10] = 1024;
          *&buf[0].sa_data[12] = sockfd_from_client;
          *buf[1].sa_data = 1024;
          *&buf[1].sa_data[2] = v7;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s setsockopt(%d, TCP_FASTOPEN, 1) failed %{darwin.errno}d", &buf[0].sa_len, 0x18u);
        }

LABEL_61:

        goto LABEL_158;
      }

      if (v88[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v31 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *&buf[0].sa_len = 136446722;
          *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
          *&buf[0].sa_data[10] = 1024;
          *&buf[0].sa_data[12] = sockfd_from_client;
          *buf[1].sa_data = 1024;
          *&buf[1].sa_data[2] = v7;
          _os_log_impl(&dword_181A37000, v10, v31, "%{public}s setsockopt(%d, TCP_FASTOPEN, 1) failed %{darwin.errno}d, backtrace limit exceeded", &buf[0].sa_len, 0x18u);
        }

        goto LABEL_61;
      }

      v27 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v28 = type[0];
      v29 = os_log_type_enabled(v10, type[0]);
      if (!v27)
      {
        if (v29)
        {
          *&buf[0].sa_len = 136446722;
          *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
          *&buf[0].sa_data[10] = 1024;
          *&buf[0].sa_data[12] = sockfd_from_client;
          *buf[1].sa_data = 1024;
          *&buf[1].sa_data[2] = v7;
          _os_log_impl(&dword_181A37000, v10, v28, "%{public}s setsockopt(%d, TCP_FASTOPEN, 1) failed %{darwin.errno}d, no backtrace", &buf[0].sa_len, 0x18u);
        }

        goto LABEL_61;
      }

      if (v29)
      {
        *&buf[0].sa_len = 136446978;
        *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
        *&buf[0].sa_data[10] = 1024;
        *&buf[0].sa_data[12] = sockfd_from_client;
        *buf[1].sa_data = 1024;
        *&buf[1].sa_data[2] = v7;
        *&buf[1].sa_data[6] = 2082;
        *&buf[1].sa_data[8] = v27;
        _os_log_impl(&dword_181A37000, v10, v28, "%{public}s setsockopt(%d, TCP_FASTOPEN, 1) failed %{darwin.errno}d, dumping backtrace:%{public}s", &buf[0].sa_len, 0x22u);
      }

LABEL_112:
      free(v27);
      if (!v9)
      {
        goto LABEL_160;
      }

      goto LABEL_159;
    }

    self->_sockfd_for_logging_only_do_not_close_or_use = sockfd_from_client;
    if ([(nw_listener_inbox *)self multicast])
    {
      v12 = dup(sockfd_from_client);
      v13 = nw_fd_wrapper_create(v12);
    }

    else
    {
      v13 = 0;
    }

    sockfd_wrapper_for_connection_group_only = self->_sockfd_wrapper_for_connection_group_only;
    self->_sockfd_wrapper_for_connection_group_only = v13;

    if (v3 >= 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *&buf[0].sa_len = 136446466;
        *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
        *&buf[0].sa_data[10] = 1024;
        *&buf[0].sa_data[12] = sockfd_from_client;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s Not guarding fd %d", &buf[0].sa_len, 0x12u);
      }

      goto LABEL_67;
    }

    if (nw_fd_wrapper_guard(v6))
    {
      goto LABEL_67;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    *&buf[0].sa_len = 136446466;
    *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
    *&buf[0].sa_data[10] = 1024;
    *&buf[0].sa_data[12] = sockfd_from_client;
    v24 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v88[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v24, type, v88))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          *&buf[0].sa_len = 136446466;
          *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
          *&buf[0].sa_data[10] = 1024;
          *&buf[0].sa_data[12] = sockfd_from_client;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Failed to protect fd %d", &buf[0].sa_len, 0x12u);
        }
      }

      else if (v88[0] == OS_LOG_TYPE_INFO)
      {
        v32 = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v33 = type[0];
        v34 = os_log_type_enabled(v25, type[0]);
        if (v32)
        {
          if (v34)
          {
            *&buf[0].sa_len = 136446722;
            *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
            *&buf[0].sa_data[10] = 1024;
            *&buf[0].sa_data[12] = sockfd_from_client;
            *buf[1].sa_data = 2082;
            *&buf[1].sa_data[2] = v32;
            _os_log_impl(&dword_181A37000, v25, v33, "%{public}s Failed to protect fd %d, dumping backtrace:%{public}s", &buf[0].sa_len, 0x1Cu);
          }

          free(v32);
          goto LABEL_65;
        }

        if (v34)
        {
          *&buf[0].sa_len = 136446466;
          *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
          *&buf[0].sa_data[10] = 1024;
          *&buf[0].sa_data[12] = sockfd_from_client;
          _os_log_impl(&dword_181A37000, v25, v33, "%{public}s Failed to protect fd %d, no backtrace", &buf[0].sa_len, 0x12u);
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v36 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          *&buf[0].sa_len = 136446466;
          *&buf[0].sa_data[2] = "[nw_listener_inbox_socket start]";
          *&buf[0].sa_data[10] = 1024;
          *&buf[0].sa_data[12] = sockfd_from_client;
          _os_log_impl(&dword_181A37000, v25, v36, "%{public}s Failed to protect fd %d, backtrace limit exceeded", &buf[0].sa_len, 0x12u);
        }
      }
    }

LABEL_65:
    if (v24)
    {
      free(v24);
    }

LABEL_67:
    memset(buf, 0, sizeof(buf));
    v92 = 128;
    if (!getsockname(sockfd_from_client, buf, &v92))
    {
      address = _nw_endpoint_create_address(buf);
      local_endpoint = self->super._local_endpoint;
      self->super._local_endpoint = address;
    }

    v39 = nw_parameters_copy_required_interface(self->super._parameters);
    interface = self->super._interface;
    self->super._interface = v39;

    v41 = self->super._interface;
    if (v41)
    {
      v42 = self->super._local_endpoint;
      if (v42)
      {
LABEL_71:
        if (!v41)
        {
          goto LABEL_91;
        }

        nw_endpoint_set_interface(v42, v41);
        v41 = self->super._interface;
      }

LABEL_73:
      if (v41 && _nw_interface_get_subtype(v41) == 4001 && setsockopt(sockfd_from_client, 0xFFFF, 4376, &v93, 4u))
      {
        posix_error = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
        v43 = nw_error_get_error_code(posix_error);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v44 = gLogObj;
        *type = 136446722;
        v96 = "[nw_listener_inbox_socket start]";
        v97 = 1024;
        v98 = sockfd_from_client;
        v99 = 1024;
        *v100 = v43;
        v9 = _os_log_send_and_compose_impl();

        v88[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v87) = 0;
        if (__nwlog_fault(v9, v88, &v87))
        {
          if (v88[0] == OS_LOG_TYPE_FAULT)
          {
            v45 = __nwlog_obj();
            v46 = v88[0];
            if (os_log_type_enabled(v45, v88[0]))
            {
              *type = 136446722;
              v96 = "[nw_listener_inbox_socket start]";
              v97 = 1024;
              v98 = sockfd_from_client;
              v99 = 1024;
              *v100 = v43;
              _os_log_impl(&dword_181A37000, v45, v46, "%{public}s setsockopt(%d, SO_INTCOPROC_ALLOW, 1) failed %{darwin.errno}d", type, 0x18u);
            }
          }

          else if (v87 == 1)
          {
            v27 = __nw_create_backtrace_string();
            v45 = __nwlog_obj();
            v65 = v88[0];
            v66 = os_log_type_enabled(v45, v88[0]);
            if (v27)
            {
              if (v66)
              {
                *type = 136446978;
                v96 = "[nw_listener_inbox_socket start]";
                v97 = 1024;
                v98 = sockfd_from_client;
                v99 = 1024;
                *v100 = v43;
                *&v100[4] = 2082;
                *&v100[6] = v27;
                _os_log_impl(&dword_181A37000, v45, v65, "%{public}s setsockopt(%d, SO_INTCOPROC_ALLOW, 1) failed %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x22u);
              }

              goto LABEL_112;
            }

            if (v66)
            {
              *type = 136446722;
              v96 = "[nw_listener_inbox_socket start]";
              v97 = 1024;
              v98 = sockfd_from_client;
              v99 = 1024;
              *v100 = v43;
              _os_log_impl(&dword_181A37000, v45, v65, "%{public}s setsockopt(%d, SO_INTCOPROC_ALLOW, 1) failed %{darwin.errno}d, no backtrace", type, 0x18u);
            }
          }

          else
          {
            v45 = __nwlog_obj();
            v70 = v88[0];
            if (os_log_type_enabled(v45, v88[0]))
            {
              *type = 136446722;
              v96 = "[nw_listener_inbox_socket start]";
              v97 = 1024;
              v98 = sockfd_from_client;
              v99 = 1024;
              *v100 = v43;
              _os_log_impl(&dword_181A37000, v45, v70, "%{public}s setsockopt(%d, SO_INTCOPROC_ALLOW, 1) failed %{darwin.errno}d, backtrace limit exceeded", type, 0x18u);
            }
          }
        }

LABEL_158:
        if (v9)
        {
LABEL_159:
          free(v9);
        }

LABEL_160:

        goto LABEL_161;
      }

LABEL_91:
      v52 = nw_parameters_copy_context(self->super._parameters);
      v53 = sockfd_from_client;
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __33__nw_listener_inbox_socket_start__block_invoke;
      v83[3] = &unk_1E6A3BD68;
      v83[4] = self;
      v84 = sockfd_from_client;
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __33__nw_listener_inbox_socket_start__block_invoke_2;
      v80[3] = &unk_1E6A3D760;
      v81 = v6;
      v82 = self;
      self->_source = nw_queue_context_create_source(v52, v53, 1, 0, v83, v80);

      source = self->_source;
      if (source)
      {
        nw_queue_activate_source(source, v54);
        posix_error = 0;
LABEL_132:

        goto LABEL_160;
      }

      posix_error = [[NWConcrete_nw_error alloc] initWithDomain:12 code:?];
      v56 = nw_error_get_error_code(posix_error);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v57 = gLogObj;
      *type = 136446466;
      v96 = "[nw_listener_inbox_socket start]";
      v97 = 1024;
      v98 = v56;
      v58 = _os_log_send_and_compose_impl();

      v88[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v87) = 0;
      if (__nwlog_fault(v58, v88, &v87))
      {
        if (v88[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v59 = gLogObj;
          v60 = v88[0];
          if (os_log_type_enabled(v59, v88[0]))
          {
            *type = 136446466;
            v96 = "[nw_listener_inbox_socket start]";
            v97 = 1024;
            v98 = v56;
            _os_log_impl(&dword_181A37000, v59, v60, "%{public}s nw_queue_context_create_source failed %{darwin.errno}d", type, 0x12u);
          }
        }

        else if (v87 == 1)
        {
          v61 = __nw_create_backtrace_string();
          v59 = __nwlog_obj();
          v62 = v88[0];
          v63 = os_log_type_enabled(v59, v88[0]);
          if (v61)
          {
            if (v63)
            {
              *type = 136446722;
              v96 = "[nw_listener_inbox_socket start]";
              v97 = 1024;
              v98 = v56;
              v99 = 2082;
              *v100 = v61;
              _os_log_impl(&dword_181A37000, v59, v62, "%{public}s nw_queue_context_create_source failed %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x1Cu);
            }

            free(v61);
            if (!v58)
            {
              goto LABEL_132;
            }

            goto LABEL_131;
          }

          if (v63)
          {
            *type = 136446466;
            v96 = "[nw_listener_inbox_socket start]";
            v97 = 1024;
            v98 = v56;
            _os_log_impl(&dword_181A37000, v59, v62, "%{public}s nw_queue_context_create_source failed %{darwin.errno}d, no backtrace", type, 0x12u);
          }
        }

        else
        {
          v59 = __nwlog_obj();
          v64 = v88[0];
          if (os_log_type_enabled(v59, v88[0]))
          {
            *type = 136446466;
            v96 = "[nw_listener_inbox_socket start]";
            v97 = 1024;
            v98 = v56;
            _os_log_impl(&dword_181A37000, v59, v64, "%{public}s nw_queue_context_create_source failed %{darwin.errno}d, backtrace limit exceeded", type, 0x12u);
          }
        }
      }

      if (!v58)
      {
        goto LABEL_132;
      }

LABEL_131:
      free(v58);
      goto LABEL_132;
    }

    v47 = self->super._local_endpoint;
    if (!v47)
    {
      goto LABEL_91;
    }

    *v88 = 0;
    v89 = 0;
    v91 = 0;
    v90 = 0;
    if (nw_endpoint_fillout_v4v6_address(v47, v88))
    {
      v87 = 0;
      v92 = 4;
      if (v88[1] == 30)
      {
        if (getsockopt(sockfd_from_client, 41, 125, &v87, &v92))
        {
          posix_error = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
          v67 = nw_error_get_error_code(posix_error);
          v68 = __nwlog_obj();
          *type = 136446722;
          v96 = "[nw_listener_inbox_socket start]";
          v97 = 1024;
          v98 = sockfd_from_client;
          v99 = 1024;
          *v100 = v67;
          v9 = _os_log_send_and_compose_impl();

          v86 = OS_LOG_TYPE_ERROR;
          v85 = 0;
          if (!__nwlog_fault(v9, &v86, &v85))
          {
            goto LABEL_158;
          }

          if (v86 == OS_LOG_TYPE_FAULT)
          {
            v50 = __nwlog_obj();
            v69 = v86;
            if (os_log_type_enabled(v50, v86))
            {
              *type = 136446722;
              v96 = "[nw_listener_inbox_socket start]";
              v97 = 1024;
              v98 = sockfd_from_client;
              v99 = 1024;
              *v100 = v67;
              _os_log_impl(&dword_181A37000, v50, v69, "%{public}s getsockopt(%d, IPV6_BOUND_IF) failed %{darwin.errno}d", type, 0x18u);
            }

            goto LABEL_157;
          }

          if (v85 != 1)
          {
            v50 = __nwlog_obj();
            v78 = v86;
            if (os_log_type_enabled(v50, v86))
            {
              *type = 136446722;
              v96 = "[nw_listener_inbox_socket start]";
              v97 = 1024;
              v98 = sockfd_from_client;
              v99 = 1024;
              *v100 = v67;
              _os_log_impl(&dword_181A37000, v50, v78, "%{public}s getsockopt(%d, IPV6_BOUND_IF) failed %{darwin.errno}d, backtrace limit exceeded", type, 0x18u);
            }

            goto LABEL_157;
          }

          v27 = __nw_create_backtrace_string();
          v50 = __nwlog_obj();
          v75 = v86;
          v76 = os_log_type_enabled(v50, v86);
          if (!v27)
          {
            if (v76)
            {
              *type = 136446722;
              v96 = "[nw_listener_inbox_socket start]";
              v97 = 1024;
              v98 = sockfd_from_client;
              v99 = 1024;
              *v100 = v67;
              _os_log_impl(&dword_181A37000, v50, v75, "%{public}s getsockopt(%d, IPV6_BOUND_IF) failed %{darwin.errno}d, no backtrace", type, 0x18u);
            }

            goto LABEL_157;
          }

          if (v76)
          {
            *type = 136446978;
            v96 = "[nw_listener_inbox_socket start]";
            v97 = 1024;
            v98 = sockfd_from_client;
            v99 = 1024;
            *v100 = v67;
            *&v100[4] = 2082;
            *&v100[6] = v27;
            _os_log_impl(&dword_181A37000, v50, v75, "%{public}s getsockopt(%d, IPV6_BOUND_IF) failed %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x22u);
          }

          goto LABEL_137;
        }
      }

      else
      {
        if (v88[1] != OS_LOG_TYPE_DEBUG)
        {
          goto LABEL_125;
        }

        if (getsockopt(sockfd_from_client, 0, 25, &v87, &v92))
        {
          posix_error = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
          v48 = nw_error_get_error_code(posix_error);
          v49 = __nwlog_obj();
          *type = 136446722;
          v96 = "[nw_listener_inbox_socket start]";
          v97 = 1024;
          v98 = sockfd_from_client;
          v99 = 1024;
          *v100 = v48;
          v9 = _os_log_send_and_compose_impl();

          v86 = OS_LOG_TYPE_ERROR;
          v85 = 0;
          if (!__nwlog_fault(v9, &v86, &v85))
          {
            goto LABEL_158;
          }

          if (v86 == OS_LOG_TYPE_FAULT)
          {
            v50 = __nwlog_obj();
            v51 = v86;
            if (os_log_type_enabled(v50, v86))
            {
              *type = 136446722;
              v96 = "[nw_listener_inbox_socket start]";
              v97 = 1024;
              v98 = sockfd_from_client;
              v99 = 1024;
              *v100 = v48;
              _os_log_impl(&dword_181A37000, v50, v51, "%{public}s getsockopt(%d, IP_BOUND_IF) failed %{darwin.errno}d", type, 0x18u);
            }

LABEL_157:

            goto LABEL_158;
          }

          if (v85 != 1)
          {
            v50 = __nwlog_obj();
            v77 = v86;
            if (os_log_type_enabled(v50, v86))
            {
              *type = 136446722;
              v96 = "[nw_listener_inbox_socket start]";
              v97 = 1024;
              v98 = sockfd_from_client;
              v99 = 1024;
              *v100 = v48;
              _os_log_impl(&dword_181A37000, v50, v77, "%{public}s getsockopt(%d, IP_BOUND_IF) failed %{darwin.errno}d, backtrace limit exceeded", type, 0x18u);
            }

            goto LABEL_157;
          }

          v27 = __nw_create_backtrace_string();
          v50 = __nwlog_obj();
          v73 = v86;
          v74 = os_log_type_enabled(v50, v86);
          if (!v27)
          {
            if (v74)
            {
              *type = 136446722;
              v96 = "[nw_listener_inbox_socket start]";
              v97 = 1024;
              v98 = sockfd_from_client;
              v99 = 1024;
              *v100 = v48;
              _os_log_impl(&dword_181A37000, v50, v73, "%{public}s getsockopt(%d, IP_BOUND_IF) failed %{darwin.errno}d, no backtrace", type, 0x18u);
            }

            goto LABEL_157;
          }

          if (v74)
          {
            *type = 136446978;
            v96 = "[nw_listener_inbox_socket start]";
            v97 = 1024;
            v98 = sockfd_from_client;
            v99 = 1024;
            *v100 = v48;
            *&v100[4] = 2082;
            *&v100[6] = v27;
            _os_log_impl(&dword_181A37000, v50, v73, "%{public}s getsockopt(%d, IP_BOUND_IF) failed %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x22u);
          }

LABEL_137:

          goto LABEL_112;
        }
      }

      if (v87)
      {
        v71 = nw_interface_create_with_index(v87);
        v72 = self->super._interface;
        self->super._interface = v71;
      }
    }

LABEL_125:
    v41 = self->super._interface;
    v42 = self->super._local_endpoint;
    if (v42)
    {
      goto LABEL_71;
    }

    goto LABEL_73;
  }

LABEL_161:

  return posix_error;
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__70274;
  v10 = __Block_byref_object_dispose__70275;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__nw_listener_inbox_socket_description__block_invoke;
  v5[3] = &unk_1E6A3D738;
  v5[4] = self;
  v5[5] = &v6;
  os_unfair_lock_lock(&self->super._lock);
  __39__nw_listener_inbox_socket_description__block_invoke(v5);
  os_unfair_lock_unlock(&self->super._lock);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)resume
{
  v13 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = nw_listener_inbox_socket;
  v3 = [(nw_listener_inbox *)&v8 resume];
  if (v3 && self->_source)
  {
    v4 = v3;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v10 = "[nw_listener_inbox_socket resume]";
      v11 = 2114;
      v12 = self;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s Resumed inbox %{public}@", buf, 0x16u);
    }

    nw_queue_resume_source(self->_source, v6);
    LOBYTE(v3) = v4;
  }

  return v3;
}

- (BOOL)cancel
{
  source = self->_source;
  if (source)
  {
    nw_queue_cancel_source(self->_source, a2);
    self->_source = 0;
  }

  sockfd_wrapper_for_connection_group_only = self->_sockfd_wrapper_for_connection_group_only;
  if (sockfd_wrapper_for_connection_group_only)
  {
    self->_sockfd_wrapper_for_connection_group_only = 0;
  }

  return source != 0;
}

- (BOOL)suspend
{
  v12 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = nw_listener_inbox_socket;
  v3 = [(nw_listener_inbox *)&v7 suspend];
  if (v3 && self->_source)
  {
    v4 = v3;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v9 = "[nw_listener_inbox_socket suspend]";
      v10 = 2114;
      v11 = self;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s Suspended inbox %{public}@", buf, 0x16u);
    }

    nw_queue_suspend_source(self->_source);
    LOBYTE(v3) = v4;
  }

  return v3;
}

- (nw_listener_inbox_socket)initWithParameters:(id)a3 delegate:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = nw_listener_inbox_socket;
  v9 = [(nw_listener_inbox *)&v24 initWithDelegate:v8];
  ip_protocol = nw_parameters_get_ip_protocol(v7);
  v11 = ip_protocol;
  if (ip_protocol != 6 && ip_protocol != 17)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    *buf = 136446466;
    v26 = "[nw_listener_inbox_socket initWithParameters:delegate:]";
    v27 = 1024;
    v28 = v11;
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v14, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446466;
          v26 = "[nw_listener_inbox_socket initWithParameters:delegate:]";
          v27 = 1024;
          v28 = v11;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s Cannot create listener with IP Protocol %u", buf, 0x12u);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v19 = type;
        v20 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446722;
            v26 = "[nw_listener_inbox_socket initWithParameters:delegate:]";
            v27 = 1024;
            v28 = v11;
            v29 = 2082;
            v30 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v19, "%{public}s Cannot create listener with IP Protocol %u, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(backtrace_string);
          if (!v14)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        if (v20)
        {
          *buf = 136446466;
          v26 = "[nw_listener_inbox_socket initWithParameters:delegate:]";
          v27 = 1024;
          v28 = v11;
          _os_log_impl(&dword_181A37000, v15, v19, "%{public}s Cannot create listener with IP Protocol %u, no backtrace", buf, 0x12u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v21 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446466;
          v26 = "[nw_listener_inbox_socket initWithParameters:delegate:]";
          v27 = 1024;
          v28 = v11;
          _os_log_impl(&dword_181A37000, v15, v21, "%{public}s Cannot create listener with IP Protocol %u, backtrace limit exceeded", buf, 0x12u);
        }
      }
    }

    if (!v14)
    {
LABEL_11:
      v12 = 0;
      goto LABEL_12;
    }

LABEL_10:
    free(v14);
    goto LABEL_11;
  }

  v9->_ipProtocol = ip_protocol;
  objc_storeStrong(&v9->super._parameters, a3);
  objc_storeStrong(&v9->super._delegate, a4);
  v9->_sockfd_from_client = -1;
  v12 = v9;
LABEL_12:

  return v12;
}

- (void)initWithParameters:(void *)a3 delegate:(_OWORD *)a4 necpUUID:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = [a1 initWithParameters:v7 delegate:v8];
    a1 = v9;
    if (v9)
    {
      *(v9 + 89) = *a4;
    }
  }

  return a1;
}

@end
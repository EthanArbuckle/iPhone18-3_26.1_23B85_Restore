void __nw_connection_add_initial_inbound_data_block_invoke(uint64_t a1)
{
  v100 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 144);
  v4 = v1;
  if (!v3)
  {
    v62 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
    v15 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v89) = 0;
    if (__nwlog_fault(v15, type, &v89))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v63 = type[0];
        if (os_log_type_enabled(v16, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
          _os_log_impl(&dword_181A37000, v16, v63, "%{public}s called with null handler", buf, 0xCu);
        }

        goto LABEL_111;
      }

      if (v89 != 1)
      {
        v16 = __nwlog_obj();
        v75 = type[0];
        if (os_log_type_enabled(v16, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
          _os_log_impl(&dword_181A37000, v16, v75, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_111;
      }

      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v69 = type[0];
      v70 = os_log_type_enabled(v16, type[0]);
      if (!backtrace_string)
      {
        if (v70)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
          _os_log_impl(&dword_181A37000, v16, v69, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_111;
      }

      if (v70)
      {
        *buf = 136446466;
        *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v16, v69, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_112:
    if (!v15)
    {
      goto LABEL_114;
    }

LABEL_113:
    free(v15);
    goto LABEL_114;
  }

  v5 = v3;
  mode = v5->mode;

  if (mode == 2)
  {
    v7 = nw_endpoint_handler_copy_flow(v5);
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 114);
      if (v9)
      {
        if (v4)
        {
          v10 = *(v9 + 40);
          v11 = *(v7 + 114);
          if (v10 == &nw_protocol_ref_counted_handle)
          {
            goto LABEL_26;
          }

          if (v10 != &nw_protocol_ref_counted_additional_handle)
          {
            v12 = 1;
            goto LABEL_30;
          }

          v11 = *(v9 + 64);
          if (v11)
          {
LABEL_26:
            v25 = *(v11 + 88);
            if (v25)
            {
              *(v11 + 88) = v25 + 1;
            }

            if (v10 == &nw_protocol_ref_counted_handle)
            {
              LOBYTE(v26) = 0;
              v35 = v9;
              goto LABEL_56;
            }

            LOBYTE(v26) = 0;
            v12 = 0;
            if (v10 != &nw_protocol_ref_counted_additional_handle)
            {
LABEL_30:
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              *buf = 136446210;
              *&buf[4] = "nw_socket_add_initial_inbound_data";
              v27 = _os_log_send_and_compose_impl();
              type[0] = OS_LOG_TYPE_ERROR;
              LOBYTE(v89) = 0;
              if (!__nwlog_fault(v27, type, &v89))
              {
                goto LABEL_44;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v28 = gLogObj;
                v29 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_44;
                }

                *buf = 136446210;
                *&buf[4] = "nw_socket_add_initial_inbound_data";
                v30 = "%{public}s called with null socket_handler";
              }

              else
              {
                if (v89 == 1)
                {
                  v31 = __nw_create_backtrace_string();
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v32 = gLogObj;
                  v33 = type[0];
                  v34 = os_log_type_enabled(gLogObj, type[0]);
                  if (v31)
                  {
                    if (v34)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_socket_add_initial_inbound_data";
                      *&buf[12] = 2082;
                      *&buf[14] = v31;
                      _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v31);
                  }

                  else if (v34)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_socket_add_initial_inbound_data";
                    v30 = "%{public}s called with null socket_handler, no backtrace";
                    v36 = v32;
                    v37 = v33;
                    goto LABEL_43;
                  }

LABEL_44:
                  if (v27)
                  {
                    free(v27);
                  }

                  if (v12)
                  {
                    goto LABEL_108;
                  }

LABEL_97:
                  v57 = *(v9 + 40);
                  if (v57 != &nw_protocol_ref_counted_handle)
                  {
                    if (v57 != &nw_protocol_ref_counted_additional_handle)
                    {
                      goto LABEL_108;
                    }

                    v9 = *(v9 + 64);
                    if (!v9)
                    {
                      goto LABEL_108;
                    }
                  }

                  v58 = *(v9 + 88);
                  if (!v58)
                  {
                    goto LABEL_108;
                  }

                  v59 = v58 - 1;
                  *(v9 + 88) = v59;
                  if (v59)
                  {
                    goto LABEL_108;
                  }

                  v60 = *(v9 + 64);
                  if (v60)
                  {
                    *(v9 + 64) = 0;
                    v60[2](v60);
                    _Block_release(v60);
                  }

                  if (*(v9 + 72))
                  {
                    v61 = *(v9 + 64);
                    if (v61)
                    {
                      _Block_release(v61);
                    }
                  }

LABEL_107:
                  free(v9);
                  goto LABEL_108;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v28 = gLogObj;
                v29 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_44;
                }

                *buf = 136446210;
                *&buf[4] = "nw_socket_add_initial_inbound_data";
                v30 = "%{public}s called with null socket_handler, backtrace limit exceeded";
              }

              v36 = v28;
              v37 = v29;
LABEL_43:
              _os_log_impl(&dword_181A37000, v36, v37, v30, buf, 0xCu);
              goto LABEL_44;
            }
          }

          else
          {
            LOBYTE(v26) = 1;
          }

          v35 = *(v9 + 64);
LABEL_56:
          size = dispatch_data_get_size(v4);
          v40 = size;
          if (size)
          {
            v41 = malloc_type_malloc(size, 0xC4A98920uLL);
            v42 = v41;
            if (v41)
            {
              *type = 0;
              v94 = type;
              v95 = 0x2000000000;
              v89 = 0;
              v90 = &v89;
              v91 = 0x2000000000;
              v92 = v41;
              v96 = 0;
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
              *v98 = &unk_1E6A34348;
              *&v98[16] = &v89;
              v99 = v40;
              *&v98[8] = type;
              dispatch_data_apply(v4, buf);
              _Block_object_dispose(&v89, 8);
              _Block_object_dispose(type, 8);
              v43 = nw_frame_create(0, v42, v40, nw_socket_frame_input_finalizer, v35 + 96);
              if (!v43)
              {
LABEL_70:
                v47 = v26;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                *buf = 136446210;
                *&buf[4] = "nw_socket_add_initial_inbound_data";
                v48 = _os_log_send_and_compose_impl();
                type[0] = OS_LOG_TYPE_ERROR;
                LOBYTE(v89) = 0;
                if (__nwlog_fault(v48, type, &v89))
                {
                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v49 = gLogObj;
                    v50 = type[0];
                    if (os_log_type_enabled(gLogObj, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_socket_add_initial_inbound_data";
                      v51 = "%{public}s nw_frame_create failed";
LABEL_90:
                      v55 = v49;
                      v56 = v50;
LABEL_91:
                      _os_log_impl(&dword_181A37000, v55, v56, v51, buf, 0xCu);
                    }
                  }

                  else if (v89 == 1)
                  {
                    v52 = __nw_create_backtrace_string();
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v53 = gLogObj;
                    v87 = type[0];
                    v54 = os_log_type_enabled(gLogObj, type[0]);
                    if (v52)
                    {
                      if (v54)
                      {
                        *buf = 136446466;
                        *&buf[4] = "nw_socket_add_initial_inbound_data";
                        *&buf[12] = 2082;
                        *&buf[14] = v52;
                        _os_log_impl(&dword_181A37000, v53, v87, "%{public}s nw_frame_create failed, dumping backtrace:%{public}s", buf, 0x16u);
                      }

                      free(v52);
                      goto LABEL_92;
                    }

                    if (v54)
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_socket_add_initial_inbound_data";
                      v51 = "%{public}s nw_frame_create failed, no backtrace";
                      v55 = v53;
                      v56 = v87;
                      goto LABEL_91;
                    }
                  }

                  else
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v49 = gLogObj;
                    v50 = type[0];
                    if (os_log_type_enabled(gLogObj, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_socket_add_initial_inbound_data";
                      v51 = "%{public}s nw_frame_create failed, backtrace limit exceeded";
                      goto LABEL_90;
                    }
                  }
                }

LABEL_92:
                if (v48)
                {
                  free(v48);
                }

                LOBYTE(v26) = v47;
                if (v42)
                {
                  free(v42);
                }

                goto LABEL_96;
              }
            }

            else
            {
              v86 = v26;
              v88 = v8;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
              *buf = 136446210;
              *&buf[4] = "nw_socket_add_initial_inbound_data";
              v8 = buf;
              v26 = _os_log_send_and_compose_impl();
              if (__nwlog_should_abort(v26))
              {
                __break(1u);
LABEL_184:
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
LABEL_68:
                v46 = gconnectionLogObj;
                if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446978;
                  *&buf[4] = "nw_socket_add_initial_inbound_data";
                  *&buf[12] = 2082;
                  *&buf[14] = v35 + 420;
                  *&buf[22] = 1024;
                  *v98 = v40;
                  *&v98[4] = 1024;
                  *&v98[6] = v2;
                  _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Adding initial packet of length %u, ECN %u", buf, 0x22u);
                }

LABEL_96:
                if (v26)
                {
LABEL_108:

                  goto LABEL_114;
                }

                goto LABEL_97;
              }

              free(v26);
              *type = 0;
              v94 = type;
              v95 = 0x2000000000;
              v89 = 0;
              v90 = &v89;
              v91 = 0x2000000000;
              v92 = 0;
              v96 = 0;
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
              *v98 = &unk_1E6A34348;
              *&v98[16] = &v89;
              v99 = v40;
              *&v98[8] = type;
              dispatch_data_apply(v4, buf);
              _Block_object_dispose(&v89, 8);
              _Block_object_dispose(type, 8);
              v43 = nw_frame_create(0, 0, v40, nw_socket_frame_input_finalizer, v35 + 96);
              v8 = v88;
              LOBYTE(v26) = v86;
              if (!v43)
              {
                goto LABEL_70;
              }
            }

            *(v43 + 204) |= 1u;
          }

          else
          {
            v43 = nw_frame_create(0, 0, 0, nw_socket_frame_input_finalizer, v35 + 96);
            if (!v43)
            {
              v42 = 0;
              goto LABEL_70;
            }
          }

          v44 = *(v43 + 186) & 0xFC | v2 & 3;
          *(v43 + 16) = 0;
          *(v43 + 186) = v44;
          v45 = *(v35 + 400);
          *(v43 + 24) = v45;
          *v45 = v43;
          *(v35 + 400) = v43 + 16;
          if ((*(v35 + 413) & 0x80) != 0 || gLogDatapath != 1)
          {
            goto LABEL_96;
          }

          if (__nwlog_connection_log::onceToken[0] == -1)
          {
            goto LABEL_68;
          }

          goto LABEL_184;
        }

        v64 = v7;
        v73 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
        v9 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v89) = 0;
        if (!__nwlog_fault(v9, type, &v89))
        {
LABEL_181:
          v8 = v64;
          if (!v9)
          {
            goto LABEL_108;
          }

          goto LABEL_107;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v66 = __nwlog_obj();
          v74 = type[0];
          if (os_log_type_enabled(v66, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
            _os_log_impl(&dword_181A37000, v66, v74, "%{public}s called with null initial_inbound_data", buf, 0xCu);
          }

LABEL_180:

          goto LABEL_181;
        }

        if (v89 != 1)
        {
          v66 = __nwlog_obj();
          v85 = type[0];
          if (os_log_type_enabled(v66, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
            _os_log_impl(&dword_181A37000, v66, v85, "%{public}s called with null initial_inbound_data, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_180;
        }

        v76 = __nw_create_backtrace_string();
        v66 = __nwlog_obj();
        v81 = type[0];
        v82 = os_log_type_enabled(v66, type[0]);
        if (!v76)
        {
          if (v82)
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
            _os_log_impl(&dword_181A37000, v66, v81, "%{public}s called with null initial_inbound_data, no backtrace", buf, 0xCu);
          }

          goto LABEL_180;
        }

        if (v82)
        {
          *buf = 136446466;
          *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
          *&buf[12] = 2082;
          *&buf[14] = v76;
          _os_log_impl(&dword_181A37000, v66, v81, "%{public}s called with null initial_inbound_data, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        v64 = v7;
        v71 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
        v9 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v89) = 0;
        if (!__nwlog_fault(v9, type, &v89))
        {
          goto LABEL_181;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v66 = __nwlog_obj();
          v72 = type[0];
          if (os_log_type_enabled(v66, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
            _os_log_impl(&dword_181A37000, v66, v72, "%{public}s called with null endpoint_flow->socket_protocol", buf, 0xCu);
          }

          goto LABEL_180;
        }

        if (v89 != 1)
        {
          v66 = __nwlog_obj();
          v84 = type[0];
          if (os_log_type_enabled(v66, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
            _os_log_impl(&dword_181A37000, v66, v84, "%{public}s called with null endpoint_flow->socket_protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_180;
        }

        v76 = __nw_create_backtrace_string();
        v66 = __nwlog_obj();
        v79 = type[0];
        v80 = os_log_type_enabled(v66, type[0]);
        if (!v76)
        {
          if (v80)
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
            _os_log_impl(&dword_181A37000, v66, v79, "%{public}s called with null endpoint_flow->socket_protocol, no backtrace", buf, 0xCu);
          }

          goto LABEL_180;
        }

        if (v80)
        {
          *buf = 136446466;
          *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
          *&buf[12] = 2082;
          *&buf[14] = v76;
          _os_log_impl(&dword_181A37000, v66, v79, "%{public}s called with null endpoint_flow->socket_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }
    }

    else
    {
      v64 = 0;
      v65 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
      v9 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v89) = 0;
      if ((__nwlog_fault(v9, type, &v89) & 1) == 0)
      {
        goto LABEL_181;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v66 = __nwlog_obj();
        v67 = type[0];
        if (os_log_type_enabled(v66, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
          _os_log_impl(&dword_181A37000, v66, v67, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }

        goto LABEL_180;
      }

      if (v89 != 1)
      {
        v66 = __nwlog_obj();
        v83 = type[0];
        if (os_log_type_enabled(v66, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
          _os_log_impl(&dword_181A37000, v66, v83, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_180;
      }

      v76 = __nw_create_backtrace_string();
      v66 = __nwlog_obj();
      v77 = type[0];
      v78 = os_log_type_enabled(v66, type[0]);
      if (!v76)
      {
        if (v78)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
          _os_log_impl(&dword_181A37000, v66, v77, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }

        goto LABEL_180;
      }

      if (v78)
      {
        *buf = 136446466;
        *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
        *&buf[12] = 2082;
        *&buf[14] = v76;
        _os_log_impl(&dword_181A37000, v66, v77, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(v76);
    goto LABEL_181;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  if (mode > 5)
  {
    v14 = "unknown-mode";
  }

  else
  {
    v14 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
  *&buf[12] = 2082;
  *&buf[14] = v14;
  *&buf[22] = 2082;
  *v98 = "flow";
  v15 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v89) = 0;
  if (!__nwlog_fault(v15, type, &v89))
  {
    goto LABEL_112;
  }

  if (type[0] == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v17 = type[0];
    if (os_log_type_enabled(v16, type[0]))
    {
      if (mode > 5)
      {
        v18 = "unknown-mode";
      }

      else
      {
        v18 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
      *&buf[12] = 2082;
      *&buf[14] = v18;
      *&buf[22] = 2082;
      *v98 = "flow";
      _os_log_impl(&dword_181A37000, v16, v17, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_111:

    goto LABEL_112;
  }

  if (v89 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v23 = type[0];
    if (os_log_type_enabled(v16, type[0]))
    {
      if (mode > 5)
      {
        v24 = "unknown-mode";
      }

      else
      {
        v24 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
      *&buf[12] = 2082;
      *&buf[14] = v24;
      *&buf[22] = 2082;
      *v98 = "flow";
      _os_log_impl(&dword_181A37000, v16, v23, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_111;
  }

  v19 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  v20 = type[0];
  v21 = os_log_type_enabled(v16, type[0]);
  if (!v19)
  {
    if (v21)
    {
      if (mode > 5)
      {
        v38 = "unknown-mode";
      }

      else
      {
        v38 = off_1E6A31018[mode];
      }

      *buf = 136446722;
      *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
      *&buf[12] = 2082;
      *&buf[14] = v38;
      *&buf[22] = 2082;
      *v98 = "flow";
      _os_log_impl(&dword_181A37000, v16, v20, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_111;
  }

  if (v21)
  {
    if (mode > 5)
    {
      v22 = "unknown-mode";
    }

    else
    {
      v22 = off_1E6A31018[mode];
    }

    *buf = 136446978;
    *&buf[4] = "nw_endpoint_handler_add_initial_inbound_data";
    *&buf[12] = 2082;
    *&buf[14] = v22;
    *&buf[22] = 2082;
    *v98 = "flow";
    *&v98[8] = 2082;
    *&v98[10] = v19;
    _os_log_impl(&dword_181A37000, v16, v20, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v19);
  if (v15)
  {
    goto LABEL_113;
  }

LABEL_114:
}

void *nw_connection_create_with_connected_socket_and_parameters(int a1, void *a2)
{
  v3 = a2;
  do_not_guard = nw_fd_wrapper_create_do_not_guard(a1);
  v5 = _nw_parameters_copy(v3);
  v6 = nw_connection_create_with_connected_socket_internal(do_not_guard, v5, 0, 0, 0);

  if (!v6)
  {
    nw_fd_wrapper_relinquish_fd(do_not_guard);
  }

  return v6;
}

BOOL ___ZL51nw_connection_create_with_connected_socket_internalPU27objcproto16OS_nw_fd_wrapper8NSObjectPU27objcproto16OS_nw_parametersS_PU25objcproto14OS_nw_endpointS_S5_b_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = nw_endpoint_create_with_peer_name(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 32) + 8) + 40) != 0;
}

uint64_t ___ZL51nw_connection_create_with_connected_socket_internalPU27objcproto16OS_nw_fd_wrapper8NSObjectPU27objcproto16OS_nw_parametersS_PU25objcproto14OS_nw_endpointS_S5_b_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = nw_endpoint_create_with_sock_name(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

void *nw_connection_create_with_connected_socket(int a1, uint64_t a2)
{
  nw_allow_use_of_dispatch_internal();
  v4 = _nw_parameters_create();
  nw_parameters_set_data_mode(v4, a2);
  do_not_guard = nw_fd_wrapper_create_do_not_guard(a1);
  v6 = nw_connection_create_with_connected_socket_internal(do_not_guard, v4, 0, 0, 0);
  if (!v6)
  {
    nw_fd_wrapper_relinquish_fd(do_not_guard);
  }

  return v6;
}

uint64_t nw_connection_get_connected_socket(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v19 = -1;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_get_connected_socket_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v14 = v1;
    v15 = buf;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_get_connected_socket_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_get_connected_socket";
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
        *&buf[4] = "nw_connection_get_connected_socket";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
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
          *&buf[4] = "nw_connection_get_connected_socket";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_get_connected_socket";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_get_connected_socket";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0xFFFFFFFFLL;
LABEL_3:

  return v3;
}

void __nw_connection_get_connected_socket_block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x40) != 0)
  {
    v6 = nw_endpoint_handler_copy_connected_socket_wrapper(*(v2 + 144));
    if (!v6)
    {
      v9 = *(*(a1 + 32) + 16);
      if (v9 && !_nw_parameters_get_logging_disabled(v9))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v10 = gconnectionLogObj;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v49 = "nw_connection_get_connected_socket_block_invoke";
          v50 = 1024;
          v51 = v11;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s [C%u] Connection has no connected socket", buf, 0x12u);
        }
      }

      v4 = 0;
      goto LABEL_80;
    }

    v4 = v6;
    os_unfair_lock_lock(v4 + 3);
    os_unfair_lock_opaque = v4[6]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v4 + 3);

    v8 = *(*(a1 + 32) + 16);
    if ((os_unfair_lock_opaque & 1) == 0)
    {
      if (nw_parameters_get_allow_socket_access(v8))
      {
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __nw_connection_get_connected_socket_block_invoke_15;
        v45[3] = &unk_1E6A3C0D8;
        v45[4] = *(a1 + 40);
        nw_fd_wrapper_get_fd(v4, v45);
LABEL_80:

        return;
      }

      v21 = *(*(a1 + 32) + 16);
      if (!v21 || _nw_parameters_get_logging_disabled(v21))
      {
        goto LABEL_80;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v22 = gconnectionLogObj;
      v23 = *(*(a1 + 32) + 448);
      *buf = 136446466;
      v49 = "nw_connection_get_connected_socket_block_invoke";
      v50 = 1024;
      v51 = v23;
      v12 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v46 = 0;
      if (__nwlog_fault(v12, &type, &v46))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v24 = gconnectionLogObj;
          v25 = type;
          if (os_log_type_enabled(v24, type))
          {
            v26 = *(*(a1 + 32) + 448);
            *buf = 136446466;
            v49 = "nw_connection_get_connected_socket_block_invoke";
            v50 = 1024;
            v51 = v26;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s [C%u] parameters do not allow socket access", buf, 0x12u);
          }
        }

        else if (v46 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          if (backtrace_string)
          {
            v33 = backtrace_string;
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v34 = gconnectionLogObj;
            v35 = type;
            if (os_log_type_enabled(v34, type))
            {
              v36 = *(*(a1 + 32) + 448);
              *buf = 136446722;
              v49 = "nw_connection_get_connected_socket_block_invoke";
              v50 = 1024;
              v51 = v36;
              v52 = 2082;
              v53 = v33;
              _os_log_impl(&dword_181A37000, v34, v35, "%{public}s [C%u] parameters do not allow socket access, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v33);
            if (!v12)
            {
              goto LABEL_80;
            }

            goto LABEL_79;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v24 = gconnectionLogObj;
          v43 = type;
          if (os_log_type_enabled(v24, type))
          {
            v44 = *(*(a1 + 32) + 448);
            *buf = 136446466;
            v49 = "nw_connection_get_connected_socket_block_invoke";
            v50 = 1024;
            v51 = v44;
            _os_log_impl(&dword_181A37000, v24, v43, "%{public}s [C%u] parameters do not allow socket access, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v24 = gconnectionLogObj;
          v39 = type;
          if (os_log_type_enabled(v24, type))
          {
            v40 = *(*(a1 + 32) + 448);
            *buf = 136446466;
            v49 = "nw_connection_get_connected_socket_block_invoke";
            v50 = 1024;
            v51 = v40;
            _os_log_impl(&dword_181A37000, v24, v39, "%{public}s [C%u] parameters do not allow socket access, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_78:
      if (!v12)
      {
        goto LABEL_80;
      }

LABEL_79:
      free(v12);
      goto LABEL_80;
    }

    v12 = _nw_parameters_copy_extended_description(v8);
    v13 = *(*(a1 + 32) + 16);
    if (!v13 || _nw_parameters_get_logging_disabled(v13))
    {
      goto LABEL_78;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v14 = gconnectionLogObj;
    v15 = *(*(a1 + 32) + 448);
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = "";
    }

    *buf = 136446722;
    v49 = "nw_connection_get_connected_socket_block_invoke";
    v50 = 1024;
    v51 = v15;
    v52 = 2082;
    v53 = v16;
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (__nwlog_fault(v17, &type, &v46))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v18 = gconnectionLogObj;
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          v20 = *(*(a1 + 32) + 448);
          *buf = 136446722;
          v49 = "nw_connection_get_connected_socket_block_invoke";
          v50 = 1024;
          v51 = v20;
          v52 = 2082;
          v53 = v16;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s [C%u] socket is guarded. parameters: %{public}s", buf, 0x1Cu);
        }
      }

      else if (v46 == 1)
      {
        v27 = __nw_create_backtrace_string();
        if (v27)
        {
          v28 = v27;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v29 = gconnectionLogObj;
          v30 = type;
          if (os_log_type_enabled(v29, type))
          {
            v31 = *(*(a1 + 32) + 448);
            *buf = 136446978;
            v49 = "nw_connection_get_connected_socket_block_invoke";
            v50 = 1024;
            v51 = v31;
            v52 = 2082;
            v53 = v16;
            v54 = 2082;
            v55 = v28;
            _os_log_impl(&dword_181A37000, v29, v30, "%{public}s [C%u] socket is guarded. parameters: %{public}s, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(v28);
          if (!v17)
          {
            goto LABEL_78;
          }

LABEL_77:
          free(v17);
          goto LABEL_78;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v18 = gconnectionLogObj;
        v41 = type;
        if (os_log_type_enabled(v18, type))
        {
          v42 = *(*(a1 + 32) + 448);
          *buf = 136446722;
          v49 = "nw_connection_get_connected_socket_block_invoke";
          v50 = 1024;
          v51 = v42;
          v52 = 2082;
          v53 = v16;
          _os_log_impl(&dword_181A37000, v18, v41, "%{public}s [C%u] socket is guarded. parameters: %{public}s, no backtrace", buf, 0x1Cu);
        }
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v18 = gconnectionLogObj;
        v37 = type;
        if (os_log_type_enabled(v18, type))
        {
          v38 = *(*(a1 + 32) + 448);
          *buf = 136446722;
          v49 = "nw_connection_get_connected_socket_block_invoke";
          v50 = 1024;
          v51 = v38;
          v52 = 2082;
          v53 = v16;
          _os_log_impl(&dword_181A37000, v18, v37, "%{public}s [C%u] socket is guarded. parameters: %{public}s, backtrace limit exceeded", buf, 0x1Cu);
        }
      }
    }

    if (!v17)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  v3 = *(v2 + 16);
  if (v3 && !_nw_parameters_get_logging_disabled(v3))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 448);
      *buf = 136446466;
      v49 = "nw_connection_get_connected_socket_block_invoke";
      v50 = 1024;
      v51 = v5;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Client called nw_connection_get_connected_socket on unconnected nw_connection", buf, 0x12u);
    }

    goto LABEL_80;
  }
}

const char *nw_connection_state_to_string(unsigned int a1)
{
  if (a1 > 5)
  {
    return "unknown";
  }

  else
  {
    return off_1E6A2F020[a1];
  }
}

void nw_connection_set_cancel_handler(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_set_cancel_handler_block_invoke;
    v13[3] = &unk_1E6A3D710;
    v14 = v3;
    v15 = v4;
    os_unfair_lock_lock(v3 + 34);
    __nw_connection_set_cancel_handler_block_invoke(v13);
    os_unfair_lock_unlock(v3 + 34);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_connection_set_cancel_handler";
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
        v19 = "nw_connection_set_cancel_handler";
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
          v19 = "nw_connection_set_cancel_handler";
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
        v19 = "nw_connection_set_cancel_handler";
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
        v19 = "nw_connection_set_cancel_handler";
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

void __nw_connection_set_cancel_handler_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 216);
  *(v3 + 216) = v2;
}

void nw_connection_cancel_current_endpoint(nw_connection_t connection)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = connection;
  v2 = v1;
  if (v1)
  {
    if (!nw_parameters_get_logging_disabled(v1[2].isa))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v3 = gconnectionLogObj;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        isa = v2[56].isa;
        v5 = v2[1].isa;
        v6 = v5;
        if (v5)
        {
          logging_description = _nw_endpoint_get_logging_description(v5);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v8 = v2[2].isa;
        *buf = 67109634;
        *v22 = isa;
        *&v22[4] = 2082;
        *&v22[6] = logging_description;
        *&v22[14] = 2114;
        *&v22[16] = v8;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "[C%u %{public}s %{public}@] cancel current endpoint", buf, 0x1Cu);
      }
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __nw_connection_cancel_current_endpoint_block_invoke;
    v17[3] = &unk_1E6A3D868;
    v18 = v2;
    nw_connection_async_if_needed(v18, v17);

    goto LABEL_12;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  *v22 = "nw_connection_cancel_current_endpoint";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v10, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *v22 = "nw_connection_cancel_current_endpoint";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          *v22 = "nw_connection_cancel_current_endpoint";
          *&v22[8] = 2082;
          *&v22[10] = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (v15)
      {
        *buf = 136446210;
        *v22 = "nw_connection_cancel_current_endpoint";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *v22 = "nw_connection_cancel_current_endpoint";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_29:
  if (v10)
  {
    free(v10);
  }

LABEL_12:
}

void __nw_connection_cancel_current_endpoint_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x40) != 0)
  {
    v6 = nw_endpoint_handler_copy_connected_flow_handler(*(v2 + 144));
    p_super = &v6->super;
    if (v6)
    {
      nw_endpoint_handler_cancel(v6, 0, 1);
    }

    else
    {
      v7 = *(*(a1 + 32) + 16);
      if (v7 && !_nw_parameters_get_logging_disabled(v7))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v8 = gconnectionLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = *(*(a1 + 32) + 448);
          v10 = 136446466;
          v11 = "nw_connection_cancel_current_endpoint_block_invoke";
          v12 = 1024;
          v13 = v9;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s [C%u] Connection had no connected handler, cannot cancel endpoint", &v10, 0x12u);
        }
      }

      p_super = 0;
    }

    goto LABEL_18;
  }

  v3 = *(v2 + 16);
  if (v3 && !_nw_parameters_get_logging_disabled(v3))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    p_super = gconnectionLogObj;
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(a1 + 32) + 448);
      v10 = 136446466;
      v11 = "nw_connection_cancel_current_endpoint_block_invoke";
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_181A37000, p_super, OS_LOG_TYPE_INFO, "%{public}s [C%u] Connection is not ready, cannot cancel endpoint", &v10, 0x12u);
    }

LABEL_18:
  }
}

void *nw_connection_get_listener_protocol_on_nw_queue(void *a1, void *a2, int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_connection_get_listener_protocol_on_nw_queue";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v19, &type, &v32))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_get_listener_protocol_on_nw_queue";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v20, type);
      if (backtrace_string)
      {
        if (v26)
        {
          *buf = 136446466;
          v35 = "nw_connection_get_listener_protocol_on_nw_queue";
          v36 = 2082;
          v37 = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_62:
        if (!v19)
        {
LABEL_19:
          listener_protocol_on_nw_queue = 0;
          goto LABEL_20;
        }

LABEL_63:
        free(v19);
        goto LABEL_19;
      }

      if (v26)
      {
        *buf = 136446210;
        v35 = "nw_connection_get_listener_protocol_on_nw_queue";
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_get_listener_protocol_on_nw_queue";
        _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_61:

    goto LABEL_62;
  }

  if (!v6)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_connection_get_listener_protocol_on_nw_queue";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v19, &type, &v32))
    {
      goto LABEL_62;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_get_listener_protocol_on_nw_queue";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      v27 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v28 = type;
      v29 = os_log_type_enabled(v20, type);
      if (v27)
      {
        if (v29)
        {
          *buf = 136446466;
          v35 = "nw_connection_get_listener_protocol_on_nw_queue";
          v36 = 2082;
          v37 = v27;
          _os_log_impl(&dword_181A37000, v20, v28, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v27);
        if (!v19)
        {
          goto LABEL_19;
        }

        goto LABEL_63;
      }

      if (v29)
      {
        *buf = 136446210;
        v35 = "nw_connection_get_listener_protocol_on_nw_queue";
        _os_log_impl(&dword_181A37000, v20, v28, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_get_listener_protocol_on_nw_queue";
        _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_61;
  }

  nw_context_assert_queue(v5[3]);
  v8 = v5[18];
  if (!v8)
  {
    v11 = v5[2];
    if (v11 && !_nw_parameters_get_logging_disabled(v11))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v12 = gconnectionLogObj;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(v5 + 112);
        *buf = 136446466;
        v35 = "nw_connection_get_listener_protocol_on_nw_queue";
        v36 = 1024;
        LODWORD(v37) = v13;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Connection has no parent handler", buf, 0x12u);
      }
    }

    goto LABEL_19;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  listener_protocol_on_nw_queue = nw_endpoint_handler_get_listener_protocol_on_nw_queue(v8, v7);
  if (!listener_protocol_on_nw_queue)
  {
    v8 = v5[18];
LABEL_7:
    v10 = nw_endpoint_handler_copy_connected_flow_handler(v8);
    if (!v10)
    {
      if (!nw_endpoint_handler_has_connected_flow(v5[18]))
      {
        v15 = v5[2];
        if (v15 && !_nw_parameters_get_logging_disabled(v15))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v16 = gconnectionLogObj;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = *(v5 + 112);
            *buf = 136446466;
            v35 = "nw_connection_get_listener_protocol_on_nw_queue";
            v36 = 1024;
            LODWORD(v37) = v17;
            _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Connection has no available handler", buf, 0x12u);
          }
        }

        v10 = 0;
        listener_protocol_on_nw_queue = 0;
        goto LABEL_11;
      }

      v10 = v5[18];
    }

    listener_protocol_on_nw_queue = nw_endpoint_handler_get_listener_protocol_on_nw_queue(v10, v7);
LABEL_11:
  }

LABEL_20:

  return listener_protocol_on_nw_queue;
}

id nw_connection_copy_connected_parameters_with_protocol(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v22 = __Block_byref_object_copy__24471;
    v23 = __Block_byref_object_dispose__24472;
    v24 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __nw_connection_copy_connected_parameters_with_protocol_block_invoke;
    v15[3] = &unk_1E6A3BE58;
    v16 = v3;
    v18 = buf;
    v17 = v4;
    os_unfair_lock_lock(v3 + 34);
    __nw_connection_copy_connected_parameters_with_protocol_block_invoke(v15);
    os_unfair_lock_unlock(v3 + 34);
    v5 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_connected_parameters_with_protocol";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v8, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_connected_parameters_with_protocol";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v19 == 1)
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
          *&buf[4] = "nw_connection_copy_connected_parameters_with_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_connected_parameters_with_protocol";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_connected_parameters_with_protocol";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
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

void __nw_connection_copy_connected_parameters_with_protocol_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x40) != 0)
  {
    v6 = nw_endpoint_handler_copy_connected_parameters_with_protocol(*(v2 + 144), *(a1 + 40));
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(*(a1 + 32) + 448);
        v9 = 136446466;
        v10 = "nw_connection_copy_connected_parameters_with_protocol_block_invoke";
        v11 = 1024;
        v12 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Client called nw_connection_copy_connected_parameters_with_protocol on unconnected nw_connection", &v9, 0x12u);
      }
    }
  }
}

uint64_t nw_connection_uses_sleep_proxy(void *a1)
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
    v13[2] = __nw_connection_uses_sleep_proxy_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v14 = v1;
    v15 = buf;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_uses_sleep_proxy_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_uses_sleep_proxy";
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
        *&buf[4] = "nw_connection_uses_sleep_proxy";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
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
          *&buf[4] = "nw_connection_uses_sleep_proxy";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_uses_sleep_proxy";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_uses_sleep_proxy";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
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

  return v3 & 1;
}

void __nw_connection_uses_sleep_proxy_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x40) != 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = nw_endpoint_handler_uses_sleep_proxy(*(v2 + 144));
  }

  else
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(*(a1 + 32) + 448);
        v6 = 136446466;
        v7 = "nw_connection_uses_sleep_proxy_block_invoke";
        v8 = 1024;
        v9 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Client called nw_connection_uses_sleep_proxy on unconnected nw_connection", &v6, 0x12u);
      }
    }
  }
}

uint64_t nw_connection_get_flow_id_on_nw_queue(void *a1, _OWORD *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    nw_context_assert_queue(v3[3]);
    flow_id = nw_endpoint_handler_get_flow_id(v4[18], a2);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_connection_get_flow_id_on_nw_queue";
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
        v18 = "nw_connection_get_flow_id_on_nw_queue";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
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
          v18 = "nw_connection_get_flow_id_on_nw_queue";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_connection_get_flow_id_on_nw_queue";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_connection_get_flow_id_on_nw_queue";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  flow_id = 0;
LABEL_3:

  return flow_id;
}

uint32_t nw_connection_get_maximum_datagram_size(nw_connection_t connection)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = connection;
  v2 = v1;
  if (v1)
  {
    v3 = nw_connection_copy_current_path(v1);
    v4 = v3;
    if (v3)
    {
      maximum_datagram_size = nw_path_get_maximum_datagram_size(v3);
    }

    else
    {
      maximum_datagram_size = 1500;
    }

    goto LABEL_6;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_connection_get_maximum_datagram_size";
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
        v18 = "nw_connection_get_maximum_datagram_size";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
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
          v18 = "nw_connection_get_maximum_datagram_size";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_connection_get_maximum_datagram_size";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_connection_get_maximum_datagram_size";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v8)
  {
    free(v8);
  }

  maximum_datagram_size = 0;
LABEL_6:

  return maximum_datagram_size;
}

id nw_connection_copy_host_endpoint(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__24471;
    v20 = __Block_byref_object_dispose__24472;
    v21 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_copy_host_endpoint_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v14 = v1;
    v15 = buf;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_copy_host_endpoint_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_host_endpoint";
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
        *&buf[4] = "nw_connection_copy_host_endpoint";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
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
          *&buf[4] = "nw_connection_copy_host_endpoint";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_host_endpoint";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_host_endpoint";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
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

void __nw_connection_copy_host_endpoint_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 144);
  p_super = v2;
  v4 = *(a1 + 32);
  if (v2)
  {
    if ((*(v4 + 109) & 0x40) == 0 || (v5 = nw_endpoint_handler_copy_connected_flow_handler(v2), p_super, (p_super = &v5->super) != 0))
    {
      while (1)
      {
        v6 = nw_endpoint_handler_copy_endpoint(p_super);
        if (nw_endpoint_get_type(v6) == nw_endpoint_type_host)
        {
          break;
        }

        v7 = p_super;
        p_super = v7[9];

        if (!p_super)
        {
          return;
        }
      }

      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v6;

      goto LABEL_14;
    }
  }

  else
  {
    v8 = *(v4 + 16);
    if (v8 && !_nw_parameters_get_logging_disabled(v8))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      p_super = gconnectionLogObj;
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        v9 = *(*(a1 + 32) + 448);
        v12 = 136446466;
        v13 = "nw_connection_copy_host_endpoint_block_invoke";
        v14 = 1024;
        v15 = v9;
        _os_log_impl(&dword_181A37000, p_super, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Client error, called nw_connection_copy_host_endpoint on connection in wrong state", &v12, 0x12u);
      }

LABEL_14:
    }
  }
}

void nw_connection_add_extra_interface_option(void *a1, void *a2)
{
  *&v31[13] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_connection_add_extra_interface_option";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v10, &type, &v26))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v29 = "nw_connection_add_extra_interface_option";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v29 = "nw_connection_add_extra_interface_option";
          v30 = 2082;
          *v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_45:
        if (!v10)
        {
          goto LABEL_11;
        }

LABEL_46:
        free(v10);
        goto LABEL_11;
      }

      if (v17)
      {
        *buf = 136446210;
        v29 = "nw_connection_add_extra_interface_option";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v29 = "nw_connection_add_extra_interface_option";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  if (v4)
  {
    v6 = v3[2];
    if (v6 && !_nw_parameters_get_logging_disabled(v6))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(v3 + 112);
        *buf = 136446722;
        v29 = "nw_connection_add_extra_interface_option";
        v30 = 1024;
        *v31 = v8;
        v31[2] = 2112;
        *&v31[3] = v5;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s [C%u] Adding interface option details %@ to connection", buf, 0x1Cu);
      }
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __nw_connection_add_extra_interface_option_block_invoke;
    v23[3] = &unk_1E6A3D760;
    v24 = v3;
    v25 = v5;
    nw_connection_async_if_needed(v24, v23);

    goto LABEL_11;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_connection_add_extra_interface_option";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (!__nwlog_fault(v10, &type, &v26))
  {
    goto LABEL_45;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v14 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v29 = "nw_connection_add_extra_interface_option";
      _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null interface_option_details", buf, 0xCu);
    }

    goto LABEL_44;
  }

  if (v26 != 1)
  {
    v11 = __nwlog_obj();
    v22 = type;
    if (os_log_type_enabled(v11, type))
    {
      *buf = 136446210;
      v29 = "nw_connection_add_extra_interface_option";
      _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null interface_option_details, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_44;
  }

  v18 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v19 = type;
  v20 = os_log_type_enabled(v11, type);
  if (!v18)
  {
    if (v20)
    {
      *buf = 136446210;
      v29 = "nw_connection_add_extra_interface_option";
      _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null interface_option_details, no backtrace", buf, 0xCu);
    }

    goto LABEL_44;
  }

  if (v20)
  {
    *buf = 136446466;
    v29 = "nw_connection_add_extra_interface_option";
    v30 = 2082;
    *v31 = v18;
    _os_log_impl(&dword_181A37000, v11, v19, "%{public}s called with null interface_option_details, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v18);
  if (v10)
  {
    goto LABEL_46;
  }

LABEL_11:
}

void __nw_connection_add_extra_interface_option_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x40) != 0)
  {
    v6 = nw_endpoint_handler_copy_connected_flow_handler(*(v2 + 144));
    if (v6)
    {
      nw_endpoint_handler_add_extra_interface_option(v6, *(a1 + 40));
    }
  }

  else
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(*(a1 + 32) + 448);
        *buf = 136446466;
        v8 = "nw_connection_add_extra_interface_option_block_invoke";
        v9 = 1024;
        v10 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [C%u] Connection is not ready, ignore", buf, 0x12u);
      }
    }
  }
}

void __nw_connection_remove_extra_interface_option_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x40) != 0)
  {
    v6 = nw_endpoint_handler_copy_connected_flow_handler(*(v2 + 144));
    if (v6)
    {
      nw_endpoint_handler_remove_extra_interface_option(v6, *(a1 + 40));
    }
  }

  else
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(*(a1 + 32) + 448);
        *buf = 136446466;
        v8 = "nw_connection_remove_extra_interface_option_block_invoke";
        v9 = 1024;
        v10 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [C%u] Connection is not ready, ignore", buf, 0x12u);
      }
    }
  }
}

void nw_connection_remove_all_interface_options(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 2);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = v2[112];
        *buf = 136446466;
        v19 = "nw_connection_remove_all_interface_options";
        v20 = 1024;
        LODWORD(v21) = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [C%u] Removing paths from connection", buf, 0x12u);
      }
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_connection_remove_all_interface_options_block_invoke;
    v14[3] = &unk_1E6A3D868;
    v15 = v2;
    nw_connection_async_if_needed(v15, v14);

    goto LABEL_10;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_connection_remove_all_interface_options";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v7, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_connection_remove_all_interface_options";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
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
          v19 = "nw_connection_remove_all_interface_options";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v12)
      {
        *buf = 136446210;
        v19 = "nw_connection_remove_all_interface_options";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_connection_remove_all_interface_options";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v7)
  {
    free(v7);
  }

LABEL_10:
}

void __nw_connection_remove_all_interface_options_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 109) & 0x40) != 0)
  {
    v6 = *(v1 + 144);

    nw_endpoint_handler_remove_all_interface_options(v6);
  }

  else
  {
    v3 = *(v1 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(*(a1 + 32) + 448);
        v7 = 136446466;
        v8 = "nw_connection_remove_all_interface_options_block_invoke";
        v9 = 1024;
        v10 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [C%u] Connection is not ready, ignore", &v7, 0x12u);
      }
    }
  }
}

void nw_connection_set_interface_use_callback(void *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_connection_set_interface_use_callback";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v15, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v35 = "nw_connection_set_interface_use_callback";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v23 = type;
        v24 = os_log_type_enabled(v16, type);
        if (backtrace_string)
        {
          if (v24)
          {
            *buf = 136446466;
            v35 = "nw_connection_set_interface_use_callback";
            v36 = 2082;
            v37 = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_43;
        }

        if (v24)
        {
          *buf = 136446210;
          v35 = "nw_connection_set_interface_use_callback";
          _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v35 = "nw_connection_set_interface_use_callback";
          _os_log_impl(&dword_181A37000, v16, v28, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_43:
    if (v15)
    {
      free(v15);
    }

    goto LABEL_13;
  }

  v5 = v3[2];
  if (v5 && !_nw_parameters_get_logging_disabled(v5))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v6 = gconnectionLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(v3 + 112);
      *buf = 136446466;
      v35 = "nw_connection_set_interface_use_callback";
      v36 = 1024;
      LODWORD(v37) = v7;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [C%u] Setting interface use callback on connection", buf, 0x12u);
    }
  }

  if (v3[18])
  {
    v8 = _Block_copy(v4);
    v9 = v3[64];
    v3[64] = v8;

    v10 = v3[18];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_connection_set_interface_use_callback_block_invoke;
    aBlock[3] = &unk_1E6A2EC80;
    v31 = v3;
    v11 = v10;
    if (v11)
    {
      v12 = _Block_copy(aBlock);
      v13 = v11[6];
      v11[6] = v12;

LABEL_12:
      goto LABEL_13;
    }

    v18 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_endpoint_handler_set_migration_callback";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v19, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_set_migration_callback";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        v25 = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v20, type);
        if (v25)
        {
          if (v27)
          {
            *buf = 136446466;
            v35 = "nw_endpoint_handler_set_migration_callback";
            v36 = 2082;
            v37 = v25;
            _os_log_impl(&dword_181A37000, v20, v26, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v25);
          goto LABEL_48;
        }

        if (v27)
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_set_migration_callback";
          _os_log_impl(&dword_181A37000, v20, v26, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v35 = "nw_endpoint_handler_set_migration_callback";
          _os_log_impl(&dword_181A37000, v20, v29, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_48:
    if (v19)
    {
      free(v19);
    }

    goto LABEL_12;
  }

LABEL_13:
}

void nw_connection_add_interface_use_callback(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_connection_add_interface_use_callback";
    v9 = _os_log_send_and_compose_impl();

    v26 = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v9, &v26, &v25))
    {
      goto LABEL_41;
    }

    if (v26 == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = v26;
      if (os_log_type_enabled(v10, v26))
      {
        *buf = 136446210;
        v28 = "nw_connection_add_interface_use_callback";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = v26;
      v16 = os_log_type_enabled(v10, v26);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v28 = "nw_connection_add_interface_use_callback";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v9)
        {
          goto LABEL_7;
        }

LABEL_42:
        free(v9);
        goto LABEL_7;
      }

      if (v16)
      {
        *buf = 136446210;
        v28 = "nw_connection_add_interface_use_callback";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = v26;
      if (os_log_type_enabled(v10, v26))
      {
        *buf = 136446210;
        v28 = "nw_connection_add_interface_use_callback";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  if (v4)
  {
    v6 = _Block_copy(v3[64]);
    v7 = v6;
    if (v6)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __nw_connection_add_interface_use_callback_block_invoke;
      v22[3] = &unk_1E6A2ECA8;
      v23 = v6;
      v24 = v5;
      nw_connection_set_interface_use_callback(v3, v22);
    }

    else
    {
      nw_connection_set_interface_use_callback(v3, v5);
    }

    goto LABEL_7;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v28 = "nw_connection_add_interface_use_callback";
  v9 = _os_log_send_and_compose_impl();

  v26 = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v9, &v26, &v25))
  {
    goto LABEL_41;
  }

  if (v26 == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = v26;
    if (os_log_type_enabled(v10, v26))
    {
      *buf = 136446210;
      v28 = "nw_connection_add_interface_use_callback";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null interface_use_update_block", buf, 0xCu);
    }

    goto LABEL_40;
  }

  if (v25 != 1)
  {
    v10 = __nwlog_obj();
    v21 = v26;
    if (os_log_type_enabled(v10, v26))
    {
      *buf = 136446210;
      v28 = "nw_connection_add_interface_use_callback";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null interface_use_update_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_40;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = v26;
  v19 = os_log_type_enabled(v10, v26);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v28 = "nw_connection_add_interface_use_callback";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null interface_use_update_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_40;
  }

  if (v19)
  {
    *buf = 136446466;
    v28 = "nw_connection_add_interface_use_callback";
    v29 = 2082;
    v30 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null interface_use_update_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_42;
  }

LABEL_7:
}

void __nw_connection_add_interface_use_callback_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v7 = a5;
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

void nw_connection_set_internet_fallback_endpoint(void *a1, void *a2)
{
  *&v24[13] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = *(v3 + 2);
    if (v5 && !_nw_parameters_get_logging_disabled(v5))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v6 = gconnectionLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(v3 + 112);
        *buf = 136446722;
        v22 = "nw_connection_set_internet_fallback_endpoint";
        v23 = 1024;
        *v24 = v7;
        v24[2] = 2112;
        *&v24[3] = v4;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s [C%u] Setting internet fallback endpoint %@", buf, 0x1Cu);
      }
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __nw_connection_set_internet_fallback_endpoint_block_invoke;
    v16[3] = &unk_1E6A3D760;
    v17 = v3;
    v18 = v4;
    os_unfair_lock_lock(v3 + 34);
    __nw_connection_set_internet_fallback_endpoint_block_invoke(v16);
    os_unfair_lock_unlock(v3 + 34);

    goto LABEL_10;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_connection_set_internet_fallback_endpoint";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v9, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v22 = "nw_connection_set_internet_fallback_endpoint";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v19 == 1)
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
          v22 = "nw_connection_set_internet_fallback_endpoint";
          v23 = 2082;
          *v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v14)
      {
        *buf = 136446210;
        v22 = "nw_connection_set_internet_fallback_endpoint";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v22 = "nw_connection_set_internet_fallback_endpoint";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v9)
  {
    free(v9);
  }

LABEL_10:
}

void __nw_connection_set_internet_fallback_endpoint_block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  local_only = nw_parameters_get_local_only(*(*(a1 + 32) + 16));
  v3 = *(*(a1 + 32) + 16);
  if (!local_only)
  {
    multipath_service = nw_parameters_get_multipath_service(v3);
    v12 = *(*(a1 + 32) + 16);
    if (multipath_service)
    {
      if (nw_parameters_get_server_mode(v12))
      {
        v13 = *(a1 + 32);
        if (*(a1 + 40) && !*(v13 + 56))
        {
          v14 = *(v13 + 16);
          if (v14 && !_nw_parameters_get_logging_disabled(v14))
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v15 = gconnectionLogObj;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = *(*(a1 + 32) + 448);
              *buf = 136446466;
              v55 = "nw_connection_set_internet_fallback_endpoint_block_invoke";
              v56 = 1024;
              v57 = v16;
              _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "%{public}s [C%u] Starting server side candidate manager", buf, 0x12u);
            }
          }

          v17 = nw_candidate_manager_create_with_connection(*(a1 + 32), 0);
          v18 = *(a1 + 32);
          v19 = *(v18 + 56);
          *(v18 + 56) = v17;

          v13 = *(a1 + 32);
          if (!*(v13 + 56))
          {
            v20 = *(v13 + 16);
            if (!v20 || _nw_parameters_get_logging_disabled(v20))
            {
              return;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v21 = gconnectionLogObj;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = *(*(a1 + 32) + 448);
              *buf = 136446466;
              v55 = "nw_connection_set_internet_fallback_endpoint_block_invoke";
              v56 = 1024;
              v57 = v22;
              v23 = "%{public}s [C%u] Failed to create candidate manager";
              v24 = v21;
              v25 = 18;
LABEL_64:
              _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
              goto LABEL_65;
            }

            goto LABEL_65;
          }
        }
      }

      else
      {
        v13 = *(a1 + 32);
      }

      v36 = *(v13 + 56);
      if (v36)
      {
        nw_candidate_manager_set_internet_fallback(v36, *(a1 + 40));
        return;
      }

      v40 = *(v13 + 16);
      if (!v40 || _nw_parameters_get_logging_disabled(v40))
      {
        return;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v21 = gconnectionLogObj;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v41 = *(a1 + 40);
        v42 = *(*(a1 + 32) + 448);
        *buf = 136446722;
        v55 = "nw_connection_set_internet_fallback_endpoint_block_invoke";
        v56 = 1024;
        v57 = v42;
        v58 = 2112;
        v59 = v41;
        v23 = "%{public}s [C%u] No candidate manager present, can't set internet fallback %@";
        v24 = v21;
        v25 = 28;
        goto LABEL_64;
      }

LABEL_65:

      return;
    }

    if (!v12 || _nw_parameters_get_logging_disabled(v12))
    {
      return;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v30 = gconnectionLogObj;
    v31 = *(*(a1 + 32) + 448);
    *buf = 136446466;
    v55 = "nw_connection_set_internet_fallback_endpoint_block_invoke";
    v56 = 1024;
    v57 = v31;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault(v6, &type, &v52))
    {
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v32 = gconnectionLogObj;
      v33 = type;
      if (!os_log_type_enabled(v32, type))
      {
        goto LABEL_82;
      }

      v34 = *(*(a1 + 32) + 448);
      *buf = 136446466;
      v55 = "nw_connection_set_internet_fallback_endpoint_block_invoke";
      v56 = 1024;
      v57 = v34;
      v35 = "%{public}s [C%u] Connection does not support multi-path";
    }

    else
    {
      if (v52 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v32 = gconnectionLogObj;
        v44 = type;
        v45 = os_log_type_enabled(v32, type);
        if (backtrace_string)
        {
          if (v45)
          {
            v46 = *(*(a1 + 32) + 448);
            *buf = 136446722;
            v55 = "nw_connection_set_internet_fallback_endpoint_block_invoke";
            v56 = 1024;
            v57 = v46;
            v58 = 2082;
            v59 = backtrace_string;
            _os_log_impl(&dword_181A37000, v32, v44, "%{public}s [C%u] Connection does not support multi-path, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(backtrace_string);
          if (v6)
          {
LABEL_84:
            free(v6);
            return;
          }

          return;
        }

        if (!v45)
        {
LABEL_82:

          goto LABEL_83;
        }

        v51 = *(*(a1 + 32) + 448);
        *buf = 136446466;
        v55 = "nw_connection_set_internet_fallback_endpoint_block_invoke";
        v56 = 1024;
        v57 = v51;
        v35 = "%{public}s [C%u] Connection does not support multi-path, no backtrace";
        v49 = v32;
        v50 = v44;
LABEL_81:
        _os_log_impl(&dword_181A37000, v49, v50, v35, buf, 0x12u);
        goto LABEL_82;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v32 = gconnectionLogObj;
      v33 = type;
      if (!os_log_type_enabled(v32, type))
      {
        goto LABEL_82;
      }

      v48 = *(*(a1 + 32) + 448);
      *buf = 136446466;
      v55 = "nw_connection_set_internet_fallback_endpoint_block_invoke";
      v56 = 1024;
      v57 = v48;
      v35 = "%{public}s [C%u] Connection does not support multi-path, backtrace limit exceeded";
    }

    v49 = v32;
    v50 = v33;
    goto LABEL_81;
  }

  if (v3 && !_nw_parameters_get_logging_disabled(v3))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    v5 = *(*(a1 + 32) + 448);
    *buf = 136446466;
    v55 = "nw_connection_set_internet_fallback_endpoint_block_invoke";
    v56 = 1024;
    v57 = v5;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (__nwlog_fault(v6, &type, &v52))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v7 = gconnectionLogObj;
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          v9 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v55 = "nw_connection_set_internet_fallback_endpoint_block_invoke";
          v56 = 1024;
          v57 = v9;
          v10 = "%{public}s [C%u] Connection is local only";
LABEL_54:
          v38 = v7;
          v39 = v8;
LABEL_55:
          _os_log_impl(&dword_181A37000, v38, v39, v10, buf, 0x12u);
          goto LABEL_56;
        }

        goto LABEL_56;
      }

      if (v52 != 1)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v7 = gconnectionLogObj;
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          v37 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v55 = "nw_connection_set_internet_fallback_endpoint_block_invoke";
          v56 = 1024;
          v57 = v37;
          v10 = "%{public}s [C%u] Connection is local only, backtrace limit exceeded";
          goto LABEL_54;
        }

LABEL_56:

        if (!v6)
        {
          return;
        }

        goto LABEL_84;
      }

      v26 = __nw_create_backtrace_string();
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      v27 = type;
      v28 = os_log_type_enabled(v7, type);
      if (!v26)
      {
        if (v28)
        {
          v47 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v55 = "nw_connection_set_internet_fallback_endpoint_block_invoke";
          v56 = 1024;
          v57 = v47;
          v10 = "%{public}s [C%u] Connection is local only, no backtrace";
          v38 = v7;
          v39 = v27;
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if (v28)
      {
        v29 = *(*(a1 + 32) + 448);
        *buf = 136446722;
        v55 = "nw_connection_set_internet_fallback_endpoint_block_invoke";
        v56 = 1024;
        v57 = v29;
        v58 = 2082;
        v59 = v26;
        _os_log_impl(&dword_181A37000, v7, v27, "%{public}s [C%u] Connection is local only, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v26);
    }

LABEL_83:
    if (!v6)
    {
      return;
    }

    goto LABEL_84;
  }
}

void nw_connection_reset_traffic_class(void *a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_reset_traffic_class_block_invoke;
    v13[3] = &unk_1E6A3BD68;
    v14 = v3;
    v15 = a2;
    nw_connection_async_if_needed(v14, v13);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_connection_reset_traffic_class";
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
        v19 = "nw_connection_reset_traffic_class";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
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
          v19 = "nw_connection_reset_traffic_class";
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
        v19 = "nw_connection_reset_traffic_class";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v19 = "nw_connection_reset_traffic_class";
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

void __nw_connection_reset_traffic_class_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 109) & 0x40) != 0)
  {
    v6 = *(a1 + 40);
    v7 = *(v1 + 144);

    nw_endpoint_handler_reset_traffic_class(v7, v6);
  }

  else
  {
    v3 = *(v1 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(*(a1 + 32) + 448);
        v8 = 136446466;
        v9 = "nw_connection_reset_traffic_class_block_invoke";
        v10 = 1024;
        v11 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [C%u] Connection is not ready, ignore", &v8, 0x12u);
      }
    }
  }
}

void nw_connection_reset_expected_progress_target(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_reset_expected_progress_target_block_invoke;
    v13[3] = &unk_1E6A3AC58;
    v14 = v3;
    v15 = a2;
    nw_connection_async_if_needed(v14, v13);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_connection_reset_expected_progress_target";
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
        v19 = "nw_connection_reset_expected_progress_target";
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
          v19 = "nw_connection_reset_expected_progress_target";
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
        v19 = "nw_connection_reset_expected_progress_target";
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
        v19 = "nw_connection_reset_expected_progress_target";
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

void __nw_connection_reset_expected_progress_target_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __nw_connection_reset_expected_progress_target_block_invoke_2;
  v5[3] = &unk_1E6A3AC58;
  v3 = v2;
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  os_unfair_lock_lock(v2 + 34);
  __nw_connection_reset_expected_progress_target_block_invoke_2(v5);
  os_unfair_lock_unlock(v2 + 34);
}

void __nw_connection_reset_expected_progress_target_block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 80) == 3 && (*(v2 + 109) & 0x40) != 0)
  {
    *(v2 + 288) = 0;
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 144);

    nw_endpoint_handler_reset_expected_progress_target(v9, v7, (v8 + 452));
  }

  else
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(*(a1 + 32) + 448);
        v10 = 136446466;
        v11 = "nw_connection_reset_expected_progress_target_block_invoke_2";
        v12 = 1024;
        v13 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [C%u] Connection is not ready, pending progress target", &v10, 0x12u);
      }
    }

    v6 = *(a1 + 40);
    *(*(a1 + 32) + 288) = v6;
    nw_endpoint_handler_reset_expected_progress_target(*(*(a1 + 32) + 144), v6, (*(a1 + 32) + 452));
  }
}

void nw_connection_decrement_estimated_bytes(void *a1, char a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_decrement_estimated_bytes";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, &type, &v21))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_connection_decrement_estimated_bytes";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v21 == 1)
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
          v24 = "nw_connection_decrement_estimated_bytes";
          v25 = 2082;
          v26 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v8)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v8);
        goto LABEL_4;
      }

      if (v15)
      {
        *buf = 136446210;
        v24 = "nw_connection_decrement_estimated_bytes";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v24 = "nw_connection_decrement_estimated_bytes";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a3)
  {
    nw_connection_modify_estimated_bytes(v5, a2, 0, a3);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_connection_decrement_estimated_bytes";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (!__nwlog_fault(v8, &type, &v21))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v24 = "nw_connection_decrement_estimated_bytes";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null estimated_bytes", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v21 != 1)
  {
    v9 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v24 = "nw_connection_decrement_estimated_bytes";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null estimated_bytes, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
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
      v24 = "nw_connection_decrement_estimated_bytes";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null estimated_bytes, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v18)
  {
    *buf = 136446466;
    v24 = "nw_connection_decrement_estimated_bytes";
    v25 = 2082;
    v26 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null estimated_bytes, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_connection_inject_up(void *a1, int a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v7 = *(a3 + 16);
      *buf = *a3;
      *&buf[16] = v7;
      v8 = *(a3 + 32);
    }

    else
    {
      v8 = 0;
      memset(buf, 0, 32);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v21 = *buf;
    v22 = *&buf[16];
    v19[2] = __nw_connection_inject_up_block_invoke;
    v19[3] = &unk_1E6A2ECD0;
    v25 = a3 != 0;
    v23 = v8;
    v24 = a2;
    v20 = v5;
    nw_connection_async_if_needed(v20, v19);

    goto LABEL_6;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_inject_up";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v10, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_inject_up";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_inject_up";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v15)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_inject_up";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_inject_up";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v10)
  {
    free(v10);
  }

LABEL_6:
}

void __nw_connection_inject_up_block_invoke(uint64_t a1)
{
  v107 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 84);
  if (*(a1 + 84))
  {
    v3 = a1 + 40;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 80);
  if (v4 == 3)
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    if ((*(v12 + 109) & 0x40) != 0)
    {
      if (v13 && !_nw_parameters_get_logging_disabled(v13))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v23 = gconnectionLogObj;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v96 = "nw_connection_inject_up_block_invoke";
          v97 = 1024;
          *v98 = v24;
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] injecting timed out", buf, 0x12u);
        }
      }

      nw_endpoint_handler_inject_disconnect_error(*(*(a1 + 32) + 144), v3, 60);
    }

    else if (v13 && !_nw_parameters_get_logging_disabled(v13))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v14 = *(*(a1 + 32) + 448);
        *buf = 136446466;
        v96 = "nw_connection_inject_up_block_invoke";
        v97 = 1024;
        *v98 = v14;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s [C%u] timed out failed, not connected", buf, 0x12u);
      }

      goto LABEL_30;
    }

    return;
  }

  if (v4 != 2)
  {
    if (v4 == 1)
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 16);
      if ((*(v5 + 109) & 0x40) == 0)
      {
        if (v6 && !_nw_parameters_get_logging_disabled(v6))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v7 = gconnectionLogObj;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            v8 = *(*(a1 + 32) + 448);
            *buf = 136446466;
            v96 = "nw_connection_inject_up_block_invoke";
            v97 = 1024;
            *v98 = v8;
            _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s [C%u] read close failed, not connected", buf, 0x12u);
          }

LABEL_30:

          return;
        }

        return;
      }

      if (v6 && !_nw_parameters_get_logging_disabled(v6))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v25 = gconnectionLogObj;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v96 = "nw_connection_inject_up_block_invoke";
          v97 = 1024;
          *v98 = v26;
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] injecting read close", buf, 0x12u);
        }
      }

      v27 = *(*(a1 + 32) + 144);
      v28 = v27;
      if (v27)
      {
        v29 = v27;
        mode = v29->mode;

        if (mode == 2)
        {
          v31 = nw_endpoint_handler_copy_flow(v29);
          v32 = v31;
          if (v31)
          {
            if ((*(v31 + 33) & 4) != 0 && (*(v31 + 354) & 0x10) == 0)
            {
              v33 = v31 + 376;
              if (v2)
              {
                v34 = *(v32 + 51);
                if (!v34)
                {
LABEL_80:
                  v46 = v29;
                  v47 = (*(v46 + 284) & 0x40) == 0;

                  if (v47)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v48 = gconnectionLogObj;
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      id_string = nw_endpoint_handler_get_id_string(v46);
                      v50 = nw_endpoint_handler_dry_run_string(v46);
                      v51 = id_string;
                      v92 = nw_endpoint_handler_copy_endpoint(v46);
                      logging_description = nw_endpoint_get_logging_description(v92);
                      v53 = nw_endpoint_handler_state_string(v46);
                      v54 = nw_endpoint_handler_mode_string(v46);
                      v55 = nw_endpoint_handler_copy_current_path(v46);
                      *buf = 136447746;
                      v96 = "nw_endpoint_handler_inject_read_closed";
                      v97 = 2082;
                      *v98 = v51;
                      *&v98[8] = 2082;
                      *&v98[10] = v50;
                      v99 = 2082;
                      v100 = logging_description;
                      v101 = 2082;
                      v102 = v53;
                      v103 = 2082;
                      v104 = v54;
                      v105 = 2114;
                      v106 = v55;
                      _os_log_impl(&dword_181A37000, v48, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Inject read-closed failed, could not locate protocol", buf, 0x48u);
                    }
                  }

                  goto LABEL_148;
                }

                while (1)
                {
                  v35 = v34;
                  v36 = *(v34 + 2);
                  v37 = *v36;
                  v38 = v36[1];
                  v39 = v36[2];
                  v40 = v36[3];
                  v41 = v36[4];
                  v42 = *v3 == v37 && *(v3 + 8) == v38;
                  v43 = v42 && *(v3 + 16) == v39;
                  v44 = v43 && *(v3 + 24) == v40;
                  if (v44 && *(v3 + 32) == v41)
                  {
                    break;
                  }

                  v34 = *(v35 + 4);
                  v33 = v35;
                  if (!v34)
                  {
                    goto LABEL_80;
                  }
                }
              }

              (*(*(v33 + 3) + 184))();
            }

LABEL_148:

LABEL_154:
            return;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v73 = gLogObj;
          *buf = 136446210;
          v96 = "nw_endpoint_handler_inject_read_closed";
          v74 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v93 = 0;
          if (__nwlog_fault(v74, &type, &v93))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v75 = gLogObj;
              v76 = type;
              if (os_log_type_enabled(v75, type))
              {
                *buf = 136446210;
                v96 = "nw_endpoint_handler_inject_read_closed";
                _os_log_impl(&dword_181A37000, v75, v76, "%{public}s No endpoint flow", buf, 0xCu);
              }
            }

            else if (v93 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              if (backtrace_string)
              {
                v80 = backtrace_string;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v81 = gLogObj;
                v82 = type;
                if (os_log_type_enabled(v81, type))
                {
                  *buf = 136446466;
                  v96 = "nw_endpoint_handler_inject_read_closed";
                  v97 = 2082;
                  *v98 = v80;
                  _os_log_impl(&dword_181A37000, v81, v82, "%{public}s No endpoint flow, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v80);
                goto LABEL_146;
              }

              v75 = __nwlog_obj();
              v85 = type;
              if (os_log_type_enabled(v75, type))
              {
                *buf = 136446210;
                v96 = "nw_endpoint_handler_inject_read_closed";
                _os_log_impl(&dword_181A37000, v75, v85, "%{public}s No endpoint flow, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v75 = gLogObj;
              v84 = type;
              if (os_log_type_enabled(v75, type))
              {
                *buf = 136446210;
                v96 = "nw_endpoint_handler_inject_read_closed";
                _os_log_impl(&dword_181A37000, v75, v84, "%{public}s No endpoint flow, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

LABEL_146:
          if (v74)
          {
            free(v74);
          }

          goto LABEL_148;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v62 = gLogObj;
        if (mode > 5)
        {
          v63 = "unknown-mode";
        }

        else
        {
          v63 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v96 = "nw_endpoint_handler_inject_read_closed";
        v97 = 2082;
        *v98 = v63;
        *&v98[8] = 2082;
        *&v98[10] = "flow";
        v64 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v93 = 0;
        if (!__nwlog_fault(v64, &type, &v93))
        {
          goto LABEL_152;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v65 = gLogObj;
          v66 = type;
          if (os_log_type_enabled(v65, type))
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
            v96 = "nw_endpoint_handler_inject_read_closed";
            v97 = 2082;
            *v98 = v67;
            *&v98[8] = 2082;
            *&v98[10] = "flow";
            _os_log_impl(&dword_181A37000, v65, v66, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
          }
        }

        else if (v93 == 1)
        {
          v68 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v65 = gLogObj;
          v69 = type;
          v70 = os_log_type_enabled(v65, type);
          if (v68)
          {
            if (v70)
            {
              if (mode > 5)
              {
                v71 = "unknown-mode";
              }

              else
              {
                v71 = off_1E6A31018[mode];
              }

              *buf = 136446978;
              v96 = "nw_endpoint_handler_inject_read_closed";
              v97 = 2082;
              *v98 = v71;
              *&v98[8] = 2082;
              *&v98[10] = "flow";
              v99 = 2082;
              v100 = v68;
              _os_log_impl(&dword_181A37000, v65, v69, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v68);
            if (!v64)
            {
              goto LABEL_154;
            }

            goto LABEL_153;
          }

          if (v70)
          {
            if (mode > 5)
            {
              v83 = "unknown-mode";
            }

            else
            {
              v83 = off_1E6A31018[mode];
            }

            *buf = 136446722;
            v96 = "nw_endpoint_handler_inject_read_closed";
            v97 = 2082;
            *v98 = v83;
            *&v98[8] = 2082;
            *&v98[10] = "flow";
            _os_log_impl(&dword_181A37000, v65, v69, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v65 = gLogObj;
          v77 = type;
          if (os_log_type_enabled(v65, type))
          {
            if (mode > 5)
            {
              v78 = "unknown-mode";
            }

            else
            {
              v78 = off_1E6A31018[mode];
            }

            *buf = 136446722;
            v96 = "nw_endpoint_handler_inject_read_closed";
            v97 = 2082;
            *v98 = v78;
            *&v98[8] = 2082;
            *&v98[10] = "flow";
            _os_log_impl(&dword_181A37000, v65, v77, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
          }
        }

        goto LABEL_151;
      }

      v86 = __nwlog_obj();
      *buf = 136446210;
      v96 = "nw_endpoint_handler_inject_read_closed";
      v64 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v93 = 0;
      if (__nwlog_fault(v64, &type, &v93))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v65 = __nwlog_obj();
          v87 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446210;
            v96 = "nw_endpoint_handler_inject_read_closed";
            _os_log_impl(&dword_181A37000, v65, v87, "%{public}s called with null handler", buf, 0xCu);
          }

LABEL_151:

          goto LABEL_152;
        }

        if (v93 != 1)
        {
          v65 = __nwlog_obj();
          v91 = type;
          if (os_log_type_enabled(v65, type))
          {
            *buf = 136446210;
            v96 = "nw_endpoint_handler_inject_read_closed";
            _os_log_impl(&dword_181A37000, v65, v91, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_151;
        }

        v88 = __nw_create_backtrace_string();
        v65 = __nwlog_obj();
        v89 = type;
        v90 = os_log_type_enabled(v65, type);
        if (!v88)
        {
          if (v90)
          {
            *buf = 136446210;
            v96 = "nw_endpoint_handler_inject_read_closed";
            _os_log_impl(&dword_181A37000, v65, v89, "%{public}s called with null handler, no backtrace", buf, 0xCu);
          }

          goto LABEL_151;
        }

        if (v90)
        {
          *buf = 136446466;
          v96 = "nw_endpoint_handler_inject_read_closed";
          v97 = 2082;
          *v98 = v88;
          _os_log_impl(&dword_181A37000, v65, v89, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v88);
      }

LABEL_152:
      if (!v64)
      {
        goto LABEL_154;
      }

LABEL_153:
      free(v64);
      goto LABEL_154;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    v16 = *(a1 + 80);
    *buf = 136446466;
    v96 = "nw_connection_inject_up_block_invoke";
    v97 = 1024;
    *v98 = v16;
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v93 = 0;
    if (__nwlog_fault(v17, &type, &v93))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          v20 = *(a1 + 80);
          *buf = 136446466;
          v96 = "nw_connection_inject_up_block_invoke";
          v97 = 1024;
          *v98 = v20;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s Unhandled failure type: %d", buf, 0x12u);
        }
      }

      else if (v93 == 1)
      {
        v56 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v57 = type;
        v58 = os_log_type_enabled(v18, type);
        if (v56)
        {
          if (v58)
          {
            v59 = *(a1 + 80);
            *buf = 136446722;
            v96 = "nw_connection_inject_up_block_invoke";
            v97 = 1024;
            *v98 = v59;
            *&v98[4] = 2082;
            *&v98[6] = v56;
            _os_log_impl(&dword_181A37000, v18, v57, "%{public}s Unhandled failure type: %d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v56);
          if (!v17)
          {
            return;
          }

LABEL_112:
          free(v17);
          return;
        }

        if (v58)
        {
          v72 = *(a1 + 80);
          *buf = 136446466;
          v96 = "nw_connection_inject_up_block_invoke";
          v97 = 1024;
          *v98 = v72;
          _os_log_impl(&dword_181A37000, v18, v57, "%{public}s Unhandled failure type: %d, no backtrace", buf, 0x12u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v60 = type;
        if (os_log_type_enabled(v18, type))
        {
          v61 = *(a1 + 80);
          *buf = 136446466;
          v96 = "nw_connection_inject_up_block_invoke";
          v97 = 1024;
          *v98 = v61;
          _os_log_impl(&dword_181A37000, v18, v60, "%{public}s Unhandled failure type: %d, backtrace limit exceeded", buf, 0x12u);
        }
      }
    }

    if (!v17)
    {
      return;
    }

    goto LABEL_112;
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  if ((*(v9 + 109) & 0x40) != 0)
  {
    if (v10 && !_nw_parameters_get_logging_disabled(v10))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v21 = gconnectionLogObj;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(*(a1 + 32) + 448);
        *buf = 136446466;
        v96 = "nw_connection_inject_up_block_invoke";
        v97 = 1024;
        *v98 = v22;
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] injecting reset", buf, 0x12u);
      }
    }

    nw_endpoint_handler_inject_disconnect_error(*(*(a1 + 32) + 144), v3, 54);
  }

  else if (v10 && !_nw_parameters_get_logging_disabled(v10))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(a1 + 32) + 448);
      *buf = 136446466;
      v96 = "nw_connection_inject_up_block_invoke";
      v97 = 1024;
      *v98 = v11;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s [C%u] reset failed, not connected", buf, 0x12u);
    }

    goto LABEL_30;
  }
}

BOOL nw_connection_read_multiple(void *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      *v64 = 0;
      *&v64[8] = v64;
      *&v64[16] = 0x2020000000;
      v65 = 1;
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __nw_connection_read_multiple_block_invoke;
      v56[3] = &unk_1E6A3D738;
      v58 = v64;
      v10 = v7;
      v57 = v10;
      os_unfair_lock_lock(v7 + 34);
      __nw_connection_read_multiple_block_invoke(v56);
      os_unfair_lock_unlock(v7 + 34);
      if (*(*&v64[8] + 24))
      {
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __nw_connection_read_multiple_block_invoke_34;
        v53[3] = &unk_1E6A2ECF8;
        v54 = v9;
        multiple = nw_read_request_create_multiple(a2, a3, v10, v53);
        v12 = multiple != 0;
        if (multiple)
        {
          nw_connection_add_read_request(v10, multiple);
LABEL_57:

          goto LABEL_58;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        *buf = 136446210;
        v61 = "nw_connection_read_multiple";
        v26 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v55 = 0;
        if (__nwlog_fault(v26, &type, &v55))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v27 = gLogObj;
            v28 = type;
            if (os_log_type_enabled(v27, type))
            {
              *buf = 136446210;
              v61 = "nw_connection_read_multiple";
              _os_log_impl(&dword_181A37000, v27, v28, "%{public}s nw_read_request_create_multiple failed", buf, 0xCu);
            }
          }

          else if (v55 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            if (backtrace_string)
            {
              v32 = backtrace_string;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v33 = gLogObj;
              v34 = type;
              if (os_log_type_enabled(v33, type))
              {
                *buf = 136446466;
                v61 = "nw_connection_read_multiple";
                v62 = 2082;
                v63[0] = v32;
                _os_log_impl(&dword_181A37000, v33, v34, "%{public}s nw_read_request_create_multiple failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v32);
              if (!v26)
              {
                goto LABEL_57;
              }

              goto LABEL_56;
            }

            v27 = __nwlog_obj();
            v38 = type;
            if (os_log_type_enabled(v27, type))
            {
              *buf = 136446210;
              v61 = "nw_connection_read_multiple";
              _os_log_impl(&dword_181A37000, v27, v38, "%{public}s nw_read_request_create_multiple failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v27 = gLogObj;
            v35 = type;
            if (os_log_type_enabled(v27, type))
            {
              *buf = 136446210;
              v61 = "nw_connection_read_multiple";
              _os_log_impl(&dword_181A37000, v27, v35, "%{public}s nw_read_request_create_multiple failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v26)
        {
          goto LABEL_57;
        }

LABEL_56:
        free(v26);
        goto LABEL_57;
      }

      v13 = *&v10[4]._os_unfair_lock_opaque;
      if (v13 && !_nw_parameters_get_logging_disabled(v13))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v14 = gconnectionLogObj;
        os_unfair_lock_opaque = v10[112]._os_unfair_lock_opaque;
        *buf = 136446466;
        v61 = "nw_connection_read_multiple";
        v62 = 1024;
        LODWORD(v63[0]) = os_unfair_lock_opaque;
        v16 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v55 = 0;
        if (__nwlog_fault(v16, &type, &v55))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v17 = gconnectionLogObj;
            v18 = type;
            if (os_log_type_enabled(v17, type))
            {
              v19 = v10[112]._os_unfair_lock_opaque;
              *buf = 136446466;
              v61 = "nw_connection_read_multiple";
              v62 = 1024;
              LODWORD(v63[0]) = v19;
              _os_log_impl(&dword_181A37000, v17, v18, "%{public}s [C%u] client_queue is nil", buf, 0x12u);
            }
          }

          else if (v55 == 1)
          {
            v20 = __nw_create_backtrace_string();
            if (v20)
            {
              v21 = v20;
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v22 = gconnectionLogObj;
              v23 = type;
              if (os_log_type_enabled(v22, type))
              {
                v24 = v10[112]._os_unfair_lock_opaque;
                *buf = 136446722;
                v61 = "nw_connection_read_multiple";
                v62 = 1024;
                LODWORD(v63[0]) = v24;
                WORD2(v63[0]) = 2082;
                *(v63 + 6) = v21;
                _os_log_impl(&dword_181A37000, v22, v23, "%{public}s [C%u] client_queue is nil, dumping backtrace:%{public}s", buf, 0x1Cu);
              }

              free(v21);
              if (!v16)
              {
                goto LABEL_51;
              }

              goto LABEL_50;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v17 = gconnectionLogObj;
            v36 = type;
            if (os_log_type_enabled(v17, type))
            {
              v37 = v10[112]._os_unfair_lock_opaque;
              *buf = 136446466;
              v61 = "nw_connection_read_multiple";
              v62 = 1024;
              LODWORD(v63[0]) = v37;
              _os_log_impl(&dword_181A37000, v17, v36, "%{public}s [C%u] client_queue is nil, no backtrace", buf, 0x12u);
            }
          }

          else
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v17 = gconnectionLogObj;
            v29 = type;
            if (os_log_type_enabled(v17, type))
            {
              v30 = v10[112]._os_unfair_lock_opaque;
              *buf = 136446466;
              v61 = "nw_connection_read_multiple";
              v62 = 1024;
              LODWORD(v63[0]) = v30;
              _os_log_impl(&dword_181A37000, v17, v29, "%{public}s [C%u] client_queue is nil, backtrace limit exceeded", buf, 0x12u);
            }
          }
        }

        if (v16)
        {
LABEL_50:
          free(v16);
        }
      }

LABEL_51:
      v12 = 0;
LABEL_58:

      _Block_object_dispose(v64, 8);
      goto LABEL_59;
    }

    v44 = __nwlog_obj();
    *v64 = 136446210;
    *&v64[4] = "nw_connection_read_multiple";
    v41 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v41, buf, &type))
    {
      if (buf[0] == 17)
      {
        v42 = __nwlog_obj();
        v45 = buf[0];
        if (os_log_type_enabled(v42, buf[0]))
        {
          *v64 = 136446210;
          *&v64[4] = "nw_connection_read_multiple";
          _os_log_impl(&dword_181A37000, v42, v45, "%{public}s called with null handler", v64, 0xCu);
        }

LABEL_91:

        goto LABEL_92;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v42 = __nwlog_obj();
        v52 = buf[0];
        if (os_log_type_enabled(v42, buf[0]))
        {
          *v64 = 136446210;
          *&v64[4] = "nw_connection_read_multiple";
          _os_log_impl(&dword_181A37000, v42, v52, "%{public}s called with null handler, backtrace limit exceeded", v64, 0xCu);
        }

        goto LABEL_91;
      }

      v46 = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v49 = buf[0];
      v50 = os_log_type_enabled(v42, buf[0]);
      if (!v46)
      {
        if (v50)
        {
          *v64 = 136446210;
          *&v64[4] = "nw_connection_read_multiple";
          _os_log_impl(&dword_181A37000, v42, v49, "%{public}s called with null handler, no backtrace", v64, 0xCu);
        }

        goto LABEL_91;
      }

      if (v50)
      {
        *v64 = 136446466;
        *&v64[4] = "nw_connection_read_multiple";
        *&v64[12] = 2082;
        *&v64[14] = v46;
        _os_log_impl(&dword_181A37000, v42, v49, "%{public}s called with null handler, dumping backtrace:%{public}s", v64, 0x16u);
      }

      goto LABEL_79;
    }
  }

  else
  {
    v40 = __nwlog_obj();
    *v64 = 136446210;
    *&v64[4] = "nw_connection_read_multiple";
    v41 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v41, buf, &type))
    {
      if (buf[0] == 17)
      {
        v42 = __nwlog_obj();
        v43 = buf[0];
        if (os_log_type_enabled(v42, buf[0]))
        {
          *v64 = 136446210;
          *&v64[4] = "nw_connection_read_multiple";
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null connection", v64, 0xCu);
        }

        goto LABEL_91;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v42 = __nwlog_obj();
        v51 = buf[0];
        if (os_log_type_enabled(v42, buf[0]))
        {
          *v64 = 136446210;
          *&v64[4] = "nw_connection_read_multiple";
          _os_log_impl(&dword_181A37000, v42, v51, "%{public}s called with null connection, backtrace limit exceeded", v64, 0xCu);
        }

        goto LABEL_91;
      }

      v46 = __nw_create_backtrace_string();
      v42 = __nwlog_obj();
      v47 = buf[0];
      v48 = os_log_type_enabled(v42, buf[0]);
      if (!v46)
      {
        if (v48)
        {
          *v64 = 136446210;
          *&v64[4] = "nw_connection_read_multiple";
          _os_log_impl(&dword_181A37000, v42, v47, "%{public}s called with null connection, no backtrace", v64, 0xCu);
        }

        goto LABEL_91;
      }

      if (v48)
      {
        *v64 = 136446466;
        *&v64[4] = "nw_connection_read_multiple";
        *&v64[12] = 2082;
        *&v64[14] = v46;
        _os_log_impl(&dword_181A37000, v42, v47, "%{public}s called with null connection, dumping backtrace:%{public}s", v64, 0x16u);
      }

LABEL_79:

      free(v46);
    }
  }

LABEL_92:
  if (v41)
  {
    free(v41);
  }

  v12 = 0;
LABEL_59:

  return v12;
}

void sub_1824DD9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  _Block_object_dispose((v27 - 144), 8);

  _Unwind_Resume(a1);
}

uint64_t __nw_connection_read_multiple_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 200))
  {
    result = 1;
  }

  else
  {
    result = nw_context_is_inline(*(v2 + 24));
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __nw_connection_read_multiple_block_invoke_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = v6;
  if (v6)
  {
  }

  (*(*(a1 + 32) + 16))();
}

void nw_connection_receive_multiple(void *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v16 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_connection_receive_multiple";
    v17 = _os_log_send_and_compose_impl();

    v36 = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v17, &v36, &v35))
    {
      goto LABEL_41;
    }

    if (v36 == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = v36;
      if (os_log_type_enabled(v18, v36))
      {
        *buf = 136446210;
        v38 = "nw_connection_receive_multiple";
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v35 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v23 = v36;
      v24 = os_log_type_enabled(v18, v36);
      if (backtrace_string)
      {
        if (v24)
        {
          *buf = 136446466;
          v38 = "nw_connection_receive_multiple";
          v39 = 2082;
          v40 = backtrace_string;
          _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v17)
        {
          goto LABEL_7;
        }

LABEL_42:
        free(v17);
        goto LABEL_7;
      }

      if (v24)
      {
        *buf = 136446210;
        v38 = "nw_connection_receive_multiple";
        _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v18 = __nwlog_obj();
      v28 = v36;
      if (os_log_type_enabled(v18, v36))
      {
        *buf = 136446210;
        v38 = "nw_connection_receive_multiple";
        _os_log_impl(&dword_181A37000, v18, v28, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  if (v8)
  {
    v10 = a3;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __nw_connection_receive_multiple_block_invoke;
    v33[3] = &unk_1E6A2ECF8;
    v11 = v8;
    v34 = v11;
    multiple = nw_read_request_create_multiple(a2, v10, v7, v33);
    if (multiple)
    {
      nw_connection_add_read_request(v7, multiple);
    }

    else
    {
      v13 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
      v14 = v7[48];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __nw_connection_receive_multiple_block_invoke_2;
      v30[3] = &unk_1E6A3D710;
      v31 = v13;
      v32 = v11;
      v15 = v13;
      nw_connection_async_client_if_needed_with_override(v7, 0, v14, v30);
    }

    goto LABEL_7;
  }

  v20 = __nwlog_obj();
  *buf = 136446210;
  v38 = "nw_connection_receive_multiple";
  v17 = _os_log_send_and_compose_impl();

  v36 = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (!__nwlog_fault(v17, &v36, &v35))
  {
    goto LABEL_41;
  }

  if (v36 == OS_LOG_TYPE_FAULT)
  {
    v18 = __nwlog_obj();
    v21 = v36;
    if (os_log_type_enabled(v18, v36))
    {
      *buf = 136446210;
      v38 = "nw_connection_receive_multiple";
      _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null completion", buf, 0xCu);
    }

    goto LABEL_40;
  }

  if (v35 != 1)
  {
    v18 = __nwlog_obj();
    v29 = v36;
    if (os_log_type_enabled(v18, v36))
    {
      *buf = 136446210;
      v38 = "nw_connection_receive_multiple";
      _os_log_impl(&dword_181A37000, v18, v29, "%{public}s called with null completion, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_40;
  }

  v25 = __nw_create_backtrace_string();
  v18 = __nwlog_obj();
  v26 = v36;
  v27 = os_log_type_enabled(v18, v36);
  if (!v25)
  {
    if (v27)
    {
      *buf = 136446210;
      v38 = "nw_connection_receive_multiple";
      _os_log_impl(&dword_181A37000, v18, v26, "%{public}s called with null completion, no backtrace", buf, 0xCu);
    }

    goto LABEL_40;
  }

  if (v27)
  {
    *buf = 136446466;
    v38 = "nw_connection_receive_multiple";
    v39 = 2082;
    v40 = v25;
    _os_log_impl(&dword_181A37000, v18, v26, "%{public}s called with null completion, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v25);
  if (v17)
  {
    goto LABEL_42;
  }

LABEL_7:
}

void __nw_connection_receive_multiple_block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  LODWORD(v5) = a4;
  v10 = a5;
  if (v5)
  {
    v9 = (v5 - 1);
    v5 = v5;
    do
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), *a2++, *a3++, v9-- == 0, v10);
      --v5;
    }

    while (v5);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void nw_connection_receive_file_at_path_with_progress(void *a1, const char *a2, unint64_t a3, void *a4)
{
  v77 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v46 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_receive_file_at_path_with_progress";
    v47 = _os_log_send_and_compose_impl();

    v66[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v47, v66, &type))
    {
      goto LABEL_83;
    }

    if (v66[0] == OS_LOG_TYPE_FAULT)
    {
      v48 = __nwlog_obj();
      v49 = v66[0];
      if (os_log_type_enabled(v48, v66[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_receive_file_at_path_with_progress";
        _os_log_impl(&dword_181A37000, v48, v49, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v48 = __nwlog_obj();
      v53 = v66[0];
      v54 = os_log_type_enabled(v48, v66[0]);
      if (backtrace_string)
      {
        if (v54)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_receive_file_at_path_with_progress";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v48, v53, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_83:
        if (!v47)
        {
          goto LABEL_44;
        }

LABEL_84:
        free(v47);
        goto LABEL_44;
      }

      if (v54)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_receive_file_at_path_with_progress";
        _os_log_impl(&dword_181A37000, v48, v53, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v48 = __nwlog_obj();
      v60 = v66[0];
      if (os_log_type_enabled(v48, v66[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_receive_file_at_path_with_progress";
        _os_log_impl(&dword_181A37000, v48, v60, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_82:

    goto LABEL_83;
  }

  if (v9)
  {
    *v66 = 0;
    v67 = v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__24471;
    v70 = __Block_byref_object_dispose__24472;
    v71 = 0;
    v11 = open(a2, 525, 511);
    if (v11 == -1)
    {
      posix_error = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
      v28 = *(v67 + 5);
      *(v67 + 5) = posix_error;

      v12 = 0;
      v13 = *(v67 + 5);
    }

    else
    {
      v12 = nw_fd_wrapper_create(v11);
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __nw_connection_receive_file_at_path_with_progress_block_invoke;
      v65[3] = &unk_1E6A3C0D8;
      v65[4] = v66;
      nw_fd_wrapper_get_fd(v12, v65);
      v13 = *(v67 + 5);
      if (!v13 && v12)
      {
        v14 = *(v8 + 2);
        if (v14 && !_nw_parameters_get_logging_disabled(v14) && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v58 = gconnectionLogObj;
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            v59 = *(v8 + 112);
            *buf = 136446722;
            *&buf[4] = "nw_connection_receive_file_at_path_with_progress";
            *&buf[12] = 1024;
            *&buf[14] = v59;
            *&buf[18] = 2112;
            *&buf[20] = v12;
            _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] attempting file read request on fd: %@", buf, 0x1Cu);
          }
        }

        v15 = v8;
        v16 = v12;
        v17 = v10;
        v18 = v16;
        v19 = v15;
        v20 = v17;
        v21 = objc_alloc_init(NWConcrete_nw_read_request);
        v22 = v21;
        if (v21)
        {
          objc_storeStrong(&v21->connection, a1);
          v23 = qos_class_self();
          v22->min = a3;
          v22->max = a3;
          v22->qos_class = v23;
          v22->variant = 4;
          objc_storeStrong(&v22->fd, v12);
          v24 = _Block_copy(v20);
          file_handler = v22->file_handler;
          v22->file_handler = v24;

          v22->progress_msecs = 200;
          *(v22 + 176) &= ~4u;
          if (_nw_signposts_once != -1)
          {
            dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
          }

          if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
          {
            kdebug_trace();
          }

          v26 = v22;
          goto LABEL_39;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        *buf = 136446210;
        *&buf[4] = "nw_read_request_create_with_file";
        v33 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v72 = 0;
        if (__nwlog_fault(v33, &type, &v72))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v34 = gLogObj;
            v35 = type;
            if (os_log_type_enabled(v34, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_read_request_create_with_file";
              _os_log_impl(&dword_181A37000, v34, v35, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed", buf, 0xCu);
            }
          }

          else if (v72 == 1)
          {
            v36 = __nw_create_backtrace_string();
            if (v36)
            {
              v37 = v36;
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v38 = gLogObj;
              v39 = type;
              if (os_log_type_enabled(v38, type))
              {
                *buf = 136446466;
                *&buf[4] = "nw_read_request_create_with_file";
                *&buf[12] = 2082;
                *&buf[14] = v37;
                _os_log_impl(&dword_181A37000, v38, v39, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v37);
              if (!v33)
              {
                goto LABEL_39;
              }

              goto LABEL_38;
            }

            v34 = __nwlog_obj();
            v41 = type;
            if (os_log_type_enabled(v34, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_read_request_create_with_file";
              _os_log_impl(&dword_181A37000, v34, v41, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v34 = gLogObj;
            v40 = type;
            if (os_log_type_enabled(v34, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_read_request_create_with_file";
              _os_log_impl(&dword_181A37000, v34, v40, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v33)
        {
LABEL_39:

          if (v22)
          {
            nw_connection_add_read_request(v19, v22);
          }

          else
          {
            v42 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
            v43 = v19[48];
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL35nw_connection_receive_file_internalP24NWConcrete_nw_connectionPU27objcproto16OS_nw_fd_wrapper8NSObjectmU13block_pointerFbmPU32objcproto21OS_nw_content_contextS1_bPU22objcproto11OS_nw_errorS1_E_block_invoke;
            *&buf[24] = &unk_1E6A3D710;
            v44 = v20;
            v75 = v42;
            v76 = v44;
            v45 = v42;
            nw_connection_async_client_if_needed_with_override(v19, 0, v43, buf);
          }

LABEL_43:
          _Block_object_dispose(v66, 8);

          goto LABEL_44;
        }

LABEL_38:
        free(v33);
        goto LABEL_39;
      }
    }

    if (!v13)
    {
      v29 = [[NWConcrete_nw_error alloc] initWithDomain:9 code:?];
      v30 = *(v67 + 5);
      *(v67 + 5) = v29;
    }

    v31 = *(v8 + 48);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __nw_connection_receive_file_at_path_with_progress_block_invoke_36;
    v62[3] = &unk_1E6A2ED20;
    v63 = v10;
    v64 = v66;
    nw_connection_async_client_if_needed_with_override(v8, 0, v31, v62);

    v18 = v12;
    goto LABEL_43;
  }

  v50 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_receive_file_at_path_with_progress";
  v47 = _os_log_send_and_compose_impl();

  v66[0] = OS_LOG_TYPE_ERROR;
  type = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v47, v66, &type))
  {
    goto LABEL_83;
  }

  if (v66[0] == OS_LOG_TYPE_FAULT)
  {
    v48 = __nwlog_obj();
    v51 = v66[0];
    if (os_log_type_enabled(v48, v66[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_receive_file_at_path_with_progress";
      _os_log_impl(&dword_181A37000, v48, v51, "%{public}s called with null handler", buf, 0xCu);
    }

    goto LABEL_82;
  }

  if (type != OS_LOG_TYPE_INFO)
  {
    v48 = __nwlog_obj();
    v61 = v66[0];
    if (os_log_type_enabled(v48, v66[0]))
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_receive_file_at_path_with_progress";
      _os_log_impl(&dword_181A37000, v48, v61, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_82;
  }

  v55 = __nw_create_backtrace_string();
  v48 = __nwlog_obj();
  v56 = v66[0];
  v57 = os_log_type_enabled(v48, v66[0]);
  if (!v55)
  {
    if (v57)
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_receive_file_at_path_with_progress";
      _os_log_impl(&dword_181A37000, v48, v56, "%{public}s called with null handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_82;
  }

  if (v57)
  {
    *buf = 136446466;
    *&buf[4] = "nw_connection_receive_file_at_path_with_progress";
    *&buf[12] = 2082;
    *&buf[14] = v55;
    _os_log_impl(&dword_181A37000, v48, v56, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v55);
  if (v47)
  {
    goto LABEL_84;
  }

LABEL_44:
}

void sub_1824DEE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, id a36)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

uint64_t __nw_connection_receive_file_at_path_with_progress_block_invoke(uint64_t a1, int a2)
{
  memset(&v8, 0, sizeof(v8));
  if (fstat(a2, &v8) == -1)
  {
    v3 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    goto LABEL_5;
  }

  if ((v8.st_mode & 0xF000) != 0x8000)
  {
    v3 = 9;
LABEL_5:
    posix_error = nw_error_create_posix_error(v3);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = posix_error;
  }

  return 1;
}

void nw_connection_receive_message_with_context(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    nw_connection_receive_internal(v5, v6, 0xFFFFFFFF, 0xFFFFFFFF, v7);
    goto LABEL_3;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_connection_receive_message_with_context";
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
        v19 = "nw_connection_receive_message_with_context";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null message", buf, 0xCu);
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
          v19 = "nw_connection_receive_message_with_context";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null message, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_connection_receive_message_with_context";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null message, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_connection_receive_message_with_context";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null message, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v9)
  {
    free(v9);
  }

LABEL_3:
}

uint64_t nw_connection_read(void *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __nw_connection_read_block_invoke;
      v25[3] = &unk_1E6A39D68;
      v26 = v8;
      nw_connection_receive_internal(v7, 0, a2, a3, v25);

      v10 = 1;
      goto LABEL_4;
    }

    v16 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_connection_read";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v13, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v30 = "nw_connection_read";
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null handler", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v27 != 1)
      {
        v14 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v30 = "nw_connection_read";
          _os_log_impl(&dword_181A37000, v14, v24, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v21 = type;
      v22 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v22)
        {
          *buf = 136446210;
          v30 = "nw_connection_read";
          _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v22)
      {
        *buf = 136446466;
        v30 = "nw_connection_read";
        v31 = 2082;
        v32 = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v21, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_connection_read";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v13, &type, &v27))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v30 = "nw_connection_read";
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null connection", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v27 != 1)
      {
        v14 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v14, type))
        {
          *buf = 136446210;
          v30 = "nw_connection_read";
          _os_log_impl(&dword_181A37000, v14, v23, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v14, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v30 = "nw_connection_read";
          _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v20)
      {
        *buf = 136446466;
        v30 = "nw_connection_read";
        v31 = 2082;
        v32 = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v13)
  {
    free(v13);
  }

  v10 = 0;
LABEL_4:

  return v10;
}

void __nw_connection_read_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v11 = a2;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
  }

  (*(*(a1 + 32) + 16))();
}

void __nw_connection_send_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
  (*(v1 + 16))(v1);
}

void nw_connection_send_reply(void *a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  *&v61[13] = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = v15;
  if (!v11)
  {
    v39 = __nwlog_obj();
    *buf = 136446210;
    v59 = "nw_connection_send_reply";
    v40 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (!__nwlog_fault(v40, &type, &v56))
    {
      goto LABEL_93;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v41 = __nwlog_obj();
      v42 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v59 = "nw_connection_send_reply";
        _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v56 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v41 = __nwlog_obj();
      v46 = type;
      v47 = os_log_type_enabled(v41, type);
      if (backtrace_string)
      {
        if (v47)
        {
          *buf = 136446466;
          v59 = "nw_connection_send_reply";
          v60 = 2082;
          *v61 = backtrace_string;
          _os_log_impl(&dword_181A37000, v41, v46, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_93:
        if (!v40)
        {
          goto LABEL_30;
        }

LABEL_94:
        free(v40);
        goto LABEL_30;
      }

      if (v47)
      {
        *buf = 136446210;
        v59 = "nw_connection_send_reply";
        _os_log_impl(&dword_181A37000, v41, v46, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v41 = __nwlog_obj();
      v51 = type;
      if (os_log_type_enabled(v41, type))
      {
        *buf = 136446210;
        v59 = "nw_connection_send_reply";
        _os_log_impl(&dword_181A37000, v41, v51, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_92:

    goto LABEL_93;
  }

  if (v15)
  {
    if (!v12)
    {
      v20 = "No original message provided";
      v21 = *(v11 + 2);
      if (!v21)
      {
        goto LABEL_29;
      }

      goto LABEL_23;
    }

    v17 = v12;
    v18 = v17;
    if (v17 == &__block_literal_global_10_44685)
    {
    }

    else
    {
      if (v17 == &__block_literal_global_8_44676 || v17 == &__block_literal_global_6_44667 || v17 == &__block_literal_global_44658)
      {

LABEL_9:
        v20 = "Protocol does not support replies";
        v21 = *(v11 + 2);
        if (!v21)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

      os_unfair_lock_lock(v17 + 28);
      v19 = BYTE2(v18[29]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v18 + 28);

      if ((v19 & 0x40) == 0)
      {
        goto LABEL_9;
      }
    }

    if (v14 == &__block_literal_global_8_44676)
    {
      v20 = "Cannot send replies on stream context";
      v21 = *(v11 + 2);
      if (!v21)
      {
        goto LABEL_29;
      }

      goto LABEL_23;
    }

    if (v14 == &__block_literal_global_10_44685)
    {
      v20 = "Cannot send replies on new inbound message context";
      v21 = *(v11 + 2);
      if (!v21)
      {
LABEL_29:
        v26 = *(v11 + 48);
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __nw_connection_send_reply_block_invoke;
        v54[3] = &unk_1E6A3CE48;
        v55 = v16;
        nw_connection_async_client_if_needed_with_override(v11, 0, v26, v54);

        goto LABEL_30;
      }

LABEL_23:
      if (!_nw_parameters_get_logging_disabled(v21))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v24 = gconnectionLogObj;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = *(v11 + 112);
          *buf = 136446722;
          v59 = "nw_connection_send_reply";
          v60 = 1024;
          *v61 = v25;
          v61[2] = 2082;
          *&v61[3] = v20;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s [C%u] %{public}s, sending error callback", buf, 0x1Cu);
        }
      }

      goto LABEL_29;
    }

    v22 = v14;
    v23 = v22;
    if (!v22 || v22 == &__block_literal_global_44658 || v22 == &__block_literal_global_6_44667)
    {
      context = nw_content_context_create("Reply");

      repliable_metadata = nw_content_context_copy_first_repliable_metadata(v18);
      reply = nw_protocol_metadata_create_reply(repliable_metadata);
      nw_content_context_set_metadata_for_protocol(context, reply);
      if (v23 == &__block_literal_global_6_44667)
      {
        nw_content_context_set_is_final(context, 1);
      }
    }

    else
    {
      context = v22;
    }

    if (v16 == &__block_literal_global_24512)
    {
      v29 = nw_write_request_create_idempotent(v13, context, v18, a5);
    }

    else
    {
      v29 = nw_write_request_create(v13, context, v18, a5, v11, v16);
    }

    v30 = v29;
    if (v29)
    {
      nw_connection_add_write_request(v11, v29);
LABEL_58:

      goto LABEL_30;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v31 = gLogObj;
    *buf = 136446210;
    v59 = "nw_connection_send_reply";
    v32 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v56 = 0;
    if (__nwlog_fault(v32, &type, &v56))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        v34 = type;
        if (os_log_type_enabled(v33, type))
        {
          *buf = 136446210;
          v59 = "nw_connection_send_reply";
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s nw_write_request_create failed", buf, 0xCu);
        }
      }

      else if (v56 == 1)
      {
        v35 = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v36 = type;
        v37 = os_log_type_enabled(v33, type);
        if (v35)
        {
          if (v37)
          {
            *buf = 136446466;
            v59 = "nw_connection_send_reply";
            v60 = 2082;
            *v61 = v35;
            _os_log_impl(&dword_181A37000, v33, v36, "%{public}s nw_write_request_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v35);
          if (!v32)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

        if (v37)
        {
          *buf = 136446210;
          v59 = "nw_connection_send_reply";
          _os_log_impl(&dword_181A37000, v33, v36, "%{public}s nw_write_request_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v33 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v33, type))
        {
          *buf = 136446210;
          v59 = "nw_connection_send_reply";
          _os_log_impl(&dword_181A37000, v33, v38, "%{public}s nw_write_request_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v32)
    {
      goto LABEL_58;
    }

LABEL_57:
    free(v32);
    goto LABEL_58;
  }

  v43 = __nwlog_obj();
  *buf = 136446210;
  v59 = "nw_connection_send_reply";
  v40 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v56 = 0;
  if (!__nwlog_fault(v40, &type, &v56))
  {
    goto LABEL_93;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v41 = __nwlog_obj();
    v44 = type;
    if (os_log_type_enabled(v41, type))
    {
      *buf = 136446210;
      v59 = "nw_connection_send_reply";
      _os_log_impl(&dword_181A37000, v41, v44, "%{public}s called with null completion", buf, 0xCu);
    }

    goto LABEL_92;
  }

  if (v56 != 1)
  {
    v41 = __nwlog_obj();
    v52 = type;
    if (os_log_type_enabled(v41, type))
    {
      *buf = 136446210;
      v59 = "nw_connection_send_reply";
      _os_log_impl(&dword_181A37000, v41, v52, "%{public}s called with null completion, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_92;
  }

  v48 = __nw_create_backtrace_string();
  v41 = __nwlog_obj();
  v49 = type;
  v50 = os_log_type_enabled(v41, type);
  if (!v48)
  {
    if (v50)
    {
      *buf = 136446210;
      v59 = "nw_connection_send_reply";
      _os_log_impl(&dword_181A37000, v41, v49, "%{public}s called with null completion, no backtrace", buf, 0xCu);
    }

    goto LABEL_92;
  }

  if (v50)
  {
    *buf = 136446466;
    v59 = "nw_connection_send_reply";
    v60 = 2082;
    *v61 = v48;
    _os_log_impl(&dword_181A37000, v41, v49, "%{public}s called with null completion, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v48);
  if (v40)
  {
    goto LABEL_94;
  }

LABEL_30:
}

void __nw_connection_send_reply_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
  (*(v1 + 16))(v1);
}

void nw_connection_send_file_at_path_with_progress(void *a1, const char *a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v119 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v101 = a3;
  v13 = a6;
  v102 = v13;
  if (!v12)
  {
    v66 = __nwlog_obj();
    *v113 = 136446210;
    *&v113[4] = "nw_connection_send_file_at_path_with_progress";
    v67 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    LOBYTE(v107) = 0;
    if (!__nwlog_fault(v67, buf, &v107))
    {
      goto LABEL_146;
    }

    if (buf[0] == 17)
    {
      v68 = __nwlog_obj();
      v69 = buf[0];
      if (os_log_type_enabled(v68, buf[0]))
      {
        *v113 = 136446210;
        *&v113[4] = "nw_connection_send_file_at_path_with_progress";
        _os_log_impl(&dword_181A37000, v68, v69, "%{public}s called with null connection", v113, 0xCu);
      }

      goto LABEL_145;
    }

    if (v107 != 1)
    {
      v68 = __nwlog_obj();
      v83 = buf[0];
      if (os_log_type_enabled(v68, buf[0]))
      {
        *v113 = 136446210;
        *&v113[4] = "nw_connection_send_file_at_path_with_progress";
        _os_log_impl(&dword_181A37000, v68, v83, "%{public}s called with null connection, backtrace limit exceeded", v113, 0xCu);
      }

      goto LABEL_145;
    }

    backtrace_string = __nw_create_backtrace_string();
    v68 = __nwlog_obj();
    v73 = buf[0];
    v74 = os_log_type_enabled(v68, buf[0]);
    if (!backtrace_string)
    {
      if (v74)
      {
        *v113 = 136446210;
        *&v113[4] = "nw_connection_send_file_at_path_with_progress";
        _os_log_impl(&dword_181A37000, v68, v73, "%{public}s called with null connection, no backtrace", v113, 0xCu);
      }

      goto LABEL_145;
    }

    if (v74)
    {
      *v113 = 136446466;
      *&v113[4] = "nw_connection_send_file_at_path_with_progress";
      *&v113[12] = 2082;
      *&v113[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v68, v73, "%{public}s called with null connection, dumping backtrace:%{public}s", v113, 0x16u);
    }

    goto LABEL_115;
  }

  v14 = v13;
  if (v13)
  {
    *v113 = 0;
    *&v113[8] = v113;
    *&v113[16] = 0x3032000000;
    v114 = __Block_byref_object_copy__24471;
    v115 = __Block_byref_object_dispose__24472;
    v116 = 0;
    v107 = 0;
    v108 = &v107;
    v109 = 0x2020000000;
    v110 = a4;
    v15 = open(a2, 4);
    if (v15 == -1)
    {
      posix_error = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
      v37 = *(*&v113[8] + 40);
      *(*&v113[8] + 40) = posix_error;

      v16 = 0;
      v17 = *(*&v113[8] + 40);
      v14 = v102;
    }

    else
    {
      v16 = nw_fd_wrapper_create(v15);
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = __nw_connection_send_file_at_path_with_progress_block_invoke;
      v106[3] = &unk_1E6A2ED68;
      v106[4] = v113;
      v106[5] = &v107;
      nw_fd_wrapper_get_fd(v16, v106);
      v17 = *(*&v113[8] + 40);
      if (!v17 && v16)
      {
        v18 = *(v12 + 2);
        if (v18 && !_nw_parameters_get_logging_disabled(v18) && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v81 = gconnectionLogObj;
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            v82 = *(v12 + 112);
            *buf = 136446722;
            *&buf[4] = "nw_connection_send_file_at_path_with_progress";
            *&buf[12] = 1024;
            *&buf[14] = v82;
            *&buf[18] = 2112;
            *&buf[20] = v16;
            _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] attempting file write request on fd: %@", buf, 0x1Cu);
          }

          v14 = v102;
        }

        v19 = v108[3];
        v20 = v12;
        v21 = v12;
        v22 = v16;
        v23 = v101;
        v24 = v14;
        v100 = v22;
        v97 = v23;
        v99 = v24;
        if (v23 == &__block_literal_global_10_44685)
        {
          v41 = v21[2];
          v12 = v21;
          if (v41 && !_nw_parameters_get_logging_disabled(v41))
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v42 = gconnectionLogObj;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v43 = v20[112];
              *buf = 136446722;
              *&buf[4] = "nw_connection_send_file_internal";
              *&buf[12] = 1024;
              *&buf[14] = v43;
              *&buf[18] = 2082;
              *&buf[20] = "Cannot send replies on new inbound message context";
              _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s [C%u] %{public}s, sending error callback", buf, 0x1Cu);
            }
          }

          v44 = v20[48];
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL32nw_connection_send_file_internalP24NWConcrete_nw_connectionPU27objcproto16OS_nw_fd_wrapper8NSObjectPU32objcproto21OS_nw_content_contextS1_mbU13block_pointerFbmbPU22objcproto11OS_nw_errorS1_E_block_invoke;
          *&buf[24] = &unk_1E6A3CE48;
          v118 = v99;
          nw_connection_async_client_if_needed_with_override(v20, 0, v44, buf);
          v45 = v118;
          goto LABEL_93;
        }

        v25 = v24;
        v94 = v21;
        if (v23)
        {
          v26 = v23;
        }

        else
        {
          v26 = &__block_literal_global_44658;
        }

        v27 = v26;
        v93 = v22;
        v28 = v27;
        v96 = v20;
        aBlock = v25;
        v98 = v28;
        if (v19 || (a5 & 1) != 0 || v28 != &__block_literal_global_6_44667 && v28 != &__block_literal_global_44658 && v28 != &__block_literal_global_8_44676 && v28 != &__block_literal_global_10_44685)
        {
          v29 = objc_alloc_init(NWConcrete_nw_write_request);
          v30 = v29;
          v12 = v94;
          if (v29)
          {
            objc_storeStrong(&v29->context, v26);
            objc_storeStrong(v30 + 13, 0);
            *(v30 + 128) = v30[32] & 0xFE | a5;
            objc_storeStrong(v30 + 5, a1);
            v30[12] = qos_class_self();
            v31 = v98;
            v32 = v31;
            v33 = 0.5;
            if (v31 != &__block_literal_global_10_44685 && v31 != &__block_literal_global_8_44676 && v31 != &__block_literal_global_6_44667 && v31 != &__block_literal_global_44658 && (*(v31 + 118) & 1) == 0)
            {
              v33 = v31[10];
            }

            *(v30 + 15) = v33;
            if (a5)
            {
              v34 = v32;
              v35 = 0;
              if (v32 != &__block_literal_global_44658 && v32 != &__block_literal_global_10_44685)
              {
                v35 = 8;
                if (v32 != &__block_literal_global_6_44667 && v32 != &__block_literal_global_8_44676)
                {
                  v35 = 8 * (*(v34 + 118) & 1);
                }
              }
            }

            else
            {
              v35 = 0;
            }

            *(v30 + 128) = v30[32] & 0xF7 | v35;
            objc_storeStrong(v30 + 9, v16);
            *(v30 + 12) = v19;
            v50 = _Block_copy(aBlock);
            v51 = *(v30 + 4);
            *(v30 + 4) = v50;

            v30[22] = 200;
            *(v30 + 128) &= ~0x20u;
            if (_nw_signposts_once != -1)
            {
              dispatch_once(&_nw_signposts_once, &__block_literal_global_35515);
            }

            if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
            {
              v90 = *(v30 + 7);
              if (v90)
              {
                dispatch_data_get_size(v90);
              }

              v92 = *(v30 + 8);
              if (v92)
              {
                nw_content_context_get_is_final(v92);
              }

              v12 = v94;
              kdebug_trace();
            }

            v30 = v30;
            v52 = v30;
            goto LABEL_71;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v46 = gLogObj;
          *buf = 136446210;
          *&buf[4] = "nw_write_request_create_with_file";
          v47 = _os_log_send_and_compose_impl();

          v112 = OS_LOG_TYPE_ERROR;
          v111 = 0;
          if (__nwlog_fault(v47, &v112, &v111))
          {
            if (v112 == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v48 = gLogObj;
              v49 = v112;
              if (os_log_type_enabled(v48, v112))
              {
                *buf = 136446210;
                *&buf[4] = "nw_write_request_create_with_file";
                _os_log_impl(&dword_181A37000, v48, v49, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed", buf, 0xCu);
              }
            }

            else if (v111 == 1)
            {
              v53 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v48 = gLogObj;
              v54 = v112;
              v55 = os_log_type_enabled(v48, v112);
              if (v53)
              {
                if (v55)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_write_request_create_with_file";
                  *&buf[12] = 2082;
                  *&buf[14] = v53;
                  _os_log_impl(&dword_181A37000, v48, v54, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v53);
                if (!v47)
                {
                  goto LABEL_70;
                }

                goto LABEL_69;
              }

              if (v55)
              {
                *buf = 136446210;
                *&buf[4] = "nw_write_request_create_with_file";
                _os_log_impl(&dword_181A37000, v48, v54, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v48 = gLogObj;
              v56 = v112;
              if (os_log_type_enabled(v48, v112))
              {
                *buf = 136446210;
                *&buf[4] = "nw_write_request_create_with_file";
                _os_log_impl(&dword_181A37000, v48, v56, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_write_request) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
              }
            }
          }

          if (!v47)
          {
LABEL_70:
            v52 = 0;
            goto LABEL_71;
          }

LABEL_69:
          free(v47);
          goto LABEL_70;
        }

        v77 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_write_request_create_with_file";
        v78 = _os_log_send_and_compose_impl();

        v12 = v94;
        v112 = OS_LOG_TYPE_ERROR;
        v111 = 0;
        if (__nwlog_fault(v78, &v112, &v111))
        {
          if (v112 == OS_LOG_TYPE_FAULT)
          {
            v79 = __nwlog_obj();
            v80 = v112;
            if (os_log_type_enabled(v79, v112))
            {
              *buf = 136446210;
              *&buf[4] = "nw_write_request_create_with_file";
              _os_log_impl(&dword_181A37000, v79, v80, "%{public}s Send content may only be nil if the request is marked as complete", buf, 0xCu);
            }
          }

          else
          {
            if (v111 == 1)
            {
              v85 = __nw_create_backtrace_string();
              v86 = __nwlog_obj();
              v87 = v112;
              v88 = os_log_type_enabled(v86, v112);
              if (v85)
              {
                if (v88)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_write_request_create_with_file";
                  *&buf[12] = 2082;
                  *&buf[14] = v85;
                  _os_log_impl(&dword_181A37000, v86, v87, "%{public}s Send content may only be nil if the request is marked as complete, dumping backtrace:%{public}s", buf, 0x16u);
                }

                v12 = v94;
                free(v85);
                goto LABEL_153;
              }

              if (v88)
              {
                *buf = 136446210;
                *&buf[4] = "nw_write_request_create_with_file";
                _os_log_impl(&dword_181A37000, v86, v87, "%{public}s Send content may only be nil if the request is marked as complete, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v86 = __nwlog_obj();
              v89 = v112;
              if (os_log_type_enabled(v86, v112))
              {
                *buf = 136446210;
                *&buf[4] = "nw_write_request_create_with_file";
                _os_log_impl(&dword_181A37000, v86, v89, "%{public}s Send content may only be nil if the request is marked as complete, backtrace limit exceeded", buf, 0xCu);
              }
            }

            v12 = v94;
          }
        }

LABEL_153:
        if (v78)
        {
          free(v78);
        }

        v91 = v96[25];
        if (v91)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __nw_write_request_create_with_file_block_invoke;
          *&buf[24] = &unk_1E6A3CE48;
          v118 = aBlock;
          dispatch_async(v91, buf);
          v52 = 0;
          v30 = v118;
        }

        else
        {
          v30 = nw_error_create_posix_error(22);
          v52 = 0;
          (*(aBlock + 2))(aBlock, 0, 0, v30);
          v12 = v94;
        }

LABEL_71:

        if (v52)
        {
          nw_connection_add_write_request(v96, v52);
LABEL_92:

          v45 = v98;
LABEL_93:

          v16 = v100;
LABEL_94:
          _Block_object_dispose(&v107, 8);

          _Block_object_dispose(v113, 8);
          v65 = v102;
          goto LABEL_95;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v57 = gLogObj;
        *buf = 136446210;
        *&buf[4] = "nw_connection_send_file_internal";
        v58 = _os_log_send_and_compose_impl();

        v112 = OS_LOG_TYPE_ERROR;
        v111 = 0;
        if (__nwlog_fault(v58, &v112, &v111))
        {
          if (v112 == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v59 = gLogObj;
            v60 = v112;
            if (os_log_type_enabled(v59, v112))
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_send_file_internal";
              _os_log_impl(&dword_181A37000, v59, v60, "%{public}s nw_write_request_create failed", buf, 0xCu);
            }
          }

          else if (v111 == 1)
          {
            v61 = __nw_create_backtrace_string();
            v59 = __nwlog_obj();
            v62 = v112;
            v63 = os_log_type_enabled(v59, v112);
            if (v61)
            {
              if (v63)
              {
                *buf = 136446466;
                *&buf[4] = "nw_connection_send_file_internal";
                *&buf[12] = 2082;
                *&buf[14] = v61;
                _os_log_impl(&dword_181A37000, v59, v62, "%{public}s nw_write_request_create failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v61);
              if (!v58)
              {
                goto LABEL_92;
              }

              goto LABEL_91;
            }

            if (v63)
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_send_file_internal";
              _os_log_impl(&dword_181A37000, v59, v62, "%{public}s nw_write_request_create failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v59 = __nwlog_obj();
            v64 = v112;
            if (os_log_type_enabled(v59, v112))
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_send_file_internal";
              _os_log_impl(&dword_181A37000, v59, v64, "%{public}s nw_write_request_create failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v58)
        {
          goto LABEL_92;
        }

LABEL_91:
        free(v58);
        goto LABEL_92;
      }
    }

    if (!v17)
    {
      v38 = [[NWConcrete_nw_error alloc] initWithDomain:9 code:?];
      v39 = *(*&v113[8] + 40);
      *(*&v113[8] + 40) = v38;

      v14 = v102;
    }

    v40 = *(v12 + 48);
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __nw_connection_send_file_at_path_with_progress_block_invoke_44;
    v103[3] = &unk_1E6A2ED20;
    v104 = v14;
    v105 = v113;
    nw_connection_async_client_if_needed_with_override(v12, 0, v40, v103);

    goto LABEL_94;
  }

  v70 = __nwlog_obj();
  *v113 = 136446210;
  *&v113[4] = "nw_connection_send_file_at_path_with_progress";
  v67 = _os_log_send_and_compose_impl();

  buf[0] = 16;
  LOBYTE(v107) = 0;
  if (__nwlog_fault(v67, buf, &v107))
  {
    if (buf[0] == 17)
    {
      v68 = __nwlog_obj();
      v71 = buf[0];
      if (os_log_type_enabled(v68, buf[0]))
      {
        *v113 = 136446210;
        *&v113[4] = "nw_connection_send_file_at_path_with_progress";
        _os_log_impl(&dword_181A37000, v68, v71, "%{public}s called with null handler", v113, 0xCu);
      }

LABEL_145:

      goto LABEL_146;
    }

    if (v107 != 1)
    {
      v68 = __nwlog_obj();
      v84 = buf[0];
      if (os_log_type_enabled(v68, buf[0]))
      {
        *v113 = 136446210;
        *&v113[4] = "nw_connection_send_file_at_path_with_progress";
        _os_log_impl(&dword_181A37000, v68, v84, "%{public}s called with null handler, backtrace limit exceeded", v113, 0xCu);
      }

      goto LABEL_145;
    }

    backtrace_string = __nw_create_backtrace_string();
    v68 = __nwlog_obj();
    v75 = buf[0];
    v76 = os_log_type_enabled(v68, buf[0]);
    if (!backtrace_string)
    {
      if (v76)
      {
        *v113 = 136446210;
        *&v113[4] = "nw_connection_send_file_at_path_with_progress";
        _os_log_impl(&dword_181A37000, v68, v75, "%{public}s called with null handler, no backtrace", v113, 0xCu);
      }

      goto LABEL_145;
    }

    if (v76)
    {
      *v113 = 136446466;
      *&v113[4] = "nw_connection_send_file_at_path_with_progress";
      *&v113[12] = 2082;
      *&v113[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v68, v75, "%{public}s called with null handler, dumping backtrace:%{public}s", v113, 0x16u);
    }

LABEL_115:

    free(backtrace_string);
  }

LABEL_146:
  v65 = v102;
  if (v67)
  {
    free(v67);
  }

LABEL_95:
}

void sub_1824E1884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a40, 8);

  _Block_object_dispose((v41 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_connection_send_file_at_path_with_progress_block_invoke(uint64_t a1, int a2)
{
  memset(&v12, 0, sizeof(v12));
  if (fstat(a2, &v12) == -1)
  {
    posix_error = nw_error_create_posix_error(**(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8));
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = posix_error;
  }

  else
  {
    st_size = v12.st_size;
    if ((v12.st_mode & 0xF000) != 0x8000)
    {
      v4 = [[NWConcrete_nw_error alloc] initWithDomain:9 code:?];
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }

    v7 = *(*(a1 + 40) + 8);
    if (st_size < *(v7 + 24))
    {
      *(v7 + 24) = st_size;
    }
  }

  return 1;
}

void ___ZL32nw_connection_send_file_internalP24NWConcrete_nw_connectionPU27objcproto16OS_nw_fd_wrapper8NSObjectPU32objcproto21OS_nw_content_contextS1_mbU13block_pointerFbmbPU22objcproto11OS_nw_errorS1_E_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
  (*(v1 + 16))(v1, 0, 0);
}

void nw_connection_batch(nw_connection_t connection, dispatch_block_t batch_block)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = connection;
  v4 = batch_block;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_batch";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v8, &type, &v26))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_batch";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v26 == 1)
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
          *&buf[4] = "nw_connection_batch";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v8)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v8);
        goto LABEL_6;
      }

      if (v15)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_batch";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_batch";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v29 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __nw_connection_batch_block_invoke;
    v23[3] = &unk_1E6A3D738;
    v25 = buf;
    v6 = v3;
    v24 = v6;
    os_unfair_lock_lock(&v3[17]);
    __nw_connection_batch_block_invoke(v23);
    os_unfair_lock_unlock(&v3[17]);
    v5[2](v5);
    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_connection_batch_block_invoke_2;
      v21[3] = &unk_1E6A3D868;
      v22 = v6;
      nw_connection_async_if_needed(v22, v21);
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_6;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_batch";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (!__nwlog_fault(v8, &type, &v26))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_batch";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null batch_block", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v26 != 1)
  {
    v9 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_batch";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null batch_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
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
      *&buf[4] = "nw_connection_batch";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null batch_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v18)
  {
    *buf = 136446466;
    *&buf[4] = "nw_connection_batch";
    *&buf[12] = 2082;
    *&buf[14] = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null batch_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_41;
  }

LABEL_6:
}

void sub_1824E20E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_connection_batch_block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = (*(*(result + 32) + 109) & 0x20) != 0;
  *(*(result + 32) + 109) |= 0x20u;
  return result;
}

void __nw_connection_batch_block_invoke_2(uint64_t a1)
{
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__24471;
  v51 = __Block_byref_object_dispose__24472;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__24471;
  v45 = __Block_byref_object_dispose__24472;
  v46 = 0;
  v2 = *(a1 + 32);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __nw_connection_batch_block_invoke_3;
  v37[3] = &unk_1E6A36148;
  v38 = v2;
  v39 = &v47;
  v40 = &v41;
  os_unfair_lock_lock(v2 + 34);
  __nw_connection_batch_block_invoke_3(v37);
  os_unfair_lock_unlock(v2 + 34);
  v3 = v48[5];
  if (!v3)
  {
    goto LABEL_32;
  }

  v4 = v3;
  v5 = v4;
  do
  {
    while (1)
    {
      v6 = v4;
      v5 = v5;
      v7 = *(v5 + 1);
      if (v7)
      {
        v8 = v5[128];
        if ((v8 & 3) == 0 && !*(v5 + 14) && !*(v7 + 14) && *(v5 + 8) == *(v7 + 8))
        {
          v9 = (v8 >> 2) & 1;
          v10 = v7[128];
          if (v9 == ((v10 >> 2) & 1) && ((v10 ^ v8) & 8) == 0 && *(v5 + 13) == *(v7 + 13) && !*(v5 + 9) && !*(v7 + 9))
          {
            break;
          }
        }
      }

      v11 = *(v5 + 1);
      v5 = v11;
      if (!v11)
      {
        goto LABEL_26;
      }
    }

    v36 = v7;
    if (!v9)
    {
      v12 = _Block_copy(*(v5 + 3));
      v13 = _Block_copy(*(v36 + 3));
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL35nw_write_request_coalesce_with_nextP27NWConcrete_nw_write_requestS0__block_invoke;
      aBlock[3] = &unk_1E6A31468;
      v54 = v12;
      v55 = v13;
      v14 = v12;
      v15 = v13;
      v16 = _Block_copy(aBlock);
      v17 = *(v5 + 3);
      *(v5 + 3) = v16;

      v7 = v36;
    }

    v18 = *(v7 + 7);
    if (*(v5 + 7))
    {
      if (!v18)
      {
        goto LABEL_21;
      }

      concat = dispatch_data_create_concat(*(v5 + 7), v18);
    }

    else
    {
      concat = v18;
    }

    v20 = *(v5 + 7);
    *(v5 + 7) = concat;

LABEL_21:
    objc_storeStrong(v5 + 1, *(v36 + 1));
    if (v4[2] == v36)
    {
      v4[2] = v5;
    }

    v21 = *(v36 + 1);
    *(v36 + 1) = 0;
  }

  while (v5);
LABEL_26:

  while (1)
  {
    v22 = v48;
    v23 = v48[5];
    if (!v23)
    {
      break;
    }

    v24 = v23;
    v25 = nw_write_request_list_remove_head(v22[5]);
    v26 = v48[5];
    v48[5] = v25;

    nw_connection_add_write_request_on_queue(*(a1 + 32), v24, 0);
  }

  v27 = *(a1 + 32);
  v28 = *(v27 + 144);
  if (v28 && (*(v27 + 109) & 0x40) != 0)
  {
    nw_endpoint_handler_service_writes(v28);
  }

LABEL_32:
  v29 = v42;
  v30 = v42[5];
  if (v30)
  {
    do
    {
      v31 = v30;
      v32 = nw_read_request_list_remove_head(v29[5]);
      v33 = v42[5];
      v42[5] = v32;

      nw_connection_add_read_request_on_queue(*(a1 + 32), v31, 0);
      v29 = v42;
      v30 = v42[5];
    }

    while (v30);
    v34 = *(a1 + 32);
    v35 = *(v34 + 144);
    if (v35 && (*(v34 + 109) & 0x40) != 0)
    {
      nw_endpoint_handler_service_reads(v35);
    }
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);
}

void sub_1824E2550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

void __nw_connection_batch_block_invoke_3(void *a1)
{
  *(a1[4] + 109) &= ~0x20u;
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 112));
  v2 = a1[4];
  v3 = *(v2 + 112);
  *(v2 + 112) = 0;

  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 120));
  v4 = a1[4];
  v5 = *(v4 + 120);
  *(v4 + 120) = 0;
}

uint64_t nw_connection_write(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      if (v7 == &__block_literal_global_47)
      {
        v9 = 1;
        nw_connection_send(v5, v6, &__block_literal_global_44658, 1, &__block_literal_global_24512);
      }

      else
      {
        completion[0] = MEMORY[0x1E69E9820];
        completion[1] = 3221225472;
        completion[2] = __nw_connection_write_block_invoke;
        completion[3] = &unk_1E6A39D90;
        v25 = v7;
        nw_connection_send(v5, v6, &__block_literal_global_44658, 1, completion);

        v9 = 1;
      }

      goto LABEL_6;
    }

    v15 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_connection_write";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v12, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v29 = "nw_connection_write";
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null handler", buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v26 != 1)
      {
        v13 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v29 = "nw_connection_write";
          _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          v29 = "nw_connection_write";
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v21)
      {
        *buf = 136446466;
        v29 = "nw_connection_write";
        v30 = 2082;
        v31 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_connection_write";
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
          v29 = "nw_connection_write";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null data", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v26 != 1)
      {
        v13 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v29 = "nw_connection_write";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v19)
        {
          *buf = 136446210;
          v29 = "nw_connection_write";
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null data, no backtrace", buf, 0xCu);
        }

        goto LABEL_38;
      }

      if (v19)
      {
        *buf = 136446466;
        v29 = "nw_connection_write";
        v30 = 2082;
        v31 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_26:

      free(backtrace_string);
    }
  }

LABEL_39:
  if (v12)
  {
    free(v12);
  }

  v9 = 0;
LABEL_6:

  return v9;
}

void __nw_connection_write_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t nw_connection_write_multiple(void *a1, uint64_t a2, int a3, void *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      *v65 = 0;
      *&v65[8] = v65;
      *&v65[16] = 0x2020000000;
      v66 = 0;
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __nw_connection_write_multiple_block_invoke;
      v55[3] = &unk_1E6A3D738;
      v57 = v65;
      v10 = v7;
      v56 = v10;
      os_unfair_lock_lock(v7 + 34);
      __nw_connection_write_multiple_block_invoke(v55);
      os_unfair_lock_unlock(v7 + 34);
      if (*(*&v65[8] + 24))
      {
        if (a2)
        {
          if (a3)
          {
            batch_block[0] = MEMORY[0x1E69E9820];
            batch_block[1] = 3221225472;
            batch_block[2] = __nw_connection_write_multiple_block_invoke_2;
            batch_block[3] = &unk_1E6A2EDD8;
            v49 = v9;
            v51 = a3;
            v48 = v10;
            v50 = a2;
            nw_connection_batch(v48, batch_block);

            v11 = 1;
LABEL_49:

            _Block_object_dispose(v65, 8);
            goto LABEL_50;
          }

          v24 = "datagram_count parameter is 0";
          v25 = *&v10[4]._os_unfair_lock_opaque;
          if (!v25)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v24 = "datagrams parameter is nil";
          v25 = *&v10[4]._os_unfair_lock_opaque;
          if (!v25)
          {
LABEL_40:
            os_unfair_lock_opaque = v10[48]._os_unfair_lock_opaque;
            v52[0] = MEMORY[0x1E69E9820];
            v52[1] = 3221225472;
            v52[2] = __nw_connection_write_multiple_block_invoke_50;
            v52[3] = &unk_1E6A3CE48;
            v53 = v9;
            nw_connection_async_client_if_needed_with_override(v10, 0, os_unfair_lock_opaque, v52);

LABEL_48:
            v11 = 0;
            goto LABEL_49;
          }
        }

        if (!_nw_parameters_get_logging_disabled(v25))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v28 = gconnectionLogObj;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = v10[112]._os_unfair_lock_opaque;
            *buf = 136446722;
            v60 = "nw_connection_write_multiple";
            v61 = 1024;
            v62 = v29;
            v63 = 2082;
            v64 = v24;
            _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_ERROR, "%{public}s [C%u] %{public}s, sending error callback", buf, 0x1Cu);
          }
        }

        goto LABEL_40;
      }

      v12 = *&v10[4]._os_unfair_lock_opaque;
      if (!v12 || _nw_parameters_get_logging_disabled(v12))
      {
        goto LABEL_48;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v13 = gconnectionLogObj;
      v14 = v10[112]._os_unfair_lock_opaque;
      *buf = 136446466;
      v60 = "nw_connection_write_multiple";
      v61 = 1024;
      v62 = v14;
      v15 = _os_log_send_and_compose_impl();

      v58 = OS_LOG_TYPE_ERROR;
      v54 = 0;
      if (__nwlog_fault(v15, &v58, &v54))
      {
        if (v58 == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v16 = gconnectionLogObj;
          v17 = v58;
          if (os_log_type_enabled(v16, v58))
          {
            v18 = v10[112]._os_unfair_lock_opaque;
            *buf = 136446466;
            v60 = "nw_connection_write_multiple";
            v61 = 1024;
            v62 = v18;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s [C%u] no client queue", buf, 0x12u);
          }
        }

        else if (v54 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          if (backtrace_string)
          {
            v20 = backtrace_string;
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v21 = gconnectionLogObj;
            v22 = v58;
            if (os_log_type_enabled(v21, v58))
            {
              v23 = v10[112]._os_unfair_lock_opaque;
              *buf = 136446722;
              v60 = "nw_connection_write_multiple";
              v61 = 1024;
              v62 = v23;
              v63 = 2082;
              v64 = v20;
              _os_log_impl(&dword_181A37000, v21, v22, "%{public}s [C%u] no client queue, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v20);
            if (!v15)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v16 = gconnectionLogObj;
          v31 = v58;
          if (os_log_type_enabled(v16, v58))
          {
            v32 = v10[112]._os_unfair_lock_opaque;
            *buf = 136446466;
            v60 = "nw_connection_write_multiple";
            v61 = 1024;
            v62 = v32;
            _os_log_impl(&dword_181A37000, v16, v31, "%{public}s [C%u] no client queue, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v16 = gconnectionLogObj;
          v26 = v58;
          if (os_log_type_enabled(v16, v58))
          {
            v27 = v10[112]._os_unfair_lock_opaque;
            *buf = 136446466;
            v60 = "nw_connection_write_multiple";
            v61 = 1024;
            v62 = v27;
            _os_log_impl(&dword_181A37000, v16, v26, "%{public}s [C%u] no client queue, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

      if (!v15)
      {
        goto LABEL_48;
      }

LABEL_47:
      free(v15);
      goto LABEL_48;
    }

    v38 = __nwlog_obj();
    *v65 = 136446210;
    *&v65[4] = "nw_connection_write_multiple";
    v35 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    v58 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v35, buf, &v58))
    {
      if (buf[0] == 17)
      {
        v36 = __nwlog_obj();
        v39 = buf[0];
        if (os_log_type_enabled(v36, buf[0]))
        {
          *v65 = 136446210;
          *&v65[4] = "nw_connection_write_multiple";
          _os_log_impl(&dword_181A37000, v36, v39, "%{public}s called with null handler", v65, 0xCu);
        }

LABEL_82:

        goto LABEL_83;
      }

      if (v58 != OS_LOG_TYPE_INFO)
      {
        v36 = __nwlog_obj();
        v46 = buf[0];
        if (os_log_type_enabled(v36, buf[0]))
        {
          *v65 = 136446210;
          *&v65[4] = "nw_connection_write_multiple";
          _os_log_impl(&dword_181A37000, v36, v46, "%{public}s called with null handler, backtrace limit exceeded", v65, 0xCu);
        }

        goto LABEL_82;
      }

      v40 = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v43 = buf[0];
      v44 = os_log_type_enabled(v36, buf[0]);
      if (!v40)
      {
        if (v44)
        {
          *v65 = 136446210;
          *&v65[4] = "nw_connection_write_multiple";
          _os_log_impl(&dword_181A37000, v36, v43, "%{public}s called with null handler, no backtrace", v65, 0xCu);
        }

        goto LABEL_82;
      }

      if (v44)
      {
        *v65 = 136446466;
        *&v65[4] = "nw_connection_write_multiple";
        *&v65[12] = 2082;
        *&v65[14] = v40;
        _os_log_impl(&dword_181A37000, v36, v43, "%{public}s called with null handler, dumping backtrace:%{public}s", v65, 0x16u);
      }

      goto LABEL_70;
    }
  }

  else
  {
    v34 = __nwlog_obj();
    *v65 = 136446210;
    *&v65[4] = "nw_connection_write_multiple";
    v35 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    v58 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v35, buf, &v58))
    {
      if (buf[0] == 17)
      {
        v36 = __nwlog_obj();
        v37 = buf[0];
        if (os_log_type_enabled(v36, buf[0]))
        {
          *v65 = 136446210;
          *&v65[4] = "nw_connection_write_multiple";
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null connection", v65, 0xCu);
        }

        goto LABEL_82;
      }

      if (v58 != OS_LOG_TYPE_INFO)
      {
        v36 = __nwlog_obj();
        v45 = buf[0];
        if (os_log_type_enabled(v36, buf[0]))
        {
          *v65 = 136446210;
          *&v65[4] = "nw_connection_write_multiple";
          _os_log_impl(&dword_181A37000, v36, v45, "%{public}s called with null connection, backtrace limit exceeded", v65, 0xCu);
        }

        goto LABEL_82;
      }

      v40 = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v41 = buf[0];
      v42 = os_log_type_enabled(v36, buf[0]);
      if (!v40)
      {
        if (v42)
        {
          *v65 = 136446210;
          *&v65[4] = "nw_connection_write_multiple";
          _os_log_impl(&dword_181A37000, v36, v41, "%{public}s called with null connection, no backtrace", v65, 0xCu);
        }

        goto LABEL_82;
      }

      if (v42)
      {
        *v65 = 136446466;
        *&v65[4] = "nw_connection_write_multiple";
        *&v65[12] = 2082;
        *&v65[14] = v40;
        _os_log_impl(&dword_181A37000, v36, v41, "%{public}s called with null connection, dumping backtrace:%{public}s", v65, 0x16u);
      }

LABEL_70:

      free(v40);
    }
  }

LABEL_83:
  if (v35)
  {
    free(v35);
  }

  v11 = 0;
LABEL_50:

  return v11;
}

void sub_1824E3698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  _Block_object_dispose((v34 - 160), 8);

  _Unwind_Resume(a1);
}

void __nw_connection_write_multiple_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == &__block_literal_global_47)
  {
    if (*(a1 + 56))
    {
      v7 = 0;
      do
      {
        nw_connection_send(*(a1 + 32), *(*(a1 + 48) + 8 * v7++), &__block_literal_global_44658, 1, &__block_literal_global_24512);
      }

      while (v7 < *(a1 + 56));
    }
  }

  else
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    v2 = dispatch_group_create();
    if (*(a1 + 56))
    {
      v3 = 0;
      do
      {
        dispatch_group_enter(v2);
        v4 = *(a1 + 32);
        v5 = *(*(a1 + 48) + 8 * v3);
        completion[0] = MEMORY[0x1E69E9820];
        completion[1] = 3221225472;
        completion[2] = __nw_connection_write_multiple_block_invoke_3;
        completion[3] = &unk_1E6A2EDB0;
        v13 = v14;
        v12 = v2;
        nw_connection_send(v4, v5, &__block_literal_global_44658, 1, completion);

        ++v3;
      }

      while (v3 < *(a1 + 56));
    }

    v6 = *(*(a1 + 32) + 200);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __nw_connection_write_multiple_block_invoke_4;
    v8[3] = &unk_1E6A2ED20;
    v9 = *(a1 + 40);
    v10 = v14;
    dispatch_group_notify(v2, v6, v8);

    _Block_object_dispose(v14, 8);
  }
}

void sub_1824E3928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __nw_connection_write_multiple_block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = v5;
    v4 = v3[3];

    if (v4)
    {
      *(*(*(a1 + 40) + 8) + 24) = v4;
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

BOOL nw_connection_write_close(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    if (v4 == &__block_literal_global_47)
    {
      nw_connection_send(v3, 0, &__block_literal_global_6_44667, 1, &__block_literal_global_24512);
    }

    else
    {
      completion[0] = MEMORY[0x1E69E9820];
      completion[1] = 3221225472;
      completion[2] = __nw_connection_write_close_block_invoke;
      completion[3] = &unk_1E6A39D90;
      v16 = v4;
      nw_connection_send(v3, 0, &__block_literal_global_6_44667, 1, completion);
    }

    goto LABEL_5;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_connection_write_close";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v8, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_connection_write_close";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v17 == 1)
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
          v20 = "nw_connection_write_close";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 136446210;
        v20 = "nw_connection_write_close";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v20 = "nw_connection_write_close";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

LABEL_5:

  return v5 != 0;
}

void __nw_connection_write_close_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t nw_connection_get_unsent_byte_count(void *a1)
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
    v13[2] = __nw_connection_get_unsent_byte_count_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v14 = v1;
    v15 = buf;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_get_unsent_byte_count_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_get_unsent_byte_count";
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
        *&buf[4] = "nw_connection_get_unsent_byte_count";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
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
          *&buf[4] = "nw_connection_get_unsent_byte_count";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_get_unsent_byte_count";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_get_unsent_byte_count";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
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

void __nw_connection_get_unsent_byte_count_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x40) != 0)
  {
    v6 = *(v2 + 144);
    v7 = v6;
    if (v6)
    {
      os_unfair_lock_lock(v6 + 28);
      if (v7[29]._os_unfair_lock_opaque != 2)
      {
        v13 = 0;
        goto LABEL_20;
      }

      v8 = *&v7[66]._os_unfair_lock_opaque;
      v9 = v8;
      if (v8)
      {
        os_unfair_lock_lock(v8 + 220);
        *type = 0;
        v31 = type;
        v32 = 0x2020000000;
        os_unfair_lock_opaque = v9[224]._os_unfair_lock_opaque;
        v10 = *&v9[222]._os_unfair_lock_opaque;
        if ((v9[8]._os_unfair_lock_opaque & 2) == 0)
        {
          v11 = *&v9[234]._os_unfair_lock_opaque;
          if (v11)
          {
            v12 = nw_endpoint_handler_copy_connected_socket_wrapper(v11);

            v10 = v12;
          }
        }

        if (v10)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __nw_endpoint_flow_get_unsent_byte_count_block_invoke;
          v36 = &unk_1E6A3C0D8;
          v37 = type;
          nw_fd_wrapper_get_fd(v10, buf);
        }

        os_unfair_lock_unlock(v9 + 220);
        v13 = *(v31 + 6);

        _Block_object_dispose(type, 8);
LABEL_18:

LABEL_20:
        os_unfair_lock_unlock(v7 + 28);
LABEL_21:

        *(*(*(a1 + 40) + 8) + 24) = v13;
        return;
      }

      v18 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_endpoint_flow_get_unsent_byte_count";
      v19 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v34 = 0;
      if (__nwlog_fault(v19, type, &v34))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v20 = __nwlog_obj();
          v21 = type[0];
          if (os_log_type_enabled(v20, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_flow_get_unsent_byte_count";
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null endpoint_flow", buf, 0xCu);
          }
        }

        else if (v34 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v20 = __nwlog_obj();
          v27 = type[0];
          v28 = os_log_type_enabled(v20, type[0]);
          if (backtrace_string)
          {
            if (v28)
            {
              *buf = 136446466;
              *&buf[4] = "nw_endpoint_flow_get_unsent_byte_count";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_58;
          }

          if (v28)
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_flow_get_unsent_byte_count";
            _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v20 = __nwlog_obj();
          v29 = type[0];
          if (os_log_type_enabled(v20, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_flow_get_unsent_byte_count";
            _os_log_impl(&dword_181A37000, v20, v29, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_58:
      if (v19)
      {
        free(v19);
      }

      v13 = 0;
      goto LABEL_18;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_get_unsent_byte_count";
    v15 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v15, type, &v34))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type[0];
        if (os_log_type_enabled(v16, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_unsent_byte_count";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v34 == 1)
      {
        v22 = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v23 = type[0];
        v24 = os_log_type_enabled(v16, type[0]);
        if (v22)
        {
          if (v24)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_handler_get_unsent_byte_count";
            *&buf[12] = 2082;
            *&buf[14] = v22;
            _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v22);
          goto LABEL_52;
        }

        if (v24)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_unsent_byte_count";
          _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v25 = type[0];
        if (os_log_type_enabled(v16, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_get_unsent_byte_count";
          _os_log_impl(&dword_181A37000, v16, v25, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_52:
    if (v15)
    {
      free(v15);
    }

    v13 = 0;
    goto LABEL_21;
  }

  v3 = *(v2 + 16);
  if (v3 && !_nw_parameters_get_logging_disabled(v3))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 448);
      *buf = 136446466;
      *&buf[4] = "nw_connection_get_unsent_byte_count_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = v5;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Client called nw_connection_get_unsent_byte_count on unconnected nw_connection", buf, 0x12u);
    }
  }
}

void sub_1824E478C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_connection_tls_apply(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      *buf = 136446210;
      v27 = "nw_connection_tls_apply";
      v7 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v24 = 0;
      if (!__nwlog_fault(v7, &type, &v24))
      {
        goto LABEL_20;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v27 = "nw_connection_tls_apply";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s nw_connection_tls_apply is not implemented", buf, 0xCu);
        }

LABEL_19:

        goto LABEL_20;
      }

      if (v24 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v27 = "nw_connection_tls_apply";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s nw_connection_tls_apply is not implemented, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v12)
        {
          *buf = 136446210;
          v27 = "nw_connection_tls_apply";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s nw_connection_tls_apply is not implemented, no backtrace", buf, 0xCu);
        }

        goto LABEL_19;
      }

      if (v12)
      {
        *buf = 136446466;
        v27 = "nw_connection_tls_apply";
        v28 = 2082;
        v29 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s nw_connection_tls_apply is not implemented, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_12:

      free(backtrace_string);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v16 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_connection_tls_apply";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v7, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v27 = "nw_connection_tls_apply";
          _os_log_impl(&dword_181A37000, v8, v17, "%{public}s called with null apply_block", buf, 0xCu);
        }

        goto LABEL_19;
      }

      if (v24 != 1)
      {
        v8 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v27 = "nw_connection_tls_apply";
          _os_log_impl(&dword_181A37000, v8, v23, "%{public}s called with null apply_block, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          v27 = "nw_connection_tls_apply";
          _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null apply_block, no backtrace", buf, 0xCu);
        }

        goto LABEL_19;
      }

      if (v21)
      {
        *buf = 136446466;
        v27 = "nw_connection_tls_apply";
        v28 = 2082;
        v29 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null apply_block, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_12;
    }
  }

  else
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_connection_tls_apply";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v7, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v27 = "nw_connection_tls_apply";
          _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null connection", buf, 0xCu);
        }

        goto LABEL_19;
      }

      if (v24 != 1)
      {
        v8 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v27 = "nw_connection_tls_apply";
          _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_19;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (v19)
        {
          *buf = 136446210;
          v27 = "nw_connection_tls_apply";
          _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_19;
      }

      if (v19)
      {
        *buf = 136446466;
        v27 = "nw_connection_tls_apply";
        v28 = 2082;
        v29 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_12;
    }
  }

LABEL_20:
  if (v7)
  {
LABEL_21:
    free(v7);
  }

LABEL_22:
}

uint64_t nw_connection_modify_connected_protocol_stack_internal(void *a1, void *a2, char a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __nw_connection_modify_connected_protocol_stack_internal_block_invoke;
      v23[3] = &unk_1E6A2EE00;
      v24 = v5;
      v26 = a3;
      v25 = v7;
      nw_connection_async_if_needed(v24, v23);

      v8 = 1;
      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_connection_modify_connected_protocol_stack_internal";
    v11 = _os_log_send_and_compose_impl();

    v28 = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v11, &v28, &v27))
    {
      if (v28 == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v15 = v28;
        if (os_log_type_enabled(v12, v28))
        {
          *buf = 136446210;
          v30 = "nw_connection_modify_connected_protocol_stack_internal";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null modifier", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v27 != 1)
      {
        v12 = __nwlog_obj();
        v22 = v28;
        if (os_log_type_enabled(v12, v28))
        {
          *buf = 136446210;
          v30 = "nw_connection_modify_connected_protocol_stack_internal";
          _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null modifier, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v19 = v28;
      v20 = os_log_type_enabled(v12, v28);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v30 = "nw_connection_modify_connected_protocol_stack_internal";
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null modifier, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v20)
      {
        *buf = 136446466;
        v30 = "nw_connection_modify_connected_protocol_stack_internal";
        v31 = 2082;
        v32 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null modifier, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_connection_modify_connected_protocol_stack_internal";
    v11 = _os_log_send_and_compose_impl();

    v28 = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v11, &v28, &v27))
    {
      if (v28 == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = v28;
        if (os_log_type_enabled(v12, v28))
        {
          *buf = 136446210;
          v30 = "nw_connection_modify_connected_protocol_stack_internal";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null connection", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v27 != 1)
      {
        v12 = __nwlog_obj();
        v21 = v28;
        if (os_log_type_enabled(v12, v28))
        {
          *buf = 136446210;
          v30 = "nw_connection_modify_connected_protocol_stack_internal";
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = v28;
      v18 = os_log_type_enabled(v12, v28);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v30 = "nw_connection_modify_connected_protocol_stack_internal";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v30 = "nw_connection_modify_connected_protocol_stack_internal";
        v31 = 2082;
        v32 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_4:

  return v8;
}

void __nw_connection_modify_connected_protocol_stack_internal_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x40) != 0)
  {
    v6 = *(a1 + 48);
    v7 = *(v2 + 144);
    if (v6 == 1)
    {
      v8 = v7;
    }

    else
    {
      v8 = nw_endpoint_handler_copy_top_protocol_flow_handler(v7);
    }

    p_super = &v8->super;
    if (nw_endpoint_handler_modify_protocol_stack(v8, *(a1 + 40)))
    {
      goto LABEL_34;
    }

    v9 = *(*(a1 + 32) + 16);
    if (v9 && !_nw_parameters_get_logging_disabled(v9))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(*(a1 + 32) + 448);
        *buf = 136446466;
        v33 = "nw_connection_modify_connected_protocol_stack_internal_block_invoke";
        v34 = 1024;
        v35 = v11;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Failed to modify protocol stack, cancelling connection", buf, 0x12u);
      }
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 144);
    if (v13)
    {
      nw_endpoint_handler_cancel(v13, 0, 0);
LABEL_34:

      return;
    }

    v14 = *(v12 + 16);
    if (!v14 || _nw_parameters_get_logging_disabled(v14))
    {
      goto LABEL_34;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v15 = gconnectionLogObj;
    v16 = *(*(a1 + 32) + 448);
    *buf = 136446466;
    v33 = "nw_connection_modify_connected_protocol_stack_internal_block_invoke";
    v34 = 1024;
    v35 = v16;
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v17, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v18 = gconnectionLogObj;
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          v20 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v33 = "nw_connection_modify_connected_protocol_stack_internal_block_invoke";
          v34 = 1024;
          v35 = v20;
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s [C%u] No parent endpoint handler found", buf, 0x12u);
        }
      }

      else if (v30 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v22 = backtrace_string;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v23 = gconnectionLogObj;
          v24 = type;
          if (os_log_type_enabled(v23, type))
          {
            v25 = *(*(a1 + 32) + 448);
            *buf = 136446722;
            v33 = "nw_connection_modify_connected_protocol_stack_internal_block_invoke";
            v34 = 1024;
            v35 = v25;
            v36 = 2082;
            v37 = v22;
            _os_log_impl(&dword_181A37000, v23, v24, "%{public}s [C%u] No parent endpoint handler found, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v22);
          if (!v17)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v18 = gconnectionLogObj;
        v28 = type;
        if (os_log_type_enabled(v18, type))
        {
          v29 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v33 = "nw_connection_modify_connected_protocol_stack_internal_block_invoke";
          v34 = 1024;
          v35 = v29;
          _os_log_impl(&dword_181A37000, v18, v28, "%{public}s [C%u] No parent endpoint handler found, no backtrace", buf, 0x12u);
        }
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v18 = gconnectionLogObj;
        v26 = type;
        if (os_log_type_enabled(v18, type))
        {
          v27 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          v33 = "nw_connection_modify_connected_protocol_stack_internal_block_invoke";
          v34 = 1024;
          v35 = v27;
          _os_log_impl(&dword_181A37000, v18, v26, "%{public}s [C%u] No parent endpoint handler found, backtrace limit exceeded", buf, 0x12u);
        }
      }
    }

    if (!v17)
    {
      goto LABEL_34;
    }

LABEL_33:
    free(v17);
    goto LABEL_34;
  }

  v3 = *(v2 + 16);
  if (v3 && !_nw_parameters_get_logging_disabled(v3))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    p_super = gconnectionLogObj;
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 448);
      *buf = 136446466;
      v33 = "nw_connection_modify_connected_protocol_stack_internal_block_invoke";
      v34 = 1024;
      v35 = v5;
      _os_log_impl(&dword_181A37000, p_super, OS_LOG_TYPE_ERROR, "%{public}s [C%u] No connected endpoint handler found", buf, 0x12u);
    }

    goto LABEL_34;
  }
}
void tcp_connection_allow_client_socket_access(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_allow_client_socket_access";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v7, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v20 = "tcp_connection_allow_client_socket_access";
        v10 = "%{public}s called with null connection";
LABEL_24:
        v15 = v8;
        v16 = v9;
        goto LABEL_25;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v20 = "tcp_connection_allow_client_socket_access";
        v10 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_24;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v14)
        {
LABEL_26:

          if (!v7)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        *buf = 136446210;
        v20 = "tcp_connection_allow_client_socket_access";
        v10 = "%{public}s called with null connection, no backtrace";
        v15 = v8;
        v16 = v13;
LABEL_25:
        _os_log_impl(&dword_181A37000, v15, v16, v10, buf, 0xCu);
        goto LABEL_26;
      }

      if (v14)
      {
        *buf = 136446466;
        v20 = "tcp_connection_allow_client_socket_access";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v7)
    {
      goto LABEL_21;
    }

LABEL_20:
    free(v7);
    goto LABEL_21;
  }

  if ((v3[39]._os_unfair_lock_opaque & 0x10000000) != 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_allow_client_socket_access";
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called before tcp_connection_start", buf, 0xCu);
    }
  }

  else
  {
    os_unfair_lock_lock(v3 + 30);
    if (a2)
    {
      v5 = 0x80;
    }

    else
    {
      v5 = 0;
    }

    BYTE2(v4[39]._os_unfair_lock_opaque) = v5 & 0x80 | BYTE2(v4[39]._os_unfair_lock_opaque) & 0x7F;
    nw_parameters_set_allow_socket_access(*&v4[12]._os_unfair_lock_opaque, a2);
    os_unfair_lock_unlock(v4 + 30);
  }

LABEL_21:
}

uint64_t tcp_connection_copy_socket(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_copy_socket";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v7, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v22 = "tcp_connection_copy_socket";
        v10 = "%{public}s called with null connection";
LABEL_25:
        v16 = v8;
        v17 = v9;
        goto LABEL_26;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (!os_log_type_enabled(v8, type))
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v22 = "tcp_connection_copy_socket";
        v10 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_25;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v8, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_27:

          if (!v7)
          {
            goto LABEL_29;
          }

LABEL_28:
          free(v7);
          goto LABEL_29;
        }

        *buf = 136446210;
        v22 = "tcp_connection_copy_socket";
        v10 = "%{public}s called with null connection, no backtrace";
        v16 = v8;
        v17 = v12;
LABEL_26:
        _os_log_impl(&dword_181A37000, v16, v17, v10, buf, 0xCu);
        goto LABEL_27;
      }

      if (v13)
      {
        *buf = 136446466;
        v22 = "tcp_connection_copy_socket";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v7)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v3 = *(v1 + 2);
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "tcp_connection_copy_socket";
      v5 = "%{public}s API Misuse: Function must be called after tcp_connection_start";
      goto LABEL_12;
    }

LABEL_13:

LABEL_29:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_30;
  }

  if ((v2[158] & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "tcp_connection_copy_socket";
      v5 = "%{public}s Cannot get socket on a connection for which client socket access is disallowed.";
LABEL_12:
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, v5, buf, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  connected_socket = nw_connection_get_connected_socket(v3);
  if (connected_socket < 0)
  {
    goto LABEL_29;
  }

  v15 = dup(connected_socket);
LABEL_30:

  return v15;
}

uint64_t tcp_connection_get_hostname(void *a1, _BYTE *a2, unint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    *buf = 136446210;
    v33 = "tcp_connection_get_hostname";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v17, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v33 = "tcp_connection_get_hostname";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v30 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v24 = type;
        v25 = os_log_type_enabled(v18, type);
        if (backtrace_string)
        {
          if (v25)
          {
            *buf = 136446466;
            v33 = "tcp_connection_get_hostname";
            v34 = 2082;
            v35 = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v24, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v17)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (v25)
        {
          *buf = 136446210;
          v33 = "tcp_connection_get_hostname";
          _os_log_impl(&dword_181A37000, v18, v24, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v26 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v33 = "tcp_connection_get_hostname";
          _os_log_impl(&dword_181A37000, v18, v26, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v17)
    {
LABEL_25:
      v10 = 0;
LABEL_49:

      return v10;
    }

LABEL_24:
    free(v17);
    goto LABEL_25;
  }

  if (a2 && a3)
  {
    *a2 = 0;
  }

  v7 = v5[2];
  if (v7)
  {
    v8 = nw_connection_copy_host_endpoint(v7);
  }

  else
  {
    v20 = v6[5];
    if (!v20 || (v21 = v20, v22 = _nw_endpoint_get_type(v21), v21, v22 != 2))
    {
      v9 = 0;
      v10 = 0;
LABEL_48:

      goto LABEL_49;
    }

    v8 = v6[5];
  }

  v9 = v8;
  v10 = 0;
  if (!a2 || !v8)
  {
    goto LABEL_48;
  }

  v9 = v8;
  hostname = _nw_endpoint_get_hostname(v9);

  v12 = strlen(hostname);
  if (v12 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v12;
  }

  if (hostname)
  {
    if (a3 >= 2)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

  v27 = __nwlog_obj();
  os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v33 = "_strict_strlcpy";
  v28 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v28);
  if (!result)
  {
    free(v28);
    if (a3 >= 2)
    {
LABEL_14:
      v13 = 1;
      v14 = a3;
      while (1)
      {
        v15 = *hostname;
        *a2 = v15;
        if (!v15)
        {
          goto LABEL_48;
        }

        ++a2;
        ++hostname;
        if (--v14 <= 1)
        {
          goto LABEL_45;
        }
      }
    }

LABEL_44:
    v13 = a3;
LABEL_45:
    if (a3)
    {
      if (v13)
      {
        *a2 = 0;
      }
    }

    goto LABEL_48;
  }

  __break(1u);
  return result;
}

void tcp_connection_start(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = a1;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v4 = v3;
  if (!v2)
  {
    *buf = 136446210;
    *&buf[4] = "tcp_connection_start";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v18, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (!os_log_type_enabled(v19, type))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        *&buf[4] = "tcp_connection_start";
        v21 = "%{public}s called with null connection";
LABEL_38:
        v29 = v19;
        v30 = v20;
        goto LABEL_39;
      }

      if (v35 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (!os_log_type_enabled(v19, type))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        *&buf[4] = "tcp_connection_start";
        v21 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v27 = type;
      v28 = os_log_type_enabled(v19, type);
      if (!backtrace_string)
      {
        if (!v28)
        {
LABEL_40:

          if (!v18)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        *buf = 136446210;
        *&buf[4] = "tcp_connection_start";
        v21 = "%{public}s called with null connection, no backtrace";
        v29 = v19;
        v30 = v27;
LABEL_39:
        _os_log_impl(&dword_181A37000, v29, v30, v21, buf, 0xCu);
        goto LABEL_40;
      }

      if (v28)
      {
        *buf = 136446466;
        *&buf[4] = "tcp_connection_start";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v18)
    {
      goto LABEL_35;
    }

LABEL_34:
    free(v18);
    goto LABEL_35;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(v2 + 12);
    *buf = 136446466;
    *&buf[4] = "tcp_connection_start";
    *&buf[12] = 2048;
    *&buf[14] = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %llu starting", buf, 0x16u);
  }

  if (!*(v2 + 2))
  {
    v6 = nw_connection_create_with_id(*(v2 + 5), *(v2 + 6), 0, *(v2 + 12));
    v7 = *(v2 + 2);
    *(v2 + 2) = v6;

    nw_connection_set_queue(*(v2 + 2), *(v2 + 7));
    *(v2 + 12) = nw_connection_get_id(*(v2 + 2));
  }

  *(v2 + 159) |= 0x10u;
  objc_storeStrong(v2 + 11, a1);
  v8 = *(v2 + 2);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __tcp_connection_start_block_invoke;
  handler[3] = &unk_1E6A3D820;
  v9 = v2;
  v34 = v9;
  nw_connection_set_state_changed_handler(v8, handler);
  v10 = *(v2 + 2);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __tcp_connection_start_block_invoke_29;
  v31[3] = &unk_1E6A3CD80;
  v11 = v9;
  v32 = v11;
  nw_connection_set_path_changed_handler(v10, v31);
  v12 = *(v2 + 159);
  if ((v12 & 0x20) != 0)
  {
    tcp_connection_set_keepalive_handler_on_nw_connection(v11);
    v12 = *(v2 + 159);
    if ((v12 & 0x40) == 0)
    {
LABEL_8:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((*(v2 + 159) & 0x40) == 0)
  {
    goto LABEL_8;
  }

  tcp_connection_set_adaptive_read_handler_on_nw_connection(v11);
  if ((*(v2 + 159) & 0x80) == 0)
  {
LABEL_9:
    if (!v11[38])
    {
      goto LABEL_10;
    }

LABEL_24:
    v22 = v11;
    v23 = v22;
    v24 = *(v2 + 2);
    if (v24)
    {
      v25 = v11[38];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __tcp_connection_set_minimum_throughput_on_nw_connection_block_invoke;
      v38 = &unk_1E6A31398;
      v39 = v22;
      nw_connection_set_low_throughput_handler(v24, v25, buf);
    }

    v13 = *(v11 + 9);
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  tcp_connection_set_adaptive_write_handler_on_nw_connection(v11);
  if (v11[38])
  {
    goto LABEL_24;
  }

LABEL_10:
  v13 = *(v11 + 9);
  if (v13)
  {
LABEL_11:
    nw_connection_set_cancel_handler(*(v2 + 2), v13);
    v14 = *(v11 + 9);
    *(v11 + 9) = 0;
  }

LABEL_12:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v15 = gLogObj;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(v2 + 2);
    *buf = 136446466;
    *&buf[4] = "tcp_connection_start";
    *&buf[12] = 2048;
    *&buf[14] = v16;
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s starting tc_nwconn=%p", buf, 0x16u);
  }

  v17 = *(v2 + 2);
  if (v17)
  {
    nw_connection_start(v17);
  }

LABEL_35:
}

void __tcp_connection_start_block_invoke(uint64_t a1, int a2, void *a3)
{
  v81 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 120));
  v7 = *(a1 + 32);
  if (*(v7 + 156) != 255)
  {
    if (a2 > 2)
    {
      if (a2 != 3)
      {
        if (a2 == 5)
        {
          v8 = 3;
        }

        else
        {
          v8 = 0;
        }

        v9 = 0;
        if (a2 == 4)
        {
          v10 = 3;
        }

        else
        {
          v10 = v8;
        }

        if (!v6)
        {
LABEL_39:
          *buf = 0;
          *&buf[8] = 0;
          v68 = 0;
          v69 = 0;
          if (v10)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v39 = gLogObj;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              v40 = *(*(a1 + 32) + 96);
              v41 = off_1E6A313E0[v10 - 1];
              if (a2 > 5)
              {
                v42 = "unknown";
              }

              else
              {
                v42 = off_1E6A2F020[a2];
              }

              *handler = 136447234;
              *&handler[4] = "tcp_connection_start_block_invoke";
              *&handler[12] = 2048;
              *&handler[14] = v40;
              *&handler[22] = 2082;
              v74 = v41;
              *v75 = 2082;
              *&v75[2] = v42;
              v76 = 2114;
              v77 = v6;
              _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s %llu sending event %{public}s in response to state %{public}s and error %{public}@", handler, 0x34u);
            }

            v43 = tcp_connection_fillout_event_locked(*(a1 + 32), buf, v10, 0, 0, "nw_connection event");
            if (!v9)
            {
LABEL_54:
              v48 = *(a1 + 32);
              if ((v43 | v9) == 1)
              {
                v49 = _Block_copy(*(v48 + 64));
                v48 = *(a1 + 32);
              }

              else
              {
                v49 = 0;
              }

              os_unfair_lock_unlock((v48 + 120));
              if (!v43)
              {
LABEL_63:
                if (!v9)
                {
LABEL_69:

                  goto LABEL_70;
                }

                v54 = *(a1 + 32);
                v55 = v49;
                v56 = v55;
                if (!v55 || v54[156] == 255)
                {
                  v57 = v68;
                  if (!v68)
                  {
                    goto LABEL_68;
                  }
                }

                else
                {
                  v57 = v68;
                  (*(v55 + 2))(v55, v69, v68);
                  if (!v57)
                  {
LABEL_68:

                    goto LABEL_69;
                  }
                }

                free(v57);
                goto LABEL_68;
              }

              v50 = *(a1 + 32);
              v51 = v49;
              v52 = v51;
              if (!v51 || v50[156] == 255)
              {
                v53 = *buf;
                if (!*buf)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v53 = *buf;
                (*(v51 + 2))(v51, *&buf[8], *buf);
                if (!v53)
                {
LABEL_62:

                  goto LABEL_63;
                }
              }

              free(v53);
              goto LABEL_62;
            }
          }

          else
          {
            v43 = 0;
            if (!v9)
            {
              goto LABEL_54;
            }
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v44 = gLogObj;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            v45 = *(*(a1 + 32) + 96);
            v46 = off_1E6A313E0[v9 - 1];
            if (a2 > 5)
            {
              v47 = "unknown";
            }

            else
            {
              v47 = off_1E6A2F020[a2];
            }

            *handler = 136447234;
            *&handler[4] = "tcp_connection_start_block_invoke";
            *&handler[12] = 2048;
            *&handler[14] = v45;
            *&handler[22] = 2082;
            v74 = v46;
            *v75 = 2082;
            *&v75[2] = v47;
            v76 = 2114;
            v77 = v6;
            _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s %llu sending secondary event %{public}s in response to state %{public}s and error %{public}@", handler, 0x34u);
          }

          v9 = tcp_connection_fillout_event_locked(*(a1 + 32), &v68, v9, 0, 0, "nw_connection secondary event");
          goto LABEL_54;
        }

LABEL_38:
        objc_storeStrong((*(a1 + 32) + 24), a3);
        v37 = v6;
        v38 = v37[3];

        *(*(a1 + 32) + 112) = v38;
        goto LABEL_39;
      }

      v23 = nw_connection_used_tls(*(v7 + 16));
      v24 = *(a1 + 32);
      v26 = (v24 + 159);
      v25 = *(v24 + 159);
      if ((~v25 & 3) == 0)
      {
        v9 = 0;
        v10 = 0;
        goto LABEL_37;
      }

      v9 = 0;
      if (v25 & v23)
      {
        v10 = 8;
      }

      else
      {
        *v26 = v25 | 1;
        v24 = *(a1 + 32);
        v10 = 1;
        if (v25 & 1) != 0 || ((v23 ^ 1))
        {
LABEL_37:
          *(v24 + 112) = 0;
          objc_storeStrong((*(a1 + 32) + 24), a3);
          *(*(a1 + 32) + 128) = tcp_connection_quality_from_path(*(a1 + 32), *(*(a1 + 32) + 32));
          v27 = *(a1 + 32);
          v29 = v27 + 2;
          v28 = v27[2];
          *handler = MEMORY[0x1E69E9820];
          *&handler[8] = 3221225472;
          *&handler[16] = __tcp_connection_set_nw_connection_callbacks_on_connected_block_invoke;
          v74 = &unk_1E6A3D868;
          v30 = v27;
          *v75 = v30;
          nw_connection_set_read_close_handler(v28, handler);
          v31 = *v29;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __tcp_connection_set_nw_connection_callbacks_on_connected_block_invoke_2;
          v79 = &unk_1E6A3D868;
          v32 = v30;
          v80 = v32;
          nw_connection_set_write_close_handler(v31, buf);
          v33 = *v29;
          v68 = MEMORY[0x1E69E9820];
          v69 = 3221225472;
          v70 = __tcp_connection_set_nw_connection_callbacks_on_connected_block_invoke_3;
          v71 = &unk_1E6A313C0;
          v34 = v32;
          v72 = v34;
          nw_connection_set_viability_changed_handler(v33, &v68);
          v35 = *v29;
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __tcp_connection_set_nw_connection_callbacks_on_connected_block_invoke_4;
          v66[3] = &unk_1E6A313C0;
          v67 = v34;
          v36 = v34;
          nw_connection_set_better_path_available_handler(v35, v66);

          if (!v6)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        LOBYTE(v25) = *(v24 + 159);
        v9 = 8;
        v26 = (v24 + 159);
      }

      *v26 = v25 | 2;
      v24 = *(a1 + 32);
      goto LABEL_37;
    }

    if (a2 == 1)
    {
      v9 = 0;
      v10 = (*(v7 + 159) << 29 >> 31) & 7;
      if (!v6)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    if (a2 != 2)
    {
      v9 = 0;
      v10 = 0;
      if (!v6)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v11 = v7;
    v12 = *(v11 + 10);
    if (v12)
    {
      dispatch_source_cancel(v12);
      v13 = *(v11 + 10);
      *(v11 + 10) = 0;
    }

    if ((*(v11 + 158) & 0x40) == 0)
    {
LABEL_93:

      v9 = 0;
      v10 = 0;
      *(*(a1 + 32) + 159) |= 4u;
      if (!v6)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v11 + 7));
    v15 = *(v11 + 10);
    *(v11 + 10) = v14;

    v16 = *(v11 + 10);
    if (v16)
    {
      *handler = MEMORY[0x1E69E9820];
      *&handler[8] = 3221225472;
      *&handler[16] = __tcp_connection_start_attempt_timer_locked_block_invoke;
      v74 = &unk_1E6A3D868;
      v17 = v11;
      *v75 = v17;
      dispatch_source_set_event_handler(v16, handler);
      if (v17[13])
      {
        v18 = v17[13];
      }

      else
      {
        v18 = 180000000000;
      }

      v19 = *(v11 + 10);
      v20 = dispatch_time(0, v18);
      dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
      dispatch_resume(*(v11 + 10));
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = v17[12];
        *buf = 136446722;
        *&buf[4] = "tcp_connection_start_attempt_timer_locked";
        *&buf[12] = 2048;
        *&buf[14] = v22;
        *&buf[22] = 2048;
        v79 = v18 / 0x3B9ACA00;
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %llu scheduling connection attempt timer for %llus", buf, 0x20u);
      }

      goto LABEL_93;
    }

    v58 = __nwlog_obj();
    *handler = 136446210;
    *&handler[4] = "tcp_connection_start_attempt_timer_locked";
    v59 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    LOBYTE(v68) = 0;
    if (__nwlog_fault(v59, buf, &v68))
    {
      if (buf[0] == 17)
      {
        v60 = __nwlog_obj();
        v61 = buf[0];
        if (os_log_type_enabled(v60, buf[0]))
        {
          *handler = 136446210;
          *&handler[4] = "tcp_connection_start_attempt_timer_locked";
          _os_log_impl(&dword_181A37000, v60, v61, "%{public}s dispatch_source_create failed", handler, 0xCu);
        }
      }

      else if (v68 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v60 = __nwlog_obj();
        v63 = buf[0];
        v64 = os_log_type_enabled(v60, buf[0]);
        if (backtrace_string)
        {
          if (v64)
          {
            *handler = 136446466;
            *&handler[4] = "tcp_connection_start_attempt_timer_locked";
            *&handler[12] = 2082;
            *&handler[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v60, v63, "%{public}s dispatch_source_create failed, dumping backtrace:%{public}s", handler, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_91;
        }

        if (v64)
        {
          *handler = 136446210;
          *&handler[4] = "tcp_connection_start_attempt_timer_locked";
          _os_log_impl(&dword_181A37000, v60, v63, "%{public}s dispatch_source_create failed, no backtrace", handler, 0xCu);
        }
      }

      else
      {
        v60 = __nwlog_obj();
        v65 = buf[0];
        if (os_log_type_enabled(v60, buf[0]))
        {
          *handler = 136446210;
          *&handler[4] = "tcp_connection_start_attempt_timer_locked";
          _os_log_impl(&dword_181A37000, v60, v65, "%{public}s dispatch_source_create failed, backtrace limit exceeded", handler, 0xCu);
        }
      }
    }

LABEL_91:
    if (v59)
    {
      free(v59);
    }

    goto LABEL_93;
  }

  os_unfair_lock_unlock((v7 + 120));
LABEL_70:
}

void __tcp_connection_start_block_invoke_29(uint64_t a1, void *a2)
{
  v26 = a2;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  os_unfair_lock_lock((*(a1 + 32) + 120));
  v4 = *(a1 + 32);
  if (*(v4 + 156) == 255)
  {
    os_unfair_lock_unlock((v4 + 120));
    v13 = 0;
    goto LABEL_39;
  }

  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5;
    status = _nw_path_get_status(v6);

    v8 = status == 1;
    v9 = v26;
    if (v26)
    {
LABEL_4:
      v10 = v9;
      v11 = _nw_path_get_status(v10);

      v12 = v11 == 1;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    v9 = v26;
    if (v26)
    {
      goto LABEL_4;
    }
  }

  v12 = 0;
LABEL_8:
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v14 = *(a1 + 32);
  if (*(v14 + 159))
  {
    v17 = tcp_connection_quality_from_path(*(a1 + 32), v26);
    if (*(v14 + 128) == v17)
    {
      v16 = 0;
    }

    else
    {
      if (v17 == 1)
      {
        v18 = "connection quality changed to bad";
      }

      else
      {
        v18 = "connection quality changed to normal";
      }

      *(v14 + 128) = v17;
      v16 = tcp_connection_fillout_event_locked(v14, &v29, 1073741833, 0, 0, v18);
    }

    v14 = *(a1 + 32);
    if (v8 == v12)
    {
      v15 = 0;
    }

    else
    {
      if (v12)
      {
        v19 = "conditions satisfied";
      }

      else
      {
        v19 = "conditions not satisfied";
      }

      v15 = tcp_connection_fillout_event_locked(*(a1 + 32), &v27, 1073741826, 0, 0, v19);
      v14 = *(a1 + 32);
      if (v15)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (!v16)
  {
    os_unfair_lock_unlock((v14 + 120));
    v13 = 0;
    goto LABEL_32;
  }

LABEL_24:
  v13 = _Block_copy(*(v14 + 64));
  os_unfair_lock_unlock((*(a1 + 32) + 120));
  if ((v16 & 1) == 0)
  {
LABEL_32:
    if (!v15)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v20 = *(a1 + 32);
  v21 = v13;
  v13 = v21;
  v22 = v29;
  if (v21 && v20[156] != 255)
  {
    (*(v21 + 2))(v21, v30, v29);
  }

  if (v22)
  {
    free(v22);
  }

  if (v15)
  {
LABEL_33:
    v23 = *(a1 + 32);
    v24 = v13;
    v13 = v24;
    v25 = v27;
    if (v24 && v23[156] != 255)
    {
      (*(v24 + 2))(v24, v28, v27);
    }

    if (v25)
    {
      free(v25);
    }
  }

LABEL_39:
}

uint64_t tcp_connection_quality_from_path(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    fallback_interface_index = _nw_path_get_fallback_interface_index(v6);

    if (fallback_interface_index && (nw_parameters_get_pid(*(v5 + 6)), nw_parameters_get_effective_bundle_id(*(v5 + 6)), (_symptoms_is_daemon_fallback_blacklisted() & 1) == 0))
    {
      if (*(v5 + 31) != 1)
      {
        goto LABEL_11;
      }

      if (tcp_connection_is_first_party_onceToken != -1)
      {
        dispatch_once(&tcp_connection_is_first_party_onceToken, &__block_literal_global_34688);
      }

      if (tcp_connection_is_first_party_is_first_party == 1)
      {
LABEL_11:

        v8 = 1;
        goto LABEL_6;
      }

      v10 = nw_parameters_multipath_fallback_allowed(*(v5 + 6));

      if (v10)
      {
        v8 = 1;
        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  v8 = 2;
LABEL_6:

  return v8;
}

void __tcp_connection_start_attempt_timer_locked_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v14 = 0;
  v15 = 0;
  os_unfair_lock_lock(v1 + 30);
  v2 = *(v1 + 6);
  if (!v2 || !_nw_parameters_get_logging_disabled(v2))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v1 + 12);
      *buf = 136446466;
      v17 = "tcp_connection_attempt_timer_fired_on_client_queue";
      v18 = 2048;
      v19 = v4;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %llu connection took too long to connect, cleaning up current attempt", buf, 0x16u);
    }
  }

  *(v1 + 28) = 60;
  if ((*(v1 + 158) & 0x40) != 0 && tcp_connection_fillout_event_locked(v1, &v14, 1073741832, 0, 0, "connection attempt timed out"))
  {
    v5 = _Block_copy(*(v1 + 8));
    v6 = 1;
    v7 = *(v1 + 2);
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    nw_connection_cancel(v7);
    goto LABEL_13;
  }

  v5 = 0;
  v6 = 0;
  v7 = *(v1 + 2);
  if (v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = *(v1 + 10);
  if (v8)
  {
    dispatch_source_cancel(v8);
    v9 = *(v1 + 10);
    *(v1 + 10) = 0;
  }

LABEL_13:
  os_unfair_lock_unlock(v1 + 30);
  if (v6)
  {
    v10 = v1;
    v11 = v5;
    v12 = v11;
    if (!v11 || v10[156] == 255)
    {
      v13 = v14;
      if (!v14)
      {
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      v13 = v14;
      (*(v11 + 2))(v11, v15, v14);
      if (!v13)
      {
        goto LABEL_20;
      }
    }

    free(v13);
    goto LABEL_20;
  }

LABEL_21:
}

void __tcp_connection_set_nw_connection_callbacks_on_connected_block_invoke_3(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v14 = 0;
  v15 = 0;
  os_unfair_lock_lock(v3 + 30);
  v4 = v3[158];
  if ((v4 & 0x20) != 0 || (a2 & 1) == 0)
  {
    if (a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = 32;
    }

    v3[158] = v4 & 0xDF | v5;
    if (((((v4 & 0x20) == 0) ^ a2) & 1) == 0 && v3[156] != 255)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v3 + 12);
        *buf = 136446466;
        v17 = "tcp_connection_send_viability_event_unlocked";
        v18 = 2048;
        v19 = v7;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s %llu notifying of connection non-viability event again", buf, 0x16u);
      }
    }

    v8 = a2 ? "viable" : "no longer viable";
    if (tcp_connection_fillout_event_locked(v3, &v14, 6, 0, 0, v8))
    {
      v9 = _Block_copy(*(v3 + 8));
      os_unfair_lock_unlock(v3 + 30);
      v10 = v3;
      v11 = v9;
      v12 = v11;
      if (!v11 || v10[156] == 255)
      {
        v13 = v14;
        if (!v14)
        {
LABEL_22:

          goto LABEL_23;
        }
      }

      else
      {
        v13 = v14;
        (*(v11 + 2))(v11, v15, v14);
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      free(v13);
      goto LABEL_22;
    }
  }

  os_unfair_lock_unlock(v3 + 30);
LABEL_23:
}

void __tcp_connection_set_nw_connection_callbacks_on_connected_block_invoke_4(uint64_t a1, int a2)
{
  v17 = *(a1 + 32);
  v18 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  os_unfair_lock_lock(v17 + 30);
  v3 = v17;
  v4 = *(v17 + 158);
  if (((v4 & 0x10) == 0) != a2)
  {
    os_unfair_lock_unlock(v17 + 30);
    v5 = 0;
    goto LABEL_27;
  }

  if (a2)
  {
    v6 = 16;
  }

  else
  {
    v6 = 0;
  }

  *(v17 + 158) = v4 & 0xEF | v6;
  if (a2)
  {
    v7 = "better route";
    v8 = tcp_connection_fillout_event_locked(v17, &v20, 5, 0, 0, "better route");
    v3 = v17;
  }

  else
  {
    v8 = 0;
    v7 = "no better route";
  }

  v9 = tcp_connection_fillout_event_locked(v3, &v18, 1073741831, 0, 0, v7);
  v10 = v9;
  if ((v8 & 1) == 0 && !v9)
  {
    os_unfair_lock_unlock(v17 + 30);
    v5 = 0;
    goto LABEL_20;
  }

  v5 = _Block_copy(*(v17 + 8));
  os_unfair_lock_unlock(v17 + 30);
  if ((v8 & 1) == 0)
  {
LABEL_20:
    if (!v10)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v11 = v17;
  v12 = v5;
  v5 = v12;
  v13 = v20;
  if (v12 && v11[156] != 255)
  {
    (*(v12 + 2))(v12, v21, v20);
  }

  if (v13)
  {
    free(v13);
  }

  if (v10)
  {
LABEL_21:
    v14 = v17;
    v15 = v5;
    v5 = v15;
    v16 = v18;
    if (v15 && v14[156] != 255)
    {
      (*(v15 + 2))(v15, v19, v18);
    }

    if (v16)
    {
      free(v16);
    }
  }

LABEL_27:
}

void tcp_connection_cancel(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v3 = v2;
  if (!v1)
  {
    *buf = 136446210;
    v32 = "tcp_connection_cancel";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (__nwlog_fault(v9, &type, &v29))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_37;
        }

        *buf = 136446210;
        v32 = "tcp_connection_cancel";
        v12 = "%{public}s called with null connection";
LABEL_35:
        v25 = v10;
        v26 = v11;
        goto LABEL_36;
      }

      if (v29 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_37;
        }

        *buf = 136446210;
        v32 = "tcp_connection_cancel";
        v12 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_35;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v23 = type;
      v24 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (!v24)
        {
LABEL_37:

          if (!v9)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        *buf = 136446210;
        v32 = "tcp_connection_cancel";
        v12 = "%{public}s called with null connection, no backtrace";
        v25 = v10;
        v26 = v23;
LABEL_36:
        _os_log_impl(&dword_181A37000, v25, v26, v12, buf, 0xCu);
        goto LABEL_37;
      }

      if (v24)
      {
        *buf = 136446466;
        v32 = "tcp_connection_cancel";
        v33 = 2082;
        v34 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v23, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v9)
    {
      goto LABEL_32;
    }

LABEL_31:
    free(v9);
    goto LABEL_32;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(v1 + 12);
    *buf = 136446466;
    v32 = "tcp_connection_cancel";
    v33 = 2048;
    v34 = v4;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %llu", buf, 0x16u);
  }

  os_unfair_lock_lock(v1 + 30);
  if (v1[156] == 255)
  {
    goto LABEL_24;
  }

  v1[156] = -1;
  v5 = *(v1 + 9);
  if (v5 && *(v1 + 7))
  {
    v6 = _Block_copy(v5);
    v7 = *(v1 + 7);
    v8 = *(v1 + 2);
    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(v1 + 2);
  if (v8)
  {
LABEL_14:
    nw_connection_cancel(v8);
  }

LABEL_15:
  v13 = v1;
  v13[158] |= 0x30u;
  v14 = *(v13 + 10);
  if (v14)
  {
    dispatch_source_cancel(v14);
    v15 = *(v13 + 10);
    *(v13 + 10) = 0;
  }

  v16 = *(v13 + 11);
  *(v13 + 11) = 0;

  v17 = *(v13 + 29);
  if (v17 != -1)
  {
    v18 = v13[159];
    if ((v18 & 8) == 0)
    {
      close(v17);
      v18 = v13[159];
    }

    *(v13 + 29) = -1;
    v13[159] = v18 & 0xF7;
  }

  v19 = *(v13 + 7);
  *(v13 + 7) = 0;

  v20 = *(v13 + 8);
  *(v13 + 8) = 0;

  v21 = *(v1 + 9);
  *(v1 + 9) = 0;

  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __tcp_connection_cancel_block_invoke;
    block[3] = &unk_1E6A3CE48;
    v28 = v6;
    dispatch_async(v7, block);
  }

LABEL_24:
  os_unfair_lock_unlock(v1 + 30);
LABEL_32:
}

uint64_t tcp_connection_get_local(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *__src = 136446210;
    *&__src[4] = "tcp_connection_get_local";
    v12 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    v27 = 0;
    if (!__nwlog_fault(v12, buf, &v27))
    {
      goto LABEL_33;
    }

    if (buf[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = buf[0];
      if (os_log_type_enabled(v13, buf[0]))
      {
        *__src = 136446210;
        *&__src[4] = "tcp_connection_get_local";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null connection", __src, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v17 = buf[0];
      v18 = os_log_type_enabled(v13, buf[0]);
      if (backtrace_string)
      {
        if (v18)
        {
          *__src = 136446466;
          *&__src[4] = "tcp_connection_get_local";
          *&__src[12] = 2082;
          *&__src[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", __src, 0x16u);
        }

        free(backtrace_string);
        if (!v12)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      if (v18)
      {
        *__src = 136446210;
        *&__src[4] = "tcp_connection_get_local";
        _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection, no backtrace", __src, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v19 = buf[0];
      if (os_log_type_enabled(v13, buf[0]))
      {
        *__src = 136446210;
        *&__src[4] = "tcp_connection_get_local";
        _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null connection, backtrace limit exceeded", __src, 0xCu);
      }
    }

    goto LABEL_32;
  }

  if (!v3[2])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *__src = 136446210;
      *&__src[4] = "tcp_connection_get_local";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", __src, 0xCu);
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    v21 = __nwlog_obj();
    *__src = 136446210;
    *&__src[4] = "tcp_connection_get_local";
    v12 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    v27 = 0;
    if (__nwlog_fault(v12, buf, &v27))
    {
      if (buf[0] == 17)
      {
        v13 = __nwlog_obj();
        v22 = buf[0];
        if (os_log_type_enabled(v13, buf[0]))
        {
          *__src = 136446210;
          *&__src[4] = "tcp_connection_get_local";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null outlocal", __src, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v27 != 1)
      {
        v13 = __nwlog_obj();
        v26 = buf[0];
        if (os_log_type_enabled(v13, buf[0]))
        {
          *__src = 136446210;
          *&__src[4] = "tcp_connection_get_local";
          _os_log_impl(&dword_181A37000, v13, v26, "%{public}s called with null outlocal, backtrace limit exceeded", __src, 0xCu);
        }

        goto LABEL_32;
      }

      v23 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v24 = buf[0];
      v25 = os_log_type_enabled(v13, buf[0]);
      if (!v23)
      {
        if (v25)
        {
          *__src = 136446210;
          *&__src[4] = "tcp_connection_get_local";
          _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null outlocal, no backtrace", __src, 0xCu);
        }

        goto LABEL_32;
      }

      if (v25)
      {
        *__src = 136446466;
        *&__src[4] = "tcp_connection_get_local";
        *&__src[12] = 2082;
        *&__src[14] = v23;
        _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null outlocal, dumping backtrace:%{public}s", __src, 0x16u);
      }

      free(v23);
    }

LABEL_33:
    if (!v12)
    {
LABEL_35:
      v10 = 0;
      goto LABEL_36;
    }

LABEL_34:
    free(v12);
    goto LABEL_35;
  }

  *a2 = 0;
  a2[1] = 0;
  *(a2 + 6) = 0;
  a2[2] = 0;
  v5 = nw_connection_copy_connected_local_endpoint(v3[2]);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    type = _nw_endpoint_get_type(v7);

    if (type == 1)
    {
      memset(__src, 0, sizeof(__src));
      v33 = 0;
      if (nw_endpoint_fillout_v4v6_address(v7, __src))
      {
        if (__src[0] < 0x1DuLL)
        {
          memcpy(a2, __src, __src[0]);
          v10 = 1;
          goto LABEL_12;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v29 = "tcp_connection_get_local";
          v30 = 1024;
          v31 = __src[0];
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Local address length (%u) too long", buf, 0x12u);
        }
      }
    }
  }

  v10 = 0;
LABEL_12:

LABEL_36:
  return v10;
}

uint64_t tcp_connection_get_remote(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *__src = 136446210;
    *&__src[4] = "tcp_connection_get_remote";
    v12 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    v27 = 0;
    if (!__nwlog_fault(v12, buf, &v27))
    {
      goto LABEL_33;
    }

    if (buf[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = buf[0];
      if (os_log_type_enabled(v13, buf[0]))
      {
        *__src = 136446210;
        *&__src[4] = "tcp_connection_get_remote";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null connection", __src, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v17 = buf[0];
      v18 = os_log_type_enabled(v13, buf[0]);
      if (backtrace_string)
      {
        if (v18)
        {
          *__src = 136446466;
          *&__src[4] = "tcp_connection_get_remote";
          *&__src[12] = 2082;
          *&__src[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", __src, 0x16u);
        }

        free(backtrace_string);
        if (!v12)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      if (v18)
      {
        *__src = 136446210;
        *&__src[4] = "tcp_connection_get_remote";
        _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection, no backtrace", __src, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v19 = buf[0];
      if (os_log_type_enabled(v13, buf[0]))
      {
        *__src = 136446210;
        *&__src[4] = "tcp_connection_get_remote";
        _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null connection, backtrace limit exceeded", __src, 0xCu);
      }
    }

    goto LABEL_32;
  }

  if (!v3[2])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *__src = 136446210;
      *&__src[4] = "tcp_connection_get_remote";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", __src, 0xCu);
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    v21 = __nwlog_obj();
    *__src = 136446210;
    *&__src[4] = "tcp_connection_get_remote";
    v12 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    v27 = 0;
    if (__nwlog_fault(v12, buf, &v27))
    {
      if (buf[0] == 17)
      {
        v13 = __nwlog_obj();
        v22 = buf[0];
        if (os_log_type_enabled(v13, buf[0]))
        {
          *__src = 136446210;
          *&__src[4] = "tcp_connection_get_remote";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null outremote", __src, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v27 != 1)
      {
        v13 = __nwlog_obj();
        v26 = buf[0];
        if (os_log_type_enabled(v13, buf[0]))
        {
          *__src = 136446210;
          *&__src[4] = "tcp_connection_get_remote";
          _os_log_impl(&dword_181A37000, v13, v26, "%{public}s called with null outremote, backtrace limit exceeded", __src, 0xCu);
        }

        goto LABEL_32;
      }

      v23 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v24 = buf[0];
      v25 = os_log_type_enabled(v13, buf[0]);
      if (!v23)
      {
        if (v25)
        {
          *__src = 136446210;
          *&__src[4] = "tcp_connection_get_remote";
          _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null outremote, no backtrace", __src, 0xCu);
        }

        goto LABEL_32;
      }

      if (v25)
      {
        *__src = 136446466;
        *&__src[4] = "tcp_connection_get_remote";
        *&__src[12] = 2082;
        *&__src[14] = v23;
        _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null outremote, dumping backtrace:%{public}s", __src, 0x16u);
      }

      free(v23);
    }

LABEL_33:
    if (!v12)
    {
LABEL_35:
      v10 = 0;
      goto LABEL_36;
    }

LABEL_34:
    free(v12);
    goto LABEL_35;
  }

  *a2 = 0;
  a2[1] = 0;
  *(a2 + 6) = 0;
  a2[2] = 0;
  v5 = nw_connection_copy_connected_remote_endpoint(v3[2]);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    type = _nw_endpoint_get_type(v7);

    if (type == 1)
    {
      memset(__src, 0, sizeof(__src));
      v33 = 0;
      if (nw_endpoint_fillout_v4v6_address(v7, __src))
      {
        if (__src[0] < 0x1DuLL)
        {
          memcpy(a2, __src, __src[0]);
          v10 = 1;
          goto LABEL_12;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v29 = "tcp_connection_get_remote";
          v30 = 1024;
          v31 = __src[0];
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Remote address length (%u) too long", buf, 0x12u);
        }
      }
    }
  }

  v10 = 0;
LABEL_12:

LABEL_36:
  return v10;
}

void tcp_connection_read(void *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v31 = "tcp_connection_read";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v12, &type, &v28))
    {
      goto LABEL_25;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v31 = "tcp_connection_read";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null connection", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v28 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v31 = "tcp_connection_read";
        _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_24;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v17 = type;
    v18 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v31 = "tcp_connection_read";
        _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v18)
    {
      *buf = 136446466;
      v31 = "tcp_connection_read";
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v10 = v7[2];
  if (v10)
  {
    if (v8)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __tcp_connection_read_block_invoke;
      v25[3] = &unk_1E6A3A670;
      v26 = v7;
      v27 = v9;
      nw_connection_receive_internal(v10, 0, a2, a3, v25);

      goto LABEL_27;
    }

    v20 = __nwlog_obj();
    *buf = 136446210;
    v31 = "tcp_connection_read";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v12, &type, &v28))
    {
      goto LABEL_25;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v31 = "tcp_connection_read";
        _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null handler", buf, 0xCu);
      }

LABEL_24:

LABEL_25:
      if (!v12)
      {
        goto LABEL_27;
      }

LABEL_26:
      free(v12);
      goto LABEL_27;
    }

    if (v28 != 1)
    {
      v13 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v31 = "tcp_connection_read";
        _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_24;
    }

    backtrace_string = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v22 = type;
    v23 = os_log_type_enabled(v13, type);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v31 = "tcp_connection_read";
        _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (v23)
    {
      *buf = 136446466;
      v31 = "tcp_connection_read";
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_17:

    free(backtrace_string);
    if (!v12)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v15 = gLogObj;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v31 = "tcp_connection_read";
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
  }

LABEL_27:
}

void __tcp_connection_read_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v11 = a2;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (*(*(a1 + 32) + 156) != 255)
  {
    if (v9)
    {
    }

    (*(*(a1 + 40) + 16))();
  }
}

void tcp_connection_read_buffer(void *a1, char *a2, unint64_t a3, unint64_t a4, void *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    *buf = 136446210;
    v36 = "tcp_connection_read_buffer";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v14, &type, &v33))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v36 = "tcp_connection_read_buffer";
      v17 = "%{public}s called with null connection";
    }

    else
    {
      if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v20 = type;
        v21 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v21)
          {
            *buf = 136446466;
            v36 = "tcp_connection_read_buffer";
            v37 = 2082;
            v38 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_17:
          if (!v14)
          {
            goto LABEL_19;
          }

LABEL_18:
          free(v14);
          goto LABEL_19;
        }

        if (!v21)
        {
LABEL_24:

          if (!v14)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        *buf = 136446210;
        v36 = "tcp_connection_read_buffer";
        v17 = "%{public}s called with null connection, no backtrace";
        v22 = v15;
        v23 = v20;
LABEL_23:
        _os_log_impl(&dword_181A37000, v22, v23, v17, buf, 0xCu);
        goto LABEL_24;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v36 = "tcp_connection_read_buffer";
      v17 = "%{public}s called with null connection, backtrace limit exceeded";
    }

    v22 = v15;
    v23 = v16;
    goto LABEL_23;
  }

  v12 = v9[2];
  if (v12)
  {
    if (v10)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __tcp_connection_read_buffer_block_invoke;
      v30[3] = &unk_1E6A31348;
      v31 = v9;
      v32 = v11;
      nw_connection_read_buffer(v12, a2, a3, a4, v30);

      goto LABEL_19;
    }

    v24 = __nwlog_obj();
    *buf = 136446210;
    v36 = "tcp_connection_read_buffer";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v14, &type, &v33))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v36 = "tcp_connection_read_buffer";
        v27 = "%{public}s called with null handler";
LABEL_42:
        _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    if (v33 != 1)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v36 = "tcp_connection_read_buffer";
        v27 = "%{public}s called with null handler, backtrace limit exceeded";
        goto LABEL_42;
      }

LABEL_43:

      goto LABEL_17;
    }

    v28 = __nw_create_backtrace_string();
    v25 = __nwlog_obj();
    v26 = type;
    v29 = os_log_type_enabled(v25, type);
    if (!v28)
    {
      if (v29)
      {
        *buf = 136446210;
        v36 = "tcp_connection_read_buffer";
        v27 = "%{public}s called with null handler, no backtrace";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v29)
    {
      *buf = 136446466;
      v36 = "tcp_connection_read_buffer";
      v37 = 2082;
      v38 = v28;
      _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v28);
    if (v14)
    {
      goto LABEL_18;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v36 = "tcp_connection_read_buffer";
      _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }
  }

LABEL_19:
}

uint64_t __tcp_connection_read_buffer_block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 156) != 255)
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

void tcp_connection_write(void *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    *buf = 136446210;
    v33 = "tcp_connection_write";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v11, &type, &v30))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v33 = "tcp_connection_write";
      v14 = "%{public}s called with null connection";
    }

    else
    {
      if (v30 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        v17 = type;
        v18 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            v33 = "tcp_connection_write";
            v34 = 2082;
            v35 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_17:
          if (!v11)
          {
            goto LABEL_19;
          }

LABEL_18:
          free(v11);
          goto LABEL_19;
        }

        if (!v18)
        {
LABEL_24:

          if (!v11)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        *buf = 136446210;
        v33 = "tcp_connection_write";
        v14 = "%{public}s called with null connection, no backtrace";
        v19 = v12;
        v20 = v17;
LABEL_23:
        _os_log_impl(&dword_181A37000, v19, v20, v14, buf, 0xCu);
        goto LABEL_24;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v33 = "tcp_connection_write";
      v14 = "%{public}s called with null connection, backtrace limit exceeded";
    }

    v19 = v12;
    v20 = v13;
    goto LABEL_23;
  }

  v9 = v5[2];
  if (v9)
  {
    if (v7)
    {
      completion[0] = MEMORY[0x1E69E9820];
      completion[1] = 3221225472;
      completion[2] = __tcp_connection_write_block_invoke;
      completion[3] = &unk_1E6A33F60;
      v28 = v5;
      v29 = v8;
      nw_connection_send(v9, v6, &__block_literal_global_44658, 1, completion);

      goto LABEL_19;
    }

    v21 = __nwlog_obj();
    *buf = 136446210;
    v33 = "tcp_connection_write";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v11, &type, &v30))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v33 = "tcp_connection_write";
        v24 = "%{public}s called with null handler";
LABEL_42:
        _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    if (v30 != 1)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v33 = "tcp_connection_write";
        v24 = "%{public}s called with null handler, backtrace limit exceeded";
        goto LABEL_42;
      }

LABEL_43:

      goto LABEL_17;
    }

    v25 = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type;
    v26 = os_log_type_enabled(v22, type);
    if (!v25)
    {
      if (v26)
      {
        *buf = 136446210;
        v33 = "tcp_connection_write";
        v24 = "%{public}s called with null handler, no backtrace";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v26)
    {
      *buf = 136446466;
      v33 = "tcp_connection_write";
      v34 = 2082;
      v35 = v25;
      _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v25);
    if (v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v33 = "tcp_connection_write";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }
  }

LABEL_19:
}

void __tcp_connection_write_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 156) != 255)
  {
    v4 = *(a1 + 40);
    v7 = v3;
    if (v3)
    {
      v5 = v3;
      v6 = v5[3];
    }

    else
    {
      v6 = 0;
    }

    (*(v4 + 16))(v4, v6);
    v3 = v7;
  }
}

void tcp_connection_write_buffer(void *a1, const void *a2, size_t a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v30 = "tcp_connection_write_buffer";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v12, &type, &v27))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v30 = "tcp_connection_write_buffer";
      v15 = "%{public}s called with null connection";
    }

    else
    {
      if (v27 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v17 = type;
        v18 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            v30 = "tcp_connection_write_buffer";
            v31 = 2082;
            v32 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_17:
          if (!v12)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        if (!v18)
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v30 = "tcp_connection_write_buffer";
        v15 = "%{public}s called with null connection, no backtrace";
        v19 = v13;
        v20 = v17;
        goto LABEL_24;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v30 = "tcp_connection_write_buffer";
      v15 = "%{public}s called with null connection, backtrace limit exceeded";
    }

    v19 = v13;
    v20 = v14;
LABEL_24:
    _os_log_impl(&dword_181A37000, v19, v20, v15, buf, 0xCu);
LABEL_25:

    if (!v12)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (!v7[2])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v30 = "tcp_connection_write_buffer";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v8)
  {
    v10 = dispatch_data_create(a2, a3, 0, 0);
    if (v10)
    {
      tcp_connection_write(v7, v10, v9);
    }

    else
    {
      v9[2](v9, 12);
    }

LABEL_20:

    goto LABEL_27;
  }

  v21 = __nwlog_obj();
  *buf = 136446210;
  v30 = "tcp_connection_write_buffer";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (!__nwlog_fault(v12, &type, &v27))
  {
    goto LABEL_17;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v22 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v22, type))
    {
      *buf = 136446210;
      v30 = "tcp_connection_write_buffer";
      v24 = "%{public}s called with null handler";
LABEL_44:
      _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
      goto LABEL_45;
    }

    goto LABEL_45;
  }

  if (v27 != 1)
  {
    v22 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v22, type))
    {
      *buf = 136446210;
      v30 = "tcp_connection_write_buffer";
      v24 = "%{public}s called with null handler, backtrace limit exceeded";
      goto LABEL_44;
    }

LABEL_45:

    goto LABEL_17;
  }

  v25 = __nw_create_backtrace_string();
  v22 = __nwlog_obj();
  v23 = type;
  v26 = os_log_type_enabled(v22, type);
  if (!v25)
  {
    if (v26)
    {
      *buf = 136446210;
      v30 = "tcp_connection_write_buffer";
      v24 = "%{public}s called with null handler, no backtrace";
      goto LABEL_44;
    }

    goto LABEL_45;
  }

  if (v26)
  {
    *buf = 136446466;
    v30 = "tcp_connection_write_buffer";
    v31 = 2082;
    v32 = v25;
    _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v25);
  if (v12)
  {
LABEL_26:
    free(v12);
  }

LABEL_27:
}

void tcp_connection_write_eof(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_write_eof";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_write_eof";
        v8 = "%{public}s called with null connection";
LABEL_21:
        v13 = v6;
        v14 = v7;
        goto LABEL_22;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_write_eof";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
LABEL_23:

          if (!v5)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v18 = "tcp_connection_write_eof";
        v8 = "%{public}s called with null connection, no backtrace";
        v13 = v6;
        v14 = v11;
LABEL_22:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446466;
        v18 = "tcp_connection_write_eof";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    free(v5);
    goto LABEL_18;
  }

  v3 = v1[2];
  if (v3)
  {
    nw_connection_send(v3, 0, &__block_literal_global_6_44667, 1, &__block_literal_global_24512);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v18 = "tcp_connection_write_eof";
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }
  }

LABEL_18:
}

uint64_t tcp_connection_get_unsent_length(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v20 = "tcp_connection_get_unsent_length";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (__nwlog_fault(v6, &type, &v17))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_get_unsent_length";
        v9 = "%{public}s called with null connection";
LABEL_22:
        v15 = v7;
        v16 = v8;
        goto LABEL_23;
      }

      if (v17 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v20 = "tcp_connection_get_unsent_length";
        v9 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v13)
        {
LABEL_24:

          if (!v6)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v20 = "tcp_connection_get_unsent_length";
        v9 = "%{public}s called with null connection, no backtrace";
        v15 = v7;
        v16 = v12;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v9, buf, 0xCu);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446466;
        v20 = "tcp_connection_get_unsent_length";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
LABEL_18:
      unsent_byte_count = 0;
      goto LABEL_19;
    }

LABEL_17:
    free(v6);
    goto LABEL_18;
  }

  v3 = *(v1 + 2);
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "tcp_connection_get_unsent_length";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_18;
  }

  unsent_byte_count = nw_connection_get_unsent_byte_count(v3);
LABEL_19:

  return unsent_byte_count;
}

void tcp_connection_accept(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v26 = "tcp_connection_accept";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v7, &type, &v23))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v26 = "tcp_connection_accept";
      v10 = "%{public}s called with null connection";
    }

    else
    {
      if (v23 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v13 = type;
        v14 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v26 = "tcp_connection_accept";
            v27 = 2082;
            v28 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_17:
          if (!v7)
          {
            goto LABEL_19;
          }

LABEL_18:
          free(v7);
          goto LABEL_19;
        }

        if (!v14)
        {
LABEL_24:

          if (!v7)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        *buf = 136446210;
        v26 = "tcp_connection_accept";
        v10 = "%{public}s called with null connection, no backtrace";
        v15 = v8;
        v16 = v13;
LABEL_23:
        _os_log_impl(&dword_181A37000, v15, v16, v10, buf, 0xCu);
        goto LABEL_24;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v26 = "tcp_connection_accept";
      v10 = "%{public}s called with null connection, backtrace limit exceeded";
    }

    v15 = v8;
    v16 = v9;
    goto LABEL_23;
  }

  if (v4)
  {
    if (v3[157] == 4)
    {
      tcp_connection_set_queue(v3, v4);
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v26 = "tcp_connection_accept";
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s Connection is not applicable for accept", buf, 0xCu);
      }
    }

    goto LABEL_19;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v26 = "tcp_connection_accept";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v7, &type, &v23))
  {
    goto LABEL_17;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v18 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v18, type))
    {
      *buf = 136446210;
      v26 = "tcp_connection_accept";
      v20 = "%{public}s called with null queue";
LABEL_42:
      _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
      goto LABEL_43;
    }

    goto LABEL_43;
  }

  if (v23 != 1)
  {
    v18 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v18, type))
    {
      *buf = 136446210;
      v26 = "tcp_connection_accept";
      v20 = "%{public}s called with null queue, backtrace limit exceeded";
      goto LABEL_42;
    }

LABEL_43:

    goto LABEL_17;
  }

  v21 = __nw_create_backtrace_string();
  v18 = __nwlog_obj();
  v19 = type;
  v22 = os_log_type_enabled(v18, type);
  if (!v21)
  {
    if (v22)
    {
      *buf = 136446210;
      v26 = "tcp_connection_accept";
      v20 = "%{public}s called with null queue, no backtrace";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if (v22)
  {
    *buf = 136446466;
    v26 = "tcp_connection_accept";
    v27 = 2082;
    v28 = v21;
    _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v21);
  if (v7)
  {
    goto LABEL_18;
  }

LABEL_19:
}

uint64_t tcp_connection_is_cellular(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v21 = "tcp_connection_is_cellular";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v8, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_is_cellular";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v13 = type;
        v14 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v21 = "tcp_connection_is_cellular";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v8)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        if (v14)
        {
          *buf = 136446210;
          v21 = "tcp_connection_is_cellular";
          _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v16 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_is_cellular";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v8)
    {
LABEL_31:
      v6 = 0;
      goto LABEL_32;
    }

LABEL_30:
    free(v8);
    goto LABEL_31;
  }

  v3 = *(v1 + 2);
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v21 = "tcp_connection_is_cellular";
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v4 = nw_connection_copy_connected_path(v3);
  v5 = v4;
  if (v4)
  {
    v6 = _nw_path_uses_interface_type(v4, 2u);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v21 = "tcp_connection_is_cellular";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s No connected path", buf, 0xCu);
    }

    v6 = 0;
  }

LABEL_32:
  return v6;
}

uint64_t tcp_connection_is_expensive(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v21 = "tcp_connection_is_expensive";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v8, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_is_expensive";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v13 = type;
        v14 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v21 = "tcp_connection_is_expensive";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v8)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        if (v14)
        {
          *buf = 136446210;
          v21 = "tcp_connection_is_expensive";
          _os_log_impl(&dword_181A37000, v9, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v16 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v21 = "tcp_connection_is_expensive";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v8)
    {
LABEL_31:
      is_expensive = 0;
      goto LABEL_32;
    }

LABEL_30:
    free(v8);
    goto LABEL_31;
  }

  v3 = *(v1 + 2);
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v21 = "tcp_connection_is_expensive";
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v4 = nw_connection_copy_connected_path(v3);
  v5 = v4;
  if (v4)
  {
    is_expensive = _nw_path_is_expensive(v4);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v21 = "tcp_connection_is_expensive";
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s No connected path", buf, 0xCu);
    }

    is_expensive = 0;
  }

LABEL_32:
  return is_expensive;
}

uint64_t tcp_connection_copy_description(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v19 = "tcp_connection_copy_description";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v7, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v19 = "tcp_connection_copy_description";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v12 = type;
        v13 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v19 = "tcp_connection_copy_description";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v7)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        if (v13)
        {
          *buf = 136446210;
          v19 = "tcp_connection_copy_description";
          _os_log_impl(&dword_181A37000, v8, v12, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v14 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v19 = "tcp_connection_copy_description";
          _os_log_impl(&dword_181A37000, v8, v14, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v7)
    {
LABEL_26:
      v5 = 0;
      goto LABEL_27;
    }

LABEL_25:
    free(v7);
    goto LABEL_26;
  }

  v3 = *(v1 + 2);
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v19 = "tcp_connection_copy_description";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }

    goto LABEL_26;
  }

  v4 = v3;
  v5 = nw_connection_copy_description_level(v4, 1);

LABEL_27:
  return v5;
}

void tcp_connection_get_counts(void *a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "tcp_connection_get_counts";
    v9 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v33[0] = 0;
    if (__nwlog_fault(v9, type, v33))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "tcp_connection_get_counts";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v33[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v14 = type[0];
        v15 = os_log_type_enabled(v10, type[0]);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            *&buf[4] = "tcp_connection_get_counts";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v9)
          {
            goto LABEL_28;
          }

LABEL_13:
          free(v9);
          goto LABEL_28;
        }

        if (v15)
        {
          *buf = 136446210;
          *&buf[4] = "tcp_connection_get_counts";
          _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v17 = type[0];
        if (os_log_type_enabled(v10, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "tcp_connection_get_counts";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v9)
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  if (v3[2])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x1C810000000;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v38 = &unk_182E7191A;
    v65 = 0;
    *type = 0;
    v30 = type;
    v31 = 0x2020000000;
    v32 = 0;
    if (a2)
    {
      *(a2 + 80) = 0uLL;
      *(a2 + 96) = 0uLL;
      *(a2 + 48) = 0uLL;
      *(a2 + 64) = 0uLL;
      *(a2 + 16) = 0uLL;
      *(a2 + 32) = 0uLL;
      *a2 = 0uLL;
      v5 = nw_connection_copy_tcp_info(v3[2]);
      v6 = v5;
      if (v5)
      {
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __tcp_connection_get_counts_block_invoke;
        applier[3] = &unk_1E6A31370;
        applier[4] = buf;
        applier[5] = type;
        xpc_dictionary_apply(v5, applier);
        if (*(v30 + 24) == 1)
        {
          v7 = *&buf[8];
          *(a2 + 8) = *(*&buf[8] + 140);
          *(a2 + 24) = *(v7 + 108);
          *(a2 + 80) = *(v7 + 148);
          *(a2 + 88) = *(v7 + 116);
          *(a2 + 92) = 0x100000001;
          *(a2 + 104) = v7[7];
          *(a2 + 48) = v7[27];
          *(a2 + 56) = v7[29];
          *(a2 + 32) = v7[23];
          *(a2 + 40) = v7[25];
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v33 = 136446210;
          v34 = "tcp_connection_get_counts";
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s Could not retreive TCP info", v33, 0xCu);
        }
      }

LABEL_27:
      _Block_object_dispose(type, 8);
      _Block_object_dispose(buf, 8);
      goto LABEL_28;
    }

    v18 = __nwlog_obj();
    *v33 = 136446210;
    v34 = "tcp_connection_get_counts";
    v19 = _os_log_send_and_compose_impl();

    v28 = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (__nwlog_fault(v19, &v28, &v27))
    {
      if (v28 == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = v28;
        if (os_log_type_enabled(v20, v28))
        {
          *v33 = 136446210;
          v34 = "tcp_connection_get_counts";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null counts", v33, 0xCu);
        }
      }

      else if (v27 == 1)
      {
        v22 = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v23 = v28;
        v24 = os_log_type_enabled(v20, v28);
        if (v22)
        {
          if (v24)
          {
            *v33 = 136446466;
            v34 = "tcp_connection_get_counts";
            v35 = 2082;
            v36 = v22;
            _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null counts, dumping backtrace:%{public}s", v33, 0x16u);
          }

          free(v22);
          goto LABEL_51;
        }

        if (v24)
        {
          *v33 = 136446210;
          v34 = "tcp_connection_get_counts";
          _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null counts, no backtrace", v33, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v25 = v28;
        if (os_log_type_enabled(v20, v28))
        {
          *v33 = 136446210;
          v34 = "tcp_connection_get_counts";
          _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null counts, backtrace limit exceeded", v33, 0xCu);
        }
      }
    }

LABEL_51:
    if (v19)
    {
      free(v19);
    }

    goto LABEL_27;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    *&buf[4] = "tcp_connection_get_counts";
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
  }

LABEL_28:
}

void sub_1825B1214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __tcp_connection_get_counts_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9E70] && xpc_data_get_length(v4) == 424 && xpc_data_get_bytes_ptr(v4))
  {
    v5 = *(*(a1 + 32) + 8);
    bytes_ptr = xpc_data_get_bytes_ptr(v4);
    memcpy((v5 + 32), bytes_ptr, 0x1A8uLL);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446210;
      v10 = "tcp_connection_get_counts_block_invoke";
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s TCP info has invalid data", &v9, 0xCu);
    }
  }

  return 0;
}

void tcp_connection_retry(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v18 = "tcp_connection_retry";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v5, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_retry";
        v8 = "%{public}s called with null connection";
LABEL_21:
        v13 = v6;
        v14 = v7;
        goto LABEL_22;
      }

      if (v15 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v18 = "tcp_connection_retry";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_21;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
LABEL_23:

          if (!v5)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        *buf = 136446210;
        v18 = "tcp_connection_retry";
        v8 = "%{public}s called with null connection, no backtrace";
        v13 = v6;
        v14 = v11;
LABEL_22:
        _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
        goto LABEL_23;
      }

      if (v12)
      {
        *buf = 136446466;
        v18 = "tcp_connection_retry";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    free(v5);
    goto LABEL_18;
  }

  v3 = v1[2];
  if (v3)
  {
    nw_connection_restart(v3);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v18 = "tcp_connection_retry";
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }
  }

LABEL_18:
}

void tcp_connection_set_connection_attempt_timeout(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 104) = a2;
    *(a1 + 158) |= 0x40u;
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  *buf = 136446210;
  v15 = "tcp_connection_set_connection_attempt_timeout";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v3, &type, &v12))
  {
LABEL_12:
    if (!v3)
    {
      return;
    }

    goto LABEL_13;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_19;
    }

    *buf = 136446210;
    v15 = "tcp_connection_set_connection_attempt_timeout";
    v6 = "%{public}s called with null connection";
LABEL_17:
    v10 = v4;
    v11 = v5;
LABEL_18:
    _os_log_impl(&dword_181A37000, v10, v11, v6, buf, 0xCu);
    goto LABEL_19;
  }

  if (v12 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v5 = type;
    if (!os_log_type_enabled(v4, type))
    {
      goto LABEL_19;
    }

    *buf = 136446210;
    v15 = "tcp_connection_set_connection_attempt_timeout";
    v6 = "%{public}s called with null connection, backtrace limit exceeded";
    goto LABEL_17;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  v8 = type;
  v9 = os_log_type_enabled(v4, type);
  if (backtrace_string)
  {
    if (v9)
    {
      *buf = 136446466;
      v15 = "tcp_connection_set_connection_attempt_timeout";
      v16 = 2082;
      v17 = backtrace_string;
      _os_log_impl(&dword_181A37000, v4, v8, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    goto LABEL_12;
  }

  if (v9)
  {
    *buf = 136446210;
    v15 = "tcp_connection_set_connection_attempt_timeout";
    v6 = "%{public}s called with null connection, no backtrace";
    v10 = v4;
    v11 = v8;
    goto LABEL_18;
  }

LABEL_19:

  if (v3)
  {
LABEL_13:
    free(v3);
  }
}

void tcp_connection_set_tfo(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_tfo";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_tfo";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_tfo";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
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
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_tfo";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_tfo";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_tfo(v2, a2);
}

void tcp_connection_set_extended_background_idle(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v3 = v2;
  if (!a1)
  {
    *buf = 136446210;
    v16 = "tcp_connection_set_extended_background_idle";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_extended_background_idle";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_extended_background_idle";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
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
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_extended_background_idle";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_extended_background_idle";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v16 = "tcp_connection_set_extended_background_idle";
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s Extended background idle not supported", buf, 0xCu);
  }
}

void tcp_connection_set_receive_any_interface(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v16 = "tcp_connection_set_receive_any_interface";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v4, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_receive_any_interface";
        v7 = "%{public}s called with null connection";
LABEL_19:
        v11 = v5;
        v12 = v6;
        goto LABEL_20;
      }

      if (v13 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        v6 = type;
        if (!os_log_type_enabled(v5, type))
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_receive_any_interface";
        v7 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_19;
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
LABEL_21:

          if (!v4)
          {
            return;
          }

LABEL_15:
          free(v4);
          return;
        }

        *buf = 136446210;
        v16 = "tcp_connection_set_receive_any_interface";
        v7 = "%{public}s called with null connection, no backtrace";
        v11 = v5;
        v12 = v9;
LABEL_20:
        _os_log_impl(&dword_181A37000, v11, v12, v7, buf, 0xCu);
        goto LABEL_21;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "tcp_connection_set_receive_any_interface";
        v17 = 2082;
        v18 = backtrace_string;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v4)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = *(a1 + 48);

  nw_parameters_set_receive_any_interface(v2, a2);
}

void tcp_connection_set_ecn_enabled(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v17 = "tcp_connection_set_ecn_enabled";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v5, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v17 = "tcp_connection_set_ecn_enabled";
        v8 = "%{public}s called with null connection";
LABEL_22:
        v12 = v6;
        v13 = v7;
        goto LABEL_23;
      }

      if (v14 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v17 = "tcp_connection_set_ecn_enabled";
        v8 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_22;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v10 = type;
      v11 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v11)
        {
LABEL_24:

          if (!v5)
          {
            return;
          }

LABEL_18:
          free(v5);
          return;
        }

        *buf = 136446210;
        v17 = "tcp_connection_set_ecn_enabled";
        v8 = "%{public}s called with null connection, no backtrace";
        v12 = v6;
        v13 = v10;
LABEL_23:
        _os_log_impl(&dword_181A37000, v12, v13, v8, buf, 0xCu);
        goto LABEL_24;
      }

      if (v11)
      {
        *buf = 136446466;
        v17 = "tcp_connection_set_ecn_enabled";
        v18 = 2082;
        v19 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v5)
    {
      return;
    }

    goto LABEL_18;
  }

  v2 = *(a1 + 48);
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  nw_parameters_set_ecn_mode(v2, v3);
}

uint64_t tcp_connection_get_statistics(void *a1, uint64_t a2, int *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = v4;
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    *buf = 136446210;
    v39 = "tcp_connection_get_statistics";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v18, &type, &v36))
    {
      goto LABEL_24;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v39 = "tcp_connection_get_statistics";
      v21 = "%{public}s called with null connection";
    }

    else
    {
      if (v36 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v24 = type;
        v25 = os_log_type_enabled(v19, type);
        if (backtrace_string)
        {
          if (v25)
          {
            *buf = 136446466;
            v39 = "tcp_connection_get_statistics";
            v40 = 2082;
            *v41 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          v26 = backtrace_string;
          goto LABEL_23;
        }

        if (!v25)
        {
LABEL_32:

          if (!v18)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        *buf = 136446210;
        v39 = "tcp_connection_get_statistics";
        v21 = "%{public}s called with null connection, no backtrace";
        v28 = v19;
        v29 = v24;
LABEL_31:
        _os_log_impl(&dword_181A37000, v28, v29, v21, buf, 0xCu);
        goto LABEL_32;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_32;
      }

      *buf = 136446210;
      v39 = "tcp_connection_get_statistics";
      v21 = "%{public}s called with null connection, backtrace limit exceeded";
    }

    v28 = v19;
    v29 = v20;
    goto LABEL_31;
  }

  v6 = *(v4 + 2);
  if (!v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v39 = "tcp_connection_get_statistics";
      v22 = "%{public}s API Misuse: Function must be called after tcp_connection_start";
LABEL_16:
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
    }

LABEL_17:

LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  if (!a3)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v39 = "tcp_connection_get_statistics";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v18, &type, &v36))
    {
      goto LABEL_24;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v39 = "tcp_connection_get_statistics";
        v33 = "%{public}s called with null statistics";
LABEL_49:
        _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
        goto LABEL_50;
      }

      goto LABEL_50;
    }

    if (v36 != 1)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v39 = "tcp_connection_get_statistics";
        v33 = "%{public}s called with null statistics, backtrace limit exceeded";
        goto LABEL_49;
      }

LABEL_50:

LABEL_24:
      if (!v18)
      {
        goto LABEL_26;
      }

LABEL_25:
      free(v18);
      goto LABEL_26;
    }

    v34 = __nw_create_backtrace_string();
    v31 = __nwlog_obj();
    v32 = type;
    v35 = os_log_type_enabled(v31, type);
    if (!v34)
    {
      if (v35)
      {
        *buf = 136446210;
        v39 = "tcp_connection_get_statistics";
        v33 = "%{public}s called with null statistics, no backtrace";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    if (v35)
    {
      *buf = 136446466;
      v39 = "tcp_connection_get_statistics";
      v40 = 2082;
      *v41 = v34;
      _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null statistics, dumping backtrace:%{public}s", buf, 0x16u);
    }

    v26 = v34;
LABEL_23:
    free(v26);
    goto LABEL_24;
  }

  v7 = nw_connection_fillout_tcp_statistics(v6, a3);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  v9 = v8;
  if (!v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v39 = "tcp_connection_get_statistics";
      v22 = "%{public}s Failed to get statistics from connection";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *a3;
    v11 = a3[1];
    v12 = a3[2];
    v13 = a3[3];
    v14 = a3[4];
    v15 = a3[5];
    *buf = 136447746;
    v39 = "tcp_connection_get_statistics";
    v40 = 1024;
    *v41 = v10;
    *&v41[4] = 1024;
    *&v41[6] = v11;
    v42 = 1024;
    v43 = v12;
    v44 = 1024;
    v45 = v13;
    v46 = 1024;
    v47 = v14;
    v48 = 1024;
    v49 = v15;
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s DNS: %ums/%ums since start, TCP: %ums/%ums since start, TLS: %ums/%ums since start", buf, 0x30u);
  }

  v16 = 1;
LABEL_27:

  return v16;
}

void tcp_connection_log_event(void *a1, char *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    v22 = "tcp_connection_log_event";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v10, &type, &v19))
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
          v22 = "tcp_connection_log_event";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v19 == 1)
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
            v22 = "tcp_connection_log_event";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v10)
          {
            goto LABEL_27;
          }

LABEL_12:
          free(v10);
          goto LABEL_27;
        }

        if (v16)
        {
          *buf = 136446210;
          v22 = "tcp_connection_log_event";
          _os_log_impl(&dword_181A37000, v11, v15, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v18 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v22 = "tcp_connection_log_event";
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v10)
    {
      goto LABEL_27;
    }

    goto LABEL_12;
  }

  v7 = v5[2];
  if (v7)
  {
    if (a2 == 1)
    {
      v8 = 2;
      goto LABEL_23;
    }

    if (!a2)
    {
      v8 = 1;
LABEL_23:
      nw_connection_add_client_event_internal(v7, v8, v6, 0);
      goto LABEL_27;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "tcp_connection_log_event";
      v23 = 2048;
      v24 = a2;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s Invalid log event %lld", buf, 0x16u);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "tcp_connection_log_event";
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s API Misuse: Function must be called after tcp_connection_start", buf, 0xCu);
    }
  }

LABEL_27:
}

void __nw_write_request_create_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
  (*(v1 + 16))(v1);
}

BOOL ___ZL24__nw_signpost_is_enabledv_block_invoke_35518()
{
  result = networkd_settings_get_BOOL(nw_setting_enable_signposts);
  _nw_signposts_enabled = result;
  return result;
}

void __nw_write_request_create_with_file_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
  (*(v1 + 16))(v1, 0, 0);
}

size_t nw_write_request_remaining_bytes(void *a1)
{
  v1 = a1;
  v2 = *(v1 + 9);
  if (!*(v1 + 7))
  {
    if (!v2)
    {
      v6 = 0;
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    size = *(v1 + 12);
    goto LABEL_6;
  }

  v3 = v1;
  size = dispatch_data_get_size(*(v1 + 7));
  v1 = v3;
LABEL_6:
  v5 = *(v1 + 14);
  if (size <= v5)
  {
    v5 = 0;
  }

  v6 = size - v5;
LABEL_9:

  return v6;
}

void ___ZL35nw_write_request_start_file_updatesP27NWConcrete_nw_write_request_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = _Block_copy(WeakRetained[4]);
    v4 = v3;
    if (v3)
    {
      v5 = v2[5];
      v6 = *(v2 + 12);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = ___ZL35nw_write_request_start_file_updatesP27NWConcrete_nw_write_request_block_invoke_2;
      v7[3] = &unk_1E6A3D710;
      v9 = v3;
      v8 = v2;
      nw_connection_async_client_if_needed_with_override(v5, 0, v6, v7);
    }
  }
}

void ___ZL35nw_write_request_start_file_updatesP27NWConcrete_nw_write_request_block_invoke_2(uint64_t a1)
{
  if (((*(*(a1 + 40) + 16))() & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [[NWConcrete_nw_error alloc] initWithDomain:89 code:?];
    nw_write_request_report_error_with_override(v2, 0, v3);
  }
}

unint64_t nw_write_request_remaining_datagram_count(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    if (*(v1 + 7))
    {
      v3 = !nw_content_context_is_blocked_by_antecedents(*(v1 + 8));
    }

    else
    {
      v3 = 0;
    }

    v5 = v2 + 1;
    v4 = v2[1];
    if (v4)
    {
      do
      {
        v6 = *(v4 + 56);
        if (v6)
        {
          v6 = !nw_content_context_is_blocked_by_antecedents(*(v4 + 64));
          v4 = *v5;
        }

        v3 += v6;
        v7 = v4;

        v5 = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          break;
        }

        v2 = v7;
      }

      while (v3 < 0x100);
    }

    else
    {
      v7 = v2;
    }

    goto LABEL_12;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_write_request_remaining_datagram_count";
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
        v20 = "nw_write_request_remaining_datagram_count";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null request", buf, 0xCu);
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
          v20 = "nw_write_request_remaining_datagram_count";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_29;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_write_request_remaining_datagram_count";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null request, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_write_request_remaining_datagram_count";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_29:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
  v3 = 0;
LABEL_12:

  return v3;
}

void ___ZL35nw_write_request_coalesce_with_nextP27NWConcrete_nw_write_requestS0__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

uint64_t nw_protocol_http_encoding_create::$_2::__invoke(nw_protocol_http_encoding_create::$_2 *this, nw_protocol *a2, nw_protocol *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v8 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, type, &v21))
    {
      goto LABEL_48;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v21 != 1)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (!os_log_type_enabled(v9, type[0]))
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_47;
      }

      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type[0];
      v13 = os_log_type_enabled(v9, type[0]);
      if (!backtrace_string)
      {
        if (!v13)
        {
          goto LABEL_48;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v11 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_47;
      }

      if (v13)
      {
        *buf = 136446466;
        *&buf[4] = "operator()";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v14 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_37:
        _os_log_impl(&dword_181A37000, v9, v10, v14, buf, 0x16u);
      }

LABEL_38:
      free(backtrace_string);
      goto LABEL_48;
    }

    v9 = __nwlog_obj();
    v10 = type[0];
    if (!os_log_type_enabled(v9, type[0]))
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v11 = "%{public}s called with null protocol";
LABEL_47:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
LABEL_48:
    if (v8)
    {
      free(v8);
    }

    return 1;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v8 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (!__nwlog_fault(v8, type, &v21))
    {
      goto LABEL_48;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v11 = "%{public}s called with null http_encoding";
      goto LABEL_47;
    }

    if (v21 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type[0];
      if (!os_log_type_enabled(v9, type[0]))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v11 = "%{public}s called with null http_encoding, backtrace limit exceeded";
      goto LABEL_47;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type[0];
    v15 = os_log_type_enabled(v9, type[0]);
    if (backtrace_string)
    {
      if (v15)
      {
        *buf = 136446466;
        *&buf[4] = "operator()";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v14 = "%{public}s called with null http_encoding, dumping backtrace:%{public}s";
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (!v15)
    {
      goto LABEL_48;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v11 = "%{public}s called with null http_encoding, no backtrace";
    goto LABEL_47;
  }

  *(v3 + 544) |= 0x40u;
  if (*(v3 + 288) == 96)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    v23 = __Block_byref_object_copy__35756;
    v24 = __Block_byref_object_dispose__35757;
    object = 0;
    v26 = -1;
    v4 = nw_protocol_copy_info(*(v3 + 32));
    v5 = v4;
    *type = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = ___ZZ32nw_protocol_http_encoding_createENK3__2clEP11nw_protocolS1_b_block_invoke;
    v19 = &unk_1E6A314B0;
    v20 = buf;
    if (v4)
    {
      _nw_array_apply(v4, type);
    }

    v6 = *(*&buf[8] + 40);
    if (v6 && nw_http_connection_metadata_get_version(v6) == 3)
    {
      *(v3 + 544) |= 0x100u;
      nw_http_encoding_check_http1_content_length(v3);
      if (v5)
      {
        os_release(v5);
      }

      _Block_object_dispose(buf, 8);
      if (v26)
      {
        if (object)
        {
          os_release(object);
        }
      }

      return 1;
    }

    if (v5)
    {
      os_release(v5);
    }

    _Block_object_dispose(buf, 8);
    if ((v26 & 1) != 0 && object)
    {
      os_release(object);
    }
  }

  return 0;
}

uint64_t __Block_byref_object_copy__35756(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__35757(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t ___ZZ32nw_protocol_http_encoding_createENK3__2clEP11nw_protocolS1_b_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (nw_protocol_metadata_is_http_connection(a3))
  {
    if (v3)
    {
      v3 = os_retain(v3);
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 48);
    if (v6)
    {
      v7 = *(v5 + 40);
      if (v7)
      {
        os_release(v7);
        v6 = *(v5 + 48);
      }
    }

    *(v5 + 40) = v3;
    *(v5 + 48) = v6 | 1;
  }

  return 1;
}

void nw_http_encoding_check_http1_content_length(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 544);
  if ((~v1 & 0x180) == 0)
  {
    v3 = *(a1 + 392);
    if (!v3)
    {
LABEL_14:
      *(a1 + 544) = v1 & 0xFEFF;
      nw_protocol_error(*(a1 + 48), a1);
      nw_protocol_disconnected(*(a1 + 48), a1);
      return;
    }

    v4 = nw_http_metadata_copy_response(v3);
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = -1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___ZL43nw_http_encoding_check_http1_content_lengthP25nw_protocol_http_encoding_block_invoke;
    v8[3] = &unk_1E6A314D8;
    v8[4] = &v9;
    nw_http_fields_access_value_by_name(v4, "Content-Length", v8);
    v5 = v10[3];
    if (v5 == -1 || v5 != *(a1 + 328))
    {
      v7 = 1;
    }

    else
    {
      if ((*(a1 + 198) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v14 = "nw_http_encoding_check_http1_content_length";
          v15 = 2082;
          v16 = a1 + 114;
          v17 = 2080;
          v18 = " ";
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%saccepting invalid Content-Length matching decompressed body", buf, 0x20u);
        }
      }

      nw_protocol_input_finished(*(a1 + 48), a1);
      v7 = 0;
    }

    _Block_object_dispose(&v9, 8);
    if (v4)
    {
      os_release(v4);
    }

    if (v7)
    {
      LOWORD(v1) = *(a1 + 544);
      goto LABEL_14;
    }
  }
}

void ___ZL43nw_http_encoding_check_http1_content_lengthP25nw_protocol_http_encoding_block_invoke(uint64_t a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v4;
    if (v4)
    {
      memcpy(&__dst, __s, v4);
    }

    __dst.__r_.__value_.__s.__data_[v5] = 0;
    *(*(*(a1 + 32) + 8) + 24) = std::stoull(&__dst, 0, 10);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

void nw_protocol_http_encoding_create::$_1::__invoke(nw_protocol_http_encoding_create::$_1 *this, nw_protocol *a2, nw_protocol *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "operator()";
    v10 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v10, &type, &v18))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v21 = "operator()";
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
          v21 = "operator()";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v10)
        {
          return;
        }

LABEL_43:
        free(v10);
        return;
      }

      if (!v15)
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v21 = "operator()";
      v13 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_42;
      }

      *buf = 136446210;
      v21 = "operator()";
      v13 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_41:
    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
    goto LABEL_42;
  }

  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 + 384);
    if (v4)
    {
      v5 = *(v3 + 376);
      if (v5)
      {
        os_release(v5);
        v4 = *(v3 + 384);
      }
    }

    *(v3 + 376) = 0;
    *(v3 + 384) = v4 | 1;
    v6 = *(v3 + 400);
    if (v6)
    {
      v7 = *(v3 + 392);
      if (v7)
      {
        os_release(v7);
        v6 = *(v3 + 400);
      }
    }

    *(v3 + 392) = 0;
    *(v3 + 400) = v6 | 1;
    v8 = *(v3 + 440);
    if (v8)
    {
      (**v8)(*(v3 + 440), a2, a3);
      free(v8);
      *(v3 + 440) = 0;
    }

    v9 = *(v3 + 448);
    if (v9)
    {
      (**v9)(*(v3 + 448), a2, a3);
      free(v9);
      *(v3 + 448) = 0;
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v21 = "operator()";
  v10 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v10, &type, &v18))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v21 = "operator()";
    v13 = "%{public}s called with null http_encoding";
    goto LABEL_41;
  }

  if (v18 != 1)
  {
    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v21 = "operator()";
    v13 = "%{public}s called with null http_encoding, backtrace limit exceeded";
    goto LABEL_41;
  }

  v16 = __nw_create_backtrace_string();
  v11 = __nwlog_obj();
  v12 = type;
  v17 = os_log_type_enabled(v11, type);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_42;
    }

    *buf = 136446210;
    v21 = "operator()";
    v13 = "%{public}s called with null http_encoding, no backtrace";
    goto LABEL_41;
  }

  if (v17)
  {
    *buf = 136446466;
    v21 = "operator()";
    v22 = 2082;
    v23 = v16;
    _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null http_encoding, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v10)
  {
    goto LABEL_43;
  }
}

void ___ZL39nw_protocol_http_encoding_get_callbacksv_block_invoke()
{
  nw_protocol_http_encoding_get_callbacks(void)::protocol_callbacks = nw_protocol_common_add_input_handler;
  qword_1EA840AA8 = nw_protocol_common_replace_input_handler;
  qword_1EA840AF0 = nw_protocol_common_get_output_frames;
  qword_1EA840B08 = nw_protocol_common_get_parameters;
  qword_1EA840B10 = nw_protocol_common_get_path;
  qword_1EA840B20 = nw_protocol_common_get_remote_endpoint;
  qword_1EA840B18 = nw_protocol_common_get_local_endpoint;
  qword_1EA840B60 = nw_protocol_common_get_output_local_endpoint;
  qword_1EA840B68 = nw_protocol_common_get_output_interface;
  qword_1EA840AB0 = nw_protocol_common_connect;
  qword_1EA840AC0 = nw_protocol_common_connected;
  qword_1EA840AB8 = nw_protocol_common_disconnect;
  qword_1EA840AC8 = nw_protocol_common_disconnected;
  qword_1EA840AD8 = nw_protocol_common_input_available;
  qword_1EA840AE0 = nw_protocol_common_output_available;
  qword_1EA840B50 = nw_protocol_common_input_finished;
  qword_1EA840B58 = nw_protocol_common_output_finished;
  qword_1EA840BA0 = nw_protocol_common_input_flush;
  qword_1EA840AD0 = nw_protocol_common_error;
  qword_1EA840B98 = nw_protocol_common_reset;
  qword_1EA840B90 = nw_protocol_common_get_message_properties;
  qword_1EA840B78 = nw_protocol_common_copy_info;
  qword_1EA840B48 = nw_protocol_common_supports_external_data;
  qword_1EA840B70 = nw_protocol_common_waiting_for_output;
  qword_1EA840B28 = nw_protocol_common_register_notification;
  qword_1EA840B30 = nw_protocol_common_unregister_notification;
  qword_1EA840B38 = nw_protocol_common_notify;
  qword_1EA840B40 = nw_protocol_common_updated_path;
  qword_1EA840B00 = nw_protocol_common_link_state;
  qword_1EA840AE8 = nw_protocol_http_encoding_get_input_frames;
  qword_1EA840AF8 = nw_protocol_http_encoding_finalize_output_frames;
  qword_1EA840AA0 = nw_protocol_http_encoding_remove_input_handler;
}

uint64_t ___ZL46nw_protocol_http_encoding_remove_input_handlerP11nw_protocolS0_b_block_invoke_52(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 32) + 496);
  v3 = a2[4];
  v4 = a2[5];
  if (v3)
  {
    v2 = (v3 + 40);
  }

  *v2 = v4;
  *v4 = v3;
  a2[4] = 0;
  a2[5] = 0;
  v5 = *(a1 + 32);
  if (v5)
  {
    if ((*(v5 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v11 = a2;
      v12 = __nwlog_obj();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      a2 = v11;
      if (v13)
      {
        *buf = 136446978;
        v19 = "nw_http_encoding_outbound_frame_return_to_cache";
        v20 = 2082;
        v21 = (v5 + 114);
        v22 = 2080;
        v23 = " ";
        v24 = 2048;
        v25 = v11;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sreturning frame %p to cache", buf, 0x2Au);
        a2 = v11;
      }
    }

    a2[10] = 0;
    a2[11] = 0;
    nw_frame_cache_return_frame(v5 + 336, a2);
    return 1;
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_http_encoding_outbound_frame_return_to_cache";
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v7, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v19 = "nw_http_encoding_outbound_frame_return_to_cache";
      v10 = "%{public}s called with null http_encoding";
      goto LABEL_23;
    }

    if (v16 != 1)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_24;
      }

      *buf = 136446210;
      v19 = "nw_http_encoding_outbound_frame_return_to_cache";
      v10 = "%{public}s called with null http_encoding, backtrace limit exceeded";
      goto LABEL_23;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = type;
    v15 = os_log_type_enabled(v8, type);
    if (backtrace_string)
    {
      if (v15)
      {
        *buf = 136446466;
        v19 = "nw_http_encoding_outbound_frame_return_to_cache";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null http_encoding, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_24;
    }

    if (v15)
    {
      *buf = 136446210;
      v19 = "nw_http_encoding_outbound_frame_return_to_cache";
      v10 = "%{public}s called with null http_encoding, no backtrace";
LABEL_23:
      _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    }
  }

LABEL_24:
  if (v7)
  {
    free(v7);
  }

  return 1;
}

uint64_t nw_protocol_http_encoding_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_http_encoding_finalize_output_frames";
    v14 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v14, &type, &v26))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http_encoding_finalize_output_frames";
      v17 = "%{public}s called with null protocol";
LABEL_65:
      _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      goto LABEL_66;
    }

    if (v26 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_http_encoding_finalize_output_frames";
        v17 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_65;
      }

      goto LABEL_66;
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
        v29 = "nw_protocol_http_encoding_finalize_output_frames";
        v17 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    if (!v22)
    {
      goto LABEL_52;
    }

    *buf = 136446466;
    v29 = "nw_protocol_http_encoding_finalize_output_frames";
    v30 = 2082;
    v31 = backtrace_string;
    v23 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_51:
    _os_log_impl(&dword_181A37000, v15, v16, v23, buf, 0x16u);
    goto LABEL_52;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_http_encoding_finalize_output_frames";
    v14 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v14, &type, &v26))
    {
      goto LABEL_66;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_66;
      }

      *buf = 136446210;
      v29 = "nw_protocol_http_encoding_finalize_output_frames";
      v17 = "%{public}s called with null http_encoding";
      goto LABEL_65;
    }

    if (v26 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_http_encoding_finalize_output_frames";
        v17 = "%{public}s called with null http_encoding, backtrace limit exceeded";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v24 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        v29 = "nw_protocol_http_encoding_finalize_output_frames";
        v17 = "%{public}s called with null http_encoding, no backtrace";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    if (!v24)
    {
      goto LABEL_52;
    }

    *buf = 136446466;
    v29 = "nw_protocol_http_encoding_finalize_output_frames";
    v30 = 2082;
    v31 = backtrace_string;
    v23 = "%{public}s called with null http_encoding, dumping backtrace:%{public}s";
    goto LABEL_51;
  }

  if (a2)
  {
    if ((handle[198] & 1) == 0 && gLogDatapath == 1)
    {
      v18 = a2;
      v19 = __nwlog_obj();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
      a2 = v18;
      if (v20)
      {
        *buf = 136446722;
        v29 = "nw_protocol_http_encoding_finalize_output_frames";
        v30 = 2082;
        v31 = handle + 114;
        v32 = 2080;
        v33 = " ";
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
        a2 = v18;
      }
    }

    v3 = *(handle + 272);
    if ((v3 & 0x11) == 0)
    {
      *(handle + 272) = v3 | 0x10;
      v4 = a2;
      tqh_first = a2->tqh_first;
      if (nw_protocol_copy_http_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
      }

      v6 = nw_protocol_copy_http_definition_http_definition;
      v7 = nw_frame_copy_metadata_for_protocol(tqh_first, v6);
      v8 = nw_http_metadata_copy_request(v7);
      if (nw_http_request_has_method(v8, "HEAD"))
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      *(handle + 272) = *(handle + 272) & 0xFFFD | v9;
      if ((nw_http_fields_have_field_with_name(v8, "Accept-Encoding") & 1) == 0)
      {
        parameters = nw_protocol_get_parameters(handle);
        v11 = nw_parameters_copy_url_endpoint(parameters);
        v12 = nw_endpoint_url_scheme_is_secure(v11) ? "gzip, deflate, br" : "gzip, deflate";
        nw_http_fields_append(v8, "Accept-Encoding", v12);
        if (v11)
        {
          os_release(v11);
        }
      }

      if (v8)
      {
        os_release(v8);
      }

      if (v7)
      {
        os_release(v7);
      }

      a2 = v4;
      if (v6)
      {
        os_release(v6);
        a2 = v4;
      }
    }

    return nw_protocol_finalize_output_frames(*(handle + 4), a2);
  }

  __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_protocol_http_encoding_finalize_output_frames";
  v14 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (!__nwlog_fault(v14, &type, &v26))
  {
    goto LABEL_66;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v26 != 1)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v29 = "nw_protocol_http_encoding_finalize_output_frames";
        v17 = "%{public}s called with null frames, backtrace limit exceeded";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = type;
    v25 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446210;
        v29 = "nw_protocol_http_encoding_finalize_output_frames";
        v17 = "%{public}s called with null frames, no backtrace";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    if (v25)
    {
      *buf = 136446466;
      v29 = "nw_protocol_http_encoding_finalize_output_frames";
      v30 = 2082;
      v31 = backtrace_string;
      v23 = "%{public}s called with null frames, dumping backtrace:%{public}s";
      goto LABEL_51;
    }

LABEL_52:
    free(backtrace_string);
    goto LABEL_66;
  }

  v15 = __nwlog_obj();
  v16 = type;
  if (os_log_type_enabled(v15, type))
  {
    *buf = 136446210;
    v29 = "nw_protocol_http_encoding_finalize_output_frames";
    v17 = "%{public}s called with null frames";
    goto LABEL_65;
  }

LABEL_66:
  if (v14)
  {
    free(v14);
  }

  return 0;
}

uint64_t nw_protocol_http_encoding_get_input_frames(nw_protocol *a1, nw_protocol *a2, uint64_t a3, uint64_t a4, uint64_t a5, nw_frame_array_s *a6)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *v69 = 136446210;
    *&v69[4] = "nw_protocol_http_encoding_get_input_frames";
    v25 = _os_log_send_and_compose_impl();
    buf[0] = 16;
    LOBYTE(v58) = 0;
    if (!__nwlog_fault(v25, buf, &v58))
    {
      goto LABEL_77;
    }

    if (buf[0] != 17)
    {
      if (v58 != 1)
      {
        v26 = __nwlog_obj();
        v27 = buf[0];
        if (!os_log_type_enabled(v26, buf[0]))
        {
          goto LABEL_77;
        }

        *v69 = 136446210;
        *&v69[4] = "nw_protocol_http_encoding_get_input_frames";
        v28 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_76;
      }

      backtrace_string = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v27 = buf[0];
      v35 = os_log_type_enabled(v26, buf[0]);
      if (!backtrace_string)
      {
        if (!v35)
        {
          goto LABEL_77;
        }

        *v69 = 136446210;
        *&v69[4] = "nw_protocol_http_encoding_get_input_frames";
        v28 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_76;
      }

      if (v35)
      {
        *v69 = 136446466;
        *&v69[4] = "nw_protocol_http_encoding_get_input_frames";
        *&v69[12] = 2082;
        *&v69[14] = backtrace_string;
        v36 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_62:
        _os_log_impl(&dword_181A37000, v26, v27, v36, v69, 0x16u);
      }

LABEL_63:
      free(backtrace_string);
      goto LABEL_77;
    }

    v26 = __nwlog_obj();
    v27 = buf[0];
    if (!os_log_type_enabled(v26, buf[0]))
    {
      goto LABEL_77;
    }

    *v69 = 136446210;
    *&v69[4] = "nw_protocol_http_encoding_get_input_frames";
    v28 = "%{public}s called with null protocol";
LABEL_76:
    _os_log_impl(&dword_181A37000, v26, v27, v28, v69, 0xCu);
LABEL_77:
    if (v25)
    {
      free(v25);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *v69 = 136446210;
    *&v69[4] = "nw_protocol_http_encoding_get_input_frames";
    v25 = _os_log_send_and_compose_impl();
    buf[0] = 16;
    LOBYTE(v58) = 0;
    if (!__nwlog_fault(v25, buf, &v58))
    {
      goto LABEL_77;
    }

    if (buf[0] == 17)
    {
      v26 = __nwlog_obj();
      v27 = buf[0];
      if (!os_log_type_enabled(v26, buf[0]))
      {
        goto LABEL_77;
      }

      *v69 = 136446210;
      *&v69[4] = "nw_protocol_http_encoding_get_input_frames";
      v28 = "%{public}s called with null http_encoding";
      goto LABEL_76;
    }

    if (v58 != 1)
    {
      v26 = __nwlog_obj();
      v27 = buf[0];
      if (!os_log_type_enabled(v26, buf[0]))
      {
        goto LABEL_77;
      }

      *v69 = 136446210;
      *&v69[4] = "nw_protocol_http_encoding_get_input_frames";
      v28 = "%{public}s called with null http_encoding, backtrace limit exceeded";
      goto LABEL_76;
    }

    backtrace_string = __nw_create_backtrace_string();
    v26 = __nwlog_obj();
    v27 = buf[0];
    v41 = os_log_type_enabled(v26, buf[0]);
    if (backtrace_string)
    {
      if (v41)
      {
        *v69 = 136446466;
        *&v69[4] = "nw_protocol_http_encoding_get_input_frames";
        *&v69[12] = 2082;
        *&v69[14] = backtrace_string;
        v36 = "%{public}s called with null http_encoding, dumping backtrace:%{public}s";
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    if (!v41)
    {
      goto LABEL_77;
    }

    *v69 = 136446210;
    *&v69[4] = "nw_protocol_http_encoding_get_input_frames";
    v28 = "%{public}s called with null http_encoding, no backtrace";
    goto LABEL_76;
  }

  if ((handle[198] & 1) == 0 && gLogDatapath == 1)
  {
    v29 = a5;
    v30 = a4;
    v31 = a3;
    v32 = __nwlog_obj();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
    a3 = v31;
    a4 = v30;
    a5 = v29;
    if (v33)
    {
      *v69 = 136447490;
      *&v69[4] = "nw_protocol_http_encoding_get_input_frames";
      *&v69[12] = 2082;
      *&v69[14] = handle + 114;
      *&v69[22] = 2080;
      v70 = " ";
      LOWORD(v71) = 1024;
      *(&v71 + 2) = v31;
      HIWORD(v71) = 1024;
      LODWORD(v72) = v30;
      WORD2(v72) = 1024;
      *(&v72 + 6) = v29;
      _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sminimum bytes %u, maximum bytes %u, maximum frame count %u", v69, 0x32u);
      a3 = v31;
      a4 = v30;
      a5 = v29;
    }
  }

  v9 = *(handle + 162);
  if (v9)
  {
    if ((handle[198] & 1) == 0 && gLogDatapath == 1)
    {
      v42 = __nwlog_obj();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *v69 = 136446722;
        *&v69[4] = "nw_protocol_http_encoding_get_input_frames";
        *&v69[12] = 2082;
        *&v69[14] = handle + 114;
        *&v69[22] = 2080;
        v70 = " ";
        _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%salready getting input frames, returning 0", v69, 0x20u);
        return 0;
      }
    }

    return 0;
  }

  *(handle + 162) = v9 | 1;
  *v69 = 0;
  *&v69[8] = v69;
  *&v69[16] = 0x3802000000;
  v70 = __Block_byref_object_copy__21_35858;
  v71 = __Block_byref_object_dispose__22_35859;
  *&v72 = 0;
  *(&v72 + 1) = &v72;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2000000000;
  v61 = 0;
  if (nw_protocol_get_input_frames(a1->output_handler->flow_id, a1, a3, a4, a5, &v72) && *(*&v69[8] + 40))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3802000000;
    v65 = __Block_byref_object_copy__23_35860;
    v66 = __Block_byref_object_dispose__24_35861;
    if (nw_protocol_copy_http_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
    }

    object = nw_protocol_copy_http_definition_http_definition;
    v68 |= 1u;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 0x40000000;
    v50 = ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
    v51 = &unk_1E6A31570;
    v56 = a1;
    v57 = a6;
    v52 = buf;
    v53 = &v58;
    v54 = v69;
    v55 = handle;
    v11 = *(*&v69[8] + 40);
    do
    {
      if (!v11)
      {
        break;
      }

      v12 = *(v11 + 32);
      v13 = v50(v49);
      v11 = v12;
    }

    while ((v13 & 1) != 0);
    _Block_object_dispose(buf, 8);
    if ((v68 & 1) != 0 && object)
    {
      os_release(object);
    }
  }

  else
  {
    v14 = *(handle + 272);
    if ((v14 & 0x40) != 0)
    {
      if ((v14 & 0x24) == 4)
      {
        if (*(handle + 55))
        {
          if ((handle[198] & 1) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v15 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              *&buf[4] = "nw_protocol_http_encoding_get_input_frames";
              *&buf[12] = 2082;
              *&buf[14] = handle + 114;
              *&buf[22] = 2080;
              v65 = " ";
              _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sinput finished before decoder completed", buf, 0x20u);
            }
          }
        }
      }

      *(handle + 272) |= 0x80u;
      nw_http_encoding_check_http1_content_length(handle);
    }
  }

  v16 = *&v69[8];
  v17 = (*&v69[8] + 40);
  if (gLogDatapath == 1)
  {
    v37 = __nwlog_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v18 = *v17;
  if (*v17)
  {
    *(v18 + 40) = &v62;
    v19 = *(v16 + 48);
    v62 = v18;
    v63 = v19;
    *(v16 + 40) = 0;
    *(v16 + 48) = v17;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v65 = &__block_descriptor_tmp_21_49595;
    LOBYTE(v66) = 1;
    do
    {
      v20 = v62;
      if (!v62)
      {
        break;
      }

      v21 = *(v62 + 32);
      v22 = *(v62 + 40);
      v23 = (v21 + 40);
      if (!v21)
      {
        v23 = &v63;
      }

      *v23 = v22;
      *v22 = v21;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  if (gLogDatapath == 1)
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 0x40000000;
    v46 = ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_34;
    v47 = &__block_descriptor_tmp_35_35864;
    v48 = handle;
    tqh_first = a6->tqh_first;
    do
    {
      if (!tqh_first)
      {
        break;
      }

      v39 = *(tqh_first + 4);
      v40 = v46(v45);
      tqh_first = v39;
    }

    while ((v40 & 1) != 0);
  }

  if ((handle[198] & 1) == 0 && gLogDatapath == 1)
  {
    v43 = __nwlog_obj();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v44 = *(v59 + 6);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http_encoding_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = handle + 114;
      *&buf[22] = 2080;
      v65 = " ";
      LOWORD(v66) = 1024;
      *(&v66 + 2) = v44;
      _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sreturning %u frames", buf, 0x26u);
    }
  }

  nw_protocol_plugin_retry_set_getting_input_frames((handle + 216), a1, 0);
  v10 = *(v59 + 6);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(v69, 8);
  return v10;
}

__n128 __Block_byref_object_copy__21_35858(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__23_35860(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__24_35861(uint64_t result)
{
  if ((*(result + 48) & 1) != 0 && *(result + 40))
  {
    v1 = result;
    os_release(*(result + 40));
    result = v1;
  }

  *(result + 40) = 0;
  return result;
}

BOOL ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(void *a1, uint64_t a2)
{
  v242 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
    v35 = _os_log_send_and_compose_impl();
    v234[0] = 16;
    LOBYTE(v230[0]) = 0;
    if (__nwlog_fault(v35, v234, v230))
    {
      if (v234[0] == 17)
      {
        v36 = __nwlog_obj();
        v37 = v234[0];
        if (os_log_type_enabled(v36, v234[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          v38 = "%{public}s called with null frame";
LABEL_268:
          _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0xCu);
        }
      }

      else if (LOBYTE(v230[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v37 = v234[0];
        v40 = os_log_type_enabled(v36, v234[0]);
        if (backtrace_string)
        {
          if (v40)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_269;
        }

        if (v40)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          v38 = "%{public}s called with null frame, no backtrace";
          goto LABEL_268;
        }
      }

      else
      {
        v36 = __nwlog_obj();
        v37 = v234[0];
        if (os_log_type_enabled(v36, v234[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          v38 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_268;
        }
      }
    }

LABEL_269:
    if (v35)
    {
      free(v35);
    }

    return 0;
  }

  v3 = a1;
  v4 = nw_frame_copy_metadata_for_protocol(a2, *(*(a1[4] + 8) + 40));
  v5 = v4;
  if (v4 && *(v3[7] + 392) != v4)
  {
    v6 = nw_http_metadata_copy_response(v4);
    v7 = v3[7];
    v8 = *(v7 + 400);
    if ((v8 & 1) != 0 && *(v7 + 392))
    {
      v9 = v6;
      os_release(*(v7 + 392));
      v6 = v9;
      v8 = *(v7 + 400);
    }

    *(v7 + 392) = v5;
    *(v7 + 400) = v8 | 1;
    if (!v6)
    {
      goto LABEL_32;
    }

    v10 = v6;
    status_code = _nw_http_response_get_status_code(v10);

    if (status_code == 304 || (status_code - 200) > 0xFFFFFF9B || (v12 = v3[7], (*(v12 + 544) & 2) != 0))
    {
LABEL_31:
      os_release(v10);
LABEL_32:
      v5 = 0;
      goto LABEL_33;
    }

    v13 = *(v12 + 392);
    if (v13)
    {
      v14 = nw_http_metadata_copy_header_fields(v13);
      if (v14)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        LODWORD(v240) = 1;
        v230[0] = MEMORY[0x1E69E9820];
        v230[1] = 0x40000000;
        v230[2] = ___ZL33nw_http_encoding_get_content_typeP25nw_protocol_http_encodingP20nw_protocol_metadata_block_invoke;
        v230[3] = &unk_1E6A315B8;
        v230[4] = buf;
        v230[5] = v12;
        v15 = v14;
        v16 = v230;
        _nw_http_fields_access_value_by_name(v15, "Content-Encoding", v16);

        v17 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        os_release(v15);
        v18 = 0;
        v19 = v3[7];
        *(v19 + 540) = 1;
        if (v17 <= 3)
        {
          if (v17 == 2)
          {
            gzip = nw_decoder_create_gzip();
            goto LABEL_24;
          }

          if (v17 == 3)
          {
            *(v19 + 540) = 4;
            gzip = nw_decoder_create_deflate();
            goto LABEL_24;
          }
        }

        else
        {
          switch(v17)
          {
            case 4:
              gzip = nw_decoder_create_raw_deflate();
              goto LABEL_24;
            case 5:
              gzip = nw_decoder_create_brotli();
              goto LABEL_24;
            case 6:
              gzip = nw_decoder_create_zstd();
LABEL_24:
              v18 = gzip;
              break;
          }
        }

LABEL_25:
        v21 = v3[7];
        v22 = *(v21 + 440);
        if (v22 != v18)
        {
          v23 = v3[7];
          if (v22)
          {
            (**v22)(*(v21 + 440));
            free(v22);
            v23 = v3[7];
          }

          *(v21 + 440) = v18;
          v21 = v23;
        }

        if ((*(v21 + 198) & 1) == 0 && gLogDatapath == 1)
        {
          v198 = __nwlog_obj();
          if (os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG))
          {
            v199 = v3[7];
            v200 = v199 + 114;
            if (v17 > 6)
            {
              v201 = "<unknown>";
            }

            else
            {
              v201 = off_1E6A3AD98[v17];
            }

            v206 = *(v199 + 540);
            if (v206 > 6)
            {
              v207 = "<unknown>";
            }

            else
            {
              v207 = off_1E6A3AD98[v206];
            }

            *buf = 136447234;
            *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v200;
            *&buf[22] = 2080;
            v240 = " ";
            *v241 = 2080;
            *&v241[2] = v201;
            *&v241[10] = 2080;
            *&v241[12] = v207;
            _os_log_impl(&dword_181A37000, v198, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sfound encoding %s, alternative encoding %s", buf, 0x34u);
          }
        }

        goto LABEL_31;
      }

      v193 = v3;
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http_encoding_get_content_type";
      v194 = _os_log_send_and_compose_impl();
      v234[0] = 16;
      LOBYTE(v230[0]) = 0;
      if (__nwlog_fault(v194, v234, v230))
      {
        if (v234[0] == 17)
        {
          v195 = __nwlog_obj();
          v196 = v234[0];
          if (!os_log_type_enabled(v195, v234[0]))
          {
            goto LABEL_315;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_get_content_type";
          v197 = "%{public}s called with null header_fields";
          goto LABEL_314;
        }

        if (LOBYTE(v230[0]) != 1)
        {
          v195 = __nwlog_obj();
          v196 = v234[0];
          if (!os_log_type_enabled(v195, v234[0]))
          {
            goto LABEL_315;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_get_content_type";
          v197 = "%{public}s called with null header_fields, backtrace limit exceeded";
          goto LABEL_314;
        }

        v204 = __nw_create_backtrace_string();
        v195 = __nwlog_obj();
        v196 = v234[0];
        v205 = os_log_type_enabled(v195, v234[0]);
        if (!v204)
        {
          if (!v205)
          {
            goto LABEL_315;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http_encoding_get_content_type";
          v197 = "%{public}s called with null header_fields, no backtrace";
          goto LABEL_314;
        }

        if (v205)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_encoding_get_content_type";
          *&buf[12] = 2082;
          *&buf[14] = v204;
          _os_log_impl(&dword_181A37000, v195, v196, "%{public}s called with null header_fields, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v204);
      }

LABEL_315:
      if (!v194)
      {
LABEL_317:
        v17 = 0;
        v18 = 0;
        v3 = v193;
        *(v193[7] + 540) = 1;
        goto LABEL_25;
      }

LABEL_316:
      free(v194);
      goto LABEL_317;
    }

    v193 = v3;
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_encoding_get_content_type";
    v194 = _os_log_send_and_compose_impl();
    v234[0] = 16;
    LOBYTE(v230[0]) = 0;
    if (!__nwlog_fault(v194, v234, v230))
    {
      goto LABEL_315;
    }

    if (v234[0] == 17)
    {
      v195 = __nwlog_obj();
      v196 = v234[0];
      if (!os_log_type_enabled(v195, v234[0]))
      {
        goto LABEL_315;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_encoding_get_content_type";
      v197 = "%{public}s called with null http_metadata";
    }

    else
    {
      if (LOBYTE(v230[0]) != 1)
      {
        v195 = __nwlog_obj();
        v196 = v234[0];
        if (!os_log_type_enabled(v195, v234[0]))
        {
          goto LABEL_315;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_encoding_get_content_type";
        v197 = "%{public}s called with null http_metadata, backtrace limit exceeded";
        goto LABEL_314;
      }

      v202 = __nw_create_backtrace_string();
      v195 = __nwlog_obj();
      v196 = v234[0];
      v203 = os_log_type_enabled(v195, v234[0]);
      if (v202)
      {
        if (v203)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_encoding_get_content_type";
          *&buf[12] = 2082;
          *&buf[14] = v202;
          _os_log_impl(&dword_181A37000, v195, v196, "%{public}s called with null http_metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v202);
        if (!v194)
        {
          goto LABEL_317;
        }

        goto LABEL_316;
      }

      if (!v203)
      {
        goto LABEL_315;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_encoding_get_content_type";
      v197 = "%{public}s called with null http_metadata, no backtrace";
    }

LABEL_314:
    _os_log_impl(&dword_181A37000, v195, v196, v197, buf, 0xCu);
    goto LABEL_315;
  }

LABEL_33:
  v24 = *(a2 + 112);
  if (!v24)
  {
    goto LABEL_62;
  }

  if ((*(a2 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(a2, *(a2 + 88)))
  {
    LODWORD(v24) = 0;
LABEL_62:
    v26 = 0;
    v27 = *(a2 + 64);
    if (v27)
    {
      goto LABEL_40;
    }

LABEL_63:
    v30 = v3 + 7;
    v29 = v3[7];
    if (*(v29 + 440))
    {
      v41 = v24 == 0;
    }

    else
    {
      v41 = 1;
    }

    if (!v41)
    {
      v212 = v3;
      v213 = v5;
      v215 = 0;
      goto LABEL_75;
    }

LABEL_68:
    v42 = (*(v3[6] + 8) + 48);
    v43 = (a2 + 32);
    v44 = *(a2 + 32);
    v45 = *(a2 + 40);
    if (v44)
    {
      v42 = (v44 + 40);
    }

    *v42 = v45;
    *v45 = v44;
    *(a2 + 40) = 0;
    *v43 = 0;
    v46 = v3[9];
    v47 = *(v46 + 8);
    *(a2 + 40) = v47;
    *v47 = a2;
    *(v46 + 8) = v43;
    v48 = *(v3[5] + 8);
    v49 = *(v48 + 24) + 1;
    *(v48 + 24) = v49;
    if (v49 == v49 << 31 >> 31)
    {
LABEL_217:
      v162 = 1;
      if (v5)
      {
        goto LABEL_247;
      }

      return v162;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v50 = *(*(v3[5] + 8) + 24);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
    *&buf[12] = 2082;
    *&buf[14] = "count";
    *&buf[22] = 2048;
    v240 = 1;
    *v241 = 2048;
    *&v241[2] = v50;
    v51 = _os_log_send_and_compose_impl();
    v234[0] = 16;
    LOBYTE(v225) = 0;
    if (__nwlog_fault(v51, v234, &v225))
    {
      if (v234[0] == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v52 = gLogObj;
        v53 = v234[0];
        if (os_log_type_enabled(gLogObj, v234[0]))
        {
          v54 = *(*(v3[5] + 8) + 24);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "count";
          *&buf[22] = 2048;
          v240 = 1;
          *v241 = 2048;
          *&v241[2] = v54;
          v55 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_212:
          v160 = v52;
          v161 = v53;
LABEL_213:
          _os_log_impl(&dword_181A37000, v160, v161, v55, buf, 0x2Au);
        }
      }

      else if (v225 == 1)
      {
        v150 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v151 = gLogObj;
        v152 = v234[0];
        v153 = os_log_type_enabled(gLogObj, v234[0]);
        if (v150)
        {
          if (v153)
          {
            v154 = *(*(v3[5] + 8) + 24);
            *buf = 136447234;
            *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = "count";
            *&buf[22] = 2048;
            v240 = 1;
            *v241 = 2048;
            *&v241[2] = v154;
            *&v241[10] = 2082;
            *&v241[12] = v150;
            _os_log_impl(&dword_181A37000, v151, v152, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v150);
          goto LABEL_214;
        }

        if (v153)
        {
          v165 = *(*(v3[5] + 8) + 24);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "count";
          *&buf[22] = 2048;
          v240 = 1;
          *v241 = 2048;
          *&v241[2] = v165;
          v55 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          v160 = v151;
          v161 = v152;
          goto LABEL_213;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v52 = gLogObj;
        v53 = v234[0];
        if (os_log_type_enabled(gLogObj, v234[0]))
        {
          v159 = *(*(v3[5] + 8) + 24);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = "count";
          *&buf[22] = 2048;
          v240 = 1;
          *v241 = 2048;
          *&v241[2] = v159;
          v55 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_212;
        }
      }
    }

LABEL_214:
    if (v51)
    {
      free(v51);
    }

    *(*(v3[5] + 8) + 24) = -1;
    goto LABEL_217;
  }

  LODWORD(v24) = *(a2 + 52);
  v25 = *(a2 + 56);
  if (v24)
  {
    LODWORD(v24) = v24 - (v25 + *(a2 + 60));
  }

  v26 = *(a2 + 112) + v25;
  v27 = *(a2 + 64);
  if (!v27)
  {
    goto LABEL_63;
  }

LABEL_40:
  v28 = *(v27 + 66);
  v30 = v3 + 7;
  v29 = v3[7];
  v31 = *(v29 + 440);
  if (v31)
  {
    v32 = v24 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    if ((v28 & 0x40) != 0)
    {
      if (v31)
      {
        if ((*(v29 + 544) & 0x24) == 4 && (*(v29 + 198) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v33 = gLogObj;
          v34 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
          v29 = *v30;
          if (v34)
          {
            *buf = 136446722;
            *&buf[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
            *&buf[12] = 2082;
            *&buf[14] = v29 + 114;
            *&buf[22] = 2080;
            v240 = " ";
            _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%smetadata completed before decoder completed", buf, 0x20u);
            v29 = *v30;
          }
        }
      }

      *(v29 + 544) |= 0x80u;
      nw_http_encoding_check_http1_content_length(*v30);
    }

    goto LABEL_68;
  }

  v212 = v3;
  v213 = v5;
  v215 = (v28 >> 6) & 1;
LABEL_75:
  *(v29 + 544) |= 4u;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3802000000;
  v240 = __Block_byref_object_copy__21_35858;
  v56 = (*(*v30 + 544) >> 5) & 1;
  v214 = v24;
  *v241 = __Block_byref_object_dispose__22_35859;
  *&v241[8] = 0;
  *&v241[16] = &v241[8];
  v229 = v56;
  v225 = 0;
  v226 = &v225;
  v227 = 0x2000000000;
  v228 = 0;
  v57 = MEMORY[0x1E69E9820];
  while (1)
  {
    v58 = *v30;
    v59 = *(*v30 + 440);
    v224[0] = v57;
    v224[1] = 0x40000000;
    v224[2] = ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_25;
    v224[3] = &unk_1E6A31520;
    v224[5] = v58;
    v224[6] = a2;
    v224[4] = buf;
    if (v59)
    {
      if (v26)
      {
        if (v229 == 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v60 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *v234 = 136446210;
            *&v234[4] = "nw_decoder_decode";
            _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_ERROR, "%{public}s extra data", v234, 0xCu);
          }

          v61 = 0;
        }

        else
        {
          v61 = (*(*v59 + 16))(v59, v26, v214, v215, &v229, v224);
        }

        goto LABEL_84;
      }

      __nwlog_obj();
      *v234 = 136446210;
      *&v234[4] = "nw_decoder_decode";
      v87 = _os_log_send_and_compose_impl();
      LOBYTE(v232) = 16;
      v231 = 0;
      if (!__nwlog_fault(v87, &v232, &v231))
      {
        goto LABEL_168;
      }

      if (v232 != 17)
      {
        if (v231 != 1)
        {
          v112 = __nwlog_obj();
          v113 = v232;
          if (os_log_type_enabled(v112, v232))
          {
            *v234 = 136446210;
            *&v234[4] = "nw_decoder_decode";
            v90 = v112;
            v91 = v113;
            v92 = "%{public}s called with null in_bytes, backtrace limit exceeded";
            goto LABEL_167;
          }

          goto LABEL_168;
        }

        v100 = __nw_create_backtrace_string();
        v107 = __nwlog_obj();
        v108 = v232;
        loga = v107;
        v109 = os_log_type_enabled(v107, v232);
        if (!v100)
        {
          if (v109)
          {
            *v234 = 136446210;
            *&v234[4] = "nw_decoder_decode";
            v90 = loga;
            v91 = v108;
            v92 = "%{public}s called with null in_bytes, no backtrace";
            goto LABEL_167;
          }

          goto LABEL_168;
        }

        if (v109)
        {
          *v234 = 136446466;
          *&v234[4] = "nw_decoder_decode";
          *&v234[12] = 2082;
          *&v234[14] = v100;
          v104 = loga;
          v105 = v108;
          v106 = "%{public}s called with null in_bytes, dumping backtrace:%{public}s";
LABEL_143:
          _os_log_impl(&dword_181A37000, v104, v105, v106, v234, 0x16u);
        }

        goto LABEL_144;
      }

      v93 = __nwlog_obj();
      v94 = v232;
      if (os_log_type_enabled(v93, v232))
      {
        *v234 = 136446210;
        *&v234[4] = "nw_decoder_decode";
        v90 = v93;
        v91 = v94;
        v92 = "%{public}s called with null in_bytes";
        goto LABEL_167;
      }
    }

    else
    {
      __nwlog_obj();
      *v234 = 136446210;
      *&v234[4] = "nw_decoder_decode";
      v87 = _os_log_send_and_compose_impl();
      LOBYTE(v232) = 16;
      v231 = 0;
      if (!__nwlog_fault(v87, &v232, &v231))
      {
        goto LABEL_168;
      }

      if (v232 == 17)
      {
        v88 = __nwlog_obj();
        v89 = v232;
        if (os_log_type_enabled(v88, v232))
        {
          *v234 = 136446210;
          *&v234[4] = "nw_decoder_decode";
          v90 = v88;
          v91 = v89;
          v92 = "%{public}s called with null decoder";
LABEL_167:
          _os_log_impl(&dword_181A37000, v90, v91, v92, v234, 0xCu);
        }
      }

      else
      {
        if (v231 == 1)
        {
          v100 = __nw_create_backtrace_string();
          v101 = __nwlog_obj();
          v102 = v232;
          log = v101;
          v103 = os_log_type_enabled(v101, v232);
          if (!v100)
          {
            if (v103)
            {
              *v234 = 136446210;
              *&v234[4] = "nw_decoder_decode";
              v90 = log;
              v91 = v102;
              v92 = "%{public}s called with null decoder, no backtrace";
              goto LABEL_167;
            }

            goto LABEL_168;
          }

          if (v103)
          {
            *v234 = 136446466;
            *&v234[4] = "nw_decoder_decode";
            *&v234[12] = 2082;
            *&v234[14] = v100;
            v104 = log;
            v105 = v102;
            v106 = "%{public}s called with null decoder, dumping backtrace:%{public}s";
            goto LABEL_143;
          }

LABEL_144:
          free(v100);
          goto LABEL_168;
        }

        v110 = __nwlog_obj();
        v111 = v232;
        if (os_log_type_enabled(v110, v232))
        {
          *v234 = 136446210;
          *&v234[4] = "nw_decoder_decode";
          v90 = v110;
          v91 = v111;
          v92 = "%{public}s called with null decoder, backtrace limit exceeded";
          goto LABEL_167;
        }
      }
    }

LABEL_168:
    if (v87)
    {
      free(v87);
    }

    v61 = -1;
LABEL_84:
    v226[3] = v61;
    v62 = v229;
    *(*v30 + 544) = *(*v30 + 544) & 0xFFDF | (32 * v229);
    if ((*(*v30 + 198) & 1) == 0 && gLogDatapath == 1)
    {
      v95 = __nwlog_obj();
      v96 = os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG);
      v62 = v229;
      if (v96)
      {
        v97 = *v30 + 114;
        v98 = v226[3];
        *v234 = 136447234;
        *&v234[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
        *&v234[12] = 2082;
        *&v234[14] = v97;
        *&v234[22] = 2080;
        v235 = " ";
        v236 = 2048;
        *v237 = v98;
        *&v237[8] = 1024;
        LODWORD(v238) = v229;
        _os_log_impl(&dword_181A37000, v95, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdecoder decoded %zd bytes, complete %{BOOL}d", v234, 0x30u);
        v62 = v229;
      }
    }

    if ((v62 & 1) != 0 && !*(*&buf[8] + 40))
    {
      v63 = *v30;
      if (*v30)
      {
        if ((*(v63 + 198) & 1) == 0 && gLogDatapath == 1)
        {
          v122 = __nwlog_obj();
          if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
          {
            *v234 = 136446978;
            *&v234[4] = "nw_http_encoding_create_inbound_frame";
            *&v234[12] = 2082;
            *&v234[14] = v63 + 114;
            *&v234[22] = 2080;
            v235 = " ";
            v236 = 1024;
            *v237 = 0;
            _os_log_impl(&dword_181A37000, v122, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled for size %u", v234, 0x26u);
          }
        }

        frame = nw_frame_cache_create_frame((v63 + 336), 0);
        if (frame)
        {
          v65 = frame;
          frame[2] = 0;
          v66 = *(v63 + 464);
          frame[3] = v66;
          *v66 = frame;
          *(v63 + 464) = frame + 2;
          frame[10] = nw_http_encoding_inbound_frame_finalizer;
          frame[11] = v63;
LABEL_93:
          nw_frame_inherit_metadata(a2, v65, 1);
          *(v65 + 186) |= 0x80u;
          v67 = *&buf[8];
          *(v65 + 32) = 0;
          v68 = *(v67 + 48);
          *(v65 + 40) = v68;
          *v68 = v65;
          *(v67 + 48) = v65 + 32;
          goto LABEL_94;
        }

        __nwlog_obj();
        *v234 = 136446210;
        *&v234[4] = "nw_http_encoding_create_inbound_frame";
        v114 = _os_log_send_and_compose_impl();
        LOBYTE(v232) = 16;
        v231 = 0;
        if (!__nwlog_fault(v114, &v232, &v231))
        {
          goto LABEL_186;
        }

        if (v232 == 17)
        {
          v120 = __nwlog_obj();
          v121 = v232;
          if (os_log_type_enabled(v120, v232))
          {
            *v234 = 136446210;
            *&v234[4] = "nw_http_encoding_create_inbound_frame";
            v117 = v120;
            v118 = v121;
            v119 = "%{public}s called with null frame";
            goto LABEL_185;
          }

LABEL_186:
          if (v114)
          {
            free(v114);
          }

          v65 = 0;
          goto LABEL_93;
        }

        if (v231 == 1)
        {
          v123 = __nw_create_backtrace_string();
          v130 = __nwlog_obj();
          v131 = v232;
          logc = v130;
          v132 = os_log_type_enabled(v130, v232);
          if (v123)
          {
            if (v132)
            {
              *v234 = 136446466;
              *&v234[4] = "nw_http_encoding_create_inbound_frame";
              *&v234[12] = 2082;
              *&v234[14] = v123;
              v127 = logc;
              v128 = v131;
              v129 = "%{public}s called with null frame, dumping backtrace:%{public}s";
LABEL_175:
              _os_log_impl(&dword_181A37000, v127, v128, v129, v234, 0x16u);
            }

            goto LABEL_176;
          }

          if (!v132)
          {
            goto LABEL_186;
          }

          *v234 = 136446210;
          *&v234[4] = "nw_http_encoding_create_inbound_frame";
          v117 = logc;
          v118 = v131;
          v119 = "%{public}s called with null frame, no backtrace";
        }

        else
        {
          v135 = __nwlog_obj();
          v136 = v232;
          if (!os_log_type_enabled(v135, v232))
          {
            goto LABEL_186;
          }

          *v234 = 136446210;
          *&v234[4] = "nw_http_encoding_create_inbound_frame";
          v117 = v135;
          v118 = v136;
          v119 = "%{public}s called with null frame, backtrace limit exceeded";
        }
      }

      else
      {
        __nwlog_obj();
        *v234 = 136446210;
        *&v234[4] = "nw_http_encoding_create_inbound_frame";
        v114 = _os_log_send_and_compose_impl();
        LOBYTE(v232) = 16;
        v231 = 0;
        if (!__nwlog_fault(v114, &v232, &v231))
        {
          goto LABEL_186;
        }

        if (v232 == 17)
        {
          v115 = __nwlog_obj();
          v116 = v232;
          if (os_log_type_enabled(v115, v232))
          {
            *v234 = 136446210;
            *&v234[4] = "nw_http_encoding_create_inbound_frame";
            v117 = v115;
            v118 = v116;
            v119 = "%{public}s called with null http_encoding";
            goto LABEL_185;
          }

          goto LABEL_186;
        }

        if (v231 == 1)
        {
          v123 = __nw_create_backtrace_string();
          v124 = __nwlog_obj();
          v125 = v232;
          logb = v124;
          v126 = os_log_type_enabled(v124, v232);
          if (v123)
          {
            if (v126)
            {
              *v234 = 136446466;
              *&v234[4] = "nw_http_encoding_create_inbound_frame";
              *&v234[12] = 2082;
              *&v234[14] = v123;
              v127 = logb;
              v128 = v125;
              v129 = "%{public}s called with null http_encoding, dumping backtrace:%{public}s";
              goto LABEL_175;
            }

LABEL_176:
            free(v123);
            goto LABEL_186;
          }

          if (!v126)
          {
            goto LABEL_186;
          }

          *v234 = 136446210;
          *&v234[4] = "nw_http_encoding_create_inbound_frame";
          v117 = logb;
          v118 = v125;
          v119 = "%{public}s called with null http_encoding, no backtrace";
        }

        else
        {
          v133 = __nwlog_obj();
          v134 = v232;
          if (!os_log_type_enabled(v133, v232))
          {
            goto LABEL_186;
          }

          *v234 = 136446210;
          *&v234[4] = "nw_http_encoding_create_inbound_frame";
          v117 = v133;
          v118 = v134;
          v119 = "%{public}s called with null http_encoding, backtrace limit exceeded";
        }
      }

LABEL_185:
      _os_log_impl(&dword_181A37000, v117, v118, v119, v234, 0xCu);
      goto LABEL_186;
    }

LABEL_94:
    v69 = v226[3];
    if ((v69 & 0x8000000000000000) == 0)
    {
      break;
    }

    v70 = *&buf[8];
    if (gLogDatapath == 1)
    {
      v99 = __nwlog_obj();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
      {
        *v234 = 136446210;
        *&v234[4] = "nw_protocol_finalize_temp_frame_array";
        _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_DEBUG, "%{public}s called", v234, 0xCu);
      }
    }

    v71 = *(v70 + 40);
    if (v71)
    {
      *(v71 + 40) = &v232;
      v72 = *(v70 + 48);
      v232 = v71;
      v233 = v72;
      *(v70 + 40) = 0;
      *(v70 + 48) = v70 + 40;
      *v234 = MEMORY[0x1E69E9820];
      *&v234[8] = 0x40000000;
      *&v234[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
      v235 = &__block_descriptor_tmp_21_49595;
      LOBYTE(v236) = 0;
      do
      {
        v73 = v232;
        if (!v232)
        {
          break;
        }

        v74 = *(v232 + 32);
        v75 = *(v232 + 40);
        v76 = (v74 + 40);
        if (!v74)
        {
          v76 = &v233;
        }

        *v76 = v75;
        *v75 = v74;
        *(v73 + 32) = 0;
        *(v73 + 40) = 0;
      }

      while (((*&v234[16])(v234) & 1) != 0);
    }

    v77 = *v30;
    if (*(*v30 + 540) == 1)
    {
      v5 = v213;
      if (*(*v30 + 198))
      {
        goto LABEL_199;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v146 = gLogObj;
      v147 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      v77 = *v30;
      if (v147)
      {
        *v234 = 136446722;
        *&v234[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
        *&v234[12] = 2082;
        *&v234[14] = v77 + 114;
        *&v234[22] = 2080;
        v235 = " ";
        _os_log_impl(&dword_181A37000, v146, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sdecoding failed", v234, 0x20u);
        v77 = *v30;
      }

      if (v77)
      {
LABEL_199:
        nw_protocol_error(*(v77 + 48), v77);
        nw_protocol_disconnect(*(v77 + 32), v77);
        goto LABEL_246;
      }

      __nwlog_obj();
      *v234 = 136446210;
      *&v234[4] = "nw_http_encoding_close";
      v187 = _os_log_send_and_compose_impl();
      LOBYTE(v232) = 16;
      v231 = 0;
      if (!__nwlog_fault(v187, &v232, &v231))
      {
        goto LABEL_299;
      }

      if (v232 == 17)
      {
        v188 = __nwlog_obj();
        v189 = v232;
        if (os_log_type_enabled(v188, v232))
        {
          *v234 = 136446210;
          *&v234[4] = "nw_http_encoding_close";
          v190 = "%{public}s called with null http_encoding";
          goto LABEL_298;
        }

        goto LABEL_299;
      }

      if (v231 == 1)
      {
        v191 = __nw_create_backtrace_string();
        v188 = __nwlog_obj();
        v189 = v232;
        v192 = os_log_type_enabled(v188, v232);
        if (v191)
        {
          if (v192)
          {
            *v234 = 136446466;
            *&v234[4] = "nw_http_encoding_close";
            *&v234[12] = 2082;
            *&v234[14] = v191;
            _os_log_impl(&dword_181A37000, v188, v189, "%{public}s called with null http_encoding, dumping backtrace:%{public}s", v234, 0x16u);
          }

          free(v191);
          goto LABEL_299;
        }

        if (!v192)
        {
LABEL_299:
          if (v187)
          {
            free(v187);
          }

          goto LABEL_246;
        }

        *v234 = 136446210;
        *&v234[4] = "nw_http_encoding_close";
        v190 = "%{public}s called with null http_encoding, no backtrace";
      }

      else
      {
        v188 = __nwlog_obj();
        v189 = v232;
        if (!os_log_type_enabled(v188, v232))
        {
          goto LABEL_299;
        }

        *v234 = 136446210;
        *&v234[4] = "nw_http_encoding_close";
        v190 = "%{public}s called with null http_encoding, backtrace limit exceeded";
      }

LABEL_298:
      _os_log_impl(&dword_181A37000, v188, v189, v190, v234, 0xCu);
      goto LABEL_299;
    }

    if ((*(*v30 + 198) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v78 = gLogObj;
      v79 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      v77 = *v30;
      if (v79)
      {
        v80 = *(v77 + 540);
        v81 = "<unknown>";
        if (v80 <= 6)
        {
          v81 = off_1E6A3AD98[v80];
        }

        *v234 = 136446978;
        *&v234[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
        *&v234[12] = 2082;
        *&v234[14] = v77 + 114;
        *&v234[22] = 2080;
        v235 = " ";
        v236 = 2080;
        *v237 = v81;
        _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sdecoding failed, trying alternative encoding %s", v234, 0x2Au);
        v77 = *v30;
      }
    }

    v82 = 0;
    v83 = *(v77 + 540);
    *(v77 + 540) = 1;
    if (v83 <= 3)
    {
      if (v83 == 2)
      {
        deflate = nw_decoder_create_gzip();
        goto LABEL_119;
      }

      if (v83 == 3)
      {
        *(v77 + 540) = 4;
        deflate = nw_decoder_create_deflate();
        goto LABEL_119;
      }
    }

    else
    {
      switch(v83)
      {
        case 4:
          deflate = nw_decoder_create_raw_deflate();
          goto LABEL_119;
        case 5:
          deflate = nw_decoder_create_brotli();
          goto LABEL_119;
        case 6:
          deflate = nw_decoder_create_zstd();
LABEL_119:
          v82 = deflate;
          break;
      }
    }

    v85 = *v30;
    v86 = *(*v30 + 440);
    if (v86 != v82)
    {
      if (v86)
      {
        (**v86)(*(*v30 + 440));
        free(v86);
      }

      *(v85 + 440) = v82;
    }
  }

  v137 = *(*v30 + 328);
  *(*v30 + 328) = v137 + v69;
  if (__OFADD__(v137, v69))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v138 = v226[3];
    v139 = *(*v30 + 328);
    *v234 = 136446978;
    *&v234[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
    *&v234[12] = 2082;
    *&v234[14] = "http_encoding->decoded_length";
    *&v234[22] = 2048;
    v235 = v138;
    v236 = 2048;
    *v237 = v139;
    v140 = _os_log_send_and_compose_impl();
    LOBYTE(v232) = 16;
    v231 = 0;
    v149 = v212;
    if (__nwlog_fault(v140, &v232, &v231))
    {
      if (v232 == 17)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v141 = gLogObj;
        v142 = v232;
        if (os_log_type_enabled(gLogObj, v232))
        {
          v143 = v226[3];
          v144 = *(*v30 + 328);
          *v234 = 136446978;
          *&v234[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          *&v234[12] = 2082;
          *&v234[14] = "http_encoding->decoded_length";
          *&v234[22] = 2048;
          v235 = v143;
          v236 = 2048;
          *v237 = v144;
          v145 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_225:
          _os_log_impl(&dword_181A37000, v141, v142, v145, v234, 0x2Au);
        }
      }

      else if (v231 == 1)
      {
        v155 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v141 = gLogObj;
        v142 = v232;
        v156 = os_log_type_enabled(gLogObj, v232);
        if (v155)
        {
          if (v156)
          {
            v157 = v226[3];
            v158 = *(*v30 + 328);
            *v234 = 136447234;
            *&v234[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
            *&v234[12] = 2082;
            *&v234[14] = "http_encoding->decoded_length";
            *&v234[22] = 2048;
            v235 = v157;
            v236 = 2048;
            *v237 = v158;
            *&v237[8] = 2082;
            v238 = v155;
            _os_log_impl(&dword_181A37000, v141, v142, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", v234, 0x34u);
          }

          free(v155);
          goto LABEL_226;
        }

        if (v156)
        {
          v166 = v226[3];
          v167 = *(*v30 + 328);
          *v234 = 136446978;
          *&v234[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          *&v234[12] = 2082;
          *&v234[14] = "http_encoding->decoded_length";
          *&v234[22] = 2048;
          v235 = v166;
          v236 = 2048;
          *v237 = v167;
          v145 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_225;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v141 = gLogObj;
        v142 = v232;
        if (os_log_type_enabled(gLogObj, v232))
        {
          v163 = v226[3];
          v164 = *(*v30 + 328);
          *v234 = 136446978;
          *&v234[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          *&v234[12] = 2082;
          *&v234[14] = "http_encoding->decoded_length";
          *&v234[22] = 2048;
          v235 = v163;
          v236 = 2048;
          *v237 = v164;
          v145 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_225;
        }
      }
    }

LABEL_226:
    if (v140)
    {
      free(v140);
    }

    v148 = *v30;
    *(*v30 + 328) = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_229;
  }

  v148 = *v30;
  v149 = v212;
LABEL_229:
  if ((*(v148 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v183 = __nwlog_obj();
    if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
    {
      v184 = *v30 + 114;
      v185 = *(a2 + 64);
      if (v185)
      {
        LODWORD(v185) = (*(v185 + 66) >> 6) & 1;
      }

      v186 = *(a2 + 186) >> 7;
      *v234 = 136447234;
      *&v234[4] = "nw_protocol_http_encoding_get_input_frames_block_invoke";
      *&v234[12] = 2082;
      *&v234[14] = v184;
      *&v234[22] = 2080;
      v235 = " ";
      v236 = 1024;
      *v237 = v185;
      *&v237[4] = 1024;
      *&v237[6] = v186;
      _os_log_impl(&dword_181A37000, v183, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%smetadata complete %{BOOL}d, connection complete %{BOOL}d", v234, 0x2Cu);
    }
  }

  v168 = *(a2 + 64);
  if (v168 && (*(v168 + 66) & 0x40) != 0)
  {
    v169 = **(*(*&buf[8] + 48) + 8);
    if (v169)
    {
      nw_frame_inherit_metadata(a2, v169, 1);
    }

    *(*v30 + 544) |= 0x80u;
    nw_http_encoding_check_http1_content_length(*v30);
  }

  v216[0] = MEMORY[0x1E69E9820];
  v216[1] = 0x40000000;
  v217 = ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_29;
  v218 = &unk_1E6A31548;
  v222 = *(v149 + 7);
  v219 = &v225;
  v220 = buf;
  v223 = v149[9];
  v221 = v149[5];
  v170 = *(*&buf[8] + 40);
  do
  {
    if (!v170)
    {
      break;
    }

    v171 = *(v170 + 32);
    v172 = v217(v216);
    v170 = v171;
  }

  while ((v172 & 1) != 0);
  v173 = *&buf[8];
  v174 = (*&buf[8] + 40);
  v5 = v213;
  if (gLogDatapath == 1)
  {
    v182 = __nwlog_obj();
    if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
    {
      *v234 = 136446210;
      *&v234[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v182, OS_LOG_TYPE_DEBUG, "%{public}s called", v234, 0xCu);
    }
  }

  v175 = *v174;
  if (*v174)
  {
    *(v175 + 40) = &v232;
    v176 = *(v173 + 48);
    v232 = v175;
    v233 = v176;
    *(v173 + 40) = 0;
    *(v173 + 48) = v174;
    *v234 = MEMORY[0x1E69E9820];
    *&v234[8] = 0x40000000;
    *&v234[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v235 = &__block_descriptor_tmp_21_49595;
    LOBYTE(v236) = 0;
    do
    {
      v177 = v232;
      if (!v232)
      {
        break;
      }

      v178 = *(v232 + 32);
      v179 = *(v232 + 40);
      v180 = (v178 + 40);
      if (!v178)
      {
        v180 = &v233;
      }

      *v180 = v179;
      *v179 = v178;
      *(v177 + 32) = 0;
      *(v177 + 40) = 0;
    }

    while (((*&v234[16])(v234) & 1) != 0);
  }

LABEL_246:
  v162 = v69 >= 0;
  _Block_object_dispose(&v225, 8);
  _Block_object_dispose(buf, 8);
  if (v5)
  {
LABEL_247:
    os_release(v5);
  }

  return v162;
}

uint64_t ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_34(uint64_t a1, _DWORD *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32) + 114;
      v7 = 136447234;
      v8 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
      v9 = 2082;
      v10 = v6;
      v11 = 2080;
      v12 = " ";
      v13 = 2048;
      v14 = a2;
      v15 = 1024;
      v16 = nw_frame_unclaimed_length(a2);
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sframe %p unclaimed length %u", &v7, 0x30u);
    }
  }

  return 1;
}

void ___ZL33nw_http_encoding_get_content_typeP25nw_protocol_http_encodingP20nw_protocol_metadata_block_invoke(uint64_t a1, char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (!strcasecmp(a2, "gzip") || !strcasecmp(a2, "x-gzip"))
    {
      v6 = 2;
    }

    else if (!strcasecmp(a2, "deflate"))
    {
      v6 = 3;
    }

    else if (!strcasecmp(a2, "br"))
    {
      v6 = 5;
    }

    else if (!strcasecmp(a2, "zstd"))
    {
      v6 = 6;
    }

    else
    {
      if ((*(*(a1 + 40) + 198) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v4 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v5 = *(a1 + 40) + 114;
          v7 = 136446978;
          v8 = "nw_http_encoding_get_content_type_block_invoke";
          v9 = 2082;
          v10 = v5;
          v11 = 2080;
          v12 = " ";
          v13 = 2080;
          v14 = a2;
          _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sunknown encoding type %s, ignoring", &v7, 0x2Au);
        }
      }

      v6 = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = v6;
  }
}

uint64_t ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_25(void *a1, size_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  v4 = *(v3 + 198);
  if ((v4 & 1) == 0)
  {
    if (gLogDatapath == 1)
    {
      v15 = a2;
      v16 = __nwlog_obj();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
      v3 = a1[5];
      if (v17)
      {
        *buf = 136446978;
        v28 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
        v29 = 2082;
        v30 = (v3 + 114);
        v31 = 2080;
        v32 = " ";
        v33 = 2048;
        v34 = v15;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdecoder asking for frame of size %zu", buf, 0x2Au);
        v3 = a1[5];
      }

      a2 = v15;
      if (!v3)
      {
        __nwlog_obj();
        *buf = 136446210;
        v28 = "nw_http_encoding_create_inbound_frame";
        v11 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v25 = 0;
        if (!__nwlog_fault(v11, &type, &v25))
        {
          goto LABEL_41;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v13 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136446210;
            v28 = "nw_http_encoding_create_inbound_frame";
            v14 = "%{public}s called with null http_encoding";
            goto LABEL_40;
          }

          goto LABEL_41;
        }

        if (v25 != 1)
        {
          v12 = __nwlog_obj();
          v13 = type;
          if (os_log_type_enabled(v12, type))
          {
            *buf = 136446210;
            v28 = "nw_http_encoding_create_inbound_frame";
            v14 = "%{public}s called with null http_encoding, backtrace limit exceeded";
            goto LABEL_40;
          }

          goto LABEL_41;
        }

        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v24 = os_log_type_enabled(v12, type);
        if (!backtrace_string)
        {
          if (v24)
          {
            *buf = 136446210;
            v28 = "nw_http_encoding_create_inbound_frame";
            v14 = "%{public}s called with null http_encoding, no backtrace";
            goto LABEL_40;
          }

          goto LABEL_41;
        }

        if (v24)
        {
          *buf = 136446466;
          v28 = "nw_http_encoding_create_inbound_frame";
          v29 = 2082;
          v30 = backtrace_string;
          v23 = "%{public}s called with null http_encoding, dumping backtrace:%{public}s";
          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    v4 = *(v3 + 198);
  }

  if ((v4 & 1) == 0 && gLogDatapath == 1)
  {
    v18 = a2;
    v19 = __nwlog_obj();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
    a2 = v18;
    if (v20)
    {
      *buf = 136446978;
      v28 = "nw_http_encoding_create_inbound_frame";
      v29 = 2082;
      v30 = (v3 + 114);
      v31 = 2080;
      v32 = " ";
      v33 = 1024;
      LODWORD(v34) = v18;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled for size %u", buf, 0x26u);
      a2 = v18;
    }
  }

  frame = nw_frame_cache_create_frame((v3 + 336), a2);
  if (frame)
  {
    v6 = frame;
    frame[2] = 0;
    v7 = *(v3 + 464);
    frame[3] = v7;
    *v7 = frame;
    *(v3 + 464) = frame + 2;
    frame[10] = nw_http_encoding_inbound_frame_finalizer;
    frame[11] = v3;
    goto LABEL_8;
  }

  __nwlog_obj();
  *buf = 136446210;
  v28 = "nw_http_encoding_create_inbound_frame";
  v11 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v11, &type, &v25))
  {
    goto LABEL_41;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v25 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v28 = "nw_http_encoding_create_inbound_frame";
        v14 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type;
    v22 = os_log_type_enabled(v12, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        v28 = "nw_http_encoding_create_inbound_frame";
        v14 = "%{public}s called with null frame, no backtrace";
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    if (v22)
    {
      *buf = 136446466;
      v28 = "nw_http_encoding_create_inbound_frame";
      v29 = 2082;
      v30 = backtrace_string;
      v23 = "%{public}s called with null frame, dumping backtrace:%{public}s";
LABEL_30:
      _os_log_impl(&dword_181A37000, v12, v13, v23, buf, 0x16u);
    }

LABEL_31:
    free(backtrace_string);
    goto LABEL_41;
  }

  v12 = __nwlog_obj();
  v13 = type;
  if (os_log_type_enabled(v12, type))
  {
    *buf = 136446210;
    v28 = "nw_http_encoding_create_inbound_frame";
    v14 = "%{public}s called with null frame";
LABEL_40:
    _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
  }

LABEL_41:
  if (v11)
  {
    free(v11);
  }

  v6 = 0;
LABEL_8:
  nw_frame_inherit_metadata(a1[6], v6, 0);
  v8 = *(a1[4] + 8);
  *(v6 + 32) = 0;
  v9 = *(v8 + 48);
  *(v6 + 40) = v9;
  *v9 = v6;
  *(v8 + 48) = v6 + 32;
  return nw_frame_unclaimed_bytes(v6, 0);
}

uint64_t ___ZL42nw_protocol_http_encoding_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_29(void *a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = nw_frame_unclaimed_length(a2);
  v6 = a1[7];
  if ((*(v6 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v29 = v4;
    v30 = __nwlog_obj();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
    v4 = v29;
    v6 = a1[7];
    if (v31)
    {
      *buf = 136446978;
      v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
      v41 = 2082;
      v42 = (v6 + 114);
      v43 = 2080;
      v44 = " ";
      v45 = 1024;
      LODWORD(v46) = v29;
      _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sunclaimed length %u", buf, 0x26u);
      v4 = v29;
      v6 = a1[7];
    }
  }

  if (v4 >= *(*(a1[4] + 8) + 24))
  {
    v7 = *(*(a1[4] + 8) + 24);
  }

  else
  {
    v7 = v4;
  }

  if ((*(v6 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v32 = __nwlog_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = a1[7] + 114;
      *buf = 136446978;
      v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
      v41 = 2082;
      v42 = v33;
      v43 = 2080;
      v44 = " ";
      v45 = 1024;
      LODWORD(v46) = v7;
      _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%u bytes to claim", buf, 0x26u);
    }
  }

  nw_frame_claim(a2, v5, v7, 0);
  nw_frame_collapse(a2);
  nw_frame_unclaim(a2, v8, v7, 0);
  *(*(a1[4] + 8) + 24) -= v7;
  if ((*(a1[7] + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v34 = __nwlog_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = a1[7] + 114;
      v36 = *(*(a1[4] + 8) + 24);
      *buf = 136446978;
      v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
      v41 = 2082;
      v42 = v35;
      v43 = 2080;
      v44 = " ";
      v45 = 2048;
      v46 = v36;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s%zd bytes decoded", buf, 0x2Au);
    }
  }

  v9 = (*(a1[5] + 8) + 48);
  v10 = (a2 + 32);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  if (v11)
  {
    v9 = (v11 + 40);
  }

  *v9 = v12;
  *v12 = v11;
  *(a2 + 40) = 0;
  *v10 = 0;
  v13 = a1[9];
  v14 = *(v13 + 8);
  *(a2 + 40) = v14;
  *v14 = a2;
  *(v13 + 8) = v10;
  v15 = *(a1[6] + 8);
  v16 = *(v15 + 24) + 1;
  *(v15 + 24) = v16;
  if (v16 != v16 << 31 >> 31)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = *(*(a1[6] + 8) + 24);
    *buf = 136446978;
    v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
    v41 = 2082;
    v42 = "count";
    v43 = 2048;
    v44 = 1;
    v45 = 2048;
    v46 = v17;
    v18 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v18, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v21 = *(*(a1[6] + 8) + 24);
          *buf = 136446978;
          v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          v41 = 2082;
          v42 = "count";
          v43 = 2048;
          v44 = 1;
          v45 = 2048;
          v46 = v21;
          v22 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_26:
          _os_log_impl(&dword_181A37000, v19, v20, v22, buf, 0x2Au);
        }
      }

      else if (v37 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        v24 = os_log_type_enabled(gLogObj, type);
        if (backtrace_string)
        {
          if (v24)
          {
            v25 = *(*(a1[6] + 8) + 24);
            *buf = 136447234;
            v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
            v41 = 2082;
            v42 = "count";
            v43 = 2048;
            v44 = 1;
            v45 = 2048;
            v46 = v25;
            v47 = 2082;
            v48 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
          goto LABEL_27;
        }

        if (v24)
        {
          v27 = *(*(a1[6] + 8) + 24);
          *buf = 136446978;
          v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          v41 = 2082;
          v42 = "count";
          v43 = 2048;
          v44 = 1;
          v45 = 2048;
          v46 = v27;
          v22 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_26;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(gLogObj, type))
        {
          v26 = *(*(a1[6] + 8) + 24);
          *buf = 136446978;
          v40 = "nw_protocol_http_encoding_get_input_frames_block_invoke";
          v41 = 2082;
          v42 = "count";
          v43 = 2048;
          v44 = 1;
          v45 = 2048;
          v46 = v26;
          v22 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_26;
        }
      }
    }

LABEL_27:
    if (v18)
    {
      free(v18);
    }

    *(*(a1[6] + 8) + 24) = -1;
  }

  return 1;
}

void nw_http_encoding_inbound_frame_finalizer(nw_frame *a1, int a2, _BYTE *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http_encoding_inbound_frame_finalizer";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v8, &type, &v20))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v23 = "nw_http_encoding_inbound_frame_finalizer";
      v11 = "%{public}s called with null frame";
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v17 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v23 = "nw_http_encoding_inbound_frame_finalizer";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_46:
        if (!v8)
        {
          return;
        }

LABEL_47:
        free(v8);
        return;
      }

      if (!v17)
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v23 = "nw_http_encoding_inbound_frame_finalizer";
      v11 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v23 = "nw_http_encoding_inbound_frame_finalizer";
      v11 = "%{public}s called with null frame, backtrace limit exceeded";
    }

LABEL_45:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_46;
  }

  if (a3)
  {
    if ((a3[198] & 1) == 0 && gLogDatapath == 1)
    {
      v12 = a3;
      v13 = a2;
      v14 = __nwlog_obj();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      a2 = v13;
      a3 = v12;
      if (v15)
      {
        *buf = 136447490;
        v23 = "nw_http_encoding_inbound_frame_finalizer";
        v24 = 2082;
        v25 = v12 + 114;
        v26 = 2080;
        v27 = " ";
        v28 = 2048;
        v29 = a1;
        v30 = 1024;
        v31 = v13;
        v32 = 2048;
        v33 = v12;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sfinalizing inbound frame %p (success %u, context %p)", buf, 0x3Au);
        a2 = v13;
        a3 = v12;
      }
    }

    v4 = a3 + 464;
    v5 = *(a1 + 2);
    v6 = *(a1 + 3);
    if (v5)
    {
      v4 = (v5 + 24);
    }

    *v4 = v6;
    *v6 = v5;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *(a1 + 10) = 0;
    *(a1 + 11) = 0;
    if (a2)
    {
      nw_frame_cache_return_frame((a3 + 336), a1);
    }

    else
    {
      if ((*(a1 + 102) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(a1, 0))
      {
        v7 = *(a1 + 14);
        if (v7)
        {
          free(v7);
        }
      }

      nw_frame_reset(a1, 0, 0, 0, 0);
      os_release(a1);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_http_encoding_inbound_frame_finalizer";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v8, &type, &v20))
  {
    goto LABEL_46;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v23 = "nw_http_encoding_inbound_frame_finalizer";
    v11 = "%{public}s called with null context";
    goto LABEL_45;
  }

  if (v20 != 1)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v23 = "nw_http_encoding_inbound_frame_finalizer";
    v11 = "%{public}s called with null context, backtrace limit exceeded";
    goto LABEL_45;
  }

  v18 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v10 = type;
  v19 = os_log_type_enabled(v9, type);
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_46;
    }

    *buf = 136446210;
    v23 = "nw_http_encoding_inbound_frame_finalizer";
    v11 = "%{public}s called with null context, no backtrace";
    goto LABEL_45;
  }

  if (v19)
  {
    *buf = 136446466;
    v23 = "nw_http_encoding_inbound_frame_finalizer";
    v24 = 2082;
    v25 = v18;
    _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v18);
  if (v8)
  {
    goto LABEL_47;
  }
}

double __nw_protocol_http_encoding_identifier_block_invoke()
{
  strcpy(nw_protocol_http_encoding_identifier::protocol_identifier, "http_encoding");
  *&result = 0x100000005;
  qword_1EA840FC8 = 0x100000005;
  return result;
}

BOOL nw_link_set_flow_control_status(void *a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = v3[2];
    v3[2] = a2;
    v5 = v4 != a2;
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_link_set_flow_control_status";
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
        v18 = "nw_link_set_flow_control_status";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null link_info", buf, 0xCu);
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
          v18 = "nw_link_set_flow_control_status";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null link_info, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_link_set_flow_control_status";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null link_info, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_link_set_flow_control_status";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null link_info, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
  v3 = 0;
LABEL_3:

  return v5;
}

uint64_t nw_link_get_flow_control_status(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[2];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_link_get_flow_control_status";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_link_get_flow_control_status";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null link_info", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_link_get_flow_control_status";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null link_info, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_link_get_flow_control_status";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null link_info, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_link_get_flow_control_status";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null link_info, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 1;
  v1 = 0;
LABEL_3:

  return v2;
}
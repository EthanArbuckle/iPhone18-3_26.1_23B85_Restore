uint64_t nw_fd_wrapper_guard(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_fd_wrapper_guard";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v25, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v35 = "nw_fd_wrapper_guard";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null wrapper", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v35 = "nw_fd_wrapper_guard";
            v36 = 2082;
            *v37 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null wrapper, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_47;
        }

        if (v30)
        {
          *buf = 136446210;
          v35 = "nw_fd_wrapper_guard";
          _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null wrapper, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v35 = "nw_fd_wrapper_guard";
          _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null wrapper, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_47:
    if (v25)
    {
      free(v25);
    }

    v13 = 0;
    goto LABEL_18;
  }

  os_unfair_lock_lock(v1 + 3);
  if ((v2[2]._os_unfair_lock_opaque & 0x80000000) == 0)
  {
    os_unfair_lock_opaque = v2[6]._os_unfair_lock_opaque;
    if ((os_unfair_lock_opaque & 3) != 0)
    {
LABEL_17:
      v13 = os_unfair_lock_opaque & 1;
      os_unfair_lock_unlock(v2 + 3);
      goto LABEL_18;
    }

    if (!change_fdguard_np())
    {
      os_unfair_lock_opaque = LOBYTE(v2[6]._os_unfair_lock_opaque) | 1;
      LOBYTE(v2[6]._os_unfair_lock_opaque) = os_unfair_lock_opaque;
      goto LABEL_17;
    }

    v4 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = v2[2]._os_unfair_lock_opaque;
    *buf = 136446722;
    v35 = "nw_fd_wrapper_guard";
    v36 = 1024;
    *v37 = v6;
    *&v37[4] = 1024;
    *&v37[6] = v4;
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v7, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          v10 = v2[2]._os_unfair_lock_opaque;
          *buf = 136446722;
          v35 = "nw_fd_wrapper_guard";
          v36 = 1024;
          *v37 = v10;
          *&v37[4] = 1024;
          *&v37[6] = v4;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s Failed to guard fd %d %{darwin.errno}d", buf, 0x18u);
        }
      }

      else if (v32 == 1)
      {
        v15 = __nw_create_backtrace_string();
        if (v15)
        {
          v16 = v15;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type;
          if (os_log_type_enabled(v17, type))
          {
            v19 = v2[2]._os_unfair_lock_opaque;
            *buf = 136446978;
            v35 = "nw_fd_wrapper_guard";
            v36 = 1024;
            *v37 = v19;
            *&v37[4] = 1024;
            *&v37[6] = v4;
            v38 = 2082;
            v39 = v16;
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s Failed to guard fd %d %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(v16);
          if (!v7)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }

        v8 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v8, type))
        {
          v23 = v2[2]._os_unfair_lock_opaque;
          *buf = 136446722;
          v35 = "nw_fd_wrapper_guard";
          v36 = 1024;
          *v37 = v23;
          *&v37[4] = 1024;
          *&v37[6] = v4;
          _os_log_impl(&dword_181A37000, v8, v22, "%{public}s Failed to guard fd %d %{darwin.errno}d, no backtrace", buf, 0x18u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(v8, type))
        {
          v21 = v2[2]._os_unfair_lock_opaque;
          *buf = 136446722;
          v35 = "nw_fd_wrapper_guard";
          v36 = 1024;
          *v37 = v21;
          *&v37[4] = 1024;
          *&v37[6] = v4;
          _os_log_impl(&dword_181A37000, v8, v20, "%{public}s Failed to guard fd %d %{darwin.errno}d, backtrace limit exceeded", buf, 0x18u);
        }
      }
    }

    if (!v7)
    {
LABEL_12:
      os_unfair_lock_opaque = v2[6]._os_unfair_lock_opaque;
      goto LABEL_17;
    }

LABEL_11:
    free(v7);
    goto LABEL_12;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = v2[2]._os_unfair_lock_opaque;
    *buf = 136446466;
    v35 = "nw_fd_wrapper_guard";
    v36 = 1024;
    *v37 = v12;
    _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s Cannot guard invalid fd %d", buf, 0x12u);
  }

  os_unfair_lock_unlock(v2 + 3);
  v13 = 0;
LABEL_18:

  return v13;
}

void __39__nw_listener_inbox_socket_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3)
  {
    v4 = *(v2 + 32);
    v5 = v4;
    if (v4)
    {
      description = _nw_endpoint_get_description(v4);
    }

    else
    {
      description = "<NULL>";
    }

    v7 = *(a1 + 32);
    name = *(v7 + 40);
    if (name)
    {
      name = _nw_interface_get_name(name);
      v7 = *(a1 + 32);
    }

    if (name)
    {
      v9 = name;
    }

    else
    {
      v9 = "<NULL>";
    }

    v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"socket: %d, endpoint: %s, interface: %s", *(v7 + 80), description, v9);
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    *(v11 + 24) = v10;

    v3 = *(*(a1 + 32) + 24);
  }

  v13 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v13, v3);
}

void nw_listener_set_local_endpoint_on_queue(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  nw_context_assert_queue(*(v3 + 3));
  if (v4)
  {
    v5 = v4;
    port = _nw_endpoint_get_port(v5);
  }

  else
  {
    port = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL39nw_listener_set_local_endpoint_on_queueP22NWConcrete_nw_listenerPU25objcproto14OS_nw_endpoint8NSObject_block_invoke;
  aBlock[3] = &unk_1E6A33D08;
  v7 = v3;
  v11 = v7;
  v8 = v4;
  v12 = v8;
  v13 = port;
  v9 = _Block_copy(aBlock);
  os_unfair_lock_lock(v3 + 2);
  v9[2](v9);
  os_unfair_lock_unlock(v3 + 2);
}

unsigned int *sub_181C4DBF8(unsigned int *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = (*result | (*(result + 4) << 32)) & 0x3FFFFFFFFLL | (a2 << 38);
  }

  else
  {
    v2 = (a2 - 2) | 0xFFFFFF8000000000;
  }

  *result = v2;
  *(result + 4) = BYTE4(v2);
  return result;
}

uint64_t NWActivity.token.getter()
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = 0uLL;
  nw_activity_get_token(*(v0 + 16), &v2);
  return sub_182AD2228();
}

void nw_activity_get_token(void *a1, _OWORD *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if ((v3[140] & 4) != 0)
    {
      *a2 = *(v3 + 8);
      goto LABEL_4;
    }

    v4 = v3;
    v9 = __nwlog_obj();
    *buf = 136446466;
    v22 = "nw_activity_get_token";
    v23 = 2082;
    v24 = "Cannot get token before activation";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v6, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446466;
          v22 = "nw_activity_get_token";
          v23 = 2082;
          v24 = "Cannot get token before activation";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s", buf, 0x16u);
        }
      }

      else if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v15 = type;
        v16 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446722;
            v22 = "nw_activity_get_token";
            v23 = 2082;
            v24 = "Cannot get token before activation";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v15, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_37;
        }

        if (v16)
        {
          *buf = 136446466;
          v22 = "nw_activity_get_token";
          v23 = 2082;
          v24 = "Cannot get token before activation";
          _os_log_impl(&dword_181A37000, v7, v15, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        v7 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446466;
          v22 = "nw_activity_get_token";
          v23 = 2082;
          v24 = "Cannot get token before activation";
          _os_log_impl(&dword_181A37000, v7, v18, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded", buf, 0x16u);
        }
      }

      goto LABEL_36;
    }
  }

  else
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_activity_get_token";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v6, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v22 = "nw_activity_get_token";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null activity", buf, 0xCu);
        }
      }

      else if (v19 == 1)
      {
        v11 = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v12 = type;
        v13 = os_log_type_enabled(v7, type);
        if (v11)
        {
          if (v13)
          {
            *buf = 136446466;
            v22 = "nw_activity_get_token";
            v23 = 2082;
            v24 = v11;
            _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v11);
          goto LABEL_37;
        }

        if (v13)
        {
          *buf = 136446210;
          v22 = "nw_activity_get_token";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null activity, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v7 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v22 = "nw_activity_get_token";
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
        }
      }

LABEL_36:
    }
  }

LABEL_37:
  if (v6)
  {
    free(v6);
  }

  v3 = v4;
LABEL_4:
}

uint64_t nw_path_copy_path_for_client(uint64_t a1)
{
  if (nw_context_copy_implicit_context::onceToken[0] != -1)
  {
    dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
  }

  v2 = nw_context_copy_implicit_context::implicit_context;
  v3 = nw_path_copy_path_for_client_with_context(a1);

  return v3;
}

void *__Block_byref_object_copy__11(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_181C4E26C(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[208 * v4];
  if (v12 != __dst || &v12[208 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 208 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[208 * v8];
  v17 = 208 * v7;
  if (v16 != v11 || v16 >= &v11[v17])
  {

    memmove(v16, v11, v17);
  }
}

uint64_t NWProtocolTCP.Options.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

nw_listener_t nw_listener_create_with_port(const char *port, nw_parameters_t parameters)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = parameters;
  nw_allow_use_of_dispatch_internal();
  if (port)
  {
    if (v3)
    {
      v4 = nw_listener_copy_parameters_with_port(v3, port, 1);
      if (v4)
      {
        v5 = [[NWConcrete_nw_listener alloc] initWithParameters:v4 multicastDescriptor:0];
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_7;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_listener_create_with_port";
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
          v23 = "nw_listener_create_with_port";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null parameters", buf, 0xCu);
        }

LABEL_39:

        goto LABEL_40;
      }

      if (v20 != 1)
      {
        v9 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_listener_create_with_port";
          _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_39;
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
          v23 = "nw_listener_create_with_port";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v17)
      {
        *buf = 136446466;
        v23 = "nw_listener_create_with_port";
        v24 = 2082;
        v25 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_27;
    }
  }

  else
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_listener_create_with_port";
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
          v23 = "nw_listener_create_with_port";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null port", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v20 != 1)
      {
        v9 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v23 = "nw_listener_create_with_port";
          _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null port, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_39;
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
          v23 = "nw_listener_create_with_port";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null port, no backtrace", buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v15)
      {
        *buf = 136446466;
        v23 = "nw_listener_create_with_port";
        v24 = 2082;
        v25 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null port, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_27:

      free(backtrace_string);
    }
  }

LABEL_40:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t sub_181C4E92C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  sub_181AA39C0(v4);
  result = sub_181A554F4(v5);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_181C4E988@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(a1 + 32);
  sub_181AA39C0(v6);
  result = sub_181A554F4(v7);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *a2 = *(a1 + 189);
  return result;
}

void nw_listener_start(nw_listener_t listener)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = listener;
  v2 = v1;
  if (v1)
  {
    *v41 = 0;
    *&v41[8] = v41;
    *&v41[16] = 0x2020000000;
    v42 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_start_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v33 = v41;
    v3 = v1;
    v32 = v3;
    v4 = _Block_copy(aBlock);
    os_unfair_lock_lock(v2 + 2);
    v4[2](v4);
    os_unfair_lock_unlock(v2 + 2);

    if (*(*&v41[8] + 24))
    {
      v5 = qos_class_self();
      v6 = nw_parameters_copy_context(v3[2]);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __nw_listener_start_block_invoke_56;
      v27[3] = &unk_1E6A3BD68;
      v28 = v3;
      v29 = v5;
      nw_queue_context_async_if_needed(v6, v27);

LABEL_17:
      _Block_object_dispose(v41, 8);
      goto LABEL_18;
    }

    v7 = v3[2];
    if (!v7 || _nw_parameters_get_logging_disabled(v7))
    {
      goto LABEL_17;
    }

    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v8 = glistenerLogObj;
    v9 = v3 + 42;
    *buf = 136446466;
    v36 = "nw_listener_start";
    v37 = 2082;
    v38 = v3 + 42;
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v10, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v11 = glistenerLogObj;
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446466;
          v36 = "nw_listener_start";
          v37 = 2082;
          v38 = v9;
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s [%{public}s] In wrong state for start", buf, 0x16u);
        }
      }

      else if (v30 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v14 = backtrace_string;
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v15 = glistenerLogObj;
          v16 = type;
          if (os_log_type_enabled(v15, type))
          {
            *buf = 136446722;
            v36 = "nw_listener_start";
            v37 = 2082;
            v38 = v9;
            v39 = 2082;
            v40 = v14;
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s [%{public}s] In wrong state for start, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v14);
          if (!v10)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v11 = glistenerLogObj;
        v18 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446466;
          v36 = "nw_listener_start";
          v37 = 2082;
          v38 = v9;
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s [%{public}s] In wrong state for start, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v11 = glistenerLogObj;
        v17 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446466;
          v36 = "nw_listener_start";
          v37 = 2082;
          v38 = v9;
          _os_log_impl(&dword_181A37000, v11, v17, "%{public}s [%{public}s] In wrong state for start, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

    if (!v10)
    {
      goto LABEL_17;
    }

LABEL_16:
    free(v10);
    goto LABEL_17;
  }

  v19 = __nwlog_obj();
  *v41 = 136446210;
  *&v41[4] = "nw_listener_start";
  v20 = _os_log_send_and_compose_impl();

  buf[0] = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v20, buf, &type))
  {
    if (buf[0] == 17)
    {
      v21 = __nwlog_obj();
      v22 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v41 = 136446210;
        *&v41[4] = "nw_listener_start";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null listener", v41, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v23 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v24 = buf[0];
      v25 = os_log_type_enabled(v21, buf[0]);
      if (v23)
      {
        if (v25)
        {
          *v41 = 136446466;
          *&v41[4] = "nw_listener_start";
          *&v41[12] = 2082;
          *&v41[14] = v23;
          _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null listener, dumping backtrace:%{public}s", v41, 0x16u);
        }

        free(v23);
        goto LABEL_53;
      }

      if (v25)
      {
        *v41 = 136446210;
        *&v41[4] = "nw_listener_start";
        _os_log_impl(&dword_181A37000, v21, v24, "%{public}s called with null listener, no backtrace", v41, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v26 = buf[0];
      if (os_log_type_enabled(v21, buf[0]))
      {
        *v41 = 136446210;
        *&v41[4] = "nw_listener_start";
        _os_log_impl(&dword_181A37000, v21, v26, "%{public}s called with null listener, backtrace limit exceeded", v41, 0xCu);
      }
    }
  }

LABEL_53:
  if (v20)
  {
    free(v20);
  }

LABEL_18:
}

void sub_181C4F0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  _Block_object_dispose((v25 - 144), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_181C4F140()
{
  if ((*(v0 + 156) & 0x10000) == 0)
  {
    goto LABEL_2;
  }

  if (*(v0 + 138) || (v2 = *(v0 + 32), v3 = *(v0 + 116), v4 = *(v0 + 328), swift_beginAccess(), (*(v2 + 138) & 4) != 0))
  {
    v1 = 1;
    return v1 & 1;
  }

  v5 = *(v2 + 240);
  if (v5 && (*(v5 + 16) ? (v6 = v3 == 1) : (v6 = 0), v6 ? (v7 = v4 == 0) : (v7 = 0), v7))
  {
    v1 = sub_181AC2A38(1);
  }

  else
  {
LABEL_2:
    v1 = 0;
  }

  return v1 & 1;
}

void nw_path_enumerate_interface_options_with_details(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_path_enumerate_interface_options_with_details";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_path_enumerate_interface_options_with_details";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null path", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v23 = "nw_path_enumerate_interface_options_with_details";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v7);
        goto LABEL_4;
      }

      if (v14)
      {
        *buf = 136446210;
        v23 = "nw_path_enumerate_interface_options_with_details";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_path_enumerate_interface_options_with_details";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    _nw_path_enumerate_interface_options_with_details(v3, v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_path_enumerate_interface_options_with_details";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_path_enumerate_interface_options_with_details";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null enumerate_block", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_path_enumerate_interface_options_with_details";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null enumerate_block, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = type;
  v17 = os_log_type_enabled(v8, type);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v23 = "nw_path_enumerate_interface_options_with_details";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null enumerate_block, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_path_enumerate_interface_options_with_details";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null enumerate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

NWConcrete_nw_interface_option_details *nw_interface_option_details_create(void *a1, _OWORD *a2, void *a3, char a4, void *a5, int a6)
{
  v41 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = a3;
  v14 = a5;
  if (a2)
  {
    v15 = objc_alloc_init(NWConcrete_nw_interface_option_details);
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->interface, a1);
      *v16->nexus_agent = *a2;
      objc_storeStrong(&v16->remote, a3);
      v16->priority = a4;
      objc_storeStrong(&v16->initial_data, a5);
      v16->sockfd = a6;
      v17 = v16;
LABEL_11:

      goto LABEL_12;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    *buf = 136446210;
    v38 = "nw_interface_option_details_create";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v19, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v38 = "nw_interface_option_details_create";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s [[NW_CONCRETE_CLASS_NAME(interface_option_details) alloc] init] failed", buf, 0xCu);
        }
      }

      else if (v35 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v24 = type;
        v25 = os_log_type_enabled(v20, type);
        if (backtrace_string)
        {
          if (v25)
          {
            *buf = 136446466;
            v38 = "nw_interface_option_details_create";
            v39 = 2082;
            v40 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v24, "%{public}s [[NW_CONCRETE_CLASS_NAME(interface_option_details) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v19)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        if (v25)
        {
          *buf = 136446210;
          v38 = "nw_interface_option_details_create";
          _os_log_impl(&dword_181A37000, v20, v24, "%{public}s [[NW_CONCRETE_CLASS_NAME(interface_option_details) alloc] init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v26 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v38 = "nw_interface_option_details_create";
          _os_log_impl(&dword_181A37000, v20, v26, "%{public}s [[NW_CONCRETE_CLASS_NAME(interface_option_details) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v19)
    {
      goto LABEL_11;
    }

LABEL_10:
    free(v19);
    goto LABEL_11;
  }

  v27 = __nwlog_obj();
  *buf = 136446210;
  v38 = "nw_interface_option_details_create";
  v28 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (__nwlog_fault(v28, &type, &v35))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v38 = "nw_interface_option_details_create";
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null nexus_agent", buf, 0xCu);
      }
    }

    else if (v35 == 1)
    {
      v31 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v32 = type;
      v33 = os_log_type_enabled(v29, type);
      if (v31)
      {
        if (v33)
        {
          *buf = 136446466;
          v38 = "nw_interface_option_details_create";
          v39 = 2082;
          v40 = v31;
          _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null nexus_agent, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        goto LABEL_41;
      }

      if (v33)
      {
        *buf = 136446210;
        v38 = "nw_interface_option_details_create";
        _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null nexus_agent, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v29 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v38 = "nw_interface_option_details_create";
        _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null nexus_agent, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_41:
  if (v28)
  {
    free(v28);
  }

  v16 = 0;
LABEL_12:

  return v16;
}

void __nw_path_enumerate_interface_options_block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = 0uLL;
  nw_interface_option_details_get_nexus_agent(v3, &v7);
  v4 = *(a1 + 32);
  v5 = nw_interface_option_details_copy_interface(v3);
  v6 = nw_interface_option_details_copy_remote_endpoint(v3);
  (*(v4 + 16))(v4, v5, &v7, v6);
}

void sub_181C4FDF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_181C4FE14()
{
  v1 = *(v0 + 16);
  __dst[0] = *v0;
  __dst[1] = v1;
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 160);
  __dst[9] = *(v0 + 144);
  __dst[10] = v4;
  __dst[11] = *(v0 + 176);
  v5 = *(v0 + 96);
  __dst[5] = *(v0 + 80);
  __dst[6] = v5;
  v6 = *(v0 + 128);
  __dst[7] = *(v0 + 112);
  __dst[8] = v6;
  v7 = *(v0 + 64);
  __dst[3] = *(v0 + 48);
  __dst[4] = v7;
  v8 = *(v0 + 192);
  v9 = *(v0 + 200);
  v10 = *(v0 + 224);
  __dst[13] = *(v0 + 208);
  __dst[14] = v10;
  __dst[15] = *(v0 + 240);
  *(&__dst[22] + 10) = *(v0 + 362);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  v13 = *(v0 + 352);
  __dst[21] = *(v0 + 336);
  __dst[22] = v13;
  v14 = *(v0 + 288);
  __dst[17] = *(v0 + 272);
  __dst[18] = v14;
  v15 = *(v0 + 320);
  __dst[19] = *(v0 + 304);
  __dst[20] = v15;
  *&__dst[2] = v3;
  *(&__dst[2] + 1) = v2;
  *&__dst[12] = v8;
  *(&__dst[12] + 1) = v9;
  *&__dst[16] = v11;
  *(&__dst[16] + 1) = v12;
  result = sub_181C22084();
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (!v9 || (v17 = v9[3]) == 0)
  {
LABEL_8:
    v20 = v2;
    if (v2)
    {
LABEL_9:
      v21 = v20;
      if (v12)
      {
        v54 = v3;
        v55 = v21;
        v22 = v12 + 64;
        v23 = 1 << *(v12 + 32);
        v24 = -1;
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        v25 = v24 & *(v12 + 64);
        v26 = (v23 + 63) >> 6;

        v27 = 0x6B726F7774654ELL;
        v28 = 0;
        for (i = v12; ; v12 = i)
        {
          if (!v25)
          {
            while (1)
            {
              v29 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                break;
              }

              if (v29 >= v26)
              {

                return 0;
              }

              v25 = *(v22 + 8 * v29);
              ++v28;
              if (v25)
              {
                v28 = v29;
                goto LABEL_19;
              }
            }

            __break(1u);
            goto LABEL_53;
          }

LABEL_19:
          v30 = *(*(v12 + 56) + ((v28 << 9) | (8 * __clz(__rbit64(v25)))));
          v31 = v30[6];
          v32 = v30[7];
          if (v32 > 2)
          {
            break;
          }

          if (v32)
          {
            if (v32 == 1 || v32 == 2)
            {
              goto LABEL_33;
            }

LABEL_30:
            v33 = v30[7];
            if (v31 != v27)
            {
              goto LABEL_33;
            }

            goto LABEL_31;
          }

          v33 = 0xE700000000000000;
LABEL_31:
          if (v33 == 0xE700000000000000)
          {
            v34 = v27;
            sub_181AA5C1C(v30[6], v30[7]);

            goto LABEL_34;
          }

LABEL_33:
          v34 = v27;
          v35 = sub_182AD4268();
          sub_181AA5C1C(v31, v32);

          if ((v35 & 1) == 0)
          {
            goto LABEL_13;
          }

LABEL_34:
          v37 = v30[8];
          v36 = v30[9];
          if (v36 > 4)
          {
            if (v36 <= 9)
            {
              goto LABEL_42;
            }
          }

          else if (v36 >= 0)
          {
            goto LABEL_42;
          }

          if (v37 != 0x6F6974617267694DLL || v36 != 0xEF7963696C6F506ELL)
          {
LABEL_42:
            v39 = sub_182AD4268();
            sub_181ADC1E0(v37, v36);

            if ((v39 & 1) == 0)
            {
              goto LABEL_13;
            }

            v40 = v30[2];
            if (!v40)
            {
              goto LABEL_13;
            }

            goto LABEL_44;
          }

          sub_181ADC1E0(0x6F6974617267694DLL, 0xEF7963696C6F506ELL);

          v40 = v30[2];
          if (!v40)
          {
            goto LABEL_13;
          }

LABEL_44:
          v41 = v30[3] - v40;
          v42 = v41 - 216;
          if (__OFSUB__(v41, 216))
          {
            goto LABEL_54;
          }

          if (v42 >= 1)
          {
            swift_beginAccess();
            memcpy(__dst, (v54 + 16), 0x188uLL);
            v43 = type metadata accessor for ParametersStorage();
            v44 = objc_allocWithZone(v43);
            v45 = OBJC_IVAR____TtC7Network17ParametersStorage_storageLock;
            type metadata accessor for SystemLock._Storage();
            v46 = swift_allocObject();
            *(v46 + 16) = 0;
            *&v44[v45] = v46;
            v47 = &v44[OBJC_IVAR____TtC7Network17ParametersStorage_accountIDStorage];
            *v47 = 0;
            *(v47 + 1) = 0;
            v47[16] = 1;
            v48 = &v44[OBJC_IVAR____TtC7Network17ParametersStorage_bundleIDStorage];
            *v48 = 0;
            *(v48 + 1) = 0;
            v48[16] = 1;
            v49 = &v44[OBJC_IVAR____TtC7Network17ParametersStorage_attributedBundleStorage];
            *v49 = 0;
            *(v49 + 1) = 0;
            v49[16] = 1;
            v50 = &v44[OBJC_IVAR____TtC7Network17ParametersStorage_attributionContextStorage];
            *v50 = 0;
            *(v50 + 1) = 0;
            v50[16] = 1;
            type metadata accessor for MutableParametersStorage();
            v51 = swift_allocObject();
            memcpy((v51 + 16), __dst, 0x188uLL);
            *&v44[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage] = v51;
            sub_181F481DC(__dst, v58);
            sub_181F481DC(__dst, v58);
            v57.receiver = v44;
            v57.super_class = v43;
            v52 = objc_msgSendSuper2(&v57, sel_init);
            v53 = nw_migration_policy_create_from_data(v40 + 216, v42, v52, v55);

            sub_181F48214(__dst);

            return v53;
          }

LABEL_13:
          v25 &= v25 - 1;

          v27 = v34;
        }

        if (v32 == 3 || v32 == 4 || v32 == 5)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }
    }

    return 0;
  }

  if (v17 >= 1)
  {
    v18 = v9[4];
    v19 = v9[2];
    if (v18 < v19)
    {
      v19 = 0;
    }

    v20 = v9[26 * (v18 - v19) + 8];
    if (v20)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

char *nw_path_copy_path_for_tlv(const unsigned __int8 *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, NSObject *a6)
{
  v84 = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (!v11)
  {
    v52 = __nwlog_obj();
    *buf = 136446210;
    v81 = "nw_path_copy_path_for_tlv";
    v53 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v78) = 0;
    if (!__nwlog_fault(v53, type, &v78))
    {
      goto LABEL_157;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v54 = __nwlog_obj();
      v55 = type[0];
      if (os_log_type_enabled(v54, type[0]))
      {
        *buf = 136446210;
        v81 = "nw_path_copy_path_for_tlv";
        _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null context", buf, 0xCu);
      }

      goto LABEL_156;
    }

    if (v78 != 1)
    {
      v54 = __nwlog_obj();
      v68 = type[0];
      if (os_log_type_enabled(v54, type[0]))
      {
        *buf = 136446210;
        v81 = "nw_path_copy_path_for_tlv";
        _os_log_impl(&dword_181A37000, v54, v68, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_156;
    }

    backtrace_string = __nw_create_backtrace_string();
    v54 = __nwlog_obj();
    v61 = type[0];
    v62 = os_log_type_enabled(v54, type[0]);
    if (!backtrace_string)
    {
      if (v62)
      {
        *buf = 136446210;
        v81 = "nw_path_copy_path_for_tlv";
        _os_log_impl(&dword_181A37000, v54, v61, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }

      goto LABEL_156;
    }

    if (v62)
    {
      *buf = 136446466;
      v81 = "nw_path_copy_path_for_tlv";
      v82 = 2082;
      v83 = backtrace_string;
      _os_log_impl(&dword_181A37000, v54, v61, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_132;
  }

  if (!a3)
  {
    v56 = __nwlog_obj();
    *buf = 136446210;
    v81 = "nw_path_copy_path_for_tlv";
    v53 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v78) = 0;
    if (!__nwlog_fault(v53, type, &v78))
    {
      goto LABEL_157;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v54 = __nwlog_obj();
      v57 = type[0];
      if (os_log_type_enabled(v54, type[0]))
      {
        *buf = 136446210;
        v81 = "nw_path_copy_path_for_tlv";
        _os_log_impl(&dword_181A37000, v54, v57, "%{public}s called with null parameters_buffer", buf, 0xCu);
      }

      goto LABEL_156;
    }

    if (v78 != 1)
    {
      v54 = __nwlog_obj();
      v69 = type[0];
      if (os_log_type_enabled(v54, type[0]))
      {
        *buf = 136446210;
        v81 = "nw_path_copy_path_for_tlv";
        _os_log_impl(&dword_181A37000, v54, v69, "%{public}s called with null parameters_buffer, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_156;
    }

    backtrace_string = __nw_create_backtrace_string();
    v54 = __nwlog_obj();
    v63 = type[0];
    v64 = os_log_type_enabled(v54, type[0]);
    if (!backtrace_string)
    {
      if (v64)
      {
        *buf = 136446210;
        v81 = "nw_path_copy_path_for_tlv";
        _os_log_impl(&dword_181A37000, v54, v63, "%{public}s called with null parameters_buffer, no backtrace", buf, 0xCu);
      }

      goto LABEL_156;
    }

    if (v64)
    {
      *buf = 136446466;
      v81 = "nw_path_copy_path_for_tlv";
      v82 = 2082;
      v83 = backtrace_string;
      _os_log_impl(&dword_181A37000, v54, v63, "%{public}s called with null parameters_buffer, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_132:

    free(backtrace_string);
    if (!v53)
    {
      goto LABEL_159;
    }

    goto LABEL_158;
  }

  if (!a4)
  {
    v58 = __nwlog_obj();
    *buf = 136446210;
    v81 = "nw_path_copy_path_for_tlv";
    v53 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v78) = 0;
    if (!__nwlog_fault(v53, type, &v78))
    {
      goto LABEL_157;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v54 = __nwlog_obj();
      v59 = type[0];
      if (os_log_type_enabled(v54, type[0]))
      {
        *buf = 136446210;
        v81 = "nw_path_copy_path_for_tlv";
        _os_log_impl(&dword_181A37000, v54, v59, "%{public}s called with null parameters_buffer_size", buf, 0xCu);
      }
    }

    else if (v78 == 1)
    {
      v65 = __nw_create_backtrace_string();
      v54 = __nwlog_obj();
      v66 = type[0];
      v67 = os_log_type_enabled(v54, type[0]);
      if (v65)
      {
        if (v67)
        {
          *buf = 136446466;
          v81 = "nw_path_copy_path_for_tlv";
          v82 = 2082;
          v83 = v65;
          _os_log_impl(&dword_181A37000, v54, v66, "%{public}s called with null parameters_buffer_size, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v65);
LABEL_157:
        if (!v53)
        {
LABEL_159:
          v16 = 0;
          goto LABEL_107;
        }

LABEL_158:
        free(v53);
        goto LABEL_159;
      }

      if (v67)
      {
        *buf = 136446210;
        v81 = "nw_path_copy_path_for_tlv";
        _os_log_impl(&dword_181A37000, v54, v66, "%{public}s called with null parameters_buffer_size, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v54 = __nwlog_obj();
      v70 = type[0];
      if (os_log_type_enabled(v54, type[0]))
      {
        *buf = 136446210;
        v81 = "nw_path_copy_path_for_tlv";
        _os_log_impl(&dword_181A37000, v54, v70, "%{public}s called with null parameters_buffer_size, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_156:

    goto LABEL_157;
  }

  v12 = _nw_parameters_create();
  v13 = v12;
  if (v12)
  {
    _nw_parameters_set_context(v12, v11);
    v78 = 0;
    *type = 0;
    v76 = 0;
    v77 = 0;
    v75 = 0;
    v74 = 0;
    v73 = 0;
    if ((nw_path_parse_necp_parameters(v13, type, &v78, &v77, &v76, &v75, &v74, &v73 + 1, &v73, a3, a4) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      *buf = 136446210;
      v81 = "nw_path_copy_path_for_tlv";
      v22 = _os_log_send_and_compose_impl();

      v72 = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (!__nwlog_fault(v22, &v72, &v71))
      {
        goto LABEL_102;
      }

      if (v72 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = v72;
        if (os_log_type_enabled(v23, v72))
        {
          *buf = 136446210;
          v81 = "nw_path_copy_path_for_tlv";
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s nw_path_parse_necp_parameters failed", buf, 0xCu);
        }

        goto LABEL_101;
      }

      if (v71 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v32 = v72;
        if (os_log_type_enabled(v23, v72))
        {
          *buf = 136446210;
          v81 = "nw_path_copy_path_for_tlv";
          _os_log_impl(&dword_181A37000, v23, v32, "%{public}s nw_path_parse_necp_parameters failed, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_101;
      }

      v28 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      v29 = v72;
      v30 = os_log_type_enabled(v23, v72);
      if (!v28)
      {
        if (v30)
        {
          *buf = 136446210;
          v81 = "nw_path_copy_path_for_tlv";
          _os_log_impl(&dword_181A37000, v23, v29, "%{public}s nw_path_parse_necp_parameters failed, no backtrace", buf, 0xCu);
        }

        goto LABEL_101;
      }

      if (v30)
      {
        *buf = 136446466;
        v81 = "nw_path_copy_path_for_tlv";
        v82 = 2082;
        v83 = v28;
        _os_log_impl(&dword_181A37000, v23, v29, "%{public}s nw_path_parse_necp_parameters failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_29;
    }

    if (v77)
    {
      v14 = v77;
      v15 = _nw_path_create(0, v13);
      v16 = v15;
      if (v15)
      {
        _nw_path_set_browse_descriptor(v15, v14);

LABEL_32:
        _nw_path_set_group_descriptor(v16, v78);
        _nw_path_set_advertise_descriptor(v16, v76);
        _nw_path_set_is_listener(v16, v75);
        _nw_path_set_custom_ethertype(v16, v74);
        _nw_path_set_custom_ip_protocol(v16, SHIBYTE(v73));
        _nw_path_set_is_interpose(v16, v73);
        _nw_path_set_client_id(v16, a1);
        if (!a5 || !a6 || (nw_path_parse_necp_result(v16, a5, a6) & 1) != 0)
        {
          _nw_path_snapshot_path(v16);
LABEL_105:

          goto LABEL_106;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v35 = gLogObj;
        *buf = 136446210;
        v81 = "nw_path_copy_path_for_tlv";
        v36 = _os_log_send_and_compose_impl();

        v72 = OS_LOG_TYPE_ERROR;
        v71 = 0;
        if (!__nwlog_fault(v36, &v72, &v71))
        {
          goto LABEL_96;
        }

        if (v72 == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v37 = gLogObj;
          v38 = v72;
          if (os_log_type_enabled(v37, v72))
          {
            *buf = 136446210;
            v81 = "nw_path_copy_path_for_tlv";
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s nw_path_parse_necp_result failed", buf, 0xCu);
          }
        }

        else if (v71 == 1)
        {
          v43 = __nw_create_backtrace_string();
          v37 = __nwlog_obj();
          v44 = v72;
          v45 = os_log_type_enabled(v37, v72);
          if (v43)
          {
            if (v45)
            {
              *buf = 136446466;
              v81 = "nw_path_copy_path_for_tlv";
              v82 = 2082;
              v83 = v43;
              _os_log_impl(&dword_181A37000, v37, v44, "%{public}s nw_path_parse_necp_result failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v43);
            goto LABEL_96;
          }

          if (v45)
          {
            *buf = 136446210;
            v81 = "nw_path_copy_path_for_tlv";
            _os_log_impl(&dword_181A37000, v37, v44, "%{public}s nw_path_parse_necp_result failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v37 = __nwlog_obj();
          v49 = v72;
          if (os_log_type_enabled(v37, v72))
          {
            *buf = 136446210;
            v81 = "nw_path_copy_path_for_tlv";
            _os_log_impl(&dword_181A37000, v37, v49, "%{public}s nw_path_parse_necp_result failed, backtrace limit exceeded", buf, 0xCu);
          }
        }

LABEL_96:
        if (v36)
        {
          free(v36);
        }

        goto LABEL_104;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v33 = gLogObj;
      *buf = 136446210;
      v81 = "nw_path_copy_path_for_tlv";
      v22 = _os_log_send_and_compose_impl();

      v72 = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (__nwlog_fault(v22, &v72, &v71))
      {
        if (v72 == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          v34 = v72;
          if (os_log_type_enabled(v23, v72))
          {
            *buf = 136446210;
            v81 = "nw_path_copy_path_for_tlv";
            _os_log_impl(&dword_181A37000, v23, v34, "%{public}s nw_path_create_browse failed", buf, 0xCu);
          }

LABEL_101:

          goto LABEL_102;
        }

        if (v71 != 1)
        {
          v23 = __nwlog_obj();
          v48 = v72;
          if (os_log_type_enabled(v23, v72))
          {
            *buf = 136446210;
            v81 = "nw_path_copy_path_for_tlv";
            _os_log_impl(&dword_181A37000, v23, v48, "%{public}s nw_path_create_browse failed, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_101;
        }

        v28 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v41 = v72;
        v42 = os_log_type_enabled(v23, v72);
        if (!v28)
        {
          if (v42)
          {
            *buf = 136446210;
            v81 = "nw_path_copy_path_for_tlv";
            _os_log_impl(&dword_181A37000, v23, v41, "%{public}s nw_path_create_browse failed, no backtrace", buf, 0xCu);
          }

          goto LABEL_101;
        }

        if (v42)
        {
          *buf = 136446466;
          v81 = "nw_path_copy_path_for_tlv";
          v82 = 2082;
          v83 = v28;
          _os_log_impl(&dword_181A37000, v23, v41, "%{public}s nw_path_create_browse failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_29:

        free(v28);
        if (!v22)
        {
          goto LABEL_104;
        }

        goto LABEL_103;
      }
    }

    else
    {
      v16 = _nw_path_create(*type, v13);
      if (v16)
      {
        goto LABEL_32;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v39 = gLogObj;
      *buf = 136446210;
      v81 = "nw_path_copy_path_for_tlv";
      v22 = _os_log_send_and_compose_impl();

      v72 = OS_LOG_TYPE_ERROR;
      v71 = 0;
      if (__nwlog_fault(v22, &v72, &v71))
      {
        if (v72 == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          v40 = v72;
          if (os_log_type_enabled(v23, v72))
          {
            *buf = 136446210;
            v81 = "nw_path_copy_path_for_tlv";
            _os_log_impl(&dword_181A37000, v23, v40, "%{public}s nw_path_create failed", buf, 0xCu);
          }

          goto LABEL_101;
        }

        if (v71 != 1)
        {
          v23 = __nwlog_obj();
          v50 = v72;
          if (os_log_type_enabled(v23, v72))
          {
            *buf = 136446210;
            v81 = "nw_path_copy_path_for_tlv";
            _os_log_impl(&dword_181A37000, v23, v50, "%{public}s nw_path_create failed, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_101;
        }

        v28 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v46 = v72;
        v47 = os_log_type_enabled(v23, v72);
        if (!v28)
        {
          if (v47)
          {
            *buf = 136446210;
            v81 = "nw_path_copy_path_for_tlv";
            _os_log_impl(&dword_181A37000, v23, v46, "%{public}s nw_path_create failed, no backtrace", buf, 0xCu);
          }

          goto LABEL_101;
        }

        if (v47)
        {
          *buf = 136446466;
          v81 = "nw_path_copy_path_for_tlv";
          v82 = 2082;
          v83 = v28;
          _os_log_impl(&dword_181A37000, v23, v46, "%{public}s nw_path_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_29;
      }
    }

LABEL_102:
    if (!v22)
    {
LABEL_104:
      v16 = 0;
      goto LABEL_105;
    }

LABEL_103:
    free(v22);
    goto LABEL_104;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  *buf = 136446210;
  v81 = "nw_path_copy_path_for_tlv";
  v18 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v78) = 0;
  if (__nwlog_fault(v18, type, &v78))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type[0];
      if (os_log_type_enabled(v19, type[0]))
      {
        *buf = 136446210;
        v81 = "nw_path_copy_path_for_tlv";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s nw_parameters_create failed", buf, 0xCu);
      }
    }

    else if (v78 == 1)
    {
      v25 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v26 = type[0];
      v27 = os_log_type_enabled(v19, type[0]);
      if (v25)
      {
        if (v27)
        {
          *buf = 136446466;
          v81 = "nw_path_copy_path_for_tlv";
          v82 = 2082;
          v83 = v25;
          _os_log_impl(&dword_181A37000, v19, v26, "%{public}s nw_parameters_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v25);
        if (!v18)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      if (v27)
      {
        *buf = 136446210;
        v81 = "nw_path_copy_path_for_tlv";
        _os_log_impl(&dword_181A37000, v19, v26, "%{public}s nw_parameters_create failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v31 = type[0];
      if (os_log_type_enabled(v19, type[0]))
      {
        *buf = 136446210;
        v81 = "nw_path_copy_path_for_tlv";
        _os_log_impl(&dword_181A37000, v19, v31, "%{public}s nw_parameters_create failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v18)
  {
LABEL_66:
    free(v18);
  }

LABEL_67:
  v16 = 0;
LABEL_106:

LABEL_107:
  return v16;
}

void ____nwlog_listener_log_block_invoke()
{
  if ((gHasForked & 1) == 0)
  {
    glistenerLogObj = os_log_create(nw_oslog_subsystem, "listener");
  }
}

void sub_181C51A38(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 176);
  v5 = v3;

  *(a1 + 176) = v3;
  *(a1 + 189) = 1;
}

void nw_listener_set_state_changed_handler(nw_listener_t listener, nw_listener_state_changed_handler_t handler)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = listener;
  v4 = handler;
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_set_state_changed_handler_block_invoke;
    aBlock[3] = &unk_1E6A3D710;
    v15 = v3;
    v16 = v4;
    v5 = _Block_copy(aBlock);
    os_unfair_lock_lock(&v3[1]);
    v5[2](v5);
    os_unfair_lock_unlock(&v3[1]);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_listener_set_state_changed_handler";
  v7 = _os_log_send_and_compose_impl();

  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v7, &v18, &v17))
  {
    if (v18 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_listener_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = v18;
      v12 = os_log_type_enabled(v8, v18);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v20 = "nw_listener_set_state_changed_handler";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v20 = "nw_listener_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = v18;
      if (os_log_type_enabled(v8, v18))
      {
        *buf = 136446210;
        v20 = "nw_listener_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:
}

void __nw_listener_set_state_changed_handler_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 128) == 4)
  {
    v3 = *(v2 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v4 = glistenerLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        id_string = nw_listener_get_id_string(*(a1 + 32));
        v9 = 136446466;
        v10 = "nw_listener_set_state_changed_handler_block_invoke";
        v11 = 2082;
        v12 = id_string;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Cannot set state changed handler after cancel", &v9, 0x16u);
      }
    }
  }

  else
  {
    v6 = _Block_copy(*(a1 + 40));
    v7 = *(a1 + 32);
    v8 = *(v7 + 80);
    *(v7 + 80) = v6;
  }
}

void nw_listener_set_queue(nw_listener_t listener, dispatch_queue_t queue)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = listener;
  v4 = queue;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_listener_set_queue";
    v8 = _os_log_send_and_compose_impl();

    v25 = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v8, &v25, &v24))
    {
      goto LABEL_38;
    }

    if (v25 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v25;
      if (os_log_type_enabled(v9, v25))
      {
        *buf = 136446210;
        v27 = "nw_listener_set_queue";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null listener", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v14 = v25;
      v15 = os_log_type_enabled(v9, v25);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v27 = "nw_listener_set_queue";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
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
        v27 = "nw_listener_set_queue";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v19 = v25;
      if (os_log_type_enabled(v9, v25))
      {
        *buf = 136446210;
        v27 = "nw_listener_set_queue";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_listener_set_queue_block_invoke;
    aBlock[3] = &unk_1E6A3D760;
    v22 = v3;
    v23 = v5;
    v6 = _Block_copy(aBlock);
    os_unfair_lock_lock(&v3[1]);
    v6[2](v6);
    os_unfair_lock_unlock(&v3[1]);

    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_listener_set_queue";
  v8 = _os_log_send_and_compose_impl();

  v25 = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v8, &v25, &v24))
  {
    goto LABEL_38;
  }

  if (v25 == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v12 = v25;
    if (os_log_type_enabled(v9, v25))
    {
      *buf = 136446210;
      v27 = "nw_listener_set_queue";
      _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null queue", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v24 != 1)
  {
    v9 = __nwlog_obj();
    v20 = v25;
    if (os_log_type_enabled(v9, v25))
    {
      *buf = 136446210;
      v27 = "nw_listener_set_queue";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v16 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v17 = v25;
  v18 = os_log_type_enabled(v9, v25);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v27 = "nw_listener_set_queue";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null queue, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v18)
  {
    *buf = 136446466;
    v27 = "nw_listener_set_queue";
    v28 = 2082;
    v29 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_listener_handle_new_path_on_queue(void *a1, void *a2)
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  nw_context_assert_queue(*(v3 + 3));
  if ((*(v3 + 32) - 1) <= 1 && (*(v3 + 310) & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL36nw_listener_handle_new_path_on_queueP22NWConcrete_nw_listenerPU21objcproto10OS_nw_path8NSObject_block_invoke;
    aBlock[3] = &unk_1E6A3D760;
    v5 = v3;
    v63 = v5;
    v64 = v4;
    v6 = _Block_copy(aBlock);
    os_unfair_lock_lock(v3 + 2);
    v6[2](v6);
    os_unfair_lock_unlock(v3 + 2);

    if (nw_path_get_status(*(v5 + 22)) != nw_path_status_satisfiable)
    {
      nw_listener_clear_trigger_agents_on_queue(v5);
LABEL_116:
      nw_listener_reconcile_inboxes_on_queue(v5);

      goto LABEL_117;
    }

    v7 = v5;
    nw_context_assert_queue(*(v3 + 3));
    v8 = (v7 + 200);
    if (!*(v7 + 25))
    {

      goto LABEL_13;
    }

    if (*(v7 + 24))
    {
      v9 = nw_path_copy_inactive_agent_uuids(*(v5 + 22), 0);
      v10 = v9;
      if (v9 && xpc_array_get_count(v9))
      {
        v11 = xpc_array_create(0, 0);
        if (v11)
        {
          v12 = *(v7 + 24);
          v13 = *(v5 + 22);
          v14 = *(v7 + 25);
          *applier = MEMORY[0x1E69E9820];
          *&applier[8] = 3221225472;
          *&applier[16] = ___ZL42nw_listener_update_trigger_agents_on_queueP22NWConcrete_nw_listener_block_invoke;
          *&v68 = &unk_1E6A2E1E0;
          v61 = v13;
          *(&v68 + 1) = v61;
          v60 = v12;
          v69 = v60;
          v15 = v11;
          v70 = v15;
          v16 = v7;
          v71 = v16;
          xpc_array_apply(v14, applier);
          count = xpc_array_get_count(v15);
          if (count)
          {
            objc_storeStrong(v7 + 25, v11);
            v18 = v61;
            v19 = *(v7 + 24);
            *(v7 + 24) = v18;
          }

          else
          {
            nw_listener_clear_trigger_agents_on_queue(v16);
            v41 = *(v16 + 2);
            if (!v41 || _nw_parameters_get_logging_disabled(v41))
            {
LABEL_61:

              if (!count)
              {
LABEL_30:
                v28 = *(v7 + 2);
                if (!v28 || _nw_parameters_get_logging_disabled(v28))
                {
                  goto LABEL_116;
                }

                if (__nwlog_listener_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
                }

                v20 = glistenerLogObj;
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  v29 = v7;

                  *applier = 136446466;
                  *&applier[4] = "nw_listener_handle_new_path_on_queue";
                  *&applier[12] = 2082;
                  *&applier[14] = v29 + 42;
                  _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] agents failed to become active", applier, 0x16u);
                }

                goto LABEL_115;
              }

LABEL_13:
              v20 = v7;
              nw_context_assert_queue(*(v3 + 3));
              v21 = nw_path_copy_inactive_agent_uuids(*(v5 + 22), 0);
              v22 = v21;
              if (!v21 || !xpc_array_get_count(v21))
              {
                goto LABEL_114;
              }

              if (*v8 || (v30 = *(v20 + 23)) != 0 && xpc_equal(v30, v22))
              {
                v23 = *(v20 + 2);
                if (!v23 || _nw_parameters_get_logging_disabled(v23))
                {
                  goto LABEL_114;
                }

                if (__nwlog_listener_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
                }

                v24 = glistenerLogObj;
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  id_string = nw_listener_get_id_string(v20);
                  *applier = 136446466;
                  *&applier[4] = "nw_listener_trigger_agents_on_queue";
                  *&applier[12] = 2082;
                  *&applier[14] = id_string;
                  _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] Already triggered agents", applier, 0x16u);
                }

                goto LABEL_113;
              }

              nw_listener_clear_trigger_agents_on_queue(v20);
              v24 = xpc_array_create(0, 0);
              if (v24)
              {
                v31 = nw_path_evaluator_trigger_agents(*(v20 + 21), 0, 0, v24);
                v32 = v31;
                if (v31 == 1)
                {
                  v54 = *(v20 + 2);
                  if (!v54 || _nw_parameters_get_logging_disabled(v54))
                  {
                    goto LABEL_113;
                  }

                  if (__nwlog_listener_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
                  }

                  v34 = glistenerLogObj;
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                  {
                    v55 = nw_listener_get_id_string(v20);
                    *applier = 136446978;
                    *&applier[4] = "nw_listener_trigger_agents_on_queue";
                    *&applier[12] = 2082;
                    *&applier[14] = v55;
                    *&applier[22] = 1024;
                    LODWORD(v68) = 1;
                    WORD2(v68) = 2082;
                    *(&v68 + 6) = "cannot satisfy";
                    _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] Trigger failed: [%d] %{public}s", applier, 0x26u);
                  }
                }

                else if (v31 || !xpc_array_get_count(v24))
                {
                  v51 = *(v20 + 2);
                  if (!v51 || _nw_parameters_get_logging_disabled(v51))
                  {
                    goto LABEL_113;
                  }

                  if (__nwlog_listener_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
                  }

                  v34 = glistenerLogObj;
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    v52 = nw_listener_get_id_string(v20);
                    if (v32 > 2)
                    {
                      v53 = "unknown error";
                    }

                    else
                    {
                      v53 = off_1E6A39D28[v32];
                    }

                    *applier = 136446978;
                    *&applier[4] = "nw_listener_trigger_agents_on_queue";
                    *&applier[12] = 2082;
                    *&applier[14] = v52;
                    *&applier[22] = 1024;
                    LODWORD(v68) = v32;
                    WORD2(v68) = 2082;
                    *(&v68 + 6) = v53;
                    _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Trigger failed: [%d] %{public}s", applier, 0x26u);
                  }
                }

                else
                {
                  objc_storeStrong(v20 + 23, v22);
                  objc_storeStrong(v20 + 24, *(v5 + 22));
                  objc_storeStrong(v8, v24);
                  v33 = *(v20 + 2);
                  if (!v33 || _nw_parameters_get_logging_disabled(v33))
                  {
                    goto LABEL_113;
                  }

                  if (__nwlog_listener_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
                  }

                  v34 = glistenerLogObj;
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                  {
                    v35 = nw_listener_get_id_string(v20);
                    v36 = xpc_array_get_count(v22);
                    *applier = 136446722;
                    *&applier[4] = "nw_listener_trigger_agents_on_queue";
                    *&applier[12] = 2082;
                    *&applier[14] = v35;
                    *&applier[22] = 2048;
                    *&v68 = v36;
                    _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] Triggered %zu agents", applier, 0x20u);
                  }
                }

LABEL_113:
LABEL_114:

LABEL_115:
                goto LABEL_116;
              }

              v46 = __nwlog_obj();
              *applier = 136446210;
              *&applier[4] = "nw_listener_trigger_agents_on_queue";
              v47 = _os_log_send_and_compose_impl();

              buf[0] = 16;
              type = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v47, buf, &type))
              {
                if (buf[0] == 17)
                {
                  v48 = __nwlog_obj();
                  v49 = buf[0];
                  if (os_log_type_enabled(v48, buf[0]))
                  {
                    *applier = 136446210;
                    *&applier[4] = "nw_listener_trigger_agents_on_queue";
                    _os_log_impl(&dword_181A37000, v48, v49, "%{public}s xpc_array_create failed", applier, 0xCu);
                  }
                }

                else if (type == OS_LOG_TYPE_INFO)
                {
                  backtrace_string = __nw_create_backtrace_string();
                  v48 = __nwlog_obj();
                  v57 = buf[0];
                  v58 = os_log_type_enabled(v48, buf[0]);
                  if (backtrace_string)
                  {
                    if (v58)
                    {
                      *applier = 136446466;
                      *&applier[4] = "nw_listener_trigger_agents_on_queue";
                      *&applier[12] = 2082;
                      *&applier[14] = backtrace_string;
                      _os_log_impl(&dword_181A37000, v48, v57, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", applier, 0x16u);
                    }

                    free(backtrace_string);
                    goto LABEL_110;
                  }

                  if (v58)
                  {
                    *applier = 136446210;
                    *&applier[4] = "nw_listener_trigger_agents_on_queue";
                    _os_log_impl(&dword_181A37000, v48, v57, "%{public}s xpc_array_create failed, no backtrace", applier, 0xCu);
                  }
                }

                else
                {
                  v48 = __nwlog_obj();
                  v59 = buf[0];
                  if (os_log_type_enabled(v48, buf[0]))
                  {
                    *applier = 136446210;
                    *&applier[4] = "nw_listener_trigger_agents_on_queue";
                    _os_log_impl(&dword_181A37000, v48, v59, "%{public}s xpc_array_create failed, backtrace limit exceeded", applier, 0xCu);
                  }
                }
              }

LABEL_110:
              if (v47)
              {
                free(v47);
              }

              v24 = 0;
              goto LABEL_113;
            }

            if (__nwlog_listener_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
            }

            v19 = glistenerLogObj;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v42 = nw_listener_get_id_string(v16);
              *buf = 136446466;
              v73 = "nw_listener_update_trigger_agents_on_queue";
              v74 = 2082;
              v75 = v42;
              _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] all triggered agents updated", buf, 0x16u);
            }
          }

          goto LABEL_61;
        }

        v37 = __nwlog_obj();
        *buf = 136446210;
        v73 = "nw_listener_update_trigger_agents_on_queue";
        v38 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v65 = 0;
        if (__nwlog_fault(v38, &type, &v65))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v39 = __nwlog_obj();
            v40 = type;
            if (os_log_type_enabled(v39, type))
            {
              *buf = 136446210;
              v73 = "nw_listener_update_trigger_agents_on_queue";
              _os_log_impl(&dword_181A37000, v39, v40, "%{public}s xpc_array_create failed", buf, 0xCu);
            }
          }

          else if (v65 == 1)
          {
            v43 = __nw_create_backtrace_string();
            v39 = __nwlog_obj();
            v44 = type;
            v45 = os_log_type_enabled(v39, type);
            if (v43)
            {
              if (v45)
              {
                *buf = 136446466;
                v73 = "nw_listener_update_trigger_agents_on_queue";
                v74 = 2082;
                v75 = v43;
                _os_log_impl(&dword_181A37000, v39, v44, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v43);
              goto LABEL_98;
            }

            if (v45)
            {
              *buf = 136446210;
              v73 = "nw_listener_update_trigger_agents_on_queue";
              _os_log_impl(&dword_181A37000, v39, v44, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v39 = __nwlog_obj();
            v50 = type;
            if (os_log_type_enabled(v39, type))
            {
              *buf = 136446210;
              v73 = "nw_listener_update_trigger_agents_on_queue";
              _os_log_impl(&dword_181A37000, v39, v50, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_98:
        if (v38)
        {
          free(v38);
        }

        goto LABEL_13;
      }

      nw_listener_clear_trigger_agents_on_queue(v7);
    }

    else
    {
      nw_listener_clear_trigger_agents_on_queue(v7);
      v26 = *(v7 + 2);
      if (!v26 || _nw_parameters_get_logging_disabled(v26))
      {

        goto LABEL_30;
      }

      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v10 = glistenerLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v27 = nw_listener_get_id_string(v7);
        *buf = 136446466;
        v73 = "nw_listener_update_trigger_agents_on_queue";
        v74 = 2082;
        v75 = v27;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] no inactive agent information", buf, 0x16u);
      }
    }

    goto LABEL_30;
  }

LABEL_117:
}

void nw_listener_reconcile_inboxes_on_queue(NWConcrete_nw_listener *a1)
{
  v117 = *MEMORY[0x1E69E9840];
  v1 = a1;
  nw_context_assert_queue(*(v1 + 3));
  v2 = nw_path_copy_derived_parameters(*(v1 + 22));
  v3 = *(v1 + 26);
  *(v1 + 26) = v2;

  status = nw_path_get_status(*(v1 + 22));
  obj = _nw_array_create();
  if (status == nw_path_status_satisfied || nw_parameters_get_always_open_listener_socket(*(v1 + 26)))
  {
    v5 = nw_path_listener_uses_nexus_only(*(v1 + 22)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = __Block_byref_object_copy__18668;
  v108 = __Block_byref_object_dispose__18669;
  v109 = 0;
  v6 = *(v1 + 4);
  if (v6)
  {
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke;
    v101[3] = &unk_1E6A2E0F0;
    v102 = v1;
    v103 = obj;
    nw_listener_enumerate_multicast_parameters_for_descriptor_on_queue(v102, v6, v101);
  }

  else
  {
    socket_inbox_match_on_queue = nw_listener_find_socket_inbox_match_on_queue(v1, *(v1 + 26));
    v8 = v105[5];
    v105[5] = socket_inbox_match_on_queue;

    v9 = v105[5];
    if (v9)
    {
      if (obj)
      {
        _nw_array_append(obj, v9);
      }

      v5 = 0;
    }
  }

  v10 = nw_parameters_copy_custom_proxy_configs(*(v1 + 2));
  v11 = v10;
  if (!v10 || _nw_array_is_empty(v10))
  {
    v12 = nw_path_copy_proxy_configs(*(v1 + 22));

    v11 = v12;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_210;
  aBlock[3] = &unk_1E6A3CCB8;
  v13 = v1;
  v100 = v13;
  if (v11)
  {
    _nw_array_apply(v11, aBlock);
  }

  if (status != nw_path_status_satisfied || (nw_parameters_get_allow_socket_access(*(v1 + 26)) & 1) != 0 || *(v1 + 4))
  {
    v14 = 0;
  }

  else
  {
    v38 = _nw_array_create();
    v39 = *(v1 + 22);
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_214;
    v97[3] = &unk_1E6A2E140;
    v40 = v13;
    v98 = v40;
    nw_path_enumerate_interface_options(v39, v97);
    v41 = _nw_path_copy_flows(*(v1 + 22));
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_2;
    v93[3] = &unk_1E6A3B418;
    v94 = v40;
    v95 = obj;
    v14 = v38;
    v96 = v14;
    v42 = v14;
    if (v41)
    {
      _nw_array_apply(v41, v93);
      v42 = v96;
    }
  }

  v16 = (v13 + 144);
  v15 = *(v13 + 18);
  if (v15 && _nw_array_get_count(v15))
  {
    v17 = *v16;
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_3;
    v91[3] = &unk_1E6A3CCB8;
    v18 = obj;
    v92 = v18;
    if (v17)
    {
      _nw_array_apply(v17, v91);
    }

    v19 = nw_array_create_by_removal(*v16, v18);
    v20 = v19;
    if (v19 && _nw_array_get_count(v19))
    {
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_4;
      v89[3] = &unk_1E6A3CCB8;
      v90 = v13;
      _nw_array_apply(v20, v89);
    }
  }

  objc_storeStrong(v13 + 18, obj);
  v21 = _nw_array_create();
  v22 = *(v13 + 19);
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_217;
  v86[3] = &unk_1E6A35E80;
  v23 = v13;
  v87 = v23;
  v24 = v21;
  v88 = v24;
  if (v22)
  {
    _nw_array_apply(v22, v86);
  }

  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_3_219;
  v84[3] = &unk_1E6A3CCB8;
  v25 = v23;
  v85 = v25;
  if (v24)
  {
    _nw_array_apply(v24, v84);
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__18668;
  v82 = __Block_byref_object_dispose__18669;
  v83 = 0;
  v26 = *(v1 + 4);
  if (v26)
  {
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_220;
    v74[3] = &unk_1E6A2E190;
    v75 = v25;
    v76 = &v104;
    v77 = &v78;
    nw_listener_enumerate_multicast_parameters_for_descriptor_on_queue(v75, v26, v74);

    goto LABEL_56;
  }

  if (v5 && !*(v25 + 76))
  {
    v113 = 0uLL;
    nw_path_get_client_id(*(v1 + 22), &v113);
    v27 = [[nw_listener_inbox_socket alloc] initWithParameters:v25 delegate:&v113 necpUUID:?];
    v28 = v105[5];
    v105[5] = v27;

    v29 = v105[5];
    if (!v29)
    {
      v43 = *(v1 + 2);
      if (v43 && !_nw_parameters_get_logging_disabled(v43))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v44 = glistenerLogObj;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          id_string = nw_listener_get_id_string(v25);
          v46 = *(v1 + 26);
          *buf = 136446722;
          *&buf[4] = "nw_listener_reconcile_inboxes_on_queue";
          *&buf[12] = 2082;
          *&buf[14] = id_string;
          *&buf[22] = 2114;
          v111 = v46;
          _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] failed to create listener inbox with parameters %{public}@", buf, 0x20u);
        }
      }

      v47 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
      v33 = v79[5];
      v79[5] = v47;
      goto LABEL_55;
    }

    v30 = [v29 start];
    v31 = v79[5];
    v79[5] = v30;

    v32 = *(v1 + 2);
    if (v79[5])
    {
      if (v32 && !_nw_parameters_get_logging_disabled(v32))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v33 = glistenerLogObj;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = nw_listener_get_id_string(v25);
          v35 = v79[5];
          v36 = v105[5];
          v37 = *(v1 + 26);
          *buf = 136447234;
          *&buf[4] = "nw_listener_reconcile_inboxes_on_queue";
          *&buf[12] = 2082;
          *&buf[14] = v34;
          *&buf[22] = 2114;
          v111 = v35;
          *v112 = 2114;
          *&v112[2] = v36;
          *&v112[10] = 2114;
          *&v112[12] = v37;
          _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Error %{public}@ starting inbox %{public}@. Parameters: %{public}@", buf, 0x34u);
        }

LABEL_55:
      }
    }

    else
    {
      if (v32 && !_nw_parameters_get_logging_disabled(v32))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v62 = glistenerLogObj;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v63 = nw_listener_get_id_string(v25);
          v64 = v105[5];
          v65 = *(v1 + 26);
          *buf = 136446978;
          *&buf[4] = "nw_listener_reconcile_inboxes_on_queue";
          *&buf[12] = 2082;
          *&buf[14] = v63;
          *&buf[22] = 2114;
          v111 = v64;
          *v112 = 2114;
          *&v112[2] = v65;
          _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] Started inbox %{public}@ with parameters %{public}@", buf, 0x2Au);
        }
      }

      if (*v16)
      {
        v66 = v105[5];
        if (v66)
        {
          _nw_array_append(*v16, v66);
        }
      }
    }
  }

LABEL_56:
  if ((nw_parameters_get_disable_listener_datapath(*(v1 + 26)) & 1) == 0 && !v79[5] && v14 && _nw_array_get_count(v14))
  {
    v68 = MEMORY[0x1E69E9820];
    v69 = 3221225472;
    v70 = ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_222;
    v71 = &unk_1E6A3BB28;
    v72 = v25;
    v73 = &v78;
    _nw_array_apply(v14, &v68);
  }

  v48 = v25;
  nw_context_assert_queue(*(v1 + 3));
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v111 = __Block_byref_object_copy__18668;
  *v112 = __Block_byref_object_dispose__18669;
  *&v112[8] = 0;
  if (*v16 && _nw_array_get_count(*v16))
  {
    if (*v16)
    {
      v49 = _nw_array_get_object_at_index(*v16, 0);
    }

    else
    {
      v49 = 0;
    }

    v50 = [v49 local_endpoint];
    v51 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v50;
  }

  v52 = *(*&buf[8] + 40);
  if (!v52)
  {
    v53 = *(v1 + 22);
    if (v53)
    {
      v54 = _nw_path_copy_flows(v53);
      v55 = v54;
      *&v113 = MEMORY[0x1E69E9820];
      *(&v113 + 1) = 3221225472;
      v114 = ___ZL40nw_listener_save_local_endpoint_on_queueP22NWConcrete_nw_listener_block_invoke;
      v115 = &unk_1E6A39B60;
      v116 = buf;
      if (v54)
      {
        _nw_array_apply(v54, &v113);
      }

      v52 = *(*&buf[8] + 40);
    }

    else
    {
      v52 = 0;
    }
  }

  nw_listener_set_local_endpoint_on_queue(v48, v52);
  _Block_object_dispose(buf, 8);

  if (*(v48 + 32) - 3) < 2 || (*(v48 + 310))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v61 = gLogObj;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_listener_reconcile_inboxes_on_queue";
      _os_log_impl(&dword_181A37000, v61, OS_LOG_TYPE_DEBUG, "%{public}s Listener already cancelled or failed, not modifying listener state", buf, 0xCu);
    }

    goto LABEL_83;
  }

  v56 = v79[5];
  if (v56)
  {
    v57 = v56;
    v58 = v57[2] == 1;

    if (v58)
    {
      v59 = v57;
      v60 = v59[3];

      if (v60 <= 0x30 && ((1 << v60) & 0x1000000402006) != 0)
      {

        nw_listener_set_state_on_queue(v48, 3, v79[5]);
LABEL_83:
        nw_listener_stop_advertising_on_queue(v48);
        goto LABEL_84;
      }
    }
  }

  if (*v16 && _nw_array_get_count(*v16))
  {
    nw_listener_set_state_on_queue(v48, 2, 0);
    nw_listener_start_advertising_on_queue(v48);
  }

  else
  {
    nw_listener_set_state_on_queue(v48, 1, v79[5]);
  }

LABEL_84:
  _Block_object_dispose(&v78, 8);

  _Block_object_dispose(&v104, 8);
}

void sub_181C53F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, void *a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&STACK[0x200], 8);

  _Unwind_Resume(a1);
}

uint64_t nw_path_listener_uses_nexus_only(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_listener_uses_nexus_only(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_listener_uses_nexus_only";
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
        v16 = "nw_path_listener_uses_nexus_only";
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
          v16 = "nw_path_listener_uses_nexus_only";
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
        v16 = "nw_path_listener_uses_nexus_only";
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
        v16 = "nw_path_listener_uses_nexus_only";
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

uint64_t sub_181C54400(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);
  is_ultra_constrained_allowed = swift_beginAccess();
  if (*(v3 + 230) & 1) != 0 && (*(v2 + 136))
  {
    if (qword_1ED4106B8 != -1)
    {
      swift_once();
    }

    v12 = sub_182AD2698();
    __swift_project_value_buffer(v12, qword_1ED411DA8);

    v13 = sub_182AD2678();
    v14 = sub_182AD38A8();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_56;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v102 = v16;
    *v15 = 136315138;
    v18 = *(v2 + 40);
    v17 = *(v2 + 48);

    v19 = sub_181C64FFC(v18, v17, &v102);

    *(v15 + 4) = v19;
    v20 = "Expensive prohibited, cannot use interface option %s";
    goto LABEL_55;
  }

  if ((*(v3 + 230) & 2) != 0 && (*(v2 + 136) & 0x40) != 0)
  {
    if (qword_1ED4106B8 != -1)
    {
      swift_once();
    }

    v21 = sub_182AD2698();
    __swift_project_value_buffer(v21, qword_1ED411DA8);

    v13 = sub_182AD2678();
    v14 = sub_182AD38A8();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_56;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v102 = v16;
    *v15 = 136315138;
    v23 = *(v2 + 40);
    v22 = *(v2 + 48);

    v24 = sub_181C64FFC(v23, v22, &v102);

    *(v15 + 4) = v24;
    v20 = "Constrained prohibited, cannot use interface option %s";
    goto LABEL_55;
  }

  if ((*(v3 + 231) & 1) == 0 && (*(v2 + 137) & 0x40) != 0)
  {
    is_ultra_constrained_allowed = nw_path_is_ultra_constrained_allowed();
    if ((is_ultra_constrained_allowed & 1) == 0)
    {
      if (qword_1ED4106B8 != -1)
      {
        swift_once();
      }

      v52 = sub_182AD2698();
      __swift_project_value_buffer(v52, qword_1ED411DA8);

      v13 = sub_182AD2678();
      v14 = sub_182AD38A8();

      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_56;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v102 = v16;
      *v15 = 136315138;
      v54 = *(v2 + 40);
      v53 = *(v2 + 48);

      v55 = sub_181C64FFC(v54, v53, &v102);

      *(v15 + 4) = v55;
      v20 = "Ultra constrained not allowed, cannot use interface option %s";
LABEL_55:
      _os_log_impl(&dword_181A37000, v13, v14, v20, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1865DF520](v16, -1, -1);
      MEMORY[0x1865DF520](v15, -1, -1);
LABEL_56:

      return 1;
    }
  }

  v5 = *(v3 + 240);
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v5[3];
  if (!v6)
  {
    goto LABEL_58;
  }

  v7 = *(v2 + 184);
  v8 = v6[4];
  v9 = v6[3] + v8;
  if (v6[2] < v9)
  {
    v9 = v6[2];
  }

  v102 = v6;
  v103 = v8;
  v104 = v9;
  v10 = v6;
  while (v8 != v104)
  {
LABEL_13:
    v11 = v10 + v8++;
    v103 = v8;
    if (qword_182AEE030[*(v11 + 40)] == qword_182AEE030[v7])
    {
      swift_retain_n();

      if (qword_1ED4106B8 != -1)
      {
        swift_once();
      }

      v34 = sub_182AD2698();
      __swift_project_value_buffer(v34, qword_1ED411DA8);

      v35 = sub_182AD2678();
      v36 = sub_182AD38A8();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v102 = v38;
        *v37 = 136315394;
        v39 = 0xE400000000000000;
        v40 = 1768319351;
        v41 = *(v2 + 184);
        v42 = 0xE800000000000000;
        v43 = 0x72616C756C6C6563;
        v44 = 0xEE0074656E726568;
        v45 = 0x7465206465726977;
        if (v41 != 3)
        {
          v45 = 0x6B636162706F6F6CLL;
          v44 = 0xE800000000000000;
        }

        if (v41 != 2)
        {
          v43 = v45;
          v42 = v44;
        }

        if (!*(v2 + 184))
        {
          v40 = 0x726568746FLL;
          v39 = 0xE500000000000000;
        }

        if (*(v2 + 184) <= 1u)
        {
          v46 = v40;
        }

        else
        {
          v46 = v43;
        }

        if (*(v2 + 184) <= 1u)
        {
          v47 = v39;
        }

        else
        {
          v47 = v42;
        }

        v48 = sub_181C64FFC(v46, v47, &v102);

        *(v37 + 4) = v48;
        *(v37 + 12) = 2080;
        v50 = *(v2 + 40);
        v49 = *(v2 + 48);

        v51 = sub_181C64FFC(v50, v49, &v102);

        *(v37 + 14) = v51;
        _os_log_impl(&dword_181A37000, v35, v36, "Interface type %s prohibited, cannot use interface option %s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v38, -1, -1);
        MEMORY[0x1865DF520](v37, -1, -1);
      }

      goto LABEL_133;
    }
  }

  is_ultra_constrained_allowed = sub_181AC81FC(is_ultra_constrained_allowed);
  if (is_ultra_constrained_allowed)
  {
    v10 = v102;
    v8 = v103;
    goto LABEL_13;
  }

  swift_retain_n();

  v5 = *(v3 + 240);
  if (!v5)
  {
LABEL_25:
    if (*(v2 + 185) != 2 || (*(v3 + 236) & 2) != 0)
    {
    }

    else
    {
      if (qword_1ED4106B8 != -1)
      {
        swift_once();
      }

      v25 = sub_182AD2698();
      __swift_project_value_buffer(v25, qword_1ED411DA8);

      v26 = sub_182AD2678();
      v27 = sub_182AD38A8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v102 = v29;
        *v28 = 136315138;
        v31 = *(v2 + 40);
        v30 = *(v2 + 48);

        v32 = sub_181C64FFC(v31, v30, &v102);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_181A37000, v26, v27, "Interface %s prohibited, cannot use interface option", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x1865DF520](v29, -1, -1);
        MEMORY[0x1865DF520](v28, -1, -1);
      }
    }

    return 0;
  }

LABEL_58:
  v56 = v5[4];
  if (!v56)
  {
    goto LABEL_85;
  }

  v57 = *(v2 + 185);
  v58 = v56[4];
  v59 = v56[3] + v58;
  if (v56[2] < v59)
  {
    v59 = v56[2];
  }

  v102 = v56;
  v103 = v58;
  v104 = v59;
  v60 = v56;
  while (2)
  {
    if (v58 != v104)
    {
LABEL_62:
      v61 = v60 + v58++;
      v103 = v58;
      if (qword_182AEE058[*(v61 + 40)] == qword_182AEE058[v57])
      {
        swift_retain_n();

        if (qword_1ED4106B8 != -1)
        {
          swift_once();
        }

        v62 = sub_182AD2698();
        __swift_project_value_buffer(v62, qword_1ED411DA8);

        v63 = sub_182AD2678();
        v64 = sub_182AD38A8();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v102 = v66;
          *v65 = 136315394;
          v67 = *(v2 + 185);
          v68 = 0x6477615F69666977;
          v69 = 0xEB00000000726F73;
          v70 = 0x7365636F72706F63;
          if (v67 != 3)
          {
            v70 = 0x6F696E61706D6F63;
            v69 = 0xE90000000000006ELL;
          }

          if (v67 == 2)
          {
            v69 = 0xE90000000000006CLL;
          }

          else
          {
            v68 = v70;
          }

          v71 = 0xE500000000000000;
          v72 = 0x726568746FLL;
          if (*(v2 + 185))
          {
            v72 = 0xD000000000000013;
            v71 = 0x8000000182BD71B0;
          }

          if (*(v2 + 185) <= 1u)
          {
            v73 = v72;
          }

          else
          {
            v73 = v68;
          }

          if (*(v2 + 185) <= 1u)
          {
            v74 = v71;
          }

          else
          {
            v74 = v69;
          }

          v75 = sub_181C64FFC(v73, v74, &v102);

          *(v65 + 4) = v75;
          *(v65 + 12) = 2080;
          v77 = *(v2 + 40);
          v76 = *(v2 + 48);

          v78 = sub_181C64FFC(v77, v76, &v102);

          *(v65 + 14) = v78;
          _os_log_impl(&dword_181A37000, v63, v64, "Interface subtype %s prohibited, cannot use interface option %s", v65, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v66, -1, -1);
          MEMORY[0x1865DF520](v65, -1, -1);
        }

        goto LABEL_132;
      }

      continue;
    }

    break;
  }

  is_ultra_constrained_allowed = sub_181AC81FC(is_ultra_constrained_allowed);
  if (is_ultra_constrained_allowed)
  {
    v60 = v102;
    v58 = v103;
    goto LABEL_62;
  }

  swift_retain_n();

  v5 = *(v3 + 240);
  if (!v5)
  {
    goto LABEL_25;
  }

LABEL_85:
  v79 = v5[6];
  if (!v79)
  {
    goto LABEL_25;
  }

  v80 = v79[4];
  if (v79[2] >= v79[3] + v80)
  {
    v81 = v79[3] + v80;
  }

  else
  {
    v81 = v79[2];
  }

  v102 = v5[6];
  v103 = v80;
  v104 = v81;

  v83 = v79;
  while (2)
  {
    if (v80 == v81)
    {
      if ((sub_181AC81FC(v82) & 1) == 0)
      {

        goto LABEL_25;
      }

      v83 = v102;
      v80 = v103;
    }

    v86 = v83 + 8 * v80++;
    v103 = v80;
    v87 = *(v86 + 40);
    v82 = *(v87 + 40);
    if (v82 != *(v2 + 40) || *(v87 + 48) != *(v2 + 48))
    {
      v82 = sub_182AD4268();
      if ((v82 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    if (*(v87 + 16) != *(v2 + 16))
    {
      goto LABEL_95;
    }

    v89 = *(v2 + 184);
    if (v89 <= 1)
    {
      if (*(v2 + 184))
      {
        v91 = 2;
        goto LABEL_113;
      }
    }

    else
    {
      v90 = 4;
      if (v89 != 3)
      {
        v90 = 1;
      }

      v85 = v89 == 2;
      v91 = 3;
      if (!v85)
      {
        v91 = v90;
      }

LABEL_113:
      if (*(v87 + 184))
      {
        v92 = qword_182AEE030[*(v87 + 184)] == v91;
      }

      else
      {
        v92 = 1;
      }

      if (!v92)
      {
LABEL_95:
        v81 = v104;
        continue;
      }
    }

    break;
  }

  v93 = *(v2 + 185);
  if (v93 > 2)
  {
    if (v93 == 3)
    {
      v84 = 6;
    }

    else
    {
      v84 = 7;
    }
  }

  else if (v93 == 1)
  {
    v84 = 3;
  }

  else
  {
    if (v93 != 2)
    {
      goto LABEL_127;
    }

    v84 = 4;
  }

  if (*(v87 + 185))
  {
    v85 = qword_182AEE058[*(v87 + 185)] == v84;
  }

  else
  {
    v85 = 1;
  }

  if (!v85)
  {
    goto LABEL_95;
  }

LABEL_127:

  if (qword_1ED4106B8 != -1)
  {
    swift_once();
  }

  v94 = sub_182AD2698();
  __swift_project_value_buffer(v94, qword_1ED411DA8);

  v95 = sub_182AD2678();
  v96 = sub_182AD38A8();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v102 = v98;
    *v97 = 136315138;
    v100 = *(v2 + 40);
    v99 = *(v2 + 48);

    v101 = sub_181C64FFC(v100, v99, &v102);

    *(v97 + 4) = v101;
    _os_log_impl(&dword_181A37000, v95, v96, "Interface %s prohibited, cannot use interface option", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v98);
    MEMORY[0x1865DF520](v98, -1, -1);
    MEMORY[0x1865DF520](v97, -1, -1);
  }

LABEL_132:

LABEL_133:

  return 1;
}

void nw_interface_option_details_get_nexus_agent(void *a1, _OWORD *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      *a2 = v3[2];
      goto LABEL_4;
    }

    v4 = v3;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_interface_option_details_get_nexus_agent";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v6, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_interface_option_details_get_nexus_agent";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null out_nexus_agent", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_interface_option_details_get_nexus_agent";
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null out_nexus_agent, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v21 = "nw_interface_option_details_get_nexus_agent";
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null out_nexus_agent, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "nw_interface_option_details_get_nexus_agent";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null out_nexus_agent, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_interface_option_details_get_nexus_agent";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v6, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_interface_option_details_get_nexus_agent";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null interface_option_details", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_interface_option_details_get_nexus_agent";
          _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null interface_option_details, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v13)
        {
          *buf = 136446210;
          v21 = "nw_interface_option_details_get_nexus_agent";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null interface_option_details, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v13)
      {
        *buf = 136446466;
        v21 = "nw_interface_option_details_get_nexus_agent";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null interface_option_details, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v6)
  {
    free(v6);
  }

  v3 = v4;
LABEL_4:
}

id nw_interface_option_details_copy_remote_endpoint(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[3];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_interface_option_details_copy_remote_endpoint";
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
        v16 = "nw_interface_option_details_copy_remote_endpoint";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null interface_option_details", buf, 0xCu);
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
          v16 = "nw_interface_option_details_copy_remote_endpoint";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null interface_option_details, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_interface_option_details_copy_remote_endpoint";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null interface_option_details, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_interface_option_details_copy_remote_endpoint";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null interface_option_details, backtrace limit exceeded", buf, 0xCu);
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

void ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_215(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 128) - 3) >= 2 && (*(v1 + 310) & 1) == 0)
  {
    nw_path_evaluator_force_update(*(v1 + 168), *(a1 + 40));
  }
}

const char *nw_listener_get_id_string(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1 + 42;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_listener_get_id_string";
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
        v15 = "nw_listener_get_id_string";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null listener", buf, 0xCu);
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
          v15 = "nw_listener_get_id_string";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_listener_get_id_string";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_listener_get_id_string";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null listener, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = "";
  v1 = 0;
LABEL_3:

  return v2;
}

uint64_t ___ZL45nw_listener_has_flow_for_nexus_agent_on_queueP22NWConcrete_nw_listenerPh_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!nw_path_flow_registration_uses_nexus(v4, *(a1 + 48)) || (v5 = nw_path_copy_flow_for_registration(*(*(a1 + 32) + 176), v4), (v6 = v5) != 0) && (is_defunct = _nw_path_flow_is_defunct(v5), v6, (is_defunct & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v8;
}

BOOL sub_181C55C6C(void *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v6 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v5, v4, type metadata accessor for Endpoint.EndpointType);

  if (swift_getEnumCaseMultiPayload())
  {
    sub_181A5513C(v4, type metadata accessor for Endpoint.EndpointType);
    return 0;
  }

  v8 = *(v4 + 2);
  v9 = *(v4 + 3);
  v10 = *(v4 + 4);
  v11 = *(v4 + 20);
  v12 = v4[42];

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      sub_181AD1DE4(v8, v9, v10, v11, 2u);
    }

    else if (v12 == 3)
    {
      sub_181AD1DE4(v8, v9, v10, v11, 3u);
    }

    else
    {
      sub_181AD1DE4(v8, v9, v10, v11, 4u);
    }

    return 0;
  }

  if (v12)
  {
    sub_181AD1DE4(v8, v9, v10, v11, 1u);
    return v8 == 0xFF;
  }

  else
  {
    sub_181AD1DE4(v8, v9, v10, v11, 0);
    return (v8 & 0xF0) == 224;
  }
}

_DWORD *nw_fd_wrapper_create(int a1)
{
  *&v18[13] = *MEMORY[0x1E69E9840];
  if (a1 < 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446466;
    v16 = "nw_fd_wrapper_create";
    v17 = 1024;
    *v18 = a1;
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (__nwlog_fault(v5, &type, &v13))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v7 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446466;
          v16 = "nw_fd_wrapper_create";
          v17 = 1024;
          *v18 = a1;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with invalid fd %d", buf, 0x12u);
        }
      }

      else if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v10 = type;
        v11 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v11)
          {
            *buf = 136446722;
            v16 = "nw_fd_wrapper_create";
            v17 = 1024;
            *v18 = a1;
            v18[2] = 2082;
            *&v18[3] = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with invalid fd %d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(backtrace_string);
          if (!v5)
          {
            return 0;
          }

          goto LABEL_11;
        }

        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_fd_wrapper_create";
          v17 = 1024;
          *v18 = a1;
          _os_log_impl(&dword_181A37000, v6, v10, "%{public}s called with invalid fd %d, no backtrace", buf, 0x12u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        v12 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446466;
          v16 = "nw_fd_wrapper_create";
          v17 = 1024;
          *v18 = a1;
          _os_log_impl(&dword_181A37000, v6, v12, "%{public}s called with invalid fd %d, backtrace limit exceeded", buf, 0x12u);
        }
      }
    }

    if (!v5)
    {
      return 0;
    }

LABEL_11:
    free(v5);
    return 0;
  }

  v2 = [[NWConcrete_nw_fd_wrapper alloc] initWithFileDescriptor:a1];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v16 = "nw_fd_wrapper_create";
    v17 = 2114;
    *v18 = v2;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s Created %{public}@", buf, 0x16u);
  }

  return v2;
}

uint64_t nw_parameters_get_disable_listener_datapath(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_disable_listener_datapath(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_disable_listener_datapath";
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
        v12 = "nw_parameters_get_disable_listener_datapath";
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
            v12 = "nw_parameters_get_disable_listener_datapath";
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
        v12 = "nw_parameters_get_disable_listener_datapath";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_disable_listener_datapath";
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

  return 0;
}

void nw_listener_start_advertising_on_queue(NWConcrete_nw_listener *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  nw_context_assert_queue(*(v1 + 3));
  if (*(v1 + 34) && *(v1 + 32) == 2 && (*(v1 + 310) & 1) == 0 && !*(v1 + 35))
  {
    v2 = [[_NWAdvertiser alloc] initFor:v1 descriptor:*(v1 + 34) parent:0 parameters:*(v1 + 26)];
    if (v2)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v28) = 1;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL38nw_listener_start_advertising_on_queueP22NWConcrete_nw_listener_block_invoke;
      aBlock[3] = &unk_1E6A3BE58;
      v22 = v1;
      v3 = v2;
      v23 = v3;
      v24 = buf;
      v4 = _Block_copy(aBlock);
      os_unfair_lock_lock(v1 + 2);
      v4[2](v4);
      os_unfair_lock_unlock(v1 + 2);

      if (*(*&buf[8] + 24) == 1)
      {
        [(_NWAdvertiser *)v3 start];
      }

      _Block_object_dispose(buf, 8);
      goto LABEL_39;
    }

    v5 = *(v1 + 2);
    if (!v5 || _nw_parameters_get_logging_disabled(v5))
    {
LABEL_39:

      goto LABEL_40;
    }

    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v6 = glistenerLogObj;
    v7 = v1;

    *buf = 136446466;
    *&buf[4] = "nw_listener_start_advertising_on_queue";
    *&buf[12] = 2082;
    *&buf[14] = v7 + 42;
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v8, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v9 = glistenerLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          id_string = nw_listener_get_id_string(v7);
          *buf = 136446466;
          *&buf[4] = "nw_listener_start_advertising_on_queue";
          *&buf[12] = 2082;
          *&buf[14] = id_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s [%{public}s] Failed to create advertiser", buf, 0x16u);
        }
      }

      else if (v25 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v13 = backtrace_string;
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v14 = glistenerLogObj;
          v15 = type;
          if (os_log_type_enabled(v14, type))
          {
            v16 = nw_listener_get_id_string(v7);
            *buf = 136446722;
            *&buf[4] = "nw_listener_start_advertising_on_queue";
            *&buf[12] = 2082;
            *&buf[14] = v16;
            *&buf[22] = 2082;
            v28 = v13;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s [%{public}s] Failed to create advertiser, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v13);
          goto LABEL_37;
        }

        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v9 = glistenerLogObj;
        v19 = type;
        if (os_log_type_enabled(v9, type))
        {
          v20 = nw_listener_get_id_string(v7);
          *buf = 136446466;
          *&buf[4] = "nw_listener_start_advertising_on_queue";
          *&buf[12] = 2082;
          *&buf[14] = v20;
          _os_log_impl(&dword_181A37000, v9, v19, "%{public}s [%{public}s] Failed to create advertiser, no backtrace", buf, 0x16u);
        }
      }

      else
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v9 = glistenerLogObj;
        v17 = type;
        if (os_log_type_enabled(v9, type))
        {
          v18 = nw_listener_get_id_string(v7);
          *buf = 136446466;
          *&buf[4] = "nw_listener_start_advertising_on_queue";
          *&buf[12] = 2082;
          *&buf[14] = v18;
          _os_log_impl(&dword_181A37000, v9, v17, "%{public}s [%{public}s] Failed to create advertiser, backtrace limit exceeded", buf, 0x16u);
        }
      }
    }

LABEL_37:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_39;
  }

LABEL_40:
}

void sub_181C569B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_utilities_execute_block_as_persona_from_parameters(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_utilities_execute_block_as_persona_from_parameters";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_utilities_execute_block_as_persona_from_parameters";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          *&buf[4] = "nw_utilities_execute_block_as_persona_from_parameters";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v9)
        {
          goto LABEL_7;
        }

LABEL_43:
        free(v9);
        goto LABEL_7;
      }

      if (v16)
      {
        *buf = 136446210;
        *&buf[4] = "nw_utilities_execute_block_as_persona_from_parameters";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_utilities_execute_block_as_persona_from_parameters";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  if (!v4)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_utilities_execute_block_as_persona_from_parameters";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_utilities_execute_block_as_persona_from_parameters";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null block", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      v17 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v10, type);
      if (v17)
      {
        if (v19)
        {
          *buf = 136446466;
          *&buf[4] = "nw_utilities_execute_block_as_persona_from_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v17;
          _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null block, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v17);
        if (!v9)
        {
          goto LABEL_7;
        }

        goto LABEL_43;
      }

      if (v19)
      {
        *buf = 136446210;
        *&buf[4] = "nw_utilities_execute_block_as_persona_from_parameters";
        _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null block, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_utilities_execute_block_as_persona_from_parameters";
        _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null block, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_41;
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!_nw_parameters_get_use_persona(v3) || !_nw_parameters_get_persona(v3, buf))
  {
    v5[2](v5);
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = nw_utilities_execute_block_as_persona(buf, v5);
LABEL_8:

  return v6;
}

uint64_t sub_181C56F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_181C56FBC(uint64_t a1, NSObject *a2, uint64_t a3, void (*a4)(int *))
{
  v7 = *(a3 + 16);
  os_unfair_lock_lock((v7 + 208));
  swift_unknownObjectRetain();
  sub_181C570C0(a1, a2, &v18);
  v8 = v18;
  v9 = v18 | (v19 << 32);
  *(v7 + 204) = v19;
  *(v7 + 200) = v8;
  if (v9 >= 0x8000000002 && (nw_utilities_minos_atleast(1) & 1) != 0)
  {
    v10 = *(v7 + 48);
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    sub_181A554F4(v10);
    v11 = *(v7 + 32);
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    sub_181A554F4(v11);
    v12 = *(v7 + 16);
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    sub_181A554F4(v12);
    v13 = *(v7 + 64);
    *(v7 + 64) = 0;
    *(v7 + 72) = 0;
    sub_181A554F4(v13);
  }

  v14 = *(v7 + 204);
  v15 = *(v7 + 200);
  os_unfair_lock_unlock((v7 + 208));
  if (a4)
  {
    v16 = v15;
    v17 = (v15 | (v14 << 32)) >> 32;
    a4(&v16);
  }
}

uint64_t sub_181C570C0@<X0>(uint64_t result@<X0>, NSObject *a2@<X1>, uint64_t a3@<X8>)
{
  if (result <= 1)
  {
    if (!result)
    {
      result = swift_unknownObjectRelease();
      v4 = 0x8000000000;
      goto LABEL_15;
    }

    if (result == 1)
    {
      if (a2)
      {
        result = NWError.init(_:)(a2, &v5);
        v4 = v5 | (v6 << 32);
      }

      else
      {
        v4 = 50;
      }

      goto LABEL_15;
    }

LABEL_10:
    result = swift_unknownObjectRelease();
    v4 = 0x8000000002;
    goto LABEL_15;
  }

  if (result == 2)
  {
    result = swift_unknownObjectRelease();
    v4 = 0x8000000001;
    goto LABEL_15;
  }

  if (result != 3)
  {
    goto LABEL_10;
  }

  if (a2)
  {
    result = NWError.init(_:)(a2, &v7);
    v4 = v7 | (v8 << 32) | 0x4000000000;
  }

  else
  {
    v4 = 0x4000000016;
  }

LABEL_15:
  *a3 = v4;
  *(a3 + 4) = BYTE4(v4);
  return result;
}

BOOL _s7Network10NWListenerC5StateO2eeoiySbAE_AEtFZ_0(unsigned int *a1, unsigned int *a2)
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

        goto LABEL_21;
      }
    }

    else
    {
      v10 = 0x8000000000;
      if (v3 == 0x8000000000 || (v10 = 0x8000000001, v3 == 0x8000000001))
      {
        if ((v4 & 0xFFFFFFFFFFLL) == v10)
        {
          return 1;
        }
      }

      else if ((v4 & 0xFFFFFFFFFFLL) == 0x8000000002)
      {
        return 1;
      }
    }
  }

  else if (((v4 >> 38) & 3) == 0)
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

LABEL_21:
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

void ___ZL26nw_listener_start_on_queueP22NWConcrete_nw_listener_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  if (v4 && !_nw_parameters_get_logging_disabled(v4))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v5 = glistenerLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      id_string = nw_listener_get_id_string(*(a1 + 32));
      v7 = 136446722;
      v8 = "nw_listener_start_on_queue_block_invoke";
      v9 = 2082;
      v10 = id_string;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Handling new path %{public}@", &v7, 0x20u);
    }
  }

  nw_listener_handle_new_path_on_queue(*(a1 + 32), v3);
}

uint64_t ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 32);
    if (v5 && v4)
    {
      if (_nw_array_contains_object(v5, v4))
      {
        goto LABEL_9;
      }

      v5 = *(a1 + 32);
    }

    if (v5 && v4)
    {
      _nw_array_append(v5, v4);
    }
  }

LABEL_9:

  return 1;
}

uint64_t nw_path_copy_advertise_descriptor(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_get_advertise_descriptor(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_advertise_descriptor";
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
        v16 = "nw_path_copy_advertise_descriptor";
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
          v16 = "nw_path_copy_advertise_descriptor";
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
        v16 = "nw_path_copy_advertise_descriptor";
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
        v16 = "nw_path_copy_advertise_descriptor";
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

uint64_t nw_path_copy_browse_descriptor(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_get_browse_descriptor(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_browse_descriptor";
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
        v16 = "nw_path_copy_browse_descriptor";
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
          v16 = "nw_path_copy_browse_descriptor";
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
        v16 = "nw_path_copy_browse_descriptor";
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
        v16 = "nw_path_copy_browse_descriptor";
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

id _nw_path_get_browse_descriptor(char *a1)
{
  if (a1)
  {
    v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = a1;
    swift_beginAccess();
    v3 = *(v1 + 21);
    swift_unknownObjectRetain();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t nw_path_copy_group_descriptor(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_get_group_descriptor(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_group_descriptor";
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
        v16 = "nw_path_copy_group_descriptor";
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
          v16 = "nw_path_copy_group_descriptor";
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
        v16 = "nw_path_copy_group_descriptor";
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
        v16 = "nw_path_copy_group_descriptor";
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

id _nw_path_get_group_descriptor(char *a1)
{
  if (a1)
  {
    v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = a1;
    swift_beginAccess();
    v3 = *(v1 + 20);
    swift_unknownObjectRetain();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

atomic_uint *nw_agent_client_get_next_id(atomic_uint *result)
{
  v1 = result;
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(result) = atomic_fetch_add(result, 1u) + 1;
  if (result >= 0x100 && !result)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136446210;
      v4 = "nw_agent_client_get_next_id";
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_ERROR, "%{public}s reached maximum agent clients, wrapping", &v3, 0xCu);
    }

    LOBYTE(result) = nw_agent_client_get_next_id(v1);
  }

  return result;
}

id _nw_path_flow_copy_interface_0(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 1);
  if (v3)
  {

    v4 = type metadata accessor for __NWInterface();
    v5 = objc_allocWithZone(v4);
    v6 = OBJC_IVAR____TtC7Network13__NWInterface_lock;

    v7 = swift_slowAlloc();
    *&v5[v6] = v7;
    *&v5[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
    *&v5[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v3;
    *v7 = 0;
    v10.receiver = v5;
    v10.super_class = v4;
    v8 = objc_msgSendSuper2(&v10, sel_init);
  }

  else
  {

    return 0;
  }

  return v8;
}

id _nw_path_flow_copy_local_endpoint(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id nw_agent_client_copy_parameters(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[5];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_agent_client_copy_parameters";
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
        v16 = "nw_agent_client_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null client", buf, 0xCu);
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
          v16 = "nw_agent_client_copy_parameters";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null client, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_agent_client_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null client, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_agent_client_copy_parameters";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null client, backtrace limit exceeded", buf, 0xCu);
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

uint64_t ___ZL44nw_listener_find_socket_inbox_match_on_queueP22NWConcrete_nw_listenerPU27objcproto16OS_nw_parameters8NSObject_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = v6[6];
    v8 = v7;
    v9 = *(a1 + 32);
    is_equal = v7 == v9;
    if (v7 != v9 && v7 != 0 && v9 != 0)
    {
      is_equal = _nw_parameters_is_equal(v7, v9);
    }

    if (is_equal)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    }

    else
    {
      v14 = *(*(a1 + 40) + 16);
      if (v14 && !_nw_parameters_get_logging_disabled(v14))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v15 = glistenerLogObj;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          id_string = nw_listener_get_id_string(*(a1 + 40));
          v17 = *(a1 + 32);
          v19 = 136447234;
          v20 = "nw_listener_find_socket_inbox_match_on_queue_block_invoke";
          v21 = 2082;
          v22 = id_string;
          v23 = 2114;
          v24 = v6;
          v25 = 2114;
          v26 = v8;
          v27 = 2114;
          v28 = v17;
          _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Ignoring existing socket listener: %{public}@, inbox parameters: (%{public}@) do not match: (%{public}@)", &v19, 0x34u);
        }
      }
    }

    v13 = is_equal ^ 1u;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

BOOL ___ZL15nw_channel_initv_block_invoke()
{
  g_channel_check_validity = nw_channel_frame_check_validity;
  g_channel_reclassifier = nw_channel_reclassify_input;
  g_channel_set_flow_handler = nw_channel_set_flow_handler;
  g_channel_get_flow_handler = nw_channel_get_flow_handler;
  g_channel_set_internet_checksum_handler = nw_channel_set_internet_checksum_handler;
  g_channel_get_internet_checksum_handler = nw_channel_get_internet_checksum_handler;
  g_channel_protocol_callbacks = nw_channel_add_input_handler;
  qword_1ED4115D0 = nw_channel_replace_input_handler;
  qword_1ED4115C8 = nw_channel_remove_input_handler;
  qword_1ED411610 = nw_channel_get_input_frames;
  qword_1ED411618 = nw_channel_get_output_frames;
  qword_1ED411620 = nw_channel_finalize_output_frames;
  qword_1ED4115D8 = nw_channel_connect;
  qword_1ED4115E0 = nw_channel_disconnect;
  qword_1ED411668 = nw_channel_updated_path;
  qword_1ED411680 = nw_channel_output_finished;
  qword_1ED4116B8 = nw_channel_get_message_properties;
  result = networkd_settings_get_BOOL(nw_setting_channel_force_copy_frame);
  g_channel_force_copy_frame = result;
  return result;
}

uint64_t sub_181C5861C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

id nw_activity_copy_parent_activity(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[7];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_activity_copy_parent_activity";
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
        v16 = "nw_activity_copy_parent_activity";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null activity", buf, 0xCu);
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
          v16 = "nw_activity_copy_parent_activity";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_activity_copy_parent_activity";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null activity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_activity_copy_parent_activity";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
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

uint64_t sub_181C58918(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t NWActivity.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_181C589A0()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_182AD2F88();

  return v2;
}

uint64_t NSURLSessionTask._nwActivity.setter(uint64_t a1)
{
  sub_181C58A34(a1);
}

uint64_t sub_181C58A34(uint64_t a1)
{
  if (a1)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A440);
    if (swift_dynamicCast())
    {
      v2 = v4;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  [v1 set:v2 nw:? activity:?];
  return swift_unknownObjectRelease();
}

uint64_t _s7Network10ParametersV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v238 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v176 = *(a1 + 33);
  v171 = *(a1 + 68);
  v161 = *(a1 + 72);
  v167 = *(a1 + 80);
  v157 = *(a1 + 88);
  v163 = *(a1 + 96);
  v148 = *(a1 + 104);
  v158 = *(a1 + 112);
  v154 = *(a1 + 113);
  v152 = *(a1 + 114);
  v5 = *(a1 + 115);
  v6 = *(a1 + 116);
  v8 = *(a1 + 120);
  v7 = *(a1 + 124);
  v9 = *(a1 + 272);
  v224 = *(a1 + 256);
  v225 = v9;
  v10 = *(a1 + 288);
  v11 = *(a1 + 208);
  v220 = *(a1 + 192);
  v221 = v11;
  v12 = *(a1 + 240);
  v222 = *(a1 + 224);
  v223 = v12;
  v13 = *(a1 + 144);
  v216 = *(a1 + 128);
  v217 = v13;
  v14 = *(a1 + 176);
  v218 = *(a1 + 160);
  v219 = v14;
  v15 = *(a1 + 304);
  v16 = *(a1 + 312);
  v17 = *(a1 + 320);
  v18 = *(a1 + 328);
  v19 = *(a1 + 336);
  v144 = *(a1 + 360);
  v145 = *(a1 + 352);
  v21 = *(a1 + 368);
  v20 = *(a1 + 376);
  v22 = *(a1 + 384);
  v23 = *a2;
  v24 = *(a2 + 16);
  v25 = *(a2 + 17);
  object1 = *(a2 + 33);
  v26 = *(a1 + 52);
  v27 = *(a1 + 36);
  v28 = *(a2 + 256);
  v29 = *(a2 + 272);
  v30 = *(a2 + 224);
  v234 = *(a2 + 240);
  v235 = v28;
  v236 = v29;
  v237 = *(a2 + 288);
  v31 = *(a2 + 192);
  v32 = *(a2 + 208);
  v33 = *(a2 + 160);
  v230 = *(a2 + 176);
  v231 = v31;
  v34 = *(a2 + 52);
  v232 = v32;
  v233 = v30;
  v35 = *(a2 + 128);
  v36 = *(a2 + 144);
  v226 = v10;
  v227 = v35;
  v37 = *(a2 + 36);
  v169 = *(a2 + 68);
  v228 = v36;
  v229 = v33;
  v159 = *(a2 + 72);
  v165 = *(a2 + 80);
  v155 = *(a2 + 88);
  v160 = *(a2 + 96);
  v146 = *(a2 + 104);
  v156 = *(a2 + 112);
  v153 = *(a2 + 113);
  v151 = *(a2 + 114);
  v150 = *(a2 + 115);
  v149 = *(a2 + 116);
  v38 = *(a2 + 124);
  v147 = *(a2 + 120);
  v40 = *(a2 + 304);
  v39 = *(a2 + 312);
  v42 = *(a2 + 320);
  v41 = *(a2 + 328);
  v44 = *(a2 + 336);
  v43 = *(a2 + 344);
  v46 = *(a2 + 352);
  v45 = *(a2 + 360);
  v48 = *(a2 + 368);
  v47 = *(a2 + 376);
  v49 = *(a2 + 384);
  if (v3)
  {
    v143 = *(a2 + 124);
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v205 = v2;
    LOBYTE(v206) = 0;
    if (v24)
    {
      return 0;
    }

    v143 = v38;
    v204[0] = v23;
    v133 = v19;
    object2a = v49;
    v108 = v47;
    v110 = v48;
    v127 = v44;
    v129 = v46;
    v140 = v21;
    v131 = v18;
    v106 = v20;
    v50 = v22;
    v123 = v8;
    v125 = v7;
    v51 = v43;
    v52 = v41;
    v121 = v6;
    v53 = v42;
    v54 = v17;
    v55 = v15;
    v56 = v16;
    v57 = v39;
    v58 = v40;
    v104 = v25;
    v105 = v4;
    v117 = v27;
    v119 = v26;
    v113 = v37;
    v115 = v34;
    v59 = _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v205, v204);
    v37 = v113;
    v34 = v115;
    v25 = v104;
    v4 = v105;
    v27 = v117;
    v26 = v119;
    v40 = v58;
    v39 = v57;
    v16 = v56;
    v15 = v55;
    v17 = v54;
    v42 = v53;
    v6 = v121;
    v8 = v123;
    v41 = v52;
    v43 = v51;
    v7 = v125;
    v22 = v50;
    v46 = v129;
    v18 = v131;
    v20 = v106;
    v47 = v108;
    v49 = object2a;
    v21 = v140;
    v44 = v127;
    v48 = v110;
    v19 = v133;
    if (!v59)
    {
      return 0;
    }
  }

  if (v176)
  {
    if ((object1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v205 = v4;
    LOBYTE(v206) = 0;
    if (object1)
    {
      return 0;
    }

    v204[0] = v25;
    v130 = v46;
    v134 = v19;
    v136 = v45;
    object2b = v49;
    object1b = v22;
    v177 = v15;
    v128 = v44;
    v60 = v43;
    v124 = v8;
    v126 = v7;
    v61 = v41;
    v62 = v42;
    v63 = v20;
    v141 = v21;
    v64 = v17;
    v122 = v6;
    v65 = v16;
    v66 = v47;
    v67 = v48;
    v111 = v39;
    v68 = v40;
    v118 = v27;
    v120 = v26;
    v114 = v37;
    v116 = v34;
    v69 = _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v205, v204);
    v37 = v114;
    v34 = v116;
    v27 = v118;
    v26 = v120;
    v40 = v68;
    v39 = v111;
    v48 = v67;
    v47 = v66;
    v16 = v65;
    v22 = object1b;
    v15 = v177;
    v17 = v64;
    v6 = v122;
    v8 = v124;
    v49 = object2b;
    v21 = v141;
    v20 = v63;
    v42 = v62;
    v41 = v61;
    v7 = v126;
    v43 = v60;
    v44 = v128;
    v46 = v130;
    v45 = v136;
    v19 = v134;
    if (!v69)
    {
      return 0;
    }
  }

  if (v171)
  {
    if (!v169)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v169 & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(v27, v37), vceqq_s64(v26, v34)), xmmword_182AE3CB0)) & 0xF) != 0)
    {
      return result;
    }
  }

  if (v167)
  {
    if (!v165)
    {
      return 0;
    }
  }

  else
  {
    v71 = v165;
    if (v161 != v159)
    {
      v71 = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  if (v163)
  {
    if (!v160)
    {
      return 0;
    }
  }

  else
  {
    v72 = v160;
    if (v157 != v155)
    {
      v72 = 1;
    }

    if (v72)
    {
      return 0;
    }
  }

  if (v158)
  {
    v73 = v156;
    if (v154 != v153)
    {
      v73 = 0;
    }

    if (v73 != 1)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v156 & 1) != 0 || v148 != v146 || v154 != v153)
    {
      return result;
    }
  }

  if (v152 == 2)
  {
    result = 0;
    if (v151 != 2)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v151 == 2 || ((v151 ^ v152) & 1) != 0)
    {
      return result;
    }
  }

  if (v5 != v150 || v6 != v149 || v8 != v147 || v7 != v143)
  {
    return result;
  }

  v168 = v42;
  v170 = v40;
  v74 = v39;
  v109 = v47;
  v112 = v48;
  v75 = v16;
  object1a = v22;
  v178 = v15;
  v164 = v41;
  v166 = v17;
  v142 = v21;
  v107 = v20;
  v162 = v43;
  v200 = v223;
  v201 = v224;
  v202 = v225;
  v203 = v226;
  v196 = v219;
  v197 = v220;
  v198 = v221;
  v199 = v222;
  v194 = v217;
  v195 = v218;
  v190 = v235;
  v191 = v236;
  v192 = v237;
  v193 = v216;
  v186 = v231;
  v187 = v232;
  v188 = v233;
  v189 = v234;
  v182 = v227;
  v183 = v228;
  v184 = v229;
  v185 = v230;
  sub_181A41E20(&v216, uu1);
  sub_181A41E20(&v227, uu1);
  v172 = sub_181C59628(&v193, &v182);
  v204[8] = v190;
  v204[9] = v191;
  v204[10] = v192;
  v204[4] = v186;
  v204[5] = v187;
  v204[6] = v188;
  v204[7] = v189;
  v204[0] = v182;
  v204[1] = v183;
  v204[2] = v184;
  v204[3] = v185;
  sub_181A41E7C(v204);
  v213 = v201;
  v214 = v202;
  v215 = v203;
  v209 = v197;
  v210 = v198;
  v211 = v199;
  v212 = v200;
  v205 = v193;
  v206 = v194;
  v207 = v195;
  v208 = v196;
  sub_181A41E7C(&v205);
  if ((v172 & 1) == 0)
  {
    return 0;
  }

  if (v75)
  {
    if (!v74 || (v178 != v170 || v75 != v74) && (sub_182AD4268() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v74)
  {
    return 0;
  }

  if (!v166)
  {
    if (v168)
    {
      return 0;
    }

    goto LABEL_75;
  }

  if (!v168)
  {
    return 0;
  }

  v76 = v166[3];
  if (v76 != v168[3])
  {
    return 0;
  }

  if (!v76 || v166 == v168)
  {
LABEL_75:
    v84 = v45;
    object2 = v49;
    if (v19 >> 60 == 15)
    {
      if (v44 >> 60 == 15)
      {
        sub_181F49B44(v18, v19);
        sub_181F49B44(v164, v44);
        sub_181D9D680(v18, v19);
LABEL_81:
        LOBYTE(v193) = 0;
        if ((sub_181C59BE4(v162, &v193) & 1) == 0)
        {
          return 0;
        }

        if (v145)
        {
          if (!v46)
          {
            return 0;
          }

          v86 = v145[3];
          if (v86 != v46[3])
          {
            return 0;
          }

          if (v86)
          {
            if (v145 != v46)
            {

              v88 = sub_1822C4AA0(v87, v145);

              if ((v88 & 1) == 0)
              {
                return 0;
              }
            }
          }
        }

        else if (v46)
        {
          return 0;
        }

        if (v144)
        {
          if (!v45)
          {
            return 0;
          }

          v90 = v144[2];
          v89 = v144[3];
          v91 = v144[4];
          v92 = v144[5];
          v93 = *(v45 + 16);
          v94 = *(v45 + 24);
          v95 = *(v84 + 32);
          v96 = *(v84 + 40);
          swift_unknownObjectRetain();

          swift_unknownObjectRetain();
          swift_unknownObjectRetain();

          swift_unknownObjectRetain();
          v97 = sub_181F48584(v90, v89, v91, v92, v93, v94, v95, v96);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          if ((v97 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v45)
        {
          return 0;
        }

        if (v142)
        {
          if (!v112)
          {
            return 0;
          }

          type metadata accessor for Endpoint(0);
          v98 = v112;
          v99 = v142;
          v100 = sub_182AD3978();

          if ((v100 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v112)
        {
          return 0;
        }

        if (v107)
        {
          if (!v109)
          {
            return 0;
          }

          type metadata accessor for Endpoint(0);
          v101 = v109;
          v102 = v107;
          v103 = sub_182AD3978();

          if ((v103 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v109)
        {
          return 0;
        }

        if (object1a)
        {
          if (!object2 || !xpc_equal(object1a, object2))
          {
            return 0;
          }
        }

        else if (object2)
        {
          return 0;
        }

        return 1;
      }
    }

    else if (v44 >> 60 != 15)
    {
      sub_181F49B44(v18, v19);
      sub_181F49B44(v164, v44);
      v85 = sub_18206EADC(v18, v19, v164, v44);
      sub_181D9D680(v164, v44);
      sub_181D9D680(v18, v19);
      if ((v85 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_81;
    }

    sub_181F49B44(v18, v19);
    sub_181F49B44(v164, v44);
    sub_181D9D680(v18, v19);
    sub_181D9D680(v164, v44);
    return 0;
  }

  v132 = v18;
  v135 = v19;
  v77 = v166[4];
  v78 = v77 + v76;
  if (v166[2] < v77 + v76)
  {
    v78 = v166[2];
  }

  *&v193 = v166;
  *(&v193 + 1) = v77;
  *&v194 = v78;
  v79 = v168[4];
  v80 = v79 + v76;
  if (v168[2] < v80)
  {
    v80 = v168[2];
  }

  *&v182 = v168;
  *(&v182 + 1) = v79;
  *&v183 = v80;
  swift_retain_n();

  while (1)
  {
    v81 = *(&v193 + 1);
    if (*(&v193 + 1) != v194)
    {
      goto LABEL_66;
    }

    if (sub_181F47FDC())
    {
      v81 = *(&v193 + 1);
LABEL_66:
      v82 = 0;
      *(&v193 + 1) = v81 + 1;
      v83 = *(v193 + 16 * v81 + 40);
      goto LABEL_68;
    }

    v83 = 0uLL;
    v82 = 1;
LABEL_68:
    if (v79 != v183)
    {
      goto LABEL_71;
    }

    v179 = v83;
    if ((sub_181F47FDC() & 1) == 0)
    {
      break;
    }

    v79 = *(&v182 + 1);
    v83 = v179;
LABEL_71:
    *(&v182 + 1) = v79 + 1;
    if ((v82 & 1) == 0)
    {
      *uu2 = *(v182 + 16 * v79 + 40);
      *uu1 = v83;
      ++v79;
      if (!uuid_compare(uu1, uu2))
      {
        continue;
      }
    }

    goto LABEL_92;
  }

  if (v82)
  {

    v19 = v135;
    v18 = v132;
    goto LABEL_75;
  }

LABEL_92:

  return 0;
}

uint64_t sub_181C59628(__int128 *a1, __int128 *a2)
{
  v4 = a1[3];
  v112 = a1[2];
  *v113 = v4;
  *&v113[12] = *(a1 + 60);
  v5 = a1[1];
  v110 = *a1;
  v111 = v5;
  v6 = *(a1 + 88);
  v7 = *(a1 + 89);
  v75 = *(a1 + 90);
  v72 = *(a1 + 46);
  v73 = *(a1 + 91);
  v8 = *(a1 + 12);
  v66 = *(a1 + 13);
  v70 = *(a1 + 14);
  v61 = *(a1 + 15);
  v68 = *(a1 + 16);
  v63 = *(a1 + 18);
  v59 = *(a1 + 19);
  v56 = *(a1 + 20);
  v57 = *(a1 + 17);
  v54 = *(a1 + 21);
  v9 = a2[3];
  v103 = a2[2];
  *v104 = v9;
  *&v104[12] = *(a2 + 60);
  v10 = a2[1];
  v101 = *a2;
  v102 = v10;
  v11 = *(a2 + 88);
  v12 = *(a2 + 89);
  v13 = *(a2 + 90);
  v14 = *(a2 + 91);
  v15 = *(a2 + 46);
  v71 = *(a2 + 12);
  v69 = *(a2 + 14);
  v62 = *(a2 + 15);
  v67 = *(a2 + 16);
  v60 = *(a2 + 17);
  v64 = *(a2 + 18);
  v65 = *(a2 + 13);
  v58 = *(a2 + 19);
  v55 = *(a2 + 20);
  v53 = *(a2 + 21);
  if (!sub_181B038E8(&v110, &v101))
  {
    return 0;
  }

  *&v110 = *(a1 + 76);
  DWORD2(v110) = *(a1 + 21);
  *&v101 = *(a2 + 76);
  DWORD2(v101) = *(a2 + 21);
  v16 = sub_181B01C24(&v110, &v101);
  result = 0;
  if (v16 && v6 == v11 && v7 == v12)
  {
    result = 0;
    if ((0x656403020100uLL >> (8 * v75)) == (0x656403020100uLL >> (8 * v13)) && v73 == v14 && v72 == v15)
    {
      if (v8)
      {
        if (!v71)
        {
          return 0;
        }

        v18 = *(v8 + 128);
        v97[6] = *(v8 + 112);
        v97[7] = v18;
        v97[8] = *(v8 + 144);
        v98 = *(v8 + 160);
        v19 = *(v8 + 64);
        v97[2] = *(v8 + 48);
        v97[3] = v19;
        v20 = *(v8 + 96);
        v97[4] = *(v8 + 80);
        v97[5] = v20;
        v21 = *(v8 + 32);
        v97[0] = *(v8 + 16);
        v97[1] = v21;
        v22 = *(v8 + 128);
        v93 = *(v8 + 112);
        v94 = v22;
        v95 = *(v8 + 144);
        v96 = *(v8 + 160);
        v23 = *(v8 + 64);
        v89 = *(v8 + 48);
        v90 = v23;
        v24 = *(v8 + 96);
        v91 = *(v8 + 80);
        v92 = v24;
        v25 = *(v8 + 32);
        v87 = *(v8 + 16);
        v88 = v25;
        v26 = *(v71 + 128);
        v99[6] = *(v71 + 112);
        v99[7] = v26;
        v99[8] = *(v71 + 144);
        v100 = *(v71 + 160);
        v27 = *(v71 + 64);
        v99[2] = *(v71 + 48);
        v99[3] = v27;
        v28 = *(v71 + 96);
        v99[4] = *(v71 + 80);
        v99[5] = v28;
        v29 = *(v71 + 32);
        v99[0] = *(v71 + 16);
        v99[1] = v29;
        v30 = *(v71 + 128);
        v83 = *(v71 + 112);
        v84 = v30;
        v85 = *(v71 + 144);
        v86 = *(v71 + 160);
        v31 = *(v71 + 64);
        v79 = *(v71 + 48);
        v80 = v31;
        v32 = *(v71 + 96);
        v81 = *(v71 + 80);
        v82 = v32;
        v33 = *(v71 + 32);
        v77 = *(v71 + 16);
        v78 = v33;
        sub_181D09728(v97, &v110);
        sub_181D09728(v99, &v110);
        v34 = sub_181E2CE84(&v87, &v77);
        v106 = v83;
        v107 = v84;
        v108 = v85;
        v109 = v86;
        v103 = v79;
        *v104 = v80;
        *&v104[16] = v81;
        v105 = v82;
        v101 = v77;
        v102 = v78;
        sub_181D09760(&v101);
        v115 = v93;
        v116 = v94;
        v117 = v95;
        v118 = v96;
        v112 = v89;
        *v113 = v90;
        *&v113[16] = v91;
        v114 = v92;
        v110 = v87;
        v111 = v88;
        sub_181D09760(&v110);
        if ((v34 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v71)
      {
        return 0;
      }

      if (v70)
      {
        if (!v69 || (v66 != v65 || v70 != v69) && (sub_182AD4268() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v69)
      {
        return 0;
      }

      if (v68)
      {
        if (!v67 || (v61 != v62 || v68 != v67) && (sub_182AD4268() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v67)
      {
        return 0;
      }

      if (v63)
      {
        if (!v64 || (v57 != v60 || v63 != v64) && (sub_182AD4268() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v64)
      {
        return 0;
      }

      if (*(v59 + 16) == *(v58 + 16))
      {
        if (v56)
        {
          if (!v55)
          {
            return 0;
          }

          v35 = v56[3];
          v36 = v56[4];
          v37 = v56[5];
          v38 = v56[6];
          v39 = v56[7];
          v40 = v56[8];
          *&v110 = v56[2];
          *(&v110 + 1) = v35;
          *&v111 = v36;
          *(&v111 + 1) = v37;
          *&v112 = v38;
          *(&v112 + 1) = v39;
          *v113 = v40;
          v42 = v55[3];
          v43 = v55[4];
          v44 = v55[5];
          v45 = v55[6];
          v74 = v55[7];
          v76 = v55[8];
          *&v101 = v55[2];
          v41 = v101;
          *(&v101 + 1) = v42;
          *&v102 = v43;
          *(&v102 + 1) = v44;
          *&v103 = v45;
          *(&v103 + 1) = v74;
          *v104 = v76;
          sub_181AC8268(v110, v35);
          sub_181B687F0(v36, v37);
          sub_181AB78DC(v38);

          sub_181AC8268(v41, v42);
          sub_181B687F0(v43, v44);
          sub_181AB78DC(v45);

          LOBYTE(v36) = sub_18226FAF8(&v110, &v101);
          v46 = v102;
          v47 = v103;
          sub_181A53008(v101, *(&v101 + 1));
          sub_181A52FE0(v46, *(&v46 + 1));
          sub_181B03DAC(v47);

          v48 = v111;
          v49 = v112;
          sub_181A53008(v110, *(&v110 + 1));
          sub_181A52FE0(v48, *(&v48 + 1));
          sub_181B03DAC(v49);

          if ((v36 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v55)
        {
          return 0;
        }

        if (v54)
        {
          if (!v53)
          {
            return 0;
          }

          type metadata accessor for Endpoint(0);
          v50 = v53;
          v51 = v54;
          v52 = sub_182AD3978();

          if ((v52 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v53)
        {
          return 0;
        }

        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_181C59BE4(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(sub_181AC9084() + 24);

  v7 = *(sub_181AC9084() + 24);

  if (v6 != v7)
  {
    goto LABEL_57;
  }

  v9 = *(v3[2] + 24);
  if (v9 < 0)
  {
    goto LABEL_75;
  }

  v66 = v3;
  v67 = v5;
  if (!v9)
  {
LABEL_22:
    v30 = *(sub_181A54748() + 24);

    v31 = *(sub_181A54748() + 24);

    if (v30 != v31)
    {
      goto LABEL_57;
    }

    v32 = v3[3];
    v33 = *(v32 + 24);
    if (v33 < 0)
    {
      goto LABEL_76;
    }

    if (v33)
    {
      v34 = 0;
      v65 = *(v32 + 24);
      while (1)
      {
        v40 = v3[3];
        if (v34 >= v40[3])
        {
          goto LABEL_73;
        }

        v41 = v40[4];
        v42 = v40[2];
        if (v34 + v41 < v42)
        {
          v42 = 0;
        }

        v43 = a1[3];
        if (v34 >= v43[3])
        {
          goto LABEL_74;
        }

        v44 = &v40[2 * v34 + 2 * (v41 - v42)];
        v18 = v44[5];
        v19 = v44[6];
        v45 = v43[4];
        v46 = v34 + v45 >= v43[2] ? v43[2] : 0;
        v47 = &v43[2 * v34 + 2 * (v45 - v46)];
        v24 = v47[5];
        v23 = v47[6];
        if (!(v19 >> 62))
        {
          break;
        }

        if (v19 >> 62 == 1)
        {
          if (v23 >> 62 != 1)
          {
            goto LABEL_44;
          }

          ObjectType = swift_getObjectType();
          LOBYTE(v73) = v67;
          v36 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          sub_181B2C3E0(v24, v23);
          sub_181B2C3E0(v18, v19);
          sub_181B2C3E0(v24, v23);
          sub_181B2C3E0(v18, v19);
          v37 = ObjectType;
          v3 = v66;
          v38 = v36(v24, v23 & 0x3FFFFFFFFFFFFFFFLL, &v73, v37, v19 & 0x3FFFFFFFFFFFFFFFLL);
          v33 = v65;
LABEL_28:
          v39 = v38;
          sub_181AAD084(v24, v23);
          sub_181AAD084(v18, v19);
          sub_181AAD084(v18, v19);
          result = sub_181AAD084(v24, v23);
          if ((v39 & 1) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_29;
        }

        v25 = v23 >> 62;
        if (v23 >> 62 != 2)
        {
          goto LABEL_45;
        }

        sub_181AAD084(v18, v19);
        result = sub_181AAD084(v24, v23);
LABEL_29:
        if (v33 == ++v34)
        {
          goto LABEL_47;
        }
      }

      v25 = v23 >> 62;
      if (v23 >> 62)
      {
        goto LABEL_43;
      }

      sub_181B2C3E0(v24, v23);
      sub_181B2C3E0(v18, v19);
      sub_181B2C3E0(v24, v23);
      sub_181B2C3E0(v18, v19);
      v38 = sub_181CC4EF0(v24, v67);
      goto LABEL_28;
    }

LABEL_47:
    ProtocolStack.transport.getter(&v73);
    v48 = v74;
    if ((~v74 & 0xF000000000000007) != 0)
    {
      v49 = v73;
      ProtocolStack.transport.getter(&v73);
      v50 = v74;
      if ((~v74 & 0xF000000000000007) != 0)
      {
        v54 = v73;
        v73 = v49;
        v74 = v48;
        v71 = v54;
        v72 = v50;
        v70[0] = v67;
        v55 = sub_181B0227C(&v71, v70);
        sub_181A53008(v54, v50);
        sub_181A53008(v49, v48);
        if ((v55 & 1) == 0)
        {
          goto LABEL_57;
        }

LABEL_60:
        v56 = v3[11];
        v57 = a1[11];
        v58 = v57 & 0xF000000000000007;
        if ((~v56 & 0xF000000000000007) != 0)
        {
          if (v58 == 0xF000000000000007)
          {
            goto LABEL_57;
          }

          v59 = a1[10];
          v73 = v3[10];
          v74 = v56;
          v71 = v59;
          v72 = v57;
          v70[0] = v67;
          if ((sub_181B0227C(&v71, v70) & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        else if (v58 != 0xF000000000000007)
        {
          goto LABEL_57;
        }

        swift_beginAccess();
        v60 = v3[7];
        if ((~v60 & 0xF000000000000007) != 0)
        {
          v61 = v3[6];
          swift_beginAccess();
          v62 = a1[7];
          if ((~v62 & 0xF000000000000007) != 0)
          {
            v63 = a1[6];
            v71 = v61;
            v72 = v60;
            v69[0] = v63;
            v69[1] = v62;
            v68 = v67;
            v53 = sub_181B03A70(v69, &v68);
            return v53 & 1;
          }

          v60 = v3[7];
        }

        if ((~v60 & 0xF000000000000007) == 0)
        {
          swift_beginAccess();
          v53 = (~a1[7] & 0xF000000000000007) == 0;
          return v53 & 1;
        }

LABEL_57:
        v53 = 0;
        return v53 & 1;
      }

      sub_181A53008(v49, v48);
    }

    ProtocolStack.transport.getter(&v73);
    v51 = v74;
    if ((~v74 & 0xF000000000000007) != 0 || (ProtocolStack.transport.getter(&v73), v51 = v74, (~v74 & 0xF000000000000007) != 0))
    {
      sub_181A53008(v73, v51);
      goto LABEL_57;
    }

    goto LABEL_60;
  }

  v10 = 0;
  v64 = *(v3[2] + 24);
  while (1)
  {
    v13 = v3[2];
    if (v10 >= v13[3])
    {
      break;
    }

    v14 = v13[4];
    v15 = v13[2];
    if (v10 + v14 < v15)
    {
      v15 = 0;
    }

    v16 = a1[2];
    if (v10 >= v16[3])
    {
      goto LABEL_72;
    }

    v17 = &v13[2 * v10 + 2 * (v14 - v15)];
    v18 = v17[5];
    v19 = v17[6];
    v20 = v16[4];
    if (v10 + v20 >= v16[2])
    {
      v21 = v16[2];
    }

    else
    {
      v21 = 0;
    }

    v22 = &v16[2 * v10 + 2 * (v20 - v21)];
    v24 = v22[5];
    v23 = v22[6];
    v25 = v23 >> 62;
    if (!(v19 >> 62))
    {
      if (v25)
      {
LABEL_43:
        if (v25 == 1)
        {
LABEL_44:
          sub_181B2C3E0(v24, v23);
          sub_181B2C3E0(v18, v19);
          goto LABEL_55;
        }

LABEL_56:
        sub_181AAD084(v52, v19);
        sub_181AAD084(v24, v23);
        goto LABEL_57;
      }

      sub_181B2C3E0(v24, v23);
      sub_181B2C3E0(v18, v19);
      sub_181B2C3E0(v24, v23);
      sub_181B2C3E0(v18, v19);
      v11 = sub_181CC4EF0(v24, v5);
      goto LABEL_7;
    }

    if (v19 >> 62 == 1)
    {
      if (v25 != 1)
      {
        goto LABEL_44;
      }

      v26 = swift_getObjectType();
      LOBYTE(v73) = v5;
      v27 = a1;
      v28 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_181B2C3E0(v24, v23);
      sub_181B2C3E0(v18, v19);
      sub_181B2C3E0(v24, v23);
      sub_181B2C3E0(v18, v19);
      v29 = v26;
      v9 = v64;
      v3 = v66;
      v11 = v28(v24, v23 & 0x3FFFFFFFFFFFFFFFLL, &v73, v29, v19 & 0x3FFFFFFFFFFFFFFFLL);
      a1 = v27;
      v5 = v67;
LABEL_7:
      v12 = v11;
      sub_181AAD084(v24, v23);
      sub_181AAD084(v18, v19);
      sub_181AAD084(v18, v19);
      result = sub_181AAD084(v24, v23);
      if ((v12 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_8;
    }

    if (v25 != 2)
    {
LABEL_45:
      if (v25)
      {
        swift_unknownObjectRetain();
      }

      else
      {
      }

LABEL_55:
      v52 = v18;
      goto LABEL_56;
    }

    sub_181AAD084(v18, v19);
    result = sub_181AAD084(v24, v23);
LABEL_8:
    if (v9 == ++v10)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t _nw_path_flow_is_defunct(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 100);

  return (v1 >> 10) & 1;
}

uint64_t ___ZL38nw_listener_reconcile_inboxes_on_queueP22NWConcrete_nw_listener_block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (nw_path_flow_is_assigned(v4) && (nw_path_flow_is_defunct(v4) & 1) == 0)
  {
    v5 = a1[4];
    v6 = v5[26];
    v7 = v5;
    v8 = v4;
    v9 = v6;
    nw_context_assert_queue(v7[3]);
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__18668;
    v23 = __Block_byref_object_dispose__18669;
    v24 = 0;
    v10 = v7[18];
    if (v10)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL45nw_listener_find_channel_inbox_match_on_queueP22NWConcrete_nw_listenerPU26objcproto15OS_nw_path_flow8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke;
      aBlock[3] = &unk_1E6A35E30;
      v16 = v8;
      v17 = v9;
      v18 = &v19;
      _nw_array_apply(v10, aBlock);

      v11 = v20[5];
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    _Block_object_dispose(&v19, 8);

    if (v12)
    {
      v13 = a1[5];
      v8 = v12;
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = a1[6];
      if (!v13 || !v8)
      {
        goto LABEL_12;
      }
    }

    _nw_array_append(v13, v8);
LABEL_12:
  }

  return 1;
}

uint64_t nw_path_flow_is_assigned(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    is_assigned = _nw_path_flow_is_assigned(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_flow_is_assigned";
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
        v16 = "nw_path_flow_is_assigned";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null flow", buf, 0xCu);
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
          v16 = "nw_path_flow_is_assigned";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_flow_is_assigned";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null flow, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_flow_is_assigned";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null flow, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  is_assigned = 0;
LABEL_3:

  return is_assigned;
}

uint64_t _nw_path_flow_is_assigned(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 100);

  return (v1 >> 1) & 1;
}

uint64_t nw_path_flow_is_defunct(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    is_defunct = _nw_path_flow_is_defunct(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_flow_is_defunct";
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
        v16 = "nw_path_flow_is_defunct";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null flow", buf, 0xCu);
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
          v16 = "nw_path_flow_is_defunct";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_path_flow_is_defunct";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null flow, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_path_flow_is_defunct";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null flow, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  is_defunct = 0;
LABEL_3:

  return is_defunct;
}

uint64_t ___ZL45nw_listener_find_channel_inbox_match_on_queueP22NWConcrete_nw_listenerPU26objcproto15OS_nw_path_flow8NSObjectPU27objcproto16OS_nw_parametersS1__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = v8;
    if (!v5)
    {
      goto LABEL_47;
    }

    if (v7)
    {
      if (v8)
      {
        v10 = v5[6];
        is_equal = v8 == v10;
        if (v9 != v10 && v10)
        {
          is_equal = _nw_parameters_is_equal(v9, v10);
        }

        if (is_equal)
        {
          v12 = _nw_path_flow_ids_are_equal(v7, v5[9]);

          if (v12)
          {
            v13 = 0;
            v14 = *(*(a1 + 48) + 8);
            v15 = *(v14 + 40);
            *(v14 + 40) = v5;
            v5 = v15;
LABEL_49:

            goto LABEL_50;
          }

LABEL_48:
          v13 = 1;
          goto LABEL_49;
        }

LABEL_47:

        goto LABEL_48;
      }

      v20 = __nwlog_obj();
      *buf = 136446210;
      v34 = "[nw_ip_channel_inbox matchesFlow:parameters:]";
      v17 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v31 = 0;
      if (!__nwlog_fault(v17, &type, &v31))
      {
        goto LABEL_45;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v34 = "[nw_ip_channel_inbox matchesFlow:parameters:]";
          _os_log_impl(&dword_181A37000, v18, v21, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v18, type);
        if (backtrace_string)
        {
          if (v27)
          {
            *buf = 136446466;
            v34 = "[nw_ip_channel_inbox matchesFlow:parameters:]";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v26, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v17)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

        if (v27)
        {
          *buf = 136446210;
          v34 = "[nw_ip_channel_inbox matchesFlow:parameters:]";
          _os_log_impl(&dword_181A37000, v18, v26, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v18 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v34 = "[nw_ip_channel_inbox matchesFlow:parameters:]";
          _os_log_impl(&dword_181A37000, v18, v29, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v16 = __nwlog_obj();
      *buf = 136446210;
      v34 = "[nw_ip_channel_inbox matchesFlow:parameters:]";
      v17 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v31 = 0;
      if (!__nwlog_fault(v17, &type, &v31))
      {
        goto LABEL_45;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v34 = "[nw_ip_channel_inbox matchesFlow:parameters:]";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null flow", buf, 0xCu);
        }
      }

      else if (v31 == 1)
      {
        v22 = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v23 = type;
        v24 = os_log_type_enabled(v18, type);
        if (v22)
        {
          if (v24)
          {
            *buf = 136446466;
            v34 = "[nw_ip_channel_inbox matchesFlow:parameters:]";
            v35 = 2082;
            v36 = v22;
            _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v22);
LABEL_45:
          if (!v17)
          {
            goto LABEL_47;
          }

LABEL_46:
          free(v17);
          goto LABEL_47;
        }

        if (v24)
        {
          *buf = 136446210;
          v34 = "[nw_ip_channel_inbox matchesFlow:parameters:]";
          _os_log_impl(&dword_181A37000, v18, v23, "%{public}s called with null flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v18 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v18, type))
        {
          *buf = 136446210;
          v34 = "[nw_ip_channel_inbox matchesFlow:parameters:]";
          _os_log_impl(&dword_181A37000, v18, v28, "%{public}s called with null flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_45;
  }

  v13 = 1;
LABEL_50:

  return v13;
}

uint64_t nw_array_create_by_removal(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (v4)
    {
      v5 = _nw_array_create_by_removal(v3, v4);
    }

    else
    {
      v5 = _nw_array_copy(v3);
    }
  }

  else
  {
    v5 = _nw_array_create();
  }

  v6 = v5;

  return v6;
}

uint64_t _nw_array_create_by_removal(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  sub_181C5B0D0(v4, v3, &v6);

  return v6;
}

uint64_t sub_181C5B0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = [objc_allocWithZone(swift_getObjectType()) init];
  v7 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();
  v8 = *(a2 + v7);
  v9 = v8[4];
  if (v8[2] >= v8[3] + v9)
  {
    v10 = v8[3] + v9;
  }

  else
  {
    v10 = v8[2];
  }

  v35 = v8;
  v36 = v8[4];
  v37 = v10;
  v11 = OBJC_IVAR____TtC7Network7NWArray_deque;

  v12 = swift_beginAccess();
  if (v9 != v10)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v12 = sub_181AC81FC(v12);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v8 = v35;
    v9 = v36;
LABEL_7:
    while (2)
    {
      v13 = &v8[v9++];
      v36 = v9;
      v14 = v13[5];
      v15 = *(a1 + v11);
      v16 = v15[4];
      v17 = v15[3] + v16;
      if (v15[2] < v17)
      {
        v17 = v15[2];
      }

      v32 = *(a1 + v11);
      v33 = v15[4];
      v34 = v17;
      v18 = v32;
      do
      {
        if (v16 == v34)
        {
          v12 = sub_181AC81FC(v12);
          if ((v12 & 1) == 0)
          {

            swift_unknownObjectRetain();

            swift_beginAccess();
            result = *&v6[v11];
            v21 = *(result + 24);
            v22 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              __break(1u);
            }

            else
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              v23 = *&v6[v11];
              if (v23[2] < v22 || (result & 1) == 0)
              {
                result = sub_181ACC600(result, v22);
                v23 = *&v6[v11];
              }

              v24 = v23[3];
              v25 = v23[4];
              v28 = __OFADD__(v25, v24);
              v26 = v25 + v24;
              if (!v28)
              {
                if ((v24 & 0x8000000000000000) == 0)
                {
                  v27 = v23[2];
                  v28 = __OFSUB__(v26, v27);
                  v29 = v26 - v27;
                  if (v29 < 0 != v28)
                  {
                    goto LABEL_27;
                  }

                  v26 = v29;
                  if (!v28)
                  {
                    goto LABEL_27;
                  }

LABEL_35:
                  __break(1u);
LABEL_36:
                  __break(1u);
                  return result;
                }

                if (v26 < 0)
                {
                  v30 = v23[2];
                  v28 = __OFADD__(v26, v30);
                  v26 += v30;
                  if (v28)
                  {
                    goto LABEL_36;
                  }
                }

LABEL_27:
                v23[v26 + 5] = v14;
                v28 = __OFADD__(v24, 1);
                v31 = v24 + 1;
                if (!v28)
                {
                  v23[3] = v31;
                  v12 = swift_endAccess();
                  goto LABEL_29;
                }

LABEL_34:
                __break(1u);
                goto LABEL_35;
              }
            }

            __break(1u);
            goto LABEL_34;
          }

          v18 = v32;
          v16 = v33;
        }

        v19 = v18 + 8 * v16++;
        v33 = v16;
      }

      while (*(v19 + 40) != v14);

LABEL_29:
      if (v9 != v37)
      {
        continue;
      }

      break;
    }
  }

  *a3 = v6;
  return result;
}

id _nw_path_get_advertise_descriptor(char *a1)
{
  if (a1)
  {
    v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = a1;
    swift_beginAccess();
    v3 = *(v1 + 22);
    swift_unknownObjectRetain();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id nw_agent_client_copy_endpoint(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[4];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_agent_client_copy_endpoint";
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
        v16 = "nw_agent_client_copy_endpoint";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null client", buf, 0xCu);
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
          v16 = "nw_agent_client_copy_endpoint";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null client, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_agent_client_copy_endpoint";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null client, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_agent_client_copy_endpoint";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null client, backtrace limit exceeded", buf, 0xCu);
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

uint64_t PathFlow.debugDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 200);
  v6 = sub_182AD30D8();

  MEMORY[0x1865D9CA0](0x61667265746E6920, 0xEC000000203A6563);

  if (v1)
  {
    v3 = *(v1 + 40);
    v4 = *(v1 + 48);

    MEMORY[0x1865D9CA0](v3, v4);
  }

  if (v2)
  {
    MEMORY[0x1865D9CA0](0x656C62616976202CLL, 0xE800000000000000);
  }

  if ((v2 & 2) != 0)
  {
    MEMORY[0x1865D9CA0](0x6E6769737361202CLL, 0xEA00000000006465);
  }

  return v6;
}

uint64_t _nw_path_flow_get_protocol_level(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 11);
  v23 = *(v1 + 10);
  v24[0] = v3;
  *(v24 + 10) = *(v1 + 186);
  v4 = *(v1 + 7);
  v19 = *(v1 + 6);
  v20 = v4;
  v5 = *(v1 + 9);
  v21 = *(v1 + 8);
  v22 = v5;
  v6 = *(v1 + 3);
  v15 = *(v1 + 2);
  v16 = v6;
  v7 = *(v1 + 5);
  v17 = *(v1 + 4);
  v18 = v7;
  v8 = *(v1 + 1);
  v13 = *v1;
  v14 = v8;
  sub_181AFE6F4(&v13, v11);

  v11[10] = v23;
  v12[0] = v24[0];
  *(v12 + 10) = *(v24 + 10);
  v11[6] = v19;
  v11[7] = v20;
  v11[8] = v21;
  v11[9] = v22;
  v11[2] = v15;
  v11[3] = v16;
  v11[4] = v17;
  v11[5] = v18;
  v11[0] = v13;
  v11[1] = v14;
  v9 = sub_181C5BBB8();
  sub_181AFE6A0(&v13);
  return v9;
}

id nw_agent_client_copy_path(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[6];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_agent_client_copy_path";
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
        v16 = "nw_agent_client_copy_path";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null client", buf, 0xCu);
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
          v16 = "nw_agent_client_copy_path";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null client, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_agent_client_copy_path";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null client, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_agent_client_copy_path";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null client, backtrace limit exceeded", buf, 0xCu);
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

uint64_t sub_181C5BBB8()
{
  if (*(v0 + 116))
  {
    return 0;
  }

  v2 = *(v0 + 120);
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
  LODWORD(v8) = *(v0 + 100);
  *(&v8 + 4) = v4;
  HIDWORD(v8) = v3;
  v9 = 0uLL;
  v5 = _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v8, &v9);
  result = 0;
  if (!v5)
  {
    if (v2)
    {
      *&v9 = v2;

      sub_181AC23B8(&v9, &v8);
      result = v8;
      if (v8)
      {
        v6 = DWORD2(v8);
        v7 = *(v8 + 80);
        result = sub_181AD1A40(v8);
        if ((v7 & 0x13) == 1)
        {
          return 0;
        }

        if ((v6 & 0x80000000) != 0)
        {
          __break(1u);
        }

        else if (v6 >= 5)
        {
          return 0;
        }

        else
        {
          return v6;
        }
      }
    }
  }

  return result;
}

void nw_protocol_stack_iterate_application_protocols(nw_protocol_stack_t stack, nw_protocol_stack_iterate_protocols_block_t iterate_block)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = stack;
  v4 = iterate_block;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_stack_iterate_application_protocols";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_stack_iterate_application_protocols";
        v10 = "%{public}s called with null stack";
LABEL_32:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_protocol_stack_iterate_application_protocols";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
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
        v19 = "nw_protocol_stack_iterate_application_protocols";
        v10 = "%{public}s called with null stack, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_stack_iterate_application_protocols";
        v10 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    _nw_protocol_stack_iterate_application_protocols(v3, v4);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_stack_iterate_application_protocols";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_protocol_stack_iterate_application_protocols";
      v10 = "%{public}s called with null iterate_block";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_protocol_stack_iterate_application_protocols";
      v10 = "%{public}s called with null iterate_block, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (v15)
    {
      *buf = 136446210;
      v19 = "nw_protocol_stack_iterate_application_protocols";
      v10 = "%{public}s called with null iterate_block, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_protocol_stack_iterate_application_protocols";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null iterate_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

uint64_t nw_parameters_copy_application_id(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_copy_application_id";
    v11 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    uu[0] = 0;
    if (__nwlog_fault(v11, type, uu))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_copy_application_id";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else if (uu[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v16 = type[0];
        v17 = os_log_type_enabled(v12, type[0]);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            *&buf[4] = "nw_parameters_copy_application_id";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v16, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_49;
        }

        if (v17)
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_copy_application_id";
          _os_log_impl(&dword_181A37000, v12, v16, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v21 = type[0];
        if (os_log_type_enabled(v12, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_copy_application_id";
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_49:
    if (v11)
    {
      free(v11);
    }

    v3 = 0;
    goto LABEL_24;
  }

  *type = 0u;
  v23 = 0u;
  _nw_parameters_get_effective_audit_token(v1, type);
  *buf = *type;
  *&buf[16] = v23;
  if (*type | *&type[8] | v23 | *(&v23 + 1))
  {
    *buf = *type;
    *&buf[16] = v23;
    v3 = nw_application_id_create_with_audit_token(buf);
    if (gLogDatapath == 1)
    {
      v4 = __nwlog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_parameters_copy_application_id";
        *&buf[12] = 2112;
        *&buf[14] = v3;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s getting application ID %@ from parameters audit token", buf, 0x16u);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  memset(uu, 0, sizeof(uu));
  _nw_parameters_get_e_proc_uuid(v2, uu);
  if (!uuid_is_null(uu))
  {
    if (v3)
    {
      v3 = v3;
      *(v3 + 1) = *uu;
    }

    else
    {
      v3 = nw_application_id_create_with_uuid(uu);
    }

    if (gLogDatapath == 1)
    {
      v20 = __nwlog_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        *&buf[4] = "nw_parameters_copy_application_id";
        *&buf[12] = 2112;
        *&buf[14] = v3;
        *&buf[22] = 1040;
        *&buf[24] = 16;
        *&buf[28] = 2096;
        *&buf[30] = uu;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s getting application ID %@ from parameters UUID: %{uuid_t}.16P", buf, 0x26u);
      }
    }
  }

  effective_bundle_id = _nw_parameters_get_effective_bundle_id(v2);
  if (!effective_bundle_id)
  {
    goto LABEL_21;
  }

  if (!v3)
  {
    *buf = 0;
    *&buf[8] = 0;
    v3 = [NWConcrete_nw_application_id initWithUUID:buf auditToken:0 pid:effective_bundle_id bundleID:0 isBundleIDExternal:? systemService:?];
LABEL_20:
    if (gLogDatapath == 1)
    {
      v14 = __nwlog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_parameters_copy_application_id";
        *&buf[12] = 2112;
        *&buf[14] = v3;
        *&buf[22] = 2080;
        *&buf[24] = effective_bundle_id;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s getting application ID %@ from parameters bundle ID: %s", buf, 0x20u);
      }
    }

LABEL_21:
    *buf = 0;
    *&buf[8] = 0;
    _nw_parameters_get_persona(v2, buf);
    if (v3)
    {
      if (!uuid_is_null(buf))
      {
        v8 = v3;
        *(v8 + 88) = *buf;
      }
    }

LABEL_24:

    return v3;
  }

  v3 = v3;
  v6 = *(v3 + 10);
  if (v6)
  {
    free(v6);
    *(v3 + 10) = 0;
  }

  v7 = strdup(effective_bundle_id);
  if (v7)
  {
LABEL_18:
    *(v3 + 10) = v7;
    v3[104] = 0;
    nw_application_id_validate_bundle_id(v3);

    goto LABEL_20;
  }

  v18 = __nwlog_obj();
  os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  *&buf[4] = "strict_strdup";
  v19 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v19);
  if (!result)
  {
    free(v19);
    v7 = 0;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void nw_application_id_get_persona(void *a1, _OWORD *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      *a2 = *(v3 + 88);
      goto LABEL_4;
    }

    v4 = v3;
    v9 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_application_id_get_persona";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v6, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_application_id_get_persona";
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null persona_id", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_application_id_get_persona";
          _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null persona_id, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v21 = "nw_application_id_get_persona";
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null persona_id, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v15)
      {
        *buf = 136446466;
        v21 = "nw_application_id_get_persona";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null persona_id, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0;
    v5 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_application_id_get_persona";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v6, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_application_id_get_persona";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null application_id", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18 != 1)
      {
        v7 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v21 = "nw_application_id_get_persona";
          _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null application_id, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v13)
        {
          *buf = 136446210;
          v21 = "nw_application_id_get_persona";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null application_id, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v13)
      {
        *buf = 136446466;
        v21 = "nw_application_id_get_persona";
        v22 = 2082;
        v23 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null application_id, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v6)
  {
    free(v6);
  }

  v3 = v4;
LABEL_4:
}

id nw_ip_channel_inbox_get_parameters(nw_protocol *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1->handle;
    v2 = v1;
    if (v1)
    {
      v3 = v1[6];
LABEL_4:

      goto LABEL_5;
    }

    v9 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_ip_channel_inbox_get_parameters";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v10, &type, &v21))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v24 = "nw_ip_channel_inbox_get_parameters";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null inbox", buf, 0xCu);
        }
      }

      else if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v17 = type;
        v18 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            v24 = "nw_ip_channel_inbox_get_parameters";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v17, "%{public}s called with null inbox, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_43;
        }

        if (v18)
        {
          *buf = 136446210;
          v24 = "nw_ip_channel_inbox_get_parameters";
          _os_log_impl(&dword_181A37000, v11, v17, "%{public}s called with null inbox, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v11 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v24 = "nw_ip_channel_inbox_get_parameters";
          _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null inbox, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_43:
    if (v10)
    {
      free(v10);
    }

    v3 = 0;
    goto LABEL_4;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_ip_channel_inbox_get_parameters";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v6, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v24 = "nw_ip_channel_inbox_get_parameters";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v21 == 1)
    {
      v13 = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v7, type);
      if (v13)
      {
        if (v15)
        {
          *buf = 136446466;
          v24 = "nw_ip_channel_inbox_get_parameters";
          v25 = 2082;
          v26 = v13;
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v13);
        goto LABEL_37;
      }

      if (v15)
      {
        *buf = 136446210;
        v24 = "nw_ip_channel_inbox_get_parameters";
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v24 = "nw_ip_channel_inbox_get_parameters";
        _os_log_impl(&dword_181A37000, v7, v19, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_37:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_5:

  return v3;
}

void __34__nw_ip_channel_inbox_description__block_invoke(uint64_t a1)
{
  v134 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    goto LABEL_69;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  v4 = _os_log_send_and_compose_impl();

  if (v4 == &v72)
  {
LABEL_68:
    v67 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"flow: %@, local: %s, scope: %u, protocol: %u", *(*(a1 + 32) + 72), &v72, *(*(a1 + 32) + 160), *(*(a1 + 32) + 166));
    v68 = *(a1 + 32);
    v69 = *(v68 + 24);
    *(v68 + 24) = v67;

    v2 = *(*(a1 + 32) + 24);
LABEL_69:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
    return;
  }

  if (v4)
  {
LABEL_4:
    v5 = v72;
    *v4 = v72;
    if (v5)
    {
      v6 = v73;
      v4[1] = v73;
      if (v6)
      {
        v7 = v74;
        v4[2] = v74;
        if (v7)
        {
          v8 = v75;
          v4[3] = v75;
          if (v8)
          {
            v9 = v76;
            v4[4] = v76;
            if (v9)
            {
              v10 = v77;
              v4[5] = v77;
              if (v10)
              {
                v11 = v78;
                v4[6] = v78;
                if (v11)
                {
                  v12 = v79;
                  v4[7] = v79;
                  if (v12)
                  {
                    v13 = v80;
                    v4[8] = v80;
                    if (v13)
                    {
                      v14 = v81;
                      v4[9] = v81;
                      if (v14)
                      {
                        v15 = v82;
                        v4[10] = v82;
                        if (v15)
                        {
                          v16 = v83;
                          v4[11] = v83;
                          if (v16)
                          {
                            v17 = v84;
                            v4[12] = v84;
                            if (v17)
                            {
                              v18 = v85;
                              v4[13] = v85;
                              if (v18)
                              {
                                v19 = v86;
                                v4[14] = v86;
                                if (v19)
                                {
                                  v20 = v87;
                                  v4[15] = v87;
                                  if (v20)
                                  {
                                    v21 = v88;
                                    v4[16] = v88;
                                    if (v21)
                                    {
                                      v22 = v89;
                                      v4[17] = v89;
                                      if (v22)
                                      {
                                        v23 = v90;
                                        v4[18] = v90;
                                        if (v23)
                                        {
                                          v24 = v91;
                                          v4[19] = v91;
                                          if (v24)
                                          {
                                            v25 = v92;
                                            v4[20] = v92;
                                            if (v25)
                                            {
                                              v26 = v93;
                                              v4[21] = v93;
                                              if (v26)
                                              {
                                                v27 = v94;
                                                v4[22] = v94;
                                                if (v27)
                                                {
                                                  v28 = v95;
                                                  v4[23] = v95;
                                                  if (v28)
                                                  {
                                                    v29 = v96;
                                                    v4[24] = v96;
                                                    if (v29)
                                                    {
                                                      v30 = v97;
                                                      v4[25] = v97;
                                                      if (v30)
                                                      {
                                                        v31 = v98;
                                                        v4[26] = v98;
                                                        if (v31)
                                                        {
                                                          v32 = v99;
                                                          v4[27] = v99;
                                                          if (v32)
                                                          {
                                                            v33 = v100;
                                                            v4[28] = v100;
                                                            if (v33)
                                                            {
                                                              v34 = v101;
                                                              v4[29] = v101;
                                                              if (v34)
                                                              {
                                                                v35 = v102;
                                                                v4[30] = v102;
                                                                if (v35)
                                                                {
                                                                  v36 = v103;
                                                                  v4[31] = v103;
                                                                  if (v36)
                                                                  {
                                                                    v37 = v104;
                                                                    v4[32] = v104;
                                                                    if (v37)
                                                                    {
                                                                      v38 = v105;
                                                                      v4[33] = v105;
                                                                      if (v38)
                                                                      {
                                                                        v39 = v106;
                                                                        v4[34] = v106;
                                                                        if (v39)
                                                                        {
                                                                          v40 = v107;
                                                                          v4[35] = v107;
                                                                          if (v40)
                                                                          {
                                                                            v41 = v108;
                                                                            v4[36] = v108;
                                                                            if (v41)
                                                                            {
                                                                              v42 = v109;
                                                                              v4[37] = v109;
                                                                              if (v42)
                                                                              {
                                                                                v43 = v110;
                                                                                v4[38] = v110;
                                                                                if (v43)
                                                                                {
                                                                                  v44 = v111;
                                                                                  v4[39] = v111;
                                                                                  if (v44)
                                                                                  {
                                                                                    v45 = v112;
                                                                                    v4[40] = v112;
                                                                                    if (v45)
                                                                                    {
                                                                                      v46 = v113;
                                                                                      v4[41] = v113;
                                                                                      if (v46)
                                                                                      {
                                                                                        v47 = v114;
                                                                                        v4[42] = v114;
                                                                                        if (v47)
                                                                                        {
                                                                                          v48 = v115;
                                                                                          v4[43] = v115;
                                                                                          if (v48)
                                                                                          {
                                                                                            v49 = v116;
                                                                                            v4[44] = v116;
                                                                                            if (v49)
                                                                                            {
                                                                                              v50 = v117;
                                                                                              v4[45] = v117;
                                                                                              if (v50)
                                                                                              {
                                                                                                v51 = v118;
                                                                                                v4[46] = v118;
                                                                                                if (v51)
                                                                                                {
                                                                                                  v52 = v119;
                                                                                                  v4[47] = v119;
                                                                                                  if (v52)
                                                                                                  {
                                                                                                    v53 = v120;
                                                                                                    v4[48] = v120;
                                                                                                    if (v53)
                                                                                                    {
                                                                                                      v54 = v121;
                                                                                                      v4[49] = v121;
                                                                                                      if (v54)
                                                                                                      {
                                                                                                        v55 = v122;
                                                                                                        v4[50] = v122;
                                                                                                        if (v55)
                                                                                                        {
                                                                                                          v56 = v123;
                                                                                                          v4[51] = v123;
                                                                                                          if (v56)
                                                                                                          {
                                                                                                            v57 = v124;
                                                                                                            v4[52] = v124;
                                                                                                            if (v57)
                                                                                                            {
                                                                                                              v58 = v125;
                                                                                                              v4[53] = v125;
                                                                                                              if (v58)
                                                                                                              {
                                                                                                                v59 = v126;
                                                                                                                v4[54] = v126;
                                                                                                                if (v59)
                                                                                                                {
                                                                                                                  v60 = v127;
                                                                                                                  v4[55] = v127;
                                                                                                                  if (v60)
                                                                                                                  {
                                                                                                                    v61 = v128;
                                                                                                                    v4[56] = v128;
                                                                                                                    if (v61)
                                                                                                                    {
                                                                                                                      v62 = v129;
                                                                                                                      v4[57] = v129;
                                                                                                                      if (v62)
                                                                                                                      {
                                                                                                                        v63 = v130;
                                                                                                                        v4[58] = v130;
                                                                                                                        if (v63)
                                                                                                                        {
                                                                                                                          v64 = v131;
                                                                                                                          v4[59] = v131;
                                                                                                                          if (v64)
                                                                                                                          {
                                                                                                                            v65 = v132;
                                                                                                                            v4[60] = v132;
                                                                                                                            if (v65)
                                                                                                                            {
                                                                                                                              v66 = v133;
                                                                                                                              v4[61] = v133;
                                                                                                                              if (v66)
                                                                                                                              {
                                                                                                                                v4[62] = 0;
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    free(v4);
    goto LABEL_68;
  }

  v70 = __nwlog_obj();
  os_log_type_enabled(v70, OS_LOG_TYPE_ERROR);
  v71 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v71))
  {
    free(v71);
    v4 = 0;
    goto LABEL_4;
  }

  __break(1u);
}
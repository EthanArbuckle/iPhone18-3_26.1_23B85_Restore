void __nw_endpoint_handler_create_with_existing_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = nw_protocol_options_copy(a2);
  nw_protocol_stack_append_application_protocol(v2, v3);
}

void nw_endpoint_handler_set_minimize_logging(void *a1)
{
  v1 = a1;
  v1[284] |= 0x20u;
}

void nw_endpoint_handler_reinitialize(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v5)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_handler_reinitialize";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v11, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v31 = "nw_endpoint_handler_reinitialize";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v10)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v10);
        goto LABEL_5;
      }

      if (v19)
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!v7)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_handler_reinitialize";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null parameters", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v28 != 1)
    {
      v11 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v26, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v20 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v21 = type;
    v22 = os_log_type_enabled(v11, type);
    if (!v20)
    {
      if (v22)
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v22)
    {
      *buf = 136446466;
      v31 = "nw_endpoint_handler_reinitialize";
      v32 = 2082;
      v33 = v20;
      _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (v5->parameters)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_endpoint_handler_reinitialize";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null (handler->parameters == nil)", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v28 != 1)
    {
      v11 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s called with null (handler->parameters == nil), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v20 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v23 = type;
    v24 = os_log_type_enabled(v11, type);
    if (!v20)
    {
      if (v24)
      {
        *buf = 136446210;
        v31 = "nw_endpoint_handler_reinitialize";
        _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null (handler->parameters == nil), no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v24)
    {
      *buf = 136446466;
      v31 = "nw_endpoint_handler_reinitialize";
      v32 = 2082;
      v33 = v20;
      _os_log_impl(&dword_181A37000, v11, v23, "%{public}s called with null (handler->parameters == nil), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v20);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  objc_storeStrong(&v5->parameters, a3);
  nw_endpoint_handler_inherit_from_parent(v5, v6, 0, v5->connection_uuid);
  objc_storeWeak(&v5->callback_context, v6);
  v5->state = 0;
LABEL_5:
}

uint64_t __nw_endpoint_handler_fillout_data_transfer_snapshot_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = nw_endpoint_handler_fillout_data_transfer_snapshot(a2, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v3 ^ 1u;
}

uint64_t __nw_endpoint_handler_fillout_tcp_info_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = nw_endpoint_handler_fillout_tcp_info(a2, *(a1 + 40));
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v3 ^ 1u;
}

uint64_t nw_endpoint_handler_fillout_tcp_connection_info(void *a1, _OWORD *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    *type = 0;
    v48 = type;
    v49 = 0x2020000000;
    v50 = 0;
    os_unfair_lock_lock(v3 + 28);
    v5 = *&v4[66]._os_unfair_lock_opaque;
    if (v4[29]._os_unfair_lock_opaque != 2)
    {
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __nw_endpoint_handler_fillout_tcp_connection_info_block_invoke;
      v46[3] = &unk_1E6A30E60;
      v46[4] = type;
      v46[5] = a2;
      [v5 applyWithHandler:v4 toChildren:v46];
      goto LABEL_9;
    }

    v6 = v5;
    v7 = v6;
    if (v6)
    {
      os_unfair_lock_lock(v6 + 220);
      v8 = *&v7[200]._os_unfair_lock_opaque;
      if (v8)
      {
        v9 = *v8;
        v10 = v8[2];
        a2[1] = v8[1];
        a2[2] = v10;
        *a2 = v9;
        v11 = v8[3];
        v12 = v8[4];
        v13 = v8[6];
        a2[5] = v8[5];
        a2[6] = v13;
        a2[3] = v11;
        a2[4] = v12;
        fd = 1;
      }

      else
      {
        v17 = *&v7[102]._os_unfair_lock_opaque;
        if (v17 && (v18 = *(v17 + 24)) != 0 && (v19 = *(v18 + 224)) != 0)
        {
          *v51 = 0;
          v20 = v19();
          if (v20)
          {
            fd = *v51 == 112;
            if (*v51 == 112)
            {
              v21 = *v20;
              v22 = v20[2];
              a2[1] = v20[1];
              a2[2] = v22;
              *a2 = v21;
              v23 = v20[3];
              v24 = v20[4];
              v25 = v20[6];
              a2[5] = v20[5];
              a2[6] = v25;
              a2[3] = v23;
              a2[4] = v24;
            }

            free(v20);
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v29 = gLogObj;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_flow_fillout_tcp_connection_info";
              _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s copy_info() returned NULL", buf, 0xCu);
            }

            fd = 0;
          }
        }

        else
        {
          v26 = *&v7[222]._os_unfair_lock_opaque;
          if ((v7[8]._os_unfair_lock_opaque & 2) == 0)
          {
            v27 = *&v7[234]._os_unfair_lock_opaque;
            if (v27)
            {
              v28 = nw_endpoint_handler_copy_connected_socket_wrapper(v27);

              v26 = v28;
            }
          }

          if (v26)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __nw_endpoint_flow_fillout_tcp_connection_info_block_invoke;
            v54 = &__block_descriptor_40_e8_B12__0i8l;
            v55 = a2;
            fd = nw_fd_wrapper_get_fd(v26, buf);
          }

          else
          {
            fd = 0;
          }
        }
      }

      os_unfair_lock_unlock(v7 + 220);
LABEL_7:

      *(v48 + 24) = fd;
LABEL_9:
      os_unfair_lock_unlock(v4 + 28);
      v15 = *(v48 + 24);
      _Block_object_dispose(type, 8);
      goto LABEL_10;
    }

    v34 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_fillout_tcp_connection_info";
    v35 = _os_log_send_and_compose_impl();

    v51[0] = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (__nwlog_fault(v35, v51, &v52))
    {
      if (v51[0] == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = v51[0];
        if (os_log_type_enabled(v36, v51[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_fillout_tcp_connection_info";
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else if (v52 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v43 = v51[0];
        v44 = os_log_type_enabled(v36, v51[0]);
        if (backtrace_string)
        {
          if (v44)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_flow_fillout_tcp_connection_info";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v36, v43, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_63;
        }

        if (v44)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_fillout_tcp_connection_info";
          _os_log_impl(&dword_181A37000, v36, v43, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v36 = __nwlog_obj();
        v45 = v51[0];
        if (os_log_type_enabled(v36, v51[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_fillout_tcp_connection_info";
          _os_log_impl(&dword_181A37000, v36, v45, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_63:
    if (v35)
    {
      free(v35);
    }

    fd = 0;
    goto LABEL_7;
  }

  v30 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_endpoint_handler_fillout_tcp_connection_info";
  v31 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v51[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v31, type, v51))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type[0];
      if (os_log_type_enabled(v32, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_fillout_tcp_connection_info";
        _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v51[0] == OS_LOG_TYPE_INFO)
    {
      v38 = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v39 = type[0];
      v40 = os_log_type_enabled(v32, type[0]);
      if (v38)
      {
        if (v40)
        {
          *buf = 136446466;
          *&buf[4] = "nw_endpoint_handler_fillout_tcp_connection_info";
          *&buf[12] = 2082;
          *&buf[14] = v38;
          _os_log_impl(&dword_181A37000, v32, v39, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v38);
        goto LABEL_57;
      }

      if (v40)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_fillout_tcp_connection_info";
        _os_log_impl(&dword_181A37000, v32, v39, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v32 = __nwlog_obj();
      v41 = type[0];
      if (os_log_type_enabled(v32, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_fillout_tcp_connection_info";
        _os_log_impl(&dword_181A37000, v32, v41, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_57:
  if (v31)
  {
    free(v31);
  }

  v15 = 0;
LABEL_10:

  return v15 & 1;
}

void sub_182589E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_endpoint_handler_fillout_tcp_connection_info_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = nw_endpoint_handler_fillout_tcp_connection_info(a2, *(a1 + 40));
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v3 ^ 1u;
}

BOOL nw_endpoint_handler_fillout_route_stats(void *a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_endpoint_handler_fillout_route_stats";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null handler", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v23 != 1)
    {
      v11 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v11, v20, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v17)
    {
      *buf = 136446466;
      v26 = "nw_endpoint_handler_fillout_route_stats";
      v27 = 2082;
      v28 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_endpoint_handler_fillout_route_stats";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v10, &type, &v23))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null stats", buf, 0xCu);
      }

LABEL_37:

LABEL_38:
      if (v10)
      {
        free(v10);
      }

      goto LABEL_40;
    }

    if (v23 != 1)
    {
      v11 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s called with null stats, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_fillout_route_stats";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null stats, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v19)
    {
      *buf = 136446466;
      v26 = "nw_endpoint_handler_fillout_route_stats";
      v27 = 2082;
      v28 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null stats, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:

    free(backtrace_string);
    goto LABEL_38;
  }

  nw_endpoint_handler_initialize_association(v3);
  v5 = *(v4 + 7);
  if (!v5 || (v6 = nw_association_copy_current_path(v5, *(v4 + 4)), (v7 = v6) == 0))
  {
LABEL_40:
    v8 = 0;
    goto LABEL_41;
  }

  v8 = nw_path_fillout_route_stats(v6, a2, 0);

LABEL_41:
  return v8;
}

BOOL nw_endpoint_handler_triggered_agents_updated(NWConcrete_nw_endpoint_handler *a1)
{
  v163 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  p_triggered_agent_uuids = &v1->triggered_agent_uuids;
  if (v1->triggered_agent_uuids)
  {
    if (v1->inactive_agent_path)
    {
      v4 = nw_path_copy_inactive_agent_uuids(v1->current_path, 0);
      log = v4;
      if (v4 && xpc_array_get_count(v4))
      {
        v5 = xpc_array_create(0, 0);
        if (v5)
        {
          v6 = v2->inactive_agent_path;
          current_path = v2->current_path;
          v8 = current_path;
          v9 = v2->triggered_agent_uuids;
          applier[0] = MEMORY[0x1E69E9820];
          applier[1] = 3221225472;
          applier[2] = ___ZL44nw_endpoint_handler_triggered_agents_updatedP30NWConcrete_nw_endpoint_handler_block_invoke;
          applier[3] = &unk_1E6A31300;
          v138 = v8;
          v142 = v138;
          v143 = v6;
          v10 = v5;
          v144 = v10;
          v139 = v9;
          v136 = v10;
          v137 = v143;
          xpc_array_apply(v9, applier);
          count = xpc_array_get_count(v10);
          v12 = count == 0;
          if (count)
          {
            objc_storeStrong(p_triggered_agent_uuids, v5);
            objc_storeStrong(&v2->inactive_agent_path, current_path);
            v13 = v2;
            v14 = (*(v13 + 284) & 0x20) == 0;

            if (!v14)
            {
              if (nw_endpoint_handler_get_logging_disabled(v13))
              {
                goto LABEL_123;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v119 = gconnectionLogObj;
              if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
              {
                id_string = nw_endpoint_handler_get_id_string(v13);
                v135 = nw_endpoint_handler_dry_run_string(v13);
                v121 = nw_endpoint_handler_copy_endpoint(v13);
                logging_description = nw_endpoint_get_logging_description(v121);
                v123 = nw_endpoint_handler_state_string(v13);
                v124 = nw_endpoint_handler_mode_string(v13);
                v125 = nw_endpoint_handler_copy_current_path(v13);
                *buf = 136448002;
                v148 = "nw_endpoint_handler_triggered_agents_updated";
                v149 = 2082;
                id_str = id_string;
                v151 = 2082;
                v152 = v135;
                v153 = 2082;
                v154 = logging_description;
                v155 = 2082;
                v156 = v123;
                v157 = 2082;
                v158 = v124;
                v159 = 2114;
                v160 = v125;
                v161 = 2048;
                v162 = count;
                v17 = v119;
                _os_log_impl(&dword_181A37000, v119, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] %zu triggered agents not yet updated", buf, 0x52u);
              }

              else
              {
                v17 = v119;
              }

              goto LABEL_122;
            }

            v15 = v13;
            v16 = (*(v13 + 284) & 0x40) == 0;

            if (v16)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v17 = gconnectionLogObj;
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                goto LABEL_122;
              }

              v18 = v15;

              v19 = v18;
              v20 = (*(v13 + 284) & 1) == 0;

              if (v20)
              {
                v21 = "";
              }

              else
              {
                v21 = "dry-run ";
              }

              v22 = nw_endpoint_handler_copy_endpoint(v19);
              v23 = v22;
              if (v22)
              {
                v24 = _nw_endpoint_get_logging_description(v22);
              }

              else
              {
                v24 = "<NULL>";
              }

              v97 = v19;
              v98 = v97;
              v99 = v97[30];
              if (v99 > 5)
              {
                v100 = "unknown-state";
              }

              else
              {
                v100 = off_1E6A31048[v99];
              }

              v134 = v100;

              v101 = v98;
              v102 = v101;
              v103 = v101[29];
              if (v103 > 2)
              {
                switch(v103)
                {
                  case 3:
                    v104 = "proxy";
                    break;
                  case 4:
                    v104 = "fallback";
                    break;
                  case 5:
                    v104 = "transform";
                    break;
                  default:
LABEL_117:
                    v104 = "unknown-mode";
                    break;
                }
              }

              else
              {
                if (v103)
                {
                  if (v103 == 1)
                  {
                    v104 = "resolver";
                    goto LABEL_120;
                  }

                  if (v103 == 2)
                  {
                    v133 = nw_endpoint_flow_mode_string(*(v101 + 33));
LABEL_121:

                    v105 = v18;
                    v106 = v24;
                    v107 = v21;
                    v108 = v17;
                    v109 = v102;
                    os_unfair_lock_lock(v109 + 28);
                    v110 = v2->current_path;
                    os_unfair_lock_unlock(v109 + 28);

                    v17 = v108;
                    *buf = 136448002;
                    v148 = "nw_endpoint_handler_triggered_agents_updated";
                    v149 = 2082;
                    id_str = v105->id_str;
                    v151 = 2082;
                    v152 = v107;
                    v153 = 2082;
                    v154 = v106;
                    v155 = 2082;
                    v156 = v134;
                    v157 = 2082;
                    v158 = v133;
                    v159 = 2114;
                    v160 = v110;
                    v161 = 2048;
                    v162 = count;
                    _os_log_impl(&dword_181A37000, v108, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] %zu triggered agents not yet updated", buf, 0x52u);

LABEL_122:
                    goto LABEL_123;
                  }

                  goto LABEL_117;
                }

                v104 = "path";
              }

LABEL_120:
              v133 = v104;
              goto LABEL_121;
            }
          }

          else
          {
            *(v2 + 284) &= ~2u;
            inactive_agent_uuids = v2->inactive_agent_uuids;
            v2->inactive_agent_uuids = 0;
            v75 = v2;

            inactive_agent_path = v2->inactive_agent_path;
            v2->inactive_agent_path = 0;

            triggered_agent_uuids = v2->triggered_agent_uuids;
            v2->triggered_agent_uuids = 0;

            v78 = v75;
            LOBYTE(inactive_agent_uuids) = (*(v2 + 284) & 0x20) == 0;

            if ((inactive_agent_uuids & 1) == 0)
            {
              if (nw_endpoint_handler_get_logging_disabled(v78))
              {
                goto LABEL_123;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v17 = gconnectionLogObj;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v126 = nw_endpoint_handler_get_id_string(v78);
                v127 = nw_endpoint_handler_dry_run_string(v78);
                v128 = nw_endpoint_handler_copy_endpoint(v78);
                v129 = nw_endpoint_get_logging_description(v128);
                v130 = nw_endpoint_handler_state_string(v78);
                v131 = nw_endpoint_handler_mode_string(v78);
                v132 = nw_endpoint_handler_copy_current_path(v78);
                *buf = 136447746;
                v148 = "nw_endpoint_handler_triggered_agents_updated";
                v149 = 2082;
                id_str = v126;
                v151 = 2082;
                v152 = v127;
                v153 = 2082;
                v154 = v129;
                v155 = 2082;
                v156 = v130;
                v157 = 2082;
                v158 = v131;
                v159 = 2114;
                v160 = v132;
                _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all triggered agents updated", buf, 0x48u);
              }

              goto LABEL_122;
            }

            v79 = v78;
            v80 = (*(v2 + 284) & 0x40) == 0;

            if (v80)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v17 = gconnectionLogObj;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                v81 = nw_endpoint_handler_get_id_string(v79);
                v82 = nw_endpoint_handler_dry_run_string(v79);
                v83 = nw_endpoint_handler_copy_endpoint(v79);
                v84 = v17;
                v85 = nw_endpoint_get_logging_description(v83);
                v86 = nw_endpoint_handler_state_string(v79);
                v87 = nw_endpoint_handler_mode_string(v79);
                v88 = nw_endpoint_handler_copy_current_path(v79);
                *buf = 136447746;
                v148 = "nw_endpoint_handler_triggered_agents_updated";
                v149 = 2082;
                id_str = v81;
                v151 = 2082;
                v152 = v82;
                v153 = 2082;
                v154 = v85;
                v155 = 2082;
                v156 = v86;
                v157 = 2082;
                v158 = v87;
                v159 = 2114;
                v160 = v88;
                v17 = v84;
                _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] all triggered agents updated", buf, 0x48u);
              }

              goto LABEL_122;
            }
          }

LABEL_123:

          v32 = v136;
          goto LABEL_124;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v52 = gLogObj;
        *buf = 136446210;
        v148 = "nw_endpoint_handler_triggered_agents_updated";
        v53 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v145 = 0;
        if (__nwlog_fault(v53, &type, &v145))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v54 = gLogObj;
            v55 = type;
            if (os_log_type_enabled(v54, type))
            {
              *buf = 136446210;
              v148 = "nw_endpoint_handler_triggered_agents_updated";
              _os_log_impl(&dword_181A37000, v54, v55, "%{public}s xpc_array_create failed", buf, 0xCu);
            }
          }

          else if (v145 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v54 = __nwlog_obj();
            v90 = type;
            v91 = os_log_type_enabled(v54, type);
            if (backtrace_string)
            {
              if (v91)
              {
                *buf = 136446466;
                v148 = "nw_endpoint_handler_triggered_agents_updated";
                v149 = 2082;
                id_str = backtrace_string;
                _os_log_impl(&dword_181A37000, v54, v90, "%{public}s xpc_array_create failed, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_112;
            }

            if (v91)
            {
              *buf = 136446210;
              v148 = "nw_endpoint_handler_triggered_agents_updated";
              _os_log_impl(&dword_181A37000, v54, v90, "%{public}s xpc_array_create failed, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v54 = __nwlog_obj();
            v96 = type;
            if (os_log_type_enabled(v54, type))
            {
              *buf = 136446210;
              v148 = "nw_endpoint_handler_triggered_agents_updated";
              _os_log_impl(&dword_181A37000, v54, v96, "%{public}s xpc_array_create failed, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_112:
        if (v53)
        {
          free(v53);
        }

        v32 = 0;
        v12 = 0;
        goto LABEL_124;
      }

      *(v2 + 284) &= ~2u;
      v25 = v2->inactive_agent_uuids;
      v2->inactive_agent_uuids = 0;
      v26 = v2;

      v27 = v2->inactive_agent_path;
      v2->inactive_agent_path = 0;

      v28 = v2->triggered_agent_uuids;
      v2->triggered_agent_uuids = 0;

      v29 = v26;
      LOBYTE(v26) = *(v2 + 284);

      if ((v26 & 0x20) != 0)
      {
        if ((nw_endpoint_handler_get_logging_disabled(v29) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v32 = gconnectionLogObj;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v112 = nw_endpoint_handler_get_id_string(v29);
            v113 = nw_endpoint_handler_dry_run_string(v29);
            v114 = nw_endpoint_handler_copy_endpoint(v29);
            v115 = nw_endpoint_get_logging_description(v114);
            v116 = nw_endpoint_handler_state_string(v29);
            v117 = nw_endpoint_handler_mode_string(v29);
            v118 = nw_endpoint_handler_copy_current_path(v29);
            *buf = 136447746;
            v148 = "nw_endpoint_handler_triggered_agents_updated";
            v149 = 2082;
            id_str = v112;
            v151 = 2082;
            v152 = v113;
            v153 = 2082;
            v154 = v115;
            v155 = 2082;
            v156 = v116;
            v157 = 2082;
            v158 = v117;
            v159 = 2114;
            v160 = v118;
            _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no inactive agents remaining", buf, 0x48u);
          }

          goto LABEL_85;
        }
      }

      else
      {
        v30 = v29;
        v31 = *(v2 + 284);

        if ((v31 & 0x40) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v32 = gconnectionLogObj;
          v12 = 1;
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            goto LABEL_124;
          }

          v33 = v30;

          v34 = v33;
          v35 = *(v2 + 284);

          if (v35)
          {
            v36 = "dry-run ";
          }

          else
          {
            v36 = "";
          }

          v37 = nw_endpoint_handler_copy_endpoint(v34);
          v38 = v37;
          if (v37)
          {
            v39 = _nw_endpoint_get_logging_description(v37);
          }

          else
          {
            v39 = "<NULL>";
          }

          v56 = v33 + 184;

          v57 = v34;
          v58 = v57;
          v59 = v57[30];
          if (v59 > 5)
          {
            v60 = "unknown-state";
          }

          else
          {
            v60 = off_1E6A31048[v59];
          }

          v61 = v58;
          v62 = v61;
          v63 = v61[29];
          if (v63 > 2)
          {
            switch(v63)
            {
              case 3:
                v64 = "proxy";
                goto LABEL_84;
              case 4:
                v64 = "fallback";
                goto LABEL_84;
              case 5:
                v64 = "transform";
                goto LABEL_84;
            }
          }

          else
          {
            switch(v63)
            {
              case 0:
                v64 = "path";
                goto LABEL_84;
              case 1:
                v64 = "resolver";
                goto LABEL_84;
              case 2:
                v64 = nw_endpoint_flow_mode_string(*(v61 + 33));
LABEL_84:

                v92 = v62;
                os_unfair_lock_lock(v92 + 28);
                v93 = v2->current_path;
                os_unfair_lock_unlock(v92 + 28);

                *buf = 136447746;
                v148 = "nw_endpoint_handler_triggered_agents_updated";
                v149 = 2082;
                id_str = v56;
                v151 = 2082;
                v152 = v36;
                v153 = 2082;
                v154 = v39;
                v155 = 2082;
                v156 = v60;
                v157 = 2082;
                v158 = v64;
                v159 = 2114;
                v160 = v93;
                _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no inactive agents remaining", buf, 0x48u);

LABEL_85:
                v12 = 1;
LABEL_124:

                goto LABEL_125;
            }
          }

          v64 = "unknown-mode";
          goto LABEL_84;
        }
      }

LABEL_92:
      v12 = 1;
LABEL_125:

      goto LABEL_126;
    }

    *(v1 + 284) &= ~2u;
    v40 = v1->inactive_agent_uuids;
    v1->inactive_agent_uuids = 0;

    v41 = v2->inactive_agent_path;
    v2->inactive_agent_path = 0;

    v42 = v2->triggered_agent_uuids;
    v2->triggered_agent_uuids = 0;

    v43 = v2;
    v44 = *(v2 + 284);

    if ((v44 & 0x40) != 0)
    {
      v12 = 1;
      goto LABEL_126;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    log = gconnectionLogObj;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_92;
    }

    v45 = v43;

    v46 = v45;
    v47 = *(v2 + 284);

    if (v47)
    {
      v48 = "dry-run ";
    }

    else
    {
      v48 = "";
    }

    v49 = nw_endpoint_handler_copy_endpoint(v46);
    v50 = v49;
    if (v49)
    {
      v51 = _nw_endpoint_get_logging_description(v49);
    }

    else
    {
      v51 = "<NULL>";
    }

    v65 = v45 + 184;

    v66 = v46;
    v67 = v66;
    v68 = v66[30];
    if (v68 > 5)
    {
      v69 = "unknown-state";
    }

    else
    {
      v69 = off_1E6A31048[v68];
    }

    v70 = v67;
    v71 = v70;
    v72 = v70[29];
    if (v72 > 2)
    {
      switch(v72)
      {
        case 3:
          v73 = "proxy";
          goto LABEL_91;
        case 4:
          v73 = "fallback";
          goto LABEL_91;
        case 5:
          v73 = "transform";
          goto LABEL_91;
      }
    }

    else
    {
      switch(v72)
      {
        case 0:
          v73 = "path";
          goto LABEL_91;
        case 1:
          v73 = "resolver";
          goto LABEL_91;
        case 2:
          v73 = nw_endpoint_flow_mode_string(*(v70 + 33));
LABEL_91:

          v94 = v71;
          os_unfair_lock_lock(v94 + 28);
          v95 = *(v94 + 8);
          os_unfair_lock_unlock(v94 + 28);

          *buf = 136447746;
          v148 = "nw_endpoint_handler_triggered_agents_updated";
          v149 = 2082;
          id_str = v65;
          v151 = 2082;
          v152 = v48;
          v153 = 2082;
          v154 = v51;
          v155 = 2082;
          v156 = v69;
          v157 = 2082;
          v158 = v73;
          v159 = 2114;
          v160 = v95;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no inactive agent information", buf, 0x48u);

          goto LABEL_92;
      }
    }

    v73 = "unknown-mode";
    goto LABEL_91;
  }

  v12 = 0;
LABEL_126:

  return v12;
}

uint64_t ___ZL31nw_endpoint_handler_path_changeP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = nw_path_interface_prohibited_by_parameters(*(*(a1 + 32) + 64), v3);
  if (!v4)
  {
    minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 32));
    logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 32));
    if (minimize_logging)
    {
      if (logging_disabled)
      {
        goto LABEL_14;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v8 = gconnectionLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v21 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        v22 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        logging_description = nw_endpoint_get_logging_description(v22);
        v24 = nw_endpoint_handler_state_string(*(a1 + 32));
        v25 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v26 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136448002;
        v30 = "nw_endpoint_handler_path_change_block_invoke";
        v31 = 2082;
        v32 = id_string;
        v27 = v26;
        v33 = 2082;
        v34 = v21;
        v35 = 2082;
        v36 = logging_description;
        v37 = 2082;
        v38 = v24;
        v39 = 2082;
        v40 = v25;
        v41 = 2114;
        v42 = v26;
        v43 = 2114;
        v44 = v3;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] overriding unsatisfied, eligible interface: %{public}@", buf, 0x52u);
      }
    }

    else
    {
      if (logging_disabled)
      {
LABEL_14:
        v5 = 48;
        goto LABEL_15;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v8 = gconnectionLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = nw_endpoint_handler_get_id_string(*(a1 + 32));
        v10 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
        log = v8;
        v11 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
        v12 = v11;
        if (v11)
        {
          v13 = _nw_endpoint_get_logging_description(v11);
          v14 = v10;
          v15 = v9;
        }

        else
        {
          v14 = v10;
          v15 = v9;
          v13 = "<NULL>";
        }

        v16 = nw_endpoint_handler_state_string(*(a1 + 32));
        v17 = nw_endpoint_handler_mode_string(*(a1 + 32));
        v18 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
        *buf = 136448002;
        v30 = "nw_endpoint_handler_path_change_block_invoke";
        v31 = 2082;
        v32 = v15;
        v33 = 2082;
        v34 = v14;
        v35 = 2082;
        v36 = v13;
        v37 = 2082;
        v38 = v16;
        v39 = 2082;
        v40 = v17;
        v41 = 2114;
        v42 = v18;
        v43 = 2114;
        v44 = v3;
        v8 = log;
        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] overriding unsatisfied, eligible interface: %{public}@", buf, 0x52u);
      }
    }

    goto LABEL_14;
  }

  if (nw_interface_get_subtype(v3) == 1002)
  {
    v5 = 40;
LABEL_15:
    *(*(*(a1 + v5) + 8) + 24) = 1;
  }

  return v4;
}

void ___ZL31nw_endpoint_handler_path_changeP30NWConcrete_nw_endpoint_handler_block_invoke_143(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  minimize_logging = nw_endpoint_handler_get_minimize_logging(*(a1 + 32));
  logging_disabled = nw_endpoint_handler_get_logging_disabled(*(a1 + 32));
  if (minimize_logging)
  {
    if (logging_disabled)
    {
      goto LABEL_11;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      id_string = nw_endpoint_handler_get_id_string(*(a1 + 32));
      v14 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
      v15 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
      logging_description = nw_endpoint_get_logging_description(v15);
      v17 = nw_endpoint_handler_state_string(*(a1 + 32));
      v18 = nw_endpoint_handler_mode_string(*(a1 + 32));
      v19 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
      v21 = 136447746;
      v22 = "nw_endpoint_handler_path_change_block_invoke";
      v23 = 2082;
      v24 = id_string;
      v20 = v19;
      v25 = 2082;
      v26 = v14;
      v27 = 2082;
      v28 = logging_description;
      v29 = 2082;
      v30 = v17;
      v31 = 2082;
      v32 = v18;
      v33 = 2114;
      v34 = v19;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback timer fired, resetting", &v21, 0x48u);
    }

    goto LABEL_10;
  }

  if ((logging_disabled & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = nw_endpoint_handler_get_id_string(*(a1 + 32));
      v6 = nw_endpoint_handler_dry_run_string(*(a1 + 32));
      v7 = nw_endpoint_handler_copy_endpoint(*(a1 + 32));
      v8 = v7;
      if (v7)
      {
        v9 = _nw_endpoint_get_logging_description(v7);
      }

      else
      {
        v9 = "<NULL>";
      }

      v10 = nw_endpoint_handler_state_string(*(a1 + 32));
      v11 = nw_endpoint_handler_mode_string(*(a1 + 32));
      v12 = nw_endpoint_handler_copy_current_path(*(a1 + 32));
      v21 = 136447746;
      v22 = "nw_endpoint_handler_path_change_block_invoke";
      v23 = 2082;
      v24 = v5;
      v25 = 2082;
      v26 = v6;
      v27 = 2082;
      v28 = v9;
      v29 = 2082;
      v30 = v10;
      v31 = 2082;
      v32 = v11;
      v33 = 2114;
      v34 = v12;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] fallback timer fired, resetting", &v21, 0x48u);
    }

LABEL_10:
  }

LABEL_11:
  nw_endpoint_handler_reset_mode(*(a1 + 32), 1);
}

uint64_t ___ZL44nw_endpoint_handler_triggered_agents_updatedP30NWConcrete_nw_endpoint_handler_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && object_getClass(v4) == MEMORY[0x1E69E9F20])
  {
    *v13 = *xpc_uuid_get_bytes(v5);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___ZL44nw_endpoint_handler_triggered_agents_updatedP30NWConcrete_nw_endpoint_handler_block_invoke_2;
    v8[3] = &unk_1E6A30FC8;
    v6 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12 = v13;
    v10 = *(a1 + 48);
    v11 = v5;
    _nw_path_access_network_agent(v6, v13, v8);
  }

  return 1;
}

void ___ZL44nw_endpoint_handler_triggered_agents_updatedP30NWConcrete_nw_endpoint_handler_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 56);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL44nw_endpoint_handler_triggered_agents_updatedP30NWConcrete_nw_endpoint_handler_block_invoke_3;
  aBlock[3] = &unk_1E6A30FA0;
  v9 = a3;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  _nw_path_access_network_agent(v5, v4, aBlock);
}

void ___ZL44nw_endpoint_handler_triggered_agents_updatedP30NWConcrete_nw_endpoint_handler_block_invoke_3(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 48) == a3)
  {
    xpc_array_append_value(*(a1 + 32), *(a1 + 40));
  }
}

uint64_t nw_endpoint_handler_has_matching_handler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (nw_endpoint_is_equal(*(v3 + 3), v4[3], 31))
  {
    v5 = 1;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    if (objc_opt_respondsToSelector())
    {
      v6 = *(v3 + 33);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __nw_endpoint_handler_has_matching_handler_block_invoke;
      v8[3] = &unk_1E6A30EB0;
      v9 = v4;
      v10 = &v11;
      [v6 applyWithHandler:v3 toChildren:v8];
    }

    v5 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  return v5 & 1;
}

void sub_18258BFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __nw_endpoint_handler_has_matching_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  has_matching_handler = nw_endpoint_handler_has_matching_handler(a2, *(a1 + 32));
  if (has_matching_handler)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return has_matching_handler ^ 1u;
}

uint64_t __Block_byref_object_copy__33557(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __nw_endpoint_handler_copy_metadata_block_invoke(uint64_t a1)
{
  v2 = ne_session_copy_app_data_from_flow_divert_socket();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 1;
}

uint64_t nw_endpoint_handler_uses_sleep_proxy(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 28);
    if (v2[29]._os_unfair_lock_opaque != 2)
    {
      v5 = 0;
LABEL_12:
      os_unfair_lock_unlock(v2 + 28);
      goto LABEL_13;
    }

    v3 = *&v2[66]._os_unfair_lock_opaque;
    v4 = v3;
    if (v3)
    {
      os_unfair_lock_lock(v3 + 220);
      if ((v4[8]._os_unfair_lock_opaque & 2) != 0 || (v4[8]._os_unfair_lock_opaque & 0x100) != 0)
      {
        v5 = *&v4[230]._os_unfair_lock_opaque != 0;
      }

      else if (*&v4[234]._os_unfair_lock_opaque)
      {
        v5 = nw_endpoint_handler_uses_sleep_proxy();
      }

      else
      {
        v5 = 0;
      }

      os_unfair_lock_unlock(v4 + 220);
LABEL_11:

      goto LABEL_12;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_endpoint_flow_uses_sleep_proxy";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v12, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v26 = "nw_endpoint_flow_uses_sleep_proxy";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else if (v23 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v20 = type;
        v21 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v21)
          {
            *buf = 136446466;
            v26 = "nw_endpoint_flow_uses_sleep_proxy";
            v27 = 2082;
            v28 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_50;
        }

        if (v21)
        {
          *buf = 136446210;
          v26 = "nw_endpoint_flow_uses_sleep_proxy";
          _os_log_impl(&dword_181A37000, v13, v20, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v26 = "nw_endpoint_flow_uses_sleep_proxy";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_50:
    if (v12)
    {
      free(v12);
    }

    v5 = 0;
    goto LABEL_11;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_endpoint_handler_uses_sleep_proxy";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v8, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_uses_sleep_proxy";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      v15 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v9, type);
      if (v15)
      {
        if (v17)
        {
          *buf = 136446466;
          v26 = "nw_endpoint_handler_uses_sleep_proxy";
          v27 = 2082;
          v28 = v15;
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v15);
        goto LABEL_44;
      }

      if (v17)
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_uses_sleep_proxy";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_endpoint_handler_uses_sleep_proxy";
        _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_44:
  if (v8)
  {
    free(v8);
  }

  v5 = 0;
LABEL_13:

  return v5;
}

id nw_endpoint_handler_copy_parent(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[9];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_endpoint_handler_copy_parent";
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
        v16 = "nw_endpoint_handler_copy_parent";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null handler", buf, 0xCu);
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
          v16 = "nw_endpoint_handler_copy_parent";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_copy_parent";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_endpoint_handler_copy_parent";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
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

void *nw_endpoint_handler_copy_topmost_parent(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = *(v1 + 9);
  v4 = v1;
  if (v3)
  {
    v5 = v1;
    do
    {
      v4 = v3;

      v3 = v4[9];
      v5 = v4;
    }

    while (v3);
  }

  return v4;
}

uint64_t nw_endpoint_handler_get_flow_id(void *a1, _OWORD *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_endpoint_handler_get_flow_id";
    v27 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v27, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v47 = "nw_endpoint_handler_get_flow_id";
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v44 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v35 = type;
        v36 = os_log_type_enabled(v28, type);
        if (backtrace_string)
        {
          if (v36)
          {
            *buf = 136446466;
            v47 = "nw_endpoint_handler_get_flow_id";
            v48 = 2082;
            v49 = backtrace_string;
            _os_log_impl(&dword_181A37000, v28, v35, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_73;
        }

        if (v36)
        {
          *buf = 136446210;
          v47 = "nw_endpoint_handler_get_flow_id";
          _os_log_impl(&dword_181A37000, v28, v35, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v28 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v47 = "nw_endpoint_handler_get_flow_id";
          _os_log_impl(&dword_181A37000, v28, v37, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_73:
    if (v27)
    {
      free(v27);
    }

    goto LABEL_43;
  }

  if (*(v3 + 29) == 2)
  {
    v5 = v3[33];
    v6 = v5;
    if (v5)
    {
      if ((v5[8]._os_unfair_lock_opaque & 2) == 0 && (v5[8]._os_unfair_lock_opaque & 0x100) == 0)
      {
        os_unfair_lock_lock(v5 + 220);
        v7 = *&v6[234]._os_unfair_lock_opaque;
        if (v7)
        {
          flow_id = nw_endpoint_handler_get_flow_id(v7, a2);
        }

        else
        {
          flow_id = 0;
        }

        os_unfair_lock_unlock(v6 + 220);
        goto LABEL_81;
      }

      v14 = *&v5[208]._os_unfair_lock_opaque;
      if (v14)
      {
        v15 = v14;
        is_null = uuid_is_null(v15 + 32);
        flow_id = is_null == 0;
        if (!is_null)
        {
          *a2 = *(v15 + 2);
        }

        goto LABEL_81;
      }

LABEL_80:
      flow_id = 0;
LABEL_81:

      goto LABEL_82;
    }

    v30 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_endpoint_flow_get_flow_id";
    v31 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v31, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v47 = "nw_endpoint_flow_get_flow_id";
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else if (v44 == 1)
      {
        v38 = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v39 = type;
        v40 = os_log_type_enabled(v32, type);
        if (v38)
        {
          if (v40)
          {
            *buf = 136446466;
            v47 = "nw_endpoint_flow_get_flow_id";
            v48 = 2082;
            v49 = v38;
            _os_log_impl(&dword_181A37000, v32, v39, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v38);
          goto LABEL_78;
        }

        if (v40)
        {
          *buf = 136446210;
          v47 = "nw_endpoint_flow_get_flow_id";
          _os_log_impl(&dword_181A37000, v32, v39, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v47 = "nw_endpoint_flow_get_flow_id";
          _os_log_impl(&dword_181A37000, v32, v41, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_78:
    if (v31)
    {
      free(v31);
    }

    goto LABEL_80;
  }

  if ((*(v3 + 284) & 0x40) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v9 = gconnectionLogObj;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    if (*(v4 + 284))
    {
      v10 = "dry-run ";
    }

    else
    {
      v10 = "";
    }

    v11 = nw_endpoint_handler_copy_endpoint(v4);
    v12 = v11;
    if (v11)
    {
      logging_description = _nw_endpoint_get_logging_description(v11);
    }

    else
    {
      logging_description = "<NULL>";
    }

    v17 = *(v4 + 30);
    if (v17 > 5)
    {
      v18 = "unknown-state";
    }

    else
    {
      v18 = off_1E6A31048[v17];
    }

    v19 = v4;
    v20 = v19;
    v21 = *(v4 + 29);
    v43 = v18;
    if (v21 > 2)
    {
      switch(v21)
      {
        case 3:
          v22 = v10;
          v23 = "proxy";
          goto LABEL_41;
        case 4:
          v22 = v10;
          v23 = "fallback";
          goto LABEL_41;
        case 5:
          v22 = v10;
          v23 = "transform";
          goto LABEL_41;
      }
    }

    else
    {
      switch(v21)
      {
        case 0:
          v22 = v10;
          v23 = "path";
          goto LABEL_41;
        case 1:
          v22 = v10;
          v23 = "resolver";
          goto LABEL_41;
        case 2:
          v22 = v10;
          v23 = nw_endpoint_flow_mode_string(v19[33]);
LABEL_41:

          v24 = v20;
          os_unfair_lock_lock(v20 + 28);
          v25 = v24[8];
          os_unfair_lock_unlock(v20 + 28);

          *buf = 136447746;
          v47 = "nw_endpoint_handler_get_flow_id";
          v48 = 2082;
          v49 = (v4 + 23);
          v50 = 2082;
          v51 = v22;
          v52 = 2082;
          v53 = logging_description;
          v54 = 2082;
          v55 = v43;
          v56 = 2082;
          v57 = v23;
          v58 = 2114;
          v59 = v25;
          _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Endpoint handler is not flow", buf, 0x48u);

LABEL_42:
          goto LABEL_43;
      }
    }

    v22 = v10;
    v23 = "unknown-mode";
    goto LABEL_41;
  }

LABEL_43:
  flow_id = 0;
LABEL_82:

  return flow_id;
}

void nw_endpoint_handler_reset_expected_progress_target(void *a1, uint64_t a2, const unsigned __int8 *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = v5[29];
    if (v7 == 4)
    {
      nw_endpoint_fallback_reset_expected_progress_target(v5, a2);
    }

    else if (v7 == 2)
    {
      nw_endpoint_flow_reset_expected_progress_target(v5, a2, a3);
    }

    goto LABEL_6;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_endpoint_handler_reset_expected_progress_target";
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
        v19 = "nw_endpoint_handler_reset_expected_progress_target";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null handler", buf, 0xCu);
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
          v19 = "nw_endpoint_handler_reset_expected_progress_target";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_endpoint_handler_reset_expected_progress_target";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_endpoint_handler_reset_expected_progress_target";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v9)
  {
    free(v9);
  }

LABEL_6:
}

uint64_t __nw_endpoint_handler_apply_to_leaf_children_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    *(*(a1[5] + 8) + 24) = 1;
    *(*(a1[6] + 8) + 24) = nw_endpoint_handler_apply_to_leaf_children(v3, a1[4]);
  }

  v5 = *(*(a1[6] + 8) + 24);

  return v5;
}

void sub_18258D4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.receiver = v9;
  a9.super_class = NWConcrete_nw_pac_resolver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

NWConcrete_nw_pac_resolver *nw_pac_resolver_create_with_script(const void *a1, const void *a2, void *a3, char a4, int a5, int a6, int a7, unsigned __int8 *a8, void *a9)
{
  v76 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a9;
  v19 = v18;
  v69 = v17;
  if (a1)
  {
    if (a2)
    {
      if (v18)
      {
        if (v17)
        {
          if (a8)
          {
            v20 = objc_alloc_init(NWConcrete_nw_pac_resolver);
            if (v20)
            {
              *(v20 + 3) = CFRetain(a2);
              *(v20 + 5) = CFRetain(a1);
              v21 = _Block_copy(v19);
              v22 = *(v20 + 1);
              *(v20 + 1) = v21;

              objc_storeStrong(v20 + 2, a3);
              if (a5)
              {
                v23 = 2;
              }

              else
              {
                v23 = 0;
              }

              if (a6)
              {
                v24 = 4;
              }

              else
              {
                v24 = 0;
              }

              if (a7)
              {
                v25 = 8;
              }

              else
              {
                v25 = 0;
              }

              *(v20 + 159) = v23 | a4 | v24 | v25 | *(v20 + 159) & 0xF0;
              v26 = v20 + 84;
              v27 = 75;
              while (1)
              {
                v28 = *a8;
                *v26 = v28;
                if (!v28)
                {
                  break;
                }

                ++v26;
                ++a8;
                if (--v27 <= 1)
                {
                  *v26 = 0;
                  break;
                }
              }

              v29 = v20;
              goto LABEL_40;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v30 = gLogObj;
            *buf = 136446210;
            v73 = "nw_pac_resolver_create_with_script";
            v31 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v70 = 0;
            if (__nwlog_fault(v31, &type, &v70))
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v32 = gLogObj;
                v33 = type;
                if (os_log_type_enabled(v32, type))
                {
                  *buf = 136446210;
                  v73 = "nw_pac_resolver_create_with_script";
                  _os_log_impl(&dword_181A37000, v32, v33, "%{public}s nw_pac_resolver_obj_alloc failed", buf, 0xCu);
                }

LABEL_25:

                goto LABEL_38;
              }

              if (v70 != 1)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v32 = gLogObj;
                v38 = type;
                if (os_log_type_enabled(v32, type))
                {
                  *buf = 136446210;
                  v73 = "nw_pac_resolver_create_with_script";
                  _os_log_impl(&dword_181A37000, v32, v38, "%{public}s nw_pac_resolver_obj_alloc failed, backtrace limit exceeded", buf, 0xCu);
                }

                goto LABEL_25;
              }

              backtrace_string = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v35 = gLogObj;
              v36 = type;
              v37 = os_log_type_enabled(v35, type);
              if (backtrace_string)
              {
                if (v37)
                {
                  *buf = 136446466;
                  v73 = "nw_pac_resolver_create_with_script";
                  v74 = 2082;
                  v75 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v35, v36, "%{public}s nw_pac_resolver_obj_alloc failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(backtrace_string);
                if (!v31)
                {
                  goto LABEL_40;
                }

                goto LABEL_39;
              }

              if (v37)
              {
                *buf = 136446210;
                v73 = "nw_pac_resolver_create_with_script";
                _os_log_impl(&dword_181A37000, v35, v36, "%{public}s nw_pac_resolver_obj_alloc failed, no backtrace", buf, 0xCu);
              }
            }

LABEL_38:
            if (!v31)
            {
LABEL_40:

              goto LABEL_41;
            }

LABEL_39:
            free(v31);
            goto LABEL_40;
          }

          v50 = __nwlog_obj();
          *buf = 136446210;
          v73 = "nw_pac_resolver_create_with_script";
          v41 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v70 = 0;
          if (__nwlog_fault(v41, &type, &v70))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v42 = __nwlog_obj();
              v51 = type;
              if (os_log_type_enabled(v42, type))
              {
                *buf = 136446210;
                v73 = "nw_pac_resolver_create_with_script";
                _os_log_impl(&dword_181A37000, v42, v51, "%{public}s called with null logging_id_str", buf, 0xCu);
              }

LABEL_106:

              goto LABEL_122;
            }

            if (v70 != 1)
            {
              v42 = __nwlog_obj();
              v68 = type;
              if (os_log_type_enabled(v42, type))
              {
                *buf = 136446210;
                v73 = "nw_pac_resolver_create_with_script";
                _os_log_impl(&dword_181A37000, v42, v68, "%{public}s called with null logging_id_str, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_106;
            }

            v52 = __nw_create_backtrace_string();
            v53 = __nwlog_obj();
            v62 = type;
            v63 = os_log_type_enabled(v53, type);
            if (v52)
            {
              if (v63)
              {
                *buf = 136446466;
                v73 = "nw_pac_resolver_create_with_script";
                v74 = 2082;
                v75 = v52;
                _os_log_impl(&dword_181A37000, v53, v62, "%{public}s called with null logging_id_str, dumping backtrace:%{public}s", buf, 0x16u);
              }

LABEL_91:

              free(v52);
              goto LABEL_122;
            }

            if (v63)
            {
              *buf = 136446210;
              v73 = "nw_pac_resolver_create_with_script";
              _os_log_impl(&dword_181A37000, v53, v62, "%{public}s called with null logging_id_str, no backtrace", buf, 0xCu);
            }

            goto LABEL_121;
          }
        }

        else
        {
          v48 = __nwlog_obj();
          *buf = 136446210;
          v73 = "nw_pac_resolver_create_with_script";
          v41 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v70 = 0;
          if (__nwlog_fault(v41, &type, &v70))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v42 = __nwlog_obj();
              v49 = type;
              if (os_log_type_enabled(v42, type))
              {
                *buf = 136446210;
                v73 = "nw_pac_resolver_create_with_script";
                _os_log_impl(&dword_181A37000, v42, v49, "%{public}s called with null context", buf, 0xCu);
              }

              goto LABEL_106;
            }

            if (v70 != 1)
            {
              v42 = __nwlog_obj();
              v67 = type;
              if (os_log_type_enabled(v42, type))
              {
                *buf = 136446210;
                v73 = "nw_pac_resolver_create_with_script";
                _os_log_impl(&dword_181A37000, v42, v67, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_106;
            }

            v52 = __nw_create_backtrace_string();
            v53 = __nwlog_obj();
            v60 = type;
            v61 = os_log_type_enabled(v53, type);
            if (v52)
            {
              if (v61)
              {
                *buf = 136446466;
                v73 = "nw_pac_resolver_create_with_script";
                v74 = 2082;
                v75 = v52;
                _os_log_impl(&dword_181A37000, v53, v60, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
              }

              goto LABEL_91;
            }

            if (v61)
            {
              *buf = 136446210;
              v73 = "nw_pac_resolver_create_with_script";
              _os_log_impl(&dword_181A37000, v53, v60, "%{public}s called with null context, no backtrace", buf, 0xCu);
            }

LABEL_121:
          }
        }
      }

      else
      {
        v46 = __nwlog_obj();
        *buf = 136446210;
        v73 = "nw_pac_resolver_create_with_script";
        v41 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v70 = 0;
        if (__nwlog_fault(v41, &type, &v70))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v42 = __nwlog_obj();
            v47 = type;
            if (os_log_type_enabled(v42, type))
            {
              *buf = 136446210;
              v73 = "nw_pac_resolver_create_with_script";
              _os_log_impl(&dword_181A37000, v42, v47, "%{public}s called with null result_handler", buf, 0xCu);
            }

            goto LABEL_106;
          }

          if (v70 != 1)
          {
            v42 = __nwlog_obj();
            v66 = type;
            if (os_log_type_enabled(v42, type))
            {
              *buf = 136446210;
              v73 = "nw_pac_resolver_create_with_script";
              _os_log_impl(&dword_181A37000, v42, v66, "%{public}s called with null result_handler, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_106;
          }

          v52 = __nw_create_backtrace_string();
          v53 = __nwlog_obj();
          v58 = type;
          v59 = os_log_type_enabled(v53, type);
          if (v52)
          {
            if (v59)
            {
              *buf = 136446466;
              v73 = "nw_pac_resolver_create_with_script";
              v74 = 2082;
              v75 = v52;
              _os_log_impl(&dword_181A37000, v53, v58, "%{public}s called with null result_handler, dumping backtrace:%{public}s", buf, 0x16u);
            }

            goto LABEL_91;
          }

          if (v59)
          {
            *buf = 136446210;
            v73 = "nw_pac_resolver_create_with_script";
            _os_log_impl(&dword_181A37000, v53, v58, "%{public}s called with null result_handler, no backtrace", buf, 0xCu);
          }

          goto LABEL_121;
        }
      }
    }

    else
    {
      v44 = __nwlog_obj();
      *buf = 136446210;
      v73 = "nw_pac_resolver_create_with_script";
      v41 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v70 = 0;
      if (__nwlog_fault(v41, &type, &v70))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v42 = __nwlog_obj();
          v45 = type;
          if (os_log_type_enabled(v42, type))
          {
            *buf = 136446210;
            v73 = "nw_pac_resolver_create_with_script";
            _os_log_impl(&dword_181A37000, v42, v45, "%{public}s called with null endpointURL", buf, 0xCu);
          }

          goto LABEL_106;
        }

        if (v70 != 1)
        {
          v42 = __nwlog_obj();
          v65 = type;
          if (os_log_type_enabled(v42, type))
          {
            *buf = 136446210;
            v73 = "nw_pac_resolver_create_with_script";
            _os_log_impl(&dword_181A37000, v42, v65, "%{public}s called with null endpointURL, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_106;
        }

        v52 = __nw_create_backtrace_string();
        v53 = __nwlog_obj();
        v56 = type;
        v57 = os_log_type_enabled(v53, type);
        if (v52)
        {
          if (v57)
          {
            *buf = 136446466;
            v73 = "nw_pac_resolver_create_with_script";
            v74 = 2082;
            v75 = v52;
            _os_log_impl(&dword_181A37000, v53, v56, "%{public}s called with null endpointURL, dumping backtrace:%{public}s", buf, 0x16u);
          }

          goto LABEL_91;
        }

        if (v57)
        {
          *buf = 136446210;
          v73 = "nw_pac_resolver_create_with_script";
          _os_log_impl(&dword_181A37000, v53, v56, "%{public}s called with null endpointURL, no backtrace", buf, 0xCu);
        }

        goto LABEL_121;
      }
    }
  }

  else
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v73 = "nw_pac_resolver_create_with_script";
    v41 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v70 = 0;
    if (__nwlog_fault(v41, &type, &v70))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v73 = "nw_pac_resolver_create_with_script";
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null pacScript", buf, 0xCu);
        }

        goto LABEL_106;
      }

      if (v70 != 1)
      {
        v42 = __nwlog_obj();
        v64 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v73 = "nw_pac_resolver_create_with_script";
          _os_log_impl(&dword_181A37000, v42, v64, "%{public}s called with null pacScript, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_106;
      }

      v52 = __nw_create_backtrace_string();
      v53 = __nwlog_obj();
      v54 = type;
      v55 = os_log_type_enabled(v53, type);
      if (v52)
      {
        if (v55)
        {
          *buf = 136446466;
          v73 = "nw_pac_resolver_create_with_script";
          v74 = 2082;
          v75 = v52;
          _os_log_impl(&dword_181A37000, v53, v54, "%{public}s called with null pacScript, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_91;
      }

      if (v55)
      {
        *buf = 136446210;
        v73 = "nw_pac_resolver_create_with_script";
        _os_log_impl(&dword_181A37000, v53, v54, "%{public}s called with null pacScript, no backtrace", buf, 0xCu);
      }

      goto LABEL_121;
    }
  }

LABEL_122:
  if (v41)
  {
    free(v41);
  }

  v20 = 0;
LABEL_41:

  return v20;
}

NWConcrete_nw_pac_resolver *nw_pac_resolver_create_with_url(const void *a1, const void *a2, const void *a3, const void *a4, void *a5, char a6, int a7, int a8, char a9, unsigned __int8 *a10, void *a11)
{
  v83 = *MEMORY[0x1E69E9840];
  v19 = a5;
  v20 = a11;
  v75 = v19;
  if (!a1)
  {
    v41 = v20;
    v43 = __nwlog_obj();
    *buf = 136446210;
    v80 = "nw_pac_resolver_create_with_url";
    v44 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v77 = 0;
    if (!__nwlog_fault(v44, &type, &v77))
    {
      goto LABEL_120;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null pacURL", buf, 0xCu);
      }

      goto LABEL_104;
    }

    if (v77 != 1)
    {
      v45 = __nwlog_obj();
      v70 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v45, v70, "%{public}s called with null pacURL, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_104;
    }

    backtrace_string = __nw_create_backtrace_string();
    v57 = __nwlog_obj();
    v58 = type;
    v59 = os_log_type_enabled(v57, type);
    if (backtrace_string)
    {
      if (v59)
      {
        *buf = 136446466;
        v80 = "nw_pac_resolver_create_with_url";
        v81 = 2082;
        v82 = backtrace_string;
        _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null pacURL, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_85;
    }

    if (v59)
    {
      *buf = 136446210;
      v80 = "nw_pac_resolver_create_with_url";
      _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null pacURL, no backtrace", buf, 0xCu);
    }

    goto LABEL_119;
  }

  if (!a2)
  {
    v41 = v20;
    v47 = __nwlog_obj();
    *buf = 136446210;
    v80 = "nw_pac_resolver_create_with_url";
    v44 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v77 = 0;
    if (!__nwlog_fault(v44, &type, &v77))
    {
      goto LABEL_120;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v48 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v45, v48, "%{public}s called with null endpointURL", buf, 0xCu);
      }

      goto LABEL_104;
    }

    if (v77 != 1)
    {
      v45 = __nwlog_obj();
      v71 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v45, v71, "%{public}s called with null endpointURL, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_104;
    }

    backtrace_string = __nw_create_backtrace_string();
    v57 = __nwlog_obj();
    v60 = type;
    v61 = os_log_type_enabled(v57, type);
    if (backtrace_string)
    {
      if (v61)
      {
        *buf = 136446466;
        v80 = "nw_pac_resolver_create_with_url";
        v81 = 2082;
        v82 = backtrace_string;
        _os_log_impl(&dword_181A37000, v57, v60, "%{public}s called with null endpointURL, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_85;
    }

    if (v61)
    {
      *buf = 136446210;
      v80 = "nw_pac_resolver_create_with_url";
      _os_log_impl(&dword_181A37000, v57, v60, "%{public}s called with null endpointURL, no backtrace", buf, 0xCu);
    }

LABEL_119:

LABEL_120:
    if (!v44)
    {
LABEL_122:
      v22 = 0;
      goto LABEL_45;
    }

LABEL_121:
    free(v44);
    goto LABEL_122;
  }

  if (!v20)
  {
    v41 = 0;
    v49 = __nwlog_obj();
    *buf = 136446210;
    v80 = "nw_pac_resolver_create_with_url";
    v44 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v77 = 0;
    if (!__nwlog_fault(v44, &type, &v77))
    {
      goto LABEL_120;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v45, v50, "%{public}s called with null result_handler", buf, 0xCu);
      }

LABEL_104:

      goto LABEL_120;
    }

    if (v77 != 1)
    {
      v45 = __nwlog_obj();
      v72 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v45, v72, "%{public}s called with null result_handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_104;
    }

    backtrace_string = __nw_create_backtrace_string();
    v57 = __nwlog_obj();
    v62 = type;
    v63 = os_log_type_enabled(v57, type);
    if (backtrace_string)
    {
      if (v63)
      {
        *buf = 136446466;
        v80 = "nw_pac_resolver_create_with_url";
        v81 = 2082;
        v82 = backtrace_string;
        _os_log_impl(&dword_181A37000, v57, v62, "%{public}s called with null result_handler, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_85:

      free(backtrace_string);
      goto LABEL_120;
    }

    if (v63)
    {
      *buf = 136446210;
      v80 = "nw_pac_resolver_create_with_url";
      _os_log_impl(&dword_181A37000, v57, v62, "%{public}s called with null result_handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_119;
  }

  aBlock = v20;
  if (!v19)
  {
    v51 = __nwlog_obj();
    *buf = 136446210;
    v80 = "nw_pac_resolver_create_with_url";
    v44 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v77 = 0;
    if (!__nwlog_fault(v44, &type, &v77))
    {
      goto LABEL_129;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v52 = __nwlog_obj();
      v53 = type;
      if (os_log_type_enabled(v52, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v52, v53, "%{public}s called with null context", buf, 0xCu);
      }

      goto LABEL_110;
    }

    if (v77 != 1)
    {
      v52 = __nwlog_obj();
      v73 = type;
      if (os_log_type_enabled(v52, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v52, v73, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_110;
    }

    v64 = __nw_create_backtrace_string();
    v65 = __nwlog_obj();
    v66 = type;
    v67 = os_log_type_enabled(v65, type);
    if (v64)
    {
      if (v67)
      {
        *buf = 136446466;
        v80 = "nw_pac_resolver_create_with_url";
        v81 = 2082;
        v82 = v64;
        _os_log_impl(&dword_181A37000, v65, v66, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_95;
    }

    if (v67)
    {
      *buf = 136446210;
      v80 = "nw_pac_resolver_create_with_url";
      _os_log_impl(&dword_181A37000, v65, v66, "%{public}s called with null context, no backtrace", buf, 0xCu);
    }

LABEL_128:

LABEL_129:
    v41 = aBlock;
    if (!v44)
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  v21 = a10;
  if (!a10)
  {
    v54 = __nwlog_obj();
    *buf = 136446210;
    v80 = "nw_pac_resolver_create_with_url";
    v44 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v77 = 0;
    if (!__nwlog_fault(v44, &type, &v77))
    {
      goto LABEL_129;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v52 = __nwlog_obj();
      v55 = type;
      if (os_log_type_enabled(v52, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v52, v55, "%{public}s called with null logging_id_str", buf, 0xCu);
      }

LABEL_110:

      goto LABEL_129;
    }

    if (v77 != 1)
    {
      v52 = __nwlog_obj();
      v74 = type;
      if (os_log_type_enabled(v52, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v52, v74, "%{public}s called with null logging_id_str, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_110;
    }

    v64 = __nw_create_backtrace_string();
    v65 = __nwlog_obj();
    v68 = type;
    v69 = os_log_type_enabled(v65, type);
    if (v64)
    {
      if (v69)
      {
        *buf = 136446466;
        v80 = "nw_pac_resolver_create_with_url";
        v81 = 2082;
        v82 = v64;
        _os_log_impl(&dword_181A37000, v65, v68, "%{public}s called with null logging_id_str, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_95:

      free(v64);
      goto LABEL_129;
    }

    if (v69)
    {
      *buf = 136446210;
      v80 = "nw_pac_resolver_create_with_url";
      _os_log_impl(&dword_181A37000, v65, v68, "%{public}s called with null logging_id_str, no backtrace", buf, 0xCu);
    }

    goto LABEL_128;
  }

  v22 = objc_alloc_init(NWConcrete_nw_pac_resolver);
  if (v22)
  {
    *(v22 + 3) = CFRetain(a2);
    *(v22 + 4) = CFRetain(a1);
    if (a3)
    {
      *(v22 + 6) = CFRetain(a3);
    }

    if (a4)
    {
      *(v22 + 7) = CFRetain(a4);
    }

    v23 = _Block_copy(aBlock);
    v24 = *(v22 + 1);
    *(v22 + 1) = v23;

    objc_storeStrong(v22 + 2, a5);
    if (a7)
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    if (a8)
    {
      v26 = 4;
    }

    else
    {
      v26 = 0;
    }

    if (a9)
    {
      v27 = 8;
    }

    else
    {
      v27 = 0;
    }

    *(v22 + 159) = v25 | a6 | v26 | v27 | *(v22 + 159) & 0xF0;
    v28 = v22 + 84;
    v29 = 75;
    while (1)
    {
      v30 = *v21;
      *v28 = v30;
      if (!v30)
      {
        break;
      }

      ++v28;
      ++v21;
      if (--v29 <= 1)
      {
        *v28 = 0;
        break;
      }
    }

    v31 = v22;
    goto LABEL_44;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v32 = gLogObj;
  *buf = 136446210;
  v80 = "nw_pac_resolver_create_with_url";
  v33 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v77 = 0;
  if (__nwlog_fault(v33, &type, &v77))
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
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v34, v35, "%{public}s nw_pac_resolver_obj_alloc failed", buf, 0xCu);
      }

LABEL_29:

      goto LABEL_42;
    }

    if (v77 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v34 = gLogObj;
      v40 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v80 = "nw_pac_resolver_create_with_url";
        _os_log_impl(&dword_181A37000, v34, v40, "%{public}s nw_pac_resolver_obj_alloc failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_29;
    }

    v36 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v37 = gLogObj;
    v38 = type;
    v39 = os_log_type_enabled(v37, type);
    if (v36)
    {
      if (v39)
      {
        *buf = 136446466;
        v80 = "nw_pac_resolver_create_with_url";
        v81 = 2082;
        v82 = v36;
        _os_log_impl(&dword_181A37000, v37, v38, "%{public}s nw_pac_resolver_obj_alloc failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v36);
      if (!v33)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    if (v39)
    {
      *buf = 136446210;
      v80 = "nw_pac_resolver_create_with_url";
      _os_log_impl(&dword_181A37000, v37, v38, "%{public}s nw_pac_resolver_obj_alloc failed, no backtrace", buf, 0xCu);
    }
  }

LABEL_42:
  if (v33)
  {
LABEL_43:
    free(v33);
  }

LABEL_44:

  v41 = aBlock;
LABEL_45:

  return v22;
}

void nw_pac_resolver_start(void *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v36 = __nwlog_obj();
    LODWORD(clientContext.version) = 136446210;
    *(&clientContext.version + 4) = "nw_pac_resolver_start";
    v9 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v9, buf, &type))
    {
      if (buf[0] == 17)
      {
        v37 = __nwlog_obj();
        v38 = buf[0];
        if (os_log_type_enabled(v37, buf[0]))
        {
          LODWORD(clientContext.version) = 136446210;
          *(&clientContext.version + 4) = "nw_pac_resolver_start";
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null pac", &clientContext, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v39 = buf[0];
        v40 = os_log_type_enabled(v37, buf[0]);
        if (backtrace_string)
        {
          if (v40)
          {
            LODWORD(clientContext.version) = 136446466;
            *(&clientContext.version + 4) = "nw_pac_resolver_start";
            WORD2(clientContext.info) = 2082;
            *(&clientContext.info + 6) = backtrace_string;
            _os_log_impl(&dword_181A37000, v37, v39, "%{public}s called with null pac, dumping backtrace:%{public}s", &clientContext, 0x16u);
          }

LABEL_59:
          free(backtrace_string);
          if (!v9)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        }

        if (v40)
        {
          LODWORD(clientContext.version) = 136446210;
          *(&clientContext.version + 4) = "nw_pac_resolver_start";
          _os_log_impl(&dword_181A37000, v37, v39, "%{public}s called with null pac, no backtrace", &clientContext, 0xCu);
        }
      }

      else
      {
        v37 = __nwlog_obj();
        v41 = buf[0];
        if (os_log_type_enabled(v37, buf[0]))
        {
          LODWORD(clientContext.version) = 136446210;
          *(&clientContext.version + 4) = "nw_pac_resolver_start";
          _os_log_impl(&dword_181A37000, v37, v41, "%{public}s called with null pac, backtrace limit exceeded", &clientContext, 0xCu);
        }
      }
    }

LABEL_80:
    if (!v9)
    {
      goto LABEL_82;
    }

LABEL_81:
    free(v9);
    goto LABEL_82;
  }

  v3 = *(v1 + 4);
  if (v3)
  {
    clientContext.version = 0;
    clientContext.info = v1;
    clientContext.retain = nw_pac_resolver_retain;
    clientContext.release = nw_pac_resolver_release;
    clientContext.copyDescription = 0;
    v4 = *(v1 + 3);
    if (*(v1 + 3) == 0)
    {
      v5 = CFNetworkExecuteProxyAutoConfigurationURL(v3, v4, nw_pac_resolver_callback, &clientContext);
    }

    else
    {
      v5 = MEMORY[0x1865DC2B0](v3, v4);
    }

    v7 = v5;
    if (v5)
    {
      pthread_mutex_lock(&sOutstandingPacURLMutex);
      if (nw_get_outstanding_pac_urls(void)::onceToken != -1)
      {
        dispatch_once(&nw_get_outstanding_pac_urls(void)::onceToken, &__block_literal_global_33980);
      }

      v12 = nw_get_outstanding_pac_urls(void)::gPACURLs;
      if (nw_get_outstanding_pac_urls(void)::gPACURLs)
      {
        v53.length = CFArrayGetCount(nw_get_outstanding_pac_urls(void)::gPACURLs);
        v53.location = 0;
        if (!CFArrayContainsValue(v12, v53, v3))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v49 = "nw_add_outstanding_pac_url";
            v50 = 2114;
            v51 = v3;
            _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s Adding outstanding PAC URL: %{public}@", buf, 0x16u);
          }

          CFArrayAppendValue(v12, v3);
        }

        goto LABEL_75;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      *buf = 136446210;
      v49 = "nw_add_outstanding_pac_url";
      v17 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v45 = 0;
      if (__nwlog_fault(v17, &type, &v45))
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
            v49 = "nw_add_outstanding_pac_url";
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s nw_get_outstanding_pac_urls failed", buf, 0xCu);
          }
        }

        else if (v45 == 1)
        {
          v27 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v28 = type;
          v29 = os_log_type_enabled(v18, type);
          if (v27)
          {
            if (v29)
            {
              *buf = 136446466;
              v49 = "nw_add_outstanding_pac_url";
              v50 = 2082;
              v51 = v27;
              _os_log_impl(&dword_181A37000, v18, v28, "%{public}s nw_get_outstanding_pac_urls failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v27);
            if (!v17)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          }

          if (v29)
          {
            *buf = 136446210;
            v49 = "nw_add_outstanding_pac_url";
            _os_log_impl(&dword_181A37000, v18, v28, "%{public}s nw_get_outstanding_pac_urls failed, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v33 = type;
          if (os_log_type_enabled(v18, type))
          {
            *buf = 136446210;
            v49 = "nw_add_outstanding_pac_url";
            _os_log_impl(&dword_181A37000, v18, v33, "%{public}s nw_get_outstanding_pac_urls failed, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v17)
      {
LABEL_75:
        pthread_mutex_unlock(&sOutstandingPacURLMutex);
        goto LABEL_76;
      }

LABEL_74:
      free(v17);
      goto LABEL_75;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    *buf = 136446210;
    v49 = "nw_pac_resolver_start";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v9, &type, &v45))
    {
      goto LABEL_80;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v49 = "nw_pac_resolver_start";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s CFNetworkExecuteProxyAutoConfigurationURL failed", buf, 0xCu);
      }

LABEL_79:

      goto LABEL_80;
    }

    if (v45 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v30 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v49 = "nw_pac_resolver_start";
        _os_log_impl(&dword_181A37000, v10, v30, "%{public}s CFNetworkExecuteProxyAutoConfigurationURL failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_79;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v25 = type;
    v26 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v49 = "nw_pac_resolver_start";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s CFNetworkExecuteProxyAutoConfigurationURL failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_79;
    }

    if (v26)
    {
      *buf = 136446466;
      v49 = "nw_pac_resolver_start";
      v50 = 2082;
      v51 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v25, "%{public}s CFNetworkExecuteProxyAutoConfigurationURL failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_58;
  }

  v6 = *(v1 + 5);
  if (v6)
  {
    clientContext.version = 0;
    clientContext.info = v2;
    clientContext.retain = nw_pac_resolver_retain;
    clientContext.release = nw_pac_resolver_release;
    clientContext.copyDescription = 0;
    v7 = CFNetworkExecuteProxyAutoConfigurationScript(v6, *(v2 + 3), nw_pac_resolver_callback, &clientContext);
    if (v7)
    {
LABEL_76:
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __nw_pac_resolver_start_block_invoke;
      aBlock[3] = &unk_1E6A3AC58;
      v44 = v7;
      v43 = v2;
      v35 = _Block_copy(aBlock);
      os_unfair_lock_lock(v2 + 20);
      v35[2](v35);
      os_unfair_lock_unlock(v2 + 20);

      goto LABEL_82;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v49 = "nw_pac_resolver_start";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v9, &type, &v45))
    {
      goto LABEL_80;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v49 = "nw_pac_resolver_start";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s CFNetworkExecuteProxyAutoConfigurationScript failed", buf, 0xCu);
      }

      goto LABEL_79;
    }

    if (v45 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v34 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v49 = "nw_pac_resolver_start";
        _os_log_impl(&dword_181A37000, v10, v34, "%{public}s CFNetworkExecuteProxyAutoConfigurationScript failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_79;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v31 = type;
    v32 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v32)
      {
        *buf = 136446210;
        v49 = "nw_pac_resolver_start";
        _os_log_impl(&dword_181A37000, v10, v31, "%{public}s CFNetworkExecuteProxyAutoConfigurationScript failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_79;
    }

    if (v32)
    {
      *buf = 136446466;
      v49 = "nw_pac_resolver_start";
      v50 = 2082;
      v51 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v31, "%{public}s CFNetworkExecuteProxyAutoConfigurationScript failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_58:

    goto LABEL_59;
  }

  v20 = *(v2 + 2);
  if (!v20 || *(v20 + 132) != 4)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v21 = gconnectionLogObj;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = " dry-run";
      v23 = v2[159];
      *(&clientContext.version + 4) = "nw_pac_resolver_start";
      LODWORD(clientContext.version) = 136446722;
      WORD2(clientContext.info) = 2082;
      if ((v23 & 8) == 0)
      {
        v22 = "";
      }

      *(&clientContext.info + 6) = v2 + 84;
      HIWORD(clientContext.retain) = 2082;
      clientContext.release = v22;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s%{public}s proxy pac] Either pacURL or pacScript must be set", &clientContext, 0x20u);
    }
  }

LABEL_82:
}

void __nw_pac_resolver_start_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695AC40] resourceLoaderRunLoop];
  v3 = *MEMORY[0x1E695E8E0];
  CFRunLoopAddSource(v2, *(a1 + 40), *MEMORY[0x1E695E8E0]);
  *(*(a1 + 32) + 64) = *(a1 + 40);
  v4 = *(a1 + 32);
  context.version = 0;
  context.info = v4;
  context.retain = nw_pac_resolver_const_retain;
  context.release = nw_pac_resolver_const_release;
  context.copyDescription = 0;
  v5 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  *(*(a1 + 32) + 72) = CFRunLoopTimerCreate(v5, Current + 60.0, 0.0, 0, 0, nw_pac_timeout_callback, &context);
  CFRunLoopAddTimer([MEMORY[0x1E695AC40] resourceLoaderRunLoop], *(*(a1 + 32) + 72), v3);
}

void nw_pac_timeout_callback(__CFRunLoopTimer *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = CFErrorCreate(*MEMORY[0x1E695E480], @"kCFErrorDomainCFNetwork", -1001, 0);
  v4 = a2;
  v5 = *(v4 + 2);
  if (!v5 || *(v5 + 132) != 4)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v6 = gconnectionLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if ((v4[159] & 8) != 0)
      {
        v7 = " dry-run";
      }

      else
      {
        v7 = "";
      }

      v8 = 136447234;
      v9 = "nw_pac_timeout_callback";
      v10 = 2082;
      v11 = v4 + 84;
      v12 = 2082;
      v13 = v7;
      v14 = 2114;
      Domain = CFErrorGetDomain(v3);
      v16 = 2048;
      Code = CFErrorGetCode(v3);
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s%{public}s proxy pac] Timed out waiting for PAC query: %{public}@: %ld", &v8, 0x34u);
    }
  }

  nw_pac_resolver_callback(v4, 0, v3);
  if (v3)
  {
    CFRelease(v3);
  }
}

void nw_pac_resolver_callback(void *a1, const __CFArray *a2, __CFError *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (v5)
  {
    v6 = a2;
    v7 = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL24nw_pac_resolver_callbackPvPK9__CFArrayP9__CFError_block_invoke;
    aBlock[3] = &unk_1E6A3D868;
    v8 = v5;
    v38 = v8;
    v9 = _Block_copy(aBlock);
    os_unfair_lock_lock(v5 + 20);
    v9[2](v9);
    os_unfair_lock_unlock(v5 + 20);

    v10 = *&v8[8]._os_unfair_lock_opaque;
    if (!v10)
    {
LABEL_18:
      v18 = *&v8[4]._os_unfair_lock_opaque;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = ___ZL24nw_pac_resolver_callbackPvPK9__CFArrayP9__CFError_block_invoke_2;
      v33[3] = &unk_1E6A3B4E0;
      v34 = v8;
      v19 = v6;
      v35 = v19;
      v20 = v7;
      v36 = v20;
      nw_queue_context_async(v18, v33);

      goto LABEL_19;
    }

    pthread_mutex_lock(&sOutstandingPacURLMutex);
    if (nw_get_outstanding_pac_urls(void)::onceToken != -1)
    {
      dispatch_once(&nw_get_outstanding_pac_urls(void)::onceToken, &__block_literal_global_33980);
    }

    v11 = nw_get_outstanding_pac_urls(void)::gPACURLs;
    if (nw_get_outstanding_pac_urls(void)::gPACURLs)
    {
      v46.length = CFArrayGetCount(nw_get_outstanding_pac_urls(void)::gPACURLs);
      v46.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v11, v46, v10);
      if (FirstIndexOfValue != -1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v42 = "nw_remove_outstanding_pac_url";
          v43 = 2114;
          v44 = v10;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s Removing outstanding PAC URL: %{public}@", buf, 0x16u);
        }

        CFArrayRemoveValueAtIndex(v11, FirstIndexOfValue);
      }

      goto LABEL_17;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    *buf = 136446210;
    v42 = "nw_remove_outstanding_pac_url";
    v15 = _os_log_send_and_compose_impl();

    v40 = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v15, &v40, &v39))
    {
      if (v40 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = v40;
        if (os_log_type_enabled(v16, v40))
        {
          *buf = 136446210;
          v42 = "nw_remove_outstanding_pac_url";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s nw_get_outstanding_pac_urls failed", buf, 0xCu);
        }
      }

      else if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v22 = v40;
        v23 = os_log_type_enabled(v16, v40);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            v42 = "nw_remove_outstanding_pac_url";
            v43 = 2082;
            v44 = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v22, "%{public}s nw_get_outstanding_pac_urls failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v15)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (v23)
        {
          *buf = 136446210;
          v42 = "nw_remove_outstanding_pac_url";
          _os_log_impl(&dword_181A37000, v16, v22, "%{public}s nw_get_outstanding_pac_urls failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v24 = v40;
        if (os_log_type_enabled(v16, v40))
        {
          *buf = 136446210;
          v42 = "nw_remove_outstanding_pac_url";
          _os_log_impl(&dword_181A37000, v16, v24, "%{public}s nw_get_outstanding_pac_urls failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v15)
    {
LABEL_17:
      pthread_mutex_unlock(&sOutstandingPacURLMutex);
      goto LABEL_18;
    }

LABEL_16:
    free(v15);
    goto LABEL_17;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  v42 = "nw_pac_resolver_callback";
  v26 = _os_log_send_and_compose_impl();

  v40 = OS_LOG_TYPE_ERROR;
  v39 = 0;
  if (__nwlog_fault(v26, &v40, &v39))
  {
    if (v40 == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = v40;
      if (os_log_type_enabled(v27, v40))
      {
        *buf = 136446210;
        v42 = "nw_pac_resolver_callback";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null pac", buf, 0xCu);
      }
    }

    else if (v39 == 1)
    {
      v29 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v30 = v40;
      v31 = os_log_type_enabled(v27, v40);
      if (v29)
      {
        if (v31)
        {
          *buf = 136446466;
          v42 = "nw_pac_resolver_callback";
          v43 = 2082;
          v44 = v29;
          _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null pac, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v29);
        goto LABEL_48;
      }

      if (v31)
      {
        *buf = 136446210;
        v42 = "nw_pac_resolver_callback";
        _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null pac, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v32 = v40;
      if (os_log_type_enabled(v27, v40))
      {
        *buf = 136446210;
        v42 = "nw_pac_resolver_callback";
        _os_log_impl(&dword_181A37000, v27, v32, "%{public}s called with null pac, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_48:
  if (v26)
  {
    free(v26);
  }

LABEL_19:
}

void ___ZL24nw_pac_resolver_callbackPvPK9__CFArrayP9__CFError_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3)
  {
    CFRunLoopSourceInvalidate(v3);
    v2 = *(a1 + 32);
    v4 = *(v2 + 64);
    if (v4)
    {
      CFRelease(v4);
      *(*(a1 + 32) + 64) = 0;
      v2 = *(a1 + 32);
    }
  }

  v5 = *(v2 + 72);
  if (v5)
  {
    CFRunLoopTimerInvalidate(v5);
    v6 = *(*(a1 + 32) + 72);
    if (v6)
    {
      CFRelease(v6);
      *(*(a1 + 32) + 72) = 0;
    }
  }
}

void ___ZL24nw_pac_resolver_callbackPvPK9__CFArrayP9__CFError_block_invoke_2(uint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1[1])
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = v1;
    v6 = v5[2];
    if (v3)
    {
      if (!v6 || *(v6 + 132) != 4)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v7 = gconnectionLogObj;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          if ((*(v5 + 159) & 8) != 0)
          {
            v8 = " dry-run";
          }

          else
          {
            v8 = "";
          }

          *buf = 136447234;
          v84 = "nw_proxy_resolver_create_parsed_array";
          v85 = 2082;
          v86 = v5 + 84;
          v87 = 2082;
          v88 = v8;
          v89 = 2114;
          Domain = CFErrorGetDomain(v3);
          v91 = 2048;
          Code = CFErrorGetCode(v3);
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s%{public}s proxy pac] Evaluation error: %{public}@: %ld", buf, 0x34u);
        }
      }

      if (CFErrorGetCode(v3) == -1001)
      {
        v9 = CFErrorGetDomain(v3);
        CFStringCompare(v9, @"kCFErrorDomainCFNetwork", 0);
      }
    }

    else if (!v6 || *(v6 + 132) != 4)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(v5 + 159);
        Count = CFArrayGetCount(v4);
        v13 = " dry-run";
        *buf = 136446978;
        v84 = "nw_proxy_resolver_create_parsed_array";
        v85 = 2082;
        v86 = v5 + 84;
        if ((v11 & 8) == 0)
        {
          v13 = "";
        }

        v87 = 2082;
        v88 = v13;
        v89 = 2048;
        Domain = Count;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s%{public}s proxy pac] Resolver returned %ld proxies", buf, 0x2Au);
      }
    }

    if (v4)
    {
      v80 = _nw_array_create();
      v14 = CFArrayGetCount(v4);
      if (v14 >= 1)
      {
        v15 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v15);
          v17 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v18 = CFGetTypeID(ValueAtIndex);
            if (v18 == CFDictionaryGetTypeID())
            {
              break;
            }
          }

          v32 = v5[2];
          if (v32 && *(v32 + 132) == 4)
          {
            goto LABEL_71;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          direct = gconnectionLogObj;
          if (os_log_type_enabled(&direct->super, OS_LOG_TYPE_ERROR))
          {
            v33 = " dry-run";
            if ((*(v5 + 159) & 8) == 0)
            {
              v33 = "";
            }

            *buf = 136446978;
            v84 = "nw_proxy_resolver_create_parsed_array";
            v85 = 2082;
            v86 = v5 + 84;
            v87 = 2082;
            v88 = v33;
            v89 = 2114;
            Domain = v17;
            _os_log_impl(&dword_181A37000, &direct->super, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s%{public}s proxy pac] Unknown item in pac proxy list %{public}@", buf, 0x2Au);
          }

LABEL_70:

LABEL_71:
          if (v14 == ++v15)
          {
            goto LABEL_149;
          }
        }

        Value = CFDictionaryGetValue(v17, @"kCFProxyTypeKey");
        v20 = Value;
        if (Value && (v21 = CFGetTypeID(Value), v21 == CFStringGetTypeID()))
        {
          if (CFStringCompare(v20, @"kCFProxyTypeNone", 0) == kCFCompareEqualTo)
          {
            direct = nw_proxy_config_create_direct();
            goto LABEL_140;
          }

          v22 = CFDictionaryGetValue(v17, @"kCFProxyHostNameKey");
          v23 = v22;
          if (v22)
          {
            v24 = CFGetTypeID(v22);
            if (v24 == CFStringGetTypeID())
            {
              type = _CFXPCCreateXPCObjectFromCFObject();
              if (type)
              {
                valuePtr = 0;
                v25 = CFDictionaryGetValue(v17, @"kCFProxyPortNumberKey");
                v26 = v25;
                if (v25)
                {
                  v27 = CFGetTypeID(v25);
                  if (v27 == CFNumberGetTypeID())
                  {
                    CFNumberGetValue(v26, kCFNumberIntType, &valuePtr);
                  }
                }

                if (CFStringCompare(v20, @"kCFProxyTypeSOCKS", 0))
                {
                  if (!v5[3])
                  {
                    goto LABEL_99;
                  }

                  if (CFStringCompare(v20, @"kCFProxyTypeHTTP", 0) == kCFCompareEqualTo)
                  {
                    goto LABEL_100;
                  }

                  if (CFStringCompare(v20, @"kCFProxyTypeHTTPS", 0))
                  {
                    if (CFStringCompare(v20, @"kCFProxyTypeFTP", 0))
                    {
                      v28 = v5[2];
                      if (!v28 || *(v28 + 132) != 4)
                      {
                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v29 = gconnectionLogObj;
                        host_with_numeric_port = v29;
                        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                        {
                          v30 = " dry-run";
                          if ((*(v5 + 159) & 8) == 0)
                          {
                            v30 = "";
                          }

                          *buf = 136446978;
                          v84 = "nw_proxy_resolver_create_parsed_array";
                          v85 = 2082;
                          v86 = v5 + 84;
                          v87 = 2082;
                          v88 = v30;
                          v89 = 2114;
                          Domain = v20;
                          _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s%{public}s proxy pac] Unknown proxy type %{public}@", buf, 0x2Au);
                        }

                        direct = 0;
                        goto LABEL_138;
                      }

LABEL_99:
                      direct = 0;
LABEL_139:

LABEL_140:
                      if (direct && v80)
                      {
                        _nw_array_append(v80, direct);
                      }

                      goto LABEL_70;
                    }

LABEL_100:
                    if (!valuePtr)
                    {
                      valuePtr = 80;
                    }

                    v48 = 2001;
                  }

                  else
                  {
                    if ((*(v5 + 159) & 2) != 0)
                    {
                      v51 = 4002;
                    }

                    else
                    {
                      v51 = 4001;
                    }

                    if (*(v5 + 159))
                    {
                      v48 = 2002;
                    }

                    else
                    {
                      v48 = v51;
                    }

                    if (!valuePtr)
                    {
                      valuePtr = 443;
                    }
                  }

                  string_ptr = xpc_string_get_string_ptr(type);
                  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(string_ptr, valuePtr);
                  if (nw_proxy_copy_http_connect_definition::onceToken != -1)
                  {
                    dispatch_once(&nw_proxy_copy_http_connect_definition::onceToken, &__block_literal_global_102);
                  }

                  v53 = nw_proxy_copy_http_connect_definition::proxy_definition;
                  options = nw_proxy_create_options(v53);
                  direct = nw_proxy_config_create(host_with_numeric_port, options);

                  nw_proxy_config_set_type(direct, v48);
                  if (v48 == 4002)
                  {
                    *buf = 4;
                    v55 = nw_protocol_copy_tcp_definition();
                    v56 = nw_proxy_config_copy_protocol_stack(direct, v55, buf);

                    v57 = v5;
                    v58 = nw_tls_create_options();
                    if ((*(v5 + 159) & 4) != 0 && os_variant_allows_internal_security_policies())
                    {
                      xstringa = v58;
                      sec_protocol_options_set_peer_authentication_required(xstringa, 0);
                    }

                    nw_protocol_stack_append_application_protocol(v56, v58);
                  }
                }

                else
                {
                  v43 = CFDictionaryGetValue(v17, @"kCFStreamPropertySOCKSVersion");
                  if (v43 && CFStringCompare(v43, @"kCFStreamSocketSOCKSVersion4", 0) == kCFCompareEqualTo)
                  {
                    v44 = nw_protocol_socksv4_copy_definition();
                    host_with_numeric_port = nw_framer_create_options(v44);
                    v50 = 3001;
                  }

                  else
                  {
                    if (nw_protocol_socksv5_copy_definition::onceToken != -1)
                    {
                      dispatch_once(&nw_protocol_socksv5_copy_definition::onceToken, &__block_literal_global_89224);
                    }

                    if (nw_protocol_socksv5_copy_definition::definition)
                    {
                      v44 = os_retain(nw_protocol_socksv5_copy_definition::definition);
                    }

                    else
                    {
                      v44 = 0;
                    }

                    host_with_numeric_port = nw_framer_create_options(v44);
                    v50 = 3002;
                  }

                  v74 = v50;

                  v59 = CFDictionaryGetValue(v17, @"kCFStreamPropertySOCKSUser");
                  if (v59 && (v60 = CFGetTypeID(v59), v60 == CFStringGetTypeID()))
                  {
                    xstring = _CFXPCCreateXPCObjectFromCFObject();
                  }

                  else
                  {
                    xstring = 0;
                  }

                  v61 = CFDictionaryGetValue(v17, @"kCFStreamPropertySOCKSPassword");
                  if (v61 && (v62 = CFGetTypeID(v61), v62 == CFStringGetTypeID()))
                  {
                    v63 = _CFXPCCreateXPCObjectFromCFObject();
                  }

                  else
                  {
                    v63 = 0;
                  }

                  v64 = xpc_string_get_string_ptr(type);
                  v65 = nw_endpoint_create_host_with_numeric_port(v64, valuePtr);
                  direct = nw_proxy_config_create(v65, host_with_numeric_port);
                  nw_proxy_config_set_type(direct, v74);
                  if (xstring)
                  {
                    v66 = xpc_string_get_string_ptr(xstring);
                    if (v63)
                    {
                      v67 = xpc_string_get_string_ptr(v63);
                    }

                    else
                    {
                      v67 = 0;
                    }

                    nw_proxy_config_set_username_and_password(&direct->super, v66, v67);
                  }
                }

LABEL_138:

                goto LABEL_139;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v39 = gLogObj;
              *buf = 136446466;
              v84 = "nw_proxy_resolver_create_parsed_array";
              v85 = 2114;
              v86 = v23;
              v40 = _os_log_send_and_compose_impl();

              LOBYTE(valuePtr) = 16;
              v82 = 0;
              if (!__nwlog_fault(v40, &valuePtr, &v82))
              {
                goto LABEL_146;
              }

              if (valuePtr == 17)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v41 = gLogObj;
                v42 = valuePtr;
                if (os_log_type_enabled(v41, valuePtr))
                {
                  *buf = 136446466;
                  v84 = "nw_proxy_resolver_create_parsed_array";
                  v85 = 2114;
                  v86 = v23;
                  _os_log_impl(&dword_181A37000, v41, v42, "%{public}s _CFXPCCreateXPCObjectFromCFObject(%{public}@) failed", buf, 0x16u);
                }
              }

              else
              {
                if (v82 == 1)
                {
                  backtrace_string = __nw_create_backtrace_string();
                  v46 = __nwlog_obj();
                  typea = valuePtr;
                  v47 = os_log_type_enabled(v46, valuePtr);
                  if (backtrace_string)
                  {
                    if (v47)
                    {
                      *buf = 136446722;
                      v84 = "nw_proxy_resolver_create_parsed_array";
                      v85 = 2114;
                      v86 = v23;
                      v87 = 2082;
                      v88 = backtrace_string;
                      _os_log_impl(&dword_181A37000, v46, typea, "%{public}s _CFXPCCreateXPCObjectFromCFObject(%{public}@) failed, dumping backtrace:%{public}s", buf, 0x20u);
                    }

                    free(backtrace_string);
                  }

                  else
                  {
                    if (v47)
                    {
                      *buf = 136446466;
                      v84 = "nw_proxy_resolver_create_parsed_array";
                      v85 = 2114;
                      v86 = v23;
                      _os_log_impl(&dword_181A37000, v46, typea, "%{public}s _CFXPCCreateXPCObjectFromCFObject(%{public}@) failed, no backtrace", buf, 0x16u);
                    }
                  }

                  goto LABEL_146;
                }

                v41 = __nwlog_obj();
                v49 = valuePtr;
                if (os_log_type_enabled(v41, valuePtr))
                {
                  *buf = 136446466;
                  v84 = "nw_proxy_resolver_create_parsed_array";
                  v85 = 2114;
                  v86 = v23;
                  _os_log_impl(&dword_181A37000, v41, v49, "%{public}s _CFXPCCreateXPCObjectFromCFObject(%{public}@) failed, backtrace limit exceeded", buf, 0x16u);
                }
              }

LABEL_146:
              if (v40)
              {
                free(v40);
              }

              goto LABEL_69;
            }
          }

          v37 = v5[2];
          if (v37 && *(v37 + 132) == 4)
          {
LABEL_69:
            direct = 0;
            goto LABEL_70;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v35 = gconnectionLogObj;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v38 = " dry-run";
            if ((*(v5 + 159) & 8) == 0)
            {
              v38 = "";
            }

            *buf = 136446978;
            v84 = "nw_proxy_resolver_create_parsed_array";
            v85 = 2082;
            v86 = v5 + 84;
            v87 = 2082;
            v88 = v38;
            v89 = 2114;
            Domain = v20;
            _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s%{public}s proxy pac] Bad proxy hostname %{public}@", buf, 0x2Au);
          }
        }

        else
        {
          v34 = v5[2];
          if (v34 && *(v34 + 132) == 4)
          {
            goto LABEL_69;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v35 = gconnectionLogObj;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = " dry-run";
            if ((*(v5 + 159) & 8) == 0)
            {
              v36 = "";
            }

            *buf = 136446978;
            v84 = "nw_proxy_resolver_create_parsed_array";
            v85 = 2082;
            v86 = v5 + 84;
            v87 = 2082;
            v88 = v36;
            v89 = 2114;
            Domain = v20;
            _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s%{public}s proxy pac] Bad proxy type key %{public}@", buf, 0x2Au);
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      v80 = 0;
    }

LABEL_149:

    (*(*(*(a1 + 32) + 8) + 16))(*(*(a1 + 32) + 8), v80);
    v68 = *(a1 + 32);
    v69 = *(v68 + 8);
    *(v68 + 8) = 0;

    v70 = *(a1 + 32);
    v71 = v70[3];
    if (v71)
    {
      CFRelease(v71);
      v70[3] = 0;
    }

    v72 = v70[4];
    if (v72)
    {
      CFRelease(v72);
      v70[4] = 0;
    }

    v73 = v70[5];
    if (v73)
    {
      CFRelease(v73);
      v70[5] = 0;
    }
  }
}

uint64_t __nw_protocol_ethernet_identifier_block_invoke()
{
  qword_1EA841D40 = 0;
  *algn_1EA841D31 = 0u;
  strcpy(&g_ethernet_protocol_identifier, "ethernet");
  qword_1EA841D48 = 0x200000001;
  qword_1EA841D60 = nw_protocol_default_replace_input_handler;
  qword_1EA841D90 = nw_protocol_default_input_available;
  qword_1EA841D98 = nw_protocol_default_output_available;
  qword_1EA841E08 = nw_protocol_default_input_finished;
  qword_1EA841E10 = nw_protocol_default_output_finished;
  qword_1EA841E58 = nw_protocol_default_input_flush;
  qword_1EA841DB8 = nw_protocol_default_link_state;
  qword_1EA841DC0 = nw_protocol_default_get_parameters;
  qword_1EA841DD0 = nw_protocol_default_get_local;
  qword_1EA841DD8 = nw_protocol_default_get_remote;
  qword_1EA841DC8 = nw_protocol_default_get_path;
  qword_1EA841DF8 = nw_protocol_default_updated_path;
  qword_1EA841E18 = nw_protocol_default_get_output_local;
  qword_1EA841E20 = nw_protocol_default_get_output_interface;
  qword_1EA841D68 = nw_protocol_default_connect;
  qword_1EA841D70 = nw_protocol_default_disconnect;
  qword_1EA841D78 = nw_protocol_default_connected;
  qword_1EA841D80 = nw_protocol_default_disconnected;
  qword_1EA841D88 = nw_protocol_default_error;
  qword_1EA841E50 = nw_protocol_default_reset;
  qword_1EA841E00 = nw_protocol_default_supports_external_data;
  qword_1EA841E28 = nw_protocol_default_waiting_for_output;
  qword_1EA841E30 = nw_protocol_default_copy_info;
  qword_1EA841DE0 = nw_protocol_default_register_notification;
  qword_1EA841DE8 = nw_protocol_default_unregister_notification;
  qword_1EA841DF0 = nw_protocol_default_notify;
  qword_1EA841E38 = nw_protocol_default_add_listen_handler;
  qword_1EA841E40 = nw_protocol_default_remove_listen_handler;
  g_ethernet_protocol_callbacks = nw_protocol_ethernet_add_input_handler;
  qword_1EA841D58 = nw_protocol_ethernet_remove_input_handler;
  qword_1EA841DA0 = nw_protocol_ethernet_get_input_frames;
  qword_1EA841DA8 = nw_protocol_ethernet_get_output_frames;
  qword_1EA841DB0 = nw_protocol_ethernet_finalize_output_frames;
  qword_1EA841E48 = nw_protocol_ethernet_get_message_properties;
  return nw_protocol_register_extended(&g_ethernet_protocol_identifier, nw_protocol_ethernet_create);
}

uint64_t nw_protocol_ethernet_create(const nw_protocol_identifier *a1, nw_endpoint *a2, nw_parameters *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 8uLL, 0xA8uLL, 0x51588C91uLL))
  {
    result = memptr;
    if (memptr)
    {
      goto LABEL_3;
    }
  }

  v4 = __nwlog_obj();
  os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  v7 = 136446722;
  v8 = "nw_protocol_ethernet_create";
  v9 = 2048;
  v10 = 8;
  v11 = 2048;
  v12 = 168;
  v5 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v5);
  if (!result)
  {
    free(v5);
    result = memptr;
LABEL_3:
    *(result + 160) = 0;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 16) = &g_ethernet_protocol_identifier;
    *(result + 24) = &g_ethernet_protocol_callbacks;
    *(result + 40) = result;
    return result;
  }

  __break(1u);
  return result;
}

void nw_protocol_ethernet_get_message_properties(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v15 = "nw_protocol_ethernet_get_message_properties";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v4, &type, &v12))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v15 = "nw_protocol_ethernet_get_message_properties";
      v7 = "%{public}s called with null protocol";
    }

    else if (v12 == 1)
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
          v15 = "nw_protocol_ethernet_get_message_properties";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v4)
        {
          return;
        }

LABEL_35:
        free(v4);
        return;
      }

      if (!v9)
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v15 = "nw_protocol_ethernet_get_message_properties";
      v7 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (!os_log_type_enabled(v5, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v15 = "nw_protocol_ethernet_get_message_properties";
      v7 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_33:
    _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
    goto LABEL_34;
  }

  if (*(a1 + 40))
  {
    if (a3)
    {
      v3 = a3[1] & 0xFFFFFFF8 | 1;
      *a3 = 4000;
      a3[1] = v3;
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_ethernet_get_message_properties";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v4, &type, &v12))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v15 = "nw_protocol_ethernet_get_message_properties";
    v7 = "%{public}s called with null ethernet";
    goto LABEL_33;
  }

  if (v12 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (!os_log_type_enabled(v5, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v15 = "nw_protocol_ethernet_get_message_properties";
    v7 = "%{public}s called with null ethernet, backtrace limit exceeded";
    goto LABEL_33;
  }

  v10 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v11 = os_log_type_enabled(v5, type);
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v15 = "nw_protocol_ethernet_get_message_properties";
    v7 = "%{public}s called with null ethernet, no backtrace";
    goto LABEL_33;
  }

  if (v11)
  {
    *buf = 136446466;
    v15 = "nw_protocol_ethernet_get_message_properties";
    v16 = 2082;
    v17 = v10;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null ethernet, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v10);
  if (v4)
  {
    goto LABEL_35;
  }
}

uint64_t nw_protocol_ethernet_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v16 = ___ZL43nw_protocol_ethernet_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
      v17 = &__block_descriptor_tmp_19_34161;
      v18 = a1;
      v19 = handle;
      tqh_first = a2->tqh_first;
      do
      {
        if (!tqh_first)
        {
          break;
        }

        v4 = *(tqh_first + 4);
        v5 = (v16)(v15);
        tqh_first = v4;
      }

      while ((v5 & 1) != 0);
      return (*(*(handle[4] + 24) + 96))();
    }

    __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_protocol_ethernet_finalize_output_frames";
    v7 = _os_log_send_and_compose_impl();
    v21 = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &v21, &v20))
    {
      goto LABEL_35;
    }

    if (v21 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v21;
      if (os_log_type_enabled(v8, v21))
      {
        *buf = 136446210;
        v23 = "nw_protocol_ethernet_finalize_output_frames";
        v10 = "%{public}s called with null ethernet";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v20 != 1)
    {
      v8 = __nwlog_obj();
      v9 = v21;
      if (os_log_type_enabled(v8, v21))
      {
        *buf = 136446210;
        v23 = "nw_protocol_ethernet_finalize_output_frames";
        v10 = "%{public}s called with null ethernet, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = v21;
    v14 = os_log_type_enabled(v8, v21);
    if (!backtrace_string)
    {
      if (v14)
      {
        *buf = 136446210;
        v23 = "nw_protocol_ethernet_finalize_output_frames";
        v10 = "%{public}s called with null ethernet, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v14)
    {
      *buf = 136446466;
      v23 = "nw_protocol_ethernet_finalize_output_frames";
      v24 = 2082;
      v25 = backtrace_string;
      v13 = "%{public}s called with null ethernet, dumping backtrace:%{public}s";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_protocol_ethernet_finalize_output_frames";
  v7 = _os_log_send_and_compose_impl();
  v21 = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &v21, &v20))
  {
    goto LABEL_35;
  }

  if (v21 != OS_LOG_TYPE_FAULT)
  {
    if (v20 != 1)
    {
      v8 = __nwlog_obj();
      v9 = v21;
      if (os_log_type_enabled(v8, v21))
      {
        *buf = 136446210;
        v23 = "nw_protocol_ethernet_finalize_output_frames";
        v10 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v9 = v21;
    v12 = os_log_type_enabled(v8, v21);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v23 = "nw_protocol_ethernet_finalize_output_frames";
        v10 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v12)
    {
      *buf = 136446466;
      v23 = "nw_protocol_ethernet_finalize_output_frames";
      v24 = 2082;
      v25 = backtrace_string;
      v13 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_24:
      _os_log_impl(&dword_181A37000, v8, v9, v13, buf, 0x16u);
    }

LABEL_25:
    free(backtrace_string);
    goto LABEL_35;
  }

  v8 = __nwlog_obj();
  v9 = v21;
  if (os_log_type_enabled(v8, v21))
  {
    *buf = 136446210;
    v23 = "nw_protocol_ethernet_finalize_output_frames";
    v10 = "%{public}s called with null protocol";
LABEL_34:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
  }

LABEL_35:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

uint64_t ___ZL43nw_protocol_ethernet_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  nw_frame_unclaim(a2, a2, 0xEu, 0);
  v13 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v13);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 70);
    *(v4 + 4) = *(v5 + 74);
    *v4 = v6;
    v7 = *(a1 + 40);
    v8 = *(v7 + 64);
    *(v4 + 10) = *(v7 + 68);
    *(v4 + 6) = v8;
    *(v4 + 12) = bswap32(*(*(a1 + 40) + 76)) >> 16;
  }

  else
  {
    v10 = __nwlog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        v12 = (v11 + 78);
      }

      else
      {
        v12 = "";
      }

      *buf = 136446466;
      v15 = "nw_protocol_ethernet_finalize_output_frames_block_invoke";
      v16 = 2082;
      v17 = v12;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s %{public}s Frame is no longer valid", buf, 0x16u);
    }
  }

  return 1;
}

uint64_t nw_protocol_ethernet_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v9 = (*(*(handle[4] + 24) + 88))();
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 0x40000000;
      v23 = ___ZL38nw_protocol_ethernet_get_output_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
      v24 = &__block_descriptor_tmp_18_34175;
      v25 = a1;
      tqh_first = a6->tqh_first;
      do
      {
        if (!tqh_first)
        {
          break;
        }

        v11 = *(tqh_first + 4);
        v12 = (v23)(v22);
        tqh_first = v11;
      }

      while ((v12 & 1) != 0);
      return v9;
    }

    __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_protocol_ethernet_get_output_frames";
    v14 = _os_log_send_and_compose_impl();
    v27 = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v14, &v27, &v26))
    {
      goto LABEL_34;
    }

    if (v27 == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = v27;
      if (os_log_type_enabled(v15, v27))
      {
        *buf = 136446210;
        v29 = "nw_protocol_ethernet_get_output_frames";
        v17 = "%{public}s called with null ethernet";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v26 != 1)
    {
      v15 = __nwlog_obj();
      v16 = v27;
      if (os_log_type_enabled(v15, v27))
      {
        *buf = 136446210;
        v29 = "nw_protocol_ethernet_get_output_frames";
        v17 = "%{public}s called with null ethernet, backtrace limit exceeded";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = v27;
    v21 = os_log_type_enabled(v15, v27);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v29 = "nw_protocol_ethernet_get_output_frames";
        v17 = "%{public}s called with null ethernet, no backtrace";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v21)
    {
      *buf = 136446466;
      v29 = "nw_protocol_ethernet_get_output_frames";
      v30 = 2082;
      v31 = backtrace_string;
      v20 = "%{public}s called with null ethernet, dumping backtrace:%{public}s";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_protocol_ethernet_get_output_frames";
  v14 = _os_log_send_and_compose_impl();
  v27 = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (!__nwlog_fault(v14, &v27, &v26))
  {
    goto LABEL_34;
  }

  if (v27 != OS_LOG_TYPE_FAULT)
  {
    if (v26 != 1)
    {
      v15 = __nwlog_obj();
      v16 = v27;
      if (os_log_type_enabled(v15, v27))
      {
        *buf = 136446210;
        v29 = "nw_protocol_ethernet_get_output_frames";
        v17 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v15 = __nwlog_obj();
    v16 = v27;
    v19 = os_log_type_enabled(v15, v27);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v29 = "nw_protocol_ethernet_get_output_frames";
        v17 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v19)
    {
      *buf = 136446466;
      v29 = "nw_protocol_ethernet_get_output_frames";
      v30 = 2082;
      v31 = backtrace_string;
      v20 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_23:
      _os_log_impl(&dword_181A37000, v15, v16, v20, buf, 0x16u);
    }

LABEL_24:
    free(backtrace_string);
    goto LABEL_34;
  }

  v15 = __nwlog_obj();
  v16 = v27;
  if (os_log_type_enabled(v15, v27))
  {
    *buf = 136446210;
    v29 = "nw_protocol_ethernet_get_output_frames";
    v17 = "%{public}s called with null protocol";
LABEL_33:
    _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
  }

LABEL_34:
  if (v14)
  {
    free(v14);
  }

  return 0;
}

uint64_t nw_protocol_ethernet_get_input_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v9 = handle[4];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v37 = (*(*(v9 + 24) + 80))();
      if (*(*&buf[8] + 24))
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 0x40000000;
        v25 = ___ZL37nw_protocol_ethernet_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke;
        v26 = &unk_1E6A310C0;
        v27 = buf;
        v28 = handle;
        v29 = a1;
        v30 = a6;
        tqh_first = a6->tqh_first;
        do
        {
          if (!tqh_first)
          {
            break;
          }

          v11 = *(tqh_first + 4);
          v12 = v25(v24);
          tqh_first = v11;
        }

        while ((v12 & 1) != 0);
      }

      else if (gLogDatapath == 1)
      {
        v23 = __nwlog_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *type = 136446466;
          v33 = "nw_protocol_ethernet_get_input_frames";
          v34 = 2082;
          v35 = handle + 78;
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s No ethernet input frame", type, 0x16u);
        }
      }

      v13 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      return v13;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ethernet_get_input_frames";
    v15 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v15, type, &v31))
    {
      goto LABEL_40;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type[0];
      if (os_log_type_enabled(v16, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ethernet_get_input_frames";
        v18 = "%{public}s called with null ethernet";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v31 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type[0];
      if (os_log_type_enabled(v16, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ethernet_get_input_frames";
        v18 = "%{public}s called with null ethernet, backtrace limit exceeded";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type[0];
    v22 = os_log_type_enabled(v16, type[0]);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ethernet_get_input_frames";
        v18 = "%{public}s called with null ethernet, no backtrace";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v22)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_ethernet_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v21 = "%{public}s called with null ethernet, dumping backtrace:%{public}s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_ethernet_get_input_frames";
  v15 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (!__nwlog_fault(v15, type, &v31))
  {
    goto LABEL_40;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (v31 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type[0];
      if (os_log_type_enabled(v16, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ethernet_get_input_frames";
        v18 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type[0];
    v20 = os_log_type_enabled(v16, type[0]);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_ethernet_get_input_frames";
        v18 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v20)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_ethernet_get_input_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v21 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_27:
      _os_log_impl(&dword_181A37000, v16, v17, v21, buf, 0x16u);
    }

LABEL_28:
    free(backtrace_string);
    goto LABEL_40;
  }

  v16 = __nwlog_obj();
  v17 = type[0];
  if (os_log_type_enabled(v16, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_ethernet_get_input_frames";
    v18 = "%{public}s called with null protocol";
LABEL_39:
    _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
  }

LABEL_40:
  if (v15)
  {
    free(v15);
  }

  return 0;
}

uint64_t ___ZL37nw_protocol_ethernet_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(void *a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v4 = nw_frame_unclaimed_bytes(a2, &v36);
  if (v4)
  {
    if (v36 <= 0xD)
    {
      v16 = __nwlog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = a1[5];
        v18 = (v17 + 78);
        if (!v17)
        {
          v18 = "";
        }

        *buf = 136446722;
        v38 = "nw_protocol_ethernet_get_input_frames_block_invoke";
        v39 = 2082;
        v40 = v18;
        v41 = 1024;
        v42 = v36;
        v13 = "%{public}s %{public}s Received ethernet frame with incorrect length %u";
        v14 = v16;
        v15 = OS_LOG_TYPE_ERROR;
        v19 = 28;
        goto LABEL_46;
      }
    }

    else
    {
      v6 = a1[5];
      v7 = *v4 == *(v6 + 64) && *(v4 + 4) == *(v6 + 68);
      if (v7 || (*v4 == -1 ? (v20 = *(v4 + 4) == -1) : (v20 = 0), v20))
      {
        if (*(v6 + 162) == 1 && (*(v4 + 6) != *(v6 + 70) || *(v4 + 10) != *(v6 + 74)))
        {
          v29 = __nwlog_obj();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_47;
          }

          v31 = a1[5];
          if (v31)
          {
            v32 = (v31 + 78);
          }

          else
          {
            v32 = "";
          }

          *buf = 136446466;
          v38 = "nw_protocol_ethernet_get_input_frames_block_invoke";
          v39 = 2082;
          v40 = v32;
          v13 = "%{public}s %{public}s Received mismatched remote ether address";
          goto LABEL_44;
        }

        if (*(v6 + 76) == bswap32(*(v4 + 12)) >> 16)
        {
          nw_frame_claim(a2, v5, 14, 0);
          return 1;
        }

        v23 = v4;
        v24 = __nwlog_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = a1[5];
          v26 = (v25 + 78);
          if (!v25)
          {
            v26 = "";
          }

          v27 = bswap32(*(v23 + 12));
          v28 = *(v25 + 76);
          *buf = 136446978;
          v38 = "nw_protocol_ethernet_get_input_frames_block_invoke";
          v39 = 2082;
          v40 = v26;
          v41 = 1024;
          v42 = HIWORD(v27);
          v43 = 1024;
          v44 = v28;
          v13 = "%{public}s %{public}s Mismatched ether type %u != %u";
          v14 = v24;
          v15 = OS_LOG_TYPE_ERROR;
          v19 = 34;
          goto LABEL_46;
        }
      }

      else
      {
        v29 = __nwlog_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v21 = a1[5];
          if (v21)
          {
            v22 = (v21 + 78);
          }

          else
          {
            v22 = "";
          }

          *buf = 136446466;
          v38 = "nw_protocol_ethernet_get_input_frames_block_invoke";
          v39 = 2082;
          v40 = v22;
          v13 = "%{public}s %{public}s Received mismatched local ether address";
LABEL_44:
          v14 = v29;
          v15 = OS_LOG_TYPE_ERROR;
LABEL_45:
          v19 = 22;
LABEL_46:
          _os_log_impl(&dword_181A37000, v14, v15, v13, buf, v19);
        }
      }
    }
  }

  else
  {
    v10 = __nwlog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a1[5];
      if (v11)
      {
        v12 = (v11 + 78);
      }

      else
      {
        v12 = "";
      }

      *buf = 136446466;
      v38 = "nw_protocol_ethernet_get_input_frames_block_invoke";
      v39 = 2082;
      v40 = v12;
      v13 = "%{public}s %{public}s Frame is no longer valid";
      v14 = v10;
      v15 = OS_LOG_TYPE_INFO;
      goto LABEL_45;
    }
  }

LABEL_47:
  --*(*(a1[4] + 8) + 24);
  v33 = (a1[7] + 8);
  v34 = *(a2 + 32);
  v35 = *(a2 + 40);
  if (v34)
  {
    v33 = (v34 + 40);
  }

  *v33 = v35;
  *v35 = v34;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  nw_frame_finalize(a2);
  return 1;
}

uint64_t nw_protocol_ethernet_remove_input_handler(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_ethernet_remove_input_handler";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v9, &type, &v17))
    {
      goto LABEL_40;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v17 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v20 = "nw_protocol_ethernet_remove_input_handler";
        v12 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_39;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v14 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (!v14)
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v20 = "nw_protocol_ethernet_remove_input_handler";
        v12 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_39;
      }

      if (v14)
      {
        *buf = 136446466;
        v20 = "nw_protocol_ethernet_remove_input_handler";
        v21 = 2082;
        v22 = backtrace_string;
        v15 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_29:
        _os_log_impl(&dword_181A37000, v10, v11, v15, buf, 0x16u);
      }

LABEL_30:
      free(backtrace_string);
      goto LABEL_40;
    }

    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v20 = "nw_protocol_ethernet_remove_input_handler";
    v12 = "%{public}s called with null protocol";
LABEL_39:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
LABEL_40:
    if (v9)
    {
      free(v9);
    }

    return 0;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_ethernet_remove_input_handler";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v9, &type, &v17))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "nw_protocol_ethernet_remove_input_handler";
      v12 = "%{public}s called with null ethernet";
      goto LABEL_39;
    }

    if (v17 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v20 = "nw_protocol_ethernet_remove_input_handler";
      v12 = "%{public}s called with null ethernet, backtrace limit exceeded";
      goto LABEL_39;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v16 = os_log_type_enabled(v10, type);
    if (backtrace_string)
    {
      if (v16)
      {
        *buf = 136446466;
        v20 = "nw_protocol_ethernet_remove_input_handler";
        v21 = 2082;
        v22 = backtrace_string;
        v15 = "%{public}s called with null ethernet, dumping backtrace:%{public}s";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (!v16)
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v20 = "nw_protocol_ethernet_remove_input_handler";
    v12 = "%{public}s called with null ethernet, no backtrace";
    goto LABEL_39;
  }

  if (a2->output_handler == a1)
  {
    v6 = a2;
    nw_protocol_set_output_handler(a2, 0);
    a2 = v6;
  }

  if (a1->default_input_handler != a2)
  {
    return 0;
  }

  output_handler = a1->output_handler;
  if (output_handler)
  {
    (output_handler->callbacks->remove_input_handler)();
  }

  nw_protocol_set_input_handler(a1, 0);
  if (a3)
  {
    a1->handle = 0;
    free(handle);
  }

  return 1;
}

uint64_t nw_protocol_ethernet_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      nw_protocol_set_input_handler(a1, a2);
      uuid_clear(handle);
      if (!a2->output_handler)
      {
        nw_protocol_set_output_handler(a2, handle);
      }

      v4 = (a2->callbacks->get_path)(a2);
      if (v4)
      {
        v5 = v4;
        custom_ethertype = _nw_path_get_custom_ethertype(v5);

        *(handle + 38) = custom_ethertype;
      }

      v7 = (a2->callbacks->get_local_endpoint)(a2);
      if (v7)
      {
        v8 = v7;
        ethernet_address = _nw_endpoint_get_ethernet_address(v8);

        if (ethernet_address)
        {
          v10 = *ethernet_address;
          *(handle + 34) = *(ethernet_address + 4);
          *(handle + 16) = v10;
        }

        if (!*(handle + 38))
        {
          v11 = v8;
          address_family = _nw_endpoint_get_address_family(v11);

          if (address_family == 2)
          {
            v13 = 2048;
            goto LABEL_15;
          }

          if (address_family == 30)
          {
            v13 = -31011;
LABEL_15:
            *(handle + 38) = v13;
          }
        }
      }

      v14 = (a2->callbacks->get_remote_endpoint)(a2);
      if (!v14)
      {
        return 1;
      }

      v15 = v14;
      v16 = _nw_endpoint_get_ethernet_address(v15);

      if (v16)
      {
        v17 = *v16;
        *(handle + 37) = *(v16 + 4);
        *(handle + 70) = v17;
      }

      if (*(handle + 38))
      {
        return 1;
      }

      v18 = v15;
      v19 = _nw_endpoint_get_address_family(v18);

      if (v19 == 30)
      {
        v20 = -31011;
      }

      else
      {
        if (v19 != 2)
        {
          return 1;
        }

        v20 = 2048;
      }

      *(handle + 38) = v20;
      return 1;
    }

    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_protocol_ethernet_add_input_handler";
    v22 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v22, &type, &v30))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_ethernet_add_input_handler";
        v25 = "%{public}s called with null ethernet";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if (v30 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_ethernet_add_input_handler";
        v25 = "%{public}s called with null ethernet, backtrace limit exceeded";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v29 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v29)
      {
        *buf = 136446210;
        v33 = "nw_protocol_ethernet_add_input_handler";
        v25 = "%{public}s called with null ethernet, no backtrace";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if (v29)
    {
      *buf = 136446466;
      v33 = "nw_protocol_ethernet_add_input_handler";
      v34 = 2082;
      v35 = backtrace_string;
      v28 = "%{public}s called with null ethernet, dumping backtrace:%{public}s";
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  __nwlog_obj();
  *buf = 136446210;
  v33 = "nw_protocol_ethernet_add_input_handler";
  v22 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (!__nwlog_fault(v22, &type, &v30))
  {
    goto LABEL_54;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v30 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v33 = "nw_protocol_ethernet_add_input_handler";
        v25 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v27 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v27)
      {
        *buf = 136446210;
        v33 = "nw_protocol_ethernet_add_input_handler";
        v25 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if (v27)
    {
      *buf = 136446466;
      v33 = "nw_protocol_ethernet_add_input_handler";
      v34 = 2082;
      v35 = backtrace_string;
      v28 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_43:
      _os_log_impl(&dword_181A37000, v23, v24, v28, buf, 0x16u);
    }

LABEL_44:
    free(backtrace_string);
    goto LABEL_54;
  }

  v23 = __nwlog_obj();
  v24 = type;
  if (os_log_type_enabled(v23, type))
  {
    *buf = 136446210;
    v33 = "nw_protocol_ethernet_add_input_handler";
    v25 = "%{public}s called with null protocol";
LABEL_53:
    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
  }

LABEL_54:
  if (v22)
  {
    free(v22);
  }

  return 0;
}

uint64_t nw_protocol_http_resumable_upload_create(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(1uLL, 0x230uLL, 0xAD482A75uLL);
  v7 = v6;
  if (v6)
  {
    bzero(v6, 0x230uLL);
LABEL_6:
    if (gLogDatapath == 1)
    {
      v34 = __nwlog_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_http_resumable_upload_create";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 114;
        *&buf[22] = 2080;
        v51 = " ";
        _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", buf, 0x20u);
      }
    }

    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_protocol_http_resumable_upload_create";
  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v51 = 560;
  v8 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v8);
  if (result || (free(v8), bzero(0, 0x230uLL), MEMORY[0xF8] = 0, MEMORY[0x100] &= ~1u, MEMORY[0x108] = 0, MEMORY[0x110] &= ~1u, MEMORY[0x118] = 0, MEMORY[0x120] &= ~1u, MEMORY[0x158] = 0, MEMORY[0x160] &= ~1u, MEMORY[0x168] = 0, MEMORY[0x170] &= ~1u, MEMORY[0x190] = 0, MEMORY[0x198] &= ~1u, MEMORY[0x1D8] = 0, MEMORY[0x1E0] &= ~1u, MEMORY[0x1E8] = 0, MEMORY[0x1F0] &= ~1u, MEMORY[0x1F8] = 0, MEMORY[0x200] &= ~1u, MEMORY[0x208] = 0, MEMORY[0x210] &= ~1u, MEMORY[0x218] = 0, MEMORY[0x220] &= ~1u, pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once), networkd_settings_init(), os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR), *buf = 136446210, *&buf[4] = "nw_protocol_http_resumable_upload_create", v10 = _os_log_send_and_compose_impl(), result = __nwlog_should_abort(v10), result))
  {
    __break(1u);
    return result;
  }

  free(v10);
  if ((MEMORY[0xC6] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (nw_protocol_http_resumable_upload_identifier::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_resumable_upload_identifier::onceToken, &__block_literal_global_34230);
  }

  *(v7 + 16) = &nw_protocol_http_resumable_upload_identifier::protocol_identifier;
  if (nw_protocol_http_resumable_upload_get_callbacks(void)::onceToken != -1)
  {
    dispatch_once(&nw_protocol_http_resumable_upload_get_callbacks(void)::onceToken, &__block_literal_global_44_34231);
  }

  *(v7 + 24) = &nw_protocol_http_resumable_upload_get_callbacks(void)::protocol_callbacks;
  *(v7 + 40) = v7;
  if (a3)
  {
    a3 = os_retain(a3);
  }

  v11 = *(v7 + 512);
  if (v11)
  {
    v12 = *(v7 + 504);
    if (v12)
    {
      os_release(v12);
      v11 = *(v7 + 512);
    }
  }

  *(v7 + 504) = a3;
  *(v7 + 512) = v11 | 1;
  if (a4)
  {
    v13 = os_retain(a4);
    v14 = *(v7 + 528);
    if ((v14 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v13 = 0;
    v14 = *(v7 + 528);
    if ((v14 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v15 = *(v7 + 520);
  if (v15)
  {
    os_release(v15);
    v14 = *(v7 + 528);
  }

LABEL_22:
  *(v7 + 520) = v13;
  *(v7 + 528) = v14 | 1;
  v16 = nw_parameters_copy_context(a4);
  v17 = *(v7 + 544);
  if ((v17 & 1) != 0 && *(v7 + 536))
  {
    v18 = v16;
    os_release(*(v7 + 536));
    v16 = v18;
    v17 = *(v7 + 544);
  }

  *(v7 + 536) = v16;
  *(v7 + 544) = v17 | 1;
  if (nw_protocol_copy_http_resumable_upload_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_resumable_upload_definition_onceToken, &__block_literal_global_44_76913);
  }

  v19 = nw_protocol_copy_http_resumable_upload_definition_http_resumable_upload_definition;
  v20 = nw_parameters_copy_protocol_options_for_definition(a4, v19);
  v21 = v20;
  if (!v20)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
    v31 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (__nwlog_fault(v31, type, &v49))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v32 = __nwlog_obj();
        v33 = type[0];
        if (os_log_type_enabled(v32, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
          _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null options", buf, 0xCu);
        }

        goto LABEL_80;
      }

      if (v49 != 1)
      {
        v32 = __nwlog_obj();
        v42 = type[0];
        if (os_log_type_enabled(v32, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
          _os_log_impl(&dword_181A37000, v32, v42, "%{public}s called with null options, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_80;
      }

      backtrace_string = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v38 = type[0];
      v39 = os_log_type_enabled(v32, type[0]);
      if (!backtrace_string)
      {
        if (v39)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
          _os_log_impl(&dword_181A37000, v32, v38, "%{public}s called with null options, no backtrace", buf, 0xCu);
        }

        goto LABEL_80;
      }

      if (v39)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v32, v38, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_68:

      free(backtrace_string);
    }

LABEL_81:
    if (v31)
    {
      free(v31);
    }

    v24 = 0;
    goto LABEL_32;
  }

  v22 = _nw_protocol_options_copy_definition(v20);
  if (nw_protocol_copy_http_resumable_upload_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_resumable_upload_definition_onceToken, &__block_literal_global_44_76913);
  }

  is_equal = nw_protocol_definition_is_equal(v22, nw_protocol_copy_http_resumable_upload_definition_http_resumable_upload_definition);

  if (!is_equal)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
    v31 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v49 = 0;
    if (__nwlog_fault(v31, type, &v49))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v32 = __nwlog_obj();
        v36 = type[0];
        if (os_log_type_enabled(v32, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
          _os_log_impl(&dword_181A37000, v32, v36, "%{public}s protocol options are not http resumable upload", buf, 0xCu);
        }

LABEL_80:

        goto LABEL_81;
      }

      if (v49 != 1)
      {
        v32 = __nwlog_obj();
        v43 = type[0];
        if (os_log_type_enabled(v32, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
          _os_log_impl(&dword_181A37000, v32, v43, "%{public}s protocol options are not http resumable upload, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_80;
      }

      backtrace_string = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v40 = type[0];
      v41 = os_log_type_enabled(v32, type[0]);
      if (!backtrace_string)
      {
        if (v41)
        {
          *buf = 136446210;
          *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
          _os_log_impl(&dword_181A37000, v32, v40, "%{public}s protocol options are not http resumable upload, no backtrace", buf, 0xCu);
        }

        goto LABEL_80;
      }

      if (v41)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http_resumable_upload_options_copy_resume_endpoint";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v32, v40, "%{public}s protocol options are not http resumable upload, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_68;
    }

    goto LABEL_81;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v51 = __Block_byref_object_copy__75915;
  v52 = __Block_byref_object_dispose__75916;
  v53 = 0;
  *type = MEMORY[0x1E69E9820];
  v45 = 3221225472;
  v46 = __nw_http_resumable_upload_options_copy_resume_endpoint_block_invoke;
  v47 = &unk_1E6A3A858;
  v48 = buf;
  nw_protocol_options_access_handle(v21, type);
  v24 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

LABEL_32:
  v25 = *(v7 + 496);
  if (v25)
  {
    v26 = *(v7 + 488);
    if (v26)
    {
      os_release(v26);
      v25 = *(v7 + 496);
    }
  }

  *(v7 + 488) = v24;
  *(v7 + 496) = v25 | 1;
  if (v24)
  {
    v27 = 3;
  }

  else
  {
    v27 = 1;
  }

  *(v7 + 553) = v27;
  original_content_length = nw_http_resumable_upload_options_get_original_content_length(v21);
  *(v7 + 200) = 0;
  *(v7 + 456) = original_content_length;
  *(v7 + 552) = 3;
  *(v7 + 72) = v7 + 200;
  *(v7 + 208) = v7 + 200;
  *(v7 + 216) = 0;
  *(v7 + 224) = v7 + 216;
  *(v7 + 232) = 0;
  *(v7 + 240) = v7 + 232;
  *(v7 + 340) = 2;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v29 = nw_protocol_copy_http_definition_http_definition;
  nw_protocol_plugin_metadata_set_callbacks(v7, v29, nw_protocol_http_resumable_upload_create::$_0::__invoke, nw_protocol_http_resumable_upload_create::$_1::__invoke);
  if (v29)
  {
    os_release(v29);
  }

  *(v7 + 88) = v7 + 344;
  nw_protocol_plugin_retry_set_callbacks(v7, nw_protocol_http_resumable_upload_create::$_2::__invoke, nw_protocol_http_resumable_upload_create::$_3::__invoke, nw_protocol_http_resumable_upload_create::$_4::__invoke);
  *(v7 + 64) = v7 + 104;
  nw_protocol_plugin_name_set_callbacks(v7, nw_protocol_http_resumable_upload_create::$_5::__invoke);
  if (v21)
  {
    os_release(v21);
  }

  if (v19)
  {
    os_release(v19);
  }

  return v7;
}

void sub_182594B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_http_resumable_upload_create::$_2::__invoke(nw_protocol_http_resumable_upload_create::$_2 *this, nw_protocol *a2, nw_protocol *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!this)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "operator()";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_34;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v13 != 1)
      {
        v6 = __nwlog_obj();
        v7 = type;
        if (!os_log_type_enabled(v6, type))
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v16 = "operator()";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_33;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v7 = type;
      v10 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (!v10)
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v16 = "operator()";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_33;
      }

      if (v10)
      {
        *buf = 136446466;
        v16 = "operator()";
        v17 = 2082;
        v18 = backtrace_string;
        v11 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_23:
        _os_log_impl(&dword_181A37000, v6, v7, v11, buf, 0x16u);
      }

LABEL_24:
      free(backtrace_string);
      goto LABEL_34;
    }

    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v16 = "operator()";
    v8 = "%{public}s called with null protocol";
LABEL_33:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
LABEL_34:
    if (v5)
    {
      free(v5);
    }

    return 0;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "operator()";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "operator()";
      v8 = "%{public}s called with null http_resumable_upload";
      goto LABEL_33;
    }

    if (v13 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_34;
      }

      *buf = 136446210;
      v16 = "operator()";
      v8 = "%{public}s called with null http_resumable_upload, backtrace limit exceeded";
      goto LABEL_33;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v12 = os_log_type_enabled(v6, type);
    if (backtrace_string)
    {
      if (v12)
      {
        *buf = 136446466;
        v16 = "operator()";
        v17 = 2082;
        v18 = backtrace_string;
        v11 = "%{public}s called with null http_resumable_upload, dumping backtrace:%{public}s";
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if (!v12)
    {
      goto LABEL_34;
    }

    *buf = 136446210;
    v16 = "operator()";
    v8 = "%{public}s called with null http_resumable_upload, no backtrace";
    goto LABEL_33;
  }

  if ((*(v3 + 554) & 2) != 0)
  {
    return 1;
  }

  if (*(v3 + 553) - 2 <= 2)
  {
    *(v3 + 553) = 3;
    nw_http_resumable_upload_reissue(v3);
    return 1;
  }

  return 0;
}

BOOL nw_http_resumable_upload_reissue(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 472))
  {
    __nwlog_obj();
    LODWORD(buf[0]) = 136446210;
    *(buf + 4) = "nw_http_resumable_upload_reissue";
    v34 = _os_log_send_and_compose_impl();
    LOBYTE(v59[0]) = 16;
    LOBYTE(v49) = 0;
    if (!__nwlog_fault(v34, v59, &v49))
    {
      goto LABEL_82;
    }

    if (LOBYTE(v59[0]) == 17)
    {
      v35 = __nwlog_obj();
      v36 = v59[0];
      if (!os_log_type_enabled(v35, v59[0]))
      {
        goto LABEL_82;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http_resumable_upload_reissue";
      v37 = "%{public}s called with null http_resumable_upload->request_metadata";
    }

    else if (v49 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = v59[0];
      v39 = os_log_type_enabled(v35, v59[0]);
      if (backtrace_string)
      {
        if (v39)
        {
          LODWORD(buf[0]) = 136446466;
          *(buf + 4) = "nw_http_resumable_upload_reissue";
          WORD2(buf[1]) = 2082;
          *(&buf[1] + 6) = backtrace_string;
          _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null http_resumable_upload->request_metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_82;
      }

      if (!v39)
      {
LABEL_82:
        if (v34)
        {
          free(v34);
        }

        return 0;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http_resumable_upload_reissue";
      v37 = "%{public}s called with null http_resumable_upload->request_metadata, no backtrace";
    }

    else
    {
      v35 = __nwlog_obj();
      v36 = v59[0];
      if (!os_log_type_enabled(v35, v59[0]))
      {
        goto LABEL_82;
      }

      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "nw_http_resumable_upload_reissue";
      v37 = "%{public}s called with null http_resumable_upload->request_metadata, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0xCu);
    goto LABEL_82;
  }

  if ((*(a1 + 554) & 2) != 0)
  {
    return 1;
  }

  if ((*(a1 + 198) & 1) == 0 && gLogDatapath == 1)
  {
    v40 = __nwlog_obj();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v41 = *(a1 + 552);
      LODWORD(buf[0]) = 136446978;
      *(buf + 4) = "nw_http_resumable_upload_reissue";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = a1 + 114;
      HIWORD(buf[2]) = 2080;
      v63 = " ";
      LOWORD(v64) = 1024;
      *(&v64 + 2) = v41;
      _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled with resumable upload limit %u", buf, 0x26u);
    }
  }

  if (!*(a1 + 552))
  {
    if ((*(a1 + 198) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_http_resumable_upload_reissue";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = a1 + 114;
      HIWORD(buf[2]) = 2080;
      v63 = " ";
      v19 = "%{public}s %{public}s%snot reissuing because we reached the limit";
      v20 = v18;
      v21 = OS_LOG_TYPE_INFO;
      goto LABEL_26;
    }

    return 0;
  }

  if (!*(a1 + 488))
  {
    if ((*(a1 + 198) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      LODWORD(buf[0]) = 136446722;
      *(buf + 4) = "nw_http_resumable_upload_reissue";
      WORD2(buf[1]) = 2082;
      *(&buf[1] + 6) = a1 + 114;
      HIWORD(buf[2]) = 2080;
      v63 = " ";
      v19 = "%{public}s %{public}s%scannot resume without a resume endpoint";
      v20 = v22;
      v21 = OS_LOG_TYPE_ERROR;
LABEL_26:
      _os_log_impl(&dword_181A37000, v20, v21, v19, buf, 0x20u);
      return 0;
    }

    return 0;
  }

  nw_http_resumable_upload_update_request_metadata(a1);
  v2 = nw_http_metadata_copy_request(*(a1 + 472));
  v3 = v2;
  if ((*(a1 + 554) & 1) == 0)
  {
    nw_http_fields_remove_by_name(v2, "Cookie");
  }

  buf[0] = 0;
  buf[1] = buf;
  buf[2] = 0x3802000000;
  v63 = __Block_byref_object_copy__34260;
  v64 = __Block_byref_object_dispose__34261;
  metadata_for_request = nw_http_create_metadata_for_request(v3);
  v66 |= 1u;
  v4 = *(buf[1] + 40);
  v5 = v4 != 0;
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    LODWORD(v59[0]) = 136446210;
    *(v59 + 4) = "nw_http_resumable_upload_reissue";
    v23 = _os_log_send_and_compose_impl();
    LOBYTE(v49) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v23, &v49, &type))
    {
      goto LABEL_48;
    }

    if (v49 == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = v49;
      if (!os_log_type_enabled(gLogObj, v49))
      {
        goto LABEL_48;
      }

      LODWORD(v59[0]) = 136446210;
      *(v59 + 4) = "nw_http_resumable_upload_reissue";
      v26 = "%{public}s Unable to create new request metadata";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v27 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = v49;
      v28 = os_log_type_enabled(v24, v49);
      if (v27)
      {
        if (v28)
        {
          LODWORD(v59[0]) = 136446466;
          *(v59 + 4) = "nw_http_resumable_upload_reissue";
          WORD2(v59[1]) = 2082;
          *(&v59[1] + 6) = v27;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Unable to create new request metadata, dumping backtrace:%{public}s", v59, 0x16u);
        }

        free(v27);
        goto LABEL_48;
      }

      if (!v28)
      {
LABEL_48:
        if (v23)
        {
          free(v23);
        }

        goto LABEL_59;
      }

      LODWORD(v59[0]) = 136446210;
      *(v59 + 4) = "nw_http_resumable_upload_reissue";
      v26 = "%{public}s Unable to create new request metadata, no backtrace";
    }

    else
    {
      v24 = __nwlog_obj();
      v25 = v49;
      if (!os_log_type_enabled(v24, v49))
      {
        goto LABEL_48;
      }

      LODWORD(v59[0]) = 136446210;
      *(v59 + 4) = "nw_http_resumable_upload_reissue";
      v26 = "%{public}s Unable to create new request metadata, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v24, v25, v26, v59, 0xCu);
    goto LABEL_48;
  }

  *(a1 + 554) |= 2u;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3802000000;
  v59[3] = __Block_byref_object_copy__29;
  v59[4] = __Block_byref_object_dispose__30;
  parameters = nw_protocol_get_parameters(a1);
  if (parameters)
  {
    parameters = os_retain(parameters);
  }

  v60 = parameters;
  v61 |= 1u;
  nw_http_messaging_options_create_transaction_in_parameters(*(v59[1] + 40), a1, 4);
  nw_protocol_plugin_metadata_prepare_for_reissue(a1 + 200, 0);
  v7 = *(a1 + 553) == 3;
  if (*(a1 + 553) == 3)
  {
    *(a1 + 553) = 4;
  }

  v8 = *(a1 + 536);
  v9 = *(a1 + 488);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 0x40000000;
  v46[2] = ___ZL32nw_http_resumable_upload_reissueP33nw_protocol_http_resumable_upload_block_invoke;
  v46[3] = &unk_1E6A311C0;
  v46[4] = buf;
  v47 = v7;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 0x40000000;
  v44[2] = ___ZL32nw_http_resumable_upload_reissueP33nw_protocol_http_resumable_upload_block_invoke_2;
  v44[3] = &unk_1E6A31210;
  v44[5] = buf;
  v44[6] = a1;
  v45 = v7;
  v44[4] = v59;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 0x40000000;
  v43[2] = ___ZL32nw_http_resumable_upload_reissueP33nw_protocol_http_resumable_upload_block_invoke_4;
  v43[3] = &__block_descriptor_tmp_37_34269;
  v43[4] = a1;
  nw_protocol_plugin_retry_reissue_output_frames(a1 + 344, a1, v8, v9, 0, 2, 1, v46, v44, v43);
  v10 = (*(a1 + 552))-- - 1;
  if (v10 < 0x100)
  {
    goto LABEL_56;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = *(a1 + 552);
  v49 = 136446978;
  v50 = "nw_http_resumable_upload_reissue";
  v51 = 2082;
  v52 = "http_resumable_upload->limit";
  v53 = 2048;
  v54 = 1;
  v55 = 2048;
  v56 = v11;
  v12 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v42 = 0;
  if (__nwlog_fault(v12, &type, &v42))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        v15 = *(a1 + 552);
        v49 = 136446978;
        v50 = "nw_http_resumable_upload_reissue";
        v51 = 2082;
        v52 = "http_resumable_upload->limit";
        v53 = 2048;
        v54 = 1;
        v55 = 2048;
        v56 = v15;
        v16 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_52:
        _os_log_impl(&dword_181A37000, v13, v14, v16, &v49, 0x2Au);
      }
    }

    else if (v42 == 1)
    {
      v29 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v30 = os_log_type_enabled(v13, type);
      if (v29)
      {
        if (v30)
        {
          v31 = *(a1 + 552);
          v49 = 136447234;
          v50 = "nw_http_resumable_upload_reissue";
          v51 = 2082;
          v52 = "http_resumable_upload->limit";
          v53 = 2048;
          v54 = 1;
          v55 = 2048;
          v56 = v31;
          v57 = 2082;
          v58 = v29;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", &v49, 0x34u);
        }

        free(v29);
        goto LABEL_53;
      }

      if (v30)
      {
        v33 = *(a1 + 552);
        v49 = 136446978;
        v50 = "nw_http_resumable_upload_reissue";
        v51 = 2082;
        v52 = "http_resumable_upload->limit";
        v53 = 2048;
        v54 = 1;
        v55 = 2048;
        v56 = v33;
        v16 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
        goto LABEL_52;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        v32 = *(a1 + 552);
        v49 = 136446978;
        v50 = "nw_http_resumable_upload_reissue";
        v51 = 2082;
        v52 = "http_resumable_upload->limit";
        v53 = 2048;
        v54 = 1;
        v55 = 2048;
        v56 = v32;
        v16 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
        goto LABEL_52;
      }
    }
  }

LABEL_53:
  if (v12)
  {
    free(v12);
  }

  *(a1 + 552) = 0;
LABEL_56:
  *(a1 + 554) &= ~2u;
  _Block_object_dispose(v59, 8);
  if ((v61 & 1) != 0 && v60)
  {
    os_release(v60);
  }

LABEL_59:
  _Block_object_dispose(buf, 8);
  if ((v66 & 1) != 0 && metadata_for_request)
  {
    os_release(metadata_for_request);
  }

  if (v3)
  {
    os_release(v3);
  }

  return v5;
}

void nw_http_resumable_upload_update_request_metadata(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 472))
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_resumable_upload_update_request_metadata";
    v13 = _os_log_send_and_compose_impl();
    __str[0] = 16;
    v20 = 0;
    if (!__nwlog_fault(v13, __str, &v20))
    {
      goto LABEL_40;
    }

    if (__str[0] == 17)
    {
      v14 = __nwlog_obj();
      v15 = __str[0];
      if (!os_log_type_enabled(v14, __str[0]))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_resumable_upload_update_request_metadata";
      v16 = "%{public}s called with null http_resumable_upload->request_metadata";
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = __str[0];
      v18 = os_log_type_enabled(v14, __str[0]);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_resumable_upload_update_request_metadata";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null http_resumable_upload->request_metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_40;
      }

      if (!v18)
      {
LABEL_40:
        if (v13)
        {
          free(v13);
        }

        return;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_resumable_upload_update_request_metadata";
      v16 = "%{public}s called with null http_resumable_upload->request_metadata, no backtrace";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = __str[0];
      if (!os_log_type_enabled(v14, __str[0]))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http_resumable_upload_update_request_metadata";
      v16 = "%{public}s called with null http_resumable_upload->request_metadata, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    goto LABEL_40;
  }

  if ((*(a1 + 198) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 553) - 1 > 4)
      {
        v3 = "error";
      }

      else
      {
        v3 = off_1E6A312D0[(*(a1 + 553) - 1)];
      }

      *buf = 136446978;
      *&buf[4] = "nw_http_resumable_upload_update_request_metadata";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 114;
      v24 = 2080;
      v25 = " ";
      v26 = 2080;
      v27 = v3;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sstate: %s", buf, 0x2Au);
    }
  }

  v4 = nw_http_metadata_copy_request(*(a1 + 472));
  v5 = v4;
  v6 = *(a1 + 553);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      url = nw_endpoint_get_url(*(a1 + 488));
      nw_http_request_set_url(v5, url);
      nw_http_request_set_method(v5, "HEAD");
      nw_http_fields_remove_by_name(v5, "Content-Length");
      nw_http_fields_remove_by_name(v5, "Upload-Complete");
      nw_http_fields_remove_by_name(v5, "Upload-Offset");
    }

    else if (v6 == 4 || v6 == 5)
    {
      *(a1 + 553) = 0;
      if (!v4)
      {
        return;
      }

      goto LABEL_22;
    }

LABEL_21:
    if (!v5)
    {
      return;
    }

    goto LABEL_22;
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      v7 = nw_endpoint_get_url(*(a1 + 488));
      nw_http_request_set_url(v5, v7);
      nw_http_request_set_method(v5, "PATCH");
      nw_http_fields_set_value_by_name(v5, "Content-Type", "application/partial-upload");
      nw_http_fields_set_value_by_name(v5, "Upload-Complete", "?1");
      *buf = 0;
      *&buf[8] = 0;
      *&buf[13] = 0;
      snprintf(buf, 0x15uLL, "%llu", *(a1 + 464));
      nw_http_fields_set_value_by_name(v5, "Upload-Offset", buf);
      v8 = *(a1 + 456);
      v9 = *(a1 + 464);
      v10 = v8 >= v9;
      v11 = v8 - v9;
      if (v10)
      {
        *__str = 0;
        v22[0] = 0;
        *(v22 + 5) = 0;
        snprintf(__str, 0x15uLL, "%llu", v11);
        nw_http_fields_set_value_by_name(v5, "Content-Length", __str);
        if (!v5)
        {
          return;
        }

        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  nw_http_fields_set_value_by_name(v4, "Upload-Draft-Interop-Version", "6");
  nw_http_fields_set_value_by_name(v5, "Upload-Complete", "?1");
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = ___ZL48nw_http_resumable_upload_update_request_metadataP33nw_protocol_http_resumable_upload_block_invoke;
  v19[3] = &__block_descriptor_tmp_39_34297;
  v19[4] = a1;
  nw_http_fields_access_value_by_name(v5, "Content-Length", v19);
  if (v5)
  {
LABEL_22:
    os_release(v5);
  }
}

uint64_t __Block_byref_object_copy__34260(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__34261(uint64_t result)
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

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(result + 48) & 0xFE | *(a2 + 48) & 1;
  *(a2 + 40) = 0;
  *(a2 + 48) &= ~1u;
  return result;
}

uint64_t __Block_byref_object_dispose__30(uint64_t result)
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

uint64_t ___ZL32nw_http_resumable_upload_reissueP33nw_protocol_http_resumable_upload_block_invoke_2(uint64_t a1)
{
  if (nw_protocol_copy_http_client_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_client_definition_onceToken, &__block_literal_global_85);
  }

  v2 = nw_protocol_copy_http_client_definition_definition;
  identifier = nw_protocol_definition_get_identifier(v2);
  if (v2)
  {
    os_release(v2);
  }

  v4 = *(a1 + 48);
  do
  {
    v4 = *(v4 + 48);
    if (!v4)
    {
      return 1;
    }
  }

  while (!nw_protocols_are_equal(*(v4 + 16), identifier));
  v5 = nw_parameters_copy_protocol_options_legacy(*(*(*(a1 + 32) + 8) + 40), v4);
  v6 = nw_http_client_options_copy_resend_handler(v5);
  v7 = v6 == 0;
  if (v6)
  {
    v8 = *(*(a1 + 32) + 8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = ___ZL32nw_http_resumable_upload_reissueP33nw_protocol_http_resumable_upload_block_invoke_3;
    v13[3] = &unk_1E6A311E8;
    v9 = *(a1 + 48);
    v13[4] = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = v6;
    (*(v6 + 2))(v6, *(v8 + 40), *(v9 + 464), v10, v13);
    _Block_release(v11);
  }

  if (v5)
  {
    os_release(v5);
  }

  return v7;
}

void nw_http_resumable_upload_destroy(_BYTE *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((a1[198] & 1) == 0 && gLogDatapath == 1)
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136446722;
      v16 = "nw_http_resumable_upload_destroy";
      v17 = 2082;
      v18 = a1 + 114;
      v19 = 2080;
      v20 = " ";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%scalled", &v15, 0x20u);
    }
  }

  if (*(a1 + 112))
  {
    *(a1 + 226) |= 0x40u;
    if ((a1[198] & 1) == 0 && gLogDatapath == 1)
    {
      v2 = __nwlog_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136446722;
        v16 = "nw_http_resumable_upload_destroy";
        v17 = 2082;
        v18 = a1 + 114;
        v19 = 2080;
        v20 = " ";
        _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sdeferring destroy because the request is being reissued", &v15, 0x20u);
      }
    }
  }

  else
  {
    if (a1[544])
    {
      v3 = *(a1 + 67);
      if (v3)
      {
        os_release(v3);
      }
    }

    *(a1 + 67) = 0;
    if (a1[528])
    {
      v4 = *(a1 + 65);
      if (v4)
      {
        os_release(v4);
      }
    }

    *(a1 + 65) = 0;
    if (a1[512])
    {
      v5 = *(a1 + 63);
      if (v5)
      {
        os_release(v5);
      }
    }

    *(a1 + 63) = 0;
    if (a1[496])
    {
      v6 = *(a1 + 61);
      if (v6)
      {
        os_release(v6);
      }
    }

    *(a1 + 61) = 0;
    if (a1[480])
    {
      v7 = *(a1 + 59);
      if (v7)
      {
        os_release(v7);
      }
    }

    *(a1 + 59) = 0;
    if (a1[408])
    {
      v8 = *(a1 + 50);
      if (v8)
      {
        _Block_release(v8);
      }
    }

    *(a1 + 50) = 0;
    if (a1[368])
    {
      v9 = *(a1 + 45);
      if (v9)
      {
        _Block_release(v9);
      }
    }

    *(a1 + 45) = 0;
    if (a1[352])
    {
      v10 = *(a1 + 43);
      if (v10)
      {
        os_release(v10);
      }
    }

    *(a1 + 43) = 0;
    if (a1[288])
    {
      v11 = *(a1 + 35);
      if (v11)
      {
        os_release(v11);
      }
    }

    *(a1 + 35) = 0;
    if (a1[272])
    {
      v12 = *(a1 + 33);
      if (v12)
      {
        os_release(v12);
      }
    }

    *(a1 + 33) = 0;
    if (a1[256])
    {
      v13 = *(a1 + 31);
      if (v13)
      {
        os_release(v13);
      }
    }

    free(a1);
  }
}

void ___ZL48nw_http_resumable_upload_update_request_metadataP33nw_protocol_http_resumable_upload_block_invoke(uint64_t a1, char *__s)
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
    *(*(a1 + 32) + 456) = std::stoull(&__dst, 0, 10);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

void nw_protocol_http_resumable_upload_create::$_1::__invoke(uint64_t a1, int a2, void *object, int a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v27 = "operator()";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v13, &type, &v24))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null protocol";
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v18 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v27 = "operator()";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_69:
        if (!v13)
        {
          return;
        }

        goto LABEL_70;
      }

      if (!v18)
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_68;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v27 = "operator()";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v13, &type, &v24))
    {
      goto LABEL_69;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v24 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (!os_log_type_enabled(v14, type))
        {
          goto LABEL_69;
        }

        *buf = 136446210;
        v27 = "operator()";
        v16 = "%{public}s called with null http_resumable_upload, backtrace limit exceeded";
        goto LABEL_68;
      }

      v19 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v20 = os_log_type_enabled(v14, type);
      if (!v19)
      {
        if (!v20)
        {
          goto LABEL_69;
        }

        *buf = 136446210;
        v27 = "operator()";
        v16 = "%{public}s called with null http_resumable_upload, no backtrace";
        goto LABEL_68;
      }

      if (!v20)
      {
        goto LABEL_50;
      }

      *buf = 136446466;
      v27 = "operator()";
      v28 = 2082;
      v29 = v19;
      v21 = "%{public}s called with null http_resumable_upload, dumping backtrace:%{public}s";
      goto LABEL_49;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_69;
    }

    *buf = 136446210;
    v27 = "operator()";
    v16 = "%{public}s called with null http_resumable_upload";
LABEL_68:
    _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    goto LABEL_69;
  }

  if (!object)
  {
    __nwlog_obj();
    *buf = 136446210;
    v27 = "operator()";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v13, &type, &v24))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null metadata";
      goto LABEL_68;
    }

    if (v24 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_68;
    }

    v19 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v22 = os_log_type_enabled(v14, type);
    if (!v19)
    {
      if (!v22)
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_68;
    }

    if (!v22)
    {
      goto LABEL_50;
    }

    *buf = 136446466;
    v27 = "operator()";
    v28 = 2082;
    v29 = v19;
    v21 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_49:
    _os_log_impl(&dword_181A37000, v14, v15, v21, buf, 0x16u);
    goto LABEL_50;
  }

  if (!a5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v27 = "operator()";
    v13 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v13, &type, &v24))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null completion";
      goto LABEL_68;
    }

    if (v24 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null completion, backtrace limit exceeded";
      goto LABEL_68;
    }

    v19 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v23 = os_log_type_enabled(v14, type);
    if (!v19)
    {
      if (!v23)
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v27 = "operator()";
      v16 = "%{public}s called with null completion, no backtrace";
      goto LABEL_68;
    }

    if (v23)
    {
      *buf = 136446466;
      v27 = "operator()";
      v28 = 2082;
      v29 = v19;
      v21 = "%{public}s called with null completion, dumping backtrace:%{public}s";
      goto LABEL_49;
    }

LABEL_50:
    free(v19);
    if (!v13)
    {
      return;
    }

LABEL_70:
    free(v13);
    return;
  }

  if (a4)
  {
    v8 = *(a5 + 16);

    v8(a5, 1);
  }

  else
  {
    v9 = os_retain(object);
    v10 = *(v5 + 480);
    if ((v10 & 1) != 0 && *(v5 + 472))
    {
      v11 = v9;
      os_release(*(v5 + 472));
      v9 = v11;
      v10 = *(v5 + 480);
    }

    *(v5 + 472) = v9;
    *(v5 + 480) = v10 | 1;
    v12 = nw_http_metadata_copy_request(object);
    *(v5 + 554) = *(v5 + 554) & 0xFE | nw_http_fields_have_field_with_name(v12, "Cookie");
    nw_http_resumable_upload_update_request_metadata(v5);
    (*(a5 + 16))(a5, 1);
    if (v12)
    {

      os_release(v12);
    }
  }
}

void nw_protocol_http_resumable_upload_create::$_0::__invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v76 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v37 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v55[0]) = 0;
    if (!__nwlog_fault(v37, type, v55))
    {
      goto LABEL_152;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (!os_log_type_enabled(v38, type[0]))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v40 = "%{public}s called with null protocol";
    }

    else if (LOBYTE(v55[0]) == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type[0];
      v42 = os_log_type_enabled(v38, type[0]);
      if (backtrace_string)
      {
        if (v42)
        {
          *buf = 136446466;
          *&buf[4] = "operator()";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_152:
        if (!v37)
        {
          return;
        }

        goto LABEL_153;
      }

      if (!v42)
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v40 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (!os_log_type_enabled(v38, type[0]))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v40 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_151;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v37 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v55[0]) = 0;
    if (!__nwlog_fault(v37, type, v55))
    {
      goto LABEL_152;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v55[0]) != 1)
      {
        v38 = __nwlog_obj();
        v39 = type[0];
        if (!os_log_type_enabled(v38, type[0]))
        {
          goto LABEL_152;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v40 = "%{public}s called with null http_resumable_upload, backtrace limit exceeded";
        goto LABEL_151;
      }

      v43 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type[0];
      v44 = os_log_type_enabled(v38, type[0]);
      if (!v43)
      {
        if (!v44)
        {
          goto LABEL_152;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v40 = "%{public}s called with null http_resumable_upload, no backtrace";
        goto LABEL_151;
      }

      if (!v44)
      {
        goto LABEL_122;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v43;
      v45 = "%{public}s called with null http_resumable_upload, dumping backtrace:%{public}s";
      goto LABEL_121;
    }

    v38 = __nwlog_obj();
    v39 = type[0];
    if (!os_log_type_enabled(v38, type[0]))
    {
      goto LABEL_152;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v40 = "%{public}s called with null http_resumable_upload";
LABEL_151:
    _os_log_impl(&dword_181A37000, v38, v39, v40, buf, 0xCu);
    goto LABEL_152;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v37 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v55[0]) = 0;
    if (!__nwlog_fault(v37, type, v55))
    {
      goto LABEL_152;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (LOBYTE(v55[0]) != 1)
      {
        v38 = __nwlog_obj();
        v39 = type[0];
        if (!os_log_type_enabled(v38, type[0]))
        {
          goto LABEL_152;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v40 = "%{public}s called with null other_protocol, backtrace limit exceeded";
        goto LABEL_151;
      }

      v43 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v39 = type[0];
      v46 = os_log_type_enabled(v38, type[0]);
      if (!v43)
      {
        if (!v46)
        {
          goto LABEL_152;
        }

        *buf = 136446210;
        *&buf[4] = "operator()";
        v40 = "%{public}s called with null other_protocol, no backtrace";
        goto LABEL_151;
      }

      if (!v46)
      {
        goto LABEL_122;
      }

      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v43;
      v45 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
      goto LABEL_121;
    }

    v38 = __nwlog_obj();
    v39 = type[0];
    if (!os_log_type_enabled(v38, type[0]))
    {
      goto LABEL_152;
    }

    *buf = 136446210;
    *&buf[4] = "operator()";
    v40 = "%{public}s called with null other_protocol";
    goto LABEL_151;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v37 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v55[0]) = 0;
    if (!__nwlog_fault(v37, type, v55))
    {
      goto LABEL_152;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (!os_log_type_enabled(v38, type[0]))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v40 = "%{public}s called with null metadata";
      goto LABEL_151;
    }

    if (LOBYTE(v55[0]) != 1)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (!os_log_type_enabled(v38, type[0]))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v40 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_151;
    }

    v43 = __nw_create_backtrace_string();
    v38 = __nwlog_obj();
    v39 = type[0];
    v47 = os_log_type_enabled(v38, type[0]);
    if (!v43)
    {
      if (!v47)
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v40 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_151;
    }

    if (!v47)
    {
      goto LABEL_122;
    }

    *buf = 136446466;
    *&buf[4] = "operator()";
    *&buf[12] = 2082;
    *&buf[14] = v43;
    v45 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_121:
    _os_log_impl(&dword_181A37000, v38, v39, v45, buf, 0x16u);
    goto LABEL_122;
  }

  if (!a5)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "operator()";
    v37 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v55[0]) = 0;
    if (!__nwlog_fault(v37, type, v55))
    {
      goto LABEL_152;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (!os_log_type_enabled(v38, type[0]))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v40 = "%{public}s called with null completion";
      goto LABEL_151;
    }

    if (LOBYTE(v55[0]) != 1)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (!os_log_type_enabled(v38, type[0]))
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v40 = "%{public}s called with null completion, backtrace limit exceeded";
      goto LABEL_151;
    }

    v43 = __nw_create_backtrace_string();
    v38 = __nwlog_obj();
    v39 = type[0];
    v52 = os_log_type_enabled(v38, type[0]);
    if (!v43)
    {
      if (!v52)
      {
        goto LABEL_152;
      }

      *buf = 136446210;
      *&buf[4] = "operator()";
      v40 = "%{public}s called with null completion, no backtrace";
      goto LABEL_151;
    }

    if (v52)
    {
      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2082;
      *&buf[14] = v43;
      v45 = "%{public}s called with null completion, dumping backtrace:%{public}s";
      goto LABEL_121;
    }

LABEL_122:
    free(v43);
    if (!v37)
    {
      return;
    }

LABEL_153:
    free(v37);
    return;
  }

  if ((*(v5 + 554) & 2) == 0)
  {
    v8 = nw_http_metadata_copy_response(a3);
    if (v8)
    {
      v9 = v8;
      status_code = _nw_http_response_get_status_code(v9);

      if ((*(v5 + 198) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          if (*(v5 + 553) - 1 > 4)
          {
            v12 = "error";
          }

          else
          {
            v12 = off_1E6A312D0[(*(v5 + 553) - 1)];
          }

          *buf = 136447234;
          *&buf[4] = "nw_http_resumable_upload_process_response";
          *&buf[12] = 2082;
          *&buf[14] = v5 + 114;
          *&buf[22] = 2080;
          v71 = " ";
          LOWORD(v72) = 1024;
          *(&v72 + 2) = status_code;
          HIWORD(v72) = 2080;
          v73 = v12;
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s %{public}s%sstatus: %u, state: %s", buf, 0x30u);
        }
      }

      if ((status_code - 400) <= 0xC7)
      {
        goto LABEL_18;
      }

      *(v5 + 552) = 3;
      v14 = *(v5 + 553);
      if (v14 > 2)
      {
        switch(v14)
        {
          case 3u:
            goto LABEL_18;
          case 4u:
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2000000000;
            LOBYTE(v71) = 0;
            *v74 = 0;
            *&v74[8] = v74;
            *&v74[16] = 0x2000000000;
            LOBYTE(v75) = 0;
            *type = MEMORY[0x1E69E9820];
            v65 = 0x40000000;
            v66 = ___ZL41nw_http_resumable_upload_process_responseP33nw_protocol_http_resumable_uploadP20nw_protocol_metadata_block_invoke;
            v67 = &unk_1E6A31148;
            v68 = buf;
            v69 = v74;
            v9 = v9;
            v15 = type;
            _nw_http_fields_access_value_by_name(v9, "Upload-Complete", v15);

            v16 = 0;
            if (*(*&buf[8] + 24) == 1)
            {
              if ((*(*&v74[8] + 24) & 1) == 0 && (status_code & 0xFFFFFFFB) == 0xC8)
              {
                v60 = 0;
                v61 = &v60;
                v62 = 0x2000000000;
                v63 = 0;
                v56 = 0;
                v57 = &v56;
                v58 = 0x2000000000;
                v59 = 0;
                v55[0] = MEMORY[0x1E69E9820];
                v55[1] = 0x40000000;
                v55[2] = ___ZL41nw_http_resumable_upload_process_responseP33nw_protocol_http_resumable_uploadP20nw_protocol_metadata_block_invoke_2;
                v55[3] = &unk_1E6A31170;
                v55[4] = &v60;
                v55[5] = &v56;
                nw_http_fields_access_value_by_name(v9, "Upload-Offset", v55);
                if (*(v61 + 24) != 1 || (v17 = v57[3], v17 < 0))
                {
                  v19 = 0;
                  v18 = 0;
                }

                else
                {
                  *(v5 + 464) = v17;
                  v18 = 1;
                  v19 = 2;
                }

                *(v5 + 553) = v19;
                _Block_object_dispose(&v56, 8);
                _Block_object_dispose(&v60, 8);
                _Block_object_dispose(v74, 8);
                _Block_object_dispose(buf, 8);
                os_release(v9);
                if ((v18 & 1) != 0 && nw_http_resumable_upload_reissue(v5))
                {
                  (*(a5 + 16))(a5, 3);
                  return;
                }

                goto LABEL_20;
              }

              if ((*(*&v74[8] + 24) & ((status_code - 200) < 0x64)) != 0)
              {
                v16 = 5;
              }

              else
              {
                v16 = 0;
              }
            }

            *(v5 + 553) = v16;
            _Block_object_dispose(v74, 8);
            _Block_object_dispose(buf, 8);
            break;
          case 5u:
            goto LABEL_18;
        }

LABEL_19:
        os_release(v9);
LABEL_20:
        (*(a5 + 16))(a5, 1);
        return;
      }

      if (v14 != 1)
      {
        if (v14 == 2 && (status_code - 200) <= 0x63)
        {
          *(v5 + 553) = 5;
        }

        goto LABEL_19;
      }

      if (status_code != 104)
      {
        goto LABEL_19;
      }

      *v74 = 0;
      *&v74[8] = v74;
      *&v74[16] = 0x2000000000;
      LOBYTE(v75) = 0;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL52nw_http_resumable_upload_draft_version_is_compatibleP33nw_protocol_http_resumable_uploadP14nw_http_fields_block_invoke;
      v71 = &unk_1E6A31198;
      v72 = v74;
      v20 = v9;
      v21 = buf;
      _nw_http_fields_access_value_by_name(v20, "Upload-Draft-Interop-Version", v21);

      LOBYTE(v20) = *(*&v74[8] + 24);
      _Block_object_dispose(v74, 8);
      if ((v20 & 1) == 0)
      {
LABEL_18:
        *(v5 + 553) = 0;
        goto LABEL_19;
      }

      v22 = nw_protocol_http_copy_location_endpoint(v5, a3);
      v23 = v22;
      if (v22)
      {
        url_scheme = nw_endpoint_get_url_scheme(v22);
        if (strcasecmp(url_scheme, "https") && strcasecmp(url_scheme, "http"))
        {
          if (*(v5 + 198))
          {
            goto LABEL_67;
          }

          v25 = __nwlog_obj();
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_67;
          }

          *v74 = 136446722;
          *&v74[4] = "nw_http_resumable_upload_copy_endpoint";
          *&v74[12] = 2082;
          *&v74[14] = v5 + 114;
          *&v74[22] = 2080;
          v75 = " ";
          v26 = "%{public}s %{public}s%sresume URL must be http or https";
LABEL_66:
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, v26, v74, 0x20u);
LABEL_67:
          v32 = v23;
          v23 = 0;
LABEL_68:
          os_release(v32);
          goto LABEL_69;
        }

        hostname = nw_endpoint_get_hostname(v23);
        if (!hostname || !*hostname)
        {
          if (*(v5 + 198))
          {
            goto LABEL_67;
          }

          v25 = __nwlog_obj();
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_67;
          }

          *v74 = 136446722;
          *&v74[4] = "nw_http_resumable_upload_copy_endpoint";
          *&v74[12] = 2082;
          *&v74[14] = v5 + 114;
          *&v74[22] = 2080;
          v75 = " ";
          v26 = "%{public}s %{public}s%sinvalid resume URL without hostname";
          goto LABEL_66;
        }

        parameters = nw_protocol_get_parameters(v5);
        v29 = nw_parameters_copy_url_endpoint(parameters);
        v30 = nw_endpoint_get_url_scheme(v29);
        if (strcasecmp(url_scheme, "https") && !strcasecmp(v30, "https"))
        {
          if ((*(v5 + 198) & 1) == 0)
          {
            v31 = __nwlog_obj();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *v74 = 136446722;
              *&v74[4] = "nw_http_resumable_upload_copy_endpoint";
              *&v74[12] = 2082;
              *&v74[14] = v5 + 114;
              *&v74[22] = 2080;
              v75 = " ";
              _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%snot allowing insecure resume URL when original URL was https", v74, 0x20u);
            }
          }

          os_release(v23);
          v23 = 0;
        }

        v32 = v29;
        if (v29)
        {
          goto LABEL_68;
        }
      }

LABEL_69:
      v33 = *(v5 + 496);
      if (v33)
      {
        v34 = *(v5 + 488);
        if (v34)
        {
          os_release(v34);
          v33 = *(v5 + 496);
        }
      }

      *(v5 + 488) = v23;
      *(v5 + 496) = v33 | 1;
      if (v23)
      {
        client_metadata_in_parameters = nw_http_messaging_options_find_or_create_client_metadata_in_parameters(*(v5 + 520), v5);
        if (client_metadata_in_parameters)
        {
          v36 = client_metadata_in_parameters;
          nw_http_client_metadata_set_upload_resume_endpoint(client_metadata_in_parameters, *(v5 + 488));
          *(v5 + 553) = 2;
          os_release(v36);
        }

        else
        {
          *(v5 + 553) = 2;
        }

        goto LABEL_19;
      }

      goto LABEL_18;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_resumable_upload_process_response";
    v48 = _os_log_send_and_compose_impl();
    v74[0] = 16;
    LOBYTE(v60) = 0;
    if (__nwlog_fault(v48, v74, &v60))
    {
      if (v74[0] == 17)
      {
        v49 = __nwlog_obj();
        v50 = v74[0];
        if (!os_log_type_enabled(v49, v74[0]))
        {
          goto LABEL_157;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_resumable_upload_process_response";
        v51 = "%{public}s called with null response";
        goto LABEL_156;
      }

      if (v60 != 1)
      {
        v49 = __nwlog_obj();
        v50 = v74[0];
        if (!os_log_type_enabled(v49, v74[0]))
        {
          goto LABEL_157;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http_resumable_upload_process_response";
        v51 = "%{public}s called with null response, backtrace limit exceeded";
        goto LABEL_156;
      }

      v53 = __nw_create_backtrace_string();
      v49 = __nwlog_obj();
      v50 = v74[0];
      v54 = os_log_type_enabled(v49, v74[0]);
      if (v53)
      {
        if (v54)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_resumable_upload_process_response";
          *&buf[12] = 2082;
          *&buf[14] = v53;
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null response, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v53);
        goto LABEL_157;
      }

      if (v54)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_resumable_upload_process_response";
        v51 = "%{public}s called with null response, no backtrace";
LABEL_156:
        _os_log_impl(&dword_181A37000, v49, v50, v51, buf, 0xCu);
      }
    }

LABEL_157:
    if (v48)
    {
      free(v48);
    }

    goto LABEL_20;
  }

  v13 = *(a5 + 16);

  v13(a5, 3);
}

uint64_t ___ZL52nw_http_resumable_upload_draft_version_is_compatibleP33nw_protocol_http_resumable_uploadP14nw_http_fields_block_invoke(uint64_t result, _BYTE *a2)
{
  if (a2 && *a2 == 54 && !a2[1])
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t ___ZL41nw_http_resumable_upload_process_responseP33nw_protocol_http_resumable_uploadP20nw_protocol_metadata_block_invoke(uint64_t result, _BYTE *a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    if (*a2 == 63 && a2[1] == 49 && !a2[2])
    {
      *(*(*(result + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

void ___ZL41nw_http_resumable_upload_process_responseP33nw_protocol_http_resumable_uploadP20nw_protocol_metadata_block_invoke_2(uint64_t a1, char *__s)
{
  if (__s)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
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
    *(*(*(a1 + 40) + 8) + 24) = std::stoll(&__dst, 0, 10);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

void ___ZL47nw_protocol_http_resumable_upload_get_callbacksv_block_invoke()
{
  nw_protocol_http_resumable_upload_get_callbacks(void)::protocol_callbacks = nw_protocol_common_add_input_handler;
  qword_1EA841EB0 = nw_protocol_common_replace_input_handler;
  qword_1EA841EF0 = nw_protocol_common_get_input_frames;
  qword_1EA841EF8 = nw_protocol_common_get_output_frames;
  qword_1EA841F00 = nw_protocol_common_finalize_output_frames;
  qword_1EA841F10 = nw_protocol_common_get_parameters;
  qword_1EA841F18 = nw_protocol_common_get_path;
  qword_1EA841F28 = nw_protocol_common_get_remote_endpoint;
  qword_1EA841F20 = nw_protocol_common_get_local_endpoint;
  qword_1EA841F68 = nw_protocol_common_get_output_local_endpoint;
  qword_1EA841F70 = nw_protocol_common_get_output_interface;
  qword_1EA841EB8 = nw_protocol_common_connect;
  qword_1EA841EC8 = nw_protocol_common_connected;
  qword_1EA841EC0 = nw_protocol_common_disconnect;
  qword_1EA841ED0 = nw_protocol_common_disconnected;
  qword_1EA841EE0 = nw_protocol_common_input_available;
  qword_1EA841EE8 = nw_protocol_common_output_available;
  qword_1EA841F58 = nw_protocol_common_input_finished;
  qword_1EA841F60 = nw_protocol_common_output_finished;
  qword_1EA841FA8 = nw_protocol_common_input_flush;
  qword_1EA841ED8 = nw_protocol_common_error;
  qword_1EA841FA0 = nw_protocol_common_reset;
  qword_1EA841F98 = nw_protocol_common_get_message_properties;
  qword_1EA841F80 = nw_protocol_common_copy_info;
  qword_1EA841F50 = nw_protocol_common_supports_external_data;
  qword_1EA841F78 = nw_protocol_common_waiting_for_output;
  qword_1EA841F30 = nw_protocol_common_register_notification;
  qword_1EA841F38 = nw_protocol_common_unregister_notification;
  qword_1EA841F40 = nw_protocol_common_notify;
  qword_1EA841F48 = nw_protocol_common_updated_path;
  qword_1EA841F08 = nw_protocol_common_link_state;
  qword_1EA841EA8 = nw_protocol_http_resumable_upload_remove_input_handler;
}

uint64_t nw_protocol_http_resumable_upload_remove_input_handler(nw_protocol *a1, nw_protocol *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZL54nw_protocol_http_resumable_upload_remove_input_handlerP11nw_protocolS0_b_block_invoke;
      v15[3] = &__block_descriptor_tmp_45_34387;
      v15[4] = handle;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = ___ZL54nw_protocol_http_resumable_upload_remove_input_handlerP11nw_protocolS0_b_block_invoke_2;
      v13[3] = &__block_descriptor_tmp_46_34388;
      v14 = a3;
      v13[4] = handle;
      return nw_protocol_common_remove_input_handler_with_cleanup_blocks(a1, a2, a3, v15, v13);
    }

    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_http_resumable_upload_remove_input_handler";
    v5 = _os_log_send_and_compose_impl();
    v17 = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v5, &v17, &v16))
    {
      goto LABEL_32;
    }

    if (v17 == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = v17;
      if (os_log_type_enabled(v6, v17))
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_resumable_upload_remove_input_handler";
        v8 = "%{public}s called with null http_resumable_upload";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v16 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v17;
      if (os_log_type_enabled(v6, v17))
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_resumable_upload_remove_input_handler";
        v8 = "%{public}s called with null http_resumable_upload, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v17;
    v12 = os_log_type_enabled(v6, v17);
    if (!backtrace_string)
    {
      if (v12)
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_resumable_upload_remove_input_handler";
        v8 = "%{public}s called with null http_resumable_upload, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http_resumable_upload_remove_input_handler";
      v20 = 2082;
      v21 = backtrace_string;
      v11 = "%{public}s called with null http_resumable_upload, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_http_resumable_upload_remove_input_handler";
  v5 = _os_log_send_and_compose_impl();
  v17 = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v5, &v17, &v16))
  {
    goto LABEL_32;
  }

  if (v17 != OS_LOG_TYPE_FAULT)
  {
    if (v16 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v17;
      if (os_log_type_enabled(v6, v17))
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_resumable_upload_remove_input_handler";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v17;
    v10 = os_log_type_enabled(v6, v17);
    if (!backtrace_string)
    {
      if (v10)
      {
        *buf = 136446210;
        v19 = "nw_protocol_http_resumable_upload_remove_input_handler";
        v8 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v19 = "nw_protocol_http_resumable_upload_remove_input_handler";
      v20 = 2082;
      v21 = backtrace_string;
      v11 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v6, v7, v11, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v6 = __nwlog_obj();
  v7 = v17;
  if (os_log_type_enabled(v6, v17))
  {
    *buf = 136446210;
    v19 = "nw_protocol_http_resumable_upload_remove_input_handler";
    v8 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_32:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

void ___ZL54nw_protocol_http_resumable_upload_remove_input_handlerP11nw_protocolS0_b_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (gLogDatapath == 1)
  {
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136446210;
      v10 = "nw_protocol_plugin_metadata_teardown";
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s called", &v9, 0xCu);
    }
  }

  nw_protocol_plugin_metadata_reset((v2 + 200));
  *(v2 + 328) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 368);
  if (v4)
  {
    v5 = *(v3 + 360);
    if (v5)
    {
      _Block_release(v5);
      v4 = *(v3 + 368);
    }
  }

  *(v3 + 360) = 0;
  *(v3 + 368) = v4 | 1;
  v6 = *(v3 + 408);
  if (v6)
  {
    v7 = *(v3 + 400);
    if (v7)
    {
      _Block_release(v7);
      v6 = *(v3 + 408);
    }
  }

  *(v3 + 400) = 0;
  *(v3 + 408) = v6 | 1;
}

void ___ZL54nw_protocol_http_resumable_upload_remove_input_handlerP11nw_protocolS0_b_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    nw_http_resumable_upload_destroy(*(a1 + 32));
  }
}

double __nw_protocol_http_resumable_upload_identifier_block_invoke()
{
  strcpy(&nw_protocol_http_resumable_upload_identifier::protocol_identifier, "http_resumable_upload");
  *&result = 0x100000005;
  qword_1EA841E90 = 0x100000005;
  return result;
}

uint64_t nw_printf_write(uint64_t result, uint64_t a2, _BYTE *a3, unint64_t a4)
{
  if (!a4)
  {
    return result;
  }

  v19 = a4;
  v20 = a3;
  v18 = 0;
  v4 = *(a2 + 32);
  if ((v4 & 9) == 0)
  {
    if (*a3 == 45)
    {
      v18 = 45;
      v5 = a4 - 1;
      ++a3;
      v19 = a4 - 1;
      v20 = a3;
      v17 = 0;
      if ((v4 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((v4 & 0x4000) != 0)
      {
        v11 = 43;
      }

      else
      {
        if ((v4 & 0x8000) == 0)
        {
          goto LABEL_3;
        }

        v11 = 32;
      }

      v18 = v11;
      v5 = a4++;
      v17 = 0;
      if ((v4 & 2) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_4:
    if ((v4 & 4) == 0)
    {
      v6 = 0;
      if ((v4 & 8) != 0)
      {
        v7 = *(a2 + 16);
        if ((*(a2 + 24) & 1) == 0)
        {
          v7 = -1;
        }

        if (v7 < a4)
        {
          a4 = v7;
        }

        v19 = a4;
      }

      goto LABEL_34;
    }

    goto LABEL_18;
  }

LABEL_3:
  v5 = a4;
  v17 = 0;
  if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_13:
  if (*(a2 + 24))
  {
    v8 = *(a2 + 16);
    if (!v8 && v5 == 1)
    {
      if (*a3 == 48)
      {
        v5 = 0;
        a4 = 0;
        v19 = 0;
      }

      else
      {
        v5 = 1;
      }
    }

    v10 = v8 >= v5;
    v6 = v8 - v5;
    goto LABEL_31;
  }

LABEL_18:
  if ((v4 & 0x10000) != 0)
  {
    v9 = *a2;
    if ((*(a2 + 8) & 1) == 0)
    {
      v9 = 0;
    }

    v10 = v9 >= a4;
    v6 = v9 - a4;
LABEL_31:
    if (!v10)
    {
      v6 = 0;
    }

    v17 = v6;
    goto LABEL_34;
  }

  v6 = 0;
LABEL_34:
  v12 = v6 + a4;
  v16[0] = &v18;
  v16[1] = result;
  v16[2] = &v17;
  v16[3] = a2;
  v16[4] = &v19;
  v16[5] = &v20;
  v10 = *a2 >= v12;
  v13 = *a2 - v12;
  v14 = v13 != 0 && v10;
  if ((*(a2 + 8) & v14) != 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if ((v4 & 0x2000) != 0)
  {
    for (result = nw_printf_write::$_0::operator()(v16); v15; --v15)
    {
      result = std::ostream::put();
    }
  }

  else
  {
    for (; v15; --v15)
    {
      std::ostream::put();
    }

    return nw_printf_write::$_0::operator()(v16);
  }

  return result;
}

uint64_t nw_printf_write::$_0::operator()(uint64_t result)
{
  v1 = result;
  v42 = *MEMORY[0x1E69E9840];
  if (**result)
  {
    result = std::ostream::put();
  }

  if (**(v1 + 16))
  {
    v2 = 0;
    do
    {
      result = std::ostream::put();
      ++v2;
    }

    while (v2 < **(v1 + 16));
  }

  v3 = *(*(v1 + 24) + 32);
  if ((v3 & 0x40) != 0 && **(v1 + 32))
  {
    v4 = 0;
    do
    {
      result = __toupper(*(**(v1 + 40) + v4));
      *(**(v1 + 40) + v4++) = result;
    }

    while (v4 < **(v1 + 32));
    v3 = *(*(v1 + 24) + 32);
  }

  if ((v3 & 0x600000) != 0)
  {
    v5 = **(v1 + 40);
    v6 = **(v1 + 32);
    v7 = &v5[v6];
    if (v6)
    {
      v8 = *v5 == 45;
    }

    else
    {
      v8 = 0;
    }

    v9 = &v5[v8];
    v10 = v6 - v8;
    if (v6 == v8)
    {
      v11 = v9;
    }

    else
    {
      v11 = v9;
      while (*v11 == 48)
      {
        ++v11;
        if (!--v10)
        {
          goto LABEL_35;
        }
      }
    }

    if (v11 == v7)
    {
LABEL_35:
      if (v7 == v9)
      {
        return result;
      }
    }

    else
    {
      if (*v11 - 48 < 0xA)
      {
        v12 = 9;
        do
        {
          v13 = *v11;
          if ((*v11 - 58) < 0xF6u)
          {
            break;
          }

          ++v11;
          *&v40[4 * v12] = (v13 - 48);
          if (v12-- == 0)
          {
            break;
          }
        }

        while (v11 != v7);
        v15 = v12 + 1;
        v16 = (v12 + 1) << 32;
        v17 = *&v40[4 * v15];
        if (v15 > 7)
        {
          goto LABEL_47;
        }

        v18 = &v40[v16 >> 30];
        v19 = (v18 + 4);
        v20 = v18 + 8;
        if (v18 + 8 <= &v41)
        {
          v20 = &v41;
        }

        v21 = v20 - v18 - 5;
        if (v21 >= 0x1C)
        {
          v27 = (v21 >> 2) + 1;
          result = 4 * (v27 & 0x7FFFFFFFFFFFFFF8);
          v22 = &std::__itoa::__pow10_32 + result + 4;
          v28 = *&v40[4 * v15];
          v29 = 0uLL;
          v30 = &v40[(v16 >> 30) + 20];
          v31 = &unk_182B0B830;
          v32 = v27 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v28 = vmlaq_s32(v28, v31[-1], v30[-1]);
            v29 = vmlaq_s32(v29, *v31, *v30);
            v30 += 2;
            v31 += 2;
            v32 -= 8;
          }

          while (v32);
          v17 = vaddvq_s32(vaddq_s32(v29, v28));
          if (v27 == (v27 & 0x7FFFFFFFFFFFFFF8))
          {
            goto LABEL_47;
          }

          v19 = (v19 + result);
        }

        else
        {
          v22 = "\n";
        }

        do
        {
          v34 = *v19++;
          v33 = v34;
          v35 = *v22;
          v22 += 4;
          result = v35;
          v17 += v35 * v33;
        }

        while (v19 < &v41);
LABEL_47:
        v36 = v41 * *(&std::__itoa::__pow10_32 + ((0x900000000 - v16) >> 30));
        v37 = &v11[-((v36 & 0xFFFFFFFF00000000) != 0)];
        if (v37 == v7)
        {
          if (__CFADD__(v17, v36))
          {
            return result;
          }
        }

        else
        {
          v38 = *v37 - 48;
          v39 = __CFADD__(v17, v36);
          if (v38 < 0xA || v39)
          {
            return result;
          }
        }

        v23 = v36 + v17;
        if ((v8 & 1) == 0)
        {
          if ((v23 & 0x80000000) != 0)
          {
            return result;
          }

          goto LABEL_40;
        }

        if (v23 > 0x80000000)
        {
          return result;
        }

        goto LABEL_39;
      }

      if (v11 == v9)
      {
        return result;
      }
    }

    v23 = 0;
    if ((v8 & 1) == 0)
    {
LABEL_40:
      std::ostream::put();
      std::ostream::write();
      std::ostream::put();
      std::ostream::put();
      v24 = *(v1 + 8);
      v25 = strerror(v23);
      v26 = strlen(v25);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, v25, v26);
      return std::ostream::put();
    }

LABEL_39:
    v23 = -v23;
    goto LABEL_40;
  }

  return std::ostream::write();
}
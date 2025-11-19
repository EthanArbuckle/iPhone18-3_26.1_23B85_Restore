id nw_connection_copy_protocol_metadata_internal(void *a1, void *a2, char a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v25 = __Block_byref_object_copy__24471;
    v26 = __Block_byref_object_dispose__24472;
    v27 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __nw_connection_copy_protocol_metadata_internal_block_invoke;
    v17[3] = &unk_1E6A2EC08;
    v18 = v5;
    v20 = buf;
    v19 = v6;
    v21 = a3;
    os_unfair_lock_lock(v5 + 34);
    __nw_connection_copy_protocol_metadata_internal_block_invoke(v17);
    os_unfair_lock_unlock(v5 + 34);
    v7 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_protocol_metadata_internal";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v10, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_protocol_metadata_internal";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v22 == 1)
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
          *&buf[4] = "nw_connection_copy_protocol_metadata_internal";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v15)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_copy_protocol_metadata_internal";
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
        *&buf[4] = "nw_connection_copy_protocol_metadata_internal";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_3:

  return v7;
}

void __nw_connection_copy_protocol_metadata_internal_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x40) != 0)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = nw_endpoint_handler_copy_protocol_metadata(*(v2 + 144), v7, 0, v6);

    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
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
        v11 = 136446466;
        v12 = "nw_connection_copy_protocol_metadata_internal_block_invoke";
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Client called nw_connection_copy_protocol_metadata_internal on unconnected nw_connection", &v11, 0x12u);
      }
    }
  }
}

uint64_t sub_181C14F4C()
{
  v1 = *(v0 + 264);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = *(*(v1 + 56) + ((v2 << 9) | (8 * v8)));
    if (!*(v9 + 56) && *(v9 + 72) == 9)
    {
      return 1;
    }
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return 0;
    }

    v5 = *(v1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t nw_endpoint_flow_is_multipath(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 220);
    if ((v2[8]._os_unfair_lock_opaque & 2) != 0)
    {
      is_multipath = (v2[8]._os_unfair_lock_opaque & 0x8000) != 0;
    }

    else
    {
      v3 = *&v2[234]._os_unfair_lock_opaque;
      if (v3)
      {
        v4 = nw_endpoint_handler_copy_flow(v3);
        is_multipath = nw_endpoint_flow_is_multipath();
      }

      else
      {
        is_multipath = 0;
      }
    }

    os_unfair_lock_unlock(v2 + 220);
    goto LABEL_8;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_endpoint_flow_is_multipath";
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
        v18 = "nw_endpoint_flow_is_multipath";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null endpoint_flow", buf, 0xCu);
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
          v18 = "nw_endpoint_flow_is_multipath";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_endpoint_flow_is_multipath";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_endpoint_flow_is_multipath";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v8)
  {
    free(v8);
  }

  is_multipath = 0;
LABEL_8:

  return is_multipath;
}

unint64_t sub_181C15310()
{
  result = qword_1ED410190;
  if (!qword_1ED410190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED410190);
  }

  return result;
}

uint64_t ProtocolOptions.matches<A>(definition:)(__int16 *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *v19 = v3;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  LOBYTE(a1) = *(a1 + 24);
  *v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = a1;
  v10 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v19, v15);
  v11 = v16;
  v12 = v17;
  v13 = v18;
  sub_181F49A24(v4, v5, v6);
  sub_181F49A24(v8, v9, a1);
  sub_181F48350(v11, v12, v13);
  sub_181F48350(v20, v21, v22);
  return v10 & 1;
}

uint64_t nw_endpoint_handler_uses_multipath(void *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 28);
    if (v2[29]._os_unfair_lock_opaque != 2)
    {
      LOBYTE(v9) = 0;
LABEL_49:
      os_unfair_lock_unlock(v2 + 28);
      goto LABEL_50;
    }

    v3 = *&v2[66]._os_unfair_lock_opaque;
    v4 = v3;
    if (v3)
    {
      v5 = v3[117];
      if (v5)
      {
        v6 = nw_endpoint_handler_copy_connected_path(v5);
        v7 = v6;
        if (v6)
        {
          if (_nw_path_has_migration_info(v6))
          {
            has_migration_policy = 1;
          }

          else
          {
            has_migration_policy = _nw_path_has_migration_policy(v7);
          }
        }

        else
        {
          has_migration_policy = 0;
        }

        v10 = nw_endpoint_handler_copy_parameters(v4[117]);

        if (v10 && nw_parameters_get_upper_transport_protocol(v10) == 253)
        {
          goto LABEL_18;
        }
      }

      else
      {
        has_migration_policy = 0;
        v10 = 0;
      }

      v11 = v4[90];
      if (!v11 || (v12 = *(v11 + 2)) == 0 || strcmp(v12, "quic"))
      {
        v13 = 0;
        goto LABEL_29;
      }

LABEL_18:
      if ((has_migration_policy & 1) != 0 || nw_settings_get_quic_migration_enabled())
      {
        if (gLogDatapath == 1)
        {
          v46 = __nwlog_obj();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_flow_uses_multipath";
            _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s Querying QUIC for migration status (migration info OR migration enabled)", buf, 0xCu);
          }
        }

        v14 = v4[51];
        if (v14)
        {
          v15 = v14[3];
          if (v15)
          {
            v16 = *(v15 + 224);
            if (v16)
            {
              v17 = v16();
              v18 = v17;
              if (v17)
              {
                v19 = *(v17 + 12);
                nw_array_remove_all_objects(*v17);
                if (*v18)
                {
                  os_release(*v18);
                }

                free(v18);
                v9 = (v19 >> 1) & 1;
                goto LABEL_47;
              }
            }
          }
        }
      }

      v13 = 1;
LABEL_29:
      if (nw_endpoint_flow_is_multipath(v4))
      {
        v20 = nw_endpoint_flow_copy_connected_socket_wrapper(v4);
        v21 = v20;
        if (v13)
        {
          if (gLogDatapath == 1)
          {
            v47 = __nwlog_obj();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              *&buf[4] = "nw_endpoint_flow_uses_multipath";
              _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s Querying QUIC for migration status (multipath)", buf, 0xCu);
            }
          }

          v22 = v4[51];
          if (v22)
          {
            v23 = v22[3];
            if (v23)
            {
              v24 = *(v23 + 224);
              if (v24)
              {
                v25 = v24();
                v26 = v25;
                if (v25)
                {
                  v27 = *(v25 + 12);
                  nw_array_remove_all_objects(*v25);
                  if (*v26)
                  {
                    os_release(*v26);
                  }

                  free(v26);
                  v9 = (v27 >> 1) & 1;
                  goto LABEL_41;
                }
              }
            }
          }
        }

        else
        {
          if (v20)
          {
            *type = 0;
            v49 = type;
            v50 = 0x2020000000;
            v51 = 0;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __nw_endpoint_flow_uses_multipath_block_invoke;
            v54 = &unk_1E6A3C0D8;
            v55 = type;
            nw_fd_wrapper_get_fd(v20, buf);
            LOBYTE(v9) = v49[24];
            _Block_object_dispose(type, 8);
LABEL_41:

LABEL_47:
LABEL_48:

            goto LABEL_49;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v28 = gLogObj;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            *&buf[4] = "nw_endpoint_flow_uses_multipath";
            _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s Protocol not supported", buf, 0xCu);
          }
        }
      }

      LOBYTE(v9) = 0;
      goto LABEL_47;
    }

    v34 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_flow_uses_multipath";
    v35 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (__nwlog_fault(v35, type, &v52))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = type[0];
        if (os_log_type_enabled(v36, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_uses_multipath";
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else if (v52 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v43 = type[0];
        v44 = os_log_type_enabled(v36, type[0]);
        if (backtrace_string)
        {
          if (v44)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_flow_uses_multipath";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v36, v43, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_92;
        }

        if (v44)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_uses_multipath";
          _os_log_impl(&dword_181A37000, v36, v43, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v36 = __nwlog_obj();
        v45 = type[0];
        if (os_log_type_enabled(v36, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_flow_uses_multipath";
          _os_log_impl(&dword_181A37000, v36, v45, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_92:
    if (v35)
    {
      free(v35);
    }

    LOBYTE(v9) = 0;
    goto LABEL_48;
  }

  v30 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_endpoint_handler_uses_multipath";
  v31 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v52 = 0;
  if (__nwlog_fault(v31, type, &v52))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type[0];
      if (os_log_type_enabled(v32, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_uses_multipath";
        _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v52 == 1)
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
          *&buf[4] = "nw_endpoint_handler_uses_multipath";
          *&buf[12] = 2082;
          *&buf[14] = v38;
          _os_log_impl(&dword_181A37000, v32, v39, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v38);
        goto LABEL_86;
      }

      if (v40)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_uses_multipath";
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
        *&buf[4] = "nw_endpoint_handler_uses_multipath";
        _os_log_impl(&dword_181A37000, v32, v41, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_86:
  if (v31)
  {
    free(v31);
  }

  LOBYTE(v9) = 0;
LABEL_50:

  return v9 & 1;
}

uint64_t nw_connection_uses_multipath(void *a1)
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
    v13[2] = __nw_connection_uses_multipath_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v14 = v1;
    v15 = buf;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_uses_multipath_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_uses_multipath";
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
        *&buf[4] = "nw_connection_uses_multipath";
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
          *&buf[4] = "nw_connection_uses_multipath";
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
        *&buf[4] = "nw_connection_uses_multipath";
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
        *&buf[4] = "nw_connection_uses_multipath";
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

void __nw_connection_uses_multipath_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x40) != 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = nw_endpoint_handler_uses_multipath(*(v2 + 144));
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
        v6 = 136446466;
        v7 = "nw_connection_uses_multipath_block_invoke";
        v8 = 1024;
        v9 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s [C%u]  has no connected handler", &v6, 0x12u);
      }
    }
  }
}

id nw_connection_copy_establishment_report_on_queue(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    nw_context_assert_queue(*(v1 + 3));
    v3 = v2[52];
    if (!v3)
    {
      nw_connection_fillout_establishment_report_on_nw_queue(v2, 0);
      v3 = v2[52];
    }

    v4 = v3;
    goto LABEL_5;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_connection_copy_establishment_report_on_queue";
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
        v17 = "nw_connection_copy_establishment_report_on_queue";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
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
          v17 = "nw_connection_copy_establishment_report_on_queue";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_connection_copy_establishment_report_on_queue";
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
        v17 = "nw_connection_copy_establishment_report_on_queue";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v7)
  {
    free(v7);
  }

  v4 = 0;
LABEL_5:

  return v4;
}

id nw_connection_copy_connected_local_endpoint(void *a1)
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
    v13[2] = __nw_connection_copy_connected_local_endpoint_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v14 = v1;
    v15 = buf;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_copy_connected_local_endpoint_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_connected_local_endpoint";
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
        *&buf[4] = "nw_connection_copy_connected_local_endpoint";
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
          *&buf[4] = "nw_connection_copy_connected_local_endpoint";
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
        *&buf[4] = "nw_connection_copy_connected_local_endpoint";
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
        *&buf[4] = "nw_connection_copy_connected_local_endpoint";
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

void __nw_connection_copy_connected_local_endpoint_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x40) != 0)
  {
    v6 = nw_endpoint_handler_copy_connected_path(*(v2 + 144));
    v7 = v6;
    if (v6)
    {
      v4 = v6;
      v8 = _nw_path_copy_effective_local_endpoint(v4);

      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        goto LABEL_24;
      }

      v11 = *(*(a1 + 32) + 16);
      if (!v11 || _nw_parameters_get_logging_disabled(v11))
      {
        goto LABEL_24;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v12 = gconnectionLogObj;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v13 = *(*(a1 + 32) + 448);
      v17 = 136446466;
      v18 = "nw_connection_copy_connected_local_endpoint_block_invoke";
      v19 = 1024;
      v20 = v13;
      v14 = "%{public}s [C%u] Connection has no local endpoint";
    }

    else
    {
      v15 = *(*(a1 + 32) + 16);
      if (!v15 || _nw_parameters_get_logging_disabled(v15))
      {
        v4 = 0;
        goto LABEL_24;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v12 = gconnectionLogObj;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_23:

        v4 = v7;
LABEL_24:

        return;
      }

      v16 = *(*(a1 + 32) + 448);
      v17 = 136446466;
      v18 = "nw_connection_copy_connected_local_endpoint_block_invoke";
      v19 = 1024;
      v20 = v16;
      v14 = "%{public}s [C%u] Connection has no connected path";
    }

    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, v14, &v17, 0x12u);
    goto LABEL_23;
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
      v17 = 136446466;
      v18 = "nw_connection_copy_connected_local_endpoint_block_invoke";
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Client called nw_connection_copy_connected_local_endpoint on unconnected nw_connection", &v17, 0x12u);
    }

    goto LABEL_24;
  }
}

id nw_connection_copy_connected_remote_endpoint(void *a1)
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
    v13[2] = __nw_connection_copy_connected_remote_endpoint_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v14 = v1;
    v15 = buf;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_copy_connected_remote_endpoint_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_copy_connected_remote_endpoint";
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
        *&buf[4] = "nw_connection_copy_connected_remote_endpoint";
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
          *&buf[4] = "nw_connection_copy_connected_remote_endpoint";
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
        *&buf[4] = "nw_connection_copy_connected_remote_endpoint";
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
        *&buf[4] = "nw_connection_copy_connected_remote_endpoint";
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

void __nw_connection_copy_connected_remote_endpoint_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x40) != 0)
  {
    v6 = nw_endpoint_handler_copy_connected_path(*(v2 + 144));
    v7 = v6;
    if (v6)
    {
      v4 = v6;
      v8 = _nw_path_copy_effective_remote_endpoint(v4);

      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        goto LABEL_24;
      }

      v11 = *(*(a1 + 32) + 16);
      if (!v11 || _nw_parameters_get_logging_disabled(v11))
      {
        goto LABEL_24;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v12 = gconnectionLogObj;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v13 = *(*(a1 + 32) + 448);
      v17 = 136446466;
      v18 = "nw_connection_copy_connected_remote_endpoint_block_invoke";
      v19 = 1024;
      v20 = v13;
      v14 = "%{public}s [C%u] Connection has no remote endpoint";
    }

    else
    {
      v15 = *(*(a1 + 32) + 16);
      if (!v15 || _nw_parameters_get_logging_disabled(v15))
      {
        v4 = 0;
        goto LABEL_24;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v12 = gconnectionLogObj;
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_23:

        v4 = v7;
LABEL_24:

        return;
      }

      v16 = *(*(a1 + 32) + 448);
      v17 = 136446466;
      v18 = "nw_connection_copy_connected_remote_endpoint_block_invoke";
      v19 = 1024;
      v20 = v16;
      v14 = "%{public}s [C%u] Connection has no connected path";
    }

    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, v14, &v17, 0x12u);
    goto LABEL_23;
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
      v17 = 136446466;
      v18 = "nw_connection_copy_connected_remote_endpoint_block_invoke";
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Client called nw_connection_copy_connected_remote_endpoint on unconnected nw_connection", &v17, 0x12u);
    }

    goto LABEL_24;
  }
}

uint64_t nw_connection_get_transport_connect_milliseconds(NWConcrete_nw_connection *a1, __int16 a2, char a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v14 = a2;
  event_milliseconds = nw_connection_get_event_milliseconds(v5, 3, 6, &v14, 0);
  if (event_milliseconds == -1)
  {
    event_milliseconds = nw_connection_get_event_milliseconds(v5, 3, 13, &v14, 0);
    if (event_milliseconds == -1)
    {
LABEL_9:
      v7 = 0;
      goto LABEL_10;
    }
  }

  LODWORD(v7) = event_milliseconds;
  v8 = nw_connection_get_event_milliseconds(v5, 3, 5, &v14, 0);
  if (v8 == -1)
  {
    v7 = v7;
  }

  else
  {
    v7 = v8;
  }

  if ((a3 & 1) == 0)
  {
    v9 = nw_connection_get_event_milliseconds(v5, 3, 3, &v14, 0);
    v10 = v7 >= v9;
    v7 = v7 - v9;
    if (!v10)
    {
      if (gLogDatapath == 1)
      {
        v13 = v9;
        v12 = __nwlog_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          v16 = "nw_connection_get_transport_connect_milliseconds";
          v17 = 2082;
          v18 = "connect_finish";
          v19 = 2048;
          v20 = v13;
          v21 = 2048;
          v22 = v7;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      goto LABEL_9;
    }
  }

LABEL_10:

  return v7;
}

uint64_t nw_protocol_instance_registrar_get_instance_count(void *a1)
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
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_protocol_instance_registrar_get_instance_count_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v16 = buf;
    v15 = v1;
    v3 = _Block_copy(aBlock);
    os_unfair_lock_lock(v2 + 2);
    v3[2](v3);
    os_unfair_lock_unlock(v2 + 2);

    v4 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_instance_registrar_get_instance_count";
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
        *&buf[4] = "nw_protocol_instance_registrar_get_instance_count";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null registrar", buf, 0xCu);
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
          *&buf[4] = "nw_protocol_instance_registrar_get_instance_count";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null registrar, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_get_instance_count";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null registrar, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_registrar_get_instance_count";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null registrar, backtrace limit exceeded", buf, 0xCu);
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

void sub_181C1756C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_protocol_default_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_default_output_finished";
    v8 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v8, &type, &v16))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v19 = "nw_protocol_default_output_finished";
      v11 = "%{public}s called with null protocol";
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type;
      v13 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_protocol_default_output_finished";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v8)
        {
          return;
        }

        goto LABEL_41;
      }

      if (!v13)
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v19 = "nw_protocol_default_output_finished";
      v11 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_40;
      }

      *buf = 136446210;
      v19 = "nw_protocol_default_output_finished";
      v11 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_39:
    _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    goto LABEL_40;
  }

  output_handler = a1->output_handler;
  if (output_handler)
  {
    callbacks = output_handler->callbacks;
    if (callbacks && (output_finished = callbacks->output_finished) != 0)
    {

      output_finished();
    }

    else
    {
      v6 = __nwlog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        identifier = "<null>";
        if (a1->identifier)
        {
          identifier = a1->identifier;
        }

        *buf = 136446466;
        v19 = "nw_protocol_default_output_finished";
        v20 = 2082;
        v21 = identifier;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s Protocol %{public}s does not support output finished", buf, 0x16u);
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_default_output_finished";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v8, &type, &v16))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v19 = "nw_protocol_default_output_finished";
    v11 = "%{public}s called with null protocol->output_handler";
    goto LABEL_39;
  }

  if (v16 != 1)
  {
    v9 = __nwlog_obj();
    v10 = type;
    if (!os_log_type_enabled(v9, type))
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v19 = "nw_protocol_default_output_finished";
    v11 = "%{public}s called with null protocol->output_handler, backtrace limit exceeded";
    goto LABEL_39;
  }

  v14 = __nw_create_backtrace_string();
  v9 = __nwlog_obj();
  v10 = type;
  v15 = os_log_type_enabled(v9, type);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_40;
    }

    *buf = 136446210;
    v19 = "nw_protocol_default_output_finished";
    v11 = "%{public}s called with null protocol->output_handler, no backtrace";
    goto LABEL_39;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_protocol_default_output_finished";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null protocol->output_handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v8)
  {
LABEL_41:
    free(v8);
  }
}

uint64_t nw_endpoint_handler_stack_uses_tls(void *a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v49 = "nw_endpoint_handler_stack_uses_tls";
    v39 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (__nwlog_fault(v39, &type, &v46))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v40, type))
        {
          *buf = 136446210;
          v49 = "nw_endpoint_handler_stack_uses_tls";
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v46 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v43 = type;
        v44 = os_log_type_enabled(v40, type);
        if (backtrace_string)
        {
          if (v44)
          {
            *buf = 136446466;
            v49 = "nw_endpoint_handler_stack_uses_tls";
            v50 = 2082;
            v51 = backtrace_string;
            _os_log_impl(&dword_181A37000, v40, v43, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_97;
        }

        if (v44)
        {
          *buf = 136446210;
          v49 = "nw_endpoint_handler_stack_uses_tls";
          _os_log_impl(&dword_181A37000, v40, v43, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v40 = __nwlog_obj();
        v45 = type;
        if (os_log_type_enabled(v40, type))
        {
          *buf = 136446210;
          v49 = "nw_endpoint_handler_stack_uses_tls";
          _os_log_impl(&dword_181A37000, v40, v45, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_97:
    if (v39)
    {
      free(v39);
    }

    goto LABEL_58;
  }

  os_unfair_lock_lock(v1 + 28);
  if (v2[29]._os_unfair_lock_opaque == 2)
  {
    v3 = v2;
    os_unfair_lock_opaque = v2[29]._os_unfair_lock_opaque;

    if (os_unfair_lock_opaque == 2)
    {
      v5 = nw_endpoint_handler_copy_flow(v3);
      os_unfair_lock_lock(v5 + 220);
      if (*(v5 + 32) & 2) != 0 || (*(v5 + 33))
      {
        v14 = v3;
        v15 = v14[4];

        if (v15)
        {
          v16 = _nw_parameters_copy_default_protocol_stack(v15);
          v17 = nw_protocol_boringssl_copy_definition();
          v6 = nw_protocol_stack_includes_protocol(v16, v17);
        }

        else
        {
          v6 = 0;
        }
      }

      else if (*(v5 + 117))
      {
        v6 = nw_endpoint_handler_stack_uses_tls();
      }

      else
      {
        v6 = 0;
      }

      os_unfair_lock_unlock(v5 + 220);

      goto LABEL_79;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_unfair_lock_opaque > 5)
    {
      v13 = "unknown-mode";
    }

    else
    {
      v13 = off_1E6A31018[os_unfair_lock_opaque];
    }

    *buf = 136446722;
    v49 = "nw_endpoint_flow_stack_uses_tls";
    v50 = 2082;
    v51 = v13;
    v52 = 2082;
    v53 = "flow";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v46 = 0;
    if (__nwlog_fault(v18, &type, &v46))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          if (os_unfair_lock_opaque > 5)
          {
            v21 = "unknown-mode";
          }

          else
          {
            v21 = off_1E6A31018[os_unfair_lock_opaque];
          }

          *buf = 136446722;
          v49 = "nw_endpoint_flow_stack_uses_tls";
          v50 = 2082;
          v51 = v21;
          v52 = 2082;
          v53 = "flow";
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v46 == 1)
      {
        v22 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v23 = type;
        v24 = os_log_type_enabled(v19, type);
        if (v22)
        {
          if (v24)
          {
            if (os_unfair_lock_opaque > 5)
            {
              v25 = "unknown-mode";
            }

            else
            {
              v25 = off_1E6A31018[os_unfair_lock_opaque];
            }

            *buf = 136446978;
            v49 = "nw_endpoint_flow_stack_uses_tls";
            v50 = 2082;
            v51 = v25;
            v52 = 2082;
            v53 = "flow";
            v54 = 2082;
            v55 = v22;
            _os_log_impl(&dword_181A37000, v19, v23, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v22);
          if (!v18)
          {
            goto LABEL_78;
          }

          goto LABEL_77;
        }

        if (v24)
        {
          if (os_unfair_lock_opaque > 5)
          {
            v36 = "unknown-mode";
          }

          else
          {
            v36 = off_1E6A31018[os_unfair_lock_opaque];
          }

          *buf = 136446722;
          v49 = "nw_endpoint_flow_stack_uses_tls";
          v50 = 2082;
          v51 = v36;
          v52 = 2082;
          v53 = "flow";
          _os_log_impl(&dword_181A37000, v19, v23, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v32 = type;
        if (os_log_type_enabled(v19, type))
        {
          if (os_unfair_lock_opaque > 5)
          {
            v33 = "unknown-mode";
          }

          else
          {
            v33 = off_1E6A31018[os_unfair_lock_opaque];
          }

          *buf = 136446722;
          v49 = "nw_endpoint_flow_stack_uses_tls";
          v50 = 2082;
          v51 = v33;
          v52 = 2082;
          v53 = "flow";
          _os_log_impl(&dword_181A37000, v19, v32, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

    if (!v18)
    {
LABEL_78:
      v6 = 0;
LABEL_79:

      os_unfair_lock_unlock(v2 + 28);
      goto LABEL_80;
    }

LABEL_77:
    free(v18);
    goto LABEL_78;
  }

  os_unfair_lock_unlock(v2 + 28);
  if ((v2[71]._os_unfair_lock_opaque & 0x40) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v7 = gconnectionLogObj;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    if (v2[71]._os_unfair_lock_opaque)
    {
      v8 = "dry-run ";
    }

    else
    {
      v8 = "";
    }

    v9 = nw_endpoint_handler_copy_endpoint(v2);
    v10 = v9;
    if (v9)
    {
      logging_description = _nw_endpoint_get_logging_description(v9);
    }

    else
    {
      logging_description = "<NULL>";
    }

    v26 = v2[30]._os_unfair_lock_opaque;
    if (v26 > 5)
    {
      v27 = "unknown-state";
    }

    else
    {
      v27 = off_1E6A31048[v26];
    }

    v28 = v2;
    v29 = v28;
    v30 = v2[29]._os_unfair_lock_opaque;
    if (v30 > 2)
    {
      switch(v30)
      {
        case 3:
          v31 = "proxy";
          goto LABEL_56;
        case 4:
          v31 = "fallback";
          goto LABEL_56;
        case 5:
          v31 = "transform";
          goto LABEL_56;
      }
    }

    else
    {
      switch(v30)
      {
        case 0:
          v31 = "path";
          goto LABEL_56;
        case 1:
          v31 = "resolver";
          goto LABEL_56;
        case 2:
          v31 = nw_endpoint_flow_mode_string(v28[33]);
LABEL_56:

          v34 = v29;
          os_unfair_lock_lock(v2 + 28);
          v35 = v34[8];
          os_unfair_lock_unlock(v2 + 28);

          *buf = 136447746;
          v49 = "nw_endpoint_handler_stack_uses_tls";
          v50 = 2082;
          v51 = v2 + 46;
          v52 = 2082;
          v53 = v8;
          v54 = 2082;
          v55 = logging_description;
          v56 = 2082;
          v57 = v27;
          v58 = 2082;
          v59 = v31;
          v60 = 2114;
          v61 = v35;
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Endpoint handler is not flow", buf, 0x48u);

LABEL_57:
          goto LABEL_58;
      }
    }

    v31 = "unknown-mode";
    goto LABEL_56;
  }

LABEL_58:
  v6 = 0;
LABEL_80:

  return v6;
}

uint64_t nw_establishment_report_get_handshake_ms_for_protocol(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v25 = 0;
    enumerate_block[0] = MEMORY[0x1E69E9820];
    enumerate_block[1] = 3221225472;
    enumerate_block[2] = ___ZL53nw_establishment_report_get_handshake_ms_for_protocolPU37objcproto26OS_nw_establishment_report8NSObjectPU36objcproto25OS_nw_protocol_definitionS_S3__block_invoke;
    enumerate_block[3] = &unk_1E6A3B910;
    v19 = v6;
    v20 = v7;
    v21 = buf;
    nw_establishment_report_enumerate_protocols(v5, enumerate_block);
    v8 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_establishment_report_get_handshake_ms_for_protocol";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v11, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_establishment_report_get_handshake_ms_for_protocol";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null match_protocol", buf, 0xCu);
      }
    }

    else if (v22 == 1)
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
          *&buf[4] = "nw_establishment_report_get_handshake_ms_for_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null match_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v16)
      {
        *buf = 136446210;
        *&buf[4] = "nw_establishment_report_get_handshake_ms_for_protocol";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null match_protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_establishment_report_get_handshake_ms_for_protocol";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null match_protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_3:

  return v8;
}

void sub_181C18710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL53nw_establishment_report_get_handshake_ms_for_protocolPU37objcproto26OS_nw_establishment_report8NSObjectPU36objcproto25OS_nw_protocol_definitionS_S3__block_invoke(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (nw_protocol_definition_is_equal_unsafe(v5, a1[4]) || (v6 = a1[5]) != 0 && nw_protocol_definition_is_equal_unsafe(v5, v6))
  {
    v7 = 0;
    *(*(a1[6] + 8) + 24) = a3;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t nw_connection_get_tls_version(NWConcrete_nw_connection *a1, BOOL *a2)
{
  v3 = a1;
  v4 = nw_protocol_boringssl_copy_definition();
  v5 = nw_connection_copy_protocol_metadata(&v3->super, v4);

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    if (nw_protocol_copy_quic_stream_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_quic_stream_definition_onceToken, &__block_literal_global_63);
    }

    v9 = nw_protocol_copy_quic_stream_definition_quic_definition;
    v8 = nw_connection_copy_protocol_metadata(&v3->super, v9);

    if (!v8)
    {
      v6 = 0;
      goto LABEL_34;
    }

    v10 = v8;
    v11 = v10;
    if (_nw_protocol_metadata_is_quic_stream(v10))
    {
      v11 = nw_quic_stream_copy_connection_metadata(v10);
    }

    v12 = nw_quic_connection_copy_sec_protocol_metadata(v11);

    v6 = v12;
    if (!v12)
    {
      v8 = 0;
      goto LABEL_34;
    }
  }

  negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(v6);
  if (negotiated_tls_protocol_version > 771)
  {
    switch(negotiated_tls_protocol_version)
    {
      case 772:
        v8 = 5;
        if (!a2)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      case 65277:
        v8 = 7;
        if (!a2)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      case 65279:
        v8 = 6;
        if (!a2)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (negotiated_tls_protocol_version == 769)
  {
    v8 = 2;
    if (!a2)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (negotiated_tls_protocol_version != 770)
  {
    if (negotiated_tls_protocol_version == 771)
    {
      v8 = 4;
      if (!a2)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }

LABEL_26:
    v8 = 0;
    if (!a2)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v8 = 3;
  if (!a2)
  {
    goto LABEL_34;
  }

LABEL_31:
  tls_negotiated_group = sec_protocol_metadata_get_tls_negotiated_group();
  if (tls_negotiated_group && strstr(tls_negotiated_group, "MLKEM"))
  {
    *a2 = 1;
  }

LABEL_34:

  return v8;
}

void ___ZL37nw_connection_log_summary_on_nw_queueP24NWConcrete_nw_connection_block_invoke(uint64_t a1, uint64_t a2)
{
  v664 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 104))
  {
    if (*(a1 + 124))
    {
      if (*(a1 + 148))
      {
        v6 = *(a1 + 108);
        if (v6 > 7)
        {
          v7 = "Unknown TLS Version";
        }

        else
        {
          v7 = *(&off_1E6A3BC18 + v6);
        }

        v70 = *(a1 + 72);
        v71 = *(*(a1 + 32) + 109);
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v10 = gconnectionLogObj;
        v72 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        if (v70)
        {
          if ((v71 & 4) == 0)
          {
            if (v72)
            {
              v73 = *(a1 + 32);
              v623 = *(v73 + 448);
              logging_description = nw_endpoint_get_logging_description(*(v73 + 8));
              id_string = nw_endpoint_handler_get_id_string(*(a1 + 40));
              v609 = *(a1 + 80);
              description = nw_endpoint_get_description(*(a1 + 48));
              v77 = nw_endpoint_get_logging_description(*(a1 + 56));
              v78 = *(a1 + 144) - 1;
              if (v78 > 4)
              {
                v79 = "Unknown";
              }

              else
              {
                v79 = off_1E6A2C978[v78];
              }

              v522 = *(a1 + 116);
              v521 = *(a1 + 120);
              v523 = v522 / 0x3E8;
              v524 = *(a1 + 72);
              v525 = v524[1];
              v526 = v522 % 0x3E8;
              v527 = v524[5];
              v528 = v524[6];
              v530 = v524[8];
              v529 = v524[9];
              v531 = v524[10];
              v532 = v524[11];
              v533 = v524[12];
              v534 = v524[13];
              v537 = v524 + 14;
              v536 = v524[14];
              v535 = v537[1];
              *&v659[6] = v526;
              v538 = v521 / 0x3E8;
              *&v659[18] = v521 % 0x3E8;
              *&v659[142] = v530;
              *&v659[152] = v532;
              *&v659[162] = v533;
              v539 = *(a1 + 88);
              *&v659[182] = v536;
              LODWORD(v536) = *(a1 + 128);
              LODWORD(v533) = *(a1 + 132);
              *&v659[24] = v539;
              *&v659[34] = v536 / 0x3E8;
              LODWORD(v539) = *(a1 + 136);
              *&v659[58] = v7;
              *&v659[74] = v539 % 0x3E8;
              *&v659[80] = v528;
              *&v659[90] = v529;
              *&v659[110] = v527;
              *&v659[126] = v535 % 0x3E8;
              *&v659[46] = v533 / 0x3E8;
              LODWORD(v529) = *(a1 + 112);
              v635 = v623;
              v639 = v73 + 452;
              v641 = logging_description;
              v643 = a2;
              v645 = id_string;
              v636 = 1042;
              v646 = 1042;
              v637 = 16;
              v647 = 16;
              v638 = 2098;
              v648 = 2098;
              v649 = v609;
              v651 = description;
              v653 = v77;
              v654 = 2114;
              v655 = *(a1 + 64);
              *v657 = v79;
              *v658 = v529 / 0x3E8;
              *&v658[6] = v529 % 0x3E8;
              *v659 = v523;
              *&v659[12] = v538;
              *&v659[40] = v536 % 0x3E8;
              *&v659[52] = v533 % 0x3E8;
              v640 = 2082;
              v642 = 2082;
              v644 = 2082;
              v650 = 2082;
              v652 = 2082;
              v656 = 2082;
              *&v659[22] = 2082;
              *&v659[56] = 2082;
              *&v659[68] = v539 / 0x3E8;
              *&v659[100] = v525;
              *&v659[120] = v535 / 0x3E8;
              *&v657[8] = 1024;
              *&v658[4] = 1024;
              *&v658[10] = 1024;
              *&v659[4] = 1024;
              *&v659[10] = 1024;
              *&v659[16] = 1024;
              *&v659[32] = 1024;
              *&v659[38] = 1024;
              *&v659[44] = 1024;
              *&v659[50] = 1024;
              *&v659[66] = 1024;
              *&v659[72] = 1024;
              *&v659[118] = 1024;
              *&v659[124] = 1024;
              *&v659[132] = v531;
              *&v659[172] = v534;
              *&v659[78] = 2048;
              *&v659[88] = 2048;
              *&v659[98] = 2048;
              *&v659[108] = 2048;
              *&v659[130] = 2048;
              *&v659[140] = 2048;
              *&v659[150] = 2048;
              *&v659[160] = 2048;
              *&v659[170] = 2048;
              *&v659[180] = 2048;
              *buf = 67118594;
              v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tPrivacy Stance: %{public}s\n\tDuration: %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us, %{public}s took %u.%03us\n\tbytes in/out: %llu/%llu, packets in/out: %llu/%llu, rtt: %u.%03us, retransmitted bytes: %llu, out-of-order bytes: %llu\n\tecn packets sent/acked/marked/lost: %llu/%llu/%llu/%llu";
              v135 = v10;
              v136 = 314;
              goto LABEL_201;
            }

            goto LABEL_202;
          }

          if (!v72)
          {
            goto LABEL_202;
          }

          v627 = a2;
          v137 = *(a1 + 32);
          v611 = *(v137 + 448);
          v138 = nw_endpoint_get_logging_description(*(v137 + 8));
          v139 = nw_endpoint_handler_get_id_string(*(a1 + 40));
          v140 = *(a1 + 80);
          v141 = nw_endpoint_get_description(*(a1 + 48));
          v142 = nw_endpoint_get_logging_description(*(a1 + 56));
          v144 = *(a1 + 128);
          v143 = *(a1 + 132);
          v145 = *(a1 + 72);
          v146 = v145[1];
          v147 = v145[5];
          v148 = v145[6];
          v150 = v145[8];
          v149 = v145[9];
          v152 = v145[10];
          v151 = v145[11];
          v154 = v145[12];
          v153 = v145[13];
          v157 = v145 + 14;
          v155 = v145[14];
          v156 = v157[1];
          *&v659[14] = *(a1 + 88);
          v158 = v144 / 0x3E8;
          *&v659[30] = v144 % 0x3E8;
          v159 = v143 / 0x3E8;
          *&v659[42] = v143 % 0x3E8;
          v160 = *(a1 + 136);
          *&v659[48] = v7;
          *&v659[58] = v160 / 0x3E8;
          *&v659[70] = v148;
          *&v659[80] = v149;
          *&v659[142] = v151;
          *&v659[152] = v154;
          *&v659[162] = v153;
          LODWORD(v148) = *(a1 + 112);
          LODWORD(v149) = *(a1 + 116);
          *&v659[90] = v146;
          *&v659[122] = v152;
          *&v659[110] = v156 / 0x3E8;
          LODWORD(v146) = v156 % 0x3E8;
          LODWORD(v156) = *(a1 + 120);
          v635 = v611;
          v639 = v137 + 452;
          v641 = v138;
          v643 = v627;
          v645 = v139;
          v636 = 1042;
          v646 = 1042;
          v637 = 16;
          v647 = 16;
          v638 = 2098;
          v648 = 2098;
          v649 = v140;
          v651 = v141;
          v653 = v142;
          v654 = 2114;
          v655 = *(a1 + 64);
          *v657 = v148 / 0x3E8;
          *&v657[6] = v148 % 0x3E8;
          *&v658[2] = v149 / 0x3E8;
          *&v658[8] = v149 % 0x3E8;
          *&v659[2] = v156 / 0x3E8;
          *&v659[8] = v156 % 0x3E8;
          *&v659[24] = v158;
          *&v659[36] = v159;
          v640 = 2082;
          v642 = 2082;
          v644 = 2082;
          v650 = 2082;
          v652 = 2082;
          *&v659[12] = 2082;
          *&v659[46] = 2082;
          *&v659[64] = v160 % 0x3E8;
          *&v659[100] = v147;
          v656 = 1024;
          *&v657[4] = 1024;
          *v658 = 1024;
          *&v658[6] = 1024;
          *v659 = 1024;
          *&v659[6] = 1024;
          *&v659[22] = 1024;
          *&v659[28] = 1024;
          *&v659[34] = 1024;
          *&v659[40] = 1024;
          *&v659[56] = 1024;
          *&v659[62] = 1024;
          *&v659[108] = 1024;
          *&v659[114] = 1024;
          *&v659[116] = v146;
          *&v659[132] = v150;
          *&v659[68] = 2048;
          *&v659[78] = 2048;
          *&v659[88] = 2048;
          *&v659[98] = 2048;
          *&v659[120] = 2048;
          *&v659[130] = 2048;
          *&v659[140] = 2048;
          *&v659[150] = 2048;
          *&v659[160] = 2048;
          *&v659[170] = 2048;
          *&v659[172] = v155;
          *buf = 67118338;
          v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tDuration: %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us, %{public}s took %u.%03us\n\tbytes in/out: %llu/%llu, packets in/out: %llu/%llu, rtt: %u.%03us, retransmitted bytes: %llu, out-of-order bytes: %llu\n\tecn packets sent/acked/marked/lost: %llu/%llu/%llu/%llu";
          v135 = v10;
          v136 = 304;
        }

        else
        {
          if ((v71 & 4) == 0)
          {
            if (v72)
            {
              v626 = a2;
              v99 = *(a1 + 32);
              v100 = *(v99 + 448);
              v101 = nw_endpoint_get_logging_description(*(v99 + 8));
              v102 = nw_endpoint_handler_get_id_string(*(a1 + 40));
              v103 = *(a1 + 80);
              v104 = nw_endpoint_get_description(*(a1 + 48));
              v105 = nw_endpoint_get_logging_description(*(a1 + 56));
              v106 = *(a1 + 144) - 1;
              if (v106 > 4)
              {
                v107 = "Unknown";
              }

              else
              {
                v107 = off_1E6A2C978[v106];
              }

              v561 = *(a1 + 64);
              v562 = *(a1 + 112);
              v563 = *(a1 + 116);
              v564 = v562 / 0x3E8;
              v565 = *(a1 + 120);
              v566 = v562 % 0x3E8;
              v567 = *(a1 + 88);
              v568 = *(a1 + 128);
              v569 = *(a1 + 132);
              v570 = *(a1 + 136);
              *buf = 67115522;
              v635 = v100;
              v636 = 1042;
              v637 = 16;
              v638 = 2098;
              v639 = v99 + 452;
              v640 = 2082;
              v641 = v101;
              v642 = 2082;
              v643 = v626;
              v644 = 2082;
              v645 = v102;
              v646 = 1042;
              v647 = 16;
              v648 = 2098;
              v649 = v103;
              v650 = 2082;
              v651 = v104;
              v652 = 2082;
              v653 = v105;
              v654 = 2114;
              v655 = v561;
              v656 = 2082;
              *v657 = v107;
              *&v657[8] = 1024;
              *v658 = v564;
              *&v658[4] = 1024;
              *&v658[6] = v566;
              *&v658[10] = 1024;
              *v659 = v563 / 0x3E8;
              *&v659[4] = 1024;
              *&v659[6] = v563 % 0x3E8;
              *&v659[10] = 1024;
              *&v659[12] = v565 / 0x3E8;
              *&v659[16] = 1024;
              *&v659[18] = v565 % 0x3E8;
              *&v659[22] = 2082;
              *&v659[24] = v567;
              *&v659[32] = 1024;
              *&v659[34] = v568 / 0x3E8;
              *&v659[38] = 1024;
              *&v659[40] = v568 % 0x3E8;
              *&v659[44] = 1024;
              *&v659[46] = v569 / 0x3E8;
              *&v659[50] = 1024;
              *&v659[52] = v569 % 0x3E8;
              *&v659[56] = 2082;
              *&v659[58] = v7;
              *&v659[66] = 1024;
              *&v659[68] = v570 / 0x3E8;
              *&v659[72] = 1024;
              *&v659[74] = v570 % 0x3E8;
              v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tPrivacy Stance: %{public}s\n\tDuration: %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us, %{public}s took %u.%03us";
              v135 = v10;
              v136 = 202;
              goto LABEL_201;
            }

            goto LABEL_202;
          }

          if (!v72)
          {
            goto LABEL_202;
          }

          v631 = a2;
          v238 = *(a1 + 32);
          v239 = *(v238 + 448);
          v240 = nw_endpoint_get_logging_description(*(v238 + 8));
          v241 = nw_endpoint_handler_get_id_string(*(a1 + 40));
          v242 = *(a1 + 80);
          v243 = nw_endpoint_get_description(*(a1 + 48));
          v244 = nw_endpoint_get_logging_description(*(a1 + 56));
          v245 = *(a1 + 64);
          v246 = *(a1 + 112);
          v247 = *(a1 + 116);
          v248 = v246 / 0x3E8;
          v249 = *(a1 + 120);
          v250 = v246 % 0x3E8;
          v251 = *(a1 + 88);
          v252 = *(a1 + 128);
          v253 = *(a1 + 132);
          v254 = *(a1 + 136);
          *buf = 67115266;
          v635 = v239;
          v636 = 1042;
          v637 = 16;
          v638 = 2098;
          v639 = v238 + 452;
          v640 = 2082;
          v641 = v240;
          v642 = 2082;
          v643 = v631;
          v644 = 2082;
          v645 = v241;
          v646 = 1042;
          v647 = 16;
          v648 = 2098;
          v649 = v242;
          v650 = 2082;
          v651 = v243;
          v652 = 2082;
          v653 = v244;
          v654 = 2114;
          v655 = v245;
          v656 = 1024;
          *v657 = v248;
          *&v657[4] = 1024;
          *&v657[6] = v250;
          *v658 = 1024;
          *&v658[2] = v247 / 0x3E8;
          *&v658[6] = 1024;
          *&v658[8] = v247 % 0x3E8;
          *v659 = 1024;
          *&v659[2] = v249 / 0x3E8;
          *&v659[6] = 1024;
          *&v659[8] = v249 % 0x3E8;
          *&v659[12] = 2082;
          *&v659[14] = v251;
          *&v659[22] = 1024;
          *&v659[24] = v252 / 0x3E8;
          *&v659[28] = 1024;
          *&v659[30] = v252 % 0x3E8;
          *&v659[34] = 1024;
          *&v659[36] = v253 / 0x3E8;
          *&v659[40] = 1024;
          *&v659[42] = v253 % 0x3E8;
          *&v659[46] = 2082;
          *&v659[48] = v7;
          *&v659[56] = 1024;
          *&v659[58] = v254 / 0x3E8;
          *&v659[62] = 1024;
          *&v659[64] = v254 % 0x3E8;
          v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tDuration: %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us, %{public}s took %u.%03us";
          v135 = v10;
          v136 = 192;
        }
      }

      else
      {
        v27 = *(a1 + 72);
        v28 = *(*(a1 + 32) + 109);
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v10 = gconnectionLogObj;
        v29 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        if (v27)
        {
          if ((v28 & 4) == 0)
          {
            if (v29)
            {
              v618 = a2;
              v30 = *(a1 + 32);
              v31 = *(v30 + 448);
              v32 = nw_endpoint_get_logging_description(*(v30 + 8));
              v33 = nw_endpoint_handler_get_id_string(*(a1 + 40));
              v34 = *(a1 + 80);
              v35 = nw_endpoint_get_description(*(a1 + 48));
              v36 = nw_endpoint_get_logging_description(*(a1 + 56));
              v37 = v30 + 452;
              v38 = *(a1 + 144) - 1;
              if (v38 > 4)
              {
                v39 = "Unknown";
              }

              else
              {
                v39 = off_1E6A2C978[v38];
              }

              v502 = *(a1 + 116);
              v501 = *(a1 + 120);
              v503 = v502 / 0x3E8;
              v504 = *(a1 + 72);
              v505 = v504[1];
              v506 = v502 % 0x3E8;
              v508 = v504[5];
              v507 = v504[6];
              v509 = v504[8];
              v510 = v504[9];
              v512 = v504[10];
              v511 = v504[11];
              v513 = v504[12];
              v514 = v504[13];
              v517 = v504 + 14;
              v516 = v504[14];
              v515 = v517[1];
              *&v659[6] = v506;
              v518 = v501 / 0x3E8;
              *&v659[18] = v501 % 0x3E8;
              *&v659[150] = v514;
              v519 = *(a1 + 88);
              *&v659[160] = v516;
              v520 = *(a1 + 128);
              LODWORD(v516) = *(a1 + 132);
              *&v659[24] = v519;
              *&v659[34] = v520 / 0x3E8;
              *&v659[46] = v516 / 0x3E8;
              *&v659[58] = v507;
              *&v659[78] = v505;
              *&v659[88] = v508;
              *&v659[110] = v512;
              *&v659[120] = v509;
              *&v659[130] = v511;
              *&v659[98] = v515 / 0x3E8;
              LODWORD(v508) = *(a1 + 112);
              v635 = v31;
              v639 = v37;
              v641 = v32;
              v643 = v618;
              v645 = v33;
              v636 = 1042;
              v646 = 1042;
              v637 = 16;
              v647 = 16;
              v638 = 2098;
              v648 = 2098;
              v649 = v34;
              v651 = v35;
              v653 = v36;
              v654 = 2114;
              v655 = *(a1 + 64);
              *v657 = v39;
              *v658 = v508 / 0x3E8;
              *&v658[6] = v508 % 0x3E8;
              *v659 = v503;
              *&v659[12] = v518;
              v640 = 2082;
              v642 = 2082;
              v644 = 2082;
              v650 = 2082;
              v652 = 2082;
              v656 = 2082;
              *&v659[22] = 2082;
              *&v659[40] = v520 % 0x3E8;
              *&v659[52] = v516 % 0x3E8;
              *&v659[68] = v510;
              *&v657[8] = 1024;
              *&v658[4] = 1024;
              *&v658[10] = 1024;
              *&v659[4] = 1024;
              *&v659[10] = 1024;
              *&v659[16] = 1024;
              *&v659[32] = 1024;
              *&v659[38] = 1024;
              *&v659[44] = 1024;
              *&v659[50] = 1024;
              *&v659[96] = 1024;
              *&v659[102] = 1024;
              *&v659[104] = v515 % 0x3E8;
              *&v659[140] = v513;
              *&v659[56] = 2048;
              *&v659[66] = 2048;
              *&v659[76] = 2048;
              *&v659[86] = 2048;
              *&v659[108] = 2048;
              *&v659[118] = 2048;
              *&v659[128] = 2048;
              *&v659[138] = 2048;
              *&v659[148] = 2048;
              *&v659[158] = 2048;
              *buf = 67117826;
              v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tPrivacy Stance: %{public}s\n\tDuration: %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us\n\tbytes in/out: %llu/%llu, packets in/out: %llu/%llu, rtt: %u.%03us, retransmitted bytes: %llu, out-of-order bytes: %llu\n\tecn packets sent/acked/marked/lost: %llu/%llu/%llu/%llu";
              v135 = v10;
              v136 = 292;
              goto LABEL_201;
            }

            goto LABEL_202;
          }

          if (!v29)
          {
            goto LABEL_202;
          }

          v108 = a2;
          v109 = *(a1 + 32);
          v110 = *(v109 + 448);
          v111 = nw_endpoint_get_logging_description(*(v109 + 8));
          v112 = nw_endpoint_handler_get_id_string(*(a1 + 40));
          v113 = *(a1 + 80);
          v114 = nw_endpoint_get_description(*(a1 + 48));
          v115 = nw_endpoint_get_logging_description(*(a1 + 56));
          v116 = *(a1 + 128);
          v117 = *(a1 + 132);
          v118 = *(a1 + 72);
          v119 = v118[1];
          v121 = v118[5];
          v120 = v118[6];
          v122 = v118[8];
          v123 = v118[9];
          v125 = v118[10];
          v124 = v118[11];
          v127 = v118[12];
          v126 = v118[13];
          v130 = v118 + 14;
          v129 = v118[14];
          v128 = v130[1];
          *&v659[14] = *(a1 + 88);
          v131 = v116 / 0x3E8;
          *&v659[30] = v116 % 0x3E8;
          v132 = v117 / 0x3E8;
          *&v659[42] = v117 % 0x3E8;
          *&v659[48] = v120;
          *&v659[58] = v123;
          *&v659[78] = v121;
          *&v659[94] = v128 % 0x3E8;
          *&v659[110] = v122;
          *&v659[120] = v124;
          v133 = *(a1 + 112);
          LODWORD(v122) = *(a1 + 116);
          *&v659[130] = v127;
          *&v659[150] = v129;
          LODWORD(v124) = *(a1 + 120);
          v635 = v110;
          v639 = v109 + 452;
          v641 = v111;
          v643 = v108;
          v645 = v112;
          v636 = 1042;
          v646 = 1042;
          v637 = 16;
          v647 = 16;
          v638 = 2098;
          v648 = 2098;
          v649 = v113;
          v651 = v114;
          v653 = v115;
          v654 = 2114;
          v655 = *(a1 + 64);
          *v657 = v133 / 0x3E8;
          *&v657[6] = v133 % 0x3E8;
          *&v658[2] = v122 / 0x3E8;
          *&v658[8] = v122 % 0x3E8;
          *&v659[2] = v124 / 0x3E8;
          *&v659[8] = v124 % 0x3E8;
          v640 = 2082;
          v642 = 2082;
          v644 = 2082;
          v650 = 2082;
          v652 = 2082;
          *&v659[12] = 2082;
          *&v659[24] = v131;
          *&v659[36] = v132;
          *&v659[68] = v119;
          *&v659[88] = v128 / 0x3E8;
          v656 = 1024;
          *&v657[4] = 1024;
          *v658 = 1024;
          *&v658[6] = 1024;
          *v659 = 1024;
          *&v659[6] = 1024;
          *&v659[22] = 1024;
          *&v659[28] = 1024;
          *&v659[34] = 1024;
          *&v659[40] = 1024;
          *&v659[86] = 1024;
          *&v659[92] = 1024;
          *&v659[100] = v125;
          *&v659[140] = v126;
          *&v659[46] = 2048;
          *&v659[56] = 2048;
          *&v659[66] = 2048;
          *&v659[76] = 2048;
          *&v659[98] = 2048;
          *&v659[108] = 2048;
          *&v659[118] = 2048;
          *&v659[128] = 2048;
          *&v659[138] = 2048;
          *&v659[148] = 2048;
          *buf = 67117570;
          v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tDuration: %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us\n\tbytes in/out: %llu/%llu, packets in/out: %llu/%llu, rtt: %u.%03us, retransmitted bytes: %llu, out-of-order bytes: %llu\n\tecn packets sent/acked/marked/lost: %llu/%llu/%llu/%llu";
          v135 = v10;
          v136 = 282;
        }

        else
        {
          if ((v28 & 4) == 0)
          {
            if (v29)
            {
              v89 = a2;
              v90 = *(a1 + 32);
              v91 = *(v90 + 448);
              v92 = nw_endpoint_get_logging_description(*(v90 + 8));
              v93 = nw_endpoint_handler_get_id_string(*(a1 + 40));
              v94 = *(a1 + 80);
              v95 = nw_endpoint_get_description(*(a1 + 48));
              v96 = nw_endpoint_get_logging_description(*(a1 + 56));
              v97 = *(a1 + 144) - 1;
              if (v97 > 4)
              {
                v98 = "Unknown";
              }

              else
              {
                v98 = off_1E6A2C978[v97];
              }

              v552 = *(a1 + 64);
              v553 = *(a1 + 112);
              v554 = *(a1 + 116);
              v555 = v553 / 0x3E8;
              v556 = *(a1 + 120);
              v557 = v553 % 0x3E8;
              v558 = *(a1 + 88);
              v559 = *(a1 + 128);
              v560 = *(a1 + 132);
              *buf = 67114754;
              v635 = v91;
              v636 = 1042;
              v637 = 16;
              v638 = 2098;
              v639 = v90 + 452;
              v641 = v92;
              v640 = 2082;
              v642 = 2082;
              v643 = v89;
              v644 = 2082;
              v645 = v93;
              v646 = 1042;
              v647 = 16;
              v648 = 2098;
              v649 = v94;
              v650 = 2082;
              v651 = v95;
              v652 = 2082;
              v653 = v96;
              v654 = 2114;
              v655 = v552;
              v656 = 2082;
              *v657 = v98;
              *&v657[8] = 1024;
              *v658 = v555;
              *&v658[4] = 1024;
              *&v658[6] = v557;
              *&v658[10] = 1024;
              *v659 = v554 / 0x3E8;
              *&v659[4] = 1024;
              *&v659[6] = v554 % 0x3E8;
              *&v659[10] = 1024;
              *&v659[12] = v556 / 0x3E8;
              *&v659[16] = 1024;
              *&v659[18] = v556 % 0x3E8;
              *&v659[22] = 2082;
              *&v659[24] = v558;
              *&v659[32] = 1024;
              *&v659[34] = v559 / 0x3E8;
              *&v659[38] = 1024;
              *&v659[40] = v559 % 0x3E8;
              *&v659[44] = 1024;
              *&v659[46] = v560 / 0x3E8;
              *&v659[50] = 1024;
              *&v659[52] = v560 % 0x3E8;
              v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tPrivacy Stance: %{public}s\n\tDuration: %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us";
              v135 = v10;
              v136 = 180;
              goto LABEL_201;
            }

            goto LABEL_202;
          }

          if (!v29)
          {
            goto LABEL_202;
          }

          v221 = a2;
          v222 = *(a1 + 32);
          v223 = *(v222 + 448);
          v224 = nw_endpoint_get_logging_description(*(v222 + 8));
          v225 = nw_endpoint_handler_get_id_string(*(a1 + 40));
          v226 = *(a1 + 80);
          v227 = nw_endpoint_get_description(*(a1 + 48));
          v228 = nw_endpoint_get_logging_description(*(a1 + 56));
          v229 = *(a1 + 64);
          v230 = *(a1 + 112);
          v231 = *(a1 + 116);
          v232 = v230 / 0x3E8;
          v233 = *(a1 + 120);
          v234 = v230 % 0x3E8;
          v235 = *(a1 + 88);
          v236 = *(a1 + 128);
          v237 = *(a1 + 132);
          *buf = 67114498;
          v635 = v223;
          v636 = 1042;
          v637 = 16;
          v638 = 2098;
          v639 = v222 + 452;
          v641 = v224;
          v640 = 2082;
          v642 = 2082;
          v643 = v221;
          v644 = 2082;
          v645 = v225;
          v646 = 1042;
          v647 = 16;
          v648 = 2098;
          v649 = v226;
          v650 = 2082;
          v651 = v227;
          v652 = 2082;
          v653 = v228;
          v654 = 2114;
          v655 = v229;
          v656 = 1024;
          *v657 = v232;
          *&v657[4] = 1024;
          *&v657[6] = v234;
          *v658 = 1024;
          *&v658[2] = v231 / 0x3E8;
          *&v658[6] = 1024;
          *&v658[8] = v231 % 0x3E8;
          *v659 = 1024;
          *&v659[2] = v233 / 0x3E8;
          *&v659[6] = 1024;
          *&v659[8] = v233 % 0x3E8;
          *&v659[12] = 2082;
          *&v659[14] = v235;
          *&v659[22] = 1024;
          *&v659[24] = v236 / 0x3E8;
          *&v659[28] = 1024;
          *&v659[30] = v236 % 0x3E8;
          *&v659[34] = 1024;
          *&v659[36] = v237 / 0x3E8;
          *&v659[40] = 1024;
          *&v659[42] = v237 % 0x3E8;
          v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tDuration: %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us";
          v135 = v10;
          v136 = 170;
        }
      }
    }

    else if (*(a1 + 148))
    {
      v25 = *(a1 + 108);
      if (v25 > 7)
      {
        v26 = "Unknown TLS Version";
      }

      else
      {
        v26 = *(&off_1E6A3BC18 + v25);
      }

      v161 = *(a1 + 72);
      v162 = *(*(a1 + 32) + 109);
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      v163 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v161)
      {
        if ((v162 & 4) == 0)
        {
          if (v163)
          {
            v628 = a2;
            v164 = *(a1 + 32);
            v165 = *(v164 + 448);
            v166 = nw_endpoint_get_logging_description(*(v164 + 8));
            v167 = nw_endpoint_handler_get_id_string(*(a1 + 40));
            v168 = *(a1 + 80);
            v169 = nw_endpoint_get_description(*(a1 + 48));
            v170 = nw_endpoint_get_logging_description(*(a1 + 56));
            v171 = *(a1 + 144) - 1;
            if (v171 > 4)
            {
              v172 = "Unknown";
            }

            else
            {
              v172 = off_1E6A2C978[v171];
            }

            v571 = *(a1 + 72);
            v572 = v571[1];
            v573 = v571[5];
            v574 = v571[6];
            v576 = v571[8];
            v575 = v571[9];
            v578 = v571[10];
            v577 = v571[11];
            v579 = v571[12];
            v580 = v571[13];
            v583 = v571 + 14;
            v582 = v571[14];
            v581 = v583[1];
            *&v659[138] = v579;
            *&v659[158] = v582;
            v584 = *(a1 + 128);
            LODWORD(v582) = *(a1 + 132);
            *&v659[10] = v584 / 0x3E8;
            LODWORD(v579) = *(a1 + 136);
            *&v659[34] = v26;
            *&v659[50] = v579 % 0x3E8;
            *&v659[56] = v574;
            *&v659[66] = v575;
            *&v659[86] = v573;
            *&v659[102] = v581 % 0x3E8;
            *&v659[118] = v576;
            *&v659[128] = v577;
            *&v659[22] = v582 / 0x3E8;
            LODWORD(v575) = *(a1 + 112);
            v635 = v165;
            v639 = v164 + 452;
            v641 = v166;
            v643 = v628;
            v645 = v167;
            v636 = 1042;
            v646 = 1042;
            v637 = 16;
            v647 = 16;
            v638 = 2098;
            v648 = 2098;
            v649 = v168;
            v651 = v169;
            v653 = v170;
            v654 = 2114;
            v655 = *(a1 + 64);
            *v657 = v172;
            *v658 = v575 / 0x3E8;
            *&v658[6] = v575 % 0x3E8;
            *v659 = *(a1 + 88);
            *&v659[16] = v584 % 0x3E8;
            *&v659[28] = v582 % 0x3E8;
            v640 = 2082;
            v642 = 2082;
            v644 = 2082;
            v650 = 2082;
            v652 = 2082;
            v656 = 2082;
            *&v658[10] = 2082;
            *&v659[32] = 2082;
            *&v659[44] = v579 / 0x3E8;
            *&v659[76] = v572;
            *&v659[96] = v581 / 0x3E8;
            *&v657[8] = 1024;
            *&v658[4] = 1024;
            *&v659[8] = 1024;
            *&v659[14] = 1024;
            *&v659[20] = 1024;
            *&v659[26] = 1024;
            *&v659[42] = 1024;
            *&v659[48] = 1024;
            *&v659[94] = 1024;
            *&v659[100] = 1024;
            *&v659[108] = v578;
            *&v659[148] = v580;
            *&v659[54] = 2048;
            *&v659[64] = 2048;
            *&v659[74] = 2048;
            *&v659[84] = 2048;
            *&v659[106] = 2048;
            *&v659[116] = 2048;
            *&v659[126] = 2048;
            *&v659[136] = 2048;
            *&v659[146] = 2048;
            *&v659[156] = 2048;
            *buf = 67117570;
            v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tPrivacy Stance: %{public}s\n\tDuration: %u.%03us, %{public}s @%u.%03us took %u.%03us, %{public}s took %u.%03us\n\tbytes in/out: %llu/%llu, packets in/out: %llu/%llu, rtt: %u.%03us, retransmitted bytes: %llu, out-of-order bytes: %llu\n\tecn packets sent/acked/marked/lost: %llu/%llu/%llu/%llu";
            v135 = v10;
            v136 = 290;
            goto LABEL_201;
          }

          goto LABEL_202;
        }

        if (!v163)
        {
          goto LABEL_202;
        }

        v632 = a2;
        v255 = *(a1 + 32);
        v256 = *(v255 + 448);
        v257 = nw_endpoint_get_logging_description(*(v255 + 8));
        v258 = nw_endpoint_handler_get_id_string(*(a1 + 40));
        v259 = *(a1 + 80);
        v260 = nw_endpoint_get_description(*(a1 + 48));
        v261 = nw_endpoint_get_logging_description(*(a1 + 56));
        v262 = *(a1 + 72);
        v263 = v262[1];
        v264 = v262[5];
        v265 = v262[6];
        v266 = v262[8];
        v267 = v262[9];
        v269 = v262[10];
        v268 = v262[11];
        v270 = v262[12];
        v271 = v262[13];
        v274 = v262 + 14;
        v272 = v262[14];
        v273 = v274[1];
        *&v659[138] = v271;
        LODWORD(v271) = *(a1 + 128);
        v275 = *(a1 + 132);
        v276 = v271 / 0x3E8;
        *&v659[6] = v271 % 0x3E8;
        LODWORD(v271) = v275 / 0x3E8;
        *&v659[18] = v275 % 0x3E8;
        v277 = *(a1 + 136);
        *&v659[24] = v26;
        *&v659[34] = v277 / 0x3E8;
        *&v659[46] = v265;
        *&v659[56] = v267;
        *&v659[66] = v263;
        *&v659[98] = v269;
        *&v659[118] = v268;
        *&v659[128] = v270;
        *&v659[86] = v273 / 0x3E8;
        LODWORD(v265) = *(a1 + 112);
        v635 = v256;
        v639 = v255 + 452;
        v641 = v257;
        v643 = v632;
        v645 = v258;
        v636 = 1042;
        v646 = 1042;
        v637 = 16;
        v647 = 16;
        v638 = 2098;
        v648 = 2098;
        v649 = v259;
        v651 = v260;
        v653 = v261;
        v654 = 2114;
        v655 = *(a1 + 64);
        *v657 = v265 / 0x3E8;
        *&v657[6] = v265 % 0x3E8;
        *&v658[2] = *(a1 + 88);
        *v659 = v276;
        *&v659[12] = v271;
        v640 = 2082;
        v642 = 2082;
        v644 = 2082;
        v650 = 2082;
        v652 = 2082;
        *v658 = 2082;
        *&v659[22] = 2082;
        *&v659[40] = v277 % 0x3E8;
        *&v659[76] = v264;
        v656 = 1024;
        *&v657[4] = 1024;
        *&v658[10] = 1024;
        *&v659[4] = 1024;
        *&v659[10] = 1024;
        *&v659[16] = 1024;
        *&v659[32] = 1024;
        *&v659[38] = 1024;
        *&v659[84] = 1024;
        *&v659[90] = 1024;
        *&v659[92] = v273 % 0x3E8;
        *&v659[108] = v266;
        *&v659[44] = 2048;
        *&v659[54] = 2048;
        *&v659[64] = 2048;
        *&v659[74] = 2048;
        *&v659[96] = 2048;
        *&v659[106] = 2048;
        *&v659[116] = 2048;
        *&v659[126] = 2048;
        *&v659[136] = 2048;
        *&v659[146] = 2048;
        *&v659[148] = v272;
        *buf = 67117314;
        v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tDuration: %u.%03us, %{public}s @%u.%03us took %u.%03us, %{public}s took %u.%03us\n\tbytes in/out: %llu/%llu, packets in/out: %llu/%llu, rtt: %u.%03us, retransmitted bytes: %llu, out-of-order bytes: %llu\n\tecn packets sent/acked/marked/lost: %llu/%llu/%llu/%llu";
        v135 = v10;
        v136 = 280;
      }

      else
      {
        if ((v162 & 4) == 0)
        {
          if (v163)
          {
            v629 = a2;
            v183 = *(a1 + 32);
            v184 = *(v183 + 448);
            v185 = nw_endpoint_get_logging_description(*(v183 + 8));
            v186 = nw_endpoint_handler_get_id_string(*(a1 + 40));
            v187 = *(a1 + 80);
            v188 = nw_endpoint_get_description(*(a1 + 48));
            v189 = nw_endpoint_get_logging_description(*(a1 + 56));
            v190 = *(a1 + 144) - 1;
            if (v190 > 4)
            {
              v191 = "Unknown";
            }

            else
            {
              v191 = off_1E6A2C978[v190];
            }

            v590 = *(a1 + 64);
            v591 = *(a1 + 112);
            v592 = *(a1 + 88);
            v593 = *(a1 + 128);
            v594 = *(a1 + 132);
            v595 = *(a1 + 136);
            *buf = 67114498;
            v635 = v184;
            v636 = 1042;
            v637 = 16;
            v639 = v183 + 452;
            v638 = 2098;
            v641 = v185;
            v640 = 2082;
            v642 = 2082;
            v643 = v629;
            v644 = 2082;
            v645 = v186;
            v646 = 1042;
            v647 = 16;
            v648 = 2098;
            v649 = v187;
            v650 = 2082;
            v651 = v188;
            v652 = 2082;
            v653 = v189;
            v654 = 2114;
            v655 = v590;
            v656 = 2082;
            *v657 = v191;
            *&v657[8] = 1024;
            *v658 = v591 / 0x3E8;
            *&v658[4] = 1024;
            *&v658[6] = v591 % 0x3E8;
            *&v658[10] = 2082;
            *v659 = v592;
            *&v659[8] = 1024;
            *&v659[10] = v593 / 0x3E8;
            *&v659[14] = 1024;
            *&v659[16] = v593 % 0x3E8;
            *&v659[20] = 1024;
            *&v659[22] = v594 / 0x3E8;
            *&v659[26] = 1024;
            *&v659[28] = v594 % 0x3E8;
            *&v659[32] = 2082;
            *&v659[34] = v26;
            *&v659[42] = 1024;
            *&v659[44] = v595 / 0x3E8;
            *&v659[48] = 1024;
            *&v659[50] = v595 % 0x3E8;
            v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tPrivacy Stance: %{public}s\n\tDuration: %u.%03us, %{public}s @%u.%03us took %u.%03us, %{public}s took %u.%03us";
            v135 = v10;
            v136 = 178;
            goto LABEL_201;
          }

          goto LABEL_202;
        }

        if (!v163)
        {
          goto LABEL_202;
        }

        v633 = a2;
        v409 = *(a1 + 32);
        v410 = *(v409 + 448);
        v411 = nw_endpoint_get_logging_description(*(v409 + 8));
        v412 = nw_endpoint_handler_get_id_string(*(a1 + 40));
        v413 = *(a1 + 80);
        v414 = nw_endpoint_get_description(*(a1 + 48));
        v415 = nw_endpoint_get_logging_description(*(a1 + 56));
        v416 = *(a1 + 64);
        v417 = *(a1 + 112);
        v418 = *(a1 + 88);
        v419 = *(a1 + 128);
        v420 = *(a1 + 132);
        v421 = *(a1 + 136);
        *buf = 67114242;
        v635 = v410;
        v636 = 1042;
        v637 = 16;
        v639 = v409 + 452;
        v638 = 2098;
        v641 = v411;
        v640 = 2082;
        v642 = 2082;
        v643 = v633;
        v644 = 2082;
        v645 = v412;
        v646 = 1042;
        v647 = 16;
        v648 = 2098;
        v649 = v413;
        v650 = 2082;
        v651 = v414;
        v652 = 2082;
        v653 = v415;
        v654 = 2114;
        v655 = v416;
        v656 = 1024;
        *v657 = v417 / 0x3E8;
        *&v657[4] = 1024;
        *&v657[6] = v417 % 0x3E8;
        *v658 = 2082;
        *&v658[2] = v418;
        *&v658[10] = 1024;
        *v659 = v419 / 0x3E8;
        *&v659[4] = 1024;
        *&v659[6] = v419 % 0x3E8;
        *&v659[10] = 1024;
        *&v659[12] = v420 / 0x3E8;
        *&v659[16] = 1024;
        *&v659[18] = v420 % 0x3E8;
        *&v659[22] = 2082;
        *&v659[24] = v26;
        *&v659[32] = 1024;
        *&v659[34] = v421 / 0x3E8;
        *&v659[38] = 1024;
        *&v659[40] = v421 % 0x3E8;
        v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tDuration: %u.%03us, %{public}s @%u.%03us took %u.%03us, %{public}s took %u.%03us";
        v135 = v10;
        v136 = 168;
      }
    }

    else
    {
      v57 = *(a1 + 72);
      v58 = *(*(a1 + 32) + 109);
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      v59 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v57)
      {
        if ((v58 & 4) == 0)
        {
          if (v59)
          {
            v60 = a2;
            v61 = *(a1 + 32);
            v62 = *(v61 + 448);
            v63 = nw_endpoint_get_logging_description(*(v61 + 8));
            v64 = nw_endpoint_handler_get_id_string(*(a1 + 40));
            v65 = *(a1 + 80);
            v66 = nw_endpoint_get_description(*(a1 + 48));
            v67 = nw_endpoint_get_logging_description(*(a1 + 56));
            v68 = *(a1 + 144) - 1;
            if (v68 > 4)
            {
              v69 = "Unknown";
            }

            else
            {
              v69 = off_1E6A2C978[v68];
            }

            v540 = *(a1 + 72);
            v541 = v540[1];
            v542 = v540[5];
            v543 = v540[6];
            v544 = v540[8];
            v545 = v540[9];
            v547 = v540[10];
            v546 = v540[11];
            v549 = v540[12];
            v548 = v540[13];
            v550 = v540[15];
            *&v659[136] = v540[14];
            LODWORD(v540) = *(a1 + 128);
            v551 = *(a1 + 132);
            *&v659[10] = v540 / 0x3E8;
            *&v659[22] = v551 / 0x3E8;
            *&v659[34] = v543;
            *&v659[54] = v541;
            *&v659[64] = v542;
            *&v659[86] = v547;
            *&v659[96] = v544;
            *&v659[106] = v546;
            *&v659[126] = v548;
            *&v659[74] = v550 / 0x3E8;
            LODWORD(v542) = *(a1 + 112);
            v635 = v62;
            v639 = v61 + 452;
            v641 = v63;
            v643 = v60;
            v645 = v64;
            v636 = 1042;
            v646 = 1042;
            v637 = 16;
            v647 = 16;
            v638 = 2098;
            v648 = 2098;
            v649 = v65;
            v651 = v66;
            v653 = v67;
            v654 = 2114;
            v655 = *(a1 + 64);
            *v657 = v69;
            *v658 = v542 / 0x3E8;
            *&v658[6] = v542 % 0x3E8;
            v640 = 2082;
            v642 = 2082;
            v644 = 2082;
            v650 = 2082;
            v652 = 2082;
            v656 = 2082;
            *&v658[10] = 2082;
            *v659 = *(a1 + 88);
            *&v659[16] = v540 % 0x3E8;
            *&v659[28] = v551 % 0x3E8;
            *&v659[44] = v545;
            *&v657[8] = 1024;
            *&v658[4] = 1024;
            *&v659[8] = 1024;
            *&v659[14] = 1024;
            *&v659[20] = 1024;
            *&v659[26] = 1024;
            *&v659[72] = 1024;
            *&v659[78] = 1024;
            *&v659[80] = v550 % 0x3E8;
            *&v659[116] = v549;
            *&v659[32] = 2048;
            *&v659[42] = 2048;
            *&v659[52] = 2048;
            *&v659[62] = 2048;
            *&v659[84] = 2048;
            *&v659[94] = 2048;
            *&v659[104] = 2048;
            *&v659[114] = 2048;
            *&v659[124] = 2048;
            *&v659[134] = 2048;
            *buf = 67116802;
            v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tPrivacy Stance: %{public}s\n\tDuration: %u.%03us, %{public}s @%u.%03us took %u.%03us\n\tbytes in/out: %llu/%llu, packets in/out: %llu/%llu, rtt: %u.%03us, retransmitted bytes: %llu, out-of-order bytes: %llu\n\tecn packets sent/acked/marked/lost: %llu/%llu/%llu/%llu";
            v135 = v10;
            v136 = 268;
            goto LABEL_201;
          }

          goto LABEL_202;
        }

        if (!v59)
        {
          goto LABEL_202;
        }

        v630 = a2;
        v192 = *(a1 + 32);
        v193 = *(v192 + 448);
        v194 = nw_endpoint_get_logging_description(*(v192 + 8));
        v601 = nw_endpoint_handler_get_id_string(*(a1 + 40));
        v612 = *(a1 + 80);
        v195 = nw_endpoint_get_description(*(a1 + 48));
        v196 = nw_endpoint_get_logging_description(*(a1 + 56));
        v197 = v192 + 452;
        v198 = *(a1 + 112);
        v199 = *(a1 + 88);
        v200 = v198 / 0x3E8;
        v202 = *(a1 + 128);
        v201 = *(a1 + 132);
        v203 = v198 % 0x3E8;
        v204 = *(a1 + 64);
        v205 = *(a1 + 72);
        v206 = v202 / 0x3E8;
        v207 = v205[1];
        v208 = v202 % 0x3E8;
        v209 = v205[5];
        v210 = v205[6];
        v211 = v201 / 0x3E8;
        v212 = v205[14];
        v213 = v201 % 0x3E8;
        v214 = v205[8];
        v215 = v205[9];
        v216 = v205[15] / 0x3E8;
        v218 = v205[10];
        v217 = v205[11];
        LODWORD(v192) = v205[15] % 0x3E8;
        v220 = v205[12];
        v219 = v205[13];
        *buf = 67116546;
        v635 = v193;
        v636 = 1042;
        v637 = 16;
        v638 = 2098;
        v639 = v197;
        v640 = 2082;
        v641 = v194;
        v642 = 2082;
        v643 = v630;
        v644 = 2082;
        v645 = v601;
        v646 = 1042;
        v647 = 16;
        v648 = 2098;
        v649 = v612;
        v650 = 2082;
        v651 = v195;
        v652 = 2082;
        v653 = v196;
        v654 = 2114;
        v655 = v204;
        v656 = 1024;
        *v657 = v200;
        *&v657[4] = 1024;
        *&v657[6] = v203;
        *v658 = 2082;
        *&v658[2] = v199;
        *&v658[10] = 1024;
        *v659 = v206;
        *&v659[4] = 1024;
        *&v659[6] = v208;
        *&v659[10] = 1024;
        *&v659[12] = v211;
        *&v659[16] = 1024;
        *&v659[18] = v213;
        *&v659[22] = 2048;
        *&v659[24] = v210;
        *&v659[32] = 2048;
        *&v659[34] = v215;
        *&v659[42] = 2048;
        *&v659[44] = v207;
        *&v659[52] = 2048;
        *&v659[54] = v209;
        *&v659[62] = 1024;
        *&v659[64] = v216;
        *&v659[68] = 1024;
        *&v659[70] = v192;
        *&v659[74] = 2048;
        *&v659[76] = v218;
        *&v659[84] = 2048;
        *&v659[86] = v214;
        *&v659[94] = 2048;
        *&v659[96] = v217;
        *&v659[104] = 2048;
        *&v659[106] = v220;
        *&v659[114] = 2048;
        *&v659[116] = v219;
        *&v659[124] = 2048;
        *&v659[126] = v212;
        v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tDuration: %u.%03us, %{public}s @%u.%03us took %u.%03us\n\tbytes in/out: %llu/%llu, packets in/out: %llu/%llu, rtt: %u.%03us, retransmitted bytes: %llu, out-of-order bytes: %llu\n\tecn packets sent/acked/marked/lost: %llu/%llu/%llu/%llu";
        v135 = v10;
        v136 = 258;
      }

      else
      {
        if ((v58 & 4) == 0)
        {
          if (v59)
          {
            v173 = a2;
            v174 = *(a1 + 32);
            v175 = *(v174 + 448);
            v176 = nw_endpoint_get_logging_description(*(v174 + 8));
            v177 = nw_endpoint_handler_get_id_string(*(a1 + 40));
            v178 = *(a1 + 80);
            v179 = nw_endpoint_get_description(*(a1 + 48));
            v180 = nw_endpoint_get_logging_description(*(a1 + 56));
            v181 = *(a1 + 144) - 1;
            if (v181 > 4)
            {
              v182 = "Unknown";
            }

            else
            {
              v182 = off_1E6A2C978[v181];
            }

            v585 = *(a1 + 64);
            v586 = *(a1 + 112);
            v587 = *(a1 + 88);
            v588 = *(a1 + 128);
            v589 = *(a1 + 132);
            *buf = 67113730;
            v635 = v175;
            v636 = 1042;
            v637 = 16;
            v639 = v174 + 452;
            v638 = 2098;
            v640 = 2082;
            v641 = v176;
            v642 = 2082;
            v643 = v173;
            v644 = 2082;
            v645 = v177;
            v646 = 1042;
            v647 = 16;
            v648 = 2098;
            v649 = v178;
            v650 = 2082;
            v651 = v179;
            v652 = 2082;
            v653 = v180;
            v654 = 2114;
            v655 = v585;
            v656 = 2082;
            *v657 = v182;
            *&v657[8] = 1024;
            *v658 = v586 / 0x3E8;
            *&v658[4] = 1024;
            *&v658[6] = v586 % 0x3E8;
            *&v658[10] = 2082;
            *v659 = v587;
            *&v659[8] = 1024;
            *&v659[10] = v588 / 0x3E8;
            *&v659[14] = 1024;
            *&v659[16] = v588 % 0x3E8;
            *&v659[20] = 1024;
            *&v659[22] = v589 / 0x3E8;
            *&v659[26] = 1024;
            *&v659[28] = v589 % 0x3E8;
            v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tPrivacy Stance: %{public}s\n\tDuration: %u.%03us, %{public}s @%u.%03us took %u.%03us";
            v135 = v10;
            v136 = 156;
            goto LABEL_201;
          }

          goto LABEL_202;
        }

        if (!v59)
        {
          goto LABEL_202;
        }

        v396 = a2;
        v397 = *(a1 + 32);
        v398 = *(v397 + 448);
        v399 = nw_endpoint_get_logging_description(*(v397 + 8));
        v400 = nw_endpoint_handler_get_id_string(*(a1 + 40));
        v401 = *(a1 + 80);
        v402 = nw_endpoint_get_description(*(a1 + 48));
        v403 = nw_endpoint_get_logging_description(*(a1 + 56));
        v404 = *(a1 + 64);
        v405 = *(a1 + 112);
        v406 = *(a1 + 88);
        v407 = *(a1 + 128);
        v408 = *(a1 + 132);
        *buf = 67113474;
        v635 = v398;
        v636 = 1042;
        v637 = 16;
        v639 = v397 + 452;
        v638 = 2098;
        v640 = 2082;
        v641 = v399;
        v642 = 2082;
        v643 = v396;
        v644 = 2082;
        v645 = v400;
        v646 = 1042;
        v647 = 16;
        v648 = 2098;
        v649 = v401;
        v650 = 2082;
        v651 = v402;
        v652 = 2082;
        v653 = v403;
        v654 = 2114;
        v655 = v404;
        v656 = 1024;
        *v657 = v405 / 0x3E8;
        *&v657[4] = 1024;
        *&v657[6] = v405 % 0x3E8;
        *v658 = 2082;
        *&v658[2] = v406;
        *&v658[10] = 1024;
        *v659 = v407 / 0x3E8;
        *&v659[4] = 1024;
        *&v659[6] = v407 % 0x3E8;
        *&v659[10] = 1024;
        *&v659[12] = v408 / 0x3E8;
        *&v659[16] = 1024;
        *&v659[18] = v408 % 0x3E8;
        v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tDuration: %u.%03us, %{public}s @%u.%03us took %u.%03us";
        v135 = v10;
        v136 = 146;
      }
    }

LABEL_201:
    _os_log_impl(&dword_181A37000, v135, OS_LOG_TYPE_DEFAULT, v134, buf, v136);
    goto LABEL_202;
  }

  if (*(a1 + 148) == 1)
  {
    v4 = *(a1 + 108);
    if (v4 > 7)
    {
      v5 = "Unknown TLS Version";
    }

    else
    {
      v5 = *(&off_1E6A3BC18 + v4);
    }

    v17 = *(a1 + 72);
    v18 = *(*(a1 + 32) + 109);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v10 = gconnectionLogObj;
    v19 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if ((v18 & 4) != 0)
      {
        if (v19)
        {
          v622 = a2;
          v53 = *(a1 + 32);
          v54 = *(v53 + 448);
          v55 = *(v53 + 8);
          v56 = v55;
          v608 = v54;
          if (v55)
          {
            v600 = _nw_endpoint_get_logging_description(v55);
          }

          else
          {
            v600 = "<NULL>";
          }

          v290 = nw_endpoint_handler_get_id_string(*(a1 + 40));
          v597 = *(a1 + 80);
          v291 = *(a1 + 48);
          v292 = v291;
          if (v291)
          {
            v293 = _nw_endpoint_get_description(v291);
          }

          else
          {
            v293 = "<NULL>";
          }

          v303 = *(a1 + 56);
          v304 = v303;
          if (v303)
          {
            v305 = _nw_endpoint_get_logging_description(v303);
          }

          else
          {
            v305 = "<NULL>";
          }

          v375 = *(a1 + 116);
          v376 = *(a1 + 120);
          v377 = v375 / 0x3E8;
          v378 = *(a1 + 88);
          v379 = *(a1 + 72);
          v380 = v375 % 0x3E8;
          v381 = v379[1];
          v382 = v376 / 0x3E8;
          v384 = v379[5];
          v383 = v379[6];
          v385 = v376 % 0x3E8;
          v387 = v379[8];
          v386 = v379[9];
          v389 = v379[10];
          v388 = v379[11];
          v390 = v379[12];
          v391 = v379[13];
          v392 = v379[14];
          v393 = v379[15];
          *&v659[14] = v377;
          *&v659[26] = v382;
          v394 = *(a1 + 128);
          v395 = *(a1 + 132);
          *&v659[38] = v378;
          *&v659[54] = v394 % 0x3E8;
          *&v659[66] = v395 % 0x3E8;
          *&v659[72] = v5;
          *&v659[94] = v383;
          *&v659[104] = v386;
          LODWORD(v383) = *(a1 + 136);
          *&v659[114] = v381;
          *&v659[82] = v383 / 0x3E8;
          LODWORD(v381) = v383 % 0x3E8;
          *&v659[146] = v389;
          LODWORD(v383) = *(a1 + 112);
          *&v659[166] = v388;
          *&v659[176] = v390;
          *&v659[134] = v393 / 0x3E8;
          *&v659[186] = v391;
          LODWORD(v391) = *(a1 + 96);
          LODWORD(v386) = *(a1 + 100);
          v635 = v608;
          v639 = v53 + 452;
          v641 = v600;
          v643 = v622;
          v645 = v290;
          v636 = 1042;
          v646 = 1042;
          v637 = 16;
          v647 = 16;
          v638 = 2098;
          v648 = 2098;
          v649 = v597;
          v651 = v293;
          v653 = v305;
          v654 = 2114;
          v655 = *(a1 + 64);
          *v657 = v383 / 0x3E8;
          *&v657[6] = v383 % 0x3E8;
          *&v658[2] = v391 / 0x3E8;
          *&v658[8] = v391 % 0x3E8;
          *&v659[2] = v386 / 0x3E8;
          *&v659[8] = v386 % 0x3E8;
          *&v659[20] = v380;
          *&v659[32] = v385;
          *&v659[48] = v394 / 0x3E8;
          *&v659[60] = v395 / 0x3E8;
          v640 = 2082;
          v642 = 2082;
          v644 = 2082;
          v650 = 2082;
          v652 = 2082;
          *&v659[36] = 2082;
          *&v659[70] = 2082;
          *&v659[88] = v381;
          *&v659[124] = v384;
          v656 = 1024;
          *&v657[4] = 1024;
          *v658 = 1024;
          *&v658[6] = 1024;
          *v659 = 1024;
          *&v659[6] = 1024;
          *&v659[12] = 1024;
          *&v659[18] = 1024;
          *&v659[24] = 1024;
          *&v659[30] = 1024;
          *&v659[46] = 1024;
          *&v659[52] = 1024;
          *&v659[58] = 1024;
          *&v659[64] = 1024;
          *&v659[80] = 1024;
          *&v659[86] = 1024;
          *&v659[132] = 1024;
          *&v659[138] = 1024;
          *&v659[140] = v393 % 0x3E8;
          *&v659[156] = v387;
          *&v659[92] = 2048;
          *&v659[102] = 2048;
          *&v659[112] = 2048;
          *&v659[122] = 2048;
          *&v659[144] = 2048;
          *&v659[154] = 2048;
          *&v659[164] = 2048;
          *&v659[174] = 2048;
          *&v659[184] = 2048;
          v660 = 2048;
          v661 = v392;
          *buf = 67119362;
          v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tDuration: %u.%03us, Bonjour @%u.%03us took %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us, %{public}s took %u.%03us\n\tbytes in/out: %llu/%llu, packets in/out: %llu/%llu, rtt: %u.%03us, retransmitted bytes: %llu, out-of-order bytes: %llu\n\tecn packets sent/acked/marked/lost: %llu/%llu/%llu/%llu";
          v135 = v10;
          v136 = 328;
          goto LABEL_201;
        }
      }

      else if (v19)
      {
        v617 = a2;
        v20 = *(a1 + 32);
        v21 = *(v20 + 448);
        v22 = *(v20 + 8);
        v23 = v22;
        v606 = v21;
        if (v22)
        {
          v24 = _nw_endpoint_get_logging_description(v22);
        }

        else
        {
          v24 = "<NULL>";
        }

        v596 = nw_endpoint_handler_get_id_string(*(a1 + 40));
        v603 = *(a1 + 80);
        v282 = *(a1 + 48);
        v283 = v282;
        if (v282)
        {
          v284 = _nw_endpoint_get_description(v282);
        }

        else
        {
          v284 = "<NULL>";
        }

        v297 = *(a1 + 56);
        v298 = v297;
        if (v297)
        {
          v299 = _nw_endpoint_get_logging_description(v297);
        }

        else
        {
          v299 = "<NULL>";
        }

        v331 = v20 + 452;

        v332 = *(a1 + 144) - 1;
        if (v332 > 4)
        {
          v333 = "Unknown";
        }

        else
        {
          v333 = off_1E6A2C978[v332];
        }

        v334 = *(a1 + 96);
        v335 = *(a1 + 100);
        v336 = v334 / 0x3E8;
        v337 = *(a1 + 116);
        v338 = *(a1 + 72);
        v339 = v334 % 0x3E8;
        v340 = v338[1];
        v341 = v335 / 0x3E8;
        v342 = v338[5];
        v343 = v338[6];
        v344 = v335 % 0x3E8;
        v345 = v338[8];
        v346 = v338[9];
        v348 = v338[10];
        v347 = v338[11];
        v349 = v338[12];
        v350 = v338[13];
        v353 = v338 + 14;
        v351 = v338[14];
        v352 = v353[1];
        *&v659[6] = v339;
        *&v659[18] = v344;
        v354 = *(a1 + 120);
        *&v659[30] = v337 % 0x3E8;
        *&v659[42] = v354 % 0x3E8;
        *&v659[134] = v342;
        *&v659[150] = v352 % 0x3E8;
        *&v659[166] = v345;
        *&v659[176] = v347;
        *&v659[186] = v349;
        v355 = *(a1 + 88);
        v663 = v351;
        LODWORD(v351) = *(a1 + 128);
        LODWORD(v345) = *(a1 + 132);
        *&v659[48] = v355;
        *&v659[58] = v351 / 0x3E8;
        LODWORD(v355) = *(a1 + 136);
        *&v659[82] = v5;
        *&v659[98] = v355 % 0x3E8;
        *&v659[104] = v343;
        *&v659[114] = v346;
        *&v659[70] = v345 / 0x3E8;
        LODWORD(v346) = *(a1 + 112);
        v635 = v606;
        v639 = v331;
        v641 = v24;
        v643 = v617;
        v645 = v596;
        v636 = 1042;
        v646 = 1042;
        v637 = 16;
        v647 = 16;
        v638 = 2098;
        v648 = 2098;
        v649 = v603;
        v651 = v284;
        v653 = v299;
        v654 = 2114;
        v655 = *(a1 + 64);
        *v657 = v333;
        *v658 = v346 / 0x3E8;
        *&v658[6] = v346 % 0x3E8;
        *v659 = v336;
        *&v659[12] = v341;
        *&v659[24] = v337 / 0x3E8;
        *&v659[36] = v354 / 0x3E8;
        *&v659[64] = v351 % 0x3E8;
        *&v659[76] = v345 % 0x3E8;
        v640 = 2082;
        v642 = 2082;
        v644 = 2082;
        v650 = 2082;
        v652 = 2082;
        v656 = 2082;
        *&v659[46] = 2082;
        *&v659[80] = 2082;
        *&v659[92] = v355 / 0x3E8;
        *&v659[124] = v340;
        *&v659[144] = v352 / 0x3E8;
        *&v657[8] = 1024;
        *&v658[4] = 1024;
        *&v658[10] = 1024;
        *&v659[4] = 1024;
        *&v659[10] = 1024;
        *&v659[16] = 1024;
        *&v659[22] = 1024;
        *&v659[28] = 1024;
        *&v659[34] = 1024;
        *&v659[40] = 1024;
        *&v659[56] = 1024;
        *&v659[62] = 1024;
        *&v659[68] = 1024;
        *&v659[74] = 1024;
        *&v659[90] = 1024;
        *&v659[96] = 1024;
        *&v659[142] = 1024;
        *&v659[148] = 1024;
        *&v659[156] = v348;
        v661 = v350;
        *&v659[102] = 2048;
        *&v659[112] = 2048;
        *&v659[122] = 2048;
        *&v659[132] = 2048;
        *&v659[154] = 2048;
        *&v659[164] = 2048;
        *&v659[174] = 2048;
        *&v659[184] = 2048;
        v660 = 2048;
        v662 = 2048;
        *buf = 67119618;
        v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tPrivacy Stance: %{public}s\n\tDuration: %u.%03us, Bonjour @%u.%03us took %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us, %{public}s took %u.%03us\n\tbytes in/out: %llu/%llu, packets in/out: %llu/%llu, rtt: %u.%03us, retransmitted bytes: %llu, out-of-order bytes: %llu\n\tecn packets sent/acked/marked/lost: %llu/%llu/%llu/%llu";
        v135 = v10;
        v136 = 338;
        goto LABEL_201;
      }
    }

    else if ((v18 & 4) != 0)
    {
      if (v19)
      {
        v625 = a2;
        v84 = *(a1 + 32);
        v85 = *(v84 + 448);
        v86 = *(v84 + 8);
        v87 = v86;
        if (v86)
        {
          v88 = _nw_endpoint_get_logging_description(v86);
        }

        else
        {
          v88 = "<NULL>";
        }

        v604 = nw_endpoint_handler_get_id_string(*(a1 + 40));
        v615 = *(a1 + 80);
        v435 = *(a1 + 48);
        v436 = v435;
        if (v435)
        {
          v437 = _nw_endpoint_get_description(v435);
        }

        else
        {
          v437 = "<NULL>";
        }

        v446 = *(a1 + 56);
        v447 = v446;
        if (v446)
        {
          v448 = _nw_endpoint_get_logging_description(v446);
        }

        else
        {
          v448 = "<NULL>";
        }

        v489 = *(a1 + 64);
        v490 = *(a1 + 112);
        v491 = *(a1 + 116);
        v492 = v490 / 0x3E8;
        v493 = v490 % 0x3E8;
        v495 = *(a1 + 96);
        v494 = *(a1 + 100);
        v496 = *(a1 + 120);
        v497 = *(a1 + 88);
        v498 = *(a1 + 128);
        v499 = *(a1 + 132);
        v500 = *(a1 + 136);
        *buf = 67116290;
        v635 = v85;
        v636 = 1042;
        v637 = 16;
        v638 = 2098;
        v639 = v84 + 452;
        v641 = v88;
        v640 = 2082;
        v642 = 2082;
        v643 = v625;
        v644 = 2082;
        v645 = v604;
        v646 = 1042;
        v647 = 16;
        v648 = 2098;
        v649 = v615;
        v650 = 2082;
        v651 = v437;
        v652 = 2082;
        v653 = v448;
        v654 = 2114;
        v655 = v489;
        v656 = 1024;
        *v657 = v492;
        *&v657[4] = 1024;
        *&v657[6] = v493;
        *v658 = 1024;
        *&v658[2] = v495 / 0x3E8;
        *&v658[6] = 1024;
        *&v658[8] = v495 % 0x3E8;
        *v659 = 1024;
        *&v659[2] = v494 / 0x3E8;
        *&v659[6] = 1024;
        *&v659[8] = v494 % 0x3E8;
        *&v659[12] = 1024;
        *&v659[14] = v491 / 0x3E8;
        *&v659[18] = 1024;
        *&v659[20] = v491 % 0x3E8;
        *&v659[24] = 1024;
        *&v659[26] = v496 / 0x3E8;
        *&v659[30] = 1024;
        *&v659[32] = v496 % 0x3E8;
        *&v659[36] = 2082;
        *&v659[38] = v497;
        *&v659[46] = 1024;
        *&v659[48] = v498 / 0x3E8;
        *&v659[52] = 1024;
        *&v659[54] = v498 % 0x3E8;
        *&v659[58] = 1024;
        *&v659[60] = v499 / 0x3E8;
        *&v659[64] = 1024;
        *&v659[66] = v499 % 0x3E8;
        *&v659[70] = 2082;
        *&v659[72] = v5;
        *&v659[80] = 1024;
        *&v659[82] = v500 / 0x3E8;
        *&v659[86] = 1024;
        *&v659[88] = v500 % 0x3E8;
        v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tDuration: %u.%03us, Bonjour @%u.%03us took %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us, %{public}s took %u.%03us";
        v135 = v10;
        v136 = 216;
        goto LABEL_201;
      }
    }

    else if (v19)
    {
      v620 = a2;
      v44 = *(a1 + 32);
      v45 = *(v44 + 448);
      v46 = *(v44 + 8);
      v47 = v46;
      if (v46)
      {
        v48 = _nw_endpoint_get_logging_description(v46);
      }

      else
      {
        v48 = "<NULL>";
      }

      v426 = nw_endpoint_handler_get_id_string(*(a1 + 40));
      v427 = *(a1 + 80);
      v428 = *(a1 + 48);
      v429 = v428;
      if (v428)
      {
        v614 = _nw_endpoint_get_description(v428);
      }

      else
      {
        v614 = "<NULL>";
      }

      v441 = *(a1 + 56);
      v442 = v441;
      if (v441)
      {
        v598 = _nw_endpoint_get_logging_description(v441);
      }

      else
      {
        v598 = "<NULL>";
      }

      v463 = v44 + 452;

      v464 = *(a1 + 144) - 1;
      if (v464 > 4)
      {
        v465 = "Unknown";
      }

      else
      {
        v465 = off_1E6A2C978[v464];
      }

      v466 = *(a1 + 64);
      v467 = *(a1 + 112);
      v468 = *(a1 + 116);
      v469 = v467 / 0x3E8;
      v470 = v467 % 0x3E8;
      v472 = *(a1 + 96);
      v471 = *(a1 + 100);
      v473 = *(a1 + 120);
      v474 = *(a1 + 88);
      v475 = *(a1 + 128);
      v476 = *(a1 + 132);
      v477 = *(a1 + 136);
      *buf = 67116546;
      v635 = v45;
      v636 = 1042;
      v637 = 16;
      v638 = 2098;
      v639 = v463;
      v641 = v48;
      v640 = 2082;
      v642 = 2082;
      v643 = v620;
      v644 = 2082;
      v645 = v426;
      v646 = 1042;
      v647 = 16;
      v648 = 2098;
      v649 = v427;
      v650 = 2082;
      v651 = v614;
      v652 = 2082;
      v653 = v598;
      v654 = 2114;
      v655 = v466;
      v656 = 2082;
      *v657 = v465;
      *&v657[8] = 1024;
      *v658 = v469;
      *&v658[4] = 1024;
      *&v658[6] = v470;
      *&v658[10] = 1024;
      *v659 = v472 / 0x3E8;
      *&v659[4] = 1024;
      *&v659[6] = v472 % 0x3E8;
      *&v659[10] = 1024;
      *&v659[12] = v471 / 0x3E8;
      *&v659[16] = 1024;
      *&v659[18] = v471 % 0x3E8;
      *&v659[22] = 1024;
      *&v659[24] = v468 / 0x3E8;
      *&v659[28] = 1024;
      *&v659[30] = v468 % 0x3E8;
      *&v659[34] = 1024;
      *&v659[36] = v473 / 0x3E8;
      *&v659[40] = 1024;
      *&v659[42] = v473 % 0x3E8;
      *&v659[46] = 2082;
      *&v659[48] = v474;
      *&v659[56] = 1024;
      *&v659[58] = v475 / 0x3E8;
      *&v659[62] = 1024;
      *&v659[64] = v475 % 0x3E8;
      *&v659[68] = 1024;
      *&v659[70] = v476 / 0x3E8;
      *&v659[74] = 1024;
      *&v659[76] = v476 % 0x3E8;
      *&v659[80] = 2082;
      *&v659[82] = v5;
      *&v659[90] = 1024;
      *&v659[92] = v477 / 0x3E8;
      *&v659[96] = 1024;
      *&v659[98] = v477 % 0x3E8;
      v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tPrivacy Stance: %{public}s\n\tDuration: %u.%03us, Bonjour @%u.%03us took %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us, %{public}s took %u.%03us";
      v135 = v10;
      v136 = 226;
      goto LABEL_201;
    }
  }

  else
  {
    v8 = *(a1 + 72);
    v9 = *(*(a1 + 32) + 109);
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v10 = gconnectionLogObj;
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if ((v9 & 4) != 0)
      {
        if (v11)
        {
          v621 = a2;
          v49 = *(a1 + 32);
          v50 = *(v49 + 448);
          v51 = *(v49 + 8);
          v52 = v51;
          v607 = v50;
          if (v51)
          {
            v599 = _nw_endpoint_get_logging_description(v51);
          }

          else
          {
            v599 = "<NULL>";
          }

          v285 = nw_endpoint_handler_get_id_string(*(a1 + 40));
          v286 = *(a1 + 80);
          v287 = *(a1 + 48);
          v288 = v287;
          if (v287)
          {
            v289 = _nw_endpoint_get_description(v287);
          }

          else
          {
            v289 = "<NULL>";
          }

          v300 = *(a1 + 56);
          v301 = v300;
          if (v300)
          {
            v302 = _nw_endpoint_get_logging_description(v300);
          }

          else
          {
            v302 = "<NULL>";
          }

          v356 = *(a1 + 116);
          v357 = *(a1 + 88);
          v358 = v356 / 0x3E8;
          v359 = *(a1 + 72);
          v360 = v359[1];
          v361 = v356 % 0x3E8;
          v363 = v359[5];
          v362 = v359[6];
          v365 = v359[8];
          v364 = v359[9];
          v367 = v359[10];
          v366 = v359[11];
          v369 = v359[12];
          v368 = v359[13];
          v372 = v359 + 14;
          v371 = v359[14];
          v370 = v372[1];
          *&v659[14] = v358;
          v373 = *(a1 + 128);
          v374 = *(a1 + 132);
          *&v659[38] = v357;
          *&v659[54] = v373 % 0x3E8;
          *&v659[66] = v374 % 0x3E8;
          *&v659[72] = v362;
          *&v659[82] = v364;
          LODWORD(v362) = *(a1 + 120);
          *&v659[102] = v363;
          *&v659[118] = v370 % 0x3E8;
          *&v659[26] = v362 / 0x3E8;
          *&v659[134] = v365;
          *&v659[144] = v366;
          LODWORD(v365) = *(a1 + 112);
          *&v659[154] = v369;
          *&v659[174] = v371;
          LODWORD(v371) = *(a1 + 96);
          LODWORD(v366) = *(a1 + 100);
          v635 = v607;
          v639 = v49 + 452;
          v641 = v599;
          v643 = v621;
          v645 = v285;
          v636 = 1042;
          v646 = 1042;
          v637 = 16;
          v647 = 16;
          v638 = 2098;
          v648 = 2098;
          v649 = v286;
          v651 = v289;
          v653 = v302;
          v654 = 2114;
          v655 = *(a1 + 64);
          *v657 = v365 / 0x3E8;
          *&v657[6] = v365 % 0x3E8;
          *&v658[2] = v371 / 0x3E8;
          *&v658[8] = v371 % 0x3E8;
          *&v659[2] = v366 / 0x3E8;
          *&v659[8] = v366 % 0x3E8;
          *&v659[20] = v361;
          *&v659[32] = v362 % 0x3E8;
          v640 = 2082;
          v642 = 2082;
          v644 = 2082;
          v650 = 2082;
          v652 = 2082;
          *&v659[36] = 2082;
          *&v659[48] = v373 / 0x3E8;
          *&v659[60] = v374 / 0x3E8;
          *&v659[92] = v360;
          *&v659[112] = v370 / 0x3E8;
          v656 = 1024;
          *&v657[4] = 1024;
          *v658 = 1024;
          *&v658[6] = 1024;
          *v659 = 1024;
          *&v659[6] = 1024;
          *&v659[12] = 1024;
          *&v659[18] = 1024;
          *&v659[24] = 1024;
          *&v659[30] = 1024;
          *&v659[46] = 1024;
          *&v659[52] = 1024;
          *&v659[58] = 1024;
          *&v659[64] = 1024;
          *&v659[110] = 1024;
          *&v659[116] = 1024;
          *&v659[124] = v367;
          *&v659[164] = v368;
          *&v659[70] = 2048;
          *&v659[80] = 2048;
          *&v659[90] = 2048;
          *&v659[100] = 2048;
          *&v659[122] = 2048;
          *&v659[132] = 2048;
          *&v659[142] = 2048;
          *&v659[152] = 2048;
          *&v659[162] = 2048;
          *&v659[172] = 2048;
          *buf = 67118594;
          v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tDuration: %u.%03us, Bonjour @%u.%03us took %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us\n\tbytes in/out: %llu/%llu, packets in/out: %llu/%llu, rtt: %u.%03us, retransmitted bytes: %llu, out-of-order bytes: %llu\n\tecn packets sent/acked/marked/lost: %llu/%llu/%llu/%llu";
          v135 = v10;
          v136 = 306;
          goto LABEL_201;
        }
      }

      else if (v11)
      {
        v616 = a2;
        v12 = *(a1 + 32);
        v13 = *(v12 + 448);
        v14 = *(v12 + 8);
        v15 = v14;
        v605 = v13;
        if (v14)
        {
          v16 = _nw_endpoint_get_logging_description(v14);
        }

        else
        {
          v16 = "<NULL>";
        }

        v278 = nw_endpoint_handler_get_id_string(*(a1 + 40));
        v602 = *(a1 + 80);
        v279 = *(a1 + 48);
        v280 = v279;
        if (v279)
        {
          v281 = _nw_endpoint_get_description(v279);
        }

        else
        {
          v281 = "<NULL>";
        }

        v294 = *(a1 + 56);
        v295 = v294;
        if (v294)
        {
          v296 = _nw_endpoint_get_logging_description(v294);
        }

        else
        {
          v296 = "<NULL>";
        }

        v306 = v12 + 452;

        v307 = *(a1 + 144) - 1;
        if (v307 > 4)
        {
          v308 = "Unknown";
        }

        else
        {
          v308 = off_1E6A2C978[v307];
        }

        v309 = *(a1 + 96);
        v310 = *(a1 + 100);
        v311 = v309 / 0x3E8;
        v312 = *(a1 + 116);
        v313 = *(a1 + 72);
        v314 = v309 % 0x3E8;
        v315 = v313[1];
        v316 = v310 / 0x3E8;
        v317 = v313[5];
        v318 = v313[6];
        v319 = v310 % 0x3E8;
        v320 = v313[8];
        v321 = v313[9];
        v323 = v313[10];
        v322 = v313[11];
        v325 = v313[12];
        v324 = v313[13];
        v328 = v313 + 14;
        v327 = v313[14];
        v326 = v328[1];
        *&v659[6] = v314;
        *&v659[18] = v319;
        v329 = *(a1 + 120);
        *&v659[30] = v312 % 0x3E8;
        *&v659[42] = v329 % 0x3E8;
        *&v659[134] = v323;
        *&v659[144] = v320;
        *&v659[154] = v322;
        *&v659[174] = v324;
        v330 = *(a1 + 88);
        *&v659[184] = v327;
        LODWORD(v327) = *(a1 + 128);
        LODWORD(v320) = *(a1 + 132);
        *&v659[48] = v330;
        *&v659[58] = v327 / 0x3E8;
        *&v659[70] = v320 / 0x3E8;
        *&v659[82] = v318;
        *&v659[102] = v315;
        *&v659[112] = v317;
        *&v659[122] = v326 / 0x3E8;
        LODWORD(v317) = *(a1 + 112);
        v635 = v605;
        v639 = v306;
        v641 = v16;
        v643 = v616;
        v645 = v278;
        v636 = 1042;
        v646 = 1042;
        v637 = 16;
        v647 = 16;
        v638 = 2098;
        v648 = 2098;
        v649 = v602;
        v651 = v281;
        v653 = v296;
        v654 = 2114;
        v655 = *(a1 + 64);
        *v657 = v308;
        *v658 = v317 / 0x3E8;
        *&v658[6] = v317 % 0x3E8;
        *v659 = v311;
        *&v659[12] = v316;
        *&v659[24] = v312 / 0x3E8;
        *&v659[36] = v329 / 0x3E8;
        v640 = 2082;
        v642 = 2082;
        v644 = 2082;
        v650 = 2082;
        v652 = 2082;
        v656 = 2082;
        *&v659[46] = 2082;
        *&v659[64] = v327 % 0x3E8;
        *&v659[76] = v320 % 0x3E8;
        *&v659[92] = v321;
        *&v657[8] = 1024;
        *&v658[4] = 1024;
        *&v658[10] = 1024;
        *&v659[4] = 1024;
        *&v659[10] = 1024;
        *&v659[16] = 1024;
        *&v659[22] = 1024;
        *&v659[28] = 1024;
        *&v659[34] = 1024;
        *&v659[40] = 1024;
        *&v659[56] = 1024;
        *&v659[62] = 1024;
        *&v659[68] = 1024;
        *&v659[74] = 1024;
        *&v659[120] = 1024;
        *&v659[126] = 1024;
        *&v659[128] = v326 % 0x3E8;
        *&v659[164] = v325;
        *&v659[80] = 2048;
        *&v659[90] = 2048;
        *&v659[100] = 2048;
        *&v659[110] = 2048;
        *&v659[132] = 2048;
        *&v659[142] = 2048;
        *&v659[152] = 2048;
        *&v659[162] = 2048;
        *&v659[172] = 2048;
        *&v659[182] = 2048;
        *buf = 67118850;
        v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tPrivacy Stance: %{public}s\n\tDuration: %u.%03us, Bonjour @%u.%03us took %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us\n\tbytes in/out: %llu/%llu, packets in/out: %llu/%llu, rtt: %u.%03us, retransmitted bytes: %llu, out-of-order bytes: %llu\n\tecn packets sent/acked/marked/lost: %llu/%llu/%llu/%llu";
        v135 = v10;
        v136 = 316;
        goto LABEL_201;
      }
    }

    else if ((v9 & 4) != 0)
    {
      if (v11)
      {
        v624 = a2;
        v80 = *(a1 + 32);
        v81 = *(v80 + 448);
        v82 = *(v80 + 8);
        v83 = v82;
        if (v82)
        {
          v610 = _nw_endpoint_get_logging_description(v82);
        }

        else
        {
          v610 = "<NULL>";
        }

        v430 = nw_endpoint_handler_get_id_string(*(a1 + 40));
        v431 = *(a1 + 80);
        v432 = *(a1 + 48);
        v433 = v432;
        if (v432)
        {
          v434 = _nw_endpoint_get_description(v432);
        }

        else
        {
          v434 = "<NULL>";
        }

        v443 = *(a1 + 56);
        v444 = v443;
        if (v443)
        {
          v445 = _nw_endpoint_get_logging_description(v443);
        }

        else
        {
          v445 = "<NULL>";
        }

        v478 = *(a1 + 64);
        v479 = *(a1 + 112);
        v480 = *(a1 + 116);
        v481 = v479 / 0x3E8;
        v482 = v479 % 0x3E8;
        v483 = *(a1 + 96);
        v484 = *(a1 + 100);
        v485 = *(a1 + 120);
        v486 = *(a1 + 88);
        v487 = *(a1 + 128);
        v488 = *(a1 + 132);
        *buf = 67115522;
        v635 = v81;
        v636 = 1042;
        v637 = 16;
        v638 = 2098;
        v639 = v80 + 452;
        v640 = 2082;
        v641 = v610;
        v642 = 2082;
        v643 = v624;
        v644 = 2082;
        v645 = v430;
        v646 = 1042;
        v647 = 16;
        v648 = 2098;
        v649 = v431;
        v650 = 2082;
        v651 = v434;
        v652 = 2082;
        v653 = v445;
        v654 = 2114;
        v655 = v478;
        v656 = 1024;
        *v657 = v481;
        *&v657[4] = 1024;
        *&v657[6] = v482;
        *v658 = 1024;
        *&v658[2] = v483 / 0x3E8;
        *&v658[6] = 1024;
        *&v658[8] = v483 % 0x3E8;
        *v659 = 1024;
        *&v659[2] = v484 / 0x3E8;
        *&v659[6] = 1024;
        *&v659[8] = v484 % 0x3E8;
        *&v659[12] = 1024;
        *&v659[14] = v480 / 0x3E8;
        *&v659[18] = 1024;
        *&v659[20] = v480 % 0x3E8;
        *&v659[24] = 1024;
        *&v659[26] = v485 / 0x3E8;
        *&v659[30] = 1024;
        *&v659[32] = v485 % 0x3E8;
        *&v659[36] = 2082;
        *&v659[38] = v486;
        *&v659[46] = 1024;
        *&v659[48] = v487 / 0x3E8;
        *&v659[52] = 1024;
        *&v659[54] = v487 % 0x3E8;
        *&v659[58] = 1024;
        *&v659[60] = v488 / 0x3E8;
        *&v659[64] = 1024;
        *&v659[66] = v488 % 0x3E8;
        v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tDuration: %u.%03us, Bonjour @%u.%03us took %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us";
        v135 = v10;
        v136 = 194;
        goto LABEL_201;
      }
    }

    else if (v11)
    {
      v40 = *(a1 + 32);
      v41 = *(v40 + 448);
      v42 = *(v40 + 8);
      v43 = v42;
      if (v42)
      {
        v619 = _nw_endpoint_get_logging_description(v42);
      }

      else
      {
        v619 = "<NULL>";
      }

      v422 = nw_endpoint_handler_get_id_string(*(a1 + 40));
      v613 = *(a1 + 80);
      v423 = *(a1 + 48);
      v424 = v423;
      if (v423)
      {
        v425 = _nw_endpoint_get_description(v423);
      }

      else
      {
        v425 = "<NULL>";
      }

      v438 = *(a1 + 56);
      v439 = v438;
      if (v438)
      {
        v440 = _nw_endpoint_get_logging_description(v438);
      }

      else
      {
        v440 = "<NULL>";
      }

      v449 = v40 + 452;

      v450 = *(a1 + 144) - 1;
      if (v450 > 4)
      {
        v451 = "Unknown";
      }

      else
      {
        v451 = off_1E6A2C978[v450];
      }

      v452 = *(a1 + 64);
      v453 = *(a1 + 112);
      v454 = *(a1 + 116);
      v455 = v453 / 0x3E8;
      v456 = v453 % 0x3E8;
      v458 = *(a1 + 96);
      v457 = *(a1 + 100);
      v459 = *(a1 + 120);
      v460 = *(a1 + 88);
      v461 = *(a1 + 128);
      v462 = *(a1 + 132);
      *buf = 67115778;
      v635 = v41;
      v636 = 1042;
      v637 = 16;
      v638 = 2098;
      v639 = v449;
      v640 = 2082;
      v641 = v619;
      v642 = 2082;
      v643 = a2;
      v644 = 2082;
      v645 = v422;
      v646 = 1042;
      v647 = 16;
      v648 = 2098;
      v649 = v613;
      v650 = 2082;
      v651 = v425;
      v652 = 2082;
      v653 = v440;
      v654 = 2114;
      v655 = v452;
      v656 = 2082;
      *v657 = v451;
      *&v657[8] = 1024;
      *v658 = v455;
      *&v658[4] = 1024;
      *&v658[6] = v456;
      *&v658[10] = 1024;
      *v659 = v458 / 0x3E8;
      *&v659[4] = 1024;
      *&v659[6] = v458 % 0x3E8;
      *&v659[10] = 1024;
      *&v659[12] = v457 / 0x3E8;
      *&v659[16] = 1024;
      *&v659[18] = v457 % 0x3E8;
      *&v659[22] = 1024;
      *&v659[24] = v454 / 0x3E8;
      *&v659[28] = 1024;
      *&v659[30] = v454 % 0x3E8;
      *&v659[34] = 1024;
      *&v659[36] = v459 / 0x3E8;
      *&v659[40] = 1024;
      *&v659[42] = v459 % 0x3E8;
      *&v659[46] = 2082;
      *&v659[48] = v460;
      *&v659[56] = 1024;
      *&v659[58] = v461 / 0x3E8;
      *&v659[62] = 1024;
      *&v659[64] = v461 % 0x3E8;
      *&v659[68] = 1024;
      *&v659[70] = v462 / 0x3E8;
      *&v659[74] = 1024;
      *&v659[76] = v462 % 0x3E8;
      v134 = "[C%u %{public,uuid_t}.16P %{public}s %{public}s] cancelled\n\t[C%{public}s %{public,uuid_t}.16P %{public}s<->%{public}s]\n\tConnected Path: %{public}@\n\tPrivacy Stance: %{public}s\n\tDuration: %u.%03us, Bonjour @%u.%03us took %u.%03us, DNS @%u.%03us took %u.%03us, %{public}s @%u.%03us took %u.%03us";
      v135 = v10;
      v136 = 204;
      goto LABEL_201;
    }
  }

LABEL_202:
}

const char *nw_endpoint_get_description(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    description = _nw_endpoint_get_description(v1);
  }

  else
  {
    description = "<NULL>";
  }

  return description;
}

void nw_protocol_disconnect(void *a1, uint64_t a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    v3 = a1;
    v4 = a1[5];
    v5 = a1;
    if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = a1[8]) != 0)
    {
      v11 = v5[11];
      if (v11)
      {
        v6 = 0;
        v5[11] = v11 + 1;
        if (!a2)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v6 = 0;
        if (!a2)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v6 = 1;
      if (!a2)
      {
LABEL_12:
        __nwlog_obj();
        *buf = 136446210;
        v48 = "__nw_protocol_disconnect";
        v2 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v45 = 0;
        if (!__nwlog_fault(v2, &type, &v45))
        {
          goto LABEL_104;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v13 = type;
          if (!os_log_type_enabled(v12, type))
          {
            goto LABEL_104;
          }

          *buf = 136446210;
          v48 = "__nw_protocol_disconnect";
          v14 = "%{public}s called with null other_protocol";
          goto LABEL_103;
        }

        if (v45 != 1)
        {
          v12 = __nwlog_obj();
          v13 = type;
          if (!os_log_type_enabled(v12, type))
          {
            goto LABEL_104;
          }

          *buf = 136446210;
          v48 = "__nw_protocol_disconnect";
          v14 = "%{public}s called with null other_protocol, backtrace limit exceeded";
          goto LABEL_103;
        }

        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v42 = os_log_type_enabled(v12, type);
        if (!backtrace_string)
        {
          if (!v42)
          {
            goto LABEL_104;
          }

          *buf = 136446210;
          v48 = "__nw_protocol_disconnect";
          v14 = "%{public}s called with null other_protocol, no backtrace";
LABEL_103:
          _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
LABEL_104:
          if (!v2)
          {
            goto LABEL_37;
          }

LABEL_36:
          free(v2);
          goto LABEL_37;
        }

        if (v42)
        {
          *buf = 136446466;
          v48 = "__nw_protocol_disconnect";
          v49 = 2082;
          v50 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_36;
        }

LABEL_37:
        if ((v6 & 1) == 0)
        {
          v22 = *(v3 + 40);
          if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
          {
            v23 = *(v3 + 88);
            if (v23)
            {
              v24 = v23 - 1;
              *(v3 + 88) = v24;
              if (!v24)
              {
                v25 = *(v3 + 64);
                if (v25)
                {
                  *(v3 + 64) = 0;
                  v25[2](v25);
                  _Block_release(v25);
                }

                if (*(v3 + 72))
                {
                  v26 = *(v3 + 64);
                  if (v26)
                  {
                    _Block_release(v26);
                  }
                }

                goto LABEL_48;
              }
            }
          }
        }

        return;
      }
    }

    v7 = *(a2 + 40);
    v8 = a2;
    if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(a2 + 64)) != 0)
    {
      v15 = *(v8 + 88);
      if (v15)
      {
        v9 = 0;
        *(v8 + 88) = v15 + 1;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v9 = 0;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v9 = 1;
      v10 = a1[3];
      if (!v10)
      {
        goto LABEL_50;
      }
    }

    v16 = *(v10 + 32);
    if (v16)
    {
      v16(a1, a2);
      goto LABEL_25;
    }

LABEL_50:
    __nwlog_obj();
    v27 = *(v3 + 16);
    *buf = 136446722;
    v48 = "__nw_protocol_disconnect";
    if (!v27)
    {
      v27 = "invalid";
    }

    v49 = 2082;
    v50 = v27;
    v51 = 2048;
    v52 = v3;
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v28, &type, &v45))
    {
      goto LABEL_94;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_94;
      }

      v31 = *(v3 + 16);
      if (!v31)
      {
        v31 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_disconnect";
      v49 = 2082;
      v50 = v31;
      v51 = 2048;
      v52 = v3;
      v32 = "%{public}s protocol %{public}s (%p) has invalid disconnect callback";
    }

    else if (v45 == 1)
    {
      v36 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v37 = os_log_type_enabled(v29, type);
      if (v36)
      {
        if (v37)
        {
          v38 = *(v3 + 16);
          if (!v38)
          {
            v38 = "invalid";
          }

          *buf = 136446978;
          v48 = "__nw_protocol_disconnect";
          v49 = 2082;
          v50 = v38;
          v51 = 2048;
          v52 = v3;
          v53 = 2082;
          v54 = v36;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s protocol %{public}s (%p) has invalid disconnect callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v36);
        goto LABEL_94;
      }

      if (!v37)
      {
LABEL_94:
        if (v28)
        {
          free(v28);
        }

LABEL_25:
        if ((v9 & 1) == 0)
        {
          v17 = *(v2 + 40);
          if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
          {
            v18 = *(v2 + 88);
            if (v18)
            {
              v19 = v18 - 1;
              *(v2 + 88) = v19;
              if (!v19)
              {
                v20 = *(v2 + 64);
                if (v20)
                {
                  *(v2 + 64) = 0;
                  v20[2](v20);
                  _Block_release(v20);
                }

                if (*(v2 + 72))
                {
                  v21 = *(v2 + 64);
                  if (v21)
                  {
                    _Block_release(v21);
                  }
                }

                goto LABEL_36;
              }
            }
          }
        }

        goto LABEL_37;
      }

      v44 = *(v3 + 16);
      if (!v44)
      {
        v44 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_disconnect";
      v49 = 2082;
      v50 = v44;
      v51 = 2048;
      v52 = v3;
      v32 = "%{public}s protocol %{public}s (%p) has invalid disconnect callback, no backtrace";
    }

    else
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_94;
      }

      v43 = *(v3 + 16);
      if (!v43)
      {
        v43 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_disconnect";
      v49 = 2082;
      v50 = v43;
      v51 = 2048;
      v52 = v3;
      v32 = "%{public}s protocol %{public}s (%p) has invalid disconnect callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v29, v30, v32, buf, 0x20u);
    goto LABEL_94;
  }

  __nwlog_obj();
  *buf = 136446210;
  v48 = "__nw_protocol_disconnect";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v45 = 0;
  if (__nwlog_fault(v3, &type, &v45))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v48 = "__nw_protocol_disconnect";
      v35 = "%{public}s called with null protocol";
    }

    else if (v45 == 1)
    {
      v39 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v34 = type;
      v40 = os_log_type_enabled(v33, type);
      if (v39)
      {
        if (v40)
        {
          *buf = 136446466;
          v48 = "__nw_protocol_disconnect";
          v49 = 2082;
          v50 = v39;
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
        if (v3)
        {
          goto LABEL_48;
        }

        return;
      }

      if (!v40)
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v48 = "__nw_protocol_disconnect";
      v35 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v48 = "__nw_protocol_disconnect";
      v35 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v33, v34, v35, buf, 0xCu);
  }

LABEL_99:
  if (v3)
  {
LABEL_48:
    free(v3);
  }
}

void nw_protocol_disconnected(void *a1, uint64_t a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    v3 = a1;
    v4 = a1[5];
    v5 = a1;
    if (v4 == &nw_protocol_ref_counted_handle || v4 == &nw_protocol_ref_counted_additional_handle && (v5 = a1[8]) != 0)
    {
      v11 = v5[11];
      if (v11)
      {
        v6 = 0;
        v5[11] = v11 + 1;
        if (!a2)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v6 = 0;
        if (!a2)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v6 = 1;
      if (!a2)
      {
LABEL_12:
        __nwlog_obj();
        *buf = 136446210;
        v48 = "__nw_protocol_disconnected";
        v2 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v45 = 0;
        if (!__nwlog_fault(v2, &type, &v45))
        {
          goto LABEL_104;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v13 = type;
          if (!os_log_type_enabled(v12, type))
          {
            goto LABEL_104;
          }

          *buf = 136446210;
          v48 = "__nw_protocol_disconnected";
          v14 = "%{public}s called with null other_protocol";
          goto LABEL_103;
        }

        if (v45 != 1)
        {
          v12 = __nwlog_obj();
          v13 = type;
          if (!os_log_type_enabled(v12, type))
          {
            goto LABEL_104;
          }

          *buf = 136446210;
          v48 = "__nw_protocol_disconnected";
          v14 = "%{public}s called with null other_protocol, backtrace limit exceeded";
          goto LABEL_103;
        }

        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v42 = os_log_type_enabled(v12, type);
        if (!backtrace_string)
        {
          if (!v42)
          {
            goto LABEL_104;
          }

          *buf = 136446210;
          v48 = "__nw_protocol_disconnected";
          v14 = "%{public}s called with null other_protocol, no backtrace";
LABEL_103:
          _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
LABEL_104:
          if (!v2)
          {
            goto LABEL_37;
          }

LABEL_36:
          free(v2);
          goto LABEL_37;
        }

        if (v42)
        {
          *buf = 136446466;
          v48 = "__nw_protocol_disconnected";
          v49 = 2082;
          v50 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_36;
        }

LABEL_37:
        if ((v6 & 1) == 0)
        {
          v22 = *(v3 + 40);
          if (v22 == &nw_protocol_ref_counted_handle || v22 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
          {
            v23 = *(v3 + 88);
            if (v23)
            {
              v24 = v23 - 1;
              *(v3 + 88) = v24;
              if (!v24)
              {
                v25 = *(v3 + 64);
                if (v25)
                {
                  *(v3 + 64) = 0;
                  v25[2](v25);
                  _Block_release(v25);
                }

                if (*(v3 + 72))
                {
                  v26 = *(v3 + 64);
                  if (v26)
                  {
                    _Block_release(v26);
                  }
                }

                goto LABEL_48;
              }
            }
          }
        }

        return;
      }
    }

    v7 = *(a2 + 40);
    v8 = a2;
    if (v7 == &nw_protocol_ref_counted_handle || v7 == &nw_protocol_ref_counted_additional_handle && (v8 = *(a2 + 64)) != 0)
    {
      v15 = *(v8 + 88);
      if (v15)
      {
        v9 = 0;
        *(v8 + 88) = v15 + 1;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v9 = 0;
        v10 = a1[3];
        if (!v10)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v9 = 1;
      v10 = a1[3];
      if (!v10)
      {
        goto LABEL_50;
      }
    }

    v16 = *(v10 + 48);
    if (v16)
    {
      v16(a1, a2);
      goto LABEL_25;
    }

LABEL_50:
    __nwlog_obj();
    v27 = *(v3 + 16);
    *buf = 136446722;
    v48 = "__nw_protocol_disconnected";
    if (!v27)
    {
      v27 = "invalid";
    }

    v49 = 2082;
    v50 = v27;
    v51 = 2048;
    v52 = v3;
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v28, &type, &v45))
    {
      goto LABEL_94;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_94;
      }

      v31 = *(v3 + 16);
      if (!v31)
      {
        v31 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_disconnected";
      v49 = 2082;
      v50 = v31;
      v51 = 2048;
      v52 = v3;
      v32 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback";
    }

    else if (v45 == 1)
    {
      v36 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v37 = os_log_type_enabled(v29, type);
      if (v36)
      {
        if (v37)
        {
          v38 = *(v3 + 16);
          if (!v38)
          {
            v38 = "invalid";
          }

          *buf = 136446978;
          v48 = "__nw_protocol_disconnected";
          v49 = 2082;
          v50 = v38;
          v51 = 2048;
          v52 = v3;
          v53 = 2082;
          v54 = v36;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v36);
        goto LABEL_94;
      }

      if (!v37)
      {
LABEL_94:
        if (v28)
        {
          free(v28);
        }

LABEL_25:
        if ((v9 & 1) == 0)
        {
          v17 = *(v2 + 40);
          if (v17 == &nw_protocol_ref_counted_handle || v17 == &nw_protocol_ref_counted_additional_handle && (v2 = *(v2 + 64)) != 0)
          {
            v18 = *(v2 + 88);
            if (v18)
            {
              v19 = v18 - 1;
              *(v2 + 88) = v19;
              if (!v19)
              {
                v20 = *(v2 + 64);
                if (v20)
                {
                  *(v2 + 64) = 0;
                  v20[2](v20);
                  _Block_release(v20);
                }

                if (*(v2 + 72))
                {
                  v21 = *(v2 + 64);
                  if (v21)
                  {
                    _Block_release(v21);
                  }
                }

                goto LABEL_36;
              }
            }
          }
        }

        goto LABEL_37;
      }

      v44 = *(v3 + 16);
      if (!v44)
      {
        v44 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_disconnected";
      v49 = 2082;
      v50 = v44;
      v51 = 2048;
      v52 = v3;
      v32 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace";
    }

    else
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (!os_log_type_enabled(v29, type))
      {
        goto LABEL_94;
      }

      v43 = *(v3 + 16);
      if (!v43)
      {
        v43 = "invalid";
      }

      *buf = 136446722;
      v48 = "__nw_protocol_disconnected";
      v49 = 2082;
      v50 = v43;
      v51 = 2048;
      v52 = v3;
      v32 = "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v29, v30, v32, buf, 0x20u);
    goto LABEL_94;
  }

  __nwlog_obj();
  *buf = 136446210;
  v48 = "__nw_protocol_disconnected";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v45 = 0;
  if (__nwlog_fault(v3, &type, &v45))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v48 = "__nw_protocol_disconnected";
      v35 = "%{public}s called with null protocol";
    }

    else if (v45 == 1)
    {
      v39 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v34 = type;
      v40 = os_log_type_enabled(v33, type);
      if (v39)
      {
        if (v40)
        {
          *buf = 136446466;
          v48 = "__nw_protocol_disconnected";
          v49 = 2082;
          v50 = v39;
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
        if (v3)
        {
          goto LABEL_48;
        }

        return;
      }

      if (!v40)
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v48 = "__nw_protocol_disconnected";
      v35 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_99;
      }

      *buf = 136446210;
      v48 = "__nw_protocol_disconnected";
      v35 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v33, v34, v35, buf, 0xCu);
  }

LABEL_99:
  if (v3)
  {
LABEL_48:
    free(v3);
  }
}

void nw_protocol_default_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    default_input_handler = a1->default_input_handler;
    if (default_input_handler)
    {
      callbacks = default_input_handler->callbacks;
      if (callbacks)
      {
        disconnected = callbacks->disconnected;
        if (disconnected)
        {

          disconnected();
        }
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_default_disconnected";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v14 = "nw_protocol_default_disconnected";
      v8 = "%{public}s called with null protocol";
      goto LABEL_21;
    }

    if (v11 != 1)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v14 = "nw_protocol_default_disconnected";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_21;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = type;
    v10 = os_log_type_enabled(v6, type);
    if (backtrace_string)
    {
      if (v10)
      {
        *buf = 136446466;
        v14 = "nw_protocol_default_disconnected";
        v15 = 2082;
        v16 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_22;
    }

    if (v10)
    {
      *buf = 136446210;
      v14 = "nw_protocol_default_disconnected";
      v8 = "%{public}s called with null protocol, no backtrace";
LABEL_21:
      _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    }
  }

LABEL_22:
  if (v5)
  {
    free(v5);
  }
}

void nw_flow_passthrough_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v89 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v4 = handle[20];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      mode = v6->mode;

      if (mode != 2)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          if (mode > 5)
          {
            v25 = "unknown-mode";
          }

          else
          {
            v25 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v76 = "nw_flow_passthrough_disconnected";
          v77 = 2082;
          id_str = v25;
          v79 = 2082;
          v80 = "flow";
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }

        goto LABEL_49;
      }

      default_input_handler = a1->default_input_handler;
      if (default_input_handler)
      {
        callbacks = default_input_handler->callbacks;
        if (callbacks)
        {
          disconnected = callbacks->disconnected;
          if (disconnected)
          {
            disconnected();
          }
        }
      }

      *(handle + 166) |= 0x210u;
      v11 = nw_endpoint_handler_copy_flow(v6);
      v12 = v11;
      if (v11)
      {
        v13 = *(v11 + 53);

        if (!v13)
        {
          v26 = handle[40];
          v27 = handle[23];
          v68[0] = MEMORY[0x1E69E9820];
          v68[1] = 3221225472;
          v68[2] = ___ZL32nw_flow_passthrough_disconnectedP11nw_protocolS0__block_invoke;
          v68[3] = &unk_1E6A2DCF8;
          v69 = v6;
          v72 = handle;
          v70 = v12;
          v71 = v26;
          v28 = v26;
          nw_queue_context_async(v27, v68);

LABEL_48:
LABEL_49:

          return;
        }

LABEL_10:
        v14 = v6;
        v15 = (*(v14 + 284) & 0x40) == 0;

        if (!v15)
        {
LABEL_47:
          *(v12 + 35) |= 0x80u;
          goto LABEL_48;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v16 = gconnectionLogObj;
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
LABEL_46:

          goto LABEL_47;
        }

        v17 = v14;

        v18 = v17;
        v19 = (*(v14 + 284) & 1) == 0;

        if (v19)
        {
          v20 = "";
        }

        else
        {
          v20 = "dry-run ";
        }

        v21 = nw_endpoint_handler_copy_endpoint(v18);
        v22 = v21;
        if (v21)
        {
          logging_description = _nw_endpoint_get_logging_description(v21);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v29 = v18;
        v30 = v29;
        v31 = v29[30];
        if (v31 > 5)
        {
          v32 = "unknown-state";
        }

        else
        {
          v32 = off_1E6A31048[v31];
        }

        v33 = v30;
        v34 = v33;
        v35 = v6->mode;
        if (v35 > 2)
        {
          switch(v35)
          {
            case 3:
              v36 = "proxy";
              break;
            case 4:
              v36 = "fallback";
              break;
            case 5:
              v36 = "transform";
              break;
            default:
LABEL_41:
              v36 = "unknown-mode";
              break;
          }
        }

        else
        {
          if (v35)
          {
            if (v35 == 1)
            {
              v36 = "resolver";
              goto LABEL_44;
            }

            if (v35 == 2)
            {
              v67 = nw_endpoint_flow_mode_string(v33[33]);
LABEL_45:

              v37 = v17;
              v38 = v32;
              v39 = logging_description;
              v40 = v20;
              v41 = v34;
              os_unfair_lock_lock(v41 + 28);
              v42 = v41[8];
              os_unfair_lock_unlock(v41 + 28);

              *buf = 136447746;
              v76 = "nw_flow_passthrough_disconnected";
              v77 = 2082;
              id_str = v37->id_str;
              v79 = 2082;
              v80 = v40;
              v81 = 2082;
              v82 = v39;
              v83 = 2082;
              v84 = v38;
              v85 = 2082;
              v86 = v67;
              v87 = 2114;
              v88 = v42;
              _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] deferring fail on disconnected", buf, 0x48u);

              goto LABEL_46;
            }

            goto LABEL_41;
          }

          v36 = "path";
        }

LABEL_44:
        v67 = v36;
        goto LABEL_45;
      }

      v57 = __nwlog_obj();
      *buf = 136446210;
      v76 = "nw_flow_passthrough_should_fail_on_disconnected";
      v58 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v73 = 0;
      if (__nwlog_fault(v58, &type, &v73))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v59 = __nwlog_obj();
          v60 = type;
          if (os_log_type_enabled(v59, type))
          {
            *buf = 136446210;
            v76 = "nw_flow_passthrough_should_fail_on_disconnected";
            _os_log_impl(&dword_181A37000, v59, v60, "%{public}s called with null endpoint_flow", buf, 0xCu);
          }
        }

        else if (v73 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v59 = __nwlog_obj();
          v64 = type;
          v65 = os_log_type_enabled(v59, type);
          if (backtrace_string)
          {
            if (v65)
            {
              *buf = 136446466;
              v76 = "nw_flow_passthrough_should_fail_on_disconnected";
              v77 = 2082;
              id_str = backtrace_string;
              _os_log_impl(&dword_181A37000, v59, v64, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_103;
          }

          if (v65)
          {
            *buf = 136446210;
            v76 = "nw_flow_passthrough_should_fail_on_disconnected";
            _os_log_impl(&dword_181A37000, v59, v64, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v59 = __nwlog_obj();
          v66 = type;
          if (os_log_type_enabled(v59, type))
          {
            *buf = 136446210;
            v76 = "nw_flow_passthrough_should_fail_on_disconnected";
            _os_log_impl(&dword_181A37000, v59, v66, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_103:
      if (v58)
      {
        free(v58);
      }

      goto LABEL_10;
    }

    v47 = __nwlog_obj();
    *buf = 136446210;
    v76 = "nw_flow_passthrough_disconnected";
    v48 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v73 = 0;
    if (__nwlog_fault(v48, &type, &v73))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v49 = __nwlog_obj();
        v50 = type;
        if (os_log_type_enabled(v49, type))
        {
          *buf = 136446210;
          v76 = "nw_flow_passthrough_disconnected";
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v73 == 1)
      {
        v54 = __nw_create_backtrace_string();
        v49 = __nwlog_obj();
        v55 = type;
        v56 = os_log_type_enabled(v49, type);
        if (v54)
        {
          if (v56)
          {
            *buf = 136446466;
            v76 = "nw_flow_passthrough_disconnected";
            v77 = 2082;
            id_str = v54;
            _os_log_impl(&dword_181A37000, v49, v55, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v54);
          goto LABEL_98;
        }

        if (v56)
        {
          *buf = 136446210;
          v76 = "nw_flow_passthrough_disconnected";
          _os_log_impl(&dword_181A37000, v49, v55, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v49 = __nwlog_obj();
        v62 = type;
        if (os_log_type_enabled(v49, type))
        {
          *buf = 136446210;
          v76 = "nw_flow_passthrough_disconnected";
          _os_log_impl(&dword_181A37000, v49, v62, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_98:
    if (v48)
    {
      free(v48);
    }

    goto LABEL_49;
  }

  v43 = __nwlog_obj();
  *buf = 136446210;
  v76 = "nw_flow_passthrough_disconnected";
  v44 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v73 = 0;
  if (__nwlog_fault(v44, &type, &v73))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v76 = "nw_flow_passthrough_disconnected";
        _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v73 == 1)
    {
      v51 = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v52 = type;
      v53 = os_log_type_enabled(v45, type);
      if (v51)
      {
        if (v53)
        {
          *buf = 136446466;
          v76 = "nw_flow_passthrough_disconnected";
          v77 = 2082;
          id_str = v51;
          _os_log_impl(&dword_181A37000, v45, v52, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v51);
        goto LABEL_93;
      }

      if (v53)
      {
        *buf = 136446210;
        v76 = "nw_flow_passthrough_disconnected";
        _os_log_impl(&dword_181A37000, v45, v52, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v45 = __nwlog_obj();
      v61 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v76 = "nw_flow_passthrough_disconnected";
        _os_log_impl(&dword_181A37000, v45, v61, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_93:
  if (v44)
  {
    free(v44);
  }
}

void nw_flow_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v103 = *MEMORY[0x1E69E9840];
  handle = a1->handle;
  v3 = handle->handler;
  v4 = v3;
  if (!v3)
  {
    v60 = __nwlog_obj();
    *buf = 136446210;
    v90 = "nw_flow_disconnected";
    v61 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v87 = 0;
    if (__nwlog_fault(v61, &type, &v87))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v62 = __nwlog_obj();
        v63 = type;
        if (os_log_type_enabled(v62, type))
        {
          *buf = 136446210;
          v90 = "nw_flow_disconnected";
          _os_log_impl(&dword_181A37000, v62, v63, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v87 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v62 = __nwlog_obj();
        v65 = type;
        v66 = os_log_type_enabled(v62, type);
        if (backtrace_string)
        {
          if (v66)
          {
            *buf = 136446466;
            v90 = "nw_flow_disconnected";
            v91 = 2082;
            v92 = backtrace_string;
            _os_log_impl(&dword_181A37000, v62, v65, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_94;
        }

        if (v66)
        {
          *buf = 136446210;
          v90 = "nw_flow_disconnected";
          _os_log_impl(&dword_181A37000, v62, v65, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v62 = __nwlog_obj();
        v67 = type;
        if (os_log_type_enabled(v62, type))
        {
          *buf = 136446210;
          v90 = "nw_flow_disconnected";
          _os_log_impl(&dword_181A37000, v62, v67, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_94:
    if (v61)
    {
      free(v61);
    }

    goto LABEL_72;
  }

  v5 = v3;
  v6 = v5[29];

  if (v6 == 2)
  {
    v7 = *(handle + 166);
    v8 = v5;
    v9 = *(v8 + 284);

    if ((v7 & 0x100) == 0)
    {
      if ((v9 & 0x20) != 0)
      {
        v10 = v8;
        v11 = *(v8 + 284);

        if ((v11 & 0x20) != 0)
        {
          if (nw_endpoint_handler_get_logging_disabled(v10))
          {
            goto LABEL_69;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v14 = gconnectionLogObj;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            id_string = nw_endpoint_handler_get_id_string(v10);
            v78 = nw_endpoint_handler_dry_run_string(v10);
            v69 = nw_endpoint_handler_copy_endpoint(v10);
            logging_description = nw_endpoint_get_logging_description(v69);
            v71 = nw_endpoint_handler_state_string(v10);
            v72 = nw_endpoint_handler_mode_string(v10);
            v73 = nw_endpoint_handler_copy_current_path(v10);
            *buf = 136447746;
            v90 = "nw_flow_disconnected";
            v91 = 2082;
            v92 = id_string;
            v93 = 2082;
            v94 = v78;
            v95 = 2082;
            v96 = logging_description;
            v97 = 2082;
            v98 = v71;
            v99 = 2082;
            v100 = v72;
            v101 = 2114;
            v102 = v73;
            _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output protocol disconnected", buf, 0x48u);
          }

          goto LABEL_68;
        }

        v12 = v10;
        v13 = *(v8 + 284);

        if ((v13 & 0x40) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v14 = gconnectionLogObj;
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_68;
          }

          v15 = v12;

          v16 = v15;
          v17 = *(v8 + 284);

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
            v76 = _nw_endpoint_get_logging_description(v19);
          }

          else
          {
            v76 = "<NULL>";
          }

          v75 = v18;
          v38 = v15 + 184;

          v39 = v16;
          v40 = v39;
          v41 = v39[30];
          if (v41 > 5)
          {
            v42 = "unknown-state";
          }

          else
          {
            v42 = off_1E6A31048[v41];
          }

          v43 = v40;
          v44 = v43;
          v45 = v5[29];
          if (v45 > 2)
          {
            switch(v45)
            {
              case 3:
                v46 = "proxy";
                goto LABEL_67;
              case 4:
                v46 = "fallback";
                goto LABEL_67;
              case 5:
                v46 = "transform";
                goto LABEL_67;
            }
          }

          else
          {
            switch(v45)
            {
              case 0:
                v46 = "path";
                goto LABEL_67;
              case 1:
                v46 = "resolver";
                goto LABEL_67;
              case 2:
                v46 = nw_endpoint_flow_mode_string(v43[33]);
LABEL_67:

                v49 = v44;
                os_unfair_lock_lock(v49 + 28);
                v50 = v49[8];
                os_unfair_lock_unlock(v49 + 28);

                *buf = 136447746;
                v90 = "nw_flow_disconnected";
                v91 = 2082;
                v92 = v38;
                v93 = 2082;
                v94 = v75;
                v95 = 2082;
                v96 = v76;
                v97 = 2082;
                v98 = v42;
                v99 = 2082;
                v100 = v46;
                v101 = 2114;
                v102 = v50;
                _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output protocol disconnected", buf, 0x48u);

                goto LABEL_68;
            }
          }

          v46 = "unknown-mode";
          goto LABEL_67;
        }
      }

LABEL_69:
      *(handle + 166) |= 0x210u;
      v51 = nw_endpoint_handler_copy_flow(v8);
      v52 = *(handle + 166);
      v53 = handle->output_context;
      if ((v52 & 0x100) == 0)
      {
        nw_flow_service_reads(v8, v51, handle, 1);
      }

      v54 = (v52 >> 8) & 1;
      v55 = handle->last_error;
      context = handle->context;
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = ___ZL20nw_flow_disconnectedP11nw_protocolS0__block_invoke;
      v79[3] = &unk_1E6A2DCA8;
      v80 = v8;
      v84 = handle;
      v57 = v51;
      v81 = v57;
      v82 = v55;
      v86 = v54;
      v58 = v53;
      v83 = v58;
      v85 = handle;
      v59 = v55;
      nw_queue_context_async(context, v79);

      goto LABEL_72;
    }

    if ((v9 & 0x40) != 0)
    {
      goto LABEL_69;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v14 = gconnectionLogObj;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_68;
    }

    v23 = v8;

    v24 = v23;
    v25 = *(v8 + 284);

    if (v25)
    {
      v26 = "dry-run ";
    }

    else
    {
      v26 = "";
    }

    v27 = nw_endpoint_handler_copy_endpoint(v24);
    v28 = v27;
    if (v27)
    {
      v77 = _nw_endpoint_get_logging_description(v27);
    }

    else
    {
      v77 = "<NULL>";
    }

    v74 = v26;
    v29 = (v23 + 46);

    v30 = v24;
    v31 = v30;
    v32 = v30[30];
    if (v32 > 5)
    {
      v33 = "unknown-state";
    }

    else
    {
      v33 = off_1E6A31048[v32];
    }

    v34 = v31;
    v35 = v34;
    v36 = v5[29];
    if (v36 > 2)
    {
      switch(v36)
      {
        case 3:
          v37 = "proxy";
          goto LABEL_61;
        case 4:
          v37 = "fallback";
          goto LABEL_61;
        case 5:
          v37 = "transform";
          goto LABEL_61;
      }
    }

    else
    {
      switch(v36)
      {
        case 0:
          v37 = "path";
          goto LABEL_61;
        case 1:
          v37 = "resolver";
          goto LABEL_61;
        case 2:
          v37 = nw_endpoint_flow_mode_string(v34[33]);
LABEL_61:

          v47 = v35;
          os_unfair_lock_lock(v47 + 28);
          v48 = v47[8];
          os_unfair_lock_unlock(v47 + 28);

          *buf = 136447746;
          v90 = "nw_flow_disconnected";
          v91 = 2082;
          v92 = v29;
          v93 = 2082;
          v94 = v74;
          v95 = 2082;
          v96 = v77;
          v97 = 2082;
          v98 = v33;
          v99 = 2082;
          v100 = v37;
          v101 = 2114;
          v102 = v48;
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Output protocol disconnected for unregistered flow", buf, 0x48u);

LABEL_68:
          goto LABEL_69;
      }
    }

    v37 = "unknown-mode";
    goto LABEL_61;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (v6 > 5)
    {
      v22 = "unknown-mode";
    }

    else
    {
      v22 = off_1E6A31018[v6];
    }

    *buf = 136446722;
    v90 = "nw_flow_disconnected";
    v91 = 2082;
    v92 = v22;
    v93 = 2082;
    v94 = "flow";
    _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_72:
}

void nw_protocol_stack_clear_application_protocols(nw_protocol_stack_t stack)
{
  v14 = *MEMORY[0x1E69E9840];
  if (stack)
  {

    _nw_protocol_stack_clear_application_protocols();
    return;
  }

  v1 = __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_protocol_stack_clear_application_protocols";
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
        v11 = "nw_protocol_stack_clear_application_protocols";
        v5 = "%{public}s called with null stack";
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
            v11 = "nw_protocol_stack_clear_application_protocols";
            v12 = 2082;
            v13 = backtrace_string;
            _os_log_impl(&dword_181A37000, v3, v4, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v7)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v11 = "nw_protocol_stack_clear_application_protocols";
        v5 = "%{public}s called with null stack, no backtrace";
        goto LABEL_18;
      }

      v3 = __nwlog_obj();
      v4 = type;
      if (os_log_type_enabled(v3, type))
      {
        *buf = 136446210;
        v11 = "nw_protocol_stack_clear_application_protocols";
        v5 = "%{public}s called with null stack, backtrace limit exceeded";
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

unint64_t sub_181C1EE60()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 42);
  if (v1 != 1)
  {
    result = 0;
LABEL_18:
    LOBYTE(v19[0]) = v1 != 1;
    return result;
  }

  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v19[0] = *(v0 + 16);
  v19[1] = v4;
  v5 = sub_181C1F228(v19, v20);
  v7 = v5;
  v8 = v6;
  v9 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_16:
      sub_181C1F2E4(v5, v6);
      goto LABEL_17;
    }

    v10 = *(v5 + 16);
    v11 = sub_182AD1D58();
    if (v11)
    {
      v12 = v11;
      v13 = sub_182AD1D88();
      if (__OFSUB__(v10, v13))
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
      }

      v14 = v10 - v13 + v12;
      sub_182AD1D78();
      if (v14)
      {
LABEL_15:
        sub_181C1F2E4(v7, v8);
LABEL_17:
        result = ((bswap32(v3) >> 16) << 16) | 0x1E1C;
        goto LABEL_18;
      }
    }

    else
    {
      sub_182AD1D78();
    }

    __break(1u);
    goto LABEL_24;
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  if (v5 > v5 >> 32)
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = sub_182AD1D58();
  if (!v15)
  {
LABEL_24:
    result = sub_182AD1D78();
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  v17 = sub_182AD1D88();
  if (__OFSUB__(v7, v17))
  {
    goto LABEL_21;
  }

  v18 = v7 - v17 + v16;
  result = sub_182AD1D78();
  if (v18)
  {
    goto LABEL_15;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_181C1F030(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_182AD1DB8();
  swift_allocObject();
  result = sub_182AD1D48();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_181C1F0B4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v8 = a1;
  swift_beginAccess();
  sub_181A546E0(a1 + v7, v6, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_181A5513C(v6, type metadata accessor for Endpoint.EndpointType);
    v9 = 0;
  }

  else
  {
    v10 = v6[1];
    v16[0] = *v6;
    v16[1] = v10;
    v12 = *v6;
    v11 = v6[1];
    v17[0] = v6[2];
    *(v17 + 12) = *(v6 + 44);
    v14[0] = v12;
    v14[1] = v11;
    v15[0] = v6[2];
    *(v15 + 12) = *(v6 + 44);
    v9 = sub_181C1F338(v14, a2);

    sub_181AA57B4(v16);
  }

  return v9 & 1;
}

unint64_t sub_181C1F228(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_181E68460(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_181E3720C(v3, v4);
    }

    else
    {
      v6 = sub_181C1F030(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_181C1F2E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_181C1F338(uint64_t a1, uint64_t a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 42);
  if (v2 != 1)
  {
    return v2 == 1;
  }

  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 24);
  v30[0] = *(a1 + 16);
  v30[1] = v6;
  v7 = sub_181C1F228(v30, v31);
  v9 = v7;
  v10 = v8;
  v11 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v11 != 2)
    {
      sub_181C1F2E4(v7, v8);
      v9 = 0;
      v16 = 0;
      goto LABEL_16;
    }

    v17 = *(v7 + 16);
    v18 = sub_182AD1D58();
    if (v18)
    {
      v19 = v18;
      v20 = sub_182AD1D88();
      if (__OFSUB__(v17, v20))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
      }

      v21 = (v17 - v20 + v19);
      sub_182AD1D78();
      if (v21)
      {
LABEL_14:
        v27 = v21;
        v26 = *v21;
        v16 = v27[1];
        sub_181C1F2E4(v9, v10);
        v9 = v26;
        goto LABEL_16;
      }
    }

    else
    {
      sub_182AD1D78();
    }

    __break(1u);
    goto LABEL_23;
  }

  if (!v11)
  {
    v12 = vdupq_n_s64(v8);
    v29 = vshlq_u64(v12, xmmword_182AEB790);
    v28 = vshlq_u64(v12, xmmword_182AEB7A0);
    sub_181C1F2E4(v7, v8);
    v13.i64[0] = 255;
    v13.i64[1] = 255;
    v14 = vandq_s8(v28, v13);
    v15 = vandq_s8(v29, v13);
    v16 = (v14.i64[0] << 40) | (v14.i64[1] << 32) | (v15.i64[0] << 24) | (v15.i64[1] << 16) | v10 & 0xFF00 | v10;
LABEL_16:
    *a2 = 7708;
    *(a2 + 2) = bswap32(v5) >> 16;
    *(a2 + 4) = 0;
    *(a2 + 8) = v9;
    *(a2 + 16) = v16;
    *(a2 + 24) = v4;
    return v2 == 1;
  }

  if (v7 > v7 >> 32)
  {
    __break(1u);
    goto LABEL_19;
  }

  v22 = sub_182AD1D58();
  if (!v22)
  {
LABEL_23:
    result = sub_182AD1D78();
    __break(1u);
    goto LABEL_24;
  }

  v23 = v22;
  v24 = sub_182AD1D88();
  if (__OFSUB__(v9, v24))
  {
    goto LABEL_20;
  }

  v21 = (v9 - v24 + v23);
  result = sub_182AD1D78();
  if (v21)
  {
    goto LABEL_14;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t _s7Network11IPv6AddressV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (a1[1] != a2[1] || *a1 != *a2)
  {
    goto LABEL_11;
  }

  v3 = a1[2];
  v4 = a2[2];
  if (!v3)
  {
    if (!v4)
    {
      v5 = 1;
      return v5 & 1;
    }

    goto LABEL_10;
  }

  if (!v4)
  {
LABEL_10:

LABEL_11:
    v5 = 0;
    return v5 & 1;
  }

  v7 = a2[2];
  v8 = v3;
  v5 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(&v8, &v7);
  swift_retain_n();

  return v5 & 1;
}

uint64_t sub_181C1F630()
{
  v1 = *(v0 + 272);
  if (v1)
  {
    if ((*(v0 + 159) & 4) != 0 || (v2 = *(v0 + 280)) == 0)
    {

      return v1;
    }
  }

  else
  {
    v2 = *(v0 + 280);
    if (!v2)
    {
      return 0;
    }
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_181FD73E4;
  *(v4 + 24) = v3;
  v9[4] = sub_181F7F228;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_181F79D48;
  v9[3] = &block_descriptor_10;
  v5 = _Block_copy(v9);
  swift_unknownObjectRetain();

  xpc_array_apply(v2, v5);
  swift_unknownObjectRelease();
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v8 = *(v0 + 156);
    if ((v8 & 0x4000000) == 0)
    {
      *(v0 + 156) = v8 | 0x4000000;
    }

    v1 = *(v0 + 272);

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t _nw_protocol_stack_set_transport_protocol_0(uint64_t a1, uint64_t a2)
{

  if (a2)
  {
    a2 = sub_181AA847C(a2);
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = 0;
      a2 = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v7 = 0x2000000000000000;
        a2 = v8;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          v7 = 0x4000000000000000;
          a2 = v9;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
          v10 = swift_dynamicCastClass();
          if (v10)
          {
            v7 = 0x6000000000000000;
            a2 = v10;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0);
            v11 = swift_dynamicCastClass();
            if (v11)
            {
              v7 = 0x8000000000000000;
              a2 = v11;
            }

            else
            {
              v7 = v5 | 0xA000000000000000;
            }
          }
        }
      }
    }
  }

  else
  {
    v7 = 0xF000000000000007;
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 40) = v7;
  sub_181A5301C(v12, v13);
}

uint64_t sub_181C1F940(uint64_t a1)
{

  sub_181AC9084();

  v2 = sub_182AD2388();
  *(a1 + 16) = *v2;

  sub_181A54748();

  *(a1 + 24) = *v2;
}

uint64_t Endpoint.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_181BCF834(a1, v5);
  if (!v6)
  {
    sub_181F49A88(v5, &unk_1EA83A4F0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v5[0] = 31;
  v2 = sub_181B0A11C(v4, v5);

  return v2 & 1;
}

BOOL sub_181C1FB40(char *a1, void *a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC7Network13__NWInterface_interface;
  v4 = *&a1[OBJC_IVAR____TtC7Network13__NWInterface_interface];
  v5 = a1;
  v6 = a2;
  v9[0] = *&v6[v3];
  v9[1] = v4;

  v7 = sub_181B9C7D8(v9);

  return v7;
}

uint64_t sub_181C1FBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = objc_allocWithZone(type metadata accessor for NWArray());
  swift_unknownObjectRetain();
  v7 = [v6 init];
  v8 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v10 = v9[4];
  if (v9[2] >= v9[3] + v10)
  {
    v11 = v9[3] + v10;
  }

  else
  {
    v11 = v9[2];
  }

  v27 = v9;
  v28 = v9[4];
  v29 = v11;
  v12 = OBJC_IVAR____TtC7Network7NWArray_deque;

  while (1)
  {
    if (v10 == v11)
    {
      v13 = sub_181AC81FC(v13);
      if ((v13 & 1) == 0)
      {
        swift_unknownObjectRelease();

        *a3 = v7;
        return result;
      }

      v9 = v27;
      v10 = v28;
    }

    v28 = v10 + 1;
    v14 = v9[v10 + 5];
    if (v14 == a2)
    {
      goto LABEL_5;
    }

    result = swift_beginAccess();
    v16 = *(*&v7[v12] + 24);
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    swift_unknownObjectRetain();
    result = swift_isUniquelyReferenced_nonNull_native();
    v18 = *&v7[v12];
    if (v18[2] < v17 || (result & 1) == 0)
    {
      result = sub_181ACC600(result, v17);
      v18 = *&v7[v12];
    }

    v19 = v18[3];
    v20 = v18[4];
    v23 = __OFADD__(v20, v19);
    v21 = v20 + v19;
    if (v23)
    {
      goto LABEL_26;
    }

    if (v19 < 0)
    {
      if (v21 < 0)
      {
        v25 = v18[2];
        v23 = __OFADD__(v21, v25);
        v21 += v25;
        if (v23)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v22 = v18[2];
      v23 = __OFSUB__(v21, v22);
      v24 = v21 - v22;
      if (v24 < 0 == v23)
      {
        v21 = v24;
        if (v23)
        {
          goto LABEL_28;
        }
      }
    }

    v18[v21 + 5] = v14;
    v23 = __OFADD__(v19, 1);
    v26 = v19 + 1;
    if (v23)
    {
      goto LABEL_27;
    }

    v18[3] = v26;
    v13 = swift_endAccess();
LABEL_5:
    v11 = v29;
    ++v10;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t nw_array_duplicate_array_without_object(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (v4)
    {
      v5 = _nw_array_duplicate_array_without_object(v3, v4);
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

uint64_t nw_data_transfer_report_get_received_application_byte_count(nw_data_transfer_report_t report, uint32_t path_index)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = v3;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_received_application_byte_count";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_received_application_byte_count";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null report", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v31 != 1)
    {
      v19 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_received_application_byte_count";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v25 = type;
    v26 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_received_application_byte_count";
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v26)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_received_application_byte_count";
      v35 = 2082;
      v36 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_44;
  }

  if (nw_data_transfer_report_get_state(v3) != nw_data_transfer_report_state_collected)
  {
    v21 = __nwlog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34 = "nw_data_transfer_report_get_received_application_byte_count";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (path_index == -1)
  {
    isa = v4[27].isa;
    isa_high = HIDWORD(v4[5].isa);
    if (isa_high < 2)
    {
      goto LABEL_14;
    }

    if (isa_high == 2)
    {
      v9 = 1;
    }

    else
    {
      v11 = 0;
      v12 = isa_high - 1;
      v13 = v4[52].isa;
      v14 = (isa_high - 1) & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        isa += *(v13 + 20);
        v11 += *(v13 + 65);
        v13 = (v13 + 720);
        v14 -= 2;
      }

      while (v14);
      isa += v11;
      if (v12 == ((isa_high - 1) & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_14;
      }

      v9 = v12 | 1;
    }

    v15 = isa_high - v9;
    v16 = (v4[52].isa + 360 * v9 - 200);
    do
    {
      isa += *v16;
      v16 += 45;
      --v15;
    }

    while (v15);
    goto LABEL_14;
  }

  if (HIDWORD(v4[5].isa) <= path_index)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_received_application_byte_count";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v18, &type, &v31))
    {
      goto LABEL_57;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_received_application_byte_count";
        _os_log_impl(&dword_181A37000, v19, v23, "%{public}s called with null (path_index < report->path_count)", buf, 0xCu);
      }

LABEL_56:

LABEL_57:
      if (v18)
      {
        free(v18);
      }

LABEL_59:
      isa = 0;
      goto LABEL_14;
    }

    if (v31 != 1)
    {
      v19 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_received_application_byte_count";
        _os_log_impl(&dword_181A37000, v19, v30, "%{public}s called with null (path_index < report->path_count), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_56;
    }

    backtrace_string = __nw_create_backtrace_string();
    v19 = __nwlog_obj();
    v27 = type;
    v28 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (v28)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_received_application_byte_count";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v28)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_received_application_byte_count";
      v35 = 2082;
      v36 = backtrace_string;
      _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_44:

    free(backtrace_string);
    goto LABEL_57;
  }

  v5 = v4;
  if (HIDWORD(v4[5].isa) <= path_index)
  {
    v6 = 0;
  }

  else if (path_index)
  {
    v6 = v5[52].isa + 360 * path_index - 360;
  }

  else
  {
    v6 = &v5[7];
  }

  isa = *(v6 + 160);
LABEL_14:

  return isa;
}

uint64_t nw_protocol_stack_includes_protocol(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = _nw_protocol_stack_includes_protocol(v3, v4);
      goto LABEL_4;
    }

    v13 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_stack_includes_protocol";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_stack_includes_protocol";
          v12 = "%{public}s called with null definition";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_stack_includes_protocol";
          v12 = "%{public}s called with null definition, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v17 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v21 = "nw_protocol_stack_includes_protocol";
          v12 = "%{public}s called with null definition, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v17)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v21 = "nw_protocol_stack_includes_protocol";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null definition, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_stack_includes_protocol";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v9, &type, &v18))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_stack_includes_protocol";
          v12 = "%{public}s called with null stack";
LABEL_31:
          _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v18 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v21 = "nw_protocol_stack_includes_protocol";
          v12 = "%{public}s called with null stack, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v15 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v15)
        {
          *buf = 136446210;
          v21 = "nw_protocol_stack_includes_protocol";
          v12 = "%{public}s called with null stack, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v15)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v21 = "nw_protocol_stack_includes_protocol";
      v22 = 2082;
      v23 = backtrace_string;
      v16 = "%{public}s called with null stack, dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_4:

  return v6;
}

uint64_t _nw_protocol_stack_includes_protocol(uint64_t a1, uint64_t a2)
{

  v3 = swift_unknownObjectRetain_n();
  sub_181AA82B4(v6, v3, 0, 0, 0, 255, a2);
  v4 = sub_181C2099C(v6);

  swift_unknownObjectRelease();
  sub_181A93268(v6);
  return v4 & 1;
}

uint64_t sub_181C2099C(uint64_t a1)
{
  v2 = sub_181AC9084();
  v3 = v2;
  v4 = *(v2 + 32);
  v5 = *(v2 + 24) + v4;
  if (*(v2 + 16) < v5)
  {
    v5 = *(v2 + 16);
  }

  v62 = v2;
  v63 = v4;
  i = v5;
  v55 = (*(a1 + 9) << 8) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 40);
  v56 = *(a1 + 16);
  while (1)
  {
    if (v4 != v5)
    {
      goto LABEL_8;
    }

    v2 = sub_181AC81FC(v2);
    if ((v2 & 1) == 0)
    {
      break;
    }

    v3 = v62;
    v4 = v63;
LABEL_8:
    v6 = v3 + 16 * v4++;
    v63 = v4;
    v7 = *(v6 + 40);
    v8 = *(v6 + 48);
    v9 = *(a1 + 48);
    v59 = *(a1 + 32);
    v60 = v9;
    v61 = *(a1 + 64);
    v10 = *(a1 + 16);
    v57 = *a1;
    v58 = v10;
    if (v8 >> 62)
    {
      if (v8 >> 62 == 1)
      {
        ObjectType = swift_getObjectType();
        v12 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v13 = sub_181C15310();
        swift_unknownObjectRetain();
        v14 = v12(&v57, &type metadata for CProtocol, v13, ObjectType, v8 & 0x3FFFFFFFFFFFFFFFLL);
        v2 = sub_181AAD084(v7, v8);
        if (v14)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      v15 = v57;
      v16 = BYTE1(v57);
      v2 = swift_beginAccess();
      if (*(v7 + 16) == v15 && *(v7 + 17) == v16)
      {
        v2 = *(v7 + 24);
        v17 = *(a1 + 8);
        if (*(v7 + 40))
        {
          if (*(a1 + 24))
          {
            v18 = v2 == (v55 | v17) && *(v7 + 32) == v56;
            if (v18 || (v2 = sub_182AD4268(), (v2 & 1) != 0))
            {
LABEL_48:

LABEL_49:
              v36 = 1;
              return v36 & 1;
            }
          }
        }

        else if ((*(a1 + 24) & 1) == 0 && v17 == v2)
        {
          goto LABEL_48;
        }
      }
    }

    v5 = i;
  }

  v19 = sub_181A54748();
  v20 = v19;
  v21 = *(v19 + 32);
  v22 = *(v19 + 24) + v21;
  if (*(v19 + 16) < v22)
  {
    v22 = *(v19 + 16);
  }

  v62 = v19;
  v63 = v21;
  for (i = v22; ; v22 = i)
  {
    if (v21 != v22)
    {
      goto LABEL_32;
    }

    v19 = sub_181AC81FC(v19);
    if ((v19 & 1) == 0)
    {
      break;
    }

    v20 = v62;
    v21 = v63;
LABEL_32:
    v23 = v20 + 16 * v21++;
    v63 = v21;
    v24 = *(v23 + 40);
    v25 = *(v23 + 48);
    v26 = *(a1 + 48);
    v59 = *(a1 + 32);
    v60 = v26;
    v61 = *(a1 + 64);
    v27 = *(a1 + 16);
    v57 = *a1;
    v58 = v27;
    if (v25 >> 62)
    {
      if (v25 >> 62 == 1)
      {
        v28 = swift_getObjectType();
        v29 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v30 = sub_181C15310();
        swift_unknownObjectRetain();
        v31 = v29(&v57, &type metadata for CProtocol, v30, v28, v25 & 0x3FFFFFFFFFFFFFFFLL);
        v19 = sub_181AAD084(v24, v25);
        if (v31)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      v32 = v57;
      v33 = BYTE1(v57);
      v19 = swift_beginAccess();
      if (*(v24 + 16) == v32 && *(v24 + 17) == v33)
      {
        v19 = *(v24 + 24);
        v34 = *(a1 + 8);
        if (*(v24 + 40))
        {
          if (*(a1 + 24))
          {
            if (v19 == (v55 | v34) && *(v24 + 32) == v56)
            {
              goto LABEL_48;
            }

            v19 = sub_182AD4268();
            if (v19)
            {
              goto LABEL_48;
            }
          }
        }

        else if ((*(a1 + 24) & 1) == 0 && v34 == v19)
        {
          goto LABEL_48;
        }
      }
    }
  }

  ProtocolStack.transport.getter(&v57);
  v38 = *(&v57 + 1);
  if ((~*(&v57 + 1) & 0xF000000000000007) != 0)
  {
    v39 = v57;
    v40 = sub_181C2110C(a1, v57, *(&v57 + 1));
    sub_181A53008(v39, v38);
    if (v40)
    {
      goto LABEL_49;
    }
  }

  v41 = v54[13];
  if ((~v41 & 0xF000000000000007) != 0)
  {
    v42 = v54[12];
    sub_181AACFF4(v42, v54[13]);
    v43 = sub_181C2110C(a1, v42, v41);
    sub_181A53008(v42, v41);
    if (v43)
    {
      goto LABEL_49;
    }
  }

  swift_beginAccess();
  v44 = v54[7];
  if ((~v44 & 0xF000000000000007) != 0)
  {
    v45 = v54[6];
    sub_181B2C3E0(v45, v54[7]);
    v46 = sub_181CDADD8(a1, v45, v44);
    sub_181A52FE0(v45, v44);
    if (v46)
    {
      goto LABEL_49;
    }
  }

  ProtocolStack.link.getter(&v57);
  v47 = v57;
  if (v57 == 1 || (v48 = *(&v57 + 1), v49 = *(a1 + 48), v59 = *(a1 + 32), v60 = v49, v61 = *(a1 + 64), v50 = *(a1 + 16), v57 = *a1, v58 = v50, !v47))
  {
    v36 = 0;
  }

  else
  {
    v51 = swift_getObjectType();
    v52 = *(v48 + 32);
    v53 = sub_181C15310();
    v36 = v52(&v57, &type metadata for CProtocol, v53, v51, v48);
    sub_181B03DAC(v47);
  }

  return v36 & 1;
}

id nw_path_copy_parameters(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_parameters(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_copy_parameters";
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
        v16 = "nw_path_copy_parameters";
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
          v16 = "nw_path_copy_parameters";
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
        v16 = "nw_path_copy_parameters";
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
        v16 = "nw_path_copy_parameters";
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

uint64_t sub_181C2110C(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v4 = a1[3];
  v33 = a1[2];
  v34 = v4;
  v35 = *(a1 + 8);
  v5 = a1[1];
  v31 = *a1;
  v32 = v5;
  v6 = a3 >> 61;
  if ((a3 >> 61) > 2 && v6 > 4)
  {
    if (v6 == 5)
    {
      v19 = a3 & 0x1FFFFFFFFFFFFFFFLL;
      ObjectType = swift_getObjectType();
      v21 = *(v19 + 32);
      v22 = sub_181C15310();
      v14 = v21(&v31, &type metadata for CProtocol, v22, ObjectType, v19);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v7 = *(&v31 + 1);
    v8 = v32;
    v9 = BYTE8(v32);
    swift_beginAccess();
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v12 = *(a2 + 32);
    v13 = *(a2 + 40);
    *v27 = v10;
    v28 = v11;
    v29 = v12;
    v30 = v13;
    *v23 = v31;
    v24 = *(&v31 + 1);
    v25 = v32;
    v26 = BYTE8(v32);
    v14 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v27, v23);
    v15 = v24;
    v16 = v25;
    v17 = v26;
    sub_181F49A24(v11, v12, v13);
    sub_181F49A24(v7, v8, v9);
    sub_181F48350(v15, v16, v17);
    sub_181F48350(v28, v29, v30);
  }

  return v14 & 1;
}

uint64_t NetworkContext.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void nw_activity_set_parent_activity(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_activity_set_parent_activity";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_58;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_activity_set_parent_activity";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null activity", buf, 0xCu);
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
          v31 = "nw_activity_set_parent_activity";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null activity, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_58:
        if (!v10)
        {
          goto LABEL_8;
        }

LABEL_59:
        free(v10);
        goto LABEL_8;
      }

      if (v19)
      {
        *buf = 136446210;
        v31 = "nw_activity_set_parent_activity";
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s called with null activity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_activity_set_parent_activity";
        _os_log_impl(&dword_181A37000, v11, v25, "%{public}s called with null activity, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_57:

    goto LABEL_58;
  }

  if ((v3[140] & 4) != 0)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_activity_set_parent_activity";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_58;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_activity_set_parent_activity";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot set nw_activity settings after activation", buf, 0xCu);
      }

      goto LABEL_57;
    }

    if (v28 != 1)
    {
      v11 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_activity_set_parent_activity";
        _os_log_impl(&dword_181A37000, v11, v26, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot set nw_activity settings after activation, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_57;
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
        v31 = "nw_activity_set_parent_activity";
        _os_log_impl(&dword_181A37000, v11, v21, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot set nw_activity settings after activation, no backtrace", buf, 0xCu);
      }

      goto LABEL_57;
    }

    if (v22)
    {
      *buf = 136446466;
      v31 = "nw_activity_set_parent_activity";
      v32 = 2082;
      v33 = v20;
      _os_log_impl(&dword_181A37000, v11, v21, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot set nw_activity settings after activation, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_38;
  }

  if ((v3[140] & 8) != 0)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_activity_set_parent_activity";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v10, &type, &v28))
    {
      goto LABEL_58;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_activity_set_parent_activity";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot set nw_activity settings after completion", buf, 0xCu);
      }

      goto LABEL_57;
    }

    if (v28 != 1)
    {
      v11 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v31 = "nw_activity_set_parent_activity";
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot set nw_activity settings after completion, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_57;
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
        v31 = "nw_activity_set_parent_activity";
        _os_log_impl(&dword_181A37000, v11, v23, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot set nw_activity settings after completion, no backtrace", buf, 0xCu);
      }

      goto LABEL_57;
    }

    if (v24)
    {
      *buf = 136446466;
      v31 = "nw_activity_set_parent_activity";
      v32 = 2082;
      v33 = v20;
      _os_log_impl(&dword_181A37000, v11, v23, "%{public}s BUG IN CLIENT OF LIBNETWORK: Cannot set nw_activity settings after completion, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_38:

    free(v20);
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_59;
  }

  v6 = v4;
  v7 = *(v3 + 7);
  if ((v3[64] & 1) != 0 && v7)
  {
    *(v3 + 7) = 0;

    v7 = *(v3 + 7);
  }

  *(v3 + 7) = 0;

  v8 = *(v3 + 7);
  *(v3 + 7) = v6;

  v3[64] |= 1u;
LABEL_8:
}

unint64_t Endpoint.description.getter()
{
  v1 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7Network8Endpoint_type;
  swift_beginAccess();
  sub_181ACC828(v0 + v7, v6, type metadata accessor for Endpoint.EndpointType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v14 = *(v6 + 3);
      v15 = *(v6 + 16);
      *&v25[0] = *(v6 + 2);
      *(&v25[0] + 1) = v14;

      MEMORY[0x1865D9CA0](58, 0xE100000000000000);
      v16 = v25[0];
      LOWORD(v25[0]) = v15;
      v17 = sub_182AD41B8();
      v19 = v18;
      v25[0] = v16;

      MEMORY[0x1865D9CA0](v17, v19);

      return *&v25[0];
    }

    else if (EnumCaseMultiPayload == 4)
    {

      return 0;
    }

    else
    {
      sub_181AA91BC(v6, v3, type metadata accessor for URLEndpoint);
      v20 = sub_182AD1F98();
      v21 = CFURLGetBytes(v20, 0, 0);
      MEMORY[0x1EEE9AC00](v21);
      *&v23[-1] = v20;
      v10 = sub_182AD30D8();

      sub_181A5513C(v3, type metadata accessor for URLEndpoint);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    *&v25[0] = *v6;
    if (EnumCaseMultiPayload == 1)
    {
      countAndFlagsBits = ApplicationServiceEndpoint1.descriptionInternal(redacted:)(0)._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = BonjourEndpoint1.descriptionInternal(redacted:)(0)._countAndFlagsBits;
    }

    v10 = countAndFlagsBits;
  }

  else
  {
    v11 = *(v6 + 1);
    v25[0] = *v6;
    v25[1] = v11;
    v13 = *v6;
    v12 = *(v6 + 1);
    v26[0] = *(v6 + 2);
    *(v26 + 12) = *(v6 + 44);
    v23[0] = v13;
    v23[1] = v12;
    v24[0] = *(v6 + 2);
    *(v24 + 12) = *(v6 + 44);
    v10 = AddressEndpoint.description.getter();
    sub_181AA57B4(v25);
  }

  return v10;
}

unint64_t AddressEndpoint.description.getter()
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 42);
  if (v3 <= 1)
  {
    v6 = *(v0 + 32);
    if (*(v0 + 42))
    {
      v10 = *(v0 + 40);
      v19 = *v0;
      v20 = v1;
      v21 = v2;
      v22 = v6;
      v23 = v10;
      v24 = 1;
      v25 = *(v0 + 43);
      v26 = *(v0 + 59);
      result = sub_181C1EE60();
      if ((v13 & 0x100000000) != 0)
      {
        __break(1u);
        return result;
      }

      v14 = result;
      *&v19.sa_len = result;
      *&v19.sa_data[2] = 0;
      *&v19.sa_data[6] = v11;
      v20 = v12;
      LODWORD(v21) = v13;
      v15 = swift_slowAlloc();
      if (getnameinfo(&v19, v14, v15, 0x64u, 0, 0, 2))
      {
        v16 = 63;
      }

      else
      {
        v16 = sub_182AD3158();
      }

      MEMORY[0x1865DF520](v15, -1, -1);
      v18 = v16;
      MEMORY[0x1865D9CA0](46, 0xE100000000000000);
    }

    else
    {
      *&v19.sa_len = 528;
      *v19.sa_data = bswap32(v6) >> 16;
      *&v19.sa_data[2] = v1;
      *&v19.sa_data[6] = 0;
      v7 = swift_slowAlloc();
      if (getnameinfo(&v19, 0x10u, v7, 0x64u, 0, 0, 2))
      {
        v8 = 63;
      }

      else
      {
        v8 = sub_182AD3158();
      }

      MEMORY[0x1865DF520](v7, -1, -1);
      v18 = v8;
      MEMORY[0x1865D9CA0](58, 0xE100000000000000);
    }

    v17 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v17);

    return v18;
  }

  else
  {
    if (v3 == 2)
    {
      *&v19.sa_len = 0x3A58494E555F4641;
      *&v19.sa_data[6] = 0xE900000000000022;
      MEMORY[0x1865D9CA0](v1, v2);
      goto LABEL_9;
    }

    if (v3 == 3)
    {
      *&v19.sa_len = 0x4B434F53565F4641;
      *&v19.sa_data[6] = 0xEA0000000000223ALL;
      v4 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v4);

      MEMORY[0x1865D9CA0](0x3D54524F50202CLL, 0xE700000000000000);
      v5 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v5);

      MEMORY[0x1865D9CA0](1027885379, 0xE400000000000000);

LABEL_9:
      MEMORY[0x1865D9CA0](34, 0xE100000000000000);
      return *&v19.sa_len;
    }

    return 0x4550534E555F4641;
  }
}

uint64_t sub_181C22084()
{
  v1 = *(v0 + 264);
  if (!v1)
  {
    return 0;
  }

  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (!v4)
  {
LABEL_9:
    while (1)
    {
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v10 >= v5)
      {
        v8 = 0;
        goto LABEL_41;
      }

      v4 = *(v1 + 64 + 8 * v10);
      ++v7;
      if (v4)
      {
        v7 = v10;
        goto LABEL_13;
      }
    }

    __break(1u);
    return result;
  }

  while (1)
  {
    while (1)
    {
LABEL_13:
      v11 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v12 = *(*(v1 + 56) + ((v7 << 9) | (8 * v11)));
      v13 = v12[6];
      v14 = v12[7];
      if (v14 > 2)
      {
        if (v14 == 3 || v14 == 4 || v14 == 5)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      if (v14)
      {
        if (v14 == 1 || v14 == 2)
        {
          goto LABEL_27;
        }

LABEL_24:
        v15 = v12[7];
        if (v13 != 0x6B726F7774654ELL)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }

      v15 = 0xE700000000000000;
LABEL_25:
      if (v15 == 0xE700000000000000)
      {
        sub_181AA5C1C(v12[6], v12[7]);

        break;
      }

LABEL_27:
      v16 = sub_182AD4268();
      sub_181AA5C1C(v13, v14);

      if (v16)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_9;
      }
    }

    v18 = v12[8];
    v17 = v12[9];
    if (v17 > 4)
    {
      if (v17 <= 9)
      {
        goto LABEL_7;
      }
    }

    else if (v17 >= 0)
    {
      goto LABEL_7;
    }

    if (v18 == 0x6F6974617267694DLL && v17 == 0xEF7963696C6F506ELL)
    {
      sub_181ADC1E0(0x6F6974617267694DLL, 0xEF7963696C6F506ELL);

      v8 = 1;
      goto LABEL_41;
    }

LABEL_7:
    v9 = sub_182AD4268();
    sub_181ADC1E0(v18, v17);

    if (v9)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_9;
    }
  }

  v8 = 1;
LABEL_41:

  return v8;
}

uint64_t _nw_endpoint_get_description(void *a1)
{
  v1 = a1;
  v2 = OBJC_IVAR____TtC7Network8Endpoint_storageLock;
  os_unfair_lock_lock((*&v1[OBJC_IVAR____TtC7Network8Endpoint_storageLock] + 16));
  sub_181C225C0(v1, &v5);
  os_unfair_lock_unlock((*&v1[v2] + 16));

  v3 = v5;

  return v3 + 24;
}

uint64_t sub_181C225C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_flags);
  if ((v4 & 4) == 0)
  {
    *(a1 + OBJC_IVAR____TtC7Network8Endpoint_flags) = v4 | 4;
  }

  v5 = OBJC_IVAR____TtC7Network8Endpoint_storage;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (*(v6 + 16) && (v7 = sub_181A41ED0(0), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    *a2 = v9;
  }

  else
  {
    swift_endAccess();
    v11 = Endpoint.description.getter();
    v13 = sub_181AB284C(v11, v12);
    swift_beginAccess();
    sub_181B4C354(v13, 0);
    swift_endAccess();

    swift_beginAccess();
    v14 = *(a1 + v5);
    if (*(v14 + 16) && (v15 = sub_181A41ED0(0), (v16 & 1) != 0))
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      swift_endAccess();

      *a2 = v17;
    }

    else
    {
      result = swift_endAccess();
      __break(1u);
    }
  }

  return result;
}

void nw_connection_cancel(nw_connection_t connection)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = connection;
  if (v1)
  {
    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_247);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    nw_connection_cancel_inner(v1, 0);
    goto LABEL_8;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v13 = "nw_connection_cancel";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v3, &type, &v10))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v13 = "nw_connection_cancel";
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v10 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v4 = __nwlog_obj();
      v7 = type;
      v8 = os_log_type_enabled(v4, type);
      if (backtrace_string)
      {
        if (v8)
        {
          *buf = 136446466;
          v13 = "nw_connection_cancel";
          v14 = 2082;
          v15 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v7, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_25;
      }

      if (v8)
      {
        *buf = 136446210;
        v13 = "nw_connection_cancel";
        _os_log_impl(&dword_181A37000, v4, v7, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v4 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v13 = "nw_connection_cancel";
        _os_log_impl(&dword_181A37000, v4, v9, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_25:
  if (v3)
  {
    free(v3);
  }

LABEL_8:
}

void nw_connection_cancel_inner(NWConcrete_nw_connection *a1, char a2)
{
  v3 = a1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZL27nw_connection_set_cancelledP24NWConcrete_nw_connection_block_invoke;
  v8[3] = &unk_1E6A3D868;
  v9 = v3;
  os_unfair_lock_lock(&v3->lock);
  ___ZL27nw_connection_set_cancelledP24NWConcrete_nw_connection_block_invoke(v8);
  os_unfair_lock_unlock(&v3->lock);

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZL26nw_connection_cancel_innerP24NWConcrete_nw_connectionb_block_invoke;
  v5[3] = &unk_1E6A3A258;
  v4 = v3;
  v6 = v4;
  v7 = a2;
  nw_connection_async_if_needed(v4, v5);
}

void ___ZL26nw_connection_cancel_innerP24NWConcrete_nw_connectionb_block_invoke(uint64_t a1)
{
  v157 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  logging_disabled = nw_parameters_get_logging_disabled(*(v2 + 16));
  if (v3 != 5)
  {
    if (logging_disabled)
    {
      goto LABEL_8;
    }

    v7 = *(*(a1 + 32) + 16);
    if (v7)
    {
      if (_nw_parameters_get_minimize_logging(v7))
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v86 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_parameters_get_minimize_logging";
    v87 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v134[0]) = 0;
    if (__nwlog_fault(v87, type, v134))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v88 = __nwlog_obj();
        v89 = type[0];
        if (os_log_type_enabled(v88, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_get_minimize_logging";
          _os_log_impl(&dword_181A37000, v88, v89, "%{public}s called with null parameters", buf, 0xCu);
        }
      }

      else if (LOBYTE(v134[0]) == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v88 = __nwlog_obj();
        v99 = type[0];
        v100 = os_log_type_enabled(v88, type[0]);
        if (backtrace_string)
        {
          if (v100)
          {
            *buf = 136446466;
            *&buf[4] = "nw_parameters_get_minimize_logging";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v88, v99, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_144;
        }

        if (v100)
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_get_minimize_logging";
          _os_log_impl(&dword_181A37000, v88, v99, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v88 = __nwlog_obj();
        v107 = type[0];
        if (os_log_type_enabled(v88, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_parameters_get_minimize_logging";
          _os_log_impl(&dword_181A37000, v88, v107, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_144:
    if (v87)
    {
      free(v87);
    }

LABEL_7:
    v8 = *(a1 + 32);
    v147[0] = MEMORY[0x1E69E9820];
    v147[1] = 3221225472;
    v147[2] = ___ZL26nw_connection_cancel_innerP24NWConcrete_nw_connectionb_block_invoke_249;
    v147[3] = &unk_1E6A2EF18;
    v148 = v8;
    v149 = *(a1 + 40);
    nw_connection_access_parameters_description_locked(v148, v147);

LABEL_8:
    v9 = *(a1 + 32);
    os_unfair_lock_opaque = v9[20]._os_unfair_lock_opaque;
    v143[0] = MEMORY[0x1E69E9820];
    v143[1] = 3221225472;
    v144 = ___ZL26nw_connection_cancel_innerP24NWConcrete_nw_connectionb_block_invoke_251;
    v145 = &unk_1E6A3D868;
    v6 = &v146;
    v146 = v9;
    os_unfair_lock_lock(v9 + 34);
    v144(v143);
    os_unfair_lock_unlock(v9 + 34);
    v11 = *(a1 + 32);
    v12 = v11;
    if (v11)
    {
      nw_context_assert_queue(*(v11 + 3));
      v13 = v12[53];
      if (v13)
      {
        v14 = _nw_array_copy(v13);
        v15 = v14;
        if (v14)
        {
          _nw_array_apply(v14, &__block_literal_global_241);
        }
      }

      goto LABEL_13;
    }

    v78 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_cleanup_data_transfer_reports_on_nw_queue";
    v79 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v134[0]) = 0;
    if (__nwlog_fault(v79, type, v134))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v80 = __nwlog_obj();
        v81 = type[0];
        if (os_log_type_enabled(v80, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_cleanup_data_transfer_reports_on_nw_queue";
          _os_log_impl(&dword_181A37000, v80, v81, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else
      {
        if (LOBYTE(v134[0]) == 1)
        {
          v112 = os_unfair_lock_opaque;
          v90 = __nw_create_backtrace_string();
          v91 = __nwlog_obj();
          v92 = type[0];
          v93 = os_log_type_enabled(v91, type[0]);
          if (v90)
          {
            if (v93)
            {
              *buf = 136446466;
              *&buf[4] = "nw_connection_cleanup_data_transfer_reports_on_nw_queue";
              *&buf[12] = 2082;
              *&buf[14] = v90;
              _os_log_impl(&dword_181A37000, v91, v92, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
            }

            os_unfair_lock_opaque = v112;
            free(v90);
          }

          else
          {
            if (v93)
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_cleanup_data_transfer_reports_on_nw_queue";
              _os_log_impl(&dword_181A37000, v91, v92, "%{public}s called with null connection, no backtrace", buf, 0xCu);
            }

            os_unfair_lock_opaque = v112;
          }

          goto LABEL_134;
        }

        v80 = __nwlog_obj();
        v105 = type[0];
        if (os_log_type_enabled(v80, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_cleanup_data_transfer_reports_on_nw_queue";
          _os_log_impl(&dword_181A37000, v80, v105, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_134:
    if (v79)
    {
      free(v79);
    }

LABEL_13:

    v16 = *(a1 + 40);
    v17 = *(a1 + 32);
    v18 = v17;
    if (v17)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL27nw_connection_cancel_probesP24NWConcrete_nw_connectionb_block_invoke;
      v154 = &unk_1E6A3A258;
      v155 = v17;
      LOBYTE(v156) = v16;
      os_unfair_lock_lock(v18 + 34);
      (*&buf[16])(buf);
      os_unfair_lock_unlock(v18 + 34);

      goto LABEL_15;
    }

    v82 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_cancel_probes";
    v83 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v134[0]) = 0;
    if (__nwlog_fault(v83, type, v134))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v84 = __nwlog_obj();
        v85 = type[0];
        if (os_log_type_enabled(v84, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_cancel_probes";
          _os_log_impl(&dword_181A37000, v84, v85, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else
      {
        if (LOBYTE(v134[0]) == 1)
        {
          v113 = os_unfair_lock_opaque;
          v94 = __nw_create_backtrace_string();
          v95 = __nwlog_obj();
          v96 = type[0];
          v97 = os_log_type_enabled(v95, type[0]);
          if (v94)
          {
            if (v97)
            {
              *buf = 136446466;
              *&buf[4] = "nw_connection_cancel_probes";
              *&buf[12] = 2082;
              *&buf[14] = v94;
              _os_log_impl(&dword_181A37000, v95, v96, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
            }

            os_unfair_lock_opaque = v113;
            free(v94);
          }

          else
          {
            if (v97)
            {
              *buf = 136446210;
              *&buf[4] = "nw_connection_cancel_probes";
              _os_log_impl(&dword_181A37000, v95, v96, "%{public}s called with null connection, no backtrace", buf, 0xCu);
            }

            os_unfair_lock_opaque = v113;
          }

          goto LABEL_139;
        }

        v84 = __nwlog_obj();
        v106 = type[0];
        if (os_log_type_enabled(v84, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_cancel_probes";
          _os_log_impl(&dword_181A37000, v84, v106, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_139:
    if (v83)
    {
      free(v83);
    }

LABEL_15:

    v19 = *(a1 + 32);
    v20 = *(v19 + 512);
    if (v20 && *(v19 + 109) < 0)
    {
      v21 = *(v19 + 16);
      if (v21 && !_nw_parameters_get_logging_disabled(v21))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v22 = gconnectionLogObj;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = *(*(a1 + 32) + 448);
          *buf = 136446466;
          *&buf[4] = "nw_connection_cancel_inner_block_invoke_2";
          *&buf[12] = 1024;
          *&buf[14] = v23;
          _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_INFO, "%{public}s [C%u] Connection cancelled, updating current interface", buf, 0x12u);
        }
      }

      (*(*(*(a1 + 32) + 512) + 16))(*(*(a1 + 32) + 512), 0);
      v19 = *(a1 + 32);
      v20 = *(v19 + 512);
    }

    *(v19 + 512) = 0;

    v24 = *(a1 + 32);
    v25 = *(v24 + 520);
    *(v24 + 520) = 0;

    v142 = 524289;
    nw_connection_endpoint_report_on_nw_queue(0, 0, 5, &v142, 0, *(a1 + 32));
    if (os_unfair_lock_opaque < 1)
    {
      goto LABEL_69;
    }

    nw_connection_send_stats_report_on_nw_queue(*(a1 + 32));
    if (os_unfair_lock_opaque > 2)
    {
      goto LABEL_69;
    }

    v26 = *(a1 + 32);
    v27 = 0;
    if (nw_connection_get_event_milliseconds(v26, 2, 2, 0, 0) == -1)
    {
      *buf = 0;
      event_milliseconds = nw_connection_get_event_milliseconds(v26, 2, 1, buf, 0);
      if (event_milliseconds == -1)
      {
        v27 = 0;
      }

      else
      {
        v35 = event_milliseconds;
        v36 = mach_continuous_time();
        if (v36 <= 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = v36;
        }

        v38 = nw_delta_nanos(*(v26 + 9), v37);
        v27 = 0;
        v39 = v38 / 0xF4240;
        if (v38 > 0xF423FFFFFFFFFLL)
        {
          LODWORD(v39) = -1;
        }

        v40 = v39 >= v35;
        v41 = v39 - v35;
        if (v41 != 0 && v40 && v41 >> 3 >= 0x271)
        {
          v42 = nw_connection_copy_endpoint_handler_for_handler_id(*(v26 + 18), *buf);
          nw_connection_report_symptom_on_nw_queue(v26, 421900, v42, 0);

          v27 = 1;
        }
      }
    }

    if (nw_connection_get_event_milliseconds(v26, 3, 6, 0, 0) == -1)
    {
      *buf = 0;
      v43 = nw_connection_get_event_milliseconds(v26, 3, 3, buf, 0);
      if (v43 != -1)
      {
        v44 = v43;
        v45 = mach_continuous_time();
        if (v45 <= 1)
        {
          v46 = 1;
        }

        else
        {
          v46 = v45;
        }

        v47 = nw_delta_nanos(*(v26 + 9), v46);
        v48 = v47 / 0xF4240;
        if (v47 > 0xF423FFFFFFFFFLL)
        {
          LODWORD(v48) = -1;
        }

        v40 = v48 >= v44;
        v49 = v48 - v44;
        if (v49 != 0 && v40 && v49 >> 3 >= 0x271)
        {
          v50 = nw_connection_copy_endpoint_handler_for_handler_id(*(v26 + 18), *buf);
          nw_connection_report_symptom_on_nw_queue(v26, 421901, v50, 0);

          v27 = 1;
        }
      }
    }

    if (v27)
    {
      v28 = 60;
    }

    else
    {
      v28 = 1301;
    }

    v29 = *(a1 + 32);
    v30 = v29;
    if (v29)
    {
      nw_context_assert_queue(v29[3]);
      if (nw_connection_get_privacy_stance(v30) == 4 || nw_connection_get_privacy_stance(v30) == 1)
      {
        v31 = v30[2];
        if (v31 && !_nw_parameters_get_logging_disabled(v31) && gLogDatapath == 1)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v32 = gconnectionLogObj;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v33 = *(v30 + 112);
            *buf = 136446466;
            *&buf[4] = "nw_connection_report_error_to_proxy_agent_on_nw_queue";
            *&buf[12] = 1024;
            *&buf[14] = v33;
            _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] not reporting error for connection with ineligible privacy stance", buf, 0x12u);
          }
        }
      }

      else
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nw_connection_report_error_to_proxy_agent_on_nw_queue_block_invoke;
        v154 = &unk_1E6A2EC30;
        v51 = v30;
        v155 = v51;
        LODWORD(v156) = v28;
        v52 = _Block_copy(buf);
        if ((*(v51 + 109) & 0x40) != 0 && (v53 = nw_endpoint_handler_copy_connected_flow_handler(v51[18])) != 0)
        {
          v54 = v53;
          v55 = v54[4];

          v56 = v54;
          os_unfair_lock_lock(v56 + 28);
          v57 = *(v56 + 8);
          os_unfair_lock_unlock(v56 + 28);

          v52[2](v52, v55, v57);
        }

        else
        {
          v58 = v51[18];
          *type = MEMORY[0x1E69E9820];
          v137 = 3221225472;
          v138 = __nw_connection_report_error_to_proxy_agent_on_nw_queue_block_invoke_29;
          v139 = &unk_1E6A2EC58;
          LODWORD(v141) = v28;
          v140 = v52;
          nw_endpoint_handler_apply_to_leaf_children(v58, type);
          v56 = v140;
        }
      }

LABEL_68:

LABEL_69:
      v59 = *(*(a1 + 32) + 168);
      v60 = [[NWConcrete_nw_error alloc] initWithDomain:89 code:?];
      nw_read_request_report_error_with_override(v59, 0, v60);

      v61 = *(a1 + 32);
      v62 = *(v61 + 168);
      *(v61 + 168) = 0;

      v63 = *(*(a1 + 32) + 160);
      v64 = [[NWConcrete_nw_error alloc] initWithDomain:89 code:?];
      nw_write_request_report_error_with_override(v63, 0, v64);

      v65 = *(a1 + 32);
      v66 = *(v65 + 160);
      *(v65 + 160) = 0;

      v68 = *(a1 + 32);
      v69 = v68[18];
      if (v69)
      {
        nw_endpoint_handler_cancel(v69, *(a1 + 40), 0);
        v68 = *(a1 + 32);
      }

      v70 = v68[22];
      if (v70)
      {
        nw_endpoint_handler_cancel(v70, *(a1 + 40), 0);
        v68 = *(a1 + 32);
      }

      v71 = v68[7];
      if (v71)
      {
        nw_candidate_manager_cancel(v71, v67);
        v72 = *(a1 + 32);
        v73 = *(v72 + 56);
        *(v72 + 56) = 0;

        v68 = *(a1 + 32);
      }

      v74 = v68[8];
      v68[8] = 0;

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v154 = __Block_byref_object_copy__11_24506;
      v155 = __Block_byref_object_dispose__12_24507;
      v156 = 0;
      *type = 0;
      v137 = type;
      v138 = 0x3032000000;
      v139 = __Block_byref_object_copy__24471;
      v140 = __Block_byref_object_dispose__24472;
      v141 = 0;
      v134[0] = 0;
      v134[1] = v134;
      v134[2] = 0x3032000000;
      v134[3] = __Block_byref_object_copy__24471;
      v134[4] = __Block_byref_object_dispose__24472;
      v135 = 0;
      v128 = 0;
      v129 = &v128;
      v130 = 0x3032000000;
      v131 = __Block_byref_object_copy__24471;
      v132 = __Block_byref_object_dispose__24472;
      v133 = 0;
      v126[0] = 0;
      v126[1] = v126;
      v126[2] = 0x3032000000;
      v126[3] = __Block_byref_object_copy__11_24506;
      v126[4] = __Block_byref_object_dispose__12_24507;
      v127 = 0;
      v75 = *(a1 + 32);
      v119[0] = MEMORY[0x1E69E9820];
      v119[1] = 3221225472;
      v119[2] = ___ZL26nw_connection_cancel_innerP24NWConcrete_nw_connectionb_block_invoke_252;
      v119[3] = &unk_1E6A2EF40;
      v121 = buf;
      v120 = v75;
      v122 = type;
      v123 = v134;
      v124 = &v128;
      v125 = v126;
      os_unfair_lock_lock(v75 + 34);
      ___ZL26nw_connection_cancel_innerP24NWConcrete_nw_connectionb_block_invoke_252(v119);
      os_unfair_lock_unlock(v75 + 34);
      nw_connection_cancel_update_handler(*(a1 + 32));
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZL26nw_connection_cancel_innerP24NWConcrete_nw_connectionb_block_invoke_2_253;
      aBlock[3] = &unk_1E6A2EF68;
      v115 = *(a1 + 32);
      v116 = v126;
      v117 = v134;
      v118 = buf;
      v76 = _Block_copy(aBlock);
      v77 = *(v137 + 40);
      if (v77)
      {
        dispatch_group_notify(v77, v129[5], v76);
      }

      else
      {
        v76[2](v76);
      }

      _Block_object_dispose(v126, 8);
      _Block_object_dispose(&v128, 8);

      _Block_object_dispose(v134, 8);
      _Block_object_dispose(type, 8);

      _Block_object_dispose(buf, 8);
      goto LABEL_79;
    }

    v101 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_report_error_to_proxy_agent_on_nw_queue";
    v102 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v134[0]) = 0;
    if (__nwlog_fault(v102, type, v134))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v103 = __nwlog_obj();
        v104 = type[0];
        if (os_log_type_enabled(v103, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_report_error_to_proxy_agent_on_nw_queue";
          _os_log_impl(&dword_181A37000, v103, v104, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (LOBYTE(v134[0]) == 1)
      {
        v108 = __nw_create_backtrace_string();
        v103 = __nwlog_obj();
        v109 = type[0];
        v110 = os_log_type_enabled(v103, type[0]);
        if (v108)
        {
          if (v110)
          {
            *buf = 136446466;
            *&buf[4] = "nw_connection_report_error_to_proxy_agent_on_nw_queue";
            *&buf[12] = 2082;
            *&buf[14] = v108;
            _os_log_impl(&dword_181A37000, v103, v109, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v108);
          goto LABEL_152;
        }

        if (v110)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_report_error_to_proxy_agent_on_nw_queue";
          _os_log_impl(&dword_181A37000, v103, v109, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v103 = __nwlog_obj();
        v111 = type[0];
        if (os_log_type_enabled(v103, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_report_error_to_proxy_agent_on_nw_queue";
          _os_log_impl(&dword_181A37000, v103, v111, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_152:
    if (v102)
    {
      free(v102);
    }

    goto LABEL_68;
  }

  if (logging_disabled)
  {
    return;
  }

  v5 = *(a1 + 32);
  v150[0] = MEMORY[0x1E69E9820];
  v150[1] = 3221225472;
  v150[2] = ___ZL26nw_connection_cancel_innerP24NWConcrete_nw_connectionb_block_invoke_2;
  v150[3] = &unk_1E6A2EF18;
  v6 = &v151;
  v151 = v5;
  v152 = *(a1 + 40);
  nw_connection_access_parameters_description_locked(v151, v150);
LABEL_79:
}
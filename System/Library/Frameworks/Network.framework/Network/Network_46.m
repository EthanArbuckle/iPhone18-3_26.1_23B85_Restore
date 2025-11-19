void nw_quic_connection_set_is_early_data_accepted(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_is_early_data_accepted(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_is_early_data_accepted";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_is_early_data_accepted";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_quic_connection_set_is_early_data_accepted";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_is_early_data_accepted";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_is_early_data_accepted";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

uint64_t QUICStreamProtocol.QUICStreamOptions.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _nw_quic_connection_set_is_early_data_accepted(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      *(v6 + 232) = a2;
    }
  }

  return result;
}

uint64_t nw_protocol_http3_get_remote_endpoint(nw_protocol *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      return handle[139];
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_http3_get_remote_endpoint";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v11 = 0;
    if (!__nwlog_fault(v3, &type, &v11))
    {
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_http3_get_remote_endpoint";
        v6 = "%{public}s called with null http3";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_http3_get_remote_endpoint";
        v6 = "%{public}s called with null http3, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v10 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (v10)
      {
        *buf = 136446210;
        v14 = "nw_protocol_http3_get_remote_endpoint";
        v6 = "%{public}s called with null http3, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v10)
    {
      *buf = 136446466;
      v14 = "nw_protocol_http3_get_remote_endpoint";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null http3, dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_http3_get_remote_endpoint";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (!__nwlog_fault(v3, &type, &v11))
  {
    goto LABEL_32;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v11 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_http3_get_remote_endpoint";
        v6 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v8 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (v8)
      {
        *buf = 136446210;
        v14 = "nw_protocol_http3_get_remote_endpoint";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v8)
    {
      *buf = 136446466;
      v14 = "nw_protocol_http3_get_remote_endpoint";
      v15 = 2082;
      v16 = backtrace_string;
      v9 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v4, v5, v9, buf, 0x16u);
    }

LABEL_22:
    free(backtrace_string);
    goto LABEL_32;
  }

  v4 = __nwlog_obj();
  v5 = type;
  if (os_log_type_enabled(v4, type))
  {
    *buf = 136446210;
    v14 = "nw_protocol_http3_get_remote_endpoint";
    v6 = "%{public}s called with null protocol";
LABEL_31:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
  }

LABEL_32:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_quic_connection_execute_locked(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_execute_locked(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_execute_locked";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v6, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_execute_locked";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
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
            v15 = "nw_quic_connection_execute_locked";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_connection_execute_locked";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_execute_locked";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v6)
  {
    free(v6);
  }

LABEL_3:
}

uint64_t nw_protocol_http3_get_parameters(nw_protocol *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    if (handle)
    {
      if ((*(handle + 1399) & 0x20) == 0 && gLogDatapath == 1)
      {
        v8 = __nwlog_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = handle[326];
          *buf = 136447490;
          v17 = "nw_protocol_http3_get_parameters";
          v18 = 2082;
          v19 = handle + 1313;
          v20 = 2080;
          v21 = " ";
          v22 = 1024;
          v23 = v9;
          v24 = 2048;
          v25 = a1;
          v26 = 2048;
          v27 = handle;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> called with protocol %p (control_outbound_protocol is %p)", buf, 0x3Au);
        }
      }

      result = *(handle + 143);
      if (!result)
      {
        return *(handle + 142);
      }

      return result;
    }

    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_http3_get_parameters";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (!__nwlog_fault(v3, &type, &v14))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_http3_get_parameters";
        v6 = "%{public}s called with null http3";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v14 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_http3_get_parameters";
        v6 = "%{public}s called with null http3, backtrace limit exceeded";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v13 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        v17 = "nw_protocol_http3_get_parameters";
        v6 = "%{public}s called with null http3, no backtrace";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v13)
    {
      *buf = 136446466;
      v17 = "nw_protocol_http3_get_parameters";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null http3, dumping backtrace:%{public}s";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_http3_get_parameters";
  v3 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (!__nwlog_fault(v3, &type, &v14))
  {
    goto LABEL_37;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v14 != 1)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v17 = "nw_protocol_http3_get_parameters";
        v6 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = type;
    v11 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (v11)
      {
        *buf = 136446210;
        v17 = "nw_protocol_http3_get_parameters";
        v6 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v11)
    {
      *buf = 136446466;
      v17 = "nw_protocol_http3_get_parameters";
      v18 = 2082;
      v19 = backtrace_string;
      v12 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_26:
      _os_log_impl(&dword_181A37000, v4, v5, v12, buf, 0x16u);
    }

LABEL_27:
    free(backtrace_string);
    goto LABEL_37;
  }

  v4 = __nwlog_obj();
  v5 = type;
  if (os_log_type_enabled(v4, type))
  {
    *buf = 136446210;
    v17 = "nw_protocol_http3_get_parameters";
    v6 = "%{public}s called with null protocol";
LABEL_36:
    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
  }

LABEL_37:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

void nw_socket_disconnect(nw_protocol *a1, nw_protocol *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_socket_disconnect";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v2, &type, &v30))
    {
      goto LABEL_68;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      v33 = "nw_socket_disconnect";
      v27 = "%{public}s called with null protocol";
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type;
      v29 = os_log_type_enabled(v25, type);
      if (backtrace_string)
      {
        if (v29)
        {
          *buf = 136446466;
          v33 = "nw_socket_disconnect";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_49;
        }

        return;
      }

      if (!v29)
      {
LABEL_68:
        if (!v2)
        {
          return;
        }

        goto LABEL_49;
      }

      *buf = 136446210;
      v33 = "nw_socket_disconnect";
      v27 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      v33 = "nw_socket_disconnect";
      v27 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
    goto LABEL_68;
  }

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
      v33 = "nw_socket_disconnect";
      v8 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v30 = 0;
      if (!__nwlog_fault(v8, &type, &v30))
      {
        goto LABEL_36;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v33 = "nw_socket_disconnect";
        v11 = "%{public}s called with null socket_handler";
      }

      else
      {
        if (v30 == 1)
        {
          v14 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v15 = gLogObj;
          v16 = type;
          v17 = os_log_type_enabled(gLogObj, type);
          if (v14)
          {
            if (v17)
            {
              *buf = 136446466;
              v33 = "nw_socket_disconnect";
              v34 = 2082;
              v35 = v14;
              _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v14);
            goto LABEL_36;
          }

          if (!v17)
          {
LABEL_36:
            if (v8)
            {
              free(v8);
            }

            goto LABEL_38;
          }

          *buf = 136446210;
          v33 = "nw_socket_disconnect";
          v11 = "%{public}s called with null socket_handler, no backtrace";
          v18 = v15;
          v19 = v16;
LABEL_35:
          _os_log_impl(&dword_181A37000, v18, v19, v11, buf, 0xCu);
          goto LABEL_36;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v33 = "nw_socket_disconnect";
        v11 = "%{public}s called with null socket_handler, backtrace limit exceeded";
      }

      v18 = v9;
      v19 = v10;
      goto LABEL_35;
    }

    v7 = *a1[1].flow_id;
  }

  v12 = *(&v7[6].callbacks + 5);
  *(&v7[6].callbacks + 5) = v12 | 0x40;
  if ((v12 & 8) != 0 || v7[5].callbacks)
  {
    if ((v12 & 0x80) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v13 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v33 = "nw_socket_disconnect";
        v34 = 2082;
        v35 = &v7[6].output_handler + 4;
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s %{public}s Outstanding bytes to send, deferring socket disconnect", buf, 0x16u);
      }
    }

    nw_socket_update_output_source(&v7[1].output_handler);
  }

  else
  {
    nw_socket_internal_disconnect(&v7[1].output_handler);
  }

LABEL_38:
  if ((v5 & 1) == 0)
  {
    v20 = v2->handle;
    if (v20 == &nw_protocol_ref_counted_handle || v20 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v21 = v2[1].callbacks;
      if (v21)
      {
        v22 = (v21 - 1);
        v2[1].callbacks = v22;
        if (!v22)
        {
          v23 = *v2[1].flow_id;
          if (v23)
          {
            *v2[1].flow_id = 0;
            v23[2](v23);
            _Block_release(v23);
          }

          if (v2[1].flow_id[8])
          {
            v24 = *v2[1].flow_id;
            if (v24)
            {
              _Block_release(v24);
            }
          }

LABEL_49:
          free(v2);
        }
      }
    }
  }
}

uint64_t __nw_protocol_instance_registrar_add_edges_for_instance_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v101 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = v5;
  v10 = v4;
  v11 = v6;
  v12 = v11;
  if (!v8)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v83 = 0;
    if (!__nwlog_fault(v28, &type, &v83))
    {
      goto LABEL_157;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null registrar", buf, 0xCu);
      }
    }

    else if (v83 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v42 = type;
      v43 = os_log_type_enabled(v29, type);
      if (backtrace_string)
      {
        if (v43)
        {
          *buf = 136446466;
          v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          v87 = 2082;
          v88 = backtrace_string;
          _os_log_impl(&dword_181A37000, v29, v42, "%{public}s called with null registrar, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_157:
        if (!v28)
        {
          goto LABEL_24;
        }

LABEL_158:
        free(v28);
        goto LABEL_24;
      }

      if (v43)
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v42, "%{public}s called with null registrar, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v29 = __nwlog_obj();
      v68 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v68, "%{public}s called with null registrar, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_156:

    goto LABEL_157;
  }

  if (!v7)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v83 = 0;
    if (!__nwlog_fault(v28, &type, &v83))
    {
      goto LABEL_157;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null protocol", buf, 0xCu);
      }

      goto LABEL_156;
    }

    if (v83 != 1)
    {
      v29 = __nwlog_obj();
      v69 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v69, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_156;
    }

    v44 = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v45 = type;
    v46 = os_log_type_enabled(v29, type);
    if (!v44)
    {
      if (v46)
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v45, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }

      goto LABEL_156;
    }

    if (v46)
    {
      *buf = 136446466;
      v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
      v87 = 2082;
      v88 = v44;
      _os_log_impl(&dword_181A37000, v29, v45, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_84;
  }

  if (!*(v7 + 16))
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v83 = 0;
    if (!__nwlog_fault(v28, &type, &v83))
    {
      goto LABEL_157;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null protocol->identifier", buf, 0xCu);
      }

      goto LABEL_156;
    }

    if (v83 != 1)
    {
      v29 = __nwlog_obj();
      v70 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v70, "%{public}s called with null protocol->identifier, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_156;
    }

    v44 = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v47 = type;
    v48 = os_log_type_enabled(v29, type);
    if (!v44)
    {
      if (v48)
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v47, "%{public}s called with null protocol->identifier, no backtrace", buf, 0xCu);
      }

      goto LABEL_156;
    }

    if (v48)
    {
      *buf = 136446466;
      v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
      v87 = 2082;
      v88 = v44;
      _os_log_impl(&dword_181A37000, v29, v47, "%{public}s called with null protocol->identifier, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_84;
  }

  if (!v9)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v83 = 0;
    if (!__nwlog_fault(v28, &type, &v83))
    {
      goto LABEL_157;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v36, "%{public}s called with null to_endpoint", buf, 0xCu);
      }

      goto LABEL_156;
    }

    if (v83 != 1)
    {
      v29 = __nwlog_obj();
      v71 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v71, "%{public}s called with null to_endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_156;
    }

    v44 = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v49 = type;
    v50 = os_log_type_enabled(v29, type);
    if (!v44)
    {
      if (v50)
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v49, "%{public}s called with null to_endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_156;
    }

    if (v50)
    {
      *buf = 136446466;
      v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
      v87 = 2082;
      v88 = v44;
      _os_log_impl(&dword_181A37000, v29, v49, "%{public}s called with null to_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_84;
  }

  if (!v10)
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v83 = 0;
    if (!__nwlog_fault(v28, &type, &v83))
    {
      goto LABEL_157;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v38, "%{public}s called with null from_endpoint", buf, 0xCu);
      }

      goto LABEL_156;
    }

    if (v83 != 1)
    {
      v29 = __nwlog_obj();
      v72 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v72, "%{public}s called with null from_endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_156;
    }

    v44 = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v51 = type;
    v52 = os_log_type_enabled(v29, type);
    if (!v44)
    {
      if (v52)
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v51, "%{public}s called with null from_endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_156;
    }

    if (v52)
    {
      *buf = 136446466;
      v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
      v87 = 2082;
      v88 = v44;
      _os_log_impl(&dword_181A37000, v29, v51, "%{public}s called with null from_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_84;
  }

  if (!v11)
  {
    v39 = __nwlog_obj();
    *buf = 136446210;
    v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v83 = 0;
    if (!__nwlog_fault(v28, &type, &v83))
    {
      goto LABEL_157;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v40, "%{public}s called with null parameters", buf, 0xCu);
      }

      goto LABEL_156;
    }

    if (v83 != 1)
    {
      v29 = __nwlog_obj();
      v73 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v73, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_156;
    }

    v44 = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v53 = type;
    v54 = os_log_type_enabled(v29, type);
    if (!v44)
    {
      if (v54)
      {
        *buf = 136446210;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        _os_log_impl(&dword_181A37000, v29, v53, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }

      goto LABEL_156;
    }

    if (v54)
    {
      *buf = 136446466;
      v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
      v87 = 2082;
      v88 = v44;
      _os_log_impl(&dword_181A37000, v29, v53, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_84:

    free(v44);
    if (!v28)
    {
      goto LABEL_24;
    }

    goto LABEL_158;
  }

  v13 = v9;
  is_registered = _nw_endpoint_is_registered(v13);

  v15 = v13;
  if (is_registered)
  {
    goto LABEL_11;
  }

  v16 = _nw_parameters_copy_context(v12);
  v17 = v16;
  if (!v16)
  {
    v55 = __nwlog_obj();
    *buf = 136446210;
    v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
    v56 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v83 = 0;
    if (__nwlog_fault(v56, &type, &v83))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v57 = __nwlog_obj();
        v58 = type;
        if (os_log_type_enabled(v57, type))
        {
          *buf = 136446210;
          v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (v83 == 1)
      {
        v74 = __nw_create_backtrace_string();
        v57 = __nwlog_obj();
        v75 = type;
        v76 = os_log_type_enabled(v57, type);
        if (v74)
        {
          if (v76)
          {
            *buf = 136446466;
            v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
            v87 = 2082;
            v88 = v74;
            _os_log_impl(&dword_181A37000, v57, v75, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v74);
          goto LABEL_162;
        }

        if (v76)
        {
          *buf = 136446210;
          v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          _os_log_impl(&dword_181A37000, v57, v75, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v57 = __nwlog_obj();
        v80 = type;
        if (os_log_type_enabled(v57, type))
        {
          *buf = 136446210;
          v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          _os_log_impl(&dword_181A37000, v57, v80, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_162:
    if (v56)
    {
      free(v56);
    }

    goto LABEL_23;
  }

  v15 = nw_context_copy_registered_endpoint_internal(v16, v13, 0);

  if (gLogDatapath == 1)
  {
    v63 = __nwlog_obj();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      v64 = *(v7 + 16);
      *buf = 136448002;
      v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
      v87 = 2112;
      v88 = v8;
      v89 = 2048;
      v90 = v7;
      v91 = 2080;
      v92 = v64;
      v93 = 2112;
      v94 = v13;
      v95 = 2048;
      v96 = v13;
      v97 = 2112;
      v98 = v15;
      v99 = 2048;
      v100 = v15;
      _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p of %s replacing unregistered endpoint %@ (%p) with endpoint %@ (%p)", buf, 0x52u);
    }
  }

LABEL_11:
  v18 = v10;
  v19 = _nw_endpoint_is_registered(v18);

  if ((v19 & 1) == 0)
  {
    v20 = _nw_parameters_copy_context(v12);
    v21 = v20;
    if (v20)
    {
      v22 = nw_context_copy_registered_endpoint_internal(v20, v18, 0);

      if (gLogDatapath == 1)
      {
        log = __nwlog_obj();
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          v67 = *(v7 + 16);
          *buf = 136448002;
          v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          v87 = 2112;
          v88 = v8;
          v89 = 2048;
          v90 = v7;
          v91 = 2080;
          v92 = v67;
          v93 = 2112;
          v94 = v18;
          v95 = 2048;
          v96 = v18;
          v97 = 2112;
          v98 = v22;
          v99 = 2048;
          v100 = v22;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p of %s replacing unregistered endpoint %@ (%p) with endpoint %@ (%p)", buf, 0x52u);
        }
      }

      v18 = v22;
      goto LABEL_15;
    }

    v59 = __nwlog_obj();
    *buf = 136446210;
    v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
    v60 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v83 = 0;
    if (__nwlog_fault(v60, &type, &v83))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v61 = __nwlog_obj();
        v62 = type;
        if (os_log_type_enabled(v61, type))
        {
          *buf = 136446210;
          v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (v83 == 1)
      {
        v77 = __nw_create_backtrace_string();
        v61 = __nwlog_obj();
        v78 = type;
        v79 = os_log_type_enabled(v61, type);
        if (v77)
        {
          if (v79)
          {
            *buf = 136446466;
            v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
            v87 = 2082;
            v88 = v77;
            _os_log_impl(&dword_181A37000, v61, v78, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v77);
          goto LABEL_167;
        }

        if (v79)
        {
          *buf = 136446210;
          v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          _os_log_impl(&dword_181A37000, v61, v78, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v61 = __nwlog_obj();
        v81 = type;
        if (os_log_type_enabled(v61, type))
        {
          *buf = 136446210;
          v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
          _os_log_impl(&dword_181A37000, v61, v81, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_167:
    if (v60)
    {
      free(v60);
    }

    goto LABEL_22;
  }

LABEL_15:
  if (nw_endpoint_is_equal(v18, v15, 31))
  {
    if (gLogDatapath == 1)
    {
      v23 = __nwlog_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(v7 + 16);
        *buf = 136447490;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        v87 = 2112;
        v88 = v8;
        v89 = 2048;
        v90 = v7;
        v91 = 2080;
        v92 = v24;
        v93 = 2112;
        v94 = v18;
        v95 = 2112;
        v96 = v15;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p of %s source and destination endpoints (%@ -> %@) are the same, skipping", buf, 0x3Eu);
      }
    }
  }

  else
  {
    v25 = nw_endpoint_edge_create(v15, *(v7 + 16), 0);
    nw_endpoint_add_edge(v18, v25);
    if (gLogDatapath == 1)
    {
      v65 = __nwlog_obj();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        v66 = *(v7 + 16);
        *buf = 136447490;
        v86 = "nw_protocol_instance_registrar_add_edge_for_endpoint";
        v87 = 2112;
        v88 = v8;
        v89 = 2048;
        v90 = v7;
        v91 = 2080;
        v92 = v66;
        v93 = 2112;
        v94 = v18;
        v95 = 2112;
        v96 = v15;
        _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s %@ instance %p of %s added edge from endpoint %@ to endpoint %@", buf, 0x3Eu);
      }
    }
  }

LABEL_22:

  v13 = v15;
LABEL_23:

LABEL_24:
  return 1;
}

uint64_t sub_181D51420(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      os_unfair_lock_lock((*(v6 + 248) + 16));
      (*(a2 + 16))(a2);
      os_unfair_lock_unlock((*(v6 + 248) + 16));
    }
  }

  return result;
}

void nw_socket_internal_disconnect(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  nw_protocol_socket_set_no_wake_from_sleep(a1, 1);
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      v4 = *(v3 + 48);
      if (v4)
      {

        v4();
        return;
      }
    }

    v5 = *(a1 + 56);
    __nwlog_obj();
    v6 = v5;
    v7 = *(v5 + 16);
    if (!v7)
    {
      v7 = "invalid";
    }
  }

  else
  {
    v6 = 0;
    __nwlog_obj();
    v7 = "invalid";
  }

  *buf = 136446466;
  v21 = "nw_socket_internal_disconnect";
  v22 = 2082;
  v23 = v7;
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v8, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_37;
      }

      v11 = "invalid";
      if (v6 && *(v6 + 16))
      {
        v11 = *(v6 + 16);
      }

      *buf = 136446466;
      v21 = "nw_socket_internal_disconnect";
      v22 = 2082;
      v23 = v11;
      v12 = "%{public}s protocol %{public}s has invalid disconnected callback";
      goto LABEL_36;
    }

    if (v18 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_37;
      }

      v16 = "invalid";
      if (v6 && *(v6 + 16))
      {
        v16 = *(v6 + 16);
      }

      *buf = 136446466;
      v21 = "nw_socket_internal_disconnect";
      v22 = 2082;
      v23 = v16;
      v12 = "%{public}s protocol %{public}s has invalid disconnected callback, backtrace limit exceeded";
      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v14 = os_log_type_enabled(v9, type);
    if (backtrace_string)
    {
      if (v14)
      {
        v15 = "invalid";
        if (v6 && *(v6 + 16))
        {
          v15 = *(v6 + 16);
        }

        *buf = 136446722;
        v21 = "nw_socket_internal_disconnect";
        v22 = 2082;
        v23 = v15;
        v24 = 2082;
        v25 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s protocol %{public}s has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
      goto LABEL_37;
    }

    if (v14)
    {
      v17 = "invalid";
      if (v6 && *(v6 + 16))
      {
        v17 = *(v6 + 16);
      }

      *buf = 136446466;
      v21 = "nw_socket_internal_disconnect";
      v22 = 2082;
      v23 = v17;
      v12 = "%{public}s protocol %{public}s has invalid disconnected callback, no backtrace";
LABEL_36:
      _os_log_impl(&dword_181A37000, v9, v10, v12, buf, 0x16u);
    }
  }

LABEL_37:
  if (v8)
  {
    free(v8);
  }
}

NWConcrete_nw_endpoint_edge *nw_endpoint_edge_create(void *a1, __int128 *a2, char a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [NWConcrete_nw_endpoint_edge alloc];
  v7 = v5;
  v8 = v7;
  if (!v6)
  {
    goto LABEL_6;
  }

  if (!v7)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
    v14 = _os_log_send_and_compose_impl();

    LOBYTE(v41.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v14, &v41, &type))
    {
      if (LOBYTE(v41.receiver) == 17)
      {
        v15 = __nwlog_obj();
        receiver = v41.receiver;
        if (os_log_type_enabled(v15, v41.receiver))
        {
          *buf = 136446210;
          v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
          _os_log_impl(&dword_181A37000, v15, receiver, "%{public}s called with null _endpoint", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v29 = v41.receiver;
        v30 = os_log_type_enabled(v15, v41.receiver);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
            v45 = 2082;
            v46 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v29, "%{public}s called with null _endpoint, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_54;
        }

        if (v30)
        {
          *buf = 136446210;
          v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
          _os_log_impl(&dword_181A37000, v15, v29, "%{public}s called with null _endpoint, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v15 = __nwlog_obj();
        v37 = v41.receiver;
        if (os_log_type_enabled(v15, v41.receiver))
        {
          *buf = 136446210;
          v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
          _os_log_impl(&dword_181A37000, v15, v37, "%{public}s called with null _endpoint, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_54:
    if (v14)
    {
      free(v14);
    }

    goto LABEL_56;
  }

  if (!a2)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
    v18 = _os_log_send_and_compose_impl();

    LOBYTE(v41.receiver) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v18, &v41, &type))
    {
      if (LOBYTE(v41.receiver) == 17)
      {
        v19 = __nwlog_obj();
        v20 = v41.receiver;
        if (os_log_type_enabled(v19, v41.receiver))
        {
          *buf = 136446210;
          v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null _identifier", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v31 = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v32 = v41.receiver;
        v33 = os_log_type_enabled(v19, v41.receiver);
        if (v31)
        {
          if (v33)
          {
            *buf = 136446466;
            v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
            v45 = 2082;
            v46 = v31;
            _os_log_impl(&dword_181A37000, v19, v32, "%{public}s called with null _identifier, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v31);
          goto LABEL_60;
        }

        if (v33)
        {
          *buf = 136446210;
          v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
          _os_log_impl(&dword_181A37000, v19, v32, "%{public}s called with null _identifier, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v19 = __nwlog_obj();
        v38 = v41.receiver;
        if (os_log_type_enabled(v19, v41.receiver))
        {
          *buf = 136446210;
          v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
          _os_log_impl(&dword_181A37000, v19, v38, "%{public}s called with null _identifier, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_60:
    if (v18)
    {
      free(v18);
    }

LABEL_56:

LABEL_68:
    v6 = 0;
    goto LABEL_6;
  }

  v41.receiver = v6;
  v41.super_class = NWConcrete_nw_endpoint_edge;
  v9 = objc_msgSendSuper2(&v41, sel_init);
  v6 = v9;
  if (!v9)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v22, &type, &v40))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v40 == 1)
      {
        v34 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v35 = type;
        v36 = os_log_type_enabled(v23, type);
        if (v34)
        {
          if (v36)
          {
            *buf = 136446466;
            v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
            v45 = 2082;
            v46 = v34;
            _os_log_impl(&dword_181A37000, v23, v35, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v34);
          goto LABEL_66;
        }

        if (v36)
        {
          *buf = 136446210;
          v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
          _os_log_impl(&dword_181A37000, v23, v35, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v23 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
          _os_log_impl(&dword_181A37000, v23, v39, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_66:
    if (v22)
    {
      free(v22);
    }

    goto LABEL_68;
  }

  objc_storeWeak(&v9->endpoint, v8);
  *(v6 + 64) = *(v6 + 64) & 0xFE | a3;
  v10 = *a2;
  v11 = a2[1];
  *&v6->identifier.level = *(a2 + 4);
  *&v6->identifier.name[16] = v11;
  *v6->identifier.name = v10;
  if (gLogDatapath == 1)
  {
    v25 = __nwlog_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      is_registered = nw_endpoint_is_registered(v8);
      v27 = "un";
      v44 = "[NWConcrete_nw_endpoint_edge initWithEndpoint:identifier:wildcard:]";
      *buf = 136446722;
      if (is_registered)
      {
        v27 = "";
      }

      v45 = 2080;
      v46 = v27;
      v47 = 2112;
      v48 = v8;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s endpoint edge create with %sregistered endpoint %@", buf, 0x20u);
    }
  }

LABEL_6:

  return v6;
}

uint64_t nw_protocol_socket_set_no_wake_from_sleep(_DWORD *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_socket_set_no_wake_from_sleep";
    v12 = _os_log_send_and_compose_impl();
    v19[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v12, v19, &type))
    {
      if (v19[0] == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = v19[0];
        if (os_log_type_enabled(v13, v19[0]))
        {
          *buf = 136446210;
          v22 = "nw_protocol_socket_set_no_wake_from_sleep";
          v15 = "%{public}s called with null handle";
LABEL_39:
          _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = v19[0];
        v17 = os_log_type_enabled(v13, v19[0]);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v22 = "nw_protocol_socket_set_no_wake_from_sleep";
            v23 = 2082;
            *v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_40;
        }

        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_protocol_socket_set_no_wake_from_sleep";
          v15 = "%{public}s called with null handle, no backtrace";
          goto LABEL_39;
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v14 = v19[0];
        if (os_log_type_enabled(v13, v19[0]))
        {
          *buf = 136446210;
          v22 = "nw_protocol_socket_set_no_wake_from_sleep";
          v15 = "%{public}s called with null handle, backtrace limit exceeded";
          goto LABEL_39;
        }
      }
    }

LABEL_40:
    if (v12)
    {
      free(v12);
    }

    return 22;
  }

  *v19 = a2;
  if (!setsockopt(a1[47], 0xFFFF, 0x10000, v19, 4u))
  {
    return 0;
  }

  v3 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v3 != 22)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v22 = "nw_protocol_socket_set_no_wake_from_sleep";
      v23 = 2082;
      *v24 = a1 + 81;
      *&v24[8] = 1024;
      *&v24[10] = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d", buf, 0x1Cu);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    v22 = "nw_protocol_socket_set_no_wake_from_sleep";
    v23 = 1024;
    *v24 = v3;
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v5, &type, &v18))
    {
      goto LABEL_23;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_23;
      }

      *buf = 136446466;
      v22 = "nw_protocol_socket_set_no_wake_from_sleep";
      v23 = 1024;
      *v24 = v3;
      v8 = "%{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d";
    }

    else if (v18 == 1)
    {
      v9 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      v10 = os_log_type_enabled(gLogObj, type);
      if (v9)
      {
        if (v10)
        {
          *buf = 136446722;
          v22 = "nw_protocol_socket_set_no_wake_from_sleep";
          v23 = 1024;
          *v24 = v3;
          *&v24[4] = 2082;
          *&v24[6] = v9;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v9);
        goto LABEL_23;
      }

      if (!v10)
      {
LABEL_23:
        if (v5)
        {
          free(v5);
        }

        return v3;
      }

      *buf = 136446466;
      v22 = "nw_protocol_socket_set_no_wake_from_sleep";
      v23 = 1024;
      *v24 = v3;
      v8 = "%{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d, no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_23;
      }

      *buf = 136446466;
      v22 = "nw_protocol_socket_set_no_wake_from_sleep";
      v23 = 1024;
      *v24 = v3;
      v8 = "%{public}s setsockopt SO_NOWAKEFROMSLEEP failed %{darwin.errno}d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0x12u);
    goto LABEL_23;
  }

  return v3;
}

void nw_protocol_instance_notify_connection_id_changed(void *a1, int a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  size = dispatch_data_get_size(v6);
  if (!size)
  {
    v24 = __nwlog_obj();
    os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    *applier = 136446210;
    *&applier[4] = "nw_protocol_instance_notify_connection_id_changed";
    v25 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v25))
    {
      goto LABEL_75;
    }

    free(v25);
  }

  v8 = malloc_type_calloc(1uLL, size, 0xE9FBCE6FuLL);
  if (v8)
  {
    goto LABEL_5;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  *applier = 136446722;
  *&applier[4] = "nw_protocol_instance_notify_connection_id_changed";
  *&applier[12] = 2048;
  *&applier[14] = 1;
  *&applier[22] = 2048;
  v55 = size;
  v10 = _os_log_send_and_compose_impl();

  if (__nwlog_should_abort(v10))
  {
LABEL_75:
    __break(1u);
    return;
  }

  free(v10);
LABEL_5:
  *type = 0;
  v51 = type;
  v52 = 0x2000000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v49 = v8;
  if (v6)
  {
    *applier = MEMORY[0x1E69E9820];
    *&applier[8] = 0x40000000;
    *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
    v55 = &unk_1E6A34348;
    v57 = &v46;
    v58 = size;
    v56 = type;
    dispatch_data_apply(v6, applier);
    v11 = *(v51 + 3);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(type, 8);
  if (v11 != size)
  {
    goto LABEL_33;
  }

  if (!v5)
  {
    v26 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "__nw_protocol_get_output_handler";
    v27 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v46) = 0;
    if (__nwlog_fault(v27, type, &v46))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type[0];
        if (os_log_type_enabled(v28, type[0]))
        {
          *applier = 136446210;
          *&applier[4] = "__nw_protocol_get_output_handler";
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null protocol", applier, 0xCu);
        }
      }

      else if (v46 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v35 = type[0];
        v36 = os_log_type_enabled(v28, type[0]);
        if (backtrace_string)
        {
          if (v36)
          {
            *applier = 136446466;
            *&applier[4] = "__nw_protocol_get_output_handler";
            *&applier[12] = 2082;
            *&applier[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v28, v35, "%{public}s called with null protocol, dumping backtrace:%{public}s", applier, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_68;
        }

        if (v36)
        {
          *applier = 136446210;
          *&applier[4] = "__nw_protocol_get_output_handler";
          _os_log_impl(&dword_181A37000, v28, v35, "%{public}s called with null protocol, no backtrace", applier, 0xCu);
        }
      }

      else
      {
        v28 = __nwlog_obj();
        v41 = type[0];
        if (os_log_type_enabled(v28, type[0]))
        {
          *applier = 136446210;
          *&applier[4] = "__nw_protocol_get_output_handler";
          _os_log_impl(&dword_181A37000, v28, v41, "%{public}s called with null protocol, backtrace limit exceeded", applier, 0xCu);
        }
      }
    }

LABEL_68:
    if (v27)
    {
      free(v27);
    }

    goto LABEL_33;
  }

  v12 = *(v5 - 8);
  if (v12)
  {
    v13 = v12[3];
    if (v13)
    {
      v14 = *(v13 + 160);
      if (v14)
      {
        v15 = v12[5];
        v16 = *(v5 - 8);
        if (v15 != &nw_protocol_ref_counted_handle)
        {
          if (v15 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v16) = 0;
            v17 = 1;
            goto LABEL_20;
          }

          v16 = v12[8];
          if (!v16)
          {
            v17 = 1;
            goto LABEL_20;
          }
        }

        v18 = *(v16 + 88);
        v17 = 0;
        if (v18)
        {
          *(v16 + 88) = v18 + 1;
        }

        LOBYTE(v16) = -1;
LABEL_20:
        *type = v12;
        LOBYTE(v51) = v16;
        v19 = *(v5 - 7);
        v20 = (v5 - 12);
        if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v20 = *(v5 - 4)) != 0)
        {
          v23 = *(v20 + 11);
          v22 = 0;
          if (v23)
          {
            *(v20 + 11) = v23 + 1;
          }

          v21 = -1;
        }

        else
        {
          v21 = 0;
          v22 = 1;
        }

        v46 = (v5 - 12);
        LOBYTE(v47) = v21;
        if (a2)
        {
          v14(v12, v5 - 12);
LABEL_29:
          if ((v22 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(&v46);
          }

          if ((v17 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(type);
          }

          goto LABEL_33;
        }

        v30 = __nwlog_obj();
        *applier = 136446210;
        *&applier[4] = "__nw_protocol_notify";
        v31 = _os_log_send_and_compose_impl();

        v45 = OS_LOG_TYPE_ERROR;
        v44 = 0;
        if (__nwlog_fault(v31, &v45, &v44))
        {
          if (v45 == OS_LOG_TYPE_FAULT)
          {
            v32 = __nwlog_obj();
            v33 = v45;
            if (os_log_type_enabled(v32, v45))
            {
              *applier = 136446210;
              *&applier[4] = "__nw_protocol_notify";
              _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null type", applier, 0xCu);
            }
          }

          else
          {
            if (v44 == 1)
            {
              v43 = v17;
              v37 = __nw_create_backtrace_string();
              v38 = __nwlog_obj();
              v39 = v45;
              v40 = os_log_type_enabled(v38, v45);
              if (v37)
              {
                if (v40)
                {
                  *applier = 136446466;
                  *&applier[4] = "__nw_protocol_notify";
                  *&applier[12] = 2082;
                  *&applier[14] = v37;
                  _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null type, dumping backtrace:%{public}s", applier, 0x16u);
                }

                v17 = v43;
                free(v37);
              }

              else
              {
                if (v40)
                {
                  *applier = 136446210;
                  *&applier[4] = "__nw_protocol_notify";
                  _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null type, no backtrace", applier, 0xCu);
                }

                v17 = v43;
              }

              goto LABEL_73;
            }

            v32 = __nwlog_obj();
            v42 = v45;
            if (os_log_type_enabled(v32, v45))
            {
              *applier = 136446210;
              *&applier[4] = "__nw_protocol_notify";
              _os_log_impl(&dword_181A37000, v32, v42, "%{public}s called with null type, backtrace limit exceeded", applier, 0xCu);
            }
          }
        }

LABEL_73:
        if (v31)
        {
          free(v31);
        }

        goto LABEL_29;
      }
    }
  }

LABEL_33:
  if (v8)
  {
    free(v8);
  }
}

void sub_181D52DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  if ((v10 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  if ((v9 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va1);
  }

  _Unwind_Resume(a1);
}

void nw_endpoint_add_edge(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_endpoint_add_edge";
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
        v23 = "nw_endpoint_add_edge";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null endpoint", buf, 0xCu);
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
          v23 = "nw_endpoint_add_edge";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
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
        v23 = "nw_endpoint_add_edge";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_endpoint_add_edge";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    _nw_endpoint_add_edge(v3);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_endpoint_add_edge";
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
      v23 = "nw_endpoint_add_edge";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null edge", buf, 0xCu);
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
      v23 = "nw_endpoint_add_edge";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null edge, backtrace limit exceeded", buf, 0xCu);
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
      v23 = "nw_endpoint_add_edge";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null edge, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_endpoint_add_edge";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null edge, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

uint64_t _nw_endpoint_add_edge(void *a1)
{
  v1 = a1;
  v2 = swift_unknownObjectRetain();
  sub_181D53390(v2);

  return swift_unknownObjectRelease();
}

BOOL __nw_dispatch_data_copyout_block_invoke(void *a1, int a2, int a3, void *__src, size_t a5)
{
  v5 = a1[6];
  v6 = *(*(a1[4] + 8) + 24);
  if (v5 - v6 >= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = v5 - v6;
  }

  if (v7)
  {
    memcpy((*(*(a1[5] + 8) + 24) + v6), __src, v7);
    *(*(a1[4] + 8) + 24) += v7;
    v6 = *(*(a1[4] + 8) + 24);
    v5 = a1[6];
  }

  return v6 < v5;
}

void sub_181D53390(void *a1)
{
  v3 = nw_endpoint_edge_get_endpoint(a1);
  if (!v3)
  {
LABEL_4:
    v4 = *&v1[OBJC_IVAR____TtC7Network8Endpoint_lock];
    os_unfair_lock_lock(v4 + 4);
    sub_181D551FC(v1, a1);

    os_unfair_lock_unlock(v4 + 4);
    return;
  }

  if (v3 != v1)
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  if (qword_1ED40FE10 != -1)
  {
    swift_once();
  }

  v5 = sub_182AD2698();
  __swift_project_value_buffer(v5, qword_1ED411BA0);
  oslog = sub_182AD2678();
  v6 = sub_182AD38C8();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_181A37000, oslog, v6, "endpoints cannot add edges to themselves", v7, 2u);
    MEMORY[0x1865DF520](v7, -1, -1);
  }

  swift_unknownObjectRelease();
}

void nw_protocol_implementation_notify(void *a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4, uint64_t a5)
{
  v163 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = a1[5];
    v11 = a1;
    if (v10 != &nw_protocol_ref_counted_handle)
    {
      if (v10 != &nw_protocol_ref_counted_additional_handle)
      {
        v12 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_notify";
        v13 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v152) = 0;
        if (__nwlog_fault(v13, type, &v152))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v14 = __nwlog_obj();
            v15 = type[0];
            if (os_log_type_enabled(v14, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_notify";
              _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v152 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v14 = __nwlog_obj();
            v20 = type[0];
            v21 = os_log_type_enabled(v14, type[0]);
            if (backtrace_string)
            {
              if (v21)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_implementation_notify";
                v157 = 2082;
                v158 = backtrace_string;
                _os_log_impl(&dword_181A37000, v14, v20, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v13)
              {
                goto LABEL_89;
              }

              goto LABEL_88;
            }

            if (v21)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_notify";
              _os_log_impl(&dword_181A37000, v14, v20, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v14 = __nwlog_obj();
            v42 = type[0];
            if (os_log_type_enabled(v14, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_notify";
              _os_log_impl(&dword_181A37000, v14, v42, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v13)
        {
LABEL_89:
          v23 = 0;
          goto LABEL_90;
        }

LABEL_88:
        free(v13);
        goto LABEL_89;
      }

      v11 = a1[8];
    }

    v147 = v11 + 12;
    v16 = v11[13];
    if (v16)
    {
      if (*(v16 + 80))
      {
        if (a2)
        {
          if ((*(v11 + 509) & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v17 = gLogObj;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              if (a3 > 0x1E)
              {
                v18 = "unknown";
              }

              else
              {
                v18 = off_1E6A33500[a3];
              }

              *buf = 136446978;
              *&buf[4] = "nw_protocol_implementation_notify";
              v157 = 2082;
              v158 = v11 + 511;
              v159 = 2080;
              v160 = " ";
              v161 = 2082;
              v162 = v18;
              _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sreceived notification %{public}s", buf, 0x2Au);
            }
          }

          switch(a3)
          {
            case 0x15u:
              if (!a4 || a5 != 1)
              {
                goto LABEL_62;
              }

              v31 = *a4;
              if ((v31 & 1) != 0 || (v11[61] + 1) < 2)
              {
                v32 = v11[13];
                v33 = *(v32 + 80);
                if (v33 && *(v33 + 112))
                {
                  if ((*(v11 + 509) & 0x80000000) == 0)
                  {
                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v34 = gLogObj;
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                    {
                      v35 = " not";
                      *buf = 136446978;
                      *&buf[4] = "nw_protocol_implementation_notify";
                      v158 = v11 + 511;
                      v159 = 2080;
                      v160 = " ";
                      v157 = 2082;
                      if (v31)
                      {
                        v35 = "";
                      }

                      v161 = 2082;
                      v162 = v35;
                      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sOutbound data is%{public}s pending", buf, 0x2Au);
                    }

                    v32 = v11[13];
                  }

                  *(v11 + 507) &= ~0x80u;
                  v23 = v147;
                  (*(*(v32 + 80) + 112))(v147, v31);
                  goto LABEL_90;
                }

                goto LABEL_62;
              }

              if ((*(v11 + 509) & 0x80000000) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v66 = gLogObj;
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446722;
                  *&buf[4] = "nw_protocol_implementation_notify";
                  v157 = 2082;
                  v158 = v11 + 511;
                  v159 = 2080;
                  v160 = " ";
                  _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sOutbound data is not pending, deferring until current flow is done with connected", buf, 0x20u);
                }
              }

              v67 = *(v11 + 507) | 0x80;
              break;
            case 7u:
              if (*(v11[13] + 64) == 3)
              {
                node = nw_hash_table_get_node(v11[41], a2, 8);
                if (node)
                {
                  v25 = *(a2 + 24);
                  v23 = v147;
                  if (v25)
                  {
                    v26 = *(v25 + 176);
                    if (v26)
                    {
                      v27 = node;
                      v28 = *(a2 + 40);
                      v29 = a2;
                      if (v28 == &nw_protocol_ref_counted_handle || v28 == &nw_protocol_ref_counted_additional_handle && (v29 = *(a2 + 64)) != 0)
                      {
                        v74 = *(v29 + 88);
                        if (v74)
                        {
                          *(v29 + 88) = v74 + 1;
                        }

                        v30 = 0;
                        *buf = a2;
                        buf[8] |= 1u;
                      }

                      else
                      {
                        *buf = a2;
                        buf[8] &= ~1u;
                        v30 = 1;
                      }

                      v75 = v26(a2);
                      if ((v30 & 1) == 0)
                      {
                        nw::release_if_needed<nw_protocol *>(buf);
                      }

                      if (v75)
                      {
                        v76 = 1024;
                      }

                      else
                      {
                        v76 = 0;
                      }

                      *(v27 + 84) = *(v27 + 84) & 0xFBFF | v76;
                    }
                  }

                  goto LABEL_90;
                }

                goto LABEL_62;
              }

              if (v11[6] != a2 || (v56 = *(a2 + 24)) == 0 || (v57 = *(v56 + 176)) == 0)
              {
LABEL_62:
                v23 = v147;
                goto LABEL_90;
              }

              v58 = *(a2 + 40);
              v59 = a2;
              if (v58 == &nw_protocol_ref_counted_handle || v58 == &nw_protocol_ref_counted_additional_handle && (v59 = *(a2 + 64)) != 0)
              {
                v78 = *(v59 + 88);
                if (v78)
                {
                  *(v59 + 88) = v78 + 1;
                }

                v60 = 0;
                *buf = a2;
                buf[8] |= 1u;
              }

              else
              {
                *buf = a2;
                buf[8] &= ~1u;
                v60 = 1;
              }

              v79 = v57(a2);
              if ((v60 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(buf);
              }

              if (v79)
              {
                v80 = 2;
              }

              else
              {
                v80 = 0;
              }

              v67 = *(v11 + 507) & 0xFD | v80;
              break;
            case 6u:
              v22 = *(*(v11[13] + 80) + 160);
              if (v22)
              {
                v23 = v147;
                v22(v147);
LABEL_90:

                return;
              }

LABEL_177:
              if (*(v11[13] + 64) == 3)
              {
                v86 = v11[41];
                v148[0] = MEMORY[0x1E69E9820];
                v148[1] = 3221225472;
                v148[2] = ___ZL33nw_protocol_implementation_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke;
                v148[3] = &__block_descriptor_60_e23_B16__0__nw_hash_node__8l;
                v149 = a3;
                v148[4] = a2;
                v148[5] = a4;
                v148[6] = a5;
                nw_hash_table_apply(v86, v148);
                v23 = v147;
                goto LABEL_90;
              }

              v87 = a1[6];
              if (v87)
              {
                v88 = v87[3];
                v23 = v147;
                if (!v88)
                {
                  goto LABEL_90;
                }

                v89 = *(v88 + 160);
                if (!v89)
                {
                  goto LABEL_90;
                }

                v90 = v87[5];
                v91 = a1[6];
                if (v90 == &nw_protocol_ref_counted_handle || v90 == &nw_protocol_ref_counted_additional_handle && (v91 = v87[8]) != 0)
                {
                  v93 = *(v91 + 88);
                  if (v93)
                  {
                    *(v91 + 88) = v93 + 1;
                  }

                  v92 = 0;
                  *type = v87;
                  v155 |= 1u;
                }

                else
                {
                  *type = a1[6];
                  v155 &= ~1u;
                  v92 = 1;
                }

                v94 = *(a2 + 40);
                v95 = a2;
                if (v94 == &nw_protocol_ref_counted_handle || v94 == &nw_protocol_ref_counted_additional_handle && (v95 = *(a2 + 64)) != 0)
                {
                  v97 = *(v95 + 88);
                  if (v97)
                  {
                    *(v95 + 88) = v97 + 1;
                  }

                  v96 = 0;
                  v152 = a2;
                  v153 |= 1u;
                }

                else
                {
                  v152 = a2;
                  v153 &= ~1u;
                  v96 = 1;
                }

                if (a3)
                {
                  v89(v87, a2);
                  if (v96)
                  {
                    goto LABEL_199;
                  }

                  goto LABEL_198;
                }

                v124 = __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "__nw_protocol_notify";
                v125 = _os_log_send_and_compose_impl();

                v151 = OS_LOG_TYPE_ERROR;
                v150 = 0;
                if (__nwlog_fault(v125, &v151, &v150))
                {
                  if (v151 == OS_LOG_TYPE_FAULT)
                  {
                    v126 = __nwlog_obj();
                    v127 = v151;
                    if (os_log_type_enabled(v126, v151))
                    {
                      *buf = 136446210;
                      *&buf[4] = "__nw_protocol_notify";
                      _os_log_impl(&dword_181A37000, v126, v127, "%{public}s called with null type", buf, 0xCu);
                    }

LABEL_310:

                    goto LABEL_311;
                  }

                  if (v150 != 1)
                  {
                    v126 = __nwlog_obj();
                    v140 = v151;
                    if (os_log_type_enabled(v126, v151))
                    {
                      *buf = 136446210;
                      *&buf[4] = "__nw_protocol_notify";
                      _os_log_impl(&dword_181A37000, v126, v140, "%{public}s called with null type, backtrace limit exceeded", buf, 0xCu);
                    }

                    goto LABEL_310;
                  }

                  v133 = __nw_create_backtrace_string();
                  v126 = __nwlog_obj();
                  v134 = v151;
                  v135 = os_log_type_enabled(v126, v151);
                  if (!v133)
                  {
                    if (v135)
                    {
                      *buf = 136446210;
                      *&buf[4] = "__nw_protocol_notify";
                      _os_log_impl(&dword_181A37000, v126, v134, "%{public}s called with null type, no backtrace", buf, 0xCu);
                    }

                    goto LABEL_310;
                  }

                  if (v135)
                  {
                    *buf = 136446466;
                    *&buf[4] = "__nw_protocol_notify";
                    v157 = 2082;
                    v158 = v133;
                    _os_log_impl(&dword_181A37000, v126, v134, "%{public}s called with null type, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v133);
                }

LABEL_311:
                if (v125)
                {
                  free(v125);
                }

                v23 = v147;
                if (v96)
                {
                  goto LABEL_199;
                }

LABEL_198:
                nw::release_if_needed<nw_protocol *>(&v152);
LABEL_199:
                if ((v92 & 1) == 0)
                {
                  nw::release_if_needed<nw_protocol *>(type);
                }

                goto LABEL_90;
              }

              goto LABEL_62;
            default:
              if ((a3 & 0xFFFFFFFD) == 0xD)
              {
                v36 = a1[4];
                if (!v36)
                {
                  goto LABEL_62;
                }

                v37 = v36[3];
                v23 = v147;
                if (!v37)
                {
                  goto LABEL_90;
                }

                v38 = *(v37 + 160);
                if (!v38)
                {
                  goto LABEL_90;
                }

                v39 = v36[5];
                v40 = a1[4];
                if (v39 != &nw_protocol_ref_counted_handle)
                {
                  if (v39 != &nw_protocol_ref_counted_additional_handle)
                  {
                    LOBYTE(v40) = 0;
                    v41 = 1;
LABEL_101:
                    *buf = v36;
                    buf[8] = v40;
                    v62 = *(a2 + 40);
                    v63 = a2;
                    if (v62 == &nw_protocol_ref_counted_handle)
                    {
                      goto LABEL_105;
                    }

                    if (v62 != &nw_protocol_ref_counted_additional_handle)
                    {
                      LOBYTE(v63) = 0;
                      v64 = 1;
                      goto LABEL_108;
                    }

                    v63 = *(a2 + 64);
                    if (v63)
                    {
LABEL_105:
                      v65 = *(v63 + 88);
                      v64 = 0;
                      if (v65)
                      {
                        *(v63 + 88) = v65 + 1;
                      }

                      LOBYTE(v63) = -1;
                    }

                    else
                    {
                      v64 = 1;
                    }

LABEL_108:
                    *type = a2;
                    v155 = v63;
                    v38();
                    if ((v64 & 1) == 0)
                    {
                      nw::release_if_needed<nw_protocol *>(type);
                    }

                    if (v41)
                    {
                      goto LABEL_90;
                    }

                    goto LABEL_111;
                  }

                  v40 = v36[8];
                  if (!v40)
                  {
                    v41 = 1;
                    goto LABEL_101;
                  }
                }

                v61 = *(v40 + 88);
                v41 = 0;
                if (v61)
                {
                  *(v40 + 88) = v61 + 1;
                }

                LOBYTE(v40) = -1;
                goto LABEL_101;
              }

              if (a4 && a3 == 20 && a5 == 12)
              {
                v43 = a1[5];
                v44 = a1;
                if (v43 != &nw_protocol_ref_counted_handle)
                {
                  if (v43 != &nw_protocol_ref_counted_additional_handle)
                  {
                    v45 = __nwlog_obj();
                    *buf = 136446210;
                    *&buf[4] = "nw_protocol_implementation_link_congestion_info";
                    v46 = _os_log_send_and_compose_impl();

                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v152) = 0;
                    if (__nwlog_fault(v46, type, &v152))
                    {
                      if (type[0] == OS_LOG_TYPE_FAULT)
                      {
                        v47 = __nwlog_obj();
                        v48 = type[0];
                        if (os_log_type_enabled(v47, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_protocol_implementation_link_congestion_info";
                          _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null instance", buf, 0xCu);
                        }
                      }

                      else if (v152 == 1)
                      {
                        v72 = __nw_create_backtrace_string();
                        v47 = __nwlog_obj();
                        v145 = type[0];
                        v73 = os_log_type_enabled(v47, type[0]);
                        if (v72)
                        {
                          if (v73)
                          {
                            *buf = 136446466;
                            *&buf[4] = "nw_protocol_implementation_link_congestion_info";
                            v157 = 2082;
                            v158 = v72;
                            _os_log_impl(&dword_181A37000, v47, v145, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
                          }

                          free(v72);
                          goto LABEL_173;
                        }

                        if (v73)
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_protocol_implementation_link_congestion_info";
                          _os_log_impl(&dword_181A37000, v47, v145, "%{public}s called with null instance, no backtrace", buf, 0xCu);
                        }
                      }

                      else
                      {
                        v47 = __nwlog_obj();
                        v85 = type[0];
                        if (os_log_type_enabled(v47, type[0]))
                        {
                          *buf = 136446210;
                          *&buf[4] = "nw_protocol_implementation_link_congestion_info";
                          _os_log_impl(&dword_181A37000, v47, v85, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
                        }
                      }
                    }

LABEL_173:
                    if (v46)
                    {
                      free(v46);
                    }

                    v69 = 0;
LABEL_176:

                    goto LABEL_177;
                  }

                  v44 = a1[8];
                }

                v68 = v44 + 12;
                v69 = v68;
                v70 = v44[13];
                if (v70)
                {
                  if (*(v70 + 80))
                  {
                    *buf = 0;
                    nw_protocol_implementation_lookup_path_by_protocol(v68, a2, buf);
                    v71 = *(*(v44[13] + 80) + 144);
                    if (v71)
                    {
                      v71(v69, *buf, a4);
                    }

                    goto LABEL_176;
                  }

                  v131 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_implementation_link_congestion_info";
                  v146 = _os_log_send_and_compose_impl();

                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v152) = 0;
                  if (!__nwlog_fault(v146, type, &v152))
                  {
LABEL_321:
                    if (v146)
                    {
                      free(v146);
                    }

                    goto LABEL_176;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v129 = __nwlog_obj();
                    v132 = type[0];
                    if (os_log_type_enabled(v129, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_protocol_implementation_link_congestion_info";
                      _os_log_impl(&dword_181A37000, v129, v132, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
                    }

LABEL_307:

                    goto LABEL_321;
                  }

                  if (v152 != 1)
                  {
                    v129 = __nwlog_obj();
                    v142 = type[0];
                    if (os_log_type_enabled(v129, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_protocol_implementation_link_congestion_info";
                      _os_log_impl(&dword_181A37000, v129, v142, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
                    }

                    goto LABEL_307;
                  }

                  v136 = __nw_create_backtrace_string();
                  v137 = __nwlog_obj();
                  v144 = type[0];
                  v139 = os_log_type_enabled(v137, type[0]);
                  if (v136)
                  {
                    if (v139)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_protocol_implementation_link_congestion_info";
                      v157 = 2082;
                      v158 = v136;
                      _os_log_impl(&dword_181A37000, v137, v144, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
                    }

LABEL_298:

                    free(v136);
                    goto LABEL_321;
                  }

                  if (v139)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_protocol_implementation_link_congestion_info";
                    _os_log_impl(&dword_181A37000, v137, v144, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
                  }
                }

                else
                {
                  v128 = __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "nw_protocol_implementation_link_congestion_info";
                  v146 = _os_log_send_and_compose_impl();

                  type[0] = OS_LOG_TYPE_ERROR;
                  LOBYTE(v152) = 0;
                  if (!__nwlog_fault(v146, type, &v152))
                  {
                    goto LABEL_321;
                  }

                  if (type[0] == OS_LOG_TYPE_FAULT)
                  {
                    v129 = __nwlog_obj();
                    v130 = type[0];
                    if (os_log_type_enabled(v129, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_protocol_implementation_link_congestion_info";
                      _os_log_impl(&dword_181A37000, v129, v130, "%{public}s called with null instance->parent_definition", buf, 0xCu);
                    }

                    goto LABEL_307;
                  }

                  if (v152 != 1)
                  {
                    v129 = __nwlog_obj();
                    v141 = type[0];
                    if (os_log_type_enabled(v129, type[0]))
                    {
                      *buf = 136446210;
                      *&buf[4] = "nw_protocol_implementation_link_congestion_info";
                      _os_log_impl(&dword_181A37000, v129, v141, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
                    }

                    goto LABEL_307;
                  }

                  v136 = __nw_create_backtrace_string();
                  v137 = __nwlog_obj();
                  v143 = type[0];
                  v138 = os_log_type_enabled(v137, type[0]);
                  if (v136)
                  {
                    if (v138)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_protocol_implementation_link_congestion_info";
                      v157 = 2082;
                      v158 = v136;
                      _os_log_impl(&dword_181A37000, v137, v143, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    goto LABEL_298;
                  }

                  if (v138)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_protocol_implementation_link_congestion_info";
                    _os_log_impl(&dword_181A37000, v137, v143, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
                  }
                }

                goto LABEL_321;
              }

              if (a3 != 16)
              {
                goto LABEL_177;
              }

              if (a4)
              {
                if (a5 == 1)
                {
                  v49 = *(*(v11[13] + 80) + 176);
                  if (v49)
                  {
                    v49(v147, *a4);
                  }
                }
              }

              v50 = a1[4];
              if (!v50)
              {
                goto LABEL_62;
              }

              v51 = v50[3];
              if (!v51)
              {
                goto LABEL_62;
              }

              v52 = *(v51 + 160);
              if (!v52)
              {
                goto LABEL_62;
              }

              v53 = v50[5];
              v54 = a1[4];
              v23 = v147;
              if (v53 != &nw_protocol_ref_counted_handle)
              {
                if (v53 != &nw_protocol_ref_counted_additional_handle)
                {
                  LOBYTE(v54) = 0;
                  v55 = 1;
LABEL_154:
                  *buf = v50;
                  buf[8] = v54;
                  v81 = *(a2 + 40);
                  v82 = a2;
                  if (v81 == &nw_protocol_ref_counted_handle)
                  {
                    goto LABEL_158;
                  }

                  if (v81 != &nw_protocol_ref_counted_additional_handle)
                  {
                    LOBYTE(v82) = 0;
                    v83 = 1;
                    goto LABEL_161;
                  }

                  v82 = *(a2 + 64);
                  if (v82)
                  {
LABEL_158:
                    v84 = *(v82 + 88);
                    v83 = 0;
                    if (v84)
                    {
                      *(v82 + 88) = v84 + 1;
                    }

                    LOBYTE(v82) = -1;
                  }

                  else
                  {
                    v83 = 1;
                  }

LABEL_161:
                  *type = a2;
                  v155 = v82;
                  v52();
                  if ((v83 & 1) == 0)
                  {
                    nw::release_if_needed<nw_protocol *>(type);
                  }

                  if (v55)
                  {
                    goto LABEL_90;
                  }

LABEL_111:
                  nw::release_if_needed<nw_protocol *>(buf);
                  goto LABEL_90;
                }

                v54 = v50[8];
                if (!v54)
                {
                  v55 = 1;
                  goto LABEL_154;
                }
              }

              v77 = *(v54 + 88);
              v55 = 0;
              if (v77)
              {
                *(v54 + 88) = v77 + 1;
              }

              LOBYTE(v54) = -1;
              goto LABEL_154;
          }

          *(v11 + 507) = v67;
          v23 = v147;
          goto LABEL_90;
        }

        v108 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_notify";
        v103 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v152) = 0;
        if (!__nwlog_fault(v103, type, &v152))
        {
LABEL_267:
          v23 = v147;
          if (v103)
          {
            free(v103);
          }

          goto LABEL_90;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v104 = __nwlog_obj();
          v109 = type[0];
          if (os_log_type_enabled(v104, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_notify";
            _os_log_impl(&dword_181A37000, v104, v109, "%{public}s called with null other_protocol", buf, 0xCu);
          }

LABEL_266:

          goto LABEL_267;
        }

        if (v152 != 1)
        {
          v104 = __nwlog_obj();
          v123 = type[0];
          if (os_log_type_enabled(v104, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_notify";
            _os_log_impl(&dword_181A37000, v104, v123, "%{public}s called with null other_protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_266;
        }

        v113 = __nw_create_backtrace_string();
        v104 = __nwlog_obj();
        v118 = type[0];
        v119 = os_log_type_enabled(v104, type[0]);
        if (!v113)
        {
          if (v119)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_notify";
            _os_log_impl(&dword_181A37000, v104, v118, "%{public}s called with null other_protocol, no backtrace", buf, 0xCu);
          }

          goto LABEL_266;
        }

        if (v119)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_notify";
          v157 = 2082;
          v158 = v113;
          _os_log_impl(&dword_181A37000, v104, v118, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        v106 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_notify";
        v103 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v152) = 0;
        if (!__nwlog_fault(v103, type, &v152))
        {
          goto LABEL_267;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v104 = __nwlog_obj();
          v107 = type[0];
          if (os_log_type_enabled(v104, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_notify";
            _os_log_impl(&dword_181A37000, v104, v107, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }

          goto LABEL_266;
        }

        if (v152 != 1)
        {
          v104 = __nwlog_obj();
          v122 = type[0];
          if (os_log_type_enabled(v104, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_notify";
            _os_log_impl(&dword_181A37000, v104, v122, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_266;
        }

        v113 = __nw_create_backtrace_string();
        v104 = __nwlog_obj();
        v116 = type[0];
        v117 = os_log_type_enabled(v104, type[0]);
        if (!v113)
        {
          if (v117)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_notify";
            _os_log_impl(&dword_181A37000, v104, v116, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }

          goto LABEL_266;
        }

        if (v117)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_notify";
          v157 = 2082;
          v158 = v113;
          _os_log_impl(&dword_181A37000, v104, v116, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }
    }

    else
    {
      v102 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_notify";
      v103 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v152) = 0;
      if (!__nwlog_fault(v103, type, &v152))
      {
        goto LABEL_267;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v104 = __nwlog_obj();
        v105 = type[0];
        if (os_log_type_enabled(v104, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_notify";
          _os_log_impl(&dword_181A37000, v104, v105, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }

        goto LABEL_266;
      }

      if (v152 != 1)
      {
        v104 = __nwlog_obj();
        v121 = type[0];
        if (os_log_type_enabled(v104, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_notify";
          _os_log_impl(&dword_181A37000, v104, v121, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_266;
      }

      v113 = __nw_create_backtrace_string();
      v104 = __nwlog_obj();
      v114 = type[0];
      v115 = os_log_type_enabled(v104, type[0]);
      if (!v113)
      {
        if (v115)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_notify";
          _os_log_impl(&dword_181A37000, v104, v114, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_266;
      }

      if (v115)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_implementation_notify";
        v157 = 2082;
        v158 = v113;
        _os_log_impl(&dword_181A37000, v104, v114, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(v113);
    goto LABEL_267;
  }

  v98 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_notify";
  v99 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v152) = 0;
  if (__nwlog_fault(v99, type, &v152))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v100 = __nwlog_obj();
      v101 = type[0];
      if (os_log_type_enabled(v100, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_notify";
        _os_log_impl(&dword_181A37000, v100, v101, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v152 == 1)
    {
      v110 = __nw_create_backtrace_string();
      v100 = __nwlog_obj();
      v111 = type[0];
      v112 = os_log_type_enabled(v100, type[0]);
      if (v110)
      {
        if (v112)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_notify";
          v157 = 2082;
          v158 = v110;
          _os_log_impl(&dword_181A37000, v100, v111, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v110);
        goto LABEL_256;
      }

      if (v112)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_notify";
        _os_log_impl(&dword_181A37000, v100, v111, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v100 = __nwlog_obj();
      v120 = type[0];
      if (os_log_type_enabled(v100, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_notify";
        _os_log_impl(&dword_181A37000, v100, v120, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_256:
  if (v99)
  {
    free(v99);
  }
}

void sub_181D551FC(void *a1, void *a2)
{
  if (sub_181D554C0(a2))
  {
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1ED411BA0);
    swift_unknownObjectRetain();
    v5 = a1;
    oslog = sub_182AD2678();
    v6 = sub_182AD38A8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21[0] = v8;
      *v7 = 136315394;
      sensitive_redacted = nw_context_get_sensitive_redacted(*&v5[OBJC_IVAR____TtC7Network8Endpoint_context]);
      if ((*&v5[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (sensitive_redacted & 1) == 0)
      {
        v10 = Endpoint.description.getter();
      }

      else
      {
        v10 = sub_181B52D70();
      }

      v14 = sub_181C64FFC(v10, v11, v21);

      *(v7 + 4) = v14;
      *(v7 + 12) = 2080;
      v15 = [a2 description];
      v16 = sub_182AD2F88();
      v18 = v17;

      v19 = sub_181C64FFC(v16, v18, v21);

      *(v7 + 14) = v19;
      _os_log_impl(&dword_181A37000, oslog, v6, "endpoint %s not adding already present edge %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v8, -1, -1);
      MEMORY[0x1865DF520](v7, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v12 = OBJC_IVAR____TtC7Network8Endpoint_edges;
    swift_beginAccess();
    v13 = swift_unknownObjectRetain();
    MEMORY[0x1865D9F10](v13);
    if (*((*(a1 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
    swift_endAccess();
  }
}

BOOL sub_181D554C0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7Network8Endpoint_edges;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5 >> 62)
  {
LABEL_29:
    v6 = sub_182AD3EB8();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  do
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1865DA790](v7, v5);
      if (__OFADD__(v8, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_29;
      }

      v9 = *(v5 + 8 * v7 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v8, 1))
      {
        goto LABEL_12;
      }
    }

    is_equal = nw_endpoint_edge_is_equal(v9, a1);
    swift_unknownObjectRelease();
    v7 = v8 + 1;
  }

  while (!is_equal);

  if (qword_1ED40FE10 != -1)
  {
    swift_once();
  }

  v11 = sub_182AD2698();
  __swift_project_value_buffer(v11, qword_1ED411BA0);
  v12 = v2;
  swift_unknownObjectRetain();
  v13 = sub_182AD2678();
  v14 = sub_182AD38A8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v13, v14))
  {
    v36 = v14;
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v15 = 136315906;
    sensitive_redacted = nw_context_get_sensitive_redacted(*&v12[OBJC_IVAR____TtC7Network8Endpoint_context]);
    if ((*&v12[OBJC_IVAR____TtC7Network8Endpoint_flags] & 0x80) != 0 || (sensitive_redacted & 1) == 0)
    {
      v17 = Endpoint.description.getter();
    }

    else
    {
      v17 = sub_181B52D70();
    }

    v19 = sub_181C64FFC(v17, v18, &v37);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = *&v2[v4];

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A98);
    v22 = MEMORY[0x1865D9F40](v20, v21);
    v24 = v23;

    v25 = sub_181C64FFC(v22, v24, &v37);

    *(v15 + 14) = v25;
    *(v15 + 22) = 2080;
    if (v6 == v8)
    {
      v26 = 0xD000000000000015;
    }

    else
    {
      v26 = 0x2079646165726C61;
    }

    if (v6 == v8)
    {
      v27 = 0x8000000182BD5380;
    }

    else
    {
      v27 = 0xEB00000000736168;
    }

    v28 = sub_181C64FFC(v26, v27, &v37);

    *(v15 + 24) = v28;
    *(v15 + 32) = 2080;
    v29 = [a1 description];
    v30 = sub_182AD2F88();
    v32 = v31;

    v33 = sub_181C64FFC(v30, v32, &v37);

    *(v15 + 34) = v33;
    _os_log_impl(&dword_181A37000, v13, v36, "endpoint %s edges %s %s edge %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v35, -1, -1);
    MEMORY[0x1865DF520](v15, -1, -1);
  }

  return v6 != v8;
}

uint64_t ___ZL33nw_protocol_implementation_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  extra = nw_hash_node_get_extra(a2);
  if (extra)
  {
    v6 = (*(extra + 52) & 2) == 0;
    if (!object)
    {
      return 1;
    }
  }

  else
  {
    v6 = 1;
    if (!object)
    {
      return 1;
    }
  }

  v7 = object[3];
  if (v7)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v7 + 160);
      if (v9)
      {
        v10 = *(a1 + 56);
        if (v10 != 19 || v6)
        {
          v11 = object[5];
          v12 = object;
          if (v11 != &nw_protocol_ref_counted_handle)
          {
            if (v11 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v12) = 0;
              v13 = 1;
              goto LABEL_16;
            }

            v12 = object[8];
            if (!v12)
            {
              v13 = 1;
              goto LABEL_16;
            }
          }

          v14 = v12[11];
          v13 = 0;
          if (v14)
          {
            v12[11] = v14 + 1;
          }

          LOBYTE(v12) = -1;
LABEL_16:
          v35 = object;
          v36 = v12;
          v15 = *(v8 + 40);
          v16 = v8;
          if (v15 == &nw_protocol_ref_counted_handle || v15 == &nw_protocol_ref_counted_additional_handle && (v16 = *(v8 + 64)) != 0)
          {
            v19 = *(v16 + 88);
            v18 = 0;
            if (v19)
            {
              *(v16 + 88) = v19 + 1;
            }

            v17 = -1;
          }

          else
          {
            v17 = 0;
            v18 = 1;
          }

          v33 = v8;
          v34 = v17;
          if (v10)
          {
            v9(object);
LABEL_25:
            if ((v18 & 1) == 0)
            {
              nw::release_if_needed<nw_protocol *>(&v33);
            }

            if ((v13 & 1) == 0)
            {
              nw::release_if_needed<nw_protocol *>(&v35);
            }

            return 1;
          }

          v21 = __nwlog_obj();
          *buf = 136446210;
          v38 = "__nw_protocol_notify";
          v22 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v31 = 0;
          if (__nwlog_fault(v22, &type, &v31))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v23 = __nwlog_obj();
              v24 = type;
              if (os_log_type_enabled(v23, type))
              {
                *buf = 136446210;
                v38 = "__nw_protocol_notify";
                _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null type", buf, 0xCu);
              }
            }

            else
            {
              v30 = v13;
              if (v31 == 1)
              {
                backtrace_string = __nw_create_backtrace_string();
                v26 = __nwlog_obj();
                v27 = type;
                v28 = os_log_type_enabled(v26, type);
                if (backtrace_string)
                {
                  if (v28)
                  {
                    *buf = 136446466;
                    v38 = "__nw_protocol_notify";
                    v39 = 2082;
                    v40 = backtrace_string;
                    _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null type, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  v13 = v30;
                  free(backtrace_string);
                  goto LABEL_47;
                }

                if (v28)
                {
                  *buf = 136446210;
                  v38 = "__nw_protocol_notify";
                  _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null type, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v26 = __nwlog_obj();
                v29 = type;
                if (os_log_type_enabled(v26, type))
                {
                  *buf = 136446210;
                  v38 = "__nw_protocol_notify";
                  _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null type, backtrace limit exceeded", buf, 0xCu);
                }
              }

              v13 = v30;
            }
          }

LABEL_47:
          if (v22)
          {
            free(v22);
          }

          goto LABEL_25;
        }
      }
    }
  }

  return 1;
}

void sub_181D55C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((v18 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a15);
  }

  if (v17)
  {
    _Unwind_Resume(exception_object);
  }

  nw::release_if_needed<nw_protocol *>(&a17);
  _Unwind_Resume(exception_object);
}

uint64_t nw_endpoint_edge_is_equal(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && v4)
  {
    if (v3[1] != v4[1] || v3[2] != v4[2] || v3[3] != v4[3] || v3[4] != v4[4] || v3[5] != v4[5])
    {
      v9 = 0;
      goto LABEL_21;
    }

    v12 = v4;
    WeakRetained = objc_loadWeakRetained(v3 + 6);
    v14 = v12;
    v15 = objc_loadWeakRetained(v12 + 6);

    if (WeakRetained != v15)
    {
      v9 = 0;
      v4 = v14;
      goto LABEL_21;
    }

    v4 = v14;
    v10 = ((*(v14 + 64) ^ *(v3 + 64)) & 1) == 0;
  }

  else
  {
    v10 = v3 == v4;
  }

  v9 = v10;
LABEL_21:

  return v9;
}

void nw_flow_notify(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4, uint64_t a5)
{
  v490 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 40);
  v11 = *(v10 + 160);
  if (v11)
  {
    v456 = v11;
    v12 = v11;
    mode = v12->mode;

    if (mode != 2)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v457 = v26;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (mode > 5)
        {
          v27 = "unknown-mode";
        }

        else
        {
          v27 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v473 = "nw_flow_notify";
        v474 = 2082;
        v475 = v27;
        v476 = 2082;
        v477 = "flow";
        _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }

      goto LABEL_64;
    }

    v457 = nw_endpoint_handler_copy_flow(v12);
    v14 = v12;
    state = v14->state;

    if (state == 5)
    {
      v16 = v14;
      v17 = *(v16 + 284);

      if ((v17 & 0x40) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v18 = gconnectionLogObj;
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_63;
        }

        v454 = v12;
        v19 = v16;

        v20 = v19;
        v21 = *(v16 + 284);

        if (v21)
        {
          v22 = "dry-run ";
        }

        else
        {
          v22 = "";
        }

        v23 = nw_endpoint_handler_copy_endpoint(v20);
        v24 = v23;
        if (v23)
        {
          logging_description = _nw_endpoint_get_logging_description(v23);
        }

        else
        {
          logging_description = "<NULL>";
        }

        v39 = v20;
        v40 = v39;
        v41 = v14->state;
        if (v41 > 5)
        {
          v42 = "unknown-state";
        }

        else
        {
          v42 = off_1E6A31048[v41];
        }

        v43 = v19 + 184;

        v44 = v40;
        v45 = v44;
        v46 = v454->mode;
        if (v46 > 2)
        {
          switch(v46)
          {
            case 3:
              v47 = "proxy";
              goto LABEL_59;
            case 4:
              v47 = "fallback";
              goto LABEL_59;
            case 5:
              v47 = "transform";
              goto LABEL_59;
          }
        }

        else
        {
          switch(v46)
          {
            case 0:
              v47 = "path";
              goto LABEL_59;
            case 1:
              v47 = "resolver";
              goto LABEL_59;
            case 2:
              v47 = nw_endpoint_flow_mode_string(v44[33]);
LABEL_59:

              v56 = v45;
              os_unfair_lock_lock(v56 + 28);
              v57 = v56[8];
              os_unfair_lock_unlock(v56 + 28);

              v58 = v57;
              v59 = v58;
              if (a3 > 0x1E)
              {
                v60 = "unknown";
              }

              else
              {
                v60 = off_1E6A33500[a3];
              }

              *buf = 136448002;
              v473 = "nw_flow_notify";
              v474 = 2082;
              v475 = v43;
              v476 = 2082;
              v477 = v22;
              v478 = 2082;
              v479 = logging_description;
              v480 = 2082;
              v481 = v42;
              v482 = 2082;
              v483 = v47;
              v484 = 2114;
              v485 = v58;
              v486 = 2082;
              v487 = v60;
              _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] ignoring notification %{public}s after cancellation", buf, 0x52u);

LABEL_63:
              goto LABEL_64;
          }
        }

        v47 = "unknown-mode";
        goto LABEL_59;
      }

LABEL_64:

      v11 = v456;
      goto LABEL_65;
    }

    if (a3 == 20)
    {
      goto LABEL_64;
    }

    v455 = v12;
    v28 = v14;
    v29 = *(v28 + 284);

    v453 = v28;
    if ((v29 & 0x20) != 0)
    {
      if (nw_endpoint_handler_get_logging_disabled(v28))
      {
        goto LABEL_76;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v32 = gconnectionLogObj;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v453);
        v441 = nw_endpoint_handler_dry_run_string(v453);
        logb = nw_endpoint_handler_copy_endpoint(v453);
        v439 = nw_endpoint_get_logging_description(logb);
        v437 = nw_endpoint_handler_state_string(v453);
        v408 = nw_endpoint_handler_mode_string(v453);
        v409 = nw_endpoint_handler_copy_current_path(v453);
        v410 = v409;
        if (a3 > 0x1E)
        {
          v411 = "unknown";
        }

        else
        {
          v411 = off_1E6A33500[a3];
        }

        *buf = 136448002;
        v473 = "nw_flow_notify";
        v474 = 2082;
        v475 = id_string;
        v476 = 2082;
        v477 = v441;
        v478 = 2082;
        v479 = v439;
        v480 = 2082;
        v481 = v437;
        v482 = 2082;
        v483 = v408;
        v484 = 2114;
        v485 = v409;
        v486 = 2082;
        v487 = v411;
        _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received notification %{public}s", buf, 0x52u);
      }

      goto LABEL_75;
    }

    v30 = v28;
    v31 = *(v28 + 284);

    if ((v31 & 0x40) != 0)
    {
LABEL_76:
      switch(a3)
      {
        case 0u:
          if ((nw_endpoint_handler_get_logging_disabled(v453) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v66 = gconnectionLogObj;
            v67 = nw_endpoint_handler_get_id_string(v453);
            v68 = nw_endpoint_handler_dry_run_string(v453);
            v69 = nw_endpoint_handler_copy_endpoint(v453);
            v70 = nw_endpoint_get_logging_description(v69);
            v71 = nw_endpoint_handler_state_string(v453);
            v72 = nw_endpoint_handler_mode_string(v453);
            v73 = nw_endpoint_handler_copy_current_path(v453);
            *buf = 136448002;
            v473 = "nw_flow_notify";
            v474 = 2082;
            v475 = v67;
            v476 = 2082;
            v477 = v68;
            v478 = 2082;
            v479 = v70;
            v480 = 2082;
            v481 = v71;
            v482 = 2082;
            v483 = v72;
            v484 = 2114;
            v485 = v73;
            v486 = 2082;
            v487 = "undefined";
            v74 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v464 = 0;
            if ((__nwlog_fault(v74, &type, &v464) & 1) == 0)
            {
              goto LABEL_327;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v75 = gconnectionLogObj;
              v76 = type;
              if (os_log_type_enabled(v75, type))
              {
                v77 = nw_endpoint_handler_get_id_string(v453);
                v78 = nw_endpoint_handler_dry_run_string(v453);
                v79 = nw_endpoint_handler_copy_endpoint(v453);
                v80 = nw_endpoint_get_logging_description(v79);
                v81 = nw_endpoint_handler_state_string(v453);
                v82 = nw_endpoint_handler_mode_string(v453);
                v83 = nw_endpoint_handler_copy_current_path(v453);
                *buf = 136448002;
                v473 = "nw_flow_notify";
                v474 = 2082;
                v475 = v77;
                v476 = 2082;
                v477 = v78;
                v478 = 2082;
                v479 = v80;
                v480 = 2082;
                v481 = v81;
                v482 = 2082;
                v483 = v82;
                v484 = 2114;
                v485 = v83;
                v486 = 2082;
                v487 = "undefined";
                _os_log_impl(&dword_181A37000, v75, v76, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] error %{public}s notification", buf, 0x52u);
              }

              goto LABEL_326;
            }

            if (v464 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              if (backtrace_string)
              {
                v185 = backtrace_string;
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v186 = gconnectionLogObj;
                v187 = type;
                if (os_log_type_enabled(v186, type))
                {
                  v188 = nw_endpoint_handler_get_id_string(v453);
                  v189 = nw_endpoint_handler_dry_run_string(v453);
                  v190 = v188;
                  logc = nw_endpoint_handler_copy_endpoint(v453);
                  v191 = nw_endpoint_get_logging_description(logc);
                  v192 = nw_endpoint_handler_state_string(v453);
                  v193 = nw_endpoint_handler_mode_string(v453);
                  v194 = nw_endpoint_handler_copy_current_path(v453);
                  *buf = 136448258;
                  v473 = "nw_flow_notify";
                  v474 = 2082;
                  v475 = v190;
                  v476 = 2082;
                  v477 = v189;
                  v478 = 2082;
                  v479 = v191;
                  v480 = 2082;
                  v481 = v192;
                  v482 = 2082;
                  v483 = v193;
                  v484 = 2114;
                  v485 = v194;
                  v486 = 2082;
                  v487 = "undefined";
                  v488 = 2082;
                  v489 = v185;
                  _os_log_impl(&dword_181A37000, v186, v187, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] error %{public}s notification, dumping backtrace:%{public}s", buf, 0x5Cu);
                }

                goto LABEL_243;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v75 = gconnectionLogObj;
              v352 = type;
              if (os_log_type_enabled(v75, type))
              {
                v353 = nw_endpoint_handler_get_id_string(v453);
                v354 = nw_endpoint_handler_dry_run_string(v453);
                v355 = nw_endpoint_handler_copy_endpoint(v453);
                v356 = nw_endpoint_get_logging_description(v355);
                v357 = nw_endpoint_handler_state_string(v453);
                v358 = nw_endpoint_handler_mode_string(v453);
                v359 = nw_endpoint_handler_copy_current_path(v453);
                *buf = 136448002;
                v473 = "nw_flow_notify";
                v474 = 2082;
                v475 = v353;
                v476 = 2082;
                v477 = v354;
                v478 = 2082;
                v479 = v356;
                v480 = 2082;
                v481 = v357;
                v482 = 2082;
                v483 = v358;
                v484 = 2114;
                v485 = v359;
                v486 = 2082;
                v487 = "undefined";
                _os_log_impl(&dword_181A37000, v75, v352, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] error %{public}s notification, no backtrace", buf, 0x52u);
              }
            }

            else
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v75 = gconnectionLogObj;
              v238 = type;
              if (os_log_type_enabled(v75, type))
              {
                v239 = nw_endpoint_handler_get_id_string(v453);
                v240 = nw_endpoint_handler_dry_run_string(v453);
                v241 = nw_endpoint_handler_copy_endpoint(v453);
                v242 = nw_endpoint_get_logging_description(v241);
                v243 = nw_endpoint_handler_state_string(v453);
                v244 = nw_endpoint_handler_mode_string(v453);
                v245 = nw_endpoint_handler_copy_current_path(v453);
                *buf = 136448002;
                v473 = "nw_flow_notify";
                v474 = 2082;
                v475 = v239;
                v476 = 2082;
                v477 = v240;
                v478 = 2082;
                v479 = v242;
                v480 = 2082;
                v481 = v243;
                v482 = 2082;
                v483 = v244;
                v484 = 2114;
                v485 = v245;
                v486 = 2082;
                v487 = "undefined";
                _os_log_impl(&dword_181A37000, v75, v238, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] error %{public}s notification, backtrace limit exceeded", buf, 0x52u);
              }
            }

            goto LABEL_326;
          }

          goto LABEL_64;
        case 1u:
          v100 = nw_endpoint_handler_copy_endpoint(v453);
          v101 = nw_endpoint_handler_copy_parameters(v453);
          v102 = nw_endpoint_flow_copy_path(v453);
          nw_connection_report_symptom_internal_on_nw_queue(421892, v100, v101, v102, 0, 0, 0, 0, 0, 0);

          if (*(v457 + 105))
          {
            v103 = *(v457 + 127);
            if (v103)
            {
              v104 = _Block_copy(v103);
              v105 = *(v457 + 105);
              v470[0] = MEMORY[0x1E69E9820];
              v470[1] = 3221225472;
              v470[2] = ___ZL14nw_flow_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke;
              v470[3] = &unk_1E6A3CE48;
              v471 = v104;
              v106 = v104;
              dispatch_async(v105, v470);
            }
          }

          goto LABEL_64;
        case 2u:
          v93 = nw_endpoint_handler_copy_endpoint(v453);
          v94 = nw_endpoint_handler_copy_parameters(v453);
          v95 = nw_endpoint_flow_copy_path(v453);
          nw_connection_report_symptom_internal_on_nw_queue(421891, v93, v94, v95, 0, 0, 0, 0, 0, 0);

          if (*(v457 + 105))
          {
            v96 = *(v457 + 128);
            if (v96)
            {
              v97 = _Block_copy(v96);
              v98 = *(v457 + 105);
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = ___ZL14nw_flow_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke_2;
              block[3] = &unk_1E6A3CE48;
              v469 = v97;
              v99 = v97;
              dispatch_async(v98, block);
            }
          }

          goto LABEL_64;
        case 3u:
          v91 = v457;
          if (*(v457 + 129))
          {
            if (*(v457 + 123))
            {
              ++*(v457 + 248);
              if (*(v457 + 249))
              {
                if (networkd_settings_get_int64(nw_setting_tcpconn_keepalive_cnt))
                {
                  v92 = 10;
                }

                else
                {
                  v92 = 0;
                }
              }

              else
              {
                v92 = 0;
              }

              v293 = v453;
              if (*(v457 + 250) && networkd_settings_get_int64(nw_setting_tcpconn_keepalive_time))
              {
                v294 = 60000000000;
              }

              else
              {
                v294 = 0;
              }

              if (*(v457 + 248) >= v92)
              {
                v295 = *(v457 + 123);
                v296 = mach_continuous_time();
                if (v296 <= 1)
                {
                  v297 = 1;
                }

                else
                {
                  v297 = v296;
                }

                if (nw_delta_nanos(v295, v297) / *(v457 + 248) <= v294)
                {
                  if ((nw_endpoint_handler_get_logging_disabled(v453) & 1) == 0)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v298 = gconnectionLogObj;
                    if (os_log_type_enabled(v298, OS_LOG_TYPE_DEBUG))
                    {
                      v299 = nw_endpoint_handler_get_id_string(v453);
                      v300 = nw_endpoint_handler_dry_run_string(v453);
                      v301 = nw_endpoint_handler_copy_endpoint(v453);
                      v302 = nw_endpoint_get_logging_description(v301);
                      v303 = nw_endpoint_handler_state_string(v453);
                      v304 = nw_endpoint_handler_mode_string(v453);
                      v305 = nw_endpoint_handler_copy_current_path(v453);
                      v306 = *(v457 + 248);
                      *buf = 136448002;
                      v473 = "nw_flow_notify";
                      v474 = 2082;
                      v475 = v299;
                      v476 = 2082;
                      v477 = v300;
                      v478 = 2082;
                      v479 = v302;
                      v480 = 2082;
                      v481 = v303;
                      v482 = 2082;
                      v483 = v304;
                      v484 = 2114;
                      v485 = v305;
                      v486 = 1024;
                      LODWORD(v487) = v306;
                      _os_log_impl(&dword_181A37000, v298, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Keepalive notify (count = %u)", buf, 0x4Eu);
                    }

                    v91 = v457;
                    v293 = v453;
                  }

                  if (*(v91 + 105))
                  {
                    v307 = *(v91 + 129);
                    if (v307)
                    {
                      v308 = _Block_copy(v307);
                      v309 = *(v457 + 105);
                      v466[0] = MEMORY[0x1E69E9820];
                      v466[1] = 3221225472;
                      v466[2] = ___ZL14nw_flow_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke_90;
                      v466[3] = &unk_1E6A3CE48;
                      v467 = v308;
                      v310 = v308;
                      dispatch_async(v309, v466);

                      v91 = v457;
                      v293 = v453;
                    }
                  }
                }

                if ((nw_endpoint_handler_get_logging_disabled(v293) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v311 = gconnectionLogObj;
                  if (os_log_type_enabled(v311, OS_LOG_TYPE_DEBUG))
                  {
                    v312 = nw_endpoint_handler_get_id_string(v293);
                    v313 = nw_endpoint_handler_dry_run_string(v293);
                    v314 = nw_endpoint_handler_copy_endpoint(v293);
                    v315 = nw_endpoint_get_logging_description(v314);
                    v316 = nw_endpoint_handler_state_string(v453);
                    v317 = nw_endpoint_handler_mode_string(v453);
                    v318 = nw_endpoint_handler_copy_current_path(v453);
                    v319 = *(v457 + 248);
                    *buf = 136448002;
                    v473 = "nw_flow_notify";
                    v474 = 2082;
                    v475 = v312;
                    v476 = 2082;
                    v477 = v313;
                    v478 = 2082;
                    v479 = v315;
                    v480 = 2082;
                    v481 = v316;
                    v482 = 2082;
                    v483 = v317;
                    v484 = 2114;
                    v485 = v318;
                    v486 = 1024;
                    LODWORD(v487) = v319;
                    _os_log_impl(&dword_181A37000, v311, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Clear keepalive state (count = %u)", buf, 0x4Eu);
                  }

                  v91 = v457;
                }

                *(v91 + 123) = 0;
                *(v91 + 248) = 0;
              }
            }

            else
            {
              *(v457 + 248) = 1;
              v264 = mach_continuous_time();
              if (v264 <= 1)
              {
                v265 = 1;
              }

              else
              {
                v265 = v264;
              }

              *(v457 + 123) = v265;
            }
          }

          goto LABEL_64;
        case 5u:
          if (!*(v457 + 105) || !*(v457 + 130))
          {
            goto LABEL_64;
          }

          v84 = nw_protocol_definition_create_with_identifier(*(a2 + 16));
          if (v84)
          {
            v85 = nw_endpoint_flow_copy_protocol_metadata(v453, v457, v84, 1, 0);
            if (v85)
            {
              (*(*(v457 + 130) + 16))();
            }

LABEL_94:
            goto LABEL_64;
          }

          v419 = __nwlog_obj();
          *buf = 136446210;
          v473 = "nw_flow_notify";
          v420 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v464 = 0;
          if (!__nwlog_fault(v420, &type, &v464))
          {
            goto LABEL_372;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v421 = __nwlog_obj();
            v422 = type;
            if (os_log_type_enabled(v421, type))
            {
              *buf = 136446210;
              v473 = "nw_flow_notify";
              _os_log_impl(&dword_181A37000, v421, v422, "%{public}s called with null definition", buf, 0xCu);
            }
          }

          else
          {
            if (v464 == 1)
            {
              v431 = __nw_create_backtrace_string();
              v432 = __nwlog_obj();
              v433 = type;
              v434 = os_log_type_enabled(v432, type);
              if (v431)
              {
                if (v434)
                {
                  *buf = 136446466;
                  v473 = "nw_flow_notify";
                  v474 = 2082;
                  v475 = v431;
                  _os_log_impl(&dword_181A37000, v432, v433, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v431);
              }

              else
              {
                if (v434)
                {
                  *buf = 136446210;
                  v473 = "nw_flow_notify";
                  _os_log_impl(&dword_181A37000, v432, v433, "%{public}s called with null definition, no backtrace", buf, 0xCu);
                }
              }

              goto LABEL_372;
            }

            v421 = __nwlog_obj();
            v435 = type;
            if (os_log_type_enabled(v421, type))
            {
              *buf = 136446210;
              v473 = "nw_flow_notify";
              _os_log_impl(&dword_181A37000, v421, v435, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
            }
          }

LABEL_372:
          if (v420)
          {
            free(v420);
          }

          goto LABEL_94;
        case 0xCu:
          v89 = *(v457 + 34);
          if ((v89 & 0x80000000) == 0)
          {
            *(v457 + 34) = v89 | 0x80;
            v90 = 8;
            goto LABEL_124;
          }

          goto LABEL_64;
        case 0x13u:
          nw_endpoint_flow_rebuild_stack(v453, a2);
          goto LABEL_64;
        case 0x16u:
          if (!*(v457 + 69))
          {
            if ((nw_endpoint_handler_get_logging_disabled(v453) & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v195 = gconnectionLogObj;
              v196 = nw_endpoint_handler_get_id_string(v453);
              v197 = nw_endpoint_handler_dry_run_string(v453);
              v198 = nw_endpoint_handler_copy_endpoint(v453);
              v199 = nw_endpoint_get_logging_description(v198);
              v200 = nw_endpoint_handler_state_string(v453);
              v201 = nw_endpoint_handler_mode_string(v453);
              v202 = nw_endpoint_handler_copy_current_path(v453);
              *buf = 136447746;
              v473 = "nw_flow_notify";
              v474 = 2082;
              v475 = v196;
              v476 = 2082;
              v477 = v197;
              v478 = 2082;
              v479 = v199;
              v480 = 2082;
              v481 = v200;
              v482 = 2082;
              v483 = v201;
              v484 = 2114;
              v485 = v202;
              v74 = _os_log_send_and_compose_impl();

              type = OS_LOG_TYPE_ERROR;
              v464 = 0;
              if ((__nwlog_fault(v74, &type, &v464) & 1) == 0)
              {
                goto LABEL_327;
              }

              if (type == OS_LOG_TYPE_FAULT)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v75 = gconnectionLogObj;
                v203 = type;
                if (os_log_type_enabled(v75, type))
                {
                  v204 = nw_endpoint_handler_get_id_string(v453);
                  v205 = nw_endpoint_handler_dry_run_string(v453);
                  v206 = nw_endpoint_handler_copy_endpoint(v453);
                  v207 = nw_endpoint_get_logging_description(v206);
                  v208 = nw_endpoint_handler_state_string(v453);
                  v209 = nw_endpoint_handler_mode_string(v453);
                  v210 = nw_endpoint_handler_copy_current_path(v453);
                  *buf = 136447746;
                  v473 = "nw_flow_notify";
                  v474 = 2082;
                  v475 = v204;
                  v476 = 2082;
                  v477 = v205;
                  v478 = 2082;
                  v479 = v207;
                  v480 = 2082;
                  v481 = v208;
                  v482 = 2082;
                  v483 = v209;
                  v484 = 2114;
                  v485 = v210;
                  _os_log_impl(&dword_181A37000, v75, v203, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already cancelled, ignoring restart", buf, 0x48u);
                }

                goto LABEL_326;
              }

              if (v464 == 1)
              {
                v274 = __nw_create_backtrace_string();
                if (v274)
                {
                  v185 = v274;
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v186 = gconnectionLogObj;
                  v275 = type;
                  if (os_log_type_enabled(v186, type))
                  {
                    v276 = nw_endpoint_handler_get_id_string(v453);
                    v277 = nw_endpoint_handler_dry_run_string(v453);
                    v278 = v276;
                    logg = nw_endpoint_handler_copy_endpoint(v453);
                    v279 = nw_endpoint_get_logging_description(logg);
                    v280 = nw_endpoint_handler_state_string(v453);
                    v281 = nw_endpoint_handler_mode_string(v453);
                    v282 = nw_endpoint_handler_copy_current_path(v453);
                    *buf = 136448002;
                    v473 = "nw_flow_notify";
                    v474 = 2082;
                    v475 = v278;
                    v476 = 2082;
                    v477 = v277;
                    v478 = 2082;
                    v479 = v279;
                    v480 = 2082;
                    v481 = v280;
                    v482 = 2082;
                    v483 = v281;
                    v484 = 2114;
                    v485 = v282;
                    v486 = 2082;
                    v487 = v185;
                    _os_log_impl(&dword_181A37000, v186, v275, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already cancelled, ignoring restart, dumping backtrace:%{public}s", buf, 0x52u);
                  }

                  goto LABEL_243;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v75 = gconnectionLogObj;
                v392 = type;
                if (os_log_type_enabled(v75, type))
                {
                  v393 = nw_endpoint_handler_get_id_string(v453);
                  v394 = nw_endpoint_handler_dry_run_string(v453);
                  v395 = nw_endpoint_handler_copy_endpoint(v453);
                  v396 = nw_endpoint_get_logging_description(v395);
                  v397 = nw_endpoint_handler_state_string(v453);
                  v398 = nw_endpoint_handler_mode_string(v453);
                  v399 = nw_endpoint_handler_copy_current_path(v453);
                  *buf = 136447746;
                  v473 = "nw_flow_notify";
                  v474 = 2082;
                  v475 = v393;
                  v476 = 2082;
                  v477 = v394;
                  v478 = 2082;
                  v479 = v396;
                  v480 = 2082;
                  v481 = v397;
                  v482 = 2082;
                  v483 = v398;
                  v484 = 2114;
                  v485 = v399;
                  _os_log_impl(&dword_181A37000, v75, v392, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already cancelled, ignoring restart, no backtrace", buf, 0x48u);
                }
              }

              else
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v75 = gconnectionLogObj;
                v344 = type;
                if (os_log_type_enabled(v75, type))
                {
                  v345 = nw_endpoint_handler_get_id_string(v453);
                  v346 = nw_endpoint_handler_dry_run_string(v453);
                  v347 = nw_endpoint_handler_copy_endpoint(v453);
                  v348 = nw_endpoint_get_logging_description(v347);
                  v349 = nw_endpoint_handler_state_string(v453);
                  v350 = nw_endpoint_handler_mode_string(v453);
                  v351 = nw_endpoint_handler_copy_current_path(v453);
                  *buf = 136447746;
                  v473 = "nw_flow_notify";
                  v474 = 2082;
                  v475 = v345;
                  v476 = 2082;
                  v477 = v346;
                  v478 = 2082;
                  v479 = v348;
                  v480 = 2082;
                  v481 = v349;
                  v482 = 2082;
                  v483 = v350;
                  v484 = 2114;
                  v485 = v351;
                  _os_log_impl(&dword_181A37000, v75, v344, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already cancelled, ignoring restart, backtrace limit exceeded", buf, 0x48u);
                }
              }

              goto LABEL_326;
            }

            goto LABEL_64;
          }

          if (*(v457 + 251) <= 0x13u)
          {
            minimize_logging = nw_endpoint_handler_get_minimize_logging(v453);
            logging_disabled = nw_endpoint_handler_get_logging_disabled(v453);
            if (minimize_logging)
            {
              if (logging_disabled)
              {
LABEL_123:
                ++*(v457 + 251);
                nw_endpoint_flow_cleanup_protocol(v453, v457 + 376, 1);
                *(v457 + 354) &= ~1u;
                nw_endpoint_flow_initialize_protocol(v453, v457 + 376, *(v457 + 32) & 1);
                nw_endpoint_flow_rebuild_stack(v453, a1);
                v90 = 4;
LABEL_124:
                v453->event.domain = 3;
                v453->event.event = v90;
                nw_endpoint_handler_report(v453, 0, &v453->event.domain, 0);
                goto LABEL_64;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v109 = gconnectionLogObj;
              if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
              {
                v423 = nw_endpoint_handler_get_id_string(v453);
                v424 = nw_endpoint_handler_dry_run_string(v453);
                v425 = nw_endpoint_handler_copy_endpoint(v453);
                v426 = nw_endpoint_get_logging_description(v425);
                v427 = nw_endpoint_handler_state_string(v453);
                v428 = nw_endpoint_handler_mode_string(v453);
                v429 = nw_endpoint_handler_copy_current_path(v453);
                v430 = *(v457 + 251);
                *buf = 136448002;
                v473 = "nw_flow_notify";
                v474 = 2082;
                v475 = v423;
                v476 = 2082;
                v477 = v424;
                v478 = 2082;
                v479 = v426;
                v480 = 2082;
                v481 = v427;
                v482 = 2082;
                v483 = v428;
                v484 = 2114;
                v485 = v429;
                v486 = 1024;
                LODWORD(v487) = v430;
                _os_log_impl(&dword_181A37000, v109, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received restart with count %u, rebuilding stack", buf, 0x4Eu);
              }
            }

            else
            {
              if (logging_disabled)
              {
                goto LABEL_123;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v109 = gconnectionLogObj;
              if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
              {
                v110 = nw_endpoint_handler_get_id_string(v453);
                v111 = nw_endpoint_handler_dry_run_string(v453);
                v112 = nw_endpoint_handler_copy_endpoint(v453);
                v113 = nw_endpoint_get_logging_description(v112);
                v114 = nw_endpoint_handler_state_string(v453);
                v115 = nw_endpoint_handler_mode_string(v453);
                v116 = nw_endpoint_handler_copy_current_path(v453);
                v117 = *(v457 + 251);
                *buf = 136448002;
                v473 = "nw_flow_notify";
                v474 = 2082;
                v475 = v110;
                v476 = 2082;
                v477 = v111;
                v478 = 2082;
                v479 = v113;
                v480 = 2082;
                v481 = v114;
                v482 = 2082;
                v483 = v115;
                v484 = 2114;
                v485 = v116;
                v486 = 1024;
                LODWORD(v487) = v117;
                _os_log_impl(&dword_181A37000, v109, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received restart with count %u, rebuilding stack", buf, 0x4Eu);
              }
            }

            goto LABEL_123;
          }

          if (nw_endpoint_handler_get_logging_disabled(v453))
          {
            goto LABEL_337;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v211 = gconnectionLogObj;
          v212 = nw_endpoint_handler_get_id_string(v453);
          v213 = nw_endpoint_handler_dry_run_string(v453);
          v214 = nw_endpoint_handler_copy_endpoint(v453);
          v215 = nw_endpoint_get_logging_description(v214);
          v216 = nw_endpoint_handler_state_string(v453);
          v217 = nw_endpoint_handler_mode_string(v453);
          v218 = nw_endpoint_handler_copy_current_path(v453);
          *buf = 136447746;
          v473 = "nw_flow_notify";
          v474 = 2082;
          v475 = v212;
          v476 = 2082;
          v477 = v213;
          v478 = 2082;
          v479 = v215;
          v480 = 2082;
          v481 = v216;
          v482 = 2082;
          v483 = v217;
          v484 = 2114;
          v485 = v218;
          loga = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v464 = 0;
          v219 = loga;
          if ((__nwlog_fault(loga, &type, &v464) & 1) == 0)
          {
            goto LABEL_335;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v220 = gconnectionLogObj;
            v221 = type;
            if (os_log_type_enabled(v220, type))
            {
              v222 = nw_endpoint_handler_get_id_string(v453);
              v223 = nw_endpoint_handler_dry_run_string(v453);
              v224 = nw_endpoint_handler_copy_endpoint(v453);
              v225 = nw_endpoint_get_logging_description(v224);
              v226 = nw_endpoint_handler_state_string(v453);
              v227 = nw_endpoint_handler_mode_string(v453);
              v228 = nw_endpoint_handler_copy_current_path(v453);
              *buf = 136447746;
              v473 = "nw_flow_notify";
              v474 = 2082;
              v475 = v222;
              v476 = 2082;
              v477 = v223;
              v478 = 2082;
              v479 = v225;
              v480 = 2082;
              v481 = v226;
              v482 = 2082;
              v483 = v227;
              v484 = 2114;
              v485 = v228;
              _os_log_impl(&dword_181A37000, v220, v221, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received restart without connecting too many times, failing flow", buf, 0x48u);
            }
          }

          else if (v464 == 1)
          {
            v283 = __nw_create_backtrace_string();
            if (v283)
            {
              v284 = v283;
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v285 = gconnectionLogObj;
              v286 = type;
              if (os_log_type_enabled(v285, type))
              {
                v287 = nw_endpoint_handler_get_id_string(v453);
                v288 = nw_endpoint_handler_dry_run_string(v453);
                v443 = nw_endpoint_handler_copy_endpoint(v453);
                v289 = nw_endpoint_get_logging_description(v443);
                v290 = nw_endpoint_handler_state_string(v453);
                v291 = nw_endpoint_handler_mode_string(v453);
                v292 = nw_endpoint_handler_copy_current_path(v453);
                *buf = 136448002;
                v473 = "nw_flow_notify";
                v474 = 2082;
                v475 = v287;
                v476 = 2082;
                v477 = v288;
                v478 = 2082;
                v479 = v289;
                v480 = 2082;
                v481 = v290;
                v482 = 2082;
                v483 = v291;
                v484 = 2114;
                v485 = v292;
                v486 = 2082;
                v487 = v284;
                _os_log_impl(&dword_181A37000, v285, v286, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received restart without connecting too many times, failing flow, dumping backtrace:%{public}s", buf, 0x52u);
              }

              free(v284);
              goto LABEL_334;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v220 = gconnectionLogObj;
            v400 = type;
            if (os_log_type_enabled(v220, type))
            {
              v401 = nw_endpoint_handler_get_id_string(v453);
              v402 = nw_endpoint_handler_dry_run_string(v453);
              v403 = nw_endpoint_handler_copy_endpoint(v453);
              v404 = nw_endpoint_get_logging_description(v403);
              v405 = nw_endpoint_handler_state_string(v453);
              v406 = nw_endpoint_handler_mode_string(v453);
              v407 = nw_endpoint_handler_copy_current_path(v453);
              *buf = 136447746;
              v473 = "nw_flow_notify";
              v474 = 2082;
              v475 = v401;
              v476 = 2082;
              v477 = v402;
              v478 = 2082;
              v479 = v404;
              v480 = 2082;
              v481 = v405;
              v482 = 2082;
              v483 = v406;
              v484 = 2114;
              v485 = v407;
              _os_log_impl(&dword_181A37000, v220, v400, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received restart without connecting too many times, failing flow, no backtrace", buf, 0x48u);
            }
          }

          else
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v220 = gconnectionLogObj;
            v360 = type;
            if (os_log_type_enabled(v220, type))
            {
              v361 = nw_endpoint_handler_get_id_string(v453);
              v362 = nw_endpoint_handler_dry_run_string(v453);
              v363 = nw_endpoint_handler_copy_endpoint(v453);
              v364 = nw_endpoint_get_logging_description(v363);
              v365 = nw_endpoint_handler_state_string(v453);
              v366 = nw_endpoint_handler_mode_string(v453);
              v367 = nw_endpoint_handler_copy_current_path(v453);
              *buf = 136447746;
              v473 = "nw_flow_notify";
              v474 = 2082;
              v475 = v361;
              v476 = 2082;
              v477 = v362;
              v478 = 2082;
              v479 = v364;
              v480 = 2082;
              v481 = v365;
              v482 = 2082;
              v483 = v366;
              v484 = 2114;
              v485 = v367;
              _os_log_impl(&dword_181A37000, v220, v360, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received restart without connecting too many times, failing flow, backtrace limit exceeded", buf, 0x48u);
            }
          }

LABEL_334:
          v219 = loga;
LABEL_335:
          if (v219)
          {
            free(v219);
          }

LABEL_337:
          nw_protocol_disconnected(a1, *(a1 + 32));
          goto LABEL_64;
        case 0x17u:
          if (a4 && a5 == 1)
          {
            v134 = *a4;
            v135 = *(v457 + 35);
            *(v457 + 35) = v135 & 0xEF | (16 * v134);
            if (!v134 && (v135 & 8) != 0)
            {
              *(v457 + 35) = v135 & 0xE7;
              nw_endpoint_flow_start_child(v453);
            }
          }

          else if ((nw_endpoint_handler_get_logging_disabled(v453) & 1) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v168 = gconnectionLogObj;
            v169 = nw_endpoint_handler_get_id_string(v453);
            v170 = nw_endpoint_handler_dry_run_string(v453);
            v171 = nw_endpoint_handler_copy_endpoint(v453);
            v172 = nw_endpoint_get_logging_description(v171);
            v173 = nw_endpoint_handler_state_string(v453);
            v174 = nw_endpoint_handler_mode_string(v453);
            v175 = nw_endpoint_handler_copy_current_path(v453);
            *buf = 136448002;
            v473 = "nw_flow_notify";
            v474 = 2082;
            v475 = v169;
            v476 = 2082;
            v477 = v170;
            v478 = 2082;
            v479 = v172;
            v480 = 2082;
            v481 = v173;
            v482 = 2082;
            v483 = v174;
            v484 = 2114;
            v485 = v175;
            v486 = 2080;
            v487 = "delay_child";
            v74 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v464 = 0;
            if ((__nwlog_fault(v74, &type, &v464) & 1) == 0)
            {
              goto LABEL_327;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v75 = gconnectionLogObj;
              v176 = type;
              if (os_log_type_enabled(v75, type))
              {
                v177 = nw_endpoint_handler_get_id_string(v453);
                v178 = nw_endpoint_handler_dry_run_string(v453);
                v179 = nw_endpoint_handler_copy_endpoint(v453);
                v180 = nw_endpoint_get_logging_description(v179);
                v181 = nw_endpoint_handler_state_string(v453);
                v182 = nw_endpoint_handler_mode_string(v453);
                v183 = nw_endpoint_handler_copy_current_path(v453);
                *buf = 136448002;
                v473 = "nw_flow_notify";
                v474 = 2082;
                v475 = v177;
                v476 = 2082;
                v477 = v178;
                v478 = 2082;
                v479 = v180;
                v480 = 2082;
                v481 = v181;
                v482 = 2082;
                v483 = v182;
                v484 = 2114;
                v485 = v183;
                v486 = 2080;
                v487 = "delay_child";
                _os_log_impl(&dword_181A37000, v75, v176, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification", buf, 0x52u);
              }

              goto LABEL_326;
            }

            if (v464 == 1)
            {
              v255 = __nw_create_backtrace_string();
              if (v255)
              {
                v185 = v255;
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v186 = gconnectionLogObj;
                v256 = type;
                if (os_log_type_enabled(v186, type))
                {
                  v257 = nw_endpoint_handler_get_id_string(v453);
                  v258 = nw_endpoint_handler_dry_run_string(v453);
                  v259 = v257;
                  logf = nw_endpoint_handler_copy_endpoint(v453);
                  v260 = nw_endpoint_get_logging_description(logf);
                  v261 = nw_endpoint_handler_state_string(v453);
                  v262 = nw_endpoint_handler_mode_string(v453);
                  v263 = nw_endpoint_handler_copy_current_path(v453);
                  *buf = 136448258;
                  v473 = "nw_flow_notify";
                  v474 = 2082;
                  v475 = v259;
                  v476 = 2082;
                  v477 = v258;
                  v478 = 2082;
                  v479 = v260;
                  v480 = 2082;
                  v481 = v261;
                  v482 = 2082;
                  v483 = v262;
                  v484 = 2114;
                  v485 = v263;
                  v486 = 2080;
                  v487 = "delay_child";
                  v488 = 2082;
                  v489 = v185;
                  _os_log_impl(&dword_181A37000, v186, v256, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification, dumping backtrace:%{public}s", buf, 0x5Cu);
                }

                goto LABEL_243;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v75 = gconnectionLogObj;
              v384 = type;
              if (os_log_type_enabled(v75, type))
              {
                v385 = nw_endpoint_handler_get_id_string(v453);
                v386 = nw_endpoint_handler_dry_run_string(v453);
                v387 = nw_endpoint_handler_copy_endpoint(v453);
                v388 = nw_endpoint_get_logging_description(v387);
                v389 = nw_endpoint_handler_state_string(v453);
                v390 = nw_endpoint_handler_mode_string(v453);
                v391 = nw_endpoint_handler_copy_current_path(v453);
                *buf = 136448002;
                v473 = "nw_flow_notify";
                v474 = 2082;
                v475 = v385;
                v476 = 2082;
                v477 = v386;
                v478 = 2082;
                v479 = v388;
                v480 = 2082;
                v481 = v389;
                v482 = 2082;
                v483 = v390;
                v484 = 2114;
                v485 = v391;
                v486 = 2080;
                v487 = "delay_child";
                _os_log_impl(&dword_181A37000, v75, v384, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification, no backtrace", buf, 0x52u);
              }
            }

            else
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v75 = gconnectionLogObj;
              v336 = type;
              if (os_log_type_enabled(v75, type))
              {
                v337 = nw_endpoint_handler_get_id_string(v453);
                v338 = nw_endpoint_handler_dry_run_string(v453);
                v339 = nw_endpoint_handler_copy_endpoint(v453);
                v340 = nw_endpoint_get_logging_description(v339);
                v341 = nw_endpoint_handler_state_string(v453);
                v342 = nw_endpoint_handler_mode_string(v453);
                v343 = nw_endpoint_handler_copy_current_path(v453);
                *buf = 136448002;
                v473 = "nw_flow_notify";
                v474 = 2082;
                v475 = v337;
                v476 = 2082;
                v477 = v338;
                v478 = 2082;
                v479 = v340;
                v480 = 2082;
                v481 = v341;
                v482 = 2082;
                v483 = v342;
                v484 = 2114;
                v485 = v343;
                v486 = 2080;
                v487 = "delay_child";
                _os_log_impl(&dword_181A37000, v75, v336, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification, backtrace limit exceeded", buf, 0x52u);
              }
            }

            goto LABEL_326;
          }

          goto LABEL_64;
        case 0x18u:
          if (a5 != 8)
          {
            if ((nw_endpoint_handler_get_logging_disabled(v453) & 1) == 0)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v152 = gconnectionLogObj;
              v153 = nw_endpoint_handler_get_id_string(v453);
              v154 = nw_endpoint_handler_dry_run_string(v453);
              v155 = nw_endpoint_handler_copy_endpoint(v453);
              v156 = nw_endpoint_get_logging_description(v155);
              v157 = nw_endpoint_handler_state_string(v453);
              v158 = nw_endpoint_handler_mode_string(v453);
              v159 = nw_endpoint_handler_copy_current_path(v453);
              *buf = 136448002;
              v473 = "nw_flow_notify";
              v474 = 2082;
              v475 = v153;
              v476 = 2082;
              v477 = v154;
              v478 = 2082;
              v479 = v156;
              v480 = 2082;
              v481 = v157;
              v482 = 2082;
              v483 = v158;
              v484 = 2114;
              v485 = v159;
              v486 = 2080;
              v487 = "migration";
              v74 = _os_log_send_and_compose_impl();

              type = OS_LOG_TYPE_ERROR;
              v464 = 0;
              if ((__nwlog_fault(v74, &type, &v464) & 1) == 0)
              {
                goto LABEL_327;
              }

              if (type == OS_LOG_TYPE_FAULT)
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v75 = gconnectionLogObj;
                v160 = type;
                if (os_log_type_enabled(v75, type))
                {
                  v161 = nw_endpoint_handler_get_id_string(v453);
                  v162 = nw_endpoint_handler_dry_run_string(v453);
                  v163 = nw_endpoint_handler_copy_endpoint(v453);
                  v164 = nw_endpoint_get_logging_description(v163);
                  v165 = nw_endpoint_handler_state_string(v453);
                  v166 = nw_endpoint_handler_mode_string(v453);
                  v167 = nw_endpoint_handler_copy_current_path(v453);
                  *buf = 136448002;
                  v473 = "nw_flow_notify";
                  v474 = 2082;
                  v475 = v161;
                  v476 = 2082;
                  v477 = v162;
                  v478 = 2082;
                  v479 = v164;
                  v480 = 2082;
                  v481 = v165;
                  v482 = 2082;
                  v483 = v166;
                  v484 = 2114;
                  v485 = v167;
                  v486 = 2080;
                  v487 = "migration";
                  _os_log_impl(&dword_181A37000, v75, v160, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification", buf, 0x52u);
                }

                goto LABEL_326;
              }

              if (v464 == 1)
              {
                v246 = __nw_create_backtrace_string();
                if (v246)
                {
                  v185 = v246;
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v186 = gconnectionLogObj;
                  v247 = type;
                  if (os_log_type_enabled(v186, type))
                  {
                    v248 = nw_endpoint_handler_get_id_string(v453);
                    v249 = nw_endpoint_handler_dry_run_string(v453);
                    v250 = v248;
                    loge = nw_endpoint_handler_copy_endpoint(v453);
                    v251 = nw_endpoint_get_logging_description(loge);
                    v252 = nw_endpoint_handler_state_string(v453);
                    v253 = nw_endpoint_handler_mode_string(v453);
                    v254 = nw_endpoint_handler_copy_current_path(v453);
                    *buf = 136448258;
                    v473 = "nw_flow_notify";
                    v474 = 2082;
                    v475 = v250;
                    v476 = 2082;
                    v477 = v249;
                    v478 = 2082;
                    v479 = v251;
                    v480 = 2082;
                    v481 = v252;
                    v482 = 2082;
                    v483 = v253;
                    v484 = 2114;
                    v485 = v254;
                    v486 = 2080;
                    v487 = "migration";
                    v488 = 2082;
                    v489 = v185;
                    _os_log_impl(&dword_181A37000, v186, v247, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification, dumping backtrace:%{public}s", buf, 0x5Cu);
                  }

                  goto LABEL_243;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v75 = gconnectionLogObj;
                v376 = type;
                if (os_log_type_enabled(v75, type))
                {
                  v377 = nw_endpoint_handler_get_id_string(v453);
                  v378 = nw_endpoint_handler_dry_run_string(v453);
                  v379 = nw_endpoint_handler_copy_endpoint(v453);
                  v380 = nw_endpoint_get_logging_description(v379);
                  v381 = nw_endpoint_handler_state_string(v453);
                  v382 = nw_endpoint_handler_mode_string(v453);
                  v383 = nw_endpoint_handler_copy_current_path(v453);
                  *buf = 136448002;
                  v473 = "nw_flow_notify";
                  v474 = 2082;
                  v475 = v377;
                  v476 = 2082;
                  v477 = v378;
                  v478 = 2082;
                  v479 = v380;
                  v480 = 2082;
                  v481 = v381;
                  v482 = 2082;
                  v483 = v382;
                  v484 = 2114;
                  v485 = v383;
                  v486 = 2080;
                  v487 = "migration";
                  _os_log_impl(&dword_181A37000, v75, v376, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification, no backtrace", buf, 0x52u);
                }
              }

              else
              {
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v75 = gconnectionLogObj;
                v328 = type;
                if (os_log_type_enabled(v75, type))
                {
                  v329 = nw_endpoint_handler_get_id_string(v453);
                  v330 = nw_endpoint_handler_dry_run_string(v453);
                  v331 = nw_endpoint_handler_copy_endpoint(v453);
                  v332 = nw_endpoint_get_logging_description(v331);
                  v333 = nw_endpoint_handler_state_string(v453);
                  v334 = nw_endpoint_handler_mode_string(v453);
                  v335 = nw_endpoint_handler_copy_current_path(v453);
                  *buf = 136448002;
                  v473 = "nw_flow_notify";
                  v474 = 2082;
                  v475 = v329;
                  v476 = 2082;
                  v477 = v330;
                  v478 = 2082;
                  v479 = v332;
                  v480 = 2082;
                  v481 = v333;
                  v482 = 2082;
                  v483 = v334;
                  v484 = 2114;
                  v485 = v335;
                  v486 = 2080;
                  v487 = "migration";
                  _os_log_impl(&dword_181A37000, v75, v328, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification, backtrace limit exceeded", buf, 0x52u);
                }
              }

              goto LABEL_326;
            }

            goto LABEL_64;
          }

          v118 = a4;
          v119 = nw_endpoint_handler_get_minimize_logging(v453);
          v120 = nw_endpoint_handler_get_logging_disabled(v453);
          if (v119)
          {
            if (v120)
            {
              goto LABEL_133;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v121 = gconnectionLogObj;
            if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
            {
              v412 = nw_endpoint_handler_get_id_string(v453);
              v413 = nw_endpoint_handler_dry_run_string(v453);
              v414 = nw_endpoint_handler_copy_endpoint(v453);
              v415 = nw_endpoint_get_logging_description(v414);
              v416 = nw_endpoint_handler_state_string(v453);
              v417 = nw_endpoint_handler_mode_string(v453);
              v418 = nw_endpoint_handler_copy_current_path(v453);
              *buf = 136448002;
              v473 = "nw_flow_notify";
              v474 = 2082;
              v475 = v412;
              v476 = 2082;
              v477 = v413;
              v478 = 2082;
              v479 = v415;
              v480 = 2082;
              v481 = v416;
              v482 = 2082;
              v483 = v417;
              v484 = 2114;
              v485 = v418;
              v486 = 2112;
              v487 = v118;
              _os_log_impl(&dword_181A37000, v121, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received migration flow registration %@", buf, 0x52u);
            }
          }

          else
          {
            if (v120)
            {
LABEL_133:
              if (v118)
              {
                v129 = nw_path_flow_registration_copy_path(v118);
                v130 = nw_path_copy_connected_interface(v129);
                os_unfair_lock_lock(v457 + 220);
                objc_storeStrong(v457 + 2, v129);
                v131 = v457;
                if ((*(v457 + 33) & 4) != 0)
                {
                  objc_storeStrong(v457 + 1, v129);
                  v131 = v457;
                }

                os_unfair_lock_unlock(v131 + 220);
                v132 = v130;
                v133 = v129;
              }

              else
              {
                if ((nw_endpoint_handler_get_logging_disabled(v453) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v266 = gconnectionLogObj;
                  if (os_log_type_enabled(v266, OS_LOG_TYPE_ERROR))
                  {
                    v267 = nw_endpoint_handler_get_id_string(v453);
                    v268 = nw_endpoint_handler_dry_run_string(v453);
                    v269 = nw_endpoint_handler_copy_endpoint(v453);
                    v270 = nw_endpoint_get_logging_description(v269);
                    v271 = nw_endpoint_handler_state_string(v453);
                    v272 = nw_endpoint_handler_mode_string(v453);
                    v273 = nw_endpoint_handler_copy_current_path(v453);
                    *buf = 136447746;
                    v473 = "nw_flow_notify";
                    v474 = 2082;
                    v475 = v267;
                    v476 = 2082;
                    v477 = v268;
                    v478 = 2082;
                    v479 = v270;
                    v480 = 2082;
                    v481 = v271;
                    v482 = 2082;
                    v483 = v272;
                    v484 = 2114;
                    v485 = v273;
                    _os_log_impl(&dword_181A37000, v266, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] no flow_registration received for migration", buf, 0x48u);
                  }
                }

                v132 = 0;
                v133 = 0;
              }

              nw_endpoint_handler_migration_callback(v453, v132);

              goto LABEL_64;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v121 = gconnectionLogObj;
            if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
            {
              v122 = nw_endpoint_handler_get_id_string(v453);
              v123 = nw_endpoint_handler_dry_run_string(v453);
              v124 = nw_endpoint_handler_copy_endpoint(v453);
              v125 = nw_endpoint_get_logging_description(v124);
              v126 = nw_endpoint_handler_state_string(v453);
              v127 = nw_endpoint_handler_mode_string(v453);
              v128 = nw_endpoint_handler_copy_current_path(v453);
              *buf = 136448002;
              v473 = "nw_flow_notify";
              v474 = 2082;
              v475 = v122;
              v476 = 2082;
              v477 = v123;
              v478 = 2082;
              v479 = v125;
              v480 = 2082;
              v481 = v126;
              v482 = 2082;
              v483 = v127;
              v484 = 2114;
              v485 = v128;
              v486 = 2112;
              v487 = v118;
              _os_log_impl(&dword_181A37000, v121, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received migration flow registration %@", buf, 0x52u);
            }
          }

          goto LABEL_133;
        case 0x19u:
          v461[0] = MEMORY[0x1E69E9820];
          v461[1] = 3221225472;
          v461[2] = ___ZL14nw_flow_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke_91;
          v461[3] = &unk_1E6A2DCD0;
          v463 = a1;
          v462 = v453;
          nw_endpoint_handler_access_parent_flow_handler(v462, v461);

          goto LABEL_64;
        case 0x1Cu:
          if (a4 && a5 == 16)
          {
            *a4 = *(v457 + 1080);
            goto LABEL_64;
          }

          if (nw_endpoint_handler_get_logging_disabled(v453))
          {
            goto LABEL_64;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v136 = gconnectionLogObj;
          v137 = nw_endpoint_handler_get_id_string(v453);
          v138 = nw_endpoint_handler_dry_run_string(v453);
          v139 = nw_endpoint_handler_copy_endpoint(v453);
          v140 = nw_endpoint_get_logging_description(v139);
          v141 = nw_endpoint_handler_state_string(v453);
          v142 = nw_endpoint_handler_mode_string(v453);
          v143 = nw_endpoint_handler_copy_current_path(v453);
          *buf = 136448002;
          v473 = "nw_flow_notify";
          v474 = 2082;
          v475 = v137;
          v476 = 2082;
          v477 = v138;
          v478 = 2082;
          v479 = v140;
          v480 = 2082;
          v481 = v141;
          v482 = 2082;
          v483 = v142;
          v484 = 2114;
          v485 = v143;
          v486 = 2080;
          v487 = "fill_connection_uuid";
          v74 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v464 = 0;
          if ((__nwlog_fault(v74, &type, &v464) & 1) == 0)
          {
            goto LABEL_327;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v75 = gconnectionLogObj;
            v144 = type;
            if (os_log_type_enabled(v75, type))
            {
              v145 = nw_endpoint_handler_get_id_string(v453);
              v146 = nw_endpoint_handler_dry_run_string(v453);
              v147 = nw_endpoint_handler_copy_endpoint(v453);
              v148 = nw_endpoint_get_logging_description(v147);
              v149 = nw_endpoint_handler_state_string(v453);
              v150 = nw_endpoint_handler_mode_string(v453);
              v151 = nw_endpoint_handler_copy_current_path(v453);
              *buf = 136448002;
              v473 = "nw_flow_notify";
              v474 = 2082;
              v475 = v145;
              v476 = 2082;
              v477 = v146;
              v478 = 2082;
              v479 = v148;
              v480 = 2082;
              v481 = v149;
              v482 = 2082;
              v483 = v150;
              v484 = 2114;
              v485 = v151;
              v486 = 2080;
              v487 = "fill_connection_uuid";
              _os_log_impl(&dword_181A37000, v75, v144, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification", buf, 0x52u);
            }
          }

          else if (v464 == 1)
          {
            v229 = __nw_create_backtrace_string();
            if (v229)
            {
              v185 = v229;
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v186 = gconnectionLogObj;
              v230 = type;
              if (os_log_type_enabled(v186, type))
              {
                v231 = nw_endpoint_handler_get_id_string(v453);
                v232 = nw_endpoint_handler_dry_run_string(v453);
                v233 = v231;
                logd = nw_endpoint_handler_copy_endpoint(v453);
                v234 = nw_endpoint_get_logging_description(logd);
                v235 = nw_endpoint_handler_state_string(v453);
                v236 = nw_endpoint_handler_mode_string(v453);
                v237 = nw_endpoint_handler_copy_current_path(v453);
                *buf = 136448258;
                v473 = "nw_flow_notify";
                v474 = 2082;
                v475 = v233;
                v476 = 2082;
                v477 = v232;
                v478 = 2082;
                v479 = v234;
                v480 = 2082;
                v481 = v235;
                v482 = 2082;
                v483 = v236;
                v484 = 2114;
                v485 = v237;
                v486 = 2080;
                v487 = "fill_connection_uuid";
                v488 = 2082;
                v489 = v185;
                _os_log_impl(&dword_181A37000, v186, v230, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification, dumping backtrace:%{public}s", buf, 0x5Cu);
              }

LABEL_243:

              free(v185);
              goto LABEL_327;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v75 = gconnectionLogObj;
            v368 = type;
            if (os_log_type_enabled(v75, type))
            {
              v369 = nw_endpoint_handler_get_id_string(v453);
              v370 = nw_endpoint_handler_dry_run_string(v453);
              v371 = nw_endpoint_handler_copy_endpoint(v453);
              v372 = nw_endpoint_get_logging_description(v371);
              v373 = nw_endpoint_handler_state_string(v453);
              v374 = nw_endpoint_handler_mode_string(v453);
              v375 = nw_endpoint_handler_copy_current_path(v453);
              *buf = 136448002;
              v473 = "nw_flow_notify";
              v474 = 2082;
              v475 = v369;
              v476 = 2082;
              v477 = v370;
              v478 = 2082;
              v479 = v372;
              v480 = 2082;
              v481 = v373;
              v482 = 2082;
              v483 = v374;
              v484 = 2114;
              v485 = v375;
              v486 = 2080;
              v487 = "fill_connection_uuid";
              _os_log_impl(&dword_181A37000, v75, v368, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification, no backtrace", buf, 0x52u);
            }
          }

          else
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v75 = gconnectionLogObj;
            v320 = type;
            if (os_log_type_enabled(v75, type))
            {
              v321 = nw_endpoint_handler_get_id_string(v453);
              v322 = nw_endpoint_handler_dry_run_string(v453);
              v323 = nw_endpoint_handler_copy_endpoint(v453);
              v324 = nw_endpoint_get_logging_description(v323);
              v325 = nw_endpoint_handler_state_string(v453);
              v326 = nw_endpoint_handler_mode_string(v453);
              v327 = nw_endpoint_handler_copy_current_path(v453);
              *buf = 136448002;
              v473 = "nw_flow_notify";
              v474 = 2082;
              v475 = v321;
              v476 = 2082;
              v477 = v322;
              v478 = 2082;
              v479 = v324;
              v480 = 2082;
              v481 = v325;
              v482 = 2082;
              v483 = v326;
              v484 = 2114;
              v485 = v327;
              v486 = 2080;
              v487 = "fill_connection_uuid";
              _os_log_impl(&dword_181A37000, v75, v320, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Invalid argument passed to %s notification, backtrace limit exceeded", buf, 0x52u);
            }
          }

LABEL_326:

LABEL_327:
          if (v74)
          {
            free(v74);
          }

          goto LABEL_64;
        case 0x1Du:
          v86 = a4;
          v87 = *(v10 + 184);
          v458[0] = MEMORY[0x1E69E9820];
          v458[1] = 3221225472;
          v458[2] = ___ZL14nw_flow_notifyP11nw_protocolS0_31nw_protocol_notification_type_tPvm_block_invoke_93;
          v458[3] = &unk_1E6A3D760;
          v459 = v453;
          v460 = v86;
          v88 = v86;
          nw_queue_context_async(v87, v458);

          goto LABEL_64;
        default:
          goto LABEL_64;
      }
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v32 = gconnectionLogObj;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
LABEL_75:

      goto LABEL_76;
    }

    log = v32;
    v33 = v30;

    v34 = v33;
    v35 = *(v453 + 284);

    v36 = "dry-run ";
    if ((v35 & 1) == 0)
    {
      v36 = "";
    }

    v442 = v36;
    v37 = nw_endpoint_handler_copy_endpoint(v34);
    v38 = v37;
    if (v37)
    {
      v440 = _nw_endpoint_get_logging_description(v37);
    }

    else
    {
      v440 = "<NULL>";
    }

    v48 = v34;
    v49 = v48;
    v50 = v14->state;
    if (v50 > 5)
    {
      v51 = "unknown-state";
    }

    else
    {
      v51 = off_1E6A31048[v50];
    }

    v436 = v33 + 184;

    v52 = v49;
    v53 = v52;
    v54 = v455->mode;
    v438 = v51;
    if (v54 > 2)
    {
      switch(v54)
      {
        case 3:
          v55 = "proxy";
          goto LABEL_71;
        case 4:
          v55 = "fallback";
          goto LABEL_71;
        case 5:
          v55 = "transform";
          goto LABEL_71;
      }
    }

    else
    {
      switch(v54)
      {
        case 0:
          v55 = "path";
          goto LABEL_71;
        case 1:
          v55 = "resolver";
          goto LABEL_71;
        case 2:
          v55 = nw_endpoint_flow_mode_string(v52[33]);
LABEL_71:

          v61 = v53;
          os_unfair_lock_lock(v61 + 28);
          v62 = v61[8];
          os_unfair_lock_unlock(v61 + 28);

          v63 = v62;
          v64 = v63;
          if (a3 > 0x1E)
          {
            v65 = "unknown";
          }

          else
          {
            v65 = off_1E6A33500[a3];
          }

          *buf = 136448002;
          v473 = "nw_flow_notify";
          v474 = 2082;
          v475 = v436;
          v476 = 2082;
          v477 = v442;
          v478 = 2082;
          v479 = v440;
          v480 = 2082;
          v481 = v438;
          v482 = 2082;
          v483 = v55;
          v484 = 2114;
          v485 = v63;
          v486 = 2082;
          v487 = v65;
          _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] received notification %{public}s", buf, 0x52u);

          v32 = log;
          goto LABEL_75;
      }
    }

    v55 = "unknown-mode";
    goto LABEL_71;
  }

LABEL_65:
}

uint64_t ___ZL28nw_http3_save_output_handlerP17nw_protocol_http3P11nw_protocol_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (nw_protocol_metadata_is_quic_connection(a3))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  return 1;
}

void nw_quic_connection_set_keepalive(void *a1, unsigned __int16 a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_keepalive(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_set_keepalive";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_keepalive";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_quic_connection_set_keepalive";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_set_keepalive";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_set_keepalive";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

uint64_t nw_quic_connection_copy_sec_protocol_metadata(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (_nw_protocol_metadata_is_quic_connection(v1))
    {
      v3 = _nw_quic_connection_copy_sec_protocol_metadata(v2);
      goto LABEL_4;
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_quic_connection_copy_sec_protocol_metadata";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v6, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v18 = "nw_quic_connection_copy_sec_protocol_metadata";
          v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata)";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v15 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v18 = "nw_quic_connection_copy_sec_protocol_metadata";
          v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata), backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v14 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v14)
        {
          *buf = 136446210;
          v18 = "nw_quic_connection_copy_sec_protocol_metadata";
          v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata), no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v14)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v18 = "nw_quic_connection_copy_sec_protocol_metadata";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata), dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v7, v8, v13, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v18 = "nw_quic_connection_copy_sec_protocol_metadata";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v15 = 0;
    if (__nwlog_fault(v6, &type, &v15))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v18 = "nw_quic_connection_copy_sec_protocol_metadata";
          v9 = "%{public}s called with null connection_metadata";
LABEL_31:
          _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v15 != 1)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v18 = "nw_quic_connection_copy_sec_protocol_metadata";
          v9 = "%{public}s called with null connection_metadata, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v12)
        {
          *buf = 136446210;
          v18 = "nw_quic_connection_copy_sec_protocol_metadata";
          v9 = "%{public}s called with null connection_metadata, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v12)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v18 = "nw_quic_connection_copy_sec_protocol_metadata";
      v19 = 2082;
      v20 = backtrace_string;
      v13 = "%{public}s called with null connection_metadata, dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_4:

  return v3;
}

uint64_t nw_quic_connection_get_pmtud(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    pmtud = _nw_quic_connection_get_pmtud(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_pmtud";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_pmtud";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_quic_connection_get_pmtud";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_pmtud";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_pmtud";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  pmtud = 0;
LABEL_3:

  return pmtud;
}

id _nw_quic_connection_copy_sec_protocol_metadata(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  v2 = sub_181A93260(a1);
  if (v2 && (v3 = v2, swift_beginAccess(), v4 = *(v3 + 64), , , v4))
  {
    v5 = *(v4 + 40);
    swift_unknownObjectRetain();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t _nw_quic_connection_get_pmtud(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return v6 & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_get_pmtud_ignore_cost(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v6 >> 1) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void nw_http_connection_metadata_set_sec_metadata(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http_connection_metadata_set_sec_metadata";
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
        v23 = "nw_http_connection_metadata_set_sec_metadata";
        v10 = "%{public}s called with null metadata";
LABEL_36:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v20 == 1)
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
          v23 = "nw_http_connection_metadata_set_sec_metadata";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_8;
        }

LABEL_39:
        free(v7);
        goto LABEL_8;
      }

      if (v13)
      {
        *buf = 136446210;
        v23 = "nw_http_connection_metadata_set_sec_metadata";
        v10 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_http_connection_metadata_set_sec_metadata";
        v10 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_connection_definition_definition))
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v17 = __nw_http_connection_metadata_set_sec_metadata_block_invoke;
    v18 = &unk_1E6A3A950;
    v19 = v4;
    handle = _nw_protocol_metadata_get_handle(v3);
    if (handle)
    {
      v17(v16, handle);
    }

    goto LABEL_8;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_http_connection_metadata_set_sec_metadata";
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
      v23 = "nw_http_connection_metadata_set_sec_metadata";
      v10 = "%{public}s metadata must be http_connection";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_http_connection_metadata_set_sec_metadata";
      v10 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
      goto LABEL_36;
    }

    goto LABEL_37;
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
      v23 = "nw_http_connection_metadata_set_sec_metadata";
      v10 = "%{public}s metadata must be http_connection, no backtrace";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v23 = "nw_http_connection_metadata_set_sec_metadata";
    v24 = 2082;
    v25 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_8:
}

uint64_t nw_quic_connection_get_pmtud_ignore_cost(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    pmtud_ignore_cost = _nw_quic_connection_get_pmtud_ignore_cost(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_pmtud_ignore_cost";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_pmtud_ignore_cost";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_quic_connection_get_pmtud_ignore_cost";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_pmtud_ignore_cost";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_pmtud_ignore_cost";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  pmtud_ignore_cost = 0;
LABEL_3:

  return pmtud_ignore_cost;
}

uint64_t nw_quic_connection_get_pmtud_update_interval(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_connection(v1))
  {
    pmtud_update_interval = _nw_quic_connection_get_pmtud_update_interval(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_pmtud_update_interval";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_pmtud_update_interval";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_quic_connection_get_pmtud_update_interval";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_connection_get_pmtud_update_interval";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_pmtud_update_interval";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

  pmtud_update_interval = 0;
LABEL_3:

  return pmtud_update_interval;
}

void nw_http3_setup_connection_if_needed(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = (a1 + 1397);
    v3 = *(a1 + 1397);
    if ((v3 & 0x800) != 0)
    {
      return;
    }

    if ((*(a1 + 1397) & 0x400) == 0)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = *(v4 + 24);
        if (v5)
        {
          v6 = *(v5 + 232);
          if (v6)
          {
            if (v6())
            {
              v7 = 1024;
            }

            else
            {
              v7 = 0;
            }

            v3 = *v2 & 0xFBFF | v7;
            *v2 = v3;
          }
        }
      }
    }

    if ((v3 & 0x20) != 0 && !uuid_is_null((a1 + 840)))
    {
      v18 = *(a1 + 1128);
      if (v18)
      {
        *type = 0;
        v19 = nw_path_copy_token_from_agent(v18, (a1 + 840), type);
        if (v19)
        {
          v20 = v19;
          if ((*(a1 + 1399) & 0x20) == 0 && gLogDatapath == 1)
          {
            v58 = __nwlog_obj();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
            {
              v59 = *(a1 + 1304);
              *buf = 136446978;
              *&buf[4] = "nw_http3_setup_connection_if_needed";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 1313;
              *&buf[22] = 2080;
              v63 = " ";
              LOWORD(v64) = 1024;
              *(&v64 + 2) = v59;
              _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> received session to resume", buf, 0x26u);
            }
          }

          nw_http3_parse_resumable_session_data(a1, v20, *type);
          free(v20);
        }
      }
    }

    if ((*v2 & 0x61) == 0x20 && uuid_is_null((a1 + 840)))
    {
      v8 = nw_storage_copy_shared();
      v9 = *(a1 + 1112);
      if (v9)
      {
        v10 = os_retain(v9);
      }

      else
      {
        v10 = 0;
      }

      while (1)
      {
        v21 = v10;
        v22 = nw_endpoint_copy_parent_endpoint(v10);
        if (!v22)
        {
          break;
        }

        v10 = v22;
        if (v21)
        {
          os_release(v21);
        }
      }

      v23 = *(a1 + 1056);
      v24 = *(a1 + 1272);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL32nw_http3_start_0rtt_state_lookupP17nw_protocol_http3_block_invoke;
      v63 = &unk_1E6A38DF8;
      v64 = v23;
      nw_storage_lookup_http_early_data_state(v8, 0, v10, v24, buf);
      if (v10)
      {
        os_release(v10);
      }

      if (v8)
      {
        os_release(v8);
      }

      return;
    }

    if (!*(a1 + 1000))
    {
      v11 = mach_continuous_approximate_time();
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      *(a1 + 1000) = v12;
    }

    if ((*(a1 + 1399) & 0x20) == 0 && gLogDatapath == 1)
    {
      v41 = __nwlog_obj();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v42 = *(a1 + 1304);
        *buf = 136446978;
        *&buf[4] = "nw_http3_setup_connection_if_needed";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 1313;
        *&buf[22] = 2080;
        v63 = " ";
        LOWORD(v64) = 1024;
        *(&v64 + 2) = v42;
        _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> starting control stream", buf, 0x26u);
      }
    }

    *v2 |= 0x800u;
    if (!*(a1 + 1144))
    {
      *(a1 + 1144) = nw_http3_fix_quic_parameters(a1, *(a1 + 1136), 1, 1);
      if ((*(a1 + 1399) & 0x20) == 0 && gLogDatapath == 1)
      {
        v44 = __nwlog_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          v45 = *(a1 + 1304);
          v46 = *(a1 + 1144);
          *buf = 136447234;
          *&buf[4] = "nw_http3_setup_connection_if_needed";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 1313;
          *&buf[22] = 2080;
          v63 = " ";
          LOWORD(v64) = 1024;
          *(&v64 + 2) = v45;
          HIWORD(v64) = 2048;
          v65 = v46;
          _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> set up unidirectional parameters %p", buf, 0x30u);
        }
      }
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = *(v13 + 24);
      if (v14)
      {
        v15 = *v14;
        if (v15)
        {
          v15(*(a1 + 32), a1);
          goto LABEL_31;
        }
      }

      __nwlog_obj();
      v29 = *(v13 + 16);
      if (!v29)
      {
        v29 = "invalid";
      }
    }

    else
    {
      __nwlog_obj();
      v29 = "invalid";
    }

    *buf = 136446466;
    *&buf[4] = "nw_http3_setup_connection_if_needed";
    *&buf[12] = 2082;
    *&buf[14] = v29;
    v33 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (__nwlog_fault(v33, type, &v61))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v34 = __nwlog_obj();
        v35 = type[0];
        if (!os_log_type_enabled(v34, type[0]))
        {
          goto LABEL_97;
        }

        v36 = "invalid";
        if (v13 && *(v13 + 16))
        {
          v36 = *(v13 + 16);
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_setup_connection_if_needed";
        *&buf[12] = 2082;
        *&buf[14] = v36;
        v37 = "%{public}s protocol %{public}s has invalid add_input_handler callback";
LABEL_96:
        _os_log_impl(&dword_181A37000, v34, v35, v37, buf, 0x16u);
        goto LABEL_97;
      }

      if (v61 != 1)
      {
        v34 = __nwlog_obj();
        v35 = type[0];
        if (!os_log_type_enabled(v34, type[0]))
        {
          goto LABEL_97;
        }

        v43 = "invalid";
        if (v13 && *(v13 + 16))
        {
          v43 = *(v13 + 16);
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_setup_connection_if_needed";
        *&buf[12] = 2082;
        *&buf[14] = v43;
        v37 = "%{public}s protocol %{public}s has invalid add_input_handler callback, backtrace limit exceeded";
        goto LABEL_96;
      }

      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v35 = type[0];
      v39 = os_log_type_enabled(v34, type[0]);
      if (!backtrace_string)
      {
        if (!v39)
        {
          goto LABEL_97;
        }

        v47 = "invalid";
        if (v13 && *(v13 + 16))
        {
          v47 = *(v13 + 16);
        }

        *buf = 136446466;
        *&buf[4] = "nw_http3_setup_connection_if_needed";
        *&buf[12] = 2082;
        *&buf[14] = v47;
        v37 = "%{public}s protocol %{public}s has invalid add_input_handler callback, no backtrace";
        goto LABEL_96;
      }

      if (v39)
      {
        v40 = "invalid";
        if (v13 && *(v13 + 16))
        {
          v40 = *(v13 + 16);
        }

        *buf = 136446722;
        *&buf[4] = "nw_http3_setup_connection_if_needed";
        *&buf[12] = 2082;
        *&buf[14] = v40;
        *&buf[22] = 2082;
        v63 = backtrace_string;
        _os_log_impl(&dword_181A37000, v34, v35, "%{public}s protocol %{public}s has invalid add_input_handler callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
    }

LABEL_97:
    if (v33)
    {
      free(v33);
    }

    if (!v13)
    {
      __nwlog_obj();
      v30 = "invalid";
      goto LABEL_101;
    }

LABEL_31:
    v16 = *(v13 + 24);
    if (v16)
    {
      v17 = *(v16 + 24);
      if (v17)
      {
        v17(v13, a1);
LABEL_34:
        nw_http3_control_stream_process_output(a1);
        return;
      }
    }

    __nwlog_obj();
    v30 = *(v13 + 16);
    if (!v30)
    {
      v30 = "invalid";
    }

LABEL_101:
    *buf = 136446466;
    *&buf[4] = "nw_http3_setup_connection_if_needed";
    *&buf[12] = 2082;
    *&buf[14] = v30;
    v48 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (!__nwlog_fault(v48, type, &v61))
    {
      goto LABEL_127;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v50 = type[0];
      if (!os_log_type_enabled(v49, type[0]))
      {
        goto LABEL_127;
      }

      v51 = "invalid";
      if (v13 && *(v13 + 16))
      {
        v51 = *(v13 + 16);
      }

      *buf = 136446466;
      *&buf[4] = "nw_http3_setup_connection_if_needed";
      *&buf[12] = 2082;
      *&buf[14] = v51;
      v52 = "%{public}s protocol %{public}s has invalid connect callback";
    }

    else if (v61 == 1)
    {
      v53 = __nw_create_backtrace_string();
      v49 = __nwlog_obj();
      v50 = type[0];
      v54 = os_log_type_enabled(v49, type[0]);
      if (v53)
      {
        if (v54)
        {
          v55 = "invalid";
          if (v13 && *(v13 + 16))
          {
            v55 = *(v13 + 16);
          }

          *buf = 136446722;
          *&buf[4] = "nw_http3_setup_connection_if_needed";
          *&buf[12] = 2082;
          *&buf[14] = v55;
          *&buf[22] = 2082;
          v63 = v53;
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s protocol %{public}s has invalid connect callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v53);
        goto LABEL_127;
      }

      if (!v54)
      {
LABEL_127:
        if (v48)
        {
          free(v48);
        }

        goto LABEL_34;
      }

      v57 = "invalid";
      if (v13 && *(v13 + 16))
      {
        v57 = *(v13 + 16);
      }

      *buf = 136446466;
      *&buf[4] = "nw_http3_setup_connection_if_needed";
      *&buf[12] = 2082;
      *&buf[14] = v57;
      v52 = "%{public}s protocol %{public}s has invalid connect callback, no backtrace";
    }

    else
    {
      v49 = __nwlog_obj();
      v50 = type[0];
      if (!os_log_type_enabled(v49, type[0]))
      {
        goto LABEL_127;
      }

      v56 = "invalid";
      if (v13 && *(v13 + 16))
      {
        v56 = *(v13 + 16);
      }

      *buf = 136446466;
      *&buf[4] = "nw_http3_setup_connection_if_needed";
      *&buf[12] = 2082;
      *&buf[14] = v56;
      v52 = "%{public}s protocol %{public}s has invalid connect callback, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v49, v50, v52, buf, 0x16u);
    goto LABEL_127;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_setup_connection_if_needed";
  v25 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v61 = 0;
  if (__nwlog_fault(v25, type, &v61))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type[0];
      if (!os_log_type_enabled(v26, type[0]))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http3_setup_connection_if_needed";
      v28 = "%{public}s called with null http3";
      goto LABEL_131;
    }

    if (v61 != 1)
    {
      v26 = __nwlog_obj();
      v27 = type[0];
      if (!os_log_type_enabled(v26, type[0]))
      {
        goto LABEL_132;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http3_setup_connection_if_needed";
      v28 = "%{public}s called with null http3, backtrace limit exceeded";
      goto LABEL_131;
    }

    v31 = __nw_create_backtrace_string();
    v26 = __nwlog_obj();
    v27 = type[0];
    v32 = os_log_type_enabled(v26, type[0]);
    if (v31)
    {
      if (v32)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http3_setup_connection_if_needed";
        *&buf[12] = 2082;
        *&buf[14] = v31;
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null http3, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v31);
      goto LABEL_132;
    }

    if (v32)
    {
      *buf = 136446210;
      *&buf[4] = "nw_http3_setup_connection_if_needed";
      v28 = "%{public}s called with null http3, no backtrace";
LABEL_131:
      _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
    }
  }

LABEL_132:
  if (v25)
  {
    free(v25);
  }
}

uint64_t sub_181D5C2CC@<X0>(uint64_t *a1@<X8>)
{
  result = QUICStreamProtocol.QUICStreamOptions.deepCopy()();
  *a1 = result;
  return result;
}

uint64_t _nw_quic_connection_get_pmtud_update_interval(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 128);
  v4 = v2;
  swift_beginAccess();
  v5 = *(v4 + v3);

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateInterval);

  return v6;
}

void NWConnection.stateUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  os_unfair_lock_lock(v6 + 24);
  sub_181D8E508(&v6[4], aBlock);
  os_unfair_lock_unlock(v6 + 24);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v7 = *(v2 + 16);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = a1;
    v8[4] = a2;
    aBlock[4] = sub_181D90260;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D901F0;
    aBlock[3] = &block_descriptor_30;
    v9 = _Block_copy(aBlock);

    sub_181AA39C0(a1);

    nw_connection_set_state_changed_handler(v7, v9);
    sub_181A554F4(a1);
    _Block_release(v9);
  }

  else
  {
    sub_181A554F4(a1);
  }
}

uint64_t sub_181D5C500()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

void nw_quic_stream_set_is_unidirectional(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_options_is_quic_stream(v3))
  {
    _nw_quic_stream_set_is_unidirectional(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_is_unidirectional";
  v5 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v5, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_is_unidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
      }
    }

    else
    {
      if (v11 == 1)
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
            v14 = "nw_quic_stream_set_is_unidirectional";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_options_is_quic_stream(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_is_unidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_is_unidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

uint64_t __nw_protocol_instance_report_ready_block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  extra = nw_hash_node_get_extra(a2);
  v5 = *(extra + 52);
  if ((v5 & 0x10) == 0)
  {
    v6 = extra;
    if ((v5 & 4) != 0)
    {
      object = nw_hash_node_get_object(a2);
      v9 = *(a1 + 32);
      if (nw_protocol_definition_get_message_is_stream(v9[1]) && *(v9 - 6) == object)
      {

        v10 = -2;
      }

      else
      {

        v10 = object;
        if (*(a1 + 40) != -1 && object != -2)
        {
          return 1;
        }
      }

      *(v6 + 52) |= 0x10u;
      v11 = *(a1 + 32);
      if (v11)
      {
        p_paths_log_id_num = &v11[-1].paths_log_id_num;
      }

      else
      {
        p_paths_log_id_num = 0;
      }

      nw_protocol_implementation_report_connected(v11, p_paths_log_id_num, object, v10);
    }

    else
    {
      v7 = *(a1 + 32);
      if ((!v7 || (*(v7 + 413) & 0x80000000) == 0) && gLogDatapath == 1)
      {
        v14 = __nwlog_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = *(a1 + 32);
          v16 = *(a1 + 40);
          v17 = v15 == 0;
          if (v15)
          {
            v18 = (v15 + 415);
          }

          else
          {
            v18 = "";
          }

          v21 = "nw_protocol_instance_report_ready_block_invoke";
          v22 = 2082;
          v19 = " ";
          v20 = 136446978;
          if (v17)
          {
            v19 = "";
          }

          v23 = v18;
          v24 = 2080;
          v25 = v19;
          v26 = 2048;
          v27 = v16;
          _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDelaying the delivery of connected() on flow %llx", &v20, 0x2Au);
        }

        v5 = *(v6 + 52);
      }

      *(v6 + 52) = v5 | 0x30;
    }
  }

  return 1;
}

uint64_t _nw_quic_stream_set_is_unidirectional_0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  result = sub_181CB38E8(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + 64);
      if (a2)
      {
        if ((*(v7 + 64) & 1) == 0)
        {
          v9 = v8 | 1;
LABEL_8:
          *(v7 + 64) = v9;
        }
      }

      else if (*(v7 + 64))
      {
        v9 = v8 & 0xFE;
        goto LABEL_8;
      }
    }
  }

  return result;
}

void nw_protocol_http3_add_alpn_to_quic_options(nw_protocol_options *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = nw_quic_stream_copy_shared_connection_options(a1);
  v2 = nw_quic_connection_copy_sec_protocol_options(v1);
  v3 = sec_protocol_options_copy_transport_specific_application_protocol();
  v4 = v3;
  if (v3 && xpc_array_get_count(v3))
  {
LABEL_19:
    xpc_release(v4);
    goto LABEL_20;
  }

  sec_protocol_options_add_transport_specific_application_protocol();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v18 = "nw_protocol_http3_add_alpn_to_quic_options";
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
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_16;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http3_add_alpn_to_quic_options";
      v8 = "%{public}s Missing h3 alpn from quic options. Protocol http3 will stop adding it for you in the future since it prevents joining from working properly.";
LABEL_14:
      v13 = v6;
      v14 = v7;
LABEL_15:
      _os_log_impl(&dword_181A37000, v13, v14, v8, buf, 0xCu);
      goto LABEL_16;
    }

    if (v15 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_16;
      }

      *buf = 136446210;
      v18 = "nw_protocol_http3_add_alpn_to_quic_options";
      v8 = "%{public}s Missing h3 alpn from quic options. Protocol http3 will stop adding it for you in the future since it prevents joining from working properly., backtrace limit exceeded";
      goto LABEL_14;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    v12 = os_log_type_enabled(gLogObj, type);
    if (backtrace_string)
    {
      if (v12)
      {
        *buf = 136446466;
        v18 = "nw_protocol_http3_add_alpn_to_quic_options";
        v19 = 2082;
        v20 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Missing h3 alpn from quic options. Protocol http3 will stop adding it for you in the future since it prevents joining from working properly., dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    else if (v12)
    {
      *buf = 136446210;
      v18 = "nw_protocol_http3_add_alpn_to_quic_options";
      v8 = "%{public}s Missing h3 alpn from quic options. Protocol http3 will stop adding it for you in the future since it prevents joining from working properly., no backtrace";
      v13 = v10;
      v14 = v11;
      goto LABEL_15;
    }
  }

LABEL_16:
  if (v5)
  {
    free(v5);
  }

  if (v4)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v1)
  {
    os_release(v1);
  }

  if (v2)
  {
    os_release(v2);
  }
}

void nw_protocol_options_inherit_log_id(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_options_inherit_log_id";
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
        v19 = "nw_protocol_options_inherit_log_id";
        v10 = "%{public}s called with null options";
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
          v19 = "nw_protocol_options_inherit_log_id";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
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
        v19 = "nw_protocol_options_inherit_log_id";
        v10 = "%{public}s called with null options, no backtrace";
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
        v19 = "nw_protocol_options_inherit_log_id";
        v10 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    _nw_protocol_options_inherit_log_id(v3, v4);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_options_inherit_log_id";
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
      v19 = "nw_protocol_options_inherit_log_id";
      v10 = "%{public}s called with null new_options";
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
      v19 = "nw_protocol_options_inherit_log_id";
      v10 = "%{public}s called with null new_options, backtrace limit exceeded";
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
      v19 = "nw_protocol_options_inherit_log_id";
      v10 = "%{public}s called with null new_options, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_protocol_options_inherit_log_id";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null new_options, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

void nw_endpoint_flow_reinitialize_protocol_for_handling_requests(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_endpoint_handler_get_mode";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v6, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v29 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v26 == 1)
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
            v29 = "nw_endpoint_handler_get_mode";
            v30 = 2082;
            v31 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (v11)
        {
          *buf = 136446210;
          v29 = "nw_endpoint_handler_get_mode";
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
          v29 = "nw_endpoint_handler_get_mode";
          _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_22:
    if (v6)
    {
      free(v6);
    }

    mode = 0;
    goto LABEL_25;
  }

  mode = v1->mode;

  if (mode == 2)
  {
    v4 = nw_endpoint_handler_copy_flow(v2);
    if ((*(v4 + 32) & 8) != 0)
    {
      *(v4 + 20) = nw_flow_output_available;
      *(v4 + 19) = nw_flow_input_available;
      *(v4 + 34) = nw_flow_input_finished;
      *(v4 + 17) = nw_flow_disconnected;
      *(v4 + 31) = nw_flow_notify;
      *(v4 + 33) = nw_flow_supports_external_data;
    }

    goto LABEL_46;
  }

LABEL_25:
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
  v29 = "nw_endpoint_flow_reinitialize_protocol_for_handling_requests";
  v30 = 2082;
  v31 = v14;
  v32 = 2082;
  v33 = "flow";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (!__nwlog_fault(v15, &type, &v26))
  {
LABEL_44:
    if (!v15)
    {
      goto LABEL_46;
    }

LABEL_45:
    free(v15);
    goto LABEL_46;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v17 = type;
    if (os_log_type_enabled(v16, type))
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
      v29 = "nw_endpoint_flow_reinitialize_protocol_for_handling_requests";
      v30 = 2082;
      v31 = v18;
      v32 = 2082;
      v33 = "flow";
      _os_log_impl(&dword_181A37000, v16, v17, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
    }

LABEL_43:

    goto LABEL_44;
  }

  if (v26 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v23 = type;
    if (os_log_type_enabled(v16, type))
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
      v29 = "nw_endpoint_flow_reinitialize_protocol_for_handling_requests";
      v30 = 2082;
      v31 = v24;
      v32 = 2082;
      v33 = "flow";
      _os_log_impl(&dword_181A37000, v16, v23, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_43;
  }

  v19 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  v20 = type;
  v21 = os_log_type_enabled(v16, type);
  if (!v19)
  {
    if (v21)
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
      v29 = "nw_endpoint_flow_reinitialize_protocol_for_handling_requests";
      v30 = 2082;
      v31 = v25;
      v32 = 2082;
      v33 = "flow";
      _os_log_impl(&dword_181A37000, v16, v20, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
    }

    goto LABEL_43;
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
    v29 = "nw_endpoint_flow_reinitialize_protocol_for_handling_requests";
    v30 = 2082;
    v31 = v22;
    v32 = 2082;
    v33 = "flow";
    v34 = 2082;
    v35 = v19;
    _os_log_impl(&dword_181A37000, v16, v20, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v19);
  if (v15)
  {
    goto LABEL_45;
  }

LABEL_46:
}

void nw_protocol_http3_stream_connected(nw_protocol *a1, nw_protocol *a2)
{
  v111 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v98 = "nw_protocol_http3_stream_connected";
    v46 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (!__nwlog_fault(v46, type, &v96))
    {
      goto LABEL_131;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (!os_log_type_enabled(v47, type[0]))
      {
        goto LABEL_131;
      }

      *buf = 136446210;
      v98 = "nw_protocol_http3_stream_connected";
      v49 = "%{public}s called with null protocol";
      goto LABEL_130;
    }

    if (v96 != 1)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (!os_log_type_enabled(v47, type[0]))
      {
        goto LABEL_131;
      }

      *buf = 136446210;
      v98 = "nw_protocol_http3_stream_connected";
      v49 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_130;
    }

    backtrace_string = __nw_create_backtrace_string();
    v47 = __nwlog_obj();
    v48 = type[0];
    v67 = os_log_type_enabled(v47, type[0]);
    if (!backtrace_string)
    {
      if (!v67)
      {
        goto LABEL_131;
      }

      *buf = 136446210;
      v98 = "nw_protocol_http3_stream_connected";
      v49 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_130;
    }

    if (v67)
    {
      *buf = 136446466;
      v98 = "nw_protocol_http3_stream_connected";
      v99 = 2082;
      v100 = backtrace_string;
      _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_131:
    if (!v46)
    {
      return;
    }

    goto LABEL_132;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v98 = "nw_protocol_http3_stream_connected";
    v46 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (!__nwlog_fault(v46, type, &v96))
    {
      goto LABEL_131;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (!os_log_type_enabled(v47, type[0]))
      {
        goto LABEL_131;
      }

      *buf = 136446210;
      v98 = "nw_protocol_http3_stream_connected";
      v49 = "%{public}s called with null http3_stream";
      goto LABEL_130;
    }

    if (v96 != 1)
    {
      v47 = __nwlog_obj();
      v48 = type[0];
      if (!os_log_type_enabled(v47, type[0]))
      {
        goto LABEL_131;
      }

      *buf = 136446210;
      v98 = "nw_protocol_http3_stream_connected";
      v49 = "%{public}s called with null http3_stream, backtrace limit exceeded";
      goto LABEL_130;
    }

    v68 = __nw_create_backtrace_string();
    v47 = __nwlog_obj();
    v48 = type[0];
    v69 = os_log_type_enabled(v47, type[0]);
    if (v68)
    {
      if (v69)
      {
        *buf = 136446466;
        v98 = "nw_protocol_http3_stream_connected";
        v99 = 2082;
        v100 = v68;
        _os_log_impl(&dword_181A37000, v47, v48, "%{public}s called with null http3_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v68);
      if (!v46)
      {
        return;
      }

LABEL_132:
      free(v46);
      return;
    }

    if (v69)
    {
      *buf = 136446210;
      v98 = "nw_protocol_http3_stream_connected";
      v49 = "%{public}s called with null http3_stream, no backtrace";
LABEL_130:
      _os_log_impl(&dword_181A37000, v47, v48, v49, buf, 0xCu);
      goto LABEL_131;
    }

    goto LABEL_131;
  }

  if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
  {
    v50 = __nwlog_obj();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v51 = *(*(handle + 43) + 1304);
      v52 = *(handle + 30);
      *buf = 136447234;
      v98 = "nw_protocol_http3_stream_connected";
      v99 = 2082;
      v100 = handle + 632;
      v101 = 2080;
      v102 = " ";
      v103 = 1024;
      v104 = v51;
      v105 = 2048;
      v106 = v52;
      _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> Got a connected event from the lower layer", buf, 0x30u);
    }
  }

  default_input_handler = a1->default_input_handler;
  if (default_input_handler)
  {
    callbacks = default_input_handler->callbacks;
    if (callbacks)
    {
      connected = callbacks->connected;
      if (connected)
      {
        connected();
        goto LABEL_9;
      }
    }
  }

  __nwlog_obj();
  v31 = a1->default_input_handler;
  v32 = "invalid";
  if (v31)
  {
    identifier = v31->identifier;
    if (identifier)
    {
      v32 = identifier;
    }
  }

  *buf = 136446466;
  v98 = "nw_protocol_http3_stream_connected";
  v99 = 2082;
  v100 = v32;
  v34 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v96 = 0;
  if (__nwlog_fault(v34, type, &v96))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (!os_log_type_enabled(v35, type[0]))
      {
        goto LABEL_105;
      }

      v37 = a1->default_input_handler;
      v38 = "invalid";
      if (v37)
      {
        v39 = v37->identifier;
        if (v39)
        {
          v38 = v39;
        }
      }

      *buf = 136446466;
      v98 = "nw_protocol_http3_stream_connected";
      v99 = 2082;
      v100 = v38;
      v40 = "%{public}s protocol %{public}s has invalid connected callback";
      goto LABEL_104;
    }

    if (v96 != 1)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (!os_log_type_enabled(v35, type[0]))
      {
        goto LABEL_105;
      }

      v53 = a1->default_input_handler;
      v54 = "invalid";
      if (v53)
      {
        v55 = v53->identifier;
        if (v55)
        {
          v54 = v55;
        }
      }

      *buf = 136446466;
      v98 = "nw_protocol_http3_stream_connected";
      v99 = 2082;
      v100 = v54;
      v40 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
      goto LABEL_104;
    }

    v41 = __nw_create_backtrace_string();
    v35 = __nwlog_obj();
    v36 = type[0];
    v42 = os_log_type_enabled(v35, type[0]);
    if (v41)
    {
      if (v42)
      {
        v43 = a1->default_input_handler;
        v44 = "invalid";
        if (v43)
        {
          v45 = v43->identifier;
          if (v45)
          {
            v44 = v45;
          }
        }

        *buf = 136446722;
        v98 = "nw_protocol_http3_stream_connected";
        v99 = 2082;
        v100 = v44;
        v101 = 2082;
        v102 = v41;
        _os_log_impl(&dword_181A37000, v35, v36, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v41);
      goto LABEL_105;
    }

    if (v42)
    {
      v70 = a1->default_input_handler;
      v71 = "invalid";
      if (v70)
      {
        v72 = v70->identifier;
        if (v72)
        {
          v71 = v72;
        }
      }

      *buf = 136446466;
      v98 = "nw_protocol_http3_stream_connected";
      v99 = 2082;
      v100 = v71;
      v40 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
LABEL_104:
      _os_log_impl(&dword_181A37000, v35, v36, v40, buf, 0x16u);
    }
  }

LABEL_105:
  if (v34)
  {
    free(v34);
  }

LABEL_9:
  output_handler = a1->output_handler;
  if (output_handler != a2)
  {
    if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(*(handle + 43) + 1304);
        v11 = *(handle + 30);
        v12 = a1->output_handler;
        *buf = 136447490;
        v98 = "nw_protocol_http3_stream_connected";
        v99 = 2082;
        v100 = handle + 632;
        v101 = 2080;
        v102 = " ";
        v103 = 1024;
        v104 = v10;
        v105 = 2048;
        v106 = v11;
        v107 = 2048;
        v108 = v12;
        v13 = "%{public}s %{public}s%s<i%u:s%llu> connected protocol is not our output_handler (%p), ignoring";
        v14 = v9;
LABEL_14:
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, v13, buf, 0x3Au);
        return;
      }
    }

    return;
  }

  if ((nw_protocol_waiting_for_output(a1->output_handler->flow_id, handle) & 1) == 0)
  {
    *(*(handle + 43) + 1397) |= 0x10u;
    if ((*(handle + 366) & 2) != 0)
    {
      nw_http_transaction_metadata_set_first_on_connection(*(handle + 50));
      nw_http_connection_metadata_extract_sec_metadata_marshaled_fields(*(*(handle + 43) + 1264));
    }

    nw_http_transaction_metadata_set_connection_metadata(*(handle + 50), *(*(handle + 43) + 1264));
  }

  if (a2)
  {
    if (!*(handle + 53))
    {
      v15 = output_handler->callbacks;
      if (v15)
      {
        copy_info = v15->copy_info;
        if (copy_info)
        {
          v17 = copy_info(output_handler, 255, handle);
          *type = 0;
          v93 = type;
          v94 = 0x2000000000;
          v95 = 0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 0x40000000;
          aBlock[2] = ___ZL34nw_protocol_http3_stream_connectedP11nw_protocolS0__block_invoke;
          aBlock[3] = &unk_1E6A38E20;
          aBlock[4] = type;
          aBlock[5] = handle;
          if (v17)
          {
            v18 = v17;
            _nw_array_apply(v17, aBlock);
            os_release(v18);
            if (v93[24])
            {
              nw_http_transaction_metadata_set_stream_id(*(handle + 50), *(handle + 30));
              if ((*(handle + 366) & 0x2000) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v19 = gLogObj;
                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                {
                  v20 = *(*(handle + 43) + 1304);
                  v21 = *(handle + 30);
                  *buf = 136447746;
                  v98 = "nw_protocol_http3_stream_connected";
                  v99 = 2082;
                  v100 = handle + 632;
                  v101 = 2080;
                  v102 = " ";
                  v103 = 1024;
                  v104 = v20;
                  v105 = 2048;
                  v106 = v21;
                  v107 = 2048;
                  v108 = handle;
                  v109 = 2048;
                  v110 = v21;
                  _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:s%llu> http3 stream %p assigned ID %llu", buf, 0x44u);
                }
              }
            }
          }

          _Block_object_dispose(type, 8);
        }
      }
    }
  }

  if (!a1->default_input_handler)
  {
    if ((*(handle + 366) & 0x2000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v28 = *(*(handle + 43) + 1304);
        v29 = *(handle + 30);
        *buf = 136447234;
        v98 = "nw_protocol_http3_stream_connected";
        v99 = 2082;
        v100 = handle + 632;
        v101 = 2080;
        v102 = " ";
        v103 = 1024;
        v104 = v28;
        v105 = 2048;
        v106 = v29;
        _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> No input handler found, ignoring connected call", buf, 0x30u);
      }
    }

    return;
  }

  if ((*(handle + 366) & 0x2000) == 0 && gLogDatapath == 1)
  {
    v78 = __nwlog_obj();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
    {
      v79 = *(*(handle + 43) + 1304);
      v80 = *(handle + 30);
      *buf = 136447746;
      v98 = "nw_protocol_http3_stream_connected";
      v99 = 2082;
      v100 = handle + 632;
      v101 = 2080;
      v102 = " ";
      v103 = 1024;
      v104 = v79;
      v105 = 2048;
      v106 = v80;
      v107 = 2048;
      v108 = a1;
      v109 = 2048;
      v110 = a2;
      _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> http3 stream %p connected with output_handler %p", buf, 0x44u);
    }
  }

  v22 = *(handle + 43);
  if (!v22 || *(v22 + 1288))
  {
    handle[734] |= 0x20u;
    v23 = *(handle + 50);
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 0x40000000;
    v90[2] = ___ZL34nw_protocol_http3_stream_connectedP11nw_protocolS0__block_invoke_107;
    v90[3] = &__block_descriptor_tmp_115_65047;
    v90[4] = handle;
    nw_http_transaction_metadata_set_event_handler(v23, v90);
    *(handle + 366) = *(handle + 366) & 0xFCFF | 0x100;
    nw_http3_signal_output_pending(*(handle + 43), 1);
    v24 = a1->default_input_handler;
    if (v24)
    {
      v25 = v24->callbacks;
      if (v25)
      {
        v26 = v25->connected;
        if (v26)
        {
          v26(v24, a1);
LABEL_38:
          nw_http3_signal_output_pending(*(handle + 43), 0);
          return;
        }
      }
    }

    __nwlog_obj();
    v56 = a1->default_input_handler;
    v57 = "invalid";
    if (v56)
    {
      v58 = v56->identifier;
      if (v58)
      {
        v57 = v58;
      }
    }

    *buf = 136446466;
    v98 = "nw_protocol_http3_stream_connected";
    v99 = 2082;
    v100 = v57;
    v59 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (__nwlog_fault(v59, type, &v96))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v60 = __nwlog_obj();
        v61 = type[0];
        if (!os_log_type_enabled(v60, type[0]))
        {
          goto LABEL_141;
        }

        v62 = a1->default_input_handler;
        v63 = "invalid";
        if (v62)
        {
          v64 = v62->identifier;
          if (v64)
          {
            v63 = v64;
          }
        }

        *buf = 136446466;
        v98 = "nw_protocol_http3_stream_connected";
        v99 = 2082;
        v100 = v63;
        v65 = "%{public}s protocol %{public}s has invalid connected callback";
        goto LABEL_140;
      }

      if (v96 != 1)
      {
        v60 = __nwlog_obj();
        v61 = type[0];
        if (!os_log_type_enabled(v60, type[0]))
        {
          goto LABEL_141;
        }

        v81 = a1->default_input_handler;
        v82 = "invalid";
        if (v81)
        {
          v83 = v81->identifier;
          if (v83)
          {
            v82 = v83;
          }
        }

        *buf = 136446466;
        v98 = "nw_protocol_http3_stream_connected";
        v99 = 2082;
        v100 = v82;
        v65 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
        goto LABEL_140;
      }

      v73 = __nw_create_backtrace_string();
      v60 = __nwlog_obj();
      v61 = type[0];
      v74 = os_log_type_enabled(v60, type[0]);
      if (v73)
      {
        if (v74)
        {
          v75 = a1->default_input_handler;
          v76 = "invalid";
          if (v75)
          {
            v77 = v75->identifier;
            if (v77)
            {
              v76 = v77;
            }
          }

          *buf = 136446722;
          v98 = "nw_protocol_http3_stream_connected";
          v99 = 2082;
          v100 = v76;
          v101 = 2082;
          v102 = v73;
          _os_log_impl(&dword_181A37000, v60, v61, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v73);
        goto LABEL_141;
      }

      if (v74)
      {
        v87 = a1->default_input_handler;
        v88 = "invalid";
        if (v87)
        {
          v89 = v87->identifier;
          if (v89)
          {
            v88 = v89;
          }
        }

        *buf = 136446466;
        v98 = "nw_protocol_http3_stream_connected";
        v99 = 2082;
        v100 = v88;
        v65 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
LABEL_140:
        _os_log_impl(&dword_181A37000, v60, v61, v65, buf, 0x16u);
      }
    }

LABEL_141:
    if (v59)
    {
      free(v59);
    }

    goto LABEL_38;
  }

  v30 = *(handle + 366);
  *(handle + 366) = v30 | 0x200;
  if ((v30 & 0x2000) == 0 && gLogDatapath == 1)
  {
    v84 = __nwlog_obj();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
    {
      v85 = *(*(handle + 43) + 1304);
      v86 = *(handle + 30);
      *buf = 136447490;
      v98 = "nw_protocol_http3_stream_connected";
      v99 = 2082;
      v100 = handle + 632;
      v101 = 2080;
      v102 = " ";
      v103 = 1024;
      v104 = v85;
      v105 = 2048;
      v106 = v86;
      v107 = 2048;
      v108 = v86;
      v13 = "%{public}s %{public}s%s<i%u:s%llu> Pending connected event for stream %llu until SETTINGS are sent";
      v14 = v84;
      goto LABEL_14;
    }
  }
}
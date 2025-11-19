uint64_t _nw_quic_connection_execute_session_state_update_block(uint64_t a1)
{
  v2 = sub_182AD2868();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  sub_182AD2818();
  sub_182AD2818();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v9 = sub_181AA8420(a1);
  if (v9 && (v10 = *(*v9 + 128), v11 = v9, swift_beginAccess(), v12 = *(v11 + v10), , , v12))
  {
    v13 = sub_181D7D470(v8, v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  return v13 & 1;
}

uint64_t sub_181D7D470(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  v3 = sub_182AD27A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_182AD27C8();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_182AD2868();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v13;
  v16 = *(v2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sessionStateUpdateBlock);
  if (!v16)
  {
    return 0;
  }

  v31 = v6;
  v17 = *(v2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sessionStateUpdateQueue);
  if (!v17)
  {
    return 0;
  }

  v30 = v3;
  v18 = *(v9 + 16);
  v18(&v30 - v13, v32, v8, v14);
  (v18)(v11, v33, v8);
  v19 = *(v9 + 80);
  v20 = (v19 + 24) & ~v19;
  v33 = v4;
  v21 = (v10 + v19 + v20) & ~v19;
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  v23 = *(v9 + 32);
  v23(v22 + v20, v15, v8);
  v23(v22 + v21, v11, v8);
  aBlock[4] = sub_182281168;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7D048;
  aBlock[3] = &block_descriptor_56_1;
  v24 = _Block_copy(aBlock);
  _Block_copy(v16);
  _Block_copy(v16);
  v25 = v17;
  v26 = v34;
  sub_182AD27B8();
  v37 = MEMORY[0x1E69E7CC0];
  sub_182281120(&qword_1ED40F4B0, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
  sub_181AB3DCC(&qword_1ED40F4A0, &unk_1EA839F50);
  v27 = v36;
  v28 = v30;
  sub_182AD3AC8();
  MEMORY[0x1865DA490](0, v26, v27, v24);
  _Block_release(v24);

  _Block_release(v16);
  (*(v33 + 8))(v27, v28);
  (*(v35 + 8))(v26, v31);

  return 1;
}

uint64_t sub_181D7D8CC()
{
  v1 = sub_182AD2868();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  _Block_release(*(v0 + 16));
  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

void nw_quic_save_0rtt_state_on_queue(void *a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v25 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_quic_save_0rtt_state_on_queue";
    v26 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v26, &type, &v35))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v38 = "nw_quic_save_0rtt_state_on_queue";
        v29 = "%{public}s called with null association";
LABEL_54:
        _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
      }
    }

    else
    {
      if (v35 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v28 = type;
        v32 = os_log_type_enabled(v27, type);
        if (backtrace_string)
        {
          if (v32)
          {
            *buf = 136446466;
            v38 = "nw_quic_save_0rtt_state_on_queue";
            v39 = 2082;
            v40 = backtrace_string;
            _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_56;
        }

        if (!v32)
        {
          goto LABEL_55;
        }

        *buf = 136446210;
        v38 = "nw_quic_save_0rtt_state_on_queue";
        v29 = "%{public}s called with null association, no backtrace";
        goto LABEL_54;
      }

      v27 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v38 = "nw_quic_save_0rtt_state_on_queue";
        v29 = "%{public}s called with null association, backtrace limit exceeded";
        goto LABEL_54;
      }
    }

LABEL_55:

LABEL_56:
    if (v26)
    {
      free(v26);
    }

    goto LABEL_9;
  }

  if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
  }

  v8 = nw_protocol_copy_quic_connection_definition_quic_definition;
  if (!v8)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v38 = "nw_quic_save_0rtt_state_on_queue";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v16, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v38 = "nw_quic_save_0rtt_state_on_queue";
        v19 = "%{public}s called with null definition";
        goto LABEL_23;
      }

      if (v35 != 1)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (!os_log_type_enabled(v17, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v38 = "nw_quic_save_0rtt_state_on_queue";
        v19 = "%{public}s called with null definition, backtrace limit exceeded";
        goto LABEL_23;
      }

      v33 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v34 = os_log_type_enabled(v17, type);
      if (!v33)
      {
        if (!v34)
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v38 = "nw_quic_save_0rtt_state_on_queue";
        v19 = "%{public}s called with null definition, no backtrace";
        goto LABEL_23;
      }

      if (v34)
      {
        *buf = 136446466;
        v38 = "nw_quic_save_0rtt_state_on_queue";
        v39 = 2082;
        v40 = v33;
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v33);
    }

LABEL_26:
    if (!v16)
    {
      goto LABEL_8;
    }

LABEL_27:
    free(v16);
    goto LABEL_8;
  }

  cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v5, v8);
  if (cached_content_for_protocol || (cached_content_for_protocol = malloc_type_calloc(1uLL, 0x30uLL, 0x21E270F3uLL)) != 0)
  {
    v10 = cached_content_for_protocol;
    objc_storeStrong((cached_content_for_protocol + 8), a2);
    objc_storeStrong((v10 + 16), a3);
    int64_with_default = networkd_settings_get_int64_with_default(nw_setting_quic_failure_cache_seconds, 1800);
    v12 = time(0);
    nw_association_set_cached_content_for_protocol(v5, v8, v10, v12 + int64_with_default);
LABEL_8:

LABEL_9:
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v38 = "nw_quic_save_0rtt_state_on_queue";
  v39 = 2048;
  v40 = 1;
  v41 = 2048;
  v42 = 48;
  v14 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v14))
  {
    free(v14);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    *buf = 136446210;
    v38 = "nw_quic_save_0rtt_state_on_queue";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v16, &type, &v35))
    {
      goto LABEL_26;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v38 = "nw_quic_save_0rtt_state_on_queue";
        v19 = "%{public}s called with null association_cache";
LABEL_23:
        v23 = v17;
        v24 = v18;
LABEL_24:
        _os_log_impl(&dword_181A37000, v23, v24, v19, buf, 0xCu);
      }
    }

    else
    {
      if (v35 == 1)
      {
        v20 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        v21 = type;
        v22 = os_log_type_enabled(v17, type);
        if (v20)
        {
          if (v22)
          {
            *buf = 136446466;
            v38 = "nw_quic_save_0rtt_state_on_queue";
            v39 = 2082;
            v40 = v20;
            _os_log_impl(&dword_181A37000, v17, v21, "%{public}s called with null association_cache, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v20);
          if (!v16)
          {
            goto LABEL_8;
          }

          goto LABEL_27;
        }

        if (!v22)
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v38 = "nw_quic_save_0rtt_state_on_queue";
        v19 = "%{public}s called with null association_cache, no backtrace";
        v23 = v17;
        v24 = v21;
        goto LABEL_24;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v38 = "nw_quic_save_0rtt_state_on_queue";
        v19 = "%{public}s called with null association_cache, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  __break(1u);
}

id nw_protocol_instance_copy_interface_for_path(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_copy_interface_for_path";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_interface_for_path";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_interface_for_path";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v15 = type;
    v16 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_interface_for_path";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_copy_interface_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_copy_interface_for_path";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_interface_for_path";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null path", buf, 0xCu);
      }

LABEL_37:

LABEL_38:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_40;
    }

    if (v22 != 1)
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_interface_for_path";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_37;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v17 = type;
    v18 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_copy_interface_for_path";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "nw_protocol_instance_copy_interface_for_path";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_25:

    free(backtrace_string);
    goto LABEL_38;
  }

  v5 = v3[37];
  if (!v5 || (node = nw_hash_table_get_node(v5, a2, 8)) == 0)
  {
LABEL_40:
    v7 = 0;
    goto LABEL_41;
  }

  v7 = *(node + 48);
LABEL_41:

  return v7;
}

NSObject *nw_queue_source_get_data(NSObject **a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = *a1;
    if (result)
    {
      return dispatch_source_get_data(result);
    }

    return result;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_queue_source_get_data";
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
        v12 = "nw_queue_source_get_data";
        v6 = "%{public}s called with null source";
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
            v12 = "nw_queue_source_get_data";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null source, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_queue_source_get_data";
        v6 = "%{public}s called with null source, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_queue_source_get_data";
        v6 = "%{public}s called with null source, backtrace limit exceeded";
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

void nw_socket_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_socket_input_finished";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v2, &type, &v33))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (!os_log_type_enabled(v28, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v36 = "nw_socket_input_finished";
      v30 = "%{public}s called with null protocol";
    }

    else if (v33 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v29 = type;
      v32 = os_log_type_enabled(v28, type);
      if (backtrace_string)
      {
        if (v32)
        {
          *buf = 136446466;
          v36 = "nw_socket_input_finished";
          v37 = 2082;
          v38 = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_50;
        }

        return;
      }

      if (!v32)
      {
LABEL_69:
        if (!v2)
        {
          return;
        }

        goto LABEL_50;
      }

      *buf = 136446210;
      v36 = "nw_socket_input_finished";
      v30 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (!os_log_type_enabled(v28, type))
      {
        goto LABEL_69;
      }

      *buf = 136446210;
      v36 = "nw_socket_input_finished";
      v30 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
    goto LABEL_69;
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
      v36 = "nw_socket_input_finished";
      v8 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v33 = 0;
      if (!__nwlog_fault(v8, &type, &v33))
      {
        goto LABEL_37;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_37;
        }

        *buf = 136446210;
        v36 = "nw_socket_input_finished";
        v11 = "%{public}s called with null socket_handler";
      }

      else
      {
        if (v33 == 1)
        {
          v17 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v19 = type;
          v20 = os_log_type_enabled(gLogObj, type);
          if (v17)
          {
            if (v20)
            {
              *buf = 136446466;
              v36 = "nw_socket_input_finished";
              v37 = 2082;
              v38 = v17;
              _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v17);
            goto LABEL_37;
          }

          if (!v20)
          {
LABEL_37:
            if (v8)
            {
              free(v8);
            }

            goto LABEL_39;
          }

          *buf = 136446210;
          v36 = "nw_socket_input_finished";
          v11 = "%{public}s called with null socket_handler, no backtrace";
          v21 = v18;
          v22 = v19;
LABEL_36:
          _os_log_impl(&dword_181A37000, v21, v22, v11, buf, 0xCu);
          goto LABEL_37;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_37;
        }

        *buf = 136446210;
        v36 = "nw_socket_input_finished";
        v11 = "%{public}s called with null socket_handler, backtrace limit exceeded";
      }

      v21 = v9;
      v22 = v10;
      goto LABEL_36;
    }

    v7 = *a1[1].flow_id;
  }

  v12 = v7[2].callbacks;
  v13 = *(&v7[6].callbacks + 5);
  if (v12)
  {
    if ((v13 & 0x10) == 0)
    {
      *(&v7[6].callbacks + 5) = v13 | 0x10;
      connect = v12->connect;
      if (connect)
      {
        v15 = *(connect + 23);
        if (v15)
        {
          v15();
        }
      }
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v16 = gconnectionLogObj;
    if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v36 = "nw_socket_input_finished";
      v37 = 2082;
      v38 = &v7[6].output_handler + 4;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}s No input handler", buf, 0x16u);
    }
  }

LABEL_39:
  if ((v5 & 1) == 0)
  {
    v23 = v2->handle;
    if (v23 == &nw_protocol_ref_counted_handle || v23 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v24 = v2[1].callbacks;
      if (v24)
      {
        v25 = (v24 - 1);
        v2[1].callbacks = v25;
        if (!v25)
        {
          v26 = *v2[1].flow_id;
          if (v26)
          {
            *v2[1].flow_id = 0;
            (v26)[2](v26, a2);
            _Block_release(v26);
          }

          if (v2[1].flow_id[8])
          {
            v27 = *v2[1].flow_id;
            if (v27)
            {
              _Block_release(v27);
            }
          }

LABEL_50:
          free(v2);
        }
      }
    }
  }
}

void nw_protocol_default_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_protocol_default_input_finished";
    v5 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v5, &type, &v13))
    {
      goto LABEL_36;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_input_finished";
      v8 = "%{public}s called with null protocol";
    }

    else if (v13 == 1)
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
          v16 = "nw_protocol_default_input_finished";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v5)
        {
          return;
        }

        goto LABEL_37;
      }

      if (!v10)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_input_finished";
      v8 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (!os_log_type_enabled(v6, type))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v16 = "nw_protocol_default_input_finished";
      v8 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
    goto LABEL_36;
  }

  default_input_handler = a1->default_input_handler;
  if (default_input_handler)
  {
    callbacks = default_input_handler->callbacks;
    if (callbacks)
    {
      input_finished = callbacks->input_finished;
      if (input_finished)
      {

        input_finished();
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_default_input_finished";
  v5 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v5, &type, &v13))
  {
    goto LABEL_36;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v16 = "nw_protocol_default_input_finished";
    v8 = "%{public}s called with null protocol->default_input_handler";
    goto LABEL_35;
  }

  if (v13 != 1)
  {
    v6 = __nwlog_obj();
    v7 = type;
    if (!os_log_type_enabled(v6, type))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v16 = "nw_protocol_default_input_finished";
    v8 = "%{public}s called with null protocol->default_input_handler, backtrace limit exceeded";
    goto LABEL_35;
  }

  v11 = __nw_create_backtrace_string();
  v6 = __nwlog_obj();
  v7 = type;
  v12 = os_log_type_enabled(v6, type);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    v16 = "nw_protocol_default_input_finished";
    v8 = "%{public}s called with null protocol->default_input_handler, no backtrace";
    goto LABEL_35;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_protocol_default_input_finished";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null protocol->default_input_handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v5)
  {
LABEL_37:
    free(v5);
  }
}

void nw_flow_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  handle = a1->handle;
  v3 = handle->handler;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    mode = v5->mode;

    if (mode == 2)
    {
      v7 = nw_endpoint_handler_copy_flow(v5);
      *(handle + 166) |= 0x10u;
      nw_flow_service_reads(v5, v7, handle, 0);
      if (&v7->shared_protocol == handle)
      {
        if (v7->client_queue)
        {
          read_close_handler = v7->read_close_handler;
          if (read_close_handler)
          {
            v11 = _Block_copy(read_close_handler);
            client_queue = v7->client_queue;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = ___ZL22nw_flow_input_finishedP11nw_protocolS0__block_invoke;
            block[3] = &unk_1E6A3CE48;
            v23 = v11;
            v13 = v11;
            dispatch_async(client_queue, block);
          }
        }
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (mode > 5)
        {
          v9 = "unknown-mode";
        }

        else
        {
          v9 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v27 = "nw_flow_input_finished";
        v28 = 2082;
        v29 = v9;
        v30 = 2082;
        v31 = "flow";
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }
    }

    goto LABEL_14;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_flow_input_finished";
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v15, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v27 = "nw_flow_input_finished";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v20)
        {
          *buf = 136446466;
          v27 = "nw_flow_input_finished";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_31;
      }

      if (v20)
      {
        *buf = 136446210;
        v27 = "nw_flow_input_finished";
        _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v27 = "nw_flow_input_finished";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_31:
  if (v15)
  {
    free(v15);
  }

LABEL_14:
}

void nw_flow_passthrough_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    default_input_handler = a1->default_input_handler;
    if (default_input_handler)
    {
      callbacks = default_input_handler->callbacks;
      if (callbacks)
      {
        input_finished = callbacks->input_finished;
        if (input_finished)
        {

          input_finished();
        }
      }
    }

    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_flow_passthrough_input_finished";
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
        v15 = "nw_flow_passthrough_input_finished";
        v9 = "%{public}s called with null protocol";
LABEL_21:
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
            v15 = "nw_flow_passthrough_input_finished";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (!v11)
        {
          goto LABEL_22;
        }

        *buf = 136446210;
        v15 = "nw_flow_passthrough_input_finished";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_21;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_flow_passthrough_input_finished";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_22:
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }
}

uint64_t nw_quic_connection_get_peer_idle_timeout(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    peer_idle_timeout = _nw_quic_connection_get_peer_idle_timeout(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_connection_get_peer_idle_timeout";
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
        v14 = "nw_quic_connection_get_peer_idle_timeout";
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
            v14 = "nw_quic_connection_get_peer_idle_timeout";
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
        v14 = "nw_quic_connection_get_peer_idle_timeout";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_connection_get_peer_idle_timeout";
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

  peer_idle_timeout = 0;
LABEL_3:

  return peer_idle_timeout;
}

uint64_t sub_181D7FC9C(uint64_t a1, unsigned __int16 a2)
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
      v7 = *(v6 + 184);
      if (v7)
      {
        (*(v7 + 16))(v7, a2);
      }

      os_unfair_lock_unlock((*(v6 + 248) + 16));
    }
  }

  return result;
}

uint64_t _nw_quic_connection_get_peer_idle_timeout_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 64);

    if (v4)
    {
      os_unfair_lock_lock((*(v4 + 248) + 16));
      v5 = *(v4 + 176);
      if (v5)
      {
        v6 = (*(v5 + 16))();
      }

      else
      {
        v6 = 0;
      }

      os_unfair_lock_unlock((*(v4 + 248) + 16));

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void nw_protocol_instance_async_if_needed(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_instance_async_if_needed";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v7, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async_if_needed";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v28 = "nw_protocol_instance_async_if_needed";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v7)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v7);
        goto LABEL_5;
      }

      if (v16)
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async_if_needed";
        _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async_if_needed";
        _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  v5 = v3[15];
  if (!v5)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_instance_async_if_needed";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v7, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async_if_needed";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null instance->context", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v8 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async_if_needed";
        _os_log_impl(&dword_181A37000, v8, v23, "%{public}s called with null instance->context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v17 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v8, type);
    if (!v17)
    {
      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async_if_needed";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null instance->context, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v19)
    {
      *buf = 136446466;
      v28 = "nw_protocol_instance_async_if_needed";
      v29 = 2082;
      v30 = v17;
      _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null instance->context, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!v4)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_instance_async_if_needed";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v7, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async_if_needed";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null block", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v8 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async_if_needed";
        _os_log_impl(&dword_181A37000, v8, v24, "%{public}s called with null block, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v17 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v8, type);
    if (!v17)
    {
      if (v21)
      {
        *buf = 136446210;
        v28 = "nw_protocol_instance_async_if_needed";
        _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null block, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v28 = "nw_protocol_instance_async_if_needed";
      v29 = 2082;
      v30 = v17;
      _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null block, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v17);
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  nw_queue_context_async_if_needed(v5, v4);
LABEL_5:
}

uint64_t sub_181D80544(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

void NWActivity.complete(reason:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    if (v4 < 0xFFFFFFFF80000000)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v4 > 0x7FFFFFFF)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v7 = *(v1 + 16);
    v8 = sub_182AD3048();
    nw_activity_complete_with_reason_and_underlying_error_string(v7, 3u, v8 + 32, v4);
  }

  else
  {
    if (!*(a1 + 24))
    {
      if (v2 <= 0x7FFFFFFF)
      {
        if (v2 >= 0xFFFFFFFF80000000 && v3 >= 0xFFFFFFFF80000000)
        {
          if (v3 <= 0x7FFFFFFF)
          {
            v6 = *(v1 + 16);

            nw_activity_complete_with_reason_and_underlying_error(v6, 3u, v2, v3);
            return;
          }

LABEL_39:
          __break(1u);
          return;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      __break(1u);
      goto LABEL_36;
    }

    v9 = *(v1 + 16);
    if (v4 | v3)
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 == 2;
    }

    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 4;
    }

    if (v2 == 1 && (v4 | v3) == 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11;
    }

    if (v4 | v3 | v2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }

    nw_activity_complete_with_reason(v9, v14);
  }
}

void nw_quic_connection_metadata_set_stream_options(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_metadata_set_stream_options(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_metadata_set_stream_options";
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
        v15 = "nw_quic_connection_metadata_set_stream_options";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata)";
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
            v15 = "nw_quic_connection_metadata_set_stream_options";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_connection_metadata_set_stream_options";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_metadata_set_stream_options";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata), backtrace limit exceeded";
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

uint64_t _nw_quic_connection_metadata_set_stream_options_0(uint64_t a1, uint64_t a2)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
      v7 = sub_181CB38E8(a2);
      if (v7)
      {
        v8 = *(*v7 + 128);
        v9 = v7;
        swift_beginAccess();
        v10 = *(v9 + v8);

        if (v10)
        {
          *(v6 + 56) = v10;
        }
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Network10NWActivityC16CompletionReasonO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

void nw_connection_register_context(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_connection_register_context";
    v7 = _os_log_send_and_compose_impl();

    v24 = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v7, &v24, &v23))
    {
      goto LABEL_38;
    }

    if (v24 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_register_context";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = v24;
      v14 = os_log_type_enabled(v8, v24);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v26 = "nw_connection_register_context";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
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
        v26 = "nw_connection_register_context";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_register_context";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __nw_connection_register_context_block_invoke;
    v20[3] = &unk_1E6A3D760;
    v21 = v3;
    v22 = v5;
    nw_connection_async_if_needed(v21, v20);

    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_connection_register_context";
  v7 = _os_log_send_and_compose_impl();

  v24 = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v7, &v24, &v23))
  {
    goto LABEL_38;
  }

  if (v24 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_register_context";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null content_context", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v23 != 1)
  {
    v8 = __nwlog_obj();
    v19 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_register_context";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null content_context, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = v24;
  v17 = os_log_type_enabled(v8, v24);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v26 = "nw_connection_register_context";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null content_context, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v26 = "nw_connection_register_context";
    v27 = 2082;
    v28 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null content_context, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void __nw_connection_register_context_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 109) & 0x40) != 0)
  {
    if ((nw_endpoint_handler_register_context(*(v2 + 144), *(a1 + 40)) & 1) == 0)
    {
      v9 = *(*(a1 + 32) + 16);
      if (v9)
      {
        if (!_nw_parameters_get_logging_disabled(v9))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v4 = gconnectionLogObj;
          if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_16;
          }

          v10 = *(a1 + 40);
          v11 = *(*(a1 + 32) + 448);
          v12 = 136446722;
          v13 = "nw_connection_register_context_block_invoke";
          v14 = 1024;
          v15 = v11;
          v16 = 2112;
          v17 = v10;
          v6 = "%{public}s [C%u] Failed to register context %@";
          v7 = v4;
          v8 = 28;
          goto LABEL_15;
        }
      }
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
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v5 = *(*(a1 + 32) + 448);
      v12 = 136446466;
      v13 = "nw_connection_register_context_block_invoke";
      v14 = 1024;
      v15 = v5;
      v6 = "%{public}s [C%u] Cannot register a context on a connection that is not ready";
      v7 = v4;
      v8 = 18;
LABEL_15:
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, v6, &v12, v8);
LABEL_16:
    }
  }
}

uint64_t nw_endpoint_handler_register_context(void *a1, void *a2)
{
  v124 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v91 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_register_context";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v113 = 0;
    if (!__nwlog_fault(v23, &type, &v113))
    {
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v92 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_register_context";
        _os_log_impl(&dword_181A37000, v24, v92, "%{public}s called with null content_context", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (v113 != 1)
    {
      v24 = __nwlog_obj();
      v100 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_register_context";
        _os_log_impl(&dword_181A37000, v24, v100, "%{public}s called with null content_context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v96 = type;
    v97 = os_log_type_enabled(v24, type);
    if (!backtrace_string)
    {
      if (v97)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_register_context";
        _os_log_impl(&dword_181A37000, v24, v96, "%{public}s called with null content_context, no backtrace", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (v97)
    {
      *buf = 136446466;
      *&buf[4] = "nw_endpoint_handler_register_context";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v24, v96, "%{public}s called with null content_context, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_163;
  }

  if (!v3)
  {
    v93 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_register_context";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v113 = 0;
    if (!__nwlog_fault(v23, &type, &v113))
    {
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v94 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_register_context";
        _os_log_impl(&dword_181A37000, v24, v94, "%{public}s called with null handler", buf, 0xCu);
      }

LABEL_82:

      goto LABEL_83;
    }

    if (v113 != 1)
    {
      v24 = __nwlog_obj();
      v101 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_register_context";
        _os_log_impl(&dword_181A37000, v24, v101, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_82;
    }

    backtrace_string = __nw_create_backtrace_string();
    v24 = __nwlog_obj();
    v98 = type;
    v99 = os_log_type_enabled(v24, type);
    if (!backtrace_string)
    {
      if (v99)
      {
        *buf = 136446210;
        *&buf[4] = "nw_endpoint_handler_register_context";
        _os_log_impl(&dword_181A37000, v24, v98, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_82;
    }

    if (v99)
    {
      *buf = 136446466;
      *&buf[4] = "nw_endpoint_handler_register_context";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_181A37000, v24, v98, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_163:

    free(backtrace_string);
    if (!v23)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v5 = v3;
  mode = v5->mode;

  if (mode == 2)
  {
    v7 = nw_endpoint_handler_copy_flow(v5);
    v8 = v7;
    if ((*(v7 + 35) & 2) == 0)
    {
      if (*(v7 + 96))
      {
        v9 = *(v7 + 108);
        if (v9)
        {
          node = nw_hash_table_get_node(v9, v4, 0);
          if (node)
          {
            v11 = *(node + 16);
            if (v11)
            {
              goto LABEL_126;
            }
          }

          v11 = nw_endpoint_handler_register_context_internal(v5, v8, v4);
          v12 = v5;
          v13 = *(v12 + 284);

          if ((v13 & 0x40) != 0)
          {
            goto LABEL_125;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v14 = gconnectionLogObj;
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
LABEL_124:

LABEL_125:
            if (v11)
            {
LABEL_126:
              v84 = *(v11 + 32);
              if (!v84 || (v85 = *(v84 + 24)) == 0 || (v86 = *(v85 + 224)) == 0)
              {
                v28 = 1;
                goto LABEL_142;
              }

              v37 = v86();
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v116 = __Block_byref_object_copy__17198;
              *v117 = __Block_byref_object_dispose__17199;
              *&v117[8] = 0;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3221225472;
              aBlock[2] = __nw_endpoint_handler_register_context_block_invoke;
              aBlock[3] = &unk_1E6A3BB28;
              v111 = v8;
              v112 = buf;
              if (v37)
              {
                _nw_array_apply(v37, aBlock);
                v87 = *(*&buf[8] + 40);
                if (v87)
                {
                  nw_content_context_set_metadata_for_protocol(v4, v87);
                }
              }

              _Block_object_dispose(buf, 8);
              v28 = 1;
              goto LABEL_141;
            }

            goto LABEL_133;
          }

          v15 = v12;

          v16 = v15;
          v17 = *(v12 + 284);

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
            logging_description = _nw_endpoint_get_logging_description(v19);
          }

          else
          {
            logging_description = "<NULL>";
          }

          id_str = v15->id_str;

          v62 = v16;
          v63 = v62;
          v64 = v62[30];
          if (v64 > 5)
          {
            v65 = "unknown-state";
          }

          else
          {
            v65 = off_1E6A31048[v64];
          }

          v66 = v63;
          v67 = v66;
          v68 = v5->mode;
          v106 = v20;
          v102 = v65;
          if (v68 > 2)
          {
            switch(v68)
            {
              case 3:
                v69 = v18;
                v70 = "proxy";
                goto LABEL_123;
              case 4:
                v69 = v18;
                v70 = "fallback";
                goto LABEL_123;
              case 5:
                v69 = v18;
                v70 = "transform";
                goto LABEL_123;
            }
          }

          else
          {
            switch(v68)
            {
              case 0:
                v69 = v18;
                v70 = "path";
                goto LABEL_123;
              case 1:
                v69 = v18;
                v70 = "resolver";
                goto LABEL_123;
              case 2:
                v69 = v18;
                v70 = nw_endpoint_flow_mode_string(v66[33]);
LABEL_123:

                v82 = v67;
                os_unfair_lock_lock(v82 + 28);
                v83 = v82[8];
                os_unfair_lock_unlock(v82 + 28);

                *buf = 136448002;
                *&buf[4] = "nw_endpoint_handler_register_context";
                *&buf[12] = 2082;
                *&buf[14] = id_str;
                *&buf[22] = 2082;
                v116 = v69;
                *v117 = 2082;
                *&v117[2] = logging_description;
                *&v117[10] = 2082;
                *&v117[12] = v102;
                v118 = 2082;
                v119 = v70;
                v120 = 2114;
                v121 = v83;
                v122 = 2048;
                v123 = v11;
                _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Registered protocol %p", buf, 0x52u);

                goto LABEL_124;
            }
          }

          v69 = v18;
          v70 = "unknown-mode";
          goto LABEL_123;
        }

        v44 = v5;
        v45 = *(v44 + 284);

        if ((v45 & 0x40) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v37 = gconnectionLogObj;
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_140;
          }

          v46 = v44;

          v47 = v46;
          v48 = *(v44 + 284);

          if (v48)
          {
            v49 = "dry-run ";
          }

          else
          {
            v49 = "";
          }

          v50 = nw_endpoint_handler_copy_endpoint(v47);
          v51 = v50;
          if (v50)
          {
            v105 = _nw_endpoint_get_logging_description(v50);
          }

          else
          {
            v105 = "<NULL>";
          }

          v109 = v49;
          v71 = v46->id_str;

          v72 = v47;
          v73 = v72;
          v74 = v72[30];
          if (v74 > 5)
          {
            v75 = "unknown-state";
          }

          else
          {
            v75 = off_1E6A31048[v74];
          }

          v76 = v73;
          v77 = v76;
          v78 = v5->mode;
          if (v78 > 2)
          {
            switch(v78)
            {
              case 3:
                v79 = "proxy";
                goto LABEL_139;
              case 4:
                v79 = "fallback";
                goto LABEL_139;
              case 5:
                v79 = "transform";
                goto LABEL_139;
            }
          }

          else
          {
            switch(v78)
            {
              case 0:
                v79 = "path";
                goto LABEL_139;
              case 1:
                v79 = "resolver";
                goto LABEL_139;
              case 2:
                v79 = nw_endpoint_flow_mode_string(v76[33]);
LABEL_139:

                v88 = v77;
                os_unfair_lock_lock(v88 + 28);
                v89 = v88[8];
                os_unfair_lock_unlock(v88 + 28);

                *buf = 136447746;
                *&buf[4] = "nw_endpoint_handler_register_context";
                *&buf[12] = 2082;
                *&buf[14] = v71;
                *&buf[22] = 2082;
                v116 = v109;
                *v117 = 2082;
                *&v117[2] = v105;
                *&v117[10] = 2082;
                *&v117[12] = v75;
                v118 = 2082;
                v119 = v79;
                v120 = 2114;
                v121 = v89;
                _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Cannot register after flow table is released", buf, 0x48u);

                goto LABEL_140;
            }
          }

          v79 = "unknown-mode";
          goto LABEL_139;
        }
      }

LABEL_133:
      v28 = 0;
      goto LABEL_142;
    }

    v27 = *(v7 + 117);
    if (v27)
    {
      v28 = nw_endpoint_handler_register_context(v27, v4);
LABEL_142:

      goto LABEL_143;
    }

    v35 = v5;
    v36 = *(v35 + 284);

    if ((v36 & 0x40) != 0)
    {
      goto LABEL_133;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v37 = gconnectionLogObj;
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_140;
    }

    v38 = v35;

    v39 = v38;
    v40 = *(v35 + 284);

    if (v40)
    {
      v41 = "dry-run ";
    }

    else
    {
      v41 = "";
    }

    v42 = nw_endpoint_handler_copy_endpoint(v39);
    v43 = v42;
    if (v42)
    {
      v104 = _nw_endpoint_get_logging_description(v42);
    }

    else
    {
      v104 = "<NULL>";
    }

    v108 = v41;
    v53 = v38->id_str;

    v54 = v39;
    v55 = v54;
    v56 = v54[30];
    if (v56 > 5)
    {
      v57 = "unknown-state";
    }

    else
    {
      v57 = off_1E6A31048[v56];
    }

    v58 = v55;
    v59 = v58;
    v60 = v5->mode;
    if (v60 > 2)
    {
      switch(v60)
      {
        case 3:
          v61 = "proxy";
          goto LABEL_117;
        case 4:
          v61 = "fallback";
          goto LABEL_117;
        case 5:
          v61 = "transform";
          goto LABEL_117;
      }
    }

    else
    {
      switch(v60)
      {
        case 0:
          v61 = "path";
          goto LABEL_117;
        case 1:
          v61 = "resolver";
          goto LABEL_117;
        case 2:
          v61 = nw_endpoint_flow_mode_string(v58[33]);
LABEL_117:

          v80 = v59;
          os_unfair_lock_lock(v80 + 28);
          v81 = v80[8];
          os_unfair_lock_unlock(v80 + 28);

          *buf = 136447746;
          *&buf[4] = "nw_endpoint_handler_register_context";
          *&buf[12] = 2082;
          *&buf[14] = v53;
          *&buf[22] = 2082;
          v116 = v108;
          *v117 = 2082;
          *&v117[2] = v104;
          *&v117[10] = 2082;
          *&v117[12] = v57;
          v118 = 2082;
          v119 = v61;
          v120 = 2114;
          v121 = v81;
          _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Cannot register, no connected handler", buf, 0x48u);

LABEL_140:
          v28 = 0;
LABEL_141:

          goto LABEL_142;
      }
    }

    v61 = "unknown-mode";
    goto LABEL_117;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v21 = gLogObj;
  if (mode > 5)
  {
    v22 = "unknown-mode";
  }

  else
  {
    v22 = off_1E6A31018[mode];
  }

  *buf = 136446722;
  *&buf[4] = "nw_endpoint_handler_register_context";
  *&buf[12] = 2082;
  *&buf[14] = v22;
  *&buf[22] = 2082;
  v116 = "flow";
  v23 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v113 = 0;
  if (__nwlog_fault(v23, &type, &v113))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        if (mode > 5)
        {
          v26 = "unknown-mode";
        }

        else
        {
          v26 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        *&buf[4] = "nw_endpoint_handler_register_context";
        *&buf[12] = 2082;
        *&buf[14] = v26;
        *&buf[22] = 2082;
        v116 = "flow";
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }
    }

    else if (v113 == 1)
    {
      v29 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v30 = type;
      v31 = os_log_type_enabled(v24, type);
      if (v29)
      {
        if (v31)
        {
          if (mode > 5)
          {
            v32 = "unknown-mode";
          }

          else
          {
            v32 = off_1E6A31018[mode];
          }

          *buf = 136446978;
          *&buf[4] = "nw_endpoint_handler_register_context";
          *&buf[12] = 2082;
          *&buf[14] = v32;
          *&buf[22] = 2082;
          v116 = "flow";
          *v117 = 2082;
          *&v117[2] = v29;
          _os_log_impl(&dword_181A37000, v24, v30, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v29);
        if (!v23)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }

      if (v31)
      {
        if (mode > 5)
        {
          v52 = "unknown-mode";
        }

        else
        {
          v52 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        *&buf[4] = "nw_endpoint_handler_register_context";
        *&buf[12] = 2082;
        *&buf[14] = v52;
        *&buf[22] = 2082;
        v116 = "flow";
        _os_log_impl(&dword_181A37000, v24, v30, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v33 = type;
      if (os_log_type_enabled(v24, type))
      {
        if (mode > 5)
        {
          v34 = "unknown-mode";
        }

        else
        {
          v34 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        *&buf[4] = "nw_endpoint_handler_register_context";
        *&buf[12] = 2082;
        *&buf[14] = v34;
        *&buf[22] = 2082;
        v116 = "flow";
        _os_log_impl(&dword_181A37000, v24, v33, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
      }
    }

    goto LABEL_82;
  }

LABEL_83:
  if (v23)
  {
LABEL_84:
    free(v23);
  }

LABEL_85:
  v28 = 0;
LABEL_143:

  return v28;
}

uint64_t nw_endpoint_handler_register_context_internal(void *a1, void *a2, void *a3)
{
  v220 = *MEMORY[0x1E69E9840];
  v198 = a1;
  v196 = a2;
  context = a3;
  v5 = malloc_type_calloc(1uLL, 0x150uLL, 0x6ED2D087uLL);
  v197 = v5;
  if (v5)
  {
LABEL_4:
    objc_storeStrong(v5 + 31, a3);
    v9 = v197;
    nw_endpoint_flow_initialize_protocol(v198, v197, 1);
    v193 = *(v196 + 97);
    if (nw_protocol_is_zombie(v193))
    {
      if (nw_endpoint_handler_get_logging_disabled(v198))
      {
LABEL_134:
        nw_endpoint_flow_cleanup_protocol(v198, v9, 1);
        v142 = *(v9 + 184);
        *(v9 + 184) = 0;

        free(v197);
        v197 = 0;
LABEL_152:

        return v197;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v10 = gconnectionLogObj;
      id_string = nw_endpoint_handler_get_id_string(v198);
      v12 = nw_endpoint_handler_dry_run_string(v198);
      v13 = nw_endpoint_handler_copy_endpoint(v198);
      v14 = v13;
      if (v13)
      {
        logging_description = _nw_endpoint_get_logging_description(v13);
      }

      else
      {
        logging_description = "<NULL>";
      }

      v22 = nw_endpoint_handler_state_string(v198);
      v23 = nw_endpoint_handler_mode_string(v198);
      v24 = nw_endpoint_handler_copy_current_path(v198);
      *buf = 136448002;
      v203 = "nw_endpoint_handler_register_context_internal";
      v204 = 2082;
      v205 = id_string;
      v206 = 2082;
      v207 = v12;
      v208 = 2082;
      v209 = logging_description;
      v210 = 2082;
      v211 = v22;
      v212 = 2082;
      v213 = v23;
      v214 = 2114;
      v215 = v24;
      v216 = 2048;
      v217 = v193;
      obja = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v200 = 0;
      v25 = obja;
      if ((__nwlog_fault(obja, &type, &v200) & 1) == 0)
      {
LABEL_132:
        v9 = v197;
        if (v25)
        {
          free(v25);
        }

        goto LABEL_134;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v26 = gconnectionLogObj;
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          v28 = nw_endpoint_handler_get_id_string(v198);
          v29 = nw_endpoint_handler_dry_run_string(v198);
          v30 = nw_endpoint_handler_copy_endpoint(v198);
          v31 = v30;
          if (v30)
          {
            v32 = _nw_endpoint_get_logging_description(v30);
          }

          else
          {
            v32 = "<NULL>";
          }

          v103 = nw_endpoint_handler_state_string(v198);
          v104 = v26;
          v105 = nw_endpoint_handler_mode_string(v198);
          v106 = nw_endpoint_handler_copy_current_path(v198);
          *buf = 136448002;
          v203 = "nw_endpoint_handler_register_context_internal";
          v204 = 2082;
          v205 = v28;
          v206 = 2082;
          v207 = v29;
          v208 = 2082;
          v209 = v32;
          v210 = 2082;
          v211 = v103;
          v212 = 2082;
          v213 = v105;
          v26 = v104;
          v214 = 2114;
          v215 = v106;
          v216 = 2048;
          v217 = v193;
          _os_log_impl(&dword_181A37000, v104, v27, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Attempted to register context with zombified multiplexed protocol %p", buf, 0x52u);
        }
      }

      else if (v200 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        if (backtrace_string)
        {
          v34 = backtrace_string;
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v35 = gconnectionLogObj;
          v36 = type;
          if (os_log_type_enabled(v35, type))
          {
            v37 = nw_endpoint_handler_get_id_string(v198);
            v38 = nw_endpoint_handler_dry_run_string(v198);
            v39 = nw_endpoint_handler_copy_endpoint(v198);
            v40 = v39;
            if (v39)
            {
              log = _nw_endpoint_get_logging_description(v39);
            }

            else
            {
              log = "<NULL>";
            }

            v132 = nw_endpoint_handler_state_string(v198);
            v133 = nw_endpoint_handler_mode_string(v198);
            v134 = nw_endpoint_handler_copy_current_path(v198);
            *buf = 136448258;
            v203 = "nw_endpoint_handler_register_context_internal";
            v204 = 2082;
            v205 = v37;
            v206 = 2082;
            v207 = v38;
            v208 = 2082;
            v209 = log;
            v210 = 2082;
            v211 = v132;
            v212 = 2082;
            v213 = v133;
            v214 = 2114;
            v215 = v134;
            v216 = 2048;
            v217 = v193;
            v218 = 2082;
            v219 = v34;
            _os_log_impl(&dword_181A37000, v35, v36, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Attempted to register context with zombified multiplexed protocol %p, dumping backtrace:%{public}s", buf, 0x5Cu);
          }

          free(v34);
          goto LABEL_131;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v26 = gconnectionLogObj;
        v97 = type;
        if (os_log_type_enabled(v26, type))
        {
          v98 = nw_endpoint_handler_get_id_string(v198);
          v99 = nw_endpoint_handler_dry_run_string(v198);
          v100 = nw_endpoint_handler_copy_endpoint(v198);
          v101 = v100;
          if (v100)
          {
            v102 = _nw_endpoint_get_logging_description(v100);
          }

          else
          {
            v102 = "<NULL>";
          }

          v139 = nw_endpoint_handler_state_string(v198);
          v140 = nw_endpoint_handler_mode_string(v198);
          v141 = nw_endpoint_handler_copy_current_path(v198);
          *buf = 136448002;
          v203 = "nw_endpoint_handler_register_context_internal";
          v204 = 2082;
          v205 = v98;
          v206 = 2082;
          v207 = v99;
          v208 = 2082;
          v209 = v102;
          v210 = 2082;
          v211 = v139;
          v212 = 2082;
          v213 = v140;
          v214 = 2114;
          v215 = v141;
          v216 = 2048;
          v217 = v193;
          _os_log_impl(&dword_181A37000, v26, v97, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Attempted to register context with zombified multiplexed protocol %p, no backtrace", buf, 0x52u);
        }
      }

      else
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v26 = gconnectionLogObj;
        v41 = type;
        if (os_log_type_enabled(v26, type))
        {
          v42 = nw_endpoint_handler_get_id_string(v198);
          v43 = nw_endpoint_handler_dry_run_string(v198);
          v44 = nw_endpoint_handler_copy_endpoint(v198);
          v45 = v44;
          if (v44)
          {
            v46 = _nw_endpoint_get_logging_description(v44);
          }

          else
          {
            v46 = "<NULL>";
          }

          v123 = nw_endpoint_handler_state_string(v198);
          v124 = nw_endpoint_handler_mode_string(v198);
          v125 = nw_endpoint_handler_copy_current_path(v198);
          *buf = 136448002;
          v203 = "nw_endpoint_handler_register_context_internal";
          v204 = 2082;
          v205 = v42;
          v206 = 2082;
          v207 = v43;
          v208 = 2082;
          v209 = v46;
          v210 = 2082;
          v211 = v123;
          v212 = 2082;
          v213 = v124;
          v214 = 2114;
          v215 = v125;
          v216 = 2048;
          v217 = v193;
          _os_log_impl(&dword_181A37000, v26, v41, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Attempted to register context with zombified multiplexed protocol %p, backtrace limit exceeded", buf, 0x52u);
        }
      }

LABEL_131:
      v25 = obja;
      goto LABEL_132;
    }

    obj = nw_content_context_copy_protocol_metadata(context, *(v196 + 96));
    if (obj)
    {
      objc_storeStrong(v197 + 29, obj);
      v16 = nw_protocol_metadata_copy_message_options(obj);
      v17 = v16;
      if (v16)
      {
        v18 = _nw_protocol_options_copy(v16);

        nw_parameters_set_protocol_instance(v18, v19, v193);
        v20 = v197[22];
        if (v20)
        {
          v21 = _nw_parameters_copy_default_protocol_stack(v20);
          nw_protocol_stack_replace_protocol(v21, *(v196 + 96), v18);
        }
      }

      else
      {
        v18 = 0;
      }

      v9 = v197;
    }

    v199 = 0;
    v47 = nw_hash_table_add_object(*(v196 + 108), v9, &v199);
    if (v47 && (v199 & 1) != 0)
    {
      loga = v47;
      if (v193)
      {
        if (v193 != v9)
        {
          v48 = v193[3];
          if (v48 && v9 && *v48)
          {
            if (nw_protocol_add_input_handler(v193, v9))
            {
              v49 = *(v9 + 32);
              if (v49)
              {
                v50 = *(v49 + 24);
                if (v50)
                {
                  v51 = *(v50 + 24);
                  if (v51)
                  {
                    v51(v49, v9);
LABEL_48:
                    if ((nw_endpoint_handler_get_logging_disabled(v198) & 1) == 0)
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v52 = gconnectionLogObj;
                      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                      {
                        v53 = nw_endpoint_handler_get_id_string(v198);
                        v54 = nw_endpoint_handler_dry_run_string(v198);
                        v55 = nw_endpoint_handler_copy_endpoint(v198);
                        v56 = nw_endpoint_get_logging_description(v55);
                        v57 = nw_endpoint_handler_state_string(v198);
                        v58 = nw_endpoint_handler_mode_string(v198);
                        v59 = nw_endpoint_handler_copy_current_path(v198);
                        v60 = v193[2];
                        *buf = 136448258;
                        v203 = "nw_endpoint_handler_register_context_internal";
                        v204 = 2082;
                        v205 = v53;
                        v206 = 2082;
                        v207 = v54;
                        v208 = 2082;
                        v209 = v56;
                        v210 = 2082;
                        v211 = v57;
                        v212 = 2082;
                        v213 = v58;
                        v214 = 2114;
                        v215 = v59;
                        v216 = 2048;
                        v217 = v197;
                        v218 = 2080;
                        v219 = v60;
                        _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Added per-message protocol %p to %s", buf, 0x5Cu);
                      }
                    }

                    goto LABEL_151;
                  }
                }
              }

              v160 = __nwlog_obj();
              v161 = *(v9 + 32);
              v162 = "invalid";
              if (v161)
              {
                v163 = *(v161 + 16);
                if (v163)
                {
                  v162 = v163;
                }
              }

              *buf = 136446466;
              v203 = "nw_endpoint_handler_register_context_internal";
              v204 = 2082;
              v205 = v162;
              v164 = _os_log_send_and_compose_impl();

              type = OS_LOG_TYPE_ERROR;
              v200 = 0;
              if (__nwlog_fault(v164, &type, &v200))
              {
                if (type == OS_LOG_TYPE_FAULT)
                {
                  v165 = __nwlog_obj();
                  v166 = type;
                  if (os_log_type_enabled(v165, type))
                  {
                    v167 = v197[4];
                    v168 = "invalid";
                    if (v167)
                    {
                      v169 = *(v167 + 2);
                      if (v169)
                      {
                        v168 = v169;
                      }
                    }

                    *buf = 136446466;
                    v203 = "nw_endpoint_handler_register_context_internal";
                    v204 = 2082;
                    v205 = v168;
                    _os_log_impl(&dword_181A37000, v165, v166, "%{public}s protocol %{public}s has invalid connect callback", buf, 0x16u);
                  }
                }

                else
                {
                  if (v200 == 1)
                  {
                    v171 = __nw_create_backtrace_string();
                    v172 = __nwlog_obj();
                    v173 = type;
                    v174 = os_log_type_enabled(v172, type);
                    if (v171)
                    {
                      if (v174)
                      {
                        v175 = v197[4];
                        v176 = "invalid";
                        if (v175)
                        {
                          v177 = *(v175 + 2);
                          if (v177)
                          {
                            v176 = v177;
                          }
                        }

                        *buf = 136446722;
                        v203 = "nw_endpoint_handler_register_context_internal";
                        v204 = 2082;
                        v205 = v176;
                        v206 = 2082;
                        v207 = v171;
                        _os_log_impl(&dword_181A37000, v172, v173, "%{public}s protocol %{public}s has invalid connect callback, dumping backtrace:%{public}s", buf, 0x20u);
                      }

                      free(v171);
                    }

                    else
                    {
                      if (v174)
                      {
                        v182 = v197[4];
                        v183 = "invalid";
                        if (v182)
                        {
                          v184 = *(v182 + 2);
                          if (v184)
                          {
                            v183 = v184;
                          }
                        }

                        *buf = 136446466;
                        v203 = "nw_endpoint_handler_register_context_internal";
                        v204 = 2082;
                        v205 = v183;
                        _os_log_impl(&dword_181A37000, v172, v173, "%{public}s protocol %{public}s has invalid connect callback, no backtrace", buf, 0x16u);
                      }
                    }

                    goto LABEL_200;
                  }

                  v165 = __nwlog_obj();
                  v178 = type;
                  if (os_log_type_enabled(v165, type))
                  {
                    v179 = v197[4];
                    v180 = "invalid";
                    if (v179)
                    {
                      v181 = *(v179 + 2);
                      if (v181)
                      {
                        v180 = v181;
                      }
                    }

                    *buf = 136446466;
                    v203 = "nw_endpoint_handler_register_context_internal";
                    v204 = 2082;
                    v205 = v180;
                    _os_log_impl(&dword_181A37000, v165, v178, "%{public}s protocol %{public}s has invalid connect callback, backtrace limit exceeded", buf, 0x16u);
                  }
                }
              }

LABEL_200:
              if (v164)
              {
                free(v164);
              }

              goto LABEL_48;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v96 = gLogObj;
            if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v203 = "nw_protocol_utilities_add_input_handler";
              v204 = 2048;
              v205 = v193;
              _os_log_impl(&dword_181A37000, v96, OS_LOG_TYPE_ERROR, "%{public}s Unable to invoke add_input_handler on protocol %p because it is not valid", buf, 0x16u);
            }
          }

          goto LABEL_140;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v92 = gLogObj;
        *buf = 136446466;
        v203 = "nw_protocol_utilities_add_input_handler";
        v204 = 2048;
        v205 = v9;
        v93 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v200 = 0;
        if (__nwlog_fault(v93, &type, &v200))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v94 = gLogObj;
            v95 = type;
            if (os_log_type_enabled(v94, type))
            {
              *buf = 136446466;
              v203 = "nw_protocol_utilities_add_input_handler";
              v204 = 2048;
              v205 = v197;
              _os_log_impl(&dword_181A37000, v94, v95, "%{public}s Cannot add input handler %p to itself", buf, 0x16u);
            }

LABEL_176:

            goto LABEL_138;
          }

          if (v200 != 1)
          {
            v94 = __nwlog_obj();
            v131 = type;
            if (os_log_type_enabled(v94, type))
            {
              *buf = 136446466;
              v203 = "nw_protocol_utilities_add_input_handler";
              v204 = 2048;
              v205 = v197;
              _os_log_impl(&dword_181A37000, v94, v131, "%{public}s Cannot add input handler %p to itself, backtrace limit exceeded", buf, 0x16u);
            }

            goto LABEL_176;
          }

          v119 = __nw_create_backtrace_string();
          v120 = __nwlog_obj();
          v121 = type;
          v122 = os_log_type_enabled(v120, type);
          if (v119)
          {
            if (v122)
            {
              *buf = 136446722;
              v203 = "nw_protocol_utilities_add_input_handler";
              v204 = 2048;
              v205 = v197;
              v206 = 2082;
              v207 = v119;
              _os_log_impl(&dword_181A37000, v120, v121, "%{public}s Cannot add input handler %p to itself, dumping backtrace:%{public}s", buf, 0x20u);
            }

            free(v119);
            if (!v93)
            {
              goto LABEL_140;
            }

            goto LABEL_139;
          }

          if (v122)
          {
            *buf = 136446466;
            v203 = "nw_protocol_utilities_add_input_handler";
            v204 = 2048;
            v205 = v197;
            _os_log_impl(&dword_181A37000, v120, v121, "%{public}s Cannot add input handler %p to itself, no backtrace", buf, 0x16u);
          }
        }
      }

      else
      {
        v154 = __nwlog_obj();
        *buf = 136446210;
        v203 = "nw_protocol_utilities_add_input_handler";
        v93 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v200 = 0;
        if (!__nwlog_fault(v93, &type, &v200))
        {
          goto LABEL_138;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v94 = __nwlog_obj();
          v155 = type;
          if (os_log_type_enabled(v94, type))
          {
            *buf = 136446210;
            v203 = "nw_protocol_utilities_add_input_handler";
            _os_log_impl(&dword_181A37000, v94, v155, "%{public}s called with null protocol", buf, 0xCu);
          }

          goto LABEL_176;
        }

        if (v200 != 1)
        {
          v94 = __nwlog_obj();
          v170 = type;
          if (os_log_type_enabled(v94, type))
          {
            *buf = 136446210;
            v203 = "nw_protocol_utilities_add_input_handler";
            _os_log_impl(&dword_181A37000, v94, v170, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_176;
        }

        v156 = __nw_create_backtrace_string();
        v157 = __nwlog_obj();
        v158 = type;
        v159 = os_log_type_enabled(v157, type);
        if (v156)
        {
          if (v159)
          {
            *buf = 136446466;
            v203 = "nw_protocol_utilities_add_input_handler";
            v204 = 2082;
            v205 = v156;
            _os_log_impl(&dword_181A37000, v157, v158, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v156);
        }

        else
        {
          if (v159)
          {
            *buf = 136446210;
            v203 = "nw_protocol_utilities_add_input_handler";
            _os_log_impl(&dword_181A37000, v157, v158, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
          }
        }
      }

LABEL_138:
      if (!v93)
      {
LABEL_140:
        if ((nw_endpoint_handler_get_logging_disabled(v198) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v143 = gconnectionLogObj;
          if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
          {
            v144 = nw_endpoint_handler_get_id_string(v198);
            v145 = nw_endpoint_handler_dry_run_string(v198);
            v146 = nw_endpoint_handler_copy_endpoint(v198);
            v147 = v146;
            if (v146)
            {
              v148 = _nw_endpoint_get_logging_description(v146);
            }

            else
            {
              v148 = "<NULL>";
            }

            v149 = nw_endpoint_handler_state_string(v198);
            v150 = nw_endpoint_handler_mode_string(v198);
            v151 = nw_endpoint_handler_copy_current_path(v198);
            v152 = v197[2];
            v153 = v193[2];
            *buf = 136448258;
            v203 = "nw_endpoint_handler_register_context_internal";
            v204 = 2082;
            v205 = v144;
            v206 = 2082;
            v207 = v145;
            v208 = 2082;
            v209 = v148;
            v210 = 2082;
            v211 = v149;
            v212 = 2082;
            v213 = v150;
            v214 = 2114;
            v215 = v151;
            v216 = 2082;
            v217 = v152;
            v218 = 2082;
            v219 = v153;
            _os_log_impl(&dword_181A37000, v143, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to add protocol %{public}s to %{public}s", buf, 0x5Cu);
          }
        }

        nw_hash_table_remove_node(*(v196 + 108), loga);
        goto LABEL_150;
      }

LABEL_139:
      free(v93);
      goto LABEL_140;
    }

    if ((nw_endpoint_handler_get_logging_disabled(v198) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v61 = gconnectionLogObj;
      v62 = nw_endpoint_handler_get_id_string(v198);
      v63 = nw_endpoint_handler_dry_run_string(v198);
      v64 = nw_endpoint_handler_copy_endpoint(v198);
      v65 = v64;
      if (v64)
      {
        v66 = _nw_endpoint_get_logging_description(v64);
      }

      else
      {
        v66 = "<NULL>";
      }

      v67 = nw_endpoint_handler_state_string(v198);
      v68 = nw_endpoint_handler_mode_string(v198);
      v69 = nw_endpoint_handler_copy_current_path(v198);
      *buf = 136447746;
      v203 = "nw_endpoint_handler_register_context_internal";
      v204 = 2082;
      v205 = v62;
      v206 = 2082;
      v207 = v63;
      v208 = 2082;
      v209 = v66;
      v210 = 2082;
      v211 = v67;
      v212 = 2082;
      v213 = v68;
      v214 = 2114;
      v215 = v69;
      v70 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v200 = 0;
      if (__nwlog_fault(v70, &type, &v200))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v71 = gconnectionLogObj;
          v72 = type;
          if (os_log_type_enabled(v71, type))
          {
            v73 = nw_endpoint_handler_get_id_string(v198);
            v74 = nw_endpoint_handler_dry_run_string(v198);
            logb = v71;
            v75 = nw_endpoint_handler_copy_endpoint(v198);
            v76 = v75;
            if (v75)
            {
              v77 = _nw_endpoint_get_logging_description(v75);
            }

            else
            {
              v77 = "<NULL>";
            }

            v115 = v70;
            v116 = nw_endpoint_handler_state_string(v198);
            v117 = nw_endpoint_handler_mode_string(v198);
            v118 = nw_endpoint_handler_copy_current_path(v198);
            *buf = 136447746;
            v203 = "nw_endpoint_handler_register_context_internal";
            v204 = 2082;
            v205 = v73;
            v206 = 2082;
            v207 = v74;
            v208 = 2082;
            v209 = v77;
            v210 = 2082;
            v211 = v116;
            v70 = v115;
            v212 = 2082;
            v213 = v117;
            v214 = 2114;
            v215 = v118;
            _os_log_impl(&dword_181A37000, logb, v72, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to add new flow protocol to hash table", buf, 0x48u);

            v71 = logb;
          }
        }

        else
        {
          if (v200 == 1)
          {
            v78 = __nw_create_backtrace_string();
            if (v78)
            {
              v79 = v78;
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v80 = gconnectionLogObj;
              v81 = type;
              if (os_log_type_enabled(v80, type))
              {
                v82 = nw_endpoint_handler_get_id_string(v198);
                v83 = nw_endpoint_handler_dry_run_string(v198);
                v84 = nw_endpoint_handler_copy_endpoint(v198);
                v85 = v84;
                v194 = v83;
                if (v84)
                {
                  logc = _nw_endpoint_get_logging_description(v84);
                }

                else
                {
                  logc = "<NULL>";
                }

                v135 = nw_endpoint_handler_state_string(v198);
                v136 = v70;
                v137 = nw_endpoint_handler_mode_string(v198);
                v138 = nw_endpoint_handler_copy_current_path(v198);
                *buf = 136448002;
                v203 = "nw_endpoint_handler_register_context_internal";
                v204 = 2082;
                v205 = v82;
                v206 = 2082;
                v207 = v194;
                v208 = 2082;
                v209 = logc;
                v210 = 2082;
                v211 = v135;
                v212 = 2082;
                v213 = v137;
                v70 = v136;
                v214 = 2114;
                v215 = v138;
                v216 = 2082;
                v217 = v79;
                _os_log_impl(&dword_181A37000, v80, v81, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to add new flow protocol to hash table, dumping backtrace:%{public}s", buf, 0x52u);
              }

              free(v79);
              v9 = v197;
              if (!v70)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v86 = gconnectionLogObj;
            v107 = type;
            if (os_log_type_enabled(v86, type))
            {
              v108 = nw_endpoint_handler_get_id_string(v198);
              v109 = nw_endpoint_handler_dry_run_string(v198);
              v110 = nw_endpoint_handler_copy_endpoint(v198);
              loge = v70;
              v111 = nw_endpoint_get_logging_description(v110);
              v112 = nw_endpoint_handler_state_string(v198);
              v113 = nw_endpoint_handler_mode_string(v198);
              v114 = nw_endpoint_handler_copy_current_path(v198);
              *buf = 136447746;
              v203 = "nw_endpoint_handler_register_context_internal";
              v204 = 2082;
              v205 = v108;
              v206 = 2082;
              v207 = v109;
              v208 = 2082;
              v209 = v111;
              v210 = 2082;
              v211 = v112;
              v212 = 2082;
              v213 = v113;
              v214 = 2114;
              v215 = v114;
              _os_log_impl(&dword_181A37000, v86, v107, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to add new flow protocol to hash table, no backtrace", buf, 0x48u);

              v70 = loge;
            }
          }

          else
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v86 = gconnectionLogObj;
            v87 = type;
            if (os_log_type_enabled(v86, type))
            {
              v88 = nw_endpoint_handler_get_id_string(v198);
              v89 = nw_endpoint_handler_dry_run_string(v198);
              v90 = nw_endpoint_handler_copy_endpoint(v198);
              v91 = v90;
              if (v90)
              {
                logd = _nw_endpoint_get_logging_description(v90);
              }

              else
              {
                logd = "<NULL>";
              }

              v126 = v70;
              v127 = nw_endpoint_handler_state_string(v198);
              v128 = nw_endpoint_handler_mode_string(v198);
              v129 = nw_endpoint_handler_copy_current_path(v198);
              *buf = 136447746;
              v203 = "nw_endpoint_handler_register_context_internal";
              v204 = 2082;
              v205 = v88;
              v206 = 2082;
              v207 = v89;
              v208 = 2082;
              v209 = logd;
              v210 = 2082;
              v211 = v127;
              v70 = v126;
              v212 = 2082;
              v213 = v128;
              v214 = 2114;
              v215 = v129;
              _os_log_impl(&dword_181A37000, v86, v87, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to add new flow protocol to hash table, backtrace limit exceeded", buf, 0x48u);
            }
          }
        }
      }

      v9 = v197;
      if (v70)
      {
LABEL_116:
        free(v70);
      }
    }

LABEL_117:
    nw_endpoint_flow_cleanup_protocol(v198, v9, 1);
    v130 = *(v9 + 184);
    *(v9 + 184) = 0;

    free(v197);
LABEL_150:
    v197 = 0;
LABEL_151:

    goto LABEL_152;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v203 = "nw_endpoint_handler_register_context_internal";
  v204 = 2048;
  v205 = 1;
  v206 = 2048;
  v207 = 336;
  v7 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v7);
  if (!result)
  {
    free(v7);
    v5 = 0;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_metadata_copy_message_options(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = nw_protocol_metadata_copy_definition(v1);
  v3 = v2;
  if (!v2)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_protocol_metadata_copy_message_options";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v8, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v19 = "nw_protocol_metadata_copy_message_options";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null definition", buf, 0xCu);
        }
      }

      else if (v16 == 1)
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
            v19 = "nw_protocol_metadata_copy_message_options";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (v13)
        {
          *buf = 136446210;
          v19 = "nw_protocol_metadata_copy_message_options";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v19 = "nw_protocol_metadata_copy_message_options";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_21:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_23;
  }

  isa = v2[9].isa;
  if (!isa || (v5 = *(isa + 6)) == 0)
  {
LABEL_23:
    v6 = 0;
    goto LABEL_24;
  }

  v6 = v5(v1);
LABEL_24:

  return v6;
}

uint64_t nw_quic_metadata_copy_stream_options(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_metadata_is_quic_connection(v1))
  {
    v2 = _nw_quic_metadata_copy_stream_options(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_metadata_copy_stream_options";
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
        v14 = "nw_quic_metadata_copy_stream_options";
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
            v14 = "nw_quic_metadata_copy_stream_options";
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
        v14 = "nw_quic_metadata_copy_stream_options";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_metadata_copy_stream_options";
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

  v2 = 0;
LABEL_3:

  return v2;
}

uint64_t _nw_quic_metadata_copy_stream_options_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (!result)
  {
    return result;
  }

  v3 = result;
  swift_beginAccess();
  v4 = *(v3 + 64);

  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 56);
  if (!v5)
  {

    return 0;
  }

  v6 = qword_1ED4100F8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED411CD8;
  v8 = qword_1ED411CE0;
  v9 = byte_1ED411CE8;
  v10 = word_1ED411CD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  swift_allocObject();
  v11 = sub_181AA94EC(v10, v7, v8, v9, v5);
  sub_181F49A24(v7, v8, v9);

  return v11;
}

uint64_t storeEnumTagSinglePayload for ProtocolLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtocolLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_181D84898(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_181D848DC(uint64_t a1)
{
  result = sub_181D84898(&qword_1ED40F828, type metadata accessor for QUICStreamProtocol.QUICStreamOptions);
  *(a1 + 8) = result;
  return result;
}

uint64_t __nw_resolver_set_update_handler_block_invoke_85(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (nw_endpoint_get_type(v4) == nw_endpoint_type_address)
  {
    address_family = nw_endpoint_get_address_family(v4);
    if (address_family == 2)
    {
      v6 = 32;
      goto LABEL_6;
    }

    if (address_family == 30)
    {
      v6 = 40;
LABEL_6:
      *(*(*(a1 + v6) + 8) + 24) = 1;
    }
  }

  return 1;
}

void nw_protocol_stack_replace_protocol(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v5)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_stack_replace_protocol";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v10, &type, &v22))
    {
      goto LABEL_48;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v17 = os_log_type_enabled(v11, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v25 = "nw_protocol_stack_replace_protocol";
            v26 = 2082;
            v27 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_48:
          if (!v10)
          {
            goto LABEL_5;
          }

LABEL_49:
          free(v10);
          goto LABEL_5;
        }

        if (v17)
        {
          *buf = 136446210;
          v25 = "nw_protocol_stack_replace_protocol";
          v13 = "%{public}s called with null stack, no backtrace";
          goto LABEL_46;
        }
      }

      else
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v25 = "nw_protocol_stack_replace_protocol";
          v13 = "%{public}s called with null stack, backtrace limit exceeded";
          goto LABEL_46;
        }
      }

      goto LABEL_47;
    }

    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v25 = "nw_protocol_stack_replace_protocol";
    v13 = "%{public}s called with null stack";
    goto LABEL_46;
  }

  if (!v6)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_stack_replace_protocol";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v10, &type, &v22))
    {
      goto LABEL_48;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v22 != 1)
      {
        v11 = __nwlog_obj();
        v12 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v25 = "nw_protocol_stack_replace_protocol";
          v13 = "%{public}s called with null old_protocol, backtrace limit exceeded";
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      v18 = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v12 = type;
      v19 = os_log_type_enabled(v11, type);
      if (!v18)
      {
        if (v19)
        {
          *buf = 136446210;
          v25 = "nw_protocol_stack_replace_protocol";
          v13 = "%{public}s called with null old_protocol, no backtrace";
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      if (v19)
      {
        *buf = 136446466;
        v25 = "nw_protocol_stack_replace_protocol";
        v26 = 2082;
        v27 = v18;
        v20 = "%{public}s called with null old_protocol, dumping backtrace:%{public}s";
LABEL_31:
        _os_log_impl(&dword_181A37000, v11, v12, v20, buf, 0x16u);
      }

LABEL_32:

      free(v18);
      if (!v10)
      {
        goto LABEL_5;
      }

      goto LABEL_49;
    }

    v11 = __nwlog_obj();
    v12 = type;
    if (!os_log_type_enabled(v11, type))
    {
      goto LABEL_47;
    }

    *buf = 136446210;
    v25 = "nw_protocol_stack_replace_protocol";
    v13 = "%{public}s called with null old_protocol";
LABEL_46:
    _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
    goto LABEL_47;
  }

  if (!v7)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_stack_replace_protocol";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v10, &type, &v22))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_stack_replace_protocol";
        v13 = "%{public}s called with null new_options";
        goto LABEL_46;
      }

LABEL_47:

      goto LABEL_48;
    }

    if (v22 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_stack_replace_protocol";
        v13 = "%{public}s called with null new_options, backtrace limit exceeded";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    v18 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v21 = os_log_type_enabled(v11, type);
    if (!v18)
    {
      if (v21)
      {
        *buf = 136446210;
        v25 = "nw_protocol_stack_replace_protocol";
        v13 = "%{public}s called with null new_options, no backtrace";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v21)
    {
      *buf = 136446466;
      v25 = "nw_protocol_stack_replace_protocol";
      v26 = 2082;
      v27 = v18;
      v20 = "%{public}s called with null new_options, dumping backtrace:%{public}s";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  _nw_protocol_stack_replace_protocol(v5, v6, v7);
LABEL_5:
}

id sub_181D84FEC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_182AD2F58();

  return v5;
}

uint64_t _nw_protocol_stack_replace_protocol(uint64_t a1, uint64_t a2, uint64_t a3)
{

  swift_unknownObjectRetain();
  v5 = sub_181AA847C(a3);
  v7 = v6;
  v8 = swift_unknownObjectRetain_n();
  sub_181AA82B4(v10, v8, 0, 0, 0, 255, a2);
  sub_181D85108(v10, v5, v7);

  swift_unknownObjectRelease();
  sub_181A93268(v10);
  return swift_unknownObjectRelease();
}

uint64_t sub_181D85108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v161 = sub_182AD2388();
  v7 = *v161;
  v180 = *v161;

  v159 = v3;
  result = sub_181AC9084();
  v9 = *(result + 32);
  v10 = *(result + 24) + v9;
  if (*(result + 16) < v10)
  {
    v10 = *(result + 16);
  }

  v163 = a3;
  v164 = result;
  v177 = result;
  v178 = v9;
  v179 = v10;
  v160 = a3 | 0x4000000000000000;
  v166 = a2;
  while (1)
  {
    if (v9 != v10)
    {
      goto LABEL_8;
    }

    if ((sub_181AC81FC(result) & 1) == 0)
    {
      break;
    }

    v9 = v178;
    v164 = v177;
LABEL_8:
    v11 = v9 + 1;
    v178 = v9 + 1;
    v12 = *(v164 + 16 * v9 + 40);
    v13 = *(a1 + 48);
    v174 = *(a1 + 32);
    v175 = v13;
    v176 = *(a1 + 64);
    v14 = *(a1 + 16);
    *v173 = *a1;
    *&v173[16] = v14;
    v15 = *(&v12 + 1);
    v16 = *(&v12 + 1) >> 62;
    v168 = v12;
    if (*(&v12 + 1) >> 62)
    {
      if (v16 == 1)
      {
        ObjectType = swift_getObjectType();
        v18 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v19 = sub_181C15310();
        swift_unknownObjectRetain();
        v20 = v19;
        a2 = v166;
        if (v18(v173, &type metadata for CProtocol, v20, ObjectType, v15 & 0x3FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_25;
        }
      }

      goto LABEL_22;
    }

    v21 = v12;
    v22 = v173[0];
    v23 = v173[1];
    swift_beginAccess();
    if (*(v21 + 16) == v22 && *(v21 + 17) == v23)
    {
      v24 = *(v21 + 24);
      v25 = *(a1 + 8);
      if (*(v21 + 40))
      {
        if (*(a1 + 24) & 1) != 0 && (v24 == (v25 | ((*(a1 + 9) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 32)) << 8)) && *(v21 + 32) == *(a1 + 16) || (sub_182AD4268()))
        {

          goto LABEL_25;
        }
      }

      else if ((*(a1 + 24) & 1) == 0)
      {

        if (v25 == v24)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }
    }

LABEL_22:
    v4 = v15;
    v26 = v11;
    v27 = swift_getObjectType();
    (*(v163 + 96))(v173, v27);
    v28 = v173[0];
    v29 = v173[1];
    v31 = *&v173[8];
    v30 = *&v173[16];
    v32 = v173[24];
    if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_48;
      }

      v33 = v4;
      v4 &= 0x3FFFFFFFFFFFFFFFuLL;
      v34 = swift_getObjectType();
      LOBYTE(v170) = v28;
      HIBYTE(v170) = v29;
      *&v171 = v31;
      *(&v171 + 1) = v30;
      v172 = v32;
      v35 = (*(v4 + 40))(&v170, v34, v4);
      sub_181F48350(v31, v30, v32);
      a2 = v166;
      v11 = v26;
      v15 = v33;
      if ((v35 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      swift_beginAccess();
      if (*(v168 + 16) != v28 || *(v168 + 17) != v29)
      {
LABEL_48:
        sub_181F48350(v31, v30, v32);
        a2 = v166;
        v11 = v26;
LABEL_49:
        v46 = *(v7 + 24);
        v15 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (*(v7 + 16) < v15 || (result & 1) == 0)
        {
          result = sub_181B2C3FC(result, v15);
        }

        v7 = v180;
        v47 = v180[3];
        v48 = v180[4];
        v44 = __OFADD__(v48, v47);
        v49 = v48 + v47;
        if (v44)
        {
          goto LABEL_166;
        }

        if (v47 < 0)
        {
          v53 = v168;
          if (v49 < 0)
          {
            v54 = v180[2];
            v44 = __OFADD__(v49, v54);
            v49 += v54;
            if (v44)
            {
              goto LABEL_221;
            }
          }
        }

        else
        {
          v50 = v180[2];
          v51 = __OFSUB__(v49, v50);
          v52 = v49 - v50;
          v53 = v168;
          if (v52 < 0 == v51)
          {
            v49 = v52;
            if (v51)
            {
              __break(1u);
LABEL_218:
              __break(1u);
LABEL_219:
              __break(1u);
LABEL_220:
              __break(1u);
LABEL_221:
              __break(1u);
LABEL_222:
              __break(1u);
LABEL_223:
              __break(1u);
LABEL_224:
              __break(1u);
              return result;
            }
          }
        }

        *&v180[2 * v49 + 5] = v53;
        v44 = __OFADD__(v47, 1);
        v55 = v47 + 1;
        if (v44)
        {
          goto LABEL_167;
        }

        *(v7 + 24) = v55;
        goto LABEL_4;
      }

      if (*(v168 + 40))
      {
        v11 = v26;
        if ((v32 & 1) == 0)
        {
          v59 = v31;
          v60 = v30;
          v61 = 0;
          goto LABEL_72;
        }

        if (*(v168 + 24) == v31 && *(v168 + 32) == v30)
        {
          sub_181F48350(v31, v30, 1);
          a2 = v166;
          v15 = v4;
        }

        else
        {
          v63 = sub_182AD4268();
          sub_181F48350(v31, v30, 1);
          a2 = v166;
          v15 = v4;
          if ((v63 & 1) == 0)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        v11 = v26;
        if (v32)
        {
          v59 = v31;
          v60 = v30;
          v61 = 1;
LABEL_72:
          sub_181F48350(v59, v60, v61);
          a2 = v166;
          goto LABEL_49;
        }

        v62 = *(v168 + 24);
        sub_181F48350(v31, v30, 0);
        a2 = v166;
        v15 = v4;
        if (v62 != v31)
        {
          goto LABEL_49;
        }
      }
    }

LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
    v36 = swift_dynamicCastClass();
    if (v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = a2;
    }

    if (v36)
    {
      v4 = 0;
    }

    else
    {
      v4 = v160;
    }

    v38 = *(v7 + 24);
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0);
      v158 = swift_dynamicCastClass();
      swift_unknownObjectRetain();
      sub_181A53008(v7, v15);
      if (v158)
      {
        v117 = v158;
      }

      else
      {
        v117 = a2;
      }

      if (v158)
      {
        v118 = 0x8000000000000000;
      }

      else
      {
        v118 = v163 | 0xA000000000000000;
      }

      goto LABEL_174;
    }

    swift_unknownObjectRetain();
    result = swift_isUniquelyReferenced_nonNull_native();
    if (*(v7 + 16) < v39 || (result & 1) == 0)
    {
      result = sub_181B2C3FC(result, v39);
    }

    v7 = v180;
    v40 = v180[3];
    v41 = v180[4];
    v44 = __OFADD__(v41, v40);
    v42 = v41 + v40;
    if (v44)
    {
      goto LABEL_204;
    }

    if (v40 < 0)
    {
      if (v42 < 0)
      {
        v56 = v180[2];
        v44 = __OFADD__(v42, v56);
        v42 += v56;
        if (v44)
        {
          goto LABEL_223;
        }
      }
    }

    else
    {
      v43 = v180[2];
      v44 = __OFSUB__(v42, v43);
      v45 = v42 - v43;
      if (v45 < 0 == v44)
      {
        v42 = v45;
        if (v44)
        {
          goto LABEL_219;
        }
      }
    }

    v57 = &v180[2 * v42];
    v57[5] = v37;
    v57[6] = v4;
    v44 = __OFADD__(v40, 1);
    v58 = v40 + 1;
    if (v44)
    {
      goto LABEL_205;
    }

    *(v7 + 24) = v58;
    swift_unknownObjectRetain();
    sub_181AAD084(v168, v15);
    result = swift_unknownObjectRelease();
LABEL_4:
    v10 = v179;
    v9 = v11;
  }

  v159[2] = v7;

  v64 = *v161;

  v180 = v64;
  result = sub_181A54748();
  v65 = *(result + 32);
  v66 = *(result + 24) + v65;
  if (*(result + 16) < v66)
  {
    v66 = *(result + 16);
  }

  v162 = result;
  v177 = result;
  v178 = v65;
  v179 = v66;
  while (2)
  {
    if (v65 != v66)
    {
LABEL_87:
      v178 = v65 + 1;
      v69 = *(v162 + 16 * v65 + 40);
      v70 = *(a1 + 48);
      v174 = *(a1 + 32);
      v175 = v70;
      v176 = *(a1 + 64);
      v71 = *(a1 + 16);
      *v173 = *a1;
      *&v173[16] = v71;
      v15 = *(&v69 + 1);
      v72 = *(&v69 + 1) >> 62;
      v165 = v65 + 1;
      v169 = v69;
      if (*(&v69 + 1) >> 62)
      {
        if (v72 == 1)
        {
          v4 = *(&v69 + 1) & 0x3FFFFFFFFFFFFFFFLL;
          v73 = swift_getObjectType();
          v7 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v74 = sub_181C15310();
          swift_unknownObjectRetain();
          if ((v7)(v173, &type metadata for CProtocol, v74, v73, v15 & 0x3FFFFFFFFFFFFFFFLL))
          {
LABEL_108:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
            v90 = swift_dynamicCastClass();
            if (v90)
            {
              v91 = v90;
            }

            else
            {
              v91 = a2;
            }

            if (v90)
            {
              v4 = 0;
            }

            else
            {
              v4 = v160;
            }

            v92 = v64[3];
            v93 = v92 + 1;
            if (__OFADD__(v92, 1))
            {
              goto LABEL_206;
            }

            swift_unknownObjectRetain();
            result = swift_isUniquelyReferenced_nonNull_native();
            if (v64[2] < v93 || (result & 1) == 0)
            {
              result = sub_181B2C3FC(result, v93);
            }

            v64 = v180;
            v94 = v180[3];
            v95 = v180[4];
            v44 = __OFADD__(v95, v94);
            v96 = v95 + v94;
            if (v44)
            {
              goto LABEL_207;
            }

            if (v94 < 0)
            {
              if (v96 < 0)
              {
                v109 = v180[2];
                v44 = __OFADD__(v96, v109);
                v96 += v109;
                if (v44)
                {
                  goto LABEL_224;
                }
              }
            }

            else
            {
              v97 = v180[2];
              v98 = __OFSUB__(v96, v97);
              v99 = v96 - v97;
              if (v99 < 0 == v98)
              {
                v96 = v99;
                if (v98)
                {
                  goto LABEL_220;
                }
              }
            }

            v110 = &v180[2 * v96];
            v110[5] = v91;
            v110[6] = v4;
            v44 = __OFADD__(v94, 1);
            v111 = v94 + 1;
            if (v44)
            {
              goto LABEL_208;
            }

            v64[3] = v111;
            swift_unknownObjectRetain();
            sub_181AAD084(v169, v15);
            result = swift_unknownObjectRelease();
            goto LABEL_83;
          }
        }

LABEL_104:
        v80 = swift_getObjectType();
        (*(v163 + 96))(v173, v80);
        v81 = v173[0];
        v7 = v173[1];
        v82 = *&v173[8];
        v83 = *&v173[16];
        v84 = v173[24];
        if (v72)
        {
          if (v72 == 1)
          {
            v4 = v15 & 0x3FFFFFFFFFFFFFFFLL;
            v85 = swift_getObjectType();
            LOBYTE(v170) = v81;
            HIBYTE(v170) = v7;
            *&v171 = v82;
            *(&v171 + 1) = v83;
            v172 = v84;
            v86 = (*((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))(&v170, v85, v15 & 0x3FFFFFFFFFFFFFFFLL);
            v87 = v82;
            v88 = v83;
            v89 = v84;
            goto LABEL_107;
          }
        }

        else
        {
          swift_beginAccess();
          if (*(v169 + 16) == v81 && *(v169 + 17) == v7)
          {
            if (*(v169 + 40))
            {
              if (v84)
              {
                if (*(v169 + 24) == v82 && *(v169 + 32) == v83)
                {
                  sub_181F48350(v82, v83, 1);
                  a2 = v166;
                  goto LABEL_108;
                }

                v86 = sub_182AD4268();
                v87 = v82;
                v88 = v83;
                v89 = 1;
LABEL_107:
                sub_181F48350(v87, v88, v89);
                a2 = v166;
                if (v86)
                {
                  goto LABEL_108;
                }

LABEL_133:
                v103 = v64[3];
                v15 = v103 + 1;
                if (__OFADD__(v103, 1))
                {
                  goto LABEL_168;
                }

                result = swift_isUniquelyReferenced_nonNull_native();
                if (v64[2] < v15 || (result & 1) == 0)
                {
                  result = sub_181B2C3FC(result, v15);
                }

                v64 = v180;
                v104 = v180[3];
                v105 = v180[4];
                v44 = __OFADD__(v105, v104);
                v79 = v105 + v104;
                if (v44)
                {
                  goto LABEL_169;
                }

                if (v104 < 0)
                {
                  v67 = v169;
                  if (v79 < 0)
                  {
                    v78 = v180[2];
                    v44 = __OFADD__(v79, v78);
                    v79 += v78;
                    if (v44)
                    {
                      goto LABEL_222;
                    }
                  }
                }

                else
                {
                  v106 = v180[2];
                  v107 = __OFSUB__(v79, v106);
                  v108 = v79 - v106;
                  v67 = v169;
                  if (v108 < 0 == v107)
                  {
                    v79 = v108;
                    if (v107)
                    {
                      goto LABEL_218;
                    }
                  }
                }

                *&v180[2 * v79 + 5] = v67;
                v44 = __OFADD__(v104, 1);
                v68 = v104 + 1;
                if (v44)
                {
                  goto LABEL_170;
                }

                v64[3] = v68;
LABEL_83:
                v66 = v179;
                v65 = v165;
                continue;
              }

              v100 = v82;
              v101 = v83;
              v102 = 0;
            }

            else
            {
              if ((v84 & 1) == 0)
              {
                v112 = *(v169 + 24);
                sub_181F48350(v82, v83, 0);
                a2 = v166;
                if (v112 == v82)
                {
                  goto LABEL_108;
                }

                goto LABEL_133;
              }

              v100 = v82;
              v101 = v83;
              v102 = 1;
            }

LABEL_132:
            sub_181F48350(v100, v101, v102);
            a2 = v166;
            goto LABEL_133;
          }
        }

        v100 = v82;
        v101 = v83;
        v102 = v84;
        goto LABEL_132;
      }

      v75 = v69;
      v76 = v173[0];
      v4 = v173[1];
      swift_beginAccess();
      if (*(v75 + 16) == v76 && *(v75 + 17) == v4)
      {
        v77 = *(v75 + 24);
        v4 = *(a1 + 8);
        if (*(v75 + 40))
        {
          if (*(a1 + 24) & 1) != 0 && (v77 == (v4 | ((*(a1 + 9) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 32)) << 8)) && *(v75 + 32) == *(a1 + 16) || (sub_182AD4268()))
          {

            goto LABEL_108;
          }
        }

        else if ((*(a1 + 24) & 1) == 0)
        {

          if (v4 == v77)
          {
            goto LABEL_108;
          }

          goto LABEL_104;
        }
      }

      goto LABEL_104;
    }

    break;
  }

  if (sub_181AC81FC(result))
  {
    v65 = v178;
    v162 = v177;
    goto LABEL_87;
  }

  v113 = v159;
  v159[3] = v64;

  ProtocolStack.transport.getter(v173);
  v15 = *&v173[8];
  v4 = 0xF000000000000007;
  if ((~*&v173[8] & 0xF000000000000007) == 0)
  {
    goto LABEL_175;
  }

  v7 = *v173;
  if ((sub_181C2110C(a1, *v173, *&v173[8]) & 1) == 0)
  {
    v177 = v7;
    v178 = v15;
    v114 = swift_getObjectType();
    (*(v163 + 96))(v173, v114);
    v170 = *v173;
    v171 = *&v173[8];
    v172 = v173[24];
    v115 = sub_181B37BFC(&v170);
    sub_181F48350(v171, *(&v171 + 1), v172);
    if ((v115 & 1) == 0)
    {
      sub_181A53008(v7, v15);
      v113 = v159;
      goto LABEL_175;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
  v116 = swift_dynamicCastClass();
  if (v116)
  {
    v117 = v116;
    v118 = 0;
    goto LABEL_173;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  v119 = swift_dynamicCastClass();
  if (v119)
  {
    v117 = v119;
    v118 = 0x2000000000000000;
    goto LABEL_173;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  v120 = swift_dynamicCastClass();
  if (v120)
  {
    v117 = v120;
    v118 = 0x4000000000000000;
    goto LABEL_173;
  }

LABEL_171:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v121 = swift_dynamicCastClass();
  if (!v121)
  {
    goto LABEL_209;
  }

  v117 = v121;
  v118 = 0x6000000000000000;
LABEL_173:
  swift_unknownObjectRetain();
  sub_181A53008(v7, v15);
LABEL_174:
  v113 = v159;
  v122 = v159[4];
  v123 = v159[5];
  v159[4] = v117;
  v159[5] = v118;
  sub_181A5301C(v122, v123);
LABEL_175:
  v124 = v113[13];
  if ((v4 & ~v124) != 0)
  {
    v125 = v113[12];
    sub_181AACFF4(v125, v113[13]);
    if (sub_181C2110C(a1, v125, v124) & 1) != 0 || (v177 = v125, v178 = v124, v126 = swift_getObjectType(), (*(v163 + 96))(v173, v126), v170 = *v173, v171 = *&v173[8], v172 = v173[24], v127 = sub_181B37BFC(&v170), sub_181F48350(v171, *(&v171 + 1), v172), (v127))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
      v128 = swift_dynamicCastClass();
      if (v128)
      {
        v129 = v128;
        v130 = 0;
        goto LABEL_187;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
      v131 = swift_dynamicCastClass();
      if (v131)
      {
        v129 = v131;
        v130 = 0x2000000000000000;
        goto LABEL_187;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
      v132 = swift_dynamicCastClass();
      if (v132)
      {
        v129 = v132;
        v130 = 0x4000000000000000;
        goto LABEL_187;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
      v133 = swift_dynamicCastClass();
      if (v133)
      {
        v129 = v133;
        v130 = 0x6000000000000000;
LABEL_187:
        swift_unknownObjectRetain();
        sub_181A53008(v125, v124);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0);
        v129 = swift_dynamicCastClass();
        swift_unknownObjectRetain();
        sub_181A53008(v125, v124);
        if (v129)
        {
          v130 = 0x8000000000000000;
        }

        else
        {
          v129 = a2;
          v130 = v163 | 0xA000000000000000;
        }
      }

      v134 = v159[12];
      v135 = v159[13];
      v159[12] = v129;
      v159[13] = v130;
      v113 = v159;
      sub_181A53008(v134, v135);
    }

    else
    {
      sub_181A53008(v125, v124);
      v113 = v159;
    }
  }

  swift_beginAccess();
  v136 = v113[7];
  if ((~v136 & 0xF000000000000007) != 0)
  {
    v137 = v113[6];
    sub_181B2C3E0(v137, v113[7]);
    if (sub_181CDADD8(a1, v137, v136) & 1) != 0 || (v138 = swift_getObjectType(), (*(v163 + 96))(v173, v138), v170 = *v173, v171 = *&v173[8], v172 = v173[24], v139 = sub_181ACC890(&v170), sub_181F48350(v171, *(&v171 + 1), v172), (v139))
    {
      v140 = swift_unknownObjectRetain();
      sub_181F61FE0(v140, v163, v173);
      sub_181A52FE0(v137, v136);
      v141 = v159[6];
      v142 = v159[7];
      *(v159 + 3) = *v173;
      sub_181A52FE0(v141, v142);
    }

    else
    {
      sub_181A52FE0(v137, v136);
    }
  }

  ProtocolStack.link.getter(v173);
  v143 = *v173;
  if (*v173 != 1)
  {
    v144 = *&v173[8];
    v145 = *(a1 + 48);
    v174 = *(a1 + 32);
    v175 = v145;
    v176 = *(a1 + 64);
    v146 = *(a1 + 16);
    *v173 = *a1;
    *&v173[16] = v146;
    if (v143)
    {
      v147 = swift_getObjectType();
      v148 = *(v144 + 32);
      v149 = sub_181C15310();
      if (v148(v173, &type metadata for CProtocol, v149, v147, v144))
      {
        sub_181B03DAC(v143);
        goto LABEL_200;
      }
    }

    v150 = swift_getObjectType();
    (*(v163 + 96))(v173, v150);
    v152 = *&v173[8];
    v151 = *&v173[16];
    v153 = v173[24];
    if (v143)
    {
      v154 = *v173;
      v155 = swift_getObjectType();
      v170 = v154;
      *&v171 = v152;
      *(&v171 + 1) = v151;
      v172 = v153;
      v156 = (*(v144 + 40))(&v170, v155, v144);
      sub_181B03DAC(v143);
      sub_181F48350(v152, v151, v153);
      if (v156)
      {
LABEL_200:
        v157 = v159[8];
        v159[8] = a2;
        v159[9] = v163;
        swift_unknownObjectRetain();
        sub_181AC3890(v157);
      }
    }

    else
    {
      sub_181F48350(*&v173[8], *&v173[16], v173[24]);
    }
  }
}

uint64_t sub_181D861F8()
{
  if ((nwlog_get_sensitive_redacted() & 1) == 0)
  {
    return sub_181EB1C68();
  }

  v1 = OBJC_IVAR____TtC7Network7NWArray_deque;
  result = swift_beginAccess();
  v3 = *(*(v0 + v1) + 24);
  if (!v3)
  {
    return 23899;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = 0x1E69E5000uLL;
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v4)
      {
        result = MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
      }

      if (v4 >= *(*(v0 + v1) + 24))
      {
        goto LABEL_20;
      }

      swift_unknownObjectRetain();
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8 && (v9 = v8, [v8 respondsToSelector_]))
      {
        v10 = v5;
        v15 = sub_182AD41B8();
        v16 = v11;
        MEMORY[0x1865D9CA0](2108704, 0xE300000000000000);
        v12 = [v9 redactedDescription];
        if (v12)
        {
          v13 = v12;
          sub_182AD2F88();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8391E0);
        v14 = sub_182AD3018();
        MEMORY[0x1865D9CA0](v14);

        MEMORY[0x1865D9CA0](v15, v16);
        swift_unknownObjectRelease();

        v5 = v10;
      }

      else
      {
        v6 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v6);

        MEMORY[0x1865D9CA0](2108704, 0xE300000000000000);
        sub_182AD3E18();
        MEMORY[0x1865D9CA0](0, 0xE000000000000000);

        result = swift_unknownObjectRelease();
      }

      ++v4;
      if (v7 == v3)
      {
        MEMORY[0x1865D9CA0](93, 0xE100000000000000);
        return 91;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t nwlog_get_sensitive_redacted()
{
  if (nwlog_get_sensitive_redacted::onceToken != -1)
  {
    dispatch_once(&nwlog_get_sensitive_redacted::onceToken, &__block_literal_global_83);
  }

  return nwlog_get_sensitive_redacted::sensitiveRedacted;
}

uint64_t _nw_quic_stream_get_is_unidirectional(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  result = sub_181CB38E8(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + 64);

      return v6 & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ___ZL53nw_endpoint_resolver_duplicate_array_without_endpointPU22objcproto11OS_nw_array8NSObjectPU25objcproto14OS_nw_endpointS__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((nw_endpoint_is_equal(*(a1 + 32), v4, 1) & 1) == 0)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      if (v4)
      {
        _nw_array_append(v5, v4);
      }
    }
  }

  return 1;
}

uint64_t nw_quic_stream_get_is_unidirectional(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_stream(v1))
  {
    is_unidirectional = _nw_quic_stream_get_is_unidirectional(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_get_is_unidirectional";
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
        v14 = "nw_quic_stream_get_is_unidirectional";
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
            v14 = "nw_quic_stream_get_is_unidirectional";
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
        v14 = "nw_quic_stream_get_is_unidirectional";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_get_is_unidirectional";
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

  is_unidirectional = 0;
LABEL_3:

  return is_unidirectional;
}

uint64_t _nw_quic_stream_get_is_datagram(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  result = sub_181CB38E8(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + 64);

      return (v6 >> 1) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ___ZL36nw_protocol_http3_set_up_associationP17nw_protocol_http3P13nw_parameters_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  handle = nw_protocol_instance_stub_get_handle(a2);
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_protocol_http3_set_up_association_block_invoke";
    v23 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v23, &type, &v31))
    {
      goto LABEL_63;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v34 = "nw_protocol_http3_set_up_association_block_invoke";
      v26 = "%{public}s called with null protocol_handle";
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v28 = os_log_type_enabled(v24, type);
      if (backtrace_string)
      {
        if (v28)
        {
          *buf = 136446466;
          v34 = "nw_protocol_http3_set_up_association_block_invoke";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null protocol_handle, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_63:
        if (!v23)
        {
          return;
        }

LABEL_64:
        free(v23);
        return;
      }

      if (!v28)
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v34 = "nw_protocol_http3_set_up_association_block_invoke";
      v26 = "%{public}s called with null protocol_handle, no backtrace";
    }

    else
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_63;
      }

      *buf = 136446210;
      v34 = "nw_protocol_http3_set_up_association_block_invoke";
      v26 = "%{public}s called with null protocol_handle, backtrace limit exceeded";
    }

LABEL_62:
    _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
    goto LABEL_63;
  }

  v5 = *(handle + 40);
  if (v5)
  {
    if ((*(v5 + 1397) & 0x8008) != 0)
    {
      return;
    }

    v6 = nw_path_copy_for_flow_registration(a3, *(v5 + 1224));
    if (!v6)
    {
      goto LABEL_32;
    }

    v7 = v6;
    v8 = *(v5 + 1128);
    if (v8 != v7)
    {
      if (v8)
      {
        os_release(v8);
        *(v5 + 1128) = 0;
      }

      *(v5 + 1128) = os_retain(v7);
    }

    v9 = *(v5 + 1248);
    if (v9 && (nw_path_has_proxy_config(v7, v9) & 1) == 0)
    {
      if ((*(v5 + 1399) & 0x20) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          v18 = *(v5 + 1304);
          *buf = 136446978;
          v34 = "nw_protocol_http3_set_up_association_block_invoke";
          v35 = 2082;
          v36 = (v5 + 1313);
          v37 = 2080;
          v38 = " ";
          v39 = 1024;
          v40 = v18;
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Effective proxy configuration lost, treating as a GOAWAY", buf, 0x26u);
        }
      }

      nw_http3_async_close_connection_if_no_stream(v5);
      nw_http3_notify_do_not_reuse(v5);
      goto LABEL_31;
    }

    if ((*(v5 + 1399) & 0x40) != 0)
    {
      v10 = v7;
      is_viable = _nw_path_is_viable(v10);

      if (nw_path_get_alternate_path_state(v10, a3))
      {
        v12 = 0;
      }

      else
      {
        v12 = is_viable;
      }

      if (v12)
      {
        if ((*(v5 + 1399) & 4) != 0)
        {
          if ((*(v5 + 1399) & 0x20) == 0)
          {
            v13 = __nwlog_obj();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = *(v5 + 1304);
              *buf = 136446978;
              v34 = "nw_protocol_http3_set_up_association_block_invoke";
              v35 = 2082;
              v36 = (v5 + 1313);
              v37 = 2080;
              v38 = " ";
              v39 = 1024;
              v40 = v14;
              _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Path recovered, recommending that new flows join", buf, 0x26u);
            }
          }

          *(v5 + 1399) &= ~4u;
          v15 = v5;
          v16 = 1;
LABEL_30:
          nw_http3_notify_viability_changed(v15, v16);
        }
      }

      else if ((*(v5 + 1399) & 4) == 0)
      {
        if ((*(v5 + 1399) & 0x20) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v19 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
          {
            v20 = *(v5 + 1304);
            *buf = 136446978;
            v34 = "nw_protocol_http3_set_up_association_block_invoke";
            v35 = 2082;
            v36 = (v5 + 1313);
            v37 = 2080;
            v38 = " ";
            v39 = 1024;
            v40 = v20;
            _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Bad path, recommending that new flows not join", buf, 0x26u);
          }
        }

        *(v5 + 1399) |= 4u;
        v15 = v5;
        v16 = 0;
        goto LABEL_30;
      }
    }

LABEL_31:
    os_release(v7);
LABEL_32:
    v21 = *(v5 + 888);
    if (v21)
    {
      do
      {
        v22 = *(v21 + 536);
        nw_protocol_notify(*(v21 + 48), v21, 29);
        v21 = v22;
      }

      while (v22);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v34 = "nw_protocol_http3_set_up_association_block_invoke";
  v23 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (!__nwlog_fault(v23, &type, &v31))
  {
    goto LABEL_63;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v24 = __nwlog_obj();
    v25 = type;
    if (!os_log_type_enabled(v24, type))
    {
      goto LABEL_63;
    }

    *buf = 136446210;
    v34 = "nw_protocol_http3_set_up_association_block_invoke";
    v26 = "%{public}s called with null http3";
    goto LABEL_62;
  }

  if (v31 != 1)
  {
    v24 = __nwlog_obj();
    v25 = type;
    if (!os_log_type_enabled(v24, type))
    {
      goto LABEL_63;
    }

    *buf = 136446210;
    v34 = "nw_protocol_http3_set_up_association_block_invoke";
    v26 = "%{public}s called with null http3, backtrace limit exceeded";
    goto LABEL_62;
  }

  v29 = __nw_create_backtrace_string();
  v24 = __nwlog_obj();
  v25 = type;
  v30 = os_log_type_enabled(v24, type);
  if (!v29)
  {
    if (!v30)
    {
      goto LABEL_63;
    }

    *buf = 136446210;
    v34 = "nw_protocol_http3_set_up_association_block_invoke";
    v26 = "%{public}s called with null http3, no backtrace";
    goto LABEL_62;
  }

  if (v30)
  {
    *buf = 136446466;
    v34 = "nw_protocol_http3_set_up_association_block_invoke";
    v35 = 2082;
    v36 = v29;
    _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null http3, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v29);
  if (v23)
  {
    goto LABEL_64;
  }
}

uint64_t nw_protocol_instance_stub_get_handle(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[1];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_instance_stub_get_handle";
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
        v15 = "nw_protocol_instance_stub_get_handle";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null stub", buf, 0xCu);
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
          v15 = "nw_protocol_instance_stub_get_handle";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null stub, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_instance_stub_get_handle";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null stub, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_instance_stub_get_handle";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null stub, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_3:

  return v2;
}

uint64_t nw_quic_stream_get_is_datagram(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_stream(v1))
  {
    is_datagram = _nw_quic_stream_get_is_datagram(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_get_is_datagram";
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
        v14 = "nw_quic_stream_get_is_datagram";
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
            v14 = "nw_quic_stream_get_is_datagram";
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
        v14 = "nw_quic_stream_get_is_datagram";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_get_is_datagram";
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

  is_datagram = 0;
LABEL_3:

  return is_datagram;
}

uint64_t nw_quic_stream_get_associated_stream_id(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_stream(v1))
  {
    associated_stream_id = _nw_quic_stream_get_associated_stream_id(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_get_associated_stream_id";
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
        v14 = "nw_quic_stream_get_associated_stream_id";
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
            v14 = "nw_quic_stream_get_associated_stream_id";
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
        v14 = "nw_quic_stream_get_associated_stream_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_get_associated_stream_id";
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

  associated_stream_id = 0;
LABEL_3:

  return associated_stream_id;
}

uint64_t nw_path_get_alternate_path_state(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    is_viable = _nw_path_is_viable(v3);
    if (v4 && _nw_path_get_status(v4) == 1 && !_nw_path_get_flow_divert_unit(v3))
    {
      if (is_viable && _nw_path_get_status(v3) != 2)
      {
        v8 = _nw_path_copy_connected_interface(v3);
        v9 = _nw_path_is_tunneled(v3);
        if (v8)
        {
          v10 = v9;
        }

        else
        {
          v10 = 1;
        }

        if ((v10 & 1) != 0 || _nw_interface_get_type(v8) == 4)
        {
          v6 = 0;
        }

        else
        {
          index = _nw_interface_get_index(v8);
          v6 = index != nw_path_get_interface_index(v4);
        }
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = (_nw_path_get_status(v3) == 3) & (is_viable ^ 1u);
    }

    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_path_get_alternate_path_state";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v13, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "nw_path_get_alternate_path_state";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null connected_path", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v14, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v23 = "nw_path_get_alternate_path_state";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null connected_path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_33;
      }

      if (v18)
      {
        *buf = 136446210;
        v23 = "nw_path_get_alternate_path_state";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s called with null connected_path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v14 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "nw_path_get_alternate_path_state";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s called with null connected_path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_33:
  if (v13)
  {
    free(v13);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

uint64_t _nw_quic_stream_get_associated_stream_id_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  result = sub_181CB38E8(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      swift_beginAccess();
      v6 = *(v5 + 16);
      v7 = *(v5 + 24);

      if (v7)
      {
        return 0;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_quic_stream_get_datagram_context_id(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_quic_stream(v1))
  {
    datagram_context_id = _nw_quic_stream_get_datagram_context_id(v1);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_get_datagram_context_id";
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
        v14 = "nw_quic_stream_get_datagram_context_id";
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
            v14 = "nw_quic_stream_get_datagram_context_id";
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
        v14 = "nw_quic_stream_get_datagram_context_id";
        v8 = "%{public}s called with null nw_protocol_options_is_quic_stream(options), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_get_datagram_context_id";
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

  datagram_context_id = 0;
LABEL_3:

  return datagram_context_id;
}

uint64_t _nw_quic_stream_get_datagram_context_id_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  result = sub_181CB38E8(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + 32);
      v7 = *(v5 + 40);

      if (v7)
      {
        return 0;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __nw_endpoint_handler_register_context_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (nw_protocol_metadata_matches_definition(v5, *(*(a1 + 32) + 768)))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  return 1;
}

void nw_protocol_notify(void *a1, uint64_t a2, int a3)
{
  v63 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a2;
    v4 = a1;
    v5 = a1[5];
    v6 = a1;
    if (v5 == &nw_protocol_ref_counted_handle || v5 == &nw_protocol_ref_counted_additional_handle && (v6 = a1[8]) != 0)
    {
      v23 = v6[11];
      if (v23)
      {
        v7 = 0;
        v6[11] = v23 + 1;
        if (!a2)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v7 = 0;
        if (!a2)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v7 = 1;
      if (!a2)
      {
LABEL_39:
        __nwlog_obj();
        *buf = 136446210;
        v56 = "__nw_protocol_notify";
        v3 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v53 = 0;
        if (!__nwlog_fault(v3, &type, &v53))
        {
          goto LABEL_114;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v24 = __nwlog_obj();
          v25 = type;
          if (!os_log_type_enabled(v24, type))
          {
            goto LABEL_114;
          }

          *buf = 136446210;
          v56 = "__nw_protocol_notify";
          v26 = "%{public}s called with null other_protocol";
          goto LABEL_113;
        }

        if (v53 != 1)
        {
          v24 = __nwlog_obj();
          v25 = type;
          if (!os_log_type_enabled(v24, type))
          {
            goto LABEL_114;
          }

          *buf = 136446210;
          v56 = "__nw_protocol_notify";
          v26 = "%{public}s called with null other_protocol, backtrace limit exceeded";
          goto LABEL_113;
        }

        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v25 = type;
        v45 = os_log_type_enabled(v24, type);
        if (!backtrace_string)
        {
          if (!v45)
          {
            goto LABEL_114;
          }

          *buf = 136446210;
          v56 = "__nw_protocol_notify";
          v26 = "%{public}s called with null other_protocol, no backtrace";
LABEL_113:
          _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
LABEL_114:
          if (!v3)
          {
            goto LABEL_23;
          }

LABEL_22:
          free(v3);
          goto LABEL_23;
        }

        if (v45)
        {
          *buf = 136446466;
          v56 = "__nw_protocol_notify";
          v57 = 2082;
          v58 = backtrace_string;
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v3)
        {
          goto LABEL_22;
        }

LABEL_23:
        if ((v7 & 1) == 0)
        {
          v18 = *(v4 + 40);
          if (v18 == &nw_protocol_ref_counted_handle || v18 == &nw_protocol_ref_counted_additional_handle && (v4 = *(v4 + 64)) != 0)
          {
            v19 = *(v4 + 88);
            if (v19)
            {
              v20 = v19 - 1;
              *(v4 + 88) = v20;
              if (!v20)
              {
                v21 = *(v4 + 64);
                if (v21)
                {
                  *(v4 + 64) = 0;
                  v21[2](v21);
                  _Block_release(v21);
                }

                if (*(v4 + 72))
                {
                  v22 = *(v4 + 64);
                  if (v22)
                  {
                    _Block_release(v22);
                  }
                }

                goto LABEL_34;
              }
            }
          }
        }

        return;
      }
    }

    v8 = *(a2 + 40);
    v9 = a2;
    if (v8 == &nw_protocol_ref_counted_handle || v8 == &nw_protocol_ref_counted_additional_handle && (v9 = *(a2 + 64)) != 0)
    {
      v27 = *(v9 + 88);
      if (v27)
      {
        v10 = 0;
        *(v9 + 88) = v27 + 1;
        if (!a3)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v10 = 0;
        if (!a3)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 1;
      if (!a3)
      {
LABEL_46:
        __nwlog_obj();
        *buf = 136446210;
        v56 = "__nw_protocol_notify";
        v28 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v53 = 0;
        if (!__nwlog_fault(v28, &type, &v53))
        {
          goto LABEL_120;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v29 = __nwlog_obj();
          v30 = type;
          if (!os_log_type_enabled(v29, type))
          {
            goto LABEL_120;
          }

          *buf = 136446210;
          v56 = "__nw_protocol_notify";
          v31 = "%{public}s called with null type";
          goto LABEL_118;
        }

        if (v53 != 1)
        {
          v29 = __nwlog_obj();
          v30 = type;
          if (!os_log_type_enabled(v29, type))
          {
            goto LABEL_120;
          }

          *buf = 136446210;
          v56 = "__nw_protocol_notify";
          v31 = "%{public}s called with null type, backtrace limit exceeded";
          goto LABEL_118;
        }

        v46 = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v30 = type;
        v47 = os_log_type_enabled(v29, type);
        if (v46)
        {
          if (v47)
          {
            *buf = 136446466;
            v56 = "__nw_protocol_notify";
            v57 = 2082;
            v58 = v46;
            _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null type, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v46);
          if (!v28)
          {
LABEL_11:
            if ((v10 & 1) == 0)
            {
              v13 = *(v3 + 40);
              if (v13 == &nw_protocol_ref_counted_handle || v13 == &nw_protocol_ref_counted_additional_handle && (v3 = *(v3 + 64)) != 0)
              {
                v14 = *(v3 + 88);
                if (v14)
                {
                  v15 = v14 - 1;
                  *(v3 + 88) = v15;
                  if (!v15)
                  {
                    v16 = *(v3 + 64);
                    if (v16)
                    {
                      *(v3 + 64) = 0;
                      v16[2](v16);
                      _Block_release(v16);
                    }

                    if (*(v3 + 72))
                    {
                      v17 = *(v3 + 64);
                      if (v17)
                      {
                        _Block_release(v17);
                      }
                    }

                    goto LABEL_22;
                  }
                }
              }
            }

            goto LABEL_23;
          }

LABEL_121:
          free(v28);
          goto LABEL_11;
        }

        if (v47)
        {
          *buf = 136446210;
          v56 = "__nw_protocol_notify";
          v31 = "%{public}s called with null type, no backtrace";
LABEL_118:
          v50 = v29;
          v51 = v30;
          v52 = 12;
          goto LABEL_119;
        }

        goto LABEL_120;
      }
    }

    v11 = a1[3];
    if (v11)
    {
      v12 = *(v11 + 160);
      if (v12)
      {
        v12(a1, a2);
        goto LABEL_11;
      }
    }

    __nwlog_obj();
    v32 = *(v4 + 16);
    *buf = 136446722;
    v56 = "__nw_protocol_notify";
    if (!v32)
    {
      v32 = "invalid";
    }

    v57 = 2082;
    v58 = v32;
    v59 = 2048;
    v60 = v4;
    v28 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (__nwlog_fault(v28, &type, &v53))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (!os_log_type_enabled(v33, type))
        {
          goto LABEL_120;
        }

        v35 = *(v4 + 16);
        if (!v35)
        {
          v35 = "invalid";
        }

        *buf = 136446722;
        v56 = "__nw_protocol_notify";
        v57 = 2082;
        v58 = v35;
        v59 = 2048;
        v60 = v4;
        v31 = "%{public}s protocol %{public}s (%p) has invalid notify callback";
      }

      else if (v53 == 1)
      {
        v39 = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v34 = type;
        v40 = os_log_type_enabled(v33, type);
        if (v39)
        {
          if (v40)
          {
            v41 = *(v4 + 16);
            if (!v41)
            {
              v41 = "invalid";
            }

            *buf = 136446978;
            v56 = "__nw_protocol_notify";
            v57 = 2082;
            v58 = v41;
            v59 = 2048;
            v60 = v4;
            v61 = 2082;
            v62 = v39;
            _os_log_impl(&dword_181A37000, v33, v34, "%{public}s protocol %{public}s (%p) has invalid notify callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v39);
          goto LABEL_120;
        }

        if (!v40)
        {
          goto LABEL_120;
        }

        v49 = *(v4 + 16);
        if (!v49)
        {
          v49 = "invalid";
        }

        *buf = 136446722;
        v56 = "__nw_protocol_notify";
        v57 = 2082;
        v58 = v49;
        v59 = 2048;
        v60 = v4;
        v31 = "%{public}s protocol %{public}s (%p) has invalid notify callback, no backtrace";
      }

      else
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (!os_log_type_enabled(v33, type))
        {
          goto LABEL_120;
        }

        v48 = *(v4 + 16);
        if (!v48)
        {
          v48 = "invalid";
        }

        *buf = 136446722;
        v56 = "__nw_protocol_notify";
        v57 = 2082;
        v58 = v48;
        v59 = 2048;
        v60 = v4;
        v31 = "%{public}s protocol %{public}s (%p) has invalid notify callback, backtrace limit exceeded";
      }

      v50 = v33;
      v51 = v34;
      v52 = 32;
LABEL_119:
      _os_log_impl(&dword_181A37000, v50, v51, v31, buf, v52);
    }

LABEL_120:
    if (!v28)
    {
      goto LABEL_11;
    }

    goto LABEL_121;
  }

  __nwlog_obj();
  *buf = 136446210;
  v56 = "__nw_protocol_notify";
  v4 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v53 = 0;
  if (__nwlog_fault(v4, &type, &v53))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_109;
      }

      *buf = 136446210;
      v56 = "__nw_protocol_notify";
      v38 = "%{public}s called with null protocol";
    }

    else if (v53 == 1)
    {
      v42 = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v37 = type;
      v43 = os_log_type_enabled(v36, type);
      if (v42)
      {
        if (v43)
        {
          *buf = 136446466;
          v56 = "__nw_protocol_notify";
          v57 = 2082;
          v58 = v42;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v42);
        if (v4)
        {
          goto LABEL_34;
        }

        return;
      }

      if (!v43)
      {
        goto LABEL_109;
      }

      *buf = 136446210;
      v56 = "__nw_protocol_notify";
      v38 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v36 = __nwlog_obj();
      v37 = type;
      if (!os_log_type_enabled(v36, type))
      {
        goto LABEL_109;
      }

      *buf = 136446210;
      v56 = "__nw_protocol_notify";
      v38 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0xCu);
  }

LABEL_109:
  if (v4)
  {
LABEL_34:
    free(v4);
  }
}

uint64_t sub_181D889B8(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 156);
  if ((v3 & 0x80000) == 0)
  {
    if ((v3 & 0x400000) == 0)
    {
      if ((v3 & 0x800000) == 0)
      {
        if ((v3 & 0x100000) == 0)
        {
          if ((v3 & 0x2000000) == 0)
          {
            return result;
          }

          v4 = 0;
          v5 = *(v1 + 156);
          goto LABEL_45;
        }

        v4 = 0;
        v5 = *(v1 + 156);
        if ((v5 & 0x100000) != 0)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v4 = 0;
      v5 = *(v1 + 156);
      if ((v5 & 0x800000) != 0)
      {
LABEL_39:
        if ((v3 & 0x100000) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }

      goto LABEL_31;
    }

    v4 = 0;
    v5 = *(v1 + 156);
    if ((v5 & 0x400000) == 0)
    {
LABEL_13:
      v5 |= 0x400000u;
      *(v1 + 156) = v5;
      if ((v3 & 0x800000) == 0)
      {
        if ((v3 & 0x100000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_15;
      }

      v4 = 1;
      if ((v5 & 0x800000) != 0)
      {
        goto LABEL_39;
      }

LABEL_31:
      v5 |= 0x800000u;
      *(v1 + 156) = v5;
      if ((v3 & 0x100000) == 0)
      {
LABEL_32:
        if ((v3 & 0x2000000) == 0)
        {
          goto LABEL_49;
        }

LABEL_42:
        v4 = 1;
        goto LABEL_45;
      }

LABEL_15:
      v4 = 1;
      if ((v5 & 0x100000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_44;
    }

LABEL_29:
    if ((v3 & 0x800000) == 0 || (v5 & 0x800000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  v5 = *(v1 + 156);
  if ((v5 & 0x80000) != 0)
  {
    if ((v3 & 0x400000) == 0)
    {
      if ((v3 & 0x800000) == 0)
      {
        if ((v3 & 0x100000) == 0)
        {
          if ((v3 & 0x2000000) == 0)
          {
            return result;
          }

          v4 = 0;
          goto LABEL_45;
        }

        v4 = 0;
        if ((v5 & 0x100000) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_44;
      }

      v4 = 0;
      if ((v5 & 0x800000) != 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

    v4 = 0;
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

  v5 |= 0x80000u;
  *(v1 + 156) = v5;
  if ((v3 & 0x400000) != 0)
  {
    v4 = 1;
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

  if ((v3 & 0x800000) != 0)
  {
    v4 = 1;
    if ((v5 & 0x800000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  if ((v3 & 0x100000) == 0)
  {
    goto LABEL_32;
  }

  v4 = 1;
LABEL_40:
  if ((v5 & 0x100000) == 0)
  {
LABEL_41:
    v5 |= 0x100000u;
    *(v1 + 156) = v5;
    if ((v3 & 0x2000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_42;
  }

LABEL_44:
  if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_45:
  if ((v5 & 0x2000000) != 0)
  {
LABEL_48:
    if (!v4)
    {
      return result;
    }

LABEL_49:
    if ((v5 & 0x2000000) != 0)
    {
      if ((v5 & 0xC00000) != 0)
      {
        if (!*(v1 + 117))
        {
          v6 = 0xD000000000000024;
          *(v2 + 117) = 7;
          v7 = "Proxy used prohibited interface type";
LABEL_59:
          v8 = v7 - 32;
LABEL_60:
          v9 = v8 | 0x8000000000000000;

          *(v2 + 120) = v6;
          *(v2 + 128) = v9;

          *(v2 + 360) = 0;
          *(v2 + 368) = 0;
        }
      }

      else
      {
        if ((v5 & 0x80000) == 0)
        {
          if ((v5 & 0x100000) == 0 || *(v1 + 117))
          {
            goto LABEL_61;
          }

          *(v1 + 117) = 5;
          v8 = "NetworkExtension";
          v6 = 0xD000000000000026;
          goto LABEL_60;
        }

        if (!*(v1 + 117))
        {
          v6 = 0xD000000000000024;
          *(v2 + 117) = 5;
          v7 = "Proxy used prohibited expensive path";
          goto LABEL_59;
        }
      }
    }

LABEL_61:
    v13 = 32;
    v12[0] = 0;
    v12[1] = 0;
    memcpy(__dst, v2, 0x17AuLL);
    memcpy(__src, v2, sizeof(__src));
    sub_181A3DF5C(__dst, v15);
    v10 = sub_181ADE7DC(&v13, v12);
    memcpy(v15, __src, 0x17AuLL);
    sub_181A3DFB8(v15);

    *(v2 + 376) = v10 & 1;
    return result;
  }

  v5 |= 0x2000000u;
  *(v1 + 156) = v5;
  if (v4)
  {
    goto LABEL_49;
  }

  return result;
}

uint64_t sub_181D88C38(uint64_t a1, NSObject *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 57);

  if (v4 == 1)
  {
    swift_beginAccess();
    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = *(v5 + 16);
      if (v6 == a2)
      {

        return 1;
      }

      else
      {
        is_equal = nw_protocol_definition_is_equal(a2, v6);

        return is_equal;
      }
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v9 = nw_protocol_definition_copy_swift_identifier(a2);
    if (v9)
    {
      v10 = *(v9 + 3);
      v11 = *(v9 + 4);
      v12 = *(v9 + 40);
      v13 = sub_18214F1A4(*(v9 + 8), v10, v11, v12);
      sub_181F49A24(v10, v11, v12);

      swift_unknownObjectRelease();
    }

    else
    {
      identifier = nw_protocol_definition_get_identifier(a2);
      sub_181AAC800(identifier, &v15);
      v10 = v16;
      v11 = v17;
      v12 = v18;
      v13 = sub_18214F1A4(v15, v16, v17, v18);
    }

    sub_181F48350(v10, v11, v12);
    return v13 & 1;
  }
}

uint64_t _nw_protocol_metadata_matches_definition(uint64_t a1, NSObject *a2)
{
  swift_unknownObjectRetain();
  LOBYTE(a1) = sub_181D88C38(a1, a2);
  swift_unknownObjectRelease();
  return a1 & 1;
}

uint64_t ProtocolMetadata.matches<A>(definition:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *v14 = *a1;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v9 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v18, v14);
  v10 = v15;
  v11 = v16;
  v12 = v17;
  sub_181F49A24(v3, v4, v5);
  sub_181F49A24(v6, v7, v8);
  sub_181F48350(v10, v11, v12);
  sub_181F48350(v19, v20, v21);
  return v9 & 1;
}

uint64_t nw_array_remove_object(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v6 = v4;
  if (v3)
  {
    if (v4)
    {
      v7 = _nw_array_remove_object(v3, v4);
      goto LABEL_4;
    }

    v16 = __nwlog_obj(0, v5);
    *buf = 136446210;
    v28 = "nw_array_remove_object";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    v17 = __nwlog_fault(v10, &type, &v25);
    if (v17)
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj(v17, v18);
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v28 = "nw_array_remove_object";
          v15 = "%{public}s called with null object";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v25 != 1)
      {
        v13 = __nwlog_obj(v17, v18);
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v28 = "nw_array_remove_object";
          v15 = "%{public}s called with null object, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj(backtrace_string, v23);
      v14 = type;
      v24 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v24)
        {
          *buf = 136446210;
          v28 = "nw_array_remove_object";
          v15 = "%{public}s called with null object, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v24)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v28 = "nw_array_remove_object";
      v29 = 2082;
      v30 = backtrace_string;
      v22 = "%{public}s called with null object, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v13, v14, v22, buf, 0x16u);
LABEL_22:

      free(backtrace_string);
    }
  }

  else
  {
    v9 = __nwlog_obj(v4, v5);
    *buf = 136446210;
    v28 = "nw_array_remove_object";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    v11 = __nwlog_fault(v10, &type, &v25);
    if (v11)
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj(v11, v12);
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v28 = "nw_array_remove_object";
          v15 = "%{public}s called with null array";
LABEL_31:
          _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v25 != 1)
      {
        v13 = __nwlog_obj(v11, v12);
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v28 = "nw_array_remove_object";
          v15 = "%{public}s called with null array, backtrace limit exceeded";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj(backtrace_string, v20);
      v14 = type;
      v21 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (v21)
        {
          *buf = 136446210;
          v28 = "nw_array_remove_object";
          v15 = "%{public}s called with null array, no backtrace";
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (!v21)
      {
        goto LABEL_22;
      }

      *buf = 136446466;
      v28 = "nw_array_remove_object";
      v29 = 2082;
      v30 = backtrace_string;
      v22 = "%{public}s called with null array, dumping backtrace:%{public}s";
      goto LABEL_21;
    }
  }

LABEL_33:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_4:

  return v7;
}

void sub_181D89330(char *a1, uint64_t a2)
{
  v3 = *(**&a1[OBJC_IVAR____TtC7Network7NWArray_applyCount] + 136);
  v4 = a1;
  LOBYTE(v5) = atomic_load_explicit(v3(), memory_order_acquire);
  if (v5)
  {
    should_abort = __nwlog_should_abort("cannot remove during apply");

    if ((should_abort & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v7 = OBJC_IVAR____TtC7Network7NWArray_deque;
    swift_beginAccess();
    v8 = *&v4[v7];
    v9 = v8[3];
    if (v9)
    {
      v10 = 0;
      while ((v9 & ~(v9 >> 63)) != v10)
      {
        v11 = v8[4];
        if (v10 + v11 >= v8[2])
        {
          v12 = v8[2];
        }

        else
        {
          v12 = 0;
        }

        v13 = v10 + 1;
        if (v8[v10 + 5 + v11 - v12] == a2)
        {
          swift_unknownObjectRetain();
          if (v9 - 1 != v10)
          {
            while (v13 < v9)
            {
              v15 = v13;
              v16 = v13 - 1;
              if (v16 >= v9)
              {
                goto LABEL_37;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_181D895A8();
              }

              v17 = *&v4[v7];
              v18 = v17[4];
              v19 = v15 + v18 - 1;
              v20 = v17[2];
              if (v19 >= v20)
              {
                v21 = v17[2];
              }

              else
              {
                v21 = 0;
              }

              v22 = v19 - v21;
              if (v15 + v18 >= v20)
              {
                v23 = v17[2];
              }

              else
              {
                v23 = 0;
              }

              v24 = v15 + v18 - v23;
              if (v22 != v24)
              {
                v25 = v17[v22 + 5];
                v17[v22 + 5] = v17[v24 + 5];
                v17[v24 + 5] = v25;
              }

              v9 = v17[3];
              v13 = v16 + 2;
              if (v13 == v9)
              {
                v14 = v15 + 1;
                v9 = v14 - 1;
                goto LABEL_32;
              }
            }

            goto LABEL_36;
          }

          v14 = v9;
          v9 = v10;
LABEL_32:
          if (v14 < v9)
          {
            goto LABEL_39;
          }

          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_34;
        }

        ++v10;
        if (v9 == v13)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      swift_unknownObjectRetain();
      v14 = v9;
      if ((v9 & 0x8000000000000000) == 0)
      {
LABEL_13:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_181D895A8();
        }

        sub_181D896A4(v9, v14, *&v4[v7] + 16, *&v4[v7] + 40, sub_181D8977C, &type metadata for NWArray.Element, sub_18226EC18);
        swift_endAccess();
        swift_unknownObjectRelease();

        return;
      }

LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_181D895D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_181D896A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr), uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  a5(v16);
  if (v16[3])
  {
    v11 = v17;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v16[2];
  }

  if (v16[0])
  {
    swift_arrayDestroy();
  }

  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    swift_arrayDestroy();
  }

  return a7(a1, a2, a3, a4);
}

uint64_t sub_181D8977C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 8 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

id nw_write_request_copy_context(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[8];
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_write_request_copy_context";
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
        v16 = "nw_write_request_copy_context";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null request", buf, 0xCu);
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
          v16 = "nw_write_request_copy_context";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_write_request_copy_context";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null request, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_write_request_copy_context";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_parameters_get_attach_protocol_listener(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_attach_protocol_listener(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_attach_protocol_listener";
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
        v12 = "nw_parameters_get_attach_protocol_listener";
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
            v12 = "nw_parameters_get_attach_protocol_listener";
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
        v12 = "nw_parameters_get_attach_protocol_listener";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_attach_protocol_listener";
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

nw_frame **nw_protocol_create_outbound_data(NWConcrete_nw_protocol_instance *a1, void *a2, char a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!*&v5->protocol_outbound_data_limit)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_create_outbound_data";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v15, &type, &v38))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v41 = "nw_protocol_create_outbound_data";
        _os_log_impl(&dword_181A37000, v16, v24, "%{public}s called with null instance->context", buf, 0xCu);
      }

      goto LABEL_74;
    }

    if (v38 != 1)
    {
      v16 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v41 = "nw_protocol_create_outbound_data";
        _os_log_impl(&dword_181A37000, v16, v30, "%{public}s called with null instance->context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_74;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v26 = type;
    v27 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (v27)
      {
        *buf = 136446210;
        v41 = "nw_protocol_create_outbound_data";
        _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null instance->context, no backtrace", buf, 0xCu);
      }

      goto LABEL_74;
    }

    if (v27)
    {
      *buf = 136446466;
      v41 = "nw_protocol_create_outbound_data";
      v42 = 2082;
      v43 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v26, "%{public}s called with null instance->context, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_58;
  }

  data_from_pool = nw_protocol_create_data_from_pool(v5, a3);
  if (a3)
  {
    v8 = v6;
    if (data_from_pool)
    {
      nw_frame_reset(data_from_pool, 0, a2, nw_protocol_outbound_data_finalizer, v8);
      external = data_from_pool;
LABEL_29:
      external[2] = 0;
      tqh_last = v6->inbound_frames.tqh_last;
      external[3] = tqh_last;
      *tqh_last = external;
      v6->inbound_frames.tqh_last = external + 2;
LABEL_30:

      return external;
    }

    external = nw_frame_create_external(16, a2, nw_protocol_outbound_data_finalizer, v8);
    if (!external)
    {
      v14 = __nwlog_obj();
      *buf = 136446210;
      v41 = "nw_protocol_create_outbound_data";
      v15 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (!__nwlog_fault(v15, &type, &v38))
      {
        goto LABEL_75;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v41 = "nw_protocol_create_outbound_data";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s nw_frame_create_external failed", buf, 0xCu);
        }
      }

      else if (v38 == 1)
      {
        v31 = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v32 = type;
        v33 = os_log_type_enabled(v16, type);
        if (v31)
        {
          if (v33)
          {
            *buf = 136446466;
            v41 = "nw_protocol_create_outbound_data";
            v42 = 2082;
            v43 = v31;
            _os_log_impl(&dword_181A37000, v16, v32, "%{public}s nw_frame_create_external failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v31);
LABEL_75:
          if (!v15)
          {
LABEL_77:
            external = 0;
            goto LABEL_30;
          }

LABEL_76:
          free(v15);
          goto LABEL_77;
        }

        if (v33)
        {
          *buf = 136446210;
          v41 = "nw_protocol_create_outbound_data";
          _os_log_impl(&dword_181A37000, v16, v32, "%{public}s nw_frame_create_external failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v41 = "nw_protocol_create_outbound_data";
          _os_log_impl(&dword_181A37000, v16, v36, "%{public}s nw_frame_create_external failed, backtrace limit exceeded", buf, 0xCu);
        }
      }

LABEL_74:

      goto LABEL_75;
    }

LABEL_28:
    external = external;
    goto LABEL_29;
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  buffer_manager_with_context = nw_frame_get_buffer_manager_with_context(*&v6->protocol_outbound_data_limit, a2);
  if (buffer_manager_with_context)
  {
    v11 = buffer_manager_with_context;
    sized_typed = nw_mem_buffer_allocate_sized_typed(a2, 0x100004077774924uLL, buffer_manager_with_context);
    if (sized_typed)
    {
      v13 = sized_typed;
LABEL_20:
      v21 = v6;
      if (data_from_pool)
      {
        nw_frame_reset(data_from_pool, v13, a2, nw_protocol_outbound_data_finalizer, v21);
        external = data_from_pool;
        goto LABEL_23;
      }

      external = nw_frame_create(16, v13, a2, nw_protocol_outbound_data_finalizer, v21);
      if (external)
      {
LABEL_23:
        if (v11)
        {
          external[13] = v11;
        }

        else if (v13)
        {
          *(external + 102) |= 1u;
        }

        if (data_from_pool)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v28 = __nwlog_obj();
      *buf = 136446210;
      v41 = "nw_protocol_create_outbound_data";
      v15 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (!__nwlog_fault(v15, &type, &v38))
      {
        goto LABEL_75;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v41 = "nw_protocol_create_outbound_data";
          _os_log_impl(&dword_181A37000, v16, v29, "%{public}s nw_frame_create failed", buf, 0xCu);
        }

        goto LABEL_74;
      }

      if (v38 != 1)
      {
        v16 = __nwlog_obj();
        v37 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v41 = "nw_protocol_create_outbound_data";
          _os_log_impl(&dword_181A37000, v16, v37, "%{public}s nw_frame_create failed, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_74;
      }

      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v34 = type;
      v35 = os_log_type_enabled(v16, type);
      if (!backtrace_string)
      {
        if (v35)
        {
          *buf = 136446210;
          v41 = "nw_protocol_create_outbound_data";
          _os_log_impl(&dword_181A37000, v16, v34, "%{public}s nw_frame_create failed, no backtrace", buf, 0xCu);
        }

        goto LABEL_74;
      }

      if (v35)
      {
        *buf = 136446466;
        v41 = "nw_protocol_create_outbound_data";
        v42 = 2082;
        v43 = backtrace_string;
        _os_log_impl(&dword_181A37000, v16, v34, "%{public}s nw_frame_create failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_58:

      free(backtrace_string);
      if (!v15)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }
  }

  v13 = malloc_type_malloc(a2, 0x28BFECE8uLL);
  if (v13)
  {
    v11 = 0;
    goto LABEL_20;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v41 = "nw_protocol_create_outbound_data";
  v19 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v19);
  if (!result)
  {
    free(v19);
LABEL_19:
    v11 = 0;
    v13 = 0;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

BOOL nw_parameters_get_include_peer_to_peer(nw_parameters_t parameters)
{
  v15 = *MEMORY[0x1E69E9840];
  if (parameters)
  {

    return _nw_parameters_get_include_peer_to_peer(parameters);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_include_peer_to_peer";
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
        v12 = "nw_parameters_get_include_peer_to_peer";
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
            v12 = "nw_parameters_get_include_peer_to_peer";
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
        v12 = "nw_parameters_get_include_peer_to_peer";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_include_peer_to_peer";
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

void ___ZL36nw_connection_copy_description_levelP24NWConcrete_nw_connection26nw_context_privacy_level_t_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 144);
  if (v3)
  {
    if ((*(v2 + 109) & 0x40) != 0)
    {
      v8 = nw_endpoint_handler_copy_connected_path(v3);
      v9 = *(a1[5] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      *(*(a1[6] + 8) + 24) = 1;
    }

    else
    {
      v4 = v3;
      os_unfair_lock_lock(v4 + 28);
      v5 = *(v4 + 8);
      os_unfair_lock_unlock(v4 + 28);

      v6 = *(a1[5] + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }
  }
}

uint64_t ___ZL36nw_connection_copy_description_levelP24NWConcrete_nw_connection26nw_context_privacy_level_t_block_invoke_2(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 64);
  v3 = ", path ";
  if (!v2)
  {
    v3 = "";
    v2 = "";
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v4 = "connected ";
  }

  else
  {
    v4 = "";
  }

  return asprintf((*(*(a1 + 40) + 8) + 24), "[C%u %s%s %s%s%s]", *(*(a1 + 32) + 448), v4, *(a1 + 56), a2, v3, v2);
}

uint64_t nw_protocol_implementation_finalize_output_frames(nw_protocol *a1, nw_frame_array_s *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    handle = a1->handle;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v5 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
        v6 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v56 = 0;
        if (__nwlog_fault(v6, &type, &v56))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v7 = __nwlog_obj();
            v8 = type;
            if (os_log_type_enabled(v7, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
              _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v56 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v7 = __nwlog_obj();
            v20 = type;
            v21 = os_log_type_enabled(v7, type);
            if (backtrace_string)
            {
              if (v21)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
                *&buf[12] = 2082;
                *&buf[14] = backtrace_string;
                _os_log_impl(&dword_181A37000, v7, v20, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v6)
              {
                goto LABEL_35;
              }

              goto LABEL_34;
            }

            if (v21)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
              _os_log_impl(&dword_181A37000, v7, v20, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v7 = __nwlog_obj();
            v22 = type;
            if (os_log_type_enabled(v7, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
              _os_log_impl(&dword_181A37000, v7, v22, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v6)
        {
LABEL_35:
          v10 = 0;
          v18 = 0;
LABEL_36:

          return v18;
        }

LABEL_34:
        free(v6);
        goto LABEL_35;
      }

      v3 = *a1[1].flow_id;
    }

    v9 = &v3[1].output_handler;
    v10 = v9;
    v11 = v3[1].handle;
    if (v11)
    {
      v12 = v11[10];
      if (v12)
      {
        if (*(v12 + 64))
        {
          BYTE3(v3[7].output_handler_context) |= 0x20u;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v59 = -1;
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v51 = ___ZL49nw_protocol_implementation_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke;
          v52 = &unk_1E6A2D098;
          v10 = v9;
          v53 = v10;
          v54 = buf;
          v55 = a2;
          tqh_first = a2->tqh_first;
          do
          {
            if (!tqh_first)
            {
              break;
            }

            v14 = *(tqh_first + 4);
            v15 = v51(v50);
            tqh_first = v14;
          }

          while ((v15 & 1) != 0);
          v16 = *(*&buf[8] + 24);
          if (v16 != -1 && v16 != v3[7].handle)
          {
            v17 = *(*(v3[1].handle + 10) + 104);
            if (v17)
            {
              v17(v10);
            }
          }

          BYTE3(v3[7].output_handler_context) &= ~0x20u;
          nw_protocol_implementation_deliver_output_available(v10);
          v18 = nw_protocol_implementation_finalize_pending_frames(v10);

          _Block_object_dispose(buf, 8);
          goto LABEL_36;
        }

        v34 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
        v29 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v56 = 0;
        if (__nwlog_fault(v29, &type, &v56))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v30 = __nwlog_obj();
            v35 = type;
            if (os_log_type_enabled(v30, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
              _os_log_impl(&dword_181A37000, v30, v35, "%{public}s called with null instance->parent_definition->extended_state->handle_outbound", buf, 0xCu);
            }

LABEL_104:

            goto LABEL_105;
          }

          if (v56 != 1)
          {
            v30 = __nwlog_obj();
            v49 = type;
            if (os_log_type_enabled(v30, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
              _os_log_impl(&dword_181A37000, v30, v49, "%{public}s called with null instance->parent_definition->extended_state->handle_outbound, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_104;
          }

          v39 = __nw_create_backtrace_string();
          v30 = __nwlog_obj();
          v44 = type;
          v45 = os_log_type_enabled(v30, type);
          if (!v39)
          {
            if (v45)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
              _os_log_impl(&dword_181A37000, v30, v44, "%{public}s called with null instance->parent_definition->extended_state->handle_outbound, no backtrace", buf, 0xCu);
            }

            goto LABEL_104;
          }

          if (v45)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
            *&buf[12] = 2082;
            *&buf[14] = v39;
            _os_log_impl(&dword_181A37000, v30, v44, "%{public}s called with null instance->parent_definition->extended_state->handle_outbound, dumping backtrace:%{public}s", buf, 0x16u);
          }

          goto LABEL_77;
        }

LABEL_105:
        if (v29)
        {
          free(v29);
        }

        v18 = 0;
        goto LABEL_36;
      }

      v32 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
      v29 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v56 = 0;
      if (!__nwlog_fault(v29, &type, &v56))
      {
        goto LABEL_105;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v30, v33, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }

        goto LABEL_104;
      }

      if (v56 != 1)
      {
        v30 = __nwlog_obj();
        v48 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v30, v48, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_104;
      }

      v39 = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v42 = type;
      v43 = os_log_type_enabled(v30, type);
      if (!v39)
      {
        if (v43)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v30, v42, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }

        goto LABEL_104;
      }

      if (v43)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = v39;
        _os_log_impl(&dword_181A37000, v30, v42, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      v28 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
      v29 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v56 = 0;
      if (!__nwlog_fault(v29, &type, &v56))
      {
        goto LABEL_105;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }

        goto LABEL_104;
      }

      if (v56 != 1)
      {
        v30 = __nwlog_obj();
        v47 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v30, v47, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_104;
      }

      v39 = __nw_create_backtrace_string();
      v30 = __nwlog_obj();
      v40 = type;
      v41 = os_log_type_enabled(v30, type);
      if (!v39)
      {
        if (v41)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
          _os_log_impl(&dword_181A37000, v30, v40, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_104;
      }

      if (v41)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = v39;
        _os_log_impl(&dword_181A37000, v30, v40, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

LABEL_77:

    free(v39);
    goto LABEL_105;
  }

  v24 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
  v25 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v56 = 0;
  if (__nwlog_fault(v25, &type, &v56))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v56 == 1)
    {
      v36 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v37 = type;
      v38 = os_log_type_enabled(v26, type);
      if (v36)
      {
        if (v38)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
          *&buf[12] = 2082;
          *&buf[14] = v36;
          _os_log_impl(&dword_181A37000, v26, v37, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v36);
        goto LABEL_93;
      }

      if (v38)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v26, v37, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v26, v46, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_93:
  if (v25)
  {
    free(v25);
  }

  return 0;
}

void sub_181D8BA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL49nw_protocol_implementation_finalize_output_framesP11nw_protocolP16nw_frame_array_s_block_invoke(void *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(*(a1[4] + 8) + 64) == 3)
  {
    metadata = nw_frame_get_metadata(v3);
    v6 = metadata;
    if (metadata)
    {
      v7 = *metadata;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = -1;
LABEL_6:
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 24);
  if (v9 != v7)
  {
    if (v9 != -1)
    {
      v10 = *(*(*(a1[4] + 8) + 80) + 104);
      if (v10)
      {
        v10();
        v8 = *(a1[5] + 8);
      }
    }

    *(v8 + 24) = v7;
    v11 = *(*(*(a1[4] + 8) + 80) + 96);
    if (v11)
    {
      v11();
    }
  }

  if (gLogDatapath == 1)
  {
    v22 = __nwlog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      size = nw_protocol_data_get_size(v4);
      is_metadata_complete = nw_frame_is_metadata_complete(v4);
      v25 = *(v4 + 186) >> 7;
      v26 = 136447490;
      v27 = "nw_protocol_implementation_finalize_output_frames_block_invoke";
      v28 = 2048;
      v29 = v4;
      v30 = 2048;
      v31 = size;
      v32 = 2048;
      v33 = v6;
      v34 = 1024;
      v35 = is_metadata_complete;
      v36 = 1024;
      v37 = v25;
      _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEBUG, "%{public}s calling handle outbound with frame %p (length %zu bytes), metadata %p complete: %u, connection complete: %u", &v26, 0x36u);
    }
  }

  v12 = (a1[6] + 8);
  v14 = (v4 + 32);
  v13 = *(v4 + 32);
  v15 = *(v4 + 40);
  if (v13)
  {
    v12 = (v13 + 40);
  }

  *v12 = v15;
  *v15 = v13;
  *(v4 + 40) = 0;
  *v14 = 0;
  v16 = a1[4];
  v17 = *(v16 + 8);
  v18 = *(v17[10].isa + 8);
  v19 = nw_frame_copy_metadata_for_protocol(v4, v17);
  v20 = nw_frame_is_metadata_complete(v4);
  v18(v16, v7, v4, v19, v20, *(v4 + 186) >> 7);

  if (!*v14 && !*(v4 + 40) && (*(v4 + 16) || *(v4 + 24)))
  {
    if (nw_frame_get_finalizer_context(v4))
    {
      nw_frame_finalize(v4);
    }
  }

  return 1;
}
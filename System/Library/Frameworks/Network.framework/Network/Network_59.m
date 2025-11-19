void nw_proxy_config_set_generation(void *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[41] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_set_generation";
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
        v15 = "nw_proxy_config_set_generation";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_set_generation";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_set_generation";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_set_generation";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

unint64_t sub_181E0D4A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_181AC2218(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_181E0D608(v16, a4 & 1);
      result = sub_181AC2218(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_182AD4408();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_182256F20();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_181E0D608(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B5E8);
  v6 = sub_182AD3ED8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_32:

    goto LABEL_33;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_15:
    v19 = v16 | (v8 << 6);
    v31 = *(*(v5 + 48) + 16 * v19);
    v20 = *(*(v5 + 56) + 8 * v19);
    if ((a2 & 1) == 0)
    {
      swift_unknownObjectRetain();
    }

    sub_182AD44E8();
    sub_182AD44F8();
    v21 = sub_182AD4558();
    v22 = -1 << *(v7 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) != 0)
    {
      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      do
      {
        if (++v24 == v26 && (v25 & 1) != 0)
        {
          goto LABEL_35;
        }

        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v14 + 8 * v24);
      }

      while (v28 == -1);
      v15 = __clz(__rbit64(~v28)) + (v24 << 6);
    }

    *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *(*(v7 + 48) + 16 * v15) = v31;
    *(*(v7 + 56) + 8 * v15) = v20;
    ++*(v7 + 16);
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
    }

    if (v8 >= v13)
    {
      break;
    }

    v18 = v9[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v12 = (v18 - 1) & v18;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  v3 = v2;
LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_181E0D8E0(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      *(v5 + 8) = a3;
      return result;
    }

    if (v6 <= a3)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_181E0D950@<W0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0uLL;
  nw_proxy_config_copy_fallback_proxy_agent(a1, &v7);
  v3 = v7;
  result = SystemUUID.isUUIDNULL.getter();
  if (result)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  if (result)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&v3 + 1);
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  return result;
}

CFMutableArrayRef ___ZL27nw_get_outstanding_pac_urlsv_block_invoke()
{
  result = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  nw_get_outstanding_pac_urls(void)::gPACURLs = result;
  return result;
}

void nw_proxy_config_enumerate_alternate_agents(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_proxy_config_enumerate_alternate_agents";
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
        v26 = "nw_proxy_config_enumerate_alternate_agents";
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
          v26 = "nw_proxy_config_enumerate_alternate_agents";
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
        v26 = "nw_proxy_config_enumerate_alternate_agents";
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
        v26 = "nw_proxy_config_enumerate_alternate_agents";
        _os_log_impl(&dword_181A37000, v9, v19, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v4)
  {
    v6 = v3[18];
    if (v6)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __nw_proxy_config_enumerate_alternate_agents_block_invoke;
      applier[3] = &unk_1E6A35AD0;
      v22 = v4;
      xpc_array_apply(v6, applier);
    }

    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_proxy_config_enumerate_alternate_agents";
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
      v26 = "nw_proxy_config_enumerate_alternate_agents";
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
      v26 = "nw_proxy_config_enumerate_alternate_agents";
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
      v26 = "nw_proxy_config_enumerate_alternate_agents";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v18)
  {
    *buf = 136446466;
    v26 = "nw_proxy_config_enumerate_alternate_agents";
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

NWConcrete_nw_proxy_config *nw_proxy_config_create_direct()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(NWConcrete_nw_proxy_config);
  v1 = v0;
  if (v0)
  {
    v0->mode = 4;
    v2 = v0;
    goto LABEL_10;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  *buf = 136446210;
  v15 = "nw_proxy_config_create_direct";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (!__nwlog_fault(v4, &type, &v12))
  {
    goto LABEL_8;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v15 = "nw_proxy_config_create_direct";
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s [nw_proxy_config init] failed", buf, 0xCu);
    }

LABEL_7:

LABEL_8:
    if (!v4)
    {
      goto LABEL_10;
    }

LABEL_9:
    free(v4);
    goto LABEL_10;
  }

  if (v12 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v11 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v15 = "nw_proxy_config_create_direct";
      _os_log_impl(&dword_181A37000, v5, v11, "%{public}s [nw_proxy_config init] failed, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_7;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  v9 = type;
  v10 = os_log_type_enabled(v5, type);
  if (!backtrace_string)
  {
    if (v10)
    {
      *buf = 136446210;
      v15 = "nw_proxy_config_create_direct";
      _os_log_impl(&dword_181A37000, v5, v9, "%{public}s [nw_proxy_config init] failed, no backtrace", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if (v10)
  {
    *buf = 136446466;
    v15 = "nw_proxy_config_create_direct";
    v16 = 2082;
    v17 = backtrace_string;
    _os_log_impl(&dword_181A37000, v5, v9, "%{public}s [nw_proxy_config init] failed, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v1;
}

uint64_t sub_181E0E294(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 360);
    if (!v3)
    {
      v5 = a2;
      type metadata accessor for Parameters.ProxyValues.ProxyValuesBacking();
      v3 = swift_allocObject();
      a2 = v5;
      *(v3 + 16) = 0u;
      *(v3 + 32) = 0u;
      *(a1 + 360) = v3;
    }

    *(v3 + 40) = a2;
    swift_unknownObjectRetain();
  }

  else
  {
    v4 = *(a1 + 360);
    if (!v4)
    {
      type metadata accessor for Parameters.ProxyValues.ProxyValuesBacking();
      v4 = swift_allocObject();
      *(v4 + 16) = 0u;
      *(v4 + 32) = 0u;
      *(a1 + 360) = v4;
    }

    *(v4 + 40) = 0;
  }

  return swift_unknownObjectRelease();
}

BOOL nw_proxy_config_has_fallback_proxy_config(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[11] != 0;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_has_fallback_proxy_config";
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
        v15 = "nw_proxy_config_has_fallback_proxy_config";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null config", buf, 0xCu);
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
          v15 = "nw_proxy_config_has_fallback_proxy_config";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_has_fallback_proxy_config";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_has_fallback_proxy_config";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

void ___ZL32nw_protocol_masque_get_callbacksv_block_invoke()
{
  qword_1EA83FCC8 = nw_protocol_default_output_available;
  qword_1EA83FD40 = nw_protocol_default_output_finished;
  qword_1EA83FD88 = nw_protocol_default_input_flush;
  qword_1EA83FD78 = nw_protocol_default_get_message_properties;
  qword_1EA83FCE8 = nw_protocol_default_link_state;
  qword_1EA83FD00 = nw_protocol_default_get_local;
  qword_1EA83FCF8 = nw_protocol_default_get_path;
  qword_1EA83FD28 = nw_protocol_default_updated_path;
  qword_1EA83FD50 = nw_protocol_default_get_output_interface;
  qword_1EA83FD80 = nw_protocol_default_reset;
  qword_1EA83FD10 = nw_protocol_default_register_notification;
  qword_1EA83FD18 = nw_protocol_default_unregister_notification;
  qword_1EA83FD68 = nw_protocol_default_add_listen_handler;
  qword_1EA83FD70 = nw_protocol_default_remove_listen_handler;
  nw_protocol_masque_get_callbacks(void)::g_masque_protocol_callbacks = nw_protocol_masque_add_input_handler;
  qword_1EA83FC90 = nw_protocol_masque_replace_input_handler;
  qword_1EA83FC88 = nw_protocol_masque_remove_input_handler;
  qword_1EA83FC98 = nw_protocol_masque_connect;
  qword_1EA83FCA8 = nw_protocol_masque_connected;
  qword_1EA83FCA0 = nw_protocol_masque_disconnect;
  qword_1EA83FCB0 = nw_protocol_masque_disconnected;
  qword_1EA83FCB8 = nw_protocol_masque_error;
  qword_1EA83FD30 = nw_protocol_masque_supports_external_data;
  qword_1EA83FD58 = nw_protocol_masque_waiting_for_output;
  qword_1EA83FCD8 = nw_protocol_masque_get_output_frames;
  qword_1EA83FCE0 = nw_protocol_masque_finalize_output_frames;
  qword_1EA83FCD0 = nw_protocol_masque_get_input_frames;
  qword_1EA83FCC0 = nw_protocol_masque_input_available;
  qword_1EA83FD38 = nw_protocol_masque_input_finished;
  qword_1EA83FD08 = nw_protocol_masque_get_remote_endpoint;
  qword_1EA83FCF0 = nw_protocol_masque_get_parameters;
  qword_1EA83FD48 = nw_protocol_masque_get_output_local_endpoint;
  qword_1EA83FD60 = nw_protocol_masque_copy_info;
  qword_1EA83FD20 = nw_protocol_masque_notify;
}

void __nw_resolver_set_update_handler_block_invoke_81(uint64_t a1, void *a2)
{
  v13 = a2;
  if (nw_endpoint_get_type(v13) == nw_endpoint_type_address)
  {
    address_family = nw_endpoint_get_address_family(v13);
    if (address_family == 30)
    {
      if (*(a1 + 64) != 30 && *(a1 + 64))
      {
        goto LABEL_17;
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
      v4 = a1 + 48;
      if (!*(*(*(a1 + 48) + 8) + 40))
      {
        v8 = _nw_array_create();
        v9 = *(*v4 + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;
      }
    }

    else
    {
      if (address_family != 2 || (*(a1 + 64) | 2) != 2)
      {
        goto LABEL_17;
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      v4 = a1 + 48;
      if (!*(*(*(a1 + 48) + 8) + 40))
      {
        v5 = _nw_array_create();
        v6 = *(*v4 + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;
      }
    }

    nw_endpoint_set_parent_endpoint(v13, *(*(a1 + 32) + 24), 0);
    v11 = *(*(*v4 + 8) + 40);
    if (v11)
    {
      v12 = v13 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      _nw_array_append(v11, v13);
    }
  }

LABEL_17:
}

void ___ZL33nw_protocol_copy_proxy_definitionv_block_invoke()
{
  named = nw_protocol_definition_create_named(1, 0);
  v1 = nw_protocol_copy_proxy_definition(void)::proxy_definition;
  nw_protocol_copy_proxy_definition(void)::proxy_definition = named;

  nw_protocol_definition_set_cache_entry_deallocator(nw_protocol_copy_proxy_definition(void)::proxy_definition, nw_proxy_deallocate_cache_entry);
  v2 = nw_protocol_copy_proxy_definition(void)::proxy_definition;

  nw_protocol_definition_set_should_flush_cache_entry(v2, nw_proxy_should_flush_cache_entry);
}

uint64_t nw_endpoint_proxy_get_failure_count(NWConcrete_nw_endpoint_handler *a1)
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
      v6 = *(cached_content_for_protocol + 4);
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
  v19 = "nw_endpoint_proxy_get_failure_count";
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
        v19 = "nw_endpoint_proxy_get_failure_count";
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
          v19 = "nw_endpoint_proxy_get_failure_count";
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
        v19 = "nw_endpoint_proxy_get_failure_count";
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
        v19 = "nw_endpoint_proxy_get_failure_count";
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

uint64_t nw_endpoint_handler_should_start_fallback(NWConcrete_nw_endpoint_handler *a1)
{
  v1 = a1;
  if (v1->state != 1 || (mode = v1->mode) != 0 && (mode != 2 || (v3 = v1, is_leaf_handler = nw_endpoint_flow_get_is_leaf_handler(v1->mode_handler), v1 = v3, (is_leaf_handler & 1) != 0)) || (*(v1 + 284) & 1) != 0)
  {
    should_fallback = 0;
  }

  else
  {
    v5 = v1;
    should_fallback = nw_path_should_fallback(v1->current_path, 0);
    v1 = v5;
  }

  return should_fallback;
}

BOOL nw_path_has_proxy_settings(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    has_proxy_settings = _nw_path_has_proxy_settings(v1);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_path_has_proxy_settings";
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
        v16 = "nw_path_has_proxy_settings";
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
          v16 = "nw_path_has_proxy_settings";
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
        v16 = "nw_path_has_proxy_settings";
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
        v16 = "nw_path_has_proxy_settings";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  has_proxy_settings = 0;
LABEL_3:

  return has_proxy_settings;
}

BOOL _nw_path_has_proxy_settings(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC7Network8__NWPath_lock;
  v2 = *&a1[OBJC_IVAR____TtC7Network8__NWPath_lock];
  v4 = a1;
  os_unfair_lock_lock(v2 + 4);
  v5 = &v4[OBJC_IVAR____TtC7Network8__NWPath_path];
  swift_beginAccess();
  v6 = *(v5 + 17) != 0;
  os_unfair_lock_unlock((*&a1[v1] + 16));

  return v6;
}

BOOL nw_endpoint_handler_should_perform_CrazyIvan46(NWConcrete_nw_endpoint_handler *a1)
{
  v1 = a1;
  if (v1->state != 1 || v1->mode || (parent_handler = v1->parent_handler) != 0 && parent_handler->mode == 1 && (v5 = v1, v6 = nw_endpoint_get_type(parent_handler->endpoint) == nw_endpoint_type_address, v1 = v5, v6))
  {
    v2 = 0;
  }

  else
  {
    v7 = v1;
    v2 = nw_endpoint_get_type(v1->endpoint) == nw_endpoint_type_address && nw_endpoint_get_address_family(v7->endpoint) == 2;
    v1 = v7;
  }

  return v2;
}

BOOL nw_endpoint_handler_should_do_local_only_resolution(NWConcrete_nw_endpoint_handler *a1)
{
  v1 = a1;
  if (v1->state != 1 || v1->mode)
  {
    goto LABEL_3;
  }

  v4 = v1;
  if (!nw_path_has_unsatisfied_route(v1->current_path))
  {
    v2 = 0;
    goto LABEL_10;
  }

  v1 = v4;
  parent_handler = v4->parent_handler;
  if (!parent_handler || parent_handler->mode != 1)
  {
    v2 = nw_endpoint_get_type(v4->endpoint) == nw_endpoint_type_host;
LABEL_10:
    v1 = v4;
    goto LABEL_4;
  }

LABEL_3:
  v2 = 0;
LABEL_4:

  return v2;
}

uint64_t sub_181E0F27C()
{
  __dst[48] = *MEMORY[0x1E69E9840];
  memcpy(__dst, v0, 0x17AuLL);
  v1 = BYTE4(__dst[14]) == 2 && BYTE5(__dst[14]) == 3;
  if (v1 && (v2 = __dst[33]) != 0)
  {
    v3 = 1 << *(__dst[33] + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(__dst[33] + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = 0;
    while (v5)
    {
LABEL_15:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(*(v2 + 56) + ((v8 << 9) | (8 * v10)));
      if ((*(v11 + 80) & 2) == 0 && *(v11 + 56) == 1 && !*(v11 + 72))
      {
        v19 = type metadata accessor for __NWPath();
        v12 = objc_allocWithZone(v19);
        v13 = OBJC_IVAR____TtC7Network8__NWPath_lock;
        type metadata accessor for SystemLock._Storage();
        v14 = swift_allocObject();
        *(v14 + 16) = 0;
        *&v12[v13] = v14;
        *&v12[OBJC_IVAR____TtC7Network8__NWPath_nexusKeyStorage] = 0;
        *&v12[OBJC_IVAR____TtC7Network8__NWPath_reasonDescriptionStorage] = 0;
        *&v12[OBJC_IVAR____TtC7Network8__NWPath_nat64PrefixStorage] = 0;
        memcpy(&v12[OBJC_IVAR____TtC7Network8__NWPath_path], __dst, 0x17AuLL);

        sub_181A3DF5C(__dst, v21);
        v20.receiver = v12;
        v20.super_class = v19;
        v15 = objc_msgSendSuper2(&v20, sel_init);
        v21[0] = *(v11 + 32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
        v16 = swift_allocObject();
        v17 = _swift_stdlib_malloc_size(v16);
        *(v16 + 16) = 16;
        *(v16 + 24) = 2 * v17 - 64;
        *(v16 + 32) = v21[0];
        nw_path_trigger_agent(v15, (v16 + 32));

        v7 = 1;
      }
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
      }

      if (v9 >= v6)
      {
        break;
      }

      v5 = *(v2 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        v8 = v9;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t nw_path_agent_action(NWConcrete_nw_path *a1, const unsigned __int8 *a2, int a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5)
  {
    v47 = __nwlog_obj();
    *buf = 136446210;
    v66 = "nw_path_agent_action";
    v7 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v62 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v7, type, &v62))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v48 = type[0];
        if (os_log_type_enabled(v8, type[0]))
        {
          *buf = 136446210;
          v66 = "nw_path_agent_action";
          _os_log_impl(&dword_181A37000, v8, v48, "%{public}s called with null path", buf, 0xCu);
        }

        goto LABEL_75;
      }

      if (v62 != OS_LOG_TYPE_INFO)
      {
        v8 = __nwlog_obj();
        v52 = type[0];
        if (os_log_type_enabled(v8, type[0]))
        {
          *buf = 136446210;
          v66 = "nw_path_agent_action";
          _os_log_impl(&dword_181A37000, v8, v52, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_75;
      }

      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v50 = type[0];
      v51 = os_log_type_enabled(v8, type[0]);
      if (!backtrace_string)
      {
        if (v51)
        {
          *buf = 136446210;
          v66 = "nw_path_agent_action";
          _os_log_impl(&dword_181A37000, v8, v50, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }

        goto LABEL_75;
      }

      if (v51)
      {
        *buf = 136446466;
        v66 = "nw_path_agent_action";
        v67 = 2082;
        *v68 = backtrace_string;
        _os_log_impl(&dword_181A37000, v8, v50, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_76:
    if (v7)
    {
LABEL_77:
      free(v7);
    }

LABEL_78:
    v16 = 0;
LABEL_79:

    return v16;
  }

  if (uuid_is_null(a2))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v66 = "nw_path_agent_action";
    v7 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v62 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v7, type, &v62))
    {
      goto LABEL_76;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v66 = "nw_path_agent_action";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null agent_uuid", buf, 0xCu);
      }

LABEL_75:

      goto LABEL_76;
    }

    if (v62 != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v22 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        v66 = "nw_path_agent_action";
        _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null agent_uuid, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_75;
    }

    v19 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v20 = type[0];
    v21 = os_log_type_enabled(v8, type[0]);
    if (!v19)
    {
      if (v21)
      {
        *buf = 136446210;
        v66 = "nw_path_agent_action";
        _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null agent_uuid, no backtrace", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v21)
    {
      *buf = 136446466;
      v66 = "nw_path_agent_action";
      v67 = 2082;
      *v68 = v19;
      _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null agent_uuid, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_22:

    free(v19);
    if (!v7)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  v10 = _nw_path_copy_parameters(v5);
  v11 = nw_parameters_copy_context(v10);
  v12 = nw_path_shared_necp_fd(v11);

  if (v12 < 0)
  {
    goto LABEL_78;
  }

  v13 = malloc_type_calloc(1uLL, 0x15uLL, 0x2FADDB5FuLL);
  v14 = v13;
  if (v13)
  {
    *v13 = a3;
    *(v13 + 1) = 16;
    if (a2)
    {
      *(v13 + 5) = *a2;
      goto LABEL_12;
    }

    v53 = __nwlog_obj();
    *buf = 136446722;
    v66 = "nw_necp_append_tlv";
    v67 = 1024;
    *v68 = a3;
    *&v68[4] = 1024;
    *&v68[6] = 16;
    v54 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v62 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v54, type, &v62))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v55 = __nwlog_obj();
        v56 = type[0];
        if (os_log_type_enabled(v55, type[0]))
        {
          *buf = 136446722;
          v66 = "nw_necp_append_tlv";
          v67 = 1024;
          *v68 = a3;
          *&v68[4] = 1024;
          *&v68[6] = 16;
          _os_log_impl(&dword_181A37000, v55, v56, "%{public}s type=%u length=%u but value is NULL", buf, 0x18u);
        }
      }

      else if (v62 == OS_LOG_TYPE_INFO)
      {
        v57 = __nw_create_backtrace_string();
        v55 = __nwlog_obj();
        v58 = type[0];
        v59 = os_log_type_enabled(v55, type[0]);
        if (v57)
        {
          if (v59)
          {
            *buf = 136446978;
            v66 = "nw_necp_append_tlv";
            v67 = 1024;
            *v68 = a3;
            *&v68[4] = 1024;
            *&v68[6] = 16;
            *&v68[10] = 2082;
            *&v68[12] = v57;
            _os_log_impl(&dword_181A37000, v55, v58, "%{public}s type=%u length=%u but value is NULL, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(v57);
          goto LABEL_121;
        }

        if (v59)
        {
          *buf = 136446722;
          v66 = "nw_necp_append_tlv";
          v67 = 1024;
          *v68 = a3;
          *&v68[4] = 1024;
          *&v68[6] = 16;
          _os_log_impl(&dword_181A37000, v55, v58, "%{public}s type=%u length=%u but value is NULL, no backtrace", buf, 0x18u);
        }
      }

      else
      {
        v55 = __nwlog_obj();
        v60 = type[0];
        if (os_log_type_enabled(v55, type[0]))
        {
          *buf = 136446722;
          v66 = "nw_necp_append_tlv";
          v67 = 1024;
          *v68 = a3;
          *&v68[4] = 1024;
          *&v68[6] = 16;
          _os_log_impl(&dword_181A37000, v55, v60, "%{public}s type=%u length=%u but value is NULL, backtrace limit exceeded", buf, 0x18u);
        }
      }
    }

LABEL_121:
    if (v54)
    {
      free(v54);
    }

LABEL_12:
    *type = 0;
    v64 = 0;
    _nw_path_get_client_id(v5, type);
    v15 = necp_client_action();
    v16 = v15 == 0;
    if (!v15)
    {
LABEL_88:
      free(v14);
      goto LABEL_79;
    }

    v17 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v17 == 45 || v17 == 2)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v66 = "nw_path_agent_action";
        v67 = 1024;
        *v68 = v17;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s NECP_CLIENT_ACTION_AGENT %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_88;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v33 = gLogObj;
    *buf = 136446466;
    v66 = "nw_path_agent_action";
    v67 = 1024;
    *v68 = v17;
    v34 = _os_log_send_and_compose_impl();

    v62 = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (__nwlog_fault(v34, &v62, &v61))
    {
      if (v62 == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v36 = v62;
        if (os_log_type_enabled(v35, v62))
        {
          *buf = 136446466;
          v66 = "nw_path_agent_action";
          v67 = 1024;
          *v68 = v17;
          _os_log_impl(&dword_181A37000, v35, v36, "%{public}s NECP_CLIENT_ACTION_AGENT %{darwin.errno}d", buf, 0x12u);
        }
      }

      else if (v61 == 1)
      {
        v38 = __nw_create_backtrace_string();
        v35 = __nwlog_obj();
        v39 = v62;
        v40 = os_log_type_enabled(v35, v62);
        if (v38)
        {
          if (v40)
          {
            *buf = 136446722;
            v66 = "nw_path_agent_action";
            v67 = 1024;
            *v68 = v17;
            *&v68[4] = 2082;
            *&v68[6] = v38;
            _os_log_impl(&dword_181A37000, v35, v39, "%{public}s NECP_CLIENT_ACTION_AGENT %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(v38);
          goto LABEL_86;
        }

        if (v40)
        {
          *buf = 136446466;
          v66 = "nw_path_agent_action";
          v67 = 1024;
          *v68 = v17;
          _os_log_impl(&dword_181A37000, v35, v39, "%{public}s NECP_CLIENT_ACTION_AGENT %{darwin.errno}d, no backtrace", buf, 0x12u);
        }
      }

      else
      {
        v35 = __nwlog_obj();
        v46 = v62;
        if (os_log_type_enabled(v35, v62))
        {
          *buf = 136446466;
          v66 = "nw_path_agent_action";
          v67 = 1024;
          *v68 = v17;
          _os_log_impl(&dword_181A37000, v35, v46, "%{public}s NECP_CLIENT_ACTION_AGENT %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
        }
      }
    }

LABEL_86:
    if (v34)
    {
      free(v34);
    }

    goto LABEL_88;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v23 = gLogObj;
  os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v66 = "nw_path_create_necp_agent_action";
  v67 = 2048;
  *v68 = 1;
  *&v68[8] = 2048;
  *&v68[10] = 21;
  v24 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v24);
  if (!result)
  {
    free(v24);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    *buf = 136446210;
    v66 = "nw_necp_append_tlv";
    v27 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v62 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v27, type, &v62))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v29 = type[0];
        if (os_log_type_enabled(v28, type[0]))
        {
          *buf = 136446210;
          v66 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null tlv_start", buf, 0xCu);
        }
      }

      else if (v62 == OS_LOG_TYPE_INFO)
      {
        v30 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v31 = type[0];
        v32 = os_log_type_enabled(v28, type[0]);
        if (v30)
        {
          if (v32)
          {
            *buf = 136446466;
            v66 = "nw_necp_append_tlv";
            v67 = 2082;
            *v68 = v30;
            _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v30);
          if (!v27)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        if (v32)
        {
          *buf = 136446210;
          v66 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null tlv_start, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        v37 = type[0];
        if (os_log_type_enabled(v28, type[0]))
        {
          *buf = 136446210;
          v66 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v28, v37, "%{public}s called with null tlv_start, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v27)
    {
LABEL_60:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = gLogObj;
      *buf = 136446210;
      v66 = "nw_path_agent_action";
      v7 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v62 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v7, type, &v62))
      {
        goto LABEL_76;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v42 = type[0];
        if (os_log_type_enabled(v8, type[0]))
        {
          *buf = 136446210;
          v66 = "nw_path_agent_action";
          _os_log_impl(&dword_181A37000, v8, v42, "%{public}s nw_path_create_necp_agent_action failed", buf, 0xCu);
        }

        goto LABEL_75;
      }

      if (v62 != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v8 = gLogObj;
        v45 = type[0];
        if (os_log_type_enabled(v8, type[0]))
        {
          *buf = 136446210;
          v66 = "nw_path_agent_action";
          _os_log_impl(&dword_181A37000, v8, v45, "%{public}s nw_path_create_necp_agent_action failed, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_75;
      }

      v19 = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v43 = type[0];
      v44 = os_log_type_enabled(v8, type[0]);
      if (!v19)
      {
        if (v44)
        {
          *buf = 136446210;
          v66 = "nw_path_agent_action";
          _os_log_impl(&dword_181A37000, v8, v43, "%{public}s nw_path_create_necp_agent_action failed, no backtrace", buf, 0xCu);
        }

        goto LABEL_75;
      }

      if (v44)
      {
        *buf = 136446466;
        v66 = "nw_path_agent_action";
        v67 = 2082;
        *v68 = v19;
        _os_log_impl(&dword_181A37000, v8, v43, "%{public}s nw_path_create_necp_agent_action failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_22;
    }

LABEL_59:
    free(v27);
    goto LABEL_60;
  }

  __break(1u);
  return result;
}

void ___ZL41network_config_setup_policy_event_watcherv_block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *value = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  while (1)
  {
    v2 = recv(*(a1 + 32), &v21, 0x80uLL, 0);
    if (v2 < 1)
    {
      break;
    }

    if (v2 >= 0x18 && DWORD1(v21) == 1 && DWORD2(v21) == 1 && HIDWORD(v21) == 3 && v21 >= 0x40 && v2 >= v21)
    {
      v7 = xpc_uint64_create(value[0]);
      v8 = xpc_uuid_create(&value[1]);
      if (DWORD1(v22) == 1)
      {
        if (DWORD2(v24) == 3)
        {
          v11 = &g_wifi_blocked_handlers;
        }

        else
        {
          v11 = &g_cellular_blocked_handlers;
        }

        v10 = *v11;
        if (!*v11)
        {
LABEL_30:
          if (!v7)
          {
            goto LABEL_27;
          }

LABEL_26:
          xpc_release(v7);
          goto LABEL_27;
        }
      }

      else if (DWORD1(v22) == 2)
      {
        v10 = g_cellular_failed_handlers;
        if (!g_cellular_failed_handlers)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v9 = &g_cellular_blocked_handlers;
        if (DWORD1(v22) != 3)
        {
          goto LABEL_24;
        }

        if (DWORD2(v24) != 1)
        {
          v9 = &g_ultra_constrained_blocked_handlers;
          if (DWORD2(v24) != 2)
          {
            goto LABEL_30;
          }

LABEL_24:
          v10 = *v9;
          if (!*v9)
          {
            goto LABEL_30;
          }

          goto LABEL_25;
        }

        v10 = g_local_network_blocked_handlers;
        if (!g_local_network_blocked_handlers)
        {
          goto LABEL_30;
        }
      }

LABEL_25:
      *applier = MEMORY[0x1E69E9820];
      *&applier[8] = 0x40000000;
      *&applier[16] = ___ZL42network_config_handle_policy_event_messagelP14kern_event_msg_block_invoke;
      *&applier[24] = &__block_descriptor_tmp_18_24245;
      v30 = v7;
      v31 = v8;
      xpc_array_apply(v10, applier);
      if (v7)
      {
        goto LABEL_26;
      }

LABEL_27:
      if (v8)
      {
        xpc_release(v8);
      }
    }
  }

  if (v2 < 0)
  {
    v12 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v12 != 35)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *applier = 136446466;
      *&applier[4] = "network_config_setup_policy_event_watcher_block_invoke_2";
      *&applier[12] = 1024;
      *&applier[14] = v12;
      v13 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v19 = 0;
      if (!__nwlog_fault(v13, &type, &v19))
      {
        goto LABEL_55;
      }

      if (type != OS_LOG_TYPE_FAULT)
      {
        if (v19 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v15 = type;
          v18 = os_log_type_enabled(gLogObj, type);
          if (backtrace_string)
          {
            if (v18)
            {
              *applier = 136446722;
              *&applier[4] = "network_config_setup_policy_event_watcher_block_invoke";
              *&applier[12] = 1024;
              *&applier[14] = v12;
              *&applier[18] = 2082;
              *&applier[20] = backtrace_string;
              _os_log_impl(&dword_181A37000, v14, v15, "%{public}s recv from kernel event socket failed %{darwin.errno}d, dumping backtrace:%{public}s", applier, 0x1Cu);
            }

            free(backtrace_string);
            goto LABEL_55;
          }

          if (!v18)
          {
            goto LABEL_55;
          }

          *applier = 136446466;
          *&applier[4] = "network_config_setup_policy_event_watcher_block_invoke";
          *&applier[12] = 1024;
          *&applier[14] = v12;
          v16 = "%{public}s recv from kernel event socket failed %{darwin.errno}d, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v14 = gLogObj;
          v15 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_55;
          }

          *applier = 136446466;
          *&applier[4] = "network_config_setup_policy_event_watcher_block_invoke";
          *&applier[12] = 1024;
          *&applier[14] = v12;
          v16 = "%{public}s recv from kernel event socket failed %{darwin.errno}d, backtrace limit exceeded";
        }

LABEL_54:
        _os_log_impl(&dword_181A37000, v14, v15, v16, applier, 0x12u);
        goto LABEL_55;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *applier = 136446466;
        *&applier[4] = "network_config_setup_policy_event_watcher_block_invoke";
        *&applier[12] = 1024;
        *&applier[14] = v12;
        v16 = "%{public}s recv from kernel event socket failed %{darwin.errno}d";
        goto LABEL_54;
      }

LABEL_55:
      if (v13)
      {
        free(v13);
      }

      dispatch_source_cancel(network_config_setup_policy_event_watcher(void)::kevsrc);
    }
  }
}

uint64_t ___ZL35nw_endpoint_resolver_receive_reportP30NWConcrete_nw_endpoint_handler26nw_endpoint_handler_mode_t21nw_connection_state_tP27nw_endpoint_handler_event_sPU22objcproto11OS_nw_error8NSObjectPU23objcproto12OS_nw_objectS5__block_invoke_121(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = nw_endpoint_handler_copy_endpoint(a3);
  is_equal = nw_endpoint_is_equal(v4, *(a1 + 32), 31);
  if (is_equal)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return is_equal ^ 1u;
}

uint64_t ___ZL42network_config_handle_policy_event_messagelP14kern_event_msg_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  pointer = xpc_dictionary_get_pointer();
  v3 = xpc_dictionary_get_pointer();
  if (!pointer)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = "network_config_handle_policy_event_message_block_invoke";
    v10 = "%{public}s Event handler has no block set";
LABEL_12:
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, v10, &buf, 0xCu);
    return 1;
  }

  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return 1;
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = "network_config_handle_policy_event_message_block_invoke";
    v10 = "%{public}s Event handler has no queue set";
    goto LABEL_12;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x2000000000;
  v19 = 0;
  if (*(a1 + 32))
  {
    v4 = v3;
    v5 = xpc_retain(*(a1 + 32));
    v3 = v4;
    *(*(&buf + 1) + 24) = v5;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = v3;
    v8 = xpc_retain(*(a1 + 40));
    v3 = v7;
    v14[3] = v8;
    v6 = *(a1 + 40);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___ZL42network_config_handle_policy_event_messagelP14kern_event_msg_block_invoke_15;
  v12[3] = &unk_1E6A2EAC0;
  v12[4] = pointer;
  v12[5] = &buf;
  v12[6] = &v13;
  v12[7] = v6;
  dispatch_async(v3, v12);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&buf, 8);
  return 1;
}

void ___ZL42network_config_handle_policy_event_messagelP14kern_event_msg_block_invoke_15(void *a1)
{
  (*(a1[4] + 16))();
  v2 = *(*(a1[5] + 8) + 24);
  if (v2)
  {
    xpc_release(v2);
    *(*(a1[5] + 8) + 24) = 0;
  }

  v3 = *(*(a1[6] + 8) + 24);
  if (v3)
  {
    xpc_release(v3);
    *(*(a1[6] + 8) + 24) = 0;
  }
}

void ___ZL31nw_protocol_http3_get_callbacksv_block_invoke()
{
  qword_1EA8400F8 = nw_protocol_default_replace_input_handler;
  qword_1EA8401F0 = nw_protocol_default_input_flush;
  qword_1EA8401E0 = nw_protocol_default_get_message_properties;
  qword_1EA840190 = nw_protocol_default_updated_path;
  qword_1EA8401B8 = nw_protocol_default_get_output_interface;
  qword_1EA8401C0 = nw_protocol_default_waiting_for_output;
  qword_1EA8401C8 = nw_protocol_default_copy_info;
  qword_1EA840178 = nw_protocol_default_register_notification;
  qword_1EA840180 = nw_protocol_default_unregister_notification;
  qword_1EA840100 = nw_protocol_http3_connect;
  qword_1EA840110 = nw_protocol_http3_connected;
  qword_1EA840108 = nw_protocol_http3_disconnect;
  qword_1EA840118 = nw_protocol_http3_disconnected;
  qword_1EA840120 = nw_protocol_http3_error;
  qword_1EA8401A8 = nw_protocol_http3_output_finished;
  qword_1EA8401A0 = nw_protocol_http3_input_finished;
  nw_protocol_http3_get_callbacks(void)::protocol_callbacks = nw_protocol_http3_add_input_handler;
  qword_1EA8400F0 = nw_protocol_http3_remove_input_handler;
  qword_1EA840128 = nw_protocol_http3_input_available;
  qword_1EA840130 = nw_protocol_http3_output_available;
  qword_1EA840138 = nw_protocol_http3_get_input_frames;
  qword_1EA840140 = nw_protocol_http3_uni_stream_get_output_frames;
  qword_1EA840148 = nw_protocol_http3_uni_stream_finalize_output_frames;
  qword_1EA8401D0 = nw_protocol_http3_add_listen_handler;
  qword_1EA8401D8 = nw_protocol_http3_remove_listen_handler;
  qword_1EA840158 = nw_protocol_http3_get_parameters;
  qword_1EA840168 = nw_protocol_http3_get_local_endpoint;
  qword_1EA840170 = nw_protocol_http3_get_remote_endpoint;
  qword_1EA840160 = nw_protocol_http3_get_path;
  qword_1EA840188 = nw_protocol_http3_notify;
  qword_1EA840150 = nw_protocol_http3_link_state;
  qword_1EA8401B0 = nw_protocol_http3_get_output_local_endpoint;
  qword_1EA8401E8 = nw_protocol_http3_reset;
  qword_1EA840198 = nw_protocol_http3_supports_external_data;
}

void __nw_protocol_copy_http_connection_definition_block_invoke()
{
  named = nw_protocol_definition_create_named(1, "http_connection");
  v1 = nw_protocol_copy_http_connection_definition_definition;
  nw_protocol_copy_http_connection_definition_definition = named;

  v2 = nw_protocol_copy_http_connection_definition_definition;

  nw_protocol_definition_set_metadata_initializer(v2, 0xE8u, nw_http_connection_initialize_metadata, nw_http_connection_finalize_metadata);
}

void ___ZL38nw_protocol_http3_stream_get_callbacksv_block_invoke()
{
  qword_1EA8400B8 = nw_protocol_default_input_flush;
  qword_1EA840018 = nw_protocol_default_link_state;
  qword_1EA840030 = nw_protocol_default_get_local;
  qword_1EA840028 = nw_protocol_default_get_path;
  qword_1EA840058 = nw_protocol_default_updated_path;
  qword_1EA840078 = nw_protocol_default_get_output_local;
  qword_1EA840080 = nw_protocol_default_get_output_interface;
  qword_1EA8400B0 = nw_protocol_default_reset;
  qword_1EA840088 = nw_protocol_default_waiting_for_output;
  qword_1EA83FFC8 = nw_protocol_http3_stream_connect;
  qword_1EA83FFD8 = nw_protocol_http3_stream_connected;
  qword_1EA83FFD0 = nw_protocol_http3_stream_disconnect;
  qword_1EA83FFE0 = nw_protocol_http3_stream_disconnected;
  qword_1EA83FFE8 = nw_protocol_http3_stream_error;
  qword_1EA840070 = nw_protocol_http3_stream_output_finished;
  qword_1EA840068 = nw_protocol_http3_stream_input_finished;
  nw_protocol_http3_stream_get_callbacks(void)::protocol_callbacks = nw_protocol_http3_stream_add_input_handler;
  qword_1EA83FFB8 = nw_protocol_http3_stream_remove_input_handler;
  qword_1EA83FFC0 = nw_protocol_http3_stream_replace_input_handler;
  qword_1EA83FFF0 = nw_protocol_http3_stream_input_available;
  qword_1EA83FFF8 = nw_protocol_http3_stream_output_available;
  qword_1EA840000 = nw_protocol_http3_stream_get_input_frames;
  qword_1EA840008 = nw_protocol_http3_stream_get_output_frames;
  qword_1EA840010 = nw_protocol_http3_stream_finalize_output_frames;
  qword_1EA840060 = nw_protocol_http3_stream_supports_external_data;
  qword_1EA840098 = nw_protocol_http3_stream_add_listen_handler;
  qword_1EA8400A0 = nw_protocol_http3_stream_remove_listen_handler;
  qword_1EA840038 = nw_protocol_http3_stream_get_remote_endpoint;
  qword_1EA840090 = nw_protocol_http3_stream_copy_info;
  qword_1EA840050 = nw_protocol_http3_stream_notify;
  qword_1EA840020 = nw_protocol_http3_stream_get_parameters;
  qword_1EA8400A8 = nw_protocol_http3_stream_get_message_properties;
  qword_1EA840040 = nw_protocol_http3_stream_register_notification;
  qword_1EA840048 = nw_protocol_http3_stream_unregister_notification;
}

void __nw_protocol_copy_http_transaction_definition_block_invoke()
{
  named = nw_protocol_definition_create_named(1, "http_transaction");
  v1 = nw_protocol_copy_http_transaction_definition_definition;
  nw_protocol_copy_http_transaction_definition_definition = named;

  v2 = nw_protocol_copy_http_transaction_definition_definition;

  nw_protocol_definition_set_metadata_initializer(v2, 0xA8u, nw_http_transaction_initialize_metadata, nw_http_transaction_finalize_metadata);
}

void nw_http3_parse_resumable_session_data(uint64_t a1, int *a2, unint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  if (a3 <= 0xF && (*(a1 + 1399) & 0x20) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 1304);
      v25 = 136447234;
      v26 = "nw_http3_parse_resumable_session_data";
      v27 = 2082;
      v28 = a1 + 1313;
      v29 = 2080;
      v30 = " ";
      v31 = 1024;
      v32 = v7;
      v33 = 2048;
      v34 = a3;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> Resumable session too short (%zu bytes)", &v25, 0x30u);
    }
  }

  if (*a2 != 9685181)
  {
    if ((*(a1 + 1399) & 0x20) != 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v14 = *(a1 + 1304);
    v15 = *a2;
    v25 = 136447234;
    v26 = "nw_http3_parse_resumable_session_data";
    v27 = 2082;
    v28 = a1 + 1313;
    v29 = 2080;
    v30 = " ";
    v31 = 1024;
    v32 = v14;
    v33 = 1024;
    LODWORD(v34) = v15;
    v16 = "%{public}s %{public}s%s<i%u> Unrecognized resumable session version %x";
    v17 = v13;
    v18 = OS_LOG_TYPE_INFO;
    v19 = 44;
LABEL_21:
    _os_log_impl(&dword_181A37000, v17, v18, v16, &v25, v19);
    return;
  }

  v8 = a2[1];
  if (v8 + a2[2] + a2[3] + 16 != a3)
  {
    if ((*(a1 + 1399) & 0x20) != 0)
    {
      return;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v21 = *(a1 + 1304);
    v22 = a2[1];
    v23 = a2[2];
    v24 = a2[3];
    v25 = 136448258;
    v26 = "nw_http3_parse_resumable_session_data";
    v27 = 2082;
    v28 = a1 + 1313;
    v29 = 2080;
    v30 = " ";
    v31 = 1024;
    v32 = v21;
    v33 = 2048;
    v34 = a3;
    v35 = 2048;
    v36 = 16;
    v37 = 1024;
    v38 = v22;
    v39 = 1024;
    v40 = v23;
    v41 = 1024;
    v42 = v24;
    v16 = "%{public}s %{public}s%s<i%u> Invalid resumable session length (%zu != %zu+%u+%u+%u)";
    v17 = v20;
    v18 = OS_LOG_TYPE_ERROR;
    v19 = 76;
    goto LABEL_21;
  }

  v9 = *(a1 + 1168);
  if (v9)
  {
    dispatch_release(v9);
    *(a1 + 1168) = 0;
    v8 = a2[1];
  }

  v10 = a2 + 4;
  *(a1 + 1168) = dispatch_data_create(a2 + 4, v8, 0, 0);
  v11 = *(a1 + 1152);
  if (v11)
  {
    dispatch_release(v11);
    *(a1 + 1152) = 0;
  }

  *(a1 + 1152) = dispatch_data_create(v10 + a2[1], a2[2], 0, 0);
  v12 = *(a1 + 1160);
  if (v12)
  {
    dispatch_release(v12);
    *(a1 + 1160) = 0;
  }

  *(a1 + 1160) = dispatch_data_create(v10 + a2[1] + a2[2], a2[3], 0, 0);
}

void nw_quic_connection_set_session_state(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (nw_protocol_options_is_quic_connection(v5))
  {
    _nw_quic_connection_set_session_state(v5);
    goto LABEL_3;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_quic_connection_set_session_state";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v9, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_connection_set_session_state";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else
    {
      if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v11 = type;
        v14 = os_log_type_enabled(v10, type);
        if (backtrace_string)
        {
          if (v14)
          {
            *buf = 136446466;
            v18 = "nw_quic_connection_set_session_state";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v14)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v18 = "nw_quic_connection_set_session_state";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v18 = "nw_quic_connection_set_session_state";
        v12 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v9)
  {
    free(v9);
  }

LABEL_3:
}

uint64_t _nw_quic_connection_set_session_state(uint64_t a1)
{
  v2 = sub_182AD2868();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  sub_182AD2818();
  sub_182AD2818();
  sub_181E11B04(a1, v8, v5);
  v9 = *(v3 + 8);
  v9(v5, v2);
  return (v9)(v8, v2);
}

uint64_t sub_181E11B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v10 = *(*result + 128);
    v11 = result;
    swift_beginAccess();
    v12 = *(v11 + v10);

    if (v12)
    {
      v13 = sub_182AD2868();
      v14 = *(v13 - 8);
      v15 = *(v14 + 16);
      v15(v8, a3, v13);
      v16 = *(v14 + 56);
      v16(v8, 0, 1, v13);
      v17 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_tlsState;
      swift_beginAccess();
      sub_181B38538(v8, v12 + v17);
      swift_endAccess();
      v15(v8, a2, v13);
      v16(v8, 0, 1, v13);
      v18 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_quicState;
      swift_beginAccess();
      sub_181B38538(v8, v12 + v18);
      swift_endAccess();
    }
  }

  return result;
}

id nw_framer_protocol_copy_info(uint64_t a1, int a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 40);
    v5 = v4;
    if (v4)
    {
      if (v4[1])
      {
        if (a2 == 254)
        {
          if (v4[56] && v4[57])
          {
            v11 = *(a1 + 32);
            if (!v11 || (v12 = *(v11 + 24)) == 0 || (v13 = *(v12 + 224)) == 0 || (v9 = v13()) == 0)
            {
              v9 = _nw_array_create();
            }

            v14 = nw_protocol_establishment_report_create(*(v5 + 1), *(v5 + 56), *(v5 + 57));
            v15 = v14;
            if (!v9 || !v14)
            {
              goto LABEL_31;
            }

LABEL_30:
            _nw_array_append(v9, v15);
LABEL_31:

            goto LABEL_32;
          }
        }

        else if (a2 == 255)
        {
          if ((v4[76] & 0x10) == 0)
          {
            v6 = *(a1 + 32);
            if (v6)
            {
              v7 = *(v6 + 24);
              if (v7)
              {
                v8 = *(v7 + 224);
                if (v8)
                {
                  v9 = v8();
                  v10 = *(v5 + 55);
                  if (!v10)
                  {
                    goto LABEL_32;
                  }

LABEL_27:
                  v15 = (*(v10 + 16))(v10, v5);
                  if (!v15)
                  {
                    goto LABEL_31;
                  }

                  if (!v9)
                  {
                    v9 = _nw_array_create();
                    if (!v9)
                    {
                      goto LABEL_31;
                    }
                  }

                  goto LABEL_30;
                }
              }
            }
          }

          v9 = 0;
          v10 = *(v5 + 55);
          if (v10)
          {
            goto LABEL_27;
          }

LABEL_32:

          return v9;
        }

        v16 = *(a1 + 32);
        if (v16)
        {
          v17 = *(v16 + 24);
          if (v17)
          {
            v18 = *(v17 + 224);
            if (v18)
            {
              v9 = v18();
              goto LABEL_32;
            }
          }
        }

LABEL_87:
        v9 = 0;
        goto LABEL_32;
      }

      v28 = __nwlog_obj();
      *buf = 136446210;
      v44 = "nw_framer_protocol_copy_info";
      v25 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v41 = 0;
      if (!__nwlog_fault(v25, &type, &v41))
      {
LABEL_85:
        if (v25)
        {
          free(v25);
        }

        goto LABEL_87;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v44 = "nw_framer_protocol_copy_info";
          _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null framer->parent_definition", buf, 0xCu);
        }

LABEL_84:

        goto LABEL_85;
      }

      if (v41 != 1)
      {
        v26 = __nwlog_obj();
        v40 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v44 = "nw_framer_protocol_copy_info";
          _os_log_impl(&dword_181A37000, v26, v40, "%{public}s called with null framer->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_84;
      }

      backtrace_string = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v36 = type;
      v37 = os_log_type_enabled(v26, type);
      if (!backtrace_string)
      {
        if (v37)
        {
          *buf = 136446210;
          v44 = "nw_framer_protocol_copy_info";
          _os_log_impl(&dword_181A37000, v26, v36, "%{public}s called with null framer->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_84;
      }

      if (v37)
      {
        *buf = 136446466;
        v44 = "nw_framer_protocol_copy_info";
        v45 = 2082;
        v46 = backtrace_string;
        _os_log_impl(&dword_181A37000, v26, v36, "%{public}s called with null framer->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      v24 = __nwlog_obj();
      *buf = 136446210;
      v44 = "nw_framer_protocol_copy_info";
      v25 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v41 = 0;
      if (!__nwlog_fault(v25, &type, &v41))
      {
        goto LABEL_85;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v44 = "nw_framer_protocol_copy_info";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null framer", buf, 0xCu);
        }

        goto LABEL_84;
      }

      if (v41 != 1)
      {
        v26 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v44 = "nw_framer_protocol_copy_info";
          _os_log_impl(&dword_181A37000, v26, v39, "%{public}s called with null framer, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_84;
      }

      backtrace_string = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v34 = type;
      v35 = os_log_type_enabled(v26, type);
      if (!backtrace_string)
      {
        if (v35)
        {
          *buf = 136446210;
          v44 = "nw_framer_protocol_copy_info";
          _os_log_impl(&dword_181A37000, v26, v34, "%{public}s called with null framer, no backtrace", buf, 0xCu);
        }

        goto LABEL_84;
      }

      if (v35)
      {
        *buf = 136446466;
        v44 = "nw_framer_protocol_copy_info";
        v45 = 2082;
        v46 = backtrace_string;
        _os_log_impl(&dword_181A37000, v26, v34, "%{public}s called with null framer, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_85;
  }

  v20 = __nwlog_obj();
  *buf = 136446210;
  v44 = "nw_framer_protocol_copy_info";
  v21 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v41 = 0;
  if (__nwlog_fault(v21, &type, &v41))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v44 = "nw_framer_protocol_copy_info";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v41 == 1)
    {
      v30 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v31 = type;
      v32 = os_log_type_enabled(v22, type);
      if (v30)
      {
        if (v32)
        {
          *buf = 136446466;
          v44 = "nw_framer_protocol_copy_info";
          v45 = 2082;
          v46 = v30;
          _os_log_impl(&dword_181A37000, v22, v31, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v30);
        goto LABEL_76;
      }

      if (v32)
      {
        *buf = 136446210;
        v44 = "nw_framer_protocol_copy_info";
        _os_log_impl(&dword_181A37000, v22, v31, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v44 = "nw_framer_protocol_copy_info";
        _os_log_impl(&dword_181A37000, v22, v38, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_76:
  if (v21)
  {
    free(v21);
  }

  return 0;
}

void nw_browser_start(nw_browser_t browser)
{
  v149 = *MEMORY[0x1E69E9840];
  v2 = browser;
  v3 = v2;
  if (!v2)
  {
    v97 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_browser_start";
    v98 = _os_log_send_and_compose_impl();

    v142[0] = 16;
    v145[0] = 0;
    if (__nwlog_fault(v98, v142, v145))
    {
      if (v142[0] == 17)
      {
        v99 = __nwlog_obj();
        v100 = v142[0];
        if (os_log_type_enabled(v99, v142[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_browser_start";
          _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null browser", buf, 0xCu);
        }
      }

      else if (v145[0] == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v99 = __nwlog_obj();
        v127 = v142[0];
        v128 = os_log_type_enabled(v99, v142[0]);
        if (backtrace_string)
        {
          if (v128)
          {
            *buf = 136446466;
            *&buf[4] = "nw_browser_start";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v99, v127, "%{public}s called with null browser, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_234;
        }

        if (v128)
        {
          *buf = 136446210;
          *&buf[4] = "nw_browser_start";
          _os_log_impl(&dword_181A37000, v99, v127, "%{public}s called with null browser, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v99 = __nwlog_obj();
        v129 = v142[0];
        if (os_log_type_enabled(v99, v142[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_browser_start";
          _os_log_impl(&dword_181A37000, v99, v129, "%{public}s called with null browser, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_234:
    if (v98)
    {
      free(v98);
    }

    goto LABEL_198;
  }

  os_unfair_lock_lock(&v2[1]);
  isa = v3[9].isa;
  if (!isa)
  {
    if (!v3[2].isa)
    {
      os_unfair_lock_unlock(&v3[1]);
      if (!nw_parameters_get_logging_disabled(v3[5].isa))
      {
        if (__nwlog_browser_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
        }

        v6 = gbrowserLogObj;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v30 = v3[24].isa;
          *buf = 136446466;
          *&buf[4] = "nw_browser_start";
          *&buf[12] = 1024;
          *&buf[14] = v30;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s [B%u] The browser's client_queue is not set. You must set this browser's client_queue using nw_browser_set_queue() in order to successfully start it.", buf, 0x12u);
        }

        goto LABEL_41;
      }

      goto LABEL_198;
    }

    if (!v3[7].isa && !v3[8].isa && !nw_parameters_get_logging_disabled(v3[5].isa))
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v8 = gbrowserLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = v3[24].isa;
        *buf = 136446466;
        *&buf[4] = "nw_browser_start";
        *&buf[12] = 1024;
        *&buf[14] = v9;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s [B%u] The browser does not have any callback handlers set. You must set callback handlers if you wish to receive updates from the browser.", buf, 0x12u);
      }
    }

    objc_storeStrong(&v3[6].isa, browser);
    v10 = xpc_dictionary_create(0, 0, 0);
    v11 = v3[19].isa;
    v3[19].isa = v10;

    v12 = xpc_dictionary_create(0, 0, 0);
    v13 = v3[20].isa;
    v3[20].isa = v12;

    v14 = _nw_array_create();
    v15 = v3[17].isa;
    v3[17].isa = v14;

    v16 = _nw_array_create();
    v17 = v3[18].isa;
    v3[18].isa = v16;

    v18 = nw_dictionary_create();
    v19 = v3[21].isa;
    v3[21].isa = v18;

    v20 = v3[3].isa;
    if (v20 <= 1)
    {
      if (v20)
      {
        if (v20 == 1)
        {
          v21 = v3;
          v22 = nw_browse_descriptor_copy_custom_browse_block(v21[4]);
          if (v22)
          {
            v23 = v22;
            if (!nw_parameters_get_logging_disabled(v21[5]))
            {
              if (__nwlog_browser_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
              }

              v24 = gbrowserLogObj;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = *(v21 + 48);
                *v142 = 136446466;
                *&v142[4] = "nw_browser_start_custom_browser_locked";
                *&v142[12] = 1024;
                *&v142[14] = v25;
                _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s [B%u] start: custom browser", v142, 0x12u);
              }
            }

            v26 = nw_parameters_copy_context(v21[5]);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL38nw_browser_start_custom_browser_lockedP21NWConcrete_nw_browser_block_invoke;
            *&buf[24] = &unk_1E6A3D710;
            v27 = v23;
            v141 = v27;
            v28 = v21;
            *&buf[32] = v28;
            nw_queue_context_async(v26, buf);

            goto LABEL_196;
          }

          v130 = __nwlog_obj();
          *v142 = 136446210;
          *&v142[4] = "nw_browser_start_custom_browser_locked";
          v131 = _os_log_send_and_compose_impl();

          v145[0] = 16;
          type = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v131, v145, &type))
          {
            goto LABEL_252;
          }

          if (v145[0] == 17)
          {
            v132 = __nwlog_obj();
            v133 = v145[0];
            if (os_log_type_enabled(v132, v145[0]))
            {
              *v142 = 136446210;
              *&v142[4] = "nw_browser_start_custom_browser_locked";
              _os_log_impl(&dword_181A37000, v132, v133, "%{public}s called with null browser_block", v142, 0xCu);
            }
          }

          else if (type == OS_LOG_TYPE_INFO)
          {
            v134 = __nw_create_backtrace_string();
            v132 = __nwlog_obj();
            v135 = v145[0];
            v136 = os_log_type_enabled(v132, v145[0]);
            if (v134)
            {
              if (v136)
              {
                *v142 = 136446466;
                *&v142[4] = "nw_browser_start_custom_browser_locked";
                *&v142[12] = 2082;
                *&v142[14] = v134;
                _os_log_impl(&dword_181A37000, v132, v135, "%{public}s called with null browser_block, dumping backtrace:%{public}s", v142, 0x16u);
              }

              free(v134);
              goto LABEL_252;
            }

            if (v136)
            {
              *v142 = 136446210;
              *&v142[4] = "nw_browser_start_custom_browser_locked";
              _os_log_impl(&dword_181A37000, v132, v135, "%{public}s called with null browser_block, no backtrace", v142, 0xCu);
            }
          }

          else
          {
            v132 = __nwlog_obj();
            v137 = v145[0];
            if (os_log_type_enabled(v132, v145[0]))
            {
              *v142 = 136446210;
              *&v142[4] = "nw_browser_start_custom_browser_locked";
              _os_log_impl(&dword_181A37000, v132, v137, "%{public}s called with null browser_block, backtrace limit exceeded", v142, 0xCu);
            }
          }

LABEL_252:
          if (v131)
          {
            free(v131);
          }
        }

LABEL_156:
        v90 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
        nw_browser_set_state_locked(v3, 2, v90);

LABEL_197:
        os_unfair_lock_unlock(&v3[1]);
        goto LABEL_198;
      }

      if (nw_parameters_get_logging_disabled(v3[5].isa))
      {
        goto LABEL_156;
      }

      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v35 = gbrowserLogObj;
      v36 = v3[24].isa;
      *buf = 136446466;
      *&buf[4] = "nw_browser_start";
      *&buf[12] = 1024;
      *&buf[14] = v36;
      v37 = _os_log_send_and_compose_impl();

      v142[0] = 16;
      v145[0] = 0;
      if (__nwlog_fault(v37, v142, v145))
      {
        if (v142[0] == 17)
        {
          if (__nwlog_browser_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
          }

          v38 = gbrowserLogObj;
          v39 = v142[0];
          if (os_log_type_enabled(v38, v142[0]))
          {
            v40 = v3[24].isa;
            *buf = 136446466;
            *&buf[4] = "nw_browser_start";
            *&buf[12] = 1024;
            *&buf[14] = v40;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s [B%u] nw_browser_start called on an invalid browser", buf, 0x12u);
          }
        }

        else if (v145[0] == 1)
        {
          v49 = __nw_create_backtrace_string();
          if (v49)
          {
            v50 = v49;
            if (__nwlog_browser_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
            }

            v51 = gbrowserLogObj;
            v52 = v142[0];
            if (os_log_type_enabled(v51, v142[0]))
            {
              v53 = v3[24].isa;
              *buf = 136446722;
              *&buf[4] = "nw_browser_start";
              *&buf[12] = 1024;
              *&buf[14] = v53;
              *&buf[18] = 2082;
              *&buf[20] = v50;
              _os_log_impl(&dword_181A37000, v51, v52, "%{public}s [B%u] nw_browser_start called on an invalid browser, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v50);
            goto LABEL_140;
          }

          if (__nwlog_browser_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
          }

          v38 = gbrowserLogObj;
          v79 = v142[0];
          if (os_log_type_enabled(v38, v142[0]))
          {
            v80 = v3[24].isa;
            *buf = 136446466;
            *&buf[4] = "nw_browser_start";
            *&buf[12] = 1024;
            *&buf[14] = v80;
            _os_log_impl(&dword_181A37000, v38, v79, "%{public}s [B%u] nw_browser_start called on an invalid browser, no backtrace", buf, 0x12u);
          }
        }

        else
        {
          if (__nwlog_browser_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
          }

          v38 = gbrowserLogObj;
          v61 = v142[0];
          if (os_log_type_enabled(v38, v142[0]))
          {
            v62 = v3[24].isa;
            *buf = 136446466;
            *&buf[4] = "nw_browser_start";
            *&buf[12] = 1024;
            *&buf[14] = v62;
            _os_log_impl(&dword_181A37000, v38, v61, "%{public}s [B%u] nw_browser_start called on an invalid browser, backtrace limit exceeded", buf, 0x12u);
          }
        }
      }

LABEL_140:
      if (v37)
      {
        free(v37);
      }

      goto LABEL_156;
    }

    if (v20 == 2)
    {
      goto LABEL_187;
    }

    if (v20 != 3)
    {
      goto LABEL_156;
    }

    v31 = v3;
    if (!nw_parameters_get_logging_disabled(*(v31 + 5)))
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v32 = gbrowserLogObj;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(v31 + 48);
        *buf = 136446466;
        *&buf[4] = "nw_browser_start_dns_browser_locked";
        *&buf[12] = 1024;
        *&buf[14] = v33;
        _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s [B%u] start: dns browser", buf, 0x12u);
      }
    }

    if (nw_browse_descriptor_get_type(*(v31 + 4)) == 1)
    {
      if (nw_browse_descriptor_is_meta_query(*(v31 + 4)))
      {
        v34 = "Invalid meta query type specified. nw_browser_start_dns_browser_locked";
LABEL_154:
        nw_browser_fail_on_dns_error_locked(v31, -65540, v34);
LABEL_155:

        goto LABEL_156;
      }

      v54 = getpid();
      if (nw_parameters_has_delegated_proc_pid(*(v31 + 5), v54) || nw_parameters_has_delegated_proc_uuid(*(v31 + 5)))
      {
        if (nw_parameters_has_delegated_proc_pid(*(v31 + 5), v54))
        {
          pid = nw_parameters_get_pid(*(v31 + 5));
          if (!nw_parameters_get_logging_disabled(*(v31 + 5)))
          {
            if (__nwlog_browser_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
            }

            v56 = gbrowserLogObj;
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              v57 = *(v31 + 48);
              *buf = 136446722;
              *&buf[4] = "nw_browser_start_dns_browser_locked";
              *&buf[12] = 1024;
              *&buf[14] = v57;
              *&buf[18] = 1024;
              *&buf[20] = pid;
              _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s [B%u] Delegating DNS service to PID %d", buf, 0x18u);
            }
          }

          DelegateConnection = DNSServiceCreateDelegateConnection();
          if (!DelegateConnection)
          {
            goto LABEL_143;
          }

          if (!nw_parameters_get_logging_disabled(*(v31 + 5)))
          {
            if (__nwlog_browser_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
            }

            v59 = gbrowserLogObj;
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              v60 = *(v31 + 48);
              *buf = 136446978;
              *&buf[4] = "nw_browser_start_dns_browser_locked";
              *&buf[12] = 1024;
              *&buf[14] = v60;
              *&buf[18] = 1024;
              *&buf[20] = pid;
              *&buf[24] = 1024;
              *&buf[26] = DelegateConnection;
              _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_ERROR, "%{public}s [B%u] DNSServiceCreateDelegateConnection(..., epid=%d, NULL) failed: %d", buf, 0x1Eu);
            }
          }
        }

        else
        {
          pid = 0;
          DelegateConnection = 0;
        }

        if (nw_parameters_has_delegated_proc_uuid(*(v31 + 5)))
        {
          if (DelegateConnection && !nw_parameters_get_logging_disabled(*(v31 + 5)))
          {
            if (__nwlog_browser_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
            }

            v72 = gbrowserLogObj;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              v73 = *(v31 + 48);
              string_for_dns_service_error = nwlog_get_string_for_dns_service_error(DelegateConnection);
              *buf = 136447234;
              *&buf[4] = "nw_browser_start_dns_browser_locked";
              *&buf[12] = 1024;
              *&buf[14] = v73;
              *&buf[18] = 1024;
              *&buf[20] = pid;
              *&buf[24] = 2082;
              *&buf[26] = string_for_dns_service_error;
              *&buf[34] = 1024;
              *&buf[36] = DelegateConnection;
              _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_ERROR, "%{public}s [B%u] Delegating DNS service to PID %d returned failure %{public}s(%d), falling back to eUUID", buf, 0x28u);
            }
          }

          *v142 = 0;
          *&v142[8] = 0;
          nw_parameters_get_e_proc_uuid(*(v31 + 5));
          if (!nw_parameters_get_logging_disabled(*(v31 + 5)))
          {
            if (__nwlog_browser_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
            }

            v75 = gbrowserLogObj;
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
            {
              v76 = *(v31 + 48);
              *buf = 136446466;
              *&buf[4] = "nw_browser_start_dns_browser_locked";
              *&buf[12] = 1024;
              *&buf[14] = v76;
              _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s [B%u] Delegating DNS service to eUUID", buf, 0x12u);
            }
          }

          DelegateConnection = DNSServiceCreateDelegateConnection();
          if (DelegateConnection && !nw_parameters_get_logging_disabled(*(v31 + 5)))
          {
            if (__nwlog_browser_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
            }

            v77 = gbrowserLogObj;
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              v78 = *(v31 + 48);
              *buf = 136447234;
              *&buf[4] = "nw_browser_start_dns_browser_locked";
              *&buf[12] = 1024;
              *&buf[14] = v78;
              *&buf[18] = 1040;
              *&buf[20] = 16;
              *&buf[24] = 2096;
              *&buf[26] = v142;
              *&buf[34] = 1024;
              *&buf[36] = DelegateConnection;
              _os_log_impl(&dword_181A37000, v77, OS_LOG_TYPE_ERROR, "%{public}s [B%u] DNSServiceCreateDelegateConnection(..., 0, %{uuid_t}.16P) failed: %d", buf, 0x28u);
            }
          }
        }
      }

      else
      {
        DelegateConnection = DNSServiceCreateConnection(v31 + 15);
      }

LABEL_143:
      if (nw_browser_fail_on_dns_error_locked(v31, DelegateConnection, "DNSServiceCreateConnection"))
      {
        goto LABEL_155;
      }

      v81 = *(v31 + 15);
      v82 = nw_parameters_copy_context(*(v31 + 5));
      v83 = nw_context_copy_workloop(v82);
      LODWORD(v81) = DNSServiceSetDispatchQueue(v81, v83);

      if (nw_browser_fail_on_dns_error_locked(v31, v81, "DNSServiceSetDispatchQueue"))
      {
        goto LABEL_155;
      }

      *(v31 + 16) = *(v31 + 15);
      v84 = nw_parameters_copy_required_interface(*(v31 + 5));
      v85 = v84;
      if (v84)
      {
        index = _nw_interface_get_index(v84);
      }

      else
      {
        index = 0;
      }

      v91 = nw_browser_derive_endpoint_flags(v31);
      bonjour_service_type = nw_browse_descriptor_get_bonjour_service_type(*(v31 + 4));
      bonjour_service_domain = nw_browse_descriptor_get_bonjour_service_domain(*(v31 + 4));
      if (v31[197])
      {
        v94 = MEMORY[0x1E69E99B0];
      }

      else
      {
        v94 = 0;
      }

      v95 = MEMORY[0x1865DBB40](v31 + 128, v91, index, bonjour_service_type, bonjour_service_domain, v94, nw_browser_dns_service_browse_callback, v31);
      if (nw_browser_fail_on_dns_error_locked(v31, v95, "DNSServiceBrowse"))
      {

        goto LABEL_156;
      }

      if (index)
      {
        v96 = v85 ? _nw_interface_get_name(v85) : 0;
        if (!nw_parameters_get_logging_disabled(*(v31 + 5)))
        {
          if (__nwlog_browser_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
          }

          v101 = gbrowserLogObj;
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
          {
            v102 = *(v31 + 48);
            v103 = "any";
            if (v96)
            {
              v103 = v96;
            }

            *buf = 136446978;
            *&buf[4] = "nw_browser_start_dns_browser_locked";
            *&buf[12] = 1024;
            *&buf[14] = v102;
            *&buf[18] = 2082;
            *&buf[20] = v103;
            *&buf[28] = 1024;
            *&buf[30] = index;
            _os_log_impl(&dword_181A37000, v101, OS_LOG_TYPE_DEBUG, "%{public}s [B%u] Scoping browse to %{public}s [%u]", buf, 0x22u);
          }
        }
      }

      if (!nw_parameters_get_logging_disabled(*(v31 + 5)))
      {
        if (__nwlog_browser_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
        }

        v104 = gbrowserLogObj;
        if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
        {
          v105 = *(v31 + 48);
          *buf = 136446722;
          *&buf[4] = "nw_browser_start_dns_browser_locked";
          *&buf[12] = 1024;
          *&buf[14] = v105;
          *&buf[18] = 1024;
          *&buf[20] = v91;
          _os_log_impl(&dword_181A37000, v104, OS_LOG_TYPE_DEBUG, "%{public}s [B%u] dns: start browse with flags %#x", buf, 0x18u);
        }
      }

LABEL_187:
      v106 = v3;
      if (!nw_parameters_get_logging_disabled(*(v106 + 5)))
      {
        if (__nwlog_browser_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
        }

        v107 = gbrowserLogObj;
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          v108 = *(v106 + 48);
          *v145 = 136446466;
          v146 = "nw_browser_start_path_browser_locked";
          v147 = 1024;
          LODWORD(v148) = v108;
          _os_log_impl(&dword_181A37000, v107, OS_LOG_TYPE_DEFAULT, "%{public}s [B%u] path: start browser", v145, 0x12u);
        }
      }

      v109 = (v106 + 88);
      if (*(v106 + 11) || *(v106 + 12))
      {

LABEL_196:
        nw_browser_set_state_locked(v3, 1, 0);
        goto LABEL_197;
      }

      evaluator_for_browse = nw_path_create_evaluator_for_browse(*(v106 + 4), *(v106 + 5));
      if (evaluator_for_browse)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL36nw_browser_start_path_browser_lockedP21NWConcrete_nw_browser_block_invoke;
        *&buf[24] = &unk_1E6A3CD80;
        v111 = v106;
        *&buf[32] = v111;
        nw_path_evaluator_set_update_handler(evaluator_for_browse, 0, buf);
        objc_storeStrong(v106 + 11, evaluator_for_browse);
        v112 = *v109;
        if (*v109)
        {
          v113 = v112;
          os_unfair_lock_lock(v112 + 24);
          v114 = v113[6];
          os_unfair_lock_unlock(v112 + 24);
        }

        else
        {
          v114 = 0;
        }

        v119 = *(v106 + 12);
        *(v106 + 12) = v114;

        v120 = nw_parameters_copy_context(*(v106 + 5));
        *v142 = MEMORY[0x1E69E9820];
        *&v142[8] = 3221225472;
        *&v142[16] = ___ZL36nw_browser_start_path_browser_lockedP21NWConcrete_nw_browser_block_invoke_2;
        v143 = &unk_1E6A3D868;
        v121 = v111;
        v144 = v121;
        nw_queue_context_async(v120, v142);

        goto LABEL_196;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v115 = gLogObj;
      *v145 = 136446210;
      v146 = "nw_browser_start_path_browser_locked";
      v116 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v138 = 0;
      if (__nwlog_fault(v116, &type, &v138))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v117 = gLogObj;
          v118 = type;
          if (os_log_type_enabled(v117, type))
          {
            *v145 = 136446210;
            v146 = "nw_browser_start_path_browser_locked";
            _os_log_impl(&dword_181A37000, v117, v118, "%{public}s nw_path_create_evaluator_for_browse failed", v145, 0xCu);
          }
        }

        else if (v138 == 1)
        {
          v122 = __nw_create_backtrace_string();
          v117 = __nwlog_obj();
          v123 = type;
          v124 = os_log_type_enabled(v117, type);
          if (v122)
          {
            if (v124)
            {
              *v145 = 136446466;
              v146 = "nw_browser_start_path_browser_locked";
              v147 = 2082;
              v148 = v122;
              _os_log_impl(&dword_181A37000, v117, v123, "%{public}s nw_path_create_evaluator_for_browse failed, dumping backtrace:%{public}s", v145, 0x16u);
            }

            free(v122);
            goto LABEL_225;
          }

          if (v124)
          {
            *v145 = 136446210;
            v146 = "nw_browser_start_path_browser_locked";
            _os_log_impl(&dword_181A37000, v117, v123, "%{public}s nw_path_create_evaluator_for_browse failed, no backtrace", v145, 0xCu);
          }
        }

        else
        {
          v117 = __nwlog_obj();
          v125 = type;
          if (os_log_type_enabled(v117, type))
          {
            *v145 = 136446210;
            v146 = "nw_browser_start_path_browser_locked";
            _os_log_impl(&dword_181A37000, v117, v125, "%{public}s nw_path_create_evaluator_for_browse failed, backtrace limit exceeded", v145, 0xCu);
          }
        }
      }

LABEL_225:
      if (v116)
      {
        free(v116);
      }

      goto LABEL_156;
    }

    v34 = "nw_browser_start_dns_browser_locked";
    if (nw_parameters_get_logging_disabled(*(v31 + 5)))
    {
      goto LABEL_154;
    }

    if (__nwlog_browser_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
    }

    v41 = gbrowserLogObj;
    v42 = *(v31 + 48);
    v43 = nw_browse_descriptor_get_type(*(v31 + 4));
    *buf = 136446722;
    *&buf[4] = "nw_browser_start_dns_browser_locked";
    *&buf[12] = 1024;
    *&buf[14] = v42;
    *&buf[18] = 1024;
    *&buf[20] = v43;
    v44 = _os_log_send_and_compose_impl();

    v142[0] = 16;
    v145[0] = 0;
    if (__nwlog_fault(v44, v142, v145))
    {
      if (v142[0] == 17)
      {
        if (__nwlog_browser_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
        }

        v45 = gbrowserLogObj;
        v46 = v142[0];
        if (os_log_type_enabled(v45, v142[0]))
        {
          v47 = *(v31 + 48);
          v48 = nw_browse_descriptor_get_type(*(v31 + 4));
          *buf = 136446722;
          *&buf[4] = "nw_browser_start_dns_browser_locked";
          *&buf[12] = 1024;
          *&buf[14] = v47;
          *&buf[18] = 1024;
          *&buf[20] = v48;
          _os_log_impl(&dword_181A37000, v45, v46, "%{public}s [B%u] unknown browser.cppode of operation for type %d", buf, 0x18u);
        }
      }

      else if (v145[0] == 1)
      {
        v63 = __nw_create_backtrace_string();
        if (v63)
        {
          v64 = v63;
          if (__nwlog_browser_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
          }

          v65 = gbrowserLogObj;
          v66 = v142[0];
          if (os_log_type_enabled(v65, v142[0]))
          {
            v67 = *(v31 + 48);
            v68 = nw_browse_descriptor_get_type(*(v31 + 4));
            *buf = 136446978;
            *&buf[4] = "nw_browser_start_dns_browser_locked";
            *&buf[12] = 1024;
            *&buf[14] = v67;
            *&buf[18] = 1024;
            *&buf[20] = v68;
            *&buf[24] = 2082;
            *&buf[26] = v64;
            _os_log_impl(&dword_181A37000, v65, v66, "%{public}s [B%u] unknown browser.cppode of operation for type %d, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(v64);
          goto LABEL_152;
        }

        if (__nwlog_browser_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
        }

        v45 = gbrowserLogObj;
        v87 = v142[0];
        if (os_log_type_enabled(v45, v142[0]))
        {
          v88 = *(v31 + 48);
          v89 = nw_browse_descriptor_get_type(*(v31 + 4));
          *buf = 136446722;
          *&buf[4] = "nw_browser_start_dns_browser_locked";
          *&buf[12] = 1024;
          *&buf[14] = v88;
          *&buf[18] = 1024;
          *&buf[20] = v89;
          _os_log_impl(&dword_181A37000, v45, v87, "%{public}s [B%u] unknown browser.cppode of operation for type %d, no backtrace", buf, 0x18u);
        }
      }

      else
      {
        if (__nwlog_browser_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
        }

        v45 = gbrowserLogObj;
        v69 = v142[0];
        if (os_log_type_enabled(v45, v142[0]))
        {
          v70 = *(v31 + 48);
          v71 = nw_browse_descriptor_get_type(*(v31 + 4));
          *buf = 136446722;
          *&buf[4] = "nw_browser_start_dns_browser_locked";
          *&buf[12] = 1024;
          *&buf[14] = v70;
          *&buf[18] = 1024;
          *&buf[20] = v71;
          _os_log_impl(&dword_181A37000, v45, v69, "%{public}s [B%u] unknown browser.cppode of operation for type %d, backtrace limit exceeded", buf, 0x18u);
        }
      }
    }

LABEL_152:
    if (v44)
    {
      free(v44);
    }

    goto LABEL_154;
  }

  v5 = &v3[1];
  if (isa == 3)
  {
    os_unfair_lock_unlock(v5);
    if (!nw_parameters_get_logging_disabled(v3[5].isa))
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v6 = gbrowserLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v3[24].isa;
        *buf = 136446466;
        *&buf[4] = "nw_browser_start";
        *&buf[12] = 1024;
        *&buf[14] = v7;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s [B%u] The browser has already been cancelled and cannot be started again. You must create a new browser object and start it.", buf, 0x12u);
      }

LABEL_41:
    }
  }

  else
  {
    os_unfair_lock_unlock(v5);
    if (!nw_parameters_get_logging_disabled(v3[5].isa))
    {
      if (__nwlog_browser_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
      }

      v6 = gbrowserLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v29 = v3[24].isa;
        *buf = 136446466;
        *&buf[4] = "nw_browser_start";
        *&buf[12] = 1024;
        *&buf[14] = v29;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s [B%u] The browser has already been started, ignoring nw_browser_start().", buf, 0x12u);
      }

      goto LABEL_41;
    }
  }

LABEL_198:
}

uint64_t nw_path_struct_size_for_browse_descriptor(void *a1, unint64_t *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = nw_browse_descriptor_get_type(v3);
  if (v4 == 2)
  {
    application_service_name = nw_browse_descriptor_get_application_service_name(v3);
    bundle_id = nw_browse_descriptor_get_bundle_id(v3);
    v13 = bundle_id;
    if (application_service_name)
    {
      v14 = strlen(application_service_name) + 27;
      if (v13)
      {
LABEL_12:
        v15 = strlen(v13) + 1;
LABEL_26:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        *&buf[24] = 1;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = ___ZL41nw_path_struct_size_for_browse_descriptorPU34objcproto23OS_nw_browse_descriptor8NSObjectPm_block_invoke;
        v33[3] = &unk_1E6A38768;
        v33[4] = buf;
        nw_browse_descriptor_enumerate_device_filters(v3, v33);
        v23 = v14 + v15 + *(*&buf[8] + 24);
        if (a2)
        {
          *a2 = v23;
        }

        if (v23 <= 0x1C)
        {
          v10 = 28;
        }

        else
        {
          v10 = v23;
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_55;
      }
    }

    else
    {
      v14 = 27;
      if (bundle_id)
      {
        goto LABEL_12;
      }
    }

    v15 = 1;
    goto LABEL_26;
  }

  if (v4 == 1)
  {
    bonjour_service_type = nw_browse_descriptor_get_bonjour_service_type(v3);
    bonjour_service_domain = nw_browse_descriptor_get_bonjour_service_domain(v3);
    v7 = bonjour_service_domain;
    if (bonjour_service_type)
    {
      v8 = strlen(bonjour_service_type) + 9;
      if (v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = 9;
      if (bonjour_service_domain)
      {
LABEL_5:
        v9 = strlen(v7) + 1 + v8;
        if (!a2)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    v9 = v8 + 1;
    if (!a2)
    {
LABEL_7:
      if (v9 <= 0x1C)
      {
        v10 = 28;
      }

      else
      {
        v10 = v9;
      }

      goto LABEL_55;
    }

LABEL_6:
    *a2 = v9;
    goto LABEL_7;
  }

  if (!nw_browse_descriptor_is_custom_type(v3))
  {
LABEL_54:
    v10 = 28;
    goto LABEL_55;
  }

  v16 = nw_browse_descriptor_copy_custom_data(v3);
  v17 = v16;
  if (!v16)
  {
LABEL_53:

    goto LABEL_54;
  }

  size = dispatch_data_get_size(v16);
  if (size >= 0x401)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "nw_path_struct_size_for_browse_descriptor";
    *&buf[12] = 1024;
    *&buf[14] = 1024;
    v20 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v20, &type, &v31))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        v22 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446466;
          *&buf[4] = "nw_path_struct_size_for_browse_descriptor";
          *&buf[12] = 1024;
          *&buf[14] = 1024;
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s Custom data size must be no larger than %d", buf, 0x12u);
        }
      }

      else if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v27 = type;
        v28 = os_log_type_enabled(v21, type);
        if (backtrace_string)
        {
          if (v28)
          {
            *buf = 136446722;
            *&buf[4] = "nw_path_struct_size_for_browse_descriptor";
            *&buf[12] = 1024;
            *&buf[14] = 1024;
            *&buf[18] = 2082;
            *&buf[20] = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v27, "%{public}s Custom data size must be no larger than %d, dumping backtrace:%{public}s", buf, 0x1Cu);
          }

          free(backtrace_string);
          goto LABEL_51;
        }

        if (v28)
        {
          *buf = 136446466;
          *&buf[4] = "nw_path_struct_size_for_browse_descriptor";
          *&buf[12] = 1024;
          *&buf[14] = 1024;
          _os_log_impl(&dword_181A37000, v21, v27, "%{public}s Custom data size must be no larger than %d, no backtrace", buf, 0x12u);
        }
      }

      else
      {
        v21 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 136446466;
          *&buf[4] = "nw_path_struct_size_for_browse_descriptor";
          *&buf[12] = 1024;
          *&buf[14] = 1024;
          _os_log_impl(&dword_181A37000, v21, v29, "%{public}s Custom data size must be no larger than %d, backtrace limit exceeded", buf, 0x12u);
        }
      }
    }

LABEL_51:
    if (v20)
    {
      free(v20);
    }

    goto LABEL_53;
  }

  v24 = -9;
  if (size < 0xF7)
  {
    v24 = size;
  }

  v25 = v24 + 8;
  if (a2)
  {
    *a2 = v25;
  }

  if (v25 <= 0x1Cu)
  {
    v10 = 28;
  }

  else
  {
    v10 = v25;
  }

LABEL_55:
  return v10;
}

void sub_181E14798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t nw_data_transfer_report_get_received_ip_packet_count(nw_data_transfer_report_t report, uint32_t path_index)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = v3;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_received_ip_packet_count";
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
        v34 = "nw_data_transfer_report_get_received_ip_packet_count";
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
        v34 = "nw_data_transfer_report_get_received_ip_packet_count";
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
        v34 = "nw_data_transfer_report_get_received_ip_packet_count";
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v26)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_received_ip_packet_count";
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
      v34 = "nw_data_transfer_report_get_received_ip_packet_count";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (path_index == -1)
  {
    isa = v4[7].isa;
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
        isa += *v13;
        v11 += v13[45];
        v13 += 90;
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
    v16 = (v4[52].isa + 360 * v9 - 360);
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
    v34 = "nw_data_transfer_report_get_received_ip_packet_count";
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
        v34 = "nw_data_transfer_report_get_received_ip_packet_count";
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
        v34 = "nw_data_transfer_report_get_received_ip_packet_count";
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
        v34 = "nw_data_transfer_report_get_received_ip_packet_count";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v28)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_received_ip_packet_count";
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
    v6 = (v5[52] + 360 * (path_index - 1));
  }

  else
  {
    v6 = v5 + 7;
  }

  isa = *v6;
LABEL_14:

  return isa;
}

uint64_t nw_data_transfer_report_get_sent_ip_packet_count(nw_data_transfer_report_t report, uint32_t path_index)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = v3;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_sent_ip_packet_count";
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
        v34 = "nw_data_transfer_report_get_sent_ip_packet_count";
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
        v34 = "nw_data_transfer_report_get_sent_ip_packet_count";
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
        v34 = "nw_data_transfer_report_get_sent_ip_packet_count";
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v26)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_ip_packet_count";
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
      v34 = "nw_data_transfer_report_get_sent_ip_packet_count";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (path_index == -1)
  {
    isa = v4[11].isa;
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
        isa += *(v13 + 4);
        v11 += *(v13 + 49);
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
    v16 = (v4[52].isa + 360 * v9 - 328);
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
    v34 = "nw_data_transfer_report_get_sent_ip_packet_count";
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
        v34 = "nw_data_transfer_report_get_sent_ip_packet_count";
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
        v34 = "nw_data_transfer_report_get_sent_ip_packet_count";
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
        v34 = "nw_data_transfer_report_get_sent_ip_packet_count";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v28)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_ip_packet_count";
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

  isa = *(v6 + 32);
LABEL_14:

  return isa;
}

uint64_t nw_data_transfer_report_get_received_transport_byte_count(nw_data_transfer_report_t report, uint32_t path_index)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = v3;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_received_transport_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_byte_count";
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v26)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_received_transport_byte_count";
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
      v34 = "nw_data_transfer_report_get_received_transport_byte_count";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (path_index == -1)
  {
    isa = v4[12].isa;
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
        isa += *(v13 + 5);
        v11 += *(v13 + 50);
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
    v16 = (v4[52].isa + 360 * v9 - 320);
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
    v34 = "nw_data_transfer_report_get_received_transport_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_byte_count";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v28)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_received_transport_byte_count";
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

  isa = *(v6 + 40);
LABEL_14:

  return isa;
}

uint64_t nw_data_transfer_report_get_received_transport_duplicate_byte_count(nw_data_transfer_report_t report, uint32_t path_index)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = v3;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_received_transport_duplicate_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_duplicate_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_duplicate_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_duplicate_byte_count";
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v26)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_received_transport_duplicate_byte_count";
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
      v34 = "nw_data_transfer_report_get_received_transport_duplicate_byte_count";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (path_index == -1)
  {
    isa = v4[13].isa;
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
        isa += *(v13 + 6);
        v11 += *(v13 + 51);
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
    v16 = (v4[52].isa + 360 * v9 - 312);
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
    v34 = "nw_data_transfer_report_get_received_transport_duplicate_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_duplicate_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_duplicate_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_duplicate_byte_count";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v28)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_received_transport_duplicate_byte_count";
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

  isa = *(v6 + 48);
LABEL_14:

  return isa;
}

uint64_t nw_data_transfer_report_get_received_transport_out_of_order_byte_count(nw_data_transfer_report_t report, uint32_t path_index)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = v3;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_received_transport_out_of_order_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_out_of_order_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_out_of_order_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_out_of_order_byte_count";
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v26)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_received_transport_out_of_order_byte_count";
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
      v34 = "nw_data_transfer_report_get_received_transport_out_of_order_byte_count";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (path_index == -1)
  {
    isa = v4[14].isa;
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
        isa += *(v13 + 7);
        v11 += *(v13 + 52);
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
    v16 = (v4[52].isa + 360 * v9 - 304);
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
    v34 = "nw_data_transfer_report_get_received_transport_out_of_order_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_out_of_order_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_out_of_order_byte_count";
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
        v34 = "nw_data_transfer_report_get_received_transport_out_of_order_byte_count";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v28)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_received_transport_out_of_order_byte_count";
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

  isa = *(v6 + 56);
LABEL_14:

  return isa;
}

nw_browser_t nw_browser_create(nw_browse_descriptor_t descriptor, nw_parameters_t parameters)
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = descriptor;
  v5 = parameters;
  v6 = v5;
  if (v4)
  {
    v54 = v5;
    v7 = [NWConcrete_nw_browser alloc];
    v8 = v4;
    v9 = v6;
    if (!v7)
    {
LABEL_21:
      v17 = 0;
LABEL_51:

      v6 = v54;
      goto LABEL_52;
    }

    *(v7 + 48) = nw_browser_get_next_log_id();
    if (v9)
    {
      *(v7 + 198) = nw_parameters_get_sensitive_redacted(v9);
    }

    else
    {
      if (nw_context_copy_implicit_context::onceToken[0] != -1)
      {
        dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
      }

      v10 = nw_context_copy_implicit_context::implicit_context;
      v11 = v10;
      if (v10 && (v12 = *(v10 + 33), (v12 - 2) >= 2))
      {
        v13 = v12 != 1;
      }

      else
      {
        if (nwlog_get_sensitive_redacted::onceToken != -1)
        {
          dispatch_once(&nwlog_get_sensitive_redacted::onceToken, &__block_literal_global_83);
        }

        v13 = nwlog_get_sensitive_redacted::sensitiveRedacted;
      }

      *(v7 + 198) = v13 & 1;
    }

    v14 = nw_browse_descriptor_get_type(v8);
    if (v14 == 1)
    {
      v18 = 3;
    }

    else
    {
      if (!v14)
      {
        if (!nw_parameters_get_logging_disabled(*(v7 + 5)))
        {
          if (__nwlog_browser_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
          }

          v15 = gbrowserLogObj;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = *(v7 + 48);
            *buf = 136446466;
            v59 = "[NWConcrete_nw_browser initWithDescriptor:parameters:]";
            v60 = 1024;
            *v61 = v16;
            _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s [B%u] failed due to invalid descriptor type", buf, 0x12u);
          }
        }

        goto LABEL_21;
      }

      if (nw_browse_descriptor_is_custom_type(v8))
      {
        v19 = nw_browse_descriptor_copy_custom_browse_block(v8);

        if (v19)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }
      }

      else
      {
        v18 = 2;
      }
    }

    v57.receiver = v7;
    v57.super_class = NWConcrete_nw_browser;
    v20 = [&v57 init];
    v21 = v20;
    if (v20)
    {
      objc_storeStrong(&v20[4].isa, descriptor);
      LODWORD(v21[3].isa) = v18;
      LODWORD(v21[9].isa) = 0;
      if (v9)
      {
        v22 = v9;
      }

      else
      {
        v22 = _nw_parameters_create();
      }

      isa = v21[5].isa;
      v21[5].isa = v22;

      v24 = nw_parameters_copy_context(v21[5].isa);
      if (!nw_context_is_inline(v24))
      {
        BYTE4(v21[24].isa) = nw_browse_descriptor_get_include_txt_record(v21[4].isa);
        BYTE5(v21[24].isa) = nw_browse_descriptor_get_sign_results(v21[4].isa);
        v29 = _nw_parameters_copy_extended_description(v21[5].isa);
        if (!nw_parameters_get_logging_disabled(v21[5].isa))
        {
          if (__nwlog_browser_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_browser_log::onceToken, &__block_literal_global_20_47423);
          }

          v30 = gbrowserLogObj;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v21[24].isa;
            v32 = v21[4].isa;
            *buf = 136446978;
            v59 = "[NWConcrete_nw_browser initWithDescriptor:parameters:]";
            v60 = 1024;
            *v61 = v31;
            *&v61[4] = 2112;
            *&v61[6] = v32;
            v62 = 2080;
            v63 = v29;
            _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s [B%u] create with %@, parameters: %s", buf, 0x26u);
          }
        }

        if (v29)
        {
          free(v29);
        }

        v17 = v21;
        goto LABEL_50;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v25 = gLogObj;
      *buf = 136446210;
      v59 = "[NWConcrete_nw_browser initWithDescriptor:parameters:]";
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
            v59 = "[NWConcrete_nw_browser initWithDescriptor:parameters:]";
            _os_log_impl(&dword_181A37000, v27, v28, "%{public}s Cannot use nw_browser on inline contexts", buf, 0xCu);
          }
        }

        else if (v55 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          v35 = type;
          v36 = os_log_type_enabled(v27, type);
          if (backtrace_string)
          {
            if (v36)
            {
              *buf = 136446466;
              v59 = "[NWConcrete_nw_browser initWithDescriptor:parameters:]";
              v60 = 2082;
              *v61 = backtrace_string;
              _os_log_impl(&dword_181A37000, v27, v35, "%{public}s Cannot use nw_browser on inline contexts, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            if (!v26)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          }

          if (v36)
          {
            *buf = 136446210;
            v59 = "[NWConcrete_nw_browser initWithDescriptor:parameters:]";
            _os_log_impl(&dword_181A37000, v27, v35, "%{public}s Cannot use nw_browser on inline contexts, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          v37 = type;
          if (os_log_type_enabled(v27, type))
          {
            *buf = 136446210;
            v59 = "[NWConcrete_nw_browser initWithDescriptor:parameters:]";
            _os_log_impl(&dword_181A37000, v27, v37, "%{public}s Cannot use nw_browser on inline contexts, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v26)
      {
LABEL_40:
        v17 = 0;
LABEL_50:

        v7 = v21;
        goto LABEL_51;
      }

LABEL_39:
      free(v26);
      goto LABEL_40;
    }

    v42 = __nwlog_obj();
    *buf = 136446210;
    v59 = "[NWConcrete_nw_browser initWithDescriptor:parameters:]";
    v43 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (__nwlog_fault(v43, &type, &v55))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type;
        if (os_log_type_enabled(v44, type))
        {
          *buf = 136446210;
          v59 = "[NWConcrete_nw_browser initWithDescriptor:parameters:]";
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v55 == 1)
      {
        v49 = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v50 = type;
        v51 = os_log_type_enabled(v44, type);
        if (v49)
        {
          if (v51)
          {
            *buf = 136446466;
            v59 = "[NWConcrete_nw_browser initWithDescriptor:parameters:]";
            v60 = 2082;
            *v61 = v49;
            _os_log_impl(&dword_181A37000, v44, v50, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v49);
          goto LABEL_101;
        }

        if (v51)
        {
          *buf = 136446210;
          v59 = "[NWConcrete_nw_browser initWithDescriptor:parameters:]";
          _os_log_impl(&dword_181A37000, v44, v50, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v53 = type;
        if (os_log_type_enabled(v44, type))
        {
          *buf = 136446210;
          v59 = "[NWConcrete_nw_browser initWithDescriptor:parameters:]";
          _os_log_impl(&dword_181A37000, v44, v53, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_101:
    if (v43)
    {
      free(v43);
    }

    v7 = 0;
    goto LABEL_21;
  }

  v38 = __nwlog_obj();
  *buf = 136446210;
  v59 = "nw_browser_create";
  v39 = _os_log_send_and_compose_impl();

  LOBYTE(v57.receiver) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v39, &v57, &type))
  {
    if (LOBYTE(v57.receiver) == 17)
    {
      v40 = __nwlog_obj();
      receiver = v57.receiver;
      if (os_log_type_enabled(v40, v57.receiver))
      {
        *buf = 136446210;
        v59 = "nw_browser_create";
        _os_log_impl(&dword_181A37000, v40, receiver, "%{public}s called with null descriptor", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v46 = __nw_create_backtrace_string();
      v40 = __nwlog_obj();
      v47 = v57.receiver;
      v48 = os_log_type_enabled(v40, v57.receiver);
      if (v46)
      {
        if (v48)
        {
          *buf = 136446466;
          v59 = "nw_browser_create";
          v60 = 2082;
          *v61 = v46;
          _os_log_impl(&dword_181A37000, v40, v47, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v46);
        goto LABEL_95;
      }

      if (v48)
      {
        *buf = 136446210;
        v59 = "nw_browser_create";
        _os_log_impl(&dword_181A37000, v40, v47, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v40 = __nwlog_obj();
      v52 = v57.receiver;
      if (os_log_type_enabled(v40, v57.receiver))
      {
        *buf = 136446210;
        v59 = "nw_browser_create";
        _os_log_impl(&dword_181A37000, v40, v52, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_95:
  if (v39)
  {
    free(v39);
  }

  v17 = 0;
LABEL_52:

  return v17;
}

const char *nw_browse_descriptor_get_description(void *a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v8 = "<NULL>";
    goto LABEL_15;
  }

  v5 = 8;
  if (a2)
  {
    v5 = 10;
  }

  v6 = &v3[v5];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __nw_browse_descriptor_get_description_block_invoke;
  aBlock[3] = &unk_1E6A3CD08;
  v22 = &v3[v5];
  v21 = v3;
  v23 = a2;
  v7 = _Block_copy(aBlock);
  os_unfair_lock_lock(v4 + 12);
  v7[2](v7);
  os_unfair_lock_unlock(v4 + 12);

  v8 = *v6;
  if (!*v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    v25 = "nw_browse_descriptor_get_description";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (__nwlog_fault(v10, &type, &v18))
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
          v25 = "nw_browse_descriptor_get_description";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s description is NULL", buf, 0xCu);
        }
      }

      else if (v18 == 1)
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
            v25 = "nw_browse_descriptor_get_description";
            v26 = 2082;
            v27 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v15, "%{public}s description is NULL, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v10)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }

        if (v16)
        {
          *buf = 136446210;
          v25 = "nw_browse_descriptor_get_description";
          _os_log_impl(&dword_181A37000, v11, v15, "%{public}s description is NULL, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v17 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v25 = "nw_browse_descriptor_get_description";
          _os_log_impl(&dword_181A37000, v11, v17, "%{public}s description is NULL, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v10)
    {
LABEL_12:
      v8 = "?";
      goto LABEL_13;
    }

LABEL_11:
    free(v10);
    goto LABEL_12;
  }

LABEL_13:

LABEL_15:
  return v8;
}

uint64_t nw_browse_descriptor_create_application_service_with_bundle_id(const char *a1, const char *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_browse_descriptor_create_application_service_with_bundle_id";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v19, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v33 = "nw_browse_descriptor_create_application_service_with_bundle_id";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null application_service_name", buf, 0xCu);
        }
      }

      else if (v30 == 1)
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
            v33 = "nw_browse_descriptor_create_application_service_with_bundle_id";
            v34 = 2082;
            v35 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null application_service_name, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_50;
        }

        if (v26)
        {
          *buf = 136446210;
          v33 = "nw_browse_descriptor_create_application_service_with_bundle_id";
          _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null application_service_name, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v33 = "nw_browse_descriptor_create_application_service_with_bundle_id";
          _os_log_impl(&dword_181A37000, v20, v29, "%{public}s called with null application_service_name, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_50:
    if (v19)
    {
      free(v19);
    }

    return 0;
  }

  v4 = objc_alloc_init(NWConcrete_nw_browse_descriptor);
  v5 = v4;
  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    v33 = "nw_browse_descriptor_create_application_service_with_bundle_id";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v10, &type, &v30))
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
          v33 = "nw_browse_descriptor_create_application_service_with_bundle_id";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s [nw_browse_descriptor init] failed", buf, 0xCu);
        }
      }

      else if (v30 == 1)
      {
        v14 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v15 = type;
        v16 = os_log_type_enabled(v11, type);
        if (v14)
        {
          if (v16)
          {
            *buf = 136446466;
            v33 = "nw_browse_descriptor_create_application_service_with_bundle_id";
            v34 = 2082;
            v35 = v14;
            _os_log_impl(&dword_181A37000, v11, v15, "%{public}s [nw_browse_descriptor init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v14);
          if (!v10)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (v16)
        {
          *buf = 136446210;
          v33 = "nw_browse_descriptor_create_application_service_with_bundle_id";
          _os_log_impl(&dword_181A37000, v11, v15, "%{public}s [nw_browse_descriptor init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v17 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v33 = "nw_browse_descriptor_create_application_service_with_bundle_id";
          _os_log_impl(&dword_181A37000, v11, v17, "%{public}s [nw_browse_descriptor init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_14:
    free(v10);
    goto LABEL_15;
  }

  *(v4 + 2) = 2;
  v6 = strdup(a1);
  if (v6)
  {
    *(v5 + 9) = v6;
    if (!a2)
    {
LABEL_7:
      v8 = v5;
LABEL_15:

      return v5;
    }
  }

  else
  {
    v22 = __nwlog_obj();
    os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v33 = "strict_strdup";
    v23 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v23);
    if (result)
    {
      goto LABEL_53;
    }

    free(v23);
    *(v5 + 9) = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v7 = strdup(a2);
  if (v7)
  {
LABEL_6:
    *(v5 + 10) = v7;
    goto LABEL_7;
  }

  v27 = __nwlog_obj();
  os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v33 = "strict_strdup";
  v28 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v28);
  if (!result)
  {
    free(v28);
    v7 = 0;
    goto LABEL_6;
  }

LABEL_53:
  __break(1u);
  return result;
}

nw_browse_descriptor_t nw_browse_descriptor_create_application_service(const char *application_service_name)
{
  if (nw_utilities_get_self_name::onceToken != -1)
  {
    v4 = application_service_name;
    dispatch_once(&nw_utilities_get_self_name::onceToken, &__block_literal_global_11_47232);
    application_service_name = v4;
  }

  v2 = nw_utilities_get_self_name::name;

  return nw_browse_descriptor_create_application_service_with_bundle_id(application_service_name, v2);
}

NWConcrete_nw_path_evaluator *nw_path_create_evaluator_for_browse(void *a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  if (!v4)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v36 = "nw_path_create_evaluator_for_browse";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v10, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v36 = "nw_path_create_evaluator_for_browse";
          _os_log_impl(&dword_181A37000, v11, v28, "%{public}s called with null browse_descriptor", buf, 0xCu);
        }

LABEL_37:

        goto LABEL_38;
      }

      if (v33 != 1)
      {
        v11 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v11, type))
        {
          *buf = 136446210;
          v36 = "nw_path_create_evaluator_for_browse";
          _os_log_impl(&dword_181A37000, v11, v32, "%{public}s called with null browse_descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_37;
      }

      backtrace_string = __nw_create_backtrace_string();
      v11 = __nwlog_obj();
      v30 = type;
      v31 = os_log_type_enabled(v11, type);
      if (!backtrace_string)
      {
        if (v31)
        {
          *buf = 136446210;
          v36 = "nw_path_create_evaluator_for_browse";
          _os_log_impl(&dword_181A37000, v11, v30, "%{public}s called with null browse_descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_37;
      }

      if (v31)
      {
        *buf = 136446466;
        v36 = "nw_path_create_evaluator_for_browse";
        v37 = 2082;
        v38 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v30, "%{public}s called with null browse_descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_38:
    if (!v10)
    {
LABEL_46:
      v7 = 0;
      goto LABEL_47;
    }

LABEL_39:
    free(v10);
    goto LABEL_46;
  }

  v6 = objc_alloc_init(NWConcrete_nw_path_evaluator);
  v7 = v6;
  if (!v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136446210;
    v36 = "nw_path_create_evaluator_for_browse";
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v10, &type, &v33))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v36 = "nw_path_create_evaluator_for_browse";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_evaluator) alloc] init] failed", buf, 0xCu);
      }
    }

    else if (v33 == 1)
    {
      v18 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v19 = type;
      v20 = os_log_type_enabled(v11, type);
      if (v18)
      {
        if (v20)
        {
          *buf = 136446466;
          v36 = "nw_path_create_evaluator_for_browse";
          v37 = 2082;
          v38 = v18;
          _os_log_impl(&dword_181A37000, v11, v19, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_evaluator) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v18);
        if (!v10)
        {
          goto LABEL_46;
        }

        goto LABEL_39;
      }

      if (v20)
      {
        *buf = 136446210;
        v36 = "nw_path_create_evaluator_for_browse";
        _os_log_impl(&dword_181A37000, v11, v19, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_evaluator) alloc] init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v24 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v36 = "nw_path_create_evaluator_for_browse";
        _os_log_impl(&dword_181A37000, v11, v24, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_path_evaluator) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_37;
  }

  objc_storeStrong(v6 + 4, a1);
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = _nw_parameters_create();
  }

  v13 = *(v7 + 1);
  *(v7 + 1) = v8;

  if ((nw_path_evaluator_evaluate(v7, 0) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    *buf = 136446210;
    v36 = "nw_path_create_evaluator_for_browse";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v15, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v36 = "nw_path_create_evaluator_for_browse";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s nw_path_evaluator_evaluate failed", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        v21 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v22 = type;
        v23 = os_log_type_enabled(v16, type);
        if (v21)
        {
          if (v23)
          {
            *buf = 136446466;
            v36 = "nw_path_create_evaluator_for_browse";
            v37 = 2082;
            v38 = v21;
            _os_log_impl(&dword_181A37000, v16, v22, "%{public}s nw_path_evaluator_evaluate failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v21);
          if (!v15)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }

        if (v23)
        {
          *buf = 136446210;
          v36 = "nw_path_create_evaluator_for_browse";
          _os_log_impl(&dword_181A37000, v16, v22, "%{public}s nw_path_evaluator_evaluate failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v25 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v36 = "nw_path_create_evaluator_for_browse";
          _os_log_impl(&dword_181A37000, v16, v25, "%{public}s nw_path_evaluator_evaluate failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v15)
    {
LABEL_45:

      goto LABEL_46;
    }

LABEL_44:
    free(v15);
    goto LABEL_45;
  }

LABEL_47:

  return v7;
}

void nw_browser_set_queue(nw_browser_t browser, dispatch_queue_t queue)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = browser;
  v4 = queue;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_browser_set_queue";
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
        v23 = "nw_browser_set_queue";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null browser", buf, 0xCu);
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
          v23 = "nw_browser_set_queue";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null browser, dumping backtrace:%{public}s", buf, 0x16u);
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
        v23 = "nw_browser_set_queue";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null browser, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_browser_set_queue";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null browser, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    os_unfair_lock_lock(&v3[1]);
    objc_storeStrong(&v3[2].isa, queue);
    os_unfair_lock_unlock(&v3[1]);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_browser_set_queue";
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
      v23 = "nw_browser_set_queue";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null queue", buf, 0xCu);
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
      v23 = "nw_browser_set_queue";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null queue, backtrace limit exceeded", buf, 0xCu);
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
      v23 = "nw_browser_set_queue";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null queue, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_browser_set_queue";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

id _nw_parameters_create_application_service()
{
  Parameters.init(noInternetProtocol:)(0, v2);
  sub_181F40D48();
  v0 = sub_1821F2D80();
  memcpy(__dst, v2, sizeof(__dst));
  sub_181F48214(__dst);
  return v0;
}

char **__nw_browse_descriptor_get_description_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  result = *(a1 + 40);
  if (!*result)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    if (v4 == 2)
    {
      *__str = 0u;
      v9 = 0u;
      if (*(v3 + 120))
      {
        snprintf(__str, 0x20uLL, " predicate len=%zu", *(v3 + 120));
        result = *(a1 + 40);
      }

      return asprintf(result, "<nw_browse_descriptor application_service %s bundle_id=%s device_types=%x device_scope=%x custom:%zu%s>");
    }

    else if (v4 == 1)
    {
      v5 = *(a1 + 48);
      v6 = *(v3 + 24);
      if (v5 == 1 && v6)
      {
        v7 = result;
        if (strcmp(*(v3 + 24), "local"))
        {
          strcmp(v6, "local.");
        }

        result = v7;
      }

      return asprintf(result, "<nw_browse_descriptor bonjour %s.%s %s>");
    }

    else if (v4)
    {
      return asprintf(result, "<nw_browse_descriptor custom type %d>");
    }

    else
    {

      return asprintf(result, "<nw_browse_descriptor invalid>");
    }
  }

  return result;
}

void nw_parameters_set_required_netagent_classes(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    _nw_parameters_clear_required_netagent_types(v5);
    if (v6)
    {
      Class = object_getClass(v6);
      if (v7)
      {
        v9 = MEMORY[0x1E69E9E50];
        if (Class == MEMORY[0x1E69E9E50] && object_getClass(v7) == v9)
        {
          count = xpc_array_get_count(v6);
          if (count == xpc_array_get_count(v7))
          {
            v11 = xpc_array_get_count(v6);
            if (v11)
            {
              v12 = v11;
              for (i = 0; i != v12; ++i)
              {
                string = xpc_array_get_string(v6, i);
                v15 = xpc_array_get_string(v7, i);
                if (string && v15)
                {
                  _nw_parameters_add_required_netagent_type(v5, string, v15);
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_30;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_parameters_set_required_netagent_classes";
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v17, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v26 = "nw_parameters_set_required_netagent_classes";
        v20 = "%{public}s called with null parameters";
LABEL_26:
        _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
      }
    }

    else
    {
      if (v23 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v19 = type;
        v22 = os_log_type_enabled(v18, type);
        if (backtrace_string)
        {
          if (v22)
          {
            *buf = 136446466;
            v26 = "nw_parameters_set_required_netagent_classes";
            v27 = 2082;
            v28 = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_28;
        }

        if (!v22)
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v26 = "nw_parameters_set_required_netagent_classes";
        v20 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_26;
      }

      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v26 = "nw_parameters_set_required_netagent_classes";
        v20 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_26;
      }
    }

LABEL_27:
  }

LABEL_28:
  if (v17)
  {
    free(v17);
  }

LABEL_30:
}

uint64_t nw_data_transfer_report_get_sent_transport_byte_count(nw_data_transfer_report_t report, uint32_t path_index)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = v3;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_sent_transport_byte_count";
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
        v34 = "nw_data_transfer_report_get_sent_transport_byte_count";
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
        v34 = "nw_data_transfer_report_get_sent_transport_byte_count";
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
        v34 = "nw_data_transfer_report_get_sent_transport_byte_count";
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v26)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_transport_byte_count";
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
      v34 = "nw_data_transfer_report_get_sent_transport_byte_count";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (path_index == -1)
  {
    isa = v4[15].isa;
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
        isa += *(v13 + 8);
        v11 += *(v13 + 53);
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
    v16 = (v4[52].isa + 360 * v9 - 296);
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
    v34 = "nw_data_transfer_report_get_sent_transport_byte_count";
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
        v34 = "nw_data_transfer_report_get_sent_transport_byte_count";
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
        v34 = "nw_data_transfer_report_get_sent_transport_byte_count";
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
        v34 = "nw_data_transfer_report_get_sent_transport_byte_count";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v28)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_transport_byte_count";
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

  isa = *(v6 + 64);
LABEL_14:

  return isa;
}

uint64_t nw_data_transfer_report_get_sent_transport_retransmitted_byte_count(nw_data_transfer_report_t report, uint32_t path_index)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = v3;
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_sent_transport_retransmitted_byte_count";
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
        v34 = "nw_data_transfer_report_get_sent_transport_retransmitted_byte_count";
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
        v34 = "nw_data_transfer_report_get_sent_transport_retransmitted_byte_count";
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
        v34 = "nw_data_transfer_report_get_sent_transport_retransmitted_byte_count";
        _os_log_impl(&dword_181A37000, v19, v25, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v26)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_transport_retransmitted_byte_count";
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
      v34 = "nw_data_transfer_report_get_sent_transport_retransmitted_byte_count";
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_59;
  }

  if (path_index == -1)
  {
    isa = v4[16].isa;
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
        isa += *(v13 + 9);
        v11 += *(v13 + 54);
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
    v16 = (v4[52].isa + 360 * v9 - 288);
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
    v34 = "nw_data_transfer_report_get_sent_transport_retransmitted_byte_count";
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
        v34 = "nw_data_transfer_report_get_sent_transport_retransmitted_byte_count";
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
        v34 = "nw_data_transfer_report_get_sent_transport_retransmitted_byte_count";
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
        v34 = "nw_data_transfer_report_get_sent_transport_retransmitted_byte_count";
        _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null (path_index < report->path_count), no backtrace", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v28)
    {
      *buf = 136446466;
      v34 = "nw_data_transfer_report_get_sent_transport_retransmitted_byte_count";
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

  isa = *(v6 + 72);
LABEL_14:

  return isa;
}

uint64_t nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds(nw_data_transfer_report_t report, uint32_t path_index)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v11, &type, &v31))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v34 = "nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds";
          v35 = 2082;
          *v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_49;
      }

      if (v21)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds";
        _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds";
        _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_48;
  }

  if (nw_data_transfer_report_get_state(v3) != nw_data_transfer_report_state_collected)
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34 = "nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_51;
  }

  if (path_index == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = path_index;
  }

  if (v5 >= HIDWORD(v4[5].isa))
  {
    v15 = __nwlog_obj();
    isa_high = HIDWORD(v4[5].isa);
    *buf = 136446722;
    v34 = "nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds";
    v35 = 1024;
    *v36 = v5;
    *&v36[4] = 1024;
    *&v36[6] = isa_high;
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v11, &type, &v31))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        v18 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds";
        v35 = 1024;
        *v36 = v5;
        *&v36[4] = 1024;
        *&v36[6] = v18;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s path_index (%u) >= report->path_count (%u)", buf, 0x18u);
      }
    }

    else if (v31 == 1)
    {
      v22 = v5;
      v23 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v12, type);
      if (v23)
      {
        if (v25)
        {
          v26 = HIDWORD(v4[5].isa);
          *buf = 136446978;
          v34 = "nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds";
          v35 = 1024;
          *v36 = v22;
          *&v36[4] = 1024;
          *&v36[6] = v26;
          v37 = 2082;
          v38 = v23;
          _os_log_impl(&dword_181A37000, v12, v24, "%{public}s path_index (%u) >= report->path_count (%u), dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(v23);
        goto LABEL_49;
      }

      if (v25)
      {
        v30 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds";
        v35 = 1024;
        *v36 = v22;
        *&v36[4] = 1024;
        *&v36[6] = v30;
        _os_log_impl(&dword_181A37000, v12, v24, "%{public}s path_index (%u) >= report->path_count (%u), no backtrace", buf, 0x18u);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        v29 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds";
        v35 = 1024;
        *v36 = v5;
        *&v36[4] = 1024;
        *&v36[6] = v29;
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s path_index (%u) >= report->path_count (%u), backtrace limit exceeded", buf, 0x18u);
      }
    }

LABEL_48:

LABEL_49:
    if (v11)
    {
      free(v11);
    }

LABEL_51:
    v8 = 0;
    goto LABEL_13;
  }

  v6 = v4;
  if (HIDWORD(v4[5].isa) <= v5)
  {
    v7 = 0;
  }

  else if (v5)
  {
    v7 = v6[52].isa + 360 * v5 - 360;
  }

  else
  {
    v7 = &v6[7];
  }

  v8 = *(v7 + 112);
LABEL_13:

  return v8;
}

uint64_t nw_data_transfer_report_get_transport_minimum_rtt_milliseconds(nw_data_transfer_report_t report, uint32_t path_index)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_transport_minimum_rtt_milliseconds";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v11, &type, &v31))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_transport_minimum_rtt_milliseconds";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v34 = "nw_data_transfer_report_get_transport_minimum_rtt_milliseconds";
          v35 = 2082;
          *v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_49;
      }

      if (v21)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_transport_minimum_rtt_milliseconds";
        _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_transport_minimum_rtt_milliseconds";
        _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_48;
  }

  if (nw_data_transfer_report_get_state(v3) != nw_data_transfer_report_state_collected)
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34 = "nw_data_transfer_report_get_transport_minimum_rtt_milliseconds";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_51;
  }

  if (path_index == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = path_index;
  }

  if (v5 >= HIDWORD(v4[5].isa))
  {
    v15 = __nwlog_obj();
    isa_high = HIDWORD(v4[5].isa);
    *buf = 136446722;
    v34 = "nw_data_transfer_report_get_transport_minimum_rtt_milliseconds";
    v35 = 1024;
    *v36 = v5;
    *&v36[4] = 1024;
    *&v36[6] = isa_high;
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v11, &type, &v31))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        v18 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_transport_minimum_rtt_milliseconds";
        v35 = 1024;
        *v36 = v5;
        *&v36[4] = 1024;
        *&v36[6] = v18;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s path_index (%u) >= report->path_count (%u)", buf, 0x18u);
      }
    }

    else if (v31 == 1)
    {
      v22 = v5;
      v23 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v12, type);
      if (v23)
      {
        if (v25)
        {
          v26 = HIDWORD(v4[5].isa);
          *buf = 136446978;
          v34 = "nw_data_transfer_report_get_transport_minimum_rtt_milliseconds";
          v35 = 1024;
          *v36 = v22;
          *&v36[4] = 1024;
          *&v36[6] = v26;
          v37 = 2082;
          v38 = v23;
          _os_log_impl(&dword_181A37000, v12, v24, "%{public}s path_index (%u) >= report->path_count (%u), dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(v23);
        goto LABEL_49;
      }

      if (v25)
      {
        v30 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_transport_minimum_rtt_milliseconds";
        v35 = 1024;
        *v36 = v22;
        *&v36[4] = 1024;
        *&v36[6] = v30;
        _os_log_impl(&dword_181A37000, v12, v24, "%{public}s path_index (%u) >= report->path_count (%u), no backtrace", buf, 0x18u);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        v29 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_transport_minimum_rtt_milliseconds";
        v35 = 1024;
        *v36 = v5;
        *&v36[4] = 1024;
        *&v36[6] = v29;
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s path_index (%u) >= report->path_count (%u), backtrace limit exceeded", buf, 0x18u);
      }
    }

LABEL_48:

LABEL_49:
    if (v11)
    {
      free(v11);
    }

LABEL_51:
    v8 = 0;
    goto LABEL_13;
  }

  v6 = v4;
  if (HIDWORD(v4[5].isa) <= v5)
  {
    v7 = 0;
  }

  else if (v5)
  {
    v7 = v6[52].isa + 360 * v5 - 360;
  }

  else
  {
    v7 = &v6[7];
  }

  v8 = *(v7 + 120);
LABEL_13:

  return v8;
}

uint64_t nw_data_transfer_report_get_transport_rtt_variance(nw_data_transfer_report_t report, uint32_t path_index)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = report;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_data_transfer_report_get_transport_rtt_variance";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v11, &type, &v31))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_transport_rtt_variance";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null report", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v20 = type;
      v21 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v34 = "nw_data_transfer_report_get_transport_rtt_variance";
          v35 = 2082;
          *v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_49;
      }

      if (v21)
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_transport_rtt_variance";
        _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v34 = "nw_data_transfer_report_get_transport_rtt_variance";
        _os_log_impl(&dword_181A37000, v12, v27, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_48;
  }

  if (nw_data_transfer_report_get_state(v3) != nw_data_transfer_report_state_collected)
  {
    v14 = __nwlog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v34 = "nw_data_transfer_report_get_transport_rtt_variance";
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s Cannot retrieve data report values until collected", buf, 0xCu);
    }

    goto LABEL_51;
  }

  if (path_index == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = path_index;
  }

  if (v5 >= HIDWORD(v4[5].isa))
  {
    v15 = __nwlog_obj();
    isa_high = HIDWORD(v4[5].isa);
    *buf = 136446722;
    v34 = "nw_data_transfer_report_get_transport_rtt_variance";
    v35 = 1024;
    *v36 = v5;
    *&v36[4] = 1024;
    *&v36[6] = isa_high;
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v11, &type, &v31))
    {
      goto LABEL_49;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        v18 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_transport_rtt_variance";
        v35 = 1024;
        *v36 = v5;
        *&v36[4] = 1024;
        *&v36[6] = v18;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s path_index (%u) >= report->path_count (%u)", buf, 0x18u);
      }
    }

    else if (v31 == 1)
    {
      v22 = v5;
      v23 = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v12, type);
      if (v23)
      {
        if (v25)
        {
          v26 = HIDWORD(v4[5].isa);
          *buf = 136446978;
          v34 = "nw_data_transfer_report_get_transport_rtt_variance";
          v35 = 1024;
          *v36 = v22;
          *&v36[4] = 1024;
          *&v36[6] = v26;
          v37 = 2082;
          v38 = v23;
          _os_log_impl(&dword_181A37000, v12, v24, "%{public}s path_index (%u) >= report->path_count (%u), dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(v23);
        goto LABEL_49;
      }

      if (v25)
      {
        v30 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_transport_rtt_variance";
        v35 = 1024;
        *v36 = v22;
        *&v36[4] = 1024;
        *&v36[6] = v30;
        _os_log_impl(&dword_181A37000, v12, v24, "%{public}s path_index (%u) >= report->path_count (%u), no backtrace", buf, 0x18u);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v12, type))
      {
        v29 = HIDWORD(v4[5].isa);
        *buf = 136446722;
        v34 = "nw_data_transfer_report_get_transport_rtt_variance";
        v35 = 1024;
        *v36 = v5;
        *&v36[4] = 1024;
        *&v36[6] = v29;
        _os_log_impl(&dword_181A37000, v12, v28, "%{public}s path_index (%u) >= report->path_count (%u), backtrace limit exceeded", buf, 0x18u);
      }
    }

LABEL_48:

LABEL_49:
    if (v11)
    {
      free(v11);
    }

LABEL_51:
    v8 = 0;
    goto LABEL_13;
  }

  v6 = v4;
  if (HIDWORD(v4[5].isa) <= v5)
  {
    v7 = 0;
  }

  else if (v5)
  {
    v7 = v6[52].isa + 360 * v5 - 360;
  }

  else
  {
    v7 = &v6[7];
  }

  v8 = *(v7 + 136);
LABEL_13:

  return v8;
}

void nw_channel_close(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 280);
    if (v3 && *(v3 + 48))
    {
      v4 = *(a1 + 152);
      if (!v4 || *(v4 + 132) != 4)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v5 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          *&buf[4] = "nw_channel_close";
          _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_INFO, "%{public}s Cannot close channel, input client table is non-empty", buf, 0xCu);
        }
      }

      return;
    }

    if (_nw_signposts_once != -1)
    {
      dispatch_once(&_nw_signposts_once, &__block_literal_global_69_92240);
    }

    if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
      v6 = *(a1 + 192);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v6 = *(a1 + 192);
      if (!v6)
      {
LABEL_14:
        v7 = *(a1 + 200);
        if (v7)
        {
          nw_queue_cancel_source(v7, a2);
          *(a1 + 200) = 0;
        }

        v8 = *(a1 + 184);
        if (v8)
        {
          nw_queue_cancel_source(v8, a2);
          *(a1 + 184) = 0;
        }

        v9 = *(a1 + 168);
        if (v9)
        {
          nw_queue_cancel_source(v9, a2);
          *(a1 + 168) = 0;
        }

        v10 = *(a1 + 176);
        if (v10)
        {
          nw_queue_cancel_source(*(a1 + 176), a2);
          *(a1 + 176) = 0;
          if ((*(a1 + 460) & 0x10) != 0)
          {
            nw_queue_resume_source(v10, v11);
            *(a1 + 460) &= ~0x10u;
          }
        }

        v41 = 0u;
        memset(buf, 0, sizeof(buf));
        v12 = *(a1 + 444);
        uuid_unparse((a1 + 88), buf);
        snprintf(&v41 + 4, 0xCuLL, "-%u", v12);
        if (*(a1 + 136))
        {
          v13 = *(a1 + 208);
          if (v13)
          {
            dispatch_group_leave(v13);
          }

          else
          {
            v14 = *(a1 + 152);
            if (!v14 || *(v14 + 132) != 4)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v15 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
              {
                v16 = *(a1 + 448);
                *v34 = 136446722;
                v35 = "nw_channel_close";
                v36 = 2082;
                v37 = buf;
                v38 = 1024;
                v39 = v16;
                _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "%{public}s Channel destroyed with key: %{public}s and fd: %d", v34, 0x1Cu);
              }
            }

            os_channel_destroy();
          }

          *(a1 + 136) = 0;
        }

        if (*(a1 + 144))
        {
          os_channel_attr_destroy();
          *(a1 + 144) = 0;
        }

        v17 = *(a1 + 152);
        if (v17)
        {
          globals_for_channel = nw_context_get_globals_for_channel(v17);
          v19 = globals_for_channel;
          v20 = *(a1 + 460);
          if ((v20 & 0x2000) != 0)
          {
            os_unfair_lock_lock(globals_for_channel + 4);
            if ((*(a1 + 460) & 0x2000) != 0)
            {
              *(a1 + 460) &= ~0x2000u;
              nw_dictionary_set_value(*&v19->_os_unfair_lock_opaque, buf, 0);
            }

            os_unfair_lock_unlock(v19 + 4);
            v20 = *(a1 + 460);
          }

          if ((v20 & 0x4000) != 0)
          {
            os_unfair_lock_lock(v19 + 5);
            if ((*(a1 + 460) & 0x4000) != 0)
            {
              *(a1 + 460) &= ~0x4000u;
              v21 = *&v19[2]._os_unfair_lock_opaque;
              v22 = a1;
              if (v21)
              {
                v23 = _nw_array_duplicate_array_without_object(v21, v22);

                *&v19[2]._os_unfair_lock_opaque = v23;
                os_release(v21);
              }

              else
              {
                v24 = _nw_array_create();

                *&v19[2]._os_unfair_lock_opaque = v24;
              }
            }

            os_unfair_lock_unlock(v19 + 5);
          }
        }

        v25 = *(a1 + 16);
        if (v25)
        {
          free(v25);
          *(a1 + 16) = 0;
        }

        *(a1 + 440) = 0;
        v26 = *(a1 + 160);
        if (v26)
        {
          if ((*(a1 + 460) & 0x20) == 0 || (nw_nexus_remove_instance(), (v26 = *(a1 + 160)) != 0))
          {
            os_release(v26);
            *(a1 + 160) = 0;
          }
        }

        return;
      }
    }

    nw_queue_cancel_source(v6, a2);
    *(a1 + 192) = 0;
    goto LABEL_14;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_channel_close";
  v27 = _os_log_send_and_compose_impl();
  v34[0] = 16;
  v33 = 0;
  if (__nwlog_fault(v27, v34, &v33))
  {
    if (v34[0] == 17)
    {
      v28 = __nwlog_obj();
      v29 = v34[0];
      if (!os_log_type_enabled(v28, v34[0]))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_close";
      v30 = "%{public}s called with null channel";
      goto LABEL_67;
    }

    if (v33 != 1)
    {
      v28 = __nwlog_obj();
      v29 = v34[0];
      if (!os_log_type_enabled(v28, v34[0]))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      *&buf[4] = "nw_channel_close";
      v30 = "%{public}s called with null channel, backtrace limit exceeded";
      goto LABEL_67;
    }

    backtrace_string = __nw_create_backtrace_string();
    v28 = __nwlog_obj();
    v29 = v34[0];
    v32 = os_log_type_enabled(v28, v34[0]);
    if (backtrace_string)
    {
      if (v32)
      {
        *buf = 136446466;
        *&buf[4] = "nw_channel_close";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null channel, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_68;
    }

    if (v32)
    {
      *buf = 136446210;
      *&buf[4] = "nw_channel_close";
      v30 = "%{public}s called with null channel, no backtrace";
LABEL_67:
      _os_log_impl(&dword_181A37000, v28, v29, v30, buf, 0xCu);
    }
  }

LABEL_68:
  if (v27)
  {
    free(v27);
  }
}

void nw_browser_set_state_changed_handler(nw_browser_t browser, nw_browser_state_changed_handler_t state_changed_handler)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = browser;
  v4 = state_changed_handler;
  if (v3)
  {
    os_unfair_lock_lock(&v3[1]);
    v5 = _Block_copy(v4);
    isa = v3[8].isa;
    v3[8].isa = v5;

    os_unfair_lock_unlock(&v3[1]);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_browser_set_state_changed_handler";
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
        v18 = "nw_browser_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null browser", buf, 0xCu);
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
          v18 = "nw_browser_set_state_changed_handler";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null browser, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_browser_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null browser, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_browser_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null browser, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

LABEL_3:
}

uint64_t nw_browser_get_next_log_id(void)
{
  v7 = *MEMORY[0x1E69E9840];
  add = atomic_fetch_add(nw_browser_get_next_log_id(void)::s_last_top_level_id, 1u);
  result = add + 1;
  if (add == -2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136446466;
      v4 = "nw_browser_get_next_log_id";
      v5 = 1024;
      v6 = -1;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_ERROR, "%{public}s reached %u browser logging ids, wrapping", &v3, 0x12u);
    }

    return nw_browser_get_next_log_id();
  }

  return result;
}

void nw_browse_descriptor_set_discover_application_service_endpoints_only(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    v3[144] = v3[144] & 0xFB | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_browse_descriptor_set_discover_application_service_endpoints_only";
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
        v16 = "nw_browse_descriptor_set_discover_application_service_endpoints_only";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null descriptor", buf, 0xCu);
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
          v16 = "nw_browse_descriptor_set_discover_application_service_endpoints_only";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_browse_descriptor_set_discover_application_service_endpoints_only";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_browse_descriptor_set_discover_application_service_endpoints_only";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_6:
}

void nw_browse_descriptor_set_browse_scope(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_browse_descriptor_set_browse_scope";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v6, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_set_browse_scope";
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null descriptor", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v19 != 1)
      {
        v7 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v7, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_set_browse_scope";
          _os_log_impl(&dword_181A37000, v7, v18, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_set_browse_scope";
          _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v17)
      {
        *buf = 136446466;
        v22 = "nw_browse_descriptor_set_browse_scope";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v16, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v6)
    {
      goto LABEL_23;
    }

LABEL_22:
    free(v6);
    goto LABEL_23;
  }

  if (*(v3 + 2) == 2)
  {
    *(v3 + 23) = a2;
    goto LABEL_23;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446210;
  v22 = "nw_browse_descriptor_set_browse_scope";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_21;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_browse_descriptor_set_browse_scope";
      _os_log_impl(&dword_181A37000, v7, v8, "%{public}s Browse descriptor not of type application service", buf, 0xCu);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (v19 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v12 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_browse_descriptor_set_browse_scope";
      _os_log_impl(&dword_181A37000, v7, v12, "%{public}s Browse descriptor not of type application service, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v9 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  v10 = type;
  v11 = os_log_type_enabled(v7, type);
  if (!v9)
  {
    if (v11)
    {
      *buf = 136446210;
      v22 = "nw_browse_descriptor_set_browse_scope";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s Browse descriptor not of type application service, no backtrace", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v11)
  {
    *buf = 136446466;
    v22 = "nw_browse_descriptor_set_browse_scope";
    v23 = 2082;
    v24 = v9;
    _os_log_impl(&dword_181A37000, v7, v10, "%{public}s Browse descriptor not of type application service, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v9);
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_23:
}

void nw_channel_release_frame_array(uint64_t a1, uint64_t *a2)
{
  v4 = a2 + 1;
  while (1)
  {
    v8 = *a2;
    if (!*a2)
    {
      break;
    }

    if ((*(a1 + 460) & 0x1000) != 0)
    {
      metadata = nw_frame_get_metadata(*a2);
      if (metadata)
      {
        if (*metadata)
        {
          if (*(a1 + 136))
          {
            v10 = metadata;
            v11 = os_channel_packet_free();
            metadata = v10;
            if (v11)
            {
              nw_channel_check_defunct(a1);
              metadata = v10;
            }
          }

          *metadata = 0;
          metadata[1] = 0;
        }
      }
    }

    v5 = v8[2];
    v6 = v8[3];
    v7 = (v5 + 24);
    if (!v5)
    {
      v7 = v4;
    }

    *v7 = v6;
    *v6 = v5;
    v8[2] = 0;
    v8[3] = 0;
    os_release(v8);
  }
}

void nw_parameters_set_include_ble(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    _nw_parameters_set_include_ble(a1, a2);
    return;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_set_include_ble";
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
        v12 = "nw_parameters_set_include_ble";
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
            v12 = "nw_parameters_set_include_ble";
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
        v12 = "nw_parameters_set_include_ble";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_set_include_ble";
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

uint64_t nw_browse_descriptor_get_type(void *a1)
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
  v15 = "nw_browse_descriptor_get_type";
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
        v15 = "nw_browse_descriptor_get_type";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null descriptor", buf, 0xCu);
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
          v15 = "nw_browse_descriptor_get_type";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_browse_descriptor_get_type";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_browse_descriptor_get_type";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
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

void nw_browse_descriptor_enumerate_device_filters(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_browse_descriptor_enumerate_device_filters";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v9, &type, &v24))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_browse_descriptor_enumerate_device_filters";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null descriptor", buf, 0xCu);
      }
    }

    else if (v24 == 1)
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
          v27 = "nw_browse_descriptor_enumerate_device_filters";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v9)
        {
          goto LABEL_6;
        }

LABEL_41:
        free(v9);
        goto LABEL_6;
      }

      if (v16)
      {
        *buf = 136446210;
        v27 = "nw_browse_descriptor_enumerate_device_filters";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v27 = "nw_browse_descriptor_enumerate_device_filters";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (v4)
  {
    v6 = v3[13];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_browse_descriptor_enumerate_device_filters_block_invoke;
    aBlock[3] = &unk_1E6A3CD30;
    v7 = v4;
    v23 = v7;
    if (v6)
    {
      _nw_array_apply(v6, aBlock);
      v7 = v23;
    }

    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_browse_descriptor_enumerate_device_filters";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v9, &type, &v24))
  {
    goto LABEL_40;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_browse_descriptor_enumerate_device_filters";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null enumerator", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v24 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v27 = "nw_browse_descriptor_enumerate_device_filters";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null enumerator, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = type;
  v19 = os_log_type_enabled(v10, type);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v27 = "nw_browse_descriptor_enumerate_device_filters";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerator, no backtrace", buf, 0xCu);
    }

    goto LABEL_39;
  }

  if (v19)
  {
    *buf = 136446466;
    v27 = "nw_browse_descriptor_enumerate_device_filters";
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null enumerator, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_41;
  }

LABEL_6:
}

uint64_t nw_browse_descriptor_get_rssi_threshold(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_browse_descriptor_get_rssi_threshold";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v5, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_rssi_threshold";
          _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null descriptor", buf, 0xCu);
        }

LABEL_20:

        goto LABEL_21;
      }

      if (v19 != 1)
      {
        v6 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_rssi_threshold";
          _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_rssi_threshold";
          _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v17)
      {
        *buf = 136446466;
        v22 = "nw_browse_descriptor_get_rssi_threshold";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v5)
    {
LABEL_23:
      v3 = 0;
      goto LABEL_24;
    }

LABEL_22:
    free(v5);
    goto LABEL_23;
  }

  if (v1[2] != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v22 = "nw_browse_descriptor_get_rssi_threshold";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_rssi_threshold";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s Browse descriptor not of type application service", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      v8 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (v8)
      {
        if (v10)
        {
          *buf = 136446466;
          v22 = "nw_browse_descriptor_get_rssi_threshold";
          v23 = 2082;
          v24 = v8;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Browse descriptor not of type application service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v8);
        if (!v5)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_rssi_threshold";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Browse descriptor not of type application service, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_rssi_threshold";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s Browse descriptor not of type application service, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_20;
  }

  v3 = v1[25];
LABEL_24:

  return v3;
}

uint64_t nw_browse_descriptor_get_invitation_scope(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_browse_descriptor_get_invitation_scope";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v5, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_invitation_scope";
          _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null descriptor", buf, 0xCu);
        }

LABEL_20:

        goto LABEL_21;
      }

      if (v19 != 1)
      {
        v6 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_invitation_scope";
          _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_invitation_scope";
          _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v17)
      {
        *buf = 136446466;
        v22 = "nw_browse_descriptor_get_invitation_scope";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v5)
    {
LABEL_23:
      v3 = 0;
      goto LABEL_24;
    }

LABEL_22:
    free(v5);
    goto LABEL_23;
  }

  if (v1[2] != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v22 = "nw_browse_descriptor_get_invitation_scope";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_invitation_scope";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s Browse descriptor not of type application service", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      v8 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (v8)
      {
        if (v10)
        {
          *buf = 136446466;
          v22 = "nw_browse_descriptor_get_invitation_scope";
          v23 = 2082;
          v24 = v8;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Browse descriptor not of type application service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v8);
        if (!v5)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_invitation_scope";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Browse descriptor not of type application service, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_invitation_scope";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s Browse descriptor not of type application service, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_20;
  }

  v3 = v1[24];
LABEL_24:

  return v3;
}

const char *__cdecl nw_browse_descriptor_get_application_service_name(nw_browse_descriptor_t descriptor)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = descriptor;
  v2 = v1;
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_browse_descriptor_get_application_service_name";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v5, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_application_service_name";
          _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null descriptor", buf, 0xCu);
        }

LABEL_20:

        goto LABEL_21;
      }

      if (v19 != 1)
      {
        v6 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_application_service_name";
          _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_application_service_name";
          _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v17)
      {
        *buf = 136446466;
        v22 = "nw_browse_descriptor_get_application_service_name";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v5)
    {
LABEL_23:
      isa = 0;
      goto LABEL_24;
    }

LABEL_22:
    free(v5);
    goto LABEL_23;
  }

  if (LODWORD(v1[1].isa) != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v22 = "nw_browse_descriptor_get_application_service_name";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_application_service_name";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s Browse descriptor not of type application service", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      v8 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (v8)
      {
        if (v10)
        {
          *buf = 136446466;
          v22 = "nw_browse_descriptor_get_application_service_name";
          v23 = 2082;
          v24 = v8;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Browse descriptor not of type application service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v8);
        if (!v5)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_application_service_name";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Browse descriptor not of type application service, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_application_service_name";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s Browse descriptor not of type application service, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_20;
  }

  isa = v1[9].isa;
LABEL_24:

  return isa;
}

uint64_t nw_browse_descriptor_get_device_types(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_browse_descriptor_get_device_types";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v5, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v6 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_device_types";
          _os_log_impl(&dword_181A37000, v6, v14, "%{public}s called with null descriptor", buf, 0xCu);
        }

LABEL_20:

        goto LABEL_21;
      }

      if (v19 != 1)
      {
        v6 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v6, type))
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_device_types";
          _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null descriptor, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_20;
      }

      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v6, type);
      if (!backtrace_string)
      {
        if (v17)
        {
          *buf = 136446210;
          v22 = "nw_browse_descriptor_get_device_types";
          _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, no backtrace", buf, 0xCu);
        }

        goto LABEL_20;
      }

      if (v17)
      {
        *buf = 136446466;
        v22 = "nw_browse_descriptor_get_device_types";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null descriptor, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

LABEL_21:
    if (!v5)
    {
LABEL_23:
      v3 = 0;
      goto LABEL_24;
    }

LABEL_22:
    free(v5);
    goto LABEL_23;
  }

  if (v1[2] != 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v22 = "nw_browse_descriptor_get_device_types";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v5, &type, &v19))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_device_types";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s Browse descriptor not of type application service", buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      v8 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (v8)
      {
        if (v10)
        {
          *buf = 136446466;
          v22 = "nw_browse_descriptor_get_device_types";
          v23 = 2082;
          v24 = v8;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Browse descriptor not of type application service, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v8);
        if (!v5)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_device_types";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s Browse descriptor not of type application service, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v22 = "nw_browse_descriptor_get_device_types";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s Browse descriptor not of type application service, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_20;
  }

  v3 = v1[22];
LABEL_24:

  return v3;
}
void sub_182408DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  if ((v13 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  if ((v12 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va1);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZL44nw_protocol_instance_notify_updated_internalP31NWConcrete_nw_protocol_instance31nw_protocol_notification_type_tb_block_invoke(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a1 + 44) == 1 && (*(nw_hash_node_get_extra(a2) + 52) & 0x800) == 0)
  {
    return 1;
  }

  object = nw_hash_node_get_object(a2);
  if (!object)
  {
    return 1;
  }

  v5 = object[3];
  if (!v5)
  {
    return 1;
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    return 1;
  }

  v7 = *(v5 + 160);
  if (!v7)
  {
    return 1;
  }

  v8 = *(a1 + 40);
  v9 = object[5];
  v10 = object;
  if (v9 != &nw_protocol_ref_counted_handle)
  {
    if (v9 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v10) = 0;
      v11 = 1;
      goto LABEL_14;
    }

    v10 = object[8];
    if (!v10)
    {
      v11 = 1;
      goto LABEL_14;
    }
  }

  v12 = v10[11];
  v11 = 0;
  if (v12)
  {
    v10[11] = v12 + 1;
  }

  LOBYTE(v10) = -1;
LABEL_14:
  v13 = v6 - 96;
  v34 = object;
  v35 = v10;
  v14 = *(v6 - 56);
  v15 = v6 - 96;
  if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *(v6 - 32)) != 0)
  {
    v18 = *(v15 + 88);
    v17 = 0;
    if (v18)
    {
      *(v15 + 88) = v18 + 1;
    }

    v16 = -1;
  }

  else
  {
    v16 = 0;
    v17 = 1;
  }

  v32 = v13;
  v33 = v16;
  if (!v8)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v37 = "__nw_protocol_notify";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v21, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v37 = "__nw_protocol_notify";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null type", buf, 0xCu);
        }
      }

      else
      {
        v29 = v11;
        if (v30 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v25 = __nwlog_obj();
          v26 = type;
          v27 = os_log_type_enabled(v25, type);
          if (backtrace_string)
          {
            if (v27)
            {
              *buf = 136446466;
              v37 = "__nw_protocol_notify";
              v38 = 2082;
              v39 = backtrace_string;
              _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null type, dumping backtrace:%{public}s", buf, 0x16u);
            }

            v11 = v29;
            free(backtrace_string);
            goto LABEL_45;
          }

          if (v27)
          {
            *buf = 136446210;
            v37 = "__nw_protocol_notify";
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null type, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v25 = __nwlog_obj();
          v28 = type;
          if (os_log_type_enabled(v25, type))
          {
            *buf = 136446210;
            v37 = "__nw_protocol_notify";
            _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null type, backtrace limit exceeded", buf, 0xCu);
          }
        }

        v11 = v29;
      }
    }

LABEL_45:
    if (v21)
    {
      free(v21);
    }

    goto LABEL_23;
  }

  v7();
LABEL_23:
  if ((v17 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&v32);
  }

  if ((v11 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&v34);
  }

  return 1;
}

void sub_18240920C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
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

BOOL ___ZL47nw_protocol_implementation_lookup_path_by_frameP31NWConcrete_nw_protocol_instancePU22objcproto11OS_nw_frame8NSObjectPm_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(nw_hash_node_get_extra(a2) + 56);
  v5 = *(a1 + 40);
  if (v4 == v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return v4 != v5;
}

void nw_protocol_instance_drop_outbound(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_protocol_instance_drop_outbound";
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
        v23 = "nw_protocol_instance_drop_outbound";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null instance", buf, 0xCu);
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
          v23 = "nw_protocol_instance_drop_outbound";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
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
        v23 = "nw_protocol_instance_drop_outbound";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_protocol_instance_drop_outbound";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    nw_frame_finalize(v4);
    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_protocol_instance_drop_outbound";
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
      v23 = "nw_protocol_instance_drop_outbound";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null data", buf, 0xCu);
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
      v23 = "nw_protocol_instance_drop_outbound";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
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
      v23 = "nw_protocol_instance_drop_outbound";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null data, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v23 = "nw_protocol_instance_drop_outbound";
    v24 = 2082;
    v25 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_protocol_instance_set_flow_is_datagram(void *a1, uint64_t a2, int a3, int a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_set_flow_is_datagram";
    v25 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v25, type, &v38))
    {
      goto LABEL_69;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = type[0];
      if (os_log_type_enabled(v26, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_set_flow_is_datagram";
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v38 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v31 = type[0];
      v32 = os_log_type_enabled(v26, type[0]);
      if (backtrace_string)
      {
        if (v32)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_set_flow_is_datagram";
          v42 = 2082;
          v43 = backtrace_string;
          _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_69:
        if (!v25)
        {
          goto LABEL_19;
        }

        goto LABEL_70;
      }

      if (v32)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_set_flow_is_datagram";
        _os_log_impl(&dword_181A37000, v26, v31, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v36 = type[0];
      if (os_log_type_enabled(v26, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_set_flow_is_datagram";
        _os_log_impl(&dword_181A37000, v26, v36, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_68:

    goto LABEL_69;
  }

  if (a2 == -1)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_set_flow_is_datagram";
    v25 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v25, type, &v38))
    {
      goto LABEL_69;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v29 = type[0];
      if (os_log_type_enabled(v26, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_set_flow_is_datagram";
        _os_log_impl(&dword_181A37000, v26, v29, "%{public}s called with null (flow != NW_PROTOCOL_ALL_FLOWS)", buf, 0xCu);
      }
    }

    else if (v38 == 1)
    {
      v33 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v34 = type[0];
      v35 = os_log_type_enabled(v26, type[0]);
      if (v33)
      {
        if (v35)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_set_flow_is_datagram";
          v42 = 2082;
          v43 = v33;
          _os_log_impl(&dword_181A37000, v26, v34, "%{public}s called with null (flow != NW_PROTOCOL_ALL_FLOWS), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v33);
        if (!v25)
        {
          goto LABEL_19;
        }

LABEL_70:
        free(v25);
        goto LABEL_19;
      }

      if (v35)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_set_flow_is_datagram";
        _os_log_impl(&dword_181A37000, v26, v34, "%{public}s called with null (flow != NW_PROTOCOL_ALL_FLOWS), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v37 = type[0];
      if (os_log_type_enabled(v26, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_set_flow_is_datagram";
        _os_log_impl(&dword_181A37000, v26, v37, "%{public}s called with null (flow != NW_PROTOCOL_ALL_FLOWS), backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_68;
  }

  node = nw_hash_table_get_node(v7[29], a2, 8);
  if (node)
  {
    if (a3)
    {
      v10 = 2048;
    }

    else
    {
      v10 = 0;
    }

    *(node + 84) = *(node + 84) & 0xF7FF | v10;
    *(node + 76) = a4;
    if (!a3)
    {
      goto LABEL_19;
    }

    if (*(*(v8 + 1) + 64) != 3)
    {
      goto LABEL_19;
    }

    v11 = *(node + 16);
    if (!v11)
    {
      goto LABEL_19;
    }

    v12 = v11[3];
    if (!v12)
    {
      goto LABEL_19;
    }

    v13 = *(v12 + 160);
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = v11[5];
    v15 = v11;
    if (v14 != &nw_protocol_ref_counted_handle)
    {
      if (v14 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v15) = 0;
        v16 = 1;
        goto LABEL_24;
      }

      v15 = v11[8];
      if (!v15)
      {
        v16 = 1;
LABEL_24:
        *buf = v11;
        buf[8] = v15;
        v19 = *(v8 - 7);
        v20 = v8 - 96;
        if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v20 = *(v8 - 4)) != 0)
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

        *type = v8 - 96;
        v40 = v21;
        v13();
        if ((v22 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(type);
        }

        if ((v16 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(buf);
        }

        goto LABEL_19;
      }
    }

    v18 = v15[11];
    v16 = 0;
    if (v18)
    {
      v15[11] = v18 + 1;
    }

    LOBYTE(v15) = -1;
    goto LABEL_24;
  }

  if ((v8[413] & 0x80000000) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "nw_protocol_instance_set_flow_is_datagram";
      v42 = 2082;
      v43 = v8 + 415;
      v44 = 2080;
      v45 = " ";
      v46 = 2048;
      v47 = a2;
      _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot set datagram, flow %llx does not exist", buf, 0x2Au);
    }
  }

LABEL_19:
}

void sub_182409E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  if ((v9 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  if ((v8 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va1);
  }

  _Unwind_Resume(a1);
}

uint64_t __nw_protocol_instance_update_outbound_data_limit_block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  extra = nw_hash_node_get_extra(a2);
  if (gLogDatapath == 1)
  {
    v10 = extra;
    v11 = __nwlog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(v10 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 40);
      v15 = 136446978;
      v16 = "nw_protocol_instance_update_outbound_data_limit_block_invoke";
      v17 = 1024;
      v18 = v12;
      v19 = 1024;
      v20 = v13;
      v21 = 2048;
      v22 = v14;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s Increase current outbound limit %u to %u bytes for flow %llx", &v15, 0x22u);
    }

    extra = v10;
  }

  v6 = *(a1 + 48);
  *(extra + 40) = v6;
  v7 = *(extra + 52);
  if ((v7 & 0x80) != 0 && (*(extra + 52) & 0x100) == 0)
  {
    if (v6)
    {
      if (object)
      {
        v9 = *(object + 24);
        if (v9)
        {
          if (*(a1 + 32) && *(v9 + 72))
          {
            *(extra + 52) = v7 | 0x100;
            *(*(a1 + 32) + 413) |= 1u;
          }
        }
      }
    }
  }

  return 1;
}

void nw_protocol_instance_enumerate_flow_keys(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = *(v3 + 30);
    if (v5 && *(v5 + 48))
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __nw_protocol_instance_enumerate_flow_keys_block_invoke;
      v15[3] = &unk_1E6A2CDC8;
      v16 = v3;
      v17 = v4;
      nw_hash_table_apply(v5, v15);
    }

    else if ((v3[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v21 = "nw_protocol_instance_enumerate_flow_keys";
        v22 = 2082;
        v23 = v3 + 415;
        v24 = 2080;
        v25 = " ";
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFlow mapping table is empty", buf, 0x20u);
      }
    }

    goto LABEL_9;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_instance_enumerate_flow_keys";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v8, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_instance_enumerate_flow_keys";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v18 == 1)
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
          v21 = "nw_protocol_instance_enumerate_flow_keys";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_26;
      }

      if (v13)
      {
        *buf = 136446210;
        v21 = "nw_protocol_instance_enumerate_flow_keys";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_instance_enumerate_flow_keys";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_26:
  if (v8)
  {
    free(v8);
  }

LABEL_9:
}

uint64_t __nw_protocol_instance_enumerate_flow_keys_block_invoke(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v5 = *(a1 + 32);
    if (v5 && *(v5 + 413) < 0)
    {
      return 1;
    }

    v6 = __nwlog_obj();
    v7 = *(a1 + 32);
    v8 = v7 == 0;
    if (v7)
    {
      v9 = (v7 + 415);
    }

    else
    {
      v9 = "";
    }

    *buf = 136446722;
    v35 = "nw_protocol_instance_enumerate_flow_keys_block_invoke";
    if (v8)
    {
      v10 = "";
    }

    else
    {
      v10 = " ";
    }

    v36 = 2082;
    v37 = v9;
    v38 = 2080;
    v39 = v10;
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v11, &type, &v32))
    {
LABEL_47:
      if (v11)
      {
        free(v11);
      }

      return 1;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        v14 = *(a1 + 32);
        v15 = v14 == 0;
        if (v14)
        {
          v16 = (v14 + 415);
        }

        else
        {
          v16 = "";
        }

        *buf = 136446722;
        if (v15)
        {
          v17 = "";
        }

        else
        {
          v17 = " ";
        }

        v35 = "nw_protocol_instance_enumerate_flow_keys_block_invoke";
        v36 = 2082;
        v37 = v16;
        v38 = 2080;
        v39 = v17;
        v18 = "%{public}s %{public}s%sFound null node when enumerating custom flow mapping table";
LABEL_45:
        _os_log_impl(&dword_181A37000, v12, v13, v18, buf, 0x20u);
      }
    }

    else
    {
      if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v20 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v20)
          {
            v21 = *(a1 + 32);
            v22 = (v21 + 415);
            v8 = v21 == 0;
            v23 = "";
            if (v8)
            {
              v22 = "";
            }

            else
            {
              v23 = " ";
            }

            *buf = 136446978;
            v35 = "nw_protocol_instance_enumerate_flow_keys_block_invoke";
            v36 = 2082;
            v37 = v22;
            v38 = 2080;
            v39 = v23;
            v40 = 2082;
            v41 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s %{public}s%sFound null node when enumerating custom flow mapping table, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
          goto LABEL_47;
        }

        if (!v20)
        {
          goto LABEL_46;
        }

        v28 = *(a1 + 32);
        v29 = (v28 + 415);
        v30 = v28 == 0;
        v31 = "";
        if (v30)
        {
          v29 = "";
        }

        *buf = 136446722;
        if (!v30)
        {
          v31 = " ";
        }

        v35 = "nw_protocol_instance_enumerate_flow_keys_block_invoke";
        v36 = 2082;
        v37 = v29;
        v38 = 2080;
        v39 = v31;
        v18 = "%{public}s %{public}s%sFound null node when enumerating custom flow mapping table, no backtrace";
        goto LABEL_45;
      }

      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        v24 = *(a1 + 32);
        v25 = v24 == 0;
        if (v24)
        {
          v26 = (v24 + 415);
        }

        else
        {
          v26 = "";
        }

        *buf = 136446722;
        if (v25)
        {
          v27 = "";
        }

        else
        {
          v27 = " ";
        }

        v35 = "nw_protocol_instance_enumerate_flow_keys_block_invoke";
        v36 = 2082;
        v37 = v26;
        v38 = 2080;
        v39 = v27;
        v18 = "%{public}s %{public}s%sFound null node when enumerating custom flow mapping table, backtrace limit exceeded";
        goto LABEL_45;
      }
    }

LABEL_46:

    goto LABEL_47;
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void nw_protocol_instance_set_wakeup_handler(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_protocol_instance_set_wakeup_handler";
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
        v25 = "nw_protocol_instance_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
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
          v25 = "nw_protocol_instance_set_wakeup_handler";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v9)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v9);
        goto LABEL_4;
      }

      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "nw_protocol_instance_set_wakeup_handler";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    v6 = _Block_copy(v4);
    v7 = v3[33];
    v3[33] = v6;

    goto LABEL_4;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_protocol_instance_set_wakeup_handler";
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
      v25 = "nw_protocol_instance_set_wakeup_handler";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null wakeup_handler", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v22 != 1)
  {
    v10 = __nwlog_obj();
    v21 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v25 = "nw_protocol_instance_set_wakeup_handler";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null wakeup_handler, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
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
      v25 = "nw_protocol_instance_set_wakeup_handler";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null wakeup_handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19)
  {
    *buf = 136446466;
    v25 = "nw_protocol_instance_set_wakeup_handler";
    v26 = 2082;
    v27 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null wakeup_handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_protocol_instance_set_link_flow_controlled(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3[411];
    if (a2)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    v3[411] = v5 & 0xFB | v6;
    if ((a2 & 1) == 0 && (v5 & 8) != 0)
    {
      nw_protocol_implementation_output_available((v3 - 96), (v3 - 96));
      v7 = v4[411];
      v4[411] = v7 & 0xF7;
      a2 = (v7 >> 2) & 1;
    }

    v8 = *(*(*(v4 + 1) + 80) + 136);
    if (v8)
    {
      v8(v4, 0, a2);
    }

    goto LABEL_10;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_protocol_instance_set_link_flow_controlled";
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
        v20 = "nw_protocol_instance_set_link_flow_controlled";
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null instance", buf, 0xCu);
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
          v20 = "nw_protocol_instance_set_link_flow_controlled";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v15)
      {
        *buf = 136446210;
        v20 = "nw_protocol_instance_set_link_flow_controlled";
        _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v11 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_instance_set_link_flow_controlled";
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v10)
  {
    free(v10);
  }

LABEL_10:
}

void nw_protocol_implementation_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v117 = *MEMORY[0x1E69E9840];
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
        v110 = "nw_protocol_implementation_output_available";
        v6 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v104) = 0;
        if (__nwlog_fault(v6, type, &v104))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v7 = __nwlog_obj();
            v8 = type[0];
            if (os_log_type_enabled(v7, type[0]))
            {
              *buf = 136446210;
              v110 = "nw_protocol_implementation_output_available";
              _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v104 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v7 = __nwlog_obj();
            v24 = type[0];
            v25 = os_log_type_enabled(v7, type[0]);
            if (backtrace_string)
            {
              if (v25)
              {
                *buf = 136446466;
                v110 = "nw_protocol_implementation_output_available";
                v111 = 2082;
                v112 = backtrace_string;
                _os_log_impl(&dword_181A37000, v7, v24, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v6)
              {
                goto LABEL_43;
              }

              goto LABEL_42;
            }

            if (v25)
            {
              *buf = 136446210;
              v110 = "nw_protocol_implementation_output_available";
              _os_log_impl(&dword_181A37000, v7, v24, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v7 = __nwlog_obj();
            v26 = type[0];
            if (os_log_type_enabled(v7, type[0]))
            {
              *buf = 136446210;
              v110 = "nw_protocol_implementation_output_available";
              _os_log_impl(&dword_181A37000, v7, v26, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v6)
        {
LABEL_43:
          v10 = 0;
LABEL_62:

          return;
        }

LABEL_42:
        free(v6);
        goto LABEL_43;
      }

      v3 = *a1[1].flow_id;
    }

    v9 = &v3[1].output_handler;
    v10 = v9;
    v11 = v3[1].handle;
    if (v11)
    {
      if (v11[10])
      {
        v12 = nw_protocol_service_outbound_requests(v9);
        v104 = 0;
        v13 = nw_protocol_implementation_lookup_path_by_protocol(v10, a2, &v104);
        if (v13)
        {
          v14 = *(v13 + 153);
          if ((v14 & 1) != 0 && *(v13 + 120))
          {
            if ((SBYTE5(v3[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
            {
              v75 = v13;
              v76 = __nwlog_obj();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446978;
                v110 = "nw_protocol_implementation_output_available";
                v111 = 2082;
                v112 = &v3[7].output_handler_context + 7;
                v113 = 2080;
                v114 = " ";
                v115 = 2048;
                v116 = v104;
                _os_log_impl(&dword_181A37000, v76, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFinalizing pending outbound frames for %lx", buf, 0x2Au);
              }

              v13 = v75;
              v14 = *(v75 + 153);
            }

            *(v13 + 153) = v14 & 0xFE;
            v15 = *(v13 + 32);
            if (v15)
            {
              v16 = v15[5];
              v17 = v15;
              if (v16 != &nw_protocol_ref_counted_handle)
              {
                if (v16 != &nw_protocol_ref_counted_additional_handle)
                {
                  LOBYTE(v17) = 0;
                  v18 = 1;
                  goto LABEL_48;
                }

                v17 = v15[8];
                if (!v17)
                {
                  v18 = 1;
                  goto LABEL_48;
                }
              }

              v27 = v17[11];
              v18 = 0;
              if (v27)
              {
                v17[11] = v27 + 1;
              }

              LOBYTE(v17) = -1;
LABEL_48:
              *type = v15;
              v107 = v17;
              v28 = v15[3];
              if (v28)
              {
                v29 = *(v28 + 96);
                if (v29)
                {
                  v29();
                  if (v18)
                  {
                    goto LABEL_60;
                  }

LABEL_59:
                  nw::release_if_needed<nw_protocol *>(type);
                  goto LABEL_60;
                }
              }

              v102 = v18;
              v53 = v15;
              v54 = __nwlog_obj();
              v55 = *(v53 + 2);
              *buf = 136446722;
              v110 = "__nw_protocol_finalize_output_frames";
              if (!v55)
              {
                v55 = "invalid";
              }

              v111 = 2082;
              v112 = v55;
              v113 = 2048;
              v56 = v53;
              v114 = v53;
              v57 = _os_log_send_and_compose_impl();

              v108 = OS_LOG_TYPE_ERROR;
              v105 = 0;
              if (__nwlog_fault(v57, &v108, &v105))
              {
                if (v108 == OS_LOG_TYPE_FAULT)
                {
                  v58 = __nwlog_obj();
                  v59 = v108;
                  if (os_log_type_enabled(v58, v108))
                  {
                    v60 = *(v56 + 2);
                    if (!v60)
                    {
                      v60 = "invalid";
                    }

                    *buf = 136446722;
                    v110 = "__nw_protocol_finalize_output_frames";
                    v111 = 2082;
                    v112 = v60;
                    v113 = 2048;
                    v114 = v56;
                    _os_log_impl(&dword_181A37000, v58, v59, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback", buf, 0x20u);
                  }

LABEL_194:

                  goto LABEL_195;
                }

                if (v105 != 1)
                {
                  v58 = __nwlog_obj();
                  v91 = v108;
                  if (os_log_type_enabled(v58, v108))
                  {
                    v92 = *(v56 + 2);
                    if (!v92)
                    {
                      v92 = "invalid";
                    }

                    *buf = 136446722;
                    v110 = "__nw_protocol_finalize_output_frames";
                    v111 = 2082;
                    v112 = v92;
                    v113 = 2048;
                    v114 = v56;
                    _os_log_impl(&dword_181A37000, v58, v91, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded", buf, 0x20u);
                  }

                  goto LABEL_194;
                }

                v77 = __nw_create_backtrace_string();
                v58 = __nwlog_obj();
                v78 = v108;
                v79 = os_log_type_enabled(v58, v108);
                if (!v77)
                {
                  if (v79)
                  {
                    v99 = *(v56 + 2);
                    if (!v99)
                    {
                      v99 = "invalid";
                    }

                    *buf = 136446722;
                    v110 = "__nw_protocol_finalize_output_frames";
                    v111 = 2082;
                    v112 = v99;
                    v113 = 2048;
                    v114 = v56;
                    _os_log_impl(&dword_181A37000, v58, v78, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace", buf, 0x20u);
                  }

                  goto LABEL_194;
                }

                if (v79)
                {
                  v80 = *(v56 + 2);
                  if (!v80)
                  {
                    v80 = "invalid";
                  }

                  *buf = 136446978;
                  v110 = "__nw_protocol_finalize_output_frames";
                  v111 = 2082;
                  v112 = v80;
                  v113 = 2048;
                  v114 = v56;
                  v115 = 2082;
                  v116 = v77;
                  _os_log_impl(&dword_181A37000, v58, v78, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v77);
              }

LABEL_195:
              if (v57)
              {
                free(v57);
              }

              if (v102)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            v71 = __nwlog_obj();
            *buf = 136446210;
            v110 = "__nw_protocol_finalize_output_frames";
            v72 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            v108 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v72, type, &v108))
            {
              goto LABEL_217;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v73 = __nwlog_obj();
              v74 = type[0];
              if (os_log_type_enabled(v73, type[0]))
              {
                *buf = 136446210;
                v110 = "__nw_protocol_finalize_output_frames";
                _os_log_impl(&dword_181A37000, v73, v74, "%{public}s called with null protocol", buf, 0xCu);
              }
            }

            else if (v108 == OS_LOG_TYPE_INFO)
            {
              v88 = __nw_create_backtrace_string();
              v73 = __nwlog_obj();
              v89 = type[0];
              v90 = os_log_type_enabled(v73, type[0]);
              if (v88)
              {
                if (v90)
                {
                  *buf = 136446466;
                  v110 = "__nw_protocol_finalize_output_frames";
                  v111 = 2082;
                  v112 = v88;
                  _os_log_impl(&dword_181A37000, v73, v89, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v88);
LABEL_217:
                if (!v72)
                {
                  goto LABEL_60;
                }

                goto LABEL_218;
              }

              if (v90)
              {
                *buf = 136446210;
                v110 = "__nw_protocol_finalize_output_frames";
                _os_log_impl(&dword_181A37000, v73, v89, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              v73 = __nwlog_obj();
              v98 = type[0];
              if (os_log_type_enabled(v73, type[0]))
              {
                *buf = 136446210;
                v110 = "__nw_protocol_finalize_output_frames";
                _os_log_impl(&dword_181A37000, v73, v98, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
              }
            }

LABEL_216:

            goto LABEL_217;
          }

LABEL_60:
          if (v12)
          {
            nw_protocol_implementation_deliver_output_available(v10);
          }

          goto LABEL_62;
        }

        v19 = BYTE5(v3[7].output_handler_context);
        if ((v19 & 2) == 0 || !v3[4].default_input_handler)
        {
          goto LABEL_60;
        }

        if ((BYTE5(v3[7].output_handler_context) & 0x80) == 0 && gLogDatapath == 1)
        {
          v83 = __nwlog_obj();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v110 = "nw_protocol_implementation_output_available";
            v111 = 2082;
            v112 = &v3[7].output_handler_context + 7;
            v113 = 2080;
            v114 = " ";
            _os_log_impl(&dword_181A37000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFinalizing pending outbound frames", buf, 0x20u);
          }

          v19 = BYTE5(v3[7].output_handler_context);
        }

        BYTE5(v3[7].output_handler_context) = v19 & 0xFD;
        output_handler = v3->output_handler;
        if (!output_handler)
        {
          v81 = __nwlog_obj();
          *buf = 136446210;
          v110 = "__nw_protocol_finalize_output_frames";
          v72 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          v108 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v72, type, &v108))
          {
            goto LABEL_217;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v73 = __nwlog_obj();
            v82 = type[0];
            if (os_log_type_enabled(v73, type[0]))
            {
              *buf = 136446210;
              v110 = "__nw_protocol_finalize_output_frames";
              _os_log_impl(&dword_181A37000, v73, v82, "%{public}s called with null protocol", buf, 0xCu);
            }
          }

          else if (v108 == OS_LOG_TYPE_INFO)
          {
            v93 = __nw_create_backtrace_string();
            v73 = __nwlog_obj();
            v94 = type[0];
            v95 = os_log_type_enabled(v73, type[0]);
            if (v93)
            {
              if (v95)
              {
                *buf = 136446466;
                v110 = "__nw_protocol_finalize_output_frames";
                v111 = 2082;
                v112 = v93;
                _os_log_impl(&dword_181A37000, v73, v94, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v93);
              if (!v72)
              {
                goto LABEL_60;
              }

LABEL_218:
              free(v72);
              goto LABEL_60;
            }

            if (v95)
            {
              *buf = 136446210;
              v110 = "__nw_protocol_finalize_output_frames";
              _os_log_impl(&dword_181A37000, v73, v94, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v73 = __nwlog_obj();
            v100 = type[0];
            if (os_log_type_enabled(v73, type[0]))
            {
              *buf = 136446210;
              v110 = "__nw_protocol_finalize_output_frames";
              _os_log_impl(&dword_181A37000, v73, v100, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
            }
          }

          goto LABEL_216;
        }

        v21 = output_handler->handle;
        v22 = v3->output_handler;
        if (v21 != &nw_protocol_ref_counted_handle)
        {
          if (v21 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v22) = 0;
            goto LABEL_56;
          }

          v22 = *output_handler[1].flow_id;
          if (!v22)
          {
            goto LABEL_56;
          }
        }

        callbacks = v22[1].callbacks;
        if (callbacks)
        {
          v22[1].callbacks = (&callbacks->add_input_handler + 1);
        }

        LOBYTE(v22) = -1;
LABEL_56:
        *type = output_handler;
        v107 = v22;
        v31 = output_handler->callbacks;
        if (v31)
        {
          finalize_output_frames = v31->finalize_output_frames;
          if (finalize_output_frames)
          {
            finalize_output_frames();
            if ((v107 & 1) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          }
        }

        v103 = v22;
        v63 = output_handler;
        v64 = __nwlog_obj();
        name = v63->identifier->name;
        *buf = 136446722;
        v110 = "__nw_protocol_finalize_output_frames";
        if (!name)
        {
          name = "invalid";
        }

        v111 = 2082;
        v112 = name;
        v113 = 2048;
        v66 = v63;
        v114 = v63;
        v67 = _os_log_send_and_compose_impl();

        v108 = OS_LOG_TYPE_ERROR;
        v105 = 0;
        if (!__nwlog_fault(v67, &v108, &v105))
        {
          goto LABEL_207;
        }

        if (v108 == OS_LOG_TYPE_FAULT)
        {
          v68 = __nwlog_obj();
          v69 = v108;
          if (os_log_type_enabled(v68, v108))
          {
            v70 = v66->identifier->name;
            if (!v70)
            {
              v70 = "invalid";
            }

            *buf = 136446722;
            v110 = "__nw_protocol_finalize_output_frames";
            v111 = 2082;
            v112 = v70;
            v113 = 2048;
            v114 = v66;
            _os_log_impl(&dword_181A37000, v68, v69, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback", buf, 0x20u);
          }
        }

        else if (v105 == 1)
        {
          v84 = __nw_create_backtrace_string();
          v68 = __nwlog_obj();
          v85 = v108;
          v86 = os_log_type_enabled(v68, v108);
          if (v84)
          {
            if (v86)
            {
              v87 = v66->identifier->name;
              if (!v87)
              {
                v87 = "invalid";
              }

              *buf = 136446978;
              v110 = "__nw_protocol_finalize_output_frames";
              v111 = 2082;
              v112 = v87;
              v113 = 2048;
              v114 = v66;
              v115 = 2082;
              v116 = v84;
              _os_log_impl(&dword_181A37000, v68, v85, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(v84);
LABEL_207:
            if (v67)
            {
              free(v67);
            }

            if ((v103 & 1) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          }

          if (v86)
          {
            v101 = v66->identifier->name;
            if (!v101)
            {
              v101 = "invalid";
            }

            *buf = 136446722;
            v110 = "__nw_protocol_finalize_output_frames";
            v111 = 2082;
            v112 = v101;
            v113 = 2048;
            v114 = v66;
            _os_log_impl(&dword_181A37000, v68, v85, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v68 = __nwlog_obj();
          v96 = v108;
          if (os_log_type_enabled(v68, v108))
          {
            v97 = v66->identifier->name;
            if (!v97)
            {
              v97 = "invalid";
            }

            *buf = 136446722;
            v110 = "__nw_protocol_finalize_output_frames";
            v111 = 2082;
            v112 = v97;
            v113 = 2048;
            v114 = v66;
            _os_log_impl(&dword_181A37000, v68, v96, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded", buf, 0x20u);
          }
        }

        goto LABEL_207;
      }

      v41 = __nwlog_obj();
      *buf = 136446210;
      v110 = "nw_protocol_implementation_output_available";
      v38 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v104) = 0;
      if (!__nwlog_fault(v38, type, &v104))
      {
        goto LABEL_174;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v42 = type[0];
        if (os_log_type_enabled(v39, type[0]))
        {
          *buf = 136446210;
          v110 = "nw_protocol_implementation_output_available";
          _os_log_impl(&dword_181A37000, v39, v42, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }
      }

      else if (v104 == 1)
      {
        v49 = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        v50 = type[0];
        v51 = os_log_type_enabled(v39, type[0]);
        if (v49)
        {
          if (v51)
          {
            *buf = 136446466;
            v110 = "nw_protocol_implementation_output_available";
            v111 = 2082;
            v112 = v49;
            _os_log_impl(&dword_181A37000, v39, v50, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v49);
          if (!v38)
          {
            goto LABEL_62;
          }

          goto LABEL_175;
        }

        if (v51)
        {
          *buf = 136446210;
          v110 = "nw_protocol_implementation_output_available";
          _os_log_impl(&dword_181A37000, v39, v50, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v39 = __nwlog_obj();
        v62 = type[0];
        if (os_log_type_enabled(v39, type[0]))
        {
          *buf = 136446210;
          v110 = "nw_protocol_implementation_output_available";
          _os_log_impl(&dword_181A37000, v39, v62, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v37 = __nwlog_obj();
      *buf = 136446210;
      v110 = "nw_protocol_implementation_output_available";
      v38 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v104) = 0;
      if (!__nwlog_fault(v38, type, &v104))
      {
        goto LABEL_174;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v40 = type[0];
        if (os_log_type_enabled(v39, type[0]))
        {
          *buf = 136446210;
          v110 = "nw_protocol_implementation_output_available";
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }
      }

      else if (v104 == 1)
      {
        v46 = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        v47 = type[0];
        v48 = os_log_type_enabled(v39, type[0]);
        if (v46)
        {
          if (v48)
          {
            *buf = 136446466;
            v110 = "nw_protocol_implementation_output_available";
            v111 = 2082;
            v112 = v46;
            _os_log_impl(&dword_181A37000, v39, v47, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v46);
LABEL_174:
          if (!v38)
          {
            goto LABEL_62;
          }

LABEL_175:
          free(v38);
          goto LABEL_62;
        }

        if (v48)
        {
          *buf = 136446210;
          v110 = "nw_protocol_implementation_output_available";
          _os_log_impl(&dword_181A37000, v39, v47, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v39 = __nwlog_obj();
        v61 = type[0];
        if (os_log_type_enabled(v39, type[0]))
        {
          *buf = 136446210;
          v110 = "nw_protocol_implementation_output_available";
          _os_log_impl(&dword_181A37000, v39, v61, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_174;
  }

  v33 = __nwlog_obj();
  *buf = 136446210;
  v110 = "nw_protocol_implementation_output_available";
  v34 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v104) = 0;
  if (__nwlog_fault(v34, type, &v104))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        v110 = "nw_protocol_implementation_output_available";
        _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v104 == 1)
    {
      v43 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v44 = type[0];
      v45 = os_log_type_enabled(v35, type[0]);
      if (v43)
      {
        if (v45)
        {
          *buf = 136446466;
          v110 = "nw_protocol_implementation_output_available";
          v111 = 2082;
          v112 = v43;
          _os_log_impl(&dword_181A37000, v35, v44, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v43);
        goto LABEL_141;
      }

      if (v45)
      {
        *buf = 136446210;
        v110 = "nw_protocol_implementation_output_available";
        _os_log_impl(&dword_181A37000, v35, v44, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v35 = __nwlog_obj();
      v52 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        v110 = "nw_protocol_implementation_output_available";
        _os_log_impl(&dword_181A37000, v35, v52, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_141:
  if (v34)
  {
    free(v34);
  }
}

void sub_18240C460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19)
  {
    nw::release_if_needed<nw_protocol *>(&a18);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZL37nw_protocol_service_outbound_requestsP31NWConcrete_nw_protocol_instance_block_invoke(uint64_t a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v6)
  {
    v7 = _Block_copy(v4);
    if (v7)
    {
LABEL_3:
      _nw_array_append(v6, v7);
    }
  }

  else
  {
    if ((*(v4 + 2))(v4, *(a1 + 32), 0))
    {
      goto LABEL_5;
    }

    v9 = _nw_array_create();
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v6 = *(*(*(a1 + 40) + 8) + 40);
    v12 = _Block_copy(v5);
    v7 = v12;
    if (v6)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      goto LABEL_3;
    }
  }

LABEL_5:
  return 1;
}

void nw_protocol_instance_set_preferred_addresses(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    objc_storeStrong(v5 + 45, a2);
    objc_storeStrong(v5 + 46, a3);
    goto LABEL_3;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_protocol_instance_set_preferred_addresses";
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
        v19 = "nw_protocol_instance_set_preferred_addresses";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
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
          v19 = "nw_protocol_instance_set_preferred_addresses";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_protocol_instance_set_preferred_addresses";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_protocol_instance_set_preferred_addresses";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
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

void nw_protocol_definition_set_multipath(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    v3[192] = v3[192] & 0xEF | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_multipath";
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
        v16 = "nw_protocol_definition_set_multipath";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
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
          v16 = "nw_protocol_definition_set_multipath";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_multipath";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_multipath";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_protocol_definition_get_multipath(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[192] >> 4) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_multipath";
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
        v15 = "nw_protocol_definition_get_multipath";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
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
          v15 = "nw_protocol_definition_get_multipath";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_multipath";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_multipath";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

void nw_protocol_definition_set_supports_discontiguous_data(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 0;
    }

    v3[192] = v3[192] & 0xDF | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_set_supports_discontiguous_data";
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
        v16 = "nw_protocol_definition_set_supports_discontiguous_data";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
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
          v16 = "nw_protocol_definition_set_supports_discontiguous_data";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_supports_discontiguous_data";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_set_supports_discontiguous_data";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_protocol_definition_get_supports_discontiguous_data(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = (v1[192] >> 5) & 1;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_supports_discontiguous_data";
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
        v15 = "nw_protocol_definition_get_supports_discontiguous_data";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
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
          v15 = "nw_protocol_definition_get_supports_discontiguous_data";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_supports_discontiguous_data";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_supports_discontiguous_data";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_protocol_definition_get_options_serializer(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[16];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_options_serializer";
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
        v15 = "nw_protocol_definition_get_options_serializer";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
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
          v15 = "nw_protocol_definition_get_options_serializer";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_options_serializer";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_options_serializer";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_protocol_definition_get_metadata_comparator(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[20];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_definition_get_metadata_comparator";
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
        v15 = "nw_protocol_definition_get_metadata_comparator";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null definition", buf, 0xCu);
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
          v15 = "nw_protocol_definition_get_metadata_comparator";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_metadata_comparator";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_definition_get_metadata_comparator";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
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

void nw_protocol_definition_set_metadata_serializer(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!v5)
  {
    v6 = 0;
    v7 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_definition_set_metadata_serializer";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v8, &type, &v25))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_serializer";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null definition", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v25 != 1)
    {
      v9 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_serializer";
        _os_log_impl(&dword_181A37000, v9, v22, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
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
        v28 = "nw_protocol_definition_set_metadata_serializer";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v17)
    {
      *buf = 136446466;
      v28 = "nw_protocol_definition_set_metadata_serializer";
      v29 = 2082;
      v30 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(backtrace_string);
    goto LABEL_54;
  }

  if (!a2)
  {
    v6 = v5;
    v11 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_protocol_definition_set_metadata_serializer";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v8, &type, &v25))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_serializer";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null serialize_function", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v25 != 1)
    {
      v9 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_serializer";
        _os_log_impl(&dword_181A37000, v9, v23, "%{public}s called with null serialize_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_serializer";
        _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null serialize_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v19)
    {
      *buf = 136446466;
      v28 = "nw_protocol_definition_set_metadata_serializer";
      v29 = 2082;
      v30 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v18, "%{public}s called with null serialize_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v5[21] = a2;
    v5[22] = a3;
    goto LABEL_5;
  }

  v6 = v5;
  v13 = __nwlog_obj();
  *buf = 136446210;
  v28 = "nw_protocol_definition_set_metadata_serializer";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (__nwlog_fault(v8, &type, &v25))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_serializer";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null deserialize_function", buf, 0xCu);
      }

LABEL_53:

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v9 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_serializer";
        _os_log_impl(&dword_181A37000, v9, v24, "%{public}s called with null deserialize_function, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_53;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v20 = type;
    v21 = os_log_type_enabled(v9, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v28 = "nw_protocol_definition_set_metadata_serializer";
        _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null deserialize_function, no backtrace", buf, 0xCu);
      }

      goto LABEL_53;
    }

    if (v21)
    {
      *buf = 136446466;
      v28 = "nw_protocol_definition_set_metadata_serializer";
      v29 = 2082;
      v30 = backtrace_string;
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s called with null deserialize_function, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

LABEL_54:
  if (v8)
  {
    free(v8);
  }

  v5 = v6;
LABEL_5:
}

void *nw_protocol_copy_definition_for_identifier(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_protocol_copy_definition_for_identifier";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v11, &type, &v17))
    {
LABEL_38:
      if (v11)
      {
        free(v11);
      }

      return 0;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_copy_definition_for_identifier";
        v14 = "%{public}s called with null identifier";
LABEL_36:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }
    }

    else
    {
      if (v17 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v16 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v20 = "nw_protocol_copy_definition_for_identifier";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_38;
        }

        if (!v16)
        {
          goto LABEL_37;
        }

        *buf = 136446210;
        v20 = "nw_protocol_copy_definition_for_identifier";
        v14 = "%{public}s called with null identifier, no backtrace";
        goto LABEL_36;
      }

      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_protocol_copy_definition_for_identifier";
        v14 = "%{public}s called with null identifier, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  os_unfair_lock_lock(&nw_protocol_registrar_lock);
  v2 = &g_registration_list;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (*a1 == v2[4] && a1[1] == v2[5] && a1[2] == v2[6] && a1[3] == v2[7] && a1[4] == v2[8])
    {
      v7 = v2[14];
      if (v7)
      {
        v8 = os_retain(v7);
        goto LABEL_21;
      }

      break;
    }
  }

  v8 = 0;
LABEL_21:
  os_unfair_lock_unlock(&nw_protocol_registrar_lock);
  return v8;
}

BOOL nw_protocol_implementation_accept(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 40);
    if (v7 != &nw_protocol_ref_counted_handle)
    {
      if (v7 != &nw_protocol_ref_counted_additional_handle)
      {
        v8 = __nwlog_obj();
        *buf = 136446210;
        v56 = "nw_protocol_implementation_accept";
        v9 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v53 = 0;
        if (__nwlog_fault(v9, &type, &v53))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v10 = __nwlog_obj();
            v11 = type;
            if (os_log_type_enabled(v10, type))
            {
              *buf = 136446210;
              v56 = "nw_protocol_implementation_accept";
              _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v53 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v10 = __nwlog_obj();
            v16 = type;
            v17 = os_log_type_enabled(v10, type);
            if (backtrace_string)
            {
              if (v17)
              {
                *buf = 136446466;
                v56 = "nw_protocol_implementation_accept";
                v57 = 2082;
                v58 = backtrace_string;
                _os_log_impl(&dword_181A37000, v10, v16, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v9)
              {
                goto LABEL_29;
              }

              goto LABEL_28;
            }

            if (v17)
            {
              *buf = 136446210;
              v56 = "nw_protocol_implementation_accept";
              _os_log_impl(&dword_181A37000, v10, v16, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v10 = __nwlog_obj();
            v18 = type;
            if (os_log_type_enabled(v10, type))
            {
              *buf = 136446210;
              v56 = "nw_protocol_implementation_accept";
              _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v9)
        {
LABEL_29:
          v12 = 0;
          v14 = 0;
          goto LABEL_30;
        }

LABEL_28:
        free(v9);
        goto LABEL_29;
      }

      a1 = *(a1 + 64);
    }

    v12 = (a1 + 96);
    v13 = *(a1 + 104);
    if (v13)
    {
      if (!*(v13 + 80))
      {
        v24 = v12;
        v29 = __nwlog_obj();
        *buf = 136446210;
        v56 = "nw_protocol_implementation_accept";
        v26 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v53 = 0;
        if (!__nwlog_fault(v26, &type, &v53))
        {
          goto LABEL_116;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v27 = __nwlog_obj();
          v30 = type;
          if (os_log_type_enabled(v27, type))
          {
            *buf = 136446210;
            v56 = "nw_protocol_implementation_accept";
            _os_log_impl(&dword_181A37000, v27, v30, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }

          goto LABEL_115;
        }

        if (v53 != 1)
        {
          v27 = __nwlog_obj();
          v50 = type;
          if (os_log_type_enabled(v27, type))
          {
            *buf = 136446210;
            v56 = "nw_protocol_implementation_accept";
            _os_log_impl(&dword_181A37000, v27, v50, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_115;
        }

        v41 = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v42 = type;
        v43 = os_log_type_enabled(v27, type);
        if (!v41)
        {
          if (v43)
          {
            *buf = 136446210;
            v56 = "nw_protocol_implementation_accept";
            _os_log_impl(&dword_181A37000, v27, v42, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }

          goto LABEL_115;
        }

        if (v43)
        {
          *buf = 136446466;
          v56 = "nw_protocol_implementation_accept";
          v57 = 2082;
          v58 = v41;
          _os_log_impl(&dword_181A37000, v27, v42, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_81;
      }

      if (!v5)
      {
        v24 = v12;
        v31 = __nwlog_obj();
        *buf = 136446210;
        v56 = "nw_protocol_implementation_accept";
        v26 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v53 = 0;
        if (!__nwlog_fault(v26, &type, &v53))
        {
          goto LABEL_116;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v27 = __nwlog_obj();
          v32 = type;
          if (os_log_type_enabled(v27, type))
          {
            *buf = 136446210;
            v56 = "nw_protocol_implementation_accept";
            _os_log_impl(&dword_181A37000, v27, v32, "%{public}s called with null endpoint", buf, 0xCu);
          }

          goto LABEL_115;
        }

        if (v53 != 1)
        {
          v27 = __nwlog_obj();
          v51 = type;
          if (os_log_type_enabled(v27, type))
          {
            *buf = 136446210;
            v56 = "nw_protocol_implementation_accept";
            _os_log_impl(&dword_181A37000, v27, v51, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_115;
        }

        v41 = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v44 = type;
        v45 = os_log_type_enabled(v27, type);
        if (!v41)
        {
          if (v45)
          {
            *buf = 136446210;
            v56 = "nw_protocol_implementation_accept";
            _os_log_impl(&dword_181A37000, v27, v44, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
          }

          goto LABEL_115;
        }

        if (v45)
        {
          *buf = 136446466;
          v56 = "nw_protocol_implementation_accept";
          v57 = 2082;
          v58 = v41;
          _os_log_impl(&dword_181A37000, v27, v44, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_81;
      }

      if (v6)
      {
        v14 = (*(a1 + 508) & 4) == 0;
LABEL_30:

        goto LABEL_31;
      }

      v24 = v12;
      v33 = __nwlog_obj();
      *buf = 136446210;
      v56 = "nw_protocol_implementation_accept";
      v26 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v53 = 0;
      if (__nwlog_fault(v26, &type, &v53))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v27 = __nwlog_obj();
          v34 = type;
          if (os_log_type_enabled(v27, type))
          {
            *buf = 136446210;
            v56 = "nw_protocol_implementation_accept";
            _os_log_impl(&dword_181A37000, v27, v34, "%{public}s called with null parameters", buf, 0xCu);
          }

LABEL_115:

          goto LABEL_116;
        }

        if (v53 != 1)
        {
          v27 = __nwlog_obj();
          v52 = type;
          if (os_log_type_enabled(v27, type))
          {
            *buf = 136446210;
            v56 = "nw_protocol_implementation_accept";
            _os_log_impl(&dword_181A37000, v27, v52, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_115;
        }

        v41 = __nw_create_backtrace_string();
        v27 = __nwlog_obj();
        v46 = type;
        v47 = os_log_type_enabled(v27, type);
        if (!v41)
        {
          if (v47)
          {
            *buf = 136446210;
            v56 = "nw_protocol_implementation_accept";
            _os_log_impl(&dword_181A37000, v27, v46, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
          }

          goto LABEL_115;
        }

        if (v47)
        {
          *buf = 136446466;
          v56 = "nw_protocol_implementation_accept";
          v57 = 2082;
          v58 = v41;
          _os_log_impl(&dword_181A37000, v27, v46, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_81:

        free(v41);
        if (!v26)
        {
          goto LABEL_118;
        }

        goto LABEL_117;
      }
    }

    else
    {
      v24 = v12;
      v25 = __nwlog_obj();
      *buf = 136446210;
      v56 = "nw_protocol_implementation_accept";
      v26 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v53 = 0;
      if (!__nwlog_fault(v26, &type, &v53))
      {
        goto LABEL_116;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          v56 = "nw_protocol_implementation_accept";
          _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }

        goto LABEL_115;
      }

      if (v53 != 1)
      {
        v27 = __nwlog_obj();
        v49 = type;
        if (os_log_type_enabled(v27, type))
        {
          *buf = 136446210;
          v56 = "nw_protocol_implementation_accept";
          _os_log_impl(&dword_181A37000, v27, v49, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_115;
      }

      v38 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v39 = type;
      v40 = os_log_type_enabled(v27, type);
      if (!v38)
      {
        if (v40)
        {
          *buf = 136446210;
          v56 = "nw_protocol_implementation_accept";
          _os_log_impl(&dword_181A37000, v27, v39, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_115;
      }

      if (v40)
      {
        *buf = 136446466;
        v56 = "nw_protocol_implementation_accept";
        v57 = 2082;
        v58 = v38;
        _os_log_impl(&dword_181A37000, v27, v39, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v38);
    }

LABEL_116:
    if (!v26)
    {
LABEL_118:
      v14 = 0;
      v12 = v24;
      goto LABEL_30;
    }

LABEL_117:
    free(v26);
    goto LABEL_118;
  }

  v20 = __nwlog_obj();
  *buf = 136446210;
  v56 = "nw_protocol_implementation_accept";
  v21 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v53 = 0;
  if (__nwlog_fault(v21, &type, &v53))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v56 = "nw_protocol_implementation_accept";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null many_to_one_handler", buf, 0xCu);
      }
    }

    else if (v53 == 1)
    {
      v35 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v36 = type;
      v37 = os_log_type_enabled(v22, type);
      if (v35)
      {
        if (v37)
        {
          *buf = 136446466;
          v56 = "nw_protocol_implementation_accept";
          v57 = 2082;
          v58 = v35;
          _os_log_impl(&dword_181A37000, v22, v36, "%{public}s called with null many_to_one_handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v35);
        goto LABEL_101;
      }

      if (v37)
      {
        *buf = 136446210;
        v56 = "nw_protocol_implementation_accept";
        _os_log_impl(&dword_181A37000, v22, v36, "%{public}s called with null many_to_one_handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v48 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v56 = "nw_protocol_implementation_accept";
        _os_log_impl(&dword_181A37000, v22, v48, "%{public}s called with null many_to_one_handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_101:
  if (v21)
  {
    free(v21);
  }

  v14 = 0;
LABEL_31:

  return v14;
}

uint64_t nw_protocol_flow_for_protocol(NWConcrete_nw_protocol_instance *a1, uint64_t a2)
{
  v3 = a1;
  if (nw_protocol_definition_get_message_is_stream(v3->parent_definition) && *&v3[-1].log_str[41] == a2)
  {
    a2 = -2;
  }

  return a2;
}

void nw_protocol_implementation_error(nw_protocol *a1, nw_protocol *a2, int a3)
{
  v97 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1;
    handle = a1->handle;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v7 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_error";
        v8 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v86) = 0;
        if (__nwlog_fault(v8, type, &v86))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v9 = __nwlog_obj();
            v10 = type[0];
            if (os_log_type_enabled(v9, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_error";
              _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v86 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v9 = __nwlog_obj();
            v21 = type[0];
            v22 = os_log_type_enabled(v9, type[0]);
            if (backtrace_string)
            {
              if (v22)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_implementation_error";
                v91 = 2082;
                v92 = backtrace_string;
                _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v8)
              {
                goto LABEL_42;
              }

              goto LABEL_41;
            }

            if (v22)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_error";
              _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v9 = __nwlog_obj();
            v23 = type[0];
            if (os_log_type_enabled(v9, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_error";
              _os_log_impl(&dword_181A37000, v9, v23, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v8)
        {
LABEL_42:
          v12 = 0;
          goto LABEL_43;
        }

LABEL_41:
        free(v8);
        goto LABEL_42;
      }

      v5 = *a1[1].flow_id;
    }

    v11 = &v5[1].output_handler;
    v12 = v11;
    v13 = v5[1].handle;
    if (v13)
    {
      v14 = v13[10];
      if (v14)
      {
        if (a2)
        {
          if (!a3)
          {
            if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
            {
              v19 = __nwlog_obj();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446722;
                *&buf[4] = "nw_protocol_implementation_error";
                v91 = 2082;
                v92 = &v5[7].output_handler_context + 7;
                v93 = 2080;
                v94 = " ";
                _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sSupressing error 0", buf, 0x20u);
              }
            }

            goto LABEL_43;
          }

          if (*(v14 + 72))
          {
            *buf = 0;
            nw_protocol_implementation_lookup_path_by_protocol(v11, a2, buf);
            v15 = *(*(v5[1].handle + 10) + 72);
            v16 = *buf;
            posix_error = nw_error_create_posix_error(a3);
            v15(v12, -1, v16, posix_error);
          }

          if ((BYTE2(v5[7].output_handler_context) & 0x20) != 0)
          {
LABEL_43:

            return;
          }

          if (*(v5[1].handle + 16) == 3)
          {
            v18 = *&v5[5].flow_id[8];
            v81[0] = MEMORY[0x1E69E9820];
            v81[1] = 3221225472;
            v81[2] = ___ZL32nw_protocol_implementation_errorP11nw_protocolS0_i_block_invoke;
            v81[3] = &unk_1E6A2D0C0;
            v12 = v12;
            v82 = v12;
            v83 = a3;
            nw_hash_table_apply(v18, v81);

            goto LABEL_43;
          }

          default_input_handler = v5->default_input_handler;
          if (default_input_handler)
          {
            v25 = default_input_handler->handle;
            v26 = v5->default_input_handler;
            if (v25 == &nw_protocol_ref_counted_handle)
            {
              goto LABEL_46;
            }

            if (v25 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v26) = 0;
              goto LABEL_49;
            }

            v26 = *default_input_handler[1].flow_id;
            if (v26)
            {
LABEL_46:
              callbacks = v26[1].callbacks;
              if (callbacks)
              {
                v26[1].callbacks = (&callbacks->add_input_handler + 1);
              }

              LOBYTE(v26) = -1;
            }

LABEL_49:
            *type = default_input_handler;
            v89 = v26;
            v28 = v5->handle;
            v29 = v5;
            if (v28 != &nw_protocol_ref_counted_handle)
            {
              if (v28 != &nw_protocol_ref_counted_additional_handle)
              {
                LOBYTE(v29) = 0;
                goto LABEL_56;
              }

              v29 = *v5[1].flow_id;
              if (!v29)
              {
                goto LABEL_56;
              }
            }

            v30 = v29[1].callbacks;
            if (v30)
            {
              v29[1].callbacks = (&v30->add_input_handler + 1);
            }

            LOBYTE(v29) = -1;
LABEL_56:
            v86 = v5;
            v87 = v29;
            v31 = default_input_handler->callbacks;
            if (v31)
            {
              error = v31->error;
              if (error)
              {
                error();
                if ((v87 & 1) == 0)
                {
                  goto LABEL_60;
                }

                goto LABEL_59;
              }
            }

            v80 = v29;
            v57 = default_input_handler;
            v58 = __nwlog_obj();
            name = v57->identifier->name;
            *buf = 136446722;
            *&buf[4] = "__nw_protocol_error";
            if (!name)
            {
              name = "invalid";
            }

            v91 = 2082;
            v92 = name;
            v93 = 2048;
            v60 = v57;
            v94 = v57;
            v61 = _os_log_send_and_compose_impl();

            v85 = OS_LOG_TYPE_ERROR;
            v84 = 0;
            if (__nwlog_fault(v61, &v85, &v84))
            {
              if (v85 == OS_LOG_TYPE_FAULT)
              {
                v62 = __nwlog_obj();
                v63 = v85;
                if (os_log_type_enabled(v62, v85))
                {
                  v64 = v60->identifier->name;
                  if (!v64)
                  {
                    v64 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_error";
                  v91 = 2082;
                  v92 = v64;
                  v93 = 2048;
                  v94 = v60;
                  _os_log_impl(&dword_181A37000, v62, v63, "%{public}s protocol %{public}s (%p) has invalid error callback", buf, 0x20u);
                }

LABEL_167:

                goto LABEL_168;
              }

              if (v84 != 1)
              {
                v62 = __nwlog_obj();
                v76 = v85;
                if (os_log_type_enabled(v62, v85))
                {
                  v77 = v60->identifier->name;
                  if (!v77)
                  {
                    v77 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_error";
                  v91 = 2082;
                  v92 = v77;
                  v93 = 2048;
                  v94 = v60;
                  _os_log_impl(&dword_181A37000, v62, v76, "%{public}s protocol %{public}s (%p) has invalid error callback, backtrace limit exceeded", buf, 0x20u);
                }

                goto LABEL_167;
              }

              v70 = __nw_create_backtrace_string();
              v62 = __nwlog_obj();
              v71 = v85;
              v72 = os_log_type_enabled(v62, v85);
              if (!v70)
              {
                if (v72)
                {
                  v79 = v60->identifier->name;
                  if (!v79)
                  {
                    v79 = "invalid";
                  }

                  *buf = 136446722;
                  *&buf[4] = "__nw_protocol_error";
                  v91 = 2082;
                  v92 = v79;
                  v93 = 2048;
                  v94 = v60;
                  _os_log_impl(&dword_181A37000, v62, v71, "%{public}s protocol %{public}s (%p) has invalid error callback, no backtrace", buf, 0x20u);
                }

                goto LABEL_167;
              }

              if (v72)
              {
                v73 = v60->identifier->name;
                if (!v73)
                {
                  v73 = "invalid";
                }

                *buf = 136446978;
                *&buf[4] = "__nw_protocol_error";
                v91 = 2082;
                v92 = v73;
                v93 = 2048;
                v94 = v60;
                v95 = 2082;
                v96 = v70;
                _os_log_impl(&dword_181A37000, v62, v71, "%{public}s protocol %{public}s (%p) has invalid error callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v70);
            }

LABEL_168:
            if (v61)
            {
              free(v61);
            }

            if ((v80 & 1) == 0)
            {
              goto LABEL_60;
            }

LABEL_59:
            nw::release_if_needed<nw_protocol *>(&v86);
LABEL_60:
            if (v89)
            {
              nw::release_if_needed<nw_protocol *>(type);
            }

            goto LABEL_43;
          }

          v68 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "__nw_protocol_error";
          v38 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v86) = 0;
          if (!__nwlog_fault(v38, type, &v86))
          {
            goto LABEL_175;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v39 = __nwlog_obj();
            v69 = type[0];
            if (os_log_type_enabled(v39, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_error";
              _os_log_impl(&dword_181A37000, v39, v69, "%{public}s called with null protocol", buf, 0xCu);
            }

            goto LABEL_174;
          }

          if (v86 != 1)
          {
            v39 = __nwlog_obj();
            v78 = type[0];
            if (os_log_type_enabled(v39, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_error";
              _os_log_impl(&dword_181A37000, v39, v78, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_174;
          }

          v51 = __nw_create_backtrace_string();
          v39 = __nwlog_obj();
          v74 = type[0];
          v75 = os_log_type_enabled(v39, type[0]);
          if (!v51)
          {
            if (v75)
            {
              *buf = 136446210;
              *&buf[4] = "__nw_protocol_error";
              _os_log_impl(&dword_181A37000, v39, v74, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }

            goto LABEL_174;
          }

          if (v75)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_protocol_error";
            v91 = 2082;
            v92 = v51;
            _os_log_impl(&dword_181A37000, v39, v74, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }
        }

        else
        {
          v43 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_error";
          v38 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v86) = 0;
          if (!__nwlog_fault(v38, type, &v86))
          {
            goto LABEL_175;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v39 = __nwlog_obj();
            v44 = type[0];
            if (os_log_type_enabled(v39, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_error";
              _os_log_impl(&dword_181A37000, v39, v44, "%{public}s called with null other_protocol", buf, 0xCu);
            }

            goto LABEL_174;
          }

          if (v86 != 1)
          {
            v39 = __nwlog_obj();
            v67 = type[0];
            if (os_log_type_enabled(v39, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_error";
              _os_log_impl(&dword_181A37000, v39, v67, "%{public}s called with null other_protocol, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_174;
          }

          v51 = __nw_create_backtrace_string();
          v39 = __nwlog_obj();
          v54 = type[0];
          v55 = os_log_type_enabled(v39, type[0]);
          if (!v51)
          {
            if (v55)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_error";
              _os_log_impl(&dword_181A37000, v39, v54, "%{public}s called with null other_protocol, no backtrace", buf, 0xCu);
            }

            goto LABEL_174;
          }

          if (v55)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_implementation_error";
            v91 = 2082;
            v92 = v51;
            _os_log_impl(&dword_181A37000, v39, v54, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }
        }
      }

      else
      {
        v41 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_error";
        v38 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v86) = 0;
        if (!__nwlog_fault(v38, type, &v86))
        {
          goto LABEL_175;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v39 = __nwlog_obj();
          v42 = type[0];
          if (os_log_type_enabled(v39, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_error";
            _os_log_impl(&dword_181A37000, v39, v42, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }

          goto LABEL_174;
        }

        if (v86 != 1)
        {
          v39 = __nwlog_obj();
          v66 = type[0];
          if (os_log_type_enabled(v39, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_error";
            _os_log_impl(&dword_181A37000, v39, v66, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_174;
        }

        v51 = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        v52 = type[0];
        v53 = os_log_type_enabled(v39, type[0]);
        if (!v51)
        {
          if (v53)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_implementation_error";
            _os_log_impl(&dword_181A37000, v39, v52, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }

          goto LABEL_174;
        }

        if (v53)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_error";
          v91 = 2082;
          v92 = v51;
          _os_log_impl(&dword_181A37000, v39, v52, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      free(v51);
      if (!v38)
      {
        goto LABEL_43;
      }

      goto LABEL_176;
    }

    v37 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_implementation_error";
    v38 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v86) = 0;
    if (!__nwlog_fault(v38, type, &v86))
    {
      goto LABEL_175;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type[0];
      if (os_log_type_enabled(v39, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_error";
        _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null instance->parent_definition", buf, 0xCu);
      }
    }

    else if (v86 == 1)
    {
      v48 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v49 = type[0];
      v50 = os_log_type_enabled(v39, type[0]);
      if (v48)
      {
        if (v50)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_error";
          v91 = 2082;
          v92 = v48;
          _os_log_impl(&dword_181A37000, v39, v49, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v48);
LABEL_175:
        if (!v38)
        {
          goto LABEL_43;
        }

LABEL_176:
        free(v38);
        goto LABEL_43;
      }

      if (v50)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_error";
        _os_log_impl(&dword_181A37000, v39, v49, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v39 = __nwlog_obj();
      v65 = type[0];
      if (os_log_type_enabled(v39, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_error";
        _os_log_impl(&dword_181A37000, v39, v65, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_174:

    goto LABEL_175;
  }

  v33 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_error";
  v34 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v86) = 0;
  if (__nwlog_fault(v34, type, &v86))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_error";
        _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v86 == 1)
    {
      v45 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v46 = type[0];
      v47 = os_log_type_enabled(v35, type[0]);
      if (v45)
      {
        if (v47)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_error";
          v91 = 2082;
          v92 = v45;
          _os_log_impl(&dword_181A37000, v35, v46, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v45);
        goto LABEL_139;
      }

      if (v47)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_error";
        _os_log_impl(&dword_181A37000, v35, v46, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v35 = __nwlog_obj();
      v56 = type[0];
      if (os_log_type_enabled(v35, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_error";
        _os_log_impl(&dword_181A37000, v35, v56, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_139:
  if (v34)
  {
    free(v34);
  }
}

void sub_1824101CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  if (a22)
  {
    nw::release_if_needed<nw_protocol *>(&a21);
  }

  if (a24)
  {
    nw::release_if_needed<nw_protocol *>(&a23);
  }

  _Unwind_Resume(a1);
}

void ___ZL39nw_protocol_implementation_updated_pathP11nw_protocolS0_PU21objcproto10OS_nw_path8NSObject_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[37];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZL39nw_protocol_implementation_updated_pathP11nw_protocolS0_PU21objcproto10OS_nw_path8NSObject_block_invoke_2;
  v7[3] = &unk_1E6A2D0E8;
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 40);
  v6 = v3;
  nw_hash_table_apply(v5, v7);
}

uint64_t ___ZL39nw_protocol_implementation_updated_pathP11nw_protocolS0_PU21objcproto10OS_nw_path8NSObject_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = *(nw_hash_node_get_extra(a2) + 32);
  if (v3 && v3 != *(a1 + 40))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = v5;
    v7 = v3[3];
    if (!v7 || !v4 || (*(v7 + 168) ? (v8 = v5 == 0) : (v8 = 1), v8))
    {
LABEL_31:

      return 1;
    }

    v9 = v5;
    v10 = v3[5];
    v11 = v3;
    if (v10 != &nw_protocol_ref_counted_handle)
    {
      if (v10 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v11) = 0;
        v12 = 1;
        goto LABEL_16;
      }

      v11 = v3[8];
      if (!v11)
      {
        v12 = 1;
        goto LABEL_16;
      }
    }

    v13 = v11[11];
    v12 = 0;
    if (v13)
    {
      v11[11] = v13 + 1;
    }

    LOBYTE(v11) = -1;
LABEL_16:
    v39 = v3;
    v40 = v11;
    v14 = *(v4 + 40);
    v15 = v4;
    if (v14 == &nw_protocol_ref_counted_handle || v14 == &nw_protocol_ref_counted_additional_handle && (v15 = *(v4 + 64)) != 0)
    {
      v18 = *(v15 + 88);
      v17 = 0;
      if (v18)
      {
        *(v15 + 88) = v18 + 1;
      }

      v16 = -1;
    }

    else
    {
      v16 = 0;
      v17 = 1;
    }

    v37 = v4;
    v38 = v16;
    v19 = v3[3];
    if (v19)
    {
      v20 = *(v19 + 168);
      if (v20)
      {
        v20(v3, v4, v9);
LABEL_26:
        if ((v17 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(&v37);
        }

        if ((v12 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(&v39);
        }

        goto LABEL_31;
      }
    }

    v22 = __nwlog_obj();
    v23 = v3[2];
    *buf = 136446722;
    v42 = "__nw_protocol_updated_path";
    if (!v23)
    {
      v23 = "invalid";
    }

    v43 = 2082;
    v44 = v23;
    v45 = 2048;
    v46 = v3;
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (__nwlog_fault(v24, &type, &v35))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          v27 = v3[2];
          if (!v27)
          {
            v27 = "invalid";
          }

          *buf = 136446722;
          v42 = "__nw_protocol_updated_path";
          v43 = 2082;
          v44 = v27;
          v45 = 2048;
          v46 = v3;
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s protocol %{public}s (%p) has invalid updated_path callback", buf, 0x20u);
        }
      }

      else if (v35 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v25, type);
        if (backtrace_string)
        {
          if (v30)
          {
            if (v3[2])
            {
              v31 = v3[2];
            }

            else
            {
              v31 = "invalid";
            }

            *buf = 136446978;
            v42 = "__nw_protocol_updated_path";
            v43 = 2082;
            v44 = v31;
            v45 = 2048;
            v46 = v3;
            v47 = 2082;
            v48 = backtrace_string;
            _os_log_impl(&dword_181A37000, v25, v29, "%{public}s protocol %{public}s (%p) has invalid updated_path callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
          goto LABEL_62;
        }

        if (v30)
        {
          if (v3[2])
          {
            v34 = v3[2];
          }

          else
          {
            v34 = "invalid";
          }

          *buf = 136446722;
          v42 = "__nw_protocol_updated_path";
          v43 = 2082;
          v44 = v34;
          v45 = 2048;
          v46 = v3;
          _os_log_impl(&dword_181A37000, v25, v29, "%{public}s protocol %{public}s (%p) has invalid updated_path callback, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v25, type))
        {
          v33 = v3[2];
          if (!v33)
          {
            v33 = "invalid";
          }

          *buf = 136446722;
          v42 = "__nw_protocol_updated_path";
          v43 = 2082;
          v44 = v33;
          v45 = 2048;
          v46 = v3;
          _os_log_impl(&dword_181A37000, v25, v32, "%{public}s protocol %{public}s (%p) has invalid updated_path callback, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

LABEL_62:
    if (v24)
    {
      free(v24);
    }

    goto LABEL_26;
  }

  return 1;
}

void sub_182410774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  if ((v9 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  if ((v8 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va1);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZL39nw_protocol_implementation_updated_pathP11nw_protocolS0_PU21objcproto10OS_nw_path8NSObject_block_invoke_2(uint64_t a1, uint64_t a2)
{
  extra = nw_hash_node_get_extra(a2);
  if (_nw_interface_shallow_compare(*(a1 + 32), *(extra + 16)))
  {
    nw_hash_node_get_object(a2);
    (*(*(*(*(a1 + 40) + 8) + 80) + 232))();
  }

  return 1;
}

uint64_t ___ZL32nw_protocol_implementation_errorP11nw_protocolS0_i_block_invoke(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4 - 96;
  }

  else
  {
    v5 = 0;
  }

  if (object)
  {
    v6 = object[5];
    v7 = object;
    if (v6 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_9;
    }

    if (v6 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v7) = 0;
      v8 = 1;
      goto LABEL_12;
    }

    v7 = object[8];
    if (v7)
    {
LABEL_9:
      v9 = v7[11];
      v8 = 0;
      if (v9)
      {
        v7[11] = v9 + 1;
      }

      LOBYTE(v7) = -1;
    }

    else
    {
      v8 = 1;
    }

LABEL_12:
    *v52 = object;
    v53 = v7;
    if (v4)
    {
      v10 = *(v5 + 40);
      v11 = v5;
      if (v10 != &nw_protocol_ref_counted_handle)
      {
        if (v10 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v11) = 0;
          v12 = 1;
          goto LABEL_20;
        }

        v11 = *(v5 + 64);
        if (!v11)
        {
          v12 = 1;
          goto LABEL_20;
        }
      }

      v13 = *(v11 + 88);
      v12 = 0;
      if (v13)
      {
        *(v11 + 88) = v13 + 1;
      }

      LOBYTE(v11) = -1;
LABEL_20:
      *v49 = v5;
      v50 = v11;
      v14 = object[3];
      if (v14)
      {
        v15 = *(v14 + 56);
        if (v15)
        {
          v15();
LABEL_23:
          if ((v12 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v49);
          }

LABEL_25:
          if ((v8 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v52);
          }

          return 1;
        }
      }

      v17 = object;
      v18 = __nwlog_obj();
      v19 = v17[2];
      *buf = 136446722;
      v55 = "__nw_protocol_error";
      if (!v19)
      {
        v19 = "invalid";
      }

      v56 = 2082;
      v57 = v19;
      v58 = 2048;
      v20 = v17;
      v59 = v17;
      v21 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (__nwlog_fault(v21, &type, &v48))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v22 = __nwlog_obj();
          v23 = type;
          if (os_log_type_enabled(v22, type))
          {
            v24 = v20[2];
            if (!v24)
            {
              v24 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_error";
            v56 = 2082;
            v57 = v24;
            v58 = 2048;
            v59 = v20;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s protocol %{public}s (%p) has invalid error callback", buf, 0x20u);
          }
        }

        else if (v48 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v22 = __nwlog_obj();
          v34 = type;
          v35 = os_log_type_enabled(v22, type);
          if (backtrace_string)
          {
            if (v35)
            {
              v36 = v20[2];
              if (!v36)
              {
                v36 = "invalid";
              }

              *buf = 136446978;
              v55 = "__nw_protocol_error";
              v56 = 2082;
              v57 = v36;
              v58 = 2048;
              v59 = v20;
              v60 = 2082;
              v61 = backtrace_string;
              _os_log_impl(&dword_181A37000, v22, v34, "%{public}s protocol %{public}s (%p) has invalid error callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(backtrace_string);
            goto LABEL_82;
          }

          if (v35)
          {
            v47 = v20[2];
            if (!v47)
            {
              v47 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_error";
            v56 = 2082;
            v57 = v47;
            v58 = 2048;
            v59 = v20;
            _os_log_impl(&dword_181A37000, v22, v34, "%{public}s protocol %{public}s (%p) has invalid error callback, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v22 = __nwlog_obj();
          v43 = type;
          if (os_log_type_enabled(v22, type))
          {
            v44 = v20[2];
            if (!v44)
            {
              v44 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_error";
            v56 = 2082;
            v57 = v44;
            v58 = 2048;
            v59 = v20;
            _os_log_impl(&dword_181A37000, v22, v43, "%{public}s protocol %{public}s (%p) has invalid error callback, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_82:
      if (v21)
      {
        free(v21);
      }

      goto LABEL_23;
    }

    v29 = __nwlog_obj();
    *buf = 136446210;
    v55 = "__nw_protocol_error";
    v30 = _os_log_send_and_compose_impl();

    v49[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v30, v49, &type))
    {
      if (v49[0] == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = v49[0];
        if (os_log_type_enabled(v31, v49[0]))
        {
          *buf = 136446210;
          v55 = "__nw_protocol_error";
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null other_protocol", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v40 = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v41 = v49[0];
        v42 = os_log_type_enabled(v31, v49[0]);
        if (v40)
        {
          if (v42)
          {
            *buf = 136446466;
            v55 = "__nw_protocol_error";
            v56 = 2082;
            v57 = v40;
            _os_log_impl(&dword_181A37000, v31, v41, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v40);
          goto LABEL_92;
        }

        if (v42)
        {
          *buf = 136446210;
          v55 = "__nw_protocol_error";
          _os_log_impl(&dword_181A37000, v31, v41, "%{public}s called with null other_protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v46 = v49[0];
        if (os_log_type_enabled(v31, v49[0]))
        {
          *buf = 136446210;
          v55 = "__nw_protocol_error";
          _os_log_impl(&dword_181A37000, v31, v46, "%{public}s called with null other_protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_92:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_25;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  v55 = "__nw_protocol_error";
  v26 = _os_log_send_and_compose_impl();

  v52[0] = OS_LOG_TYPE_ERROR;
  v49[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v26, v52, v49))
  {
    if (v52[0] == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = v52[0];
      if (os_log_type_enabled(v27, v52[0]))
      {
        *buf = 136446210;
        v55 = "__nw_protocol_error";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v49[0] == OS_LOG_TYPE_INFO)
    {
      v37 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v38 = v52[0];
      v39 = os_log_type_enabled(v27, v52[0]);
      if (v37)
      {
        if (v39)
        {
          *buf = 136446466;
          v55 = "__nw_protocol_error";
          v56 = 2082;
          v57 = v37;
          _os_log_impl(&dword_181A37000, v27, v38, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_87;
      }

      if (v39)
      {
        *buf = 136446210;
        v55 = "__nw_protocol_error";
        _os_log_impl(&dword_181A37000, v27, v38, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v45 = v52[0];
      if (os_log_type_enabled(v27, v52[0]))
      {
        *buf = 136446210;
        v55 = "__nw_protocol_error";
        _os_log_impl(&dword_181A37000, v27, v45, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_87:
  if (v26)
  {
    free(v26);
  }

  return 1;
}

void sub_18241108C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((v18 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(&a14);
  }

  if (v17)
  {
    _Unwind_Resume(exception_object);
  }

  nw::release_if_needed<nw_protocol *>(&a17);
  _Unwind_Resume(exception_object);
}

void nw_protocol_implementation_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v115 = *MEMORY[0x1E69E9840];
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
        v108 = "nw_protocol_implementation_output_finished";
        v6 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v103) = 0;
        if (__nwlog_fault(v6, type, &v103))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v7 = __nwlog_obj();
            v8 = type[0];
            if (os_log_type_enabled(v7, type[0]))
            {
              *buf = 136446210;
              v108 = "nw_protocol_implementation_output_finished";
              _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v103 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v7 = __nwlog_obj();
            v24 = type[0];
            v25 = os_log_type_enabled(v7, type[0]);
            if (backtrace_string)
            {
              if (v25)
              {
                *buf = 136446466;
                v108 = "nw_protocol_implementation_output_finished";
                v109 = 2082;
                v110 = backtrace_string;
                _os_log_impl(&dword_181A37000, v7, v24, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v6)
              {
                goto LABEL_79;
              }

              goto LABEL_78;
            }

            if (v25)
            {
              *buf = 136446210;
              v108 = "nw_protocol_implementation_output_finished";
              _os_log_impl(&dword_181A37000, v7, v24, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v7 = __nwlog_obj();
            v26 = type[0];
            if (os_log_type_enabled(v7, type[0]))
            {
              *buf = 136446210;
              v108 = "nw_protocol_implementation_output_finished";
              _os_log_impl(&dword_181A37000, v7, v26, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v6)
        {
LABEL_79:
          v9 = 0;
          goto LABEL_130;
        }

LABEL_78:
        free(v6);
        goto LABEL_79;
      }

      v3 = *a1[1].flow_id;
    }

    v9 = &v3[1].output_handler;
    v10 = v3[1].handle;
    if (!v10)
    {
      v56 = __nwlog_obj();
      *buf = 136446210;
      v108 = "nw_protocol_implementation_output_finished";
      v17 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v103) = 0;
      if (__nwlog_fault(v17, type, &v103))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v18 = __nwlog_obj();
          v57 = type[0];
          if (os_log_type_enabled(v18, type[0]))
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v57, "%{public}s called with null instance->parent_definition", buf, 0xCu);
          }

          goto LABEL_127;
        }

        if (v103 != 1)
        {
          v18 = __nwlog_obj();
          v82 = type[0];
          if (os_log_type_enabled(v18, type[0]))
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v82, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_127;
        }

        v66 = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v67 = type[0];
        v68 = os_log_type_enabled(v18, type[0]);
        if (!v66)
        {
          if (v68)
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v67, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
          }

          goto LABEL_127;
        }

        if (v68)
        {
          *buf = 136446466;
          v108 = "nw_protocol_implementation_output_finished";
          v109 = 2082;
          v110 = v66;
          _os_log_impl(&dword_181A37000, v18, v67, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v66);
      }

      goto LABEL_128;
    }

    if (!v10[10])
    {
      v58 = __nwlog_obj();
      *buf = 136446210;
      v108 = "nw_protocol_implementation_output_finished";
      v17 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v103) = 0;
      if (__nwlog_fault(v17, type, &v103))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v18 = __nwlog_obj();
          v59 = type[0];
          if (os_log_type_enabled(v18, type[0]))
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v59, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }

          goto LABEL_127;
        }

        if (v103 != 1)
        {
          v18 = __nwlog_obj();
          v83 = type[0];
          if (os_log_type_enabled(v18, type[0]))
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v83, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_127;
        }

        v33 = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v69 = type[0];
        v70 = os_log_type_enabled(v18, type[0]);
        if (!v33)
        {
          if (v70)
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v69, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }

          goto LABEL_127;
        }

        if (v70)
        {
          *buf = 136446466;
          v108 = "nw_protocol_implementation_output_finished";
          v109 = 2082;
          v110 = v33;
          _os_log_impl(&dword_181A37000, v18, v69, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_84;
      }

      goto LABEL_128;
    }

    if (!a2)
    {
      v60 = __nwlog_obj();
      *buf = 136446210;
      v108 = "nw_protocol_implementation_output_finished";
      v17 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v103) = 0;
      if (__nwlog_fault(v17, type, &v103))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v18 = __nwlog_obj();
          v61 = type[0];
          if (os_log_type_enabled(v18, type[0]))
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v61, "%{public}s called with null input_protocol", buf, 0xCu);
          }

          goto LABEL_127;
        }

        if (v103 != 1)
        {
          v18 = __nwlog_obj();
          v84 = type[0];
          if (os_log_type_enabled(v18, type[0]))
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v84, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_127;
        }

        v33 = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v71 = type[0];
        v72 = os_log_type_enabled(v18, type[0]);
        if (!v33)
        {
          if (v72)
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v71, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
          }

          goto LABEL_127;
        }

        if (v72)
        {
          *buf = 136446466;
          v108 = "nw_protocol_implementation_output_finished";
          v109 = 2082;
          v110 = v33;
          _os_log_impl(&dword_181A37000, v18, v71, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_84;
      }

      goto LABEL_128;
    }

    if (gLogDatapath == 1)
    {
      v62 = __nwlog_obj();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v108 = "nw_protocol_implementation_output_finished";
        v109 = 2048;
        v110 = v9;
        _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s Instance %p output finished", buf, 0x16u);
      }

      v10 = v3[1].handle;
    }

    v11 = *(v10 + 16);
    if (v11 == 2)
    {
      v15 = *(v10[10] + 128);
      if (v15)
      {
        if (v15(v9, -1, 2))
        {
LABEL_130:

          return;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        *buf = 136446210;
        v108 = "nw_protocol_implementation_output_finished";
        v17 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v103) = 0;
        if (!__nwlog_fault(v17, type, &v103))
        {
          goto LABEL_128;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v19 = type[0];
          if (os_log_type_enabled(v18, type[0]))
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s Cannot defer stop of NW_PROTOCOL_DEFAULT_FLOW", buf, 0xCu);
          }

          goto LABEL_127;
        }

        if (v103 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v51 = type[0];
          if (os_log_type_enabled(v18, type[0]))
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v51, "%{public}s Cannot defer stop of NW_PROTOCOL_DEFAULT_FLOW, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_127;
        }

        v33 = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v40 = type[0];
        v41 = os_log_type_enabled(v18, type[0]);
        if (!v33)
        {
          if (v41)
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v40, "%{public}s Cannot defer stop of NW_PROTOCOL_DEFAULT_FLOW, no backtrace", buf, 0xCu);
          }

          goto LABEL_127;
        }

        if (v41)
        {
          *buf = 136446466;
          v108 = "nw_protocol_implementation_output_finished";
          v109 = 2082;
          v110 = v33;
          _os_log_impl(&dword_181A37000, v18, v40, "%{public}s Cannot defer stop of NW_PROTOCOL_DEFAULT_FLOW, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v29 = gLogObj;
        *buf = 136446210;
        v108 = "nw_protocol_implementation_output_finished";
        v17 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v103) = 0;
        if (!__nwlog_fault(v17, type, &v103))
        {
          goto LABEL_128;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v30 = type[0];
          if (os_log_type_enabled(v18, type[0]))
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v30, "%{public}s called with null instance->parent_definition->stop", buf, 0xCu);
          }

          goto LABEL_127;
        }

        if (v103 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v49 = type[0];
          if (os_log_type_enabled(v18, type[0]))
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v49, "%{public}s called with null instance->parent_definition->stop, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_127;
        }

        v33 = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v36 = type[0];
        v37 = os_log_type_enabled(v18, type[0]);
        if (!v33)
        {
          if (v37)
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v36, "%{public}s called with null instance->parent_definition->stop, no backtrace", buf, 0xCu);
          }

          goto LABEL_127;
        }

        if (v37)
        {
          *buf = 136446466;
          v108 = "nw_protocol_implementation_output_finished";
          v109 = 2082;
          v110 = v33;
          _os_log_impl(&dword_181A37000, v18, v36, "%{public}s called with null instance->parent_definition->stop, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      goto LABEL_84;
    }

    if (v11 == 3)
    {
      v12 = *(v10[10] + 128);
      if (v12)
      {
        v13 = v9;
        if (nw_protocol_definition_get_message_is_stream(v3[1].handle) && v3->default_input_handler == a2)
        {
          v14 = -2;
        }

        else
        {
          v14 = a2;
        }

        if ((v12(v13, v14, 2) & 1) == 0 && gLogDatapath == 1)
        {
          v92 = __nwlog_obj();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            v93 = nw_protocol_flow_for_protocol(v13, a2);
            *buf = 136446466;
            v108 = "nw_protocol_implementation_output_finished";
            v109 = 2048;
            v110 = v93;
            _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_DEBUG, "%{public}s Flow %llx elected to defer stop, ignoring output_finished anyway", buf, 0x16u);
          }
        }

        v9 = v13;
        goto LABEL_130;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      *buf = 136446210;
      v108 = "nw_protocol_implementation_output_finished";
      v17 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v103) = 0;
      if (__nwlog_fault(v17, type, &v103))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v28 = type[0];
          if (os_log_type_enabled(v18, type[0]))
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v28, "%{public}s called with null instance->parent_definition->stop", buf, 0xCu);
          }

LABEL_127:

          goto LABEL_128;
        }

        if (v103 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v18 = gLogObj;
          v48 = type[0];
          if (os_log_type_enabled(v18, type[0]))
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v48, "%{public}s called with null instance->parent_definition->stop, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_127;
        }

        v33 = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v34 = type[0];
        v35 = os_log_type_enabled(v18, type[0]);
        if (!v33)
        {
          if (v35)
          {
            *buf = 136446210;
            v108 = "nw_protocol_implementation_output_finished";
            _os_log_impl(&dword_181A37000, v18, v34, "%{public}s called with null instance->parent_definition->stop, no backtrace", buf, 0xCu);
          }

          goto LABEL_127;
        }

        if (v35)
        {
          *buf = 136446466;
          v108 = "nw_protocol_implementation_output_finished";
          v109 = 2082;
          v110 = v33;
          _os_log_impl(&dword_181A37000, v18, v34, "%{public}s called with null instance->parent_definition->stop, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_84:

        free(v33);
        if (!v17)
        {
          goto LABEL_130;
        }

        goto LABEL_129;
      }

      goto LABEL_128;
    }

    output_handler = v3->output_handler;
    if (!output_handler)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = gLogObj;
      *buf = 136446210;
      v108 = "nw_protocol_implementation_output_finished";
      v17 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v103) = 0;
      if (!__nwlog_fault(v17, type, &v103))
      {
        goto LABEL_128;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v32 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *buf = 136446210;
          v108 = "nw_protocol_implementation_output_finished";
          _os_log_impl(&dword_181A37000, v18, v32, "%{public}s called with null nw_protocol_get_output_handler(&instance->protocol)", buf, 0xCu);
        }

        goto LABEL_127;
      }

      if (v103 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v50 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *buf = 136446210;
          v108 = "nw_protocol_implementation_output_finished";
          _os_log_impl(&dword_181A37000, v18, v50, "%{public}s called with null nw_protocol_get_output_handler(&instance->protocol), backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_127;
      }

      v33 = __nw_create_backtrace_string();
      v18 = __nwlog_obj();
      v38 = type[0];
      v39 = os_log_type_enabled(v18, type[0]);
      if (!v33)
      {
        if (v39)
        {
          *buf = 136446210;
          v108 = "nw_protocol_implementation_output_finished";
          _os_log_impl(&dword_181A37000, v18, v38, "%{public}s called with null nw_protocol_get_output_handler(&instance->protocol), no backtrace", buf, 0xCu);
        }

        goto LABEL_127;
      }

      if (v39)
      {
        *buf = 136446466;
        v108 = "nw_protocol_implementation_output_finished";
        v109 = 2082;
        v110 = v33;
        _os_log_impl(&dword_181A37000, v18, v38, "%{public}s called with null nw_protocol_get_output_handler(&instance->protocol), dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_84;
    }

    if (gLogDatapath == 1)
    {
      v85 = __nwlog_obj();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v108 = "nw_protocol_implementation_output_finished";
        _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s Passing through output finished to output handler", buf, 0xCu);
      }

      if (!v3->output_handler)
      {
        v86 = __nwlog_obj();
        *buf = 136446210;
        v108 = "__nw_protocol_output_finished";
        v17 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v103) = 0;
        if (__nwlog_fault(v17, type, &v103))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v18 = __nwlog_obj();
            v87 = type[0];
            if (os_log_type_enabled(v18, type[0]))
            {
              *buf = 136446210;
              v108 = "__nw_protocol_output_finished";
              _os_log_impl(&dword_181A37000, v18, v87, "%{public}s called with null protocol", buf, 0xCu);
            }

            goto LABEL_127;
          }

          if (v103 != 1)
          {
            v18 = __nwlog_obj();
            v98 = type[0];
            if (os_log_type_enabled(v18, type[0]))
            {
              *buf = 136446210;
              v108 = "__nw_protocol_output_finished";
              _os_log_impl(&dword_181A37000, v18, v98, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_127;
          }

          v33 = __nw_create_backtrace_string();
          v18 = __nwlog_obj();
          v94 = type[0];
          v95 = os_log_type_enabled(v18, type[0]);
          if (!v33)
          {
            if (v95)
            {
              *buf = 136446210;
              v108 = "__nw_protocol_output_finished";
              _os_log_impl(&dword_181A37000, v18, v94, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
            }

            goto LABEL_127;
          }

          if (v95)
          {
            *buf = 136446466;
            v108 = "__nw_protocol_output_finished";
            v109 = 2082;
            v110 = v33;
            _os_log_impl(&dword_181A37000, v18, v94, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          goto LABEL_84;
        }

LABEL_128:
        if (!v17)
        {
          goto LABEL_130;
        }

LABEL_129:
        free(v17);
        goto LABEL_130;
      }

      output_handler = v3->output_handler;
    }

    v21 = output_handler->handle;
    v22 = output_handler;
    if (v21 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_87;
    }

    if (v21 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v22) = 0;
      goto LABEL_90;
    }

    v22 = *output_handler[1].flow_id;
    if (v22)
    {
LABEL_87:
      callbacks = v22[1].callbacks;
      if (callbacks)
      {
        v22[1].callbacks = (&callbacks->add_input_handler + 1);
      }

      LOBYTE(v22) = -1;
    }

LABEL_90:
    *type = output_handler;
    v106 = v22;
    v43 = v3->handle;
    v44 = v3;
    if (v43 != &nw_protocol_ref_counted_handle)
    {
      if (v43 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v44) = 0;
        goto LABEL_97;
      }

      v44 = *v3[1].flow_id;
      if (!v44)
      {
        goto LABEL_97;
      }
    }

    v45 = v44[1].callbacks;
    if (v45)
    {
      v44[1].callbacks = (&v45->add_input_handler + 1);
    }

    LOBYTE(v44) = -1;
LABEL_97:
    v103 = v3;
    v104 = v44;
    v46 = output_handler->callbacks;
    if (v46)
    {
      output_finished = v46->output_finished;
      if (output_finished)
      {
        output_finished();
        if ((v104 & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      }
    }

    v100 = v44;
    v73 = output_handler;
    v74 = __nwlog_obj();
    name = v73->identifier->name;
    *buf = 136446722;
    v108 = "__nw_protocol_output_finished";
    if (!name)
    {
      name = "invalid";
    }

    v109 = 2082;
    v110 = name;
    v111 = 2048;
    v76 = v73;
    v112 = v73;
    v77 = _os_log_send_and_compose_impl();

    v102 = OS_LOG_TYPE_ERROR;
    v101 = 0;
    if (__nwlog_fault(v77, &v102, &v101))
    {
      if (v102 == OS_LOG_TYPE_FAULT)
      {
        v78 = __nwlog_obj();
        v79 = v102;
        if (os_log_type_enabled(v78, v102))
        {
          v80 = v76->identifier->name;
          if (!v80)
          {
            v80 = "invalid";
          }

          *buf = 136446722;
          v108 = "__nw_protocol_output_finished";
          v109 = 2082;
          v110 = v80;
          v111 = 2048;
          v112 = v76;
          _os_log_impl(&dword_181A37000, v78, v79, "%{public}s protocol %{public}s (%p) has invalid output_finished callback", buf, 0x20u);
        }

LABEL_245:

        goto LABEL_246;
      }

      if (v101 != 1)
      {
        v78 = __nwlog_obj();
        v96 = v102;
        if (os_log_type_enabled(v78, v102))
        {
          v97 = v76->identifier->name;
          if (!v97)
          {
            v97 = "invalid";
          }

          *buf = 136446722;
          v108 = "__nw_protocol_output_finished";
          v109 = 2082;
          v110 = v97;
          v111 = 2048;
          v112 = v76;
          _os_log_impl(&dword_181A37000, v78, v96, "%{public}s protocol %{public}s (%p) has invalid output_finished callback, backtrace limit exceeded", buf, 0x20u);
        }

        goto LABEL_245;
      }

      v88 = __nw_create_backtrace_string();
      v78 = __nwlog_obj();
      v89 = v102;
      v90 = os_log_type_enabled(v78, v102);
      if (!v88)
      {
        if (v90)
        {
          v99 = v76->identifier->name;
          if (!v99)
          {
            v99 = "invalid";
          }

          *buf = 136446722;
          v108 = "__nw_protocol_output_finished";
          v109 = 2082;
          v110 = v99;
          v111 = 2048;
          v112 = v76;
          _os_log_impl(&dword_181A37000, v78, v89, "%{public}s protocol %{public}s (%p) has invalid output_finished callback, no backtrace", buf, 0x20u);
        }

        goto LABEL_245;
      }

      if (v90)
      {
        v91 = v76->identifier->name;
        if (!v91)
        {
          v91 = "invalid";
        }

        *buf = 136446978;
        v108 = "__nw_protocol_output_finished";
        v109 = 2082;
        v110 = v91;
        v111 = 2048;
        v112 = v76;
        v113 = 2082;
        v114 = v88;
        _os_log_impl(&dword_181A37000, v78, v89, "%{public}s protocol %{public}s (%p) has invalid output_finished callback, dumping backtrace:%{public}s", buf, 0x2Au);
      }

      free(v88);
    }

LABEL_246:
    if (v77)
    {
      free(v77);
    }

    if ((v100 & 1) == 0)
    {
      goto LABEL_101;
    }

LABEL_100:
    nw::release_if_needed<nw_protocol *>(&v103);
LABEL_101:
    if (v106)
    {
      nw::release_if_needed<nw_protocol *>(type);
    }

    goto LABEL_130;
  }

  v52 = __nwlog_obj();
  *buf = 136446210;
  v108 = "nw_protocol_implementation_output_finished";
  v53 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v103) = 0;
  if (__nwlog_fault(v53, type, &v103))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v54 = __nwlog_obj();
      v55 = type[0];
      if (os_log_type_enabled(v54, type[0]))
      {
        *buf = 136446210;
        v108 = "nw_protocol_implementation_output_finished";
        _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v103 == 1)
    {
      v63 = __nw_create_backtrace_string();
      v54 = __nwlog_obj();
      v64 = type[0];
      v65 = os_log_type_enabled(v54, type[0]);
      if (v63)
      {
        if (v65)
        {
          *buf = 136446466;
          v108 = "nw_protocol_implementation_output_finished";
          v109 = 2082;
          v110 = v63;
          _os_log_impl(&dword_181A37000, v54, v64, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v63);
        goto LABEL_214;
      }

      if (v65)
      {
        *buf = 136446210;
        v108 = "nw_protocol_implementation_output_finished";
        _os_log_impl(&dword_181A37000, v54, v64, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v54 = __nwlog_obj();
      v81 = type[0];
      if (os_log_type_enabled(v54, type[0]))
      {
        *buf = 136446210;
        v108 = "nw_protocol_implementation_output_finished";
        _os_log_impl(&dword_181A37000, v54, v81, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_214:
  if (v53)
  {
    free(v53);
  }
}

void sub_182412CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  if (a18)
  {
    nw::release_if_needed<nw_protocol *>(&a17);
  }

  if (a20)
  {
    nw::release_if_needed<nw_protocol *>(&a19);
  }

  _Unwind_Resume(a1);
}

void nw_protocol_implementation_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v116 = *MEMORY[0x1E69E9840];
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
        v109 = "nw_protocol_implementation_input_finished";
        v6 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v104) = 0;
        if (__nwlog_fault(v6, type, &v104))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v7 = __nwlog_obj();
            v8 = type[0];
            if (os_log_type_enabled(v7, type[0]))
            {
              *buf = 136446210;
              v109 = "nw_protocol_implementation_input_finished";
              _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v104 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v7 = __nwlog_obj();
            v24 = type[0];
            v25 = os_log_type_enabled(v7, type[0]);
            if (backtrace_string)
            {
              if (v25)
              {
                *buf = 136446466;
                v109 = "nw_protocol_implementation_input_finished";
                v110 = 2082;
                v111 = backtrace_string;
                _os_log_impl(&dword_181A37000, v7, v24, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v6)
              {
                goto LABEL_79;
              }

              goto LABEL_78;
            }

            if (v25)
            {
              *buf = 136446210;
              v109 = "nw_protocol_implementation_input_finished";
              _os_log_impl(&dword_181A37000, v7, v24, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v7 = __nwlog_obj();
            v26 = type[0];
            if (os_log_type_enabled(v7, type[0]))
            {
              *buf = 136446210;
              v109 = "nw_protocol_implementation_input_finished";
              _os_log_impl(&dword_181A37000, v7, v26, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v6)
        {
LABEL_79:
          v9 = 0;
          goto LABEL_140;
        }

LABEL_78:
        free(v6);
        goto LABEL_79;
      }

      v3 = *a1[1].flow_id;
    }

    v9 = &v3[1].output_handler;
    v10 = v3[1].handle;
    if (v10)
    {
      if (*(v10 + 10))
      {
        if (a2)
        {
          if (gLogDatapath == 1)
          {
            v65 = __nwlog_obj();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v109 = "nw_protocol_implementation_input_finished";
              v110 = 2048;
              v111 = v9;
              _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s Instance %p input finished", buf, 0x16u);
            }

            v10 = v3[1].handle;
          }

          v11 = v10[16];
          if (v11 == 2)
          {
            v17 = *(*(v10 + 10) + 128);
            if (!v17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v29 = gLogObj;
              *buf = 136446210;
              v109 = "nw_protocol_implementation_input_finished";
              v14 = _os_log_send_and_compose_impl();

              type[0] = OS_LOG_TYPE_ERROR;
              LOBYTE(v104) = 0;
              if (!__nwlog_fault(v14, type, &v104))
              {
                goto LABEL_138;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v15 = gLogObj;
                v30 = type[0];
                if (os_log_type_enabled(v15, type[0]))
                {
                  *buf = 136446210;
                  v109 = "nw_protocol_implementation_input_finished";
                  _os_log_impl(&dword_181A37000, v15, v30, "%{public}s called with null instance->parent_definition->stop", buf, 0xCu);
                }

                goto LABEL_137;
              }

              if (v104 != 1)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v15 = gLogObj;
                v51 = type[0];
                if (os_log_type_enabled(v15, type[0]))
                {
                  *buf = 136446210;
                  v109 = "nw_protocol_implementation_input_finished";
                  _os_log_impl(&dword_181A37000, v15, v51, "%{public}s called with null instance->parent_definition->stop, backtrace limit exceeded", buf, 0xCu);
                }

                goto LABEL_137;
              }

              v33 = __nw_create_backtrace_string();
              v15 = __nwlog_obj();
              v36 = type[0];
              v37 = os_log_type_enabled(v15, type[0]);
              if (!v33)
              {
                if (v37)
                {
                  *buf = 136446210;
                  v109 = "nw_protocol_implementation_input_finished";
                  _os_log_impl(&dword_181A37000, v15, v36, "%{public}s called with null instance->parent_definition->stop, no backtrace", buf, 0xCu);
                }

                goto LABEL_137;
              }

              if (v37)
              {
                *buf = 136446466;
                v109 = "nw_protocol_implementation_input_finished";
                v110 = 2082;
                v111 = v33;
                _os_log_impl(&dword_181A37000, v15, v36, "%{public}s called with null instance->parent_definition->stop, dumping backtrace:%{public}s", buf, 0x16u);
              }

              goto LABEL_89;
            }

            if ((v17(v9, -1, 1) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v18 = gLogObj;
              *buf = 136446210;
              v109 = "nw_protocol_implementation_input_finished";
              v14 = _os_log_send_and_compose_impl();

              type[0] = OS_LOG_TYPE_ERROR;
              LOBYTE(v104) = 0;
              if (!__nwlog_fault(v14, type, &v104))
              {
                goto LABEL_138;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v15 = gLogObj;
                v19 = type[0];
                if (os_log_type_enabled(v15, type[0]))
                {
                  *buf = 136446210;
                  v109 = "nw_protocol_implementation_input_finished";
                  _os_log_impl(&dword_181A37000, v15, v19, "%{public}s Cannot defer stop of NW_PROTOCOL_DEFAULT_FLOW", buf, 0xCu);
                }

                goto LABEL_137;
              }

              if (v104 != 1)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v15 = gLogObj;
                v54 = type[0];
                if (os_log_type_enabled(v15, type[0]))
                {
                  *buf = 136446210;
                  v109 = "nw_protocol_implementation_input_finished";
                  _os_log_impl(&dword_181A37000, v15, v54, "%{public}s Cannot defer stop of NW_PROTOCOL_DEFAULT_FLOW, backtrace limit exceeded", buf, 0xCu);
                }

                goto LABEL_137;
              }

              v33 = __nw_create_backtrace_string();
              v15 = __nwlog_obj();
              v42 = type[0];
              v43 = os_log_type_enabled(v15, type[0]);
              if (!v33)
              {
                if (v43)
                {
                  *buf = 136446210;
                  v109 = "nw_protocol_implementation_input_finished";
                  _os_log_impl(&dword_181A37000, v15, v42, "%{public}s Cannot defer stop of NW_PROTOCOL_DEFAULT_FLOW, no backtrace", buf, 0xCu);
                }

                goto LABEL_137;
              }

              if (v43)
              {
                *buf = 136446466;
                v109 = "nw_protocol_implementation_input_finished";
                v110 = 2082;
                v111 = v33;
                _os_log_impl(&dword_181A37000, v15, v42, "%{public}s Cannot defer stop of NW_PROTOCOL_DEFAULT_FLOW, dumping backtrace:%{public}s", buf, 0x16u);
              }

              goto LABEL_89;
            }

            goto LABEL_140;
          }

          if (v11 == 3)
          {
            v12 = *(*(v10 + 10) + 128);
            if (!v12)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v27 = gLogObj;
              *buf = 136446210;
              v109 = "nw_protocol_implementation_input_finished";
              v14 = _os_log_send_and_compose_impl();

              type[0] = OS_LOG_TYPE_ERROR;
              LOBYTE(v104) = 0;
              if (!__nwlog_fault(v14, type, &v104))
              {
                goto LABEL_138;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v15 = gLogObj;
                v28 = type[0];
                if (os_log_type_enabled(v15, type[0]))
                {
                  *buf = 136446210;
                  v109 = "nw_protocol_implementation_input_finished";
                  _os_log_impl(&dword_181A37000, v15, v28, "%{public}s called with null instance->parent_definition->stop", buf, 0xCu);
                }

                goto LABEL_137;
              }

              if (v104 != 1)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v15 = gLogObj;
                v50 = type[0];
                if (os_log_type_enabled(v15, type[0]))
                {
                  *buf = 136446210;
                  v109 = "nw_protocol_implementation_input_finished";
                  _os_log_impl(&dword_181A37000, v15, v50, "%{public}s called with null instance->parent_definition->stop, backtrace limit exceeded", buf, 0xCu);
                }

                goto LABEL_137;
              }

              v33 = __nw_create_backtrace_string();
              v15 = __nwlog_obj();
              v34 = type[0];
              v35 = os_log_type_enabled(v15, type[0]);
              if (!v33)
              {
                if (v35)
                {
                  *buf = 136446210;
                  v109 = "nw_protocol_implementation_input_finished";
                  _os_log_impl(&dword_181A37000, v15, v34, "%{public}s called with null instance->parent_definition->stop, no backtrace", buf, 0xCu);
                }

                goto LABEL_137;
              }

              if (v35)
              {
                *buf = 136446466;
                v109 = "nw_protocol_implementation_input_finished";
                v110 = 2082;
                v111 = v33;
                _os_log_impl(&dword_181A37000, v15, v34, "%{public}s called with null instance->parent_definition->stop, dumping backtrace:%{public}s", buf, 0x16u);
              }

              goto LABEL_89;
            }

            if ((v12(v9, -1, 1) & 1) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v13 = gLogObj;
              *buf = 136446210;
              v109 = "nw_protocol_implementation_input_finished";
              v14 = _os_log_send_and_compose_impl();

              type[0] = OS_LOG_TYPE_ERROR;
              LOBYTE(v104) = 0;
              if (!__nwlog_fault(v14, type, &v104))
              {
                goto LABEL_138;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v15 = gLogObj;
                v16 = type[0];
                if (os_log_type_enabled(v15, type[0]))
                {
                  *buf = 136446210;
                  v109 = "nw_protocol_implementation_input_finished";
                  _os_log_impl(&dword_181A37000, v15, v16, "%{public}s Cannot defer stop of NW_PROTOCOL_ALL_FLOWS", buf, 0xCu);
                }

LABEL_137:

                goto LABEL_138;
              }

              if (v104 != 1)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v15 = gLogObj;
                v53 = type[0];
                if (os_log_type_enabled(v15, type[0]))
                {
                  *buf = 136446210;
                  v109 = "nw_protocol_implementation_input_finished";
                  _os_log_impl(&dword_181A37000, v15, v53, "%{public}s Cannot defer stop of NW_PROTOCOL_ALL_FLOWS, backtrace limit exceeded", buf, 0xCu);
                }

                goto LABEL_137;
              }

              v33 = __nw_create_backtrace_string();
              v15 = __nwlog_obj();
              v40 = type[0];
              v41 = os_log_type_enabled(v15, type[0]);
              if (!v33)
              {
                if (v41)
                {
                  *buf = 136446210;
                  v109 = "nw_protocol_implementation_input_finished";
                  _os_log_impl(&dword_181A37000, v15, v40, "%{public}s Cannot defer stop of NW_PROTOCOL_ALL_FLOWS, no backtrace", buf, 0xCu);
                }

                goto LABEL_137;
              }

              if (v41)
              {
                *buf = 136446466;
                v109 = "nw_protocol_implementation_input_finished";
                v110 = 2082;
                v111 = v33;
                _os_log_impl(&dword_181A37000, v15, v40, "%{public}s Cannot defer stop of NW_PROTOCOL_ALL_FLOWS, dumping backtrace:%{public}s", buf, 0x16u);
              }

LABEL_89:

              free(v33);
              if (!v14)
              {
                goto LABEL_140;
              }

              goto LABEL_139;
            }

LABEL_140:

            return;
          }

          default_input_handler = v3->default_input_handler;
          if (!default_input_handler)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v31 = gLogObj;
            *buf = 136446210;
            v109 = "nw_protocol_implementation_input_finished";
            v14 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            LOBYTE(v104) = 0;
            if (!__nwlog_fault(v14, type, &v104))
            {
              goto LABEL_138;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v15 = gLogObj;
              v32 = type[0];
              if (os_log_type_enabled(v15, type[0]))
              {
                *buf = 136446210;
                v109 = "nw_protocol_implementation_input_finished";
                _os_log_impl(&dword_181A37000, v15, v32, "%{public}s called with null nw_protocol_get_input_handler(&instance->protocol)", buf, 0xCu);
              }

              goto LABEL_137;
            }

            if (v104 != 1)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v15 = gLogObj;
              v52 = type[0];
              if (os_log_type_enabled(v15, type[0]))
              {
                *buf = 136446210;
                v109 = "nw_protocol_implementation_input_finished";
                _os_log_impl(&dword_181A37000, v15, v52, "%{public}s called with null nw_protocol_get_input_handler(&instance->protocol), backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_137;
            }

            v33 = __nw_create_backtrace_string();
            v15 = __nwlog_obj();
            v38 = type[0];
            v39 = os_log_type_enabled(v15, type[0]);
            if (!v33)
            {
              if (v39)
              {
                *buf = 136446210;
                v109 = "nw_protocol_implementation_input_finished";
                _os_log_impl(&dword_181A37000, v15, v38, "%{public}s called with null nw_protocol_get_input_handler(&instance->protocol), no backtrace", buf, 0xCu);
              }

              goto LABEL_137;
            }

            if (v39)
            {
              *buf = 136446466;
              v109 = "nw_protocol_implementation_input_finished";
              v110 = 2082;
              v111 = v33;
              _os_log_impl(&dword_181A37000, v15, v38, "%{public}s called with null nw_protocol_get_input_handler(&instance->protocol), dumping backtrace:%{public}s", buf, 0x16u);
            }

            goto LABEL_89;
          }

          if (gLogDatapath != 1)
          {
            goto LABEL_32;
          }

          v88 = __nwlog_obj();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            v109 = "nw_protocol_implementation_input_finished";
            _os_log_impl(&dword_181A37000, v88, OS_LOG_TYPE_DEBUG, "%{public}s Passing through input finished to default input handler", buf, 0xCu);
          }

          if (v3->default_input_handler)
          {
            default_input_handler = v3->default_input_handler;
LABEL_32:
            v21 = default_input_handler->handle;
            v22 = default_input_handler;
            if (v21 == &nw_protocol_ref_counted_handle)
            {
              goto LABEL_92;
            }

            if (v21 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v22) = 0;
              goto LABEL_95;
            }

            v22 = *default_input_handler[1].flow_id;
            if (v22)
            {
LABEL_92:
              callbacks = v22[1].callbacks;
              if (callbacks)
              {
                v22[1].callbacks = (&callbacks->add_input_handler + 1);
              }

              LOBYTE(v22) = -1;
            }

LABEL_95:
            *type = default_input_handler;
            v107 = v22;
            v45 = v3->handle;
            v46 = v3;
            if (v45 != &nw_protocol_ref_counted_handle)
            {
              if (v45 != &nw_protocol_ref_counted_additional_handle)
              {
                LOBYTE(v46) = 0;
                goto LABEL_102;
              }

              v46 = *v3[1].flow_id;
              if (!v46)
              {
                goto LABEL_102;
              }
            }

            v47 = v46[1].callbacks;
            if (v47)
            {
              v46[1].callbacks = (&v47->add_input_handler + 1);
            }

            LOBYTE(v46) = -1;
LABEL_102:
            v104 = v3;
            v105 = v46;
            v48 = default_input_handler->callbacks;
            if (v48)
            {
              input_finished = v48->input_finished;
              if (input_finished)
              {
                input_finished();
                if ((v105 & 1) == 0)
                {
                  goto LABEL_106;
                }

                goto LABEL_105;
              }
            }

            v101 = v46;
            v76 = default_input_handler;
            v77 = __nwlog_obj();
            name = v76->identifier->name;
            *buf = 136446722;
            v109 = "__nw_protocol_input_finished";
            if (!name)
            {
              name = "invalid";
            }

            v110 = 2082;
            v111 = name;
            v112 = 2048;
            v79 = v76;
            v113 = v76;
            v80 = _os_log_send_and_compose_impl();

            v103 = OS_LOG_TYPE_ERROR;
            v102 = 0;
            if (__nwlog_fault(v80, &v103, &v102))
            {
              if (v103 == OS_LOG_TYPE_FAULT)
              {
                v81 = __nwlog_obj();
                v82 = v103;
                if (os_log_type_enabled(v81, v103))
                {
                  v83 = v79->identifier->name;
                  if (!v83)
                  {
                    v83 = "invalid";
                  }

                  *buf = 136446722;
                  v109 = "__nw_protocol_input_finished";
                  v110 = 2082;
                  v111 = v83;
                  v112 = 2048;
                  v113 = v79;
                  _os_log_impl(&dword_181A37000, v81, v82, "%{public}s protocol %{public}s (%p) has invalid input_finished callback", buf, 0x20u);
                }

LABEL_252:

                goto LABEL_253;
              }

              if (v102 != 1)
              {
                v81 = __nwlog_obj();
                v97 = v103;
                if (os_log_type_enabled(v81, v103))
                {
                  v98 = v79->identifier->name;
                  if (!v98)
                  {
                    v98 = "invalid";
                  }

                  *buf = 136446722;
                  v109 = "__nw_protocol_input_finished";
                  v110 = 2082;
                  v111 = v98;
                  v112 = 2048;
                  v113 = v79;
                  _os_log_impl(&dword_181A37000, v81, v97, "%{public}s protocol %{public}s (%p) has invalid input_finished callback, backtrace limit exceeded", buf, 0x20u);
                }

                goto LABEL_252;
              }

              v91 = __nw_create_backtrace_string();
              v81 = __nwlog_obj();
              v92 = v103;
              v93 = os_log_type_enabled(v81, v103);
              if (!v91)
              {
                if (v93)
                {
                  v100 = v79->identifier->name;
                  if (!v100)
                  {
                    v100 = "invalid";
                  }

                  *buf = 136446722;
                  v109 = "__nw_protocol_input_finished";
                  v110 = 2082;
                  v111 = v100;
                  v112 = 2048;
                  v113 = v79;
                  _os_log_impl(&dword_181A37000, v81, v92, "%{public}s protocol %{public}s (%p) has invalid input_finished callback, no backtrace", buf, 0x20u);
                }

                goto LABEL_252;
              }

              if (v93)
              {
                v94 = v79->identifier->name;
                if (!v94)
                {
                  v94 = "invalid";
                }

                *buf = 136446978;
                v109 = "__nw_protocol_input_finished";
                v110 = 2082;
                v111 = v94;
                v112 = 2048;
                v113 = v79;
                v114 = 2082;
                v115 = v91;
                _os_log_impl(&dword_181A37000, v81, v92, "%{public}s protocol %{public}s (%p) has invalid input_finished callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              free(v91);
            }

LABEL_253:
            if (v80)
            {
              free(v80);
            }

            if ((v101 & 1) == 0)
            {
              goto LABEL_106;
            }

LABEL_105:
            nw::release_if_needed<nw_protocol *>(&v104);
LABEL_106:
            if (v107)
            {
              nw::release_if_needed<nw_protocol *>(type);
            }

            goto LABEL_140;
          }

          v89 = __nwlog_obj();
          *buf = 136446210;
          v109 = "__nw_protocol_input_finished";
          v14 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v104) = 0;
          if (__nwlog_fault(v14, type, &v104))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v15 = __nwlog_obj();
              v90 = type[0];
              if (os_log_type_enabled(v15, type[0]))
              {
                *buf = 136446210;
                v109 = "__nw_protocol_input_finished";
                _os_log_impl(&dword_181A37000, v15, v90, "%{public}s called with null protocol", buf, 0xCu);
              }

              goto LABEL_137;
            }

            if (v104 != 1)
            {
              v15 = __nwlog_obj();
              v99 = type[0];
              if (os_log_type_enabled(v15, type[0]))
              {
                *buf = 136446210;
                v109 = "__nw_protocol_input_finished";
                _os_log_impl(&dword_181A37000, v15, v99, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_137;
            }

            v33 = __nw_create_backtrace_string();
            v15 = __nwlog_obj();
            v95 = type[0];
            v96 = os_log_type_enabled(v15, type[0]);
            if (!v33)
            {
              if (v96)
              {
                *buf = 136446210;
                v109 = "__nw_protocol_input_finished";
                _os_log_impl(&dword_181A37000, v15, v95, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
              }

              goto LABEL_137;
            }

            if (v96)
            {
              *buf = 136446466;
              v109 = "__nw_protocol_input_finished";
              v110 = 2082;
              v111 = v33;
              _os_log_impl(&dword_181A37000, v15, v95, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            goto LABEL_89;
          }
        }

        else
        {
          v63 = __nwlog_obj();
          *buf = 136446210;
          v109 = "nw_protocol_implementation_input_finished";
          v14 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v104) = 0;
          if (__nwlog_fault(v14, type, &v104))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v15 = __nwlog_obj();
              v64 = type[0];
              if (os_log_type_enabled(v15, type[0]))
              {
                *buf = 136446210;
                v109 = "nw_protocol_implementation_input_finished";
                _os_log_impl(&dword_181A37000, v15, v64, "%{public}s called with null output_protocol", buf, 0xCu);
              }

              goto LABEL_137;
            }

            if (v104 != 1)
            {
              v15 = __nwlog_obj();
              v87 = type[0];
              if (os_log_type_enabled(v15, type[0]))
              {
                *buf = 136446210;
                v109 = "nw_protocol_implementation_input_finished";
                _os_log_impl(&dword_181A37000, v15, v87, "%{public}s called with null output_protocol, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_137;
            }

            v33 = __nw_create_backtrace_string();
            v15 = __nwlog_obj();
            v74 = type[0];
            v75 = os_log_type_enabled(v15, type[0]);
            if (!v33)
            {
              if (v75)
              {
                *buf = 136446210;
                v109 = "nw_protocol_implementation_input_finished";
                _os_log_impl(&dword_181A37000, v15, v74, "%{public}s called with null output_protocol, no backtrace", buf, 0xCu);
              }

              goto LABEL_137;
            }

            if (v75)
            {
              *buf = 136446466;
              v109 = "nw_protocol_implementation_input_finished";
              v110 = 2082;
              v111 = v33;
              _os_log_impl(&dword_181A37000, v15, v74, "%{public}s called with null output_protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            goto LABEL_89;
          }
        }
      }

      else
      {
        v61 = __nwlog_obj();
        *buf = 136446210;
        v109 = "nw_protocol_implementation_input_finished";
        v14 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v104) = 0;
        if (__nwlog_fault(v14, type, &v104))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v15 = __nwlog_obj();
            v62 = type[0];
            if (os_log_type_enabled(v15, type[0]))
            {
              *buf = 136446210;
              v109 = "nw_protocol_implementation_input_finished";
              _os_log_impl(&dword_181A37000, v15, v62, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
            }

            goto LABEL_137;
          }

          if (v104 != 1)
          {
            v15 = __nwlog_obj();
            v86 = type[0];
            if (os_log_type_enabled(v15, type[0]))
            {
              *buf = 136446210;
              v109 = "nw_protocol_implementation_input_finished";
              _os_log_impl(&dword_181A37000, v15, v86, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_137;
          }

          v33 = __nw_create_backtrace_string();
          v15 = __nwlog_obj();
          v72 = type[0];
          v73 = os_log_type_enabled(v15, type[0]);
          if (!v33)
          {
            if (v73)
            {
              *buf = 136446210;
              v109 = "nw_protocol_implementation_input_finished";
              _os_log_impl(&dword_181A37000, v15, v72, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
            }

            goto LABEL_137;
          }

          if (v73)
          {
            *buf = 136446466;
            v109 = "nw_protocol_implementation_input_finished";
            v110 = 2082;
            v111 = v33;
            _os_log_impl(&dword_181A37000, v15, v72, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
          }

          goto LABEL_89;
        }
      }
    }

    else
    {
      v59 = __nwlog_obj();
      *buf = 136446210;
      v109 = "nw_protocol_implementation_input_finished";
      v14 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v104) = 0;
      if (__nwlog_fault(v14, type, &v104))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v15 = __nwlog_obj();
          v60 = type[0];
          if (os_log_type_enabled(v15, type[0]))
          {
            *buf = 136446210;
            v109 = "nw_protocol_implementation_input_finished";
            _os_log_impl(&dword_181A37000, v15, v60, "%{public}s called with null instance->parent_definition", buf, 0xCu);
          }

          goto LABEL_137;
        }

        if (v104 != 1)
        {
          v15 = __nwlog_obj();
          v85 = type[0];
          if (os_log_type_enabled(v15, type[0]))
          {
            *buf = 136446210;
            v109 = "nw_protocol_implementation_input_finished";
            _os_log_impl(&dword_181A37000, v15, v85, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_137;
        }

        v69 = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v70 = type[0];
        v71 = os_log_type_enabled(v15, type[0]);
        if (!v69)
        {
          if (v71)
          {
            *buf = 136446210;
            v109 = "nw_protocol_implementation_input_finished";
            _os_log_impl(&dword_181A37000, v15, v70, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
          }

          goto LABEL_137;
        }

        if (v71)
        {
          *buf = 136446466;
          v109 = "nw_protocol_implementation_input_finished";
          v110 = 2082;
          v111 = v69;
          _os_log_impl(&dword_181A37000, v15, v70, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v69);
      }
    }

LABEL_138:
    if (!v14)
    {
      goto LABEL_140;
    }

LABEL_139:
    free(v14);
    goto LABEL_140;
  }

  v55 = __nwlog_obj();
  *buf = 136446210;
  v109 = "nw_protocol_implementation_input_finished";
  v56 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v104) = 0;
  if (__nwlog_fault(v56, type, &v104))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v57 = __nwlog_obj();
      v58 = type[0];
      if (os_log_type_enabled(v57, type[0]))
      {
        *buf = 136446210;
        v109 = "nw_protocol_implementation_input_finished";
        _os_log_impl(&dword_181A37000, v57, v58, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v104 == 1)
    {
      v66 = __nw_create_backtrace_string();
      v57 = __nwlog_obj();
      v67 = type[0];
      v68 = os_log_type_enabled(v57, type[0]);
      if (v66)
      {
        if (v68)
        {
          *buf = 136446466;
          v109 = "nw_protocol_implementation_input_finished";
          v110 = 2082;
          v111 = v66;
          _os_log_impl(&dword_181A37000, v57, v67, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v66);
        goto LABEL_224;
      }

      if (v68)
      {
        *buf = 136446210;
        v109 = "nw_protocol_implementation_input_finished";
        _os_log_impl(&dword_181A37000, v57, v67, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v57 = __nwlog_obj();
      v84 = type[0];
      if (os_log_type_enabled(v57, type[0]))
      {
        *buf = 136446210;
        v109 = "nw_protocol_implementation_input_finished";
        _os_log_impl(&dword_181A37000, v57, v84, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_224:
  if (v56)
  {
    free(v56);
  }
}

void sub_182414A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  if (a18)
  {
    nw::release_if_needed<nw_protocol *>(&a17);
  }

  if (a20)
  {
    nw::release_if_needed<nw_protocol *>(&a19);
  }

  _Unwind_Resume(a1);
}

uint64_t nw_protocol_data_get_size(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[13];
    if (v2)
    {
      v3 = (v2 - (v1[14] + v1[15]));
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_data_get_size";
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
        v16 = "nw_protocol_data_get_size";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null data", buf, 0xCu);
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
          v16 = "nw_protocol_data_get_size";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_data_get_size";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null data, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_data_get_size";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
  v1 = 0;
LABEL_5:

  return v3;
}

void ___ZL35nw_protocol_outbound_data_finalizerPU22objcproto11OS_nw_frame8NSObjectbPv_block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (!v3[14] || (*(v3 + 102) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v3, v3[11]))
    {
      v7 = 0;
    }

    else
    {
      v5 = *(v4 + 52);
      v6 = *(v4 + 56);
      if (v5)
      {
        v7 = v5 - (v6 + *(v4 + 60));
        v8 = *(v4 + 112);
        if (!v8)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v7 = 0;
        v8 = *(v4 + 112);
        if (!v8)
        {
          goto LABEL_17;
        }
      }

      if (v7 == *(a1 + 48))
      {
        v11 = nw_frame_unclaimed_bytes(*(a1 + 32), 0);
        memcpy((v8 + v6), v11, v7);
        if (gLogDatapath == 1)
        {
          v16 = __nwlog_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = 136446466;
            v18 = "nw_protocol_outbound_data_finalizer_block_invoke";
            v19 = 1024;
            v20 = v7;
            _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s Copying %u bytes for outbound frame", &v17, 0x12u);
          }
        }

        v12 = *(a1 + 40);
        departure_time = nw_frame_get_departure_time(*(a1 + 32));
        nw_protocol_instance_add_outbound(v12, v4, 0, departure_time, 0, 1);
        goto LABEL_20;
      }
    }

LABEL_17:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 48);
      v17 = 136446722;
      v18 = "nw_protocol_outbound_data_finalizer_block_invoke";
      v19 = 1024;
      v20 = v15;
      v21 = 1024;
      v22 = v7;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, "%{public}s Could not get frame for %u bytes (%u bytes)", &v17, 0x18u);
    }

    nw_frame_finalize(v4);
    goto LABEL_20;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 48);
    v17 = 136446466;
    v18 = "nw_protocol_outbound_data_finalizer_block_invoke";
    v19 = 1024;
    v20 = v10;
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Could not get frame for %u bytes", &v17, 0x12u);
  }

LABEL_20:
  nw_protocol_data_finalizer(*(a1 + 40), *(a1 + 32), *(a1 + 52), *(a1 + 40) + 144);
}

uint64_t __nw_protocol_request_outbound_data_block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
    v7 = 1;
  }

  else
  {
    v7 = nw_protocol_service_requested_outbound_data(v5, *(a1 + 40), *(a1 + 48), *(a1 + 32));
  }

  return v7;
}

uint64_t ___ZL47nw_protocol_implementation_service_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_276(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!*(*(a1[4] + 8) + 24) || !*(*(a1[5] + 8) + 24))
  {
    v7 = 0;
LABEL_16:

    return v7;
  }

  v5 = nw_frame_unclaimed_length(v3);
  v6 = *(*(a1[5] + 8) + 24);
  if (v5 <= v6)
  {
    v15 = v5;
    v16 = v4;
    v12 = v16;
    v17 = (a1[8] + 24);
    v18 = v16[4];
    v19 = v16[5];
    if (v18)
    {
      v17 = (v18 + 40);
    }

    *v17 = v19;
    *v19 = v18;
    v16[4] = 0;
    v16[5] = 0;
    *(*(a1[5] + 8) + 24) -= v15;
    --*(*(a1[4] + 8) + 24);
    v20 = a1[8];
    v21 = *(v20 + 36) - v15;
    --*(v20 + 32);
    *(v20 + 36) = v21;
    goto LABEL_14;
  }

  if (!v6)
  {
    v24 = __nwlog_obj();
    os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v37 = "nw_protocol_implementation_service_input_frames_block_invoke";
    v25 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v25);
    if (result)
    {
      goto LABEL_40;
    }

    free(v25);
  }

  v7 = malloc_type_calloc(1uLL, v6, 0xA4BFCB0BuLL);
  if (v7)
  {
    goto LABEL_8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v37 = "nw_protocol_implementation_service_input_frames_block_invoke";
  v38 = 2048;
  v39 = 1;
  v40 = 2048;
  v41 = v6;
  v9 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v9);
  if (!result)
  {
    free(v9);
LABEL_8:
    v11 = nw_frame_create(0, v7, *(*(a1[5] + 8) + 24), nw_protocol_implementation_partial_input_frame_finalizer, 0);
    if (v11)
    {
      v11[102] |= 1u;
      v12 = v11;
      nw_frame_inherit_metadata(v4, v12, 0);
      v13 = nw_frame_unclaimed_bytes(v4, 0);
      memcpy(v7, v13, *(*(a1[5] + 8) + 24));
      nw_frame_claim(v4, v14, *(*(a1[5] + 8) + 24), 0);
      *(a1[8] + 36) -= *(*(a1[5] + 8) + 24);
      *(*(a1[5] + 8) + 24) = 0;
LABEL_14:
      ++*(*(a1[6] + 8) + 24);
      v22 = a1[9];
      v12[4] = 0;
      v23 = *(v22 + 8);
      v12[5] = v23;
      *v23 = v12;
      *(v22 + 8) = v12 + 4;
      v7 = 1;
LABEL_15:

      goto LABEL_16;
    }

    v26 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_protocol_implementation_service_input_frames_block_invoke";
    v27 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v27, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v37 = "nw_protocol_implementation_service_input_frames_block_invoke";
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s nw_frame_create with partial data failed", buf, 0xCu);
        }
      }

      else if (v34 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v31 = type;
        v32 = os_log_type_enabled(v28, type);
        if (backtrace_string)
        {
          if (v32)
          {
            *buf = 136446466;
            v37 = "nw_protocol_implementation_service_input_frames_block_invoke";
            v38 = 2082;
            v39 = backtrace_string;
            _os_log_impl(&dword_181A37000, v28, v31, "%{public}s nw_frame_create with partial data failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_35;
        }

        if (v32)
        {
          *buf = 136446210;
          v37 = "nw_protocol_implementation_service_input_frames_block_invoke";
          _os_log_impl(&dword_181A37000, v28, v31, "%{public}s nw_frame_create with partial data failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v28 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v37 = "nw_protocol_implementation_service_input_frames_block_invoke";
          _os_log_impl(&dword_181A37000, v28, v33, "%{public}s nw_frame_create with partial data failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_35:
    if (v27)
    {
      free(v27);
    }

    if (v7)
    {
      free(v7);
      v12 = 0;
      v7 = 0;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_15;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t ___ZL47nw_protocol_implementation_service_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke_277(void *a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!*(*(a1[5] + 8) + 24) || !*(*(a1[6] + 8) + 24))
  {
    v7 = 0;
LABEL_16:

    return v7;
  }

  v5 = nw_frame_unclaimed_length(v3);
  v6 = *(*(a1[6] + 8) + 24);
  if (v5 <= v6)
  {
    v15 = v5;
    v16 = v4;
    v12 = v16;
    v17 = (a1[4] + 192);
    v18 = v16[4];
    v19 = v16[5];
    if (v18)
    {
      v17 = (v18 + 40);
    }

    *v17 = v19;
    *v19 = v18;
    v16[4] = 0;
    v16[5] = 0;
    *(*(a1[6] + 8) + 24) -= v15;
    --*(*(a1[5] + 8) + 24);
    *(a1[4] + 204) -= v15;
    --*(a1[4] + 200);
    goto LABEL_14;
  }

  if (!v6)
  {
    v22 = __nwlog_obj();
    os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v35 = "nw_protocol_implementation_service_input_frames_block_invoke";
    v23 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v23);
    if (result)
    {
      goto LABEL_40;
    }

    free(v23);
  }

  v7 = malloc_type_calloc(1uLL, v6, 0x22DF841FuLL);
  if (v7)
  {
    goto LABEL_8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v35 = "nw_protocol_implementation_service_input_frames_block_invoke";
  v36 = 2048;
  v37 = 1;
  v38 = 2048;
  v39 = v6;
  v9 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v9);
  if (!result)
  {
    free(v9);
LABEL_8:
    v11 = nw_frame_create(0, v7, *(*(a1[6] + 8) + 24), nw_protocol_implementation_partial_input_frame_finalizer, 0);
    if (v11)
    {
      v11[102] |= 1u;
      v12 = v11;
      nw_frame_inherit_metadata(v4, v12, 0);
      v13 = nw_frame_unclaimed_bytes(v4, 0);
      memcpy(v7, v13, *(*(a1[6] + 8) + 24));
      nw_frame_claim(v4, v14, *(*(a1[6] + 8) + 24), 0);
      *(a1[4] + 204) -= *(*(a1[6] + 8) + 24);
      *(*(a1[6] + 8) + 24) = 0;
LABEL_14:
      ++*(*(a1[7] + 8) + 24);
      v20 = a1[9];
      v12[4] = 0;
      v21 = *(v20 + 8);
      v12[5] = v21;
      *v21 = v12;
      *(v20 + 8) = v12 + 4;
      v7 = 1;
LABEL_15:

      goto LABEL_16;
    }

    v24 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_protocol_implementation_service_input_frames_block_invoke";
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
          v35 = "nw_protocol_implementation_service_input_frames_block_invoke";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s nw_frame_create with partial data failed", buf, 0xCu);
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
            v35 = "nw_protocol_implementation_service_input_frames_block_invoke";
            v36 = 2082;
            v37 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v29, "%{public}s nw_frame_create with partial data failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_35;
        }

        if (v30)
        {
          *buf = 136446210;
          v35 = "nw_protocol_implementation_service_input_frames_block_invoke";
          _os_log_impl(&dword_181A37000, v26, v29, "%{public}s nw_frame_create with partial data failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v35 = "nw_protocol_implementation_service_input_frames_block_invoke";
          _os_log_impl(&dword_181A37000, v26, v31, "%{public}s nw_frame_create with partial data failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_35:
    if (v25)
    {
      free(v25);
    }

    if (v7)
    {
      free(v7);
      v12 = 0;
      v7 = 0;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_15;
  }

LABEL_40:
  __break(1u);
  return result;
}

void nw_protocol_implementation_link_state(uint64_t a1, nw_protocol *a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_implementation_link_state";
    v31 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v31, &type, &v58))
    {
      goto LABEL_108;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_link_state";
        _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null link_info", buf, 0xCu);
      }
    }

    else if (v58 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v43 = type;
      v44 = os_log_type_enabled(v32, type);
      if (backtrace_string)
      {
        if (v44)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_link_state";
          v61 = 2082;
          v62 = backtrace_string;
          _os_log_impl(&dword_181A37000, v32, v43, "%{public}s called with null link_info, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_108:
        if (!v31)
        {
          goto LABEL_47;
        }

LABEL_109:
        free(v31);
        goto LABEL_47;
      }

      if (v44)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_link_state";
        _os_log_impl(&dword_181A37000, v32, v43, "%{public}s called with null link_info, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v32 = __nwlog_obj();
      v54 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_link_state";
        _os_log_impl(&dword_181A37000, v32, v54, "%{public}s called with null link_info, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_107:

    goto LABEL_108;
  }

  if (a1)
  {
    v6 = *(a1 + 40);
    v7 = a1;
    if (v6 != &nw_protocol_ref_counted_handle)
    {
      if (v6 != &nw_protocol_ref_counted_additional_handle)
      {
        v8 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_link_state";
        v9 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v58 = 0;
        if (__nwlog_fault(v9, &type, &v58))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v10 = __nwlog_obj();
            v11 = type;
            if (os_log_type_enabled(v10, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_link_state";
              _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v58 == 1)
          {
            v22 = __nw_create_backtrace_string();
            v10 = __nwlog_obj();
            v23 = type;
            v24 = os_log_type_enabled(v10, type);
            if (v22)
            {
              if (v24)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_implementation_link_state";
                v61 = 2082;
                v62 = v22;
                _os_log_impl(&dword_181A37000, v10, v23, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v22);
              if (!v9)
              {
                goto LABEL_45;
              }

              goto LABEL_44;
            }

            if (v24)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_link_state";
              _os_log_impl(&dword_181A37000, v10, v23, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v10 = __nwlog_obj();
            v29 = type;
            if (os_log_type_enabled(v10, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_link_state";
              _os_log_impl(&dword_181A37000, v10, v29, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v9)
        {
LABEL_45:
          v12 = 0;
          goto LABEL_46;
        }

LABEL_44:
        free(v9);
        goto LABEL_45;
      }

      v7 = *(a1 + 64);
    }

    v12 = (v7 + 96);
    v13 = *(v7 + 104);
    if (v13)
    {
      if (*(v13 + 80))
      {
        v14 = v5;
        v15 = v14[2];

        *buf = 0;
        v16 = nw_protocol_implementation_lookup_path_by_protocol(v12, a2, buf);
        if (v16)
        {
          v17 = v16;
          if (v15 == 1)
          {
            v19 = *(v16 + 153) | 2;
          }

          else
          {
            if (v15 || (v18 = *(v16 + 153), *(v16 + 153) = v18 & 0xFD, (v18 & 4) == 0))
            {
LABEL_30:
              v25 = *(*(*(v7 + 104) + 80) + 136);
              if (v25)
              {
                v26 = *buf;
                v27 = (v17 + 153);
                v28 = 2;
LABEL_39:
                v25(v12, v26, (*v27 & v28) != 0);
                goto LABEL_46;
              }

              goto LABEL_46;
            }

            nw_protocol_implementation_output_available(a1, a2);
            v19 = *(v17 + 153) & 0xFB;
          }

          *(v17 + 153) = v19;
          goto LABEL_30;
        }

        if (v15 == 1)
        {
          v21 = *(v7 + 507) | 4;
        }

        else
        {
          if (v15 || (v20 = *(v7 + 507), *(v7 + 507) = v20 & 0xFB, (v20 & 8) == 0))
          {
LABEL_37:
            v25 = *(*(*(v7 + 104) + 80) + 136);
            if (v25)
            {
              v26 = 0;
              v27 = (v7 + 507);
              v28 = 4;
              goto LABEL_39;
            }

LABEL_46:

            goto LABEL_47;
          }

          nw_protocol_implementation_output_available(a1, a2);
          v21 = *(v7 + 507) & 0xF7;
        }

        *(v7 + 507) = v21;
        goto LABEL_37;
      }

      v40 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_link_state";
      v37 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v58 = 0;
      if (!__nwlog_fault(v37, &type, &v58))
      {
        goto LABEL_116;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v38 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v38, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_link_state";
          _os_log_impl(&dword_181A37000, v38, v41, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }
      }

      else if (v58 == 1)
      {
        v51 = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v52 = type;
        v53 = os_log_type_enabled(v38, type);
        if (v51)
        {
          if (v53)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_implementation_link_state";
            v61 = 2082;
            v62 = v51;
            _os_log_impl(&dword_181A37000, v38, v52, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v51);
          if (!v37)
          {
            goto LABEL_46;
          }

          goto LABEL_117;
        }

        if (v53)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_link_state";
          _os_log_impl(&dword_181A37000, v38, v52, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v38 = __nwlog_obj();
        v57 = type;
        if (os_log_type_enabled(v38, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_link_state";
          _os_log_impl(&dword_181A37000, v38, v57, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v36 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_link_state";
      v37 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v58 = 0;
      if (!__nwlog_fault(v37, &type, &v58))
      {
        goto LABEL_116;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v38 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v38, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_link_state";
          _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }
      }

      else if (v58 == 1)
      {
        v48 = __nw_create_backtrace_string();
        v38 = __nwlog_obj();
        v49 = type;
        v50 = os_log_type_enabled(v38, type);
        if (v48)
        {
          if (v50)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_implementation_link_state";
            v61 = 2082;
            v62 = v48;
            _os_log_impl(&dword_181A37000, v38, v49, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v48);
LABEL_116:
          if (!v37)
          {
            goto LABEL_46;
          }

LABEL_117:
          free(v37);
          goto LABEL_46;
        }

        if (v50)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_link_state";
          _os_log_impl(&dword_181A37000, v38, v49, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v38 = __nwlog_obj();
        v56 = type;
        if (os_log_type_enabled(v38, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_link_state";
          _os_log_impl(&dword_181A37000, v38, v56, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_116;
  }

  v34 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_link_state";
  v31 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v58 = 0;
  if (!__nwlog_fault(v31, &type, &v58))
  {
    goto LABEL_108;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v32 = __nwlog_obj();
    v35 = type;
    if (os_log_type_enabled(v32, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_link_state";
      _os_log_impl(&dword_181A37000, v32, v35, "%{public}s called with null protocol", buf, 0xCu);
    }

    goto LABEL_107;
  }

  if (v58 != 1)
  {
    v32 = __nwlog_obj();
    v55 = type;
    if (os_log_type_enabled(v32, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_link_state";
      _os_log_impl(&dword_181A37000, v32, v55, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_107;
  }

  v45 = __nw_create_backtrace_string();
  v32 = __nwlog_obj();
  v46 = type;
  v47 = os_log_type_enabled(v32, type);
  if (!v45)
  {
    if (v47)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_link_state";
      _os_log_impl(&dword_181A37000, v32, v46, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
    }

    goto LABEL_107;
  }

  if (v47)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_implementation_link_state";
    v61 = 2082;
    v62 = v45;
    _os_log_impl(&dword_181A37000, v32, v46, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v45);
  if (v31)
  {
    goto LABEL_109;
  }

LABEL_47:
}

void nw_protocol_implementation_disconnected(nw_protocol *a1, nw_protocol *a2)
{
  v93 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    handle = a1->handle;
    v5 = a1;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v6 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_disconnected";
        v7 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v85) = 0;
        if (__nwlog_fault(v7, type, &v85))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v8 = __nwlog_obj();
            v9 = type[0];
            if (os_log_type_enabled(v8, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_disconnected";
              _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v85 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v8 = __nwlog_obj();
            v16 = type[0];
            v17 = os_log_type_enabled(v8, type[0]);
            if (backtrace_string)
            {
              if (v17)
              {
                *buf = 136446466;
                *&buf[4] = "nw_protocol_implementation_disconnected";
                *&buf[12] = 2082;
                *&buf[14] = backtrace_string;
                _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v7)
              {
                goto LABEL_53;
              }

              goto LABEL_52;
            }

            if (v17)
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_disconnected";
              _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v8 = __nwlog_obj();
            v22 = type[0];
            if (os_log_type_enabled(v8, type[0]))
            {
              *buf = 136446210;
              *&buf[4] = "nw_protocol_implementation_disconnected";
              _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v7)
        {
LABEL_53:
          v10 = 0;
          goto LABEL_54;
        }

LABEL_52:
        free(v7);
        goto LABEL_53;
      }

      v5 = *a1[1].flow_id;
    }

    v10 = &v5[1].output_handler;
    v11 = v5[1].handle;
    if (v11)
    {
      if (v11[10])
      {
        if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
        {
          v46 = __nwlog_obj();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            *&buf[4] = "nw_protocol_implementation_disconnected";
            *&buf[12] = 2082;
            *&buf[14] = v5 + 511;
            *&buf[22] = 2080;
            v90 = " ";
            _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sDisconnected from output handler", buf, 0x20u);
          }
        }

        if (*&v5[6].flow_id[8])
        {
          *type = 0;
          if (nw_protocol_implementation_lookup_path_by_protocol(v10, a2, type))
          {
            nw_protocol_instance_tear_down_path(v10, *type);
          }

          else if ((SBYTE5(v5[7].output_handler_context) & 0x80000000) == 0)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v18 = gLogObj;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446978;
              *&buf[4] = "nw_protocol_implementation_disconnected";
              *&buf[12] = 2082;
              *&buf[14] = v5 + 511;
              *&buf[22] = 2080;
              v90 = " ";
              v91 = 2048;
              v92 = a2;
              _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sReceived a disconnected event from an unknown protocol %p", buf, 0x2Au);
            }
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v90) = 0;
          v19 = *&v5[6].flow_id[8];
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = ___ZL39nw_protocol_implementation_disconnectedP11nw_protocolS0__block_invoke;
          v82[3] = &unk_1E6A2CE68;
          v82[4] = buf;
          nw_hash_table_apply(v19, v82);
          if (nw_parameters_get_server_mode(v5[2].identifier->name) & 1) != 0 || (v20 = nw_quic_stream_copy_shared_connection_options(v5[2].callbacks), ignore_path_errors = nw_quic_connection_get_ignore_path_errors(v20), v20, ((*(*&buf[8] + 24) | ignore_path_errors)))
          {
            _Block_object_dispose(buf, 8);
LABEL_54:

            return;
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v12 = v10;
          v13 = v12;
          v14 = *(*(v5[1].handle + 10) + 216);
          if (v14)
          {
            v14(v12, 0, 2, v5[6].callbacks == 0);
          }
        }

        BYTE4(v5[7].output_handler_context) |= 4u;
        nw_protocol_remove_instance(a1);
        output_handler_context = v5[1].output_handler_context;
        if (output_handler_context)
        {
          (*(*output_handler_context + 8))(output_handler_context, a1, 57);
        }

        if (*(v5[1].handle + 16) == 3)
        {
          v24 = *&v5[5].flow_id[8];
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v81[2] = ___ZL39nw_protocol_implementation_disconnectedP11nw_protocolS0__block_invoke_2;
          v81[3] = &__block_descriptor_40_e23_B16__0__nw_hash_node__8l;
          v81[4] = a1;
          nw_hash_table_apply(v24, v81);
          goto LABEL_54;
        }

        default_input_handler = a1->default_input_handler;
        if (default_input_handler)
        {
          v26 = default_input_handler->handle;
          v27 = a1->default_input_handler;
          if (v26 == &nw_protocol_ref_counted_handle)
          {
            goto LABEL_46;
          }

          if (v26 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v27) = 0;
            v28 = 1;
            goto LABEL_57;
          }

          v27 = *default_input_handler[1].flow_id;
          if (v27)
          {
LABEL_46:
            callbacks = v27[1].callbacks;
            v28 = 0;
            if (callbacks)
            {
              v27[1].callbacks = (&callbacks->add_input_handler + 1);
            }

            LOBYTE(v27) = -1;
          }

          else
          {
            v28 = 1;
          }

LABEL_57:
          *type = default_input_handler;
          v88 = v27;
          v30 = a1->handle;
          v31 = a1;
          if (v30 != &nw_protocol_ref_counted_handle)
          {
            if (v30 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v31) = 0;
              v32 = 1;
              goto LABEL_64;
            }

            v31 = *a1[1].flow_id;
            if (!v31)
            {
              v32 = 1;
              goto LABEL_64;
            }
          }

          v33 = v31[1].callbacks;
          v32 = 0;
          if (v33)
          {
            v31[1].callbacks = (&v33->add_input_handler + 1);
          }

          LOBYTE(v31) = -1;
LABEL_64:
          v85 = a1;
          v86 = v31;
          v34 = default_input_handler->callbacks;
          if (v34)
          {
            disconnected = v34->disconnected;
            if (disconnected)
            {
              disconnected();
LABEL_67:
              if ((v32 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(&v85);
              }

              if ((v28 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(type);
              }

              goto LABEL_54;
            }
          }

          v50 = default_input_handler;
          v51 = __nwlog_obj();
          name = v50->identifier->name;
          v53 = "invalid";
          *buf = 136446722;
          *&buf[4] = "__nw_protocol_disconnected";
          if (name)
          {
            v53 = name;
          }

          *&buf[12] = 2082;
          *&buf[14] = v53;
          *&buf[22] = 2048;
          v54 = v50;
          v90 = v50;
          v55 = _os_log_send_and_compose_impl();

          v84 = OS_LOG_TYPE_ERROR;
          v83 = 0;
          if (__nwlog_fault(v55, &v84, &v83))
          {
            if (v84 == OS_LOG_TYPE_FAULT)
            {
              v56 = __nwlog_obj();
              v57 = v84;
              if (os_log_type_enabled(v56, v84))
              {
                v58 = v54->identifier->name;
                if (!v58)
                {
                  v58 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_disconnected";
                *&buf[12] = 2082;
                *&buf[14] = v58;
                *&buf[22] = 2048;
                v90 = v54;
                _os_log_impl(&dword_181A37000, v56, v57, "%{public}s protocol %{public}s (%p) has invalid disconnected callback", buf, 0x20u);
              }
            }

            else if (v83 == 1)
            {
              v69 = __nw_create_backtrace_string();
              v56 = __nwlog_obj();
              v70 = v84;
              v71 = os_log_type_enabled(v56, v84);
              if (v69)
              {
                if (v71)
                {
                  v72 = v54->identifier->name;
                  if (!v72)
                  {
                    v72 = "invalid";
                  }

                  *buf = 136446978;
                  *&buf[4] = "__nw_protocol_disconnected";
                  *&buf[12] = 2082;
                  *&buf[14] = v72;
                  *&buf[22] = 2048;
                  v90 = v54;
                  v91 = 2082;
                  v92 = v69;
                  _os_log_impl(&dword_181A37000, v56, v70, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v69);
                goto LABEL_167;
              }

              if (v71)
              {
                v80 = v54->identifier->name;
                if (!v80)
                {
                  v80 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_disconnected";
                *&buf[12] = 2082;
                *&buf[14] = v80;
                *&buf[22] = 2048;
                v90 = v54;
                _os_log_impl(&dword_181A37000, v56, v70, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace", buf, 0x20u);
              }
            }

            else
            {
              v56 = __nwlog_obj();
              v77 = v84;
              if (os_log_type_enabled(v56, v84))
              {
                v78 = v54->identifier->name;
                if (!v78)
                {
                  v78 = "invalid";
                }

                *buf = 136446722;
                *&buf[4] = "__nw_protocol_disconnected";
                *&buf[12] = 2082;
                *&buf[14] = v78;
                *&buf[22] = 2048;
                v90 = v54;
                _os_log_impl(&dword_181A37000, v56, v77, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded", buf, 0x20u);
              }
            }
          }

LABEL_167:
          if (v55)
          {
            free(v55);
          }

          goto LABEL_67;
        }

        v66 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_protocol_disconnected";
        v41 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v85) = 0;
        if (!__nwlog_fault(v41, type, &v85))
        {
          goto LABEL_172;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v67 = __nwlog_obj();
          v68 = type[0];
          if (os_log_type_enabled(v67, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_disconnected";
            _os_log_impl(&dword_181A37000, v67, v68, "%{public}s called with null protocol", buf, 0xCu);
          }

LABEL_171:

          goto LABEL_172;
        }

        if (v85 != 1)
        {
          v67 = __nwlog_obj();
          v79 = type[0];
          if (os_log_type_enabled(v67, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_disconnected";
            _os_log_impl(&dword_181A37000, v67, v79, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_171;
        }

        v62 = __nw_create_backtrace_string();
        v67 = __nwlog_obj();
        v75 = type[0];
        v76 = os_log_type_enabled(v67, type[0]);
        if (!v62)
        {
          if (v76)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_protocol_disconnected";
            _os_log_impl(&dword_181A37000, v67, v75, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
          }

          goto LABEL_171;
        }

        if (v76)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_protocol_disconnected";
          *&buf[12] = 2082;
          *&buf[14] = v62;
          _os_log_impl(&dword_181A37000, v67, v75, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_146:
        free(v62);
        if (!v41)
        {
          goto LABEL_54;
        }

        goto LABEL_173;
      }

      v44 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_disconnected";
      v41 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v85) = 0;
      if (!__nwlog_fault(v41, type, &v85))
      {
        goto LABEL_172;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v45 = type[0];
        if (os_log_type_enabled(v42, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_disconnected";
          _os_log_impl(&dword_181A37000, v42, v45, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
        }
      }

      else if (v85 == 1)
      {
        v62 = __nw_create_backtrace_string();
        v42 = __nwlog_obj();
        v63 = type[0];
        v64 = os_log_type_enabled(v42, type[0]);
        if (v62)
        {
          if (v64)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_implementation_disconnected";
            *&buf[12] = 2082;
            *&buf[14] = v62;
            _os_log_impl(&dword_181A37000, v42, v63, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
          }

          goto LABEL_146;
        }

        if (v64)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_disconnected";
          _os_log_impl(&dword_181A37000, v42, v63, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v42 = __nwlog_obj();
        v74 = type[0];
        if (os_log_type_enabled(v42, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_disconnected";
          _os_log_impl(&dword_181A37000, v42, v74, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v40 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_implementation_disconnected";
      v41 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v85) = 0;
      if (!__nwlog_fault(v41, type, &v85))
      {
        goto LABEL_172;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v43 = type[0];
        if (os_log_type_enabled(v42, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_disconnected";
          _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }
      }

      else if (v85 == 1)
      {
        v59 = __nw_create_backtrace_string();
        v42 = __nwlog_obj();
        v60 = type[0];
        v61 = os_log_type_enabled(v42, type[0]);
        if (v59)
        {
          if (v61)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_implementation_disconnected";
            *&buf[12] = 2082;
            *&buf[14] = v59;
            _os_log_impl(&dword_181A37000, v42, v60, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v59);
LABEL_172:
          if (!v41)
          {
            goto LABEL_54;
          }

LABEL_173:
          free(v41);
          goto LABEL_54;
        }

        if (v61)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_disconnected";
          _os_log_impl(&dword_181A37000, v42, v60, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v42 = __nwlog_obj();
        v73 = type[0];
        if (os_log_type_enabled(v42, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_implementation_disconnected";
          _os_log_impl(&dword_181A37000, v42, v73, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_172;
  }

  v36 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_implementation_disconnected";
  v37 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v85) = 0;
  if (__nwlog_fault(v37, type, &v85))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_disconnected";
        _os_log_impl(&dword_181A37000, v38, v39, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v85 == 1)
    {
      v47 = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v48 = type[0];
      v49 = os_log_type_enabled(v38, type[0]);
      if (v47)
      {
        if (v49)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_implementation_disconnected";
          *&buf[12] = 2082;
          *&buf[14] = v47;
          _os_log_impl(&dword_181A37000, v38, v48, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v47);
        goto LABEL_139;
      }

      if (v49)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_disconnected";
        _os_log_impl(&dword_181A37000, v38, v48, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v38 = __nwlog_obj();
      v65 = type[0];
      if (os_log_type_enabled(v38, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_implementation_disconnected";
        _os_log_impl(&dword_181A37000, v38, v65, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_139:
  if (v37)
  {
    free(v37);
  }
}

BOOL ___ZL39nw_protocol_implementation_disconnectedP11nw_protocolS0__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(nw_hash_node_get_extra(a2) + 144);
  if (v3 != 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v3 == 2;
}

uint64_t ___ZL39nw_protocol_implementation_disconnectedP11nw_protocolS0__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  if (object)
  {
    v4 = *(a1 + 32);
    v5 = object[5];
    v6 = object;
    if (v5 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (v5 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v6) = 0;
      v7 = 1;
      goto LABEL_9;
    }

    v6 = object[8];
    if (v6)
    {
LABEL_6:
      v8 = v6[11];
      v7 = 0;
      if (v8)
      {
        v6[11] = v8 + 1;
      }

      LOBYTE(v6) = -1;
    }

    else
    {
      v7 = 1;
    }

LABEL_9:
    *v52 = object;
    v53 = v6;
    if (v4)
    {
      v9 = *(v4 + 40);
      v10 = v4;
      if (v9 == &nw_protocol_ref_counted_handle || v9 == &nw_protocol_ref_counted_additional_handle && (v10 = *(v4 + 64)) != 0)
      {
        v13 = *(v10 + 88);
        v12 = 0;
        if (v13)
        {
          *(v10 + 88) = v13 + 1;
        }

        v11 = -1;
      }

      else
      {
        v11 = 0;
        v12 = 1;
      }

      *v49 = v4;
      v50 = v11;
      v14 = object[3];
      if (v14)
      {
        v15 = *(v14 + 48);
        if (v15)
        {
          v15();
LABEL_20:
          if ((v12 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v49);
          }

LABEL_22:
          if ((v7 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(v52);
          }

          return 1;
        }
      }

      v17 = object;
      v18 = __nwlog_obj();
      v19 = v17[2];
      *buf = 136446722;
      v55 = "__nw_protocol_disconnected";
      if (!v19)
      {
        v19 = "invalid";
      }

      v56 = 2082;
      v57 = v19;
      v58 = 2048;
      v20 = v17;
      v59 = v17;
      v21 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v48 = 0;
      if (__nwlog_fault(v21, &type, &v48))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v22 = __nwlog_obj();
          v23 = type;
          if (os_log_type_enabled(v22, type))
          {
            v24 = v20[2];
            if (!v24)
            {
              v24 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_disconnected";
            v56 = 2082;
            v57 = v24;
            v58 = 2048;
            v59 = v20;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s protocol %{public}s (%p) has invalid disconnected callback", buf, 0x20u);
          }
        }

        else if (v48 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v22 = __nwlog_obj();
          v34 = type;
          v35 = os_log_type_enabled(v22, type);
          if (backtrace_string)
          {
            if (v35)
            {
              v36 = v20[2];
              if (!v36)
              {
                v36 = "invalid";
              }

              *buf = 136446978;
              v55 = "__nw_protocol_disconnected";
              v56 = 2082;
              v57 = v36;
              v58 = 2048;
              v59 = v20;
              v60 = 2082;
              v61 = backtrace_string;
              _os_log_impl(&dword_181A37000, v22, v34, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, dumping backtrace:%{public}s", buf, 0x2Au);
            }

            free(backtrace_string);
            goto LABEL_78;
          }

          if (v35)
          {
            v47 = v20[2];
            if (!v47)
            {
              v47 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_disconnected";
            v56 = 2082;
            v57 = v47;
            v58 = 2048;
            v59 = v20;
            _os_log_impl(&dword_181A37000, v22, v34, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, no backtrace", buf, 0x20u);
          }
        }

        else
        {
          v22 = __nwlog_obj();
          v43 = type;
          if (os_log_type_enabled(v22, type))
          {
            v44 = v20[2];
            if (!v44)
            {
              v44 = "invalid";
            }

            *buf = 136446722;
            v55 = "__nw_protocol_disconnected";
            v56 = 2082;
            v57 = v44;
            v58 = 2048;
            v59 = v20;
            _os_log_impl(&dword_181A37000, v22, v43, "%{public}s protocol %{public}s (%p) has invalid disconnected callback, backtrace limit exceeded", buf, 0x20u);
          }
        }
      }

LABEL_78:
      if (v21)
      {
        free(v21);
      }

      goto LABEL_20;
    }

    v29 = __nwlog_obj();
    *buf = 136446210;
    v55 = "__nw_protocol_disconnected";
    v30 = _os_log_send_and_compose_impl();

    v49[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v30, v49, &type))
    {
      if (v49[0] == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = v49[0];
        if (os_log_type_enabled(v31, v49[0]))
        {
          *buf = 136446210;
          v55 = "__nw_protocol_disconnected";
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null other_protocol", buf, 0xCu);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v40 = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v41 = v49[0];
        v42 = os_log_type_enabled(v31, v49[0]);
        if (v40)
        {
          if (v42)
          {
            *buf = 136446466;
            v55 = "__nw_protocol_disconnected";
            v56 = 2082;
            v57 = v40;
            _os_log_impl(&dword_181A37000, v31, v41, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v40);
          goto LABEL_88;
        }

        if (v42)
        {
          *buf = 136446210;
          v55 = "__nw_protocol_disconnected";
          _os_log_impl(&dword_181A37000, v31, v41, "%{public}s called with null other_protocol, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v31 = __nwlog_obj();
        v46 = v49[0];
        if (os_log_type_enabled(v31, v49[0]))
        {
          *buf = 136446210;
          v55 = "__nw_protocol_disconnected";
          _os_log_impl(&dword_181A37000, v31, v46, "%{public}s called with null other_protocol, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_88:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_22;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  v55 = "__nw_protocol_disconnected";
  v26 = _os_log_send_and_compose_impl();

  v52[0] = OS_LOG_TYPE_ERROR;
  v49[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v26, v52, v49))
  {
    if (v52[0] == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = v52[0];
      if (os_log_type_enabled(v27, v52[0]))
      {
        *buf = 136446210;
        v55 = "__nw_protocol_disconnected";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v49[0] == OS_LOG_TYPE_INFO)
    {
      v37 = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v38 = v52[0];
      v39 = os_log_type_enabled(v27, v52[0]);
      if (v37)
      {
        if (v39)
        {
          *buf = 136446466;
          v55 = "__nw_protocol_disconnected";
          v56 = 2082;
          v57 = v37;
          _os_log_impl(&dword_181A37000, v27, v38, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_83;
      }

      if (v39)
      {
        *buf = 136446210;
        v55 = "__nw_protocol_disconnected";
        _os_log_impl(&dword_181A37000, v27, v38, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v27 = __nwlog_obj();
      v45 = v52[0];
      if (os_log_type_enabled(v27, v52[0]))
      {
        *buf = 136446210;
        v55 = "__nw_protocol_disconnected";
        _os_log_impl(&dword_181A37000, v27, v45, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_83:
  if (v26)
  {
    free(v26);
  }

  return 1;
}